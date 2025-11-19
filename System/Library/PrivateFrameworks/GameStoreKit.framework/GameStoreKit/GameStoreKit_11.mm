uint64_t sub_24E70E340()
{
  v1 = 0x444965676170;
  if (*v0 != 1)
  {
    v1 = 0x706574537478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D6167;
  }
}

uint64_t sub_24E70E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E70EC80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E70E3BC(uint64_t a1)
{
  v2 = sub_24E70E9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E70E3F8(uint64_t a1)
{
  v2 = sub_24E70E9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllGamesShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  HIDWORD(v12) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E70E9AC();

  sub_24F92D128();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  sub_24E70EA00(&qword_27F219848, &qword_27F214950);
  sub_24F92CD48();

  if (!v2)
  {
    v10 = BYTE4(v12);
    v17 = 1;
    sub_24F92CD08();
    v16 = v10;
    v15 = 2;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesAllGamesShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E70E9AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v22 = 0;
  sub_24E70EA00(&qword_27F219858, &qword_27F214968);
  sub_24F92CC68();
  v18 = a2;
  v9 = v23;
  v21 = 1;
  v10 = sub_24F92CC28();
  v17 = v11;
  v19 = 2;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v14 = v17;
  v13 = v18;
  *v18 = v9;
  v13[1] = v10;
  v13[2] = v14;
  *(v13 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E70E9AC()
{
  result = qword_27F219840;
  if (!qword_27F219840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219840);
  }

  return result;
}

uint64_t sub_24E70EA00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FD0);
    sub_24E70EA88(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E70EA88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Game();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E70EACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24E70EB14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E70EB7C()
{
  result = qword_27F219860;
  if (!qword_27F219860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219860);
  }

  return result;
}

unint64_t sub_24E70EBD4()
{
  result = qword_27F219868;
  if (!qword_27F219868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219868);
  }

  return result;
}

unint64_t sub_24E70EC2C()
{
  result = qword_27F219870[0];
  if (!qword_27F219870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F219870);
  }

  return result;
}

uint64_t sub_24E70EC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
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

unint64_t sub_24E70EDAC()
{
  result = qword_27F216290;
  if (!qword_27F216290)
  {
    type metadata accessor for DraftPlayTogetherAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216290);
  }

  return result;
}

uint64_t sub_24E70EE0C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v104 = sub_24F928AE8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v123 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v121 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v119 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v118 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v133 = &v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v117 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v132 = &v101 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v120 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v129 = &v101 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v101 - v32;
  MEMORY[0x28223BE20](v31);
  v128 = &v101 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v116 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v131 = &v101 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v101 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v101 - v43;
  type metadata accessor for GameActivityDraftBuilder();
  v124 = a2;
  sub_24F928F28();
  v122 = v138;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v45 = sub_24F9220D8();
  __swift_project_value_buffer(v45, qword_27F39E778);
  v46 = sub_24F9220B8();
  v47 = sub_24F92BD98();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24E5DD000, v46, v47, "Start drafting a challenge", v48, 2u);
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  v49 = type metadata accessor for DraftPlayTogetherAction();
  v50 = v49;
  v51 = *(a1 + *(v49 + 48));
  if (!v51)
  {
    sub_24E60169C(a1 + *(v49 + 40), v44, &qword_27F212A08);
    v52 = type metadata accessor for ChallengeDefinitionDetail(0);
    if ((*(*(v52 - 8) + 48))(v44, 1, v52) == 1)
    {
      sub_24E601704(v44, &qword_27F212A08);
    }

    else
    {
      v53 = *&v44[*(v52 + 40)];

      sub_24E710018(v44);
      if (*(v53 + 16))
      {
        v51 = *(v53 + 32);

        goto LABEL_12;
      }
    }

    v51 = 0;
  }

LABEL_12:
  v115 = v51;
  sub_24E60169C(a1 + v50[13], v33, &qword_27F2198F8);
  v54 = sub_24F920A88();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v57 = v56(v33, 1, v54);
  v111 = v55;
  v110 = v54;
  if (v57 != 1)
  {
    v59 = v128;
    (*(v55 + 32))(v128, v33, v54);
    (*(v55 + 56))(v59, 0, 1, v54);

    goto LABEL_22;
  }

  sub_24E60169C(a1 + v50[10], v42, &qword_27F212A08);
  v58 = type metadata accessor for ChallengeDefinitionDetail(0);
  if ((*(*(v58 - 8) + 48))(v42, 1, v58) == 1)
  {

    sub_24E601704(v42, &qword_27F212A08);
  }

  else
  {
    v60 = *&v42[*(v58 + 48)];

    sub_24E710018(v42);
    if (*(v60 + 16))
    {
      v61 = v128;
      (*(v55 + 16))(v128, v60 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v54);

      v62 = 0;
      goto LABEL_20;
    }
  }

  v62 = 1;
  v61 = v128;
LABEL_20:
  (*(v55 + 56))(v61, v62, 1, v54);
  v59 = v61;
  if (v56(v33, 1, v54) != 1)
  {
    sub_24E601704(v33, &qword_27F2198F8);
  }

LABEL_22:
  sub_24E60169C(a1 + v50[8], v132, &qword_27F212B28);
  v63 = sub_24F9289E8();
  v64 = *(*(v63 - 8) + 56);
  v64(v133, 1, 1, v63);
  sub_24E60169C(a1 + v50[9], v134, &qword_27F212890);
  sub_24E60169C(a1 + v50[10], v131, &qword_27F212A08);
  v65 = v50[11];
  v113 = v50;
  sub_24E60169C(a1 + v65, v127, &qword_27F2142A0);
  v66 = a1;
  v67 = sub_24F920418();
  v108 = *(*(v67 - 8) + 56);
  v108(v130, 1, 1, v67);
  sub_24E60169C(v59, v129, &qword_27F2198F8);
  v114 = v66;
  *&v140[9] = *(v66 + 41);
  v68 = v66[1];
  v138 = *v66;
  v139 = v68;
  *v140 = v66[2];
  v125 = *(v66 + 8);
  v126 = *(v66 + 10);
  v69 = (v66 + v50[14]);
  v70 = v69[1];
  v112 = *v69;
  v109 = v70;
  type metadata accessor for GameActivityDraft(0);
  v71 = swift_allocObject();
  v72 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  v73 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v73 - 8) + 56))(v71 + v72, 1, 1, v73);
  v74 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
  v64(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork, 1, 1, v63);
  v75 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  v76 = type metadata accessor for Leaderboard(0);
  (*(*(v76 - 8) + 56))(v71 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  v78 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v78 - 8) + 56))(v71 + v77, 1, 1, v78);
  v79 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v106 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v80 = type metadata accessor for ActivityDefinitionDetail();
  (*(*(v80 - 8) + 56))(v71 + v79, 1, 1, v80);
  v107 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v108(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance, 1, 1, v67);
  v81 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
  v108 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  (*(v111 + 56))(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit, 1, 1, v110);
  v82 = (v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v82 = 0;
  v82[1] = 0;
  sub_24E6F261C(&v138, &v137);

  sub_24F91FDB8();
  v83 = v117;
  sub_24E60169C(v132, v117, &qword_27F212B28);
  sub_24E601704(v71 + v72, &qword_27F212B28);
  sub_24E6009C8(v83, v71 + v72, &qword_27F212B28);
  v84 = v118;
  sub_24E60169C(v133, v118, &qword_27F213FB0);
  sub_24E601704(v71 + v74, &qword_27F213FB0);
  sub_24E6009C8(v84, v71 + v74, &qword_27F213FB0);
  v85 = v119;
  sub_24E60169C(v134, v119, &qword_27F212890);
  sub_24E601704(v71 + v75, &qword_27F212890);
  sub_24E6009C8(v85, v71 + v75, &qword_27F212890);
  v86 = v116;
  sub_24E60169C(v131, v116, &qword_27F212A08);
  sub_24E601704(v71 + v77, &qword_27F212A08);
  sub_24E6009C8(v86, v71 + v77, &qword_27F212A08);

  *(v71 + v81) = v115;
  v87 = v127;
  v88 = v121;
  sub_24E60169C(v127, v121, &qword_27F2142A0);
  v89 = v106;
  sub_24E601704(v71 + v106, &qword_27F2142A0);
  sub_24E6009C8(v88, v71 + v89, &qword_27F2142A0);
  v90 = v130;
  v91 = v123;
  sub_24E60169C(v130, v123, &qword_27F2142B8);
  v92 = v107;
  sub_24E601704(v71 + v107, &qword_27F2142B8);
  sub_24E6009C8(v91, v71 + v92, &qword_27F2142B8);
  v93 = v129;
  v94 = v120;
  sub_24E60169C(v129, v120, &qword_27F2198F8);
  v95 = v108;
  sub_24E601704(v108 + v71, &qword_27F2198F8);
  sub_24E6009C8(v94, v95 + v71, &qword_27F2198F8);
  v96 = (v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v97 = v139;
  *v96 = v138;
  v96[1] = v97;
  v96[2] = *v140;
  *(v96 + 41) = *&v140[9];
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(MEMORY[0x277D84F90]);
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v125;
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v126;
  sub_24F34EFA4(v112, v109);
  sub_24E601704(v93, &qword_27F2198F8);
  sub_24E601704(v90, &qword_27F2142B8);
  sub_24E601704(v87, &qword_27F2142A0);
  sub_24E601704(v131, &qword_27F212A08);
  sub_24E601704(v134, &qword_27F212890);
  sub_24E601704(v133, &qword_27F213FB0);
  sub_24E601704(v132, &qword_27F212B28);
  v98 = v122;
  swift_beginAccess();
  *(v98 + 16) = v71;

  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  sub_24E60169C(v114 + v113[15], &v135, &qword_27F213EA8);
  if (v136)
  {
    sub_24E612C80(&v135, &v137);
    type metadata accessor for DraftPlayTogetherActionImplementation();
    swift_getWitnessTable();
    v99 = sub_24F1489C4(&v137);

    __swift_destroy_boxed_opaque_existential_1(&v137);
  }

  else
  {
    sub_24E601704(&v135, qword_27F21B590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
    (*(v103 + 104))(v102, *MEMORY[0x277D21CA8], v104);
    v99 = sub_24F92A988();
  }

  sub_24E601704(v128, &qword_27F2198F8);
  return v99;
}

uint64_t sub_24E710018(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E710088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24F928AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24E710114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for CompleteWelcomeMoltresAction()
{
  result = qword_27F219900;
  if (!qword_27F219900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7101DC()
{
  sub_24E659BE8();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E710260(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219920);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7108C4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCE8();
  if (!v1)
  {
    type metadata accessor for CompleteWelcomeMoltresAction();
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E710408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_24F928AD8();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219910);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CompleteWelcomeMoltresAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7108C4();
  sub_24F92D108();
  if (!v2)
  {
    v18 = v8;
    v11 = v21;
    v12 = v22;
    v25 = 0;
    v13 = v23;
    *v10 = sub_24F92CC08();
    v10[8] = v14 & 1;
    v24 = 1;
    sub_24E674184(&qword_27F254CB0);
    v17 = v5;
    sub_24F92CC68();
    (*(v11 + 8))(v7, v13);
    (*(v19 + 32))(&v10[*(v18 + 20)], v17, v12);
    sub_24E710918(v10, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7106E0()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_24E71072C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x800000024FA462B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24E71081C(uint64_t a1)
{
  v2 = sub_24E7108C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E710858(uint64_t a1)
{
  v2 = sub_24E7108C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7108C4()
{
  result = qword_27F219918;
  if (!qword_27F219918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219918);
  }

  return result;
}

uint64_t sub_24E710918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteWelcomeMoltresAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E710990()
{
  result = qword_27F219928;
  if (!qword_27F219928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219928);
  }

  return result;
}

unint64_t sub_24E7109E8()
{
  result = qword_27F219930;
  if (!qword_27F219930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219930);
  }

  return result;
}

unint64_t sub_24E710A40()
{
  result = qword_27F219938;
  if (!qword_27F219938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219938);
  }

  return result;
}

uint64_t BagProfile.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BagProfile.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BagProfile.stubs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BagProfile() + 24);
  v4 = sub_24F92A3E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BagProfile()
{
  result = qword_27F219940;
  if (!qword_27F219940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BagProfile.overrides.getter()
{
  type metadata accessor for BagProfile();
}

uint64_t BagProfile.init(name:version:stubs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = type metadata accessor for BagProfile();
  v9 = *(v8 + 24);
  v10 = sub_24F92A3E8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a6[v9], a5, v10);
  v12 = sub_24E609EE0(MEMORY[0x277D84F90]);
  result = (*(v11 + 8))(a5, v10);
  *&a6[*(v8 + 28)] = v12;
  return result;
}

uint64_t BagProfile.init(name:version:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for BagProfile();
  result = sub_24F92A3D8();
  *(a6 + *(v8 + 28)) = a5;
  return result;
}

uint64_t sub_24E710D28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A3E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E710DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A3E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E710E8C()
{
  sub_24F92A3E8();
  if (v0 <= 0x3F)
  {
    sub_24E710F20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E710F20()
{
  if (!qword_27F219950)
  {
    type metadata accessor for AMSBagKey(255);
    sub_24F92A388();
    sub_24E710F9C();
    v0 = sub_24F92AEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F219950);
    }
  }
}

unint64_t sub_24E710F9C()
{
  result = qword_27F2122C8;
  if (!qword_27F2122C8)
  {
    type metadata accessor for AMSBagKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2122C8);
  }

  return result;
}

uint64_t sub_24E711008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E7110E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PickActivityTransitionView()
{
  result = qword_27F219960;
  if (!qword_27F219960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7111FC()
{
  sub_24E711298();
  if (v0 <= 0x3F)
  {
    sub_24E7112FC();
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E711298()
{
  if (!qword_27F219970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219978);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F219970);
    }
  }
}

unint64_t sub_24E7112FC()
{
  result = qword_27F219980;
  if (!qword_27F219980)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F219980);
  }

  return result;
}

uint64_t sub_24E711384@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219988);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v36 = &v30 - v4;
  v5 = type metadata accessor for PickActivityTransitionView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219998);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x28223BE20](v12);
  v31 = &v30 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A0);
  MEMORY[0x28223BE20](v35);
  v32 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958);
  sub_24F926F58();
  sub_24E711C5C(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_24E711DE0(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0);
  sub_24E602068(&qword_27F255080, &qword_27F215FD0);
  sub_24E711ED0();
  sub_24E714410();
  v18 = v31;
  sub_24F921918();
  v19 = (v1 + *(v6 + 28));
  sub_24F926F58();
  v20 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  MEMORY[0x28223BE20](v20);
  (*(v22 + 16))(&v30 - v21);
  v23 = v36;
  sub_24F928D38();
  v24 = sub_24E602068(&qword_27F219DD8, &qword_27F219998);
  v25 = sub_24E602068(&qword_27F219DE0, &qword_27F219988);
  v27 = v32;
  v26 = v33;
  v28 = v37;
  sub_24F925FC8();
  (*(v38 + 8))(v23, v28);
  sub_24E71450C(v11);
  (*(v34 + 8))(v18, v26);
  v40 = v26;
  v41 = v28;
  v42 = v24;
  v43 = v25;
  swift_getOpaqueTypeConformance2();
  sub_24F923FC8();
  return sub_24E714574(v27);
}

__n128 sub_24E711924@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a2;
  v23 = a3;
  v4 = sub_24F921CB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DE8);
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = v21 - v13;
  v15 = a1;

  sub_24F921A18();
  (*(v5 + 104))(v7, *MEMORY[0x277D7ECB0], v4);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
  sub_24F925E38();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_24F927618();
  sub_24F9242E8();
  v16 = v23;
  (*(v12 + 32))(v23, v14, v22);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0) + 36);
  v18 = v29;
  *(v17 + 64) = v28;
  *(v17 + 80) = v18;
  *(v17 + 96) = v30;
  v19 = v25;
  *v17 = v24;
  *(v17 + 16) = v19;
  result = v27;
  *(v17 + 32) = v26;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_24E711C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickActivityTransitionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E711CC0()
{
  v1 = (type metadata accessor for PickActivityTransitionView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219978);
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_24E711DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickActivityTransitionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E711ED0()
{
  result = qword_27F2199B8;
  if (!qword_27F2199B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199A8);
    sub_24E711F5C();
    sub_24E713C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199B8);
  }

  return result;
}

unint64_t sub_24E711F5C()
{
  result = qword_27F2199C0;
  if (!qword_27F2199C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199C8);
    sub_24E711FE8();
    sub_24E71335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199C0);
  }

  return result;
}

unint64_t sub_24E711FE8()
{
  result = qword_27F2199D0;
  if (!qword_27F2199D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199D8);
    sub_24E712074();
    sub_24E71304C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199D0);
  }

  return result;
}

unint64_t sub_24E712074()
{
  result = qword_27F2199E0;
  if (!qword_27F2199E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199E8);
    sub_24E712100();
    sub_24E7121E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199E0);
  }

  return result;
}

unint64_t sub_24E712100()
{
  result = qword_27F2199F0;
  if (!qword_27F2199F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199F8);
    sub_24E71218C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199F0);
  }

  return result;
}

unint64_t sub_24E71218C()
{
  result = qword_27F219A00;
  if (!qword_27F219A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A00);
  }

  return result;
}

unint64_t sub_24E7121E0()
{
  result = qword_27F219A08;
  if (!qword_27F219A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A18);
    type metadata accessor for FlowAction();
    sub_24E712330();
    sub_24E7143C8(&qword_27F219B98, type metadata accessor for FlowAction);
    sub_24E7143C8(&qword_27F219BA0, type metadata accessor for FlowAction);
    swift_getOpaqueTypeConformance2();
    sub_24E712FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A08);
  }

  return result;
}

unint64_t sub_24E712330()
{
  result = qword_27F219A20;
  if (!qword_27F219A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A18);
    sub_24E7123BC();
    sub_24E712F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A20);
  }

  return result;
}

unint64_t sub_24E7123BC()
{
  result = qword_27F219A28;
  if (!qword_27F219A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A30);
    sub_24E712448();
    sub_24E712988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A28);
  }

  return result;
}

unint64_t sub_24E712448()
{
  result = qword_27F219A38;
  if (!qword_27F219A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A40);
    sub_24E7124D4();
    sub_24E712700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A38);
  }

  return result;
}

unint64_t sub_24E7124D4()
{
  result = qword_27F219A48;
  if (!qword_27F219A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A50);
    sub_24E712560();
    sub_24E71264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A48);
  }

  return result;
}

unint64_t sub_24E712560()
{
  result = qword_27F219A58;
  if (!qword_27F219A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A60);
    sub_24E7143C8(&qword_27F219A68, type metadata accessor for LibraryPageView);
    sub_24E7143C8(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A58);
  }

  return result;
}

unint64_t sub_24E71264C()
{
  result = qword_27F219A78;
  if (!qword_27F219A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A80);
    sub_24E7143C8(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A78);
  }

  return result;
}

unint64_t sub_24E712700()
{
  result = qword_27F219A90;
  if (!qword_27F219A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A98);
    sub_24E71278C();
    sub_24E712878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A90);
  }

  return result;
}

unint64_t sub_24E71278C()
{
  result = qword_27F219AA0;
  if (!qword_27F219AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AA8);
    sub_24E7143C8(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
    sub_24E7143C8(&qword_27F219AB0, type metadata accessor for AchievementsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AA0);
  }

  return result;
}

unint64_t sub_24E712878()
{
  result = qword_27F219AB8;
  if (!qword_27F219AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AC0);
    sub_24E7143C8(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView);
    sub_24E712934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AB8);
  }

  return result;
}

unint64_t sub_24E712934()
{
  result = qword_27F219AD0;
  if (!qword_27F219AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AD0);
  }

  return result;
}

