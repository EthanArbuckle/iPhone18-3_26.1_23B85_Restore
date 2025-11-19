uint64_t sub_24F6DCD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = sub_24F9249A8();
  sub_24F6DCEFC(a1, &v19);
  v6 = v20;
  v18 = v19;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v25 = 0;
  v24 = v22;
  v16 = sub_24F9249A8();
  sub_24F6DD108(a2, &v19);
  v11 = v19;
  v10 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  LOBYTE(v19) = 0;
  v26 = v22;
  *a3 = v17;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = v18;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v16;
  *(a3 + 72) = 0x4010000000000000;
  *(a3 + 80) = 0;
  *(a3 + 88) = v11;
  *(a3 + 96) = v10;
  *(a3 + 104) = v12;
  *(a3 + 112) = v13;
  *(a3 + 120) = v14;

  sub_24E5FD138(v6, v7, v8);

  sub_24E5FD138(v10, v12, v13);

  sub_24E600B40(v10, v12, v13);

  sub_24E600B40(v6, v7, v8);
}

uint64_t sub_24F6DCEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D0D0E8] && v9 != *MEMORY[0x277D0D0F0])
  {
    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_24F926E48();
  v19[0] = sub_24EF5C904(a1);
  v19[1] = v11;
  sub_24E600AEC();
  v12 = sub_24F925E18();
  v14 = v13;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  v16 = v15 & 1;
  *(a2 + 24) = v15 & 1;
  *(a2 + 32) = v17;

  sub_24E5FD138(v12, v14, v16);

  sub_24E600B40(v12, v14, v16);
}

uint64_t sub_24F6DD108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EF5B040(a1);
  v4 = sub_24F926E48();
  sub_24EF52A10(a1, 0);
  sub_24E600AEC();
  v5 = sub_24F925E18();
  v7 = v6;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v9 = v8 & 1;
  *(a2 + 24) = v8 & 1;
  *(a2 + 32) = v10;

  sub_24E5FD138(v5, v7, v9);

  sub_24E600B40(v5, v7, v9);
}

uint64_t sub_24F6DD24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  swift_getKeyPath();
  v23 = a2;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v14 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(a2 + v14, v10, &qword_27F212B28);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_24E601704(v10, &qword_27F212B28);
    v15 = sub_24F9289E8();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  else
  {
    sub_24F6C8308(v10, v7, type metadata accessor for GameActivityDraftGameInfo);
    sub_24E601704(v10, &qword_27F212B28);
    v16 = *(v4 + 28);
    v17 = sub_24F9289E8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v13, &v7[v16], v17);
    sub_24F6C80F0(v7, type metadata accessor for GameActivityDraftGameInfo);
    (*(v18 + 56))(v13, 0, 1, v17);
  }

  sub_24F6C513C(v13, 0, v21);
  return sub_24E601704(v13, &qword_27F213FB0);
}

unint64_t sub_24F6DD5C8()
{
  result = qword_27F24CE20;
  if (!qword_27F24CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE20);
  }

  return result;
}

unint64_t sub_24F6DD620()
{
  result = qword_27F24CE28;
  if (!qword_27F24CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE28);
  }

  return result;
}

unint64_t sub_24F6DD678()
{
  result = qword_27F24CE30;
  if (!qword_27F24CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE30);
  }

  return result;
}

unint64_t sub_24F6DD6D0()
{
  result = qword_27F24CE38;
  if (!qword_27F24CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE38);
  }

  return result;
}

unint64_t sub_24F6DD728()
{
  result = qword_27F24CE40;
  if (!qword_27F24CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE40);
  }

  return result;
}

unint64_t sub_24F6DD780()
{
  result = qword_27F24CE48;
  if (!qword_27F24CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE48);
  }

  return result;
}

unint64_t sub_24F6DD7F0()
{
  result = qword_27F24CE60;
  if (!qword_27F24CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE58);
    sub_24F6DD874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE60);
  }

  return result;
}

unint64_t sub_24F6DD874()
{
  result = qword_27F24CE68;
  if (!qword_27F24CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE70);
    sub_24F6DD900();
    sub_24F6DDA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE68);
  }

  return result;
}

unint64_t sub_24F6DD900()
{
  result = qword_27F24CE78;
  if (!qword_27F24CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE80);
    sub_24F074728();
    sub_24F6DD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE78);
  }

  return result;
}

unint64_t sub_24F6DD98C()
{
  result = qword_27F24CE88;
  if (!qword_27F24CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE90);
    sub_24F6C8150(&qword_27F24CE98, type metadata accessor for ChallengePreCreationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE88);
  }

  return result;
}

unint64_t sub_24F6DDA48()
{
  result = qword_27F24CEA0;
  if (!qword_27F24CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEB0);
    sub_24F6DDBC4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DC8);
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEA0);
  }

  return result;
}

unint64_t sub_24F6DDBC4()
{
  result = qword_27F24CEB8;
  if (!qword_27F24CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEB0);
    sub_24F6DDC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEB8);
  }

  return result;
}

unint64_t sub_24F6DDC50()
{
  result = qword_27F24CEC0;
  if (!qword_27F24CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEC0);
  }

  return result;
}

unint64_t sub_24F6DDCA4()
{
  result = qword_27F24CEC8;
  if (!qword_27F24CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE50);
    sub_24F6DDD30();
    sub_24E669F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEC8);
  }

  return result;
}

unint64_t sub_24F6DDD30()
{
  result = qword_27F24CED0;
  if (!qword_27F24CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE58);
    sub_24F6DD7F0();
    swift_getOpaqueTypeConformance2();
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CED0);
  }

  return result;
}

uint64_t sub_24F6DDDFC()
{
  v2 = *(type metadata accessor for ChallengesReviewView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E6541E4;

  return sub_24F6CDEE4(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_82()
{
  v1 = type metadata accessor for ChallengesReviewView(0);
  v67 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = (v0 + ((v67 + 32) & ~v67));
  if (*v2 >= 3)
  {
  }

  v3 = v2 + v1[6];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v70 = v6;
  v68 = *(v7 + 8);
  v68(&v3[v5]);

  if (*&v3[v4[9] + 8] != 1)
  {
  }

  v8 = &v3[v4[13]];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  v69 = v1;
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v7 + 48))(&v8[v12], 1, v70))
      {
        (v68)(&v8[v12], v70);
      }
    }

    v13 = &v8[*(v9 + 20)];
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v7 + 48))(&v13[v14], 1, v70))
      {
        (v68)(&v13[v14], v70);
      }
    }

    v1 = v69;
  }

  if (*&v3[v4[15] + 8])
  {
  }

  v15 = &v3[v4[16]];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game();
    (v68)(&v15[v17[18]], v70);
    v18 = v17[19];
    if (!(*(v7 + 48))(&v15[v18], 1, v70))
    {
      (v68)(&v15[v18], v70);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v15[v19], 1, v20))
    {
      (*(v21 + 8))(&v15[v19], v20);
    }
  }

  v22 = &v3[v4[17]];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    (v68)(&v22[v24[18]], v70);
    v25 = v24[19];
    if (!(*(v7 + 48))(&v22[v25], 1, v70))
    {
      (v68)(&v22[v25], v70);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v22[v26], 1, v27))
    {
      (*(v28 + 8))(&v22[v26], v27);
    }
  }

  v29 = v2 + v1[9];
  v30 = sub_24F92A708();
  v31 = *(*(v30 - 8) + 8);
  v31(v29, v30);
  v66 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  v32 = *(v66 + 20);
  v33 = sub_24F928818();
  v34 = *(*(v33 - 8) + 8);
  v34(&v29[v32], v33);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  v35 = v2 + v1[13];
  v36 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v65 = v31;

    v37 = &v35[*(v36 + 28)];
    v38 = type metadata accessor for GameActivityDraftGameInfo(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      (v68)(&v37[*(v38 + 28)], v70);
    }

    v39 = *(v36 + 36);
    v40 = sub_24F920A88();
    v41 = *(v40 - 8);
    v31 = v65;
    if (!(*(v41 + 48))(&v35[v39], 1, v40))
    {
      (*(v41 + 8))(&v35[v39], v40);
    }
  }

  v42 = v2 + v69[14];
  v31(v42, v30);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = &v42[v43[5]];
  sub_24E6F246C();
  sub_24E600C4C(*(v44 + 4), *(v44 + 5), *(v44 + 6), v44[56]);

  v45 = &v42[v43[8]];
  v31(v45, v30);
  v34(&v45[*(v66 + 20)], v33);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[9]]);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[10]]);
  v34(&v42[v43[11]], v33);
  if (*&v42[v43[12] + 8])
  {
  }

  v46 = &v42[v43[13]];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(&v46[v49], v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = &v46[v51[5]];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(&v52[v53], v54);
  }

  v55 = &v46[v51[6]];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(&v55[v56], v57);
  }

  v58 = &v46[v51[7]];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(&v58[v59], v60);
  }

  v61 = &v46[v51[8]];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(&v61[v62], v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6DEAC8()
{
  type metadata accessor for ChallengesReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24F6D02EC();
}

uint64_t sub_24F6DEC70()
{
  v1 = type metadata accessor for ChallengesReviewView(0);
  v67 = *(*(v1 - 1) + 80);
  v2 = (v0 + ((v67 + 16) & ~v67));
  if (*v2 >= 3)
  {
  }

  v3 = v2 + v1[6];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v70 = v6;
  v68 = *(v7 + 8);
  v68(&v3[v5]);

  if (*&v3[v4[9] + 8] != 1)
  {
  }

  v8 = &v3[v4[13]];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  v69 = v1;
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v7 + 48))(&v8[v12], 1, v70))
      {
        (v68)(&v8[v12], v70);
      }
    }

    v13 = &v8[*(v9 + 20)];
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v7 + 48))(&v13[v14], 1, v70))
      {
        (v68)(&v13[v14], v70);
      }
    }

    v1 = v69;
  }

  if (*&v3[v4[15] + 8])
  {
  }

  v15 = &v3[v4[16]];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game();
    (v68)(&v15[v17[18]], v70);
    v18 = v17[19];
    if (!(*(v7 + 48))(&v15[v18], 1, v70))
    {
      (v68)(&v15[v18], v70);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v15[v19], 1, v20))
    {
      (*(v21 + 8))(&v15[v19], v20);
    }
  }

  v22 = &v3[v4[17]];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    (v68)(&v22[v24[18]], v70);
    v25 = v24[19];
    if (!(*(v7 + 48))(&v22[v25], 1, v70))
    {
      (v68)(&v22[v25], v70);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v22[v26], 1, v27))
    {
      (*(v28 + 8))(&v22[v26], v27);
    }
  }

  v29 = v2 + v1[9];
  v30 = sub_24F92A708();
  v31 = *(*(v30 - 8) + 8);
  v31(v29, v30);
  v66 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  v32 = *(v66 + 20);
  v33 = sub_24F928818();
  v34 = *(*(v33 - 8) + 8);
  v34(&v29[v32], v33);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  v35 = v2 + v1[13];
  v36 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v65 = v31;

    v37 = &v35[*(v36 + 28)];
    v38 = type metadata accessor for GameActivityDraftGameInfo(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      (v68)(&v37[*(v38 + 28)], v70);
    }

    v39 = *(v36 + 36);
    v40 = sub_24F920A88();
    v41 = *(v40 - 8);
    v31 = v65;
    if (!(*(v41 + 48))(&v35[v39], 1, v40))
    {
      (*(v41 + 8))(&v35[v39], v40);
    }
  }

  v42 = v2 + v69[14];
  v31(v42, v30);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = &v42[v43[5]];
  sub_24E6F246C();
  sub_24E600C4C(*(v44 + 4), *(v44 + 5), *(v44 + 6), v44[56]);

  v45 = &v42[v43[8]];
  v31(v45, v30);
  v34(&v45[*(v66 + 20)], v33);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[9]]);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[10]]);
  v34(&v42[v43[11]], v33);
  if (*&v42[v43[12] + 8])
  {
  }

  v46 = &v42[v43[13]];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(&v46[v49], v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = &v46[v51[5]];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(&v52[v53], v54);
  }

  v55 = &v46[v51[6]];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(&v55[v56], v57);
  }

  v58 = &v46[v51[7]];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(&v58[v59], v60);
  }

  v61 = &v46[v51[8]];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(&v61[v62], v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6DF854()
{
  v1 = *(type metadata accessor for ChallengesReviewView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F6CB5A0(v2);
}

void sub_24F6DF8B4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_24F6DF8D4()
{
  type metadata accessor for ChallengesReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F6CB780();
}

uint64_t sub_24F6DF9C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA4C150 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000024FA7C4B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA7C4D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA7C4F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA4C190 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F6DFB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEC00000073656C75 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F656C7552797274 && a2 == 0xEE00736E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xEF736E6F6974704FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA7C510 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4C1B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA4C1D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

unint64_t sub_24F6DFECC()
{
  result = qword_27F24CF30;
  if (!qword_27F24CF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF18);
    sub_24F6DFF84();
    sub_24E602068(&qword_27F24CF58, &qword_27F24CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF30);
  }

  return result;
}

unint64_t sub_24F6DFF84()
{
  result = qword_27F24CF38;
  if (!qword_27F24CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF10);
    sub_24F6E0010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF38);
  }

  return result;
}

unint64_t sub_24F6E0010()
{
  result = qword_27F24CF40;
  if (!qword_27F24CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF08);
    sub_24E602068(&qword_27F24CF48, &qword_27F24CF50);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF40);
  }

  return result;
}

unint64_t sub_24F6E00F4()
{
  result = qword_27F24CF68;
  if (!qword_27F24CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF28);
    sub_24F6DFECC();
    sub_24E602068(&qword_27F214CD8, &qword_27F214CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF68);
  }

  return result;
}

double sub_24F6E01E8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 140) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for ChallengePreCreationView(0);
  v67 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v67 + 16) & ~v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F925218();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v2 + v1[7];

  v9 = *(v8 + 16);
  if (v9 >= 3)
  {
  }

  v10 = v2 + v1[9];

  v11 = type metadata accessor for Player(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v68 = *(v13 - 8);
  v14 = *(v68 + 8);
  v14(v10 + v12, v13);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v15 = v10 + v11[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet();
  v70 = v1;
  v71 = v2;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v65 = v14;
    v17 = type metadata accessor for CallProviderConversationHandle();
    v18 = *(*(v17 - 8) + 48);
    if (!v18(v15, 1, v17))
    {

      v19 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v15 + v19, 1, v13))
      {
        v65(v15 + v19, v13);
      }
    }

    v20 = v15 + *(v16 + 20);
    if (!v18(v20, 1, v17))
    {

      v21 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v20 + v21, 1, v13))
      {
        v65(v20 + v21, v13);
      }
    }

    v1 = v70;
    v14 = v65;
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v22 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v22, 1, PlayedTogetherInfo))
  {

    v24 = type metadata accessor for Game();
    v14(v22 + v24[18], v13);
    v25 = v24[19];
    if (!(*(v68 + 48))(v22 + v25, 1, v13))
    {
      v14(v22 + v25, v13);
    }

    v66 = v14;

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v2 = v71;
    v14 = v66;
  }

  v29 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v29, 1, ChallengeInfo))
  {

    v31 = type metadata accessor for Game();
    v14(v29 + v31[18], v13);
    v32 = v31[19];
    if (!(*(v68 + 48))(v29 + v32, 1, v13))
    {
      v14(v29 + v32, v13);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v29 + v33, 1, v34))
    {
      (*(v35 + 8))(v29 + v33, v34);
    }
  }

  v36 = v2 + v1[12];
  v37 = sub_24F92A708();
  v38 = *(*(v37 - 8) + 8);
  v38(v36, v37);
  v69 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  v39 = *(v69 + 20);
  v40 = sub_24F928818();
  v41 = *(*(v40 - 8) + 8);
  v41(v36 + v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  v42 = v2 + v1[16];
  v38(v42, v37);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = v42 + v43[5];
  sub_24E6F246C();
  sub_24E600C4C(*(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56));

  v45 = v42 + v43[8];
  v38(v45, v37);
  v41(v45 + *(v69 + 20), v40);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[9]);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[10]);
  v41(v42 + v43[11], v40);
  if (*(v42 + v43[12] + 8))
  {
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(v46 + v49, v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = v46 + v51[5];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(v52 + v53, v54);
  }

  v55 = v46 + v51[6];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v46 + v51[7];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  v61 = v46 + v51[8];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(v61 + v62, v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6E0EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengePreCreationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F6D1690(v4, a1);
}

unint64_t sub_24F6E0F90()
{
  result = qword_27F24CFF0;
  if (!qword_27F24CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFE8);
    sub_24F6E1048();
    sub_24E602068(&qword_27F223C00, &qword_27F223C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CFF0);
  }

  return result;
}

