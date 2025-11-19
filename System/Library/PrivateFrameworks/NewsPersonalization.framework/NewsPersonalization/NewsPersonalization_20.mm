uint64_t sub_1C6CF6804(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

id sub_1C6CF68C0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CF7628();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = [result personalizationData];

    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCE9290);
    result = sub_1C6D77FE0();
    if (v8[3])
    {
      v7 = objc_allocWithZone(type metadata accessor for NewsPersonalizer());
      return NewsPersonalizer.init(context:configurationManager:)(v5, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6CF69B4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v94 = a2;
  v3 = sub_1C6D75AD0();
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1C6D76A40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v85 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsPersonalizer();
  result = sub_1C6D77FD0();
  v91 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v90 = v3;
  sub_1C6CF751C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6D82CB0;
  ActionTranslator = type metadata accessor for ArticleReadActionTranslator();
  v18 = swift_allocObject();
  *(v16 + 56) = ActionTranslator;
  *(v16 + 64) = &off_1F467B580;
  *(v16 + 32) = v18;
  v19 = type metadata accessor for ArticleSeenActionTranslator();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CD0];
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  *(v16 + 96) = v19;
  *(v16 + 104) = &off_1F4675D10;
  *(v16 + 72) = v20;
  v22 = type metadata accessor for ArticleVisitedActionTranslator();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v16 + 136) = v22;
  *(v16 + 144) = &off_1F467A490;
  *(v16 + 112) = v23;
  v24 = type metadata accessor for BlockTagActionTranslator();
  v25 = swift_allocObject();
  *(v16 + 176) = v24;
  *(v16 + 184) = &off_1F4674CB0;
  *(v16 + 152) = v25;
  v26 = type metadata accessor for DislikeActionTranslator();
  v27 = swift_allocObject();
  *(v16 + 216) = v26;
  *(v16 + 224) = &off_1F4676480;
  *(v16 + 192) = v27;
  v28 = type metadata accessor for UndislikeActionTranslator();
  v29 = swift_allocObject();
  *(v16 + 256) = v28;
  *(v16 + 264) = &off_1F4673478;
  *(v16 + 232) = v29;
  v30 = type metadata accessor for FeedViewActionTranslator();
  v31 = swift_allocObject();
  *(v16 + 296) = v30;
  *(v16 + 304) = &off_1F46751C0;
  *(v16 + 272) = v31;
  v32 = type metadata accessor for FollowTagActionTranslator();
  v33 = swift_allocObject();
  *(v16 + 336) = v32;
  *(v16 + 344) = &off_1F4673A90;
  *(v16 + 312) = v33;
  v34 = type metadata accessor for IgnoreTagActionTranslator();
  v35 = swift_allocObject();
  *(v16 + 376) = v34;
  *(v16 + 384) = &off_1F4673E48;
  *(v16 + 352) = v35;
  v36 = type metadata accessor for LikeActionTranslator();
  v37 = swift_allocObject();
  *(v16 + 416) = v36;
  *(v16 + 424) = &off_1F4675A60;
  *(v16 + 392) = v37;
  v38 = type metadata accessor for UnlikeActionTranslator();
  v39 = swift_allocObject();
  *(v16 + 456) = v38;
  *(v16 + 464) = &off_1F4676710;
  *(v16 + 432) = v39;
  v40 = type metadata accessor for SaveActionTranslator();
  v41 = swift_allocObject();
  *(v16 + 496) = v40;
  *(v16 + 504) = &off_1F4678C50;
  *(v16 + 472) = v41;
  v42 = type metadata accessor for UnsaveActionTranslator();
  v43 = swift_allocObject();
  *(v16 + 536) = v42;
  *(v16 + 544) = &off_1F46751D0;
  *(v16 + 512) = v43;
  v44 = type metadata accessor for SessionEndActionTranslator();
  v45 = swift_allocObject();
  *(v16 + 576) = v44;
  *(v16 + 584) = &off_1F467B590;
  *(v16 + 552) = v45;
  started = type metadata accessor for SessionStartActionTranslator();
  v47 = swift_allocObject();
  *(v16 + 616) = started;
  *(v16 + 624) = &off_1F467A540;
  *(v16 + 592) = v47;
  v48 = type metadata accessor for ShareActionTranslator();
  v49 = swift_allocObject();
  *(v16 + 656) = v48;
  *(v16 + 664) = &off_1F467A9C0;
  *(v16 + 632) = v49;
  v50 = type metadata accessor for SportsTagSeenActionTranslator();
  v51 = swift_allocObject();
  *(v16 + 696) = v50;
  *(v16 + 704) = &off_1F467A620;
  *(v16 + 672) = v51;
  v52 = type metadata accessor for TrackFinishedActionTranslator();
  v53 = swift_allocObject();
  *(v16 + 736) = v52;
  *(v16 + 744) = &off_1F4675450;
  *(v16 + 712) = v53;
  v54 = type metadata accessor for TrackListenedActionTranslator();
  v55 = swift_allocObject();
  *(v16 + 776) = v54;
  *(v16 + 784) = &off_1F4676490;
  *(v16 + 752) = v55;
  v56 = type metadata accessor for TrackVisitedActionTranslator();
  v57 = swift_allocObject();
  *(v16 + 816) = v56;
  *(v16 + 824) = &off_1F46736F8;
  *(v16 + 792) = v57;
  v58 = type metadata accessor for UnblockTagActionTranslator();
  v59 = swift_allocObject();
  *(v16 + 856) = v58;
  *(v16 + 864) = &off_1F4673368;
  *(v16 + 832) = v59;
  v60 = type metadata accessor for UnfollowTagActionTranslator();
  v61 = swift_allocObject();
  *(v16 + 896) = v60;
  *(v16 + 904) = &off_1F467B818;
  *(v16 + 872) = v61;
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  v89 = result;
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v63 = v11;
  v64 = v13;
  v65 = v7;
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SessionTracker();
  result = sub_1C6D77FD0();
  v88 = result;
  if (result)
  {
    v67 = type metadata accessor for XavierEventProcessor();
    v68 = objc_allocWithZone(v67);
    v69 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration;
    sub_1C6D76A30();
    v87 = *(v65 + 16);
    v87(v63, v64, v6);
    sub_1C6CF7588();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v73 = sub_1C6D78220();
    v86 = *(v65 + 8);
    v86(v64, v6);
    *&v68[v69] = v73;
    v74 = v91;
    *&v68[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_personalizer] = v91;
    *&v68[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_actionTranslators] = v16;
    v75 = sub_1C6D75B10();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    v91 = v74;
    *&v68[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_jsonDecoder] = sub_1C6D75B00();
    v79 = v92;
    v78 = v93;
    *v92 = sub_1C6C170DC;
    v79[1] = 0;
    (*(v78 + 104))(v79, *MEMORY[0x1E6967F20], v90);

    sub_1C6D75AE0();

    *&v68[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_sessionTracker] = v88;
    v95.receiver = v68;
    v95.super_class = v67;

    v80 = objc_msgSendSuper2(&v95, sel_init);
    v81 = v89;
    v82 = [objc_msgSend(v89 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    sub_1C6B7A268();

    v83 = *&v80[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration];
    v87(v63, v64, v6);

    sub_1C6D78240();

    v86(v64, v6);
    [v81 addAppConfigObserver_];

    swift_unknownObjectRelease();

    result = sub_1C6CF75E0(&unk_1EDCE2098, type metadata accessor for XavierEventProcessor);
    v84 = v94;
    *v94 = v80;
    v84[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6CF7230@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C830();
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    type metadata accessor for RecipeEventProcessor();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    result = sub_1C6CF75E0(qword_1EDCE21F0, type metadata accessor for RecipeEventProcessor);
    *a2 = v6;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CF72E0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCE9840);
    result = sub_1C6D77FC0();
    if (v8)
    {
      sub_1C6B0C830();
      v6 = swift_allocObject();
      *(v6 + 64) = 0;
      *(v6 + 16) = v4;
      sub_1C6C2E0C4(&v7, v6 + 24);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CF73DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  sub_1C6D78FD0();
  v4 = sub_1C6D77FB0();

  if (v4)
  {
    v6 = type metadata accessor for SessionStorage();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v6;
    a2[4] = &protocol witness table for SessionStorage;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CF74A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C6D79B80();
  v3 = v2;

  _s7FactoryCMa();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 1;
  *(result + 40) = 1;
  return result;
}

void sub_1C6CF751C()
{
  if (!qword_1EDCDF518)
  {
    sub_1C6B0C7D4(255, qword_1EDCE0FB0);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF518);
    }
  }
}

void sub_1C6CF7588()
{
  if (!qword_1EDCE5DE0)
  {
    sub_1C6D76A40();
    v0 = sub_1C6D78250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5DE0);
    }
  }
}

uint64_t sub_1C6CF75E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6CF7628()
{
  result = qword_1EDCE7F00;
  if (!qword_1EDCE7F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7F00);
  }

  return result;
}

uint64_t ArticleSaveEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleSaveEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6CF8B04(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleSaveEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6CF8B04(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleSaveEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77730();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleSaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CF7E00(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6CF7F0C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77720();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleSaveEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77740();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleSaveEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77760();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleSaveEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77750();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6CF8844(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77720();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleSaveEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77760();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6CF8B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6CF8BA4()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6CF8CA4()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77730();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleSaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CF8DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77720();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6CF8F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6CF901C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77720();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6CF9108()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77760();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

char *SessionContainer.__allocating_init(identifier:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = *v9;
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  (*(*(*(v10 + 80) - 8) + 32))(&v9[*(v10 + 104)], a3);
  return v9;
}

uint64_t SessionContainer.identifier.getter()
{
  v0 = sub_1C6CF9DB0();

  return v0;
}

uint64_t SessionContainer.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t SessionContainer.session.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*SessionContainer.session.modify())()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return j__swift_endAccess;
}

char *SessionContainer.init(identifier:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  (*(*(*(v4 + 80) - 8) + 32))(&v3[*(v4 + 104)], a3);
  return v3;
}

uint64_t SessionContainer.hasEvents.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(v2 + 88) + 16))(v3);
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t SessionContainer.numberOfEvents.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(v2 + 88) + 24))(v3);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t SessionContainer.start(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(v3 + 88) + 32))(a1, *(v3 + 80));
  return swift_endAccess();
}

uint64_t SessionContainer.end(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(v3 + 88) + 40))(a1, *(v3 + 80));
  return swift_endAccess();
}

uint64_t SessionContainer.serialize()(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  v10 = (*(*(v3 + 88) + 48))(v4);
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v10;
  (*(v5 + 8))(v8, v4);
  return v12;
}

char *SessionContainer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t SessionContainer.__deallocating_deinit()
{
  SessionContainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CF9CA8()
{
  v1 = *v0;
  v2 = sub_1C6CF9DB0();

  return v2;
}

uint64_t sub_1C6CF9D78(uint64_t a1)
{
  v3 = *v1;
  result = SessionContainer.serialize()(a1);
  if (v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C6CF9DB0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1C6CF9DB8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SessionStorage.__allocating_init(storage:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void SessionStorage.persistSession(with:data:)()
{
  v1 = *(v0 + 16);
  v2 = sub_1C6D79570();
  v3 = sub_1C6D75E50();
  [v1 storeSessionID:v2 sessionData:v3];
}

uint64_t SessionStorage.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1C6CF9FAC()
{
  v1 = *(*v0 + 16);
  v2 = sub_1C6D79570();
  v3 = sub_1C6D75E50();
  [v1 storeSessionID:v2 sessionData:v3];
}

uint64_t sub_1C6CFA0C4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6B2064C();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1C6D79AC0();
  sub_1C6D78D30();
}

uint64_t SessionManager.startSession(with:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(*v3 + 112);
  swift_beginAccess();
  if (*(v3 + v9))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6D7EB10;
    if (*(v3 + v9))
    {
      v12 = *(v8 + 80);
      v11 = *(v8 + 88);
      swift_getAssociatedTypeWitness();
      v13 = *(swift_getAssociatedConformanceWitness() + 8);
      v14 = *(v13 + 8);
      v15 = swift_checkMetadataState();
      v14(v15, v13);
    }

    sub_1C6B95D68();
    v23 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v23);

    v24 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1C6B2064C();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v24;
    *(v10 + 104) = v25;
    *(v10 + 64) = v25;
    *(v10 + 72) = a1;
    *(v10 + 80) = a2;

    v22 = 2;
    sub_1C6D78D30();

    v26 = *(v8 + 80);
    v27 = *(v8 + 88);
    type metadata accessor for SessionManager.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6D7E630;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C6B2064C();
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v17 = *(*v3 + 96);
    v18 = v3;
    v31 = (*(*(v8 + 88) + 24))(a1, a2, *(v8 + 80), *(v8 + 88));
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    v20 = *(v19 + 32);
    v21 = swift_checkMetadataState();
    v20(a3, v21, v19);
    v22 = v31;
    if (!v4)
    {
      v30 = *(v18 + v9);
      *(v18 + v9) = v31;
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
  }

  return v22;
}

uint64_t SessionManager.endSession(with:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v46 = sub_1C6B2064C();
  *(v8 + 64) = v46;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  v9 = *(*v3 + 112);
  swift_beginAccess();
  if (!*(v3 + v9))
  {
    v21 = *(v7 + 80);
    v22 = *(v7 + 88);
    type metadata accessor for SessionManager.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  v41 = v9;
  v48 = *(v3 + v9);
  v10 = *(v7 + 80);
  v11 = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  v12 = a1;
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v47 = a2;
  v14 = *(v13 + 8);
  swift_unknownObjectRetain();
  v15 = swift_checkMetadataState();
  v17 = v14(v15, v13) == v12 && v16 == a2;
  v42 = v12;
  if (v17)
  {

    v19 = v46;
  }

  else
  {
    v18 = sub_1C6D7A130();

    v19 = v46;
    if ((v18 & 1) == 0)
    {
      type metadata accessor for SessionManager.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v20 = 2;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  if ((*(v13 + 16))(v15, v13))
  {
    (*(v13 + 40))(a3, v15, v13);
    v25 = MEMORY[0x1E69E6158];
    if (v4)
    {
      return swift_unknownObjectRelease();
    }

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C6D7E630;
    *(v29 + 56) = v25;
    *(v29 + 64) = v46;
    *(v29 + 32) = v42;
    *(v29 + 40) = v47;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v30 = (*(v13 + 48))(v15, v13);
    v32 = v31;
    v33 = v30;
    v43 = v34;
    v45 = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C6D7EB10;
    *(v36 + 56) = v25;
    *(v36 + 64) = v46;
    *(v36 + 32) = v42;
    *(v36 + 40) = v47;
    *(v36 + 96) = v25;
    *(v36 + 104) = v46;
    *(v36 + 72) = v33;
    *(v36 + 80) = v32;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v27 = v3;
    v37 = (v3 + *(*v3 + 104));
    v38 = v37[3];
    v39 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v39 + 8))(v33, v32, v43, v45, v38, v39);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1C6D7E630;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v46;
    *(v40 + 32) = v42;
    *(v40 + 40) = v47;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    sub_1C6B1C9F0(v43, v45);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C6D7E630;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v19;
    *(v26 + 32) = v42;
    *(v26 + 40) = v47;

    sub_1C6D79AC0();
    sub_1C6D78D30();
    swift_unknownObjectRelease();

    v27 = v3;
  }

  v28 = *(v27 + v41);
  *(v27 + v41) = 0;
  return swift_unknownObjectRelease();
}

uint64_t SessionManager.__allocating_init(factory:storage:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SessionManager.init(factory:storage:)(a1, a2);
  return v7;
}

uint64_t SessionManager.session.getter()
{
  sub_1C6CFAFD4();

  return swift_unknownObjectRetain();
}

uint64_t SessionManager.session.setter(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*SessionManager.session.modify())()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *SessionManager.init(factory:storage:)(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 112)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_1C6C2E0C4(a2, v2 + *(*v2 + 104));
  return v2;
}

uint64_t SessionManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));
  v1 = *(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CFAF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  result = SessionManager.startSession(with:at:)(a1, a2, a3);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C6CFAF98@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = sub_1C6CFAFD4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C6CFAFD4()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C6CFB0D0()
{
  v1[2] = v0;
  v2 = sub_1C6D75DE0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1C6B10DA0(0);
  v6 = *(v5 - 8);
  v1[6] = v6;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = sub_1C6D78550();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6CFB250, 0, 0);
}

uint64_t sub_1C6CFB250()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v25 = v0[9];
  v26 = v0[3];
  v7 = v0[2];
  sub_1C6CFBDD0(0, &qword_1EC1D9578, sub_1C6B10DA0, MEMORY[0x1E69E6F90]);
  v8 = *(v4 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = *(v7 + OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_computeService);
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v1 + 8))(v2, v25);
  sub_1C6B18038(v10 + v9, v3);
  sub_1C6B14D2C(v3, v5);
  if ((*(v6 + 48))(v5, 1, v26) == 1)
  {
    sub_1C6CFBE34(v0[7], sub_1C6B10DA0);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = *(v0[4] + 32);
    v13(v0[5], v0[7], v0[3]);
    v12 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1C6B1A254(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1C6B1A254(v14 > 1, v15 + 1, 1, v12);
    }

    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    *(v12 + 2) = v15 + 1;
    v13(&v12[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15], v16, v18);
  }

  v19 = v0[11];
  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[5];
  swift_setDeallocating();
  sub_1C6CFBE34(v10 + v9, sub_1C6B10DA0);
  swift_deallocClassInstance();

  v23 = v0[1];

  return v23(v12);
}

uint64_t sub_1C6CFB508()
{
  v1 = (*(v0 + 152) + OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_personalizationInspectionGroupProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69B68A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1C6CFB5C8;

  return MEMORY[0x1EEE229C8](v2, v3);
}

uint64_t sub_1C6CFB5C8(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C6CFB6C8, 0, 0);
}

uint64_t sub_1C6CFB6C8()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_1C6D79CC0();
    v24 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_17;
      }

      v25 = v2;
      v26 = *(v1 + 36);
      v6 = (*(v1 + 48) + 16 * v5);
      v7 = *v6;
      v8 = v6[1];
      sub_1C6B16F28(*(v1 + 56) + 40 * v5, v0 + 32);
      *(v0 + 72) = v7;
      *(v0 + 80) = v8;
      sub_1C6B15E34((v0 + 32), v0 + 88);
      v9 = v1;
      v10 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
      v11 = sub_1C6D75B70();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();

      sub_1C6D75B60();
      sub_1C6D75B50();

      v14 = objc_allocWithZone(sub_1C6D78010());

      v1 = sub_1C6D78000();
      sub_1C6CFBE34(v0 + 72, sub_1C6CFBD54);
      sub_1C6D79DC0();
      v15 = *(v27 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      if (v5 >= -(-1 << *(v9 + 32)))
      {
        goto LABEL_18;
      }

      v3 = v24;
      if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_19;
      }

      v1 = v9;
      if (v26 != *(v9 + 36))
      {
        goto LABEL_20;
      }

      v5 = sub_1C6D79CE0();
      v2 = v25 - 1;
      if (v25 == 1)
      {
        v16 = *(v0 + 168);

        v17 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    swift_once();
    sub_1C6D79AA0();
    sub_1C6B1D314();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6D7E630;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 144) = v1;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C6B2064C();
    *(v19 + 32) = v21;
    *(v19 + 40) = v20;
    sub_1C6D78D30();
  }

  else
  {
    v18 = *(v0 + 168);
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v22 = *(v0 + 8);

  return v22(v17);
}

uint64_t sub_1C6CFBB24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CFBE94;

  return sub_1C6CFB0D0();
}

uint64_t sub_1C6CFBBB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CFBC3C;

  return sub_1C6CFB4E8();
}

uint64_t sub_1C6CFBC3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1C6CFBD54()
{
  if (!qword_1EC1D9568)
  {
    sub_1C6B10A98(255, &qword_1EC1D9570);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9568);
    }
  }
}