unint64_t sub_24E712988()
{
  result = qword_27F219AD8;
  if (!qword_27F219AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AE0);
    sub_24E712A14();
    sub_24E712CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AD8);
  }

  return result;
}

unint64_t sub_24E712A14()
{
  result = qword_27F219AE8;
  if (!qword_27F219AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AF0);
    sub_24E712AA0();
    sub_24E712B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AE8);
  }

  return result;
}

unint64_t sub_24E712AA0()
{
  result = qword_27F219AF8;
  if (!qword_27F219AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B00);
    sub_24E7143C8(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView);
    sub_24E7143C8(&qword_27F219B10, type metadata accessor for PlayNowPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AF8);
  }

  return result;
}

unint64_t sub_24E712B8C()
{
  result = qword_27F219B18;
  if (!qword_27F219B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B20);
    sub_24E712C18();
    sub_24E712C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B18);
  }

  return result;
}

unint64_t sub_24E712C18()
{
  result = qword_27F219B28;
  if (!qword_27F219B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B28);
  }

  return result;
}

unint64_t sub_24E712C6C()
{
  result = qword_27F219B30;
  if (!qword_27F219B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B30);
  }

  return result;
}

unint64_t sub_24E712CC0()
{
  result = qword_27F219B38;
  if (!qword_27F219B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B40);
    sub_24E712D4C();
    sub_24E712E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B38);
  }

  return result;
}

unint64_t sub_24E712D4C()
{
  result = qword_27F219B48;
  if (!qword_27F219B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B50);
    sub_24E7143C8(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView);
    sub_24E7143C8(&qword_27F219B60, type metadata accessor for AchievementsByGameView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B48);
  }

  return result;
}

unint64_t sub_24E712E38()
{
  result = qword_27F219B68;
  if (!qword_27F219B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B70);
    sub_24E712EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B68);
  }

  return result;
}

unint64_t sub_24E712EBC()
{
  result = qword_27F219B78;
  if (!qword_27F219B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B78);
  }

  return result;
}

unint64_t sub_24E712F10()
{
  result = qword_27F219B80;
  if (!qword_27F219B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B88);
    sub_24E7143C8(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView);
    sub_24E602068(&qword_27F215758, &qword_27F215760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B80);
  }

  return result;
}

unint64_t sub_24E712FF8()
{
  result = qword_27F219BA8;
  if (!qword_27F219BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BA8);
  }

  return result;
}

unint64_t sub_24E71304C()
{
  result = qword_27F219BB0;
  if (!qword_27F219BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BB8);
    sub_24E7130D8();
    sub_24E713220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BB0);
  }

  return result;
}

unint64_t sub_24E7130D8()
{
  result = qword_27F219BC0;
  if (!qword_27F219BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BC8);
    sub_24E713164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BC0);
  }

  return result;
}

unint64_t sub_24E713164()
{
  result = qword_27F219BD0;
  if (!qword_27F219BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BD8);
    sub_24E7143C8(&qword_27F219BE0, type metadata accessor for SearchPageContainerView);
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BD0);
  }

  return result;
}

unint64_t sub_24E713220()
{
  result = qword_27F219BE8;
  if (!qword_27F219BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BF0);
    sub_24E632AD0();
    swift_getOpaqueTypeConformance2();
    sub_24E7132D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BE8);
  }

  return result;
}

unint64_t sub_24E7132D8()
{
  result = qword_27F219BF8;
  if (!qword_27F219BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C00);
    sub_24E632AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BF8);
  }

  return result;
}

unint64_t sub_24E71335C()
{
  result = qword_27F219C08;
  if (!qword_27F219C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C10);
    sub_24E7133E8();
    sub_24E7136C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C08);
  }

  return result;
}

unint64_t sub_24E7133E8()
{
  result = qword_27F219C18;
  if (!qword_27F219C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C20);
    sub_24E713474();
    sub_24E713568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C18);
  }

  return result;
}

unint64_t sub_24E713474()
{
  result = qword_27F219C28;
  if (!qword_27F219C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C30);
    sub_24E632AD0();
    type metadata accessor for ReportPlayerProblemView();
    sub_24E7143C8(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C28);
  }

  return result;
}

unint64_t sub_24E713568()
{
  result = qword_27F219C40;
  if (!qword_27F219C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C48);
    sub_24E7143C8(&qword_27F219C50, type metadata accessor for PickActivityTransitionView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C58);
    type metadata accessor for ChallengesPlayerPickerView(255);
    sub_24E7143C8(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C40);
  }

  return result;
}

unint64_t sub_24E7136C8()
{
  result = qword_27F219C68;
  if (!qword_27F219C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C70);
    sub_24E713754();
    sub_24E713954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C68);
  }

  return result;
}

unint64_t sub_24E713754()
{
  result = qword_27F219C78;
  if (!qword_27F219C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C88);
    type metadata accessor for ChallengesReviewView(255);
    sub_24E7143C8(&qword_27F219C90, type metadata accessor for ChallengesReviewView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CA0);
    type metadata accessor for MultiplayerActivityReviewView(255);
    sub_24E7143C8(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C78);
  }

  return result;
}

unint64_t sub_24E713954()
{
  result = qword_27F219CB0;
  if (!qword_27F219CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CB8);
    sub_24E7143C8(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView);
    sub_24E713A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CB0);
  }

  return result;
}

unint64_t sub_24E713A10()
{
  result = qword_27F219CC8;
  if (!qword_27F219CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CD0);
    sub_24E713A9C();
    sub_24E713BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CC8);
  }

  return result;
}

unint64_t sub_24E713A9C()
{
  result = qword_27F219CD8;
  if (!qword_27F219CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CE0);
    sub_24E7143C8(&qword_27F219CE8, type metadata accessor for ActivitySharingPromptView);
    sub_24E713B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CD8);
  }

  return result;
}

unint64_t sub_24E713B58()
{
  result = qword_27F219CF0;
  if (!qword_27F219CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CF0);
  }

  return result;
}

unint64_t sub_24E713BAC()
{
  result = qword_27F219CF8;
  if (!qword_27F219CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CF8);
  }

  return result;
}

unint64_t sub_24E713C00()
{
  result = qword_27F219D00;
  if (!qword_27F219D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D08);
    sub_24E713D7C();
    type metadata accessor for InviteFriendsPageView(255);
    type metadata accessor for FlowAction();
    sub_24E7143C8(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView);
    sub_24E7143C8(&qword_27F219B98, type metadata accessor for FlowAction);
    sub_24E7143C8(&qword_27F219BA0, type metadata accessor for FlowAction);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D00);
  }

  return result;
}

unint64_t sub_24E713D7C()
{
  result = qword_27F219D10;
  if (!qword_27F219D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D18);
    sub_24E713E08();
    sub_24E714044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D10);
  }

  return result;
}

unint64_t sub_24E713E08()
{
  result = qword_27F219D20;
  if (!qword_27F219D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D28);
    sub_24E713EFC();
    type metadata accessor for PlayTogetherWelcomePageView(255);
    sub_24E7143C8(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D20);
  }

  return result;
}

unint64_t sub_24E713EFC()
{
  result = qword_27F219D30;
  if (!qword_27F219D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D38);
    sub_24E713F88();
    sub_24E713BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D30);
  }

  return result;
}

unint64_t sub_24E713F88()
{
  result = qword_27F219D40;
  if (!qword_27F219D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D48);
    sub_24E7143C8(&qword_27F219D50, type metadata accessor for ContactsIntegrationPromptView);
    sub_24E713B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D40);
  }

  return result;
}

unint64_t sub_24E714044()
{
  result = qword_27F219D60;
  if (!qword_27F219D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D68);
    type metadata accessor for AchievementDetailsPageView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D70);
    sub_24E7143C8(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80);
    sub_24E7141DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D98);
    sub_24E7142E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D60);
  }

  return result;
}

unint64_t sub_24E7141DC()
{
  result = qword_27F219D88;
  if (!qword_27F219D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80);
    sub_24E71428C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D88);
  }

  return result;
}

unint64_t sub_24E71428C()
{
  result = qword_27F219D90;
  if (!qword_27F219D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D90);
  }

  return result;
}

unint64_t sub_24E7142E0()
{
  result = qword_27F219DA0;
  if (!qword_27F219DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D98);
    sub_24E7143C8(&qword_27F219DA8, type metadata accessor for ProfileEditorView);
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219DA0);
  }

  return result;
}

uint64_t sub_24E7143C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E714410()
{
  result = qword_27F219DC0;
  if (!qword_27F219DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DC8);
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219DC0);
  }

  return result;
}

uint64_t sub_24E71450C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E714574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7145DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DF0);
  sub_24E602068(&qword_27F219DD8, &qword_27F219998);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219988);
  sub_24E602068(&qword_27F219DE0, &qword_27F219988);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ResetDebugSettingsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E714798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24E714828(uint64_t a1)
{
  v2 = sub_24E714A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E714864(uint64_t a1)
{
  v2 = sub_24E714A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetDebugSettingsAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E714A04()
{
  result = qword_27F219E00;
  if (!qword_27F219E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E00);
  }

  return result;
}

uint64_t ResetDebugSettingsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ResetDebugSettingsAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24E714D10(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ResetDebugSettingsAction()
{
  result = qword_27F219E10;
  if (!qword_27F219E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E714D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetDebugSettingsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E714D74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E714DF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E714F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E714FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E71505C()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7150DC()
{
  result = qword_27F219E20;
  if (!qword_27F219E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E20);
  }

  return result;
}

unint64_t sub_24E715134()
{
  result = qword_27F219E28;
  if (!qword_27F219E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E28);
  }

  return result;
}

unint64_t sub_24E71518C()
{
  result = qword_27F219E30;
  if (!qword_27F219E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E30);
  }

  return result;
}

uint64_t sub_24E715254()
{
  v0 = sub_24F9275F8();
  if (qword_27F211948 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  *&xmmword_27F39A7D8 = 0x404C000000000000;
  *(&xmmword_27F39A7D8 + 1) = v0;
  qword_27F39A7E8 = v1;
  unk_27F39A7F0 = xmmword_27F2543E0;
  qword_27F39A800 = qword_27F2543F0;
  qword_27F39A808 = qword_27F2543F8;
  unk_27F39A810 = xmmword_24F94D5D0;
}

uint64_t sub_24E71530C()
{
  v0 = sub_24F9275F8();
  if (qword_27F211948 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  *&xmmword_27F39A820 = 0x402C000000000000;
  *(&xmmword_27F39A820 + 1) = v0;
  qword_27F39A830 = v1;
  *algn_27F39A838 = xmmword_27F2543E0;
  qword_27F39A848 = qword_27F2543F0;
  qword_27F39A850 = qword_27F2543F8;
  *algn_27F39A858 = xmmword_24F94D5E0;
}

uint64_t sub_24E7153C4()
{
  v0 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  *&xmmword_27F39A868 = 0;
  *(&xmmword_27F39A868 + 1) = v0;
  qword_27F39A878 = v1;
  unk_27F39A880 = xmmword_27F254420;
  qword_27F39A890 = qword_27F254430;
  qword_27F39A898 = qword_27F254438;
  unk_27F39A8A0 = xmmword_24F94D5F0;
}

uint64_t sub_24E715478()
{
  v0 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  *&xmmword_27F39A8B0 = 0;
  *(&xmmword_27F39A8B0 + 1) = v0;
  qword_27F39A8C0 = v1;
  *algn_27F39A8C8 = xmmword_27F254420;
  qword_27F39A8D8 = qword_27F254430;
  qword_27F39A8E0 = qword_27F254438;
  *algn_27F39A8E8 = xmmword_24F94D600;
}

uint64_t sub_24E71552C@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E658;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_24F4E9E44(a2, v8);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E640;
  }

  v10 = __swift_project_value_buffer(v6, v9);
  sub_24E718A3C(v10, v8, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E718AA4(v8, a3, type metadata accessor for CardLayoutMetrics);
  result = sub_24F924978();
  *(a3 + *(v6 + 44)) = result;
  if (a1 == 1)
  {
    *(a3 + *(v6 + 32)) = 0;
  }

  return result;
}

uint64_t sub_24E71574C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v143 = a5;
  v142 = a4;
  v166 = a6;
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v10);
  v140 = &v112 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E40);
  MEMORY[0x28223BE20](v151);
  v153 = &v112 - v12;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E48);
  MEMORY[0x28223BE20](v161);
  v14 = &v112 - v13;
  v136 = type metadata accessor for HeroCardGameHeadingView();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v125 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v150);
  v139 = &v112 - v16;
  v152 = type metadata accessor for CardContentBackgroundStyle(0);
  v17 = MEMORY[0x28223BE20](v152);
  v134 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v138 = &v112 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E58);
  MEMORY[0x28223BE20](v148);
  v149 = &v112 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E60);
  MEMORY[0x28223BE20](v158);
  v22 = &v112 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v23 - 8);
  v133 = &v112 - v24;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v147);
  v137 = &v112 - v25;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E68);
  MEMORY[0x28223BE20](v163);
  v160 = &v112 - v26;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E70);
  MEMORY[0x28223BE20](v155);
  v157 = &v112 - v27;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E78);
  MEMORY[0x28223BE20](v145);
  v146 = &v112 - v28;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E80);
  MEMORY[0x28223BE20](v156);
  v30 = &v112 - v29;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E88);
  MEMORY[0x28223BE20](v164);
  v159 = &v112 - v31;
  v123 = sub_24F923E98();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = v32;
  v121 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for AchievementsCard();
  v116 = *(v154 - 8);
  v33 = MEMORY[0x28223BE20](v154);
  v119 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v34;
  MEMORY[0x28223BE20](v33);
  v126 = &v112 - v35;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E90);
  MEMORY[0x28223BE20](v130);
  v124 = &v112 - v36;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E98);
  MEMORY[0x28223BE20](v127);
  v129 = &v112 - v37;
  v132 = type metadata accessor for PlayerAvatar(0);
  v38 = MEMORY[0x28223BE20](v132);
  v115 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v141 = &v112 - v40;
  v128 = type metadata accessor for CardCompactAvatarView();
  MEMORY[0x28223BE20](v128);
  v118 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA0);
  MEMORY[0x28223BE20](v144);
  v131 = &v112 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA8);
  v165 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v162 = &v112 - v44;
  if (v9 == 4)
  {
    v45 = a1;
    v46 = a3;
    if (a3 > 2u)
    {
      v49 = v166;
      if (a3 == 3)
      {
        v114 = v30;
        v113 = v22;
        v47 = v166;
      }

      else
      {
        if (a3 != 4)
        {

LABEL_26:
          if (qword_27F20FE08 != -1)
          {
            swift_once();
          }

          v50 = &xmmword_27F39A8B0;
          goto LABEL_29;
        }

        v114 = v30;
        v113 = v22;
        v47 = v166;
      }
    }

    else
    {
      v114 = v30;
      v113 = v22;
      v47 = v166;
    }

    v51 = sub_24F92CE08();

    v49 = v47;
    v22 = v113;
    v30 = v114;
    if ((v51 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_5:
    v46 = a3;
    switch(a3)
    {
      case 2u:
        if (qword_27F20FE00 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A868;
        break;
      case 3u:
        if (qword_27F20FDF8 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A820;
        break;
      case 4u:
        if (qword_27F20FDF0 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A7D8;
        break;
      default:
        goto LABEL_26;
    }

LABEL_29:
    v54 = v50[3];
    v168[2] = v50[2];
    v168[3] = v54;
    v169 = *(v50 + 8);
    v55 = v50[1];
    v168[0] = *v50;
    v168[1] = v55;
    if (v45 <= 2u)
    {
      if (v45 == 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_24E717974(v168, v167);
        sub_24E717CD4();
        sub_24F924E28();
        sub_24E60169C(v30, v157, &qword_27F219E80);
        swift_storeEnumTagMultiPayload();
        sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &unk_24F94D6B8, sub_24E717CD4);
        sub_24E717DBC();
        v93 = v159;
        sub_24F924E28();
        sub_24E601704(v30, &qword_27F219E80);
        sub_24E60169C(v93, v160, &qword_27F219E88);
        swift_storeEnumTagMultiPayload();
        sub_24E717B98();
        sub_24E717E78();
        v61 = v162;
        sub_24F924E28();
        sub_24E717F30(v168);
        v94 = v93;
        v95 = &qword_27F219E88;
LABEL_43:
        sub_24E601704(v94, v95);
        goto LABEL_48;
      }

      if (v45 == 2)
      {
        v114 = v30;
        v112 = v43;
        if (v46 == 1)
        {
          v62 = v141;
          sub_24E718A3C(a2 + *(v154 + 44), v141, type metadata accessor for PlayerAvatar);
          v63 = v118;
          v64 = &v118[*(v128 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24E717974(v168, v167);
          sub_24E71898C(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v64 = sub_24F923598();
          v64[8] = v65 & 1;
          v66 = v115;
          sub_24E718A3C(v62, v115, type metadata accessor for PlayerAvatar);
          LOBYTE(v167[0]) = 7;
          sub_24F8319B8(v66, v167, v63);
          sub_24E7189DC(v62, type metadata accessor for PlayerAvatar);
          sub_24E718A3C(v63, v129, type metadata accessor for CardCompactAvatarView);
          swift_storeEnumTagMultiPayload();
          sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
          sub_24E602068(&qword_27F219EE0, &qword_27F219E90);
          v67 = v131;
          sub_24F924E28();
          sub_24E7189DC(v63, type metadata accessor for CardCompactAvatarView);
        }

        else
        {
          sub_24E718A3C(a2, v126, type metadata accessor for AchievementsCard);
          v97 = a2;
          v98 = v119;
          sub_24E718A3C(v97, v119, type metadata accessor for AchievementsCard);
          v99 = v122;
          v100 = v121;
          v101 = v123;
          (*(v122 + 16))(v121, v142, v123);
          v102 = *(v116 + 80);
          v154 = v46;
          v103 = (v102 + 24) & ~v102;
          v104 = v103 + v117;
          v105 = (*(v99 + 80) + v103 + v117 + 1) & ~*(v99 + 80);
          v106 = swift_allocObject();
          *(v106 + 16) = v143;
          sub_24E718AA4(v98, v106 + v103, type metadata accessor for AchievementsCard);
          LOBYTE(v103) = v154;
          *(v106 + v104) = v154;
          (*(v99 + 32))(v106 + v105, v100, v101);
          sub_24E717974(v168, v167);

          v107 = v124;
          sub_24E717634(v126, v103, sub_24E7188A8, v106, v124);
          sub_24E60169C(v107, v129, &qword_27F219E90);
          swift_storeEnumTagMultiPayload();
          sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
          sub_24E602068(&qword_27F219EE0, &qword_27F219E90);
          v67 = v131;
          sub_24F924E28();
          sub_24E601704(v107, &qword_27F219E90);
        }

        v108 = v160;
        sub_24E60169C(v67, v146, &qword_27F219EA0);
        swift_storeEnumTagMultiPayload();
        sub_24E717CD4();
        v109 = v114;
        sub_24F924E28();
        sub_24E60169C(v109, v157, &qword_27F219E80);
        swift_storeEnumTagMultiPayload();
        sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &unk_24F94D6B8, sub_24E717CD4);
        sub_24E717DBC();
        v110 = v159;
        sub_24F924E28();
        sub_24E601704(v109, &qword_27F219E80);
        sub_24E60169C(v110, v108, &qword_27F219E88);
        swift_storeEnumTagMultiPayload();
        sub_24E717B98();
        sub_24E717E78();
        v61 = v162;
        sub_24F924E28();
        sub_24E717F30(v168);
        sub_24E601704(v110, &qword_27F219E88);
        sub_24E601704(v67, &qword_27F219EA0);
        v43 = v112;
        goto LABEL_48;
      }
    }

    else
    {
      switch(v45)
      {
        case 3u:
          v112 = v43;
          v68 = v154;
          v69 = *(v154 + 44);
          v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
          v71 = *(v68 + 40);
          v72 = sub_24F9289E8();
          v73 = a2 + v71;
          v74 = v133;
          (*(*(v72 - 8) + 16))(v133, v73, v72);
          *(v74 + v70) = v169;
          v75 = type metadata accessor for PlayerAvatar.Overlay(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
          v76 = v141;
          sub_24E718A3C(a2 + v69, v141, type metadata accessor for PlayerAvatar);
          v77 = *(v132 + 20);
          sub_24E717974(v168, v167);
          sub_24E717FD0(v74, v76 + v77);
          LOBYTE(v167[0]) = 7;
          v78 = v137;
          sub_24F8319B8(v76, v167, v137);
          sub_24F927618();
          sub_24F9238C8();
          v79 = (v78 + *(v147 + 36));
          v80 = v167[1];
          *v79 = v167[0];
          v79[1] = v80;
          v79[2] = v167[2];
          sub_24E60169C(v78, v149, &qword_27F2233D0);
          swift_storeEnumTagMultiPayload();
          sub_24E680290();
          sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24F924E28();
          sub_24E60169C(v22, v157, &qword_27F219E60);
          swift_storeEnumTagMultiPayload();
          sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &unk_24F94D6B8, sub_24E717CD4);
          sub_24E717DBC();
          v81 = v159;
          sub_24F924E28();
          sub_24E601704(v22, &qword_27F219E60);
          sub_24E60169C(v81, v160, &qword_27F219E88);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v162;
          sub_24F924E28();
          sub_24E717F30(v168);
          v43 = v112;
          sub_24E601704(v81, &qword_27F219E88);
          sub_24E601704(v78, &qword_27F2233D0);
          goto LABEL_48;
        case 4u:
          v159 = v10;
          v82 = v154;
          v83 = a2 + *(v154 + 32);
          v84 = (v83 + *(type metadata accessor for CommonCardAttributes(0) + 44));
          v85 = v84[1];
          v112 = v43;
          if (v85)
          {
            v86 = *v84;
            v87 = *(v82 + 40);
            v88 = sub_24F9289E8();
            v89 = v125;
            (*(*(v88 - 8) + 16))(v125, a2 + v87, v88);
            v90 = v136;
            v91 = (v89 + *(v136 + 20));
            *v91 = v86;
            v91[1] = v85;
            v92 = v139;
            sub_24E718AA4(v89, v139, type metadata accessor for HeroCardGameHeadingView);
            (*(v135 + 56))(v92, 0, 1, v90);
          }

          else
          {
            v92 = v139;
            (*(v135 + 56))(v139, 1, 1, v136);
          }

          v111 = v160;
          sub_24E60169C(v92, v153, &qword_27F219E50);
          swift_storeEnumTagMultiPayload();
          sub_24E717974(v168, v167);
          sub_24E7179AC();
          sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);

          sub_24F924E28();
          sub_24E60169C(v14, v111, &qword_27F219E48);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v162;
          sub_24F924E28();
          sub_24E717F30(v168);
          sub_24E601704(v14, &qword_27F219E48);
          sub_24E601704(v92, &qword_27F219E50);
          v43 = v112;
          v49 = v166;
          goto LABEL_48;
        case 0xBu:
          v56 = dword_24F94D76C[v46];
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
          v58 = v134;
          (*(*(v57 - 8) + 56))(v134, v56, 5, v57);
          v59 = v138;
          sub_24E718AA4(v58, v138, type metadata accessor for CardContentBackgroundStyle);
          sub_24E718A3C(v59, v149, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E717974(v168, v167);
          sub_24E680290();
          sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24F924E28();
          sub_24E60169C(v22, v157, &qword_27F219E60);
          swift_storeEnumTagMultiPayload();
          sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &unk_24F94D6B8, sub_24E717CD4);
          sub_24E717DBC();
          v60 = v159;
          sub_24F924E28();
          sub_24E601704(v22, &qword_27F219E60);
          sub_24E60169C(v60, v160, &qword_27F219E88);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v162;
          sub_24F924E28();
          sub_24E717F30(v168);
          sub_24E601704(v60, &qword_27F219E88);
          sub_24E7189DC(v59, type metadata accessor for CardContentBackgroundStyle);
LABEL_48:
          sub_24E717F60(v61, v49);
          return (*(v165 + 56))(v49, 0, 1, v43);
      }
    }

    sub_24E717974(v168, v167);
    v96 = v140;
    sub_24E923960(v45, a2, v46, v142, v143, v140);
    sub_24E60169C(v96, v153, &qword_27F214A20);
    swift_storeEnumTagMultiPayload();
    sub_24E7179AC();
    sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24F924E28();
    sub_24E60169C(v14, v160, &qword_27F219E48);
    swift_storeEnumTagMultiPayload();
    sub_24E717B98();
    sub_24E717E78();
    v61 = v162;
    sub_24F924E28();
    sub_24E717F30(v168);
    sub_24E601704(v14, &qword_27F219E48);
    v94 = v96;
    v95 = &qword_27F214A20;
    goto LABEL_43;
  }

  v45 = a1;
  v48 = sub_24E92D030(a1, a2, a3);
  v49 = v166;
  if (v48)
  {
    goto LABEL_5;
  }

LABEL_22:
  v52 = *(v165 + 56);

  return v52(v49, 1, 1, v43);
}

uint64_t sub_24E717634@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E90);
  v12 = a5 + v11[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v11[14];
  type metadata accessor for CardSafeArea(0);
  sub_24E71898C(&qword_27F214D10, type metadata accessor for CardSafeArea);
  *v13 = sub_24F923598();
  *(v13 + 8) = v14 & 1;
  v15 = a5 + v11[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  *v15 = v22;
  *(v15 + 16) = v23;
  *(v15 + 24) = v24;
  *(a5 + v11[9]) = a2;
  sub_24E718A3C(a1, a5, type metadata accessor for AchievementsCard);
  if (v10 == 3)
  {

    v17 = 2;
  }

  else
  {
    v16 = sub_24F92CE08();

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }
  }

  *(a5 + v11[10]) = v17;
  v18 = *(*(a1 + *(type metadata accessor for AchievementsCard() + 36)) + 16);
  switch(v18)
  {
    case 3:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 2;
      break;
    case 2:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 1;
      break;
    case 1:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 0;
      break;
    default:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      if (v18 == 5)
      {
        if ((v10 - 3) >= 3)
        {
          v20 = 2;
        }

        else
        {
          v20 = 3;
        }
      }

      else
      {
        v20 = 4;
      }

      break;
  }

  *(a5 + v11[11]) = v20;
  v21 = (a5 + v11[12]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

unint64_t sub_24E7179AC()
{
  result = qword_27F219EB0;
  if (!qword_27F219EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E50);
    sub_24E71898C(&qword_27F219EB8, type metadata accessor for HeroCardGameHeadingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EB0);
  }

  return result;
}

uint64_t sub_24E717A60(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E717ADC()
{
  result = qword_27F214C80;
  if (!qword_27F214C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C88);
    sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    sub_24E63CF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C80);
  }

  return result;
}

unint64_t sub_24E717B98()
{
  result = qword_27F219EC0;
  if (!qword_27F219EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E88);
    sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &unk_24F94D6B8, sub_24E717CD4);
    sub_24E717DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EC0);
  }

  return result;
}