unint64_t sub_24F6E1048()
{
  result = qword_27F24CFF8;
  if (!qword_27F24CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFD8);
    sub_24E602068(&qword_27F24CFE0, &qword_27F24CFC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CFF8);
  }

  return result;
}

unint64_t sub_24F6E11AC()
{
  result = qword_27F24D028;
  if (!qword_27F24D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D018);
    sub_24E602068(&qword_27F24D020, &qword_27F24D008);
    sub_24E602068(&qword_27F21A718, &qword_27F21A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D028);
  }

  return result;
}

uint64_t sub_24F6E1290()
{
  type metadata accessor for ChallengePreCreationView(0);

  return sub_24F6D34AC();
}

uint64_t sub_24F6E130C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F34EFA4(v1, v2);
}

uint64_t sub_24F6E13B0()
{
  v1 = type metadata accessor for ChallengePreCreationView(0);
  v67 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v67 + 32) & ~v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F925218();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v2 + v1[7];

  v9 = *(v8 + 16);
  if (v9 >= 3)
  {
  }

  v10 = v2 + v1[9];

  v11 = type metadata accessor for Player(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v68 = *(v13 - 8);
  v14 = *(v68 + 8);
  v14(v10 + v12, v13);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v15 = v10 + v11[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet();
  v70 = v1;
  v71 = v2;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v65 = v14;
    v17 = type metadata accessor for CallProviderConversationHandle();
    v18 = *(*(v17 - 8) + 48);
    if (!v18(v15, 1, v17))
    {

      v19 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v15 + v19, 1, v13))
      {
        v65(v15 + v19, v13);
      }
    }

    v20 = v15 + *(v16 + 20);
    if (!v18(v20, 1, v17))
    {

      v21 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v20 + v21, 1, v13))
      {
        v65(v20 + v21, v13);
      }
    }

    v1 = v70;
    v14 = v65;
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v22 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v22, 1, PlayedTogetherInfo))
  {

    v24 = type metadata accessor for Game();
    v14(v22 + v24[18], v13);
    v25 = v24[19];
    if (!(*(v68 + 48))(v22 + v25, 1, v13))
    {
      v14(v22 + v25, v13);
    }

    v66 = v14;

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v2 = v71;
    v14 = v66;
  }

  v29 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v29, 1, ChallengeInfo))
  {

    v31 = type metadata accessor for Game();
    v14(v29 + v31[18], v13);
    v32 = v31[19];
    if (!(*(v68 + 48))(v29 + v32, 1, v13))
    {
      v14(v29 + v32, v13);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v29 + v33, 1, v34))
    {
      (*(v35 + 8))(v29 + v33, v34);
    }
  }

  v36 = v2 + v1[12];
  v37 = sub_24F92A708();
  v38 = *(*(v37 - 8) + 8);
  v38(v36, v37);
  v69 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  v39 = *(v69 + 20);
  v40 = sub_24F928818();
  v41 = *(*(v40 - 8) + 8);
  v41(v36 + v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  v42 = v2 + v1[16];
  v38(v42, v37);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = v42 + v43[5];
  sub_24E6F246C();
  sub_24E600C4C(*(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56));

  v45 = v42 + v43[8];
  v38(v45, v37);
  v41(v45 + *(v69 + 20), v40);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[9]);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[10]);
  v41(v42 + v43[11], v40);
  if (*(v42 + v43[12] + 8))
  {
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(v46 + v49, v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = v46 + v51[5];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(v52 + v53, v54);
  }

  v55 = v46 + v51[6];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v46 + v51[7];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  v61 = v46 + v51[8];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(v61 + v62, v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6E1FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengePreCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24F6D63D0(v4, v5, v6, a1);
}

unint64_t sub_24F6E2040()
{
  result = qword_27F24D0C0;
  if (!qword_27F24D0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D0B8);
    sub_24E9B581C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D0C0);
  }

  return result;
}

unint64_t sub_24F6E2118()
{
  result = qword_27F24D0E0;
  if (!qword_27F24D0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D0A8);
    sub_24F6E21D0();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D0E0);
  }

  return result;
}

unint64_t sub_24F6E21D0()
{
  result = qword_27F24D0E8;
  if (!qword_27F24D0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D0A0);
    sub_24F6E225C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D0E8);
  }

  return result;
}

unint64_t sub_24F6E225C()
{
  result = qword_27F24D0F0;
  if (!qword_27F24D0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D0D0);
    sub_24E602068(&qword_27F24D0F8, &qword_27F24D0C8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D0F0);
  }

  return result;
}

uint64_t sub_24F6E2334()
{
  v1 = type metadata accessor for ChallengePreCreationView(0);
  v67 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v67 + 32) & ~v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F925218();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v2 + v1[7];

  v9 = *(v8 + 16);
  if (v9 >= 3)
  {
  }

  v10 = v2 + v1[9];

  v11 = type metadata accessor for Player(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v68 = *(v13 - 8);
  v14 = *(v68 + 8);
  v14(v10 + v12, v13);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v15 = v10 + v11[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet();
  v70 = v1;
  v71 = v2;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v65 = v14;
    v17 = type metadata accessor for CallProviderConversationHandle();
    v18 = *(*(v17 - 8) + 48);
    if (!v18(v15, 1, v17))
    {

      v19 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v15 + v19, 1, v13))
      {
        v65(v15 + v19, v13);
      }
    }

    v20 = v15 + *(v16 + 20);
    if (!v18(v20, 1, v17))
    {

      v21 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v68 + 48))(v20 + v21, 1, v13))
      {
        v65(v20 + v21, v13);
      }
    }

    v1 = v70;
    v14 = v65;
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v22 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v22, 1, PlayedTogetherInfo))
  {

    v24 = type metadata accessor for Game();
    v14(v22 + v24[18], v13);
    v25 = v24[19];
    if (!(*(v68 + 48))(v22 + v25, 1, v13))
    {
      v14(v22 + v25, v13);
    }

    v66 = v14;

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v2 = v71;
    v14 = v66;
  }

  v29 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v29, 1, ChallengeInfo))
  {

    v31 = type metadata accessor for Game();
    v14(v29 + v31[18], v13);
    v32 = v31[19];
    if (!(*(v68 + 48))(v29 + v32, 1, v13))
    {
      v14(v29 + v32, v13);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v29 + v33, 1, v34))
    {
      (*(v35 + 8))(v29 + v33, v34);
    }
  }

  v36 = v2 + v1[12];
  v37 = sub_24F92A708();
  v38 = *(*(v37 - 8) + 8);
  v38(v36, v37);
  v69 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  v39 = *(v69 + 20);
  v40 = sub_24F928818();
  v41 = *(*(v40 - 8) + 8);
  v41(v36 + v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  v42 = v2 + v1[16];
  v38(v42, v37);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = v42 + v43[5];
  sub_24E6F246C();
  sub_24E600C4C(*(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56));

  v45 = v42 + v43[8];
  v38(v45, v37);
  v41(v45 + *(v69 + 20), v40);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[9]);
  __swift_destroy_boxed_opaque_existential_1(v42 + v43[10]);
  v41(v42 + v43[11], v40);
  if (*(v42 + v43[12] + 8))
  {
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(v46 + v49, v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = v46 + v51[5];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(v52 + v53, v54);
  }

  v55 = v46 + v51[6];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v46 + v51[7];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  v61 = v46 + v51[8];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(v61 + v62, v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6E2F50(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengePreCreationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F6D67A4(a1, v6, v7, v1 + v5);
}

unint64_t sub_24F6E3058()
{
  result = qword_27F24D108;
  if (!qword_27F24D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D108);
  }

  return result;
}

unint64_t sub_24F6E30E8()
{
  result = qword_27F24D158;
  if (!qword_27F24D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D128);
    sub_24F6E3174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D158);
  }

  return result;
}

unint64_t sub_24F6E3174()
{
  result = qword_27F24D160;
  if (!qword_27F24D160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D168);
    sub_24E602068(&qword_27F24D170, &qword_27F24D178);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D160);
  }

  return result;
}

unint64_t sub_24F6E3260()
{
  result = qword_27F24D1C0;
  if (!qword_27F24D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223EA0);
    sub_24E62FBF4();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D1C0);
  }

  return result;
}

unint64_t sub_24F6E3318()
{
  result = qword_27F24D1C8;
  if (!qword_27F24D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D1A0);
    sub_24F6E33A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D1C8);
  }

  return result;
}

unint64_t sub_24F6E33A4()
{
  result = qword_27F24D1D0;
  if (!qword_27F24D1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223EA8);
    sub_24F6E3260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D1D0);
  }

  return result;
}

id sub_24F6E3438(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_24F6E3448()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE50);
  sub_24F6DDCA4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6E3520()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF28);
  sub_24F6DFECC();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  sub_24F6E00F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6E3608()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CFD8);
  sub_24E602068(&qword_27F24CFE0, &qword_27F24CFC8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  sub_24F6E0F90();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6E37A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24F6E3868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for GameLibraryMenuShelfIntent()
{
  result = qword_27F24D1E8;
  if (!qword_27F24D1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6E3958()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F6E39DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D208);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6E4064();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for GameLibraryMenuShelfIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6E3BB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v23);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1F8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v18 - v6;
  v8 = type metadata accessor for GameLibraryMenuShelfIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6E4064();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v8;
  v20 = a1;
  v11 = v22;
  v27 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v18[1] = v12;
  v26 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  v13 = v19;
  sub_24E61C0A8(v5, v10 + *(v19 + 20));
  v25 = 2;
  v14 = sub_24F92CC38();
  v15 = v20;
  v16 = v14;
  (*(v11 + 8))(v7, v24);
  *(v10 + *(v13 + 24)) = v16 & 1;
  sub_24F6E40B8(v10, v21);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_24F6E411C(v10, type metadata accessor for GameLibraryMenuShelfIntent);
}

uint64_t sub_24F6E3F20()
{
  v1 = 0x726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x656D6147736168;
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

uint64_t sub_24F6E3F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6E4294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6E3F9C(uint64_t a1)
{
  v2 = sub_24F6E4064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6E3FD8(uint64_t a1)
{
  v2 = sub_24F6E4064();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F6E4064()
{
  result = qword_27F24D200;
  if (!qword_27F24D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D200);
  }

  return result;
}

uint64_t sub_24F6E40B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMenuShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6E411C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6E4190()
{
  result = qword_27F24D210;
  if (!qword_27F24D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D210);
  }

  return result;
}

unint64_t sub_24F6E41E8()
{
  result = qword_27F24D218;
  if (!qword_27F24D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D218);
  }

  return result;
}

unint64_t sub_24F6E4240()
{
  result = qword_27F24D220;
  if (!qword_27F24D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D220);
  }

  return result;
}

uint64_t sub_24F6E4294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6147736168 && a2 == 0xE700000000000000)
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

uint64_t sub_24F6E43D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D228);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D230);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D238);
  sub_24F6E46A8(v0, &v7[*(v8 + 44)]);
  v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D240) + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  LOBYTE(v11) = sub_24F9257F8();
  sub_24F923318();
  v13 = &v7[*(v5 + 36)];
  *v13 = v11;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_24F927558();
  v18 = MEMORY[0x277CE1340];
  v19 = MEMORY[0x277CE1350];
  sub_24F924B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D248);
  sub_24F6E4CB4();
  v21[0] = v19;
  v21[1] = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F6E4E24();
  sub_24F926B08();
  (*(v2 + 8))(v4, v1);
  return sub_24F6E50D8(v7);
}

uint64_t sub_24F6E46A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = (&v35 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2A8);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  v12 = *(a1 + 24);
  v50 = *(a1 + 32);
  v13 = v50;
  v15 = *(a1 + 8);
  v48[0] = *a1;
  v14 = v48[0];
  v48[1] = v15;
  LOBYTE(a1) = *(a1 + 16);
  v49 = a1;
  v47 = v12;
  sub_24F6E51B0(&v50, v42);
  sub_24F6E520C(v48, v42);
  sub_24E60169C(&v47, v42, &qword_27F24D2B0);

  sub_24E5FD138(v14, v15, a1 & 1);

  sub_24E600B40(v14, v15, a1 & 1);

  v16 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v42[0] = v13;
  v42[1] = v14;
  v42[2] = v15;
  v43 = a1 & 1;
  v44 = v12;
  v45 = KeyPath;
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2B8);
  sub_24F6E5270();
  sub_24F9268B8();

  sub_24E600B40(v14, v15, a1 & 1);

  v18 = sub_24F926DF8();
  LODWORD(a1) = sub_24F9251C8();
  v19 = v40;
  v20 = v40 + *(v4 + 44);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v22 = *MEMORY[0x277CE13B8];
  v23 = sub_24F927748();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = a1;
  *v19 = v18;
  v25 = v35;
  v24 = v36;
  v26 = *(v36 + 16);
  v27 = v41;
  v28 = v37;
  v26(v35, v41, v37);
  v29 = v19;
  v30 = v38;
  sub_24E60169C(v29, v38, &qword_27F214418);
  v31 = v39;
  v26(v39, v25, v28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2E8);
  sub_24E60169C(v30, &v31[*(v32 + 48)], &qword_27F214418);
  sub_24F6E53D8(v40);
  v33 = *(v24 + 8);
  v33(v27, v28);
  sub_24F6E53D8(v30);
  return (v33)(v25, v28);
}

uint64_t sub_24F6E4AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F927618();
  sub_24F9238C8();
  sub_24F6E5140(a1, a2);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2A0) + 36));
  *v4 = v13;
  v4[1] = v14;
  v4[2] = v15;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v5 = sub_24F926D08();

  LOBYTE(a1) = sub_24F925808();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D290) + 36);
  *v6 = v5;
  *(v6 + 8) = a1;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D280) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_24F924B38();
  v10 = *(*(v9 - 8) + 104);
  v10(v7, v8, v9);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)) = 0;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D248) + 36);
  v10(v11, v8, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0);
  *(v11 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_24F6E4CB4()
{
  result = qword_27F24D250;
  if (!qword_27F24D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D230);
    sub_24F6E4D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D250);
  }

  return result;
}

unint64_t sub_24F6E4D40()
{
  result = qword_27F24D258;
  if (!qword_27F24D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D240);
    sub_24E602068(&qword_27F24D260, &qword_27F24D268);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D258);
  }

  return result;
}

unint64_t sub_24F6E4E24()
{
  result = qword_27F24D270;
  if (!qword_27F24D270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D248);
    sub_24F6E4EDC();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D270);
  }

  return result;
}

unint64_t sub_24F6E4EDC()
{
  result = qword_27F24D278;
  if (!qword_27F24D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D280);
    sub_24F6E4F94();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D278);
  }

  return result;
}

unint64_t sub_24F6E4F94()
{
  result = qword_27F24D288;
  if (!qword_27F24D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D290);
    sub_24F6E504C();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D288);
  }

  return result;
}

unint64_t sub_24F6E504C()
{
  result = qword_27F24D298;
  if (!qword_27F24D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D2A0);
    sub_24F6E4CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D298);
  }

  return result;
}

