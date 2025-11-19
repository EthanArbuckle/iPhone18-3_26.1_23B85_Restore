uint64_t sub_1D710B718(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D710B738, 0, 0);
}

uint64_t sub_1D710B738()
{
  v1 = v0[19];
  v2 = *(v0[20] + 112);
  v0[21] = v2;
  v3 = [v2 tagController];
  v0[22] = v3;
  sub_1D71108AC(0, &qword_1EDF3C5D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v5 = *(v1 + 16);
  v0[23] = v5;
  v6 = *(v1 + 24);
  v0[24] = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  v7 = sub_1D726265C();
  v0[25] = v7;

  v8 = [objc_opt_self() defaultCachePolicy];
  v0[26] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D710B93C;
  v9 = swift_continuation_init();
  sub_1D71108FC();
  v0[17] = v10;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D710CD94;
  v0[13] = &block_descriptor_36;
  v0[14] = v9;
  [v3 fetchTagsForTagIDs:v7 cachePolicy:v8 qualityOfService:25 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D710B93C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D710BBC4;
  }

  else
  {
    v2 = sub_1D710BA4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D710BA4C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);

  if (v3)
  {
    if (*(v3 + 16))
    {
      v4 = sub_1D5B69D90(*(v0 + 184), *(v0 + 192));
      if (v5)
      {
        v6 = *(v0 + 168);
        v7 = *(v0 + 152);
        v8 = *(*(v3 + 56) + 8 * v4);
        swift_unknownObjectRetain();

        v9 = *(v7 + 56);
        v10 = objc_allocWithZone(MEMORY[0x1E69B55D8]);
        v11 = v6;
        v12 = [v10 initWithContext:v11 tag:v8 feedConfiguration:v9];
        swift_unknownObjectRelease();

        v13 = *(v0 + 8);

        return v13(v12);
      }
    }
  }

  sub_1D7110640();
  swift_allocError();
  *v15 = 2;
  swift_willThrow();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D710BBC4()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D710BC4C(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D710BC6C, 0, 0);
}

uint64_t sub_1D710BC6C()
{
  v1 = *(v0[4] + 112);
  v0[5] = v1;
  v2 = [v1 sportsEventController];
  if (v2)
  {
    v3 = v2;
    v0[6] = FCSportsEventController.fetchSportsEvent(for:)(*(v0[3] + 16), *(v0[3] + 24));

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1D710BD4C;
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1D710BD4C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {

    v2 = sub_1D710BE68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D710BE68()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = objc_allocWithZone(MEMORY[0x1E69B55D8]);
  v4 = v1;
  v5 = [v3 initWithContext:v4 tag:v2 feedConfiguration:8];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D710BF1C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v4 = sub_1D7261ACC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D710BFDC, 0, 0);
}

uint64_t sub_1D710BFDC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = *(v0[20] + 112);
  v0[24] = v4;
  v5 = [v4 puzzleTypeController];
  v0[25] = v5;
  v6 = sub_1D726203C();
  v0[26] = v6;
  v7 = [objc_opt_self() defaultCachePolicy];
  v0[27] = v7;
  sub_1D5B5DA7C();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E7F88], v3);
  v8 = sub_1D72630CC();
  v0[28] = v8;
  (*(v2 + 8))(v1, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D710C1DC;
  v9 = swift_continuation_init();
  sub_1D711082C();
  v0[17] = v10;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D710CCC4;
  v0[13] = &block_descriptor_136;
  v0[14] = v9;
  [v5 fetchPuzzleTypeForPuzzleTypeID:v6 cachePolicy:v7 qualityOfService:25 callbackQueue:v8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D710C1DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1D710C3C8;
  }

  else
  {
    v2 = sub_1D710C2EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D710C2EC()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 144);

  v6 = objc_allocWithZone(MEMORY[0x1E69B55D8]);
  v7 = v4;
  v8 = [v6 initWithContext:v7 tag:v5 feedConfiguration:10];
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1D710C3C8()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D710C468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D710C48C, 0, 0);
}

uint64_t sub_1D710C48C()
{
  v1 = *(v0[11] + 64);
  v0[14] = v1;
  if (v1)
  {
    v2 = objc_opt_self();

    v3 = sub_1D726203C();
    LOBYTE(v2) = [v2 isSportsEventIdentifier_];

    if (v2)
    {
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_1D710C888;
      v5 = v0[13];

      return sub_1D710BC4C(v5, v1);
    }

    else
    {
      v8 = objc_opt_self();
      v9 = sub_1D726203C();
      v10 = [v8 isPuzzleTypeIdentifier_];

      if (v10)
      {
        v11 = swift_task_alloc();
        v0[19] = v11;
        *v11 = v0;
        v11[1] = sub_1D710CA10;
        v12 = v0[13];

        return sub_1D710BF1C(v12, v1);
      }

      else
      {
        v13 = swift_task_alloc();
        v0[15] = v13;
        *v13 = v0;
        v13[1] = sub_1D710C700;
        v14 = v0[13];

        return sub_1D710B718(v14, v1);
      }
    }
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1D710C700(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = sub_1D710CB98;
  }

  else
  {
    v4 = sub_1D710C81C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D710C81C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D710C888(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_1D710CBFC;
  }

  else
  {
    v4 = sub_1D710C9A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D710C9A4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D710CA10(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_1D710CC60;
  }

  else
  {
    v4 = sub_1D710CB2C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D710CB2C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D710CB98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710CBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710CC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710CCC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1D5BA6EF4();
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  **(v7[8] + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_throwingResume();
}

uint64_t sub_1D710CD94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D5BA6EF4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_1D5B5534C(0, &qword_1EDF3C770);
      v9 = sub_1D7261D3C();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D710CE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[172] = v6;
  v7[171] = a6;
  v7[170] = a5;
  v7[169] = a2;
  v7[168] = a1;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5BB1670(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v7[173] = swift_task_alloc();
  v11 = sub_1D72608BC();
  v7[174] = v11;
  v7[175] = *(v11 - 8);
  v7[176] = swift_task_alloc();
  type metadata accessor for FeedRecipe();
  v7[177] = swift_task_alloc();
  type metadata accessor for FeedHeadline(0);
  v7[178] = swift_task_alloc();
  sub_1D5BB1670(0, qword_1EDF12C58, type metadata accessor for FeedWeather, v10);
  v7[179] = swift_task_alloc();
  v12 = type metadata accessor for FeedWeather(0);
  v7[180] = v12;
  v7[181] = *(v12 - 8);
  v7[182] = swift_task_alloc();
  v7[183] = type metadata accessor for FeedGroupItem();
  v7[184] = swift_task_alloc();
  v7[185] = swift_task_alloc();
  v7[186] = *(a3 + 40);
  v7[187] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D710D128, 0, 0);
}

uint64_t sub_1D710D128()
{
  v147 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1352);
  *(v0 + 1336) = MEMORY[0x1E69E7CD0];
  v5 = type metadata accessor for FormatContent.Resolved();
  *(v0 + 1504) = v5;
  *v3 = *(v4 + v5[11]);
  v3[1] = v1;
  swift_storeEnumTagMultiPayload();

  sub_1D5D5087C(v2, v3);
  sub_1D5CED8B0(v2, type metadata accessor for FeedGroupItem);
  v6 = *(v4 + v5[13]);
  *(v0 + 1512) = v6;
  if (!v6)
  {
LABEL_4:
    v13 = *(v0 + 1496);
    if (v13)
    {
      v14 = *(v0 + 1480);
      v15 = *(v0 + 1472);
      *v15 = v13;
      swift_storeEnumTagMultiPayload();
      v16 = v13;
      sub_1D5D5087C(v14, v15);
      sub_1D5CED8B0(v14, type metadata accessor for FeedGroupItem);
      v17 = v16;
      v18 = FCFeedDescriptor.feedTag.getter();

      v19 = [v18 asSportsEvent];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = *(v0 + 1480);
        v21 = *(v0 + 1472);
        v22 = [swift_unknownObjectRetain() identifier];
        v23 = sub_1D726207C();
        v25 = v24;

        *v21 = v23;
        *(v21 + 8) = v25;
        *(v21 + 16) = v19;
        *(v21 + 24) = 0;
        *(v21 + 32) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1D5D5087C(v20, v21);
        swift_unknownObjectRelease();

        sub_1D5CED8B0(v20, type metadata accessor for FeedGroupItem);
      }

      else
      {
      }
    }

    v32 = *(v0 + 1504);
    v33 = *(v0 + 1352);
    v34 = *(v33 + *(v32 + 56));
    if (v34)
    {
      v35 = v0 + 1048;
      v36 = *(v0 + 1480);
      v37 = *(v0 + 1472);
      v38 = *(v0 + 1368);
      v39 = *(v0 + 1360);
      v40 = v34;
      sub_1D67530D0(v40, v39, v38, v0 + 1048);
      *v37 = *(v0 + 1048);
      v41 = *(v0 + 1064);
      v42 = *(v0 + 1080);
      v43 = *(v0 + 1112);
      v37[3] = *(v0 + 1096);
      v37[4] = v43;
      v37[1] = v41;
      v37[2] = v42;
      v44 = *(v0 + 1128);
      v45 = *(v0 + 1144);
      v46 = *(v0 + 1160);
      *(v37 + 121) = *(v0 + 1169);
      v37[6] = v45;
      v37[7] = v46;
      v37[5] = v44;
      swift_storeEnumTagMultiPayload();
      v47 = v0 + 1192;
    }

    else
    {
      v122 = *(v33 + *(v32 + 60));
      if (!v122)
      {
        goto LABEL_14;
      }

      if (([v122 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_14;
      }

      v123 = [v122 parentIssue];
      if (!v123)
      {
        goto LABEL_14;
      }

      v40 = v123;
      v35 = v0 + 760;
      v36 = *(v0 + 1480);
      v37 = *(v0 + 1472);
      sub_1D67530D0(v123, *(v0 + 1360), *(v0 + 1368), v0 + 760);
      *v37 = *(v0 + 760);
      v124 = *(v0 + 776);
      v125 = *(v0 + 792);
      v126 = *(v0 + 824);
      v37[3] = *(v0 + 808);
      v37[4] = v126;
      v37[1] = v124;
      v37[2] = v125;
      v127 = *(v0 + 840);
      v128 = *(v0 + 856);
      v129 = *(v0 + 872);
      *(v37 + 121) = *(v0 + 881);
      v37[6] = v128;
      v37[7] = v129;
      v37[5] = v127;
      swift_storeEnumTagMultiPayload();
      v47 = v0 + 904;
    }

    sub_1D5ECF2C4(v35, v47);
    sub_1D5D5087C(v36, v37);

    sub_1D5ECF320(v35);
    sub_1D5CED8B0(v36, type metadata accessor for FeedGroupItem);
LABEL_14:
    v48 = *(v0 + 1504);
    v49 = *(v0 + 1352);
    if (*(v49 + *(v48 + 60)))
    {
      v50 = *(v0 + 1480);
      v51 = *(v0 + 1472);
      v52 = *(v0 + 1424);
      v53 = *(v0 + 1368);
      v54 = *(v0 + 1360);
      v55 = swift_unknownObjectRetain();
      sub_1D6752DBC(v55, v54, v53, v52);
      sub_1D7110060(v52, v51, type metadata accessor for FeedHeadline);
      swift_storeEnumTagMultiPayload();
      sub_1D5D5087C(v50, v51);
      swift_unknownObjectRelease();
      sub_1D5CED8B0(v50, type metadata accessor for FeedGroupItem);
      sub_1D5CED8B0(v52, type metadata accessor for FeedHeadline);
      v48 = *(v0 + 1504);
      v49 = *(v0 + 1352);
    }

    v56 = *(v49 + *(v48 + 68));
    if (v56)
    {
      v57 = *(v0 + 1480);
      v58 = *(v0 + 1472);
      v59 = *(v0 + 1416);
      v60 = *(v0 + 1368);
      v61 = *(v0 + 1360);
      v62 = v56;
      sub_1D6753620(v62, v61, v60, v59);
      sub_1D7110060(v59, v58, type metadata accessor for FeedRecipe);
      swift_storeEnumTagMultiPayload();
      sub_1D5D5087C(v57, v58);

      sub_1D5CED8B0(v57, type metadata accessor for FeedGroupItem);
      sub_1D5CED8B0(v59, type metadata accessor for FeedRecipe);
    }

    v63 = *(v0 + 1344);
    v64 = (v63 + *(type metadata accessor for DebugFormatBindingRequest() + 28));
    v65 = v64[13];
    v66 = v64[14];
    v67 = v64[11];
    v143 = v64[12];
    v144 = v65;
    v145 = v66;
    v68 = v64[9];
    v69 = v64[10];
    v70 = v64[7];
    v139 = v64[8];
    v140 = v68;
    v141 = v69;
    v142 = v67;
    v71 = v64[5];
    v72 = v64[6];
    v73 = v64[3];
    v135 = v64[4];
    v136 = v71;
    v137 = v72;
    v138 = v70;
    v74 = v64[1];
    v75 = v64[3];
    v133 = v64[2];
    v134 = v75;
    v76 = v64[1];
    v131 = *v64;
    v77 = v131;
    v132 = v76;
    v146 = *(v64 + 30);
    *(v0 + 48) = v133;
    *(v0 + 64) = v73;
    *(v0 + 16) = v77;
    *(v0 + 32) = v74;
    v78 = v64[4];
    v79 = v64[5];
    v80 = v64[7];
    *(v0 + 112) = v64[6];
    *(v0 + 128) = v80;
    *(v0 + 80) = v78;
    *(v0 + 96) = v79;
    v81 = v64[8];
    v82 = v64[9];
    v83 = v64[11];
    *(v0 + 176) = v64[10];
    *(v0 + 192) = v83;
    *(v0 + 144) = v81;
    *(v0 + 160) = v82;
    v84 = v64[12];
    v85 = v64[13];
    v86 = v64[14];
    *(v0 + 256) = *(v64 + 30);
    *(v0 + 224) = v85;
    *(v0 + 240) = v86;
    *(v0 + 208) = v84;
    if (sub_1D5DEA380(v0 + 16) != 1)
    {
      v87 = *(v0 + 1480);
      v88 = *(v0 + 1472);
      v89 = *(v0 + 128);
      v91 = *(v0 + 80);
      v90 = *(v0 + 96);
      *(v88 + 96) = *(v0 + 112);
      *(v88 + 112) = v89;
      *(v88 + 64) = v91;
      *(v88 + 80) = v90;
      v92 = *(v0 + 192);
      v94 = *(v0 + 144);
      v93 = *(v0 + 160);
      *(v88 + 160) = *(v0 + 176);
      *(v88 + 176) = v92;
      *(v88 + 128) = v94;
      *(v88 + 144) = v93;
      v96 = *(v0 + 224);
      v95 = *(v0 + 240);
      v97 = *(v0 + 208);
      *(v88 + 240) = *(v0 + 256);
      *(v88 + 208) = v96;
      *(v88 + 224) = v95;
      *(v88 + 192) = v97;
      v98 = *(v0 + 16);
      v99 = *(v0 + 32);
      v100 = *(v0 + 64);
      *(v88 + 32) = *(v0 + 48);
      *(v88 + 48) = v100;
      *v88 = v98;
      *(v88 + 16) = v99;
      swift_storeEnumTagMultiPayload();
      v101 = v144;
      *(v0 + 456) = v143;
      *(v0 + 472) = v101;
      *(v0 + 488) = v145;
      *(v0 + 504) = v146;
      v102 = v140;
      *(v0 + 392) = v139;
      *(v0 + 408) = v102;
      v103 = v142;
      *(v0 + 424) = v141;
      *(v0 + 440) = v103;
      v104 = v136;
      *(v0 + 328) = v135;
      *(v0 + 344) = v104;
      v105 = v138;
      *(v0 + 360) = v137;
      *(v0 + 376) = v105;
      v106 = v132;
      *(v0 + 264) = v131;
      *(v0 + 280) = v106;
      v107 = v134;
      *(v0 + 296) = v133;
      *(v0 + 312) = v107;
      sub_1D62DAD08(v0 + 264, v0 + 512);
      sub_1D5D5087C(v87, v88);
      sub_1D5CED8B0(v87, type metadata accessor for FeedGroupItem);
    }

    v108 = *(v0 + 1400);
    v109 = *(v0 + 1392);
    v110 = *(v0 + 1384);
    sub_1D606BE74(*(v0 + 1352) + *(*(v0 + 1504) + 84), v110);
    if ((*(v108 + 48))(v110, 1, v109) == 1)
    {
      sub_1D7110598(*(v0 + 1384), &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }

    else
    {
      v111 = *(v0 + 1480);
      v112 = *(v0 + 1472);
      v113 = *(v0 + 1408);
      v114 = *(v0 + 1400);
      v115 = *(v0 + 1392);
      (*(v114 + 32))(v113, *(v0 + 1384), v115);
      v116 = sub_1D726084C();
      v118 = v117;
      v119 = type metadata accessor for FeedSponsorshipBannerAd();
      (*(v114 + 16))(v112 + *(v119 + 20), v113, v115);
      *v112 = v116;
      v112[1] = v118;
      swift_storeEnumTagMultiPayload();
      sub_1D5D5087C(v111, v112);
      sub_1D5CED8B0(v111, type metadata accessor for FeedGroupItem);
      (*(v114 + 8))(v113, v115);
    }

    v120 = *(v0 + 1336);

    v121 = *(v0 + 8);

    return v121(v120);
  }

  v7 = *(v0 + 1480);
  v8 = *(v0 + 1472);
  v9 = *(v0 + 1352);
  v10 = *(v9 + v5[18]);
  *(v0 + 1520) = v10;
  LOBYTE(v9) = *(v9 + v5[19]);
  *v8 = v6;
  v3[1] = v10;
  *(v8 + 16) = v9;
  swift_storeEnumTagMultiPayload();
  v11 = v10;
  swift_unknownObjectRetain_n();
  v12 = v11;
  sub_1D5D5087C(v7, v8);
  sub_1D5CED8B0(v7, type metadata accessor for FeedGroupItem);
  swift_getObjectType();
  sub_1D710FD1C(&v131);
  if (v132)
  {
    swift_unknownObjectRelease_n();

    goto LABEL_4;
  }

  v26 = *(v0 + 1376);
  v27 = v131;
  v28 = v26[10];
  v29 = v26[11];
  __swift_project_boxed_opaque_existential_1(v26 + 7, v28);
  v131 = v27;
  *(v0 + 1528) = (*(v29 + 8))(&v131, v28, v29);
  v30 = swift_task_alloc();
  *(v0 + 1536) = v30;
  *v30 = v0;
  v30[1] = sub_1D710DB38;
  v31 = *(v0 + 1432);

  return MEMORY[0x1EEE44EE0](v31);
}

uint64_t sub_1D710DB38()
{

  if (v0)
  {

    v1 = sub_1D710E560;
  }

  else
  {

    v1 = sub_1D710DC80;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D710DC80()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1456);
  v5 = *(v0 + 1432);
  v6 = *(v0 + 1344);
  (*(*(v0 + 1448) + 56))(v5, 0, 1, *(v0 + 1440));
  sub_1D71100C8(v5, v4, type metadata accessor for FeedWeather);
  v7 = type metadata accessor for DebugFormatBindingRequest();
  sub_1D6F4C574(v4, *(v6 + *(v7 + 24)), v3);
  swift_storeEnumTagMultiPayload();
  sub_1D5D5087C(v2, v3);
  swift_unknownObjectRelease_n();

  sub_1D5CED8B0(v2, type metadata accessor for FeedGroupItem);
  sub_1D5CED8B0(v4, type metadata accessor for FeedWeather);
  v8 = *(v0 + 1496);
  if (v8)
  {
    v9 = *(v0 + 1480);
    v10 = *(v0 + 1472);
    *v10 = v8;
    swift_storeEnumTagMultiPayload();
    v11 = v8;
    sub_1D5D5087C(v9, v10);
    sub_1D5CED8B0(v9, type metadata accessor for FeedGroupItem);
    v12 = v11;
    v13 = FCFeedDescriptor.feedTag.getter();

    v14 = [v13 asSportsEvent];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = *(v0 + 1480);
      v16 = *(v0 + 1472);
      v17 = [swift_unknownObjectRetain() identifier];
      v18 = sub_1D726207C();
      v20 = v19;

      *v16 = v18;
      *(v16 + 8) = v20;
      *(v16 + 16) = v14;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D5087C(v15, v16);
      swift_unknownObjectRelease();

      sub_1D5CED8B0(v15, type metadata accessor for FeedGroupItem);
    }

    else
    {
    }
  }

  v21 = *(v0 + 1504);
  v22 = *(v0 + 1352);
  v23 = *(v22 + *(v21 + 56));
  if (v23)
  {
    v24 = v0 + 1048;
    v25 = *(v0 + 1480);
    v26 = *(v0 + 1472);
    v27 = *(v0 + 1368);
    v28 = *(v0 + 1360);
    v29 = v23;
    sub_1D67530D0(v29, v28, v27, v0 + 1048);
    *v26 = *(v0 + 1048);
    v30 = *(v0 + 1064);
    v31 = *(v0 + 1080);
    v32 = *(v0 + 1112);
    v26[3] = *(v0 + 1096);
    v26[4] = v32;
    v26[1] = v30;
    v26[2] = v31;
    v33 = *(v0 + 1128);
    v34 = *(v0 + 1144);
    v35 = *(v0 + 1160);
    *(v26 + 121) = *(v0 + 1169);
    v26[6] = v34;
    v26[7] = v35;
    v26[5] = v33;
    swift_storeEnumTagMultiPayload();
    v36 = v0 + 1192;
LABEL_7:
    sub_1D5ECF2C4(v24, v36);
    sub_1D5D5087C(v25, v26);

    sub_1D5ECF320(v24);
    sub_1D5CED8B0(v25, type metadata accessor for FeedGroupItem);
    goto LABEL_8;
  }

  v93 = *(v22 + *(v21 + 60));
  if (v93)
  {
    if ([v93 respondsToSelector_])
    {
      v94 = [v93 parentIssue];
      if (v94)
      {
        v29 = v94;
        v24 = v0 + 760;
        v25 = *(v0 + 1480);
        v26 = *(v0 + 1472);
        sub_1D67530D0(v94, *(v0 + 1360), *(v0 + 1368), v0 + 760);
        *v26 = *(v0 + 760);
        v95 = *(v0 + 776);
        v96 = *(v0 + 792);
        v97 = *(v0 + 824);
        v26[3] = *(v0 + 808);
        v26[4] = v97;
        v26[1] = v95;
        v26[2] = v96;
        v98 = *(v0 + 840);
        v99 = *(v0 + 856);
        v100 = *(v0 + 872);
        *(v26 + 121) = *(v0 + 881);
        v26[6] = v99;
        v26[7] = v100;
        v26[5] = v98;
        swift_storeEnumTagMultiPayload();
        v36 = v0 + 904;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v37 = *(v0 + 1504);
  v38 = *(v0 + 1352);
  if (*(v38 + *(v37 + 60)))
  {
    v39 = *(v0 + 1480);
    v40 = *(v0 + 1472);
    v41 = *(v0 + 1424);
    v42 = *(v0 + 1368);
    v43 = *(v0 + 1360);
    v44 = swift_unknownObjectRetain();
    sub_1D6752DBC(v44, v43, v42, v41);
    sub_1D7110060(v41, v40, type metadata accessor for FeedHeadline);
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v39, v40);
    swift_unknownObjectRelease();
    sub_1D5CED8B0(v39, type metadata accessor for FeedGroupItem);
    sub_1D5CED8B0(v41, type metadata accessor for FeedHeadline);
    v37 = *(v0 + 1504);
    v38 = *(v0 + 1352);
  }

  v45 = *(v38 + *(v37 + 68));
  if (v45)
  {
    v46 = *(v0 + 1480);
    v47 = *(v0 + 1472);
    v48 = *(v0 + 1416);
    v49 = *(v0 + 1368);
    v50 = *(v0 + 1360);
    v51 = v45;
    sub_1D6753620(v51, v50, v49, v48);
    sub_1D7110060(v48, v47, type metadata accessor for FeedRecipe);
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v46, v47);

    sub_1D5CED8B0(v46, type metadata accessor for FeedGroupItem);
    sub_1D5CED8B0(v48, type metadata accessor for FeedRecipe);
  }

  v52 = (*(v0 + 1344) + *(v7 + 28));
  v113 = v52[12];
  v114 = v52[13];
  v115 = v52[14];
  v109 = v52[8];
  v110 = v52[9];
  v111 = v52[10];
  v112 = v52[11];
  v53 = v52[3];
  v105 = v52[4];
  v106 = v52[5];
  v107 = v52[6];
  v108 = v52[7];
  v101 = *v52;
  v102 = v52[1];
  v54 = *v52;
  v103 = v52[2];
  v104 = v53;
  v116 = *(v52 + 30);
  *(v0 + 48) = v103;
  *(v0 + 64) = v53;
  *(v0 + 16) = v54;
  *(v0 + 32) = v102;
  v55 = v52[4];
  v56 = v52[5];
  v57 = v52[7];
  *(v0 + 112) = v52[6];
  *(v0 + 128) = v57;
  *(v0 + 80) = v55;
  *(v0 + 96) = v56;
  v58 = v52[8];
  v59 = v52[9];
  v60 = v52[11];
  *(v0 + 176) = v52[10];
  *(v0 + 192) = v60;
  *(v0 + 144) = v58;
  *(v0 + 160) = v59;
  v61 = v52[12];
  v62 = v52[13];
  v63 = v52[14];
  *(v0 + 256) = *(v52 + 30);
  *(v0 + 224) = v62;
  *(v0 + 240) = v63;
  *(v0 + 208) = v61;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v64 = *(v0 + 1480);
    v65 = *(v0 + 1472);
    v66 = *(v0 + 128);
    v68 = *(v0 + 80);
    v67 = *(v0 + 96);
    *(v65 + 96) = *(v0 + 112);
    *(v65 + 112) = v66;
    *(v65 + 64) = v68;
    *(v65 + 80) = v67;
    v69 = *(v0 + 192);
    v71 = *(v0 + 144);
    v70 = *(v0 + 160);
    *(v65 + 160) = *(v0 + 176);
    *(v65 + 176) = v69;
    *(v65 + 128) = v71;
    *(v65 + 144) = v70;
    v73 = *(v0 + 224);
    v72 = *(v0 + 240);
    v74 = *(v0 + 208);
    *(v65 + 240) = *(v0 + 256);
    *(v65 + 208) = v73;
    *(v65 + 224) = v72;
    *(v65 + 192) = v74;
    v75 = *(v0 + 16);
    v76 = *(v0 + 32);
    v77 = *(v0 + 64);
    *(v65 + 32) = *(v0 + 48);
    *(v65 + 48) = v77;
    *v65 = v75;
    *(v65 + 16) = v76;
    swift_storeEnumTagMultiPayload();
    *(v0 + 456) = v113;
    *(v0 + 472) = v114;
    *(v0 + 488) = v115;
    *(v0 + 504) = v116;
    *(v0 + 392) = v109;
    *(v0 + 408) = v110;
    *(v0 + 424) = v111;
    *(v0 + 440) = v112;
    *(v0 + 328) = v105;
    *(v0 + 344) = v106;
    *(v0 + 360) = v107;
    *(v0 + 376) = v108;
    *(v0 + 264) = v101;
    *(v0 + 280) = v102;
    *(v0 + 296) = v103;
    *(v0 + 312) = v104;
    sub_1D62DAD08(v0 + 264, v0 + 512);
    sub_1D5D5087C(v64, v65);
    sub_1D5CED8B0(v64, type metadata accessor for FeedGroupItem);
  }

  v78 = *(v0 + 1400);
  v79 = *(v0 + 1392);
  v80 = *(v0 + 1384);
  sub_1D606BE74(*(v0 + 1352) + *(*(v0 + 1504) + 84), v80);
  if ((*(v78 + 48))(v80, 1, v79) == 1)
  {
    sub_1D7110598(*(v0 + 1384), &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    v81 = *(v0 + 1480);
    v82 = *(v0 + 1472);
    v83 = *(v0 + 1408);
    v84 = *(v0 + 1400);
    v85 = *(v0 + 1392);
    (*(v84 + 32))(v83, *(v0 + 1384), v85);
    v86 = sub_1D726084C();
    v88 = v87;
    v89 = type metadata accessor for FeedSponsorshipBannerAd();
    (*(v84 + 16))(v82 + *(v89 + 20), v83, v85);
    *v82 = v86;
    v82[1] = v88;
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v81, v82);
    sub_1D5CED8B0(v81, type metadata accessor for FeedGroupItem);
    (*(v84 + 8))(v83, v85);
  }

  v90 = *(v0 + 1336);

  v91 = *(v0 + 8);

  return v91(v90);
}

uint64_t sub_1D710E560()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);

  swift_unknownObjectRelease_n();
  (*(v1 + 56))(v3, 1, 1, v2);
  sub_1D7110598(v3, qword_1EDF12C58, type metadata accessor for FeedWeather);
  v4 = *(v0 + 1496);
  if (v4)
  {
    v5 = *(v0 + 1480);
    v6 = *(v0 + 1472);
    *v6 = v4;
    swift_storeEnumTagMultiPayload();
    v7 = v4;
    sub_1D5D5087C(v5, v6);
    sub_1D5CED8B0(v5, type metadata accessor for FeedGroupItem);
    v8 = v7;
    v9 = FCFeedDescriptor.feedTag.getter();

    v10 = [v9 asSportsEvent];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = *(v0 + 1480);
      v12 = *(v0 + 1472);
      v13 = [swift_unknownObjectRetain() identifier];
      v14 = sub_1D726207C();
      v16 = v15;

      *v12 = v14;
      *(v12 + 8) = v16;
      *(v12 + 16) = v10;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D5087C(v11, v12);
      swift_unknownObjectRelease();

      sub_1D5CED8B0(v11, type metadata accessor for FeedGroupItem);
    }

    else
    {
    }
  }

  v17 = *(v0 + 1504);
  v18 = *(v0 + 1352);
  v19 = *(v18 + *(v17 + 56));
  if (v19)
  {
    v20 = v0 + 1048;
    v21 = *(v0 + 1480);
    v22 = *(v0 + 1472);
    v23 = *(v0 + 1368);
    v24 = *(v0 + 1360);
    v25 = v19;
    sub_1D67530D0(v25, v24, v23, v0 + 1048);
    *v22 = *(v0 + 1048);
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1080);
    v28 = *(v0 + 1112);
    v22[3] = *(v0 + 1096);
    v22[4] = v28;
    v22[1] = v26;
    v22[2] = v27;
    v29 = *(v0 + 1128);
    v30 = *(v0 + 1144);
    v31 = *(v0 + 1160);
    *(v22 + 121) = *(v0 + 1169);
    v22[6] = v30;
    v22[7] = v31;
    v22[5] = v29;
    swift_storeEnumTagMultiPayload();
    v32 = v0 + 1192;
LABEL_7:
    sub_1D5ECF2C4(v20, v32);
    sub_1D5D5087C(v21, v22);

    sub_1D5ECF320(v20);
    sub_1D5CED8B0(v21, type metadata accessor for FeedGroupItem);
    goto LABEL_8;
  }

  v91 = *(v18 + *(v17 + 60));
  if (v91)
  {
    if ([v91 respondsToSelector_])
    {
      v92 = [v91 parentIssue];
      if (v92)
      {
        v25 = v92;
        v20 = v0 + 760;
        v21 = *(v0 + 1480);
        v22 = *(v0 + 1472);
        sub_1D67530D0(v92, *(v0 + 1360), *(v0 + 1368), v0 + 760);
        *v22 = *(v0 + 760);
        v93 = *(v0 + 776);
        v94 = *(v0 + 792);
        v95 = *(v0 + 824);
        v22[3] = *(v0 + 808);
        v22[4] = v95;
        v22[1] = v93;
        v22[2] = v94;
        v96 = *(v0 + 840);
        v97 = *(v0 + 856);
        v98 = *(v0 + 872);
        *(v22 + 121) = *(v0 + 881);
        v22[6] = v97;
        v22[7] = v98;
        v22[5] = v96;
        swift_storeEnumTagMultiPayload();
        v32 = v0 + 904;
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v33 = *(v0 + 1504);
  v34 = *(v0 + 1352);
  if (*(v34 + *(v33 + 60)))
  {
    v35 = *(v0 + 1480);
    v36 = *(v0 + 1472);
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1368);
    v39 = *(v0 + 1360);
    v40 = swift_unknownObjectRetain();
    sub_1D6752DBC(v40, v39, v38, v37);
    sub_1D7110060(v37, v36, type metadata accessor for FeedHeadline);
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v35, v36);
    swift_unknownObjectRelease();
    sub_1D5CED8B0(v35, type metadata accessor for FeedGroupItem);
    sub_1D5CED8B0(v37, type metadata accessor for FeedHeadline);
    v33 = *(v0 + 1504);
    v34 = *(v0 + 1352);
  }

  v41 = *(v34 + *(v33 + 68));
  if (v41)
  {
    v42 = *(v0 + 1480);
    v43 = *(v0 + 1472);
    v44 = *(v0 + 1416);
    v45 = *(v0 + 1368);
    v46 = *(v0 + 1360);
    v47 = v41;
    sub_1D6753620(v47, v46, v45, v44);
    sub_1D7110060(v44, v43, type metadata accessor for FeedRecipe);
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v42, v43);

    sub_1D5CED8B0(v42, type metadata accessor for FeedGroupItem);
    sub_1D5CED8B0(v44, type metadata accessor for FeedRecipe);
  }

  v48 = *(v0 + 1344);
  v49 = (v48 + *(type metadata accessor for DebugFormatBindingRequest() + 28));
  v111 = v49[12];
  v112 = v49[13];
  v113 = v49[14];
  v107 = v49[8];
  v108 = v49[9];
  v109 = v49[10];
  v110 = v49[11];
  v50 = v49[3];
  v103 = v49[4];
  v104 = v49[5];
  v105 = v49[6];
  v106 = v49[7];
  v51 = v49[1];
  v101 = v49[2];
  v102 = v50;
  v99 = *v49;
  v52 = *v49;
  v100 = v51;
  v114 = *(v49 + 30);
  *(v0 + 48) = v101;
  *(v0 + 64) = v50;
  *(v0 + 16) = v52;
  *(v0 + 32) = v51;
  v53 = v49[4];
  v54 = v49[5];
  v55 = v49[7];
  *(v0 + 112) = v49[6];
  *(v0 + 128) = v55;
  *(v0 + 80) = v53;
  *(v0 + 96) = v54;
  v56 = v49[8];
  v57 = v49[9];
  v58 = v49[11];
  *(v0 + 176) = v49[10];
  *(v0 + 192) = v58;
  *(v0 + 144) = v56;
  *(v0 + 160) = v57;
  v59 = v49[12];
  v60 = v49[13];
  v61 = v49[14];
  *(v0 + 256) = *(v49 + 30);
  *(v0 + 224) = v60;
  *(v0 + 240) = v61;
  *(v0 + 208) = v59;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v62 = *(v0 + 1480);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 128);
    v66 = *(v0 + 80);
    v65 = *(v0 + 96);
    *(v63 + 96) = *(v0 + 112);
    *(v63 + 112) = v64;
    *(v63 + 64) = v66;
    *(v63 + 80) = v65;
    v67 = *(v0 + 192);
    v69 = *(v0 + 144);
    v68 = *(v0 + 160);
    *(v63 + 160) = *(v0 + 176);
    *(v63 + 176) = v67;
    *(v63 + 128) = v69;
    *(v63 + 144) = v68;
    v71 = *(v0 + 224);
    v70 = *(v0 + 240);
    v72 = *(v0 + 208);
    *(v63 + 240) = *(v0 + 256);
    *(v63 + 208) = v71;
    *(v63 + 224) = v70;
    *(v63 + 192) = v72;
    v73 = *(v0 + 16);
    v74 = *(v0 + 32);
    v75 = *(v0 + 64);
    *(v63 + 32) = *(v0 + 48);
    *(v63 + 48) = v75;
    *v63 = v73;
    *(v63 + 16) = v74;
    swift_storeEnumTagMultiPayload();
    *(v0 + 456) = v111;
    *(v0 + 472) = v112;
    *(v0 + 488) = v113;
    *(v0 + 504) = v114;
    *(v0 + 392) = v107;
    *(v0 + 408) = v108;
    *(v0 + 424) = v109;
    *(v0 + 440) = v110;
    *(v0 + 328) = v103;
    *(v0 + 344) = v104;
    *(v0 + 360) = v105;
    *(v0 + 376) = v106;
    *(v0 + 264) = v99;
    *(v0 + 280) = v100;
    *(v0 + 296) = v101;
    *(v0 + 312) = v102;
    sub_1D62DAD08(v0 + 264, v0 + 512);
    sub_1D5D5087C(v62, v63);
    sub_1D5CED8B0(v62, type metadata accessor for FeedGroupItem);
  }

  v76 = *(v0 + 1400);
  v77 = *(v0 + 1392);
  v78 = *(v0 + 1384);
  sub_1D606BE74(*(v0 + 1352) + *(*(v0 + 1504) + 84), v78);
  if ((*(v76 + 48))(v78, 1, v77) == 1)
  {
    sub_1D7110598(*(v0 + 1384), &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    v79 = *(v0 + 1480);
    v80 = *(v0 + 1472);
    v81 = *(v0 + 1408);
    v82 = *(v0 + 1400);
    v83 = *(v0 + 1392);
    (*(v82 + 32))(v81, *(v0 + 1384), v83);
    v84 = sub_1D726084C();
    v86 = v85;
    v87 = type metadata accessor for FeedSponsorshipBannerAd();
    (*(v82 + 16))(v80 + *(v87 + 20), v81, v83);
    *v80 = v84;
    v80[1] = v86;
    swift_storeEnumTagMultiPayload();
    sub_1D5D5087C(v79, v80);
    sub_1D5CED8B0(v79, type metadata accessor for FeedGroupItem);
    (*(v82 + 8))(v81, v83);
  }

  v88 = *(v0 + 1336);

  v89 = *(v0 + 8);

  return v89(v88);
}