uint64_t sub_24E717C50(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E717CD4()
{
  result = qword_27F219ED0;
  if (!qword_27F219ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219EA0);
    sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
    sub_24E602068(&qword_27F219EE0, &qword_27F219E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219ED0);
  }

  return result;
}

unint64_t sub_24E717DBC()
{
  result = qword_27F219EE8;
  if (!qword_27F219EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E60);
    sub_24E680290();
    sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EE8);
  }

  return result;
}

unint64_t sub_24E717E78()
{
  result = qword_27F219EF0;
  if (!qword_27F219EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E48);
    sub_24E7179AC();
    sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EF0);
  }

  return result;
}

uint64_t sub_24E717F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E717FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E718040()
{
  v1 = v0;
  v2 = type metadata accessor for AchievementsCard();
  v53 = *(*(v2 - 1) + 80);
  v50 = *(*(v2 - 1) + 64);
  v52 = sub_24F923E98();
  v49 = *(v52 - 8);
  v48 = *(v49 + 80);

  v51 = (v53 + 24) & ~v53;
  v3 = v0 + v51;
  __swift_destroy_boxed_opaque_existential_1(v0 + v51);
  if (*(v0 + v51 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 40);
  }

  v4 = v2[6];
  v5 = sub_24F92A6D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v2[7];
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v47 = v3;
  v10 = v3 + v2[8];

  v11 = type metadata accessor for CommonCardAttributes(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v10 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v16 = v11[7];
  v46 = v15;
  if (!v15(v10 + v16, 1, v13))
  {
    (*(v14 + 8))(v10 + v16, v13);
  }

  v54 = v14;
  v17 = v10 + v11[8];
  v18 = type metadata accessor for GSKVideo();
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v44 = v2;
    v45 = v1;
    v19 = sub_24F91F4A8();
    (*(*(v19 - 8) + 8))(v17, v19);
    v43 = v13;
    (*(v14 + 8))(v17 + v18[5], v13);
    v20 = v18[9];
    v21 = sub_24F928698();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (!v23(v17 + v20, 1, v21))
    {
      (*(v22 + 8))(v17 + v20, v21);
    }

    v24 = v18[10];
    if (!v23(v17 + v24, 1, v21))
    {
      (*(v22 + 8))(v17 + v24, v21);
    }

    v2 = v44;
    v1 = v45;
    v13 = v43;
  }

  if (*(v10 + v11[9]))
  {
  }

  v25 = v11[10];
  if (!v46(v10 + v25, 1, v13))
  {
    (*(v54 + 8))(v10 + v25, v13);
  }

  v26 = v10 + v11[17];
  v27 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = sub_24F928388();
    (*(*(v28 - 8) + 8))(v26, v28);
  }

  v29 = v10 + v11[19];
  if (*(v29 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = v10 + v11[20];
  v31 = type metadata accessor for CardPrimaryActionType();
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v40 = *(type metadata accessor for OfferButtonInfo() + 24);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v30 + v40, 1, v41))
        {
          (*(v42 + 8))(v30 + v40, v41);
        }

        break;
      case 1:

        break;
      case 0:

        break;
    }
  }

  v32 = *(v54 + 8);
  v32(v47 + v2[10], v13);
  v33 = v47 + v2[11];

  v34 = type metadata accessor for PlayerAvatar(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v36 - 8) + 48))(v33 + v35, 1, v36) && !swift_getEnumCaseMultiPayload())
  {
    v32(v33 + v35, v13);
  }

  v37 = v33 + *(v34 + 24);
  if (*(v37 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  (*(v49 + 8))(v1 + ((v50 + v51 + v48 + 1) & ~v48), v52);

  return swift_deallocObject();
}

uint64_t sub_24E7188A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementsCard() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_24F923E98() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_24E923960(0xC, v1 + v4, v8, v9, v7, a1);
}

uint64_t sub_24E71898C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7189DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E718A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E718AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E718B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E718B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E718BF8()
{
  result = qword_27F219F08[0];
  if (!qword_27F219F08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219EA8);
    sub_24E717B98();
    sub_24E717E78();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F219F08);
  }

  return result;
}

uint64_t sub_24E718C84(uint64_t a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v28 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v37 = MEMORY[0x277D84F90];
  v30 = v4;
  sub_24F4579F8(0, v7, 0);
  v8 = v37;
  v9 = v30 + 56;
  result = sub_24F92C6B8();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v33 = v3 + 32;
  v34 = v3;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(v12 + 36);
    v17 = v12;

    sub_24F920FC8();
    v37 = v8;
    v18 = v6;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_24F4579F8(v19 > 1, v20 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v20 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v18, v35);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_24E6586A8(v11, v36, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_24E6586A8(v11, v36, 0);
      v12 = v30;
LABEL_19:
      v6 = v18;
    }

    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t InvitePlayersToChallengeActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for InvitePlayersToChallengeAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E71B294(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InvitePlayersToChallengeAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 24) = a2;
  sub_24E719BE0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F94D7A0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E7191F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for Player(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E719284, 0, 0);
}

uint64_t sub_24E719284()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E71931C, v2, v1);
}

uint64_t sub_24E71931C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24E7193A4, 0, 0);
}

uint64_t sub_24E7193A4()
{
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E719430, v2, v1);
}

uint64_t sub_24E719430()
{
  v1 = v0[14];
  v2 = v0[11];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E71B24C(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E71B294(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24E719560, 0, 0);
}

uint64_t sub_24E719560()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = *v2;
  v0[16] = *v2;
  v4 = v2[1];
  v0[17] = v4;
  v5 = v2[4];
  v6 = *v1;
  v7 = v1[1];
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24E719638;
  v9 = v0[8];

  return sub_24E71B2FC(v3, v4, v5, v6, v7, v9);
}