uint64_t sub_24F6E50D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6E5140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F6E5270()
{
  result = qword_27F24D2C0;
  if (!qword_27F24D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D2B8);
    sub_24F6E5328();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D2C0);
  }

  return result;
}

unint64_t sub_24F6E5328()
{
  result = qword_27F24D2C8;
  if (!qword_27F24D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D2D0);
    sub_24E602068(&qword_27F24D2D8, &qword_27F24D2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D2C8);
  }

  return result;
}

uint64_t sub_24F6E53D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6E5440()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D248);
  sub_24F6E4CB4();
  swift_getOpaqueTypeConformance2();
  sub_24F6E4E24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6E552C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E5624()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E5710()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E580C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E5914()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E5A28()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::ActivityFeedItemRelationships __swiftcall ActivityFeedItemRelationships.init(games:players:achievements:leaderboards:)(Swift::OpaquePointer games, Swift::OpaquePointer players, Swift::OpaquePointer achievements, Swift::OpaquePointer leaderboards)
{
  v4->_rawValue = games._rawValue;
  v4[1]._rawValue = players._rawValue;
  v4[2]._rawValue = achievements._rawValue;
  v4[3]._rawValue = leaderboards._rawValue;
  result.leaderboards = leaderboards;
  result.achievements = achievements;
  result.players = players;
  result.games = games;
  return result;
}

void __swiftcall ActivityFeedItemRelationshipGame.init(id:name:image:adamId:iconUrlString:iconPlatform:iconWidth:iconHeight:)(GameStoreKit::ActivityFeedItemRelationshipGame *__return_ptr retstr, Swift::String_optional id, Swift::String_optional name, Swift::String_optional image, Swift::String_optional adamId, Swift::String_optional iconUrlString, GameStoreKit::ActivityFeedItemRelationshipGame::Platform_optional iconPlatform, Swift::Float_optional *iconWidth, Swift::Float_optional *iconHeight)
{
  v9 = *iconPlatform.value;
  *&retstr->id.value._object = id;
  *&retstr->name.value._object = name;
  *&retstr->image.value._object = image;
  retstr->adamId = adamId;
  retstr->iconUrlString = iconUrlString;
  retstr->iconPlatform.value = v9;
  *(&retstr->iconWidth.value + 3) = iconWidth;
  BYTE2(retstr->iconHeight.value) = BYTE4(iconWidth) & 1;
  *(&retstr->iconHeight + 6) = iconHeight;
  LOBYTE(retstr->id.value._countAndFlagsBits) = BYTE4(iconHeight) & 1;
}

uint64_t ActivityFeedItemRelationshipAchievement.init(id:name:image:description:timestamp:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  v20 = (a9 + v19[7]);
  v21 = (a9 + v19[8]);
  v22 = (a9 + v19[9]);
  *v20 = a1;
  v20[1] = a2;
  *v21 = a3;
  v21[1] = a4;
  *v22 = a5;
  v22[1] = a6;
  *a9 = a7;
  a9[1] = a8;
  result = sub_24E6009C8(a10, a9 + v19[5], &unk_27F22EC30);
  *(a9 + v19[6]) = a11;
  return result;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.init(player:score:rank:gained:message:symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
  v19 = (a9 + v18[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + v18[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v18[12]);
  *v21 = 0;
  v21[1] = 0;
  result = sub_24E6009C8(a1, a9, &qword_27F247948);
  v23 = (a9 + v18[5]);
  *v23 = a2;
  v23[1] = a3;
  *(a9 + v18[6]) = a4;
  *(a9 + v18[7]) = a5;
  v24 = (a9 + v18[8]);
  *v24 = a6;
  v24[1] = a7;
  v25 = (a9 + v18[9]);
  *v25 = a8;
  v25[1] = a10;
  return result;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.init(id:name:image:scores:type:leaderboard:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a8;
  v19 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  v20 = (a9 + v19[7]);
  v21 = (a9 + v19[8]);
  v22 = (a9 + v19[9]);
  *v20 = a1;
  v20[1] = a2;
  *v21 = a3;
  v21[1] = a4;
  *v22 = a5;
  v22[1] = a6;
  *a9 = a7;
  *(a9 + 8) = v18;
  return sub_24E6009C8(a10, a9 + v19[6], &qword_27F212890);
}

unint64_t ActivityFeedItemRelationships.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x73656D6167;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2F0);
  v8 = sub_24F6EBD90(&qword_27F24D2F8, sub_24F6E60B8);
  *(inited + 48) = v4;
  *(inited + 80) = v8;
  *(inited + 88) = 0x73726579616C70;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D308);
  v9 = sub_24F6E610C();
  *(inited + 104) = v3;
  *(inited + 136) = v9;
  strcpy((inited + 144), "achievements");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D320);
  v10 = sub_24F6E61E0();
  *(inited + 160) = v6;
  *(inited + 192) = v10;
  strcpy((inited + 200), "leaderboards");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D338);
  *(inited + 248) = sub_24F6E62DC();
  *(inited + 216) = v5;

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

unint64_t sub_24F6E60B8()
{
  result = qword_27F24D300;
  if (!qword_27F24D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D300);
  }

  return result;
}

unint64_t sub_24F6E610C()
{
  result = qword_27F24D310;
  if (!qword_27F24D310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D308);
    sub_24F6E6294(&qword_27F24D318, type metadata accessor for ActivityFeedItemRelationshipPlayer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D310);
  }

  return result;
}

unint64_t sub_24F6E61E0()
{
  result = qword_27F24D328;
  if (!qword_27F24D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D320);
    sub_24F6E6294(&qword_27F24D330, type metadata accessor for ActivityFeedItemRelationshipAchievement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D328);
  }

  return result;
}

uint64_t sub_24F6E6294(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F6E62DC()
{
  result = qword_27F24D340;
  if (!qword_27F24D340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D338);
    sub_24F6E6294(&qword_27F24D348, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D340);
  }

  return result;
}

uint64_t sub_24F6E6390()
{
  v1 = 0x73656D6167;
  v2 = 0x6D65766569686361;
  if (*v0 != 2)
  {
    v2 = 0x6F6272656461656CLL;
  }

  if (*v0)
  {
    v1 = 0x73726579616C70;
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

uint64_t sub_24F6E6418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6EDA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6E6440(uint64_t a1)
{
  v2 = sub_24F6EBACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6E647C(uint64_t a1)
{
  v2 = sub_24F6EBACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationships.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EBACC();

  sub_24F92D128();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2F0);
  sub_24F6EBD90(&qword_27F24D360, sub_24F6EBB20);
  sub_24F92CD48();

  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D308);
    sub_24F6EBB74();
    sub_24F92CD48();
    v18 = v12;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D320);
    sub_24F6EBC28();
    sub_24F92CD48();
    v18 = v11;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D338);
    sub_24F6EBCDC();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ActivityFeedItemRelationships.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D3A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EBACC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D2F0);
  v17 = 0;
  sub_24F6EBD90(&qword_27F24D3A8, sub_24F6EBE08);
  sub_24F92CC68();
  v9 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D308);
  v17 = 1;
  sub_24F6EBE5C();
  sub_24F92CC68();
  v16 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D320);
  v17 = 2;
  sub_24F6EBF10();
  sub_24F92CC68();
  v15 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D338);
  v17 = 3;
  sub_24F6EBFC4();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v13 = v15;
  v12 = v16;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t ActivityFeedItemRelationshipPlayer.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F6E6294(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F6EC3C4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F212FB0);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F6E6CEC(uint64_t a1)
{
  v2 = sub_24F6EC078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6E6D28(uint64_t a1)
{
  v2 = sub_24F6EC078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationshipPlayer.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC078();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24F6E6294(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ActivityFeedItemRelationshipPlayer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D3F8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC078();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v15;
    sub_24F6E6294(&qword_27F213E38, type metadata accessor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v16 + 8))(v8, v6);
    sub_24F6EC0CC(v13, v11, type metadata accessor for Player);
    sub_24F6EC0CC(v11, v12, type metadata accessor for ActivityFeedItemRelationshipPlayer);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6E7168(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC078();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24F6E6294(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F6E72E0@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F6E6294(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F6EC3C4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F212FB0);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

GameStoreKit::ActivityFeedItemRelationshipGame::Platform_optional __swiftcall ActivityFeedItemRelationshipGame.Platform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFeedItemRelationshipGame.Platform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E696665646E75;
  v3 = 1397716596;
  v4 = 0x534F6863746177;
  if (v1 != 4)
  {
    v4 = 0x534F6E6F69736976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 5459817;
  if (v1 != 1)
  {
    v5 = 0x534F63616DLL;
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

uint64_t sub_24F6E7544()
{
  sub_24F92B218();
}

void sub_24F6E7638(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656E696665646E75;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (v2 != 4)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5459817;
  if (v2 != 1)
  {
    v10 = 0x534F63616DLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t ActivityFeedItemRelationshipGame.adamId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFeedItemRelationshipGame.iconUrlString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityFeedItemRelationshipGame.id.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ActivityFeedItemRelationshipGame.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ActivityFeedItemRelationshipGame.name.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ActivityFeedItemRelationshipGame.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ActivityFeedItemRelationshipGame.image.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t ActivityFeedItemRelationshipGame.image.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t ActivityFeedItemRelationshipGame.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v20 = *v1;
  v28 = v1[1];
  v2 = v1[3];
  v26 = v1[2];
  v21 = *(v1 + 40);
  v22 = *(v1 + 9);
  v24 = *(v1 + 11);
  v25 = *(v1 + 32);
  v23 = *(v1 + 48);
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[10];
  v6 = v1[12];
  v18 = v1[9];
  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v8;
  v9 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v10 = v2;
  *(inited + 80) = v9;
  *(inited + 88) = 1701667182;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = v18;
  *(inited + 112) = v5;
  v11 = 0xE500000000000000;
  *(inited + 144) = 0x6567616D69;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v19;
  *(inited + 168) = v6;
  *(inited + 200) = 0x64496D616461;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v20;
  *(inited + 224) = v28;
  strcpy((inited + 256), "iconUrlString");
  *(inited + 270) = -4864;
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v26;
  *(inited + 280) = v10;
  *(inited + 312) = 0x746469576E6F6369;
  *(inited + 320) = 0xE900000000000068;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D400);
  *(inited + 352) = v12;
  v13 = sub_24F6EC134();
  *(inited + 328) = v22;
  *(inited + 332) = v21;
  *(inited + 360) = v13;
  *(inited + 368) = 0x676965486E6F6369;
  *(inited + 376) = 0xEA00000000007468;
  *(inited + 408) = v12;
  *(inited + 416) = v13;
  *(inited + 384) = v24;
  *(inited + 388) = v23;
  strcpy((inited + 424), "iconPlatform");
  *(inited + 437) = 0;
  *(inited + 438) = -5120;
  if (v25 <= 2)
  {
    if (v25)
    {
      v14 = a1;
      if (v25 == 1)
      {
        v11 = 0xE300000000000000;
        v15 = 5459817;
      }

      else
      {
        v15 = 0x534F63616DLL;
      }
    }

    else
    {
      v15 = 0x656E696665646E75;
      v11 = 0xE900000000000064;
      v14 = a1;
    }
  }

  else if (v25 > 4)
  {
    v14 = a1;
    if (v25 == 5)
    {
      v11 = 0xE800000000000000;
      v15 = 0x534F6E6F69736976;
    }

    else
    {
      v15 = 0;
      v11 = 0;
    }
  }

  else
  {
    v14 = a1;
    if (v25 == 3)
    {
      v11 = 0xE400000000000000;
      v15 = 1397716596;
    }

    else
    {
      v11 = 0xE700000000000000;
      v15 = 0x534F6863746177;
    }
  }

  *(inited + 464) = v8;
  *(inited + 472) = v9;
  *(inited + 440) = v15;
  *(inited + 448) = v11;

  v16 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  v14[4] = result;
  *v14 = v16;
  return result;
}

uint64_t sub_24F6E7DA0()
{
  v1 = *v0;
  v2 = 0x64496D616461;
  v3 = 1701667182;
  if (v1 != 6)
  {
    v3 = 0x6567616D69;
  }

  v4 = 0x676965486E6F6369;
  if (v1 != 4)
  {
    v4 = 25705;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74616C506E6F6369;
  if (v1 != 2)
  {
    v5 = 0x746469576E6F6369;
  }

  if (*v0)
  {
    v2 = 0x536C72556E6F6369;
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

uint64_t sub_24F6E7E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6EDC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6E7EC4(uint64_t a1)
{
  v2 = sub_24F6EC20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6E7F00(uint64_t a1)
{
  v2 = sub_24F6EC20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationshipGame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D418);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v5;
  v23 = *(v1 + 32);
  v22 = *(v1 + 36);
  v21 = *(v1 + 40);
  v19 = *(v1 + 44);
  v18 = *(v1 + 48);
  v6 = *(v1 + 64);
  v17[2] = *(v1 + 56);
  v17[3] = v6;
  v7 = *(v1 + 80);
  v17[0] = *(v1 + 72);
  v17[1] = v7;
  v8 = *(v1 + 96);
  v20 = *(v1 + 88);
  v9 = a1[3];
  v10 = a1;
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_24F6EC20C();
  sub_24F92D128();
  v37 = 0;
  v13 = v26;
  sub_24F92CCA8();
  if (v13)
  {
    return (*(v4 + 8))(v12, v3);
  }

  v15 = v23;
  v16 = v21;
  v26 = v8;
  v36 = 1;
  sub_24F92CCA8();
  v35 = v15;
  v34 = 2;
  sub_24F6EC260();
  sub_24F92CCF8();
  v33 = 3;
  v30 = v16;
  sub_24F92CCD8();
  v32 = 4;
  v29 = v18;
  sub_24F92CCD8();
  v31 = 5;
  sub_24F92CCA8();
  v28 = 6;
  sub_24F92CCA8();
  v27 = 7;
  sub_24F92CCA8();
  return (*(v4 + 8))(v12, 0);
}

uint64_t ActivityFeedItemRelationshipGame.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC20C();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v51[0]) = 0;
    v9 = sub_24F92CBC8();
    v11 = v10;
    v12 = v9;
    LOBYTE(v51[0]) = 1;
    v13 = sub_24F92CBC8();
    *(&v44 + 1) = v14;
    *&v44 = v13;
    LOBYTE(v45[0]) = 2;
    sub_24F6EC2B4();
    sub_24F92CC18();
    v43 = LOBYTE(v51[0]);
    LOBYTE(v51[0]) = 3;
    v41 = sub_24F92CBF8();
    v65 = BYTE4(v41) & 1;
    LOBYTE(v51[0]) = 4;
    v40 = sub_24F92CBF8();
    v64 = BYTE4(v40) & 1;
    LOBYTE(v51[0]) = 5;
    v15 = sub_24F92CBC8();
    v17 = v16;
    v39 = v15;
    LOBYTE(v51[0]) = 6;
    v38 = sub_24F92CBC8();
    v42 = v18;
    v66 = 7;
    v19 = sub_24F92CBC8();
    v20 = *(v6 + 8);
    v37 = v19;
    v21 = v8;
    v23 = v22;
    v20(v21, v5);
    v36 = v12;
    *&v45[0] = v12;
    *(&v45[0] + 1) = v11;
    v45[1] = v44;
    LOBYTE(v46) = v43;
    DWORD1(v46) = v41;
    v35 = v65;
    BYTE8(v46) = v65;
    HIDWORD(v46) = v40;
    v34 = v64;
    LOBYTE(v47) = v64;
    v24 = v39;
    *(&v47 + 1) = v39;
    *&v48 = v17;
    v25 = v38;
    v26 = v42;
    *(&v48 + 1) = v38;
    *&v49 = v42;
    *(&v49 + 1) = v37;
    v50 = v23;
    v27 = v44;
    *a2 = v45[0];
    *(a2 + 16) = v27;
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    *(a2 + 96) = v23;
    *(a2 + 64) = v30;
    *(a2 + 80) = v31;
    *(a2 + 32) = v28;
    *(a2 + 48) = v29;
    sub_24F6EC308(v45, v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v51[0] = v36;
    v51[1] = v11;
    v52 = v44;
    v53 = v43;
    v54 = v41;
    v55 = v35;
    v56 = v40;
    v57 = v34;
    v58 = v24;
    v59 = v17;
    v60 = v25;
    v61 = v26;
    v62 = v37;
    v63 = v23;
    return sub_24F6EC340(v51);
  }
}

uint64_t sub_24F6E8788()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24F6E87B8()
{
  v1 = *(v0 + 88);

  return v1;
}

GameStoreKit::ActivityFeedLeaderboardType_optional __swiftcall ActivityFeedLeaderboardType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ActivityFeedLeaderboardType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 0x73646E65697266;
  }
}

uint64_t sub_24F6E88CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61626F6C67;
  }

  else
  {
    v3 = 0x73646E65697266;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61626F6C67;
  }

  else
  {
    v5 = 0x73646E65697266;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_24F6E8970()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E89F0()
{
  sub_24F92B218();
}

uint64_t sub_24F6E8A5C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F6E8AD8@<X0>(char *a1@<X8>)
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

void sub_24F6E8B38(uint64_t *a1@<X8>)
{
  v2 = 0x73646E65697266;
  if (*v1)
  {
    v2 = 0x6C61626F6C67;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActivityFeedItemRelationshipAchievement.description.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ActivityFeedItemRelationshipAchievement.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  v4 = (v1 + v3[7]);
  v6 = *v4;
  v5 = v4[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v7;
  v8 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 80) = v8;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v9 = (v1 + v3[8]);
  v10 = *v9;
  v11 = v9[1];
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = 0x6567616D69;
  *(inited + 152) = 0xE500000000000000;
  v12 = (v1 + v3[9]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v13;
  *(inited + 168) = v14;
  *(inited + 200) = 0x7470697263736564;
  *(inited + 208) = 0xEB000000006E6F69;
  v15 = *v1;
  v16 = v1[1];
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 256) = 0x6D617473656D6974;
  *(inited + 264) = 0xE900000000000070;
  v17 = v3[5];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  *(inited + 304) = sub_24E7594F8(&qword_27F21B760, &unk_27F22EC30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E60169C(v1 + v17, boxed_opaque_existential_1, &unk_27F22EC30);
  *(inited + 312) = 0x73736572676F7270;
  *(inited + 320) = 0xE800000000000000;
  v19 = *(v1 + v3[6]);
  *(inited + 352) = MEMORY[0x277D83B88];
  *(inited + 360) = sub_24E65901C();
  *(inited + 328) = v19;

  v20 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v20;
  return result;
}

uint64_t sub_24F6E90CC()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  v3 = 25705;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x73736572676F7270;
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

uint64_t sub_24F6E917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6EDEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6E91A4(uint64_t a1)
{
  v2 = sub_24F6EC370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6E91E0(uint64_t a1)
{
  v2 = sub_24F6EC370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationshipAchievement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC370();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
    v8[14] = 1;
    sub_24F91F648();
    sub_24F6E6294(&qword_27F21BB08, MEMORY[0x277CC9578]);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD38();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCA8();
    v8[10] = 5;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityFeedItemRelationshipAchievement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D450);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F6EC370();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v35 = 0;
    *v12 = sub_24F92CBC8();
    v12[1] = v14;
    sub_24F91F648();
    v34 = 1;
    sub_24F6E6294(&qword_27F21B778, MEMORY[0x277CC9578]);
    sub_24F92CC18();
    sub_24E6009C8(v6, v12 + v10[5], &unk_27F22EC30);
    v33 = 2;
    *(v12 + v10[6]) = sub_24F92CC58();
    v32 = 3;
    v15 = sub_24F92CBC8();
    v16 = (v12 + v10[7]);
    *v16 = v15;
    v16[1] = v17;
    v31 = 4;
    v18 = sub_24F92CBC8();
    v19 = (v12 + v10[8]);
    *v19 = v18;
    v19[1] = v20;
    v30 = 5;
    v21 = sub_24F92CBC8();
    v23 = v22;
    v24 = (v12 + v10[9]);
    (*(v7 + 8))(v9, v28);
    *v24 = v21;
    v24[1] = v23;
    sub_24F6EC3C4(v12, v27, type metadata accessor for ActivityFeedItemRelationshipAchievement);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_24F6EC534(v12, type metadata accessor for ActivityFeedItemRelationshipAchievement);
  }
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.score.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 20));

  return v1;
}

uint64_t sub_24F6E9A68(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_24F6E9AC8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 36));

  return v2;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 40));

  return v1;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 44));

  return v1;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 48));

  return v1;
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.image.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v4 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
  v5 = (v1 + v4[10]);
  v6 = *v5;
  v7 = v5[1];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v8;
  v9 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = v9;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v10 = (v1 + v4[11]);
  v11 = *v10;
  v31 = v10[1];
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v11;
  *(inited + 112) = v31;
  *(inited + 144) = 0x6567616D69;
  *(inited + 152) = 0xE500000000000000;
  v12 = (v1 + v4[12]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v13;
  *(inited + 168) = v14;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948);
  *(inited + 248) = sub_24F6EC42C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F247948);
  *(inited + 256) = 0x65726F6373;
  *(inited + 264) = 0xE500000000000000;
  v16 = (v2 + v4[5]);
  v17 = *v16;
  v18 = v16[1];
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v17;
  *(inited + 280) = v18;
  *(inited + 312) = 1802396018;
  *(inited + 320) = 0xE400000000000000;
  v19 = *(v2 + v4[6]);
  *(inited + 352) = MEMORY[0x277D83B88];
  v20 = sub_24E65901C();
  *(inited + 328) = v19;
  *(inited + 360) = v20;
  *(inited + 368) = 0x64656E696167;
  *(inited + 376) = 0xE600000000000000;
  v21 = *(v2 + v4[7]);
  v22 = MEMORY[0x277D22598];
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 416) = v22;
  *(inited + 384) = v21;
  *(inited + 424) = 0x6567617373656DLL;
  *(inited + 432) = 0xE700000000000000;
  v23 = (v2 + v4[8]);
  v24 = *v23;
  v25 = v23[1];
  *(inited + 464) = v8;
  *(inited + 472) = v9;
  *(inited + 440) = v24;
  *(inited + 448) = v25;
  *(inited + 480) = 0x6C6F626D7973;
  *(inited + 488) = 0xE600000000000000;
  v26 = (v2 + v4[9]);
  v28 = *v26;
  v27 = v26[1];
  *(inited + 520) = v8;
  *(inited + 528) = v9;
  *(inited + 496) = v28;
  *(inited + 504) = v27;

  v29 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v29;
  return result;
}