id sub_1D710EDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v143 = a2;
  v144 = a3;
  v145 = a1;
  v146 = a4;
  v4 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v139 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v138 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v137 = (&v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v136 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v135 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D71106EC(0, &unk_1EC89B010, sub_1D5FC4AE8, sub_1D5FC4B3C);
  v140 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v133 - v21;
  sub_1D71106EC(0, &qword_1EDF12FF8, sub_1D5FC49B0, sub_1D5FC4A04);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v133 - v25;
  v27 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = (&v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D71106EC(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984);
  v134 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v133 - v37;
  v39 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v141 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v133 - v44;
  v46 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v133 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = (&v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7110060(v145, v53, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v112 = *v53;
        v113 = v139;
        sub_1D6753620(*v53, v143, v144, v139);

        v55 = v146;
        sub_1D71100C8(v113, v146, type metadata accessor for FeedRecipe);
        v59 = type metadata accessor for FeedItem(0);
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          sub_1D5CED8B0(v53, type metadata accessor for FormatContentSlotItemObject.Resolved);
          v124 = type metadata accessor for FeedItem(0);
          return (*(*(v124 - 8) + 56))(v146, 1, 1, v124);
        }

        v56 = v137;
        sub_1D71100C8(v53, v137, type metadata accessor for FormatCustomItem.Resolved);
        v57 = v138;
        sub_1D6753D08(v56, v143, v144, v138);
        sub_1D5CED8B0(v56, type metadata accessor for FormatCustomItem.Resolved);
        v58 = v57;
        v55 = v146;
        sub_1D71100C8(v58, v146, type metadata accessor for FeedCustomItem);
        v59 = type metadata accessor for FeedItem(0);
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v60 = *v53;
      v61 = *(*(v142 + 96) + 32);
      ObjectType = swift_getObjectType();
      v63 = v141;
      FeedContextFactoryType.createFeedContext()(ObjectType, v61);
      v64 = MEMORY[0x1E69E6158];
      sub_1D71108AC(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1D7270C10;
      *(v65 + 32) = v143;
      *(v65 + 40) = v144;

      v66 = [v60 identifier];
      v67 = sub_1D726207C();
      v69 = v68;

      *(v65 + 48) = v67;
      *(v65 + 56) = v69;
      *&v147 = v65;
      sub_1D71108AC(0, &qword_1EDF43BA0, v64, MEMORY[0x1E69E62F8]);
      sub_1D7110694(&qword_1EDF3C840, &qword_1EDF43BA0, v64);
      v70 = sub_1D7261F3C();
      v72 = v71;

      v73 = v140;
      sub_1D71100C8(v63, &v22[*(v140 + 52)], type metadata accessor for FeedContext);
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 1;
      *(v22 + 17) = v160[0];
      *(v22 + 5) = *(v160 + 3);
      *(v22 + 24) = xmmword_1D728A8E0;
      *(v22 + 5) = v70;
      *(v22 + 6) = v72;
      *(v22 + 7) = v60;
      v74 = &v22[*(v73 + 56)];
      *v74 = 0;
      *(v74 + 1) = 0;
      v75 = &v22[*(v73 + 64)];
      *v75 = sub_1D5C00104;
      v75[1] = 0;
      v76 = *v22;
      v77 = *(v22 + 1);
      v78 = *(v22 + 3);
      v149 = *(v22 + 2);
      v150 = v78;
      v147 = v76;
      v148 = v77;
      sub_1D63071F4(&v147, v159);
      sub_1D711077C(v22, &unk_1EC89B010, sub_1D5FC4AE8, sub_1D5FC4B3C);
      v79 = v148;
      v55 = v146;
      *v146 = v147;
      v55[1] = v79;
      v80 = v150;
      v55[2] = v149;
      v55[3] = v80;
    }

    else
    {
      v130 = v135;
      sub_1D71100C8(v53, v135, type metadata accessor for PuzzleStatistic);
      v131 = v136;
      sub_1D6753890(v130, v143, v144, v136);
      sub_1D5CED8B0(v130, type metadata accessor for PuzzleStatistic);
      v132 = v131;
      v55 = v146;
      sub_1D71100C8(v132, v146, type metadata accessor for FeedPuzzleStatistic);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v125 = *v53;
      sub_1D67530D0(*v53, v143, v144, &v147);

      v126 = v154[0];
      v55 = v146;
      v146[6] = v153;
      v55[7] = v126;
      *(v55 + 121) = *(v154 + 9);
      v127 = v150;
      v55[2] = v149;
      v55[3] = v127;
      v128 = v152;
      v55[4] = v151;
      v55[5] = v128;
      v129 = v148;
      *v55 = v147;
      v55[1] = v129;
    }

    else
    {
      sub_1D6752DBC(*v53, v143, v144, v49);
      swift_unknownObjectRelease();
      v55 = v146;
      sub_1D71100C8(v49, v146, type metadata accessor for FeedHeadline);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D71100C8(v53, v34, type metadata accessor for FormatWebEmbed.Resolved);
      sub_1D67533CC(v34, v143, v144, v30);
      sub_1D5CED8B0(v34, type metadata accessor for FormatWebEmbed.Resolved);
      v55 = v146;
      sub_1D71100C8(v30, v146, type metadata accessor for FeedWebEmbed);
    }

    else
    {
      v114 = *v53;
      v115 = *(*(v142 + 96) + 32);
      v116 = swift_getObjectType();
      v117 = v141;
      FeedContextFactoryType.createFeedContext()(v116, v115);
      FeedModelFactory.create(puzzle:context:namespace:)(v114, v117, v143, v144, v26);
      swift_unknownObjectRelease();
      sub_1D5CED8B0(v117, type metadata accessor for FeedContext);
      sub_1D5F2DEAC(v26, &v147);
      sub_1D711077C(v26, &qword_1EDF12FF8, sub_1D5FC49B0, sub_1D5FC4A04);
      v118 = v157;
      v55 = v146;
      v146[10] = v156;
      v55[11] = v118;
      v55[12] = v158;
      v119 = v154[0];
      v55[6] = v153;
      v55[7] = v119;
      v120 = v155;
      v55[8] = v154[1];
      v55[9] = v120;
      v121 = v150;
      v55[2] = v149;
      v55[3] = v121;
      v122 = v152;
      v55[4] = v151;
      v55[5] = v122;
      v123 = v148;
      *v55 = v147;
      v55[1] = v123;
    }

LABEL_14:
    v59 = type metadata accessor for FeedItem(0);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    return (*(*(v59 - 8) + 56))(v55, 0, 1, v59);
  }

  v81 = *v53;
  v82 = *(v142 + 96);
  v83 = *(v82 + 32);
  v84 = swift_getObjectType();
  v145 = v45;
  FeedContextFactoryType.createFeedContext()(v84, v83);
  v85 = *(v82 + 16);
  v86 = MEMORY[0x1E69E6158];
  sub_1D71108AC(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1D7270C10;
  *(v87 + 32) = v143;
  *(v87 + 40) = v144;

  v88 = [v81 identifier];
  v89 = sub_1D726207C();
  v91 = v90;

  *(v87 + 48) = v89;
  *(v87 + 56) = v91;
  *&v147 = v87;
  sub_1D71108AC(0, &qword_1EDF43BA0, v86, MEMORY[0x1E69E62F8]);
  sub_1D7110694(&qword_1EDF3C840, &qword_1EDF43BA0, v86);
  v92 = sub_1D7261F3C();
  v94 = v93;

  result = [*(*(v85 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v96 = result;
    v97 = sub_1D726267C();

    v98 = sub_1D5B86020(v97);

    v99 = [v81 identifier];
    v100 = sub_1D726207C();
    v102 = v101;

    LOBYTE(v99) = sub_1D5BE240C(v100, v102, v98);

    LOBYTE(v160[0]) = 0;
    *v38 = v92;
    *(v38 + 1) = v94;
    *(v38 + 2) = v81;
    v38[24] = 0;
    *(v38 + 25) = v147;
    *(v38 + 7) = *(&v147 + 3);
    *(v38 + 4) = 0;
    v38[40] = 0;
    *(v38 + 41) = v159[0];
    *(v38 + 11) = *(v159 + 3);
    v103 = MEMORY[0x1E69E7CD0];
    *(v38 + 6) = 0;
    *(v38 + 7) = 0xE000000000000000;
    *(v38 + 8) = v99 & 1;
    *(v38 + 9) = v103;
    v38[144] = 0;
    *(v38 + 7) = 0u;
    *(v38 + 8) = 0u;
    *(v38 + 5) = xmmword_1D7279980;
    *(v38 + 6) = 0u;
    v104 = v134;
    v105 = v145;
    sub_1D7110060(v145, &v38[*(v134 + 52)], type metadata accessor for FeedContext);
    v106 = &v38[*(v104 + 56)];
    *v106 = 0;
    *(v106 + 1) = 0;
    v107 = &v38[*(v104 + 64)];
    *v107 = sub_1D5C00104;
    v107[1] = 0;
    sub_1D5CED8B0(v105, type metadata accessor for FeedContext);
    sub_1D5EE5AF8(v38, &v147);
    sub_1D711077C(v38, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984);
    v108 = v154[0];
    v55 = v146;
    v146[6] = v153;
    v55[7] = v108;
    v55[8] = v154[1];
    *(v55 + 144) = v155;
    v109 = v150;
    v55[2] = v149;
    v55[3] = v109;
    v110 = v152;
    v55[4] = v151;
    v55[5] = v110;
    v111 = v148;
    *v55 = v147;
    v55[1] = v111;
    v59 = type metadata accessor for FeedItem(0);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_1D710FD1C@<X0>(uint64_t a1@<X8>)
{
  result = [v1 supergroupConfigJson];
  if (result)
  {
    v4 = result;
    v5 = sub_1D726207C();
    v7 = v6;

    sub_1D725A6CC();
    swift_allocObject();
    sub_1D725A6BC();
    v8 = sub_1D6011D6C(v5, v7);
    v10 = v9;
    sub_1D71107D8();
    sub_1D725A69C();
    sub_1D5B952F8(v8, v10);

    v11 = v13;
    *a1 = v12;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v11 = 1;
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t sub_1D710FE1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D710FE98(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatBindingRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D7108814(a1, v6, v1 + v5);
}

uint64_t sub_1D710FF7C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatBindingRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D71096C0(a1, v6, v1 + v5);
}

uint64_t sub_1D7110060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D71100C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7110130(void *a1)
{
  sub_1D7110A54(0, &qword_1EC89B070, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  HIDWORD(v12) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D71109AC();
  sub_1D7264B5C();
  v13 = v10;
  v14 = v9;
  v15 = BYTE4(v12);
  sub_1D7110AB8();
  sub_1D72643BC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D71102A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7110A54(0, &qword_1EC89B058, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D71109AC();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D7110A00();
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7110464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636F4C6F6567 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D71104F0(uint64_t a1)
{
  v2 = sub_1D71109AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D711052C(uint64_t a1)
{
  v2 = sub_1D71109AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7110598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5BB1670(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7110640()
{
  result = qword_1EC89B008;
  if (!qword_1EC89B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B008);
  }

  return result;
}

uint64_t sub_1D7110694(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D71108AC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D71106EC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for FeedModel();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D711077C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  sub_1D71106EC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1D71107D8()
{
  result = qword_1EC89B020;
  if (!qword_1EC89B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B020);
  }

  return result;
}

void sub_1D711082C()
{
  if (!qword_1EC89B030)
  {
    sub_1D5B5534C(255, &qword_1EDF3C700);
    sub_1D5BA6EF4();
    v0 = sub_1D72629BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89B030);
    }
  }
}

void sub_1D71108AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D71108FC()
{
  if (!qword_1EC89B040)
  {
    sub_1D5BB1670(255, &unk_1EC89B048, sub_1D5C44E18, MEMORY[0x1E69E6720]);
    sub_1D5BA6EF4();
    v0 = sub_1D72629BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89B040);
    }
  }
}

unint64_t sub_1D71109AC()
{
  result = qword_1EC89B060;
  if (!qword_1EC89B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B060);
  }

  return result;
}

unint64_t sub_1D7110A00()
{
  result = qword_1EC89B068;
  if (!qword_1EC89B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B068);
  }

  return result;
}

void sub_1D7110A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D71109AC();
    v7 = a3(a1, &type metadata for DebugFormatTagSupergroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7110AB8()
{
  result = qword_1EC89B078;
  if (!qword_1EC89B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B078);
  }

  return result;
}

unint64_t sub_1D7110B20()
{
  result = qword_1EC89B080;
  if (!qword_1EC89B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B080);
  }

  return result;
}

unint64_t sub_1D7110B78()
{
  result = qword_1EC89B088;
  if (!qword_1EC89B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B088);
  }

  return result;
}

unint64_t sub_1D7110BD0()
{
  result = qword_1EC89B090;
  if (!qword_1EC89B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B090);
  }

  return result;
}

uint64_t sub_1D7110C34()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D7110CB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D7110D08@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FormatPuzzleBinding.DateTime.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D7110EB0()
{
  result = qword_1EC89B0A0;
  if (!qword_1EC89B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0A0);
  }

  return result;
}

unint64_t sub_1D7110F04(uint64_t a1)
{
  result = sub_1D7110F2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7110F2C()
{
  result = qword_1EC89B0A8;
  if (!qword_1EC89B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0A8);
  }

  return result;
}

unint64_t sub_1D7110F80(void *a1)
{
  a1[1] = sub_1D6685EA8();
  a1[2] = sub_1D66FE02C();
  result = sub_1D7110EB0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D711100C()
{
  result = qword_1EC89B0B0;
  if (!qword_1EC89B0B0)
  {
    sub_1D7111064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0B0);
  }

  return result;
}

void sub_1D7111064()
{
  if (!qword_1EC89B0B8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89B0B8);
    }
  }
}