void sub_1C6CFBDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CFBE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6CFBE98(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v141 = a2;
  v129 = sub_1C6D773E0();
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = v118 - v8;
  v125 = sub_1C6D77EC0();
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v123 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1C6CFD4FC(0, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = v118 - v14;
  v134 = sub_1C6D77E80();
  v136 = *(v134 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v121 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD308();
  v131 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v133 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD4FC(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v11);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v118 - v22;
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v11);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v122 = v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v135 = v118 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v132 = v118 - v30;
  v140 = sub_1C6D77430();
  v31 = *(v140 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1C6D77800();
  v137 = *(v142 - 8);
  v34 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v143 = v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418();
  v37 = v36;
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v41 = v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6D77290();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  (*(v46 + 16))(v118 - v45, a1, v42, v44);
  if (swift_dynamicCast())
  {
    v120 = a3;
    (*(v38 + 8))(v41, v37);
    v47 = sub_1C6D77270();
    v48 = v145;
    v49 = sub_1C6D77330();
    v51 = v50;

    if (v48)
    {
      return;
    }

    sub_1C6CFD560(&qword_1EDCE5F50, MEMORY[0x1E69B4778]);
    v52 = v142;
    sub_1C6D75AF0();
    v145 = 0;
    v119 = v49;
    v141 = v51;
    v53 = v138;
    swift_beginAccess();
    v54 = *(v53 + 16);

    v55 = v139;
    sub_1C6D77790();
    v56 = sub_1C6D77420();
    v58 = v57;
    v59 = *(v31 + 8);
    v118[1] = v31 + 8;
    v118[0] = v59;
    v59(v55, v140);
    LOBYTE(v56) = sub_1C6B1E978(v56, v58, v54);

    if (v56)
    {
      a3 = v120;
      if (qword_1EDCEA6A0 != -1)
      {
        swift_once();
      }

      sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1C6D7E630;
      v61 = v139;
      v62 = v143;
      sub_1C6D77790();
      v63 = sub_1C6D77420();
      v65 = v64;
      (v118[0])(v61, v140);
      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1C6B2064C();
      *(v60 + 32) = v63;
      *(v60 + 40) = v65;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6B1C9F0(v119, v141);

      (*(v137 + 8))(v62, v52);
      goto LABEL_7;
    }

    sub_1C6D777C0();
    v67 = sub_1C6D77E60();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v23, 1, v67) == 1)
    {
      sub_1C6CFD430(v23, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
      v69 = 1;
      v70 = v134;
      v71 = v132;
    }

    else
    {
      v71 = v132;
      sub_1C6D77E50();
      (*(v68 + 8))(v23, v67);
      v69 = 0;
      v70 = v134;
    }

    v73 = v135;
    v72 = v136;
    v74 = *(v136 + 56);
    v74(v71, v69, 1, v70);
    (*(v72 + 104))(v73, *MEMORY[0x1E69B4B58], v70);
    v74(v73, 0, 1, v70);
    v75 = *(v131 + 48);
    v76 = v133;
    sub_1C6CFD39C(v71, v133);
    sub_1C6CFD39C(v73, v76 + v75);
    v77 = *(v72 + 48);
    if (v77(v76, 1, v70) == 1)
    {
      v78 = MEMORY[0x1E69B4BF0];
      sub_1C6CFD430(v73, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
      sub_1C6CFD430(v71, &qword_1EDCE5E40, v78);
      v79 = v77(v76 + v75, 1, v70);
      v80 = v120;
      v81 = v143;
      if (v79 == 1)
      {
        sub_1C6CFD430(v76, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
        goto LABEL_24;
      }
    }

    else
    {
      v82 = v122;
      sub_1C6CFD39C(v76, v122);
      if (v77(v76 + v75, 1, v70) != 1)
      {
        v90 = v136;
        v91 = v121;
        (*(v136 + 32))(v121, v76 + v75, v70);
        sub_1C6CFD560(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0]);
        v92 = sub_1C6D79560();
        v93 = *(v90 + 8);
        v93(v91, v70);
        v94 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v135, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
        sub_1C6CFD430(v71, &qword_1EDCE5E40, v94);
        v93(v82, v70);
        sub_1C6CFD430(v76, &qword_1EDCE5E40, v94);
        v80 = v120;
        v81 = v143;
        if (v92)
        {
LABEL_24:
          if (qword_1EDCEA6A0 == -1)
          {
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_18:
        v84 = v130;
        sub_1C6D777B0();
        v85 = sub_1C6D774A0();
        v86 = *(v85 - 8);
        if ((*(v86 + 48))(v84, 1, v85) == 1)
        {
          sub_1C6CFD430(v84, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8]);
        }

        else
        {
          v87 = sub_1C6D77490();
          v89 = v88;
          (*(v86 + 8))(v84, v85);
          if (v87 == 0xD000000000000015 && 0x80000001C6DA75C0 == v89)
          {

            v81 = v143;
          }

          else
          {
            v95 = sub_1C6D7A130();

            v81 = v143;
            if ((v95 & 1) == 0)
            {
              if (qword_1EDCEA6A0 == -1)
              {
LABEL_32:
                sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
                v112 = swift_allocObject();
                *(v112 + 16) = xmmword_1C6D7E630;
                v113 = v139;
                sub_1C6D77790();
                v114 = sub_1C6D77420();
                v116 = v115;
                (v118[0])(v113, v140);
                *(v112 + 56) = MEMORY[0x1E69E6158];
                *(v112 + 64) = sub_1C6B2064C();
                *(v112 + 32) = v114;
                *(v112 + 40) = v116;
                sub_1C6D79AC0();
                sub_1C6D78D30();
                sub_1C6B1C9F0(v119, v141);

                (*(v137 + 8))(v81, v142);
                v117 = sub_1C6D76F90();
                (*(*(v117 - 8) + 56))(v80, 1, 1, v117);
                return;
              }

LABEL_33:
              swift_once();
              goto LABEL_32;
            }
          }
        }

        v96 = v123;
        sub_1C6D777D0();
        v97 = v126;
        sub_1C6D77EB0();
        (*(v124 + 8))(v96, v125);
        v98 = v128;
        v99 = v127;
        v100 = v129;
        (*(v128 + 104))(v127, *MEMORY[0x1E69B44C8], v129);
        sub_1C6CFD560(&unk_1EDCE5FE0, MEMORY[0x1E69B4538]);
        LOBYTE(v96) = sub_1C6D79560();
        v101 = *(v98 + 8);
        v101(v99, v100);
        v101(v97, v100);
        if ((v96 & 1) == 0)
        {
          v102 = v139;
          sub_1C6D77790();
          v103 = sub_1C6D77420();
          v105 = v104;
          (v118[0])(v102, v140);
          swift_beginAccess();
          sub_1C6B1E6A8(&v144, v103, v105);
          swift_endAccess();

          v106 = v142;
          v80[3] = v142;
          v107 = MEMORY[0x1E69B4778];
          v80[4] = sub_1C6CFD560(&qword_1EDCE5F68, MEMORY[0x1E69B4778]);
          v80[5] = sub_1C6CFD560(&qword_1EDCE5F60, v107);
          boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v80);
          (*(v137 + 32))(boxed_opaque_existential_2, v81, v106);
          sub_1C6B1C9F0(v119, v141);
          v109 = *MEMORY[0x1E69E3628];
          v110 = sub_1C6D76F90();
          v111 = *(v110 - 8);
          (*(v111 + 104))(v80, v109, v110);
          (*(v111 + 56))(v80, 0, 1, v110);
          return;
        }

        if (qword_1EDCEA6A0 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v83 = MEMORY[0x1E69B4BF0];
      sub_1C6CFD430(v135, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0]);
      sub_1C6CFD430(v71, &qword_1EDCE5E40, v83);
      (*(v136 + 8))(v82, v70);
      v80 = v120;
      v81 = v143;
    }

    sub_1C6CFD4A0(v76);
    goto LABEL_18;
  }

LABEL_7:
  v66 = sub_1C6D76F90();
  (*(*(v66 - 8) + 56))(a3, 1, 1, v66);
}

void sub_1C6CFD308()
{
  if (!qword_1EDCE5E38)
  {
    sub_1C6CFD4FC(255, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE5E38);
    }
  }
}

uint64_t sub_1C6CFD39C(uint64_t a1, uint64_t a2)
{
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CFD430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CFD4FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CFD4A0(uint64_t a1)
{
  sub_1C6CFD308();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6CFD4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CFD560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ComputeServiceAdSegmentProvider.needsUpdate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ComputeServiceAdSegmentProvider.needsUpdate.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ComputeServiceAdSegmentProvider.segmentValues()()
{
  sub_1C6B761BC();
  v0 = MEMORY[0x1CCA56010](25);
  sub_1C6B855D0();

  v1 = sub_1C6D78390();

  return v1;
}

uint64_t sub_1C6CFD704()
{
  sub_1C6CFD99C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6CFD780(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6BE5418(*(a5 + 24));
  a1(&v7);
}

uint64_t ComputeServiceAdSegmentProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ComputeServiceAdSegmentProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CFD8AC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_1C6CFD8F0()
{
  v1 = *v0;
  sub_1C6B761BC();
  v2 = MEMORY[0x1CCA56010](25);
  sub_1C6B855D0();

  v3 = sub_1C6D78390();

  return v3;
}

void sub_1C6CFD99C()
{
  if (!qword_1EDCE5D78)
  {
    sub_1C6B855D0();
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5D78);
    }
  }
}

unint64_t Com_Apple_News_Personalization_ShareType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x11;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CFDA68@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_ShareType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6CFDA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC9658();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6CFDADC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9580);
  __swift_project_value_buffer(v0, qword_1EC1D9580);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C6D93F90;
  v5 = v40 + v4;
  v6 = v40 + v4 + *(v2 + 56);
  *(v40 + v4) = 0;
  *v6 = "SHARE_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "SHARE_TYPE_POST_TO_FACEBOOK";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "SHARE_TYPE_POST_TO_TWITTER";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "SHARE_TYPE_POST_TO_WEIBO";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "SHARE_TYPE_MESSAGE";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SHARE_TYPE_MAIL";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "SHARE_TYPE_PRINT";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "SHARE_TYPE_COPY_TO_PASTEBOARD";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "SHARE_TYPE_ASSIGN_TO_CONTACT";
  *(v23 + 8) = 28;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SHARE_TYPE_SAVE_TO_CAMERA_ROLL";
  *(v25 + 1) = 30;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SHARE_TYPE_ADD_TO_READING_LIST";
  *(v27 + 1) = 30;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "SHARE_TYPE_POST_TO_FLICKR";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "SHARE_TYPE_POST_TO_VIMEO";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "SHARE_TYPE_POST_TO_TENCENT_WEIBO";
  *(v33 + 1) = 32;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SHARE_TYPE_AIRDROP";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SHARE_TYPE_OPEN_IN_IBOOKS";
  *(v37 + 1) = 25;
  v37[16] = 2;
  v9();
  v38 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "SHARE_TYPE_MARKUP_AS_PDF";
  *(v38 + 8) = 24;
  *(v38 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_ShareType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CFE0DC()
{
  result = qword_1EC1D9598;
  if (!qword_1EC1D9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9598);
  }

  return result;
}

unint64_t sub_1C6CFE134()
{
  result = qword_1EC1D95A0;
  if (!qword_1EC1D95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95A0);
  }

  return result;
}

unint64_t sub_1C6CFE18C()
{
  result = qword_1EC1D95A8;
  if (!qword_1EC1D95A8)
  {
    sub_1C6CFE1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95A8);
  }

  return result;
}

void sub_1C6CFE1E4()
{
  if (!qword_1EC1D95B0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D95B0);
    }
  }
}

unint64_t sub_1C6CFE238()
{
  result = qword_1EC1D95B8;
  if (!qword_1EC1D95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95B8);
  }

  return result;
}

uint64_t sub_1C6CFE28C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved()
{
  result = qword_1EDCE3578;
  if (!qword_1EDCE3578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CFE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6CFE7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CFEE04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D95C0);
  __swift_project_value_buffer(v0, qword_1EC1D95C0);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6CFF124();
    }
  }

  return result;
}