uint64_t sub_24F6EA094(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726579616C70;
    v6 = 1802396018;
    if (a1 != 2)
    {
      v6 = 0x64656E696167;
    }

    if (a1)
    {
      v5 = 0x65726F6373;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1701667182;
    if (a1 != 7)
    {
      v2 = 0x6567616D69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6567617373656DLL;
    if (a1 != 4)
    {
      v3 = 0x6C6F626D7973;
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

uint64_t sub_24F6EA188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6EE09C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6EA1B0(uint64_t a1)
{
  v2 = sub_24F6EC4E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6EA1EC(uint64_t a1)
{
  v2 = sub_24F6EC4E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC4E0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
  sub_24F6E6294(&qword_27F24D378, type metadata accessor for ActivityFeedItemRelationshipPlayer);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CD38();
    v8[12] = 3;
    sub_24F92CD18();
    v8[11] = 4;
    sub_24F92CCA8();
    v8[10] = 5;
    sub_24F92CCA8();
    v8[9] = 6;
    sub_24F92CCA8();
    v8[8] = 7;
    sub_24F92CCA8();
    v8[7] = 8;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityFeedItemRelationshipLeaderboard.LeaderboardScore.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D470);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F6EC4E0();
  v14 = v9;
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v15 = v47;
    type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
    v58 = 0;
    sub_24F6E6294(&qword_27F24D3C0, type metadata accessor for ActivityFeedItemRelationshipPlayer);
    v16 = v48;
    v17 = v14;
    sub_24F92CC18();
    v18 = v12;
    sub_24E6009C8(v6, v12, &qword_27F247948);
    v57 = 1;
    v19 = sub_24F92CBC8();
    v20 = v10;
    v21 = &v18[*(v10 + 20)];
    *v21 = v19;
    v21[1] = v22;
    v56 = 2;
    *&v18[*(v10 + 24)] = sub_24F92CC58();
    v55 = 3;
    v23 = v15;
    v18[v20[7]] = sub_24F92CC38() & 1;
    v54 = 4;
    v24 = sub_24F92CBC8();
    v25 = &v18[v20[8]];
    *v25 = v24;
    v25[1] = v26;
    v53 = 5;
    v27 = sub_24F92CBC8();
    v28 = &v18[v20[9]];
    *v28 = v27;
    v28[1] = v29;
    v52 = 6;
    v30 = sub_24F92CBC8();
    v31 = &v18[v20[10]];
    *v31 = v30;
    v31[1] = v32;
    v51 = 7;
    v33 = sub_24F92CBC8();
    v45 = 0;
    v34 = &v18[v20[11]];
    *v34 = v33;
    v34[1] = v35;
    v50 = 8;
    v36 = sub_24F92CBC8();
    v44 = v37;
    v38 = v36;
    v39 = v18;
    v40 = &v18[v20[12]];
    (*(v23 + 8))(v17, v16);
    v41 = v44;
    *v40 = v38;
    v40[1] = v41;
    sub_24F6EC3C4(v39, v46, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_24F6EC534(v39, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
  }
}

uint64_t sub_24F6EABE8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_24F6EAC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_24F6EAD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_24F6EADD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

unint64_t ActivityFeedItemRelationshipLeaderboard.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v3 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  v4 = (v1 + v3[7]);
  v6 = *v4;
  v5 = v4[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 72) = v7;
  v8 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 80) = v8;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v9 = (v1 + v3[8]);
  v10 = *v9;
  v11 = v9[1];
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = 0x6567616D69;
  *(inited + 152) = 0xE500000000000000;
  v12 = (v1 + v3[9]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v13;
  *(inited + 168) = v14;
  *(inited + 200) = 0x7365726F6373;
  *(inited + 208) = 0xE600000000000000;
  v15 = *v1;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D478);
  v16 = sub_24F6EC594();
  *(inited + 216) = v15;
  *(inited + 248) = v16;
  *(inited + 256) = 1701869940;
  *(inited + 264) = 0xE400000000000000;
  v17 = *(v1 + 8);
  v18 = 0x73646E65697266;
  if (v17)
  {
    v18 = 0x6C61626F6C67;
  }

  v19 = 0xE700000000000000;
  if (v17)
  {
    v19 = 0xE600000000000000;
  }

  v20 = v17 == 2;
  if (v17 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  *(inited + 296) = v7;
  *(inited + 304) = v8;
  *(inited + 272) = v21;
  *(inited + 280) = v22;
  *(inited + 312) = 0x6F6272656461656CLL;
  *(inited + 320) = 0xEB00000000647261;
  v23 = v3[6];
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  *(inited + 360) = sub_24F69E420();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24E60169C(v1 + v23, boxed_opaque_existential_1, &qword_27F212890);

  v25 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v25;
  return result;
}

uint64_t sub_24F6EB124()
{
  v1 = *v0;
  v2 = 0x7365726F6373;
  v3 = 25705;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6F6272656461656CLL;
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

uint64_t sub_24F6EB1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6EE360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6EB1EC(uint64_t a1)
{
  v2 = sub_24F6EC648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6EB228(uint64_t a1)
{
  v2 = sub_24F6EC648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItemRelationshipLeaderboard.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EC648();
  sub_24F92D128();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D478);
  sub_24F6EC69C();
  sub_24F92CD48();
  if (!v2)
  {
    v10[6] = *(v3 + 8);
    v10[5] = 1;
    sub_24F6EC750();
    sub_24F92CCF8();
    type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
    v10[4] = 2;
    type metadata accessor for Leaderboard(0);
    sub_24F6E6294(&qword_27F21B470, type metadata accessor for Leaderboard);
    sub_24F92CCF8();
    v10[3] = 3;
    sub_24F92CCA8();
    v10[2] = 4;
    sub_24F92CCA8();
    v10[1] = 5;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivityFeedItemRelationshipLeaderboard.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D4B8);
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F6EC648();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v31 = v6;
    v14 = v12;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D478);
    v41 = 0;
    sub_24F6EC7A4();
    v16 = v33;
    sub_24F92CC68();
    *v14 = v42;
    v39 = 1;
    sub_24F6EC858();
    sub_24F92CC18();
    v14[8] = v40;
    type metadata accessor for Leaderboard(0);
    v38 = 2;
    sub_24F6E6294(&qword_27F21B488, type metadata accessor for Leaderboard);
    v17 = v31;
    sub_24F92CC18();
    sub_24E6009C8(v17, &v14[v10[6]], &qword_27F212890);
    v37 = 3;
    v18 = sub_24F92CBC8();
    v19 = &v14[v10[7]];
    *v19 = v18;
    v19[1] = v20;
    v36 = 4;
    v21 = sub_24F92CBC8();
    v22 = v14;
    v23 = &v14[v10[8]];
    *v23 = v21;
    v23[1] = v24;
    v35 = 5;
    v25 = sub_24F92CBC8();
    v26 = &v14[v10[9]];
    v28 = v27;
    (*(v15 + 8))(v9, v16);
    *v26 = v25;
    v26[1] = v28;
    sub_24F6EC3C4(v22, v32, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_24F6EC534(v22, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
  }
}

uint64_t sub_24F6EBA4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

unint64_t sub_24F6EBACC()
{
  result = qword_27F24D358;
  if (!qword_27F24D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D358);
  }

  return result;
}

unint64_t sub_24F6EBB20()
{
  result = qword_27F24D368;
  if (!qword_27F24D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D368);
  }

  return result;
}

unint64_t sub_24F6EBB74()
{
  result = qword_27F24D370;
  if (!qword_27F24D370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D308);
    sub_24F6E6294(&qword_27F24D378, type metadata accessor for ActivityFeedItemRelationshipPlayer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D370);
  }

  return result;
}

unint64_t sub_24F6EBC28()
{
  result = qword_27F24D380;
  if (!qword_27F24D380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D320);
    sub_24F6E6294(&qword_27F24D388, type metadata accessor for ActivityFeedItemRelationshipAchievement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D380);
  }

  return result;
}

unint64_t sub_24F6EBCDC()
{
  result = qword_27F24D390;
  if (!qword_27F24D390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D338);
    sub_24F6E6294(&qword_27F24D398, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D390);
  }

  return result;
}

uint64_t sub_24F6EBD90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D2F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F6EBE08()
{
  result = qword_27F24D3B0;
  if (!qword_27F24D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D3B0);
  }

  return result;
}

unint64_t sub_24F6EBE5C()
{
  result = qword_27F24D3B8;
  if (!qword_27F24D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D308);
    sub_24F6E6294(&qword_27F24D3C0, type metadata accessor for ActivityFeedItemRelationshipPlayer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D3B8);
  }

  return result;
}

unint64_t sub_24F6EBF10()
{
  result = qword_27F24D3C8;
  if (!qword_27F24D3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D320);
    sub_24F6E6294(&qword_27F24D3D0, type metadata accessor for ActivityFeedItemRelationshipAchievement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D3C8);
  }

  return result;
}

unint64_t sub_24F6EBFC4()
{
  result = qword_27F24D3D8;
  if (!qword_27F24D3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D338);
    sub_24F6E6294(&qword_27F24D3E0, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D3D8);
  }

  return result;
}