unint64_t sub_1D71110B8()
{
  result = qword_1EC89B0C0;
  if (!qword_1EC89B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0C0);
  }

  return result;
}

unint64_t sub_1D711110C()
{
  result = qword_1EC89B0C8;
  if (!qword_1EC89B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0C8);
  }

  return result;
}

uint64_t sub_1D7111160@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27[-v10 - 8];
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v12 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  sub_1D5F2DEAC(a1, v28);
  v15 = [v29 publishDate];
  if (v15)
  {
    v16 = v15;
    sub_1D72588BC();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1D725891C();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, v17, 1, v18);
  sub_1D5DF42F8(v7, v11);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v11);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = sub_1D72587AC();
    v24 = v23;
    (*(v19 + 8))(v11, v18);
    v21 = v24;
    v20 = v22;
  }

  sub_1D6D0A5F8(v20, v21, v27);
  sub_1D711B30C(0x206873696C627550, 0xEC00000065746144, v27, (v14 + v13));
  result = sub_1D5F2DF58(v28);
  *a2 = v14;
  return result;
}

uint64_t sub_1D711145C()
{
  v1 = sub_1D7261B2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7261ABC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B81C();

  sub_1D725B81C();

  v15[1] = *(v0 + 24);
  sub_1D7115960(0, &qword_1EC89B0D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  sub_1D7261AAC();
  aBlock[0] = v11;
  sub_1D5B738C0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B738C0(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D71159C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_137;
  v13 = _Block_copy(aBlock);

  sub_1D7261AEC();
  MEMORY[0x1DA6FA730](0, v5, v10, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D71117E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v7 = sub_1D72583CC();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D72585BC();
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v11);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v63 = &v56 - v19;
  sub_1D7115A90(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v57 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v56 - v25;
  v27 = type metadata accessor for DebugFormatFileDirectory(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v59 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v56 - v33;
  v35 = a1 & 1;
  LOBYTE(v66) = v35;

  sub_1D725B86C();

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1D7115F3C(v26, sub_1D7115A90);
    swift_beginAccess();
    v36 = *(v3 + 16);
    if (*(v36 + 16) && (v37 = sub_1D6D63370(v35), (v38 & 1) != 0))
    {
      v56 = v4;
      v39 = *(v36 + 56);
      v40 = v65;
      v41 = v62;
      (*(v65 + 16))(v16, v39 + *(v65 + 72) * v37, v62);
      (*(v40 + 32))(v63, v16, v41);
      swift_endAccess();
      v66 = 0x736A2E7865646E69;
      v67 = 0xEA00000000006E6FLL;
      v43 = v60;
      v42 = v61;
      (*(v60 + 104))(v10, *MEMORY[0x1E6968F70], v61);
      sub_1D5BF4D9C();
      sub_1D725858C();
      (*(v43 + 8))(v10, v42);
      v44 = a3;
      v45 = sub_1D72585DC();
      v47 = v46;
      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();

      v49 = sub_1D5B7BACC(v48);
      sub_1D5B738C0(&qword_1EC8954B8, type metadata accessor for DebugFormatFileDirectory);
      v50 = v59;
      v61 = v49;
      sub_1D725A69C();
      v51 = v50;
      v52 = v57;
      sub_1D7115BC0(v51, v57, type metadata accessor for DebugFormatFileDirectory);
      v53 = *(v28 + 56);
      v53(v52, 0, 1, v27);
      LOBYTE(v66) = v35;

      sub_1D725B87C();

      sub_1D5B952F8(v45, v47);

      v54 = *(v65 + 8);
      v54(v64, v41);
      v54(v63, v41);
      sub_1D7115E3C(v59, v44, type metadata accessor for DebugFormatFileDirectory);
      return (v53)(v44, 0, 1, v27);
    }

    else
    {
      swift_endAccess();
      return (*(v28 + 56))(a3, 1, 1, v27);
    }
  }

  else
  {
    sub_1D7115E3C(v26, v34, type metadata accessor for DebugFormatFileDirectory);
    sub_1D7115E3C(v34, a3, type metadata accessor for DebugFormatFileDirectory);
    return (*(v28 + 56))(a3, 0, 1, v27);
  }
}

uint64_t sub_1D7111E38(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  LODWORD(v67) = a2;
  v56 = sub_1D7261ABC();
  v64 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D7261B2C();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v8);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatFileDirectory(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D72585BC();
  v66 = *(v59 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v59, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v65 = &v50 - v22;
  sub_1D7115A90(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_1D7115BC0(a1, v26, type metadata accessor for DebugFormatFileDirectory);
  v54 = v11;
  (*(v11 + 56))(v26, 0, 1, v10);
  v27 = v67 & 1;
  LOBYTE(aBlock[0]) = v67 & 1;

  sub_1D725B87C();

  swift_beginAccess();
  v28 = *(v3 + 16);
  if (!*(v28 + 16))
  {
    return swift_endAccess();
  }

  v29 = sub_1D6D63370(v27);
  if ((v30 & 1) == 0)
  {
    return swift_endAccess();
  }

  v31 = *(v28 + 56);
  v32 = v66;
  v33 = v31 + *(v66 + 72) * v29;
  v34 = *(v66 + 16);
  v67 = v4;
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v59;
  v34(v19, v33);
  v53 = *(v32 + 32);
  v51 = v12;
  v36 = v65;
  v53();
  swift_endAccess();
  v67 = *(v67 + 24);
  (v34)(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v35);
  v37 = v55;
  sub_1D7115BC0(v57, v55, type metadata accessor for DebugFormatFileDirectory);
  v38 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v39 = (v14 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v54 + 80) + v39 + 8) & ~*(v54 + 80);
  v41 = v40 + v51;
  v42 = swift_allocObject();
  v43 = v42 + v38;
  v44 = v35;
  (v53)(v43, v52, v35);
  *(v42 + v39) = v58;
  sub_1D7115E3C(v37, v42 + v40, type metadata accessor for DebugFormatFileDirectory);
  *(v42 + v41) = v27;
  aBlock[4] = sub_1D7115AC4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_13_3;
  v45 = _Block_copy(aBlock);

  v46 = v60;
  sub_1D7261AEC();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1D5B738C0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B738C0(&qword_1EDF1B560, sub_1D5B73908);
  v47 = v62;
  v48 = v56;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v46, v47, v45);
  _Block_release(v45);
  (*(v64 + 8))(v47, v48);
  (*(v61 + 8))(v46, v63);
  (*(v66 + 8))(v65, v44);
}

uint64_t sub_1D71124B4(uint64_t a1, char a2)
{
  v3 = v2;
  v102 = a1;
  v109[3] = *MEMORY[0x1E69E9840];
  v99 = *v2;
  sub_1D6032A5C();
  v105 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v106 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  MEMORY[0x1EEE9AC00](v96, v8);
  v95 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v85 - v12;
  v93 = type metadata accessor for DebugFormatCacheFileMetadata();
  v97 = *(v93 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v93, v14);
  v98 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v85 - v17;
  v19 = sub_1D72585BC();
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v85 - v28;
  v30 = a2 & 1;
  v108 = v30;

  sub_1D725B86C();

  if (v109[0])
  {
    goto LABEL_15;
  }

  v91 = v20;
  v87 = v25;
  v100 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v101;
  v107 = v19;
  v88 = v13;
  v89 = v18;
  v90 = v29;
  swift_beginAccess();
  v32 = v2[2];
  if (!*(v32 + 16) || (v33 = v3, v34 = sub_1D6D63370(v30), (v35 & 1) == 0))
  {
    swift_endAccess();
    v109[0] = 0;
LABEL_15:
    sub_1D7115960(0, &qword_1EC89B0F0, sub_1D7115D28, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v86 = v30;
  v36 = *(v32 + 56);
  v37 = v31;
  v39 = v31 + 16;
  v38 = *(v31 + 16);
  v103 = *(v31 + 72);
  v40 = v90;
  v41 = v107;
  v104 = v38;
  v38(v90, (v36 + v103 * v34), v107);
  swift_endAccess();
  v42 = [objc_opt_self() defaultManager];
  v43 = sub_1D725844C();
  sub_1D7115960(0, &qword_1EC89B0F8, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  v45 = *MEMORY[0x1E695DBB8];
  *(v44 + 32) = *MEMORY[0x1E695DBB8];
  type metadata accessor for URLResourceKey(0);
  v46 = v45;
  v47 = sub_1D726265C();

  v109[0] = 0;
  v48 = [v42 contentsOfDirectoryAtURL:v43 includingPropertiesForKeys:v47 options:4 error:v109];

  v49 = v109[0];
  if (v48)
  {
    v92 = v33;
    v50 = sub_1D726267C();
    v51 = v49;

    v52 = type metadata accessor for DebugFormatFileDirectory(0);
    v53 = v94;
    sub_1D7115BC0(v102 + *(v52 + 20), v94, type metadata accessor for DebugFormatFileDirectoryMetadata);
    v54 = sub_1D725BD1C();
    v55 = v89;
    (*(*(v54 - 8) + 16))(v89, v53, v54);
    v56 = v95;
    sub_1D7115BC0(v53, v95, type metadata accessor for DebugFormatFileDirectoryMetadata);
    if (*(v56 + *(v96 + 36)))
    {
      v57 = &unk_1F51198F8;
    }

    else
    {
      v57 = &unk_1F5119920;
    }

    sub_1D7115F3C(v56, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D7115F3C(v53, type metadata accessor for DebugFormatFileDirectoryMetadata);
    *(v55 + *(v93 + 20)) = v57;
    type metadata accessor for FormatJSONDecoder();
    swift_allocObject();

    v96 = sub_1D5B7BACC(v58);
    v59 = *(v50 + 16);
    if (v59)
    {
      v102 = v39;
      v109[0] = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v60 = *(v37 + 80);
      v85 = v50;
      v61 = v50 + ((v60 + 32) & ~v60);
      v95 = v60;
      v62 = (v60 + 16) & ~v60;
      v93 = (v91 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = v62;
      v91 = (v37 + 32);
      v63 = (v37 + 8);
      v64 = v107;
      v65 = v87;
      do
      {
        v67 = v104;
        v104(v65, v61, v64);
        sub_1D72583DC();
        v68 = sub_1D726231C();

        if (v68)
        {
          v66 = type metadata accessor for DebugFormatCacheFile();
          (*(*(v66 - 8) + 56))(v106, 1, 1, v66);
          sub_1D7115F9C(0);
          swift_allocObject();
          sub_1D725BB1C();
        }

        else
        {
          v69 = v100;
          v67(v100, v65, v64);
          v70 = v93;
          v71 = swift_allocObject();
          (*v91)(v71 + v94, v69, v107);
          *(v71 + v70) = v96;

          sub_1D725BDAC();
          v64 = v107;
        }

        (*v63)(v65, v64);
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v61 += v103;
        --v59;
      }

      while (v59);

      v75 = v109[0];
      v37 = v101;
      v55 = v89;
    }

    else
    {

      v75 = MEMORY[0x1E69E7CC0];
      v64 = v107;
    }

    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v85 - 2) = v75;
    sub_1D7115E08(0);
    sub_1D725BDCC();

    v80 = v98;
    sub_1D7115BC0(v55, v98, type metadata accessor for DebugFormatCacheFileMetadata);
    v81 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v82 = swift_allocObject();
    sub_1D7115E3C(v80, v82 + v81, type metadata accessor for DebugFormatCacheFileMetadata);
    v83 = sub_1D725B92C();
    type metadata accessor for DebugFormatCacheFile();
    sub_1D5B738C0(&qword_1EC89B108, sub_1D7115E08);
    sub_1D725BBCC();

    *(swift_allocObject() + 16) = v86;
    v84 = sub_1D725B92C();
    sub_1D7115D28(0);
    v79 = sub_1D725BAAC();

    sub_1D7115F3C(v55, type metadata accessor for DebugFormatCacheFileMetadata);
    (*(v37 + 8))(v90, v64);
  }

  else
  {
    v76 = v109[0];
    v77 = v40;
    v78 = sub_1D725829C();

    swift_willThrow();
    v109[0] = 0;
    sub_1D7115960(0, &qword_1EC89B0F0, sub_1D7115D28, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v79 = sub_1D725BB1C();

    (*(v37 + 8))(v77, v41);
  }

  return v79;
}

uint64_t sub_1D7113024(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v7 = sub_1D7261ABC();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D7261B2C();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v10);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D72585BC();
  v59 = *(v61 - 8);
  v12 = v59[8];
  MEMORY[0x1EEE9AC00](v61, v13);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v56 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v67 = &v50 - v19;
  v20 = type metadata accessor for DebugFormatCacheFile();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v23);
  v24 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2 & 1;
  LOBYTE(v68) = v25;

  sub_1D725B86C();

  if (aBlock[0])
  {
    v26 = aBlock[0];
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC8];
  }

  v27 = *a1;
  v28 = a1[1];
  sub_1D7115BC0(a1, &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatCacheFile);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v26;
  sub_1D6D7B19C(&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v28, isUniquelyReferenced_nonNull_native);
  LOBYTE(v68) = v25;

  sub_1D725B87C();

  swift_beginAccess();
  v30 = *(v4 + 16);
  if (!*(v30 + 16))
  {
    return swift_endAccess();
  }

  v31 = sub_1D6D63370(v25);
  if ((v32 & 1) == 0)
  {
    return swift_endAccess();
  }

  v33 = v59;
  v34 = *(v30 + 56) + v59[9] * v31;
  v51 = v59[2];
  v55 = v25;
  v53 = v21;
  v35 = v61;
  v51(v56, v34);
  v52 = a1;
  v36 = v33[4];
  v54 = v22;
  v37 = v67;
  v36();
  v38 = v36;
  swift_endAccess();
  v56 = *(v4 + 24);
  v39 = v57;
  (v51)(v57, v37, v35);
  sub_1D7115BC0(v52, v24, type metadata accessor for DebugFormatCacheFile);
  v40 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v41 = (v12 + *(v53 + 80) + v40) & ~*(v53 + 80);
  v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (v38)(v43 + v40, v39, v35);
  sub_1D7115E3C(v24, v43 + v41, type metadata accessor for DebugFormatCacheFile);
  v44 = v43 + v42;
  *v44 = v58;
  *(v44 + 8) = v55;
  aBlock[4] = sub_1D7115C28;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_19_2;
  v45 = _Block_copy(aBlock);

  v46 = v60;
  sub_1D7261AEC();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1D5B738C0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B738C0(&qword_1EDF1B560, sub_1D5B73908);
  v47 = v63;
  v48 = v66;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v46, v47, v45);
  _Block_release(v45);
  (*(v65 + 8))(v47, v48);
  (*(v62 + 8))(v46, v64);
  (v33[1])(v67, v35);
}

void *sub_1D7113694()
{
  type metadata accessor for DebugFormatCacheManager();
  swift_allocObject();
  result = sub_1D71136D0();
  qword_1EC9BADF8 = result;
  return result;
}

void *sub_1D71136D0()
{
  v132[4] = *MEMORY[0x1E69E9840];
  v102 = sub_1D7261ABC();
  v128 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v1);
  v101 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D725891C();
  v115 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v3);
  v100 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v108 = &v87 - v7;
  sub_1D7115960(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v104 = &v87 - v10;
  v103 = sub_1D72583CC();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v11);
  v127 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v110 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v107 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v126 = &v87 - v24;
  v25 = sub_1D726307C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v99 = sub_1D7261B2C();
  v106 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v32);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v0;
  v0[2] = MEMORY[0x1E69E7CC8];
  sub_1D5B5DA7C();
  sub_1D7261AFC();
  sub_1D726303C();
  (*(v26 + 104))(v29, *MEMORY[0x1E69E8090], v25);
  v35 = v13;
  v98 = v34;
  v0[3] = sub_1D72630BC();
  sub_1D7115A20(0, &qword_1EC89B0D8, type metadata accessor for DebugFormatFileDirectory);
  swift_allocObject();
  v0[4] = sub_1D725B83C();
  sub_1D7115A20(0, &qword_1EC89B0E8, sub_1D6D47994);
  swift_allocObject();
  v36 = sub_1D725B83C();
  v114 = v0 + 2;
  v0[5] = v36;
  v123 = objc_opt_self();
  v37 = [v123 defaultManager];
  v38 = [v37 URLsForDirectory:13 inDomains:1];

  v39 = sub_1D726267C();
  if (*(v39 + 16))
  {
    v40 = v111;
    v41 = *(v111 + 16);
    v42 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v43 = v125;
    v113 = v111 + 16;
    v112 = v41;
    v41(v125, v42, v13);

    aBlock = 0x767265732D66666ELL;
    v131 = 0xEA00000000007265;
    v44 = v105;
    v45 = *(v105 + 104);
    v46 = v127;
    v121 = *MEMORY[0x1E6968F58];
    v47 = v103;
    v119 = v45;
    v120 = v105 + 104;
    v45(v127);
    v48 = sub_1D5BF4D9C();
    v49 = v107;
    v118 = v48;
    sub_1D725859C();
    v117 = *(v44 + 8);
    v117(v46, v47);
    v124 = *(v40 + 8);
    v125 = (v40 + 8);
    v124(v43, v13);
    (*(v40 + 32))(v126, v49, v13);
    v50 = 0;
    v51 = 0;
    v97 = "p.  reason=%{public}@";
    v96 = "ebug-format-cache-manager";
    v95 = v115 + 16;
    v94 = v116 + 7;
    v93 = v115 + 32;
    v92 = v132;
    v91 = (v128 + 8);
    v90 = (v106 + 8);
    v89 = v115 + 8;
    v111 = v40 + 56;
    v116 = 0xEA00000000007365;
    v52 = v104;
    v53 = v44 + 8;
    v54 = v46;
    v55 = v110;
    v105 = v53;
    v122 = v35;
    do
    {
      LODWORD(v128) = v50;
      v58 = *(&unk_1F5118FF8 + v51 + 32);
      if (v58)
      {
        v59 = 0x636170736B726F77;
      }

      else
      {
        v59 = 0x6567616B636170;
      }

      if (*(&unk_1F5118FF8 + v51 + 32))
      {
        v60 = v116;
      }

      else
      {
        v60 = 0xE700000000000000;
      }

      aBlock = v59;
      v131 = v60;
      v119(v54, v121, v47);
      sub_1D725859C();
      v117(v54, v47);

      v61 = [v123 defaultManager];
      v62 = sub_1D725844C();
      aBlock = 0;
      v63 = [v61 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:&aBlock];

      v64 = aBlock;
      if (v63)
      {
        v56 = v122;
        v112(v52, v55, v122);
        (*v111)(v52, 0, 1, v56);
        swift_beginAccess();
        v57 = v64;
        sub_1D6D6177C(v52, v58);
        swift_endAccess();
      }

      else
      {
        v65 = aBlock;
        v66 = sub_1D725829C();

        swift_willThrow();
        v67 = sub_1D725828C();
        v68 = [v67 code];

        if (v68 == 516)
        {
          v55 = v110;
          v56 = v122;
          v112(v52, v110, v122);
          (*v111)(v52, 0, 1, v56);
          swift_beginAccess();
          sub_1D6D6177C(v52, v58);
          swift_endAccess();
        }

        else
        {
          aBlock = 0;
          v131 = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000011, v97 | 0x8000000000000000);
          MEMORY[0x1DA6F9910](v59, v60);

          MEMORY[0x1DA6F9910](0xD000000000000010, v96 | 0x8000000000000000);
          v129 = v66;
          sub_1D5BA6EF4();
          sub_1D7263F9C();
          v69 = v131;
          v106 = aBlock;
          v70 = v66;
          if (qword_1EC87D498 != -1)
          {
            swift_once();
          }

          v71 = qword_1EC9BA710;
          v72 = v108;
          sub_1D725890C();
          v107 = *(v71 + 40);
          v73 = v115;
          v74 = v100;
          v75 = v109;
          (*(v115 + 16))(v100, v72, v109);
          v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
          v77 = (v94 + v76) & 0xFFFFFFFFFFFFFFF8;
          v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
          v79 = swift_allocObject();
          (*(v115 + 32))(v79 + v76, v74, v75);
          v80 = (v79 + v77);
          *v80 = v106;
          v80[1] = v69;
          *(v79 + v78) = v66;
          *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
          v132[2] = sub_1D5F5F790;
          v132[3] = v79;
          aBlock = MEMORY[0x1E69E9820];
          v131 = 1107296256;
          v132[0] = sub_1D5B6B06C;
          v132[1] = &block_descriptor_7_1;
          v81 = _Block_copy(&aBlock);
          v82 = v66;

          v83 = v98;
          sub_1D7261AEC();
          v129 = MEMORY[0x1E69E7CC0];
          sub_1D5B738C0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
          sub_1D5B73908();
          sub_1D5B738C0(&qword_1EDF1B560, sub_1D5B73908);
          v84 = v101;
          v85 = v102;
          sub_1D7263B6C();
          MEMORY[0x1DA6FA730](0, v83, v84, v81);
          _Block_release(v81);
          (*v91)(v84, v85);
          (*v90)(v83, v99);
          (*(v115 + 8))(v108, v109);

          v52 = v104;
          v47 = v103;
          v56 = v122;
          v55 = v110;
        }
      }

      v124(v55, v56);
      v50 = 1;
      v51 = 1u;
      v54 = v127;
    }

    while ((v128 & 1) == 0);
    v124(v126, v56);
  }

  else
  {
  }

  return v88;
}