uint64_t sub_24E719638()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E719934;
  }

  else
  {
    v2 = sub_24E71974C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71974C()
{
  v1 = v0[9];
  v2 = v1[5];
  v3 = v1[2];
  v4 = v1[3];
  v5 = swift_task_alloc();
  v0[20] = v5;
  v6 = type metadata accessor for InvitePlayersToChallengeActionImplementation();
  *v5 = v0;
  v5[1] = sub_24E719820;
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[8];

  return sub_24E719D38(v7, v8, v2, v9, v3, v4, v10, v6);
}

uint64_t sub_24E719820()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24E719A68;
  }

  else
  {
    v2 = sub_24E7199A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E719934()
{
  sub_24E71BF38(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7199A4()
{
  v1 = v0[7];
  sub_24E71BF38(v0[11]);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E719A68()
{
  sub_24E71BF38(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E719AD8()
{
  v1 = (type metadata accessor for InvitePlayersToChallengeAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E719BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToChallengeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E719C44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for InvitePlayersToChallengeAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E7191F0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24E719D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24E719D64, 0, 0);
}

uint64_t sub_24E719D64()
{
  v1 = *(v0[4] + 16);
  v0[10] = v1;
  if (v1)
  {
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v2 = qword_27F24F280;
    v3 = sub_24F92B098();
    v4 = sub_24F92B098();
    v5 = [v2 pathForResource:v3 ofType:v4];

    if (v5)
    {
      v6 = sub_24F92B0D8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[11] = v6;
    v0[12] = v8;
    v13 = v0[5];
    v15 = *v13;
    v14 = v13[1];
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_24E71A010;
    v18 = v0[2];
    v17 = v0[3];

    return sub_24E71BF94(v18, v17, v15, v14);
  }

  else
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);

    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = 1;

      _os_log_impl(&dword_24E5DD000, v10, v11, "Skip invite via iMessage. Contact list is empty: %{BOOL}d", v12, 8u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_24E71A010(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E71A160, 0, 0);
  }
}

uint64_t sub_24E71A160()
{
  v36 = v0;
  v1 = *(v0 + 120);
  if (v1 && (v2 = sub_24E71A5D8(*(v0 + 112), v1, *(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 88), *(v0 + 96)), , v2))
  {
    v3 = sub_24F92B098();
    v4 = [v2 _pluginPayloadWithAppIconData_appName_allowDataPayloads_];

    v5 = [v4 data];
    if (v5)
    {
      v6 = sub_24F91F4E8();
      v8 = v7;

      sub_24E71CBC0(v6, v8);
      v5 = sub_24F91F4C8();
      v34 = v8;
      sub_24E627880(v6, v8);
    }

    else
    {
      v6 = 0;
      v34 = 0xF000000000000000;
    }

    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = sub_24F92B588();
    v16 = sub_24F92B098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;
    if (v13)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (v13)
    {
      v19 = v13;
    }

    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v20 = sub_24F92B588();

    v21 = IMSPISendMSMessagePayload();

    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E778);

    v10 = sub_24F9220B8();
    v23 = sub_24F92BD98();

    if (os_log_type_enabled(v10, v23))
    {
      v33 = v6;
      v24 = *(v0 + 80);
      v25 = *(v0 + 24);
      v26 = *(v0 + 16);
      v27 = swift_slowAlloc();
      v32 = v2;
      v28 = v21;
      v29 = swift_slowAlloc();
      v35 = v29;
      *v27 = 134218498;
      *(v27 + 4) = v24;

      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_24E7620D4(v26, v25, &v35);
      *(v27 + 22) = 1024;
      *(v27 + 24) = v28;
      _os_log_impl(&dword_24E5DD000, v10, v23, "Invited %ld contacts to challenge %s, success: %{BOOL}d", v27, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v27, -1, -1);
      sub_24E71CBAC(v33, v34);
    }

    else
    {

      sub_24E71CBAC(v6, v34);
    }
  }

  else
  {

    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "Failed to create challenge invite message", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

id sub_24E71A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v24 = v23;
  v26 = v25;
  sub_24E71ABA4(v22, a2, a3, a4, a5, v18);
  if ((*(v24 + 48))(v18, 1, v26) == 1)
  {
    sub_24E601704(v18, &qword_27F228530);
    return 0;
  }

  else
  {
    v54 = v24;
    v28 = *(v24 + 32);
    v55 = v21;
    v57 = v26;
    v28(v21, v18, v26);
    v29 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
    v30._countAndFlagsBits = 0xD000000000000024;
    v30._object = 0x800000024FA46360;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(v30, v31);
    v32 = sub_24F92B098();

    [v29 setCaption_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x4E72657469766E69;
    *(inited + 40) = 0xEB00000000656D61;
    v34 = (a5 + *(type metadata accessor for Player(0) + 28));
    v35 = v34[1];
    *(inited + 48) = *v34;
    *(inited + 56) = v35;
    *(inited + 64) = 0x656D614E656D6167;
    *(inited + 72) = 0xE800000000000000;
    v56 = a6;
    *(inited + 80) = a6;
    *(inited + 88) = a7;

    v36 = sub_24E6086DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
    swift_arrayDestroy();
    v37._countAndFlagsBits = 0xD000000000000027;
    v37._object = 0x800000024FA46390;
    localizedString(_:with:)(v37, v36);

    v38 = sub_24F92B098();

    [v29 setSubcaption_];

    v39 = a7;
    if (a9)
    {
      v40 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v41 = sub_24F92B098();
      v42 = [v40 initWithContentsOfFile_];

      [v29 setImage_];
    }

    v43 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
    v44 = [objc_allocWithZone(MEMORY[0x277CD68F8]) initWithSession_];
    v45 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
    [v44 setLayout_];
    v46 = v55;
    v47 = sub_24F91F3B8();
    [v44 setURL_];

    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_24F93DE60;
    *(v48 + 32) = 0x656D614E656D6167;
    v49 = v56;
    *(v48 + 40) = 0xE800000000000000;
    *(v48 + 48) = v49;
    *(v48 + 56) = v39;

    v50 = sub_24E6086DC(v48);
    swift_setDeallocating();
    sub_24E601704(v48 + 32, &qword_27F219F90);
    v51._object = 0x800000024FA463C0;
    v51._countAndFlagsBits = 0xD00000000000001BLL;
    localizedString(_:with:)(v51, v50);

    v52 = sub_24F92B098();

    [v44 setSummaryText_];

    v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v44 setOverriddenAdamID_];

    (*(v54 + 8))(v46, v57);
    return v44;
  }
}

uint64_t sub_24E71ABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37[17] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_24F91EC58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x6F43657469766E69;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x676E656C6C616863;
  *(inited + 72) = 0xEB00000000444965;
  *(inited + 80) = a3;
  *(inited + 88) = a4;
  *(inited + 96) = 0x4972657469766E69;
  v18 = *a5;
  v19 = a5[1];
  *(inited + 104) = 0xE900000000000044;
  *(inited + 112) = v18;
  *(inited + 120) = v19;

  sub_24E6086DC(inited);
  v20 = v14;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  swift_arrayDestroy();
  sub_24F91EC38();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_24E601704(v13, &qword_27F219F98);
    v21 = sub_24F91F4A8();
    return (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  }

  else
  {
    v23 = v35;
    v24 = v36;
    (*(v15 + 32))(v35, v13, v20);
    v25 = objc_opt_self();
    v26 = sub_24F92AE28();

    v37[0] = 0;
    v27 = [v25 dataWithJSONObject:v26 options:0 error:v37];

    v28 = v37[0];
    if (v27)
    {
      v29 = sub_24F91F4E8();
      v31 = v30;

      sub_24F91F4D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
      sub_24F91EB98();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F91EB68();

      sub_24F91EBD8();
      sub_24F91EBF8();
      sub_24E627880(v29, v31);
      return (*(v15 + 8))(v23, v20);
    }

    else
    {
      v32 = v28;
      v33 = sub_24F91F278();

      swift_willThrow();
      (*(v15 + 8))(v23, v20);

      v34 = sub_24F91F4A8();
      return (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
    }
  }
}

uint64_t sub_24E71B0C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E71B108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E694534(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24E71B24C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E71B294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E71B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E71B438, 0, 0);
}

uint64_t sub_24E71B438()
{
  if (*(v0[14] + 16))
  {

    v0[24] = sub_24F45D828(v1);

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_24E71B560;

    return MEMORY[0x28217F228](v0 + 7, v2, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24E71B560()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_24E71B9E8;
  }

  else
  {
    v2 = sub_24E71B67C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71B67C()
{
  v7 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  sub_24F920FC8();

  sub_24F920FF8();
  v2 = sub_24E718C84(v7);
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_24E71B7E0;
  v4 = v0[23];
  v5 = v0[20];

  return MEMORY[0x282165160](v4, v5, v2, v1, v8);
}

uint64_t sub_24E71B7E0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 152);
  *(*v1 + 232) = v0;

  v5 = (v4 + 8);
  v6 = (v3 + 8);
  if (v0)
  {
    v7 = v2[23];
    v9 = v2[20];
    v8 = v2[21];
    v10 = v2[18];

    (*v5)(v9, v10);
    (*v6)(v7, v8);
    v11 = sub_24E71BD84;
  }

  else
  {
    v12 = v2[23];
    v14 = v2[20];
    v13 = v2[21];
    v15 = v2[18];

    (*v5)(v14, v15);
    (*v6)(v12, v13);
    v11 = sub_24E71BB94;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_24E71B9E8()
{
  v1 = *(v0 + 208);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to invite players with error %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E71BB94()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 134218242;
    v10 = *(v5 + 16);

    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24E7620D4(v7, v6, &v13);
    _os_log_impl(&dword_24E5DD000, v2, v3, "Invited %ld players to challenge %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24E71BD84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 232);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to invite players with error %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E71BF38(uint64_t a1)
{
  v2 = type metadata accessor for Player(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E71BF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_24F920898();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = sub_24F9208B8();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v10 = swift_task_alloc();
  v4[28] = v10;
  *v10 = v4;
  v10[1] = sub_24E71C1E0;

  return MEMORY[0x28217F228](v4 + 7, v9, v9);
}

uint64_t sub_24E71C1E0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24E71C628;
  }

  else
  {
    v2 = sub_24E71C2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71C2F4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  sub_24F920FC8();

  sub_24F920FF8();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_24E71C43C;
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];

  return MEMORY[0x282165168](v4, v5, v6, v1, v2);
}

uint64_t sub_24E71C43C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 152);
  v2[31] = v0;

  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v2[32] = v9;
  v2[33] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  if (v0)
  {
    v10 = sub_24E71C9CC;
  }

  else
  {
    v10 = sub_24E71C800;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24E71C628()
{
  v1 = *(v0 + 232);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get invite code: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_24E71C800()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24F9208A8();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v5 + 88))(v4, v6);
  if (v7 == *MEMORY[0x277D0CFC8])
  {
    v8 = v0[32];
    v9 = v0[22];
    v10 = v0[18];
    (*(v0[17] + 96))(v10, v0[16]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA8);
    v12 = *(v11 + 48);
    sub_24E601704(v10 + *(v11 + 64), &unk_27F22EC30);
    v8(v10 + v12, v9);
    v8(v10, v9);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[18];
    v15 = v0[16];
    if (v7 == *MEMORY[0x277D0CFC0])
    {
      (*(v13 + 96))(v0[18], v15);
      v17 = *v14;
      v16 = v14[1];
      goto LABEL_7;
    }

    (*(v13 + 8))(v0[18], v15);
  }

  v17 = 0;
  v16 = 0;
LABEL_7:

  v18 = v0[1];

  return v18(v17, v16);
}

uint64_t sub_24E71C9CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 248);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get invite code: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_24E71CBAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24E627880(a1, a2);
  }

  return a1;
}

uint64_t sub_24E71CBC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24E71CC88@<X0>(int a1@<W0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v497 = a5;
  v524 = a4;
  v541 = a3;
  v535 = a2;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FC0);
  MEMORY[0x28223BE20](v494);
  v495 = &v399 - v8;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FC8);
  MEMORY[0x28223BE20](v533);
  v492 = &v399 - v9;
  v407 = type metadata accessor for ChallengeCardCapsuleSubtitle();
  v406 = *(v407 - 8);
  MEMORY[0x28223BE20](v407);
  v401 = &v399 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD0);
  MEMORY[0x28223BE20](v493);
  v408 = &v399 - v11;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD8);
  v437 = *(v435 - 8);
  MEMORY[0x28223BE20](v435);
  v416 = &v399 - v12;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE0);
  MEMORY[0x28223BE20](v470);
  v436 = &v399 - v13;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE8);
  MEMORY[0x28223BE20](v468);
  v469 = &v399 - v14;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF0);
  MEMORY[0x28223BE20](v517);
  v471 = &v399 - v15;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8);
  v456 = *(v462 - 8);
  MEMORY[0x28223BE20](v462);
  v453 = &v399 - v16;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A000);
  MEMORY[0x28223BE20](v467);
  v457 = &v399 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v18 - 8);
  v454 = &v399 - v19;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v485);
  v455 = (&v399 - v20);
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18);
  MEMORY[0x28223BE20](v483);
  v484 = &v399 - v21;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28);
  MEMORY[0x28223BE20](v507);
  v487 = &v399 - v22;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A008);
  MEMORY[0x28223BE20](v513);
  v515 = &v399 - v23;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30);
  MEMORY[0x28223BE20](v505);
  v506 = &v399 - v24;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38);
  MEMORY[0x28223BE20](v514);
  v508 = &v399 - v25;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A010);
  MEMORY[0x28223BE20](v529);
  v516 = &v399 - v26;
  v504 = type metadata accessor for CardContentBackgroundStyle(0);
  v27 = MEMORY[0x28223BE20](v504);
  v481 = &v399 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v482 = &v399 - v29;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v518);
  v496 = &v399 - v30;
  v415 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v415);
  v402 = &v399 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A018);
  MEMORY[0x28223BE20](v412);
  v414 = &v399 - v32;
  v413 = type metadata accessor for ChallengeCardTitleView();
  MEMORY[0x28223BE20](v413);
  v403 = (&v399 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v405 = &v399 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v409 = &v399 - v37;
  v452 = sub_24F91F648();
  v438 = *(v452 - 8);
  v38 = MEMORY[0x28223BE20](v452);
  v400 = &v399 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v434 = &v399 - v41;
  MEMORY[0x28223BE20](v40);
  v410 = &v399 - v42;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A020);
  v449 = *(v450 - 8);
  MEMORY[0x28223BE20](v450);
  v411 = &v399 - v43;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A028);
  MEMORY[0x28223BE20](v465);
  v451 = &v399 - v44;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A030);
  MEMORY[0x28223BE20](v486);
  v489 = &v399 - v45;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A038);
  MEMORY[0x28223BE20](v463);
  v464 = (&v399 - v46);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A040);
  MEMORY[0x28223BE20](v488);
  v466 = &v399 - v47;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A048);
  MEMORY[0x28223BE20](v498);
  v49 = &v399 - v48;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A050);
  MEMORY[0x28223BE20](v510);
  v511 = &v399 - v50;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A058);
  MEMORY[0x28223BE20](v523);
  v512 = &v399 - v51;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  MEMORY[0x28223BE20](v448);
  v433 = &v399 - v52;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060);
  MEMORY[0x28223BE20](v475);
  v477 = &v399 - v53;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068);
  MEMORY[0x28223BE20](v445);
  v446 = &v399 - v54;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070);
  MEMORY[0x28223BE20](v474);
  v447 = &v399 - v55;
  v431 = type metadata accessor for HeroCardGameHeadingView();
  v430 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v404 = &v399 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v444);
  v432 = &v399 - v57;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078);
  MEMORY[0x28223BE20](v509);
  v480 = &v399 - v58;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A080);
  MEMORY[0x28223BE20](v459);
  v460 = &v399 - v59;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A088);
  MEMORY[0x28223BE20](v479);
  v461 = &v399 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v61 - 8);
  v428 = &v399 - v62;
  v425 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v425);
  v426 = &v399 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v458);
  v429 = &v399 - v64;
  v442 = type metadata accessor for PrimaryIconView(0);
  MEMORY[0x28223BE20](v442);
  v427 = &v399 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A090);
  MEMORY[0x28223BE20](v472);
  v476 = &v399 - v66;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A098);
  MEMORY[0x28223BE20](v440);
  v441 = &v399 - v67;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0A0);
  MEMORY[0x28223BE20](v473);
  v443 = &v399 - v68;
  v423 = sub_24F924B38();
  v419 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v417 = &v399 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_24F921AF8();
  v421 = *(v422 - 8);
  MEMORY[0x28223BE20](v422);
  v420 = &v399 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = sub_24F9289E8();
  v490 = *(v491 - 8);
  MEMORY[0x28223BE20](v491);
  v418 = &v399 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10);
  MEMORY[0x28223BE20](v439);
  v424 = &v399 - v72;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0A8);
  MEMORY[0x28223BE20](v503);
  v478 = &v399 - v73;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0B0);
  MEMORY[0x28223BE20](v530);
  v532 = &v399 - v74;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0B8);
  MEMORY[0x28223BE20](v525);
  v527 = &v399 - v75;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0C0);
  MEMORY[0x28223BE20](v519);
  v521 = &v399 - v76;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0C8);
  MEMORY[0x28223BE20](v500);
  v501 = &v399 - v77;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0D0);
  MEMORY[0x28223BE20](v520);
  v502 = &v399 - v78;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0D8);
  MEMORY[0x28223BE20](v526);
  v522 = &v399 - v79;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0E0);
  MEMORY[0x28223BE20](v531);
  v528 = &v399 - v80;
  v499 = type metadata accessor for VisualView(0);
  MEMORY[0x28223BE20](v499);
  v82 = &v399 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0E8);
  v538 = *(v83 - 8);
  v539 = v83;
  MEMORY[0x28223BE20](v83);
  v536 = &v399 - v84;
  v85 = sub_24F9259C8();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v399 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v534 = type metadata accessor for CardLayoutMetrics(0);
  v89 = MEMORY[0x28223BE20](v534);
  v91 = &v399 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v89);
  v94 = (&v399 - v93);
  v95 = MEMORY[0x28223BE20](v92);
  v97 = &v399 - v96;
  MEMORY[0x28223BE20](v95);
  v540 = &v399 - v98;
  LODWORD(v537) = a1;
  v99 = a1;
  v100 = v49;
  if (v99 == 8)
  {
    v103 = v541;
    v101 = a6;
    if (v541 <= 2u)
    {
      if (v541)
      {
        v104 = v541;
        if (v541 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      goto LABEL_28;
    }

LABEL_17:
    if (v103 != 3)
    {
      _ZF = v103 == 4;
LABEL_19:
      v106 = v536;
      if (_ZF)
      {
        v107 = v541;
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v111 = qword_27F39E610;
      }

      else
      {
        v107 = v541;
        if (qword_27F211308 != -1)
        {
          swift_once();
        }

        v111 = qword_27F39E658;
      }

      v112 = __swift_project_value_buffer(v534, v111);
      sub_24E7263C0(v112, v97, type metadata accessor for CardLayoutMetrics);
      goto LABEL_36;
    }

    sub_24F4E9558(v524, v94);
    sub_24E726A7C(v94, v97, type metadata accessor for CardLayoutMetrics);
    v118 = v534;
    v97[v534[17]] = 0;
    v119 = v118[30];
    goto LABEL_35;
  }

  v101 = a6;
  if (v99 != 4)
  {
    v105 = v541;
    if ((sub_24E92D030(v537, v535, v541) & 1) == 0)
    {
      goto LABEL_14;
    }

    v103 = v105;
    if (v105 <= 2u)
    {
      if (v105)
      {
        v104 = v541;
        if (v105 == 1)
        {
LABEL_13:
          sub_24F4E9E44(v524, v94);
          sub_24E726A7C(v94, v97, type metadata accessor for CardLayoutMetrics);
          v106 = v536;
          v107 = v104;
LABEL_36:
          v117 = v101;
          goto LABEL_37;
        }

        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v120 = v534;
        v121 = __swift_project_value_buffer(v534, qword_27F39E628);
        sub_24E7263C0(v121, v97, type metadata accessor for CardLayoutMetrics);
        v119 = v120[30];
LABEL_35:
        *&v97[v119] = 0x403A000000000000;
        v106 = v536;
        v107 = v541;
        goto LABEL_36;
      }

LABEL_28:
      v399 = v101;
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v113 = v534;
      v114 = __swift_project_value_buffer(v534, qword_27F39E640);
      sub_24E7263C0(v114, v97, type metadata accessor for CardLayoutMetrics);
      sub_24F925898();
      sub_24F9258E8();

      (*(v86 + 104))(v88, *MEMORY[0x277CE0A10], v85);
      v115 = sub_24F9259F8();

      (*(v86 + 8))(v88, v85);
      v116 = v113[20];

      *&v97[v116] = v115;
      v117 = v399;
      v106 = v536;
      v107 = v541;
LABEL_37:
      v122 = v100;
      sub_24E726A7C(v97, v540, type metadata accessor for CardLayoutMetrics);
      if (v537 > 6u)
      {
        if (v537 <= 0xAu)
        {
          if (v537 != 7)
          {
            if (v537 == 8)
            {
              if (v107 < 4u || v107 == 4)
              {
                v299 = sub_24F92CE08();

                if ((v299 & 1) == 0)
                {
                  if (!v107)
                  {

LABEL_101:
                    v333 = v535 + *(type metadata accessor for ChallengeInviteCard() + 32);
                    v334 = (v333 + *(type metadata accessor for CommonCardAttributes(0) + 60));
                    v335 = v334[1];
                    if (v335)
                    {
                      *&v542 = *v334;
                      *(&v542 + 1) = v335;
                      sub_24E600AEC();

                      v336 = sub_24F925E18();
                      v338 = v337;
                      v340 = v339;
                      sub_24F925A08();
                      v341 = v117;
                      v342 = sub_24F925C98();
                      v344 = v343;
                      v346 = v345;
                      v348 = v347;

                      sub_24E600B40(v336, v338, v340 & 1);

                      *&v542 = v342;
                      *(&v542 + 1) = v344;
                      LOBYTE(v543) = v346 & 1;
                      *(&v543 + 1) = v348;
                      v349 = v416;
                      sub_24F9268B8();
                      v350 = v342;
                      v117 = v341;
                      v106 = v536;
                      sub_24E600B40(v350, v344, v346 & 1);

                      LODWORD(v336) = sub_24F9251C8();
                      *(v349 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)) = v336;
                      v351 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8) + 36);
                      v352 = *MEMORY[0x277CE13B8];
                      v353 = sub_24F927748();
                      (*(*(v353 - 8) + 104))(v349 + v351, v352, v353);
                      v354 = *(v540 + v534[28]);
                      KeyPath = swift_getKeyPath();
                      v356 = v349 + *(v462 + 36);
                      *v356 = KeyPath;
                      *(v356 + 8) = v354;
                      *(v356 + 16) = 0;
                      LOBYTE(v354) = sub_24F925818();
                      sub_24F923318();
                      v357 = v435;
                      v358 = v349 + *(v435 + 36);
                      *v358 = v354;
                      *(v358 + 8) = v359;
                      *(v358 + 16) = v360;
                      *(v358 + 24) = v361;
                      *(v358 + 32) = v362;
                      *(v358 + 40) = 0;
                      v363 = v436;
                      sub_24E6009C8(v349, v436, &qword_27F219FD8);
                      v364 = 0;
                    }

                    else
                    {
                      v364 = 1;
                      v363 = v436;
                      v357 = v435;
                    }

                    (*(v437 + 56))(v363, v364, 1, v357);
                    sub_24E60169C(v363, v469, &qword_27F219FE0);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725750(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
                    sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
                    v365 = v471;
                    sub_24F924E28();
                    sub_24E60169C(v365, v515, &qword_27F219FF0);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
                    sub_24E726054();
                    v366 = v516;
                    sub_24F924E28();
                    sub_24E601704(v365, &qword_27F219FF0);
                    sub_24E60169C(v366, v527, &qword_27F21A010);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725858();
                    sub_24E725EE8();
                    v367 = v528;
                    sub_24F924E28();
                    sub_24E601704(v366, &qword_27F21A010);
                    sub_24E60169C(v367, v532, &qword_27F21A0E0);
                    swift_storeEnumTagMultiPayload();
                    sub_24E7257CC();
                    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
                    sub_24F924E28();
                    sub_24E601704(v367, &qword_27F21A0E0);
                    v230 = v363;
                    v231 = &qword_27F219FE0;
                    goto LABEL_119;
                  }

                  v332 = sub_24F92CE08();

                  if (v332)
                  {
                    goto LABEL_101;
                  }

                  if (v107 == 1)
                  {

LABEL_116:
                    v382 = type metadata accessor for ChallengeInviteCard();
                    v383 = v405;
                    sub_24E60169C(v535 + *(v382 + 52), v405, &unk_27F22EC30);
                    v384 = v438;
                    v385 = v452;
                    if ((*(v438 + 48))(v383, 1, v452) == 1)
                    {
                      sub_24E601704(v383, &unk_27F22EC30);
                      v386 = 1;
                      v387 = v495;
                      v388 = v408;
                      v389 = v407;
                    }

                    else
                    {
                      v392 = v400;
                      (*(v384 + 32))(v400, v383, v385);
                      v393 = *(v384 + 16);
                      v394 = v434;
                      v393(v434, v392, v385);
                      v395 = v401;
                      v393(v401, v394, v385);
                      v396 = sub_24F268DBC();
                      v397 = *(v384 + 8);
                      v397(v394, v385);
                      v397(v392, v385);
                      v389 = v407;
                      *(v395 + *(v407 + 20)) = v396;
                      v388 = v408;
                      sub_24E726A7C(v395, v408, type metadata accessor for ChallengeCardCapsuleSubtitle);
                      v386 = 0;
                      v387 = v495;
                    }

                    (*(v406 + 56))(v388, v386, 1, v389);
                    sub_24E60169C(v388, v387, &qword_27F219FD0);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725654();
                    sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                    v398 = v492;
                    sub_24F924E28();
                    sub_24E60169C(v398, v532, &qword_27F219FC8);
                    swift_storeEnumTagMultiPayload();
                    sub_24E7257CC();
                    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
                    sub_24F924E28();
                    sub_24E601704(v398, &qword_27F219FC8);
                    v230 = v388;
                    v231 = &qword_27F219FD0;
                    goto LABEL_119;
                  }

                  v381 = sub_24F92CE08();

                  if (v381)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_118;
                }
              }

              else
              {
              }

              v300 = v535 + *(type metadata accessor for ChallengeInviteCard() + 32);
              v301 = (v300 + *(type metadata accessor for CommonCardAttributes(0) + 60));
              v302 = v301[1];
              if (v302)
              {
                *&v542 = *v301;
                *(&v542 + 1) = v302;
                sub_24E600AEC();

                v303 = sub_24F925E18();
                v305 = v304;
                v307 = v306;
                sub_24F925A18();
                v308 = v117;
                v309 = sub_24F925C98();
                v311 = v310;
                v313 = v312;
                v315 = v314;

                sub_24E600B40(v303, v305, v307 & 1);

                *&v542 = v309;
                *(&v542 + 1) = v311;
                LOBYTE(v543) = v313 & 1;
                *(&v543 + 1) = v315;
                v316 = v453;
                sub_24F9268B8();
                v317 = v309;
                v117 = v308;
                v106 = v536;
                sub_24E600B40(v317, v311, v313 & 1);

                LODWORD(v303) = sub_24F9251C8();
                *(v316 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)) = v303;
                v318 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8) + 36);
                v319 = *MEMORY[0x277CE13B8];
                v320 = sub_24F927748();
                (*(*(v320 - 8) + 104))(v316 + v318, v319, v320);
                v321 = *(v540 + v534[28]);
                v322 = swift_getKeyPath();
                v323 = v462;
                v324 = v316 + *(v462 + 36);
                *v324 = v322;
                *(v324 + 8) = v321;
                *(v324 + 16) = 0;
                v325 = v457;
                sub_24E6009C8(v316, v457, &qword_27F219FF8);
                v326 = 0;
              }

              else
              {
                v326 = 1;
                v323 = v462;
                v325 = v457;
              }

              (*(v456 + 56))(v325, v326, 1, v323);
              sub_24E60169C(v325, v469, &qword_27F21A000);
              swift_storeEnumTagMultiPayload();
              sub_24E725750(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
              sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
              v327 = v471;
              sub_24F924E28();
              sub_24E60169C(v327, v515, &qword_27F219FF0);
              swift_storeEnumTagMultiPayload();
              sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24E726054();
              v328 = v516;
              sub_24F924E28();
              sub_24E601704(v327, &qword_27F219FF0);
              sub_24E60169C(v328, v527, &qword_27F21A010);
              swift_storeEnumTagMultiPayload();
              sub_24E725858();
              sub_24E725EE8();
              v329 = v528;
              sub_24F924E28();
              sub_24E601704(v328, &qword_27F21A010);
              sub_24E60169C(v329, v532, &qword_27F21A0E0);
              swift_storeEnumTagMultiPayload();
              sub_24E7257CC();
              sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
              sub_24F924E28();
              sub_24E601704(v329, &qword_27F21A0E0);
              v230 = v325;
              v231 = &qword_27F21A000;
              goto LABEL_119;
            }

LABEL_118:
            v399 = v117;
            v390 = v496;
            sub_24E9239C0(v537, v535, v107, v524, v497, v496);
            sub_24E60169C(v390, v495, &qword_27F214A20);
            swift_storeEnumTagMultiPayload();
            sub_24E725654();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            v391 = v492;
            sub_24F924E28();
            sub_24E60169C(v391, v532, &qword_27F219FC8);
            swift_storeEnumTagMultiPayload();
            sub_24E7257CC();
            sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
            sub_24F924E28();
            sub_24E601704(v391, &qword_27F219FC8);
            v230 = v390;
            v117 = v399;
            v231 = &qword_27F214A20;
            goto LABEL_119;
          }

          v399 = v117;
          if (v107 > 2u)
          {
            v156 = v535 + *(type metadata accessor for ChallengeInviteCard() + 32);
            v157 = (v156 + *(type metadata accessor for CommonCardAttributes(0) + 56));
            v158 = v157[1];
            if (v158)
            {
              v159 = *v157;
              v160 = HIBYTE(v158) & 0xF;
              if ((v158 & 0x2000000000000000) == 0)
              {
                v160 = v159 & 0xFFFFFFFFFFFFLL;
              }

              if (v160)
              {
                v161 = (v540 + v534[22]);
                v162 = v161[3];
                v537 = v161[4];
                __swift_project_boxed_opaque_existential_1(v161, v162);
                *&v542 = v159;
                *(&v542 + 1) = v158;
                sub_24E600AEC();

                v163 = sub_24F925E18();
                v165 = v164;
                v167 = v166;
                v168 = sub_24F925C98();
                v541 = v122;
                v169 = v168;
                v171 = v170;
                v173 = v172;
                sub_24E600B40(v163, v165, v167 & 1);

                v174 = sub_24F925C58();
                v176 = v175;
                LOBYTE(v165) = v177;
                v158 = v178;
                v179 = v169;
                v122 = v541;
                sub_24E600B40(v179, v171, v173 & 1);

                v180 = v165 & 1;
                sub_24E5FD138(v174, v176, v165 & 1);
              }

              else
              {
                v174 = 0;
                v176 = 0;
                v180 = 0;
                v158 = 0;
              }
            }

            else
            {
              v174 = 0;
              v176 = 0;
              v180 = 0;
            }

            v330 = v464;
            *v464 = v174;
            v330[1] = v176;
            v330[2] = v180;
            v330[3] = v158;
            swift_storeEnumTagMultiPayload();
            sub_24E65D2B4(v174, v176, v180, v158);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
            sub_24E6C08EC();
            sub_24E725750(&qword_27F21A168, &qword_27F21A028, &unk_24F94D9A8, sub_24E725DFC);
            v331 = v466;
            sub_24F924E28();
            sub_24E60169C(v331, v489, &qword_27F21A040);
            swift_storeEnumTagMultiPayload();
            sub_24E725D44();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E65D2F8(v174, v176, v180, v158);
            sub_24E65D2F8(v174, v176, v180, v158);
            sub_24E601704(v331, &qword_27F21A040);
          }

          else
          {
            v133 = v535;
            if (v107 == 1)
            {
              v134 = v496;
              sub_24E9239C0(7, v535, 1, v524, v497, v496);
              sub_24E60169C(v134, v489, &qword_27F214A20);
              swift_storeEnumTagMultiPayload();
              sub_24E725D44();
              sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v134, &qword_27F214A20);
            }

            else
            {
              v264 = type metadata accessor for ChallengeInviteCard();
              v265 = v133 + *(v264 + 32);
              v266 = (v265 + *(type metadata accessor for CommonCardAttributes(0) + 56));
              v267 = v266[1];
              if (!v267)
              {
                goto LABEL_85;
              }

              v268 = *v266;
              v269 = HIBYTE(v267) & 0xF;
              if ((v267 & 0x2000000000000000) == 0)
              {
                v269 = v268 & 0xFFFFFFFFFFFFLL;
              }

              if (v269)
              {
                v270 = v535 + *(v264 + 52);
                v271 = v409;
                sub_24E60169C(v270, v409, &unk_27F22EC30);
                v272 = v438;
                if ((*(v438 + 48))(v271, 1, v452) == 1)
                {
                  sub_24E601704(v271, &unk_27F22EC30);
                  v273 = v402;
                  sub_24E7263C0(v265, v402, type metadata accessor for CommonCardAttributes);
                  v274 = v415;
                  sub_24E7263C0(v540, v273 + *(v415 + 20), type metadata accessor for CardLayoutMetrics);
                  *(v273 + *(v274 + 24)) = v107;
                  sub_24E7263C0(v273, v414, type metadata accessor for DefaultCardTitleView);
                  swift_storeEnumTagMultiPayload();
                  sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
                  sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
                  v275 = v411;
                  sub_24F924E28();
                  sub_24E726428(v273, type metadata accessor for DefaultCardTitleView);
                }

                else
                {
                  v368 = v410;
                  v369 = v452;
                  (*(v272 + 32))(v410, v271);
                  v541 = *(v272 + 16);
                  v370 = v368;
                  v371 = v369;
                  v541(v434, v370, v369);
                  v537 = type metadata accessor for CardLayoutMetrics;
                  sub_24E7263C0(v540, v91, type metadata accessor for CardLayoutMetrics);
                  v372 = v403;
                  *v403 = v268;
                  *(v372 + 8) = v267;
                  v373 = v413;
                  v374 = v434;
                  v541((v372 + *(v413 + 20)), v434, v371);
                  sub_24E7263C0(v91, v372 + *(v373 + 24), v537);

                  v375 = sub_24F268DBC();
                  sub_24E726428(v91, type metadata accessor for CardLayoutMetrics);
                  v376 = *(v438 + 8);
                  v376(v374, v371);
                  *(v372 + *(v373 + 28)) = v375;
                  sub_24E7263C0(v372, v414, type metadata accessor for ChallengeCardTitleView);
                  swift_storeEnumTagMultiPayload();
                  sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
                  sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
                  v275 = v411;
                  sub_24F924E28();
                  sub_24E726428(v372, type metadata accessor for ChallengeCardTitleView);
                  v376(v410, v452);
                }

                v277 = v451;
                sub_24E6009C8(v275, v451, &qword_27F21A020);
                v276 = 0;
              }

              else
              {
LABEL_85:
                v276 = 1;
                v277 = v451;
              }

              (*(v449 + 56))(v277, v276, 1, v450);
              sub_24E60169C(v277, v464, &qword_27F21A028);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
              sub_24E6C08EC();
              sub_24E725750(&qword_27F21A168, &qword_27F21A028, &unk_24F94D9A8, sub_24E725DFC);
              v377 = v466;
              sub_24F924E28();
              sub_24E60169C(v377, v489, &qword_27F21A040);
              swift_storeEnumTagMultiPayload();
              sub_24E725D44();
              sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v377, &qword_27F21A040);
              sub_24E601704(v277, &qword_27F21A028);
            }
          }

          v187 = &qword_27F21A048;
          sub_24E60169C(v122, v511, &qword_27F21A048);
          swift_storeEnumTagMultiPayload();
          sub_24E725C2C();
          sub_24E726308(&qword_27F21A158, &qword_27F21A048, &unk_24F94D9C8, sub_24E725D44);
          v126 = v122;
          v378 = v512;
          sub_24F924E28();
          sub_24E60169C(v378, v521, &qword_27F21A058);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v379 = v522;
          sub_24F924E28();
          sub_24E601704(v378, &qword_27F21A058);
          sub_24E60169C(v379, v527, &qword_27F21A0D8);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v190 = v528;
          sub_24F924E28();
          sub_24E601704(v379, &qword_27F21A0D8);
          sub_24E60169C(v190, v532, &qword_27F21A0E0);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
          v106 = v536;
          goto LABEL_112;
        }

        if (v537 != 11)
        {
          if (v537 != 12)
          {
            goto LABEL_118;
          }

          v399 = v117;
          v124 = v107;
          if (v107 > 1u)
          {
            v181 = sub_24F926C98();
            v182 = type metadata accessor for ChallengeInviteCard();
            v183 = v490;
            v184 = v454;
            v185 = v491;
            (*(v490 + 16))(v454, v535 + *(v182 + 36), v491);
            (*(v183 + 56))(v184, 0, 1, v185);
            v186 = v455;
            sub_24F6C4E24(v184, v124 != 5, v181, v455);

            sub_24E601704(v184, &qword_27F213FB0);
            sub_24E60169C(v186, v484, &qword_27F214A10);
            swift_storeEnumTagMultiPayload();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24E63D150();
            v126 = v487;
            sub_24F924E28();
            sub_24E601704(v186, &qword_27F214A10);
          }

          else
          {
            v125 = v496;
            sub_24E9239C0(0xC, v535, v107, v524, v497, v496);
            sub_24E60169C(v125, v484, &qword_27F214A20);
            swift_storeEnumTagMultiPayload();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24E63D150();
            v126 = v487;
            sub_24F924E28();
            sub_24E601704(v125, &qword_27F214A20);
          }

          v187 = &qword_27F214A28;
          sub_24E60169C(v126, v506, &qword_27F214A28);
          swift_storeEnumTagMultiPayload();
          sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24E63C1D8();
          v188 = v508;
          sub_24F924E28();
          sub_24E60169C(v188, v515, &qword_27F214A38);
          swift_storeEnumTagMultiPayload();
          sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
          sub_24E726054();
          v189 = v516;
          sub_24F924E28();
          sub_24E601704(v188, &qword_27F214A38);
          sub_24E60169C(v189, v527, &qword_27F21A010);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v190 = v528;
          sub_24F924E28();
          sub_24E601704(v189, &qword_27F21A010);
          sub_24E60169C(v190, v532, &qword_27F21A0E0);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
LABEL_112:
          sub_24F924E28();
          sub_24E601704(v190, &qword_27F21A0E0);
          sub_24E601704(v126, v187);
          v117 = v399;
          goto LABEL_120;
        }

        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v136 = v481;
        (*(*(v135 - 8) + 56))(v481, dword_24F94DDF4[v107], 5, v135);
        v137 = v482;
        sub_24E726A7C(v136, v482, type metadata accessor for CardContentBackgroundStyle);
        sub_24E7263C0(v137, v506, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63C1D8();
        v138 = v508;
        sub_24F924E28();
        sub_24E60169C(v138, v515, &qword_27F214A38);
        swift_storeEnumTagMultiPayload();
        sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
        sub_24E726054();
        v139 = v516;
        sub_24F924E28();
        sub_24E601704(v138, &qword_27F214A38);
        sub_24E60169C(v139, v527, &qword_27F21A010);
        swift_storeEnumTagMultiPayload();
        sub_24E725858();
        sub_24E725EE8();
        v140 = v528;
        sub_24F924E28();
        sub_24E601704(v139, &qword_27F21A010);
        sub_24E60169C(v140, v532, &qword_27F21A0E0);
        swift_storeEnumTagMultiPayload();
        sub_24E7257CC();
        sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
        sub_24F924E28();
        sub_24E601704(v140, &qword_27F21A0E0);
        sub_24E726428(v137, type metadata accessor for CardContentBackgroundStyle);
LABEL_120:
        sub_24E6009C8(v106, v117, &qword_27F21A0E8);
        (*(v538 + 56))(v117, 0, 1, v539);
        return sub_24E726428(v540, type metadata accessor for CardLayoutMetrics);
      }

      if (v537 == 2)
      {
        v127 = v499;
        sub_24E7263C0(v535, &v82[*(v499 + 20)], type metadata accessor for ChallengeInviteCard);
        *v82 = v107;
        v128 = &v82[*(v127 + 24)];
        type metadata accessor for CardSafeArea(0);
        sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea);
        *v128 = sub_24F923598();
        v128[8] = v129 & 1;
        sub_24E7263C0(v82, v501, type metadata accessor for VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView);
        sub_24E7259A0();
        v130 = v502;
        sub_24F924E28();
        sub_24E60169C(v130, v521, &qword_27F21A0D0);
        swift_storeEnumTagMultiPayload();
        sub_24E7258E4();
        sub_24E725B74();
        v131 = v522;
        sub_24F924E28();
        sub_24E601704(v130, &qword_27F21A0D0);
        sub_24E60169C(v131, v527, &qword_27F21A0D8);
        swift_storeEnumTagMultiPayload();
        sub_24E725858();
        sub_24E725EE8();
        v132 = v528;
        sub_24F924E28();
        sub_24E601704(v131, &qword_27F21A0D8);
        sub_24E60169C(v132, v532, &qword_27F21A0E0);
        swift_storeEnumTagMultiPayload();
        sub_24E7257CC();
        sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
        sub_24F924E28();
        sub_24E601704(v132, &qword_27F21A0E0);
        sub_24E726428(v82, type metadata accessor for VisualView);
        goto LABEL_120;
      }

      if (v537 != 3)
      {
        if (v537 == 4)
        {
          if (v107 >= 4u)
          {
            if (v107 == 4)
            {
              v232 = (v535 + *(type metadata accessor for ChallengeInviteCard() + 40));
              v233 = v232[1];
              *&v542 = *v232;
              *(&v542 + 1) = v233;
              sub_24E600AEC();

              v234 = sub_24F925E18();
              v236 = v235;
              v238 = v237;
              v239 = v534;
              v240 = sub_24F925C98();
              v399 = v117;
              v242 = v241;
              v244 = v243;
              sub_24E600B40(v234, v236, v238 & 1);

              LODWORD(v542) = sub_24F9251C8();
              v245 = sub_24F925C58();
              v247 = v246;
              v249 = v248;
              v251 = v250;
              sub_24E600B40(v240, v242, v244 & 1);

              v252 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
              v253 = *MEMORY[0x277CE13B8];
              v254 = sub_24F927748();
              v255 = v433;
              v256 = &v433[v252];
              v117 = v399;
              (*(*(v254 - 8) + 104))(v256, v253, v254);
              *v255 = v245;
              *(v255 + 8) = v247;
              *(v255 + 16) = v249 & 1;
              *(v255 + 24) = v251;
              v257 = *(v540 + v239[19]);
              v258 = swift_getKeyPath();
              v259 = v255 + *(v448 + 36);
              *v259 = v258;
              *(v259 + 8) = v257;
              *(v259 + 16) = 0;
              sub_24E60169C(v255, v446, &qword_27F214B98);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();
              v260 = v447;
              sub_24F924E28();
              sub_24E60169C(v260, v477, &qword_27F21A070);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v123 = v480;
              sub_24F924E28();
              sub_24E601704(v260, &qword_27F21A070);
              sub_24E601704(v255, &qword_27F214B98);
            }

            else
            {
              v278 = type metadata accessor for ChallengeInviteCard();
              v279 = v535;
              v280 = v535 + *(v278 + 32);
              v281 = (v280 + *(type metadata accessor for CommonCardAttributes(0) + 44));
              v282 = v281[1];
              if (v282)
              {
                v283 = *v281;
                v284 = v279 + *(v278 + 36);
                v285 = v404;
                (*(v490 + 16))(v404, v284, v491);
                v286 = v431;
                v287 = &v285[*(v431 + 20)];
                *v287 = v283;
                *(v287 + 1) = v282;
                v288 = v285;
                v289 = v432;
                sub_24E726A7C(v288, v432, type metadata accessor for HeroCardGameHeadingView);
                v290 = 0;
              }

              else
              {
                v290 = 1;
                v289 = v432;
                v286 = v431;
              }

              (*(v430 + 56))(v289, v290, 1, v286);
              sub_24E60169C(v289, v446, &qword_27F219E50);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();

              v380 = v447;
              sub_24F924E28();
              sub_24E60169C(v380, v477, &qword_27F21A070);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v123 = v480;
              sub_24F924E28();
              sub_24E601704(v380, &qword_27F21A070);
              sub_24E601704(v289, &qword_27F219E50);
            }
          }

          else
          {
            swift_storeEnumTagMultiPayload();
            sub_24E725CB8();
            v123 = v480;
            sub_24F924E28();
          }

          sub_24E60169C(v123, v511, &qword_27F21A078);
          swift_storeEnumTagMultiPayload();
          sub_24E725C2C();
          sub_24E726308(&qword_27F21A158, &qword_27F21A048, &unk_24F94D9C8, sub_24E725D44);
          v261 = v512;
          sub_24F924E28();
          sub_24E60169C(v261, v521, &qword_27F21A058);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v262 = v522;
          sub_24F924E28();
          sub_24E601704(v261, &qword_27F21A058);
          sub_24E60169C(v262, v527, &qword_27F21A0D8);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v263 = v528;
          sub_24F924E28();
          sub_24E601704(v262, &qword_27F21A0D8);
          sub_24E60169C(v263, v532, &qword_27F21A0E0);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
          v106 = v536;
          sub_24F924E28();
          sub_24E601704(v263, &qword_27F21A0E0);
          v230 = v123;
          v231 = &qword_27F21A078;
          goto LABEL_119;
        }

        goto LABEL_118;
      }

      if (v107 > 2u)
      {
        v191 = v535;
        if (v107 == 3)
        {
          v291 = type metadata accessor for ChallengeInviteCard();
          v292 = v427;
          (*(v490 + 16))(v427, v191 + *(v291 + 36), v491);
          v293 = v540 + v534[32];
          v294 = *(v293 + 16);
          v295 = *(v293 + 24);
          v296 = v442;
          *(v292 + *(v442 + 20)) = *(v540 + v534[30]);
          v297 = v292 + *(v296 + 24);
          *v297 = *v293;
          *(v297 + 16) = v294;
          *(v297 + 24) = v295;
          *(v292 + *(v296 + 28)) = 3;
          sub_24E7263C0(v292, v441, type metadata accessor for PrimaryIconView);
          swift_storeEnumTagMultiPayload();
          sub_24E63CB8C();
          sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView);

          v298 = v443;
          sub_24F924E28();
          sub_24E60169C(v298, v476, &qword_27F21A0A0);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v154 = v478;
          sub_24F924E28();
          sub_24E601704(v298, &qword_27F21A0A0);
          sub_24E726428(v292, type metadata accessor for PrimaryIconView);
          goto LABEL_74;
        }

        if (v107 == 4)
        {
          type metadata accessor for ChallengeInviteCard();
          v192 = v418;
          sub_24F9289C8();
          v193 = *MEMORY[0x277CE0118];
          v194 = v419;
          v541 = *(v419 + 104);
          v195 = v417;
          v196 = v423;
          v541(v417, v193, v423);
          v197 = v420;
          sub_24F9219A8();
          (*(v194 + 8))(v195, v196);
          sub_24E725708(&qword_27F214C28, MEMORY[0x277D21C48]);
          sub_24E725708(&qword_27F214C30, MEMORY[0x277D7EBE8]);
          v198 = v424;
          v199 = v491;
          v200 = v422;
          sub_24F925ED8();
          (*(v421 + 8))(v197, v200);
          (*(v490 + 8))(v192, v199);
          v201 = sub_24F927618();
          v203 = v202;
          v204 = v117;
          v205 = (v198 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
          v206 = sub_24F924258();
          v541(&v205[*(v206 + 20)], v193, v196);
          __asm { FMOV            V0.2D, #8.0 }

          *v205 = _Q0;
          v211 = v534;
          v212 = v540;
          v213 = (v540 + v534[32]);
          v214 = *v213;
          v215 = v213[1];
          v216 = v213[2];
          v217 = v213[3];
          v218 = &v205[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36)];
          *v218 = v217;
          *(v218 + 1) = v216;
          *(v218 + 2) = v214;
          *(v218 + 3) = v215;
          v219 = &v205[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36)];
          v117 = v204;
          *v219 = v201;
          v219[1] = v203;
          v220 = *(v212 + v211[31]);

          sub_24F9278A8();
          v221 = (v198 + *(v439 + 36));
          *v221 = v220;
          v221[1] = v222;
          v221[2] = v223;
          sub_24E60169C(v198, v441, &qword_27F214C10);
          swift_storeEnumTagMultiPayload();
          sub_24E63CB8C();
          sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView);
          v224 = v443;
          sub_24F924E28();
          sub_24E60169C(v224, v476, &qword_27F21A0A0);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v154 = v478;
          sub_24F924E28();
          sub_24E601704(v224, &qword_27F21A0A0);
          sub_24E601704(v198, &qword_27F214C10);