unint64_t sub_24F6EC078()
{
  result = qword_27F24D3F0;
  if (!qword_27F24D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D3F0);
  }

  return result;
}

uint64_t sub_24F6EC0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6EC134()
{
  result = qword_27F24D408;
  if (!qword_27F24D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D400);
    sub_24F6EC1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D408);
  }

  return result;
}

unint64_t sub_24F6EC1B8()
{
  result = qword_27F24D410;
  if (!qword_27F24D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D410);
  }

  return result;
}

unint64_t sub_24F6EC20C()
{
  result = qword_27F24D420;
  if (!qword_27F24D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D420);
  }

  return result;
}

unint64_t sub_24F6EC260()
{
  result = qword_27F24D428;
  if (!qword_27F24D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D428);
  }

  return result;
}

unint64_t sub_24F6EC2B4()
{
  result = qword_27F24D438;
  if (!qword_27F24D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D438);
  }

  return result;
}

unint64_t sub_24F6EC370()
{
  result = qword_27F24D448;
  if (!qword_27F24D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D448);
  }

  return result;
}

uint64_t sub_24F6EC3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6EC42C()
{
  result = qword_27F24D458;
  if (!qword_27F24D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247948);
    sub_24F6E6294(&qword_27F24D318, type metadata accessor for ActivityFeedItemRelationshipPlayer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D458);
  }

  return result;
}

unint64_t sub_24F6EC4E0()
{
  result = qword_27F24D468;
  if (!qword_27F24D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D468);
  }

  return result;
}

uint64_t sub_24F6EC534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6EC594()
{
  result = qword_27F24D480;
  if (!qword_27F24D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D478);
    sub_24F6E6294(&qword_27F24D488, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D480);
  }

  return result;
}

unint64_t sub_24F6EC648()
{
  result = qword_27F24D498;
  if (!qword_27F24D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D498);
  }

  return result;
}

unint64_t sub_24F6EC69C()
{
  result = qword_27F24D4A0;
  if (!qword_27F24D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D478);
    sub_24F6E6294(&qword_27F24D4A8, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4A0);
  }

  return result;
}

unint64_t sub_24F6EC750()
{
  result = qword_27F24D4B0;
  if (!qword_27F24D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4B0);
  }

  return result;
}

unint64_t sub_24F6EC7A4()
{
  result = qword_27F24D4C0;
  if (!qword_27F24D4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D478);
    sub_24F6E6294(&qword_27F24D4C8, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4C0);
  }

  return result;
}

unint64_t sub_24F6EC858()
{
  result = qword_27F24D4D0;
  if (!qword_27F24D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4D0);
  }

  return result;
}

unint64_t sub_24F6EC8B0()
{
  result = qword_27F24D4D8;
  if (!qword_27F24D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4D8);
  }

  return result;
}

unint64_t sub_24F6EC908()
{
  result = qword_27F24D4E0;
  if (!qword_27F24D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D4E0);
  }

  return result;
}

uint64_t sub_24F6EC980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6ECA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F6ECAAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24F6ECB08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24F6ECBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F6ECC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F6ECD4C()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F6ED0F8(319, &qword_27F21A4A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F6ECE3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F6ECF0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F6ECFBC()
{
  sub_24F6ED0F8(319, &qword_27F24D518, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F24D520);
    if (v1 <= 0x3F)
    {
      sub_24F6ED0F8(319, &qword_27F23FF20, type metadata accessor for Leaderboard, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F254DE0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F6ED0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F6ED170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F6ED25C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F6ED324()
{
  sub_24F6ED0F8(319, &qword_27F24D538, type metadata accessor for ActivityFeedItemRelationshipPlayer, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F6ED46C()
{
  result = qword_27F24D540;
  if (!qword_27F24D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D540);
  }

  return result;
}

unint64_t sub_24F6ED4C4()
{
  result = qword_27F24D548;
  if (!qword_27F24D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D548);
  }

  return result;
}

unint64_t sub_24F6ED51C()
{
  result = qword_27F24D550;
  if (!qword_27F24D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D550);
  }

  return result;
}

unint64_t sub_24F6ED574()
{
  result = qword_27F24D558;
  if (!qword_27F24D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D558);
  }

  return result;
}

unint64_t sub_24F6ED5CC()
{
  result = qword_27F24D560;
  if (!qword_27F24D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D560);
  }

  return result;
}

unint64_t sub_24F6ED624()
{
  result = qword_27F24D568;
  if (!qword_27F24D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D568);
  }

  return result;
}

unint64_t sub_24F6ED67C()
{
  result = qword_27F24D570;
  if (!qword_27F24D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D570);
  }

  return result;
}

unint64_t sub_24F6ED6D4()
{
  result = qword_27F24D578;
  if (!qword_27F24D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D578);
  }

  return result;
}

unint64_t sub_24F6ED72C()
{
  result = qword_27F24D580;
  if (!qword_27F24D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D580);
  }

  return result;
}

unint64_t sub_24F6ED784()
{
  result = qword_27F24D588;
  if (!qword_27F24D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D588);
  }

  return result;
}

unint64_t sub_24F6ED7DC()
{
  result = qword_27F24D590;
  if (!qword_27F24D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D590);
  }

  return result;
}

unint64_t sub_24F6ED834()
{
  result = qword_27F24D598;
  if (!qword_27F24D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D598);
  }

  return result;
}

unint64_t sub_24F6ED88C()
{
  result = qword_27F24D5A0;
  if (!qword_27F24D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5A0);
  }

  return result;
}

unint64_t sub_24F6ED8E4()
{
  result = qword_27F24D5A8;
  if (!qword_27F24D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5A8);
  }

  return result;
}

unint64_t sub_24F6ED93C()
{
  result = qword_27F24D5B0;
  if (!qword_27F24D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5B0);
  }

  return result;
}

unint64_t sub_24F6ED994()
{
  result = qword_27F24D5B8;
  if (!qword_27F24D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5B8);
  }

  return result;
}

unint64_t sub_24F6ED9EC()
{
  result = qword_27F24D5C0;
  if (!qword_27F24D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5C0);
  }

  return result;
}

unint64_t sub_24F6EDA44()
{
  result = qword_27F24D5C8;
  if (!qword_27F24D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5C8);
  }

  return result;
}

uint64_t sub_24F6EDA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEC00000073647261)
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

uint64_t sub_24F6EDC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C72556E6F6369 && a2 == 0xED0000676E697274 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616C506E6F6369 && a2 == 0xEC0000006D726F66 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746469576E6F6369 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676965486E6F6369 && a2 == 0xEA00000000007468 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F6EDEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_24F6EE09C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656E696167 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24F6EE360(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365726F6373 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

unint64_t sub_24F6EE550()
{
  result = qword_27F24D5D0;
  if (!qword_27F24D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5D0);
  }

  return result;
}

unint64_t sub_24F6EE5A4()
{
  result = qword_27F24D5D8;
  if (!qword_27F24D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5D8);
  }

  return result;
}

uint64_t sub_24F6EE624(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F6EE6DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SetProfilePrivacyAction()
{
  result = qword_27F24D5E0;
  if (!qword_27F24D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6EE7C8()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F6EE844(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D600);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EEEE4();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24F383AE4();
  sub_24F92CD48();
  if (!v2)
  {
    type metadata accessor for SetProfilePrivacyAction();
    v10[13] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6EEA00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_24F928AD8();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D5F0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SetProfilePrivacyAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6EEEE4();
  sub_24F92D108();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_24F383B8C();
    v14 = v24;
    sub_24F92CC68();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_24E674184(&qword_27F254CB0);
    v17 = v5;
    sub_24F92CC68();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v17, v13);
    sub_24F5478B0(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6EECFC()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x50656C69666F7270;
  }
}

uint64_t sub_24F6EED50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x50656C69666F7270 && a2 == 0xEE00796361766972;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F6EEE3C(uint64_t a1)
{
  v2 = sub_24F6EEEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6EEE78(uint64_t a1)
{
  v2 = sub_24F6EEEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F6EEEE4()
{
  result = qword_27F24D5F8;
  if (!qword_27F24D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D5F8);
  }

  return result;
}

unint64_t sub_24F6EEF4C()
{
  result = qword_27F24D608;
  if (!qword_27F24D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D608);
  }

  return result;
}

unint64_t sub_24F6EEFA4()
{
  result = qword_27F24D610;
  if (!qword_27F24D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D610);
  }

  return result;
}

unint64_t sub_24F6EEFFC()
{
  result = qword_27F24D618;
  if (!qword_27F24D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D618);
  }

  return result;
}

uint64_t sub_24F6EF064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F6EF1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesCustomizeLeaderboardRowView()
{
  result = qword_27F24D620;
  if (!qword_27F24D620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6EF338()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F6EF3DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6EF3DC()
{
  if (!qword_27F23FF20)
  {
    type metadata accessor for Leaderboard(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23FF20);
    }
  }
}

uint64_t sub_24F6EF450()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = (v0 + *(type metadata accessor for ChallengesCustomizeLeaderboardRowView() + 20));
  v16 = v15[1];
  if (!v16)
  {
    return 0;
  }

  v45 = v4;
  v46 = v2;
  v47 = v1;
  v17 = *v15;
  v18 = qword_27F211180;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_24E65864C(&unk_27F39E410, v58);
  sub_24F928A98();
  v20 = *v0;
  v19 = v0[1];
  v21 = swift_allocObject();
  *(v21 + 40) = &type metadata for ChallengesLeaderboardPickerPageIntent;
  *(v21 + 48) = sub_24E7C57DC();
  v22 = swift_allocObject();
  *(v21 + 16) = v22;
  v22[2] = v20;
  v22[3] = v19;
  v22[4] = v17;
  v22[5] = v16;

  v23 = sub_24F929D08();
  v25 = v24;
  sub_24E60169C(v58, v57, &qword_27F235830);
  v26 = sub_24F91F4A8();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v56[3] = &type metadata for FlowDestination;
  v56[0] = v21 | 4;
  v27 = *(v9 + 16);
  v27(v11, v14, v8);
  type metadata accessor for FlowAction();
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v29 = v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;
  v30 = (v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v30 = 0;
  v30[1] = 0;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  v49 = v7;
  sub_24E60169C(v7, v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v31 = (v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v31 = 0;
  v31[1] = 0;
  v32 = v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v32 = xmmword_24F9406F0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = 0;
  *(v32 + 40) = 0;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v33 = (v28 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v33 = v23;
  v33[1] = v25;
  sub_24E60169C(v57, v55, &qword_27F235830);
  v48 = v11;
  v27((v28 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v11, v8);
  v34 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v28 + v34, 1, 1, v35);
  v36 = (v28 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = v28 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v55, &v52, &qword_27F235830);
  if (*(&v53 + 1))
  {
    v38 = v53;
    *v37 = v52;
    *(v37 + 16) = v38;
    *(v37 + 32) = v54;
  }

  else
  {
    v39 = v45;
    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v46 + 8))(v39, v47);
    v50 = v40;
    v51 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830);
  }

  sub_24E601704(v55, &qword_27F235830);
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;

  FlowAction.setPageData(_:)(v56);

  v43 = *(v9 + 8);
  v43(v14, v8);
  sub_24E601704(v58, &qword_27F235830);
  v43(v48, v8);
  sub_24E601704(v49, &qword_27F228530);
  sub_24E601704(v57, &qword_27F235830);
  sub_24E601704(v56, &qword_27F2129B0);
  return v28;
}

uint64_t sub_24F6EFAE0@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_24F9241F8();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D630);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v56 = &v55 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D638);
  MEMORY[0x28223BE20](v59);
  v16 = &v55 - v15;
  v17 = sub_24F9232F8();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_24F6EF450();
  v19 = v18;
  if (v18)
  {
    v20 = type metadata accessor for FlowAction();
    v18 = sub_24F6F177C(&qword_27F216400, type metadata accessor for FlowAction);
  }

  else
  {
    v20 = 0;
    v66[1] = 0;
    v66[2] = 0;
  }

  v66[0] = v19;
  v67 = v20;
  v68 = v18;
  sub_24F6F0C50(v1, &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v22 = swift_allocObject();
  sub_24F6F14EC(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AE8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241AF8);
  v24 = sub_24F3BDAE4();
  v64 = v23;
  v65 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v56;
  sub_24F921788();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4);
  v26 = sub_24F924258();
  v67 = v26;
  v68 = sub_24F6F177C(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(v5 + 16))(boxed_opaque_existential_1 + *(v26 + 20), v7, v4);
  __asm { FMOV            V0.2D, #12.0 }

  *boxed_opaque_existential_1 = _Q0;
  (*(v5 + 8))(v7, v4);
  v33 = v25;
  sub_24F6F15C0(v66, v16);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D648);
  v36 = v57;
  v35 = v58;
  (*(v57 + 16))(&v16[v34[9]], v25, v58);
  v37 = &v16[v34[10]];
  *v37 = sub_24F923398() & 1;
  *(v37 + 1) = v38;
  v37[16] = v39 & 1;
  v40 = &v16[v34[11]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v41 = qword_27F24E488;
  v42 = sub_24F923398();
  v44 = v43;
  v46 = v45;
  v47 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D650) + 36)];
  *v47 = v41;
  v47[8] = v42 & 1;
  *(v47 + 2) = v44;
  v47[24] = v46 & 1;
  LOBYTE(v41) = sub_24F923398();
  v49 = v48;
  LOBYTE(v44) = v50;
  sub_24E601704(v66, &qword_27F24D640);
  (*(v36 + 8))(v33, v35);
  v51 = v60;
  v52 = &v16[*(v59 + 36)];
  *v52 = v41 & 1;
  *(v52 + 1) = v49;
  v52[16] = v44 & 1;
  sub_24F9241E8();
  sub_24F6F1638();
  sub_24F6F177C(&qword_27F212838, MEMORY[0x277CDDB18]);
  v53 = v63;
  sub_24F926178();
  (*(v62 + 8))(v51, v53);
  return sub_24E601704(v16, &qword_27F24D638);
}

uint64_t sub_24F6F01E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AF8);
  MEMORY[0x28223BE20](v40);
  v4 = &v34 - v3;
  v39 = sub_24F9249A8();
  v56 = 1;
  sub_24F6F0688(a1, &v43);
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v69[8] = v51;
  v69[9] = v52;
  v69[10] = v53;
  v69[4] = v47;
  v69[5] = v48;
  v69[6] = v49;
  v69[7] = v50;
  v69[0] = v43;
  v69[1] = v44;
  v68 = v54;
  v70 = v54;
  v69[2] = v45;
  v69[3] = v46;
  sub_24E60169C(&v57, v42, &qword_27F241B78);
  sub_24E601704(v69, &qword_27F241B78);
  *(&v55[8] + 7) = v65;
  *(&v55[9] + 7) = v66;
  *(&v55[10] + 7) = v67;
  *(&v55[4] + 7) = v61;
  *(&v55[5] + 7) = v62;
  *(&v55[6] + 7) = v63;
  *(&v55[7] + 7) = v64;
  *(v55 + 7) = v57;
  *(&v55[1] + 7) = v58;
  *(&v55[2] + 7) = v59;
  *(&v55[11] + 7) = v68;
  *(&v55[3] + 7) = v60;
  v38 = v56;
  v37 = sub_24F925808();
  v42[0] = 1;
  v5 = sub_24F927618();
  v35 = v6;
  v36 = v5;
  v7 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B10) + 36)];
  v8 = sub_24F926C98();
  v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC40) + 36);
  sub_24F927438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48);
  v11 = &v9[*(v10 + 52)];
  v12 = *(sub_24F924258() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v11 = _Q0;
  *&v9[*(v10 + 56)] = 256;
  *v7 = v8;
  KeyPath = swift_getKeyPath();
  v21 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC50) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v23 = *MEMORY[0x277CDF3C0];
  v24 = sub_24F9234D8();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = KeyPath;
  v25 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBE8) + 36));
  v26 = v35;
  *v25 = v36;
  v25[1] = v26;
  v27 = v55[2];
  *(v4 + 65) = v55[3];
  *(v4 + 49) = v27;
  v28 = v55[0];
  *(v4 + 33) = v55[1];
  *(v4 + 17) = v28;
  v29 = v55[6];
  *(v4 + 129) = v55[7];
  *(v4 + 113) = v29;
  v30 = v55[4];
  *(v4 + 97) = v55[5];
  *(v4 + 81) = v30;
  *(v4 + 12) = *(&v55[10] + 15);
  *(v4 + 177) = v55[10];
  v31 = v55[8];
  *(v4 + 161) = v55[9];
  *v4 = v39;
  *(v4 + 1) = 0;
  LOBYTE(v25) = v37;
  v4[16] = v38;
  *(v4 + 145) = v31;
  v4[208] = v25;
  *(v4 + 209) = v43;
  *(v4 + 53) = *(&v43 + 3);
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  v4[248] = 1;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9248C8();
  __swift_project_value_buffer(v32, qword_27F39F078);
  sub_24F3BDAE4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v4, &qword_27F241AF8);
}