uint64_t sub_1D7114610()
{
  sub_1D7115F9C(0);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D7114674(void (*a1)(_BYTE *))
{
  sub_1D6032A5C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DebugFormatCacheFile();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D72585DC();
  v13 = v12;
  sub_1D5B738C0(&qword_1EC882988, type metadata accessor for DebugFormatCacheFile);
  sub_1D725A69C();
  sub_1D7115BC0(v10, v5, type metadata accessor for DebugFormatCacheFile);
  (*(v7 + 56))(v5, 0, 1, v6);
  a1(v5);
  sub_1D5B952F8(v11, v13);
  sub_1D7115F3C(v5, sub_1D6032A5C);
  return sub_1D7115F3C(v10, type metadata accessor for DebugFormatCacheFile);
}

uint64_t sub_1D71148E8()
{
  sub_1D7115F9C(0);
  v0 = sub_1D725B92C();
  sub_1D7115FD0(0);
  sub_1D5B738C0(&qword_1EC89B128, sub_1D7115FD0);
  v1 = sub_1D725BA3C();

  return v1;
}

uint64_t sub_1D711499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6032A5C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatCacheFile();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7115BC0(a1, v9, sub_1D6032A5C);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = sub_1D6032A5C;
    v16 = v9;
LABEL_7:
    sub_1D7115F3C(v16, v15);
    v19 = 1;
    return (*(v11 + 56))(a3, v19, 1, v10);
  }

  sub_1D7115E3C(v9, v14, type metadata accessor for DebugFormatCacheFile);
  v17 = &v14[*(v10 + 28)];
  if ((sub_1D725BCBC() & 1) == 0 || (v18 = type metadata accessor for DebugFormatCacheFileMetadata(), (sub_1D670933C(*&v17[*(v18 + 20)], *(a2 + *(v18 + 20))) & 1) == 0))
  {
    v15 = type metadata accessor for DebugFormatCacheFile;
    v16 = v14;
    goto LABEL_7;
  }

  sub_1D7115E3C(v14, a3, type metadata accessor for DebugFormatCacheFile);
  v19 = 0;
  return (*(v11 + 56))(a3, v19, 1, v10);
}

uint64_t sub_1D7114BC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D69176FC();
  sub_1D5B738C0(&qword_1EC893B08, sub_1D69176FC);
  sub_1D5B738C0(&qword_1EC89B118, type metadata accessor for DebugFormatCacheFile);
  v3 = sub_1D72623BC();

  sub_1D725B87C();

  *a1 = v3;
  return result;
}

uint64_t sub_1D7114CDC(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v35[1] = a4;
  v41 = a3;
  v39 = a1;
  v40 = sub_1D72583CC();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v5);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D7257A4C();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D72585BC();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v42 = a2;
  v43 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v51 = 0xE000000000000000;
  v15 = *a2;
  v14 = a2[1];
  sub_1D725796C();
  sub_1D5BF4D9C();
  swift_bridgeObjectRetain_n();
  v48 = v15;
  v49 = v14;
  v16 = sub_1D7263A1C();
  v18 = v17;
  v20 = v19;

  v46 = v14;
  v47 = v15;
  if ((v20 & 1) == 0)
  {
    v21 = v46;
    v15 = v47;
    do
    {
      v15 = sub_1D6C2BD5C(v16, v18, 95, 0xE100000000000000, v15, v21);
      v14 = v22;

      v48 = v15;
      v49 = v14;
      v16 = sub_1D7263A1C();
      v18 = v23;
      v25 = v24;

      v21 = v14;
    }

    while ((v25 & 1) == 0);
  }

  (*(v7 + 8))(v10, v36);
  MEMORY[0x1DA6F9910](v15, v14);

  MEMORY[0x1DA6F9910](0x6E6F736A2ELL, 0xE500000000000000);
  v27 = v37;
  v26 = v38;
  v28 = v40;
  (*(v38 + 104))(v37, *MEMORY[0x1E6968F70], v40);
  v29 = v43;
  sub_1D725858C();
  (*(v26 + 8))(v27, v28);

  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();

  sub_1D6BCED58(v30);
  type metadata accessor for DebugFormatCacheFile();
  sub_1D5B738C0(qword_1EC882990, type metadata accessor for DebugFormatCacheFile);
  v31 = sub_1D72578BC();
  v33 = v32;
  sub_1D725869C();
  (*(v44 + 8))(v29, v45);
  sub_1D5B952F8(v31, v33);
}

uint64_t sub_1D71152BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[3] = a4;
  v4 = sub_1D72583CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0x736A2E7865646E69;
  v22 = 0xEA00000000006E6FLL;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4, v12);
  sub_1D5BF4D9C();
  sub_1D725858C();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();

  sub_1D6BCED58(v15);
  type metadata accessor for DebugFormatFileDirectory(0);
  sub_1D5B738C0(&qword_1EC8954C0, type metadata accessor for DebugFormatFileDirectory);
  v16 = sub_1D72578BC();
  v18 = v17;
  sub_1D725869C();
  (*(v10 + 8))(v14, v9);
  sub_1D5B952F8(v16, v18);
}

void sub_1D71156BC()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    v17[3] = v1 + 16;
    v17[1] = v6;
    v17[2] = v1 + 8;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      (*(v1 + 16))(v4, *(v7 + 56) + *(v1 + 72) * (v14 | (v13 << 6)), v0);
      v15 = [objc_opt_self() defaultManager];
      v16 = sub_1D725844C();
      (*(v1 + 8))(v4, v0);
      [v15 fc:v16 removeContentsOfDirectoryAtURL:?];
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D71158EC()
{

  return swift_deallocClassInstance();
}

void sub_1D7115960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D71159CC()
{
  result = qword_1EC89B0E0;
  if (!qword_1EC89B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B0E0);
  }

  return result;
}

void sub_1D7115A20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D71159CC();
    v4 = sub_1D725B84C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7115AC4()
{
  v1 = *(sub_1D72585BC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for DebugFormatFileDirectory(0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));
  v7 = *(v6 + *(v4 + 64));

  return sub_1D71152BC(v0 + v2, v5, v6, v7);
}

uint64_t sub_1D7115BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7115C28()
{
  v1 = *(sub_1D72585BC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DebugFormatCacheFile() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1D7114CDC(v0 + v2, (v0 + v5), v7, v8);
}

uint64_t sub_1D7115E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7115F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7116020()
{
  v1 = v0;
  v2 = type metadata accessor for DebugInspectionWebEmbed();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DebugInspectionArticleData(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugInspectionItem();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6B654D0(v1, v17, type metadata accessor for DebugInspectionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      v19 = *v17;

LABEL_11:

      return v19;
    }

LABEL_10:
    v19 = *v17;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_10;
    }

    sub_1D7117F38(v17, v5, type metadata accessor for DebugInspectionWebEmbed);
    v19 = *v5;

    v20 = type metadata accessor for DebugInspectionWebEmbed;
    v21 = v5;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v23, v17, sizeof(v23));
      v19 = v23[0];

      sub_1D693EDC8(v23);
      return v19;
    }

    sub_1D7117F38(v17, v13, type metadata accessor for DebugInspectionHeadline);
    sub_1D6B654D0(v13, v9, type metadata accessor for DebugInspectionArticleData);
    sub_1D7117A74(v13, type metadata accessor for DebugInspectionHeadline);
    v19 = *&v9[*(v6 + 60)];

    v20 = type metadata accessor for DebugInspectionArticleData;
    v21 = v9;
  }

  sub_1D7117A74(v21, v20);
  return v19;
}

uint64_t sub_1D7116318@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DebugInspectionWebEmbed();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugInspectionItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B654D0(v2, v15, type metadata accessor for DebugInspectionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1D6AC6924(*v15, *(v15 + 1), *(v15 + 2), *(v15 + 3), a1);
      }

      else
      {
        sub_1D70898B8(*v15, *(v15 + 1), *(v15 + 2), *(v15 + 3), a1);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        v17 = *(v15 + 1);
        v21[0] = *v15;
        v21[1] = v17;
        v21[2] = *(v15 + 2);
        if (EnumCaseMultiPayload == 7)
        {
          *(&v21[2] + 10) = *(v15 + 42);
          sub_1D6CB160C(a1);
          return sub_1D6CB1CB4(v21);
        }

        else
        {
          sub_1D6FA2088(a1);
          v22 = v21[0];
          sub_1D5BFB68C(&v22);
          v23 = v21[1];
          sub_1D5BFB68C(&v23);
          v24 = v21[2];
          return sub_1D5BFB68C(&v24);
        }
      }

      sub_1D6939B64(*v15, *(v15 + 1), *(v15 + 2), *(v15 + 3), a1);
    }

LABEL_18:
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D7117F38(v15, v7, type metadata accessor for DebugInspectionWebEmbed);
      sub_1D67F0C88(a1);
      return sub_1D7117A74(v7, type metadata accessor for DebugInspectionWebEmbed);
    }

    sub_1D6D1FABC(*v15, *(v15 + 1), *(v15 + 2), *(v15 + 3), a1);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(v21, v15, sizeof(v21));
    sub_1D693D9DC(a1);
    return sub_1D693EDC8(v21);
  }

  else
  {
    v19 = sub_1D7117F38(v15, v11, type metadata accessor for DebugInspectionHeadline);
    sub_1D6D9F7B0(v19, v20);
    return sub_1D7117A74(v11, type metadata accessor for DebugInspectionHeadline);
  }
}

uint64_t sub_1D7116658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = type metadata accessor for DebugInspectionWebEmbed();
  MEMORY[0x1EEE9AC00](v36, v3);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v35, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7117E2C(0, &qword_1EC89B190, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v34 - v11;
  v13 = type metadata accessor for DebugInspectionItem();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D7117B8C();
  v18 = v40;
  sub_1D7264B0C();
  if (!v18)
  {
    v19 = v7;
    v34[1] = v13;
    v21 = v37;
    v20 = v38;
    v43 = 0;
    sub_1D7117E90();
    v22 = v12;
    sub_1D726431C();
    if (LOBYTE(v42[0]) <= 3u)
    {
      if (LOBYTE(v42[0]) > 1u)
      {
        if (LOBYTE(v42[0]) == 2)
        {
          v43 = 1;
          sub_1D693ECE8();
          sub_1D726431C();
          (*(v39 + 8))(v12, v9);
          v29 = v42[1];
          *v16 = v42[0];
          v16[1] = v29;
        }

        else
        {
          LOBYTE(v42[0]) = 1;
          sub_1D7118144(&qword_1EC89B1C8, type metadata accessor for DebugInspectionWebEmbed);
          sub_1D726431C();
          (*(v39 + 8))(v12, v9);
          sub_1D7117F38(v21, v16, type metadata accessor for DebugInspectionWebEmbed);
        }

        swift_storeEnumTagMultiPayload();
        v31 = v41;
        v25 = v20;
        goto LABEL_22;
      }

      v25 = v20;
      if (LOBYTE(v42[0]))
      {
        v43 = 1;
        sub_1D71180F0();
        sub_1D726431C();
        (*(v39 + 8))(v22, v9);
        memcpy(v16, v42, 0x210uLL);
      }

      else
      {
        LOBYTE(v42[0]) = 1;
        sub_1D7118144(&qword_1EC88C048, type metadata accessor for DebugInspectionHeadline);
        sub_1D726431C();
        (*(v39 + 8))(v22, v9);
        sub_1D7117F38(v19, v16, type metadata accessor for DebugInspectionHeadline);
      }
    }

    else if (LOBYTE(v42[0]) <= 5u)
    {
      v25 = v20;
      v43 = 1;
      sub_1D7118048();
      sub_1D726431C();
      (*(v39 + 8))(v22, v9);
      v32 = v42[1];
      *v16 = v42[0];
      v16[1] = v32;
    }

    else
    {
      v25 = v20;
      if (LOBYTE(v42[0]) == 6)
      {
        v43 = 1;
        sub_1D7117FF4();
        sub_1D726431C();
        (*(v39 + 8))(v22, v9);
        v30 = v42[1];
        *v16 = v42[0];
        v16[1] = v30;
      }

      else
      {
        v26 = v39;
        v43 = 1;
        if (LOBYTE(v42[0]) == 7)
        {
          sub_1D7117EE4();
          sub_1D726431C();
          (*(v26 + 8))(v22, v9);
          v27 = v42[1];
          v28 = v42[2];
          *v16 = v42[0];
          v16[1] = v27;
          v16[2] = v28;
        }

        else
        {
          sub_1D7117FA0();
          sub_1D726431C();
          (*(v26 + 8))(v22, v9);
          v33 = v42[1];
          *v16 = v42[0];
          v16[1] = v33;
          v16[2] = v42[2];
          *(v16 + 42) = *(&v42[2] + 10);
        }
      }
    }

    swift_storeEnumTagMultiPayload();
    v31 = v41;
LABEL_22:
    sub_1D7117F38(v16, v25, type metadata accessor for DebugInspectionItem);
    v23 = v31;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v23 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1D7116E14(void *a1)
{
  v60 = type metadata accessor for DebugInspectionWebEmbed();
  MEMORY[0x1EEE9AC00](v60, v2);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugInspectionItem();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7117E2C(0, &qword_1EC89B140, MEMORY[0x1E69E6F58]);
  v64 = v12;
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v59 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7117B8C();
  v63 = v15;
  sub_1D7264B5C();
  sub_1D6B654D0(v62, v11, type metadata accessor for DebugInspectionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v17 = v63;
      v18 = v64;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v19 = *(v11 + 1);
          v66[0] = *v11;
          v66[1] = v19;
          v66[2] = *(v11 + 2);
          *(&v66[2] + 10) = *(v11 + 42);
          LOBYTE(v65[0]) = 8;
          v67 = 0;
          sub_1D7117BE0();
          v20 = v68;
          sub_1D726443C();
          if (!v20)
          {
            v65[0] = v66[0];
            v65[1] = v66[1];
            v65[2] = v66[2];
            *(&v65[2] + 10) = *(&v66[2] + 10);
            v67 = 1;
            sub_1D7117C88();
            sub_1D726443C();
          }

          (*(v61 + 8))(v17, v18);
          return sub_1D6CB1CB4(v66);
        }

        v48 = *(v11 + 1);
        v62 = *v11;
        v50 = *(v11 + 2);
        v49 = *(v11 + 3);
        v52 = *(v11 + 4);
        v51 = *(v11 + 5);
        LOBYTE(v66[0]) = 7;
        LOBYTE(v65[0]) = 0;
        sub_1D7117BE0();
        v53 = v68;
        sub_1D726443C();
        if (!v53)
        {
          *&v66[0] = v62;
          *(&v66[0] + 1) = v48;
          *&v66[1] = v50;
          *(&v66[1] + 1) = v49;
          *&v66[2] = v52;
          *(&v66[2] + 1) = v51;
          LOBYTE(v65[0]) = 1;
          sub_1D7117C34();
          sub_1D726443C();
        }

        (*(v61 + 8))(v17, v18);
      }

      v40 = *v11;
      v39 = *(v11 + 1);
      v42 = *(v11 + 2);
      v41 = *(v11 + 3);
      LOBYTE(v66[0]) = 6;
      LOBYTE(v65[0]) = 0;
      sub_1D7117BE0();
      v43 = v68;
      sub_1D726443C();
      if (!v43)
      {
        *&v66[0] = v40;
        *(&v66[0] + 1) = v39;
        *&v66[1] = v42;
        *(&v66[1] + 1) = v41;
        LOBYTE(v65[0]) = 1;
        sub_1D7117CDC();
        sub_1D726443C();
      }

      (*(v61 + 8))(v17, v18);
LABEL_35:
    }

    v31 = v63;
    v32 = v64;
    if (EnumCaseMultiPayload == 4)
    {
      v35 = *v11;
      v34 = *(v11 + 1);
      v37 = *(v11 + 2);
      v36 = *(v11 + 3);
      LOBYTE(v66[0]) = 4;
      LOBYTE(v65[0]) = 0;
      sub_1D7117BE0();
      v38 = v68;
      sub_1D726443C();
      if (!v38)
      {
        *&v66[0] = v35;
        *(&v66[0] + 1) = v34;
        *&v66[1] = v37;
        *(&v66[1] + 1) = v36;
        LOBYTE(v65[0]) = 1;
        sub_1D7117D84();
        goto LABEL_33;
      }
    }

    else
    {
      v55 = *v11;
      v54 = *(v11 + 1);
      v57 = *(v11 + 2);
      v56 = *(v11 + 3);
      LOBYTE(v66[0]) = 5;
      LOBYTE(v65[0]) = 0;
      sub_1D7117BE0();
      v58 = v68;
      sub_1D726443C();
      if (!v58)
      {
        *&v66[0] = v55;
        *(&v66[0] + 1) = v54;
        *&v66[1] = v57;
        *(&v66[1] + 1) = v56;
        LOBYTE(v65[0]) = 1;
        sub_1D7117D30();
        goto LABEL_33;
      }
    }

    goto LABEL_34;
  }

  v22 = v59;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v11;
      v27 = *(v11 + 1);
      v30 = *(v11 + 2);
      v29 = *(v11 + 3);
      LOBYTE(v66[0]) = 2;
      LOBYTE(v65[0]) = 0;
      sub_1D7117BE0();
      v31 = v63;
      v32 = v64;
      v33 = v68;
      sub_1D726443C();
      if (!v33)
      {
        *&v66[0] = v28;
        *(&v66[0] + 1) = v27;
        *&v66[1] = v30;
        *(&v66[1] + 1) = v29;
        LOBYTE(v65[0]) = 1;
        sub_1D693EFC0();
LABEL_33:
        sub_1D726443C();
      }