LABEL_74:
          sub_24E60169C(v154, v501, &qword_27F21A0A8);
          swift_storeEnumTagMultiPayload();
          sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView);
          sub_24E7259A0();
          v226 = v502;
          sub_24F924E28();
          sub_24E60169C(v226, v521, &qword_27F21A0D0);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v227 = v154;
          v228 = v522;
          sub_24F924E28();
          sub_24E601704(v226, &qword_27F21A0D0);
          sub_24E60169C(v228, v527, &qword_27F21A0D8);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v229 = v528;
          sub_24F924E28();
          sub_24E601704(v228, &qword_27F21A0D8);
          sub_24E60169C(v229, v532, &qword_27F21A0E0);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
          v106 = v536;
          sub_24F924E28();
          sub_24E601704(v229, &qword_27F21A0E0);
          v230 = v227;
          v231 = &qword_27F21A0A8;
LABEL_119:
          sub_24E601704(v230, v231);
          goto LABEL_120;
        }
      }

      else
      {
        v141 = v535;
        if (v107 - 1 >= 2)
        {
          v142 = type metadata accessor for ChallengeInviteCard();
          v143 = v141;
          v144 = *(v142 + 44);
          v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
          v146 = v428;
          (*(v490 + 16))(v428, v143 + *(v142 + 36), v491);
          *(v146 + v145) = 0xC024000000000000;
          v147 = type metadata accessor for PlayerAvatar.Overlay(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v147 - 8) + 56))(v146, 0, 1, v147);
          v148 = v426;
          sub_24E7263C0(v143 + v144, v426, type metadata accessor for PlayerAvatar);
          sub_24E717FD0(v146, v148 + *(v425 + 20));
          LOBYTE(v542) = 7;
          v149 = v429;
          sub_24F8319B8(v148, &v542, v429);
          sub_24F927618();
          sub_24F9238C8();
          v150 = (v149 + *(v458 + 36));
          v151 = v543;
          *v150 = v542;
          v150[1] = v151;
          v150[2] = v544;
          v152 = &qword_27F2233D0;
          sub_24E60169C(v149, v460, &qword_27F2233D0);
          swift_storeEnumTagMultiPayload();
          sub_24E680290();
          v153 = v461;
          sub_24F924E28();
          sub_24E60169C(v153, v476, &qword_27F21A088);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v154 = v478;
          sub_24F924E28();
          sub_24E601704(v153, &qword_27F21A088);
          v155 = v149;
