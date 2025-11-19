unint64_t sub_21927F4F4()
{
  result = qword_27CC18450;
  if (!qword_27CC18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18450);
  }

  return result;
}

unint64_t sub_21927F54C()
{
  result = qword_27CC18458;
  if (!qword_27CC18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18458);
  }

  return result;
}

uint64_t MyRecipesDataSource.description.getter()
{
  if (*v0)
  {
    return 0x6F42657069636552;
  }

  else
  {
    return 0x6948657069636552;
  }
}

uint64_t MyRecipesDataSource.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_21927F67C()
{
  result = qword_27CC18460;
  if (!qword_27CC18460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18460);
  }

  return result;
}

uint64_t sub_21927F6D0()
{
  if (*v0)
  {
    return 0x6F42657069636552;
  }

  else
  {
    return 0x6948657069636552;
  }
}

uint64_t type metadata accessor for TagFeedFailedBlueprintModifier()
{
  result = qword_280EAAB58;
  if (!qword_280EAAB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21927F7A0()
{
  result = type metadata accessor for TagFeedFailedData();
  if (v1 <= 0x3F)
  {
    result = sub_2186FAF08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21927F824(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v5 = sub_219BE6DF4();
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v100 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219280718(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v107 = *(v7 - 8);
  v108 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v94 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v99 = &v82 - v10;
  sub_21898BEA4();
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v105);
  v88 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BF0644();
  v86 = *(v98 - 8);
  v14 = MEMORY[0x28223BE20](v98);
  v95 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v82 - v16;
  v17 = type metadata accessor for TagFeedGapLocation(0);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAE74();
  v103 = *(v19 - 8);
  v104 = v19;
  MEMORY[0x28223BE20](v19);
  v97 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219280718(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v30 = v29;
  v31 = *(v29 - 1);
  v32 = MEMORY[0x28223BE20](v29);
  v87 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v82 - v34;
  v36 = v3;
  sub_219BEB244();
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_219280890(v28, sub_21898BBC4);
    sub_2192807D8();
    v37 = swift_allocError();
    v38 = v94;
    *v94 = v37;
    v40 = v107;
    v39 = v108;
    (*(v107 + 104))(v38, *MEMORY[0x277D6DF68], v108);
    v110(v38);
    return (*(v40 + 8))(v38, v39);
  }

  (*(v31 + 32))(v35, v28, v30);
  v42 = a1;
  (*(v23 + 16))(v25, a1, v22);
  v83 = *(type metadata accessor for TagFeedFailedData() + 20);
  v43 = v106;
  sub_21928082C(v36 + v83, v106);
  v44 = v103;
  v45 = v43;
  v46 = v104;
  v47 = (*(v103 + 48))(v45, 1, v104);
  v94 = v30;
  v85 = v42;
  v93 = v22;
  v84 = v23;
  v92 = v25;
  v91 = v31;
  v90 = v35;
  if (v47 == 1)
  {
    sub_219280890(v106, type metadata accessor for TagFeedGapLocation);
    v48 = v101;
LABEL_5:
    type metadata accessor for TagFeedSectionGapDescriptor(0);
    v49 = swift_allocBox();
    v51 = v50;
    v52 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
    v113 = v49;
    sub_2192808F0(0, &qword_280E8BFE8, sub_21898BF70, MEMORY[0x277D84560]);
    sub_21898BF70();
    v54 = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_219C09BA0;
    sub_219280954();
    v57 = *(v56 + 48);
    v106 = v36;
    v58 = v36 + v83;
    v59 = v88;
    sub_21928082C(v58, v88);
    v60 = v102;
    if (qword_280ECFF68 != -1)
    {
      swift_once();
    }

    v61 = sub_219BF1584();
    v62 = __swift_project_value_buffer(v61, qword_280F61E40);
    (*(*(v61 - 8) + 16))(v59 + v57, v62, v61);
    swift_storeEnumTagMultiPayload();
    sub_2192809C8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    sub_219BE5FB4();
    v63 = sub_2192809C8(&qword_280EE5CE8, sub_21898BF70);
    v64 = sub_2192809C8(&unk_280EE5CF0, sub_21898BF70);
    MEMORY[0x21CEB9150](v55, v54, v63, v64);
    sub_2186F7410();
    v65 = v87;
    sub_219BE6924();
    sub_219BEB234();
    (*(v91 + 8))(v65, v30);
    v36 = v106;
    v66 = v60;
    goto LABEL_13;
  }

  (*(v44 + 32))(v97, v106, v46);
  sub_219BF0F74();
  v67 = v86;
  (*(v86 + 104))(v95, *MEMORY[0x277D32EF8], v98);
  sub_2192809C8(&qword_280E90ED0, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v113 == v111 && v114 == v112)
  {
    v68 = *(v67 + 8);
    v69 = v98;
    v68(v95, v98);
    v68(v96, v69);

    v48 = v101;
  }

  else
  {
    v70 = sub_219BF78F4();
    v71 = *(v67 + 8);
    v72 = v98;
    v71(v95, v98);
    v71(v96, v72);

    v48 = v101;
    if ((v70 & 1) == 0)
    {
      (*(v103 + 8))(v97, v104);
      v30 = v94;
      goto LABEL_5;
    }
  }

  sub_219BE6944();
  sub_219BEB214();

  (*(v103 + 8))(v97, v104);
  v66 = v102;
LABEL_13:
  v73 = v100;
  v74 = *(v36 + *(type metadata accessor for TagFeedFailedBlueprintModifier() + 20));
  v75 = v66;
  (*(v48 + 104))(v73, *MEMORY[0x277D6D868], v66);
  v76 = [v74 feedConfiguration];
  v77 = [v74 alternativeFeedDescriptor];
  v78 = v108;
  v79 = v107;
  if (v76 != 8 || v77)
  {

    sub_2186F7410();
    sub_2192809C8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    sub_218D5BF28();
    v80 = v99;
    v81 = v92;
    sub_219BE85E4();
  }

  else
  {
    sub_2186F7410();
    sub_2192809C8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    sub_218D5BF28();
    v80 = v99;
    v81 = v92;
    sub_219BE85A4();
  }

  (*(v48 + 8))(v73, v75);
  v110(v80);
  (*(v79 + 8))(v80, v78);
  (*(v84 + 8))(v81, v93);
  return (*(v91 + 8))(v90, v94);
}

uint64_t sub_21928061C(uint64_t a1)
{
  v2 = sub_2192809C8(&qword_280EAAB70, type metadata accessor for TagFeedFailedBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_219280718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2192809C8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2192807D8()
{
  result = qword_27CC18468;
  if (!qword_27CC18468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18468);
  }

  return result;
}

uint64_t sub_21928082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219280890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2192808F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219280954()
{
  if (!qword_280ED2960)
  {
    type metadata accessor for TagFeedGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED2960);
    }
  }
}

uint64_t sub_2192809C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219280A24()
{
  result = qword_27CC18470;
  if (!qword_27CC18470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18470);
  }

  return result;
}

unint64_t sub_219280A8C()
{
  result = qword_27CC18478;
  if (!qword_27CC18478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18478);
  }

  return result;
}

uint64_t sub_219280AE0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, char *a13, char *a14, uint64_t a15, unint64_t a16, char *a17, void *a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25)
{
  v1376 = a8;
  v1377 = a7;
  v1378 = a6;
  v1379 = a5;
  v1231 = a4;
  v1230 = a3;
  v1380 = a2;
  v1381 = a1;
  v1298 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  v1355 = *(v1298 - 8);
  MEMORY[0x28223BE20](v1298);
  v1198 = &v1102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1297 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  v1374 = *(v1297 - 8);
  MEMORY[0x28223BE20](v1297);
  v1197 = &v1102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1301 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v1296 = *(v1301 - 8);
  v27 = MEMORY[0x28223BE20](v1301);
  v1193 = (&v1102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v1194 = &v1102 - v29;
  v30 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v31 = *(v30 - 8);
  v1388 = v30;
  v1389 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v1195 = (&v1102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v1196 = &v1102 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v1192 = (&v1102 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v1295 = &v1102 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v1190 = (&v1102 - v41);
  MEMORY[0x28223BE20](v40);
  v1206 = &v1102 - v42;
  sub_2192929D8(0, qword_280EA0660, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v1210 = &v1102 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v1354 = &v1102 - v46;
  sub_2192929D8(0, qword_280E9B6A8, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v1209 = &v1102 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v1353 = &v1102 - v50;
  sub_2192929D8(0, qword_280EA9240, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v1207 = &v1102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v1352 = &v1102 - v54;
  sub_2192929D8(0, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v1208 = &v1102 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v1294 = &v1102 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v1205 = &v1102 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v1349 = &v1102 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v1351 = &v1102 - v65;
  MEMORY[0x28223BE20](v64);
  v1350 = &v1102 - v66;
  sub_2192929D8(0, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v67 - 8);
  v1356 = &v1102 - v68;
  v1357 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v1375 = *(v1357 - 8);
  v69 = MEMORY[0x28223BE20](v1357);
  v1391 = &v1102 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v1299 = &v1102 - v71;
  sub_2192929D8(0, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v72 - 8);
  v1347 = &v1102 - v73;
  v1346 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
  v1387 = *(v1346 - 8);
  v74 = MEMORY[0x28223BE20](v1346);
  v1288 = &v1102 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v1289 = &v1102 - v76;
  sub_2192929D8(0, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v77 - 8);
  v1345 = &v1102 - v78;
  v1344 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  v1386 = *(v1344 - 8);
  v79 = MEMORY[0x28223BE20](v1344);
  v1286 = &v1102 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v1287 = &v1102 - v81;
  sub_2192929D8(0, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v82 - 8);
  v1373 = &v1102 - v83;
  v1283 = type metadata accessor for ShortcutsTodayFeedGroupKnobs();
  v1372 = *(v1283 - 8);
  MEMORY[0x28223BE20](v1283);
  v1285 = &v1102 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v85 - 8);
  v1343 = &v1102 - v86;
  v1371 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  v1385 = *(v1371 - 8);
  v87 = MEMORY[0x28223BE20](v1371);
  v1342 = &v1102 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v1282 = &v1102 - v89;
  v1174 = sub_219BEEA24();
  v1173 = *(v1174 - 8);
  MEMORY[0x28223BE20](v1174);
  v1175 = &v1102 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v91 - 8);
  v1338 = &v1102 - v92;
  v1367 = type metadata accessor for MySportsTodayFeedGroupKnobs();
  v1384 = *(v1367 - 8);
  v93 = MEMORY[0x28223BE20](v1367);
  v1337 = &v1102 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v1368 = (&v1102 - v95);
  sub_2192929D8(0, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v96 - 8);
  v1364 = &v1102 - v97;
  v1275 = type metadata accessor for EngagementTodayFeedGroupKnobs();
  v1274 = *(v1275 - 8);
  MEMORY[0x28223BE20](v1275);
  v1276 = &v1102 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v99 - 8);
  v1333 = (&v1102 - v100);
  v1332 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  v1383 = *(v1332 - 8);
  v101 = MEMORY[0x28223BE20](v1332);
  v1272 = &v1102 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v1273 = &v1102 - v103;
  sub_2192929D8(0, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v104 - 8);
  v1269 = &v1102 - v105;
  v1268 = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  v1267 = *(v1268 - 8);
  MEMORY[0x28223BE20](v1268);
  v1270 = &v1102 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v107 - 8);
  v1265 = &v1102 - v108;
  v1264 = type metadata accessor for SpotlightTodayFeedGroupKnobs();
  v1263 = *(v1264 - 8);
  MEMORY[0x28223BE20](v1264);
  v1266 = &v1102 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v110 - 8);
  v1330 = &v1102 - v111;
  v1329 = type metadata accessor for SuggestionTodayFeedGroupKnobs();
  v1261 = *(v1329 - 8);
  v112 = MEMORY[0x28223BE20](v1329);
  v1260 = &v1102 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v1262 = &v1102 - v114;
  sub_2192929D8(0, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v115 - 8);
  v1328 = &v1102 - v116;
  v1326 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  v1259 = *(v1326 - 8);
  v117 = MEMORY[0x28223BE20](v1326);
  v1258 = &v1102 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v1327 = &v1102 - v119;
  v1390 = sub_219BEF244();
  v1392 = *(v1390 - 8);
  v120 = MEMORY[0x28223BE20](v1390);
  v1114 = &v1102 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = MEMORY[0x28223BE20](v120);
  v1112 = &v1102 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v1110 = &v1102 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v1107 = &v1102 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v1182 = &v1102 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v1177 = &v1102 - v131;
  MEMORY[0x28223BE20](v130);
  v1161 = &v1102 - v132;
  sub_2192929D8(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  v134 = MEMORY[0x28223BE20](v133 - 8);
  v1113 = &v1102 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v134);
  v1189 = &v1102 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1111 = &v1102 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1188 = &v1102 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1108 = &v1102 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1109 = &v1102 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v1106 = &v1102 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1187 = &v1102 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v1181 = &v1102 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v1340 = &v1102 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v1176 = &v1102 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v1334 = &v1102 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v1160 = &v1102 - v159;
  MEMORY[0x28223BE20](v158);
  v1251 = &v1102 - v160;
  sub_2192929D8(0, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v161 - 8);
  v1325 = &v1102 - v162;
  v1362 = type metadata accessor for NewFollowTodayFeedGroupKnobs();
  v1252 = *(v1362 - 1);
  v163 = MEMORY[0x28223BE20](v1362);
  v1324 = &v1102 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v163);
  v1253 = &v1102 - v165;
  sub_2192929D8(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v166 - 8);
  v1247 = &v1102 - v167;
  sub_2192929D8(0, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v168 - 8);
  v1321 = &v1102 - v169;
  v1320 = type metadata accessor for MagazineTodayFeedGroupKnobs();
  v1246 = *(v1320 - 8);
  v170 = MEMORY[0x28223BE20](v1320);
  v1245 = &v1102 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v1248 = &v1102 - v172;
  v1292 = sub_219BEFD94();
  v1291 = *(v1292 - 8);
  MEMORY[0x28223BE20](v1292);
  v1293 = &v1102 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192929D8(0, &qword_280E912E0, MEMORY[0x277D32720]);
  v175 = MEMORY[0x28223BE20](v174 - 8);
  v1115 = &v1102 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = MEMORY[0x28223BE20](v175);
  v1191 = &v1102 - v178;
  v179 = MEMORY[0x28223BE20](v177);
  v1281 = &v1102 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v1242 = &v1102 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v1241 = &v1102 - v184;
  MEMORY[0x28223BE20](v183);
  v1240 = &v1102 - v185;
  sub_2192929D8(0, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v186 - 8);
  v1317 = &v1102 - v187;
  v1382 = type metadata accessor for TopicTodayFeedGroupKnobs();
  v1363 = *(v1382 - 1);
  v188 = MEMORY[0x28223BE20](v1382);
  v1361 = &v1102 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v188);
  v1243 = &v1102 - v190;
  sub_2192929D8(0, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v191 - 8);
  v1234 = &v1102 - v192;
  v1314 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  v1366 = *(v1314 - 8);
  v193 = MEMORY[0x28223BE20](v1314);
  v1233 = &v1102 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v193);
  v1235 = &v1102 - v195;
  sub_2192929D8(0, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v196 - 8);
  v1312 = &v1102 - v197;
  v1311 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  v1369 = *(v1311 - 8);
  v198 = MEMORY[0x28223BE20](v1311);
  v1141 = &v1102 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v198);
  v1229 = &v1102 - v200;
  sub_2192929D8(0, &qword_280E92530, MEMORY[0x277D31D70]);
  MEMORY[0x28223BE20](v201 - 8);
  v1227 = &v1102 - v202;
  sub_2192929D8(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v204 = MEMORY[0x28223BE20](v203 - 8);
  v1228 = &v1102 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v204);
  v1223 = &v1102 - v206;
  sub_2192929D8(0, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v207 - 8);
  v1309 = &v1102 - v208;
  v1308 = type metadata accessor for ForYouTodayFeedGroupKnobs();
  v1370 = *(v1308 - 8);
  v209 = MEMORY[0x28223BE20](v1308);
  v1222 = &v1102 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v209);
  v1224 = &v1102 - v211;
  sub_2192929D8(0, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v212 - 8);
  v1360 = (&v1102 - v213);
  v1306 = type metadata accessor for TrendingTodayFeedGroupKnobs();
  v1359 = *(v1306 - 8);
  v214 = MEMORY[0x28223BE20](v1306);
  v1219 = &v1102 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v214);
  v1307 = &v1102 - v216;
  sub_2192929D8(0, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v217 - 8);
  v1216 = &v1102 - v218;
  v1304 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  v1358 = *(v1304 - 8);
  v219 = MEMORY[0x28223BE20](v1304);
  v1199 = &v1102 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v219);
  v1215 = &v1102 - v221;
  v222 = MEMORY[0x277D32318];
  sub_2192924E8(0, &qword_280E91860, MEMORY[0x277D32318]);
  v1396 = v223;
  v1394 = *(v223 - 8);
  v224 = MEMORY[0x28223BE20](v223);
  v1284 = &v1102 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = MEMORY[0x28223BE20](v224);
  v1184 = &v1102 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v1180 = &v1102 - v229;
  v230 = MEMORY[0x28223BE20](v228);
  v1172 = &v1102 - v231;
  v232 = MEMORY[0x28223BE20](v230);
  v1168 = &v1102 - v233;
  v234 = MEMORY[0x28223BE20](v232);
  v1165 = &v1102 - v235;
  v236 = MEMORY[0x28223BE20](v234);
  v1162 = &v1102 - v237;
  v238 = MEMORY[0x28223BE20](v236);
  v1157 = &v1102 - v239;
  v240 = MEMORY[0x28223BE20](v238);
  v1154 = &v1102 - v241;
  v242 = MEMORY[0x28223BE20](v240);
  v1152 = &v1102 - v243;
  v244 = MEMORY[0x28223BE20](v242);
  v1148 = &v1102 - v245;
  v246 = MEMORY[0x28223BE20](v244);
  v1147 = &v1102 - v247;
  v248 = MEMORY[0x28223BE20](v246);
  v1140 = &v1102 - v249;
  v250 = MEMORY[0x28223BE20](v248);
  v1137 = &v1102 - v251;
  v252 = MEMORY[0x28223BE20](v250);
  v1132 = &v1102 - v253;
  v254 = MEMORY[0x28223BE20](v252);
  v1129 = &v1102 - v255;
  v256 = MEMORY[0x28223BE20](v254);
  v1125 = &v1102 - v257;
  MEMORY[0x28223BE20](v256);
  v1123 = &v1102 - v258;
  v259 = MEMORY[0x277D321A0];
  sub_2192924E8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v261 = v260;
  v262 = *(v260 - 8);
  v263 = MEMORY[0x28223BE20](v260);
  v1186 = &v1102 - ((v264 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = MEMORY[0x28223BE20](v263);
  v1183 = &v1102 - v266;
  v267 = MEMORY[0x28223BE20](v265);
  v1179 = &v1102 - v268;
  v269 = MEMORY[0x28223BE20](v267);
  v1171 = &v1102 - v270;
  v271 = MEMORY[0x28223BE20](v269);
  v1167 = &v1102 - v272;
  v273 = MEMORY[0x28223BE20](v271);
  v1163 = &v1102 - v274;
  v275 = MEMORY[0x28223BE20](v273);
  v1159 = &v1102 - v276;
  v277 = MEMORY[0x28223BE20](v275);
  v1156 = &v1102 - v278;
  v279 = MEMORY[0x28223BE20](v277);
  v1153 = &v1102 - v280;
  v281 = MEMORY[0x28223BE20](v279);
  v1150 = &v1102 - v282;
  v283 = MEMORY[0x28223BE20](v281);
  v1146 = &v1102 - v284;
  v285 = MEMORY[0x28223BE20](v283);
  v1144 = &v1102 - v286;
  v287 = MEMORY[0x28223BE20](v285);
  v1138 = &v1102 - v288;
  v289 = MEMORY[0x28223BE20](v287);
  v1135 = &v1102 - v290;
  v291 = MEMORY[0x28223BE20](v289);
  v1136 = &v1102 - v292;
  v293 = MEMORY[0x28223BE20](v291);
  v1218 = &v1102 - v294;
  v295 = MEMORY[0x28223BE20](v293);
  v1131 = &v1102 - v296;
  v297 = MEMORY[0x28223BE20](v295);
  v1128 = &v1102 - v298;
  v299 = MEMORY[0x28223BE20](v297);
  v1124 = &v1102 - v300;
  MEMORY[0x28223BE20](v299);
  v1122 = &v1102 - v301;
  sub_219292584(0, &unk_280E91850, &qword_280E91860, v222);
  v303 = MEMORY[0x28223BE20](v302 - 8);
  v1185 = &v1102 - ((v304 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = MEMORY[0x28223BE20](v303);
  v1348 = &v1102 - v306;
  v307 = MEMORY[0x28223BE20](v305);
  v1203 = &v1102 - v308;
  v309 = MEMORY[0x28223BE20](v307);
  v1341 = &v1102 - v310;
  v311 = MEMORY[0x28223BE20](v309);
  v1178 = &v1102 - v312;
  v313 = MEMORY[0x28223BE20](v311);
  v1339 = &v1102 - v314;
  v315 = MEMORY[0x28223BE20](v313);
  v1170 = &v1102 - v316;
  v317 = MEMORY[0x28223BE20](v315);
  v1335 = &v1102 - v318;
  v319 = MEMORY[0x28223BE20](v317);
  v1166 = &v1102 - v320;
  v321 = MEMORY[0x28223BE20](v319);
  v1331 = &v1102 - v322;
  v323 = MEMORY[0x28223BE20](v321);
  v1256 = &v1102 - v324;
  v325 = MEMORY[0x28223BE20](v323);
  v1257 = &v1102 - v326;
  v327 = MEMORY[0x28223BE20](v325);
  v1336 = &v1102 - v328;
  v329 = MEMORY[0x28223BE20](v327);
  v1158 = &v1102 - v330;
  v331 = MEMORY[0x28223BE20](v329);
  v1323 = &v1102 - v332;
  v333 = MEMORY[0x28223BE20](v331);
  v1155 = &v1102 - v334;
  v335 = MEMORY[0x28223BE20](v333);
  v1322 = &v1102 - v336;
  v337 = MEMORY[0x28223BE20](v335);
  v1151 = &v1102 - v338;
  v339 = MEMORY[0x28223BE20](v337);
  v1318 = &v1102 - v340;
  v341 = MEMORY[0x28223BE20](v339);
  v1201 = &v1102 - v342;
  v343 = MEMORY[0x28223BE20](v341);
  v1238 = &v1102 - v344;
  v345 = MEMORY[0x28223BE20](v343);
  v1145 = &v1102 - v346;
  v347 = MEMORY[0x28223BE20](v345);
  v1143 = &v1102 - v348;
  v349 = MEMORY[0x28223BE20](v347);
  v1315 = &v1102 - v350;
  v351 = MEMORY[0x28223BE20](v349);
  v1316 = &v1102 - v352;
  v353 = MEMORY[0x28223BE20](v351);
  v1226 = &v1102 - v354;
  v355 = MEMORY[0x28223BE20](v353);
  v1310 = &v1102 - v356;
  v357 = MEMORY[0x28223BE20](v355);
  v1133 = &v1102 - v358;
  v359 = MEMORY[0x28223BE20](v357);
  v1221 = &v1102 - v360;
  v361 = MEMORY[0x28223BE20](v359);
  v1130 = &v1102 - v362;
  v363 = MEMORY[0x28223BE20](v361);
  v1305 = &v1102 - v364;
  v365 = MEMORY[0x28223BE20](v363);
  v1126 = &v1102 - v366;
  v367 = MEMORY[0x28223BE20](v365);
  v1303 = &v1102 - v368;
  v369 = MEMORY[0x28223BE20](v367);
  v1300 = &v1102 - v370;
  v371 = MEMORY[0x28223BE20](v369);
  v1302 = &v1102 - v372;
  v373 = MEMORY[0x28223BE20](v371);
  v1121 = &v1102 - v374;
  MEMORY[0x28223BE20](v373);
  v1211 = &v1102 - v375;
  sub_219292584(0, &unk_280E91A10, &qword_280E91A20, v259);
  v377 = MEMORY[0x28223BE20](v376 - 8);
  v1204 = &v1102 - ((v378 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = MEMORY[0x28223BE20](v377);
  v1290 = &v1102 - v380;
  v381 = MEMORY[0x28223BE20](v379);
  v1279 = &v1102 - v382;
  v383 = MEMORY[0x28223BE20](v381);
  v1280 = &v1102 - v384;
  v385 = MEMORY[0x28223BE20](v383);
  v1202 = &v1102 - v386;
  v387 = MEMORY[0x28223BE20](v385);
  v1278 = &v1102 - v388;
  v389 = MEMORY[0x28223BE20](v387);
  v1169 = &v1102 - v390;
  v391 = MEMORY[0x28223BE20](v389);
  v1277 = &v1102 - v392;
  v393 = MEMORY[0x28223BE20](v391);
  v1164 = &v1102 - v394;
  v395 = MEMORY[0x28223BE20](v393);
  v1271 = &v1102 - v396;
  v397 = MEMORY[0x28223BE20](v395);
  v1254 = &v1102 - v398;
  v399 = MEMORY[0x28223BE20](v397);
  v1255 = &v1102 - v400;
  v401 = MEMORY[0x28223BE20](v399);
  v1365 = &v1102 - v402;
  v403 = MEMORY[0x28223BE20](v401);
  v1249 = &v1102 - v404;
  v405 = MEMORY[0x28223BE20](v403);
  v1250 = &v1102 - v406;
  v407 = MEMORY[0x28223BE20](v405);
  v1319 = &v1102 - v408;
  v409 = MEMORY[0x28223BE20](v407);
  v1244 = &v1102 - v410;
  v411 = MEMORY[0x28223BE20](v409);
  v1149 = &v1102 - v412;
  v413 = MEMORY[0x28223BE20](v411);
  v1239 = &v1102 - v414;
  v415 = MEMORY[0x28223BE20](v413);
  v1236 = &v1102 - v416;
  v417 = MEMORY[0x28223BE20](v415);
  v1237 = &v1102 - v418;
  v419 = MEMORY[0x28223BE20](v417);
  v1142 = &v1102 - v420;
  v421 = MEMORY[0x28223BE20](v419);
  v1139 = &v1102 - v422;
  v423 = MEMORY[0x28223BE20](v421);
  v1313 = &v1102 - v424;
  v425 = MEMORY[0x28223BE20](v423);
  v1232 = &v1102 - v426;
  v427 = MEMORY[0x28223BE20](v425);
  v1134 = &v1102 - v428;
  v429 = MEMORY[0x28223BE20](v427);
  v1225 = &v1102 - v430;
  v431 = MEMORY[0x28223BE20](v429);
  v1200 = &v1102 - v432;
  v433 = MEMORY[0x28223BE20](v431);
  v1220 = &v1102 - v434;
  v435 = MEMORY[0x28223BE20](v433);
  v1127 = &v1102 - v436;
  v437 = MEMORY[0x28223BE20](v435);
  v1217 = &v1102 - v438;
  v439 = MEMORY[0x28223BE20](v437);
  v1213 = &v1102 - v440;
  v441 = MEMORY[0x28223BE20](v439);
  v1214 = &v1102 - v442;
  v443 = MEMORY[0x28223BE20](v441);
  v1120 = &v1102 - v444;
  v445 = MEMORY[0x28223BE20](v443);
  v1212 = &v1102 - v446;
  v447 = MEMORY[0x28223BE20](v445);
  v1116 = &v1102 - v448;
  MEMORY[0x28223BE20](v447);
  v450 = &v1102 - v449;
  sub_2192929D8(0, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v451 - 8);
  v453 = &v1102 - v452;
  v454 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v455 = *(v454 - 8);
  v456 = MEMORY[0x28223BE20](v454);
  v458 = &v1102 - ((v457 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v456);
  v460 = &v1102 - v459;
  v461 = v1394;
  v462 = v261;
  sub_2192925DC(v1381, v453, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  v463 = *(v455 + 48);
  v1119 = v454;
  v1118 = v455 + 48;
  v1117 = v463;
  v464 = v463(v453, 1, v454);
  v465 = v1396;
  v1397 = v462;
  v1393 = v262;
  if (v464 == 1)
  {
    v1105 = v453;
    v1104 = v460;
    (*(v262 + 56))(v450, 1, 1, v462);
    (*(v461 + 56))(v1211, 1, 1, v465);
    *v458 = 0x40E5180000000000;
    v458[8] = 1;
    sub_21893CDA0();
    v466 = swift_allocObject();
    *(v466 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      swift_once();
    }

    v467 = byte_280F61A98 | 0x80;
    *(v466 + 32) = qword_280F61A90;
    *(v466 + 40) = v467;
    *(v466 + 48) = 5;
    *(v466 + 56) = 0;
    v468 = v458;
    *(v458 + 2) = v466;
    v1103 = v450;
    v469 = v1116;
    sub_219292648(v450, v1116, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v470 = *(v262 + 48);
    v471 = v470(v469, 1, v462);
    v472 = v1121;
    v473 = v1119;
    if (v471 == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v474 = v1122;
      sub_219BEE974();
      v475 = v470(v469, 1, v462);
      v476 = v1211;
      if (v475 != 1)
      {
        sub_2192926B8(v469, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v481 = *(v262 + 32);
      v474 = v1122;
      v481(v1122, v469, v462);
      v476 = v1211;
    }

    (*(v1393 + 32))(&v468[*(v473 + 28)], v474, v462);
    sub_219292648(v476, v472, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v482 = v1394;
    v483 = *(v1394 + 48);
    v484 = v1396;
    if (v483(v472, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v485 = v1123;
      sub_219BEEC74();
      sub_2192926B8(v476, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1103, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v486 = v483(v472, 1, v484);
      v477 = v1360;
      v478 = v1216;
      if (v486 != 1)
      {
        sub_2192926B8(v472, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_2192926B8(v476, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1103, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v487 = *(v482 + 32);
      v485 = v1123;
      v487(v1123, v472, v484);
      v477 = v1360;
      v478 = v1216;
    }

    (*(v1394 + 32))(&v468[*(v473 + 32)], v485, v1396);
    v488 = v468;
    v460 = v1104;
    sub_219292714(v488, v1104, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
    v489 = v1105;
    v490 = v1117(v1105, 1, v473);
    v479 = v1304;
    v480 = v1358;
    if (v490 != 1)
    {
      sub_21929277C(v489, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
    }
  }

  else
  {
    sub_219292714(v453, v460, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
    v477 = v1360;
    v478 = v1216;
    v479 = v1304;
    v480 = v1358;
  }

  v491 = v1395;
  sub_219292714(v460, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyNewspaperKnobs, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  sub_2192925DC(v1380, v478, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  v494 = *(v480 + 6);
  v493 = v480 + 48;
  v492 = v494;
  v495 = v494(v478, 1, v479);
  v496 = v1300;
  if (v495 == 1)
  {
    v1358 = v493;
    v497 = v1393;
    v498 = v1212;
    v499 = v1397;
    (*(v1393 + 56))(v1212, 1, 1, v1397);
    v500 = v1394;
    (*(v1394 + 56))(v1302, 1, 1, v1396);
    v501 = v1120;
    sub_219292648(v498, v1120, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v502 = *(v497 + 48);
    if (v502(v501, 1, v499) == 1)
    {
      if (qword_280E91AC8 != -1)
      {
        swift_once();
      }

      v503 = v1397;
      v504 = __swift_project_value_buffer(v1397, qword_280F61830);
      v505 = v1124;
      (*(v497 + 16))(v1124, v504, v503);
      v506 = v502(v501, 1, v503);
      v507 = v505;
      v496 = v1300;
      if (v506 != 1)
      {
        sub_2192926B8(v501, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v507 = v1124;
      (*(v497 + 32))(v1124, v501, v1397);
    }

    v512 = v1199;
    (*(v497 + 32))(v1199, v507, v1397);
    sub_219292648(v1302, v496, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v513 = *(v500 + 48);
    v514 = v513(v496, 1, v1396);
    v515 = v500;
    v516 = v496;
    if (v514 == 1)
    {
      v517 = v515;
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v518 = v1125;
      v512 = v1199;
      sub_219BEEC74();
      v519 = v513(v516, 1, v1396);
      v477 = v1360;
      if (v519 != 1)
      {
        sub_2192926B8(v516, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v517 = v515;
      v518 = v1125;
      (*(v515 + 32))(v1125, v516, v1396);
      v477 = v1360;
    }

    v520 = v1304;
    v509 = v517;
    (*(v517 + 32))(&v512[*(v1304 + 20)], v518, v1396);
    sub_219BF5CF4();
    *&v512[v520[6]] = v521 * 12.0;
    v512[v520[7]] = 1;
    sub_21893CDA0();
    v522 = v512;
    v523 = swift_allocObject();
    *(v523 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      swift_once();
    }

    v524 = byte_280F61A98 | 0x80;
    *(v523 + 32) = qword_280F61A90;
    *(v523 + 40) = v524;
    *(v523 + 48) = 5;
    *(v523 + 56) = 0;
    sub_2192926B8(v1302, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1212, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v522 + v520[8]) = v523;
    v525 = v1215;
    sub_219292714(v522, v1215, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    v526 = v492(v478, 1, v520);
    v508 = v525;
    v511 = v1307;
    v510 = v1393;
    if (v526 != 1)
    {
      sub_21929277C(v478, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    }
  }

  else
  {
    v508 = v1215;
    sub_219292714(v478, v1215, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    v510 = v1393;
    v509 = v1394;
    v511 = v1307;
  }

  sub_219292714(v508, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyLocalNewsKnobs, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  v527 = v1230;
  v528 = v1359;
  if (!v1230)
  {
    v527 = sub_2194B0200(MEMORY[0x277D84F90]);
  }

  v529 = v1213;
  *(v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newspaperKnobs) = v527;
  v530 = v1231;
  if (!v1231)
  {
    v530 = sub_2194AFFC8(MEMORY[0x277D84F90]);
  }

  *(v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_localNewsKnobs) = v530;
  sub_2192925DC(v1379, v477, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
  v533 = *(v528 + 6);
  v531 = v528 + 48;
  v532 = v533;
  if (v533(v477, 1, v1306) == 1)
  {
    v1359 = v531;
    v534 = v1214;
    v535 = v1397;
    (*(v510 + 56))(v1214, 1, 1, v1397);
    (*(v509 + 56))(v1303, 1, 1, v1396);
    sub_219292648(v534, v529, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v536 = *(v510 + 48);
    if (v536(v529, 1, v535) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v537 = v1128;
      sub_219BEE974();
      v538 = v536(v529, 1, v1397);
      v539 = v1126;
      if (v538 != 1)
      {
        sub_2192926B8(v529, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v537 = v1128;
      (*(v510 + 32))(v1128, v529, v1397);
      v539 = v1126;
    }

    (*(v510 + 32))(v1219, v537, v1397);
    sub_219292648(v1303, v539, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v541 = *(v509 + 48);
    if (v541(v539, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v542 = v1129;
      sub_219BEEC74();
      if (v541(v539, 1, v1396) != 1)
      {
        sub_2192926B8(v539, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v542 = v1129;
      (*(v509 + 32))(v1129, v539, v1396);
    }

    v543 = v1306;
    v544 = v1219;
    (*(v509 + 32))(&v1219[*(v1306 + 20)], v542, v1396);
    v1398 = 6;
    sub_2186F9548();
    swift_allocObject();
    *(v544 + v543[6]) = sub_219BEF534();
    v1398 = 6;
    swift_allocObject();
    *(v544 + v543[7]) = sub_219BEF534();
    *&v1398 = 0.5;
    sub_2186ECA28();
    swift_allocObject();
    v545 = sub_219BEF534();
    sub_2192926B8(v1303, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1214, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v544 + v543[8]) = v545;
    v511 = v1307;
    sub_219292714(v544, v1307, type metadata accessor for TrendingTodayFeedGroupKnobs);
    v546 = v1360;
    v547 = v532(v1360, 1, v543);
    v540 = v1218;
    if (v547 != 1)
    {
      sub_21929277C(v546, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
    }
  }

  else
  {
    sub_219292714(v477, v511, type metadata accessor for TrendingTodayFeedGroupKnobs);
    v540 = v1218;
  }

  sub_219292714(v511, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_trendingKnobs, type metadata accessor for TrendingTodayFeedGroupKnobs);
  v548 = v1309;
  sub_2192925DC(v1378, v1309, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
  v549 = v1370 + 48;
  v550 = *(v1370 + 48);
  if (v550(v548, 1, v1308) == 1)
  {
    v1370 = v549;
    v551 = v1217;
    v552 = v1397;
    (*(v510 + 56))(v1217, 1, 1, v1397);
    (*(v509 + 56))(v1305, 1, 1, v1396);
    v553 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    (*(*(v553 - 8) + 56))(v1223, 1, 1, v553);
    v554 = v1127;
    sub_219292648(v551, v1127, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v555 = *(v510 + 48);
    v556 = v509;
    if (v555(v554, 1, v552) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEE974();
      v557 = v1397;
      v558 = v555(v554, 1, v1397) == 1;
      v559 = v554;
      v560 = v557;
      if (!v558)
      {
        sub_2192926B8(v559, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v565 = v554;
      v560 = v1397;
      (*(v510 + 32))(v540, v565, v1397);
    }

    v566 = MEMORY[0x277D84F90];
    v567 = *MEMORY[0x277D31D60];
    v568 = sub_219BEDB04();
    v569 = *(v568 - 8);
    v570 = v1227;
    (*(v569 + 104))(v1227, v567, v568);
    (*(v569 + 56))(v570, 0, 1, v568);
    v571 = v1131;
    sub_219BEEA04();
    sub_21929277C(v570, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v510 + 8))(v540, v560);
    (*(v510 + 32))(v1222, v571, v560);
    v572 = v1130;
    sub_219292648(v1305, v1130, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v509 = v556;
    v573 = *(v556 + 48);
    if (v573(v572, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v574 = v1132;
      sub_219BEEC74();
      v558 = v573(v572, 1, v1396) == 1;
      v491 = v1395;
      v575 = v572;
      v564 = v1234;
      if (!v558)
      {
        sub_2192926B8(v575, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v576 = *(v556 + 32);
      v574 = v1132;
      v576(v1132, v572, v1396);
      v491 = v1395;
      v564 = v1234;
    }

    v577 = v1308;
    v578 = v1222;
    (*(v509 + 32))(&v1222[*(v1308 + 20)], v574, v1396);
    *(v578 + v577[6]) = 1;
    *(v578 + v577[7]) = 0;
    v579 = v578 + v577[8];
    *v579 = 0x4000000000000000;
    *(v579 + 8) = 0;
    v580 = v578 + v577[9];
    *v580 = 0x4000000000000000;
    *(v580 + 8) = 0;
    v581 = v578 + v577[10];
    *v581 = 0;
    *(v581 + 8) = 0;
    *(v578 + v577[11]) = 1;
    sub_219291D28(v1223, v578 + v577[12], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_2192926B8(v1305, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1217, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v578 + v577[13]) = v566;
    v561 = v1224;
    sub_219292714(v578, v1224, type metadata accessor for ForYouTodayFeedGroupKnobs);
    v582 = v1309;
    v583 = v550(v1309, 1, v577);
    v562 = v1312;
    v563 = v1369;
    if (v583 != 1)
    {
      sub_21929277C(v582, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
    }
  }

  else
  {
    v561 = v1224;
    sub_219292714(v548, v1224, type metadata accessor for ForYouTodayFeedGroupKnobs);
    v562 = v1312;
    v563 = v1369;
    v564 = v1234;
  }

  v1370 = a9;
  sub_219292714(v561, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
  sub_2192925DC(v1377, v562, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  v586 = *(v563 + 48);
  v585 = v563 + 48;
  v584 = v586;
  if (v586(v562, 1, v1311) == 1)
  {
    v1369 = v585;
    v587 = v1220;
    v588 = v1397;
    (*(v510 + 56))(v1220, 1, 1, v1397);
    (*(v509 + 56))(v1221, 1, 1, v1396);
    v589 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    (*(*(v589 - 8) + 56))(v1228, 1, 1, v589);
    v590 = v587;
    v591 = v1200;
    sub_219292648(v590, v1200, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v592 = *(v510 + 48);
    if (v592(v591, 1, v588) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v593 = v1200;
      v594 = v1135;
      sub_219BEE974();
      if (v592(v593, 1, v1397) != 1)
      {
        sub_2192926B8(v593, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v594 = v1135;
      (*(v510 + 32))(v1135, v591, v1397);
    }

    v596 = *MEMORY[0x277D31D68];
    v597 = sub_219BEDB04();
    v598 = *(v597 - 8);
    v599 = v1227;
    (*(v598 + 104))(v1227, v596, v597);
    (*(v598 + 56))(v599, 0, 1, v597);
    v600 = v1397;
    v601 = v1136;
    sub_219BEEA04();
    sub_21929277C(v599, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v510 + 8))(v594, v600);
    v602 = v1141;
    (*(v510 + 32))(v1141, v601, v600);
    v603 = v1221;
    v604 = v1133;
    sub_219292648(v1221, v1133, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v605 = *(v509 + 48);
    if (v605(v604, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v606 = v1137;
      sub_219BEEC74();
      v607 = v603;
      v608 = v1396;
      sub_2192926B8(v607, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1220, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v609 = v605(v604, 1, v608);
      v595 = v1229;
      if (v609 != 1)
      {
        sub_2192926B8(v604, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_2192926B8(v603, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1220, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v606 = v1137;
      (*(v509 + 32))(v1137, v604, v1396);
      v595 = v1229;
    }

    v610 = v1311;
    (*(v509 + 32))(v602 + *(v1311 + 20), v606, v1396);
    *(v602 + v610[6]) = 1;
    *(v602 + v610[7]) = 35;
    *(v602 + v610[8]) = 1000;
    *(v602 + v610[9]) = 6000;
    *(v602 + v610[10]) = 0;
    v611 = v602 + v610[11];
    *v611 = 0x4000000000000000;
    *(v611 + 8) = 0;
    *(v602 + v610[12]) = 1;
    sub_219291D28(v1228, v602 + v610[13], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    *(v602 + v610[14]) = 0;
    *(v602 + v610[15]) = 0;
    *(v602 + v610[16]) = 0;
    sub_219292714(v602, v595, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
    v612 = v1312;
    v613 = v584(v1312, 1, v610);
    v491 = v1395;
    if (v613 != 1)
    {
      sub_21929277C(v612, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
    }
  }

  else
  {
    v595 = v1229;
    sub_219292714(v562, v1229, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  }

  v1369 = a10;
  sub_219292714(v595, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  sub_2192925DC(v1376, v564, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  v615 = v1366 + 48;
  v614 = *(v1366 + 48);
  v616 = v614(v564, 1, v1314);
  v617 = v1226;
  if (v616 == 1)
  {
    v1366 = v615;
    v618 = v1393;
    v619 = v1225;
    v620 = v1397;
    (*(v1393 + 56))(v1225, 1, 1, v1397);
    (*(v509 + 56))(v1310, 1, 1, v1396);
    v621 = v1134;
    sub_219292648(v619, v1134, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v622 = *(v618 + 48);
    if (v622(v621, 1, v620) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v623 = v1138;
      sub_219BEE974();
      if (v622(v621, 1, v1397) != 1)
      {
        sub_2192926B8(v621, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v627 = *(v618 + 32);
      v623 = v1138;
      v627(v1138, v621, v1397);
    }

    (*(v1393 + 32))(v1233, v623, v1397);
    sub_219292648(v1310, v617, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v628 = *(v509 + 48);
    v629 = v491;
    if (v628(v617, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v630 = v1140;
      sub_219BEEC74();
      if (v628(v617, 1, v1396) != 1)
      {
        sub_2192926B8(v617, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v630 = v1140;
      (*(v509 + 32))(v1140, v617, v1396);
    }

    v631 = v1314;
    v632 = v1233;
    (*(v509 + 32))(&v1233[*(v1314 + 20)], v630, v1396);
    v1398 = 1;
    sub_2186F9548();
    swift_allocObject();
    *(v632 + v631[6]) = sub_219BEF534();
    v1398 = 5;
    swift_allocObject();
    *(v632 + v631[7]) = sub_219BEF534();
    sub_219BF5CF4();
    *&v1398 = v633 * 18.0;
    sub_2186ECA28();
    swift_allocObject();
    *(v632 + v631[8]) = sub_219BEF534();
    v1398 = 100;
    swift_allocObject();
    *(v632 + v631[9]) = sub_219BEF534();
    v1398 = 10;
    swift_allocObject();
    *(v632 + v631[10]) = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *(v632 + v631[11]) = sub_219BEF534();
    LOBYTE(v1398) = 0;
    sub_2186F95C4();
    swift_allocObject();
    v634 = sub_219BEF534();
    sub_2192926B8(v1310, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1225, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v632 + v631[12]) = v634;
    v624 = v1235;
    sub_219292714(v632, v1235, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
    v635 = v614(v564, 1, v631);
    v625 = v1317;
    v626 = v1363;
    v491 = v629;
    if (v635 != 1)
    {
      sub_21929277C(v564, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
    }
  }

  else
  {
    v624 = v1235;
    sub_219292714(v564, v1235, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
    v625 = v1317;
    v626 = v1363;
  }

  v1366 = a11;
  sub_219292714(v624, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_latestStoriesKnobs, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  sub_2192925DC(v1370, v625, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
  v638 = *(v626 + 6);
  v636 = v626 + 48;
  v637 = v638;
  v639 = (v638)(v625, 1, v1382);
  v640 = v1393;
  if (v639 == 1)
  {
    v1360 = v637;
    v1363 = v636;
    v641 = *(v1393 + 56);
    v642 = v1232;
    v643 = v1397;
    v641(v1232, 1, 1, v1397);
    v644 = *(v509 + 56);
    v645 = v1396;
    v644(v1316, 1, 1, v1396);
    v641(v1313, 1, 1, v643);
    v644(v1315, 1, 1, v645);
    v646 = sub_219BEF814();
    v647 = *(*(v646 - 8) + 56);
    v647(v1240, 1, 1, v646);
    v647(v1241, 1, 1, v646);
    v647(v1242, 1, 1, v646);
    v648 = v1139;
    sub_219292648(v642, v1139, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v649 = *(v640 + 48);
    v650 = v649(v648, 1, v643);
    v1359 = v649;
    if (v650 == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v651 = v1144;
      sub_219BEE974();
      v652 = v649(v648, 1, v1397);
      v653 = v1143;
      if (v652 != 1)
      {
        sub_2192926B8(v648, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v651 = v1144;
      (*(v640 + 32))(v1144, v648, v1397);
      v653 = v1143;
    }

    v658 = *(v1393 + 32);
    v658(v1361, v651, v1397);
    sub_219292648(v1316, v653, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v659 = *(v509 + 48);
    v660 = v1396;
    v661 = v659(v653, 1, v1396);
    v1358 = v659;
    if (v661 == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v662 = v1147;
      sub_219BEEC74();
      if (v659(v653, 1, v660) != 1)
      {
        sub_2192926B8(v653, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v662 = v1147;
      (*(v509 + 32))(v1147, v653, v660);
    }

    v663 = *(v509 + 32);
    v663(&v1361[v1382[5]], v662, v660);
    v664 = v1142;
    sub_219292648(v1313, v1142, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v665 = v1397;
    v666 = v1359;
    if ((v1359)(v664, 1, v1397) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v667 = v1146;
      sub_219BEE974();
      if ((v666)(v664, 1, v665) != 1)
      {
        sub_2192926B8(v664, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v667 = v1146;
      v658(v1146, v664, v665);
    }

    v658(&v1361[v1382[6]], v667, v665);
    v668 = v1145;
    sub_219292648(v1315, v1145, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v669 = v1396;
    v670 = v1358;
    if ((v1358)(v668, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v671 = v1148;
      sub_219BEEC74();
      if ((v670)(v668, 1, v669) != 1)
      {
        sub_2192926B8(v668, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v671 = v1148;
      v663(v1148, v668, v669);
    }

    v672 = v1382;
    v673 = v1361;
    v663(&v1361[v1382[7]], v671, v669);
    *&v1398 = NAN;
    sub_2186F9548();
    swift_allocObject();
    v674 = MEMORY[0x277D84F90];
    *&v673[v672[8]] = sub_219BEF534();
    v675 = MEMORY[0x277D32720];
    v676 = v1240;
    sub_2192925DC(v1240, &v673[v672[9]], &qword_280E912E0, MEMORY[0x277D32720]);
    v677 = v1241;
    sub_2192925DC(v1241, &v673[v672[10]], &qword_280E912E0, v675);
    v678 = v1242;
    sub_2192925DC(v1242, &v673[v672[11]], &qword_280E912E0, v675);
    (*(v1291 + 104))(v1293, *MEMORY[0x277D32A90], v1292);
    sub_218D1D174();
    swift_allocObject();
    *&v673[v672[12]] = sub_219BEF534();
    sub_218CC4F9C();
    swift_allocObject();
    *&v673[v672[13]] = sub_219BEEE04();
    LOBYTE(v1398) = 0;
    sub_2186F95C4();
    swift_allocObject();
    *&v673[v672[14]] = sub_219BEF534();
    *&v1398 = 0.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v673[v672[15]] = sub_219BEF534();
    LOBYTE(v1398) = 0;
    swift_allocObject();
    *&v673[v672[16]] = sub_219BEF534();
    v679 = sub_2194AE724(v674);
    sub_21929277C(v678, &qword_280E912E0, v675);
    sub_21929277C(v677, &qword_280E912E0, v675);
    sub_21929277C(v676, &qword_280E912E0, v675);
    v680 = MEMORY[0x277D32318];
    sub_2192926B8(v1315, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v681 = MEMORY[0x277D321A0];
    sub_2192926B8(v1313, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    sub_2192926B8(v1316, &unk_280E91850, &qword_280E91860, v680);
    sub_2192926B8(v1232, &unk_280E91A10, &qword_280E91A20, v681);
    *&v673[v672[17]] = v679;
    v654 = v1243;
    sub_219292714(v673, v1243, type metadata accessor for TopicTodayFeedGroupKnobs);
    v682 = v1317;
    v683 = (v1360)(v1317, 1, v672);
    v509 = v1394;
    v491 = v1395;
    v640 = v1393;
    v655 = v1321;
    v656 = v1246;
    v657 = v1236;
    if (v683 != 1)
    {
      sub_21929277C(v682, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
    }
  }

  else
  {
    v654 = v1243;
    sub_219292714(v625, v1243, type metadata accessor for TopicTodayFeedGroupKnobs);
    v655 = v1321;
    v656 = v1246;
    v657 = v1236;
  }

  v1382 = a12;
  sub_219292714(v654, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, type metadata accessor for TopicTodayFeedGroupKnobs);
  sub_2192925DC(v1369, v655, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
  v684 = *(v656 + 48);
  v685 = v684(v655, 1, v1320);
  v686 = v1238;
  if (v685 == 1)
  {
    v1363 = v684;
    v687 = v1237;
    v688 = v1397;
    (*(v640 + 56))(v1237, 1, 1, v1397);
    (*(v509 + 56))(v686, 1, 1, v1396);
    v689 = type metadata accessor for MagazineFeedGroupKnobs();
    (*(*(v689 - 8) + 56))(v1247, 1, 1, v689);
    sub_219292648(v687, v657, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v690 = v657;
    v691 = *(v640 + 48);
    if (v691(v690, 1, v688) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v692 = v1150;
      sub_219BEE974();
      if (v691(v690, 1, v1397) != 1)
      {
        sub_2192926B8(v690, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v692 = v1150;
      (*(v640 + 32))(v1150, v690, v1397);
    }

    (*(v640 + 32))(v1245, v692, v1397);
    v695 = v1201;
    sub_219292648(v686, v1201, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v696 = *(v509 + 48);
    v697 = v1396;
    if (v696(v695, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v698 = v509;
      v699 = v640;
      v700 = v1152;
      v701 = v1201;
      sub_219BEEC74();
      sub_2192926B8(v686, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1237, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v702 = v696(v701, 1, v697);
      v703 = v700;
      v640 = v699;
      v509 = v698;
      v491 = v1395;
      if (v702 != 1)
      {
        sub_2192926B8(v701, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_2192926B8(v686, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1237, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v703 = v1152;
      (*(v509 + 32))(v1152, v695, v697);
      v491 = v1395;
    }

    v704 = v1320;
    v705 = v1245;
    (*(v509 + 32))(&v1245[*(v1320 + 20)], v703, v697);
    sub_219291D28(v1247, v705 + *(v704 + 24), qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
    v693 = v1248;
    sub_219292714(v705, v1248, type metadata accessor for MagazineTodayFeedGroupKnobs);
    v706 = v1321;
    v707 = (v1363)(v1321, 1, v704);
    v694 = v1259;
    if (v707 != 1)
    {
      sub_21929277C(v706, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
    }
  }

  else
  {
    v693 = v1248;
    sub_219292714(v655, v1248, type metadata accessor for MagazineTodayFeedGroupKnobs);
    v694 = v1259;
  }

  v1363 = a13;
  sub_219292714(v693, v491 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_magazineKnobs, type metadata accessor for MagazineTodayFeedGroupKnobs);
  v708 = v1325;
  sub_2192925DC(v1366, v1325, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  v709 = *(v1252 + 48);
  v710 = v709(v708, 1, v1362);
  v711 = v1319;
  if (v710 == 1)
  {
    v1361 = v709;
    v712 = v1239;
    v713 = v1397;
    (*(v640 + 56))(v1239, 1, 1, v1397);
    (*(v1394 + 56))(v1318, 1, 1, v1396);
    (*(v1392 + 56))(v1251, 1, 1, v1390);
    v714 = v1149;
    sub_219292648(v712, v1149, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v715 = *(v640 + 48);
    if (v715(v714, 1, v713) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v716 = v1153;
      sub_219BEE974();
      v717 = v715(v714, 1, v1397);
      v718 = v1151;
      if (v717 != 1)
      {
        sub_2192926B8(v714, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v716 = v1153;
      (*(v640 + 32))(v1153, v714, v1397);
      v718 = v1151;
    }

    (*(v640 + 32))(v1324, v716, v1397);
    sub_219292648(v1318, v718, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v722 = v1394;
    v723 = *(v1394 + 48);
    v724 = v1396;
    if (v723(v718, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v725 = v1154;
      sub_219BEEC74();
      if (v723(v718, 1, v724) != 1)
      {
        sub_2192926B8(v718, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v726 = *(v722 + 32);
      v725 = v1154;
      v726(v1154, v718, v724);
    }

    v727 = v1362;
    v728 = v1324;
    (*(v1394 + 32))(&v1324[v1362[5]], v725, v724);
    v1398 = 30;
    sub_2186F9548();
    swift_allocObject();
    *&v728[v727[6]] = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *&v728[v727[7]] = sub_219BEF534();
    v1398 = 5;
    swift_allocObject();
    *&v728[v727[8]] = sub_219BEF534();
    *&v1398 = 432000.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v728[v727[9]] = sub_219BEF534();
    v729 = v1251;
    v730 = v1160;
    sub_2192925DC(v1251, v1160, &qword_280E916D0, MEMORY[0x277D324F0]);
    v731 = v1392;
    v732 = *(v1392 + 48);
    v733 = v1390;
    if (v732(v730, 1, v1390) == 1)
    {
      v734 = v1161;
      sub_219BEF1C4();
      sub_21929277C(v729, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2192926B8(v1318, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1239, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v735 = v732(v730, 1, v733);
      v720 = v1328;
      v721 = v1327;
      if (v735 != 1)
      {
        sub_21929277C(v730, &qword_280E916D0, MEMORY[0x277D324F0]);
      }
    }

    else
    {
      sub_21929277C(v729, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2192926B8(v1318, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2192926B8(v1239, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v736 = *(v731 + 32);
      v734 = v1161;
      v736(v1161, v730, v733);
      v720 = v1328;
      v721 = v1327;
    }

    v737 = v1362;
    v738 = v1324;
    (*(v1392 + 32))(&v1324[v1362[10]], v734, v733);
    v719 = v1253;
    sub_219292714(v738, v1253, type metadata accessor for NewFollowTodayFeedGroupKnobs);
    v739 = v1325;
    v740 = (v1361)(v1325, 1, v737);
    v711 = v1319;
    if (v740 != 1)
    {
      sub_21929277C(v739, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
    }
  }

  else
  {
    v719 = v1253;
    sub_219292714(v708, v1253, type metadata accessor for NewFollowTodayFeedGroupKnobs);
    v720 = v1328;
    v721 = v1327;
  }

  sub_219292714(v719, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newFollowKnobs, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  sub_2192925DC(v1382, v720, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  v741 = *(v694 + 48);
  v742 = v741(v720, 1, v1326);
  v743 = v1394;
  if (v742 == 1)
  {
    v744 = v1244;
    v745 = v1397;
    (*(v640 + 56))(v1244, 1, 1, v1397);
    (*(v743 + 56))(v1322, 1, 1, v1396);
    sub_219292648(v744, v711, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v746 = *(v640 + 48);
    if (v746(v711, 1, v745) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v747 = v1156;
      sub_219BEE974();
      if (v746(v711, 1, v1397) != 1)
      {
        sub_2192926B8(v711, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v747 = v1156;
      (*(v640 + 32))(v1156, v711, v1397);
    }

    (*(v640 + 32))(v1258, v747, v1397);
    v748 = v1155;
    sub_219292648(v1322, v1155, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v749 = *(v743 + 48);
    v750 = v1396;
    if (v749(v748, 1, v1396) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v751 = v1157;
      sub_219BEEC74();
      if (v749(v748, 1, v750) != 1)
      {
        sub_2192926B8(v748, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v751 = v1157;
      (*(v743 + 32))(v1157, v748, v750);
    }

    v752 = v1326;
    v753 = v1258;
    (*(v743 + 32))(&v1258[*(v1326 + 20)], v751, v750);
    v1398 = 30;
    sub_2186F9548();
    swift_allocObject();
    *(v753 + v752[6]) = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *(v753 + v752[7]) = sub_219BEF534();
    v1398 = 5;
    swift_allocObject();
    *(v753 + v752[8]) = sub_219BEF534();
    *&v1398 = 2678400.0;
    sub_2186ECA28();
    swift_allocObject();
    v754 = sub_219BEF534();
    sub_2192926B8(v1322, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1244, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v753 + v752[9]) = v754;
    v721 = v1327;
    sub_219292714(v753, v1327, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
    v755 = v1328;
    if (v741(v1328, 1, v752) != 1)
    {
      sub_21929277C(v755, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
    }
  }

  else
  {
    sub_219292714(v720, v721, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  }

  v1362 = a15;
  sub_219292714(v721, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_subscriptionKnobs, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  v756 = v1330;
  sub_2192925DC(v1363, v1330, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  v757 = *(v1261 + 48);
  v758 = v757(v756, 1, v1329);
  v759 = v1249;
  if (v758 == 1)
  {
    v760 = v1393;
    v761 = v1250;
    v762 = v1397;
    (*(v1393 + 56))(v1250, 1, 1, v1397);
    v763 = v1396;
    (*(v743 + 56))(v1323, 1, 1, v1396);
    sub_219292648(v761, v759, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v764 = *(v760 + 48);
    if (v764(v759, 1, v762) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v765 = v1159;
      sub_219BEE974();
      if (v764(v759, 1, v1397) != 1)
      {
        sub_2192926B8(v759, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v768 = *(v760 + 32);
      v765 = v1159;
      v768(v1159, v759, v1397);
    }

    (*(v1393 + 32))(v1260, v765, v1397);
    v769 = v1158;
    sub_219292648(v1323, v1158, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v770 = *(v743 + 48);
    if (v770(v769, 1, v763) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v771 = v1162;
      sub_219BEEC74();
      v772 = v770(v769, 1, v763);
      v767 = v1267;
      if (v772 != 1)
      {
        sub_2192926B8(v769, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v771 = v1162;
      (*(v743 + 32))(v1162, v769, v763);
      v767 = v1267;
    }

    v773 = v1329;
    v774 = v1260;
    (*(v1394 + 32))(&v1260[*(v1329 + 20)], v771, v763);
    sub_218CC4F9C();
    swift_allocObject();
    v775 = sub_219BEEE04();
    sub_2192926B8(v1323, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1250, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v774 + *(v773 + 24)) = v775;
    v766 = v1262;
    sub_219292714(v774, v1262, type metadata accessor for SuggestionTodayFeedGroupKnobs);
    v776 = v1330;
    if (v757(v1330, 1, v773) != 1)
    {
      sub_21929277C(v776, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
    }
  }

  else
  {
    v766 = v1262;
    sub_219292714(v756, v1262, type metadata accessor for SuggestionTodayFeedGroupKnobs);
    v767 = v1267;
    v763 = v1396;
  }

  sub_219292714(v766, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_suggestionKnobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  v777 = v1265;
  sub_2192925DC(a14, v1265, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  v778 = *(v1263 + 48);
  v779 = v1264;
  v780 = v778(v777, 1, v1264);
  v781 = v1393;
  v782 = v1254;
  v1358 = a14;
  if (v780 == 1)
  {
    v783 = v779;
    v784 = v1365;
    (*(v1393 + 56))(v1365, 1, 1, v1397);
    v785 = v1336;
    (*(v1394 + 56))(v1336, 1, 1, v763);
    v786 = v785;
    v787 = v1266;
    sub_2189AEB54(v784, v786, v1266);
    v788 = v778(v777, 1, v783);
    v789 = v1268;
    if (v788 != 1)
    {
      sub_21929277C(v777, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
    }
  }

  else
  {
    v787 = v1266;
    sub_219292714(v777, v1266, type metadata accessor for SpotlightTodayFeedGroupKnobs);
    v789 = v1268;
  }

  v1361 = a17;
  v790 = a16;
  sub_219292714(v787, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_spotlightKnobs, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  v791 = v1269;
  sub_2192925DC(v1362, v1269, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  v792 = *(v767 + 48);
  if (v792(v791, 1, v789) == 1)
  {
    v793 = v1365;
    (*(v781 + 56))(v1365, 1, 1, v1397);
    v794 = v789;
    v795 = v1336;
    (*(v1394 + 56))(v1336, 1, 1, v1396);
    v796 = v793;
    v797 = v1270;
    sub_218E64ADC(v796, v795, v1270);
    v798 = v792(v791, 1, v794);
    v799 = v1368;
    v800 = v1364;
    v801 = v1257;
    v802 = v1256;
    v803 = v782;
    if (v798 != 1)
    {
      sub_21929277C(v791, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
    }
  }

  else
  {
    v797 = v1270;
    sub_219292714(v791, v1270, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
    v799 = v1368;
    v800 = v1364;
    v801 = v1257;
    v802 = v1256;
    v803 = v782;
  }

  v1360 = a18;
  sub_219292714(v797, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_seenContentMarkKnobs, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  if (!a16)
  {
    v790 = sub_2194B0670(MEMORY[0x277D84F90]);
  }

  v804 = v1396;
  v1359 = a19;
  *(v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_curatedKnobs) = v790;
  v805 = v1333;
  sub_2192925DC(v1361, v1333, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  v806 = *(v1383 + 48);
  v1383 += 48;
  if (v806(v805, 1, v1332) == 1)
  {
    v807 = v1255;
    v808 = v1397;
    (*(v781 + 56))(v1255, 1, 1, v1397);
    (*(v1394 + 56))(v801, 1, 1, v804);
    sub_219292648(v807, v803, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v809 = *(v781 + 48);
    if (v809(v803, 1, v808) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v810 = v1163;
      sub_219BEE974();
      if (v809(v803, 1, v1397) != 1)
      {
        sub_2192926B8(v803, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v810 = v1163;
      (*(v781 + 32))(v1163, v803, v1397);
    }

    (*(v781 + 32))(v1272, v810, v1397);
    sub_219292648(v801, v802, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v813 = v1394;
    v814 = *(v1394 + 48);
    if (v814(v802, 1, v804) == 1)
    {
      v815 = v1390;
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v816 = v1165;
      sub_219BEEC74();
      if (v814(v802, 1, v804) != 1)
      {
        sub_2192926B8(v802, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v815 = v1390;
      v817 = *(v813 + 32);
      v816 = v1165;
      v817(v1165, v802, v804);
    }

    v818 = v1332;
    v819 = v1272;
    (*(v1394 + 32))(&v1272[*(v1332 + 20)], v816, v804);
    v1398 = 1;
    sub_2186F9548();
    swift_allocObject();
    *(v819 + v818[6]) = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    v820 = sub_219BEF534();
    sub_2192926B8(v801, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1255, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v819 + v818[7]) = v820;
    *(v819 + v818[8]) = 0x410FA40000000000;
    *(v819 + v818[9]) = 0x4000000000000000;
    *(v819 + v818[10]) = 0x3FF0000000000000;
    v821 = v1273;
    sub_219292714(v819, v1273, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
    v822 = v1333;
    v823 = v806(v1333, 1, v818);
    v811 = v821;
    v799 = v1368;
    v800 = v1364;
    v812 = v815;
    v781 = v1393;
    if (v823 != 1)
    {
      sub_21929277C(v822, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
    }
  }

  else
  {
    v811 = v1273;
    sub_219292714(v805, v1273, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
    v812 = v1390;
  }

  v1383 = a20;
  sub_219292714(v811, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_sharedWithYouKnobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  sub_2192925DC(v1360, v800, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
  v824 = *(v1274 + 48);
  v825 = v1275;
  v826 = v824(v800, 1, v1275);
  v827 = v1373;
  if (v826 == 1)
  {
    v828 = v1365;
    (*(v781 + 56))(v1365, 1, 1, v1397);
    v829 = v1276;
    v830 = v828;
    v831 = v1364;
    sub_2194298AC(v830, v1276);
    v832 = v824(v831, 1, v825);
    v833 = v829;
    v834 = v1394;
    v835 = v1372;
    if (v832 != 1)
    {
      sub_21929277C(v831, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
    }
  }

  else
  {
    v833 = v1276;
    sub_219292714(v800, v1276, type metadata accessor for EngagementTodayFeedGroupKnobs);
    v834 = v1394;
    v835 = v1372;
  }

  v1364 = a21;
  sub_219292714(v833, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_engagementKnobs, type metadata accessor for EngagementTodayFeedGroupKnobs);
  v836 = v1338;
  sub_2192925DC(v1359, v1338, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
  v837 = *(v1384 + 48);
  v1384 += 48;
  if ((v837)(v836, 1, v1367) == 1)
  {
    v1333 = v837;
    v838 = v1393;
    v839 = v1271;
    v840 = v1397;
    (*(v1393 + 56))(v1271, 1, 1, v1397);
    (*(v834 + 56))(v1331, 1, 1, v804);
    (*(v1392 + 56))(v1334, 1, 1, v812);
    v841 = v1164;
    sub_219292648(v839, v1164, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v842 = *(v838 + 48);
    if (v842(v841, 1, v840) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v843 = v1167;
      sub_219BEE974();
      v558 = v842(v841, 1, v1397) == 1;
      v844 = v841;
      v845 = v1168;
      if (!v558)
      {
        sub_2192926B8(v844, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v843 = v1167;
      (*(v838 + 32))(v1167, v841, v1397);
      v845 = v1168;
    }

    (*(v838 + 32))(v1337, v843, v1397);
    v849 = v1166;
    sub_219292648(v1331, v1166, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v850 = *(v834 + 48);
    if (v850(v849, 1, v804) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEEC74();
      if (v850(v849, 1, v804) != 1)
      {
        sub_2192926B8(v849, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      (*(v834 + 32))(v845, v849, v804);
    }

    v851 = v1367;
    v852 = v1337;
    (*(v834 + 32))(&v1337[*(v1367 + 20)], v845, v804);
    *&v1398 = 0.0;
    sub_2186F9548();
    swift_allocObject();
    *&v852[v851[6]] = sub_219BEF534();
    v1398 = 5;
    swift_allocObject();
    *&v852[v851[7]] = sub_219BEF534();
    *&v1398 = 0.0;
    swift_allocObject();
    *&v852[v851[8]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[9]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[10]] = sub_219BEF534();
    *&v1398 = 86400.0;
    sub_2186ECA28();
    v854 = v853;
    swift_allocObject();
    *&v852[v851[11]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v852[v851[12]] = sub_219BEF534();
    v1398 = 30;
    swift_allocObject();
    *&v852[v851[13]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_218D525A0();
    swift_allocObject();
    *&v852[v851[14]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_218D52720();
    swift_allocObject();
    *&v852[v851[15]] = sub_219BEF534();
    (*(v1173 + 104))(v1175, *MEMORY[0x277D321C8], v1174);
    sub_2190F7BC8();
    swift_allocObject();
    *&v852[v851[16]] = sub_219BEF534();
    *&v1398 = 86400.0;
    v1332 = v854;
    swift_allocObject();
    *&v852[v851[17]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[18]] = sub_219BEF534();
    *&v1398 = NAN;
    swift_allocObject();
    *&v852[v851[19]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[20]] = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *&v852[v851[21]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[23]] = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *&v852[v851[24]] = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *&v852[v851[22]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[25]] = sub_219BEF534();
    v1398 = 6;
    swift_allocObject();
    *&v852[v851[26]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    *&v852[v851[27]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v852[v851[28]] = sub_219BEF534();
    *&v1398 = NAN;
    swift_allocObject();
    *&v852[v851[29]] = sub_219BEF534();
    sub_218D554B0();
    swift_allocObject();
    v1330 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v855 = sub_219BEF274();
    *&v1398 = 0.0;
    sub_218D556B4();
    swift_allocObject();
    v856 = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v857 = sub_219BEF534();
    v858 = &v852[v851[30]];
    *v858 = v1330;
    *(v858 + 1) = v855;
    *(v858 + 2) = v856;
    *(v858 + 3) = v857;
    swift_allocObject();
    v859 = sub_219BEF274();
    swift_allocObject();
    v860 = sub_219BEF274();
    *&v1398 = 0.0;
    swift_allocObject();
    v861 = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v862 = sub_219BEF534();
    v863 = &v852[v851[31]];
    *v863 = v859;
    v863[1] = v860;
    v863[2] = v861;
    v863[3] = v862;
    v864 = v1176;
    sub_2192925DC(v1334, v1176, &qword_280E916D0, MEMORY[0x277D324F0]);
    v865 = v1392;
    v866 = *(v1392 + 48);
    v867 = v1390;
    if (v866(v864, 1, v1390) == 1)
    {
      v868 = v1177;
      sub_219BEF1C4();
      v869 = v866(v864, 1, v867);
      v835 = v1372;
      if (v869 != 1)
      {
        sub_21929277C(v864, &qword_280E916D0, MEMORY[0x277D324F0]);
      }
    }

    else
    {
      v868 = v1177;
      (*(v865 + 32))(v1177, v864, v867);
      v835 = v1372;
    }

    v870 = v1367;
    v871 = *(v865 + 32);
    v872 = v1337;
    v846 = v867;
    v871(&v1337[*(v1367 + 128)], v868, v867);
    LOBYTE(v1398) = 1;
    swift_allocObject();
    *(v872 + v870[33]) = sub_219BEF534();
    *&v1398 = 0.0;
    swift_allocObject();
    *(v872 + v870[34]) = sub_219BEF534();
    *&v1398 = 0.0;
    swift_allocObject();
    *(v872 + v870[35]) = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v873 = sub_219BEF534();
    sub_21929277C(v1334, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2192926B8(v1331, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1271, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v872 + v870[36]) = v873;
    v799 = v1368;
    sub_219292714(v872, v1368, type metadata accessor for MySportsTodayFeedGroupKnobs);
    v874 = v1338;
    v875 = (v1333)(v1338, 1, v870);
    v827 = v1373;
    v848 = v1395;
    v804 = v1396;
    v847 = v1393;
    if (v875 != 1)
    {
      sub_21929277C(v874, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
    }
  }

  else
  {
    v846 = v812;
    sub_219292714(v836, v799, type metadata accessor for MySportsTodayFeedGroupKnobs);
    v847 = v1393;
    v848 = v1395;
  }

  v1384 = a22;
  sub_219292714(v799, v848 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_mySportsKnobs, type metadata accessor for MySportsTodayFeedGroupKnobs);
  v876 = v1343;
  sub_2192925DC(v1383, v1343, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  v877 = *(v1385 + 48);
  v1385 += 48;
  if ((v877)(v876, 1, v1371) == 1)
  {
    v1368 = v877;
    v878 = v1277;
    v879 = v1397;
    (*(v847 + 56))(v1277, 1, 1, v1397);
    (*(v1394 + 56))(v1335, 1, 1, v804);
    (*(v1392 + 56))(v1340, 1, 1, v846);
    v880 = v1169;
    sub_219292648(v878, v1169, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v881 = *(v847 + 48);
    if (v881(v880, 1, v879) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v882 = v1171;
      sub_219BEE974();
      v558 = v881(v880, 1, v1397) == 1;
      v883 = v880;
      v884 = v1170;
      if (!v558)
      {
        sub_2192926B8(v883, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v882 = v1171;
      (*(v847 + 32))(v1171, v880, v1397);
      v884 = v1170;
    }

    (*(v847 + 32))(v1342, v882, v1397);
    sub_219292648(v1335, v884, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v887 = v1394;
    v888 = *(v1394 + 48);
    if (v888(v884, 1, v804) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v889 = v1172;
      sub_219BEEC74();
      if (v888(v884, 1, v804) != 1)
      {
        sub_2192926B8(v884, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v889 = v1172;
      (*(v887 + 32))(v1172, v884, v804);
    }

    v890 = v1371;
    v891 = v1342;
    (*(v887 + 32))(&v1342[*(v1371 + 20)], v889, v804);
    *&v1398 = 0.0;
    sub_2186F9548();
    swift_allocObject();
    *&v891[v890[6]] = sub_219BEF534();
    v1398 = 5;
    swift_allocObject();
    *&v891[v890[7]] = sub_219BEF534();
    *&v1398 = 0.0;
    swift_allocObject();
    *&v891[v890[8]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[9]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[10]] = sub_219BEF534();
    *&v1398 = 86400.0;
    sub_2186ECA28();
    v1367 = v892;
    swift_allocObject();
    *&v891[v890[11]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v891[v890[12]] = sub_219BEF534();
    v1398 = 30;
    swift_allocObject();
    *&v891[v890[13]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_218D525A0();
    swift_allocObject();
    *&v891[v890[14]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_218D52720();
    swift_allocObject();
    *&v891[v890[15]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[16]] = sub_219BEF534();
    v1398 = 3;
    swift_allocObject();
    *&v891[v890[17]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    sub_218D528A0();
    swift_allocObject();
    *&v891[v890[18]] = sub_219BEF534();
    v1398 = 7;
    swift_allocObject();
    *&v891[v890[19]] = sub_219BEF534();
    v1398 = 7;
    swift_allocObject();
    *&v891[v890[20]] = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    *&v891[v890[21]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[22]] = sub_219BEF534();
    *&v1398 = NAN;
    swift_allocObject();
    *&v891[v890[23]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[24]] = sub_219BEF534();
    v1398 = 1;
    swift_allocObject();
    *&v891[v890[25]] = sub_219BEF534();
    sub_218D554B0();
    swift_allocObject();
    v1338 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v893 = sub_219BEF274();
    *&v1398 = 0.0;
    sub_218D556B4();
    swift_allocObject();
    v894 = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v895 = sub_219BEF534();
    v896 = &v891[v890[26]];
    *v896 = v1338;
    *(v896 + 1) = v893;
    *(v896 + 2) = v894;
    *(v896 + 3) = v895;
    swift_allocObject();
    v897 = sub_219BEF274();
    swift_allocObject();
    v898 = sub_219BEF274();
    *&v1398 = 0.0;
    swift_allocObject();
    v899 = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v900 = sub_219BEF534();
    v901 = &v891[v890[27]];
    *v901 = v897;
    v901[1] = v898;
    v901[2] = v899;
    v901[3] = v900;
    v902 = v1181;
    sub_2192925DC(v1340, v1181, &qword_280E916D0, MEMORY[0x277D324F0]);
    v903 = v1392;
    v904 = *(v1392 + 48);
    v905 = v1390;
    if (v904(v902, 1, v1390) == 1)
    {
      v906 = v1182;
      sub_219BEF1C4();
      v907 = v904(v902, 1, v905);
      v827 = v1373;
      v908 = v1343;
      if (v907 != 1)
      {
        sub_21929277C(v902, &qword_280E916D0, MEMORY[0x277D324F0]);
      }
    }

    else
    {
      v909 = *(v903 + 32);
      v906 = v1182;
      v909(v1182, v902, v905);
      v827 = v1373;
      v908 = v1343;
    }

    v910 = v1371;
    v911 = v1342;
    (*(v1392 + 32))(&v1342[*(v1371 + 112)], v906, v905);
    LOBYTE(v1398) = 1;
    swift_allocObject();
    *(v911 + v910[29]) = sub_219BEF534();
    *&v1398 = 0.0;
    swift_allocObject();
    *(v911 + v910[30]) = sub_219BEF534();
    LOBYTE(v1398) = 1;
    swift_allocObject();
    v912 = sub_219BEF534();
    sub_21929277C(v1340, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2192926B8(v1335, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1277, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v911 + v910[31]) = v912;
    v886 = v1282;
    sub_219292714(v911, v1282, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
    v913 = (v1368)(v908, 1, v910);
    v848 = v1395;
    v804 = v1396;
    v847 = v1393;
    v835 = v1372;
    if (v913 != 1)
    {
      sub_21929277C(v908, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
    }
  }

  else
  {
    v885 = v876;
    v886 = v1282;
    sub_219292714(v885, v1282, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  }

  v1385 = a23;
  sub_219292714(v886, v848 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_introToSportsKnobs, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  sub_2192925DC(v1364, v827, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  v914 = *(v835 + 48);
  v915 = v1283;
  if (v914(v827, 1, v1283) == 1)
  {
    v916 = v1365;
    (*(v847 + 56))(v1365, 1, 1, v1397);
    v917 = v1336;
    (*(v1394 + 56))(v1336, 1, 1, v804);
    v918 = v1285;
    v919 = v916;
    v848 = v1395;
    sub_218B7080C(v919, v917, v1285);
    if (v914(v827, 1, v915) != 1)
    {
      sub_21929277C(v827, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
    }
  }

  else
  {
    v918 = v1285;
    sub_219292714(v827, v1285, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  }

  sub_219292714(v918, v848 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_shortcutsKnobs, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  v920 = v1345;
  sub_2192925DC(v1384, v1345, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
  v921 = *(v1386 + 48);
  v1386 += 48;
  if (v921(v920, 1, v1344) == 1)
  {
    v922 = v1278;
    v923 = v1397;
    (*(v847 + 56))(v1278, 1, 1, v1397);
    (*(v1394 + 56))(v1339, 1, 1, v804);
    v924 = sub_219BEF814();
    (*(*(v924 - 8) + 56))(v1281, 1, 1, v924);
    v925 = v1202;
    sub_219292648(v922, v1202, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v926 = *(v847 + 48);
    if (v926(v925, 1, v923) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v927 = v1202;
      v928 = v1179;
      sub_219BEE974();
      if (v926(v927, 1, v923) != 1)
      {
        sub_2192926B8(v927, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v928 = v1179;
      (*(v847 + 32))(v1179, v925, v923);
    }

    (*(v847 + 32))(v1286, v928, v923);
    v930 = v1178;
    sub_219292648(v1339, v1178, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v931 = v1394;
    v932 = *(v1394 + 48);
    if (v932(v930, 1, v804) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v933 = v1180;
      sub_219BEEC74();
      if (v932(v930, 1, v804) != 1)
      {
        sub_2192926B8(v930, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v933 = v1180;
      (*(v931 + 32))(v1180, v930, v804);
    }

    v934 = v1344;
    v935 = v1286;
    (*(v1394 + 32))(&v1286[*(v1344 + 20)], v933, v804);
    v936 = MEMORY[0x277D32720];
    v937 = v1281;
    sub_2192925DC(v1281, &v935[v934[6]], &qword_280E912E0, MEMORY[0x277D32720]);
    *&v935[v934[7]] = sub_2194AE724(MEMORY[0x277D84F90]);
    *&v1398 = 0.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v935[v934[8]] = sub_219BEF534();
    sub_218CC4F9C();
    swift_allocObject();
    *&v935[v934[9]] = sub_219BEEE04();
    LOBYTE(v1398) = 0;
    sub_2186F95C4();
    swift_allocObject();
    v938 = sub_219BEF534();
    sub_21929277C(v937, &qword_280E912E0, v936);
    sub_2192926B8(v1339, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1278, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *&v935[v934[10]] = v938;
    v939 = v935;
    v940 = v1287;
    sub_219292714(v939, v1287, type metadata accessor for ChannelTodayFeedGroupKnobs);
    v941 = v1345;
    v942 = v921(v1345, 1, v934);
    v929 = v940;
    if (v942 != 1)
    {
      sub_21929277C(v941, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
    }
  }

  else
  {
    v929 = v1287;
    sub_219292714(v920, v1287, type metadata accessor for ChannelTodayFeedGroupKnobs);
  }

  v944 = a24;
  v943 = a25;
  sub_219292714(v929, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, type metadata accessor for ChannelTodayFeedGroupKnobs);
  v945 = v1347;
  sub_2192925DC(v1385, v1347, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  v946 = *(v1387 + 6);
  v1387 += 48;
  v947 = v946(v945, 1, v1346);
  v948 = v1279;
  v1386 = a25;
  if (v947 == 1)
  {
    v949 = v1280;
    v950 = v1397;
    (*(v847 + 56))(v1280, 1, 1, v1397);
    v951 = v847;
    v952 = v1394;
    v953 = v1396;
    (*(v1394 + 56))(v1341, 1, 1, v1396);
    sub_219292648(v949, v948, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v954 = *(v847 + 48);
    if (v954(v948, 1, v950) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v955 = v1183;
      sub_219BEE974();
      if (v954(v948, 1, v950) != 1)
      {
        sub_2192926B8(v948, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v955 = v1183;
      (*(v951 + 32))(v1183, v948, v950);
    }

    (*(v951 + 32))(v1288, v955, v950);
    v958 = v1203;
    sub_219292648(v1341, v1203, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v959 = *(v952 + 48);
    v960 = v959(v958, 1, v953);
    v961 = v1184;
    if (v960 == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v962 = v1203;
      sub_219BEEC74();
      if (v959(v962, 1, v953) != 1)
      {
        sub_2192926B8(v962, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      (*(v952 + 32))(v1184, v958, v953);
    }

    v963 = v1346;
    v964 = v1288;
    (*(v952 + 32))(&v1288[*(v1346 + 20)], v961, v953);
    v1398 = 6;
    sub_2186F9548();
    swift_allocObject();
    v965 = sub_219BEF534();
    sub_2192926B8(v1341, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1280, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v964 + *(v963 + 24)) = v965;
    v957 = v1289;
    sub_219292714(v964, v1289, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
    v966 = v1347;
    v967 = v946(v1347, 1, v963);
    v943 = v1386;
    if (v967 != 1)
    {
      sub_21929277C(v966, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
    }
  }

  else
  {
    v956 = v945;
    v957 = v1289;
    sub_219292714(v956, v1289, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
    v953 = v1396;
    v952 = v1394;
  }

  sub_219292714(v957, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_savedStoriesKnobs, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  v968 = v1356;
  v969 = v1375;
  v970 = v1284;
  if (!a24)
  {
    v944 = sub_2194B0438(MEMORY[0x277D84F90]);
  }

  *(v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelPickerKnobs) = v944;
  sub_2192925DC(v943, v968, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
  v973 = *(v969 + 48);
  v972 = v969 + 48;
  v971 = v973;
  v974 = v1357;
  if ((v973)(v968, 1, v1357) == 1)
  {
    v1387 = v971;
    v1375 = v972;
    v975 = v1393;
    v976 = v1290;
    v977 = v1397;
    (*(v1393 + 56))(v1290, 1, 1, v1397);
    (*(v952 + 56))(v1348, 1, 1, v953);
    v978 = v1388;
    v979 = *(v1389 + 56);
    v979(v1350, 1, 1, v1388);
    v979(v1351, 1, 1, v978);
    (*(v1296 + 56))(v1352, 1, 1, v1301);
    v979(v1349, 1, 1, v978);
    (*(v1374 + 56))(v1353, 1, 1, v1297);
    (*(v1355 + 56))(v1354, 1, 1, v1298);
    v980 = v1204;
    sub_219292648(v976, v1204, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v981 = *(v975 + 48);
    if (v981(v980, 1, v977) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v982 = v1204;
      v983 = v1186;
      sub_219BEE974();
      if (v981(v982, 1, v977) != 1)
      {
        sub_2192926B8(v982, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v983 = v1186;
      (*(v975 + 32))(v1186, v980, v977);
    }

    (*(v1393 + 32))(v1391, v983, v977);
    v986 = v1185;
    sub_219292648(v1348, v1185, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v987 = *(v952 + 48);
    if (v987(v986, 1, v953) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEEC74();
      v988 = v987(v986, 1, v953);
      v989 = v1374;
      v990 = v1295;
      v991 = v1294;
      v992 = v1206;
      if (v988 != 1)
      {
        sub_2192926B8(v986, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      (*(v952 + 32))(v970, v986, v953);
      v989 = v1374;
      v990 = v1295;
      v991 = v1294;
      v992 = v1206;
    }

    (*(v952 + 32))(&v1391[v974[5]], v970, v953);
    v993 = v1205;
    sub_2192925DC(v1350, v1205, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v994 = *(v1389 + 48);
    v1389 += 48;
    if (v994(v993, 1, v1388) == 1)
    {
      v995 = v1392;
      v996 = v1187;
      v997 = v1390;
      (*(v1392 + 56))(v1187, 1, 1, v1390);
      v1398 = 1;
      sub_2186F9548();
      swift_allocObject();
      v998 = sub_219BEF534();
      v999 = v1190;
      *v1190 = v998;
      v1398 = 3;
      swift_allocObject();
      v999[1] = sub_219BEF534();
      v1000 = v996;
      v1001 = v1106;
      sub_2192925DC(v1000, v1106, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1002 = *(v995 + 48);
      if (v1002(v1001, 1, v997) == 1)
      {
        v1003 = v1107;
        sub_219BEF1C4();
        v1004 = v1002(v1001, 1, v997);
        v1005 = v1003;
        v990 = v1295;
        v991 = v1294;
        if (v1004 != 1)
        {
          sub_21929277C(v1001, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1005 = v1107;
        (*(v995 + 32))(v1107, v1001, v997);
        v990 = v1295;
        v991 = v1294;
      }

      v1006 = v1388;
      v1007 = v1190;
      (*(v1392 + 32))(v1190 + *(v1388 + 24), v1005, v997);
      LOBYTE(v1398) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1008 = sub_219BEF534();
      sub_21929277C(v1187, &qword_280E916D0, MEMORY[0x277D324F0]);
      *(v1007 + *(v1006 + 28)) = v1008;
      v1009 = v1206;
      sub_219292714(v1007, v1206, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      v1010 = v1205;
      v1011 = v1006;
      v992 = v1009;
      v1012 = v994(v1205, 1, v1011);
      v989 = v1374;
      if (v1012 != 1)
      {
        sub_21929277C(v1010, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      }
    }

    else
    {
      sub_219292714(v993, v992, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      v997 = v1390;
    }

    sub_219292714(v992, &v1391[v974[6]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    sub_2192925DC(v1351, v991, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    if (v994(v991, 1, v1388) == 1)
    {
      v1013 = v1392;
      v1014 = v1109;
      (*(v1392 + 56))(v1109, 1, 1, v997);
      v1398 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1015 = sub_219BEF534();
      v1016 = v1192;
      *v1192 = v1015;
      v1398 = 3;
      swift_allocObject();
      v1016[1] = sub_219BEF534();
      v1017 = v1108;
      sub_2192925DC(v1014, v1108, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1018 = *(v1013 + 48);
      if (v1018(v1017, 1, v997) == 1)
      {
        v1019 = v1110;
        sub_219BEF1C4();
        v1020 = v1018(v1017, 1, v997);
        v990 = v1295;
        if (v1020 != 1)
        {
          sub_21929277C(v1017, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1021 = *(v1013 + 32);
        v1019 = v1110;
        v1021(v1110, v1017, v997);
        v990 = v1295;
      }

      v1022 = v1388;
      v1023 = v1192;
      (*(v1392 + 32))(v1192 + *(v1388 + 24), v1019, v997);
      LOBYTE(v1398) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1024 = sub_219BEF534();
      sub_21929277C(v1014, &qword_280E916D0, MEMORY[0x277D324F0]);
      *(v1023 + *(v1022 + 28)) = v1024;
      sub_219292714(v1023, v990, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      v1025 = v1294;
      v1026 = v994(v1294, 1, v1022);
      v989 = v1374;
      if (v1026 != 1)
      {
        sub_21929277C(v1025, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      }
    }

    else
    {
      sub_219292714(v991, v990, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    }

    sub_219292714(v990, &v1391[v974[7]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v1027 = v1207;
    sub_2192925DC(v1352, v1207, qword_280EA9240, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
    v1028 = *(v1296 + 48);
    if (v1028(v1027, 1, v1301) == 1)
    {
      v1397 = v994;
      v1029 = v1392;
      v1030 = v1188;
      v1031 = v1390;
      (*(v1392 + 56))(v1188, 1, 1, v1390);
      *&v1398 = 86400.0;
      sub_2186ECA28();
      swift_allocObject();
      v1032 = sub_219BEF534();
      v1033 = v1193;
      v1193[1] = v1032;
      *&v1398 = COERCE_DOUBLE(sub_219BED694());
      sub_2186F9548();
      swift_allocObject();
      *v1033 = sub_219BEF534();
      v1398 = 1;
      swift_allocObject();
      v1033[2] = sub_219BEF534();
      v1398 = 3;
      swift_allocObject();
      v1033[3] = sub_219BEF534();
      v1034 = v1111;
      sub_2192925DC(v1030, v1111, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1035 = *(v1029 + 48);
      if (v1035(v1034, 1, v1031) == 1)
      {
        v1036 = v1112;
        sub_219BEF1C4();
        v1037 = v1035(v1034, 1, v1031);
        v1038 = v1207;
        v994 = v1397;
        if (v1037 != 1)
        {
          sub_21929277C(v1034, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1036 = v1112;
        (*(v1029 + 32))(v1112, v1034, v1031);
        v1038 = v1207;
        v994 = v1397;
      }

      v1040 = v1301;
      v1041 = v1193;
      (*(v1392 + 32))(v1193 + *(v1301 + 32), v1036, v1031);
      LOBYTE(v1398) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1042 = sub_219BEF534();
      sub_21929277C(v1188, &qword_280E916D0, MEMORY[0x277D324F0]);
      *&v1041[*(v1040 + 36)] = v1042;
      v1043 = v1041;
      v1039 = v1194;
      sub_219292714(v1043, v1194, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
      v1044 = v1028(v1038, 1, v1040);
      v974 = v1357;
      v989 = v1374;
      if (v1044 != 1)
      {
        sub_21929277C(v1038, qword_280EA9240, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
      }
    }

    else
    {
      v1039 = v1194;
      sub_219292714(v1027, v1194, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
      v1031 = v1390;
    }

    sub_219292714(v1039, &v1391[v974[8]], type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
    v1045 = v1208;
    sub_2192925DC(v1349, v1208, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v1046 = v994(v1045, 1, v1388);
    v1047 = v1392;
    if (v1046 == 1)
    {
      v1048 = v1189;
      (*(v1392 + 56))(v1189, 1, 1, v1031);
      v1398 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1049 = sub_219BEF534();
      v1050 = v1195;
      *v1195 = v1049;
      v1398 = 3;
      swift_allocObject();
      v1050[1] = sub_219BEF534();
      v1051 = v1113;
      sub_2192925DC(v1048, v1113, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1052 = *(v1047 + 48);
      if (v1052(v1051, 1, v1031) == 1)
      {
        v1053 = v1114;
        sub_219BEF1C4();
        v1054 = v1052(v1051, 1, v1031);
        v1055 = v1053;
        v1056 = v1196;
        if (v1054 != 1)
        {
          sub_21929277C(v1051, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1055 = v1114;
        (*(v1047 + 32))(v1114, v1051, v1031);
        v1056 = v1196;
      }

      v1058 = v1388;
      v1059 = v1195;
      (*(v1047 + 32))(v1195 + *(v1388 + 24), v1055, v1031);
      LOBYTE(v1398) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1060 = sub_219BEF534();
      sub_21929277C(v1189, &qword_280E916D0, MEMORY[0x277D324F0]);
      *(v1059 + *(v1058 + 28)) = v1060;
      sub_219292714(v1059, v1056, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      v1061 = v1208;
      v1062 = v994(v1208, 1, v1058);
      v989 = v1374;
      if (v1062 != 1)
      {
        sub_21929277C(v1061, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
      }
    }

    else
    {
      v1057 = v1045;
      v1056 = v1196;
      sub_219292714(v1057, v1196, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    }

    sub_219292714(v1056, &v1391[v974[9]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v1063 = v1209;
    sub_2192925DC(v1353, v1209, qword_280E9B6A8, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
    v1064 = *(v989 + 48);
    v1065 = v1297;
    if (v1064(v1063, 1, v1297) == 1)
    {
      v1066 = sub_219BEF814();
      v1067 = v1191;
      (*(*(v1066 - 8) + 56))(v1191, 1, 1, v1066);
      v1068 = MEMORY[0x277D32720];
      v1069 = v1197;
      sub_2192925DC(v1067, v1197, &qword_280E912E0, MEMORY[0x277D32720]);
      (*(v1291 + 104))(v1293, *MEMORY[0x277D32A90], v1292);
      sub_218D1D174();
      swift_allocObject();
      v1070 = MEMORY[0x277D84F90];
      *(v1069 + v1065[5]) = sub_219BEF534();
      sub_218CC4F9C();
      swift_allocObject();
      *(v1069 + v1065[6]) = sub_219BEEE04();
      *&v1398 = 0.0;
      sub_2186ECA28();
      swift_allocObject();
      *(v1069 + v1065[7]) = sub_219BEF534();
      LOBYTE(v1398) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v1069 + v1065[8]) = sub_219BEF534();
      LOBYTE(v1398) = 0;
      swift_allocObject();
      *(v1069 + v1065[9]) = sub_219BEF534();
      v1071 = v1070;
      v974 = v1357;
      v1072 = sub_2194AE724(v1071);
      v1073 = v1067;
      v1074 = v1069;
      v1075 = v1209;
      sub_21929277C(v1073, &qword_280E912E0, v1068);
      *(v1069 + v1065[10]) = v1072;
      v1076 = v1064(v1075, 1, v1065);
      v1077 = v1298;
      v1078 = v1355;
      v1079 = v1210;
      if (v1076 != 1)
      {
        sub_21929277C(v1075, qword_280E9B6A8, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
      }
    }

    else
    {
      v1080 = v1063;
      v1074 = v1197;
      sub_219292714(v1080, v1197, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
      v1077 = v1298;
      v1078 = v1355;
      v1079 = v1210;
    }

    sub_219292714(v1074, &v1391[v974[10]], type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
    sub_2192925DC(v1354, v1079, qword_280EA0660, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
    v1083 = *(v1078 + 48);
    v1082 = v1078 + 48;
    v1081 = v1083;
    if (v1083(v1079, 1, v1077) == 1)
    {
      v1084 = sub_219BEF814();
      v1355 = v1082;
      v1085 = v1084;
      v1086 = *(*(v1084 - 8) + 56);
      v1087 = v1191;
      v1086(v1191, 1, 1, v1084);
      v1088 = v1115;
      v1086(v1115, 1, 1, v1085);
      v1089 = MEMORY[0x277D32720];
      v1090 = v1198;
      sub_2192925DC(v1087, v1198, &qword_280E912E0, MEMORY[0x277D32720]);
      sub_2192925DC(v1088, v1090 + v1077[5], &qword_280E912E0, v1089);
      (*(v1291 + 104))(v1293, *MEMORY[0x277D32A90], v1292);
      sub_218D1D174();
      swift_allocObject();
      v1091 = MEMORY[0x277D84F90];
      *(v1090 + v1077[6]) = sub_219BEF534();
      sub_218CC4F9C();
      swift_allocObject();
      *(v1090 + v1077[7]) = sub_219BEEE04();
      *&v1398 = 0.0;
      sub_2186ECA28();
      swift_allocObject();
      *(v1090 + v1077[8]) = sub_219BEF534();
      LOBYTE(v1398) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v1090 + v1077[9]) = sub_219BEF534();
      v1092 = v1091;
      v974 = v1357;
      v1093 = sub_2194AE724(v1092);
      sub_21929277C(v1088, &qword_280E912E0, v1089);
      sub_21929277C(v1087, &qword_280E912E0, v1089);
      *(v1090 + v1077[10]) = v1093;
      v1094 = v1210;
      v1095 = v1081(v1210, 1, v1077);
      v1096 = v1363;
      if (v1095 != 1)
      {
        sub_21929277C(v1094, qword_280EA0660, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
      }
    }

    else
    {
      v1090 = v1198;
      sub_219292714(v1079, v1198, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
      v1096 = v1363;
    }

    v1097 = v1391;
    sub_219292714(v1090, &v1391[v974[11]], type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
    sub_2192927D8();
    swift_allocObject();
    v1098 = sub_219BEEE04();
    sub_21929277C(v1354, qword_280EA0660, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
    sub_21929277C(v1353, qword_280E9B6A8, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
    sub_21929277C(v1349, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    sub_21929277C(v1352, qword_280EA9240, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
    sub_21929277C(v1351, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    sub_21929277C(v1350, qword_280EB0688, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    sub_2192926B8(v1348, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_2192926B8(v1290, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *(v1097 + v974[12]) = v1098;
    v985 = v1299;
    sub_219292714(v1097, v1299, type metadata accessor for FoodTodayFeedGroupKnobs);
    sub_21929277C(v1386, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
    sub_21929277C(v1385, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1384, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
    sub_21929277C(v1364, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
    sub_21929277C(v1383, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
    sub_21929277C(v1359, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
    sub_21929277C(v1360, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
    sub_21929277C(v1361, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
    sub_21929277C(v1362, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
    sub_21929277C(v1358, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
    sub_21929277C(v1096, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
    sub_21929277C(v1382, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
    sub_21929277C(v1366, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
    sub_21929277C(v1369, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
    sub_21929277C(v1370, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
    sub_21929277C(v1376, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1377, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1378, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
    sub_21929277C(v1379, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
    sub_21929277C(v1380, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    sub_21929277C(v1381, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
    v1099 = v1356;
    if ((v1387)(v1356, 1, v974) != 1)
    {
      sub_21929277C(v1099, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
    }
  }

  else
  {
    sub_21929277C(v943, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
    sub_21929277C(v1385, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1384, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
    sub_21929277C(v1364, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
    sub_21929277C(v1383, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
    sub_21929277C(v1359, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
    sub_21929277C(v1360, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
    sub_21929277C(v1361, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
    sub_21929277C(v1362, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
    sub_21929277C(v1358, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
    sub_21929277C(v1363, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
    sub_21929277C(v1382, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
    sub_21929277C(v1366, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
    sub_21929277C(v1369, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
    sub_21929277C(v1370, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
    sub_21929277C(v1376, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1377, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
    sub_21929277C(v1378, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
    sub_21929277C(v1379, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
    sub_21929277C(v1380, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    sub_21929277C(v1381, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
    v984 = v968;
    v985 = v1299;
    sub_219292714(v984, v1299, type metadata accessor for FoodTodayFeedGroupKnobs);
  }

  v1100 = v1395;
  sub_219292714(v985, v1395 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_foodKnobs, type metadata accessor for FoodTodayFeedGroupKnobs);
  return v1100;
}

uint64_t sub_21928E000(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  sub_2192929D8(0, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedTodayFeedGroupKnobs();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_21929285C(0, &qword_280E8CF10, MEMORY[0x277D844C8]);
  sub_219292A2C(&qword_280EBBA70, type metadata accessor for CuratedTodayFeedGroupKnobs);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_21929277C(v8, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_219292714(v8, v12, type metadata accessor for CuratedTodayFeedGroupKnobs);
    sub_219291CC4(v12, v6);
    v19(v6, 0, 1, v9);

    sub_2199D6598(v6, v13, v14);
    return sub_219291D94(v12, type metadata accessor for CuratedTodayFeedGroupKnobs);
  }
}

uint64_t TodayFeedGroupKnobs.encode(to:)(void *a1)
{
  v2 = v1;
  v56 = type metadata accessor for CuratedTodayFeedGroupKnobs();
  v58 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v47 - v6;
  sub_2192929D8(0, &qword_280E8F910, sub_219291B08);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  sub_21929285C(0, &unk_280E8C620, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219291B74();
  sub_219BF7B44();
  v59 = v2;
  v64 = *(v2 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newspaperKnobs);
  strcpy(v61, "newspaper");
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -385875968;
  v62 = 0;
  v63 = 1;
  sub_219291BC8();
  v18 = v60;
  sub_219BF7834();
  if (v18)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v53 = v12;
  v54 = v10;
  v60 = v15;
  v20 = v57;
  v21 = v58;
  v64 = *(v59 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_localNewsKnobs);
  strcpy(v61, "localNews");
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -385875968;
  v62 = 0;
  v63 = 1;
  sub_219291C1C();
  sub_219BF7834();
  v52 = v14;
  strcpy(v61, "trending");
  BYTE1(v61[1]) = 0;
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -402653184;
  v62 = 0;
  v63 = 1;
  type metadata accessor for TrendingTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB60B8, type metadata accessor for TrendingTodayFeedGroupKnobs);
  sub_219BF7834();
  v61[0] = 0x756F59726F66;
  v61[1] = 0xE600000000000000;
  v62 = 0;
  v63 = 1;
  type metadata accessor for ForYouTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EBE558, type metadata accessor for ForYouTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "missedStories");
  HIWORD(v61[1]) = -4864;
  v62 = 0;
  v63 = 1;
  type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA5F88, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "latestStories");
  HIWORD(v61[1]) = -4864;
  v62 = 0;
  v63 = 1;
  type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA63B8, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  sub_219BF7834();
  v61[0] = 0x6369706F74;
  v61[1] = 0xE500000000000000;
  v62 = 0;
  v63 = 1;
  type metadata accessor for TopicTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EBFCC8, type metadata accessor for TopicTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "magazine");
  BYTE1(v61[1]) = 0;
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -402653184;
  v62 = 0;
  v63 = 1;
  type metadata accessor for MagazineTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB8300, type metadata accessor for MagazineTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "newFollow");
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -385875968;
  v62 = 0;
  v63 = 1;
  type metadata accessor for NewFollowTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB3A08, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "subscription");
  BYTE5(v61[1]) = 0;
  HIWORD(v61[1]) = -5120;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA7B40, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "suggestion");
  BYTE3(v61[1]) = 0;
  HIDWORD(v61[1]) = -369098752;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SuggestionTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EAE930, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "spotlight");
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -385875968;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SpotlightTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB23A8, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  sub_219BF7834();
  v61[0] = 0x746E6F436E656573;
  v61[1] = 0xEF6B72614D746E65;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280E9F110, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  sub_219BF7834();
  v61[0] = 0x646572616873;
  v61[1] = 0xE600000000000000;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA4BB0, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "engagement");
  BYTE3(v61[1]) = 0;
  HIDWORD(v61[1]) = -369098752;
  v62 = 0;
  v63 = 1;
  type metadata accessor for EngagementTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB0DC0, type metadata accessor for EngagementTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "mySports");
  BYTE1(v61[1]) = 0;
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -402653184;
  v62 = 0;
  v63 = 1;
  type metadata accessor for MySportsTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB7E38, type metadata accessor for MySportsTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "introToSports");
  HIWORD(v61[1]) = -4864;
  v62 = 0;
  v63 = 1;
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA6638, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "shortcuts");
  WORD1(v61[1]) = 0;
  HIDWORD(v61[1]) = -385875968;
  v62 = 0;
  v63 = 1;
  type metadata accessor for ShortcutsTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EB2CE0, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "channel");
  v61[1] = 0xE700000000000000;
  v62 = 0;
  v63 = 1;
  type metadata accessor for ChannelTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EBBEF0, type metadata accessor for ChannelTodayFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v61, "savedStories");
  BYTE5(v61[1]) = 0;
  HIWORD(v61[1]) = -5120;
  v62 = 0;
  v63 = 1;
  type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EA8370, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  sub_219BF7834();
  v64 = *(v59 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelPickerKnobs);
  strcpy(v61, "channelPicker");
  HIWORD(v61[1]) = -4864;
  v62 = 0;
  v63 = 1;
  sub_219291C70();
  sub_219BF7834();
  v61[0] = 1685024614;
  v61[1] = 0xE400000000000000;
  v62 = 0;
  v63 = 1;
  type metadata accessor for FoodTodayFeedGroupKnobs();
  sub_219292A2C(&qword_280EC4EA8, type metadata accessor for FoodTodayFeedGroupKnobs);
  sub_219BF7834();
  v22 = *(v59 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_curatedKnobs);
  v23 = *(v22 + 64);
  v51 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v59 = (v24 + 63) >> 6;
  v48 = v22;

  v27 = 0;
  if (v26)
  {
    while (1)
    {
      v28 = v27;
LABEL_14:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = *(v48 + 56);
      v34 = (*(v48 + 48) + 16 * v32);
      v35 = *v34;
      v49 = v34[1];
      v36 = v49;
      v50 = v35;
      sub_219291CC4(v33 + *(v21 + 72) * v32, v20);
      sub_219291B08();
      v38 = v37;
      v39 = *(v37 + 48);
      v40 = v54;
      *v54 = v50;
      v40[1] = v36;
      sub_219292714(v57, v40 + v39, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v41 = *(*(v38 - 8) + 56);
      v50 = v38;
      v41(v40, 0, 1, v38);

      v30 = v28;
LABEL_15:
      v42 = v53;
      sub_219291D28(v54, v53, &qword_280E8F910, sub_219291B08);
      sub_219291B08();
      if ((*(*(v50 - 8) + 48))(v42, 1) == 1)
      {
        break;
      }

      v44 = *v53;
      v43 = v53[1];
      sub_219292714(v53 + *(v50 + 48), v55, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v61[0] = v44;
      v61[1] = v43;
      v62 = 0;
      v63 = 1;
      sub_219292A2C(&unk_280EBBA78, type metadata accessor for CuratedTodayFeedGroupKnobs);
      sub_219BF7834();
      sub_219291D94(v55, type metadata accessor for CuratedTodayFeedGroupKnobs);

      v27 = v30;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    return (*(v60 + 8))(v17, v52);
  }

  else
  {
LABEL_7:
    if (v59 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v59;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v59)
      {
        sub_219291B08();
        v46 = *(*(v45 - 8) + 56);
        v50 = v45;
        v46(v54, 1, 1);
        v26 = 0;
        goto LABEL_15;
      }

      v26 = *(v51 + 8 * v28);
      ++v27;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21928F59C()
{
  v0 = sub_2194B3BE0(&unk_282A26788);
  result = swift_arrayDestroy();
  off_280ECFCE0 = v0;
  return result;
}

uint64_t sub_21928F5E8(uint64_t a1)
{
  v2 = sub_219291B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21928F624(uint64_t a1)
{
  v2 = sub_219291B74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedGroupKnobs.deinit()
{
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyNewspaperKnobs, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyLocalNewsKnobs, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);

  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_trendingKnobs, type metadata accessor for TrendingTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_latestStoriesKnobs, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, type metadata accessor for TopicTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, type metadata accessor for ChannelTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_magazineKnobs, type metadata accessor for MagazineTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newFollowKnobs, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_subscriptionKnobs, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_suggestionKnobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_spotlightKnobs, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_seenContentMarkKnobs, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);

  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_sharedWithYouKnobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_engagementKnobs, type metadata accessor for EngagementTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_mySportsKnobs, type metadata accessor for MySportsTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_introToSportsKnobs, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_shortcutsKnobs, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_savedStoriesKnobs, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);

  sub_219291D94(v0 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_foodKnobs, type metadata accessor for FoodTodayFeedGroupKnobs);
  return v0;
}

uint64_t TodayFeedGroupKnobs.__deallocating_deinit()
{
  TodayFeedGroupKnobs.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21928FA04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21928FA54(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21928FA54(void *a1)
{
  sub_2192929D8(0, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v94 - v3;
  sub_2192929D8(0, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v94 - v5;
  sub_2192929D8(0, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v94 - v7;
  sub_2192929D8(0, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v94 - v9;
  sub_2192929D8(0, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v94 - v11;
  sub_2192929D8(0, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8);
  v114 = &v94 - v13;
  sub_2192929D8(0, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = (&v94 - v15);
  sub_2192929D8(0, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v94 - v17;
  sub_2192929D8(0, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v18 - 8);
  v111 = &v94 - v19;
  sub_2192929D8(0, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v20 - 8);
  v110 = &v94 - v21;
  sub_2192929D8(0, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v22 - 8);
  v109 = &v94 - v23;
  sub_2192929D8(0, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = (&v94 - v25);
  sub_2192929D8(0, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v26 - 8);
  v107 = &v94 - v27;
  sub_2192929D8(0, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v28 - 8);
  v106 = &v94 - v29;
  sub_2192929D8(0, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v30 - 8);
  v105 = &v94 - v31;
  sub_2192929D8(0, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v32 - 8);
  v104 = &v94 - v33;
  sub_2192929D8(0, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v34 - 8);
  v103 = &v94 - v35;
  sub_2192929D8(0, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v36 - 8);
  v102 = &v94 - v37;
  sub_2192929D8(0, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v38 - 8);
  v101 = &v94 - v39;
  sub_2192929D8(0, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v94 - v41;
  sub_2192929D8(0, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v94 - v44;
  sub_21929285C(0, &qword_280E8CF10, MEMORY[0x277D844C8]);
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v50 = &v94 - v49;
  v51 = a1;
  v52 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219291B74();
  v53 = v125;
  sub_219BF7B34();
  v117 = v53;
  if (!v53)
  {
    v94 = v48;
    v96 = v45;
    v97 = v42;
    v95 = v51;
    v54 = v50;
    result = sub_219BF7754();
    v56 = result;
    v57 = *(result + 16);
    v124 = v50;
    v121 = v57;
    if (!v57)
    {
      v59 = MEMORY[0x277D84F90];
      goto LABEL_35;
    }

    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    v119 = v47;
    v120 = result + 32;
    v118 = result;
    while (1)
    {
      v122 = v59;
      while (1)
      {
        if (v58 >= *(v56 + 16))
        {
          __break(1u);
          return result;
        }

        v60 = v120 + 32 * v58;
        v61 = *v60;
        v62 = *(v60 + 8);
        v125 = *(v60 + 16);
        v63 = *(v60 + 24);
        v64 = qword_280ECFCD8;

        if (v64 != -1)
        {
          swift_once();
        }

        v123 = v58 + 1;
        v65 = off_280ECFCE0;
        if (!*(off_280ECFCE0 + 2))
        {
          break;
        }

        sub_219BF7AA4();
        sub_219BF5524();
        sub_219BF7AC4();
        if (!v63)
        {
          MEMORY[0x21CECE850](v125);
        }

        v66 = sub_219BF7AE4();
        v67 = v65 + 56;
        v68 = -1 << v65[32];
        v69 = v66 & ~v68;
        if (((*&v65[((v69 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v69) & 1) == 0)
        {
          break;
        }

        v70 = ~v68;
        v71 = *(v65 + 6);
        while (1)
        {
          v72 = v71 + 32 * v69;
          v73 = *(v72 + 16);
          v74 = *(v72 + 24);
          v75 = *v72 == v61 && *(v72 + 8) == v62;
          if (!v75 && (sub_219BF78F4() & 1) == 0)
          {
            goto LABEL_15;
          }

          if ((v74 & 1) == 0)
          {
            break;
          }

          if (v63)
          {
            goto LABEL_26;
          }

LABEL_15:
          v69 = (v69 + 1) & v70;
          if (((*&v67[(v69 >> 3) & 0xFFFFFFFFFFFFFF8] >> v69) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (v73 == v125)
        {
          v76 = v63;
        }

        else
        {
          v76 = 1;
        }

        if (v76)
        {
          goto LABEL_15;
        }

LABEL_26:

        v59 = v122;
        v58 = v123;
        v54 = v124;
        v56 = v118;
        v47 = v119;
        if (v123 == v121)
        {
          goto LABEL_35;
        }
      }

LABEL_28:
      v59 = v122;
      result = swift_isUniquelyReferenced_nonNull_native();
      v129 = v59;
      if ((result & 1) == 0)
      {
        result = sub_218C36E40(0, *(v59 + 16) + 1, 1);
        v59 = v129;
      }

      v54 = v124;
      v56 = v118;
      v78 = *(v59 + 16);
      v77 = *(v59 + 24);
      if (v78 >= v77 >> 1)
      {
        v80 = v124;
        result = sub_218C36E40((v77 > 1), v78 + 1, 1);
        v54 = v80;
        v59 = v129;
      }

      *(v59 + 16) = v78 + 1;
      v79 = v59 + 32 * v78;
      *(v79 + 32) = v61;
      *(v79 + 40) = v62;
      *(v79 + 48) = v125;
      *(v79 + 56) = v63;
      v58 = v123;
      v47 = v119;
      if (v123 == v121)
      {
LABEL_35:

        MEMORY[0x28223BE20](v81);
        v93[2] = v54;
        v82 = v117;
        v83 = sub_218D2A748(MEMORY[0x277D84F98], sub_2192928C0, v93, v59);

        v84 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
        strcpy(v126, "newspaper");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA00D0, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
        v85 = v96;
        sub_219BF76E4();
        v125 = v83;
        if (v82)
        {

          (*(*(v84 - 8) + 56))(v85, 1, 1, v84);
        }

        type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
        strcpy(v126, "localNews");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EE2D40, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
        sub_219BF76E4();
        strcpy(v126, "newspaper");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_2192928DC();
        sub_219BF76E4();
        v123 = v129;
        strcpy(v126, "localNews");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292930();
        sub_219BF76E4();
        v122 = v129;
        v86 = v99;
        type metadata accessor for TrendingTodayFeedGroupKnobs();
        strcpy(v126, "trending");
        BYTE1(v126[1]) = 0;
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -402653184;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB60B0, type metadata accessor for TrendingTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for ForYouTodayFeedGroupKnobs();
        v126[0] = 0x756F59726F66;
        v126[1] = 0xE600000000000000;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EBE550, type metadata accessor for ForYouTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
        strcpy(v126, "missedStories");
        HIWORD(v126[1]) = -4864;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA5F80, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
        strcpy(v126, "latestStories");
        HIWORD(v126[1]) = -4864;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA63B0, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for TopicTodayFeedGroupKnobs();
        v126[0] = 0x6369706F74;
        v126[1] = 0xE500000000000000;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EBFCC0, type metadata accessor for TopicTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for MagazineTodayFeedGroupKnobs();
        strcpy(v126, "magazine");
        BYTE1(v126[1]) = 0;
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -402653184;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB82F8, type metadata accessor for MagazineTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for NewFollowTodayFeedGroupKnobs();
        strcpy(v126, "newFollow");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB3A00, type metadata accessor for NewFollowTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SubscriptionTodayFeedGroupKnobs();
        strcpy(v126, "subscription");
        BYTE5(v126[1]) = 0;
        HIWORD(v126[1]) = -5120;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA7B38, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SuggestionTodayFeedGroupKnobs();
        strcpy(v126, "suggestion");
        BYTE3(v126[1]) = 0;
        HIDWORD(v126[1]) = -369098752;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EAE928, type metadata accessor for SuggestionTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SpotlightTodayFeedGroupKnobs();
        strcpy(v126, "spotlight");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB23A0, type metadata accessor for SpotlightTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
        v126[0] = 0x746E6F436E656573;
        v126[1] = 0xEF6B72614D746E65;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280E9F108, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
        v126[0] = 0x646572616873;
        v126[1] = 0xE600000000000000;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA4BA8, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for EngagementTodayFeedGroupKnobs();
        strcpy(v126, "engagement");
        BYTE3(v126[1]) = 0;
        HIDWORD(v126[1]) = -369098752;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB0DB8, type metadata accessor for EngagementTodayFeedGroupKnobs);
        sub_219BF76E4();
        v87 = v100;
        type metadata accessor for MySportsTodayFeedGroupKnobs();
        strcpy(v126, "mySports");
        BYTE1(v126[1]) = 0;
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -402653184;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB7E30, type metadata accessor for MySportsTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
        strcpy(v126, "introToSports");
        HIWORD(v126[1]) = -4864;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA6630, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for ShortcutsTodayFeedGroupKnobs();
        strcpy(v126, "shortcuts");
        WORD1(v126[1]) = 0;
        HIDWORD(v126[1]) = -385875968;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EB2CD8, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
        v88 = v98;
        sub_219BF76E4();
        v89 = v94;
        type metadata accessor for ChannelTodayFeedGroupKnobs();
        strcpy(v126, "channel");
        v126[1] = 0xE700000000000000;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&unk_280EBBEE0, type metadata accessor for ChannelTodayFeedGroupKnobs);
        sub_219BF76E4();
        type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
        strcpy(v126, "savedStories");
        BYTE5(v126[1]) = 0;
        HIWORD(v126[1]) = -5120;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EA8368, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
        sub_219BF76E4();
        strcpy(v126, "channelPicker");
        HIWORD(v126[1]) = -4864;
        v127 = 0;
        v128 = 1;
        sub_219292984();
        sub_219BF76E4();
        v90 = v129;
        type metadata accessor for FoodTodayFeedGroupKnobs();
        v126[0] = 1685024614;
        v126[1] = 0xE400000000000000;
        v127 = 0;
        v128 = 1;
        sub_219292A2C(&qword_280EC4EA0, type metadata accessor for FoodTodayFeedGroupKnobs);
        sub_219BF76E4();
        v117 = 0;
        v91 = v95;
        v92 = v96;
        type metadata accessor for TodayFeedGroupKnobs();
        v52 = swift_allocObject();
        sub_219280AE0(v92, v97, v123, v122, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v125, v112, v113, v114, v115, v88, v116, v86, v90, v87);
        (*(v89 + 8))(v124, v47);
        __swift_destroy_boxed_opaque_existential_1(v91);
        return v52;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  return v52;
}

void sub_219291B08()
{
  if (!qword_280E8F918)
  {
    type metadata accessor for CuratedTodayFeedGroupKnobs();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F918);
    }
  }
}

unint64_t sub_219291B74()
{
  result = qword_280ECFCB8;
  if (!qword_280ECFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFCB8);
  }

  return result;
}

unint64_t sub_219291BC8()
{
  result = qword_280EB3928;
  if (!qword_280EB3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3928);
  }

  return result;
}

unint64_t sub_219291C1C()
{
  result = qword_280EE17F0;
  if (!qword_280EE17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE17F0);
  }

  return result;
}

unint64_t sub_219291C70()
{
  result = qword_280EA6D40;
  if (!qword_280EA6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D40);
  }

  return result;
}

uint64_t sub_219291CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219291D28(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2192929D8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_219291D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TodayFeedGroupKnobs()
{
  result = qword_280ECFC88;
  if (!qword_280ECFC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219291E48()
{
  type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TrendingTodayFeedGroupKnobs();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ForYouTodayFeedGroupKnobs();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
          if (v4 <= 0x3F)
          {
            type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
            if (v5 <= 0x3F)
            {
              type metadata accessor for TopicTodayFeedGroupKnobs();
              if (v6 <= 0x3F)
              {
                type metadata accessor for ChannelTodayFeedGroupKnobs();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for MagazineTodayFeedGroupKnobs();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for NewFollowTodayFeedGroupKnobs();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for SubscriptionTodayFeedGroupKnobs();
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for SuggestionTodayFeedGroupKnobs();
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for SpotlightTodayFeedGroupKnobs();
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
                              if (v14 <= 0x3F)
                              {
                                sub_2192924E8(319, &qword_280E91A20, MEMORY[0x277D321A0]);
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for MySportsTodayFeedGroupKnobs();
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
                                    if (v17 <= 0x3F)
                                    {
                                      type metadata accessor for ShortcutsTodayFeedGroupKnobs();
                                      if (v18 <= 0x3F)
                                      {
                                        type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
                                        if (v19 <= 0x3F)
                                        {
                                          type metadata accessor for FoodTodayFeedGroupKnobs();
                                          if (v20 <= 0x3F)
                                          {
                                            swift_updateClassMetadata2();
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2192923E4()
{
  result = qword_280ECFCC0;
  if (!qword_280ECFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFCC0);
  }

  return result;
}

unint64_t sub_21929243C()
{
  result = qword_280ECFCA8;
  if (!qword_280ECFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFCA8);
  }

  return result;
}

unint64_t sub_219292494()
{
  result = qword_280ECFCB0;
  if (!qword_280ECFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFCB0);
  }

  return result;
}

void sub_2192924E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_219292A2C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_219292584(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2192924E8(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2192925DC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2192929D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219292648(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_219292584(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2192926B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_219292584(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_219292714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21929277C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2192929D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2192927D8()
{
  if (!qword_280E917C8)
  {
    sub_2186E1A80();
    sub_2186E1AD8();
    sub_2186E1B30();
    v0 = sub_219BEEE14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E917C8);
    }
  }
}

void sub_21929285C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219291B74();
    v7 = a3(a1, &type metadata for TodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192928DC()
{
  result = qword_280EB3920;
  if (!qword_280EB3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3920);
  }

  return result;
}

unint64_t sub_219292930()
{
  result = qword_280EE17E8;
  if (!qword_280EE17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE17E8);
  }

  return result;
}

unint64_t sub_219292984()
{
  result = qword_280EA6D38;
  if (!qword_280EA6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D38);
  }

  return result;
}

void sub_2192929D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219292A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219292A74()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000008;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v5, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C();
  sub_219293098(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v10);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_219293098(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2192932C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219294634(0, &qword_27CC184B0, MEMORY[0x277D34288], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = sub_219BF3F24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  sub_219293564(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_219294698(v8, &qword_27CC184B0, MEMORY[0x277D34288]);
  }

  v17 = *(v10 + 32);
  v17(v15, v8, v9);
  if (a2)
  {
    v18 = sub_219BE82D4();
    if (v18)
    {
      v19 = *(v10 + 16);
      v24[1] = v18;
      v19(v13, v15, v9);
      v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v21 = a3;
      v22 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      v17((v23 + v20), v13, v9);
      *(v23 + v22) = v21;

      sub_219BDD154();
    }
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_219293564(uint64_t a1, uint64_t a2)
{
  sub_219294634(0, &qword_27CC184B0, MEMORY[0x277D34288], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192935F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v90 = a1;
  v4 = sub_219BDBD34();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BE09E4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BDF104();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219294634(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v62 - v9;
  v10 = sub_219BE0724();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0D44();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF0E4();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  v80 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE0C24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDF124();
  v89 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1334();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3F04();
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == *MEMORY[0x277D332D0])
  {
    (*(v17 + 104))(v19, *MEMORY[0x277D2EBC8], v16);
    sub_219BF3EF4();
    sub_219BDF114();
    sub_219294708(&qword_27CC184C0, MEMORY[0x277D2D8D0]);
    sub_219BDCCC4();
    (*(v89 + 8))(v22, v20);
LABEL_10:
    v28 = a2;
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D332B8])
  {
    (*(v17 + 104))(v19, *MEMORY[0x277D2EBE0], v16);
    v28 = a2;
    sub_219BF3EF4();
    sub_219BDF114();
    sub_219294708(&qword_27CC184C0, MEMORY[0x277D2D8D0]);
    sub_219BDCCC4();
    (*(v89 + 8))(v22, v20);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D332B0])
  {
    (*(v17 + 104))(v19, *MEMORY[0x277D2EBD0], v16);
    sub_219BF3EF4();
    sub_219BDF114();
    sub_219294708(&qword_27CC184C0, MEMORY[0x277D2D8D0]);
LABEL_9:
    sub_219BDCCC4();
    (*(v89 + 8))(v22, v20);
    goto LABEL_10;
  }

  if (v27 == *MEMORY[0x277D332C8])
  {
    (*(v17 + 104))(v19, *MEMORY[0x277D2EBD8], v16);
    sub_219BF3EF4();
    sub_219BDF114();
    sub_219294708(&qword_27CC184C0, MEMORY[0x277D2D8D0]);
    goto LABEL_9;
  }

  v28 = a2;
  if (v27 != *MEMORY[0x277D332C0])
  {
    (*(v24 + 8))(v26, v23);
  }

LABEL_11:
  sub_219BF3F14();
  swift_getObjectType();
  v29 = v80;
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_219294634(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v89 = v30;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = *(v32 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v84 = v28;
  v88 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v86 = *MEMORY[0x277CEAD18];
  v85 = *(v32 + 104);
  v85(v36 + v35);
  v87 = "DisabledScrollTestCase";
  sub_219294708(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v37 = v82;
  sub_219BDCCC4();

  (*(v81 + 8))(v29, v37);
  sub_219BF3F14();
  swift_getObjectType();
  v38 = v71;
  sub_219BF6834();
  swift_unknownObjectRelease();
  v81 = v33;
  v39 = v86;
  v40 = swift_allocObject();
  *(v40 + 16) = v88;
  v80 = v35;
  v82 = v31;
  v41 = v31;
  v42 = v85;
  (v85)(v40 + v35, v39, v41);
  sub_219294708(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v43 = v73;
  sub_219BDCCC4();

  (*(v72 + 8))(v38, v43);
  sub_219BF3F14();
  swift_getObjectType();
  v44 = v74;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v46 = v75;
  v45 = v76;
  v47 = (*(v75 + 48))(v44, 1, v76);
  v83 = v34;
  if (v47 == 1)
  {
    sub_219294698(v44, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v48 = v63;
    (*(v46 + 32))(v63, v44, v45);
    v49 = v80;
    v50 = swift_allocObject();
    *(v50 + 16) = v88;
    v42(&v49[v50], v39, v82);
    sub_219294708(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v46 + 8))(v48, v45);
  }

  v51 = [sub_219BF3F14() sourceChannel];
  swift_unknownObjectRelease();
  if (v51)
  {
    v52 = v64;
    sub_219BE01F4();
    v53 = v80;
    v54 = swift_allocObject();
    *(v54 + 16) = v88;
    v55 = v82;
    (v85)(&v53[v54], v86, v82);
    sub_219294708(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v56 = v66;
    sub_219BDCCC4();

    (*(v65 + 8))(v52, v56);
    v57 = v68;
    sub_219BE01E4();
    v58 = swift_allocObject();
    *(v58 + 16) = v88;
    (v85)(&v53[v58], v86, v55);
    sub_219294708(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v59 = v70;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v69 + 8))(v57, v59);
  }

  sub_219BE04D4();
  v60 = v77;
  sub_219BDBD24();
  sub_219294708(&qword_27CC184B8, MEMORY[0x277D2E580]);
  sub_219BDCC34();
  return (*(v78 + 8))(v60, v79);
}

uint64_t sub_219294598(uint64_t a1)
{
  v3 = *(sub_219BF3F24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2192935F8(a1, v1 + v4, v5);
}

void sub_219294634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219294698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219294634(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219294708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219294750()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_21879D924();
  swift_allocObject();
  sub_219BE30B4();
  sub_219BED1F4();
  sub_219BED244();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = sub_219BE2E54();
  sub_219BE30A4();

  v7(v6, v0);
  sub_2186C6148(0, &qword_280E8E3B0);
  v9 = sub_219BF66A4();

  v10 = sub_219BE3024();

  return v10;
}

void sub_21929494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);

  v10 = [v9 userInfo];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2187A913C;
  *(v11 + 24) = v8;
  v13[4] = sub_218807D28;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218793E0C;
  v13[3] = &block_descriptor_109;
  v12 = _Block_copy(v13);

  [v10 loadFeldsparIDWithCompletion_];
  _Block_release(v12);
}

void sub_219294A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = [v1 userInfo];
  v3 = [v2 isUsingPlaceholderFSID];

  if (v3)
  {
    v4 = [v1 userInfo];
    [v4 ageOfPlaceholderFSID];
    v6 = v5;

    sub_219BF5CE4();
    if (v7 < v6)
    {
      sub_219294B28();
    }
  }
}

void sub_219294B28()
{
  if (sub_219294C10())
  {
    sub_219294D7C();
  }

  v1 = [*(v0 + 16) pptContext];
  if (v1)
  {
    v2 = [v1 isRunningPPT];
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      sub_2186C6148(0, &qword_280E8D790);
      v3 = sub_219BF6F64();
      sub_219BF6204();
      sub_219BE5314();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_219294C10()
{
  sub_219BE1CC4();
  if ((sub_219BE1CB4() & 1) == 0)
  {
    return 0;
  }

  result = [*(v0 + 16) pptContext];
  if (result)
  {
    v2 = [result isRunningPPT];
    swift_unknownObjectRelease();
    if (v2)
    {
      return 0;
    }

    if (qword_27CC084E0 != -1)
    {
      swift_once();
    }

    sub_219295694(&qword_27CC184D0);
    sub_219BDC7D4();
    if (v5)
    {
      return 0;
    }

    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 applicationState];

    return (v4 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219294D7C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = sub_219BE7174();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      sub_21929547C();
      sub_219BEA744();
      swift_allocObject();
      sub_219BEA6C4();

      sub_219BEA6E4();

      sub_219BEA704();

      sub_219BEA6D4();
    }
  }
}

uint64_t sub_219294ECC(uint64_t a1, uint64_t a2)
{
  v21[3] = *a2;
  v3 = sub_219BE6CF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192956D4(0, &unk_27CC1D910, MEMORY[0x277D6D5C8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  sub_2192956D4(0, &unk_27CC1EE20, MEMORY[0x277D6EB98]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v21[2] = *(a2 + 72);
  v21[1] = swift_getObjectType();
  sub_219BEAF54();
  sub_219BEA924();
  sub_219BE6384();
  v13 = sub_219BE63A4();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000029, 0x8000000219D15EF0);
  v14 = [*(a2 + 16) userInfo];
  [v14 ageOfPlaceholderFSID];
  v16 = v15;
  v17 = v15;

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21[5] = v16;
  v18 = sub_219BF7894();
  MEMORY[0x21CECC330](v18);

  MEMORY[0x21CECC330](0x73646E6F63657320, 0xE90000000000002ELL);
  (*(v4 + 104))(v6, *MEMORY[0x277D6D7E8], v3);
  sub_219BEA754();
  v19 = sub_219BEA764();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_219BE7094();
  sub_219295728(v12);

  if (qword_27CC084E0 != -1)
  {
LABEL_9:
    swift_once();
  }

  LOBYTE(v22) = 1;
  sub_219295694(&qword_27CC184E0);
  return sub_219BDCA54();
}

uint64_t sub_219295348()
{
  if (qword_27CC084E0 != -1)
  {
    swift_once();
  }

  sub_219295694(&qword_27CC184E0);
  return sub_219BDCA54();
}

unint64_t sub_21929547C()
{
  result = qword_27CC184D8;
  if (!qword_27CC184D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC184D8);
  }

  return result;
}

uint64_t sub_2192954E0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC184C8 = result;
  return result;
}

uint64_t sub_219295694(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserIDValidationStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2192956D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219295728(uint64_t a1)
{
  sub_2192956D4(0, &unk_27CC1EE20, MEMORY[0x277D6EB98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219295840(uint64_t a1)
{
  v2 = sub_219296C28();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219295880()
{
  result = qword_27CC184E8;
  if (!qword_27CC184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC184E8);
  }

  return result;
}

uint64_t sub_219295964(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v117 = sub_219BDBD64();
  v125 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for HistoryFeedModel(0);
  v7 = MEMORY[0x28223BE20](v124);
  v114 = (&v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v86 - v9;
  sub_218985E18();
  v12 = v11;
  v122 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = &v86 - v15;
  sub_219296940();
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for HistoryFeedSectionDescriptor();
  v18 = MEMORY[0x28223BE20](v101);
  v104 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - v20;
  sub_218954178();
  v23 = v22;
  v107 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v123 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v86 - v26;
  v94 = sub_219BE6DF4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219296A0C(0, &unk_280EE4AF8, MEMORY[0x277D6DF88]);
  v29 = v28;
  v90 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v89 = &v86 - v30;
  sub_218DC260C();
  MEMORY[0x28223BE20](v31 - 8);
  v86 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954264();
  v34 = v33;
  v88 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v87 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2186FF90C(&qword_280EE3640, sub_218954264);
  v37 = sub_219BF5E44();
  v38 = MEMORY[0x277D84F90];
  v100 = v34;
  v91 = v29;
  if (!v37)
  {
LABEL_25:
    v79 = sub_2186FF90C(&qword_280EE5978, sub_218954178);
    v80 = sub_2186FF90C(&qword_280EE5988, sub_218954178);
    MEMORY[0x21CEB9170](v38, v23, v79, v80);
    sub_2186FF90C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_2186FF90C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v81 = v87;
    sub_219BEB2D4();
    v82 = v93;
    v83 = v92;
    v84 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277D6D868], v94);
    sub_2186FF90C(&qword_280EB41F8, type metadata accessor for HistoryFeedSectionDescriptor);
    v85 = v89;
    sub_219BE85E4();
    (*(v82 + 8))(v83, v84);
    v96(v85);
    (*(v90 + 8))(v85, v91);
    return (*(v88 + 8))(v81, v100);
  }

  v129 = MEMORY[0x277D84F90];
  v106 = v37;
  sub_218C36E70(0, v37 & ~(v37 >> 63), 0);
  v38 = v129;
  v105 = v36;
  result = sub_219BF5DF4();
  if (v106 < 0)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v103 = (v107 + 16);
  v108 = (v107 + 32);
  v120 = (v122 + 16);
  v113 = (v125 + 1);
  v112 = (v122 + 8);
  v125 = (v122 + 32);
  v97 = (v107 + 8);
  v121 = v23;
  v102 = v21;
  v98 = a1;
  while (1)
  {
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
      goto LABEL_27;
    }

    v109 = v42;
    v110 = v38;
    v43 = sub_219BF5EC4();
    v44 = a1;
    v45 = v123;
    (*v103)(v123);
    v43(v128, 0);
    sub_219BE6934();
    v46 = type metadata accessor for ArticleListHistoryFeedGroup();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v21, 1, v46) == 1)
    {
      break;
    }

    (*v108)(v111, v45, v23);
    sub_219296B00(v21, type metadata accessor for HistoryFeedSectionDescriptor);
    a1 = v44;
LABEL_22:
    v38 = v110;
    v129 = v110;
    v78 = *(v110 + 16);
    v77 = *(v110 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_218C36E70(v77 > 1, v78 + 1, 1);
      v38 = v129;
    }

    *(v38 + 16) = v78 + 1;
    (*(v107 + 32))(v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v78, v111, v23);
    result = sub_219BF5E94();
    v40 = v109;
    v21 = v102;
    if (v109 == v106)
    {
      goto LABEL_25;
    }
  }

  (*(v47 + 56))(v104, 1, 1, v46);
  v48 = sub_2186FF90C(&qword_27CC184F0, sub_218954178);
  v49 = sub_219BF5E44();
  if (!v49)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_21:
    v75 = sub_2186FF90C(&qword_280EE5BF8, sub_218985E18);
    v76 = sub_2186FF90C(&unk_280EE5C00, sub_218985E18);
    MEMORY[0x21CEB9170](v51, v12, v75, v76);
    sub_2186FF90C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_2186FF90C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    sub_219BE6924();
    (*v97)(v45, v23);
    a1 = v98;
    goto LABEL_22;
  }

  v50 = v49;
  v127 = MEMORY[0x277D84F90];
  sub_218C359A0(0, v49 & ~(v49 >> 63), 0);
  v51 = v127;
  result = sub_219BF5DF4();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v52 = v118;
    while (1)
    {
      v53 = v48;
      v54 = sub_219BF5EC4();
      (*v120)(v52);
      v54(v128, 0);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v71 = type metadata accessor for HistoryFeedModel;
        v72 = v10;
        goto LABEL_14;
      }

      sub_218985FD4();
      v119 = *(v56 + 48);
      v57 = v10;
      v58 = v10;
      v59 = v115;
      sub_219296B60(v57, v115);
      sub_218986048();
      v61 = *(v60 + 48);
      v62 = v116;
      sub_219BDBD54();
      v63 = v12;
      v64 = sub_219BDBD44();
      v66 = v65;
      (*v113)(v62, v117);
      v67 = v114;
      *v114 = v64;
      v67[1] = v66;
      v12 = v63;
      sub_219296BC4(v59, v67 + v61);
      swift_storeEnumTagMultiPayload();
      sub_2186FF90C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
      sub_219BE5FB4();
      v68 = v59;
      v10 = v58;
      v52 = v118;
      sub_219296B00(v68, type metadata accessor for HistoryFeedGapLocation);
      (*v112)(v52, v63);
      v69 = sub_219BF1584();
      (*(*(v69 - 8) + 8))(&v58[v119], v69);
LABEL_15:
      v127 = v51;
      v74 = *(v51 + 16);
      v73 = *(v51 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_218C359A0(v73 > 1, v74 + 1, 1);
        v51 = v127;
      }

      *(v51 + 16) = v74 + 1;
      (*(v122 + 32))(v51 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v74, v126, v12);
      v45 = v123;
      v23 = v121;
      v48 = v53;
      sub_219BF5E94();
      if (!--v50)
      {
        goto LABEL_21;
      }
    }

    sub_218986048();
    v71 = type metadata accessor for HistoryFeedGapLocation;
    v72 = &v10[*(v70 + 48)];
LABEL_14:
    sub_219296B00(v72, v71);
    (*v125)(v126, v52, v12);
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_219296940()
{
  if (!qword_280EE7508)
  {
    sub_218985E18();
    sub_2186FF90C(&qword_280EE5BF8, sub_218985E18);
    sub_2186FF90C(&unk_280EE5C00, sub_218985E18);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7508);
    }
  }
}

void sub_219296A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF90C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_2186FF90C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219296B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219296B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219296BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219296C28()
{
  result = qword_27CC184F8;
  if (!qword_27CC184F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC184F8);
  }

  return result;
}

uint64_t type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData()
{
  result = qword_280E93CF8;
  if (!qword_280E93CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219296CF0()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    sub_219BEF554();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219296DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_219BEF554();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219297810(0, &qword_280E8C6C0, MEMORY[0x277D844C8]);
  v53 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_219297758();
  v17 = v54;
  sub_219BF7B34();
  if (!v17)
  {
    v54 = v13;
    v48 = v5;
    v49 = v11;
    v46 = v6;
    v47 = v8;
    LOBYTE(v58) = 1;
    v18 = v53;
    sub_219BF7674();
    v19 = v61;
    v45 = v60;
    LOBYTE(v56) = 2;
    sub_219BF7674();
    v21 = v58;
    v20 = v59;
    v63 = 3;
    sub_219BF7674();
    v22 = v56;
    v23 = v57;
    v63 = 4;
    v62 = sub_219BF76A4();
    v44 = v21;
    v63 = 5;
    v25 = sub_219BF76A4();
    v43 = v23;
    v63 = 6;
    sub_219297874(&unk_280E91390);
    v26 = v49;
    sub_219BF76E4();
    v27 = v26;
    v28 = v47;
    *v47 = 8;
    v29 = 0x30303030303023;
    if (v19)
    {
      v29 = v45;
      v30 = v19;
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    v31 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    if (v20)
    {
      v32 = v44;
    }

    else
    {
      v32 = 0x66666666666623;
    }

    if (!v20)
    {
      v20 = 0xE700000000000000;
    }

    (*(v54 + 8))(v15, v18);
    *(v28 + 3) = v32;
    *(v28 + 4) = v20;
    v33 = v25;
    v34 = v28;
    v35 = v43;
    *(v28 + 5) = v22;
    *(v28 + 6) = v35;
    v28[56] = v62 & 1;
    v28[57] = (v33 == 2) | v33 & 1;
    v36 = v51;
    v37 = v52;
    v38 = *(v51 + 48);
    if (v38(v31, 1, v52) == 1)
    {
      v39 = v48;
      (*(v36 + 104))(v48, *MEMORY[0x277D32628], v37);
      v40 = v38(v31, 1, v37);
      v41 = v50;
      v42 = v46;
      if (v40 != 1)
      {
        sub_218D15BD0(v31);
      }
    }

    else
    {
      v39 = v48;
      (*(v36 + 32))(v48, v31, v37);
      v41 = v50;
      v42 = v46;
    }

    (*(v36 + 32))(v34 + *(v42 + 40), v39, v37);
    sub_2192977AC(v34, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_219297318(void *a1)
{
  v3 = v1;
  sub_219297810(0, &qword_27CC18500, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219297758();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF77F4();
    v11[12] = 2;
    sub_219BF77F4();
    v11[11] = 3;
    sub_219BF7794();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF7804();
    type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
    v11[8] = 6;
    sub_219BEF554();
    sub_219297874(&qword_280E913A0);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219297588()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x74695470756F7267;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684957547;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x62755370756F7267;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_219297688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2192979D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2192976B0(uint64_t a1)
{
  v2 = sub_219297758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192976EC(uint64_t a1)
{
  v2 = sub_219297758();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219297758()
{
  result = qword_280E93D38;
  if (!qword_280E93D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93D38);
  }

  return result;
}

uint64_t sub_2192977AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219297810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219297758();
    v7 = a3(a1, &type metadata for RecommendedIssuesMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219297874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BEF554();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2192978CC()
{
  result = qword_27CC18508;
  if (!qword_27CC18508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18508);
  }

  return result;
}

unint64_t sub_219297924()
{
  result = qword_280E93D28;
  if (!qword_280E93D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93D28);
  }

  return result;
}

unint64_t sub_21929797C()
{
  result = qword_280E93D30;
  if (!qword_280E93D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93D30);
  }

  return result;
}

uint64_t sub_2192979D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEF726F6C6F43656CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219CD83A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62755370756F7267 && a2 == 0xED0000656C746974 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void *ClearUserDataManager.__allocating_init(clearDataManager:commandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ClearUserDataManager.init(clearDataManager:commandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void sub_219297C90()
{
  if (!qword_27CC18510)
  {
    sub_219BF12C4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18510);
    }
  }
}

uint64_t sub_219297CE8(uint64_t a1)
{
  sub_219297C90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219297D70(SEL *a1)
{
  sub_219297C90();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 16) *a1];
  swift_getObjectType();
  sub_219BEAA74();
  v6 = *MEMORY[0x277D33260];
  v7 = sub_219BF12C4();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  sub_219BE7094();
  sub_219297CE8(v5);
}

uint64_t ClearUserDataManager.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ClearUserDataManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219298198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_21929AC10();
  v5[17] = v6;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_218A5AF18();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  sub_21929AC98();
  v5[23] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  sub_219BEF6B4();
  v5[30] = swift_task_alloc();
  v10 = sub_219BEF594();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  sub_219BEF5B4();
  v5[34] = swift_task_alloc();
  sub_219BEF604();
  v5[35] = swift_task_alloc();
  sub_219BEF644();
  v5[36] = swift_task_alloc();
  sub_219BEF664();
  v5[37] = swift_task_alloc();
  v11 = sub_219BEF694();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  sub_219021960(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[41] = swift_task_alloc();
  sub_219021960(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[42] = swift_task_alloc();
  v12 = sub_219BEF6C4();
  v5[43] = v12;
  v5[44] = *(v12 - 8);
  v5[45] = swift_task_alloc();
  sub_219BDCAF4();
  v5[46] = swift_task_alloc();
  v13 = sub_219BDCAE4();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v14 = sub_219BDCAB4();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  sub_219021960(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[53] = swift_task_alloc();
  v15 = sub_219BF0634();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219298788, 0, 0);
}

uint64_t sub_219298788()
{
  v1 = v0[53];
  v42 = v0[54];
  v43 = v0[55];
  v3 = v0[51];
  v2 = v0[52];
  v40 = v0[56];
  v4 = v0[50];
  v64 = v0[49];
  v51 = v0[48];
  v52 = v0[47];
  v44 = v0[44];
  v45 = v0[43];
  v34 = v0[42];
  v35 = v0[41];
  v5 = v0[39];
  v36 = v0[40];
  v37 = v0[38];
  v41 = v0[45];
  v38 = v0[33];
  v6 = v0[32];
  v39 = v0[31];
  v46 = v0[28];
  v48 = v0[27];
  v50 = v0[29];
  v55 = v0[25];
  v57 = v0[24];
  v58 = v0[26];
  v62 = v0[23];
  v7 = v0[14];
  v60 = v0[13];
  (*(v43 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v34, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v35, 1, 1, v10);
  (*(v5 + 104))(v36, *MEMORY[0x277D326B0], v37);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v38, *MEMORY[0x277D32680], v39);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v54 = sub_219BEE0E4();
  (*(v44 + 8))(v41, v45);
  (*(v51 + 8))(v64, v52);
  (*(v3 + 8))(v2, v4);
  sub_218864D54(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v43 + 8))(v40, v42);
  (*(v46 + 16))(v50, v7, v48);
  (*(v55 + 104))(v58, *MEMORY[0x277D6E080], v57);
  sub_218953E34();
  (*(*(v11 - 8) + 16))(v62, v60, v11);
  sub_2186E8ABC(&qword_280EE3670, sub_218953E34);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v66 = MEMORY[0x277D84F90];
    sub_218C36EC0(0, v12 & ~(v12 >> 63), 0);
    v14 = v66;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v53 = v0 + 2;
      v18 = v0[6];
      v65 = v16[17];
      v47 = v16[21];
      v49 = v13;
      while (!__OFADD__(v17, 1))
      {
        v19 = v16[19];
        v20 = *(v65 + 48);
        v16[7] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[8])
        {
          goto LABEL_16;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[9])
        {
          goto LABEL_17;
        }

        v56 = v17 + 1;
        v61 = v16[22];
        v63 = v14;
        v21 = v16[18];
        v59 = v16[16];
        v22 = sub_219BF5EC4();
        v24 = v23;
        sub_21929AD2C(0, &qword_280EE5790, MEMORY[0x277D6D710]);
        v26 = v25;
        v27 = *(v25 - 8);
        (*(v27 + 16))(v19 + v20, v24, v25);
        v22(v53, 0);
        *v21 = v17;
        v28 = *(v65 + 48);
        (*(v27 + 32))(&v21[v28], v19 + v20, v26);
        sub_219299348(&v21[v28], v59, v54, v61);
        sub_21929AF1C(v16[18], sub_21929AC10);
        v14 = v63;
        v30 = *(v63 + 16);
        v29 = *(v63 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_218C36EC0(v29 > 1, v30 + 1, 1);
          v14 = v63;
        }

        v31 = v16[22];
        v32 = v16[20];
        *(v14 + 16) = v30 + 1;
        (*(v47 + 32))(v14 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30, v31, v32);
        v16[11] = v18;
        result = sub_219BF5E54();
        v18 = v16[10];
        ++v17;
        if (v56 == v49)
        {
          sub_21929AF1C(v16[23], sub_21929AC98);
          v0 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_21929AF1C(v0[23], sub_21929AC98);
LABEL_12:
    type metadata accessor for SavedFeedLayoutModel();
    sub_218C2FCAC();
    sub_2186E8ABC(&qword_280ECD670, type metadata accessor for SavedFeedLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_219299348@<X0>(uint64_t a1@<X1>, void (**a2)(char *, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v67 = a3;
  v66 = a2;
  v64 = a4;
  v74 = type metadata accessor for SavedFeedLayoutModel();
  MEMORY[0x28223BE20](v74);
  v72 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BEF974();
  v81 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5AE84();
  v71 = v7;
  v73 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - v10;
  v61 = sub_219BEE074();
  v60 = *(v61 - 8);
  v11 = MEMORY[0x28223BE20](v61);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v13;
  v14 = sub_219BE9FA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v57 - v19;
  v20 = type metadata accessor for ArticleListSavedFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SavedFeedSectionDescriptor();
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929AD2C(0, &qword_280EE5790, MEMORY[0x277D6D710]);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218CB12E8(v25, v22);
    sub_219299D58(a1, v67, &v22[*(v20 + 20)], MEMORY[0x277D84FA0], v64);
    return sub_21929AF1C(v22, type metadata accessor for ArticleListSavedFeedGroup);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v79 = 0;
    v80 = 0;
    v78 = 2;
    v27 = v15;
    (*(v15 + 104))(v18, *MEMORY[0x277D6E9B0], v14);
    sub_21929AE20();
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    v43 = v65;
    v44 = v68;
    sub_219BEE0A4();
    if (!v44)
    {
      sub_218864D54(&v75, &qword_280E91020, sub_2189BD704);
      v45 = sub_219BEE004();
      (*(v60 + 8))(v43, v61);
      v46 = *(v45 + 16);
      if (v46)
      {
        v63 = v18;
        v62 = 0;
        *&v75 = MEMORY[0x277D84F90];
        sub_218C37000(0, v46, 0);
        v47 = v75;
        v68 = *(v81 + 16);
        v48 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v61 = v45;
        v49 = v45 + v48;
        v50 = *(v81 + 72);
        v81 += 16;
        v66 = (v81 - 8);
        v67 = v50;
        v65 = (v73 + 32);
        v51 = v59;
        do
        {
          v52 = v69;
          v53 = v70;
          v54 = v68;
          v68(v69, v49, v70);
          v54(v72, v52, v53);
          sub_2186E8ABC(&qword_280ECD678, type metadata accessor for SavedFeedLayoutModel);
          sub_219BE75D4();
          (*v66)(v52, v53);
          *&v75 = v47;
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_218C37000(v55 > 1, v56 + 1, 1);
            v47 = v75;
          }

          *(v47 + 16) = v56 + 1;
          (*(v73 + 32))(v47 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v56, v51, v71);
          v49 += v67;
          --v46;
        }

        while (v46);
      }

      goto LABEL_18;
    }

LABEL_12:
    sub_218864D54(&v75, &qword_280E91020, sub_2189BD704);
    return (*(v27 + 8))(v18, v14);
  }

  sub_21929AF1C(v25, type metadata accessor for SavedFeedSectionDescriptor);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v27 = v15;
  v18 = v63;
  (*(v15 + 104))(v63, *MEMORY[0x277D6E9B0], v14);
  sub_21929AE20();
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  v28 = v62;
  v29 = v68;
  sub_219BEE0A4();
  if (v29)
  {
    goto LABEL_12;
  }

  sub_218864D54(&v75, &qword_280E91020, sub_2189BD704);
  v30 = sub_219BEE004();
  (*(v60 + 8))(v28, v61);
  v31 = *(v30 + 16);
  if (v31)
  {
    v62 = 0;
    *&v75 = MEMORY[0x277D84F90];
    sub_218C37000(0, v31, 0);
    v32 = v75;
    v68 = *(v81 + 16);
    v33 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v61 = v30;
    v34 = v30 + v33;
    v35 = *(v81 + 72);
    v81 += 16;
    v66 = (v81 - 8);
    v67 = v35;
    v65 = (v73 + 32);
    v36 = v58;
    do
    {
      v38 = v69;
      v37 = v70;
      v39 = v68;
      v68(v69, v34, v70);
      v39(v72, v38, v37);
      sub_2186E8ABC(&qword_280ECD678, type metadata accessor for SavedFeedLayoutModel);
      sub_219BE75D4();
      (*v66)(v38, v37);
      *&v75 = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_218C37000(v40 > 1, v41 + 1, 1);
        v32 = v75;
      }

      *(v32 + 16) = v41 + 1;
      (*(v73 + 32))(v32 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v41, v36, v71);
      v34 += v67;
      --v31;
    }

    while (v31);
  }

LABEL_18:

  sub_218C2FCAC();
  sub_2186E8ABC(&qword_280ECD670, type metadata accessor for SavedFeedLayoutModel);
  return sub_219BE81A4();
}

uint64_t sub_219299D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a2;
  v92 = a4;
  v93 = a1;
  v81 = a5;
  v106 = type metadata accessor for SavedFeedLayoutModel();
  MEMORY[0x28223BE20](v106);
  v103 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BEF974();
  v105 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5AE84();
  v100 = v8;
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BE9FA4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219021960(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = &v73 - v18;
  v96 = sub_219BDCB14();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v88 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BEE074();
  v78 = *(v79 - 8);
  v20 = MEMORY[0x28223BE20](v79);
  v75 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v95 = &v73 - v22;
  v86 = MEMORY[0x277D32218];
  sub_219021960(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v73 - v24;
  v26 = sub_219BED8D4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x277D325F8];
  sub_219021960(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v73 - v31;
  v84 = MEMORY[0x277D31DD0];
  sub_219021960(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v73 - v34;
  v36 = sub_219BF1904();
  v83 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  sub_219BED874();
  v39 = sub_219BEDB64();
  (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
  (*(v27 + 16))(v29, a3, v26);
  sub_219BEF4D4();
  v40 = sub_219BEF4E4();
  (*(*(v40 - 8) + 56))(v32, 0, 1, v40);
  v41 = sub_219BEEA64();
  (*(*(v41 - 8) + 56))(v25, 1, 1, v41);
  sub_21929AD2C(0, &qword_280EE5790, MEMORY[0x277D6D710]);
  sub_2186E8ABC(&qword_280EBA5A8, type metadata accessor for SavedFeedSectionDescriptor);
  sub_2186E8ABC(&qword_280EDBC88, type metadata accessor for SavedFeedModel);
  v93 = sub_219BE69F4();
  sub_218864D54(v25, &qword_280E91990, v86);
  sub_218864D54(v32, &qword_280E91548, v85);
  sub_218864D54(v35, &qword_280E924F8, v84);
  v42 = *(v83 + 8);
  v42(v38, v36);
  sub_219BED874();
  v43 = sub_219BF44B4();
  v44 = v38;
  v45 = v95;
  v42(v44, v36);
  v107[3] = sub_219BF3594();
  v107[4] = MEMORY[0x277D33EB8];
  v107[0] = v43;
  v46 = sub_219BDCB24();
  v47 = *(*(v46 - 8) + 56);
  v47(v87, 1, 1, v46);
  v47(v89, 1, 1, v46);
  v47(v90, 1, 1, v46);
  v47(v91, 1, 1, v46);
  v48 = v88;

  sub_219BDCB04();
  v49 = v99;
  sub_219BEE0B4();
  if (v49)
  {
    (*(v94 + 8))(v48, v96);

    return sub_218864D54(v107, &qword_280E91020, sub_2189BD704);
  }

  else
  {
    v92 = v43;
    (*(v94 + 8))(v48, v96);

    sub_218864D54(v107, &qword_280E91020, sub_2189BD704);
    v51 = v78;
    v52 = v75;
    v53 = v79;
    (*(v78 + 16))(v75, v45, v79);
    v107[0] = sub_2193FC05C(v52);
    v107[1] = v54;
    v107[2] = v55;
    v56 = *MEMORY[0x277D6E980];
    v57 = sub_219BE9F84();
    v58 = v80;
    (*(*(v57 - 8) + 104))(v80, v56, v57);
    (*(v76 + 104))(v58, *MEMORY[0x277D6E988], v77);
    v59 = sub_219BEE004();
    v60 = *(v59 + 16);
    if (v60)
    {
      v94 = 0;
      v108 = MEMORY[0x277D84F90];
      v61 = v59;
      sub_218C37000(0, v60, 0);
      v62 = v108;
      v63 = *(v105 + 16);
      v64 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v93 = v61;
      v65 = v61 + v64;
      v98 = *(v105 + 72);
      v99 = v63;
      v96 = v104 + 32;
      v97 = (v105 + 8);
      v66 = v74;
      v105 += 16;
      do
      {
        v67 = v101;
        v68 = v102;
        v69 = v99;
        v99(v101, v65, v102);
        v69(v103, v67, v68);
        sub_2186E8ABC(&qword_280ECD678, type metadata accessor for SavedFeedLayoutModel);
        sub_219BE75D4();
        (*v97)(v67, v68);
        v108 = v62;
        v71 = *(v62 + 16);
        v70 = *(v62 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_218C37000(v70 > 1, v71 + 1, 1);
          v62 = v108;
        }

        *(v62 + 16) = v71 + 1;
        (*(v104 + 32))(v62 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v71, v66, v100);
        v65 += v98;
        --v60;
      }

      while (v60);

      v53 = v79;
      v72 = v78;
    }

    else
    {
      v72 = v51;
    }

    sub_218C2FCAC();
    sub_2186E8ABC(&qword_280ECD670, type metadata accessor for SavedFeedLayoutModel);
    sub_219BE81A4();

    return (*(v72 + 8))(v95, v53);
  }
}

uint64_t sub_21929AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_219298198(a1, a2, a3, a4);
}

void sub_21929AC10()
{
  if (!qword_280E8E968)
  {
    sub_21929AD2C(255, &qword_280EE5790, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E968);
    }
  }
}

void sub_21929AC98()
{
  if (!qword_280E8D428)
  {
    sub_218953E34();
    sub_2186E8ABC(&qword_280EE3678, sub_218953E34);
    v0 = sub_219BF7544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D428);
    }
  }
}

void sub_21929AD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2186E8ABC(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_2186E8ABC(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21929AE20()
{
  result = qword_280EE57A8;
  if (!qword_280EE57A8)
  {
    sub_21929AD2C(255, &qword_280EE5790, MEMORY[0x277D6D710]);
    sub_2186E8ABC(&qword_280EBA5A8, type metadata accessor for SavedFeedSectionDescriptor);
    sub_2186E8ABC(&qword_280EDBC88, type metadata accessor for SavedFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE57A8);
  }

  return result;
}

uint64_t sub_21929AF1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21929AF8C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v5 = type metadata accessor for AudioFeedModel(0);
  v6 = MEMORY[0x28223BE20](v5);
  v97 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v101 = &v73 - v8;
  sub_218AB7640();
  v98 = v9;
  v102 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v105 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v104 = &v73 - v12;
  v86 = sub_219BE6DF4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BDD0(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = (&v73 - v15);
  sub_21929BDD0(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v18 = v17;
  v83 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v82 = &v73 - v19;
  v81 = type metadata accessor for AudioFeedSectionDescriptor();
  v20 = MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v73 - v22;
  sub_218AB76D4();
  v87 = v23;
  v77 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v79 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - v26;
  sub_21929BEC4();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BDD0(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31);
  v89 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v73 - v36;
  sub_219BEA8B4();
  v90 = v18;
  sub_219BEB244();

  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_21929BF8C(v30, sub_21929BEC4);
    sub_21929BF38();
    *v16 = swift_allocError();
    v39 = v91;
    v38 = v92;
    (*(v91 + 104))(v16, *MEMORY[0x277D6DF68], v92);
    v94(v16);
    return (*(v39 + 8))(v16, v38);
  }

  v75 = v16;
  (*(v33 + 32))(v37, v30, v32);
  v76 = v32;
  v88 = v37;
  sub_219BE6974();
  v41 = sub_21929BFEC(&qword_280EE7550, sub_218AB76D4);
  v42 = v87;
  v43 = sub_219BF5E44();
  v44 = v27;
  v74 = v33;
  if (v43)
  {
    v45 = v43;
    v107 = MEMORY[0x277D84F90];
    sub_218C34778(0, v43 & ~(v43 >> 63), 0);
    v46 = v107;
    result = sub_219BF5DF4();
    v47 = v98;
    if ((v45 & 0x8000000000000000) == 0)
    {
      v99 = (v102 + 16);
      v100 = v41;
      v48 = (v102 + 32);
      v96 = (v102 + 8);
      while (1)
      {
        v49 = v44;
        v50 = v42;
        v51 = sub_219BF5EC4();
        (*v99)(v105);
        v51(v106, 0);
        v52 = v101;
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v53 = v5;
          v54 = sub_219BE5B24();
          v56 = v55;

          if (v54 == sub_219BE5B24() && v56 == v57)
          {

LABEL_16:
            *v97 = v103;
            v5 = v53;
            swift_storeEnumTagMultiPayload();
            sub_21929BFEC(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
            sub_219BE5FB4();

            v47 = v98;
            (*v96)(v105, v98);
            goto LABEL_17;
          }

          v59 = sub_219BF78F4();

          if (v59)
          {
            goto LABEL_16;
          }

          v5 = v53;
          v47 = v98;
        }

        else
        {
          sub_21929BF8C(v52, type metadata accessor for AudioFeedModel);
        }

        (*v48)(v104, v105, v47);
LABEL_17:
        v107 = v46;
        v61 = *(v46 + 16);
        v60 = *(v46 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_218C34778(v60 > 1, v61 + 1, 1);
          v46 = v107;
        }

        *(v46 + 16) = v61 + 1;
        (*(v102 + 32))(v46 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v61, v104, v47);
        v44 = v49;
        v42 = v50;
        sub_219BF5E94();
        if (!--v45)
        {
          (*(v77 + 8))(v49, v50);
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(v77 + 8))(v27, v42);
    v46 = MEMORY[0x277D84F90];
    v47 = v98;
LABEL_22:
    v62 = v83;
    v63 = v78;
    sub_219BE6934();
    sub_219BE5B94();
    sub_218C16B30(v80);
    sub_21929BF8C(v63, type metadata accessor for AudioFeedSectionDescriptor);
    v64 = sub_21929BFEC(&qword_280EE5CB8, sub_218AB7640);
    v65 = sub_21929BFEC(&unk_280EE5CC0, sub_218AB7640);
    MEMORY[0x21CEB9170](v46, v47, v64, v65);
    v105 = type metadata accessor for AudioFeedSectionDescriptor;
    sub_21929BFEC(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    sub_21929BFEC(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    sub_219BE6924();
    v66 = v82;
    (*(v62 + 16))(v82, v95, v90);
    sub_219BEB234();
    v67 = v85;
    v68 = v84;
    v69 = v86;
    (*(v85 + 104))(v84, *MEMORY[0x277D6D868], v86);
    sub_21929BFEC(&qword_280EBC458, v105);
    v70 = v75;
    sub_219BE85E4();
    (*(v67 + 8))(v68, v69);
    v94(v70);
    (*(v91 + 8))(v70, v92);
    (*(v62 + 8))(v66, v90);
    v71 = *(v74 + 8);
    v72 = v76;
    v71(v89, v76);
    return (v71)(v88, v72);
  }

  return result;
}

uint64_t sub_21929BCAC(uint64_t a1)
{
  v2 = sub_218CF960C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21929BCEC()
{
  result = qword_27CC18518;
  if (!qword_27CC18518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18518);
  }

  return result;
}

void sub_21929BDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_21929BFEC(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_21929BFEC(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21929BEC4()
{
  if (!qword_280EE57C0)
  {
    sub_21929BDD0(255, &qword_280EE57D0, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE57C0);
    }
  }
}

unint64_t sub_21929BF38()
{
  result = qword_27CC18520;
  if (!qword_27CC18520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18520);
  }

  return result;
}

uint64_t sub_21929BF8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21929BFEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21929C048()
{
  result = qword_27CC18528;
  if (!qword_27CC18528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18528);
  }

  return result;
}

uint64_t sub_21929C09C@<X0>(void *a1@<X8>)
{
  v38 = a1;
  sub_21929C8FC(0, &qword_280E905E8, MEMORY[0x277D335B8]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_219BF1CE4();
  v37 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI229FeedPuzzleScoreCommandHandler_puzzleHistory), *(v1 + OBJC_IVAR____TtC7NewsUI229FeedPuzzleScoreCommandHandler_puzzleHistory + 24));
  v11 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v12 = sub_219BF3424();

  if (v12)
  {
    v13 = [v12 score];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 integerValue];

      v16 = [v12 scoreType];
      if (v16)
      {
        v17 = v16;
        [v16 integerValue];

        sub_219BF1CD4();
        v18 = v37;
        if ((*(v37 + 48))(v4, 1, v5) != 1)
        {
          v26 = *(v18 + 32);
          v26(v10, v4, v5);
          v25 = *MEMORY[0x277D335A8];
          v26(v8, v10, v5);
LABEL_13:
          v27 = (*(v18 + 88))(v8, v5);
          if (v27 == v25)
          {
            v28 = v38;
            *v38 = v15;
            v29 = *MEMORY[0x277D31ED0];
            v30 = sub_219BEDEB4();
            return (*(*(v30 - 8) + 104))(v28, v29, v30);
          }

          else
          {
            v31 = v27;
            v32 = *MEMORY[0x277D335B0];
            v33 = v38;
            *v38 = v15;
            v34 = v33;
            v35 = sub_219BEDEB4();
            v36 = *(*(v35 - 8) + 104);
            if (v31 == v32)
            {
              return v36(v34, *MEMORY[0x277D31ED8], v35);
            }

            else
            {
              v36(v34, *MEMORY[0x277D31ED0], v35);
              return (*(v18 + 8))(v8, v5);
            }
          }
        }

        sub_21929C950(v4, &qword_280E905E8, MEMORY[0x277D335B8]);
      }

      else
      {

        v18 = v37;
      }

      v25 = *MEMORY[0x277D335A8];
      (*(v18 + 104))(v10, *MEMORY[0x277D335A8], v5);
      (*(v18 + 32))(v8, v10, v5);
      goto LABEL_13;
    }
  }

  v19 = *MEMORY[0x277D31EC0];
  v20 = sub_219BEDEB4();
  v21 = *(*(v20 - 8) + 104);
  v22 = v20;
  v23 = v38;

  return v21(v23, v19, v22);
}

uint64_t sub_21929C5D4()
{
  sub_21929C8FC(0, &qword_27CC0B3B8, MEMORY[0x277D337A8]);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  sub_219BF0A14();
  v6 = sub_219BF2204();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_21929C87C(v5, v3);
    v9 = (*(v7 + 88))(v3, v6);
    if (v9 == *MEMORY[0x277D337A0] || v9 == *MEMORY[0x277D33798])
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v9 != *MEMORY[0x277D33790])
    {
      (*(v7 + 8))(v3, v6);
    }
  }

  v8 = 0;
LABEL_9:
  sub_21929C950(v5, &qword_27CC0B3B8, MEMORY[0x277D337A8]);
  return v8;
}

uint64_t sub_21929C794()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEA9E4();
    sub_219BF0AC4();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21929C87C(uint64_t a1, uint64_t a2)
{
  sub_21929C8FC(0, &qword_27CC0B3B8, MEMORY[0x277D337A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21929C8FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21929C950(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21929C8FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21929CB08()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI221ChannelEngagementView_token);
  *(v1 + OBJC_IVAR____TtC7NewsUI221ChannelEngagementView_token) = v2;
}

void sub_21929CB60()
{
  sub_21929CBEC(&qword_27CC10CF0);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21929CBEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelEngagementView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_21929CC2C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton;
  *&v4[v11] = [objc_allocWithZone(sub_219BE7234()) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_detailLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_titleLabel];
  v15 = v13;
  [v15 addSubview_];
  v16 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton;
  [v15 addSubview_];
  [v15 addSubview_];
  v17 = [*&v15[v16] imageView];
  if (v17)
  {
    v18 = v17;
    [v17 setContentMode_];
  }

  v19 = *&v15[v16];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 mainBundle];
  sub_219BDB5E4();

  v23 = sub_219BF53D4();

  [v21 setAccessibilityLabel_];

  return v15;
}

void sub_21929CF54()
{
  sub_21929CFE0(&qword_27CC10BB0);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21929CFE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineV2GridSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21929D020()
{
  v1 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton;
  *(v0 + v2) = [objc_allocWithZone(sub_219BE7234()) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_detailLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

id sub_21929D1D0(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v101 = a2;
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE89F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = &unk_282B817D8;
  v20 = swift_dynamicCastObjCProtocolConditional();
  if (!v20)
  {
    v28 = objc_allocWithZone(MEMORY[0x277D55058]);
    return [v28 initWithTitle:0 sourceView:v101];
  }

  v21 = v20;
  v96 = v12;
  v99 = a1;
  swift_unknownObjectRetain();
  v102 = v6;
  sub_21929DFC4(v6, v21);
  v23 = v22;
  v100 = v21;
  result = [v21 URL];
  if (result)
  {
    v25 = result;
    v97 = v15;
    v95 = v13;
    v26 = [result fc_NewsArticleID];

    if (v26)
    {
      v27 = [*(v102 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_linkedContentProvider) headlineForIdentifier_];
    }

    else
    {
      v27 = 0;
    }

    result = [v100 URL];
    if (result)
    {
      v30 = result;
      v31 = [result fc_feldsparTagID];

      if (v31)
      {
        v98 = [*(v102 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_linkedContentProvider) tagForIdentifier_];

        if (v23)
        {
LABEL_10:
          v32 = sub_219BF53D4();

          goto LABEL_13;
        }
      }

      else
      {
        v98 = 0;
        if (v23)
        {
          goto LABEL_10;
        }
      }

      v32 = 0;
LABEL_13:
      v33 = objc_allocWithZone(MEMORY[0x277D55058]);
      v34 = v101;
      v29 = [v33 initWithTitle:v32 sourceView:v101];

      (*(v17 + 104))(v19, *MEMORY[0x277D6E0D8], v16);
      sub_218718690(v102 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_tracker, &aBlock);
      v110 = a3;
      v111 = a4;
      v112 = a5;
      v113 = a6;
      v114 = 0;
      sub_219BE8314();
      swift_allocObject();
      v35 = v34;
      v36 = sub_219BE82F4();
      if (v27)
      {
        sub_21929E3CC(v29, v27, v100, v36);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_35:

        goto LABEL_36;
      }

      v37 = v98;
      if (v98)
      {
        v38 = [v98 asTopic];
        if (v38)
        {
          sub_21929F750(v29, v38, v100, v36);
LABEL_20:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

LABEL_36:
          swift_unknownObjectRelease();
          return v29;
        }

        v39 = [v37 asChannel];
        if (v39)
        {
          sub_2192A060C(v29, v39, v100, v36);
          goto LABEL_20;
        }
      }

      v93[1] = v36;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v94 = objc_opt_self();
      v101 = ObjCClassFromMetadata;
      v41 = [v94 bundleForClass_];
      sub_219BDB5E4();

      if (qword_280E92F28 != -1)
      {
        swift_once();
      }

      v93[0] = qword_280F619A0;
      v42 = swift_allocObject();
      v43 = v102;
      swift_unknownObjectUnownedInit();
      v44 = swift_allocObject();
      v45 = v100;
      *(v44 + 16) = v100;
      *(v44 + 24) = v42;
      v46 = objc_allocWithZone(MEMORY[0x277D55070]);
      swift_unknownObjectRetain();

      v47 = sub_219BF53D4();

      v107 = sub_2192A2E68;
      v108 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v104 = 1107296256;
      v105 = sub_218ABA2F4;
      v106 = &block_descriptor_110;
      v48 = _Block_copy(&aBlock);

      v49 = [v46 initWithLabel:v47 image:v93[0] type:0 block:v48];

      v50 = v48;
      v51 = v45;
      _Block_release(v50);

      [v29 addActivity_];

      v52 = *(v43 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_qualifier);
      v53 = [v52 respondsToSelector_];
      v54 = v96;
      v55 = v95;
      v56 = v97;
      if (v53)
      {
        v57 = [v51 URL];
        sub_219BDB8B4();

        v58 = sub_219BDB854();
        v59 = [v52 allowOpenInNewWindowForURL_];

        (*(v55 + 8))(v56, v54);
        if (v59)
        {
          v60 = [v94 bundleForClass_];
          sub_219BDB5E4();
          v61 = v51;

          sub_219BEA894();
          v62 = sub_219BEA884();
          v63 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v64 = swift_allocObject();
          *(v64 + 16) = v63;
          *(v64 + 24) = v51;
          v65 = objc_allocWithZone(MEMORY[0x277D55070]);
          swift_unknownObjectRetain();

          v66 = sub_219BF53D4();

          v107 = sub_2192A2E78;
          v108 = v64;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = sub_218ABA2F4;
          v106 = &block_descriptor_17_2;
          v67 = _Block_copy(&aBlock);

          v68 = [v65 initWithLabel:v66 image:v62 type:1 block:v67];

          v54 = v96;
          v69 = v67;
          v51 = v61;
          _Block_release(v69);

          [v29 addActivity_];

          v56 = v97;
          v55 = v95;
        }
      }

      v70 = [v51 URL];
      sub_219BDB8B4();

      v71 = sub_219BDB854();
      v72 = *(v55 + 8);
      v72(v56, v54);
      v73 = [v52 allowOpenInSafariForURL_];

      if (v73)
      {
        v74 = [v94 bundleForClass_];
        sub_219BDB5E4();

        if (qword_27CC08388 != -1)
        {
          swift_once();
        }

        v75 = qword_27CCD8868;
        v76 = swift_allocObject();
        v77 = v100;
        *(v76 + 16) = v100;
        v78 = objc_allocWithZone(MEMORY[0x277D55070]);
        swift_unknownObjectRetain();
        v51 = v77;
        v79 = sub_219BF53D4();

        v107 = sub_2192A2E70;
        v108 = v76;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = sub_218ABA2F4;
        v106 = &block_descriptor_10_2;
        v80 = _Block_copy(&aBlock);

        v81 = [v78 initWithLabel:v79 image:v75 type:1 block:v80];

        _Block_release(v80);

        [v29 addActivity_];

        v54 = v96;
        v56 = v97;
      }

      v82 = [v51 URL];
      sub_219BDB8B4();

      v83 = sub_219BDB854();
      v72(v56, v54);
      v84 = [v52 allowCopyingOfURL_];

      if (v84)
      {
        v85 = [v94 bundleForClass_];
        sub_219BDB5E4();

        if (qword_27CC08370 != -1)
        {
          swift_once();
        }

        v102 = qword_27CCD8850;
        v86 = [objc_opt_self() generalPasteboard];
        v87 = [v100 URL];
        v88 = v97;
        sub_219BDB8B4();

        sub_219BDB804();
        v72(v88, v54);
        v89 = objc_allocWithZone(MEMORY[0x277D550C8]);
        v90 = sub_219BF53D4();

        v91 = sub_219BF53D4();

        v92 = [v89 initWithLabel:v90 image:v102 type:1 pasteboard:v86 string:v91];

        [v29 addActivity_];
      }

      swift_unknownObjectRelease();
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21929DFC4(uint64_t a1, void *a2)
{
  v4 = sub_219BDB354();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192A3460(0);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router), *(a1 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router + 24));
  v16 = a2;
  v17 = [a2 URL];
  sub_219BDB8B4();

  v18 = sub_219BDD974();
  v19 = *(v13 + 8);
  v19(v15, v12);
  if (v18)
  {

    return 0;
  }

  v30 = v13;
  v31 = v9;
  v21 = v6;
  v22 = [v16 URL];
  sub_219BDB8B4();

  v23 = v32;
  sub_219BDB264();
  v19(v15, v12);
  v25 = v33;
  v24 = v34;
  v26 = *(v33 + 48);
  if (!v26(v23, 1, v34))
  {
    sub_219BDB2E4();
  }

  if (!v26(v23, 1, v24))
  {
    sub_219BDB334();
  }

  if (!v26(v23, 1, v24))
  {
    (*(v25 + 16))(v21, v23, v24);
    v27 = v31;
    sub_219BDB274();
    (*(v25 + 8))(v21, v24);
    if ((*(v30 + 48))(v27, 1, v12) != 1)
    {
      v28 = sub_219BDB804();
      v19(v27, v12);
      goto LABEL_11;
    }

    sub_218DF05B8(v27, sub_21873F65C);
  }

  v28 = 0;
LABEL_11:
  sub_218DF05B8(v23, sub_2192A3460);
  return v28;
}

uint64_t sub_21929E3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v109 = a4;
  v111 = a2;
  v123 = a1;
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1414();
  v114 = *(v9 - 8);
  v115 = v9;
  MEMORY[0x28223BE20](v9);
  v113 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218AD7B00(0);
  v12 = *(v11 - 8);
  v117 = v11;
  v118 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v14;
  MEMORY[0x28223BE20](v13);
  v119 = &v106 - v15;
  sub_2192A2E9C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v110 = (&v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2192A2ED0(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v121 = objc_opt_self();
  v122 = ObjCClassFromMetadata;
  v22 = [v121 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v23 = qword_280F619A0;
  v24 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a3;
  v26 = objc_allocWithZone(MEMORY[0x277D55070]);

  swift_unknownObjectRetain();
  v27 = sub_219BF53D4();

  v131 = sub_2192A3574;
  v132 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v128 = 1107296256;
  v108 = &v129;
  v129 = sub_218ABA2F4;
  v130 = &block_descriptor_24_5;
  v28 = _Block_copy(&aBlock);

  v29 = [v26 initWithLabel:v27 image:v23 type:0 block:v28];

  _Block_release(v28);

  v30 = v123;
  [v123 addActivity_];

  v124 = v5;
  v31 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter);
  v32 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter + 8);
  ObjectType = swift_getObjectType();
  v120 = sub_219BEAF54();
  sub_219BEAB64();
  v34 = v111;
  *v20 = v111;
  v35 = *MEMORY[0x277D33888];
  v36 = sub_219BF2484();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v20, v35, v36);
  (*(v37 + 56))(v20, 0, 1, v36);
  v38 = v31;
  v39 = v32;
  swift_unknownObjectRetain();
  v126 = ObjectType;
  LOBYTE(v35) = sub_219BE7074();

  sub_218DF05B8(v20, sub_2192A2ED0);
  v40 = v30;
  v125 = v38;
  if (v35)
  {
    v41 = [v121 bundleForClass_];
    sub_219BDB5E4();

    sub_219BEA894();
    v42 = sub_219BEA884();
    v43 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v34;
    v45 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v46 = sub_219BF53D4();

    v131 = sub_2192A30D4;
    v132 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_218ABA2F4;
    v130 = &block_descriptor_59;
    v47 = _Block_copy(&aBlock);

    v48 = [v45 initWithLabel:v46 image:v42 type:1 block:v47];

    v39 = v32;
    v40 = v123;
    _Block_release(v47);

    [v40 addActivity_];
  }

  sub_219BEAB44();
  aBlock = v34;
  swift_unknownObjectRetain();
  v49 = sub_219BE7074();
  swift_unknownObjectRelease();

  v112 = v39;
  if (v49)
  {
    v50 = [v121 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08388 != -1)
    {
      swift_once();
    }

    v51 = qword_27CCD8868;
    v52 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v34;
    v54 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v55 = sub_219BF53D4();

    v131 = sub_2192A30A4;
    v132 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_218ABA2F4;
    v130 = &block_descriptor_52_1;
    v56 = _Block_copy(&aBlock);

    v57 = [v54 initWithLabel:v55 image:v51 type:1 block:v56];

    _Block_release(v56);

    [v40 addActivity_];
  }

  sub_219BEAE24();
  sub_2192A2F04(0);
  v59 = *(v58 + 64);
  v60 = v110;
  v61 = (v110 + *(v58 + 80));
  *v110 = v34;
  v62 = *MEMORY[0x277D33970];
  v63 = sub_219BF25F4();
  (*(*(v63 - 8) + 104))(v60 + v59, v62, v63);
  *v61 = 0;
  v61[1] = 0;
  *(v60 + 8) = sub_218987DA8;
  *(v60 + 16) = 0;
  v64 = *MEMORY[0x277D33958];
  v65 = sub_219BF25E4();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v60, v64, v65);
  (*(v66 + 56))(v60, 0, 1, v65);
  swift_unknownObjectRetain();
  LOBYTE(v64) = sub_219BE7074();

  sub_218DF05B8(v60, sub_2192A2E9C);
  if (v64)
  {
    v67 = [v121 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08368 != -1)
    {
      swift_once();
    }

    v68 = qword_27CC178D0;
    v69 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v70 = swift_allocObject();
    v70[2] = v69;
    v70[3] = v34;
    v70[4] = v109;
    v71 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v72 = sub_219BF53D4();

    v131 = sub_2192A3098;
    v132 = v70;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_218ABA2F4;
    v130 = &block_descriptor_45_3;
    v73 = _Block_copy(&aBlock);

    v74 = [v71 initWithLabel:v72 image:v68 type:1 block:v73];

    _Block_release(v73);

    v40 = v123;
    [v123 addActivity_];
  }

  sub_219BEAA84();
  aBlock = v34;
  swift_unknownObjectRetain();
  v75 = sub_219BE7074();
  swift_unknownObjectRelease();

  v76 = v119;
  if (v75)
  {
    v77 = [v121 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08370 != -1)
    {
      swift_once();
    }

    v78 = qword_27CCD8850;
    v79 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v34;
    v81 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v82 = sub_219BF53D4();

    v131 = sub_2192A3068;
    v132 = v80;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_218ABA2F4;
    v130 = &block_descriptor_38_1;
    v83 = _Block_copy(&aBlock);

    v84 = [v81 initWithLabel:v82 image:v78 type:1 block:v83];

    _Block_release(v83);

    [v40 addActivity_];

    v76 = v119;
  }

  v85 = v113;
  *v113 = v34;
  (*(v114 + 104))(v85, *MEMORY[0x277D33370], v115);
  swift_unknownObjectRetain();
  sub_219BF2524();
  sub_219BEAD94();
  v87 = v117;
  v86 = v118;
  v88 = v116;
  v122 = *(v118 + 16);
  v122(v116, v76, v117);
  v89 = *(v86 + 56);
  v89(v88, 0, 1, v87);
  LOBYTE(v85) = sub_219BE7074();

  sub_218DF05B8(v88, sub_218B24A8C);
  if ((v85 & 1) == 0)
  {
    return (*(v86 + 8))(v76, v87);
  }

  sub_219BEAD94();
  v90 = v122;
  v122(v88, v76, v87);
  v89(v88, 0, 1, v87);
  sub_218740F28();
  sub_219BE7034();

  sub_218DF05B8(v88, sub_218B24A8C);
  v91 = aBlock;
  if (aBlock == 2)
  {
    return (*(v118 + 8))(v76, v87);
  }

  v126 = sub_2192A22A4();
  v93 = v118;
  if (v91)
  {
    if (qword_27CC08378 != -1)
    {
      swift_once();
    }

    v94 = &qword_27CCD8858;
  }

  else
  {
    if (qword_27CC08380 != -1)
    {
      swift_once();
    }

    v94 = &qword_27CCD8860;
  }

  v95 = *v94;
  v96 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v97 = v107;
  v98 = v119;
  v90(v107, v119, v87);
  v99 = (*(v93 + 80) + 24) & ~*(v93 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = v96;
  (*(v93 + 32))(v100 + v99, v97, v87);
  v101 = objc_allocWithZone(MEMORY[0x277D55070]);
  v102 = v95;

  v103 = sub_219BF53D4();

  v131 = sub_2192A303C;
  v132 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v128 = 1107296256;
  v129 = sub_218ABA2F4;
  v130 = &block_descriptor_31_1;
  v104 = _Block_copy(&aBlock);

  v105 = [v101 initWithLabel:v103 image:v102 type:1 block:v104];

  _Block_release(v104);

  [v123 addActivity_];

  (*(v93 + 8))(v98, v87);
}

uint64_t sub_21929F750(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v86[0] = a4;
  v94 = a2;
  v98 = a1;
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192A30DC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE7394();
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86[1] = v15;
  MEMORY[0x28223BE20](v14);
  v99 = v86 - v16;
  sub_2192A2E9C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v92 = ObjCClassFromMetadata;
  v21 = [v88 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v22 = qword_280F619A0;
  v23 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a3;
  v25 = objc_allocWithZone(MEMORY[0x277D55070]);

  v90 = a3;
  swift_unknownObjectRetain();
  v26 = sub_219BF53D4();

  v106 = sub_2192A3110;
  v107 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_218ABA2F4;
  v105 = &block_descriptor_66;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 initWithLabel:v26 image:v22 type:0 block:v27];

  _Block_release(v27);

  [v98 addActivity_];

  v95 = v5;
  v30 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter);
  v29 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter + 8);
  ObjectType = swift_getObjectType();
  sub_219BEAE24();
  sub_2192A3134();
  v33 = *(v32 + 48);
  v34 = v94;
  *v19 = v94;
  v35 = *MEMORY[0x277D33970];
  v36 = sub_219BF25F4();
  (*(*(v36 - 8) + 104))(&v19[v33], v35, v36);
  v37 = *MEMORY[0x277D33930];
  v38 = sub_219BF25E4();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v19, v37, v38);
  (*(v39 + 56))(v19, 0, 1, v38);
  swift_unknownObjectRetain();
  v96 = ObjectType;
  v97 = v29;
  LOBYTE(v37) = sub_219BE7074();

  sub_218DF05B8(v19, sub_2192A2E9C);
  if (v37)
  {
    v40 = [v88 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08368 != -1)
    {
      swift_once();
    }

    v41 = qword_27CC178D0;
    v42 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = v34;
    v43[4] = v86[0];
    v44 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v45 = sub_219BF53D4();

    v106 = sub_2192A3200;
    v107 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v103 = 1107296256;
    v104 = sub_218ABA2F4;
    v105 = &block_descriptor_87_1;
    v46 = _Block_copy(&aBlock);

    v47 = [v44 initWithLabel:v45 image:v41 type:1 block:v46];

    _Block_release(v46);

    [v98 addActivity_];
  }

  v48 = [v90 URL];
  v49 = v91;
  sub_219BDB8B4();

  v50 = sub_219BDB954();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  aBlock = v34;
  sub_2186D6710(0, &unk_27CC186A8);
  swift_unknownObjectRetain();
  v51 = v99;
  sub_219BE7374();
  sub_219BEAF54();
  sub_219BEAF44();
  v53 = v100;
  v52 = v101;
  v54 = *(v100 + 16);
  v55 = v89;
  v54(v89, v51, v101);
  (*(v53 + 56))(v55, 0, 1, v52);
  LOBYTE(v52) = sub_219BE7074();

  sub_218DF05B8(v55, sub_2192A30DC);
  if (v52)
  {
    v91 = v30;
    v56 = [v88 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08370 != -1)
    {
      swift_once();
    }

    v57 = qword_27CCD8850;
    v58 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v59 = v87;
    v60 = v101;
    v54(v87, v99, v101);
    v61 = v100;
    v62 = (*(v100 + 80) + 24) & ~*(v100 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    (*(v61 + 32))(v63 + v62, v59, v60);
    v64 = objc_allocWithZone(MEMORY[0x277D55070]);

    v65 = sub_219BF53D4();

    v106 = sub_2192A31D4;
    v107 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v103 = 1107296256;
    v104 = sub_218ABA2F4;
    v105 = &block_descriptor_80_0;
    v66 = _Block_copy(&aBlock);

    v67 = [v64 initWithLabel:v65 image:v57 type:1 block:v66];

    _Block_release(v66);

    [v98 addActivity_];
  }

  sub_219BEAF14();
  swift_unknownObjectRetain();
  v68 = v93;
  sub_219BF3324();
  v69 = sub_219BF3344();
  v70 = *(*(v69 - 8) + 56);
  v70(v68, 0, 1, v69);
  v71 = sub_219BE7074();

  sub_218DF05B8(v68, sub_219113A7C);
  if ((v71 & 1) == 0)
  {
    return (*(v100 + 8))(v99, v101);
  }

  sub_219BEAF14();
  swift_unknownObjectRetain();
  sub_219BF3324();
  v70(v68, 0, 1, v69);
  sub_218740ED4();
  sub_219BE7034();

  sub_218DF05B8(v68, sub_219113A7C);
  v72 = aBlock;
  if (aBlock == 2)
  {
    return (*(v100 + 8))(v99, v101);
  }

  sub_2192A2AF8();
  if (v72)
  {
    v74 = v98;
    v75 = v94;
    if (qword_280E92EC0 != -1)
    {
      swift_once();
    }

    v76 = &qword_280F61968;
  }

  else
  {
    v74 = v98;
    v75 = v94;
    if (qword_27CC083A8 != -1)
    {
      swift_once();
    }

    v76 = &qword_27CCD8880;
  }

  v77 = *v76;
  v78 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v75;
  v80 = objc_allocWithZone(MEMORY[0x277D55070]);
  v81 = v77;
  swift_unknownObjectRetain();
  v82 = v81;

  v83 = sub_219BF53D4();

  v106 = sub_2192A31B8;
  v107 = v79;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_218ABA2F4;
  v105 = &block_descriptor_73_0;
  v84 = _Block_copy(&aBlock);

  v85 = [v80 initWithLabel:v83 image:v82 type:1 block:v84];

  _Block_release(v84);

  [v74 addActivity_];

  (*(v100 + 8))(v99, v101);
}

uint64_t sub_2192A060C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v86[0] = a4;
  v94 = a2;
  v98 = a1;
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192A30DC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE7394();
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86[1] = v15;
  MEMORY[0x28223BE20](v14);
  v99 = v86 - v16;
  sub_2192A2E9C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v91 = ObjCClassFromMetadata;
  v21 = [v88 bundleForClass_];
  sub_219BDB5E4();

  if (qword_27CC083B0 != -1)
  {
    swift_once();
  }

  v22 = qword_27CCD8888;
  v23 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a3;
  v25 = objc_allocWithZone(MEMORY[0x277D55070]);

  v90 = a3;
  swift_unknownObjectRetain();
  v26 = sub_219BF53D4();

  v106 = sub_2192A3574;
  v107 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_218ABA2F4;
  v105 = &block_descriptor_94_1;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 initWithLabel:v26 image:v22 type:0 block:v27];

  _Block_release(v27);

  [v98 addActivity_];

  v95 = v5;
  v30 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter);
  v29 = *(v5 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter + 8);
  ObjectType = swift_getObjectType();
  sub_219BEAE24();
  sub_2192A3134();
  v33 = *(v32 + 48);
  v34 = v94;
  *v19 = v94;
  v35 = *MEMORY[0x277D33970];
  v36 = sub_219BF25F4();
  (*(*(v36 - 8) + 104))(&v19[v33], v35, v36);
  v37 = *MEMORY[0x277D33930];
  v38 = sub_219BF25E4();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v19, v37, v38);
  (*(v39 + 56))(v19, 0, 1, v38);
  swift_unknownObjectRetain();
  v96 = ObjectType;
  v97 = v29;
  LOBYTE(v37) = sub_219BE7074();

  sub_218DF05B8(v19, sub_2192A2E9C);
  if (v37)
  {
    v40 = [v88 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08368 != -1)
    {
      swift_once();
    }

    v41 = qword_27CC178D0;
    v42 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = v34;
    v43[4] = v86[0];
    v44 = objc_allocWithZone(MEMORY[0x277D55070]);
    swift_unknownObjectRetain();

    v45 = sub_219BF53D4();

    v106 = sub_2192A352C;
    v107 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v103 = 1107296256;
    v104 = sub_218ABA2F4;
    v105 = &block_descriptor_115;
    v46 = _Block_copy(&aBlock);

    v47 = [v44 initWithLabel:v45 image:v41 type:1 block:v46];

    _Block_release(v46);

    [v98 addActivity_];
  }

  v48 = [v90 URL];
  v49 = v92;
  sub_219BDB8B4();

  v50 = sub_219BDB954();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  aBlock = v34;
  sub_2186D6710(0, &qword_280E8E390);
  swift_unknownObjectRetain();
  v51 = v99;
  sub_219BE7374();
  sub_219BEAF54();
  sub_219BEAF44();
  v53 = v100;
  v52 = v101;
  v54 = *(v100 + 16);
  v55 = v89;
  v54(v89, v51, v101);
  (*(v53 + 56))(v55, 0, 1, v52);
  LOBYTE(v52) = sub_219BE7074();

  sub_218DF05B8(v55, sub_2192A30DC);
  if (v52)
  {
    v92 = v30;
    v56 = [v88 bundleForClass_];
    sub_219BDB5E4();

    if (qword_27CC08370 != -1)
    {
      swift_once();
    }

    v57 = qword_27CCD8850;
    v58 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v59 = v87;
    v60 = v101;
    v54(v87, v99, v101);
    v61 = v100;
    v62 = (*(v100 + 80) + 24) & ~*(v100 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    (*(v61 + 32))(v63 + v62, v59, v60);
    v64 = objc_allocWithZone(MEMORY[0x277D55070]);

    v65 = sub_219BF53D4();

    v106 = sub_2192A31D4;
    v107 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v103 = 1107296256;
    v104 = sub_218ABA2F4;
    v105 = &block_descriptor_108;
    v66 = _Block_copy(&aBlock);

    v67 = [v64 initWithLabel:v65 image:v57 type:1 block:v66];

    _Block_release(v66);

    [v98 addActivity_];
  }

  sub_219BEAF14();
  swift_unknownObjectRetain();
  v68 = v93;
  sub_219BF3324();
  v69 = sub_219BF3344();
  v70 = *(*(v69 - 8) + 56);
  v70(v68, 0, 1, v69);
  v71 = sub_219BE7074();

  sub_218DF05B8(v68, sub_219113A7C);
  if ((v71 & 1) == 0)
  {
    return (*(v100 + 8))(v99, v101);
  }

  sub_219BEAF14();
  swift_unknownObjectRetain();
  sub_219BF3324();
  v70(v68, 0, 1, v69);
  sub_218740ED4();
  sub_219BE7034();

  sub_218DF05B8(v68, sub_219113A7C);
  v72 = aBlock;
  if (aBlock == 2)
  {
    return (*(v100 + 8))(v99, v101);
  }

  sub_2192A25B4();
  if (v72)
  {
    v74 = v98;
    v75 = v94;
    if (qword_280E92EC0 != -1)
    {
      swift_once();
    }

    v76 = &qword_280F61968;
  }

  else
  {
    v74 = v98;
    v75 = v94;
    if (qword_27CC083A8 != -1)
    {
      swift_once();
    }

    v76 = &qword_27CCD8880;
  }

  v77 = *v76;
  v78 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v75;
  v80 = objc_allocWithZone(MEMORY[0x277D55070]);
  v81 = v77;
  swift_unknownObjectRetain();
  v82 = v81;

  v83 = sub_219BF53D4();

  v106 = sub_2192A3578;
  v107 = v79;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_218ABA2F4;
  v105 = &block_descriptor_101_1;
  v84 = _Block_copy(&aBlock);

  v85 = [v80 initWithLabel:v83 image:v82 type:1 block:v84];

  _Block_release(v84);

  [v74 addActivity_];

  (*(v100 + 8))(v99, v101);
}

uint64_t sub_2192A14D0(uint64_t a1, void *a2, uint64_t a3)
{
  v25[1] = a3;
  v28 = sub_219BDDB54();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDDA74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v25 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  v29[0] = 0;
  sub_2192A3418(&qword_27CC186B8, MEMORY[0x277D2FBB0]);
  sub_219BF7C64();
  if ([a2 openInBrowser])
  {
    sub_219BDDA54();
    sub_219221B7C(v17, v14);
    v25[0] = v9;
    v20 = *(v11 + 8);
    v20(v14, v10);
    v20(v17, v10);
    v9 = v25[0];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_218718690(Strong + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router, v29);

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v22 = [a2 URL];
  sub_219BDB8B4();

  v23 = v28;
  (*(v4 + 104))(v6, *MEMORY[0x277D2FC50], v28);
  sub_219BDD954();
  (*(v4 + 8))(v6, v23);
  (*(v26 + 8))(v9, v27);
  (*(v11 + 8))(v19, v10);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_2192A188C(uint64_t a1, void *a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [a2 URL];
  sub_219BDB8B4();

  v9 = sub_219BDB854();
  (*(v4 + 8))(v6, v3);
  sub_2194B115C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2192A3418(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey);
  v10 = sub_219BF5204();

  [v7 openURL:v9 options:v10 completionHandler:0];
}

uint64_t sub_2192A1B58(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v6 = sub_219BDDB54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDB954();
  v10 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_218718690(Strong + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router, v17);

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v14 = [a3 URL];
  sub_219BDB8B4();

  (*(v7 + 104))(v9, *a4, v6);
  sub_219BDD964();
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2192A1D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192A2ED0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAF54();
  sub_219BEAB64();
  *v6 = a3;
  v8 = *MEMORY[0x277D33888];
  v9 = sub_219BF2484();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  swift_unknownObjectRetain();
  sub_219BE7094();
  sub_218DF05B8(v6, sub_2192A2ED0);
  swift_unknownObjectRelease();
}

uint64_t sub_2192A1F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192A2E9C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAE24();
  sub_2192A2F04(0);
  v9 = *(v8 + 64);
  v10 = &v6[*(v8 + 80)];
  *v6 = a3;
  v11 = *MEMORY[0x277D33970];
  v12 = sub_219BF25F4();
  (*(*(v12 - 8) + 104))(&v6[v9], v11, v12);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v6 + 1) = sub_218987DA8;
  *(v6 + 2) = 0;
  v13 = *MEMORY[0x277D33958];
  v14 = sub_219BF25E4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  swift_unknownObjectRetain();
  sub_219BE7044();
  sub_218DF05B8(v6, sub_2192A2E9C);
  swift_unknownObjectRelease();
}

uint64_t sub_2192A21AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAF54();
  a4();
  swift_unknownObjectRetain();
  sub_219BE7094();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_2192A22A4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2192A23FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAD94();
  sub_218AD7B00(0);
  v9 = v8;
  v10 = *(v8 - 8);
  (*(v10 + 16))(v6, a3, v8);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_219BE7094();
  sub_218DF05B8(v6, sub_218B24A8C);
  swift_unknownObjectRelease();
}

uint64_t sub_2192A25B4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2192A26F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192A2E9C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAE24();
  sub_2192A3134();
  v9 = *(v8 + 48);
  *v6 = a3;
  v10 = *MEMORY[0x277D33970];
  v11 = sub_219BF25F4();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  v12 = *MEMORY[0x277D33930];
  v13 = sub_219BF25E4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  swift_unknownObjectRetain();
  sub_219BE7044();
  sub_218DF05B8(v6, sub_2192A2E9C);
  swift_unknownObjectRelease();
}

uint64_t sub_2192A2930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2192A30DC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAF54();
  sub_219BEAF44();
  v8 = sub_219BE7394();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a3, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_219BE7094();
  sub_218DF05B8(v6, sub_2192A30DC);
  swift_unknownObjectRelease();
}

uint64_t sub_2192A2AF8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2192A2C20()
{
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BEAF14();
  swift_unknownObjectRetain();
  sub_219BF3324();
  v4 = sub_219BF3344();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_219BE7094();
  sub_218DF05B8(v2, sub_219113A7C);
  swift_unknownObjectRelease();
}

id sub_2192A2DB4()
{
  sub_218718690(v0 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router, v7);
  sub_218718690(v0 + OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_handler, v6);
  v1 = type metadata accessor for ActionPreviewActivity();
  v2 = objc_allocWithZone(v1);
  sub_218718690(v7, v2 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router);
  sub_218718690(v6, v2 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_handler);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v3;
}

void sub_2192A2F04(uint64_t a1)
{
  if (!qword_27CC18688)
  {
    MEMORY[0x28223BE20](a1);
    sub_2186D6710(255, &qword_280E8E260);
    sub_218788800();
    sub_219BF25F4();
    sub_2186E3374();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC18688);
    }
  }
}

void sub_2192A3134()
{
  if (!qword_27CC18698)
  {
    sub_2186D6710(255, &qword_280E8E680);
    sub_219BF25F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18698);
    }
  }
}

uint64_t objectdestroy_3Tm_10(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2192A3344(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t objectdestroy_41Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2192A3418(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2192A3494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2192A357C()
{
  v1 = *(v0 + 288);
  if (v1 == 2)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
    LOBYTE(v1) = sub_219BE0BD4();
    *(v0 + 288) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_2192A35DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v51 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  sub_21880B928();
  v50 = v18;
  v48 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v44 = v5;
    v46 = a2;

    sub_219BDEC74();

    sub_219BEE5E4();
    sub_219BEB294();
    sub_218B588AC(v54);
    v25 = *(v13 + 48);
    if (v25(v11, 1, v51) == 1)
    {
      v43 = v22;
      sub_2192CF630(v11, sub_2188118D4);

      v26 = v47;
      sub_219BDEBD4();

      sub_219BEE5E4();
      sub_219BEB294();
      sub_218B588AC(v55);
      if (v25(v9, 1, v51) == 1)
      {

        v27 = *(v48 + 8);
        v28 = v50;
        v27(v26, v50);
        v27(v43, v28);
        sub_2192CF630(v9, sub_2188118D4);
        v29 = sub_219BE16D4();
        return (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
      }

      else
      {
        v35 = v13;
        v36 = *(v13 + 32);
        v37 = v45;
        v36(v45, v9, v51);
        sub_218718690(v24 + 120, v52);
        v49 = __swift_project_boxed_opaque_existential_1(v52, v53);
        sub_219BE6944();
        type metadata accessor for TodayModel(0);
        sub_2186EB3E8();
        sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
        v38 = sub_219BF00E4();

        __swift_destroy_boxed_opaque_existential_1(v52);
        v39 = sub_219BEDFD4();
        v40 = v44;
        (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
        sub_219689464(v38, v40, 0, v46);

        sub_2192CF630(v40, sub_2192CF5FC);
        (*(v35 + 8))(v37, v51);
        v41 = *(v48 + 8);
        v42 = v50;
        v41(v26, v50);
        return (v41)(v43, v42);
      }
    }

    else
    {
      (*(v13 + 32))(v17, v11, v51);
      sub_218718690(v24 + 120, v52);
      v49 = __swift_project_boxed_opaque_existential_1(v52, v53);
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v32 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v52);
      v33 = sub_219BEDFD4();
      v34 = v44;
      (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
      sub_219689464(v32, v34, 0, v46);

      sub_2192CF630(v34, sub_2192CF5FC);
      (*(v13 + 8))(v17, v51);
      return (*(v48 + 8))(v22, v50);
    }
  }

  else
  {
    v31 = sub_219BE16D4();
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_2192A3DDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  sub_2192CF5FC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE16D4();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v45 - v12;
  sub_2188118D4(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v45 - v22;
  sub_21880B928();
  v24 = v23;
  v54 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v45 = v8;
    v49 = a3;
    v57[0] = *(Strong + 40);
    sub_2187DD900();
    sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
    sub_219BE7B94();
    sub_219BEB354();
    v29 = *(v21 + 48);
    v30 = v29(v16, 1, v20);
    v48 = v24;
    if (v30 == 1)
    {

      sub_219BEE5E4();
      sub_219BEB294();
      sub_218B588AC(v58);
      if (v29(v16, 1, v20) != 1)
      {
        sub_2192CF630(v16, sub_2188118D4);
      }
    }

    else
    {
      (*(v21 + 32))(v18, v16, v20);
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    if (v29(v18, 1, v20) == 1)
    {
      (*(v54 + 8))(v26, v48);

      v32 = sub_2188118D4;
      v33 = v18;
    }

    else
    {
      v34 = v50;
      (*(v21 + 32))(v50, v18, v20);
      sub_218718690(v28 + 120, v57);
      v55 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v56 = v21;
      sub_219BE6944();
      type metadata accessor for TodayModel(0);
      sub_2186EB3E8();
      sub_2187DD9B8(&qword_280EDF9E0, 255, type metadata accessor for TodayModel);
      v35 = v34;
      v36 = sub_219BF00E4();

      __swift_destroy_boxed_opaque_existential_1(v57);
      v37 = sub_219BEDFD4();
      v38 = v51;
      (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
      v39 = v45;
      sub_219689464(v36, v38, 0, v45);
      sub_2192CF630(v38, sub_2192CF5FC);
      v41 = v52;
      v40 = v53;
      if ((*(v52 + 48))(v39, 1, v53) != 1)
      {
        v42 = v47;
        (*(v41 + 32))(v47, v39, v40);
        (*(v41 + 16))(v46, v42, v40);
        a3 = v49;
        sub_219BE0004();

        (*(v41 + 8))(v42, v40);
        (*(v56 + 8))(v35, v20);
        (*(v54 + 8))(v26, v48);
        v31 = 0;
        goto LABEL_13;
      }

      (*(v56 + 8))(v35, v20);
      (*(v54 + 8))(v26, v48);
      v32 = sub_218B58D58;
      v33 = v39;
    }

    sub_2192CF630(v33, v32);
    v31 = 1;
    a3 = v49;
  }

  else
  {
    v31 = 1;
  }

LABEL_13:
  v43 = sub_219BE0014();
  return (*(*(v43 - 8) + 56))(a3, v31, 1, v43);
}

uint64_t sub_2192A45CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  MEMORY[0x28223BE20](v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  sub_21880B928();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = v5;
    v30 = v4;
    v31 = a3;
    v36[0] = *(Strong + 40);
    sub_2187DD900();
    sub_2187DD9B8(&qword_280EE5530, 255, sub_2187DD900);
    sub_219BE7B94();
    sub_219BEB354();
    sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
    v22 = v21;
    v23 = *(v21 - 8);
    v24 = *(v23 + 48);
    if (v24(v12, 1, v21) == 1)
    {

      sub_219BEE5E4();
      sub_219BEB294();
      sub_218B588AC(v36);
      if (v24(v12, 1, v22) != 1)
      {
        sub_2192CF630(v12, sub_2188118D4);
      }
    }

    else
    {
      (*(v23 + 32))(v14, v12, v22);
      (*(v23 + 56))(v14, 0, 1, v22);
    }

    if (v24(v14, 1, v22) == 1)
    {

      sub_2192CF630(v14, sub_2188118D4);
      v25 = 1;
      a3 = v31;
    }

    else
    {
      sub_2192CF630(v14, sub_2188118D4);
      (*(v29 + 104))(v33, *MEMORY[0x277D2F310], v30);
      sub_219BE1484();
      a3 = v31;
      sub_219BDFE44();

      v25 = 0;
    }

    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_219BDFE54();
  return (*(*(v26 - 8) + 56))(a3, v25, 1, v26);
}