LABEL_34:
      (*(v61 + 8))(v31, v32);
      goto LABEL_35;
    }

    sub_1D7117F38(v11, v59, type metadata accessor for DebugInspectionWebEmbed);
    LOBYTE(v66[0]) = 3;
    LOBYTE(v65[0]) = 0;
    sub_1D7117BE0();
    v23 = v63;
    v24 = v64;
    v47 = v68;
    sub_1D726443C();
    if (!v47)
    {
      LOBYTE(v66[0]) = 1;
      sub_1D7118144(&qword_1EC89B180, type metadata accessor for DebugInspectionWebEmbed);
      sub_1D726443C();
    }

    v26 = type metadata accessor for DebugInspectionWebEmbed;
LABEL_28:
    sub_1D7117A74(v22, v26);
    return (*(v61 + 8))(v23, v24);
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = v7;
    sub_1D7117F38(v11, v7, type metadata accessor for DebugInspectionHeadline);
    LOBYTE(v66[0]) = 0;
    LOBYTE(v65[0]) = 0;
    sub_1D7117BE0();
    v23 = v63;
    v24 = v64;
    v25 = v68;
    sub_1D726443C();
    if (!v25)
    {
      LOBYTE(v66[0]) = 1;
      sub_1D7118144(&qword_1EC88C058, type metadata accessor for DebugInspectionHeadline);
      sub_1D726443C();
    }

    v26 = type metadata accessor for DebugInspectionHeadline;
    goto LABEL_28;
  }

  memcpy(v66, v11, sizeof(v66));
  LOBYTE(v65[0]) = 1;
  v67 = 0;
  sub_1D7117BE0();
  v44 = v63;
  v45 = v64;
  v46 = v68;
  sub_1D726443C();
  if (!v46)
  {
    memcpy(v65, v66, sizeof(v65));
    v67 = 1;
    sub_1D7117DD8();
    sub_1D726443C();
  }

  (*(v61 + 8))(v44, v45);
  return sub_1D693EDC8(v66);
}

uint64_t sub_1D71176BC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656E696C64616568;
    v6 = 6775156;
    if (a1 != 2)
    {
      v6 = 0x6465626D45626577;
    }

    if (a1)
    {
      v5 = 0x6575737369;
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
    v1 = 0x7453656C7A7A7570;
    v2 = 0x726F727265;
    if (a1 != 7)
    {
      v2 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C7A7A7570;
    if (a1 != 4)
    {
      v3 = 0x7954656C7A7A7570;
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

uint64_t sub_1D71177DC()
{
  sub_1D7264A0C();
  sub_1D694F3B0();
  return sub_1D7264A5C();
}

uint64_t sub_1D711782C()
{
  sub_1D7264A0C();
  sub_1D694F3B0();
  return sub_1D7264A5C();
}

uint64_t sub_1D7117870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7118360();
  *a1 = result;
  return result;
}

uint64_t sub_1D71178A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D71176BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D711797C(uint64_t a1)
{
  v2 = sub_1D7117B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D71179B8(uint64_t a1)
{
  v2 = sub_1D7117B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t type metadata accessor for DebugInspectionItem()
{
  result = qword_1EC89B130;
  if (!qword_1EC89B130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7117A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7117AD4()
{
  result = type metadata accessor for DebugInspectionHeadline(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugInspectionWebEmbed();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D7117B8C()
{
  result = qword_1EC89B148;
  if (!qword_1EC89B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B148);
  }

  return result;
}

unint64_t sub_1D7117BE0()
{
  result = qword_1EC89B150;
  if (!qword_1EC89B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B150);
  }

  return result;
}

unint64_t sub_1D7117C34()
{
  result = qword_1EC89B158;
  if (!qword_1EC89B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B158);
  }

  return result;
}

unint64_t sub_1D7117C88()
{
  result = qword_1EC89B160;
  if (!qword_1EC89B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B160);
  }

  return result;
}

unint64_t sub_1D7117CDC()
{
  result = qword_1EC89B168;
  if (!qword_1EC89B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B168);
  }

  return result;
}

unint64_t sub_1D7117D30()
{
  result = qword_1EC89B170;
  if (!qword_1EC89B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B170);
  }

  return result;
}

unint64_t sub_1D7117D84()
{
  result = qword_1EC89B178;
  if (!qword_1EC89B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B178);
  }

  return result;
}

unint64_t sub_1D7117DD8()
{
  result = qword_1EC89B188;
  if (!qword_1EC89B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B188);
  }

  return result;
}

void sub_1D7117E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7117B8C();
    v7 = a3(a1, &type metadata for DebugInspectionItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7117E90()
{
  result = qword_1EC89B198;
  if (!qword_1EC89B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B198);
  }

  return result;
}

unint64_t sub_1D7117EE4()
{
  result = qword_1EC89B1A0;
  if (!qword_1EC89B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1A0);
  }

  return result;
}

uint64_t sub_1D7117F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7117FA0()
{
  result = qword_1EC89B1A8;
  if (!qword_1EC89B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1A8);
  }

  return result;
}

unint64_t sub_1D7117FF4()
{
  result = qword_1EC89B1B0;
  if (!qword_1EC89B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1B0);
  }

  return result;
}

unint64_t sub_1D7118048()
{
  result = qword_1EC89B1B8;
  if (!qword_1EC89B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1B8);
  }

  return result;
}

unint64_t sub_1D711809C()
{
  result = qword_1EC89B1C0;
  if (!qword_1EC89B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1C0);
  }

  return result;
}

unint64_t sub_1D71180F0()
{
  result = qword_1EC89B1D0;
  if (!qword_1EC89B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1D0);
  }

  return result;
}

uint64_t sub_1D7118144(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D71181B0()
{
  result = qword_1EC89B1D8;
  if (!qword_1EC89B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1D8);
  }

  return result;
}

unint64_t sub_1D7118208()
{
  result = qword_1EC89B1E0;
  if (!qword_1EC89B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1E0);
  }

  return result;
}

unint64_t sub_1D7118260()
{
  result = qword_1EC89B1E8;
  if (!qword_1EC89B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1E8);
  }

  return result;
}

unint64_t sub_1D71182B8()
{
  result = qword_1EC89B1F0;
  if (!qword_1EC89B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1F0);
  }

  return result;
}

unint64_t sub_1D711830C()
{
  result = qword_1EC89B1F8;
  if (!qword_1EC89B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B1F8);
  }

  return result;
}

uint64_t sub_1D7118360()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t FormatVersionableValue.init(value:versions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for FormatVersionableValue();
  *(a4 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1D7118490()
{
  v0 = sub_1D72641CC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D71184E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7118558(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D71185C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D7118634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D71186A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7118490();
  *a1 = result;
  return result;
}

uint64_t sub_1D71186E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5DDF7D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D711872C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7118490();
  *a1 = result;
  return result;
}

uint64_t sub_1D7118760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D71187B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatVersionableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatVersionableValue.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_1D726435C();
  v27 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v10 = &v25 - v9;
  v29 = a3;
  v30 = a2;
  v11 = type metadata accessor for FormatVersionableValue();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v33;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v33 = a1;
  v17 = v27;
  v18 = v28;
  v36 = 0;
  v19 = v31;
  v20 = v30;
  sub_1D726431C();
  v21 = *(v18 + 32);
  v29 = v16;
  v21(v16, v32, v20);
  sub_1D5BBE0A8();
  v35 = 1;
  sub_1D5B99688(&qword_1EDF3C830);
  sub_1D726431C();
  (*(v17 + 8))(v10, v19);
  v22 = v29;
  *&v29[*(v11 + 44)] = v34;
  v23 = v25;
  (*(v25 + 16))(v26, v22, v11);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return (*(v23 + 8))(v22, v11);
}

uint64_t FormatVersionableValue.encode(to:)(void *a1, uint64_t a2)
{
  v12[3] = *(a2 + 16);
  v12[1] = *(a2 + 32);
  type metadata accessor for FormatVersionableValue.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[2];
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[4];
  sub_1D726443C();
  if (!v10)
  {
    v12[5] = *(v9 + *(a2 + 44));
    v13 = 1;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1D7118E14()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5BBE0A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1D7118F00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66EE1AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D7118F48(void *a1)
{
  a1[1] = sub_1D6658A34();
  a1[2] = sub_1D6658EB8();
  result = sub_1D7118F80();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7118F80()
{
  result = qword_1EC89B200;
  if (!qword_1EC89B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B200);
  }

  return result;
}

unint64_t sub_1D7118FD4(uint64_t a1)
{
  result = sub_1D7118FFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7118FFC()
{
  result = qword_1EC89B208;
  if (!qword_1EC89B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89B208);
  }

  return result;
}

uint64_t static FeedGap.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FeedGap.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedGap.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t FeedGap.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

double FeedGap.init(identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&result = 2;
  *(a3 + 16) = xmmword_1D7297410;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_1D7119124(uint64_t a1)
{
  result = sub_1D711914C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D711914C()
{
  result = qword_1EDF34F90;
  if (!qword_1EDF34F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F90);
  }

  return result;
}

uint64_t type metadata accessor for FormatRefreshBlueprintModifier()
{
  result = qword_1EDF09BE0;
  if (!qword_1EDF09BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7119228()
{
  sub_1D6838970();
  if (v0 <= 0x3F)
  {
    sub_1D711A028(319, &qword_1EDF05160, type metadata accessor for FormatModel, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FormatPluginData();
      if (v2 <= 0x3F)
      {
        sub_1D711A028(319, &qword_1EDF170E8, MEMORY[0x1E69D7B08], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D711934C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v103 = a3;
  v104 = a2;
  v6 = sub_1D725D85C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725DB8C();
  v101 = *(v10 - 8);
  v102 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FormatModel();
  v84 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v13);
  v105 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v76 - v17;
  sub_1D5E2C2C8();
  v106 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D711A028(0, &qword_1EDF170E8, MEMORY[0x1E69D7B08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v97 = &v76 - v26;
  sub_1D7119F34(0, &unk_1EDF17028, MEMORY[0x1E69D7ED8]);
  v99 = *(v27 - 8);
  v100 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v98 = &v76 - v29;
  sub_1D5E2C53C();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v93 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C35C();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v92 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v94, v36);
  v38 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7119F34(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v95 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v76 - v41;
  v96 = v43;
  v81 = a1;
  v44 = sub_1D725FA2C();
  v90 = v45;
  v91 = v44;
  sub_1D711A028(0, &qword_1EDF02398, sub_1D5E2C428, MEMORY[0x1E69E6F90]);
  sub_1D5E2C428(0);
  v88 = v46;
  v85 = (*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1D7273AE0;
  refreshed = type metadata accessor for FormatRefreshBlueprintModifier();
  v47 = v4 + *(refreshed + 28);
  v89 = v38;
  sub_1D711A08C(v47, v38, type metadata accessor for FormatPluginData);
  v48 = *(v4 + 56);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  v83 = v6;
  v82 = v7;
  if (v49)
  {
    v77 = v42;
    v78 = v4;
    v108 = MEMORY[0x1E69E7CC0];
    sub_1D69974DC(0, v49, 0);
    v50 = v108;
    v51 = v48 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v52 = *(v84 + 72);
    do
    {
      sub_1D711A08C(v51, v18, type metadata accessor for FormatModel);
      sub_1D711A08C(v18, v105, type metadata accessor for FormatModel);
      sub_1D711A1E4(&qword_1EDF128E0, type metadata accessor for FormatModel);
      sub_1D725CE6C();
      sub_1D711A0F4(v18);
      v108 = v50;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D69974DC(v53 > 1, v54 + 1, 1);
        v50 = v108;
      }

      *(v50 + 16) = v54 + 1;
      (*(v20 + 32))(v50 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v54, v23, v106);
      v51 += v52;
      --v49;
    }

    while (v49);
    v4 = v78;
    v42 = v77;
  }

  v55 = sub_1D711A1E4(&qword_1EDF17260, sub_1D5E2C2C8);
  v56 = sub_1D711A1E4(&qword_1EDF17268, sub_1D5E2C2C8);
  MEMORY[0x1DA6F27E0](v50, v106, v55, v56);
  sub_1D711A1E4(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
  sub_1D711A1E4(&qword_1EDF128E0, type metadata accessor for FormatModel);
  v57 = v86;
  sub_1D725D60C();
  v58 = sub_1D711A1E4(&qword_1EDF17228, sub_1D5E2C428);
  v59 = sub_1D711A1E4(&qword_1EDF17230, sub_1D5E2C428);
  MEMORY[0x1DA6F27D0](v57, v88, v58, v59);
  sub_1D725FA1C();
  v60 = v97;
  sub_1D711A150(v4 + *(refreshed + 32), v97);
  v62 = v101;
  v61 = v102;
  if ((*(v101 + 48))(v60, 1, v102) == 1)
  {
    v63 = v98;
    sub_1D725E49C();
    v64 = v42;
  }

  else
  {
    v65 = v79;
    (*(v62 + 32))(v79, v60, v61);
    v64 = v42;
    v66 = v82;
    v67 = v80;
    v68 = v83;
    (*(v82 + 104))(v80, *MEMORY[0x1E69D7A40], v83);
    sub_1D711A1E4(&unk_1EDF0D400, type metadata accessor for FormatSectionDescriptor);
    v69 = v98;
    sub_1D725E4CC();
    v70 = v67;
    v63 = v69;
    (*(v66 + 8))(v70, v68);
    (*(v62 + 8))(v65, v61);
  }

  v72 = v99;
  v71 = v100;
  v74 = v95;
  v73 = v96;
  v104(v63);
  (*(v72 + 8))(v63, v71);
  return (*(v74 + 8))(v64, v73);
}

void sub_1D7119F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D711A1E4(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D711A1E4(&qword_1EDF128E0, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D711A028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D711A08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D711A0F4(uint64_t a1)
{
  v2 = type metadata accessor for FormatModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D711A150(uint64_t a1, uint64_t a2)
{
  sub_1D711A028(0, &qword_1EDF170E8, MEMORY[0x1E69D7B08], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D711A1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D711A22C(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          if (a2 != 0xC000000000000008)
          {
            goto LABEL_21;
          }

          break;
        case 2:
          if (a2 != 0xC000000000000010)
          {
            goto LABEL_21;
          }

          break;
        case 3:
          if (a2 != 0xC000000000000018)
          {
            goto LABEL_21;
          }

          break;
        case 4:
          if (a2 != 0xC000000000000020)
          {
            goto LABEL_21;
          }

          break;
        case 5:
          if (a2 != 0xC000000000000028)
          {
            goto LABEL_21;
          }

          break;
        case 6:
          if (a2 != 0xC000000000000030)
          {
            goto LABEL_21;
          }

          break;
        case 7:
          if (a2 != 0xC000000000000038)
          {
            goto LABEL_21;
          }

          break;
        case 8:
          if (a2 != 0xC000000000000040)
          {
            goto LABEL_21;
          }

          break;
        case 9:
          if (a2 != 0xC000000000000048)
          {
            goto LABEL_21;
          }

          break;
        case 0xALL:
          if (a2 != 0xC000000000000050)
          {
            goto LABEL_21;
          }

          break;
        case 0xBLL:
          if (a2 != 0xC000000000000058)
          {
            goto LABEL_21;
          }

          break;
        case 0xCLL:
          if (a2 != 0xC000000000000060)
          {
            goto LABEL_21;
          }

          break;
        case 0xDLL:
          if (a2 != 0xC000000000000068)
          {
            goto LABEL_21;
          }

          break;
        case 0xELL:
          if (a2 != 0xC000000000000070)
          {
            goto LABEL_21;
          }

          break;
        case 0xFLL:
          if (a2 != 0xC000000000000078)
          {
            goto LABEL_21;
          }

          break;
        case 0x10:
          if (a2 != 0xC000000000000080)
          {
            goto LABEL_21;
          }

          break;
        default:
          if (a2 != 0xC000000000000000)
          {
            goto LABEL_21;
          }

          break;
      }

      v3 = 1;
      return v3 & 1;
    }

    if (a2 >> 62 != 2)
    {
      goto LABEL_21;
    }

    v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    return sub_1D5BFC390(v4, v5);
  }

  else
  {
    if (!v2)
    {
      if (!(a2 >> 62))
      {
        v3 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
        return v3 & 1;
      }

LABEL_21:
      v3 = 0;
      return v3 & 1;
    }

    if (a2 >> 62 != 1)
    {
      goto LABEL_21;
    }

    v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if ((sub_1D711A22C(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10)) & 1) == 0)
    {
      goto LABEL_21;
    }

    return sub_1D5E1FFA0(v7, v8);
  }
}

uint64_t sub_1D711A4D0()
{

  v1 = *(v0 + 40);

  sub_1D5F33D8C(v1);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatLayoutViewModelV0E4TypeO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D711A578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1D72646CC() & 1) == 0 || (sub_1D711A22C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4 <= 0xFD)
  {
    v14 = v3;
    v15 = v4;
    if (v7 > 0xFD)
    {
      return 0;
    }

    v12 = v6;
    v13 = v7;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v14, &v12) & 1) == 0)
    {
      return 0;
    }

LABEL_12:
    if (v2 >> 62)
    {
      v9 = 0;
      if (v5 >> 62)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *(v2 + 16);
      if (v5 >> 62)
      {
LABEL_14:
        v10 = 0;
        return v9 ^ v10 ^ 1u;
      }
    }

    v10 = *(v5 + 16);
    return v9 ^ v10 ^ 1u;
  }

  if (v7 > 0xFD)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t ArticleThumbnail.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t ArticleThumbnail.LayeredModel.init(headline:aspectRatio:json:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t ArticleThumbnail.aspectRatio.getter()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return FCThumbnailAspectRatioForHeadline();
  }

  return result;
}

uint64_t sub_1D711A714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D711A75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D711A80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v37 = a3;
  v38 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(a5 + v9, 1, 1, v10);
LABEL_9:
    *a5 = a1;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = 0;
    v14 = *(v8 + 28);
LABEL_10:
    v15 = a5 + v14;
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
    return result;
  }

  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v16 = [v36[0] attributedName];
    v17 = [v16 string];

    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [v36[0] category];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D726207C();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v32 = type metadata accessor for FormatInspectionItem(0);
    v33 = *(v32 + 24);
    *(a5 + v33) = v36[0];
    v34 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v34 - 8) + 56))(a5 + v33, 0, 1, v34);
    *a5 = v18;
    a5[1] = v20;
    a5[2] = v23;
    a5[3] = v25;
    v14 = *(v32 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v26 = MEMORY[0x1E69E7DE0];
  if (swift_dynamicCast())
  {
LABEL_8:
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    *(a5 + v12) = v36[0];
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(a5 + v12, 0, 1, v13);
    goto LABEL_9;
  }

  v36[3] = v26;
  v36[4] = sub_1D7133338();
  v36[0] = v37;
  sub_1D5B7DDE8(v36, v35);
  v27 = type metadata accessor for FormatInspectionItem(0);
  v28 = (a5 + *(v27 + 24));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  *v28 = sub_1D7262A9C();
  v28[1] = v29;
  v30 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = 0;
  v31 = a5 + *(v27 + 28);
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D711AD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  if (!a3)
  {
    v25 = type metadata accessor for FormatInspectionItem(0);
    v26 = *(v25 + 24);
    v27 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v27 - 8) + 56))(&a6[v26], 1, 1, v27);
    *a6 = a1;
    *(a6 + 1) = a2;
    goto LABEL_25;
  }

  result = sub_1D70732C4(a3);
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v28 = v14[2];

    if (v28)
    {
      v29 = type metadata accessor for FormatInspectionItem(0);
      v30 = &a6[*(v29 + 24)];
      *v30 = a3;
      v30[1] = a4;
      v30[2] = a5;
      v31 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
      swift_bridgeObjectRetain_n();

      result = sub_1D7133120(v32);
      *a6 = a1;
      *(a6 + 1) = a2;
      v33 = (v29 + 28);
      *(a6 + 2) = a4;
      *(a6 + 3) = a5;
LABEL_26:
      v36 = &a6[*v33];
      *v36 = 0;
      *(v36 + 1) = 0;
      v36[16] = -1;
      return result;
    }

    sub_1D7133120(a3);
    v25 = type metadata accessor for FormatInspectionItem(0);
    v34 = *(v25 + 24);
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v35 - 8) + 56))(&a6[v34], 1, 1, v35);
    *a6 = a1;
    *(a6 + 1) = a2;
LABEL_25:
    v33 = (v25 + 28);
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    goto LABEL_26;
  }

  v12 = 0;
  v13 = result + 64;
  v14 = MEMORY[0x1E69E7CC0];
  while (v12 < *(v10 + 16))
  {
    v15 = *v13;
    v16 = *(*v13 + 16);
    v17 = v14[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v14[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_16:
        v21 = (v14[3] >> 1) - v14[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v21 < v16)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v14[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_31;
          }

          v14[2] = v24;
        }

        goto LABEL_5;
      }
    }

    if (v16)
    {
      goto LABEL_29;
    }

LABEL_5:
    ++v12;
    v13 += 40;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D711B070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a3;
  if (a3)
  {
    sub_1D7133B88(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v8 = v7;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v9 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v9 + 24);
      *&a4[v10] = v25;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(&a4[v10], 0, 1, v11);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v12 = &a4[*(v9 + 28)];
      *v12 = 0;
      *(v12 + 1) = 0;
      v12[16] = -1;
    }

    else
    {
      v26 = v8;
      v27 = sub_1D7133254();
      *&v25 = v28;
      sub_1D5B7DDE8(&v25, v24);
      v18 = type metadata accessor for FormatInspectionItem(0);
      v19 = &a4[*(v18 + 24)];
      v20 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);

      *v19 = sub_1D6936F98(v20);
      v19[1] = v21;
      v22 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v23 = &a4[*(v18 + 28)];
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v17 = &a4[*(v13 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = -1;
  }

  return result;
}