LABEL_73:
          sub_24E601704(v155, v152);
          goto LABEL_74;
        }
      }

      swift_storeEnumTagMultiPayload();
      sub_24E680290();
      v225 = v461;
      sub_24F924E28();
      v152 = &qword_27F21A088;
      sub_24E60169C(v225, v476, &qword_27F21A088);
      swift_storeEnumTagMultiPayload();
      sub_24E725A2C();
      sub_24E725AE8();
      v154 = v478;
      sub_24F924E28();
      v155 = v225;
      goto LABEL_73;
    }

    goto LABEL_17;
  }

  _ZF = v541 == 4;
  if (v541 >= 4u)
  {
    goto LABEL_19;
  }

LABEL_14:
  v108 = v539;
  v109 = *(v538 + 56);

  return v109(v101, 1, 1, v108);
}

uint64_t sub_24E722834@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24F9259C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardLayoutMetrics(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          v24 = v11;
          swift_once();
          v11 = v24;
        }

        v14 = qword_27F39E610;
      }

      else
      {
        if (qword_27F211308 != -1)
        {
          v26 = v11;
          swift_once();
          v11 = v26;
        }

        v14 = qword_27F39E658;
      }

      v22 = __swift_project_value_buffer(v11, v14);
      sub_24E7263C0(v22, v13, type metadata accessor for CardLayoutMetrics);
      return sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    }

    v20 = v11;
    sub_24F4E9558(a2, v13);
    result = sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    *(a3 + *(v20 + 68)) = 0;
LABEL_17:
    *(a3 + *(v20 + 120)) = 0x403A000000000000;
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_24F4E9E44(a2, v13);
      return sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    }

    if (qword_27F2112F8 != -1)
    {
      v25 = v11;
      swift_once();
      v11 = v25;
    }

    v20 = v11;
    v21 = __swift_project_value_buffer(v11, qword_27F39E628);
    sub_24E7263C0(v21, v13, type metadata accessor for CardLayoutMetrics);
    result = sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    goto LABEL_17;
  }

  if (qword_27F211300 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  v15 = v11;
  v16 = __swift_project_value_buffer(v11, qword_27F39E640);
  sub_24E7263C0(v16, v13, type metadata accessor for CardLayoutMetrics);
  sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
  sub_24F925898();
  sub_24F9258E8();

  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  v17 = sub_24F9259F8();

  (*(v7 + 8))(v9, v6);
  v18 = *(v15 + 80);

  *(a3 + v18) = v17;
  return result;
}

uint64_t sub_24E722C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A290);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CardSmallGameIcon();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrimaryIconView(0);
  if (*(a1 + *(v8 + 28)) == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);
    return sub_24F924E28();
  }

  else
  {
    v10 = v8;
    v11 = sub_24F9289E8();
    (*(*(v11 - 8) + 16))(v7, a1, v11);
    v12 = *(a1 + *(v10 + 20));
    v13 = a1 + *(v10 + 24);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    *&v7[*(v5 + 20)] = v12;
    v16 = &v7[*(v5 + 24)];
    *v16 = *v13;
    *(v16 + 2) = v14;
    *(v16 + 3) = v15;
    sub_24E7263C0(v7, v4, type metadata accessor for CardSmallGameIcon);
    swift_storeEnumTagMultiPayload();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);

    sub_24F924E28();
    return sub_24E726428(v7, type metadata accessor for CardSmallGameIcon);
  }
}

uint64_t sub_24E722EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9289E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for PrimaryIconView(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + *(v5 + 20));
  v13 = *(a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v10 = type metadata accessor for CardSmallGameIcon();
  *(a2 + *(v10 + 20)) = v7;
  v11 = a2 + *(v10 + 24);
  *v11 = v13;
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
}

uint64_t sub_24E722F80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A278);
  type metadata accessor for CardSmallGameIcon();
  sub_24E6A4C1C();
  sub_24E726DB0();
  sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);
  return sub_24F927568();
}

uint64_t sub_24E723078@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_24F924848();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A208);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A210);
  MEMORY[0x28223BE20](v67);
  v69 = &v62 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A218);
  MEMORY[0x28223BE20](v66);
  v68 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for PlayerAvatar(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  v23 = *v2;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v62 = v20;
    }

    else
    {
      if (v23 == 4)
      {
        goto LABEL_15;
      }

      v62 = v20;
    }
  }

  else
  {
    v62 = v20;
  }

  v24 = sub_24F92CE08();

  if (v24)
  {
    goto LABEL_11;
  }

  if (v23 >= 4)
  {
    goto LABEL_15;
  }

  v25 = sub_24F92CE08();

  if (v25)
  {
    goto LABEL_11;
  }

  if (v23 > 2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v61 = sub_24F92CE08();

  if ((v61 & 1) == 0)
  {
    if (v23 <= 1 && v23)
    {

      goto LABEL_12;
    }

    sub_24F92CE08();
  }

LABEL_11:
  if ((v23 - 3) < 3)
  {
LABEL_16:
    v26 = type metadata accessor for VisualView(0);
    v32 = &v2[*(v26 + 20)];
    v33 = type metadata accessor for ChallengeInviteCard();
    sub_24E7263C0(&v32[*(v33 + 44)], v19, type metadata accessor for PlayerAvatar);
    goto LABEL_21;
  }

LABEL_12:
  v26 = type metadata accessor for VisualView(0);
  v27 = &v2[*(v26 + 20)];
  v28 = type metadata accessor for ChallengeInviteCard();
  sub_24E7263C0(&v27[*(v28 + 44)], v16, type metadata accessor for PlayerAvatar);
  v29 = *(v28 + 36);
  v30 = sub_24F9289E8();
  (*(*(v30 - 8) + 16))(v12, &v27[v29], v30);
  if (v23 == 1)
  {

    v31 = 10.0;
  }

  else
  {
    v34 = sub_24F92CE08();

    if (v34)
    {
      v31 = 10.0;
    }

    else
    {
      v31 = -10.0;
    }
  }

  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48)] = v31;
  v35 = type metadata accessor for PlayerAvatar.Overlay(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
  sub_24E726A7C(v16, v19, type metadata accessor for PlayerAvatar);
  sub_24E717FD0(v12, &v19[*(v62 + 20)]);
LABEL_21:
  sub_24E726A7C(v19, v22, type metadata accessor for PlayerAvatar);
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A220);
  sub_24E723B94(v22, v2, &v7[*(v36 + 44)]);
  type metadata accessor for VisualView(0);
  v37 = &v2[*(v26 + 24)];
  v38 = *v37;
  v39 = v37[8];

  if ((v39 & 1) == 0)
  {
    sub_24F92BDC8();
    v40 = sub_24F9257A8();
    sub_24F921FD8();

    v41 = v63;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v64 + 8))(v41, v65);
    v38 = v71;
  }

  swift_getKeyPath();
  v71 = v38;
  sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v42 = *(v38 + 16);

  if (v23 == 4)
  {

    sub_24F925868();
  }

  else
  {
    v43 = sub_24F92CE08();

    if (v43)
    {
      sub_24F925868();
    }

    else
    {
      sub_24F925848();
    }
  }

  v44 = sub_24EA91914(v42);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = sub_24F925808();
  v52 = v7;
  v53 = v69;
  sub_24E6009C8(v52, v69, &qword_27F21A208);
  v54 = v53 + *(v67 + 36);
  *v54 = v51;
  *(v54 + 8) = v44;
  *(v54 + 16) = v46;
  *(v54 + 24) = v48;
  *(v54 + 32) = v50;
  *(v54 + 40) = 0;
  v55 = sub_24F927618();
  v57 = v56;
  v58 = v68;
  v59 = &v68[*(v66 + 36)];
  sub_24E724488(v2, v59);
  *(v59 + 104) = v55;
  *(v59 + 112) = v57;
  sub_24E6009C8(v53, v58, &qword_27F21A210);
  sub_24E6009C8(v58, v70, &qword_27F21A218);
  return sub_24E726428(v22, type metadata accessor for PlayerAvatar);
}

uint64_t sub_24E723B94@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v83 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A228);
  MEMORY[0x28223BE20](v75);
  v77 = (&v69 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A230);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A238);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - v10;
  v11 = type metadata accessor for PlayerAvatar(0);
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v15 = MEMORY[0x28223BE20](v14);
  v72 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A240);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v71 = &v69 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v73 = &v69 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  sub_24E7263C0(a1, v13, type metadata accessor for PlayerAvatar);
  LOBYTE(v97) = 7;
  sub_24F8319B8(v13, &v97, v18);
  sub_24F927618();
  sub_24F9238C8();
  v32 = &v18[*(v14 + 36)];
  v33 = v85;
  *v32 = v84;
  *(v32 + 1) = v33;
  *(v32 + 2) = v86;
  sub_24F927618();
  v34 = 1;
  sub_24F9242E8();
  v35 = v18;
  v36 = v78;
  sub_24E6009C8(v35, v29, &qword_27F2233D0);
  v74 = v19;
  v37 = &v29[*(v19 + 36)];
  v38 = v92;
  *(v37 + 4) = v91;
  *(v37 + 5) = v38;
  *(v37 + 6) = v93;
  v39 = v88;
  *v37 = v87;
  *(v37 + 1) = v39;
  v40 = v90;
  *(v37 + 2) = v89;
  *(v37 + 3) = v40;
  sub_24E6009C8(v29, v31, &qword_27F21A240);
  v41 = &v36[*(type metadata accessor for VisualView(0) + 20)];
  v42 = *&v41[*(type metadata accessor for ChallengeInviteCard() + 48)];
  v43 = *(v42 + 16);
  if (v43 && *v36 >= 3u)
  {
    if (v43 == 1)
    {
      sub_24E7263C0(v42 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v13, type metadata accessor for PlayerAvatar);
      LOBYTE(v97) = 7;
      v45 = v72;
      sub_24F8319B8(v13, &v97, v72);
      sub_24F927618();
      sub_24F9238C8();
      v46 = (v45 + *(v14 + 36));
      v47 = v95;
      *v46 = v94;
      v46[1] = v47;
      v46[2] = v96;
      sub_24F927618();
      sub_24F9242E8();
      v48 = v45;
      v49 = v71;
      sub_24E6009C8(v48, v71, &qword_27F2233D0);
      v50 = (v49 + *(v74 + 36));
      v51 = v102;
      v50[4] = v101;
      v50[5] = v51;
      v50[6] = v103;
      v52 = v98;
      *v50 = v97;
      v50[1] = v52;
      v53 = v100;
      v50[2] = v99;
      v50[3] = v53;
      v54 = v49;
      v55 = v73;
      sub_24E6009C8(v54, v73, &qword_27F21A240);
      sub_24E60169C(v55, v77, &qword_27F21A240);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A248);
      sub_24E726C34();
      sub_24E726CC0();
      v56 = v76;
      sub_24F924E28();
      sub_24E601704(v55, &qword_27F21A240);
    }

    else
    {

      v58 = sub_24E726AEC(v57);
      v60 = v59;

      sub_24F927618();
      sub_24F9242E8();
      v61 = v77;
      *v77 = v58;
      v61[1] = v60;
      v62 = v102;
      *(v61 + 5) = v101;
      *(v61 + 6) = v62;
      *(v61 + 7) = v103;
      v63 = v98;
      *(v61 + 1) = v97;
      *(v61 + 2) = v63;
      v64 = v100;
      *(v61 + 3) = v99;
      *(v61 + 4) = v64;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A248);
      sub_24E726C34();
      sub_24E726CC0();
      v56 = v76;
      sub_24F924E28();
    }

    v44 = v79;
    sub_24E6009C8(v56, v79, &qword_27F21A230);
    v34 = 0;
  }

  else
  {
    v44 = v79;
  }

  (*(v80 + 56))(v44, v34, 1, v81);
  sub_24E60169C(v31, v22, &qword_27F21A240);
  v65 = v82;
  sub_24E60169C(v44, v82, &qword_27F21A238);
  v66 = v83;
  sub_24E60169C(v22, v83, &qword_27F21A240);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A268);
  sub_24E60169C(v65, v66 + *(v67 + 48), &qword_27F21A238);
  sub_24E601704(v44, &qword_27F21A238);
  sub_24E601704(v31, &qword_27F21A240);
  sub_24E601704(v65, &qword_27F21A238);
  return sub_24E601704(v22, &qword_27F21A240);
}

uint64_t sub_24E724488@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v8 = *a1;
  if (v8 == 1)
  {

LABEL_4:
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    return result;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_4;
  }

  if (v8 > 4)
  {

    v12 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();

    v12 = v11 & 1;
  }

  v13 = &a1[*(type metadata accessor for VisualView(0) + 24)];
  v14 = *v13;
  v15 = v13[8];

  if ((v15 & 1) == 0)
  {
    sub_24F92BDC8();
    v16 = v12;
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    v12 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v14 = v44;
  }

  swift_getKeyPath();
  v44 = v14;
  sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v18 = *(v14 + 16);

  if (v8 > 4)
  {
  }

  else
  {
    v19 = sub_24F92CE08();

    if ((v19 & 1) == 0)
    {
      sub_24F925868();
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v21 = sub_24F925818();
  *(inited + 32) = v21;
  v22 = sub_24F925858();
  *(inited + 33) = v22;
  sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v21)
  {
    sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v22)
  {
    sub_24F925848();
  }

LABEL_18:
  v23 = sub_24EA91914(v18);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_24F925808();
  v56 = 0;
  if (v8 > 4)
  {

    v54 = sub_24F925048();
    v55 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_24F925258();
    goto LABEL_22;
  }

  v31 = sub_24F92CE08();

  v54 = sub_24F925048();
  v55 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(v53);
  sub_24F925258();
  if (v31)
  {
LABEL_22:
    sub_24E615E00(v53, &v43);
    v33[0] = 1;
    v33[1] = v12;
    v33[2] = 0;
    v34 = v58;
    v35 = v59;
    v36 = v30;
    *v37 = *v57;
    *&v37[3] = *&v57[3];
    v38 = v23;
    v39 = v25;
    v40 = v27;
    v41 = v29;
    v42 = 0;
    sub_24E60169C(v33, &v44, &qword_27F214DD8);
    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0);
    sub_24E63DF14();
    sub_24E63DFA0();
    sub_24F924E28();
    sub_24E601704(v33, &qword_27F214DD8);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  LOBYTE(v44) = 1;
  *(&v44 + 1) = v12;
  *(&v44 + 3) = v58;
  HIBYTE(v44) = v59;
  v45 = v30;
  *v46 = *v57;
  *&v46[3] = *&v57[3];
  v47 = v23;
  v48 = v25;
  v49 = v27;
  v50 = v29;
  v51 = 0;
  v52 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0);
  sub_24E63DF14();
  sub_24E63DFA0();
  sub_24F924E28();
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_24E724C74()
{
  v0 = sub_24E60B340(qword_2861BF220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A270);
  result = swift_arrayDestroy();
  off_27F219FB0 = v0;
  return result;
}