uint64_t sub_24F6F0688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F926E48();
  v5 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  sub_24F927618();
  sub_24F9238C8();
  v6 = sub_24F924C98();
  LOBYTE(v24[0]) = 1;
  sub_24F6F096C(a1, v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  v7 = v24[0];
  v8 = sub_24F926DF8();
  *&v20 = v4;
  *(&v20 + 1) = KeyPath;
  *v21 = v5;
  *&v21[8] = v15;
  *&v21[24] = v16;
  *&v21[40] = v17;
  v12 = *&v21[16];
  v13 = *&v21[32];
  *v14 = *(&v17 + 1);
  v22[0] = v6;
  v22[1] = 0;
  v23[0] = v7;
  *&v23[1] = *v18;
  *&v23[64] = *&v18[63];
  *&v23[49] = *&v18[48];
  *&v23[33] = *&v18[32];
  *&v23[17] = *&v18[16];
  *&v14[24] = *v23;
  *&v14[8] = v6;
  *&v14[88] = *&v23[64];
  *&v14[72] = *&v23[48];
  *&v14[56] = *&v23[32];
  *&v14[40] = *&v23[16];
  v9 = *v21;
  *a2 = v20;
  *(a2 + 16) = v9;
  *(a2 + 64) = *v14;
  *(a2 + 80) = *&v14[16];
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 128) = *&v14[64];
  *(a2 + 144) = *&v14[80];
  *(a2 + 96) = *&v14[32];
  *(a2 + 112) = *&v14[48];
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v8;
  sub_24E60169C(&v20, v24, &qword_27F2128C8);
  sub_24E60169C(v22, v24, &qword_27F220848);
  v24[0] = v6;
  v24[1] = 0;
  v25 = v7;
  v27 = *&v18[16];
  v28 = *&v18[32];
  *v29 = *&v18[48];
  *&v29[15] = *&v18[63];
  v26 = *v18;
  sub_24E601704(v24, &qword_27F220848);
  v30[0] = v4;
  v30[1] = KeyPath;
  v30[2] = v5;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  return sub_24E601704(v30, &qword_27F2128C8);
}

uint64_t sub_24F6F096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  if (qword_27F2114D0 != -1)
  {
    swift_once();
  }

  v39 = qword_27F39EA68;
  v40 = unk_27F39EA70;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v34 = v8;
  v35 = v7;
  v33 = v9;
  v36 = v10;
  v11 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  sub_24E60169C(a1 + *(v11 + 24), v6, &qword_27F212890);
  v12 = type metadata accessor for Leaderboard(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    sub_24E601704(v6, &qword_27F212890);
LABEL_6:

    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_7;
  }

  v13 = &v6[*(v12 + 28)];
  v14 = *v13;
  v15 = v13[1];

  sub_24F3A3AEC(v6);
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  v39 = v14;
  v40 = v15;
  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  sub_24F9258D8();
  sub_24F9258E8();

  v21 = sub_24F925C98();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_24E600B40(v16, v18, v20 & 1);

  v28 = v33 & 1;
  v37 = v33 & 1;
  LOBYTE(v39) = v33 & 1;
  v25 &= 1u;
  v38 = v25;
  v30 = v34;
  v29 = v35;
  *a2 = v35;
  *(a2 + 8) = v30;
  *(a2 + 16) = v28;
  *(a2 + 24) = v36;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27;
  sub_24E5FD138(v29, v30, v28);

  sub_24E5FD138(v21, v23, v25);

  sub_24E600B40(v21, v23, v25);

  sub_24E600B40(v29, v30, v37);
}

uint64_t sub_24F6F0C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6F0CB4()
{
  v37 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  v1 = *(*(v37 - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v38 = *(v5 - 8);
  v36 = *(v38 + 8);
  v36(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v6 = v2 + v3[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v6 + v10, 1, v5))
      {
        v36(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v38 + 48))(v11 + v12, 1, v5))
      {
        v36(v11 + v12, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v13 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v36(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v38 + 48))(v13 + v16, 1, v5))
    {
      v36(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v36(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v38 + 48))(v20 + v23, 1, v5))
    {
      v36(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  v27 = v2 + *(v37 + 24);
  v28 = type metadata accessor for Leaderboard(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {

    v29 = *(v28 + 24);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
    if (!(*(*(v30 - 8) + 48))(v27 + v29, 1, v30))
    {
      v31 = sub_24F91F648();
      (*(*(v31 - 8) + 8))(v27 + v29, v31);
    }

    v32 = *(v28 + 72);
    v33 = sub_24F920818();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v27 + v32, 1, v33))
    {
      (*(v34 + 8))(v27 + v32, v33);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F6F14EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesCustomizeLeaderboardRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6F1550@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengesCustomizeLeaderboardRowView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F6F01E0(v4, a1);
}

uint64_t sub_24F6F15C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F6F1638()
{
  result = qword_27F24D658;
  if (!qword_27F24D658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D638);
    sub_24F6F16C4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D658);
  }

  return result;
}

unint64_t sub_24F6F16C4()
{
  result = qword_27F24D660;
  if (!qword_27F24D660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D650);
    sub_24E602068(&qword_27F24D668, &qword_27F24D648);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D660);
  }

  return result;
}

uint64_t sub_24F6F177C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F6F17D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F6F180C()
{

  return swift_deallocObject();
}

uint64_t sub_24F6F184C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D638);
  sub_24F9241F8();
  sub_24F6F1638();
  sub_24F6F177C(&qword_27F212838, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6F1960@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_24F924848();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924258();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D678);
  MEMORY[0x28223BE20](v58);
  v14 = &v52 - v13;
  *v14 = sub_24F9249A8();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D680) + 44)];
  v57 = a2;
  sub_24F6F1F08(a1, v15);
  LOBYTE(a1) = sub_24F925808();
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D688) + 36)];
  *v16 = a1;
  *(v16 + 8) = xmmword_24FA1EF60;
  *(v16 + 24) = xmmword_24FA1EF60;
  v16[40] = 0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  LOBYTE(a1) = sub_24F925808();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D690) + 36)];
  *v18 = v17;
  v18[8] = a1;
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D698) + 36)];
  v20 = *(v10 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  v23 = *(*(v22 - 8) + 104);
  v23(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #10.0 }

  v56 = _Q0;
  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v23(&v12[*(v10 + 28)], v21, v22);
  *v12 = v56;
  v29 = sub_24F925188();
  if ((a3 & 1) == 0)
  {
    v30 = v57;

    sub_24F92BDC8();
    v31 = sub_24F9257A8();
    sub_24F921FD8();

    v32 = v53;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v30, 0);
    (*(v54 + 8))(v32, v55);
  }

  sub_24F923658();
  v33 = &v14[*(v58 + 36)];
  sub_24E6EB910(v12, v33);
  v34 = *&v60 * 0.5;
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248960) + 68);
  sub_24E6EB910(v12, v35);
  *(v35 + *(sub_24F924248() + 20)) = v34;
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF8) + 36);
  v37 = v61;
  *v36 = v60;
  *(v36 + 16) = v37;
  *(v36 + 32) = v62;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248968);
  *(v35 + *(v38 + 52)) = v29;
  *(v35 + *(v38 + 56)) = 256;
  v39 = sub_24F927618();
  v41 = v40;
  sub_24E6EB974(v12);
  v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248970) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6A0) + 36);
  v44 = *MEMORY[0x277CE13B8];
  v45 = sub_24F927748();
  (*(*(v45 - 8) + 104))(v33 + v43, v44, v45);
  v46 = sub_24F927618();
  v48 = v47;
  v49 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6A8) + 36));
  *v49 = v46;
  v49[1] = v48;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v50 = sub_24F9248C8();
  __swift_project_value_buffer(v50, qword_27F39F078);
  sub_24F6F273C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24F6F2A1C(v14);
}

uint64_t sub_24F6F1F08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6E8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v64 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6F8);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = &v64 - v16;
  v19 = a1[2];
  if (v19)
  {
    v20 = *(v19 + 32);
    height = 22.0;
    width = 33.0;
    v65 = v3;
    v66 = v6;
    if (v20 > 0.0 && *(v19 + 40) > 0.0)
    {
      v23 = CGSize.fitting(_:mode:)(__PAIR128__(22.0, 0x4040800000000000), UIViewContentModeScaleAspectFit);
      width = v23.width;
      height = v23.height;
    }

    v24 = type metadata accessor for SwiftUIArtworkView(0);
    v25 = v24[6];
    v26 = *MEMORY[0x277CE1010];
    v27 = sub_24F926E68();
    (*(*(v27 - 8) + 104))(v5 + v25, v26, v27);
    *v5 = v19;
    v5[1] = width;
    v5[2] = height;
    *(v5 + 24) = 0;
    v28 = v5 + v24[7];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    *(v5 + v24[8]) = 2;
    *(v5 + v24[9]) = 0;

    sub_24F927618();
    sub_24F9238C8();
    v29 = v5 + *(v65 + 36);
    v30 = v72;
    *v29 = v71;
    *(v29 + 1) = v30;
    *(v29 + 2) = v73;
    v31 = a1[3];
    if (v31)
    {
      v32 = v31;
      v33 = sub_24F926BF8();
    }

    else
    {
      v33 = sub_24F926D38();
    }

    v34 = v33;
    sub_24E6009C8(v5, v9, &qword_27F24D6E8);
    v35 = v66;
    *&v9[*(v66 + 36)] = v34;
    sub_24E6009C8(v9, v12, &qword_27F24D6F0);
    sub_24E6009C8(v12, v18, &qword_27F24D6F0);
    (*(v7 + 56))(v18, 0, 1, v35, v36);
  }

  else
  {
    (*(v7 + 56))(&v64 - v16, 1, 1, v6, v17);
  }

  v37 = a1[7];
  v69 = a1[6];
  v70 = v37;
  sub_24E600AEC();

  v38 = sub_24F925E18();
  v40 = v39;
  v42 = v41;
  sub_24F925898();
  v43 = sub_24F925C98();
  v45 = v44;
  v47 = v46;

  sub_24E600B40(v38, v40, v42 & 1);

  sub_24F925938();
  v48 = sub_24F925B78();
  v50 = v49;
  v52 = v51;
  sub_24E600B40(v43, v45, v47 & 1);

  LODWORD(v69) = sub_24F925198();
  v53 = sub_24F925C58();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24E600B40(v48, v50, v52 & 1);

  v60 = v67;
  sub_24F6F2A84(v18, v67);
  v61 = v68;
  sub_24F6F2A84(v60, v68);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D700) + 48);
  *v62 = v53;
  *(v62 + 8) = v55;
  *(v62 + 16) = v57 & 1;
  *(v62 + 24) = v59;
  sub_24E5FD138(v53, v55, v57 & 1);

  sub_24F6F2AF4(v18);
  sub_24E600B40(v53, v55, v57 & 1);

  return sub_24F6F2AF4(v60);
}

uint64_t sub_24F6F2460@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  v6 = sub_24F924258();
  *(a1 + 64) = v6;
  *(a1 + 72) = sub_24F6F26F4(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  (*(v3 + 16))(boxed_opaque_existential_1 + *(v6 + 20), v5, v2);
  __asm { FMOV            V0.2D, #10.0 }

  *boxed_opaque_existential_1 = _Q0;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F6F25D8()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24F47D1C4();
  return sub_24F9218E8();
}

unint64_t sub_24F6F263C()
{
  result = qword_27F24D670;
  if (!qword_27F24D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D670);
  }

  return result;
}

uint64_t sub_24F6F26F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F6F273C()
{
  result = qword_27F24D6B0;
  if (!qword_27F24D6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D678);
    sub_24F6F27F4();
    sub_24E602068(&qword_27F24D6E0, &qword_27F24D6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D6B0);
  }

  return result;
}

unint64_t sub_24F6F27F4()
{
  result = qword_27F24D6B8;
  if (!qword_27F24D6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D698);
    sub_24F6F28AC();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D6B8);
  }

  return result;
}

unint64_t sub_24F6F28AC()
{
  result = qword_27F24D6C0;
  if (!qword_27F24D6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D690);
    sub_24F6F2964();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D6C0);
  }

  return result;
}

unint64_t sub_24F6F2964()
{
  result = qword_27F24D6C8;
  if (!qword_27F24D6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D688);
    sub_24E602068(&qword_27F24D6D0, &qword_27F24D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D6C8);
  }

  return result;
}

uint64_t sub_24F6F2A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6F2A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6F2AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6F2B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D678);
  sub_24F6F273C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6F2BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for Player(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F6F2D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for Player(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsListDataIntent()
{
  result = qword_27F24D708;
  if (!qword_27F24D708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6F2E90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F3644();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  type metadata accessor for Game();
  sub_24E69192C(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for LeaderboardsListDataIntent() + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[6];
    v18 = *v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v17[7] = 1;
    sub_24E7ED984(v18, v10);
    sub_24E7ED9D4();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19);
    LOBYTE(v18) = 2;
    type metadata accessor for Player(0);
    sub_24E69192C(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6F310C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D718);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LeaderboardsListDataIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F6F3644();
  v29 = v9;
  v14 = v30;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v15 = v26;
  v30 = v3;
  v16 = v12;
  v24 = v5;
  LOBYTE(v32) = 0;
  sub_24E69192C(&qword_27F214968, type metadata accessor for Game);
  v18 = v27;
  v17 = v28;
  sub_24F92CC68();
  sub_24E691974(v18, v16, type metadata accessor for Game);
  v36 = 1;
  sub_24E7ED8D0();
  sub_24F92CC18();
  v19 = v35;
  v20 = v16 + *(v10 + 20);
  v21 = v33;
  *v20 = v32;
  *(v20 + 16) = v21;
  *(v20 + 32) = v34;
  *(v20 + 48) = v19;
  LOBYTE(v32) = 2;
  sub_24E69192C(&qword_27F213E38, type metadata accessor for Player);
  v22 = v24;
  sub_24F92CC68();
  (*(v15 + 8))(v29, v17);
  sub_24E691974(v22, v16 + *(v10 + 24), type metadata accessor for Player);
  sub_24F6F3698(v16, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24F6F36FC(v16, type metadata accessor for LeaderboardsListDataIntent);
}

uint64_t sub_24F6F357C(uint64_t a1)
{
  v2 = sub_24F6F3644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6F35B8(uint64_t a1)
{
  v2 = sub_24F6F3644();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F6F3644()
{
  result = qword_27F24D720;
  if (!qword_27F24D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D720);
  }

  return result;
}

uint64_t sub_24F6F3698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsListDataIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6F36FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6F3770()
{
  result = qword_27F24D730;
  if (!qword_27F24D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D730);
  }

  return result;
}

unint64_t sub_24F6F37C8()
{
  result = qword_27F24D738;
  if (!qword_27F24D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D738);
  }

  return result;
}

unint64_t sub_24F6F3820()
{
  result = qword_27F24D740;
  if (!qword_27F24D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D740);
  }

  return result;
}

uint64_t CancelFriendInvitationAction.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CancelFriendInvitationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CancelFriendInvitationAction() + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CancelFriendInvitationAction()
{
  result = qword_27F24D760;
  if (!qword_27F24D760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6F396C()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F6F39B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F6F3A98(uint64_t a1)
{
  v2 = sub_24F6F3CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6F3AD4(uint64_t a1)
{
  v2 = sub_24F6F3CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CancelFriendInvitationAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D748);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F3CB4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for CancelFriendInvitationAction();
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F6F3CB4()
{
  result = qword_27F24D750;
  if (!qword_27F24D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D750);
  }

  return result;
}

uint64_t CancelFriendInvitationAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D758);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CancelFriendInvitationAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F3CB4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24F6F4018(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F6F407C(v10);
}

uint64_t sub_24F6F4018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancelFriendInvitationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6F407C(uint64_t a1)
{
  v2 = type metadata accessor for CancelFriendInvitationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6F411C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F6F41DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F6F4294()
{
  result = qword_27F24D770;
  if (!qword_27F24D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D770);
  }

  return result;
}

unint64_t sub_24F6F42EC()
{
  result = qword_27F24D778;
  if (!qword_27F24D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D778);
  }

  return result;
}

unint64_t sub_24F6F4344()
{
  result = qword_27F24D780;
  if (!qword_27F24D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D780);
  }

  return result;
}

uint64_t FriendSuggestionSwooshShelfConstructionIntent.shelfID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FriendSuggestionSwooshShelfConstructionIntent.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FriendSuggestionSwooshShelfConstructionIntent.orientation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

unint64_t FriendSuggestionSwooshShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v15 = v1[5];
  v8 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x4449666C656873;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x656C746974;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  *(inited + 144) = 0x6974736567677573;
  *(inited + 152) = 0xEB00000000736E6FLL;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158);
  v12 = sub_24ED8FC54(&qword_27F22F170, &qword_27F22F178);
  *(inited + 160) = v7;
  *(inited + 192) = v12;
  *(inited + 200) = 0x7461746E6569726FLL;
  *(inited + 208) = 0xEB000000006E6F69;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D788);
  *(inited + 248) = sub_24F6F4650();
  *(inited + 216) = v15;
  *(inited + 224) = v8;

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