uint64_t sub_1D711B30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1D713338C(a3, v19, &qword_1EC89B290, &type metadata for FormatInspectionBinding);
  if (v20)
  {
    sub_1D5EA7510(v19, v18);
    sub_1D5B88EF0(a3, &qword_1EC89B290, &type metadata for FormatInspectionBinding);
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = &a4[*(v8 + 24)];
    v10 = v18[1];
    *v9 = v18[0];
    *(v9 + 1) = v10;
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v12 = &a4[*(v8 + 28)];
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = -1;
    return sub_1D5EA756C(v19);
  }

  else
  {
    sub_1D5B88EF0(a3, &qword_1EC89B290, &type metadata for FormatInspectionBinding);
    v14 = type metadata accessor for FormatInspectionItem(0);
    v15 = *(v14 + 24);
    v16 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v17 = &a4[*(v14 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = -1;
  }

  return result;
}

uint64_t sub_1D711B4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = ~a3 & 0xF000000000000007;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 + 24);
  if (v8)
  {
    *&a4[v10] = a3;
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(&a4[v10], 0, 1, v13);
  }

  else
  {
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v14 = &a4[*(v9 + 28)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D711B5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v326 = sub_1D725F88C();
  v323 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326, v8);
  v325 = &v323 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v324, v10);
  v327 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatInspectionFeedGroupItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v328 = &v323 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1E69E7CA0];
  sub_1D713338C(a3, &v373, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
  if (!v374)
  {
    sub_1D5B88EF0(a3, &qword_1EDF43B70, (v20 + 1));
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = *(v28 + 24);
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v30 - 8) + 56))(&a4[v29], 1, 1, v30);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v32 = &a4[*(v28 + 28)];
    goto LABEL_8;
  }

  *&v329 = a3;
  v330 = a1;
  v331 = a2;
  v332 = a4;
  if (swift_dynamicCast())
  {
    sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
    v21 = v355;
    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = *(v22 + 24);
    v24 = v332;
    *(v332 + v23) = v21;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(&v24[v23], 0, 1, v25);
LABEL_5:
    v26 = v331;
    *v24 = v330;
    *(v24 + 1) = v26;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v33 = v355;
    v34 = (v355 >> 58) & 0x38;
    v35 = *&aSystem_6[v34];
    v36 = *(&unk_1D739CFD0 + v34);
    sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
    v37 = type metadata accessor for FormatInspectionItem(0);
    v38 = *(v37 + 24);
    v39 = v332;
    *(v332 + v38) = v33;
    v40 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(&v39[v38], 0, 1, v40);
    v41 = v331;
    *v39 = v330;
    *(v39 + 1) = v41;
    *(v39 + 2) = v35;
    *(v39 + 3) = v36;
LABEL_11:
    v27 = &v39[*(v37 + 28)];
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
    v42 = v355;
    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = *(v22 + 24);
    v24 = v332;
    *(v332 + v23) = v42;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    goto LABEL_4;
  }

  if (swift_dynamicCast())
  {
    sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
    v37 = type metadata accessor for FormatInspectionItem(0);
    v43 = *(v37 + 24);
    v39 = v332;
    (*(v16 + 32))(v332 + v43, v19, v15);
    v44 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v44 - 8) + 56))(&v39[v43], 0, 1, v44);
    v45 = v331;
    *v39 = v330;
    *(v39 + 1) = v45;
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    goto LABEL_11;
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v328 = v355;
      v59 = sub_1D70732C4(v355);
      v60 = v59;
      v61 = *(v59 + 16);
      if (!v61)
      {
        v63 = MEMORY[0x1E69E7CC0];
LABEL_68:

        v97 = v63[2];

        if (v97)
        {
          v98 = type metadata accessor for FormatInspectionItem(0);
          v99 = v332;
          v100 = (v332 + *(v98 + 24));
          sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_1D7273AE0;
          *(v101 + 56) = &type metadata for FormatInspection;
          *(v101 + 64) = &off_1F51E3FD0;
          *(v101 + 32) = v328;
          v102 = v101 + 32;
          v103 = sub_1D5F62BFC(v101);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v102);
          swift_deallocClassInstance();
          v104 = sub_1D7073500(v103);

          sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
          *v100 = v104;
          v105 = type metadata accessor for FormatInspectionItem.Value(0);
          v100[1] = 0;
          v100[2] = 0;
          swift_storeEnumTagMultiPayload();
          (*(*(v105 - 8) + 56))(v100, 0, 1, v105);
        }

        else
        {
          sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);

          v98 = type metadata accessor for FormatInspectionItem(0);
          v106 = *(v98 + 24);
          v107 = type metadata accessor for FormatInspectionItem.Value(0);
          v99 = v332;
          (*(*(v107 - 8) + 56))(v332 + v106, 1, 1, v107);
        }

        v108 = v331;
        *v99 = v330;
        v99[1] = v108;
        v99[2] = 0;
        v99[3] = 0;
        v109 = *(v98 + 28);
        goto LABEL_72;
      }

      v62 = 0;
      v20 = (v59 + 64);
      v63 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v62 >= *(v60 + 16))
        {
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          if (!swift_dynamicCast())
          {
            goto LABEL_127;
          }

          sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
          v72 = type metadata accessor for FormatInspectionItem(0);
          v73 = *(v72 + 24);
          v74 = v332;
          sub_1D5CAD93C(v328, v332 + v73, type metadata accessor for FormatInspectionFeedGroupItem);
          v75 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_58:
          swift_storeEnumTagMultiPayload();
          (*(*(v75 - 8) + 56))(&v74[v73], 0, 1, v75);
          v76 = v331;
          *v74 = v330;
          *(v74 + 1) = v76;
          *(v74 + 2) = 0;
          *(v74 + 3) = 0;
          v27 = &v74[*(v72 + 28)];
          goto LABEL_12;
        }

        v19 = *v20;
        v64 = *(*v20 + 2);
        v65 = v63[2];
        v66 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_121;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v66 <= v63[3] >> 1)
        {
          if (!*(v19 + 2))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v65 <= v66)
          {
            v68 = v65 + v64;
          }

          else
          {
            v68 = v65;
          }

          v63 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v68, 1, v63);
          if (!*(v19 + 2))
          {
LABEL_40:

            if (v64)
            {
              goto LABEL_122;
            }

            goto LABEL_41;
          }
        }

        v69 = (v63[3] >> 1) - v63[2];
        type metadata accessor for FormatInspectionItem(0);
        if (v69 < v64)
        {
          goto LABEL_126;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v70 = v63[2];
          v57 = __OFADD__(v70, v64);
          v71 = v70 + v64;
          if (v57)
          {
            __break(1u);
            goto LABEL_130;
          }

          v63[2] = v71;
        }

LABEL_41:
        ++v62;
        v20 += 5;
        if (v61 == v62)
        {
          goto LABEL_68;
        }
      }
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
      v72 = type metadata accessor for FormatInspectionItem(0);
      v73 = *(v72 + 24);
      v74 = v332;
      *(v332 + v73) = v355;
      v75 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_58;
    }

    if (swift_dynamicCast())
    {
      v91 = v20;
      v341 = v362;
      v342 = v363[0];
      v337 = v359[0];
      v338 = v359[1];
      v339 = v360;
      v340 = v361;
      v333 = v355;
      v334 = v356;
      v335 = v357;
      v336 = v358;
      v352 = v362;
      v353 = v363[0];
      v348 = v359[0];
      v349 = v359[1];
      v350 = v360;
      v351 = v361;
      v344 = v355;
      v345 = v356;
      v343 = v363[1];
      v354 = v363[1];
      v346 = v357;
      v347 = v358;
      v92 = sub_1D62B4E2C(&v344);
      if (v92 > 1)
      {
        v93 = v331;
        v50 = v332;
        v94 = v330;
        if (v92 != 2)
        {
          v95 = 0xEB0000000070756FLL;
          v96 = 0x7247207373616C47;
          goto LABEL_90;
        }

        v95 = 0xE500000000000000;
        v96 = 0x7373616C47;
      }

      else
      {
        v93 = v331;
        v50 = v332;
        v94 = v330;
        if (v92)
        {
          v95 = 0xED000079636E6172;
          v96 = 0x6269562072756C42;
        }

        else
        {
          v95 = 0xE400000000000000;
          v96 = 1920298050;
        }
      }

      sub_1D5D04BC4(&v344);
LABEL_90:
      sub_1D5B88EF0(v329, &qword_1EDF43B70, (v91 + 1));
      v112 = type metadata accessor for FormatInspectionItem(0);
      v138 = v50 + *(v112 + 24);
      v139 = v342;
      *(v138 + 8) = v341;
      *(v138 + 9) = v139;
      *(v138 + 80) = v343;
      v140 = v338;
      *(v138 + 4) = v337;
      *(v138 + 5) = v140;
      v141 = v340;
      *(v138 + 6) = v339;
      *(v138 + 7) = v141;
      v142 = v334;
      *v138 = v333;
      *(v138 + 1) = v142;
      v143 = v336;
      *(v138 + 2) = v335;
      *(v138 + 3) = v143;
      v144 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v144 - 8) + 56))(v138, 0, 1, v144);
      *v50 = v94;
      v50[1] = v93;
      v50[2] = v96;
      v50[3] = v95;
      goto LABEL_91;
    }

    v19 = &v355;
    if (swift_dynamicCast())
    {
      v15 = v20;
      v49 = v333;
      v110 = v333 >> 61;
      if ((v333 >> 61) > 3)
      {
        v123 = v331;
        v50 = v332;
        v124 = v330;
        if (v110 > 5)
        {
          if (v110 == 6)
          {
            v170 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
            v360 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
            v361 = v170;
            v362 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
            LOBYTE(v363[0]) = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
            v171 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v357 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v358 = v171;
            v172 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
            v359[0] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
            v359[1] = v172;
            v173 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v355 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v356 = v173;
            sub_1D62B4EA4(&v355, &v344);
            sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
            v129 = type metadata accessor for FormatInspectionItem(0);
            v174 = v50 + *(v129 + 24);
            v175 = v361;
            *(v174 + 6) = v360;
            *(v174 + 7) = v175;
            *(v174 + 8) = v362;
            v174[144] = v363[0];
            v176 = v358;
            *(v174 + 2) = v357;
            *(v174 + 3) = v176;
            v177 = v359[1];
            *(v174 + 4) = v359[0];
            *(v174 + 5) = v177;
            v178 = v356;
            *v174 = v355;
            *(v174 + 1) = v178;
            v179 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v179 - 8) + 56))(v174, 0, 1, v179);

            *v50 = v124;
            v50[1] = v123;
            v137 = xmmword_1D739CF30;
          }

          else
          {
            v212 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
            v361 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
            v362 = v212;
            v363[0] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
            LOWORD(v363[1]) = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
            v213 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
            v358 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v359[0] = v213;
            v214 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
            v359[1] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
            v360 = v214;
            v215 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v355 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v356 = v215;
            v357 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            sub_1D60864C0(&v355, &v344);
            sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
            v129 = type metadata accessor for FormatInspectionItem(0);
            v216 = v50 + *(v129 + 24);
            v217 = v363[0];
            *(v216 + 8) = v362;
            *(v216 + 9) = v217;
            *(v216 + 80) = v363[1];
            v218 = v359[1];
            *(v216 + 4) = v359[0];
            *(v216 + 5) = v218;
            v219 = v361;
            *(v216 + 6) = v360;
            *(v216 + 7) = v219;
            v220 = v356;
            *v216 = v355;
            *(v216 + 1) = v220;
            v221 = v358;
            *(v216 + 2) = v357;
            *(v216 + 3) = v221;
            v222 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v222 - 8) + 56))(v216, 0, 1, v222);

            *v50 = v124;
            v50[1] = v123;
            v137 = xmmword_1D739CF20;
          }

          goto LABEL_115;
        }

        if (v110 == 4)
        {
          v125 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v361 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v362 = v125;
          v363[0] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          *(v363 + 9) = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
          v126 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v358 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v359[0] = v126;
          v127 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v359[1] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v360 = v127;
          v128 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v355 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v356 = v128;
          v357 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          sub_1D62B4F54(&v355, &v344);
          sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
          v129 = type metadata accessor for FormatInspectionItem(0);
          v130 = (v50 + *(v129 + 24));
          v131 = v363[0];
          v130[8] = v362;
          v130[9] = v131;
          *(v130 + 153) = *(v363 + 9);
          v132 = v359[1];
          v130[4] = v359[0];
          v130[5] = v132;
          v133 = v361;
          v130[6] = v360;
          v130[7] = v133;
          v134 = v356;
          *v130 = v355;
          v130[1] = v134;
          v135 = v358;
          v130[2] = v357;
          v130[3] = v135;
          v136 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v136 - 8) + 56))(v130, 0, 1, v136);

          *v50 = v124;
          v50[1] = v123;
          v137 = xmmword_1D739CF50;
          goto LABEL_115;
        }

        v201 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v202 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
        v203 = type metadata accessor for FormatInspectionItem(0);
        v204 = (v50 + *(v203 + 24));
        *v204 = v201;
        v204[1] = v202;
        v205 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v205 - 8) + 56))(v204, 0, 1, v205);

        *v50 = v124;
        v50[1] = v123;
        *(v50 + 1) = xmmword_1D739CF40;
      }

      else
      {
        v47 = v331;
        v50 = v332;
        v20 = v330;
        if (v110 <= 1)
        {
          if (!v110)
          {
            v111 = *(v333 + 16);

            sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
            v112 = type metadata accessor for FormatInspectionItem(0);
            v113 = *(v112 + 24);
            *(v50 + v113) = v111;
            v114 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v114 - 8) + 56))(v50 + v113, 0, 1, v114);

            *v50 = v20;
            v50[1] = v47;
            *(v50 + 1) = xmmword_1D72EBCC0;
LABEL_91:
            v27 = v50 + *(v112 + 28);
            goto LABEL_12;
          }

LABEL_109:
          v187 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v355 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v356 = v187;
          v188 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v357 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v358 = v188;
          sub_1D6086694(&v355, &v344);
          sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
          v129 = type metadata accessor for FormatInspectionItem(0);
          v189 = (v50 + *(v129 + 24));
          v190 = v356;
          *v189 = v355;
          v189[1] = v190;
          v191 = v358;
          v189[2] = v357;
          v189[3] = v191;
          v192 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v192 - 8) + 56))(v189, 0, 1, v192);

          *v50 = v20;
          v50[1] = v47;
          v137 = xmmword_1D739CF00;
LABEL_115:
          *(v50 + 1) = v137;
          v27 = v50 + *(v129 + 28);
          goto LABEL_12;
        }

        if (v110 == 2)
        {
          v149 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v359[0] = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v359[1] = v149;
          v150 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v360 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v361 = v150;
          v151 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v355 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v356 = v151;
          v152 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v357 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v358 = v152;
          sub_1D60865E4(&v355, &v344);
          sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
          v129 = type metadata accessor for FormatInspectionItem(0);
          v153 = (v50 + *(v129 + 24));
          v154 = v359[1];
          v153[4] = v359[0];
          v153[5] = v154;
          v155 = v361;
          v153[6] = v360;
          v153[7] = v155;
          v156 = v356;
          *v153 = v355;
          v153[1] = v156;
          v157 = v358;
          v153[2] = v357;
          v153[3] = v157;
          v158 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v158 - 8) + 56))(v153, 0, 1, v158);

LABEL_100:
          *v50 = v20;
          v50[1] = v47;
          v137 = xmmword_1D739CEF0;
          goto LABEL_115;
        }

        v206 = *((v333 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D6086744(v206);
        sub_1D5B88EF0(v329, &qword_1EDF43B70, v15 + 8);
        v203 = type metadata accessor for FormatInspectionItem(0);
        v207 = *(v203 + 24);
        *(v50 + v207) = v206;
        v208 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v208 - 8) + 56))(v50 + v207, 0, 1, v208);

        *v50 = v20;
        v50[1] = v47;
        v50[2] = 0xD000000000000012;
        v50[3] = 0x80000001D73E40B0;
      }

      v27 = v50 + *(v203 + 28);
      goto LABEL_12;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        if (!swift_dynamicCast())
        {
          if (swift_dynamicCast())
          {
            sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
            v223 = type metadata accessor for FormatInspectionItem(0);
            v99 = v332;
            v224 = (v332 + *(v223 + 24));
            v225 = v358;
            v224[2] = v357;
            v224[3] = v225;
            v224[4] = v359[0];
            *(v224 + 73) = *(v359 + 9);
            v226 = v356;
            *v224 = v355;
            v224[1] = v226;
            v227 = type metadata accessor for FormatInspectionItem.Value(0);
            goto LABEL_118;
          }

          goto LABEL_123;
        }

        sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
        v181 = *(&v357 + 1);
        v180 = v357;
        v182 = v358;
        v112 = type metadata accessor for FormatInspectionItem(0);
        v50 = v332;
        v183 = v332 + *(v112 + 24);
        v184 = v356;
        *v183 = v355;
        *(v183 + 1) = v184;
        *(v183 + 2) = __PAIR128__(v181, v180);
        v183[48] = v182;
        v185 = type metadata accessor for FormatInspectionItem.Value(0);
        goto LABEL_105;
      }

      sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
      v145 = v355;
      v22 = type metadata accessor for FormatInspectionItem(0);
      v24 = v332;
      v146 = v332 + *(v22 + 24);
      v147 = swift_allocObject();
      *(v147 + 16) = v145;
      *v146 = sub_1D7133DEC;
      *(v146 + 1) = v147;
      v148 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_94:
      swift_storeEnumTagMultiPayload();
      (*(*(v148 - 8) + 56))(v146, 0, 1, v148);
      goto LABEL_5;
    }

    v337 = v359[0];
    v338 = v359[1];
    v339 = v360;
    v340 = v361;
    v333 = v355;
    v334 = v356;
    v335 = v357;
    v336 = v358;
    v346 = v357;
    v347 = v358;
    v344 = v355;
    v345 = v356;
    v350 = v360;
    v351 = v361;
    v348 = v359[0];
    v349 = v359[1];
    v115 = sub_1D5CFD35C(&v344);
    if (v115 <= 1)
    {
      v116 = v331;
      v24 = v332;
      v117 = v330;
      if (v115)
      {
        v193 = sub_1D5CFD34C(&v344);
        v369 = v337;
        v370 = v338;
        v371 = v339;
        v372 = v340;
        v365 = v333;
        v366 = v334;
        v367 = v335;
        v368 = v336;
        v194 = sub_1D5CFD34C(&v365);
        sub_1D6086694(v194, v364);
        sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
        v195 = type metadata accessor for FormatInspectionItem(0);
        v196 = &v24[*(v195 + 24)];
        sub_1D5CFD368(&v333);
        v197 = v193[3];
        v199 = *v193;
        v198 = v193[1];
        *(v196 + 2) = v193[2];
        *(v196 + 3) = v197;
        *v196 = v199;
        *(v196 + 1) = v198;
        v200 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v200 - 8) + 56))(v196, 0, 1, v200);
        *v24 = v117;
        *(v24 + 1) = v116;
        *(v24 + 1) = xmmword_1D739CF00;
        v27 = &v24[*(v195 + 28)];
        goto LABEL_12;
      }

      v118 = sub_1D5CFD34C(&v344);
      v119 = *v118;
      v120 = v118[1];
      sub_1D5B88EF0(v329, &qword_1EDF43B70, (v20 + 1));
      v22 = type metadata accessor for FormatInspectionItem(0);
      v121 = &v24[*(v22 + 24)];

      sub_1D5CFD368(&v333);
      *v121 = v119;
      *(v121 + 1) = v120;
      v122 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
      *v24 = v117;
      *(v24 + 1) = v116;
      *(v24 + 1) = xmmword_1D739CF10;
LABEL_6:
      v27 = &v24[*(v22 + 28)];
      goto LABEL_12;
    }

    v159 = v20;
    v47 = v331;
    v50 = v332;
    v20 = v330;
    if (v115 != 2)
    {
      v209 = *sub_1D5CFD34C(&v344);
      sub_1D5B88EF0(v329, &qword_1EDF43B70, (v159 + 1));
      v112 = type metadata accessor for FormatInspectionItem(0);
      v210 = *(v112 + 24);
      *(v50 + v210) = v209;
      v211 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v211 - 8) + 56))(v50 + v210, 0, 1, v211);
      *v50 = v20;
      v50[1] = v47;
      v50[2] = 0xD000000000000012;
      v50[3] = 0x80000001D73E40B0;
      goto LABEL_91;
    }

    v160 = sub_1D5CFD34C(&v344);
    v369 = v337;
    v370 = v338;
    v371 = v339;
    v372 = v340;
    v365 = v333;
    v366 = v334;
    v367 = v335;
    v368 = v336;
    v161 = sub_1D5CFD34C(&v365);
    sub_1D60865E4(v161, v364);
    sub_1D5B88EF0(v329, &qword_1EDF43B70, (v159 + 1));
    v129 = type metadata accessor for FormatInspectionItem(0);
    v162 = (v50 + *(v129 + 24));
    sub_1D5CFD368(&v333);
    v163 = v160[3];
    v165 = *v160;
    v164 = v160[1];
    v162[2] = v160[2];
    v162[3] = v163;
    *v162 = v165;
    v162[1] = v164;
    v166 = v160[7];
    v168 = v160[4];
    v167 = v160[5];
    v162[6] = v160[6];
    v162[7] = v166;
    v162[4] = v168;
    v162[5] = v167;
    v169 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v169 - 8) + 56))(v162, 0, 1, v169);
    goto LABEL_100;
  }

  v326 = *(&v355 + 1);
  v327 = v355;
  v328 = v356;
  v46 = sub_1D70732C4(v355);
  v47 = v46;
  v20 = *(v46 + 16);
  if (!v20)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_60:

    sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    v77 = v50[2];

    if (!v77)
    {

      v86 = type metadata accessor for FormatInspectionItem(0);
      v87 = *(v86 + 24);
      v88 = type metadata accessor for FormatInspectionItem.Value(0);
      v89 = v332;
      (*(*(v88 - 8) + 56))(v332 + v87, 1, 1, v88);
      v90 = v331;
      *v89 = v330;
      v89[1] = v90;
      v89[2] = 0;
      v89[3] = 0;
      v27 = v89 + *(v86 + 28);
      goto LABEL_12;
    }

    v78 = type metadata accessor for FormatInspectionItem(0);
    v79 = v332;
    v80 = (v332 + *(v78 + 24));
    v81 = v326;
    *v80 = v327;
    v80[1] = v81;
    v82 = v328;
    v80[2] = v328;
    v83 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v83 - 8) + 56))(v80, 0, 1, v83);
    v84 = v331;
    *v79 = v330;
    v79[1] = v84;
    v79[2] = v81;
    v79[3] = v82;
    v85 = v79 + *(v78 + 28);
    *v85 = 0;
    *(v85 + 1) = 0;
    v85[16] = -1;

    return __swift_destroy_boxed_opaque_existential_1(&v373);
  }

  v48 = 0;
  v49 = (v46 + 64);
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v48 >= *(v47 + 16))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v19 = *v49;
    v15 = *(*v49 + 2);
    v51 = v50[2];
    v52 = v51 + v15;
    if (__OFADD__(v51, v15))
    {
      goto LABEL_107;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (v53 && v52 <= v50[3] >> 1)
    {
      if (!*(v19 + 2))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v51 <= v52)
      {
        v54 = v51 + v15;
      }

      else
      {
        v54 = v51;
      }

      v50 = sub_1D698BAE0(v53, v54, 1, v50);
      if (!*(v19 + 2))
      {
LABEL_21:

        if (v15)
        {
          goto LABEL_108;
        }

        goto LABEL_22;
      }
    }

    v55 = (v50[3] >> 1) - v50[2];
    type metadata accessor for FormatInspectionItem(0);
    if (v55 < v15)
    {
      __break(1u);
      goto LABEL_120;
    }

    swift_arrayInitWithCopy();

    if (v15)
    {
      break;
    }