uint64_t sub_1C6CFF124()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6CFFBD0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6CFF274(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CFF274(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6CFFBD0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  sub_1C6CFFBD0(&qword_1EC1D95D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CFF550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CFFBD0(&qword_1EC1D95F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CFF5CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CFF674(uint64_t a1)
{
  v2 = sub_1C6CFFBD0(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CFF6E0()
{
  sub_1C6CFFBD0(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6CFFBD0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6CFFBD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted()
{
  result = qword_1EDCE3A68;
  if (!qword_1EDCE3A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  sub_1C6D78A40();
  sub_1C6D00690(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CFFED4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D95F8);
  __swift_project_value_buffer(v0, qword_1EC1D95F8);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  sub_1C6D00690(&qword_1EC1D9610, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D00298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D00690(&unk_1EC1D9628, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D00314@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D003BC(uint64_t a1)
{
  v2 = sub_1C6D00690(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D00428()
{
  sub_1C6D00690(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6D005C4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6D00690(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D00690(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D006FC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v6 = sub_1C6D77380();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6D77C70();
  v44 = *(v49 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B90BE8();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  (*(v22 + 16))(&v41 - v21, a1, v18, v20);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v23 = sub_1C6D77270();
    v24 = sub_1C6D77330();
    v26 = v25;

    if (!v3)
    {
      sub_1C6D00CD0(&qword_1EDCE5EB0, MEMORY[0x1E69B49C8]);
      v27 = v46;
      v28 = v49;
      sub_1C6D75AF0();
      sub_1C6D77C60();
      v30 = sub_1C6D77360();
      v32 = v31;
      (*(v42 + 8))(v9, v43);
      if (v32)
      {
        (*(v44 + 8))(v27, v28);
        sub_1C6B1C9F0(v24, v26);
        *a3 = v30;
        a3[1] = v32;
        v33 = *MEMORY[0x1E69E3600];
        v34 = sub_1C6D76F90();
        v35 = *(v34 - 8);
        (*(v35 + 104))(a3, v33, v34);
        (*(v35 + 56))(a3, 0, 1, v34);
      }

      else
      {
        v45 = a3;
        if (qword_1EDCE03B8 != -1)
        {
          swift_once();
        }

        v43 = qword_1EDCE03C0;
        sub_1C6D79AA0();
        sub_1C6B1D314();
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1C6D7E630;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1C6D79E60();
        v37 = v28;
        v38 = v47;
        v39 = v48;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1C6B2064C();
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        sub_1C6D78D30();
        sub_1C6B1C9F0(v24, v26);

        (*(v44 + 8))(v27, v37);
        v40 = sub_1C6D76F90();
        (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
      }
    }
  }

  else
  {
    v29 = sub_1C6D76F90();
    (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
  }
}

uint64_t sub_1C6D00CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D00D18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_1C6D79570();
    v3 = [v4 stringArrayForKey_];

    if (v3)
    {
      v6 = sub_1C6D79780();

      v3 = sub_1C6B1E610(v6);
    }
  }

  *a2 = v3;
}

uint64_t sub_1C6D00E04(_OWORD *a1)
{
  *(v2 + 112) = v1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C6D00E3C, 0, 0);
}

uint64_t sub_1C6D00E3C()
{
  v13 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1C6CDF1E0();
  v3 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1C6D02768((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = sub_1C6B6732C(*(v2 + 16), 0);
    v7 = sub_1C6B67FC8(&v12, v6 + 4, v5, v2);
    sub_1C6B688C4();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v8 = sub_1C6D79760();

  v9 = sub_1C6D79570();
  [v4 setObject:v8 forKey:v9];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C6D00FEC(_OWORD *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6D00E04(a1);
}

uint64_t sub_1C6D01084()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C6D00D18((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1C6D010DC(_OWORD *a1)
{
  *(v2 + 584) = v1;
  *(v2 + 576) = a1;
  sub_1C6B1B75C(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 592) = swift_task_alloc();
  v6 = a1[3];
  *(v2 + 224) = a1[2];
  *(v2 + 240) = v6;
  v7 = a1[5];
  *(v2 + 256) = a1[4];
  *(v2 + 272) = v7;
  v8 = a1[1];
  *(v2 + 192) = *a1;
  *(v2 + 208) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C6D011BC, 0, 0);
}

uint64_t sub_1C6D011BC()
{
  v20 = v0;
  v1 = *(v0 + 576);
  *(v0 + 384) = *v1;
  *(v0 + 48) = *v1;
  *(v0 + 64) = 2;
  *(v0 + 400) = v1[1];
  *(v0 + 72) = v1[1];
  *(v0 + 88) = 9;
  *(v0 + 416) = v1[2];
  *(v0 + 96) = v1[2];
  *(v0 + 112) = 3;
  *(v0 + 432) = v1[3];
  *(v0 + 120) = v1[3];
  *(v0 + 136) = 7;
  *(v0 + 448) = v1[4];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = 3;
  *(v0 + 464) = v1[5];
  *(v0 + 168) = v1[5];
  *(v0 + 184) = 1;
  v18 = MEMORY[0x1E69E7CC8];
  sub_1C6D027B0(v0 + 384, v0 + 480);
  sub_1C6D027B0(v0 + 400, v0 + 496);
  sub_1C6D027B0(v0 + 416, v0 + 512);
  sub_1C6D027B0(v0 + 432, v0 + 528);
  sub_1C6D027B0(v0 + 448, v0 + 544);
  sub_1C6D027B0(v0 + 464, v0 + 560);
  for (i = 0; i != 144; i += 24)
  {
    v4 = *(v0 + i + 56);
    v3 = *(v0 + i + 64);
    v19[0] = *(v0 + i + 48);
    v19[1] = v4;
    v19[2] = v3;

    sub_1C6D014B0(&v18, v19);
  }

  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  sub_1C6D0280C();
  swift_arrayDestroy();
  v7 = v18;
  v8 = sub_1C6D79880();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1C6D79860();
  v9 = v6;
  sub_1C6D02874(v0 + 192, v0 + 288);
  v10 = sub_1C6D79850();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v13 = *(v0 + 240);
  *(v11 + 72) = *(v0 + 224);
  *(v11 + 88) = v13;
  v14 = *(v0 + 272);
  *(v11 + 104) = *(v0 + 256);
  *(v11 + 120) = v14;
  v15 = *(v0 + 208);
  *(v11 + 40) = *(v0 + 192);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  *(v11 + 56) = v15;
  *(v11 + 136) = v7;
  sub_1C6BE0BF8(0, 0, v5, &unk_1C6D94630, v11);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_1C6D014B0(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v49 = *(v2 + 16);
  if (!v49)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v48 = *(a2 + 16);
  v5 = (v2 + 40);
  v46 = result;
  v47 = *(a2 + 8);
  while (v4 < *(v2 + 16))
  {
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = *v3;
    v11 = *(*v3 + 16);

    if (!v11)
    {
      goto LABEL_17;
    }

    sub_1C6B5DEA8(v8, v9);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v32 = *v3;
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v3;
      v50 = *v3;
      result = sub_1C6B5DEA8(v8, v9);
      v36 = *(v34 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_29;
      }

      v40 = v35;
      if (*(v34 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        v45 = result;
        sub_1C6B74ED8();
        result = v45;
        if (v40)
        {
          goto LABEL_3;
        }

LABEL_23:
        v7 = v50;
        v50[(result >> 6) + 8] |= 1 << result;
        v42 = (v50[6] + 16 * result);
        *v42 = v8;
        v42[1] = v9;
        *(v50[7] + 8 * result) = v48;
        v43 = v50[2];
        v38 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v38)
        {
          goto LABEL_30;
        }

        v50[2] = v44;
      }

      else
      {
        sub_1C6B72354(v39, isUniquelyReferenced_nonNull_native);
        result = sub_1C6B5DEA8(v8, v9);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_35;
        }

LABEL_22:
        if ((v40 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_3:
        v6 = result;

        v7 = v50;
        *(v50[7] + 8 * v6) = v48;
      }

      *v3 = v7;
      goto LABEL_5;
    }

    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C6D7EB10;
    if (!*(v10 + 16))
    {
      goto LABEL_31;
    }

    v15 = v14;

    v16 = sub_1C6B5DEA8(v8, v9);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_32;
    }

    v19 = *(*(v10 + 56) + 8 * v16);
    v20 = NSStringFromFCSubscriptionOrigin();
    if (!v20)
    {
      goto LABEL_34;
    }

    v21 = v20;
    v22 = sub_1C6D795A0();
    v24 = v23;

    v25 = MEMORY[0x1E69E6158];
    v15[7] = MEMORY[0x1E69E6158];
    v26 = sub_1C6B2064C();
    v15[8] = v26;
    v15[4] = v22;
    v15[5] = v24;
    v27 = NSStringFromFCSubscriptionOrigin();
    if (!v27)
    {
      goto LABEL_33;
    }

    v28 = v27;

    v29 = sub_1C6D795A0();
    v31 = v30;

    v15[12] = v25;
    v15[13] = v26;
    v15[9] = v29;
    v15[10] = v31;
    sub_1C6D78D30();

    v3 = v46;
    v2 = v47;
LABEL_5:
    ++v4;
    v5 += 3;
    if (v49 == v4)
    {
      return result;
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
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D01840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  sub_1C6D79860();
  v6[36] = sub_1C6D79850();
  v8 = sub_1C6D79840();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C6D018DC, v8, v7);
}

uint64_t sub_1C6D018DC()
{
  v1 = *(v0 + 272);
  *(v0 + 168) = *v1;
  v2 = *(v0 + 176);
  *(v0 + 184) = v1[1];
  *(v0 + 200) = v1[2];
  *(v0 + 216) = v1[3];
  *(v0 + 232) = v1[4];
  *(v0 + 248) = v1[5];
  sub_1C6D027B0(v0 + 168, v0 + 80);
  sub_1C6D027B0(v0 + 184, v0 + 80);
  sub_1C6D027B0(v0 + 200, v0 + 80);
  sub_1C6D027B0(v0 + 216, v0 + 80);
  sub_1C6D027B0(v0 + 232, v0 + 80);
  aBlock = (v0 + 80);
  sub_1C6D027B0(v0 + 248, v0 + 80);
  v66 = MEMORY[0x1E69E7CC0];
  sub_1C6B39A08(0, 6, 0);
  v3 = v66;
  v5 = *(v66 + 16);
  v4 = *(v66 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v8 = *(v0 + 192);
    *(v3 + 16) = v7;
    *(v3 + 8 * v5 + 32) = v2;

    if (v6 < v5 + 2)
    {
      sub_1C6B39A08((v4 > 1), v5 + 2, 1);
      v3 = v66;
    }

    v9 = *(v0 + 208);
    *(v3 + 16) = v5 + 2;
    *(v3 + 8 * v7 + 32) = v8;
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = v11 + 1;

    if (v11 >= v10 >> 1)
    {
      sub_1C6B39A08((v10 > 1), v11 + 1, 1);
    }

    v13 = *(v0 + 224);
    v14 = v66;
    *(v66 + 16) = v12;
    *(v66 + 8 * v11 + 32) = v9;
    v15 = *(v66 + 24);
    v16 = v11 + 2;

    if ((v11 + 2) > (v15 >> 1))
    {
      sub_1C6B39A08((v15 > 1), v11 + 2, 1);
      v14 = v66;
    }

    v17 = *(v0 + 240);
    *(v14 + 16) = v16;
    *(v14 + 8 * v12 + 32) = v13;
    v18 = *(v14 + 16);
    v4 = *(v14 + 24);
    v5 = v4 >> 1;
    v2 = v18 + 1;

    if (v4 >> 1 <= v18)
    {
      sub_1C6B39A08((v4 > 1), v18 + 1, 1);
      v14 = v66;
      v4 = *(v66 + 24);
      v5 = v4 >> 1;
    }

    v19 = *(v0 + 256);
    *(v14 + 16) = v2;
    *(v14 + 8 * v18 + 32) = v17;
    v20 = v18 + 2;

    if (v5 < v20)
    {
      sub_1C6B39A08((v4 > 1), v20, 1);
    }

    v21 = v66;
    *(v66 + 16) = v20;
    v61 = v66 + 32;
    *(v66 + 32 + 8 * v2) = v19;
    sub_1C6D02998(v0 + 184);
    sub_1C6D02998(v0 + 200);
    sub_1C6D02998(v0 + 216);
    sub_1C6D02998(v0 + 232);
    sub_1C6D02998(v0 + 248);
    sub_1C6D02998(v0 + 168);
    v22 = *(v66 + 16);
    if (!v22)
    {

      v7 = MEMORY[0x1E69E7CC0];
      v36 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v36)
      {
        goto LABEL_44;
      }

LABEL_26:
      v4 = 0;
      v5 = v7 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v4 >= *(v7 + 16))
        {
          goto LABEL_49;
        }

        v38 = v7;
        v39 = *(v5 + 8 * v4);
        v7 = *(v39 + 16);
        v2 = *(v37 + 2);
        v40 = v2 + v7;
        if (__OFADD__(v2, v7))
        {
          goto LABEL_50;
        }

        v41 = *(v5 + 8 * v4);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v40 <= *(v37 + 3) >> 1)
        {
          if (!*(v39 + 16))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v2 <= v40)
          {
            v43 = v2 + v7;
          }

          else
          {
            v43 = v2;
          }

          v37 = sub_1C6B6592C(isUniquelyReferenced_nonNull_native, v43, 1, v37);
          if (!*(v39 + 16))
          {
LABEL_27:

            if (v7)
            {
              goto LABEL_51;
            }

            goto LABEL_28;
          }
        }

        if ((*(v37 + 3) >> 1) - *(v37 + 2) < v7)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v44 = *(v37 + 2);
          v45 = __OFADD__(v44, v7);
          v46 = v44 + v7;
          if (v45)
          {
            goto LABEL_53;
          }

          *(v37 + 2) = v46;
        }

LABEL_28:
        ++v4;
        v7 = v38;
        if (v36 == v4)
        {
          goto LABEL_45;
        }
      }
    }

    v65 = MEMORY[0x1E69E7CC0];
    sub_1C6B399C4(0, v22, 0);
    v23 = 0;
    v7 = v65;
    v59 = v22;
    v60 = v66;
    v58 = v0;
LABEL_14:
    if (v23 < *(v21 + 16))
    {
      break;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    sub_1C6B39A08((v4 > 1), v7, 1);
    v3 = v66;
    v4 = *(v66 + 24);
    v6 = v4 >> 1;
  }

  v24 = *(v61 + 8 * v23);
  v5 = *(v24 + 16);
  if (v5)
  {
    v62 = v23;
    v63 = v7;
    v67 = MEMORY[0x1E69E7CC0];

    sub_1C6B39280(0, v5, 0);
    v25 = 0;
    v26 = v67;
    v27 = *(v67 + 16);
    v28 = 16 * v27;
    do
    {
      v29 = v24;
      v30 = *(v24 + v25 + 32);
      v31 = *(v24 + v25 + 40);
      v66 = v26;
      v32 = *(v26 + 24);
      v33 = v27 + 1;

      if (v27 >= v32 >> 1)
      {
        sub_1C6B39280((v32 > 1), v33, 1);
      }

      *(v26 + 16) = v33;
      v34 = v26 + v28;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v28 += 16;
      v25 += 24;
      ++v27;
      --v5;
      v24 = v29;
    }

    while (v5);

    v0 = v58;
    v22 = v59;
    v23 = v62;
    v7 = v63;
    v21 = v60;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v7 + 16);
  v35 = *(v7 + 24);
  v4 = v2 + 1;
  if (v2 >= v35 >> 1)
  {
    sub_1C6B399C4((v35 > 1), v2 + 1, 1);
  }

  ++v23;
  *(v7 + 16) = v4;
  *(v7 + 8 * v2 + 32) = v26;
  if (v23 != v22)
  {
    goto LABEL_14;
  }

  v36 = *(v7 + 16);
  if (v36)
  {
    goto LABEL_26;
  }

LABEL_44:
  v37 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v47 = *(v0 + 280);
  v64 = *(v0 + 264);

  sub_1C6B1E610(v37);

  v48 = sub_1C6D79950();
  *(v0 + 312) = v48;

  v49 = sub_1C6D79950();
  *(v0 + 320) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v0 + 112) = sub_1C6D029EC;
  *(v0 + 120) = v50;
  v51 = MEMORY[0x1E69E9820];
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C6D02514;
  *(v0 + 104) = &block_descriptor_11;
  v52 = _Block_copy(aBlock);
  *(v0 + 328) = v52;
  v53 = *(v0 + 120);

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C6D02040;
  v54 = swift_continuation_init();
  sub_1C6D029F4();
  *(v0 + 136) = v55;
  *(v0 + 80) = v51;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C6D0258C;
  *(v0 + 104) = &block_descriptor_14;
  *(v0 + 112) = v54;
  [v64 addAutoFavoriteSubscriptionForTagIDs:v48 groupableSubscriptionForTagIDs:v49 originProvider:v52 completion:aBlock];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C6D02040()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C6D02148, v2, v1);
}

uint64_t sub_1C6D02148()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[36];

  v5 = v0[18];
  v6 = v0[19];
  v19 = v0[20];
  _Block_release(v2);

  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D807C0;
  v0[10] = v5;
  sub_1C6B1B75C(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  v8 = sub_1C6D795F0();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C6B2064C();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v0[10] = v6;
  v13 = sub_1C6D795F0();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v0[10] = v19;
  v15 = sub_1C6D795F0();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C6D02354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a3 + 16);

    if (v6)
    {
      v7 = sub_1C6B5DEA8(a1, a2);
      if (v8)
      {
        v9 = v7;

        return *(*(a3 + 56) + 8 * v9);
      }
    }

    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7E630;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C6B2064C();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    sub_1C6D78D30();
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
  }

  return 10;
}

uint64_t sub_1C6D02514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1C6D795A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v3(v4, v6);

  return v7;
}

uint64_t sub_1C6D0258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    a2 = sub_1C6D79960();
  }

  if (a3)
  {
    a3 = sub_1C6D79960();
  }

  if (a4)
  {
    v8 = sub_1C6D79960();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v7 + 64) + 40);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = v8;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t sub_1C6D02664(_OWORD *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BE1AB0;

  return sub_1C6D010DC(a1);
}

id sub_1C6D026FC()
{
  result = [*v0 autoFavoriteTagIDs];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D79780();

    v4 = sub_1C6B1E610(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D02768(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

void sub_1C6D0280C()
{
  if (!qword_1EDCE2340)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE2340);
    }
  }
}

uint64_t sub_1C6D028D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[17];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C6BB6A40;

  return sub_1C6D01840(a1, v4, v5, v6, (v1 + 5), v7);
}

void sub_1C6D029F4()
{
  if (!qword_1EDCDF948)
  {
    sub_1C6D02A5C();
    v0 = sub_1C6D79890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF948);
    }
  }
}

void sub_1C6D02A5C()
{
  if (!qword_1EDCDF930)
  {
    sub_1C6B1B75C(255, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCDF930);
    }
  }
}

uint64_t sub_1C6D02B0C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = *(v7 - 3);
      v14 = v8;
      v15 = v9;

      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 4;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

void sub_1C6D02BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v119 = a3;
  v124 = a2;
  v109 = sub_1C6D77E40();
  v108 = *(v109 - 8);
  v7 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C6D77480();
  v110 = *(v111 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v105 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v101 - v12;
  v116 = sub_1C6D77380();
  v114 = *(v116 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D76920();
  v117 = *(v15 - 8);
  v118 = v15;
  v16 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101 - v21;
  v23 = sub_1C6D773B0();
  v24 = *(v23 - 8);
  v122 = v23;
  v123 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C6D778E0();
  v120 = *(v125 - 8);
  v27 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D03884();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C6D77290();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  (*(v39 + 16))(&v101 - v38, a1, v35, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = sub_1C6D76F90();
    (*(*(v46 - 8) + 56))(a4, 1, 1, v46);
    return;
  }

  v104 = a4;
  (*(v31 + 8))(v34, v30);
  v40 = sub_1C6D77270();
  v41 = sub_1C6D77330();
  v43 = v42;

  if (!v4)
  {
    sub_1C6D03918(&qword_1EDCE5F38, MEMORY[0x1E69B47D8]);
    v44 = v130;
    v45 = v125;
    sub_1C6D75AF0();
    v124 = 0;
    v102 = v41;
    v103 = v43;
    v47 = v121;
    sub_1C6D778D0();
    v48 = sub_1C6D773A0();
    v49 = v123 + 8;
    v101 = *(v123 + 8);
    v101(v47, v122);
    sub_1C6D76A10();
    sub_1C6D76910();
    v51 = v50;
    v52 = *(v117 + 8);
    v53 = v22;
    v54 = v118;
    v52(v53, v118);
    if (v51 >= v48 / 1000.0)
    {
      (*(v120 + 8))(v44, v45);
      v73 = v102;
LABEL_12:
      sub_1C6B1C9F0(v73, v103);
      v74 = sub_1C6D76F90();
      (*(*(v74 - 8) + 56))(v104, 1, 1, v74);
      return;
    }

    v123 = v49;
    v55 = v113;
    sub_1C6D778C0();
    v56 = sub_1C6D77370();
    v58 = v57;
    (*(v114 + 8))(v55, v116);
    v126 = v56;
    v127 = v58;
    v59 = sub_1C6B16CF0();
    v60 = MEMORY[0x1CCA56110](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v59);

    v61 = v115;
    sub_1C6D76A10();
    v62 = sub_1C6D768E0();
    v52(v61, v54);
    if (v62)
    {
      v126 = sub_1C6D79C10();
      v127 = v63;
      v128 = v64;
      v129 = v65;
      MEMORY[0x1EEE9AC00](v126);
      *(&v101 - 2) = &v126;
      v66 = v124;
      v67 = sub_1C6D02B0C(sub_1C6D03A00, (&v101 - 4), v60);
      v124 = v66;

      if (v67)
      {

        v68 = v106;
        sub_1C6D778A0();
        v69 = sub_1C6D77470();
        v71 = v70;
        (*(v110 + 8))(v68, v111);
        v45 = v125;
        if (v69 == 0x6E656D6D6F636572 && v71 == 0xEB00000000646564)
        {

          v72 = v102;
LABEL_24:
          v89 = v107;
          v90 = v130;
          sub_1C6D778B0();
          v91 = sub_1C6D77E30();
          v93 = v92;
          (*(v108 + 8))(v89, v109);
          v94 = v121;
          sub_1C6D778D0();
          v95 = sub_1C6D773A0();
          sub_1C6B1C9F0(v72, v103);
          v101(v94, v122);
          (*(v120 + 8))(v90, v45);
          v96 = v104;
          *v104 = v91;
          v96[1] = v93;
          v96[2] = v95;
          v97 = *MEMORY[0x1E69E3610];
          v98 = sub_1C6D76F90();
          v99 = *(v98 - 8);
          (*(v99 + 104))(v96, v97, v98);
          (*(v99 + 56))(v96, 0, 1, v98);
          return;
        }

        v88 = sub_1C6D7A130();

        v72 = v102;
        if (v88)
        {
          goto LABEL_24;
        }

LABEL_26:
        (*(v120 + 8))(v130, v45);
        v73 = v72;
        goto LABEL_12;
      }

      v45 = v125;
    }

    v75 = v112;
    sub_1C6D76A10();
    v76 = sub_1C6D768F0();
    v52(v75, v54);
    if (v76)
    {
      v126 = sub_1C6D79C10();
      v127 = v77;
      v128 = v78;
      v129 = v79;
      MEMORY[0x1EEE9AC00](v126);
      *(&v101 - 2) = &v126;
      v80 = v124;
      v81 = sub_1C6D02B0C(sub_1C6D039E0, (&v101 - 4), v60);
      v124 = v80;

      v72 = v102;
      if (v81)
      {
        v82 = v105;
        sub_1C6D778A0();
        v83 = sub_1C6D77470();
        v85 = v84;
        (*(v110 + 8))(v82, v111);
        if (v83 == 0x6E656D6D6F636572 && v85 == 0xEB00000000646564)
        {

          goto LABEL_24;
        }

        v100 = sub_1C6D7A130();

        if (v100)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      sub_1C6B1C9F0(v102, v103);
    }

    else
    {
      sub_1C6B1C9F0(v102, v103);
    }

    v86 = v104;
    (*(v120 + 8))(v130, v45);
    v87 = sub_1C6D76F90();
    (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
  }
}

void sub_1C6D03884()
{
  if (!qword_1EDCE6090)
  {
    sub_1C6D778F0();
    sub_1C6D03918(&qword_1EDCE5F30, MEMORY[0x1E69B47E8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6090);
    }
  }
}

uint64_t sub_1C6D03918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D03960(void *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3] && *a1 >> 16 == *a2 >> 16 && a1[1] >> 16 == a2[1] >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A0D0() & 1;
  }
}

id XavierScoringService.__allocating_init(aggregateStore:configurationManager:translationProvider:userContextProvider:computeServiceScoringService:computeServiceCohortMembershipService:tracker:recipeScoringService:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = sub_1C6D1A630(a1, a2, a3, v18, a5, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v19;
}

uint64_t sub_1C6D03ACC(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v34 = MEMORY[0x1E69E7CC0];
    sub_1C6B39464(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v34;
    v9 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA56240](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v31 = v10;
      a1(v32, &v31);
      if (v4)
      {
        goto LABEL_21;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v20 = v32[4];
      v21 = v32[5];
      v17 = v32[1];
      v18 = v32[2];
      v19 = v32[3];
      v24 = v32[8];
      v25 = v32[9];
      v22 = v32[6];
      v23 = v32[7];
      v28 = v32[12];
      v29 = v32[13];
      v26 = v32[10];
      v27 = v32[11];
      v30 = v33;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      v16 = v32[0];
      v34 = v7;
      if (v12 >= v11 >> 1)
      {
        sub_1C6B39464((v11 > 1), v12 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 232 * v12;
      *(v13 + 48) = v17;
      *(v13 + 64) = v18;
      *(v13 + 32) = v16;
      *(v13 + 112) = v21;
      *(v13 + 128) = v22;
      *(v13 + 80) = v19;
      *(v13 + 96) = v20;
      *(v13 + 176) = v25;
      *(v13 + 192) = v26;
      *(v13 + 144) = v23;
      *(v13 + 160) = v24;
      *(v13 + 256) = v30;
      *(v13 + 224) = v28;
      *(v13 + 240) = v29;
      *(v13 + 208) = v27;
      if (v9 == v8)
      {
        return v7;
      }

      ++v8;
    }

    while (!__OFADD__(v8, 1));
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1C6D03CF8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6B39624(0, v11, 0);
    v12 = v22;
    v13 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      v19(v14, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C6B39624(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_1C6D1C088(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v14 += v18;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

void sub_1C6D03EF8(void (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  sub_1C6C74F64();
  v26 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v12 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    a3 = &v30;
    sub_1C6B39A58(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v30;
    v15 = v12;
    v24 = v12;
    v25 = v12 & 0xC000000000000001;
    v21 = v12 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 + 32;
    v23 = i;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v25)
      {
        v17 = MEMORY[0x1CCA56240](v13, v15);
      }

      else
      {
        if (v13 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v15 + 8 * v13 + 32);
      }

      i = v17;
      v29 = v17;
      a3 = v28;
      v27(&v29);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v30 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        a3 = &v30;
        sub_1C6B39A58(v18 > 1, v19 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v19 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v26);
      ++v13;
      v15 = v24;
      if (v16 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1C6D04140(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1C6D799E0();
  if (!v26)
  {
    return sub_1C6D797E0();
  }

  v48 = v26;
  v52 = sub_1C6D79E30();
  v39 = sub_1C6D79E40();
  sub_1C6D79DE0();
  result = sub_1C6D799B0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1C6D79A50();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1C6D79E20();
      result = sub_1C6D79A10();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D04560(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D75DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1C6D1C040(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0]), v9 = sub_1C6D79500(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v19 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v18 = ~v10;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(a2 + 48) + v14 * v11, v3);
      sub_1C6D1C040(&unk_1EDCE7B00, 255, MEMORY[0x1E6968FB0]);
      v16 = sub_1C6D79560();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v11 = (v11 + 1) & v18;
    }

    while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

id sub_1C6D0477C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_1C6D75ED0();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1C6D75ED0();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEarlierDate:v7 laterDate:v8];

  return v9;
}

void sub_1C6D048D4(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1C6B0C69C(0, &qword_1EDCEA510, 0x1E69B5250);
  sub_1C6D75F30();
  [a1 recentlyFollowedDurationThreshold];
  sub_1C6D75EC0();
  (*(v5 + 8))(v8, v4);
  v16 = *(v5 + 56);
  v16(v15, 0, 1, v4);
  sub_1C6D75F30();
  v16(v12, 0, 1, v4);
  v17 = sub_1C6D0477C(v15, v12);
  v18 = (v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider);
  v19 = *(v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 8))(v17, v19, v20);
}

id XavierScoringService.init(aggregateStore:configurationManager:translationProvider:userContextProvider:computeServiceScoringService:computeServiceCohortMembershipService:tracker:recipeScoringService:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = sub_1C6D19FBC(a1, a2, a3, v21, a5, a6, v25, v26, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v23;
}

void sub_1C6D04C4C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v6, v1, v2);
  v3 = v6[3];
  sub_1C6B11190(v6);
  v4 = [v3 defaultScoringConfig];
  if (v4)
  {
    v5 = v4;
    [v4 baselineRatePrior];

    [v3 baselineImpressionPrior];
    [v3 baselineImpressionPrior];
    sub_1C6D76AF0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C6D04D34(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v4, v1, v2);
  v3 = v4[3];
  sub_1C6B11190(v4);
  [v3 featureImpressionPrior];
  [v3 featureImpressionPrior];
  sub_1C6D76AF0();
}

void sub_1C6D04DE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v3 = *(a1 + 24);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
    v8 = Strong;
    swift_beginAccess();
    v9 = *&v8[v7];

    v10 = v3;
    sub_1C6D78240();

    v11 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
    swift_beginAccess();
    v12 = *&v8[v11];

    sub_1C6D78240();

    v13 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
    swift_beginAccess();
    v14 = *&v8[v13];

    sub_1C6D78240();

    v15 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
    swift_beginAccess();
    v16 = *&v8[v15];

    v17 = v5;
    sub_1C6D78240();

    v18 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
    swift_beginAccess();
    v19 = *&v8[v18];

    v20 = v4;
    sub_1C6D78240();
  }
}

unint64_t sub_1C6D04F98(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 8))(v26, v5, v6);
  sub_1C6B11190(v26);
  if (v27 != 1)
  {
LABEL_19:
    if (qword_1EDCEA6A0 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v7 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService);
  if (!v7)
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    goto LABEL_25;
  }

  v25 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
    v8 = sub_1C6D79E90();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    v20 = MEMORY[0x1E69E7CD0];
LABEL_27:
    v22 = ComputeServiceCohortMembershipService.evaluate(tags:)(v20);

    return v22;
  }

  v23 = v7;
  v9 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA56240](v9, a2);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(a2 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_18;
    }

LABEL_12:
    v12 = [v10 publisherID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C6D795A0();
      v16 = v15;

      sub_1C6B1E6A8(&v24, v14, v16);
    }

    v17 = [v10 topicIDs];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1C6D79780();

      sub_1C6CE3528(v19);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v9;
    if (v11 == v8)
    {
      v20 = v25;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_20:
  sub_1C6D79AC0();
LABEL_25:
  sub_1C6D78D30();
  return 0;
}

uint64_t XavierScoringService.score(items:context:)(unint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1C6D1BE00(0, &qword_1EDCEA7B0, MEMORY[0x1E69B4A90]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v287 = &v268 - v7;
  isUniquelyReferenced_nonNull_native = sub_1C6D77D80();
  v9 = *(isUniquelyReferenced_nonNull_native - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v11 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v268 - v13;
  sub_1C6D1BE00(0, &qword_1EDCEA538, MEMORY[0x1E69B5910]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v318 = &v268 - v17;
  v322 = sub_1C6D79040();
  v320 = *(v322 - 8);
  v18 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v319 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v275 = &v268 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v271 = &v268 - v23;
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8]);
  v317 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v321 = &v268 - v26;
  v325 = sub_1C6D76170();
  v327 = *(v325 - 8);
  v27 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v304 = &v268 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v274 = &v268 - v30;
  v31 = sub_1C6D771D0();
  v291 = *(v31 - 8);
  v292 = v31;
  v32 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v293 = &v268 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C6D771C0();
  v288 = *(v34 - 8);
  v289 = v34;
  v35 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v290 = &v268 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C6D76880();
  v302 = *(v37 - 8);
  v303 = v37;
  v38 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v315 = (&v268 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1C6D767D0();
  v300 = *(v40 - 8);
  v301 = v40;
  v41 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v314 = (&v268 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_1C6D76A80();
  v298 = *(v43 - 8);
  v299 = v43;
  v44 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v313 = (&v268 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1C6D767B0();
  v296 = *(v46 - 8);
  v297 = v46;
  v47 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v316 = &v268 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6D76B30();
  v294 = *(v49 - 8);
  v295 = v49;
  v50 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v309 = (&v268 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_1C6D75F50();
  v283 = *(v52 - 8);
  v284 = v52;
  v53 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v278 = &v268 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v312 = &v268 - v56;
  v272 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v311 = &v268 - v59;
  v60 = sub_1C6D78EB0();
  v285 = *(v60 - 8);
  v286 = v60;
  v61 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v310 = &v268 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C6D75F80();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v331 = (&v268 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = a1 >> 62;
  v336 = a1;
  if (a1 >> 62)
  {
    goto LABEL_178;
  }

  v69 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v69)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v332 = v69;
  v276 = v66;
  v277 = v65;
  v269 = v11;
  v273 = v14;
  sub_1C6D75F70();
  sub_1C6D78EA0();
  sub_1C6D75F40();
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v282 = qword_1EDCEA6A8;
  sub_1C6D79AC0();
  sub_1C6B1D314();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6D7F520;
  v280 = v9;
  v281 = isUniquelyReferenced_nonNull_native;
  v330 = a2;
  v268 = v10;
  v279 = ObjectType;
  v333 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v68)
  {
    v70 = sub_1C6D79E90();
  }

  else
  {
    v70 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v324;
  v72 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = MEMORY[0x1E69E6530];
  *(v11 + 64) = v72;
  v323 = v70;
  *(v11 + 32) = v70;
  v73 = (v71 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment);
  a2 = v71;
  swift_beginAccess();
  v329 = v73;
  v74 = *v73;

  sub_1C6D78230();

  v75 = v344;
  v76 = [v344 treatmentID];

  *&v344 = v76;
  v77 = sub_1C6D7A0E0();
  isUniquelyReferenced_nonNull_native = v78;
  v79 = MEMORY[0x1E69E6158];
  *(v11 + 96) = MEMORY[0x1E69E6158];
  v9 = sub_1C6B2064C();
  *(v11 + 104) = v9;
  *(v11 + 72) = v77;
  *(v11 + 80) = isUniquelyReferenced_nonNull_native;
  v80 = sub_1C6D79100();
  *(v11 + 136) = v79;
  *(v11 + 144) = v9;
  *(v11 + 112) = v80;
  *(v11 + 120) = v81;
  *&v344 = 0;
  *(&v344 + 1) = 0xE000000000000000;
  v328 = *(a2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore);
  [v328 decayRate];
  sub_1C6D79910();
  v82 = v344;
  *(v11 + 176) = v79;
  *(v11 + 184) = v9;
  *(v11 + 152) = v82;
  v68 = v331;
  v83 = sub_1C6D75F60();
  *(v11 + 216) = v79;
  *(v11 + 224) = v9;
  *(v11 + 192) = v83;
  *(v11 + 200) = v84;
  sub_1C6D78D30();

  v14 = 0;
  v334 = a1 & 0xC000000000000001;
  v270 = (a1 + 32);
  ObjectType = MEMORY[0x1E69E7CC8];
  v10 = 0x1E8298000;
  do
  {
    if (v334)
    {
      v65 = MEMORY[0x1CCA56240](v14, a1);
      v11 = v65;
      v86 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (v14 >= *(v333 + 16))
      {
        goto LABEL_166;
      }

      v11 = *(a1 + 8 * v14 + 32);
      v65 = swift_unknownObjectRetain();
      v86 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v277 = v65;
        v264 = ObjectType;
        v265 = v66;
        v266 = sub_1C6D79E90();
        v66 = v265;
        ObjectType = v264;
        a1 = v336;
        v69 = v266;
        v65 = v277;
        if (!v69)
        {
          return MEMORY[0x1E69E7CC0];
        }

        goto LABEL_3;
      }
    }

    v335 = v86;
    v87 = [v11 *(v10 + 584)];
    v88 = sub_1C6D795A0();
    v90 = v89;

    if (*(ObjectType + 2))
    {
      v91 = sub_1C6B5DEA8(v88, v90);
      v93 = v92;

      v94 = MEMORY[0x1E69E7CC0];
      if (v93)
      {
        v95 = *(*(ObjectType + 7) + 8 * v91);
      }
    }

    else
    {

      v94 = MEMORY[0x1E69E7CC0];
    }

    *&v344 = v94;
    v96 = swift_unknownObjectRetain();
    MEMORY[0x1CCA55C20](v96);
    if (*((v344 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v344 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v109 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C6D797C0();
    }

    sub_1C6D79800();
    a2 = v344;
    v97 = [v11 *(v10 + 584)];
    v9 = sub_1C6D795A0();
    v99 = v98;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v337 = ObjectType;
    v68 = ObjectType;
    v10 = sub_1C6B5DEA8(v9, v99);
    v101 = ObjectType;
    v102 = *(ObjectType + 2);
    v103 = (v100 & 1) == 0;
    v65 = v102 + v103;
    if (__OFADD__(v102, v103))
    {
      goto LABEL_167;
    }

    ObjectType = v100;
    if (*(v101 + 3) >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v337;
        if (v100)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v68 = &v337;
        v65 = sub_1C6B73090();
        isUniquelyReferenced_nonNull_native = v337;
        if (ObjectType)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1C6B6F0BC(v65, isUniquelyReferenced_nonNull_native);
      v68 = v337;
      v65 = sub_1C6B5DEA8(v9, v99);
      if ((ObjectType & 1) != (v104 & 1))
      {
        goto LABEL_188;
      }

      v10 = v65;
      isUniquelyReferenced_nonNull_native = v337;
      if (ObjectType)
      {
LABEL_9:
        v85 = *(isUniquelyReferenced_nonNull_native + 56);
        v68 = *(v85 + 8 * v10);
        *(v85 + 8 * v10) = a2;
        swift_unknownObjectRelease();

        ObjectType = isUniquelyReferenced_nonNull_native;
        goto LABEL_10;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v105 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v10);
    *v105 = v9;
    v105[1] = v99;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v10) = a2;
    v106 = *(isUniquelyReferenced_nonNull_native + 16);
    v107 = __OFADD__(v106, 1);
    v108 = v106 + 1;
    if (v107)
    {
      goto LABEL_175;
    }

    ObjectType = isUniquelyReferenced_nonNull_native;
    *(isUniquelyReferenced_nonNull_native + 16) = v108;
    v65 = swift_unknownObjectRelease();
LABEL_10:
    ++v14;
    a1 = v336;
    v10 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  }

  while (v335 != v332);
  v326 = ObjectType;
  v68 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  ObjectType = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v11 = MEMORY[0x1E69E6158];
  while (v334)
  {
    v65 = MEMORY[0x1CCA56240](v68, a1);
    v110 = v65;
    a2 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_58;
    }

LABEL_40:
    v111 = [v110 topicIDs];
    if (v111)
    {
      v112 = v111;
      v9 = sub_1C6D79780();
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = swift_unknownObjectRelease();
      v9 = MEMORY[0x1E69E7CC0];
    }

    v113 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = *(v14 + 16);
    v10 = isUniquelyReferenced_nonNull_native + v113;
    if (__OFADD__(isUniquelyReferenced_nonNull_native, v113))
    {
      goto LABEL_169;
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    if (v65 && v10 <= *(v14 + 24) >> 1)
    {
      if (!*(v9 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native <= v10)
      {
        v114 = isUniquelyReferenced_nonNull_native + v113;
      }

      else
      {
        v114 = isUniquelyReferenced_nonNull_native;
      }

      v65 = sub_1C6B6592C(v65, v114, 1, v14);
      v14 = v65;
      if (!*(v9 + 16))
      {
LABEL_35:

        if (v113)
        {
          goto LABEL_170;
        }

        goto LABEL_36;
      }
    }

    if ((*(v14 + 24) >> 1) - *(v14 + 16) < v113)
    {
      goto LABEL_173;
    }

    swift_arrayInitWithCopy();

    if (v113)
    {
      v115 = *(v14 + 16);
      v107 = __OFADD__(v115, v113);
      v116 = v115 + v113;
      if (v107)
      {
        goto LABEL_176;
      }

      *(v14 + 16) = v116;
    }

LABEL_36:
    ++v68;
    a1 = v336;
    if (a2 == v332)
    {
      goto LABEL_59;
    }
  }

  if (v68 >= *(v333 + 16))
  {
    goto LABEL_168;
  }

  v110 = *(a1 + 8 * v68 + 32);
  v65 = swift_unknownObjectRetain();
  a2 = v68 + 1;
  if (!__OFADD__(v68, 1))
  {
    goto LABEL_40;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  a2 = *(v14 + 16);
  if (!a2)
  {
    v333 = MEMORY[0x1E69E7CC8];
    goto LABEL_80;
  }

  v117 = 0;
  v335 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider;
  v118 = v14 + 40;
  v308 = (a2 - 1);
  v333 = MEMORY[0x1E69E7CC8];
  v119 = v324;
  v332 = v14 + 40;
  while (2)
  {
    ObjectType = (v118 + 16 * v117);
    v10 = v117;
    while (2)
    {
      if (v10 >= *(v14 + 16))
      {
        goto LABEL_174;
      }

      v68 = *(v119 + v335);
      if (!v68)
      {
LABEL_62:
        ++v10;
        ++ObjectType;
        if (a2 == v10)
        {
          goto LABEL_80;
        }

        continue;
      }

      break;
    }

    v11 = *(ObjectType - 1);
    isUniquelyReferenced_nonNull_native = *ObjectType;

    v9 = sub_1C6D79570();
    v120 = [v68 topicTranslationForTagID_];

    if (!v120)
    {

      v119 = v324;
      a1 = v336;
      goto LABEL_62;
    }

    v121 = [v120 tagID];
    v307 = sub_1C6D795A0();
    v123 = v122;

    v124 = v333;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *&v344 = v124;
    v125 = sub_1C6B5DEA8(v11, isUniquelyReferenced_nonNull_native);
    v127 = *(v124 + 16);
    v128 = (v126 & 1) == 0;
    v107 = __OFADD__(v127, v128);
    v129 = v127 + v128;
    if (v107)
    {
      goto LABEL_184;
    }

    if (*(v124 + 24) >= v129)
    {
      if ((v9 & 1) == 0)
      {
        v333 = v125;
        v9 = v126;
        sub_1C6B72F08();
        LOBYTE(v126) = v9;
        v125 = v333;
      }
    }

    else
    {
      LODWORD(v333) = v126;
      sub_1C6B6EDEC(v129, v9);
      v125 = sub_1C6B5DEA8(v11, isUniquelyReferenced_nonNull_native);
      v130 = v126 & 1;
      LOBYTE(v126) = v333;
      if ((v333 & 1) != v130)
      {
        goto LABEL_188;
      }
    }

    v131 = v307;
    v68 = v344;
    v333 = v344;
    if (v126)
    {
      v132 = (*(v344 + 56) + 16 * v125);
      v68 = v132[1];
      *v132 = v307;
      v132[1] = v123;
    }

    else
    {
      *(v344 + 8 * (v125 >> 6) + 64) |= 1 << v125;
      v133 = (*(v68 + 48) + 16 * v125);
      *v133 = v11;
      v133[1] = isUniquelyReferenced_nonNull_native;
      v134 = (*(v68 + 56) + 16 * v125);
      *v134 = v131;
      v134[1] = v123;

      v135 = *(v68 + 16);
      v107 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v107)
      {
        goto LABEL_185;
      }

      *(v68 + 16) = v136;
    }

    v119 = v324;
    a1 = v336;
    v117 = v10 + 1;
    v118 = v332;
    if (v308 != v10)
    {
      continue;
    }

    break;
  }

LABEL_80:

  if ([v328 scoringType] == 3)
  {
    v137 = v324;
    v138 = *(v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
    v139 = *(v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
    __swift_project_boxed_opaque_existential_1((v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v138);
    (*(v139 + 8))(&v337, v138, v139);
    v349 = v342;
    *v350 = *v343;
    v344 = v337;
    v345 = v338;
    v346 = v339;
    *&v350[14] = *&v343[14];
    v347 = v340;
    v348 = v341;
    v140 = *&v350[8];
    sub_1C6B11190(&v344);
    v141 = [v140 favorabilityByPublisherID];

    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v142 = sub_1C6D79490();

    v143 = sub_1C6D19B84(v142);
    v308 = 0;
  }

  else
  {
    v143 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
    v308 = 0;
    v137 = v324;
  }

  v144 = v329;
  v145 = v330;
  v146 = *v329;

  sub_1C6D78230();

  v147 = v344;
  v148 = sub_1C6D79130();

  v149 = *v144;

  sub_1C6D78230();

  v150 = v344;
  v151 = sub_1C6D79120();

  v152 = *v144;

  sub_1C6D78230();

  v153 = v344;
  v154 = sub_1C6D79150();

  v155 = v312;
  sub_1C6D75F40();
  v306 = v151;
  v307 = v148;
  v305 = v154;
  v156 = sub_1C6D07978(v137, v145, v148, v151, v154, a1, v333, v143, v155);
  sub_1C6B15028(v137 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v337, sub_1C6D1A758);
  v157 = v143;
  if (*(&v338 + 1))
  {
    sub_1C6B15E34(&v337, &v344);
    v158 = *(&v345 + 1);
    v159 = v346;
    __swift_project_boxed_opaque_existential_1(&v344, *(&v345 + 1));
    v160 = v308;
    v161 = (*(v159 + 16))(a1, v145, 0, v331, v158, v159);
    if (v160)
    {
      v162 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

      __swift_destroy_boxed_opaque_existential_1(&v344);
      v308 = 0;
    }

    else
    {
      v162 = v161;
      v308 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v344);
    }
  }

  else
  {
    sub_1C6D1BEDC(&v337, sub_1C6D1A758);
    sub_1C6D79AC0();
    v163 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30();
    v162 = sub_1C6B5F1EC(v163);
  }

  v164 = v304;
  v165 = v323;
  v336 = sub_1C6D04F98(v324, a1);
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
  v335 = v157;
  v332 = v156;
  v304 = v162;
  if (v165)
  {
    *&v344 = MEMORY[0x1E69E7CC0];
    sub_1C6B392A0(0, v165 & ~(v165 >> 63), 0);
    if (v165 < 0)
    {
      goto LABEL_183;
    }

    v166 = v344;
    if (v334)
    {
      v167 = 0;
      do
      {
        MEMORY[0x1CCA56240](v167, a1);
        v168 = swift_getObjectType();
        sub_1C6BB1E60(v168, v164);
        swift_unknownObjectRelease();
        *&v344 = v166;
        v170 = *(v166 + 16);
        v169 = *(v166 + 24);
        if (v170 >= v169 >> 1)
        {
          sub_1C6B392A0(v169 > 1, v170 + 1, 1);
          v166 = v344;
        }

        ++v167;
        *(v166 + 16) = v170 + 1;
        (*(v327 + 32))(v166 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v170, v164, v325);
      }

      while (v323 != v167);
    }

    else
    {
      v171 = v274;
      v172 = v270;
      do
      {
        v173 = *v172;
        v174 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1C6BB1E60(v174, v171);
        swift_unknownObjectRelease();
        *&v344 = v166;
        v176 = *(v166 + 16);
        v175 = *(v166 + 24);
        if (v176 >= v175 >> 1)
        {
          sub_1C6B392A0(v175 > 1, v176 + 1, 1);
          v166 = v344;
        }

        *(v166 + 16) = v176 + 1;
        (*(v327 + 32))(v166 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v176, v171, v325);
        ++v172;
        --v165;
      }

      while (v165);
    }
  }

  v177 = v307;
  v178 = v324;
  sub_1C6D048D4(v307);
  v334 = *(v178 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  v351 = v334;

  sub_1C6D76B10();
  v179 = v329;
  v180 = *v329;

  sub_1C6D78230();

  v181 = v337;
  v182 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
  swift_beginAccess();
  v183 = *(v178 + v182);

  sub_1C6D78230();

  sub_1C6B7C3F0(v177, v353, *(v178 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring), v316);

  v184 = *v179;

  sub_1C6D78230();

  v185 = v353;
  sub_1C6B7B540(v177);

  v186 = *v179;

  sub_1C6D78230();

  v187 = v353;
  v323 = sub_1C6B7E2C4(v306);

  v188 = *v179;

  sub_1C6D78230();

  v189 = v353;
  sub_1C6B7D9D4(v305);

  v190 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v191 = *(v178 + v190);

  sub_1C6D78230();

  v192 = v352;
  sub_1C6C6DE58();

  [v328 decayRate];
  (*(v288 + 104))(v290, *MEMORY[0x1E69D6E90], v289);
  (*(v291 + 104))(v293, *MEMORY[0x1E69D6EA0], v292);
  LOBYTE(v352) = 0;
  sub_1C6D1A7C0();
  v194 = *(v193 + 48);
  v195 = *(v193 + 52);
  swift_allocObject();
  sub_1C6D77230();
  sub_1C6D1C040(qword_1EDCEA618, v196, type metadata accessor for XavierScoringService);
  sub_1C6D77110();

  sub_1C6B14DC0();
  sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0);
  v10 = v332;
  v14 = v335;
  a2 = v313;
  v197 = v314;
  v9 = v323;
  v198 = sub_1C6D76C00();

  (*(v302 + 8))(v315, v303);
  (*(v300 + 8))(v197, v301);
  (*(v298 + 8))(a2, v299);
  (*(v296 + 8))(v316, v297);
  (*(v294 + 8))(v309, v295);

  __swift_destroy_boxed_opaque_existential_1(&v344);
  v68 = v198 + 64;
  v199 = 1 << *(v198 + 32);
  v200 = -1;
  if (v199 < 64)
  {
    v200 = ~(-1 << v199);
  }

  isUniquelyReferenced_nonNull_native = v200 & *(v198 + 64);
  v332 = (v199 + 63) >> 6;
  v316 = v327 + 16;
  v313 = (v320 + 48);
  v314 = (v320 + 56);
  v303 = (v320 + 32);
  v323 = v198;

  v201 = 0;
  v309 = MEMORY[0x1E69E7CC0];
  v11 = v318;
  v315 = v68;
  ObjectType = v326;
  while (2)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      while (1)
      {
        v202 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          goto LABEL_171;
        }

        if (v202 >= v332)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = *(v68 + 8 * v202);
        ++v201;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_108;
        }
      }

      *&v344 = v309;

      isUniquelyReferenced_nonNull_native = v308;
      sub_1C6D09568(&v344, sub_1C6D14CA8, sub_1C6D12EF4);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_189;
      }

      v230 = swift_allocObject();

      v10 = v344;
      *(v230 + 16) = v344;
      v231 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
      v14 = v324;
      swift_beginAccess();
      v232 = *(v14 + v231);

      sub_1C6D78230();

      v334 = v230;
      v335 = v230 + 16;
      if (v344)
      {
        v333 = 0;
        v68 = *(v10 + 16);

        v336 = v68;
        if (v68)
        {
          v9 = 0;
          a2 = v319;
          ObjectType = (v320 + 8);
          while (v9 < *(v10 + 16))
          {
            isUniquelyReferenced_nonNull_native = v320;
            v11 = (*(isUniquelyReferenced_nonNull_native + 80) + 32) & ~*(isUniquelyReferenced_nonNull_native + 80);
            v14 = v322;
            (*(v320 + 16))(a2, v10 + v11 + *(v320 + 72) * v9, v322);
            v68 = sub_1C6D79010();
            [v68 agedPersonalizationScore];
            v234 = v233;

            v65 = (*(isUniquelyReferenced_nonNull_native + 8))(a2, v14);
            if (v234 == 0.0)
            {

              v235 = *v335;
              v236 = *(*v335 + 16);
              if (v236 < v9)
              {
                goto LABEL_186;
              }

              *&v344 = *v335;
              *(&v344 + 1) = v235 + v11;
              *&v345 = v9;
              *(&v345 + 1) = (2 * v236) | 1;

              isUniquelyReferenced_nonNull_native = v333;
              sub_1C6D0942C(&v344);
              v237 = *(v235 + 16);
              v230 = v334;
              if (v237 >= v9)
              {
                sub_1C6D1ADB8(v344, *(&v344 + 1), v345, *(&v345 + 1), v9, v237);
                swift_unknownObjectRelease();
                goto LABEL_156;
              }

              goto LABEL_187;
            }

            if (v336 == ++v9)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_177;
        }

LABEL_152:

        v230 = v334;
      }

LABEL_156:
      v238 = v287;
      sub_1C6D09938(v287);
      v240 = v280;
      v239 = v281;
      if ((*(v280 + 48))(v238, 1, v281) == 1)
      {
        v241 = v238;
        v242 = v284;
        v243 = *(v283 + 8);
        v243(v312, v284);

        sub_1C6D1A8AC(v241, &qword_1EDCEA7B0, MEMORY[0x1E69B4A90]);
LABEL_164:
        swift_beginAccess();
        v261 = *(v230 + 16);

        v262 = v331;
        v263 = v310;
        sub_1C6D0B65C(v331, v310, "Xavier finished scoring articles for request ID %{public}@ in %.0f milliseconds", 79);
        v243(v311, v242);
        (*(v285 + 8))(v263, v286);
        (*(v276 + 8))(v262, v277);
        return v261;
      }

      v244 = *(v240 + 32);
      v245 = v273;
      v244(v273, v238, v239);
      v246 = v324;
      v247 = *(v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
      v248 = *(v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
      __swift_project_boxed_opaque_existential_1((v324 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v247);
      (*(v248 + 8))(&v344, v247, v248);
      sub_1C6B11190(&v344);
      if (v350[16] == 1)
      {
        v249 = *(v246 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker);
        if (v249)
        {
          v251 = v283;
          v250 = v284;
          (*(v283 + 16))(v278, v311, v284);
          v252 = v240;
          v253 = *(v240 + 16);
          v336 = v249;
          v254 = v269;
          v253(v269, v273, v281);
          v255 = (*(v251 + 80) + 16) & ~*(v251 + 80);
          v256 = (v272 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
          v257 = (*(v252 + 80) + v256 + 8) & ~*(v252 + 80);
          v258 = swift_allocObject();
          (*(v251 + 32))(v258 + v255, v278, v250);
          v259 = v334;
          *(v258 + v256) = v334;
          v242 = v250;
          v230 = v259;
          v260 = v281;
          v244(v258 + v257, v254, v281);

          sub_1C6D77340();

          (*(v280 + 8))(v273, v260);
          v243 = *(v251 + 8);
          v243(v312, v242);
          goto LABEL_164;
        }

        (*(v240 + 8))(v273, v281);
      }

      else
      {

        (*(v240 + 8))(v245, v239);
      }

      v242 = v284;
      v243 = *(v283 + 8);
      v243(v312, v284);
      v230 = v334;
      goto LABEL_164;
    }

    v202 = v201;
LABEL_108:
    v203 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) | (v202 << 6);
    v9 = v323;
    v14 = v321;
    (*(v327 + 16))(v321, *(v323 + 48) + *(v327 + 72) * v203, v325);
    v204 = *(*(v9 + 56) + 8 * v203);
    *(v14 + *(v317 + 48)) = v204;
    v335 = v204;

    v205 = sub_1C6D76160();
    if (!*(ObjectType + 2))
    {

      goto LABEL_131;
    }

    v14 = v206;
    v207 = sub_1C6B5DEA8(v205, v206);
    v209 = v208;

    if ((v209 & 1) == 0)
    {
      v221 = 1;
      v11 = v318;
      goto LABEL_134;
    }

    v210 = *(*(ObjectType + 7) + 8 * v207);
    v14 = 0x1E8298000;
    if (!(v210 >> 62))
    {
      a2 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v318;
      if (a2)
      {
        goto LABEL_112;
      }

LABEL_131:
      v221 = 1;
LABEL_134:
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
      v222 = v322;
      (*v314)(v11, v221, 1, v322);
      sub_1C6D1A818(v321);
      if ((*v313)(v11, 1, v222) == 1)
      {
        v65 = sub_1C6D1A8AC(v11, &qword_1EDCEA538, MEMORY[0x1E69B5910]);
        v201 = v202;
        v68 = v315;
      }

      else
      {
        v10 = v303;
        v14 = *v303;
        v9 = v271;
        v223 = v322;
        (*v303)(v271, v11, v322);
        (v14)(v275, v9, v223);
        v224 = v309;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v224 = sub_1C6B658F8(0, v224[2] + 1, 1, v224);
        }

        v226 = v224[2];
        v225 = v224[3];
        v309 = v224;
        if (v226 >= v225 >> 1)
        {
          v309 = sub_1C6B658F8(v225 > 1, v226 + 1, 1, v309);
        }

        v227 = v309;
        v309[2] = v226 + 1;
        v65 = (v14)(v227 + ((*(v320 + 80) + 32) & ~*(v320 + 80)) + *(v320 + 72) * v226, v275, v322);
        v201 = v202;
        v11 = v318;
        v68 = v315;
      }

      continue;
    }

    break;
  }

  v228 = *(*(ObjectType + 7) + 8 * v207);
  a2 = sub_1C6D79E90();
  v210 = v228;
  v11 = v318;
  if (!a2)
  {
    goto LABEL_131;
  }

LABEL_112:
  v334 = v210 & 0xC000000000000001;
  if ((v210 & 0xC000000000000001) != 0)
  {
    v229 = v210;

    v212 = v229;
    v211 = MEMORY[0x1CCA56240](0, v229);
    if (a2 >= 1)
    {
      goto LABEL_115;
    }

    goto LABEL_181;
  }

  if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v211 = *(v210 + 32);
    v212 = v210;

    swift_unknownObjectRetain();
    if (a2 >= 1)
    {
LABEL_115:
      v304 = v211;
      v336 = 0;
      v11 = 0;
      v213 = v212;
      v333 = v212;
      while (1)
      {
        if (v334)
        {
          v9 = MEMORY[0x1CCA56240](v11, v213);
        }

        else
        {
          v9 = *(v213 + 8 * v11 + 32);
          swift_unknownObjectRetain();
        }

        v10 = sub_1C6CDDDAC();
        v214 = ([v9 respondsToSelector_] & 1) != 0 ? objc_msgSend(v9, sel_isEvergreen) : 0;
        [v10 setIsEvergreen_];
        v215 = ([v9 respondsToSelector_] & 1) != 0 ? objc_msgSend(v9, sel_isCoread) : 0;
        [v10 setIsCoread_];
        v216 = *v329;

        sub_1C6D78230();

        v217 = v344;
        ObjectType = [v344 scoringVersion];

        [v10 setScoringVersion_];
        v68 = [v10 *(v14 + 832)];
        v65 = [v328 scoringType];
        if (v65 < 0)
        {
          goto LABEL_172;
        }

        [v68 setScoringType_];

        v218 = [v10 *(v14 + 832)];
        [v218 setScoringContext_];

        v219 = [v10 *(v14 + 832)];
        sub_1C6D75F60();
        v220 = sub_1C6D79570();

        [v219 setScoringAssetsIdentifier_];

        [v9 setScoreProfile_];
        swift_unknownObjectRelease();
        if (v336)
        {
        }

        else
        {
          v336 = v10;
        }

        ObjectType = v326;
        v213 = v333;
        ++v11;
        v14 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        if (a2 == v11)
        {

          v11 = v318;
          sub_1C6D79020();
          v221 = 0;
          goto LABEL_134;
        }
      }
    }

LABEL_181:
    __break(1u);
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  sub_1C6D7A1C0();
  __break(1u);
LABEL_189:

  __break(1u);
  return result;
}

uint64_t sub_1C6D07978(uint64_t a1, unint64_t a2, void *a3, int64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v175 = a8;
  v176 = a7;
  v188 = a6;
  v179 = a5;
  v178 = a4;
  v177 = a3;
  v180 = a2;
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8]);
  v184 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v148 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v148 - v16;
  v17 = sub_1C6D76170();
  v192 = *(v17 - 8);
  v18 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  isUniquelyReferenced_nonNull_native = &v148 - v22;
  v161 = sub_1C6D771D0();
  v160 = *(v161 - 8);
  v24 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1C6D771C0();
  v157 = *(v158 - 8);
  v26 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1C6D76880();
  v173 = *(v174 - 8);
  v28 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v187 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1C6D767D0();
  v171 = *(v172 - 8);
  v30 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v186 = (&v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_1C6D76A80();
  v169 = *(v170 - 8);
  v32 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v167 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1C6D767B0();
  v166 = *(v168 - 8);
  v34 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v181 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1C6D76B30();
  v164 = *(v165 - 8);
  v36 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C6D75F80();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v148 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v43 = a1;
  v44 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment);
  swift_beginAccess();
  v45 = *v44;

  sub_1C6D78230();

  v46 = v197;
  v47 = [v197 shadowModeScoringEnabled];

  if ((v47 & 1) == 0)
  {
    v71 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    (*(v39 + 8))(v42, v38);
    return v71;
  }

  v182 = v39;
  v152 = v38;
  v48 = *v44;

  sub_1C6D78230();

  v49 = v197;
  v153 = sub_1C6D790F0();

  v50 = *v44;

  sub_1C6D78230();

  v51 = v197;
  v155 = sub_1C6D79140();

  v52 = *v44;

  sub_1C6D78230();

  v53 = v197;
  v154 = sub_1C6D79160();

  sub_1C6B0C69C(0, &qword_1EDCDF7A8, 0x1E69E58C0);
  v54 = (v43 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig);
  swift_beginAccess();
  v151 = v54;
  v55 = *v54;

  sub_1C6D78230();

  v56 = v197;
  v57 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v156 = v43;
  v58 = *(v43 + v57);

  sub_1C6D78230();

  v59 = v197;
  LOBYTE(v58) = sub_1C6D79BC0();

  v60 = v153;
  if ((v58 & 1) != 0 && !*(v60 + 16) && !v155[2] && !v154[2])
  {

    v71 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    (*(v182 + 8))(v42, v152);
    return v71;
  }

  v185 = v42;
  if (qword_1EDCEA6A0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v61 = qword_1EDCEA6A8;
    sub_1C6D79AC0();
    v149 = v61;
    sub_1C6D78D30();
    v62 = objc_allocWithZone(MEMORY[0x1E69B5468]);
    v63 = sub_1C6D79480();

    v177 = [v62 initWithConfigDictionary:v63 defaultConfig:v177];

    v64 = objc_allocWithZone(MEMORY[0x1E69B5478]);
    v65 = sub_1C6D79760();

    v155 = [v64 initWithConfig:v65 defaultConfig:v178];

    v66 = objc_allocWithZone(MEMORY[0x1E69B5458]);
    v67 = sub_1C6D79480();

    v154 = [v66 initWithConfig:v67 defaultConfig:v179];

    v179 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    v68 = v156;
    sub_1C6B15028(v156 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v195, sub_1C6D1A758);
    if (v196)
    {
      sub_1C6B15E34(&v195, &v197);
      v69 = v198;
      v70 = v199;
      __swift_project_boxed_opaque_existential_1(&v197, v198);
      v180 = (*(v70 + 16))(v188, v180, 1, v185, v69, v70);
      __swift_destroy_boxed_opaque_existential_1(&v197);
    }

    else
    {
      sub_1C6D1BEDC(&v195, sub_1C6D1A758);
      sub_1C6D79AC0();
      v72 = MEMORY[0x1E69E7CC0];
      sub_1C6D78D30();
      v180 = sub_1C6B5F1EC(v72);
    }

    v73 = v188;
    v74 = sub_1C6D04F98(v68, v188);
    v150 = v44;
    v75 = v73 >> 62 ? sub_1C6D79E90() : *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = MEMORY[0x1E69E7CC0];
    v189 = v17;
    v149 = 0;
    v178 = v74;
    if (v75)
    {
      break;
    }

LABEL_25:
    v153 = a9;
    v86 = v177;
    v87 = v156;
    sub_1C6D048D4(v177);
    v188 = *(v87 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
    v194 = v188;

    v88 = v163;
    sub_1C6D76B10();
    v89 = v150;
    v90 = *v150;

    sub_1C6D78230();

    v91 = v195;
    v92 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
    swift_beginAccess();
    v93 = *(v87 + v92);

    sub_1C6D78230();

    sub_1C6B7C3F0(v86, v193, *(v87 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring), v181);

    v94 = *v89;

    sub_1C6D78230();

    v95 = v193;
    v96 = v167;
    sub_1C6B7B540(v86);

    v97 = *v89;

    sub_1C6D78230();

    v98 = v193;
    sub_1C6B7E2C4(v155);

    v99 = *v89;

    sub_1C6D78230();

    v100 = v193;
    sub_1C6B7D9D4(v154);

    v101 = *v151;

    sub_1C6D78230();

    v102 = v193;
    sub_1C6C6DE58();

    [*(v87 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
    (*(v157 + 104))(v159, *MEMORY[0x1E69D6E90], v158);
    (*(v160 + 104))(v162, *MEMORY[0x1E69D6EA0], v161);
    LOBYTE(v193) = 0;
    sub_1C6D1A7C0();
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    sub_1C6D77230();
    type metadata accessor for XavierScoringService();
    sub_1C6D1C040(qword_1EDCEA618, v106, type metadata accessor for XavierScoringService);
    sub_1C6D77110();

    sub_1C6B14DC0();
    sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0);
    v107 = v88;
    v108 = v181;
    isUniquelyReferenced_nonNull_native = v186;
    v109 = sub_1C6D76C00();

    (*(v173 + 8))(v187, v174);
    (*(v171 + 8))(isUniquelyReferenced_nonNull_native, v172);
    (*(v169 + 8))(v96, v170);
    (*(v166 + 8))(v108, v168);
    (*(v164 + 8))(v107, v165);

    __swift_destroy_boxed_opaque_existential_1(&v197);
    v110 = v109 + 64;
    v111 = 1 << *(v109 + 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v109 + 64);
    v20 = (v111 + 63) >> 6;
    v180 = v192 + 16;
    v188 = v192 + 8;
    v181 = v109;

    v17 = 0;
    v71 = MEMORY[0x1E69E7CC8];
    v114 = v182;
    v115 = v185;
    v179 = v110;
    v178 = v20;
    while (v113)
    {
      v187 = v71;
LABEL_36:
      v119 = __clz(__rbit64(v113)) | (v17 << 6);
      v120 = v181;
      v20 = v192;
      v121 = v191;
      v122 = v189;
      (*(v192 + 16))(v191, *(v181 + 48) + *(v192 + 72) * v119, v189);
      v123 = v184;
      *(v121 + *(v184 + 48)) = *(*(v120 + 56) + 8 * v119);
      v186 = MEMORY[0x1E69E31C8];
      v124 = MEMORY[0x1E69E35A8];
      v125 = v183;
      sub_1C6D1BFCC(v121, v183, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8]);
      v126 = *(v125 + *(v123 + 48));

      v127 = sub_1C6D76160();
      v129 = v128;
      v130 = v122;
      v131 = *(v20 + 8);
      v131(v125, v130);
      v132 = v121;
      v44 = v127;
      v133 = v190;
      sub_1C6D1BFCC(v132, v190, &unk_1EDCEA850, v186, v124);
      v134 = *(v133 + *(v123 + 48));
      v135 = v187;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = v135;
      v137 = sub_1C6B5DEA8(v44, v129);
      v138 = *(v135 + 2);
      v139 = (v136 & 1) == 0;
      v140 = v138 + v139;
      if (__OFADD__(v138, v139))
      {
        goto LABEL_51;
      }

      v20 = v136;
      if (*(v135 + 3) >= v140)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v136)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1C6B72EE8();
          if (v20)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_1C6B6EDCC(v140, isUniquelyReferenced_nonNull_native);
        v141 = sub_1C6B5DEA8(v44, v129);
        if ((v20 & 1) != (v142 & 1))
        {
          goto LABEL_56;
        }

        v137 = v141;
        if (v20)
        {
LABEL_28:

          v71 = v197;
          v116 = *(v197 + 7);
          v117 = *(v116 + 8 * v137);
          *(v116 + 8 * v137) = v134;

          sub_1C6D1A818(v191);
          goto LABEL_29;
        }
      }

      v71 = v197;
      *&v197[8 * (v137 >> 6) + 64] |= 1 << v137;
      v143 = (*(v71 + 6) + 16 * v137);
      *v143 = v44;
      v143[1] = v129;
      *(*(v71 + 7) + 8 * v137) = v134;
      sub_1C6D1A818(v191);
      v144 = *(v71 + 2);
      v145 = __OFADD__(v144, 1);
      v146 = v144 + 1;
      if (v145)
      {
        goto LABEL_52;
      }

      *(v71 + 2) = v146;
LABEL_29:
      v113 &= v113 - 1;
      v131(v190, v189);
      v114 = v182;
      v115 = v185;
      v110 = v179;
      v20 = v178;
    }

    while (1)
    {
      v118 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v118 >= v20)
      {
        (*(v114 + 8))(v115, v152);

        return v71;
      }

      v113 = *(v110 + 8 * v118);
      ++v17;
      if (v113)
      {
        v187 = v71;
        v17 = v118;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v197 = MEMORY[0x1E69E7CC0];
  sub_1C6B392A0(0, v75 & ~(v75 >> 63), 0);
  if ((v75 & 0x8000000000000000) == 0)
  {
    v44 = v197;
    v76 = v188;
    if ((v188 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v75; ++i)
      {
        MEMORY[0x1CCA56240](i, v76);
        ObjectType = swift_getObjectType();
        sub_1C6BB1E60(ObjectType, v20);
        swift_unknownObjectRelease();
        v197 = v44;
        v80 = v44[2];
        v79 = v44[3];
        if (v80 >= v79 >> 1)
        {
          sub_1C6B392A0(v79 > 1, v80 + 1, 1);
          v44 = v197;
        }

        v44[2] = v80 + 1;
        (*(v192 + 32))(v44 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v80, v20, v17);
      }
    }

    else
    {
      v81 = (v188 + 32);
      do
      {
        v82 = *v81;
        v83 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1C6BB1E60(v83, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        v197 = v44;
        v85 = v44[2];
        v84 = v44[3];
        if (v85 >= v84 >> 1)
        {
          sub_1C6B392A0(v84 > 1, v85 + 1, 1);
          v44 = v197;
        }

        v44[2] = v85 + 1;
        (*(v192 + 32))(v44 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v85, isUniquelyReferenced_nonNull_native, v17);
        ++v81;
        --v75;
      }

      while (v75);
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_56:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D09028(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1C6D75F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = [sub_1C6D79030() publishDate];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_1C6D75F20();

    v20 = *(v9 + 32);
    v20(v7, v15, v8);
    v21 = *(v9 + 56);
    v21(v7, 0, 1, v8);
    v20(v18, v7, v8);
  }

  else
  {
    v21 = *(v9 + 56);
    v21(v7, 1, 1, v8);
    sub_1C6D75F00();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1C6D1A8AC(v7, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }
  }

  v22 = [sub_1C6D79030() publishDate];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_1C6D75F20();

    v23 = *(v9 + 32);
    v24 = v30;
    v23(v30, v15, v8);
    v21(v24, 0, 1, v8);
    v23(v12, v24, v8);
  }

  else
  {
    v25 = v30;
    v21(v30, 1, 1, v8);
    sub_1C6D75F00();
    if ((*(v9 + 48))(v25, 1, v8) != 1)
    {
      sub_1C6D1A8AC(v25, &qword_1EDCEA960, MEMORY[0x1E6969530]);
    }
  }

  v26 = sub_1C6D75EE0();
  v27 = *(v9 + 8);
  v27(v12, v8);
  v27(v18, v8);
  return v26 & 1;
}

uint64_t sub_1C6D0942C(uint64_t *a1)
{
  v2 = sub_1C6D79040();
  v5 = *(v2 - 8);
  result = v2 - 8;
  v4 = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
    __break(1u);
  }

  else
  {
    v9 = v4;
    v10 = *a1;
    if ((v7 & 1) != 0 && (v11 = *a1, isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *a1 = v10, isUniquelyReferenced_nonNull))
    {
      v13 = a1[1];
    }

    else
    {
      sub_1C6D1A9EC(a1[1], v6, v7);
      v15 = v14;
      v13 = v16;
      v6 = v17;
      v19 = v18;
      swift_unknownObjectRelease();
      *a1 = v15;
      a1[1] = v13;
      v10 = v15;
      a1[2] = v6;
      a1[3] = v19;
    }

    v20[0] = v13 + *(v9 + 72) * v6;
    v20[1] = v8;
    result = sub_1C6D126D8(v20, MEMORY[0x1E69B5910], sub_1C6D139D8, sub_1C6D12828);
    *a1 = v10;
  }

  return result;
}

uint64_t sub_1C6D09568(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C6D79040() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1C6C73F44(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1C6D126D8(v10, MEMORY[0x1E69B5910], a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1C6D0963C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FE4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C6D161F4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6D09770(void **a1)
{
  v2 = *(sub_1C6D79300() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6C73FF8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6D126D8(v6, MEMORY[0x1E69B6030], sub_1C6D16750, sub_1C6D13490);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6D09854(void **a1)
{
  sub_1C6C74F64();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C7400C(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v5;
  result = sub_1C6D126D8(v7, sub_1C6C74F64, sub_1C6D17160, sub_1C6D13730);
  *a1 = v4;
  return result;
}

uint64_t sub_1C6D09938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D791C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1C6D79170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v2, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 != *MEMORY[0x1E69B5A28])
  {
    if (v18 == *MEMORY[0x1E69B5A10])
    {
      (*(v13 + 8))(v17, v12);
      goto LABEL_6;
    }

    if (v18 != *MEMORY[0x1E69B5A08])
    {
      if (v18 != *MEMORY[0x1E69B5A20])
      {
        v28 = sub_1C6D77D80();
        (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
        return (*(v13 + 8))(v17, v12);
      }

LABEL_6:
      v21 = sub_1C6D77D80();
      return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }

    (*(v13 + 96))(v17, v12);
    (*(v5 + 32))(v8, v17, v4);
    v23 = (*(v5 + 88))(v8, v4);
    if (v23 == *MEMORY[0x1E69B5CD8])
    {
      v24 = MEMORY[0x1E69B4A80];
    }

    else if (v23 == *MEMORY[0x1E69B5CC8])
    {
      v24 = MEMORY[0x1E69B4A78];
    }

    else
    {
      if (v23 != *MEMORY[0x1E69B5CD0])
      {
        v36 = sub_1C6D77D80();
        (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
        (*(v5 + 8))(v8, v4);
        goto LABEL_23;
      }

      v24 = MEMORY[0x1E69B4A88];
    }

    v30 = *v24;
    v31 = sub_1C6D77D80();
    v32 = *(v31 - 8);
    (*(v32 + 104))(a1, v30, v31);
    (*(v32 + 56))(a1, 0, 1, v31);
LABEL_23:
    sub_1C6D1B320();
    v34 = *(v33 + 48);
    v35 = sub_1C6D791A0();
    return (*(*(v35 - 8) + 8))(&v17[v34], v35);
  }

  (*(v13 + 96))(v17, v12);
  (*(v5 + 32))(v11, v17, v4);
  v19 = (*(v5 + 88))(v11, v4);
  if (v19 == *MEMORY[0x1E69B5CD8])
  {
    v20 = MEMORY[0x1E69B4A80];
LABEL_14:
    v25 = *v20;
    v26 = sub_1C6D77D80();
    v27 = *(v26 - 8);
    (*(v27 + 104))(a1, v25, v26);
    return (*(v27 + 56))(a1, 0, 1, v26);
  }

  if (v19 == *MEMORY[0x1E69B5CC8])
  {
    v20 = MEMORY[0x1E69B4A78];
    goto LABEL_14;
  }

  if (v19 == *MEMORY[0x1E69B5CD0])
  {
    v20 = MEMORY[0x1E69B4A88];
    goto LABEL_14;
  }

  v29 = sub_1C6D77D80();
  (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1C6D09F54(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v102 = a2;
  v95 = sub_1C6D77D80();
  v94 = *(v95 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C6D79040();
  v98 = *(v103 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D77DA0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v84 - v21;
  v89 = sub_1C6D77C30();
  v88 = *(v89 - 8);
  v22 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C6D75F50();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  v30 = sub_1C6D773B0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, v102, v24, v33);
  sub_1C6D75F40();
  sub_1C6D77390();
  sub_1C6D1C040(&qword_1EDCE5FF0, 255, MEMORY[0x1E698AAD8]);
  v36 = MEMORY[0x1E69E7CC0];
  v86 = "{public}@ in %.0f milliseconds";
  v90 = a1;
  sub_1C6D772A0();
  (*(v31 + 8))(v35, v30);
  swift_beginAccess();
  v101 = a3;
  v37 = *(a3 + 16);
  v38 = *(v37 + 16);
  if (v38)
  {
    *&v104[0] = v36;

    sub_1C6B39260(0, v38, 0);
    v36 = *&v104[0];
    v102 = *(v98 + 16);
    v39 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v85 = v37;
    v40 = v37 + v39;
    v41 = *(v98 + 72);
    v42 = (v98 + 8);
    do
    {
      v43 = v103;
      v102(v10, v40, v103);
      v44 = sub_1C6D79010();
      [v44 sortingScore];
      v46 = v45;

      (*v42)(v10, v43);
      *&v104[0] = v36;
      v48 = *(v36 + 16);
      v47 = *(v36 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C6B39260((v47 > 1), v48 + 1, 1);
        v36 = *&v104[0];
      }

      *(v36 + 16) = v48 + 1;
      *(v36 + 8 * v48 + 32) = v46;
      v40 += v41;
      --v38;
    }

    while (v38);
  }

  sub_1C6D0AA50(v36);

  v49 = v101;
  swift_beginAccess();
  v50 = *(v49 + 16);
  v51 = *(v50 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    *&v104[0] = MEMORY[0x1E69E7CC0];

    sub_1C6B39260(0, v51, 0);
    v52 = *&v104[0];
    v102 = *(v98 + 16);
    v53 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v85 = v50;
    v54 = v50 + v53;
    v55 = *(v98 + 72);
    v56 = (v98 + 8);
    do
    {
      v57 = v103;
      v102(v10, v54, v103);
      v58 = sub_1C6D79010();
      [v58 agedPersonalizationScore];
      v60 = v59;

      (*v56)(v10, v57);
      *&v104[0] = v52;
      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C6B39260((v61 > 1), v62 + 1, 1);
        v52 = *&v104[0];
      }

      *(v52 + 16) = v62 + 1;
      *(v52 + 8 * v62 + 32) = v60;
      v54 += v55;
      --v51;
    }

    while (v51);
  }

  sub_1C6D0AA50(v52);

  v63 = v101;
  swift_beginAccess();
  v64 = *(v63 + 16);
  v65 = *(v64 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    *&v104[0] = MEMORY[0x1E69E7CC0];

    sub_1C6B39260(0, v65, 0);
    v66 = *&v104[0];
    v67 = v98 + 16;
    v102 = *(v98 + 16);
    v68 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v98 = v64;
    v69 = v64 + v68;
    v70 = *(v67 + 56);
    v71 = (v67 - 8);
    do
    {
      v72 = v103;
      v73 = v67;
      v102(v10, v69, v103);
      v74 = sub_1C6D79010();
      [v74 tabiScore];
      v76 = v75;

      (*v71)(v10, v72);
      *&v104[0] = v66;
      v78 = *(v66 + 16);
      v77 = *(v66 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1C6B39260((v77 > 1), v78 + 1, 1);
        v66 = *&v104[0];
      }

      *(v66 + 16) = v78 + 1;
      *(v66 + 8 * v78 + 32) = v76;
      v69 += v70;
      --v65;
      v67 = v73;
    }

    while (v65);
  }

  sub_1C6D0AA50(v66);

  sub_1C6D77D90();
  sub_1C6D77D90();
  (*(v94 + 16))(v97, v96, v95);
  v79 = v101;
  result = swift_beginAccess();
  v81 = *(*(v79 + 16) + 16);
  if (v81 >> 31)
  {
    __break(1u);
  }

  else if (v81 % 0xA < 5 || !__OFADD__(v81, 10 - v81 % 0xA))
  {
    v82 = v87;
    sub_1C6D77C20();
    sub_1C6D1C040(&qword_1EDCE5EC8, 255, MEMORY[0x1E69B49B0]);
    v83 = v89;
    sub_1C6D772A0();
    (*(v88 + 8))(v82, v83);
    sub_1C6D77C90();
    sub_1C6D1C040(&qword_1EDCE5EA0, 255, MEMORY[0x1E69B49E8]);
    memset(v104, 0, sizeof(v104));
    sub_1C6D772B0();
    return sub_1C6B79FDC(v104);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6D0AA50(uint64_t a1)
{
  v29 = a1;

  sub_1C6D0963C(&v29);
  v2 = v29;
  v3 = *(v29 + 2);
  if (v3)
  {
    v4 = *(v29 + 4);
    v5 = *&v29[8 * v3 + 24];
    sub_1C6D11840(v29);
    if (v3 > 3)
    {
      v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v8 = v2 + 48;
      v7 = 0.0;
      v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v10 = *v8;
        v7 = v7 + *(v8 - 2) + *(v8 - 1) + *v8 + *(v8 + 1);
        v8 += 32;
        v9 -= 4;
      }

      while (v9);
      if (v3 == v6)
      {
LABEL_10:

        v14 = v7 / v3;
        v15 = *(a1 + 16);
        if (v15)
        {
          if (v15 > 3)
          {
            v16 = v15 & 0x7FFFFFFFFFFFFFFCLL;
            v18 = vdupq_lane_s64(*&v14, 0);
            v19 = (a1 + 48);
            v17 = 0.0;
            v20 = v15 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v21 = vsubq_f64(v19[-1], v18);
              v22 = vsubq_f64(*v19, v18);
              v23 = vmulq_f64(v21, v21);
              v24 = vmulq_f64(v22, v22);
              v17 = v17 + v23.f64[0] + v23.f64[1] + v24.f64[0] + v24.f64[1];
              v19 += 2;
              v20 -= 4;
            }

            while (v20);
            if (v15 == v16)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v16 = 0;
            v17 = 0.0;
          }

          v25 = v15 - v16;
          v26 = (a1 + 8 * v16 + 32);
          do
          {
            v27 = *v26++;
            v17 = v17 + (v27 - v14) * (v27 - v14);
            --v25;
          }

          while (v25);
        }

LABEL_19:
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        sub_1C6D798F0();
        return sub_1C6D77D90();
      }
    }

    else
    {
      v6 = 0;
      v7 = 0.0;
    }

    v11 = v3 - v6;
    v12 = &v2[8 * v6 + 32];
    do
    {
      v13 = *v12++;
      v7 = v7 + v13;
      --v11;
    }

    while (v11);
    goto LABEL_10;
  }

  return sub_1C6D77D90();
}

void *sub_1C6D0ACDC(unint64_t a1, uint64_t a2)
{
  v42 = a2;
  v5 = sub_1C6D78EB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D75F80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B15028(v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService, &v37, sub_1C6D1AEF4);
  if (v38)
  {
    v33 = v11;
    v34 = v10;
    v36 = v5;
    sub_1C6B15E34(&v37, v39);
    sub_1C6D75F70();
    sub_1C6D78EA0();
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6B1D314();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6D7EB10;
    v35 = v6;
    if (a1 >> 62)
    {
      v16 = sub_1C6D79E90();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    v18 = sub_1C6D75F60();
    v20 = v19;
    *(v15 + 96) = MEMORY[0x1E69E6158];
    *(v15 + 104) = sub_1C6B2064C();
    *(v15 + 72) = v18;
    *(v15 + 80) = v20;
    sub_1C6D78D30();

    v21 = v40;
    v22 = v41;
    v23 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v24 = *(v22 + 8);
    v25 = sub_1C6B0C69C(0, &qword_1EDCDF8F0, 0x1E69B5580);
    v26 = v24(a1, v42, v14, v25, v21, v22);
    if (v3)
    {
      sub_1C6D0B65C(v14, v9, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v35 + 8))(v9, v36);
      (*(v33 + 8))(v14, v34);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v26);
      *(&v33 - 2) = v27;
      *(&v33 - 1) = v14;
      sub_1C6D03EF8(sub_1C6D1BCD4, &v33 - 4, a1);
      v29 = v28;

      *&v37 = v29;

      sub_1C6D09854(&v37);
      v31 = v33;
      v30 = v34;

      v23 = v37;
      sub_1C6D0B65C(v14, v9, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v35 + 8))(v9, v36);
      (*(v31 + 8))(v14, v30);
    }

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_1C6D1BEDC(&v37, sub_1C6D1AEF4);
    return MEMORY[0x1E69E7CC0];
  }

  return v23;
}

uint64_t XavierScoringService.score<A>(recipes:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v48 = a1;
  v6 = sub_1C6D78EB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75F80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B15028(v3 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService, &v43, sub_1C6D1AEF4);
  if (v44)
  {
    v38 = v12;
    v39 = v11;
    v40 = v7;
    v41 = v6;
    sub_1C6B15E34(&v43, v45);
    sub_1C6D75F70();
    v37 = v10;
    sub_1C6D78EA0();
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6B1D314();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6D7EB10;
    v17 = v48;
    v18 = sub_1C6D79810();
    v19 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = MEMORY[0x1E69E6530];
    *(v16 + 64) = v19;
    *(v16 + 32) = v18;
    v20 = sub_1C6D75F60();
    v22 = v21;
    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = sub_1C6B2064C();
    *(v16 + 72) = v20;
    *(v16 + 80) = v22;
    sub_1C6D78D30();

    v23 = v46;
    v24 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v25 = (*(v24 + 8))(v17, v42, v15, a3, v23, v24);
    if (v4)
    {
      v26 = v37;
      sub_1C6D0B65C(v15, v37, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v40 + 8))(v26, v41);
      (*(v38 + 8))(v15, v39);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    else
    {
      *&v43 = v17;
      MEMORY[0x1EEE9AC00](v25);
      *(&v37 - 4) = a3;
      *(&v37 - 3) = v28;
      *(&v37 - 2) = v15;
      v29 = sub_1C6D79820();
      v30 = sub_1C6D790C0();
      WitnessTable = swift_getWitnessTable();
      v33 = sub_1C6D04140(sub_1C6D1AF5C, (&v37 - 6), v29, v30, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v32);

      *&v43 = v33;
      MEMORY[0x1EEE9AC00](v34);
      *(&v37 - 2) = a3;
      sub_1C6D79820();
      swift_getWitnessTable();
      v35 = sub_1C6D796C0();

      v36 = v37;
      sub_1C6D0B65C(v15, v37, "Xavier finished scoring recipes for request ID %{public}@ in %.0f milliseconds", 78);
      (*(v40 + 8))(v36, v41);
      (*(v38 + 8))(v15, v39);
      __swift_destroy_boxed_opaque_existential_1(v45);
      return v35;
    }
  }

  else
  {
    sub_1C6D1BEDC(&v43, sub_1C6D1AEF4);
    sub_1C6D790C0();
    return sub_1C6D797E0();
  }
}

unint64_t sub_1C6D0B65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v4 = sub_1C6D78EB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6B1D314();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D7EB10;
  v10 = sub_1C6D75F60();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C6B2064C();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1C6D78EA0();
  v13 = sub_1C6D78E90();
  (*(v5 + 8))(v8, v4);
  result = sub_1C6D78E90();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E6438];
    *(v9 + 96) = MEMORY[0x1E69E63B0];
    *(v9 + 104) = v15;
    *(v9 + 72) = (v13 - result) / 1000000.0;
    sub_1C6D78D30();
  }

  return result;
}

void sub_1C6D0B848(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v5 = [a1 identifier];
  v6 = sub_1C6D795A0();
  v8 = v7;

  if (*(a2 + 16))
  {
    v9 = sub_1C6B5DEA8(v6, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v9);
      [v4 setTabiScore_];
      [v4 setAgedPersonalizationScore_];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6B1D314();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7EB10;
  v14 = [a1 identifier];
  v15 = sub_1C6D795A0();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1C6B2064C();
  *(v13 + 64) = v19;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v20 = sub_1C6D75F60();
  *(v13 + 96) = v18;
  *(v13 + 104) = v19;
  *(v13 + 72) = v20;
  *(v13 + 80) = v21;
  sub_1C6D78D30();

LABEL_8:
  v22 = v4;
  [a1 setScoreProfile_];
  sub_1C6B0C69C(0, &qword_1EDCDF8F0, 0x1E69B5580);
  v23 = a1;
  sub_1C6D790A0();
}

void sub_1C6D0BA9C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v5 = [v3 identifier];
  v6 = sub_1C6D795A0();
  v8 = v7;

  if (*(a2 + 16))
  {
    v9 = sub_1C6B5DEA8(v6, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v9);
      [v4 setTabiScore_];
      [v4 setAgedPersonalizationScore_];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6B1D314();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7EB10;
  v14 = [v3 identifier];
  v15 = sub_1C6D795A0();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1C6B2064C();
  *(v13 + 64) = v19;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v20 = sub_1C6D75F60();
  *(v13 + 96) = v18;
  *(v13 + 104) = v19;
  *(v13 + 72) = v20;
  *(v13 + 80) = v21;
  sub_1C6D78D30();

LABEL_8:
  v22 = v4;
  [v3 setScoreProfile_];
  swift_unknownObjectRetain();
  sub_1C6D790A0();
}

uint64_t XavierScoringService.score(tags:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D76B00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D79300();
  v10 = *(v9 - 8);
  v112 = v9;
  v113 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  *&v109 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v99 - v17;
  v18 = a1[2];
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C6D0C798(v1, a1);
  if (v19)
  {
    v20 = v19;
    if (*(v19 + 16))
    {
      v111 = v113 + 32;
      v21 = a1 + 5;
      a1 = MEMORY[0x1E69E7CC0];
      v109 = xmmword_1C6D7E630;
      do
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        v25 = *(v20 + 16);

        if (v25 && (v26 = sub_1C6B5DEA8(v23, v24), (v27 & 1) != 0))
        {
          v28 = *(*(v20 + 56) + 8 * v26);

          sub_1C6D792E0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
          }

          v30 = a1[2];
          v29 = a1[3];
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            a1 = sub_1C6B6636C(v29 > 1, v30 + 1, 1, a1);
          }

          v22 = v110;
        }

        else
        {
          if (qword_1EDCE2538 != -1)
          {
            swift_once();
          }

          sub_1C6D79AA0();
          sub_1C6B1D314();
          v32 = swift_allocObject();
          *(v32 + 16) = v109;
          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1C6B2064C();
          *(v32 + 32) = v23;
          *(v32 + 40) = v24;

          sub_1C6D78D30();

          sub_1C6D792E0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
          }

          v30 = a1[2];
          v33 = a1[3];
          v31 = v30 + 1;
          if (v30 >= v33 >> 1)
          {
            a1 = sub_1C6B6636C(v33 > 1, v30 + 1, 1, a1);
          }

          v22 = v15;
        }

        a1[2] = v31;
        (*(v113 + 32))(a1 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v30, v22, v112);
        v21 += 2;
        --v18;
      }

      while (v18);
LABEL_57:

      return a1;
    }
  }

  v111 = v2;
  v108 = v8;
  v103 = v5;
  v104 = v4;
  if (qword_1EDCE2538 != -1)
  {
    goto LABEL_62;
  }

LABEL_23:
  sub_1C6D79AC0();
  sub_1C6B1D314();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C6D7EB10;
  v35 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  v36 = v111;
  swift_beginAccess();
  v106 = v35;
  v37 = *(v36 + v35);

  sub_1C6D78230();

  v38 = v114;
  v39 = [v114 treatmentID];

  v114 = v39;
  v40 = sub_1C6D7A0E0();
  v42 = v41;
  v43 = MEMORY[0x1E69E6158];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v44 = sub_1C6B2064C();
  *(v34 + 64) = v44;
  *(v34 + 32) = v40;
  *(v34 + 40) = v42;
  v114 = 0;
  v115 = 0xE000000000000000;
  v105 = *(v36 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore);
  [v105 decayRate];
  sub_1C6D79910();
  v45 = v114;
  v46 = v115;
  *(v34 + 96) = v43;
  *(v34 + 104) = v44;
  *(v34 + 72) = v45;
  *(v34 + 80) = v46;
  sub_1C6D78D30();
  v47 = v36;

  v48 = 0;
  v49 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider;
  v50 = a1 + 5;
  v110 = MEMORY[0x1E69E7CC8];
  v107 = a1;
  v102 = a1 + 5;
  while (2)
  {
    v51 = &v50[2 * v48];
    a1 = v48;
    while (1)
    {
      if (a1 >= v18)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_23;
      }

      v48 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_60;
      }

      v52 = *(v47 + v49);
      if (v52)
      {
        break;
      }

LABEL_25:
      a1 = (a1 + 1);
      v51 += 2;
      if (v48 == v18)
      {
        goto LABEL_42;
      }
    }

    v53 = *(v51 - 1);
    v54 = *v51;

    v55 = sub_1C6D79570();
    v56 = [v52 topicTranslationForTagID_];

    if (!v56)
    {

      v47 = v111;
      goto LABEL_25;
    }

    v57 = [v56 tagID];
    v100 = sub_1C6D795A0();
    v101 = v58;

    v59 = v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v59;
    v62 = sub_1C6B5DEA8(v53, v54);
    v63 = *(v59 + 2);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (!__OFADD__(v63, v64))
    {
      if (*(v59 + 3) >= v65)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = v61;
          sub_1C6B72F08();
          LOBYTE(v61) = v78;
        }
      }

      else
      {
        LODWORD(v110) = v61;
        sub_1C6B6EDEC(v65, isUniquelyReferenced_nonNull_native);
        v66 = sub_1C6B5DEA8(v53, v54);
        v67 = v61 & 1;
        LOBYTE(v61) = v110;
        if ((v110 & 1) != v67)
        {
          goto LABEL_66;
        }

        v62 = v66;
      }

      v68 = v114;
      v110 = v114;
      if (v61)
      {
        v69 = (*(v114 + 7) + 16 * v62);
        v70 = v69[1];
        v71 = v101;
        *v69 = v100;
        v69[1] = v71;
      }

      else
      {
        *&v114[8 * (v62 >> 6) + 64] |= 1 << v62;
        v72 = (v68[6] + 16 * v62);
        *v72 = v53;
        v72[1] = v54;
        v73 = (v68[7] + 16 * v62);
        v74 = v101;
        *v73 = v100;
        v73[1] = v74;

        v75 = v68[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_64;
        }

        v68[2] = v77;
      }

      v47 = v111;
      v50 = v102;
      if (v48 == v18)
      {
LABEL_42:
        v79 = v106;
        v80 = *(v47 + v106);

        sub_1C6D78230();

        v81 = v114;
        [v114 baselineImpressionPrior];

        v82 = *(v47 + v79);

        sub_1C6D78230();

        v83 = v114;
        v84 = [v114 defaultScoringConfig];

        if (!v84)
        {
          goto LABEL_65;
        }

        [v84 baselineRatePrior];

        sub_1C6D76AF0();
        [v105 decayRate];
        v114 = *(v47 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
        sub_1C6B14DC0();
        sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0);

        v85 = sub_1C6D76420();

        v86 = 1 << *(v85 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v18 = v87 & *(v85 + 64);
        v88 = (v86 + 63) >> 6;

        v89 = 0;
        a1 = MEMORY[0x1E69E7CC0];
        if (v18)
        {
          goto LABEL_50;
        }

        while (1)
        {
          v90 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_61;
          }

          if (v90 >= v88)
          {

            (*(v103 + 8))(v108, v104);
            goto LABEL_57;
          }

          v18 = *(v85 + 64 + 8 * v90);
          ++v89;
          if (v18)
          {
            v89 = v90;
            do
            {
LABEL_50:
              v91 = __clz(__rbit64(v18)) | (v89 << 6);
              v92 = (*(v85 + 48) + 16 * v91);
              v93 = *v92;
              v94 = v92[1];
              v95 = *(*(v85 + 56) + 8 * v91);
              swift_bridgeObjectRetain_n();
              sub_1C6D792E0();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_1C6B6636C(0, a1[2] + 1, 1, a1);
              }

              v97 = a1[2];
              v96 = a1[3];
              if (v97 >= v96 >> 1)
              {
                a1 = sub_1C6B6636C(v96 > 1, v97 + 1, 1, a1);
              }

              v18 &= v18 - 1;

              a1[2] = v97 + 1;
              (*(v113 + 32))(a1 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v97, v109, v112);
            }

            while (v18);
          }
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D0C798(uint64_t a1, uint64_t a2)
{
  sub_1C6B15028(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v19, sub_1C6D1A758);
  if (v20)
  {
    sub_1C6B15E34(&v19, v21);
    v4 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager);
    v5 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
    v6 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v5);
    (*(v6 + 8))(v17, v5, v6);
    v7 = v18;
    v8 = v18;
    sub_1C6B11190(v17);
    if (v7)
    {

      v9 = v4[3];
      v10 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v9);
      (*(v10 + 8))(v15, v9, v10);
      sub_1C6B11190(v15);
      if (v16 == 1)
      {
        v11 = v22;
        v12 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v13 = (*(v12 + 8))(a2, v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v21);
        return v13;
      }

      if (qword_1EDCE2538 != -1)
      {
        swift_once();
      }

      sub_1C6D79AC0();
    }

    else
    {
      if (qword_1EDCE2538 != -1)
      {
        swift_once();
      }

      sub_1C6D79AC0();
    }

    sub_1C6D78D30();
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1C6D1BEDC(&v19, sub_1C6D1A758);
    if (qword_1EDCE2538 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return 0;
}

void sub_1C6D0CADC(void *a1@<X8>)
{
  sub_1C6D790C0();
  v2 = sub_1C6D79080();
  [v2 sortingScore];
  v4 = v3;

  *a1 = v4;
}

double XavierScoringService.baselineScore.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  sub_1C6D76310();
  [*(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
  [v6 personalizationValueWithBaseline:0 decayRate:?];
  v4 = v3;

  return v4;
}

uint64_t XavierScoringService.prepareForUse()()
{
  sub_1C6B1B44C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6D0CC44(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C6C40F6C;
  *(v5 + 24) = v4;

  XavierScoringService.prepareForUse(completionHandler:)(sub_1C6BF507C, v5);
}

uint64_t XavierScoringService.prepareForUse(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_group_create();
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  v26 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  sub_1C6D76300();
  v5 = aBlock[6];
  sub_1C6D79AC0();
  sub_1C6B1D314();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7E630;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6B2064C();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0x7461676572676761;
  *(v6 + 40) = 0xEA00000000007365;
  sub_1C6D78D30();

  dispatch_group_enter(v3);
  v8 = swift_allocObject();
  v8[2] = 0x7461676572676761;
  v8[3] = 0xEA00000000007365;
  v8[4] = v3;
  aBlock[4] = sub_1C6D1B2CC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6B20B90;
  aBlock[3] = &block_descriptor_12;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  [v5 prepareAggregatesForUseWithCompletionHandler_];
  _Block_release(v9);

  v12 = *(v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v11 = *(v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider), v12);
  sub_1C6D79AC0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7E630;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = v7;
  strcpy((v13 + 32), "user context");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  sub_1C6D78D30();

  dispatch_group_enter(v10);
  v14 = swift_allocObject();
  strcpy((v14 + 16), "user context");
  *(v14 + 29) = 0;
  *(v14 + 30) = -5120;
  *(v14 + 32) = v10;
  v15 = *(v11 + 16);
  v16 = v10;
  v15(sub_1C6D1C104, v14, v12, v11);

  v17 = *(v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
  v18 = *(v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v17);
  (*(v18 + 24))(1, v17, v18);
  sub_1C6D79AC0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C6D7E630;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = v7;
  strcpy((v19 + 32), "configuration");
  *(v19 + 46) = -4864;
  sub_1C6D78D30();

  dispatch_group_enter(v16);
  v20 = swift_allocObject();
  strcpy((v20 + 16), "configuration");
  *(v20 + 30) = -4864;
  *(v20 + 32) = v16;
  v21 = v16;
  v22 = sub_1C6D78210();
  sub_1C6D78310();

  v23 = FCDispatchQueueForQualityOfService();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  sub_1C6D79AD0();
}

id XavierScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XavierScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C6D0D4B8()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  sub_1C6D76310();
  [*(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
  [v6 personalizationValueWithBaseline:0 decayRate:?];
  v4 = v3;

  return v4;
}

uint64_t sub_1C6D0D540()
{
  v5 = *v0;
  sub_1C6B1B44C(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6D0D5C8()
{
  swift_getObjectType();

  return sub_1C6D77110();
}

uint64_t sub_1C6D0D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1C6D0D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454F0](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1C6D0D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t ScoringServiceType.score(items:configurationSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C6D79170();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1B320();
  v14 = *(v13 + 48);
  FCFeedPersonalizationConfigurationSet.headlineContext.getter(a2, v12);
  v15 = sub_1C6D791A0();
  v16 = MEMORY[0x1E69B5B98];
  if (a2 != 3)
  {
    v16 = MEMORY[0x1E69B5BA0];
  }

  (*(*(v15 - 8) + 104))(&v12[v14], *v16, v15);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A08], v8);
  v17 = (*(a4 + 8))(a1, v12, a3, a4);
  (*(v9 + 8))(v12, v8);
  return v17;
}

id XavierScoringService.sort(items:options:configurationSet:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D79170();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D1B320();
  v12 = *(v11 + 48);
  FCFeedPersonalizationConfigurationSet.headlineContext.getter(a3, v10);
  v13 = sub_1C6D791A0();
  v14 = MEMORY[0x1E69B5B98];
  if (a3 != 3)
  {
    v14 = MEMORY[0x1E69B5BA0];
  }

  (*(*(v13 - 8) + 104))(&v10[v12], *v14, v13);
  (*(v7 + 104))(v10, *MEMORY[0x1E69B5A08], v6);
  XavierScoringService.score(items:context:)(a1, v10);
  (*(v7 + 8))(v10, v6);
  v19 = a2;
  sub_1C6D79040();
  v15 = sub_1C6D797A0();

  v16 = sub_1C6B6DEB4(v15);

  return v16;
}

void *sub_1C6D0DAF0(void *a1, uint64_t a2)
{
  if (a2 != 2)
  {
  }

  v3 = a1;

  sub_1C6D09568(&v3, sub_1C6D15768, sub_1C6D131CC);
  return v3;
}

uint64_t XavierScoringService.fetchAggregateMap(for:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  sub_1C6BAB388();
  v57 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  v58 = v3;
  v11 = *(v3 + v10);

  sub_1C6D78230();

  v12 = v62;
  v13 = [v9 featuresFromPersonalizingItem:a1 personalizationTreatment:v62];

  v14 = sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
  v15 = sub_1C6D79780();

  sub_1C6B1B44C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D839E0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B51E0]) init];
  v62 = v15;
  sub_1C6B39044(inited);
  v17 = v62;
  if (!(v62 >> 62))
  {
    v59 = v62 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_35:
    v49 = MEMORY[0x1E69E7CC8];
LABEL_36:

    v48(v49);
  }

LABEL_34:
  v59 = v17 & 0xFFFFFFFFFFFFFF8;
  v18 = sub_1C6D79E90();
  if (!v18)
  {
    goto LABEL_35;
  }

LABEL_3:
  v46 = v14;
  v19 = 0;
  v54 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext;
  v55 = v17 & 0xC000000000000001;
  v53 = *MEMORY[0x1E69E3228];
  v51 = (v6 + 8);
  v52 = (v6 + 104);
  v49 = MEMORY[0x1E69E7CC8];
  v50 = v17;
  while (2)
  {
    v6 = v19;
    while (1)
    {
      if (v55)
      {
        v20 = MEMORY[0x1CCA56240](v6, v17);
      }

      else
      {
        if (v6 >= *(v59 + 16))
        {
          goto LABEL_33;
        }

        v20 = *(v17 + 8 * v6 + 32);
      }

      v21 = v20;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v60 = v6 + 1;
      v61 = *(v58 + v54);

      v22 = [v21 personalizationIdentifier];
      sub_1C6D795A0();

      v24 = v56;
      v23 = v57;
      (*v52)(v56, v53, v57);
      sub_1C6B14DC0();
      sub_1C6D1C040(&qword_1EC1D96B8, 255, sub_1C6B14DC0);
      sub_1C6D761E0();

      (*v51)(v24, v23);

      v14 = v62;
      if (v62)
      {
        break;
      }

      ++v6;
      v17 = v50;
      if (v60 == v18)
      {
        goto LABEL_36;
      }
    }

    if ((v49 & 0xC000000000000001) != 0)
    {
      if (v49 < 0)
      {
        v25 = v49;
      }

      else
      {
        v25 = v49 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v62;
      v27 = sub_1C6D79E90();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_38;
      }

      v28 = sub_1C6D11CD4(v25, v27 + 1);
    }

    else
    {
      v29 = v62;
      v28 = v49;
    }

    v30 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    v32 = sub_1C6B650DC(v21);
    v34 = v30[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      break;
    }

    v38 = v33;
    if (v30[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = v32;
        sub_1C6B75060();
        v32 = v44;
      }
    }

    else
    {
      sub_1C6B72614(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1C6B650DC(v21);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_40;
      }
    }

    v17 = v50;
    v49 = v62;
    if (v38)
    {
      v40 = *(v62 + 56);
      v41 = *(v40 + 8 * v32);
      *(v40 + 8 * v32) = v14;

      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    *(v62 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(*(v49 + 48) + 8 * v32) = v21;
    *(*(v49 + 56) + 8 * v32) = v14;

    v42 = *(v49 + 16);
    v36 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v36)
    {
      *(v49 + 16) = v43;
LABEL_30:
      v19 = v60;
      if (v60 != v18)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  __break(1u);
LABEL_40:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

void XavierScoringService.limitItems(byMinimumItemQuality:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1C6D1B398();
  v231 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v194 - v8;
  sub_1C6D1B400();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v220 = v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1B498();
  v205 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v229 = v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v234 = v194 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v235 = v194 - v20;
  sub_1C6D1B530();
  v207 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v216 = v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v198 = v194 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v217 = (v194 - v27);
  v225 = sub_1C6D75FF0();
  v211 = *(v225 - 8);
  v28 = v211[8];
  MEMORY[0x1EEE9AC00](v225);
  v201 = v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v200 = v194 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v219 = v194 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v218 = v194 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v199 = v194 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v221 = v194 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v208 = v194 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v202 = v194 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v212 = v194 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v194 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v194 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v194 - v53;
  v55 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v56 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider), v55);
  (*(v56 + 8))(v238, 0, v55, v56);
  v222 = v54;
  sub_1C6D75FE0();
  v224 = v51;
  sub_1C6D75FE0();
  v213 = v48;
  sub_1C6D75FE0();
  v206 = a1;
  if (a1 >> 62)
  {
LABEL_58:
    v57 = sub_1C6D79E90();
  }

  else
  {
    v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v230 = v11;
  v58 = v229;
  v59 = v231;
  v232 = v6;
  v233 = v9;
  if (v57)
  {
    v60 = 0;
    v228 = (v206 & 0xC000000000000001);
    v227 = v206 & 0xFFFFFFFFFFFFFF8;
    v226 = v206 + 32;
    v61 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    v223 = v57;
    do
    {
      if (v228)
      {
        v62 = MEMORY[0x1CCA56240](v60, v206);
        v11 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v60 >= *(v227 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        v62 = *(v226 + 8 * v60);
        swift_unknownObjectRetain();
        v11 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_27;
        }
      }

      if ([v62 respondsToSelector_])
      {
        [v62 v61[125]];
      }

      sub_1C6D75FC0();
      v63 = [v62 publisherID];
      if (v63)
      {
        v64 = v59;
        v65 = v63;
        v66 = sub_1C6D795A0();
        v68 = v67;

        __swift_project_boxed_opaque_existential_1(v238, v238[3]);
        v69 = sub_1C6D76070();
        v70 = v69;
        if (*(v69 + 16) && (v71 = *(v69 + 40), sub_1C6D7A260(), sub_1C6D79610(), v72 = sub_1C6D7A2B0(), v73 = -1 << *(v70 + 32), v74 = v72 & ~v73, ((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) != 0))
        {
          v75 = ~v73;
          while (1)
          {
            v76 = (*(v70 + 48) + 16 * v74);
            v77 = *v76 == v66 && v76[1] == v68;
            if (v77 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v74 = (v74 + 1) & v75;
            if (((*(v70 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          sub_1C6D75FC0();
        }

        else
        {
LABEL_5:
        }

        v59 = v64;
        v6 = v232;
        v9 = v233;
        v58 = v229;
        v57 = v223;
        v61 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      }

      swift_unknownObjectRelease();
      v60 = v11;
    }

    while (v11 != v57);
  }

  sub_1C6D75FE0();
  if (qword_1EDCE6198 != -1)
  {
    swift_once();
  }

  v78 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  v79 = v210;
  swift_beginAccess();
  v80 = *(v79 + v78);

  sub_1C6D78230();

  v81 = v237;
  [v237 lowQualityFilterShouldIsolateEvergreenItems];

  v83 = sub_1C6D1C040(qword_1EDCEA618, v82, type metadata accessor for XavierScoringService);
  v84 = sub_1C6D77130();
  v85 = sub_1C6D75FA0();
  v86 = v85;
  v204 = v78;
  v203 = v83;
  if ((v84 & 1) == 0)
  {
    v156 = sub_1C6D75FA0();
    if (!__OFADD__(v86, v156))
    {
      v157 = (v86 + v156);
      v158 = *(v79 + v78);

      sub_1C6D78230();

      v159 = v237;
      [v237 lowQualityContentThreshold];
      v161 = v160;

      v162 = v161 * v157;
      if (COERCE__INT64(fabs(v161 * v157)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v162 > -9.22337204e18)
        {
          if (v162 < 9.22337204e18)
          {
            v163 = v162;
            sub_1C6D75FB0();
            v164 = v216;
            sub_1C6D0FF78(v163, v216);
            v234 = sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50]);
            sub_1C6D79CA0();
            sub_1C6B15028(v164, v58, sub_1C6D1B530);
            v165 = *(v205 + 36);
            v166 = sub_1C6D75F90();
            v167 = *(v166 - 8);
            v168 = *(v167 + 16);
            v228 = (v167 + 16);
            v227 = v168;
            v168(&v165[v58], v164, v166);
            sub_1C6D1BEDC(v164, sub_1C6D1B530);
            v169 = v207;
            v170 = *(v207 + 36);
            v226 = sub_1C6D1C040(&unk_1EDCE6350, 255, MEMORY[0x1E6969B18]);
            v171 = sub_1C6D79560();
            v172 = v220;
            if ((v171 & 1) == 0)
            {
              v223 = *(v169 + 40);
              v221 = v167 + 32;
              v217 = (v167 + 8);
              v235 = v170;
              v218 = v165;
              v173 = (v167 + 32);
              do
              {
                v174 = v233;
                v175 = v227;
                (v227)(v233, v58, v166);
                v176 = v232;
                v177 = v231;
                v175(v174 + *(v231 + 48), v58 + v235, v166);
                sub_1C6B15028(v174, v176, sub_1C6D1B398);
                v178 = *(v177 + 48);
                v179 = *v173;
                (*v173)(v172, v176, v166);
                v180 = *v217;
                (*v217)(v176 + v178, v166);
                sub_1C6D1C088(v174, v176, sub_1C6D1B398);
                v179(v172 + *(v230 + 36), v176 + *(v177 + 48), v166);
                v180(v176, v166);
                v58 = v229;
                sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50]);
                sub_1C6D799D0();
                sub_1C6D1BEDC(v172, sub_1C6D1B400);
                v181 = sub_1C6D79A50();
                v183 = *v182;
                v181(&v237, 0);
                sub_1C6D79A10();
                v236 = v183;
                sub_1C6D79C90();
              }

              while ((sub_1C6D79560() & 1) == 0);
            }

            sub_1C6D1BEDC(v58, sub_1C6D1B498);
            v184 = v211;
            v154 = v211[1];
            v185 = v212;
            v155 = v225;
            v154(v212, v225);
            (v184[4])(v185, v219, v155);
            goto LABEL_52;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v87 = v85;
  v88 = *(v79 + v78);

  sub_1C6D78230();

  v89 = v237;
  [v237 lowQualityContentThreshold];
  v91 = v90;

  v92 = v91 * v87;
  if (COERCE__INT64(fabs(v91 * v87)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v92 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v93 = v92;
  v94 = v211[2];
  v196 = v211 + 2;
  v195 = v94;
  v94(v208, v222, v225);
  v95 = v217;
  sub_1C6D0FF78(v93, v217);
  v227 = sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50]);
  sub_1C6D79CA0();
  v96 = v235;
  sub_1C6B15028(v95, v235, sub_1C6D1B530);
  v97 = *(v205 + 36);
  v98 = sub_1C6D75F90();
  v99 = v6;
  v100 = v231;
  v101 = v9;
  v102 = v98;
  v197 = *(v98 - 8);
  v103 = *(v197 + 16);
  v229 = (v197 + 16);
  v228 = v103;
  v103(&v97[v96], v95, v98);
  sub_1C6D1BEDC(v95, sub_1C6D1B530);
  v104 = *(v207 + 36);
  v105 = sub_1C6D1C040(&unk_1EDCE6350, 255, MEMORY[0x1E6969B18]);
  v219 = v97;
  v223 = v102;
  v226 = v105;
  if ((sub_1C6D79560() & 1) == 0)
  {
    v106 = v104;
    v216 = *(v207 + 40);
    v215 = (v197 + 32);
    v214 = (v197 + 8);
    v217 = v104;
    v107 = v223;
    v108 = (v197 + 32);
    do
    {
      v109 = v228;
      v228(v101, v96, v107);
      v109(v101 + *(v100 + 48), &v106[v96], v107);
      sub_1C6B15028(v101, v99, sub_1C6D1B398);
      v110 = *(v100 + 48);
      v111 = *v108;
      v112 = v220;
      (*v108)(v220, v99, v107);
      v113 = *v214;
      (*v214)(v99 + v110, v107);
      sub_1C6D1C088(v101, v99, sub_1C6D1B398);
      v111((v112 + *(v230 + 36)), v99 + *(v100 + 48), v107);
      v113(v99, v107);
      sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50]);
      sub_1C6D799D0();
      sub_1C6D1BEDC(v112, sub_1C6D1B400);
      v114 = sub_1C6D79A50();
      v116 = *v115;
      v114(&v237, 0);
      sub_1C6D79A10();
      v236 = v116;
      v96 = v235;
      v100 = v231;
      v106 = v217;
      v99 = v232;
      sub_1C6D79C90();
    }

    while ((sub_1C6D79560() & 1) == 0);
  }

  v117 = v228;
  sub_1C6D1BEDC(v96, sub_1C6D1B498);
  v118 = v211;
  v119 = (v211 + 4);
  v120 = v211[4];
  v121 = v202;
  v122 = v225;
  v120(v202, v221, v225);
  sub_1C6D75FD0();
  v124 = v118[1];
  v123 = v118 + 1;
  v215 = v124;
  v124(v121, v122);
  v125 = sub_1C6D75FA0();
  v126 = *(v210 + v204);

  sub_1C6D78230();

  v127 = v237;
  [v237 lowQualityContentThreshold];
  v129 = v128;

  v130 = v129 * v125;
  if (COERCE__INT64(fabs(v129 * v125)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_65;
  }

  if (v130 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v130 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v194[1] = v123;
  v202 = v120;
  v214 = v119;
  v131 = v130;
  v195(v208, v224, v122);
  v132 = v198;
  sub_1C6D0FF78(v131, v198);
  sub_1C6D79CA0();
  v133 = v234;
  sub_1C6B15028(v132, v234, sub_1C6D1B530);
  v134 = *(v205 + 36);
  v117(v133 + v134, v132, v223);
  sub_1C6D1BEDC(v132, sub_1C6D1B530);
  v135 = v207;
  v235 = *(v207 + 36);
  v136 = sub_1C6D79560();
  v137 = v232;
  v138 = v233;
  v139 = v220;
  if ((v136 & 1) == 0)
  {
    v221 = *(v135 + 40);
    v219 = (v197 + 32);
    v217 = (v197 + 8);
    v216 = v134;
    v140 = (v197 + 8);
    do
    {
      v141 = v223;
      v142 = v228;
      v228(v138, v133, v223);
      v143 = v122;
      v144 = v231;
      v142(&v233[*(v231 + 48)], v133 + v235, v141);
      sub_1C6B15028(v233, v137, sub_1C6D1B398);
      v145 = *(v144 + 48);
      v146 = *v219;
      (*v219)(v139, v137, v141);
      v147 = *v140;
      (*v140)(v137 + v145, v141);
      sub_1C6D1C088(v233, v137, sub_1C6D1B398);
      v148 = *(v144 + 48);
      v122 = v143;
      v146(v139 + *(v230 + 36), v137 + v148, v141);
      v147(v137, v141);
      sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50]);
      sub_1C6D799D0();
      sub_1C6D1BEDC(v139, sub_1C6D1B400);
      v149 = sub_1C6D79A50();
      v151 = *v150;
      v149(&v237, 0);
      v133 = v234;
      sub_1C6D79A10();
      v236 = v151;
      sub_1C6D79C90();
      v152 = sub_1C6D79560();
      v138 = v233;
    }

    while ((v152 & 1) == 0);
  }

  sub_1C6D1BEDC(v133, sub_1C6D1B498);
  v153 = v199;
  (v202)(v199, v218, v122);
  sub_1C6D75FD0();
  v154 = v215;
  v215(v153, v122);
  v155 = v122;
LABEL_52:
  v186 = v206;
  v187 = v210;
  v188 = v204;
  if (qword_1EDCE6180 != -1)
  {
    swift_once();
  }

  v189 = *(v187 + v188);

  sub_1C6D78230();

  v190 = v237;
  [v237 lowQualityFilterShouldPreserveItemsFromSubscribedChannels];

  if (sub_1C6D77130())
  {
    v191 = v211[2];
    v191(v200, v212, v155);
    v191(v201, v213, v155);
    sub_1C6D1C040(&unk_1EDCE6318, 255, MEMORY[0x1E6969B50]);
    v192 = v208;
    sub_1C6D79C80();
    sub_1C6D79C70();
    v154(v192, v155);
  }

  v237 = v186;
  sub_1C6B186F8();
  sub_1C6D1C040(&qword_1EDCDF9A8, 255, sub_1C6B186F8);
  sub_1C6D1C040(&unk_1EDCDF990, 255, sub_1C6B186F8);

  v193 = v212;
  sub_1C6D79A60();
  v154(v193, v155);
  v154(v213, v155);
  v154(v224, v155);
  v154(v222, v155);
  __swift_destroy_boxed_opaque_existential_1(v238);
}

void sub_1C6D0FF78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D1B398();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v10;
  sub_1C6D1B400();
  v51 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1BE00(0, &unk_1EDCE6340, MEMORY[0x1E6969B18]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = sub_1C6D75F90();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v55 = &v46 - v30;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v48 = v14;
    v49 = v6;
    v50 = a2;
    v31 = sub_1C6D75FF0();
    v32 = MEMORY[0x1E6969B50];
    v33 = sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50]);
    sub_1C6D79A00();
    sub_1C6D799B0();
    sub_1C6D1C040(&qword_1EDCE6338, 255, v32);
    sub_1C6D79520();
    v34 = *(v22 + 8);
    v34(v25, v21);
    v47 = v34;
    v34(v28, v21);
    v35 = v54;
    sub_1C6D1BD0C(v20, v54);
    if ((*(v22 + 48))(v35, 1, v21) == 1)
    {
      v36 = v55;
      sub_1C6D799B0();
      sub_1C6D1A8AC(v35, &unk_1EDCE6340, MEMORY[0x1E6969B18]);
    }

    else
    {
      v36 = v55;
      (*(v22 + 32))(v55, v35, v21);
    }

    sub_1C6D79A00();
    sub_1C6D1C040(&unk_1EDCE6360, 255, MEMORY[0x1E6969B18]);
    if (sub_1C6D79550())
    {
      v54 = v2;
      v55 = v33;
      v37 = *(v22 + 32);
      v38 = v52;
      v37(v52, v36, v21);
      v39 = v49;
      v37((v38 + *(v49 + 48)), v28, v21);
      v40 = v53;
      sub_1C6B15028(v38, v53, sub_1C6D1B398);
      v41 = *(v39 + 48);
      v42 = v48;
      v37(v48, v40, v21);
      v43 = v40 + v41;
      v44 = v47;
      v47(v43, v21);
      sub_1C6D1C088(v38, v40, sub_1C6D1B398);
      v37((v42 + *(v51 + 36)), (v40 + *(v39 + 48)), v21);
      v44(v40, v21);
      v45 = v54;
      sub_1C6D79A40();
      (*(*(v31 - 8) + 8))(v45, v31);
      sub_1C6D1BEDC(v42, sub_1C6D1B400);
      return;
    }
  }

  __break(1u);
}

void sub_1C6D105CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6B1D314();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7E630;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6B2064C();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  sub_1C6D78D30();

  dispatch_group_leave(a3);
}

uint64_t sub_1C6D106CC(uint64_t (*a1)(uint64_t))
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v2 = sub_1C6D78D30();
  return a1(v2);
}

Swift::Double __swiftcall XavierScoringService.decayedPublisherDiversificationPenalty()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  v3 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  v4 = *(v0 + v3);

  sub_1C6D78230();

  [v8 publisherDiversificationInitialPenalty];

  v5 = *(v1 + v3);

  sub_1C6D78230();

  [v8 publisherDiversificationPenalty];

  v6 = *(v1 + v3);

  sub_1C6D78230();

  [v8 publisherDiversificationPenaltyHalfLife];

  sub_1C6D762E0();
  return result;
}

Swift::OpaquePointer_optional __swiftcall XavierScoringService.rankTagIDsDescending(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v27 = sub_1C6D79300();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (rawValue)
  {
    v28 = XavierScoringService.score(tags:)(rawValue);

    sub_1C6D09770(&v28);

    v6 = v28;
    v7 = v28[2];
    if (v7)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v7, 0);
      v8 = v28;
      v10 = *(v2 + 16);
      v9 = v2 + 16;
      v11 = *(v9 + 64);
      v23[1] = v6;
      v12 = v6 + ((v11 + 32) & ~v11);
      v24 = *(v9 + 56);
      v25 = v10;
      v26 = v9;
      v13 = (v9 - 8);
      do
      {
        v14 = v27;
        v25(v5, v12, v27);
        v15 = sub_1C6D792F0();
        v17 = v16;
        (*v13)(v5, v14);
        v28 = v8;
        v19 = v8[2];
        v18 = v8[3];
        if (v19 >= v18 >> 1)
        {
          sub_1C6B39280((v18 > 1), v19 + 1, 1);
          v8 = v28;
        }

        v8[2] = v19 + 1;
        v20 = &v8[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v12 += v24;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v22 = v8;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  result.value._rawValue = v22;
  result.is_nil = v21;
  return result;
}

Swift::OpaquePointer_optional __swiftcall XavierScoringService.scores(forTagIDs:)(Swift::OpaquePointer_optional forTagIDs)
{
  rawValue = forTagIDs.value._rawValue;
  v2 = sub_1C6D79300();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!rawValue)
  {
    goto LABEL_29;
  }

  v6 = XavierScoringService.score(tags:)(rawValue);
  v7 = v6;
  v45 = *(v6 + 16);
  if (!v45)
  {

    v9 = MEMORY[0x1E69E7CC8];
LABEL_25:
    v39 = v9;
    goto LABEL_31;
  }

  v8 = 0;
  v44 = v6 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v42 = (v46 + 8);
  v43 = v46 + 16;
  v9 = MEMORY[0x1E69E7CC8];
  v41 = v6;
  while (v8 < *(v7 + 16))
  {
    (*(v46 + 16))(v5, v44 + *(v46 + 72) * v8, v2);
    v11 = sub_1C6D792F0();
    v13 = v12;
    sub_1C6D792D0();
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (!v15)
    {
      v27 = sub_1C6B5DEA8(v11, v13);
      v29 = v28;

      if (v29)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v9;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C6B751B8();
          v9 = v47;
        }

        v10 = *(v9[6] + 16 * v27 + 8);

        sub_1C6D1231C(v27, v9);
      }

      (*v42)(v5, v2);
      goto LABEL_6;
    }

    v16 = v15;
    v17 = v2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v19 = sub_1C6B5DEA8(v11, v13);
    v21 = v9[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_27;
    }

    v25 = v20;
    if (v9[3] < v24)
    {
      sub_1C6B72878(v24, v18);
      v19 = sub_1C6B5DEA8(v11, v13);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      v2 = v17;
      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v18)
    {
      goto LABEL_17;
    }

    v34 = v19;
    sub_1C6B751B8();
    v19 = v34;
    v2 = v17;
    if ((v25 & 1) == 0)
    {
LABEL_20:
      v9 = v47;
      v47[(v19 >> 6) + 8] |= 1 << v19;
      v35 = (v9[6] + 16 * v19);
      *v35 = v11;
      v35[1] = v13;
      *(v9[7] + 8 * v19) = v16;
      (*v42)(v5, v2);
      v36 = v9[2];
      v23 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v9[2] = v37;
      goto LABEL_22;
    }

LABEL_18:
    v31 = v19;

    v9 = v47;
    v32 = v47[7];
    v33 = *(v32 + 8 * v31);
    *(v32 + 8 * v31) = v16;

    (*v42)(v5, v2);
LABEL_22:
    v7 = v41;
LABEL_6:
    if (v45 == ++v8)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v39 = sub_1C6D7A1C0();
  __break(1u);
LABEL_31:
  result.value._rawValue = v39;
  result.is_nil = v38;
  return result;
}