unint64_t sub_24F6F4650()
{
  result = qword_27F24D790;
  if (!qword_27F24D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D788);
    sub_24F6F46D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D790);
  }

  return result;
}

unint64_t sub_24F6F46D4()
{
  result = qword_27F24D798;
  if (!qword_27F24D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D798);
  }

  return result;
}

uint64_t sub_24F6F4728()
{
  v1 = 0x4449666C656873;
  v2 = 0x6974736567677573;
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

uint64_t sub_24F6F47B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6F5024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6F47D8(uint64_t a1)
{
  v2 = sub_24F6F4EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6F4814(uint64_t a1)
{
  v2 = sub_24F6F4EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendSuggestionSwooshShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D7A0);
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
  sub_24F6F4EA8();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158);
    sub_24ED8FC54(&qword_27F24D7B0, &qword_27F24D7B8);
    sub_24F92CD48();
    v20 = v11;
    v21 = v13;
    v23 = 3;
    sub_24E77738C();
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FriendSuggestionSwooshShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D7C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F4EA8();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158);
  v24 = 2;
  sub_24ED8FC54(&qword_27F22F160, &qword_27F22F168);
  sub_24F92CC68();
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

unint64_t sub_24F6F4EA8()
{
  result = qword_27F24D7A8;
  if (!qword_27F24D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D7A8);
  }

  return result;
}

unint64_t sub_24F6F4F20()
{
  result = qword_27F24D7C8;
  if (!qword_27F24D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D7C8);
  }

  return result;
}

unint64_t sub_24F6F4F78()
{
  result = qword_27F24D7D0;
  if (!qword_27F24D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D7D0);
  }

  return result;
}

unint64_t sub_24F6F4FD0()
{
  result = qword_27F24D7D8;
  if (!qword_27F24D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D7D8);
  }

  return result;
}

uint64_t sub_24F6F5024(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
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

uint64_t sub_24F6F518C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_24F91EC58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v10 = a1[4];
  v12 = a1[5];
  v11 = a1[6];
  v13 = a1[7];
  v14 = *(a1 + 64);
  v15 = *(a1 + 65) | ((*(a1 + 69) | (*(a1 + 71) << 16)) << 32);
  v16 = *(a1 + 80);
  if (v16 > 1)
  {
    v24 = a1[4];
    v25 = v12;
    v26 = v11;
    v27 = v13;
    v28 = v3;
    if (v16 == 2)
    {
      v22 = v8 | (v9 << 8);
      v23 = v14 | (v15 << 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
      sub_24F91EB98();
      *(swift_allocObject() + 16) = xmmword_24F942000;
      v30 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E907170();
      sub_24F92AF68();
      sub_24F91EB68();

      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EC48();
      sub_24F91EC28();
      v18 = 0xEB00000000746E65;
      v17 = 0x6D65766569686361;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
      sub_24F91EB98();
      *(swift_allocObject() + 16) = xmmword_24F93FC20;
      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EB68();
      sub_24F91EC48();
      sub_24F91EC28();
      if (v14)
      {
        v17 = 0x74617641656D6167;
      }

      else
      {
        v17 = 1701667175;
      }

      if (v14)
      {
        v18 = 0xEA00000000007261;
      }

      else
      {
        v18 = 0xE400000000000000;
      }
    }

    v3 = v28;
  }

  else if (*(a1 + 80))
  {
    v19 = a1[9];
    v22 = v14 | (v15 << 8);
    v23 = v19;
    v26 = v11;
    v27 = v13;
    v24 = v10;
    v25 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
    sub_24F91EB98();
    v28 = v3;
    *(swift_allocObject() + 16) = xmmword_24F942000;
    sub_24F91EB68();
    sub_24F91EB68();
    sub_24F91EB68();
    sub_24F91EB68();
    v3 = v28;
    sub_24F91EB68();
    sub_24F91EC48();
    sub_24F91EC28();
    v18 = 0xEB00000000647261;
    v17 = 0x6F6272656461656CLL;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48);
    sub_24F91EB98();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F91EB68();
    sub_24F91EB68();
    sub_24F91EC48();
    sub_24F91EC28();
    if (v8)
    {
      v17 = 0x7641726579616C70;
    }

    else
    {
      v17 = 0x726579616C70;
    }

    if (v8)
    {
      v18 = 0xEC00000072617461;
    }

    else
    {
      v18 = 0xE600000000000000;
    }
  }

  MEMORY[0x253044590](v17, v18);
  sub_24F91EBD8();
  sub_24F91EBF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6F5924(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6F59A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ContinueToNextImpedimentAction()
{
  result = qword_27F24D7E0;
  if (!qword_27F24D7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6F5A60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D7F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  ImpedimentAction = type metadata accessor for ContinueToNextImpedimentAction();
  MEMORY[0x28223BE20](ImpedimentAction - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F5EC0();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F6F5F14(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6F5CCC(uint64_t a1)
{
  v2 = sub_24F6F5EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6F5D08(uint64_t a1)
{
  v2 = sub_24F6F5EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6F5D5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6F5EC0();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F6F5EC0()
{
  result = qword_27F24D7F8;
  if (!qword_27F24D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D7F8);
  }

  return result;
}

uint64_t sub_24F6F5F14(uint64_t a1, uint64_t a2)
{
  ImpedimentAction = type metadata accessor for ContinueToNextImpedimentAction();
  (*(*(ImpedimentAction - 8) + 32))(a2, a1, ImpedimentAction);
  return a2;
}

unint64_t sub_24F6F5F8C()
{
  result = qword_27F24D808;
  if (!qword_27F24D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D808);
  }

  return result;
}

unint64_t sub_24F6F5FE4()
{
  result = qword_27F24D810;
  if (!qword_27F24D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D810);
  }

  return result;
}

unint64_t sub_24F6F603C()
{
  result = qword_27F24D818[0];
  if (!qword_27F24D818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24D818);
  }

  return result;
}

uint64_t sub_24F6F6090()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F6F612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a3;
  v10[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v11 = sub_24F92A9E8();
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24FA1FA18;
  v13[5] = v10;
  v13[6] = v11;

  sub_24E6959D8(0, 0, v9, &unk_24F94D7B0, v13);

  return v11;
}

uint64_t sub_24F6F62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_24F928AE8();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for ImpedimentFlowAction();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for ImpedimentFlowDestination();
  v4[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[20] = v6;
  v7 = swift_task_alloc();
  v4[21] = v7;
  *v7 = v4;
  v7[1] = sub_24F6F646C;

  return sub_24F64F370(v6);
}

uint64_t sub_24F6F646C()
{

  return MEMORY[0x2822009F8](sub_24F6F6568, 0, 0);
}

uint64_t sub_24F6F6568()
{
  sub_24F6F7030(v0[20], v0[19], type metadata accessor for ImpedimentFlowDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[19];
  if (EnumCaseMultiPayload == 6)
  {
    v3 = v0[17];
    v4 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48));
    sub_24E6365D4(v2, v3);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "ContinueToNextImpedimentAction: There is no next impediment to be presented.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v0[25] = v4;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_24F6F6988;
    v10 = v0[17];

    return sub_24F64B8C4(v10, v0 + 25);
  }

  else
  {
    sub_24F6F7098(v0[19], type metadata accessor for ImpedimentFlowDestination);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E8E0);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BD98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "ContinueToNextImpedimentAction: Need to present an impediment.", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    v16 = v0[20];
    v18 = v0[15];
    v17 = v0[16];

    sub_24F928A98();
    sub_24F6F7030(v16, v17 + *(v18 + 24), type metadata accessor for ImpedimentFlowDestination);
    v19 = sub_24F929D18();
    *v17 = 0x656D696465706D69;
    v17[1] = 0xEA0000000000746ELL;
    v20 = (v17 + *(v18 + 28));
    *v20 = v19;
    v20[1] = v21;
    v0[5] = v18;
    v0[6] = sub_24F6F6FE8(&qword_27F23B230, type metadata accessor for ImpedimentFlowAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_24F6F7030(v17, boxed_opaque_existential_1, type metadata accessor for ImpedimentFlowAction);
    v23 = swift_task_alloc();
    v0[23] = v23;
    ImpedimentActionImplementation = type metadata accessor for ContinueToNextImpedimentActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v23 = v0;
    v23[1] = sub_24F6F6B7C;
    v26 = v0[14];
    v27 = v0[10];

    return sub_24F1487B0(v26, (v0 + 2), v27, ImpedimentActionImplementation, WitnessTable);
  }
}

uint64_t sub_24F6F6988()
{

  return MEMORY[0x2822009F8](sub_24F6F6A84, 0, 0);
}

uint64_t sub_24F6F6A84()
{
  sub_24E637048(v0[17]);
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[8];
  sub_24F6F7098(v0[20], type metadata accessor for ImpedimentFlowDestination);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6F6B7C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24F6F6DBC;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    v3 = sub_24F6F6CB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F6F6CB0()
{
  sub_24F6F7098(v0[16], type metadata accessor for ImpedimentFlowAction);
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[8];
  sub_24F6F7098(v0[20], type metadata accessor for ImpedimentFlowDestination);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6F6DBC()
{
  v1 = v0[20];
  sub_24F6F7098(v0[16], type metadata accessor for ImpedimentFlowAction);
  sub_24F6F7098(v1, type metadata accessor for ImpedimentFlowDestination);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F6F6EAC()
{

  return swift_deallocObject();
}

uint64_t sub_24F6F6EEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F6F62C8(a1, v5, v6, v4);
}

uint64_t sub_24F6F6FA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F6F6FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F6F7030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6F7098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6F70F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 248) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18) - 8);
  *(v9 + 80) = v11;
  *(v9 + 88) = *(v11 + 64);
  *(v9 + 96) = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20) - 8);
  *(v9 + 104) = v12;
  *(v9 + 112) = *(v12 + 64);
  *(v9 + 120) = swift_task_alloc();
  v13 = *(a7 - 8);
  *(v9 + 128) = v13;
  *(v9 + 136) = *(v13 + 64);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  *(v9 + 152) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8A0);
  *(v9 + 160) = v14;
  *(v9 + 168) = *(v14 - 8);
  *(v9 + 176) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  *(v9 + 184) = v15;
  v16 = *(v15 - 8);
  *(v9 + 192) = v16;
  *(v9 + 200) = *(v16 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6F73BC, 0, 0);
}

uint64_t sub_24F6F73BC()
{
  v1 = *(v0 + 216);
  v33 = *(v0 + 208);
  v2 = *(v0 + 192);
  v34 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v23 = v6;
  v24 = v3;
  v29 = *(v0 + 112);
  v7 = *(v0 + 96);
  v27 = *(v0 + 136);
  v28 = *(v0 + 88);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);
  v31 = *(v0 + 248);
  v30 = *(v0 + 32);
  v21 = *(v0 + 24);
  v22 = v7;
  v19 = *(v0 + 16);
  v20 = *(v0 + 72);

  v32 = *(v0 + 56);
  sub_24F920FC8();
  v8 = sub_24F921038();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  (*(v5 + 16))(v3, v20, v32);
  sub_24E60169C(v19, v6, &qword_27F21DA20);
  sub_24E60169C(v21, v7, &qword_27F21DA18);
  (*(v2 + 16))(v33, v1, v34);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v27 + *(v25 + 80) + v9) & ~*(v25 + 80);
  v11 = (v29 + *(v26 + 80) + v10) & ~*(v26 + 80);
  v12 = (v28 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v2 + 80) + v12 + 9) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v32;
  (*(v5 + 32))(v14 + v9, v24, v32);
  sub_24E6009C8(v23, v14 + v10, &qword_27F21DA20);
  sub_24E6009C8(v22, v14 + v11, &qword_27F21DA18);
  v15 = v14 + v12;
  *v15 = v30;
  *(v15 + 8) = v31 & 1;
  (*(v2 + 32))(v14 + v13, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  sub_24E772624(&qword_27F24D8A8);
  sub_24E772624(&qword_27F24D8B0);
  sub_24F920A28();
  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  *v16 = v0;
  v16[1] = sub_24F6F7750;
  v17 = *(v0 + 160);

  return MEMORY[0x282164EA8](v17);
}