LABEL_22:
    v48 = (v48 + 1);
    v49 += 5;
    if (v20 == v48)
    {
      goto LABEL_60;
    }
  }

  v56 = v50[2];
  v57 = __OFADD__(v56, v15);
  v58 = v56 + v15;
  if (!v57)
  {
    v50[2] = v58;
    goto LABEL_22;
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  if (!swift_dynamicCast())
  {
LABEL_130:
    if (swift_dynamicCast())
    {
LABEL_162:
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v301 = *(&v355 + 1);
      v300 = v355;
      v22 = type metadata accessor for FormatInspectionItem(0);
      v24 = v332;
      v146 = v332 + *(v22 + 24);
      *v146 = __PAIR128__(v301, v300);
      v148 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_94;
    }

    if (swift_dynamicCast())
    {
      v230 = v344;
      *&v355 = 40;
      *(&v355 + 1) = 0xE100000000000000;
      v231 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v231);

      MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
      v232 = sub_1D7262A9C();
      MEMORY[0x1DA6F9910](v232);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v233 = *(&v355 + 1);
      v328 = v355;
      sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
      v234 = swift_allocObject();
      *(v234 + 16) = xmmword_1D7273AE0;
      sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v236 = *(*(v235 - 8) + 72);
      v237 = (*(*(v235 - 8) + 80) + 32) & ~*(*(v235 - 8) + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_1D7270C10;
      v239 = (v238 + v237);
      sub_1D711A80C(88, 0xE100000000000000, v230, 0, v239);
      v240 = type metadata accessor for FormatInspectionItem(0);
      v241 = *(*(v240 - 8) + 56);
      v241(v239, 0, 1, v240);
      sub_1D711A80C(89, 0xE100000000000000, *(&v230 + 1), 0, (v239 + v236));
      v241((v239 + v236), 0, 1, v240);
      sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v238, &v355);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v234 + 56) = &type metadata for FormatInspectionGroup;
      *(v234 + 64) = &off_1F518B2C0;
      v242 = swift_allocObject();
      *(v234 + 32) = v242;
      v243 = v356;
      *(v242 + 16) = v355;
      *(v242 + 32) = v243;
      *(v242 + 48) = v357;
      v244 = sub_1D5F62BFC(v234);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v234 + 32);
      swift_deallocClassInstance();
      v245 = sub_1D7073500(v244);

      v246 = v331;
      v247 = v332;
      v248 = v330;
      v249 = v245;
      v250 = v328;
      v251 = v233;
LABEL_136:
      sub_1D711AD20(v248, v246, v249, v250, v251, v247);
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      return __swift_destroy_boxed_opaque_existential_1(&v373);
    }

    if (swift_dynamicCast())
    {
      v252 = v344;
      *&v355 = 40;
      *(&v355 + 1) = 0xE100000000000000;
      v253 = sub_1D6936F98(v344);
      MEMORY[0x1DA6F9910](v253);

      MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
      v254 = sub_1D6936F98(*(&v252 + 1));
      MEMORY[0x1DA6F9910](v254);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v327 = *(&v355 + 1);
      v328 = v355;
      sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
      v255 = swift_allocObject();
      *(v255 + 16) = xmmword_1D7273AE0;
      sub_1D71330BC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v326 = v256;
      v257 = *(*(v256 - 8) + 72);
      v258 = (*(*(v256 - 8) + 80) + 32) & ~*(*(v256 - 8) + 80);
      v259 = swift_allocObject();
      *(v259 + 16) = xmmword_1D7270C10;
      v260 = v259 + v258;

      sub_1D711B070(88, 0xE100000000000000, v252, (v259 + v258));
      v261 = type metadata accessor for FormatInspectionItem(0);
      v262 = *(*(v261 - 8) + 56);
      v262(v260, 0, 1, v261);

      sub_1D711B070(89, 0xE100000000000000, *(&v252 + 1), (v260 + v257));

      v262(v260 + v257, 0, 1, v261);
      sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v259, &v355);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v255 + 56) = &type metadata for FormatInspectionGroup;
      *(v255 + 64) = &off_1F518B2C0;
      v263 = swift_allocObject();
      *(v255 + 32) = v263;
      v264 = v356;
      *(v263 + 16) = v355;
      *(v263 + 32) = v264;
      *(v263 + 48) = v357;
      v265 = sub_1D5F62BFC(v255);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v255 + 32);
      swift_deallocClassInstance();
      v266 = sub_1D7073500(v265);

      v246 = v331;
      v247 = v332;
      v248 = v330;
      v249 = v266;
      v251 = v327;
      v250 = v328;
      goto LABEL_136;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_162;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v72 = type metadata accessor for FormatInspectionItem(0);
      v73 = *(v72 + 24);
      v75 = type metadata accessor for FormatInspectionItem.Value(0);
      v74 = v332;
      goto LABEL_58;
    }

    type metadata accessor for FormatCommandAction();
    if (swift_dynamicCast())
    {
      goto LABEL_164;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v267 = v355;
      v329 = *(v19 + 8);
      v268 = *(&v356 + 1);
      v269 = v357;
      v112 = type metadata accessor for FormatInspectionItem(0);
      v50 = v332;
      v183 = v332 + *(v112 + 24);
      *v183 = v267;
      *(v183 + 8) = v329;
      *(v183 + 3) = v268;
      *(v183 + 4) = v269;
      v185 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_105:
      swift_storeEnumTagMultiPayload();
      (*(*(v185 - 8) + 56))(v183, 0, 1, v185);
      v186 = v331;
      *v50 = v330;
      v50[1] = v186;
      v50[2] = 0;
      v50[3] = 0;
      goto LABEL_91;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v270 = type metadata accessor for FormatInspectionItem(0);
      v271 = *(v270 + 24);
      v272 = v332;
      sub_1D5CAD93C(v327, v332 + v271, type metadata accessor for FormatPropertyDefinition);
      v273 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v273 - 8) + 56))(&v272[v271], 0, 1, v273);
      v274 = v331;
      *v272 = v330;
      *(v272 + 1) = v274;
      *(v272 + 2) = 0;
      *(v272 + 3) = 0;
      v27 = &v272[*(v270 + 28)];
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v275 = type metadata accessor for FormatInspectionItem(0);
      v276 = *(v275 + 24);
      v277 = v332;
      (*(v323 + 32))(v332 + v276, v325, v326);
      v278 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v278 - 8) + 56))(&v277[v276], 0, 1, v278);
      v279 = v331;
      *v277 = v330;
      *(v277 + 1) = v279;
      *(v277 + 2) = 0;
      *(v277 + 3) = 0;
      v27 = &v277[*(v275 + 28)];
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v280 = v355;
      v281 = v359[0];
      v282 = type metadata accessor for FormatInspectionItem(0);
      v283 = v332 + *(v282 + 24);
      *v283 = v280;
      if (v281)
      {
        *(v283 + 8) = *(v19 + 8);
        *(v283 + 24) = *(v19 + 24);
        *(v283 + 40) = *(v19 + 40);
        *(v283 + 7) = *(&v358 + 1);
      }

      v284 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v284 - 8) + 56))(v283, 0, 1, v284);
      v285 = v332;
      v286 = v331;
      *v332 = v330;
      v285[1] = v286;
      v285[2] = 0;
      v285[3] = 0;
      v27 = v285 + *(v282 + 28);
      goto LABEL_12;
    }

    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (swift_dynamicCast())
    {
LABEL_164:
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v302 = v355;
      v22 = type metadata accessor for FormatInspectionItem(0);
      v23 = *(v22 + 24);
      v24 = v332;
      *(v332 + v23) = v302;
      v25 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_4;
    }

    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v329 = v355;
      v288 = *(&v356 + 1);
      v287 = v356;
      v22 = type metadata accessor for FormatInspectionItem(0);
      v24 = v332;
      v146 = v332 + *(v22 + 24);
      *v146 = v329;
      *(v146 + 1) = __PAIR128__(v288, v287);
      v148 = type metadata accessor for FormatInspectionItem.Value(0);
      goto LABEL_94;
    }

    type metadata accessor for DebugFormatDebuggerCallStackEntry();
    if (swift_dynamicCast())
    {
      goto LABEL_164;
    }

    type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
    if (swift_dynamicCast())
    {
      goto LABEL_164;
    }

    sub_1D5B5A498(0, &unk_1EDF04400);
    if (swift_dynamicCast())
    {

      v289 = v355;
      v290 = [v355 attributedName];
      v291 = [v290 string];

      v292 = sub_1D726207C();
      v294 = v293;

      v295 = [v289 category];
      if (v295)
      {
        v296 = v295;
        v297 = sub_1D726207C();
        v299 = v298;
      }

      else
      {
        v297 = 0;
        v299 = 0;
      }

      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      v303 = type metadata accessor for FormatInspectionItem(0);
      v304 = *(v303 + 24);
      v305 = v332;
      *(v332 + v304) = v289;
      v306 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v306 - 8) + 56))(v305 + v304, 0, 1, v306);
      *v305 = v292;
      v305[1] = v294;
      v305[2] = v297;
      v305[3] = v299;
      v27 = v305 + *(v303 + 28);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_162;
    }

    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      goto LABEL_164;
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v355, &v344);
      v307 = type metadata accessor for FormatInspectionItem(0);
      v308 = v332;
      v309 = (v332 + *(v307 + 24));
      __swift_project_boxed_opaque_existential_1(&v344, *(&v345 + 1));
      v310 = sub_1D72644BC();
      v312 = v311;
      sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
      *v309 = v310;
      v309[1] = v312;
      v313 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v313 - 8) + 56))(v309, 0, 1, v313);
      v314 = v331;
      *v308 = v330;
      v308[1] = v314;
      v308[2] = 0;
      v308[3] = 0;
      v315 = v308 + *(v307 + 28);
      *v315 = 0;
      *(v315 + 1) = 0;
      v315[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(&v344);
      return __swift_destroy_boxed_opaque_existential_1(&v373);
    }

    sub_1D5B7C390(&v373, &v355);
    v316 = type metadata accessor for FormatInspectionItem(0);
    v317 = v332;
    v318 = (v332 + *(v316 + 24));
    *&v344 = 0;
    *(&v344 + 1) = 0xE000000000000000;
    v319 = MEMORY[0x1E69E7CA0];
    sub_1D7263F9C();
    v320 = v344;
    sub_1D5B88EF0(v329, &qword_1EDF43B70, v319 + 8);
    __swift_destroy_boxed_opaque_existential_1(&v355);
    *v318 = v320;
    v321 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v321 - 8) + 56))(v318, 0, 1, v321);
    v322 = v331;
    *v317 = v330;
    v317[1] = v322;
    v317[2] = 0;
    v317[3] = 0;
    v32 = v317 + *(v316 + 28);
LABEL_8:
    *v32 = 0;
    *(v32 + 1) = 0;
    v32[16] = -1;
    return result;
  }

  sub_1D5B88EF0(v329, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
  v223 = type metadata accessor for FormatInspectionItem(0);
  v99 = v332;
  v224 = (v332 + *(v223 + 24));
  v229 = v356;
  *v224 = v355;
  v224[1] = v229;
  v227 = type metadata accessor for FormatInspectionItem.Value(0);
LABEL_118:
  swift_storeEnumTagMultiPayload();
  (*(*(v227 - 8) + 56))(v224, 0, 1, v227);
  v228 = v331;
  *v99 = v330;
  v99[1] = v228;
  v99[2] = 0;
  v99[3] = 0;
  v109 = *(v223 + 28);
LABEL_72:
  v27 = v99 + v109;
LABEL_12:
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(&v373);
}

uint64_t sub_1D711E4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedHeadline(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D71330BC(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v39 - v15;
  sub_1D7133C80(a3, v39 - v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_1D7133D00(a3, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v17 = type metadata accessor for FormatInspectionItem(0);
    v18 = *(v17 + 24);
    v19 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v21 = *(v17 + 28);
LABEL_3:
    v22 = &a4[v21];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    sub_1D7133D00(a3, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v23 = v40;
    v24 = type metadata accessor for FormatInspectionItem(0);
    v25 = *(v24 + 24);
    *&a4[v25] = v23;
    v26 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(&a4[v25], 0, 1, v26);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v27 = &a4[*(v24 + 28)];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      sub_1D5CAD93C(v16, v12, type metadata accessor for FeedHeadline);
      v35 = type metadata accessor for FormatInspectionItem(0);
      v36 = &a4[*(v35 + 24)];
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      sub_1D7263F9C();
      v37 = v40;
      sub_1D7133D00(a3, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D7133844(v12, type metadata accessor for FeedHeadline);
      *v36 = v37;
      v38 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v21 = *(v35 + 28);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v40, v39);
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = &a4[*(v28 + 24)];
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v30 = sub_1D72644BC();
    v32 = v31;
    sub_1D7133D00(a3, qword_1EDF42030, type metadata accessor for FeedHeadline);
    *v29 = v30;
    v29[1] = v32;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v34 = &a4[*(v28 + 28)];
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return sub_1D7133844(v16, type metadata accessor for FeedHeadline);
}

uint64_t sub_1D711E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  v8 = a3;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 + 24);
  if (v8 == 2)
  {
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  }

  else
  {
    a4[v10] = a3 & 1;
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(&a4[v10], 0, 1, v13);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v14 = &a4[*(v9 + 28)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D711EB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v7 = a3[5];
  v8 = a3[7];
  v47 = a3[6];
  v48[0] = v8;
  *(v48 + 9) = *(a3 + 121);
  v9 = a3[1];
  v10 = a3[3];
  v43 = a3[2];
  v44 = v10;
  v11 = a3[3];
  v12 = a3[5];
  v45 = a3[4];
  v46 = v12;
  v13 = a3[1];
  v41 = *a3;
  v42 = v13;
  v14 = a3[7];
  v49[6] = v47;
  v50[0] = v14;
  *(v50 + 9) = *(a3 + 121);
  v49[2] = v43;
  v49[3] = v11;
  v49[4] = v45;
  v49[5] = v7;
  v49[0] = v41;
  v49[1] = v9;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v49) == 1)
  {
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = *(v15 + 24);
    v17 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
LABEL_3:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v19 = &a4[*(v15 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v20 = type metadata accessor for FormatInspectionItem(0);
    v21 = *(v20 + 24);
    *&a4[v21] = v31;
    v22 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(&a4[v21], 0, 1, v22);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v23 = &a4[*(v20 + 28)];
    *v23 = 0;
    *(v23 + 1) = 0;
    v23[16] = -1;
    v38 = v47;
    v39[0] = v48[0];
    *(v39 + 9) = *(v48 + 9);
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      v38 = v47;
      v39[0] = v48[0];
      *(v39 + 9) = *(v48 + 9);
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v32 = v41;
      v33 = v42;
      v15 = type metadata accessor for FormatInspectionItem(0);
      v29 = &a4[*(v15 + 24)];
      sub_1D7263F9C();
      sub_1D5ECF320(&v32);
      *v29 = 0;
      *(v29 + 1) = 0xE000000000000000;
      v30 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v40, &v32);
    v24 = type metadata accessor for FormatInspectionItem(0);
    v25 = &a4[*(v24 + 24)];
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    *v25 = sub_1D72644BC();
    v25[1] = v26;
    v27 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v28 = &a4[*(v24 + 28)];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v38 = v47;
    v39[0] = v48[0];
    *(v39 + 9) = *(v48 + 9);
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v32 = v41;
    v33 = v42;
  }

  return sub_1D5ECF320(&v32);
}

uint64_t sub_1D711EF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedRecipe();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D71330BC(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v39 - v15;
  sub_1D7133C80(a3, v39 - v15, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_1D7133D00(a3, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v17 = type metadata accessor for FormatInspectionItem(0);
    v18 = *(v17 + 24);
    v19 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v21 = *(v17 + 28);
LABEL_3:
    v22 = &a4[v21];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    sub_1D7133D00(a3, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v23 = v40;
    v24 = type metadata accessor for FormatInspectionItem(0);
    v25 = *(v24 + 24);
    *&a4[v25] = v23;
    v26 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(&a4[v25], 0, 1, v26);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v27 = &a4[*(v24 + 28)];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      sub_1D5CAD93C(v16, v12, type metadata accessor for FeedRecipe);
      v35 = type metadata accessor for FormatInspectionItem(0);
      v36 = &a4[*(v35 + 24)];
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      sub_1D7263F9C();
      v37 = v40;
      sub_1D7133D00(a3, qword_1EDF34D20, type metadata accessor for FeedRecipe);
      sub_1D7133844(v12, type metadata accessor for FeedRecipe);
      *v36 = v37;
      v38 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v21 = *(v35 + 28);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v40, v39);
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = &a4[*(v28 + 24)];
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v30 = sub_1D72644BC();
    v32 = v31;
    sub_1D7133D00(a3, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    *v29 = v30;
    v29[1] = v32;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v34 = &a4[*(v28 + 28)];
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return sub_1D7133844(v16, type metadata accessor for FeedRecipe);
}

uint64_t sub_1D711F45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1D713338C(a3, v28, &qword_1EDF12E30, &type metadata for FeedPuzzle);
  if (v29)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(a3, &qword_1EDF12E30, &type metadata for FeedPuzzle);
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a4[v9] = *&v27[0];
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a4[v9], 0, 1, v10);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v11 = &a4[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
      return sub_1D5F2DF58(v28);
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(v27, v26);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = &a4[*(v16 + 24)];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v18 = sub_1D72644BC();
      v20 = v19;
      sub_1D5B88EF0(a3, &qword_1EDF12E30, &type metadata for FeedPuzzle);
      *v17 = v18;
      v17[1] = v20;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v22 = &a4[*(v16 + 28)];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_1D5F2DF58(v28);
    }

    v27[10] = v36;
    v27[11] = v37;
    v27[12] = v38;
    v27[6] = v32;
    v27[7] = v33;
    v27[8] = v34;
    v27[9] = v35;
    v27[2] = v28[2];
    v27[3] = v29;
    v27[4] = v30;
    v27[5] = v31;
    v27[0] = v28[0];
    v27[1] = v28[1];
    v12 = type metadata accessor for FormatInspectionItem(0);
    v23 = &a4[*(v12 + 24)];
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1D7263F9C();
    sub_1D5B88EF0(a3, &qword_1EDF12E30, &type metadata for FeedPuzzle);
    sub_1D5F2DF58(v27);
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    sub_1D5B88EF0(a3, &qword_1EDF12E30, &type metadata for FeedPuzzle);
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v25 = &a4[*(v12 + 28)];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  return result;
}

uint64_t sub_1D711F844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!a4)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = 0;
    v13 = *(v9 + 28);
    goto LABEL_5;
  }

  type metadata accessor for FormatCommandAction();
  if (!swift_dynamicCast())
  {
    sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
    if (!swift_dynamicCast())
    {
      type metadata accessor for DebugFormatDebuggerCallStackEntry();
      if (!swift_dynamicCast())
      {
        type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
        if (!swift_dynamicCast())
        {
          sub_1D5B5A498(0, &unk_1EDF04400);
          if (swift_dynamicCast())
          {

            v20 = [v36 attributedName];
            v21 = [v20 string];

            v22 = sub_1D726207C();
            v24 = v23;

            v25 = [v36 category];
            if (v25)
            {
              v26 = v25;
              v27 = sub_1D726207C();
              v29 = v28;
            }

            else
            {
              v27 = 0;
              v29 = 0;
            }

            v33 = type metadata accessor for FormatInspectionItem(0);
            v34 = *(v33 + 24);
            *(a5 + v34) = v36;
            v35 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v35 - 8) + 56))(a5 + v34, 0, 1, v35);
            *a5 = v22;
            a5[1] = v24;
            a5[2] = v27;
            a5[3] = v29;
            v18 = *(v33 + 28);
            goto LABEL_10;
          }

          v30 = type metadata accessor for FormatInspectionItem(0);
          v31 = (a5 + *(v30 + 24));
          *v31 = a3;
          v31[1] = a4;
          v32 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          result = (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
          *a5 = a1;
          a5[1] = a2;
          a5[2] = 0;
          a5[3] = 0;
          v13 = *(v30 + 28);
LABEL_5:
          v14 = a5 + v13;
          *v14 = 0;
          *(v14 + 1) = 0;
          v14[16] = -1;
          return result;
        }
      }
    }
  }

  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = *(v15 + 24);
  *(a5 + v16) = v36;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(a5 + v16, 0, 1, v17);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = 0;
  v18 = *(v15 + 28);
LABEL_10:
  v19 = a5 + v18;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -1;
}

uint64_t sub_1D711FD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 41)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D711FFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 13)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D71202F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *&v27 = a3;
  *(&v27 + 1) = a4;
  if (a4)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a5[v9] = v24;
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a5[v9], 0, 1, v10);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v11 = &a5[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
    }

    else
    {
      v25 = &type metadata for FormatSelector;
      v26 = sub_1D6E0CF40();
      v24 = v27;
      sub_1D5B7DDE8(&v24, v23);
      v17 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a5[*(v17 + 24)];
      v19 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v20 = v19[1];
      *v18 = *v19;
      *(v18 + 1) = v20;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v22 = &a5[*(v17 + 28)];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = -1;

      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  else
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v12 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
  }

  return result;
}