uint64_t sub_24E724CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2D0);
  MEMORY[0x28223BE20](v6);
  v9 = (v22 - v8);
  if (qword_27F20FE10 != -1)
  {
    v22[0] = v7;
    swift_once();
    v7 = v22[0];
  }

  v10 = off_27F219FB0;
  if (*(off_27F219FB0 + 2) && (v11 = *(a1 + 16), v22[0] = v7, v12 = sub_24E7728CC(v11), v7 = v22[0], (v13 & 1) != 0))
  {
    v14 = *(v10[7] + 8 * v12);

    *v9 = sub_24F927618();
    v9[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2D8);
    v22[1] = sub_24F40650C(a1);
    swift_getKeyPath();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_24E727130;
    *(v17 + 24) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E8);
    sub_24E602068(&qword_27F21A2F0, &qword_27F21A2E0);
    sub_24E7271DC();
    sub_24F927228();
    v18 = sub_24F925808();
    v19 = v9 + *(v6 + 36);
    *v19 = v18;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    v19[40] = 1;
    sub_24E6009C8(v9, a3, &qword_27F21A2D0);
    return (*(v22[0] + 56))(a3, 0, 1, v6);
  }

  else
  {
    v21 = *(v7 + 56);

    return v21(a3, 1, 1, v6);
  }
}

void sub_24E724FF8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v11 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A370);
  MEMORY[0x28223BE20](v35);
  v15 = &v33 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A380);
  MEMORY[0x28223BE20](v33);
  v17 = &v33 - v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A308);
  MEMORY[0x28223BE20](v34);
  v19 = &v33 - v18;
  if (*(a3 + 16) - 1 != a1 || a4 < 1)
  {
    sub_24E7263C0(a2, v13, type metadata accessor for PlayerAvatar);
    LOBYTE(v53) = 7;
    sub_24F8319B8(v13, &v53, v15);
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 16) > a1)
      {
        sub_24F927618();
        sub_24F9238C8();
        v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0) + 36)];
        v32 = v54;
        *v31 = v53;
        *(v31 + 1) = v32;
        *(v31 + 2) = v55;
        *&v15[*(v35 + 36)] = *(a5 + 24 * a1 + 32);
        v29 = &qword_27F21A370;
        sub_24E60169C(v15, v17, &qword_27F21A370);
        swift_storeEnumTagMultiPayload();
        sub_24E727268();
        sub_24E727544();
        sub_24F924E28();
        v30 = v15;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = sub_24F927618();
  v22 = v21;
  sub_24E7254D4(a5, a1, &v38);
  v46[6] = v44;
  v46[0] = v38;
  v46[1] = v39;
  v46[2] = v40;
  v46[3] = v41;
  *&v47 = v45;
  *(&v47 + 1) = v20;
  v55 = v40;
  v56 = v41;
  v53 = v38;
  v54 = v39;
  v59 = v44;
  v60 = v47;
  v46[4] = v42;
  v46[5] = v43;
  v48 = v22;
  v61 = v22;
  v57 = v42;
  v58 = v43;
  v49[4] = v42;
  v49[5] = v43;
  v49[6] = v44;
  v49[0] = v38;
  v49[1] = v39;
  v49[2] = v40;
  v49[3] = v41;
  v50 = v45;
  v51 = v20;
  v52 = v22;
  sub_24E60169C(v46, v37, &qword_27F21A350);
  sub_24E601704(v49, &qword_27F21A350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A328);
  sub_24F927438();
  v23 = v60;
  *(v19 + 6) = v59;
  *(v19 + 7) = v23;
  *(v19 + 16) = v61;
  v24 = v56;
  *(v19 + 2) = v55;
  *(v19 + 3) = v24;
  v25 = v58;
  *(v19 + 4) = v57;
  *(v19 + 5) = v25;
  v26 = v54;
  *v19 = v53;
  *(v19 + 1) = v26;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (*(a5 + 16) > a1)
  {
    sub_24F927618();
    sub_24F9238C8();
    v27 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A318) + 36)];
    v28 = v37[1];
    *v27 = v37[0];
    *(v27 + 1) = v28;
    *(v27 + 2) = v37[2];
    *&v19[*(v34 + 36)] = *(a5 + 24 * a1 + 32);
    v29 = &qword_27F21A308;
    sub_24E60169C(v19, v17, &qword_27F21A308);
    swift_storeEnumTagMultiPayload();
    sub_24E727268();
    sub_24E727544();
    sub_24F924E28();
    v30 = v19;
LABEL_9:
    sub_24E601704(v30, v29);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_24E7254D4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *&v12 = 43;
  *(&v12 + 1) = 0xE100000000000000;
  v6 = sub_24F92CD88();
  MEMORY[0x253050C20](v6);

  v7 = v12;
  KeyPath = swift_getKeyPath();
  LOBYTE(v12) = 0;
  result = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16) > a2)
  {
    v10 = result;
    sub_24F927618();
    result = sub_24F9238C8();
    *(a3 + 72) = v12;
    *a3 = v7;
    v11 = MEMORY[0x277D84F90];
    *(a3 + 16) = 0;
    *(a3 + 24) = v11;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = KeyPath;
    *(a3 + 56) = 0x3FB999999999999ALL;
    *(a3 + 64) = v10;
    *(a3 + 88) = v13;
    *(a3 + 104) = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E725654()
{
  result = qword_27F21A0F0;
  if (!qword_27F21A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FD0);
    sub_24E725708(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A0F0);
  }

  return result;
}

uint64_t sub_24E725708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E725750(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E7257CC()
{
  result = qword_27F21A100;
  if (!qword_27F21A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0E0);
    sub_24E725858();
    sub_24E725EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A100);
  }

  return result;
}

unint64_t sub_24E725858()
{
  result = qword_27F21A108;
  if (!qword_27F21A108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0D8);
    sub_24E7258E4();
    sub_24E725B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A108);
  }

  return result;
}

unint64_t sub_24E7258E4()
{
  result = qword_27F21A110;
  if (!qword_27F21A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0D0);
    sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView);
    sub_24E7259A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A110);
  }

  return result;
}

unint64_t sub_24E7259A0()
{
  result = qword_27F21A120;
  if (!qword_27F21A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0A8);
    sub_24E725A2C();
    sub_24E725AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A120);
  }

  return result;
}

unint64_t sub_24E725A2C()
{
  result = qword_27F21A128;
  if (!qword_27F21A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0A0);
    sub_24E63CB8C();
    sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A128);
  }

  return result;
}

unint64_t sub_24E725AE8()
{
  result = qword_27F21A138;
  if (!qword_27F21A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A088);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A138);
  }

  return result;
}

unint64_t sub_24E725B74()
{
  result = qword_27F21A140;
  if (!qword_27F21A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A058);
    sub_24E725C2C();
    sub_24E726308(&qword_27F21A158, &qword_27F21A048, &unk_24F94D9C8, sub_24E725D44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A140);
  }

  return result;
}

unint64_t sub_24E725C2C()
{
  result = qword_27F21A148;
  if (!qword_27F21A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A078);
    sub_24E725CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A148);
  }

  return result;
}

unint64_t sub_24E725CB8()
{
  result = qword_27F21A150;
  if (!qword_27F21A150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A070);
    sub_24E7179AC();
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A150);
  }

  return result;
}

unint64_t sub_24E725D44()
{
  result = qword_27F21A160;
  if (!qword_27F21A160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A040);
    sub_24E6C08EC();
    sub_24E725750(&qword_27F21A168, &qword_27F21A028, &unk_24F94D9A8, sub_24E725DFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A160);
  }

  return result;
}

unint64_t sub_24E725DFC()
{
  result = qword_27F21A170;
  if (!qword_27F21A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A020);
    sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView);
    sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A170);
  }

  return result;
}

unint64_t sub_24E725EE8()
{
  result = qword_27F21A180;
  if (!qword_27F21A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A010);
    sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
    sub_24E726054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A180);
  }

  return result;
}

uint64_t sub_24E725FA0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E726054()
{
  result = qword_27F21A188;
  if (!qword_27F21A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FF0);
    sub_24E725750(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
    sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &unk_24F94D940, sub_24E72627C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A188);
  }

  return result;
}

unint64_t sub_24E726138()
{
  result = qword_27F21A198;
  if (!qword_27F21A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FF8);
    sub_24E7261F0();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A198);
  }

  return result;
}

unint64_t sub_24E7261F0()
{
  result = qword_27F21A1A0;
  if (!qword_27F21A1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A1A8);
    sub_24E6A62C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A1A0);
  }

  return result;
}

unint64_t sub_24E72627C()
{
  result = qword_27F21A1B8;
  if (!qword_27F21A1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FD8);
    sub_24E726138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A1B8);
  }

  return result;
}

uint64_t sub_24E726308(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7263C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E726428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E72649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E726570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24E72662C()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E7266C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeInviteCard();
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
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E72679C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeInviteCard();
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
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24E72685C()
{
  type metadata accessor for ChallengeInviteCard();
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7268F0()
{
  if (!qword_27F214D30)
  {
    type metadata accessor for CardSafeArea(255);
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214D30);
    }
  }
}

unint64_t sub_24E72698C()
{
  result = qword_27F21A200;
  if (!qword_27F21A200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0E8);
    sub_24E7257CC();
    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &unk_24F94D928, sub_24E725654);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A200);
  }

  return result;
}

uint64_t sub_24E726A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E726AEC(uint64_t a1)
{
  v2 = qword_27F20FE10;

  if (v2 != -1)
  {
    swift_once();
  }

  v6 = sub_24E6B7C48(*(off_27F219FB0 + 2), a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 = v5;
  v10 = v4;
  v11 = v3;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 != (v9 >> 1) - v10)
  {
LABEL_14:
    swift_unknownObjectRelease();
    v5 = v9;
    v4 = v10;
    v3 = v11;
LABEL_4:
    sub_24E6B8064(v6, v3, v4, v5);
    v8 = v7;
LABEL_11:
    swift_unknownObjectRelease();
    return v8;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v8;
}

unint64_t sub_24E726C34()
{
  result = qword_27F21A250;
  if (!qword_27F21A250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A240);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A250);
  }

  return result;
}

unint64_t sub_24E726CC0()
{
  result = qword_27F21A258;
  if (!qword_27F21A258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A248);
    sub_24E726D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A258);
  }

  return result;
}

unint64_t sub_24E726D4C()
{
  result = qword_27F21A260;
  if (!qword_27F21A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A260);
  }

  return result;
}

unint64_t sub_24E726DB0()
{
  result = qword_27F21A280;
  if (!qword_27F21A280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A278);
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A280);
  }

  return result;
}

unint64_t sub_24E726E90()
{
  result = qword_27F21A298;
  if (!qword_27F21A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A218);
    sub_24E726F48();
    sub_24E602068(&qword_27F21A2B0, &qword_27F21A2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A298);
  }

  return result;
}

unint64_t sub_24E726F48()
{
  result = qword_27F21A2A0;
  if (!qword_27F21A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A210);
    sub_24E602068(&qword_27F21A2A8, &qword_27F21A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2A0);
  }

  return result;
}

unint64_t sub_24E727004()
{
  result = qword_27F21A2C0;
  if (!qword_27F21A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2C8);
    sub_24E6A4C1C();
    sub_24E726DB0();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2C0);
  }

  return result;
}

uint64_t sub_24E7270F0()
{

  return swift_deallocObject();
}

uint64_t sub_24E72713C()
{

  return swift_deallocObject();
}

uint64_t sub_24E727174(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_24E7271DC()
{
  result = qword_27F21A2F8;
  if (!qword_27F21A2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2E8);
    sub_24E727268();
    sub_24E727544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2F8);
  }

  return result;
}

unint64_t sub_24E727268()
{
  result = qword_27F21A300;
  if (!qword_27F21A300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A308);
    sub_24E7272F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A300);
  }

  return result;
}

unint64_t sub_24E7272F4()
{
  result = qword_27F21A310;
  if (!qword_27F21A310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A318);
    sub_24E727380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A310);
  }

  return result;
}

unint64_t sub_24E727380()
{
  result = qword_27F21A320;
  if (!qword_27F21A320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A328);
    sub_24E727438();
    sub_24E602068(&qword_27F21A358, &qword_27F21A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A320);
  }

  return result;
}

unint64_t sub_24E727438()
{
  result = qword_27F21A330;
  if (!qword_27F21A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A338);
    sub_24E7274F0();
    sub_24E602068(&qword_27F21A348, &qword_27F21A350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A330);
  }

  return result;
}

unint64_t sub_24E7274F0()
{
  result = qword_27F21A340;
  if (!qword_27F21A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A340);
  }

  return result;
}

unint64_t sub_24E727544()
{
  result = qword_27F21A368;
  if (!qword_27F21A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A370);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A368);
  }

  return result;
}

unint64_t sub_24E72761C()
{
  result = qword_27F21A398;
  if (!qword_27F21A398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2D0);
    sub_24E602068(&qword_27F21A3A0, &qword_27F21A3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A398);
  }

  return result;
}

double sub_24E7276D4()
{
  xmmword_27F21A3B0 = xmmword_24F94DE10;
  unk_27F21A3C0 = xmmword_24F94DE20;
  result = 38.0;
  xmmword_27F21A3D0 = xmmword_24F94DE30;
  unk_27F21A3E0 = xmmword_24F94DE40;
  qword_27F21A3F0 = 0x402C000000000000;
  return result;
}

__n128 static OnboardingLayoutMetrics.phone.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F20FE18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_27F21A3E0;
  *(a1 + 32) = xmmword_27F21A3D0;
  *(a1 + 48) = v1;
  *(a1 + 64) = qword_27F21A3F0;
  result = unk_27F21A3C0;
  *a1 = xmmword_27F21A3B0;
  *(a1 + 16) = result;
  return result;
}

double sub_24E727788()
{
  xmmword_27F21A3F8 = xmmword_24F94DE10;
  unk_27F21A408 = xmmword_24F94DE50;
  result = 38.0;
  xmmword_27F21A418 = xmmword_24F94DE30;
  unk_27F21A428 = xmmword_24F94DE60;
  qword_27F21A438 = 0x402C000000000000;
  return result;
}

__n128 static OnboardingLayoutMetrics.pad.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F20FE20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_27F21A428;
  *(a1 + 32) = xmmword_27F21A418;
  *(a1 + 48) = v1;
  *(a1 + 64) = qword_27F21A438;
  result = unk_27F21A408;
  *a1 = xmmword_27F21A3F8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E72783C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E72785C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_24E7278A8(uint64_t a1)
{
  v2 = sub_24E728014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7278E4(uint64_t a1)
{
  v2 = sub_24E728014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E727940(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E728014();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

void FriendRequestsPrivacyState.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x73746361746E6F63;
  if (*v1)
  {
    v3 = 0x656E6F7972657665;
  }

  v4 = 0xEC000000796C6E4FLL;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t FriendRequestsPrivacyState.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E6F7972657665;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

GameStoreKit::FriendRequestsPrivacyState_optional __swiftcall FriendRequestsPrivacyState.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_24E727B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E6F7972657665;
  }

  else
  {
    v3 = 0x73746361746E6F63;
  }

  if (v2)
  {
    v4 = 0xEC000000796C6E4FLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E6F7972657665;
  }

  else
  {
    v5 = 0x73746361746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC000000796C6E4FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24E727C0C()
{
  result = qword_27F21A440;
  if (!qword_27F21A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A440);
  }

  return result;
}

uint64_t sub_24E727C60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E727CEC()
{
  sub_24F92B218();
}

uint64_t sub_24E727D64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E727DEC@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24E727E4C(uint64_t *a1@<X8>)
{
  v2 = 0x73746361746E6F63;
  if (*v1)
  {
    v2 = 0x656E6F7972657665;
  }

  v3 = 0xEC000000796C6E4FLL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_24E727F44(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x73746361746E6F63;
  if (*v1)
  {
    v3 = 0x656E6F7972657665;
  }

  v4 = 0xEC000000796C6E4FLL;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_24E727FB0()
{
  result = qword_27F21A448;
  if (!qword_27F21A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A448);
  }

  return result;
}

unint64_t sub_24E728014()
{
  result = qword_27F21A458;
  if (!qword_27F21A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A458);
  }

  return result;
}

unint64_t sub_24E72807C()
{
  result = qword_27F21A460;
  if (!qword_27F21A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A460);
  }

  return result;
}

unint64_t sub_24E7280D4()
{
  result = qword_27F21A468;
  if (!qword_27F21A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A468);
  }

  return result;
}

uint64_t sub_24E728128()
{
  type metadata accessor for GameKitAuthenticationDataIntentImplementation.Cache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate;
  v2 = sub_24F91F648();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential) = 0;
  qword_27F21A470 = v0;
  return result;
}