uint64_t sub_24F6F7750(uint64_t a1)
{
  v4 = *v2;
  v4[29] = v1;

  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_24F6F79B4;
  }

  else
  {
    v4[30] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_24F6F78D8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24F6F78D8()
{
  (*(v0[24] + 8))(v0[27], v0[23]);

  v1 = v0[1];
  v2 = v0[30];

  return v1(v2);
}

uint64_t sub_24F6F79B4()
{
  (*(v0[24] + 8))(v0[27], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F6F7A8C()
{
  v1 = v0;
  sub_24F920718();
  swift_getKeyPath();
  sub_24F6FB3B8(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v0 + 64);
  if (*(v2 + 16))
  {
    sub_24F92D068();

    sub_24F92B218();
    v3 = sub_24F92D0B8();
    v4 = -1 << *(v2 + 32);
    v5 = v3 & ~v4;
    if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v4;
      while (1)
      {
        v7 = *(*(v2 + 48) + v5);
        if (v7 != 1 && v7 != 2)
        {
          break;
        }

        v8 = sub_24F92CE08();

        if ((v8 & 1) == 0)
        {
          v5 = (v5 + 1) & v6;
          if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

LABEL_12:
  }

  sub_24F9206A8();
  swift_getKeyPath();
  sub_24F91FD88();

  v9 = *(v1 + 64);
  if (*(v9 + 16))
  {
    sub_24F92D068();

    sub_24F92B218();
    v10 = sub_24F92D0B8();
    v11 = -1 << *(v9 + 32);
    v12 = v10 & ~v11;
    if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (!*(*(v9 + 48) + v12) || *(*(v9 + 48) + v12) == 2)
      {
        v14 = sub_24F92CE08();

        if ((v14 & 1) == 0)
        {
          v12 = (v12 + 1) & v13;
          if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

LABEL_24:
  }

  sub_24F920688();
  swift_getKeyPath();
  sub_24F91FD88();

  v15 = *(v1 + 64);
  if (*(v15 + 16))
  {
    sub_24F92D068();

    sub_24F92B218();
    v16 = sub_24F92D0B8();
    v17 = -1 << *(v15 + 32);
    v18 = v16 & ~v17;
    if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      while (!*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 1)
      {
        v20 = sub_24F92CE08();

        if ((v20 & 1) == 0)
        {
          v18 = (v18 + 1) & v19;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            continue;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_36:
  }

  sub_24F9206B8();
  swift_getKeyPath();
  sub_24F91FD88();

  v22 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24F93DE60;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;

    return sub_24F920708();
  }

  return result;
}

uint64_t sub_24F6F8038()
{
  *(v0 + 40) = &_s14descr2861AC041O5GamesON;
  v1 = sub_24EDA569C();
  *(v0 + 16) = 3;
  *(v0 + 48) = v1;
  v2 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2)
  {
    v3 = type metadata accessor for PhotosAssetManager();
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_24F6F8158;

    return MEMORY[0x28217F228](v0 + 56, v3, v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_24F6F8158()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EBE275C;
  }

  else
  {
    v2 = sub_24EDFA338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6F826C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 72) = v16;
  *(v9 + 80) = v8;
  *(v9 + 56) = a8;
  *(v9 + 64) = v15;
  *(v9 + 225) = a7;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 224) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18);
  *(v9 + 88) = swift_task_alloc();
  v10 = sub_24F920398();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20);
  *(v9 + 128) = swift_task_alloc();
  v11 = sub_24F920728();
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v11 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  *(v9 + 168) = swift_task_alloc();
  v12 = sub_24F920A18();
  *(v9 + 176) = v12;
  *(v9 + 184) = *(v12 - 8);
  *(v9 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6F84C4, 0, 0);
}

uint64_t sub_24F6F84C4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[2];

  sub_24F920FC8();
  sub_24F9209F8();
  sub_24E60169C(v4, v3, &qword_27F21DA20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[16], &qword_27F21DA20);
  }

  else
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[17];
    v8 = v0[18];
    (*(v8 + 32))(v5, v0[16], v7);
    (*(v8 + 16))(v6, v5, v7);
    sub_24F920A08();
    (*(v8 + 8))(v5, v7);
  }

  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  sub_24E60169C(v0[3], v11, &qword_27F21DA18);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_24E601704(v0[11], &qword_27F21DA18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    (*(v15 + 32))(v12, v0[11], v14);
    (*(v15 + 16))(v13, v12, v14);
    sub_24F9209C8();
    (*(v15 + 8))(v12, v14);
  }

  sub_24F9209D8();
  sub_24F9209B8();
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_24F6F876C;
  v17 = v0[24];
  v18 = v0[9];
  v19 = v0[7];
  v20 = v0[8];

  return sub_24F6F9830(v17, v19, v20, v18);
}

uint64_t sub_24F6F876C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_24F6F8978;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_24F6F8894;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F6F8894()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];
  v2 = v0[27];

  return v1(v2);
}

uint64_t sub_24F6F8978()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F6F8A58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = v5;
  *(v6 + 192) = a2;
  *(v6 + 200) = a4;
  *(v6 + 404) = a3;
  *(v6 + 184) = a1;
  v7 = type metadata accessor for Player(0);
  *(v6 + 224) = v7;
  *(v6 + 232) = *(v7 - 8);
  *(v6 + 240) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  *(v6 + 248) = v8;
  *(v6 + 256) = *(v8 - 8);
  *(v6 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B670);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24B678);
  *(v6 + 288) = v9;
  *(v6 + 296) = *(v9 - 8);
  *(v6 + 304) = swift_task_alloc();
  v10 = sub_24F9211A8();
  *(v6 + 312) = v10;
  *(v6 + 320) = *(v10 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6F8CA0, 0, 0);
}

uint64_t sub_24F6F8CA0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[24];
  sub_24F920548();
  v4 = v0[21];
  v5 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[43] = v7;
  *(v7 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v7 + v6, v3, v1);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_24F6F8DDC;

  return MEMORY[0x282165110](v7, v4, v5);
}

uint64_t sub_24F6F8DDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_24F6F9638;
  }

  else
  {

    v4 = sub_24F6F8EF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F6F8EF8()
{
  v1 = v0[45];
  if (*(v1 + 16))
  {
    v2 = *(v0[37] + 80);
    sub_24E60169C(v1 + ((v2 + 32) & ~v2), v0[35], qword_27F24B678);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];

  (*(v5 + 56))(v6, v3, 1, v4);
  sub_24E6009C8(v6, v7, &qword_27F24B670);
  if ((*(v5 + 48))(v7, 1, v4) == 1)
  {
    (*(v0[40] + 56))(v0[38], 1, 1, v0[39]);
  }

  else
  {
    sub_24E6009C8(v0[34], v0[38], qword_27F24B678);
  }

  v8 = v0[39];
  v9 = v0[40];
  v10 = v0[38];
  __swift_destroy_boxed_opaque_existential_1((v0 + 18));
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_24E601704(v0[38], qword_27F24B678);
    (*(v0[29] + 56))(v0[23], 1, 1, v0[28]);

    v11 = v0[1];
LABEL_11:

    return v11();
  }

  v12 = v0[46];
  (*(v0[40] + 32))(v0[42], v0[38], v0[39]);
  sub_24F921168();
  sub_24F920FD8();
  v0[47] = v12;
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[31];
  if (v12)
  {
    v16 = v0[42];
    v17 = v0[39];
    v18 = v0[40];
    (*(v14 + 8))(v13, v15);
    (*(v18 + 8))(v16, v17);

    v11 = v0[1];
    goto LABEL_11;
  }

  (*(v14 + 8))(v13, v15);
  v20 = [objc_opt_self() proxyForLocalPlayer];
  v21 = [v20 accountServicePrivate];
  v0[48] = v21;

  v22 = sub_24F92B098();
  v0[49] = v22;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_24F6F9358;
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F1676B4;
  v0[13] = &block_descriptor_169;
  v0[14] = v23;
  [v21 getAccountAgeCategoryForPlayerID:v22 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F6F9358()
{

  return MEMORY[0x2822009F8](sub_24F6F9438, 0, 0);
}

uint64_t sub_24F6F9438()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 240);
  v8 = *(v0 + 400);
  swift_unknownObjectRelease();

  (*(v6 + 16))(v3, v4, v5);
  sub_24EC471A4(v3, v8 == 3, v7);
  v9 = *(v0 + 336);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  if (v2)
  {
    (*(v11 + 8))(v9, v10);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 404);
    (*(v11 + 8))(v9, v10);
    if (v13 != 2)
    {
      *(*(v0 + 240) + *(*(v0 + 224) + 56)) = *(v0 + 404) & 1;
    }

    sub_24E6B2600(*(v0 + 240), *(v0 + 184), type metadata accessor for Player);
    (*(*(v0 + 232) + 56))(*(v0 + 184), 0, 1, *(v0 + 224));

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_24F6F9638()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6F9730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_24E614970;

  return MEMORY[0x282164958](a1, a4, a5, a6, a7 & 1, a2, a8, a9, a10);
}

uint64_t sub_24F6F9830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0);
  v5[7] = swift_task_alloc();
  v5[8] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8) - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_24F920358();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for Game();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED18);
  v5[20] = swift_task_alloc();
  v9 = sub_24F9207B8();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v5[25] = v10;
  v5[26] = *(v10 - 8);
  v5[27] = swift_task_alloc();
  v11 = sub_24F920C98();
  v5[28] = v11;
  v5[29] = *(v11 - 8);
  v5[30] = swift_task_alloc();
  v12 = sub_24F920A18();
  v5[31] = v12;
  v13 = *(v12 - 8);
  v5[32] = v13;
  v5[33] = *(v13 + 64);
  v5[34] = swift_task_alloc();
  v14 = *(a3 - 8);
  v5[35] = v14;
  v5[36] = *(v14 + 64);
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v5[38] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6D0);
  v5[39] = v15;
  v5[40] = *(v15 - 8);
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6F9D08, 0, 0);
}

uint64_t sub_24F6F9D08()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v10 = sub_24F921038();
  v18 = *(v0 + 32);
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  (*(v4 + 16))(v1, v8, v18);
  (*(v6 + 16))(v5, v9, v7);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  (*(v4 + 32))(v13 + v11, v1, v18);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = MEMORY[0x277D0CE08];
  sub_24F6FB3B8(&qword_27F21E6D8, MEMORY[0x277D0CE08]);
  sub_24F6FB3B8(&qword_27F21E6E0, v14);
  sub_24F920A28();
  v15 = swift_task_alloc();
  *(v0 + 336) = v15;
  *v15 = v0;
  v15[1] = sub_24F6F9F84;
  v16 = *(v0 + 312);

  return MEMORY[0x282164EA8](v16);
}

uint64_t sub_24F6F9F84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 320);
  v6 = *(*v2 + 312);
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_24F6FAB34;
  }

  else
  {
    v7 = sub_24F6FA0F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F6FA0F8()
{
  v1 = v0[43];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[26];
    v4 = v0[22];
    v21 = MEMORY[0x277D84F90];
    sub_24F457F58(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v19 = *(v4 + 56);
    v20 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[24];
      v9 = v0[21];
      v20(v8, v6, v9);
      sub_24F9207A8();
      (*v7)(v8, v9);
      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24F457F58(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[27];
      v13 = v0[25];
      *(v21 + 16) = v11 + 1;
      (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  sub_24F920C88();
  sub_24F9209A8();
  sub_24F920C78();
  v14 = swift_task_alloc();
  v0[45] = v14;
  *v14 = v0;
  v14[1] = sub_24F6FA304;
  v15 = v0[30];
  v16 = v0[5];
  v17 = v0[4];

  return MEMORY[0x282164948](v15, v17, v16);
}

uint64_t sub_24F6FA304(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {

    v4 = sub_24F6FAC70;
  }

  else
  {
    v4 = sub_24F6FA420;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F6FA420()
{
  result = v0[43];
  v58 = *(result + 16);
  if (!v58)
  {
    v60 = MEMORY[0x277D84F90];
LABEL_28:

LABEL_29:
    (*(v0[29] + 8))(v0[30], v0[28]);

    v43 = v0[1];

    return v43(v60);
  }

  v2 = 0;
  v3 = v0[22];
  v4 = v0[11];
  v54 = (v4 + 48);
  v55 = (v3 + 32);
  v47 = (v4 + 16);
  v48 = (v4 + 32);
  v53 = v0[19];
  v57 = v3;
  v45 = (v4 + 8);
  v46 = (v3 + 56);
  v5 = MEMORY[0x277D84F90];
  v6 = v0[16];
  v51 = v0[8];
  v52 = (v6 + 56);
  v44 = v6;
  v56 = v0[46];
  v49 = v0[47];
  v50 = (v6 + 48);
  while (1)
  {
    v7 = v0[43];
    if (v2 >= *(v7 + 16))
    {
      break;
    }

    v8 = *(v57 + 16);
    result = v8(v0[23], v7 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v2, v0[21]);
    v9 = *(v56 + 16);
    if (v2 == v9)
    {
      v60 = v5;
      v40 = v0[22];
      v41 = v0[23];
      v42 = v0[21];

      (*(v40 + 8))(v41, v42);
      goto LABEL_29;
    }

    if (v2 >= v9)
    {
      goto LABEL_33;
    }

    v10 = v0[20];
    v11 = v0[9];
    v12 = v0[10];
    v61 = v2;
    v13 = v0[46] + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v2;
    v14 = *(v53 + 48);
    (*v55)(v10, v0[23], v0[21]);
    sub_24E60169C(v13, v10 + v14, &qword_27F21E6C8);
    sub_24E60169C(v10 + v14, v11, &qword_27F21E6C8);
    if ((*v54)(v11, 1, v12) == 1)
    {
      sub_24E601704(v0[9], &qword_27F21E6C8);
LABEL_18:
      v31 = 1;
      goto LABEL_19;
    }

    v59 = v5;
    v16 = v0[20];
    v15 = v0[21];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[10];
    v21 = v0[7];
    v22 = v0[3];
    (*v48)(v18, v0[9], v20);
    (*v47)(v19, v18, v20);
    v8(v21, v16, v15);
    (*v46)(v21, 0, 1, v15);

    sub_24E7EEEDC(v19, v21, v22, v17);
    (*v45)(v0[13], v0[10]);
    if (v49)
    {
      v5 = v59;
      if (qword_27F2113E0 != -1)
      {
        swift_once();
      }

      v23 = sub_24F9220D8();
      __swift_project_value_buffer(v23, qword_27F39E7F0);
      v24 = v49;
      v25 = sub_24F9220B8();
      v26 = sub_24F92BDB8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = v49;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_24E5DD000, v25, v26, "Encountered error while attempting to construct a game: %@", v27, 0xCu);
        sub_24E601704(v28, &qword_27F227B20);
        MEMORY[0x2530542D0](v28, -1, -1);
        MEMORY[0x2530542D0](v27, -1, -1);
      }

      else
      {
      }

      v49 = 0;
      goto LABEL_18;
    }

    v49 = 0;
    v31 = 0;
    v5 = v59;
LABEL_19:
    v32 = v0[20];
    v34 = v0[14];
    v33 = v0[15];
    (*v52)(v34, v31, 1, v33);
    sub_24E601704(v32, &qword_27F21ED18);
    if ((*v50)(v34, 1, v33) == 1)
    {
      result = sub_24E601704(v0[14], &qword_27F216FE0);
    }

    else
    {
      v35 = v0[17];
      v36 = v0[18];
      sub_24E6B2600(v0[14], v36, type metadata accessor for Game);
      sub_24E6B2600(v36, v35, type metadata accessor for Game);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E616850(0, v5[2] + 1, 1, v5);
      }

      v38 = v5[2];
      v37 = v5[3];
      if (v38 >= v37 >> 1)
      {
        v5 = sub_24E616850(v37 > 1, v38 + 1, 1, v5);
      }

      v39 = v0[17];
      v5[2] = v38 + 1;
      result = sub_24E6B2600(v39, v5 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, type metadata accessor for Game);
    }

    v2 = v61 + 1;
    if (v58 == v61 + 1)
    {
      v60 = v5;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24F6FAB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6FAC70()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F6FADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v6[8] = swift_task_alloc();
  v7 = sub_24F920A18();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6FAEC4, 0, 0);
}

uint64_t sub_24F6FAEC4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  (*(v2 + 16))(v1, v0[5], v3);
  sub_24E60169C(v5, v4, &qword_27F21C048);
  sub_24F9209E8();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_24F6FAFDC;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[2];

  return MEMORY[0x282164940](v10, v9, v7, v8);
}

uint64_t sub_24F6FAFDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F6FB120()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F920A18();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F6FB260(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(*(v7 - 8) + 64);
  v10 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v11 = *(sub_24F920A18() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24E6541E4;

  return sub_24F6FADC4(a1, a2, v2 + v10, v2 + v12, v7, v8);
}

uint64_t sub_24F6FB3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F6FB400()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v17 = *(v8 + 64);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v10 = *(v18 - 8);
  v11 = *(v10 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_24F920728();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6, 1, v12))
  {
    (*(v13 + 8))(v0 + v6, v12);
  }

  v14 = sub_24F920398();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v9, 1, v14))
  {
    (*(v15 + 8))(v0 + v9, v14);
  }

  (*(v10 + 8))(v0 + ((((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 9) & ~v11), v18);

  return swift_deallocObject();
}