uint64_t sub_1D7120550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (a4)
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v11 = &a5[*(v10 + 24)];
    *v11 = a3;
    *(v11 + 1) = a4;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v10 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v15 - 8) + 56))(&a5[v14], 1, 1, v15);
  }

  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v16 = &a5[*(v10 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  return result;
}

uint64_t sub_1D712066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 7)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D7120960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  if (!a3)
  {
    v23 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v23 + 24);
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v25 - 8) + 56))(&a4[v24], 1, 1, v25);
LABEL_26:
    *a4 = v5;
    *(a4 + 1) = v4;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v35 = &a4[*(v23 + 28)];
    *v35 = 0;
    *(v35 + 1) = 0;
    v35[16] = -1;
    return result;
  }

  result = sub_1D70732C4(a3);
  v8 = result;
  v9 = *(result + 16);
  if (!v9)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v26 = v12[2];

    if (v26)
    {
      v23 = type metadata accessor for FormatInspectionItem(0);
      v27 = &a4[*(v23 + 24)];
      sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 56) = &type metadata for FormatInspection;
      *(inited + 64) = &off_1F51E3FD0;
      *(inited + 32) = a3;
      v29 = inited + 32;
      v30 = sub_1D5F62BFC(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v29);
      v31 = sub_1D7073500(v30);

      *v27 = v31;
      v32 = type metadata accessor for FormatInspectionItem.Value(0);
      *(v27 + 1) = 0;
      *(v27 + 2) = 0;
      swift_storeEnumTagMultiPayload();
      result = (*(*(v32 - 8) + 56))(v27, 0, 1, v32);
    }

    else
    {

      v23 = type metadata accessor for FormatInspectionItem(0);
      v33 = *(v23 + 24);
      v34 = type metadata accessor for FormatInspectionItem.Value(0);
      result = (*(*(v34 - 8) + 56))(&a4[v33], 1, 1, v34);
    }

    v5 = a1;
    v4 = a2;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = result + 64;
  v12 = MEMORY[0x1E69E7CC0];
  while (v10 < *(v8 + 16))
  {
    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = v12[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v12[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v18, 1, v12);
      if (*(v13 + 16))
      {
LABEL_16:
        v19 = (v12[3] >> 1) - v12[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v19 < v14)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v12[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_31;
          }

          v12[2] = v22;
        }

        goto LABEL_5;
      }
    }

    if (v14)
    {
      goto LABEL_29;
    }

LABEL_5:
    ++v10;
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D7120CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 5)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatTextAlignment;
  v24 = sub_1D71335E0();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = 0xE500000000000000;
      v16 = 0x7468676972;
    }

    else
    {
      v15 = 0xE400000000000000;
      v16 = 1952867692;
    }
  }

  else if (v14 == 2)
  {
    v15 = 0xE600000000000000;
    v16 = 0x7265746E6563;
  }

  else if (v14 == 3)
  {
    v15 = 0xE900000000000064;
    v16 = 0x656966697473756ALL;
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x6C61727574616ELL;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D7120F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 6)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v22;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v23 = &type metadata for FormatTextLineBreakMode;
  v24 = sub_1D713358C();
  LOBYTE(v22) = v25;
  sub_1D5B7DDE8(&v22, v21);
  v14 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 0xEC00000064616548;
    }

    else if (v14 == 4)
    {
      v15 = 0xEC0000006C696154;
    }

    else
    {
      v15 = 0xEE00656C6464694DLL;
    }

    v16 = 0x657461636E757274;
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v15 = 0x80000001D73BB9F0;
      v16 = 0xD000000000000011;
    }

    else
    {
      v15 = 0xE400000000000000;
      v16 = 1885957219;
    }
  }

  else
  {
    v15 = 0xEC000000676E6970;
    v16 = 0x7061725764726F77;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a4[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D7121274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1D713338C(a3, v29, &unk_1EDF34F60, &type metadata for FeedTag);
  if (*(&v29[0] + 1))
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      sub_1D5B88EF0(a3, &unk_1EDF34F60, &type metadata for FeedTag);
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a4[v9] = *&v27[0];
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a4[v9], 0, 1, v10);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v11 = &a4[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
      return sub_1D5EE5B54(v29);
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(v27, v26);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = &a4[*(v16 + 24)];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v18 = sub_1D72644BC();
      v20 = v19;
      sub_1D5B88EF0(a3, &unk_1EDF34F60, &type metadata for FeedTag);
      *v17 = v18;
      v17[1] = v20;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v22 = &a4[*(v16 + 28)];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_1D5EE5B54(v29);
    }

    v27[6] = v29[6];
    v27[7] = v29[7];
    v27[8] = v29[8];
    v28 = v30;
    v27[2] = v29[2];
    v27[3] = v29[3];
    v27[4] = v29[4];
    v27[5] = v29[5];
    v27[0] = v29[0];
    v27[1] = v29[1];
    v12 = type metadata accessor for FormatInspectionItem(0);
    v23 = &a4[*(v12 + 24)];
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1D7263F9C();
    sub_1D5B88EF0(a3, &unk_1EDF34F60, &type metadata for FeedTag);
    sub_1D5EE5B54(v27);
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    sub_1D5B88EF0(a3, &unk_1EDF34F60, &type metadata for FeedTag);
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v25 = &a4[*(v12 + 28)];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  return result;
}

uint64_t sub_1D7121678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a3;
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v12 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(v12 + 24);
      *&a4[v13] = v22;
      v14 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(&a4[v13], 0, 1, v14);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v15 = &a4[*(v12 + 28)];
      *v15 = 0;
      *(v15 + 1) = 0;
      v15[16] = -1;
    }

    else
    {
      v23 = &type metadata for SportsDataVisualizationEventStatus;
      v24 = sub_1D7133974();
      *&v22 = v25;
      sub_1D5B7DDE8(&v22, v21);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = &a4[*(v16 + 24)];
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);

      *v17 = SportsDataVisualizationEventStatus.description.getter();
      v17[1] = v18;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v20 = &a4[*(v16 + 28)];
      *v20 = 0;
      *(v20 + 1) = 0;
      v20[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v11 = &a4[*(v7 + 28)];
    *v11 = 0;
    *(v11 + 1) = 0;
    v11[16] = -1;
  }

  return result;
}

uint64_t sub_1D7121930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 12)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = &a4[*(v7 + 28)];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v20;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  v21 = &type metadata for FormatFontScalingStyle;
  v22 = sub_1D7133634();
  LOBYTE(v20) = v23;
  sub_1D5B7DDE8(&v20, v19);
  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = &a4[*(v14 + 24)];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  *v15 = FormatFontScalingStyle.description.getter();
  *(v15 + 1) = v16;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v18 = &a4[*(v14 + 28)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1D7121B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 9)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D7121EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v23 = a3;
  if (a3 == 10)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v7 = type metadata accessor for FormatInspectionItem(0);
      v11 = *(v7 + 24);
      *&a4[v11] = v22;
      v12 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    }

    else
    {
      sub_1D5B49474(0, &qword_1EC884160);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v22, v21);
        v13 = type metadata accessor for FormatInspectionItem(0);
        v14 = &a4[*(v13 + 24)];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        *v14 = sub_1D72644BC();
        v14[1] = v15;
        v16 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
        *a4 = a1;
        *(a4 + 1) = a2;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        v17 = &a4[*(v13 + 28)];
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = -1;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      v7 = type metadata accessor for FormatInspectionItem(0);
      v18 = &a4[*(v7 + 24)];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      LOBYTE(v21[0]) = v23;
      sub_1D7263F9C();
      *v18 = 0;
      *(v18 + 1) = 0xE000000000000000;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v20 = &a4[*(v7 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  return result;
}

uint64_t sub_1D71221AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  if (a4 == 4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
LABEL_3:
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v12 = &a5[*(v8 + 28)];
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = -1;
    return result;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    *&a5[v14] = v25;
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(&a5[v14], 0, 1, v15);
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v16 = &a5[*(v13 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC884160);
    if (!swift_dynamicCast())
    {
      v8 = type metadata accessor for FormatInspectionItem(0);
      v22 = &a5[*(v8 + 24)];
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      v24[0] = v26;
      v24[1] = v27;
      sub_1D7263F9C();
      sub_1D62D4704(v26, v27);
      *v22 = 0;
      *(v22 + 1) = 0xE000000000000000;
      v23 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
      goto LABEL_3;
    }

    sub_1D5B7DDE8(&v25, v24);
    v17 = type metadata accessor for FormatInspectionItem(0);
    v18 = &a5[*(v17 + 24)];
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    *v18 = sub_1D72644BC();
    v18[1] = v19;
    v20 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    v21 = &a5[*(v17 + 28)];
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = -1;
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return sub_1D62D4704(v26, v27);
}

uint64_t sub_1D71224F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v37 = a3;
  v38 = a4 & 1;
  if (a4)
  {
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v10 - 8) + 56))(a5 + v9, 1, 1, v10);
LABEL_9:
    *a5 = a1;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = 0;
    v14 = *(v8 + 28);
LABEL_10:
    v15 = a5 + v14;
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = -1;
    return result;
  }

  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v16 = [v36[0] attributedName];
    v17 = [v16 string];

    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [v36[0] category];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D726207C();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v32 = type metadata accessor for FormatInspectionItem(0);
    v33 = *(v32 + 24);
    *(a5 + v33) = v36[0];
    v34 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v34 - 8) + 56))(a5 + v33, 0, 1, v34);
    *a5 = v18;
    a5[1] = v20;
    a5[2] = v23;
    a5[3] = v25;
    v14 = *(v32 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v26 = MEMORY[0x1E69E63B0];
  if (swift_dynamicCast())
  {
LABEL_8:
    v8 = type metadata accessor for FormatInspectionItem(0);
    v12 = *(v8 + 24);
    *(a5 + v12) = v36[0];
    v13 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v13 - 8) + 56))(a5 + v12, 0, 1, v13);
    goto LABEL_9;
  }

  v36[3] = v26;
  v36[4] = MEMORY[0x1E69E6418];
  v36[0] = v37;
  sub_1D5B7DDE8(v36, v35);
  v27 = type metadata accessor for FormatInspectionItem(0);
  v28 = (a5 + *(v27 + 24));
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  *v28 = sub_1D7262A9C();
  v28[1] = v29;
  v30 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = 0;
  v31 = a5 + *(v27 + 28);
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D7122A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v27 = a3;
  v28 = a4;
  v29 = a5 & 1;
  if (a5)
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v11 - 8) + 56))(&a6[v10], 1, 1, v11);
LABEL_5:
    *a6 = a1;
    *(a6 + 1) = a2;
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    v15 = *(v9 + 28);
LABEL_6:
    v16 = &a6[v15];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = -1;
    return result;
  }

  sub_1D713340C();
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v9 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v9 + 24);
    *&a6[v13] = v26;
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v14 - 8) + 56))(&a6[v13], 0, 1, v14);
    goto LABEL_5;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (!swift_dynamicCast())
  {
    v22 = type metadata accessor for FormatInspectionItem(0);
    v23 = &a6[*(v22 + 24)];
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    v25[0] = v27;
    v25[1] = v28;
    sub_1D7263F9C();
    *v23 = 0;
    *(v23 + 1) = 0xE000000000000000;
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    *a6 = a1;
    *(a6 + 1) = a2;
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    v15 = *(v22 + 28);
    goto LABEL_6;
  }

  sub_1D5B7DDE8(&v26, v25);
  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &a6[*(v17 + 24)];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  *v18 = sub_1D72644BC();
  v18[1] = v19;
  v20 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = 0;
  *(a6 + 3) = 0;
  v21 = &a6[*(v17 + 28)];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1D7122D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v37 = BYTE4(a3) & 1;
  if ((a3 & 0x100000000) != 0)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
LABEL_9:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = 0;
    v13 = *(v7 + 28);
LABEL_10:
    v14 = a4 + v13;
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = -1;
    return result;
  }

  type metadata accessor for FormatCommandAction();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D7133B88(0, &qword_1EC88D750, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D73A8]);
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  if (swift_dynamicCast())
  {
    goto LABEL_8;
  }

  sub_1D5B5A498(0, &unk_1EDF04400);
  if (swift_dynamicCast())
  {

    v15 = [v35[0] attributedName];
    v16 = [v15 string];

    v17 = sub_1D726207C();
    v19 = v18;

    v20 = [v35[0] category];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D726207C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v31 = type metadata accessor for FormatInspectionItem(0);
    v32 = *(v31 + 24);
    *(a4 + v32) = v35[0];
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v33 - 8) + 56))(a4 + v32, 0, 1, v33);
    *a4 = v17;
    a4[1] = v19;
    a4[2] = v22;
    a4[3] = v24;
    v13 = *(v31 + 28);
    goto LABEL_10;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v25 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
LABEL_8:
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *(a4 + v11) = v35[0];
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(a4 + v11, 0, 1, v12);
    goto LABEL_9;
  }

  v35[3] = v25;
  v35[4] = MEMORY[0x1E69E6498];
  LODWORD(v35[0]) = v36;
  sub_1D5B7DDE8(v35, v34);
  v26 = type metadata accessor for FormatInspectionItem(0);
  v27 = (a4 + *(v26 + 24));
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  *v27 = sub_1D7262AEC();
  v27[1] = v28;
  v29 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = 0;
  v30 = a4 + *(v26 + 28);
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = -1;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1D7123244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 144);
  v37[8] = *(a3 + 128);
  v37[9] = v8;
  v38 = *(a3 + 160);
  v9 = *(a3 + 80);
  v37[4] = *(a3 + 64);
  v37[5] = v9;
  v10 = *(a3 + 112);
  v37[6] = *(a3 + 96);
  v37[7] = v10;
  v11 = *(a3 + 16);
  v37[0] = *a3;
  v37[1] = v11;
  v12 = *(a3 + 48);
  v37[2] = *(a3 + 32);
  v37[3] = v12;
  if (sub_1D60081E0(v37) != 1)
  {
    v18 = *(a3 + 144);
    v35[8] = *(a3 + 128);
    v35[9] = v18;
    v36 = *(a3 + 160);
    v19 = *(a3 + 80);
    v35[4] = *(a3 + 64);
    v35[5] = v19;
    v20 = *(a3 + 112);
    v35[6] = *(a3 + 96);
    v35[7] = v20;
    v21 = *(a3 + 16);
    v35[0] = *a3;
    v35[1] = v21;
    v22 = *(a3 + 48);
    v35[2] = *(a3 + 32);
    v35[3] = v22;
    v23 = sub_1D62B4E2C(v35);
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v24 = 0xEB0000000070756FLL;
        v25 = 0x7247207373616C47;
        goto LABEL_11;
      }

      v24 = 0xE500000000000000;
      v25 = 0x7373616C47;
    }

    else if (v23)
    {
      v24 = 0xED000079636E6172;
      v25 = 0x6269562072756C42;
    }

    else
    {
      v24 = 0xE400000000000000;
      v25 = 1920298050;
    }

    sub_1D5D04BC4(v35);
LABEL_11:
    v26 = type metadata accessor for FormatInspectionItem(0);
    v27 = &a4[*(v26 + 24)];
    v28 = *(a3 + 144);
    *(v27 + 8) = *(a3 + 128);
    *(v27 + 9) = v28;
    *(v27 + 80) = *(a3 + 160);
    v29 = *(a3 + 80);
    *(v27 + 4) = *(a3 + 64);
    *(v27 + 5) = v29;
    v30 = *(a3 + 112);
    *(v27 + 6) = *(a3 + 96);
    *(v27 + 7) = v30;
    v31 = *(a3 + 16);
    *v27 = *a3;
    *(v27 + 1) = v31;
    v32 = *(a3 + 48);
    *(v27 + 2) = *(a3 + 32);
    *(v27 + 3) = v32;
    v33 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = v25;
    *(a4 + 3) = v24;
    v17 = *(v26 + 28);
    goto LABEL_12;
  }

  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = *(v13 + 24);
  v15 = type metadata accessor for FormatInspectionItem.Value(0);
  result = (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v17 = *(v13 + 28);
LABEL_12:
  v34 = &a4[v17];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = -1;
  return result;
}

uint64_t sub_1D71234B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v25 = a3;
  if (a3 == 4)
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
LABEL_5:
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v13 = *(v7 + 28);
    goto LABEL_6;
  }

  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v11 = *(v7 + 24);
    *&a4[v11] = v24;
    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(&a4[v11], 0, 1, v12);
    goto LABEL_5;
  }

  sub_1D5B49474(0, &qword_1EC884160);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(&v24, v23);
    v15 = type metadata accessor for FormatInspectionItem(0);
    v16 = &a4[*(v15 + 24)];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    *v16 = sub_1D72644BC();
    v16[1] = v17;
    v18 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v19 = &a4[*(v15 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = -1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = &a4[*(v20 + 24)];
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  LOBYTE(v23[0]) = v25;
  sub_1D7263F9C();
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v13 = *(v20 + 28);
LABEL_6:
  v14 = &a4[v13];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  return result;
}

uint64_t sub_1D71237B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, char *a6@<X8>)
{
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v34 = a5;
  if (a5 == 0xFF)
  {
    v13 = type metadata accessor for FormatInspectionItem(0);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v15 - 8) + 56))(&a6[v14], 1, 1, v15);
    *a6 = a1;
    *(a6 + 1) = a2;
    *(a6 + 2) = 0;
    *(a6 + 3) = 0;
    v17 = &a6[*(v13 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = -1;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v9 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v9 + 24);
      *&a6[v10] = v29;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(&a6[v10], 0, 1, v11);
      *a6 = a1;
      *(a6 + 1) = a2;
      *(a6 + 2) = 0;
      *(a6 + 3) = 0;
      v12 = &a6[*(v9 + 28)];
      *v12 = 0;
      *(v12 + 1) = 0;
      v12[16] = -1;
    }

    else
    {
      v31 = &type metadata for FormatBoolean;
      v32 = sub_1D71332E4();
      v18 = v33;
      v29 = v33;
      v30 = v34;
      sub_1D5B7DDE8(&v29, v28);
      v19 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v20 = *v19;
      if (v19[2])
      {
        v21 = v19[1];
        sub_1D5E04CC4(v18);
        MEMORY[0x1DA6F9910](v20, v21);
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v22 = 0x286E6F6974706FLL;
        v23 = 0xE700000000000000;
      }

      else
      {
        sub_1D5E04CC4(v18);
        if (v20)
        {
          v22 = 1702195828;
        }

        else
        {
          v22 = 0x65736C6166;
        }

        if (v20)
        {
          v23 = 0xE400000000000000;
        }

        else
        {
          v23 = 0xE500000000000000;
        }
      }

      v24 = type metadata accessor for FormatInspectionItem(0);
      v25 = &a6[*(v24 + 24)];
      *v25 = v22;
      v25[1] = v23;
      v26 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      *a6 = a1;
      *(a6 + 1) = a2;
      *(a6 + 2) = 0;
      *(a6 + 3) = 0;
      v27 = &a6[*(v24 + 28)];
      *v27 = 0;
      *(v27 + 1) = 0;
      v27[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    return sub_1D5D2F2C4(v33, *(&v33 + 1), v34);
  }

  return result;
}

uint64_t sub_1D7123AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  if (a3)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v8 = type metadata accessor for FormatInspectionItem(0);
      v9 = *(v8 + 24);
      *&a5[v9] = v25;
      v10 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(&a5[v9], 0, 1, v10);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v11 = &a5[*(v8 + 28)];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = -1;
LABEL_7:
    }

    sub_1D5B49474(0, &qword_1EC884160);
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v25, v24);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = &a5[*(v16 + 24)];
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      *v17 = sub_1D72644BC();
      v17[1] = v18;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
      *a5 = a1;
      *(a5 + 1) = a2;
      *(a5 + 2) = 0;
      *(a5 + 3) = 0;
      v20 = &a5[*(v16 + 28)];
      *v20 = 0;
      *(v20 + 1) = 0;
      v20[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v24);
      goto LABEL_7;
    }

    v12 = type metadata accessor for FormatInspectionItem(0);
    v21 = &a5[*(v12 + 24)];
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    v24[0] = v26;
    v24[1] = v27;
    sub_1D7263F9C();

    *v21 = 0;
    *(v21 + 1) = 0xE000000000000000;
    v22 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v12 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  }

  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = 0;
  *(a5 + 3) = 0;
  v23 = &a5[*(v12 + 28)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  return result;
}

uint64_t sub_1D7123DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 + 64);
  if (v7 == 255)
  {
    v10 = type metadata accessor for FormatInspectionItem(0);
    v13 = *(v10 + 24);
    v14 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  }

  else
  {
    v9 = *a3;
    v10 = type metadata accessor for FormatInspectionItem(0);
    v11 = &a4[*(v10 + 24)];
    *v11 = v9;
    if (v7)
    {
      *(v11 + 8) = *(a3 + 1);
      *(v11 + 24) = *(a3 + 3);
      *(v11 + 40) = *(a3 + 5);
      *(v11 + 7) = a3[7];
    }

    v12 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v16 = &a4[*(v10 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  return result;
}

uint64_t sub_1D7123FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a3;
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (swift_dynamicCast())
    {
      v12 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(v12 + 24);
      *&a4[v13] = v22;
      v14 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(&a4[v13], 0, 1, v14);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v15 = &a4[*(v12 + 28)];
      *v15 = 0;
      *(v15 + 1) = 0;
      v15[16] = -1;
    }

    else
    {
      v23 = &type metadata for FormatFloat;
      v24 = sub_1D5C351C4();
      *&v22 = v25;
      sub_1D5B7DDE8(&v22, v21);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = &a4[*(v16 + 24)];
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);

      *v17 = FormatFloat.description.getter();
      v17[1] = v18;
      v19 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
      *a4 = a1;
      *(a4 + 1) = a2;
      *(a4 + 2) = 0;
      *(a4 + 3) = 0;
      v20 = &a4[*(v16 + 28)];
      *v20 = 0;
      *(v20 + 1) = 0;
      v20[16] = -1;
      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
    v7 = type metadata accessor for FormatInspectionItem(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for FormatInspectionItem.Value(0);
    result = (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
    *a4 = a1;
    *(a4 + 1) = a2;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v11 = &a4[*(v7 + 28)];
    *v11 = 0;
    *(v11 + 1) = 0;
    v11[16] = -1;
  }

  return result;
}