uint64_t sub_24E7281BC()
{
  sub_24E728998(v0 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24E728238()
{
  if (qword_27F20FE28 != -1)
  {
    swift_once();
  }

  v1 = qword_27F21A470;
  *(v0 + 24) = qword_27F21A470;

  return MEMORY[0x2822009F8](sub_24E7282D0, v1, 0);
}

uint64_t sub_24E7282D0()
{
  v1 = sub_24E7284F0();
  *(v0 + 32) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_24E728344, 0, 0);
}

uint64_t sub_24E728344()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [v1 playerID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_24F92B0D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v9 = [*(v0 + 32) authenticationToken];
    v10 = *(v0 + 32);
    if (v9)
    {
      v11 = v9;
      v7 = sub_24F92B0D8();
      v8 = v12;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  v13 = *(v0 + 16);
  *v13 = v4;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24E728458(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return GameKitAuthenticationDataIntentImplementation.perform(_:objectGraph:)(a1);
}

uint64_t sub_24E7284F0()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate;
  swift_beginAccess();
  sub_24E728A00(v1 + v12, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_24E728998(v11);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_24E728998(v11);
    sub_24F91F5C8();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    if (v14 >= 15.0)
    {
      (*(v3 + 56))(v9, 1, 1, v2);
      swift_beginAccess();
      sub_24E728A70(v9, v1 + v12);
      swift_endAccess();
      v15 = *(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential);
      *(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential) = 0;
    }
  }

  v16 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential;
  if (!*(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential))
  {
    v17 = [objc_opt_self() daemonProxy];
    v18 = [v17 authenticatedCredential];

    if (v18)
    {
      sub_24F91F638();
      (*(v3 + 56))(v9, 0, 1, v2);
      swift_beginAccess();
      sub_24E728A70(v9, v1 + v12);
      swift_endAccess();
      v19 = *(v1 + v16);
      *(v1 + v16) = v18;
    }
  }

  return *(v1 + v16);
}

unint64_t sub_24E7287E4()
{
  result = qword_27F21A478;
  if (!qword_27F21A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A478);
  }

  return result;
}

uint64_t type metadata accessor for GameKitAuthenticationDataIntentImplementation.Cache()
{
  result = qword_27F21A490;
  if (!qword_27F21A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E72889C()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E728940()
{
  if (!qword_27F21A4A0)
  {
    sub_24F91F648();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21A4A0);
    }
  }
}

uint64_t sub_24E728998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E728A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E728A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E728AE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F94E270;
  v1 = sub_24E729620();
  *(v0 + 32) = &type metadata for AchievementsCountDataIntent;
  *(v0 + 40) = v1;
  v2 = type metadata accessor for AchievementRecordingsDataIntent();
  v3 = sub_24E72A0F4(&qword_27F21A4D8, type metadata accessor for AchievementRecordingsDataIntent);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = sub_24E635118();
  *(v0 + 64) = &type metadata for AchievementsCountByPlayerDataIntent;
  *(v0 + 72) = v4;
  v5 = sub_24E729674();
  *(v0 + 80) = &type metadata for ActiveCallsDataIntent;
  *(v0 + 88) = v5;
  v6 = sub_24E6C2FA4();
  *(v0 + 96) = &type metadata for ActivityFeedDataIntent;
  *(v0 + 104) = v6;
  v7 = sub_24E70D7C4();
  *(v0 + 112) = &type metadata for AllFriendsPlayingGamesDataIntent;
  *(v0 + 120) = v7;
  v8 = sub_24E65404C();
  *(v0 + 128) = &type metadata for ChallengeDefinitionDataIntent;
  *(v0 + 136) = v8;
  v9 = sub_24E7296C8();
  *(v0 + 144) = &type metadata for ChallengeDefinitionsDataIntent;
  *(v0 + 152) = v9;
  v10 = sub_24E72971C();
  *(v0 + 160) = &type metadata for ChallengeDetailDataIntent;
  *(v0 + 168) = v10;
  v11 = sub_24E6512B8();
  *(v0 + 176) = &type metadata for ChallengesAllGamesDataIntent;
  *(v0 + 184) = v11;
  v12 = sub_24E729770();
  *(v0 + 192) = &type metadata for ChallengesFriendComparisonDataIntent;
  *(v0 + 200) = v12;
  v13 = sub_24E7297C4();
  *(v0 + 208) = &type metadata for ChallengesHistoryDataIntent;
  *(v0 + 216) = v13;
  v14 = sub_24E653EA8();
  *(v0 + 224) = &type metadata for ChallengesHubDataIntent;
  *(v0 + 232) = v14;
  v15 = sub_24E729818();
  *(v0 + 240) = &type metadata for CompletedChallengesDataIntent;
  *(v0 + 248) = v15;
  v16 = type metadata accessor for ContinuePlayingDataIntent(0);
  v17 = sub_24E72A0F4(&qword_27F215230, type metadata accessor for ContinuePlayingDataIntent);
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v18 = sub_24E72986C();
  *(v0 + 272) = &type metadata for FriendOutboxDataIntent;
  *(v0 + 280) = v18;
  v19 = sub_24E650FC4();
  *(v0 + 288) = &type metadata for FriendRequestsDataIntent;
  *(v0 + 296) = v19;
  v20 = sub_24E6540F4();
  *(v0 + 304) = &type metadata for FriendRequestsPrivacyToggleDataIntent;
  *(v0 + 312) = v20;
  v21 = type metadata accessor for FriendsDataIntent();
  v22 = sub_24E72A0F4(&qword_27F2151B0, type metadata accessor for FriendsDataIntent);
  *(v0 + 320) = v21;
  *(v0 + 328) = v22;
  v23 = sub_24E651210();
  *(v0 + 336) = &type metadata for FriendSuggestionsDataIntent;
  *(v0 + 344) = v23;
  v24 = sub_24E7298C0();
  *(v0 + 352) = &type metadata for FriendSuggestionsDenyListDataIntent;
  *(v0 + 360) = v24;
  v25 = sub_24E729914();
  *(v0 + 368) = &type metadata for FriendshipStatusDataIntent;
  *(v0 + 376) = v25;
  v26 = sub_24E65130C();
  *(v0 + 384) = &type metadata for FriendsPlayingGameDataIntent;
  *(v0 + 392) = v26;
  v27 = sub_24E6540A0();
  *(v0 + 400) = &type metadata for FriendsPlayingGamesDataIntent;
  *(v0 + 408) = v27;
  v28 = sub_24E6F6358();
  *(v0 + 416) = &type metadata for GameAchievementsListDataIntent;
  *(v0 + 424) = v28;
  v29 = sub_24E729968();
  *(v0 + 432) = &type metadata for GameActivityDefinitionDataIntent;
  *(v0 + 440) = v29;
  v30 = sub_24E7299BC();
  *(v0 + 448) = &type metadata for GameActivityInstanceDataIntent;
  *(v0 + 456) = v30;
  v31 = sub_24E729A10();
  *(v0 + 464) = &type metadata for GameActivitiesListDataIntent;
  *(v0 + 472) = v31;
  v32 = sub_24E653FF8();
  *(v0 + 480) = &type metadata for GameDataIntent;
  *(v0 + 488) = v32;
  v33 = sub_24E729A64();
  *(v0 + 496) = &type metadata for GamePurchaseStateDataIntent;
  *(v0 + 504) = v33;
  v34 = sub_24E729AB8();
  *(v0 + 512) = &type metadata for GameStorePurchaseStateDataIntent;
  *(v0 + 520) = v34;
  v35 = sub_24E729B0C();
  *(v0 + 528) = &type metadata for GameRecordingsDataIntent;
  *(v0 + 536) = v35;
  v36 = sub_24E651018();
  *(v0 + 544) = &type metadata for GamesDataIntent;
  *(v0 + 552) = v36;
  v37 = type metadata accessor for GameDescriptorDataIntent();
  v38 = sub_24E72A0F4(&qword_27F21A558, type metadata accessor for GameDescriptorDataIntent);
  *(v0 + 560) = v37;
  *(v0 + 568) = v38;
  v39 = type metadata accessor for GameLibraryDataIntent();
  v40 = sub_24E72A0F4(&qword_27F21A560, type metadata accessor for GameLibraryDataIntent);
  *(v0 + 576) = v39;
  *(v0 + 584) = v40;
  v41 = type metadata accessor for GameLibraryRefsDataIntent();
  v42 = sub_24E72A0F4(&qword_27F21A568, type metadata accessor for GameLibraryRefsDataIntent);
  *(v0 + 592) = v41;
  *(v0 + 600) = v42;
  v43 = type metadata accessor for GamesRecentlyPlayedDataIntent();
  v44 = sub_24E72A0F4(&qword_27F2151B8, type metadata accessor for GamesRecentlyPlayedDataIntent);
  *(v0 + 608) = v43;
  *(v0 + 616) = v44;
  v45 = sub_24E729B60();
  *(v0 + 624) = &type metadata for HasLibraryGameDataIntent;
  *(v0 + 632) = v45;
  v46 = sub_24E729BB4();
  *(v0 + 640) = &type metadata for LeaderboardsCountDataIntent;
  *(v0 + 648) = v46;
  v47 = sub_24E653F50();
  *(v0 + 656) = &type metadata for LeaderboardDataIntent;
  *(v0 + 664) = v47;
  v48 = type metadata accessor for LeaderboardsListDataIntent();
  v49 = sub_24E72A0F4(&qword_27F215278, type metadata accessor for LeaderboardsListDataIntent);
  *(v0 + 672) = v48;
  *(v0 + 680) = v49;
  v50 = sub_24E729C08();
  *(v0 + 688) = &type metadata for LeaderboardSetDataIntent;
  *(v0 + 696) = v50;
  v51 = type metadata accessor for LeaderboardSetsDataIntent();
  v52 = sub_24E72A0F4(&qword_27F21A588, type metadata accessor for LeaderboardSetsDataIntent);
  *(v0 + 704) = v51;
  *(v0 + 712) = v52;
  v53 = type metadata accessor for LeaderboardsWithActivityDataIntent();
  v54 = sub_24E72A0F4(&qword_27F21A590, type metadata accessor for LeaderboardsWithActivityDataIntent);
  *(v0 + 720) = v53;
  *(v0 + 728) = v54;
  v55 = type metadata accessor for LeaderboardsWithFriendActivityDataIntent();
  v56 = sub_24E72A0F4(&qword_27F21A598, type metadata accessor for LeaderboardsWithFriendActivityDataIntent);
  *(v0 + 736) = v55;
  *(v0 + 744) = v56;
  v57 = sub_24E729C5C();
  *(v0 + 752) = &type metadata for OnDevicePersonalizationDataIntent;
  *(v0 + 760) = v57;
  v58 = sub_24E729CB0();
  *(v0 + 768) = &type metadata for PhotosAssetMediaDataIntent;
  *(v0 + 776) = v58;
  v59 = sub_24E729D04();
  *(v0 + 784) = &type metadata for PlayerDataIntent;
  *(v0 + 792) = v59;
  v60 = sub_24E729D58();
  *(v0 + 800) = &type metadata for PlayerIDDataIntent;
  *(v0 + 808) = v60;
  v61 = sub_24E65106C();
  *(v0 + 816) = &type metadata for PlayersDataIntent;
  *(v0 + 824) = v61;
  v62 = sub_24E729DAC();
  *(v0 + 832) = &type metadata for PlayerProfileDataIntent;
  *(v0 + 840) = v62;
  v63 = sub_24E729E00();
  *(v0 + 848) = &type metadata for PlayTogetherChallengesDataIntent;
  *(v0 + 856) = v63;
  v64 = sub_24E729E54();
  *(v0 + 864) = &type metadata for PlayTogetherGamesDataIntent;
  *(v0 + 872) = v64;
  v65 = sub_24E729EA8();
  *(v0 + 880) = &type metadata for PlayTogetherPlayerDraftDataIntent;
  *(v0 + 888) = v65;
  v66 = sub_24E67D40C();
  *(v0 + 896) = &type metadata for RecentSearchesDataIntent;
  *(v0 + 904) = v66;
  v67 = sub_24E7287E4();
  *(v0 + 912) = &type metadata for GameKitAuthenticationDataIntent;
  *(v0 + 920) = v67;
  v68 = sub_24E729EFC();
  *(v0 + 928) = &type metadata for RealNameMapDataIntent;
  *(v0 + 936) = v68;
  v69 = sub_24E729F50();
  *(v0 + 944) = &type metadata for ReportFriendProfilePageDidVisitIntent;
  *(v0 + 952) = v69;
  v70 = sub_24E729FA4();
  *(v0 + 960) = &type metadata for ReportFriendRequestsPageDidVisitIntent;
  *(v0 + 968) = v70;
  v71 = sub_24E729FF8();
  *(v0 + 976) = &type metadata for RestrictionsCheckDataIntent;
  *(v0 + 984) = v71;
  v72 = sub_24E72A04C();
  *(v0 + 992) = &type metadata for SocialIntegrationQueryDataIntent;
  *(v0 + 1000) = v72;
  v73 = sub_24E72A0A0();
  *(v0 + 1008) = &type metadata for SocialIntegrationsDataIntent;
  *(v0 + 1016) = v73;
  v74 = type metadata accessor for SocialSuggestionsDataIntent();
  result = sub_24E72A0F4(&qword_27F21A600, type metadata accessor for SocialSuggestionsDataIntent);
  *(v0 + 1024) = v74;
  *(v0 + 1032) = result;
  off_27F21A4A8 = v0;
  return result;
}

uint64_t sub_24E729218()
{
  if (qword_27F20FE30 != -1)
  {
    swift_once();
  }

  v0 = off_27F21A4A8;
  v1 = *(off_27F21A4A8 + 2);
  if (v1)
  {

    v2 = MEMORY[0x277D84F90];
    v3 = 32;
    do
    {
      v13 = *&v0[v3];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      sub_24F9284C8();
      if (swift_dynamicCast())
      {
        v5 = v14[0];
        v6 = v14[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24E6172A8(0, v2[2] + 1, 1, v2);
        }

        v8 = v2[2];
        v7 = v2[3];
        if (v8 >= v7 >> 1)
        {
          v2 = sub_24E6172A8((v7 > 1), v8 + 1, 1, v2);
        }

        v2[2] = v8 + 1;
        v9 = &v2[4 * v8];
        v9[4] = v5;
        v9[5] = v6;
        *(v9 + 3) = v13;
      }

      v3 += 16;
      --v1;
    }

    while (v1);

    if (v2[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C0);
  v10 = sub_24F92CB58();
LABEL_16:
  v14[0] = v10;

  sub_24E7C512C(v11, 1, v14);

  qword_27F21A4B0 = v14[0];
  return result;
}

uint64_t static NativeIntentDispatchableKinds.table.getter()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E7294EC()
{
  result = qword_27F21A4B8;
  if (!qword_27F21A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4B8);
  }

  return result;
}

uint64_t sub_24E729540()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24E72959C()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }

  v1 = qword_27F21A4B0;

  return sub_24E7C54B8(v1);
}

unint64_t sub_24E729620()
{
  result = qword_27F21A4D0;
  if (!qword_27F21A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4D0);
  }

  return result;
}

unint64_t sub_24E729674()
{
  result = qword_27F21A4E0;
  if (!qword_27F21A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4E0);
  }

  return result;
}

unint64_t sub_24E7296C8()
{
  result = qword_27F21A4E8;
  if (!qword_27F21A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4E8);
  }

  return result;
}

unint64_t sub_24E72971C()
{
  result = qword_27F21A4F0;
  if (!qword_27F21A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4F0);
  }

  return result;
}

unint64_t sub_24E729770()
{
  result = qword_27F21A4F8;
  if (!qword_27F21A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4F8);
  }

  return result;
}

unint64_t sub_24E7297C4()
{
  result = qword_27F21A500;
  if (!qword_27F21A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A500);
  }

  return result;
}

unint64_t sub_24E729818()
{
  result = qword_27F21A508;
  if (!qword_27F21A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A508);
  }

  return result;
}

unint64_t sub_24E72986C()
{
  result = qword_27F21A510;
  if (!qword_27F21A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A510);
  }

  return result;
}

unint64_t sub_24E7298C0()
{
  result = qword_27F21A518;
  if (!qword_27F21A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A518);
  }

  return result;
}

unint64_t sub_24E729914()
{
  result = qword_27F21A520;
  if (!qword_27F21A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A520);
  }

  return result;
}

unint64_t sub_24E729968()
{
  result = qword_27F21A528;
  if (!qword_27F21A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A528);
  }

  return result;
}

unint64_t sub_24E7299BC()
{
  result = qword_27F21A530;
  if (!qword_27F21A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A530);
  }

  return result;
}

unint64_t sub_24E729A10()
{
  result = qword_27F21A538;
  if (!qword_27F21A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A538);
  }

  return result;
}

unint64_t sub_24E729A64()
{
  result = qword_27F21A540;
  if (!qword_27F21A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A540);
  }

  return result;
}

unint64_t sub_24E729AB8()
{
  result = qword_27F21A548;
  if (!qword_27F21A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A548);
  }

  return result;
}

unint64_t sub_24E729B0C()
{
  result = qword_27F21A550;
  if (!qword_27F21A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A550);
  }

  return result;
}

unint64_t sub_24E729B60()
{
  result = qword_27F21A570;
  if (!qword_27F21A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A570);
  }

  return result;
}

unint64_t sub_24E729BB4()
{
  result = qword_27F21A578;
  if (!qword_27F21A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A578);
  }

  return result;
}

unint64_t sub_24E729C08()
{
  result = qword_27F21A580;
  if (!qword_27F21A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A580);
  }

  return result;
}

unint64_t sub_24E729C5C()
{
  result = qword_27F21A5A0;
  if (!qword_27F21A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5A0);
  }

  return result;
}

unint64_t sub_24E729CB0()
{
  result = qword_27F21A5A8;
  if (!qword_27F21A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5A8);
  }

  return result;
}

unint64_t sub_24E729D04()
{
  result = qword_27F21A5B0;
  if (!qword_27F21A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5B0);
  }

  return result;
}

unint64_t sub_24E729D58()
{
  result = qword_27F21A5B8;
  if (!qword_27F21A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5B8);
  }

  return result;
}

unint64_t sub_24E729DAC()
{
  result = qword_27F21A5C0;
  if (!qword_27F21A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5C0);
  }

  return result;
}

unint64_t sub_24E729E00()
{
  result = qword_27F21A5C8;
  if (!qword_27F21A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5C8);
  }

  return result;
}

unint64_t sub_24E729E54()
{
  result = qword_27F21A5D0;
  if (!qword_27F21A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5D0);
  }

  return result;
}

unint64_t sub_24E729EA8()
{
  result = qword_27F23AD50[0];
  if (!qword_27F23AD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23AD50);
  }

  return result;
}

unint64_t sub_24E729EFC()
{
  result = qword_27F21A5D8;
  if (!qword_27F21A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5D8);
  }

  return result;
}

unint64_t sub_24E729F50()
{
  result = qword_27F21A5E0;
  if (!qword_27F21A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5E0);
  }

  return result;
}

unint64_t sub_24E729FA4()
{
  result = qword_27F21A5E8;
  if (!qword_27F21A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5E8);
  }

  return result;
}

unint64_t sub_24E729FF8()
{
  result = qword_27F21A5F0;
  if (!qword_27F21A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5F0);
  }

  return result;
}

unint64_t sub_24E72A04C()
{
  result = qword_27F253B20;
  if (!qword_27F253B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F253B20);
  }

  return result;
}

unint64_t sub_24E72A0A0()
{
  result = qword_27F21A5F8;
  if (!qword_27F21A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5F8);
  }

  return result;
}

uint64_t sub_24E72A0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000024FA464A0;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608);
  v7 = sub_24E72AB38(&qword_27F21A610, &qword_27F21A618);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E72A324()
{
  if (*v0)
  {
    return 0x444965676170;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_24E72A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA464A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24E72A444(uint64_t a1)
{
  v2 = sub_24E72AAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72A480(uint64_t a1)
{
  v2 = sub_24E72AAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A620);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72AAE4();

  sub_24F92D128();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608);
  sub_24E72AB38(&qword_27F21A630, &qword_27F21A638);
  sub_24F92CD48();

  if (!v2)
  {
    v12 = 1;
    sub_24F92CD08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72AAE4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608);
  v14[15] = 0;
  sub_24E72AB38(&qword_27F21A648, &qword_27F21A650);
  sub_24F92CC68();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_24F92CC28();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E72A950@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000024FA464A0;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608);
  v7 = sub_24E72AB38(&qword_27F21A610, &qword_27F21A618);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

unint64_t sub_24E72AAE4()
{
  result = qword_27F21A628;
  if (!qword_27F21A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A628);
  }

  return result;
}

uint64_t sub_24E72AB38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A608);
    sub_24E72ABC0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E72ABC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengesLeaderboardSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E72AC04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24E72AC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E72ACB0()
{
  result = qword_27F21A658;
  if (!qword_27F21A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A658);
  }

  return result;
}

unint64_t sub_24E72AD08()
{
  result = qword_27F21A660;
  if (!qword_27F21A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A660);
  }

  return result;
}

unint64_t sub_24E72AD60()
{
  result = qword_27F21A668;
  if (!qword_27F21A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A668);
  }

  return result;
}

uint64_t sub_24E72ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24E72AE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24E72AE90(uint64_t a1, uint64_t a2, int *a3)
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

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E72B028(uint64_t result, uint64_t a2, int a3, int *a4)
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

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for IncomingFriendRequest()
{
  result = qword_27F21A670;
  if (!qword_27F21A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E72B1F8()
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
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PlayerAvatar(319);
          if (v4 <= 0x3F)
          {
            sub_24E72B340();
            if (v5 <= 0x3F)
            {
              sub_24E6CFC68();
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

void sub_24E72B340()
{
  if (!qword_27F21A680)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21A680);
    }
  }
}

uint64_t sub_24E72B3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7F8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73042C();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v5)
  {
    v13 = 1;
    sub_24F92CD08();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E72B534()
{
  if (*v0)
  {
    return 0x614E6C6F626D7973;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24E72B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_24E72B650(uint64_t a1)
{
  v2 = sub_24E73042C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72B68C(uint64_t a1)
{
  v2 = sub_24E73042C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E72B6C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24E730248(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24E72B718()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E72B780()
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24E72B7D0()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E72B834(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24F92CE08(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}