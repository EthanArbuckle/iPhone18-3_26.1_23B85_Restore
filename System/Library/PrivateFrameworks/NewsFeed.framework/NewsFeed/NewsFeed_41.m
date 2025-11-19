uint64_t sub_1D5F075A8()
{
  *(*v1 + 1736) = v0;

  if (v0)
  {

    v2 = sub_1D5F096F4;
  }

  else
  {

    v2 = sub_1D5F076F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F076F0()
{
  v1 = v0;
  v2 = v0[207];
  v3 = v0[200];
  v4 = &OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
  sub_1D5F0B788(v3 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v2, type metadata accessor for GroupLayoutBindingContext);
  v5 = sub_1D62EF50C();
  sub_1D5F0B728(v2, type metadata accessor for GroupLayoutBindingContext);
  ObjectType = v0[217];
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_232;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = *(v1 + 1712);
  v10 = (v9 >> 62);
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v8 + v11;
    if (!__OFADD__(v11, v8))
    {
      goto LABEL_5;
    }

LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v213 = sub_1D7263BFC();
  v12 = v8 + v213;
  if (__OFADD__(v213, v8))
  {
    goto LABEL_235;
  }

LABEL_5:
  v249 = v8;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFF8);
  v8 = (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1);
  if (v8 >= v12)
  {
    v17 = *(v1 + 1712);
    goto LABEL_13;
  }

LABEL_12:
  v17 = sub_1D7263DDC();
  v10 = (v17 & 0xFFFFFFFFFFFFFF8);
  v8 = (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1);
LABEL_13:
  v12 = v10[2];
  v246 = v17;
  if (!v7)
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v237 = v1;
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v249 <= 0)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_22;
  }

  v17 = sub_1D7263BFC();
  v18 = v17;
  v237 = v1;
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_15:
  v19 = v8 - v12;
  v8 = v249;
  if (v19 < v249)
  {
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    swift_once();
    goto LABEL_40;
  }

  v3 = &v10[v12 + 4];
  if (!v7)
  {
    sub_1D5B65AF4();
    swift_arrayInitWithCopy();

    if (v249 <= 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v18 < 1)
  {
    goto LABEL_243;
  }

  v239 = ObjectType;
  v20 = (v1 + 1552);
  sub_1D5C44878();
  v12 = sub_1D5C44F84(&qword_1EC88E4D0);
  for (i = 0; i != v18; ++i)
  {
    v22 = sub_1D6D87860(v20, i, v5);
    v24 = *v23;
    swift_unknownObjectRetain();
    (v22)(v20, 0);
    *(v3 + 8 * i) = v24;
  }

  v1 = v237;
  ObjectType = v239;
  v4 = &OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
  v8 = v249;
  if (v249 > 0)
  {
LABEL_26:
    v25 = v10[2];
    v26 = __OFADD__(v25, v8);
    v27 = v8 + v25;
    if (!v26)
    {
      v10[2] = v27;
      goto LABEL_28;
    }

    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

LABEL_28:
  v28 = *(v1 + 1704) + 1;
  if (v28 != *(v1 + 1696))
  {
    *(v1 + 1712) = v246;
    *(v1 + 1704) = v28;
    v63 = *(v1 + 1688);
    if (v28 < *(v63 + 16))
    {
      v64 = *(v1 + 1680);
      sub_1D5F0B788(v63 + ((*(v1 + 964) + 32) & ~*(v1 + 964)) + *(*(v1 + 1672) + 72) * v28, v64, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D5F0B728(v64, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v65 = *(v1 + 1592);
      *(v1 + 1720) = v65;
      v66 = swift_task_alloc();
      *(v1 + 1728) = v66;
      v67 = type metadata accessor for DebugFormatBindingResult();
      v15 = sub_1D5BA6EF4();
      *v66 = v1;
      v66[1] = sub_1D5F075A8;
      v16 = MEMORY[0x1E69E7288];
      v17 = v1 + 1600;
      v13 = v65;
      v14 = v67;

      return MEMORY[0x1EEE6DA10](v17, v13, v14, v15, v16);
    }

    goto LABEL_239;
  }

  v29 = v1 + 232;
  v30 = (v1 + 1584);
  v31 = (v1 + 1608);
  *(v1 + 1584) = v246;

  sub_1D725B31C();

  v33 = *(v1 + 608);
  v32 = *(v1 + 624);
  v34 = *(v1 + 592);
  *(v1 + 392) = v33;
  *(v1 + 408) = v32;
  v35 = *(v1 + 624);
  *(v1 + 424) = *(v1 + 640);
  v37 = *(v1 + 544);
  v36 = *(v1 + 560);
  v38 = *(v1 + 528);
  *(v1 + 328) = v37;
  *(v1 + 344) = v36;
  v39 = *(v1 + 560);
  v41 = *(v1 + 576);
  v40 = *(v1 + 592);
  *(v1 + 360) = v41;
  *(v1 + 376) = v40;
  v43 = *(v1 + 480);
  v42 = *(v1 + 496);
  v44 = *(v1 + 464);
  *(v1 + 264) = v43;
  *(v1 + 280) = v42;
  v45 = *(v1 + 496);
  v47 = *(v1 + 512);
  v46 = *(v1 + 528);
  *(v1 + 296) = v47;
  *(v1 + 312) = v46;
  v48 = *(v1 + 464);
  v49 = *(v1 + 448);
  *(v1 + 232) = v49;
  *(v1 + 248) = v48;
  *(v1 + 176) = v33;
  *(v1 + 192) = v35;
  *(v1 + 208) = *(v1 + 640);
  *(v1 + 112) = v37;
  *(v1 + 128) = v39;
  *(v1 + 144) = v41;
  *(v1 + 160) = v34;
  *(v1 + 48) = v43;
  *(v1 + 64) = v45;
  *(v1 + 80) = v47;
  *(v1 + 96) = v38;
  *(v1 + 440) = *(v1 + 656);
  *(v1 + 224) = *(v1 + 656);
  *(v1 + 16) = v49;
  *(v1 + 32) = v44;
  if (sub_1D5DEA380(v1 + 16) != 1)
  {
    v50 = *(v1 + 224);
    v51 = v1;
    v52 = *(v50 + 16);
    if (v52)
    {
      v244 = v29;
      v247 = v31;
      v240 = ObjectType;
      v250 = v51[206];
      v53 = v51[205];
      v54 = *(v51[204] + 20);
      v55 = v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v56 = *(v53 + 72);

      do
      {
        v57 = v51[207];
        v58 = v30;
        v59 = v51[206];
        sub_1D5F0B788(v55, v59, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v60 = *(v250 + v54);

        sub_1D5F0B728(v59, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v60 + *v4, v57, type metadata accessor for GroupLayoutBindingContext);

        v61 = sub_1D62EF50C();
        sub_1D5F0B728(v57, type metadata accessor for GroupLayoutBindingContext);
        v62 = v61;
        v30 = v58;
        sub_1D69856DC(v62);
        v55 += v56;
        --v52;
      }

      while (v52);
      sub_1D5F0B7F0(v244);

      v1 = v51;
      ObjectType = v240;
      v31 = v247;
    }

    else
    {
      sub_1D5F0B7F0(v29);
      v1 = v51;
    }
  }

  v8 = (v1 + 1424);
  *v31 = *v30;
  sub_1D5C44878();
  sub_1D5C44F84(&qword_1EDF1AEA0);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v12 = sub_1D72626EC();

  v68 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v69 = qword_1EC87D4F8;

  if (v69 != -1)
  {
    goto LABEL_240;
  }

LABEL_40:
  v70 = xmmword_1EC9BA778;
  v71 = *&qword_1EC9BA788;
  *v8 = xmmword_1EC9BA778;
  v8[1] = v71;
  v72 = xmmword_1EC9BA798;
  v73 = *&qword_1EC9BA7A8;
  v8[2] = xmmword_1EC9BA798;
  v8[3] = v73;
  *(v5 + 32) = v70;
  *(v5 + 48) = v71;
  *(v5 + 64) = v72;
  *(v5 + 80) = v73;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v5;
  v7 = v12;
  v4 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v74 = sub_1D7263BFC();
  }

  else
  {
    v74 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(v8, v1 + 1488);
  v75 = MEMORY[0x1E69E7CC0];
  v238 = v7;
  v236 = v10;
  if (!v74)
  {
    v10[7] = 1937204558;
    v10[8] = 0xE400000000000000;
    v10[9] = v75;
    v10[10] = 0x7374726F7053;
    v10[11] = 0xE600000000000000;
    v5 = MEMORY[0x1E69E7CC0];
    v10[12] = MEMORY[0x1E69E7CC0];
    v10[13] = 0x73656C7A7A7550;
    v10[14] = 0xE700000000000000;
    v10[15] = v5;
    v10[16] = 0x654E206C61636F4CLL;
    v10[17] = 0xEA00000000007377;
    v10[18] = v5;
    v10[19] = 0x736C656E6E616843;
    v10[20] = 0xE800000000000000;
    v10[21] = v5;
    v12 = v10;
LABEL_100:

    v7 = 0;
    *(v12 + 176) = 0x736369706F54;
    *(v12 + 184) = 0xE600000000000000;
    *(v12 + 192) = v5;
    v118 = v12 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    v3 = 24;
LABEL_101:
    if (v7 <= 7)
    {
      v119 = 7;
    }

    else
    {
      v119 = v7;
    }

    v120 = v118 + 24 * v7;
    v121 = v119 + 1;
    while (v7 != 7)
    {
      if (v121 == ++v7)
      {
        __break(1u);
        goto LABEL_222;
      }

      v122 = v120 + 24;
      v123 = *v120;
      v124 = *(*v120 + 16);
      v120 += 24;
      if (v124)
      {
        v125 = *(v122 - 40);
        ObjectType = *(v122 - 32);

        v252 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997F54(0, *(v5 + 16) + 1, 1);
        }

        v4 = *(v5 + 16);
        v126 = *(v5 + 24);
        if (v4 >= v126 >> 1)
        {
          sub_1D6997F54((v126 > 1), v4 + 1, 1);
        }

        *(v5 + 16) = v4 + 1;
        v127 = (v5 + 24 * v4);
        v127[4] = v125;
        v127[5] = ObjectType;
        v127[6] = v123;
        v1 = v237;
        goto LABEL_101;
      }
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v128 = *(v1 + 8);

    return v128(v5);
  }

  v3 = 0;
  v251 = v7 & 0xC000000000000001;
  v241 = MEMORY[0x1E69E7CC0];
  v76 = &off_1E84D3000;
  v245 = v4;
  v248 = v74;
LABEL_44:
  v77 = v3;
  while (1)
  {
    if (v251)
    {
      v5 = MEMORY[0x1DA6FB460](v77, v7);
      v3 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_222;
      }
    }

    else
    {
      if (v77 >= *(v4 + 16))
      {
        goto LABEL_223;
      }

      v5 = *(v7 + 8 * v77 + 32);
      swift_unknownObjectRetain();
      v3 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        v8 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    ObjectType = swift_getObjectType();
    if ([v5 isMySports])
    {
      break;
    }

    if ([v5 isPuzzleHub])
    {
      v80 = sub_1D726203C();
      v79 = [objc_opt_self() systemImageNamed_];

      if (!v79)
      {
        goto LABEL_245;
      }

LABEL_60:
      swift_unknownObjectRetain();
      goto LABEL_68;
    }

    if ([v5 v76[466]])
    {
      if (qword_1EDF05B68 != -1)
      {
        swift_once();
      }

      v81 = qword_1EDF05B70;
LABEL_67:
      swift_unknownObjectRetain();
      v79 = v81;
LABEL_68:
      v82 = [v5 identifier];
      v83 = sub_1D726207C();
      v85 = v84;

      swift_unknownObjectRelease();
      v86 = [v5 displayName];
      v87 = sub_1D726207C();
      v89 = v88;

      v90 = sub_1D62E5CE0();
      ObjectType = v91;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v241 = sub_1D699046C(0, *(v241 + 2) + 1, 1, v241);
      }

      v93 = *(v241 + 2);
      v92 = *(v241 + 3);
      v5 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        v241 = sub_1D699046C((v92 > 1), v93 + 1, 1, v241);
      }

      *(v241 + 2) = v5;
      v94 = &v241[64 * v93];
      *(v94 + 4) = v83;
      *(v94 + 5) = v85;
      *(v94 + 6) = v79;
      v94[56] = 0;
      *(v94 + 15) = *(&v252 + 3);
      *(v94 + 57) = v252;
      *(v94 + 8) = v87;
      *(v94 + 9) = v89;
      *(v94 + 10) = v90;
      *(v94 + 11) = ObjectType;
      v4 = v245;
      v74 = v248;
      v1 = v237;
      v7 = v238;
      v10 = v236;
      v76 = &off_1E84D3000;
      if (v3 == v248)
      {
LABEL_73:
        v10[7] = 1937204558;
        v10[8] = 0xE400000000000000;
        v10[9] = v241;
        v3 = MEMORY[0x1E69E7CC0];
        v95 = v1 + 760;
        for (ObjectType = 0; ; ObjectType = v96)
        {
          while (1)
          {
            if (v251)
            {
              v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
              v96 = ObjectType + 1;
              if (__OFADD__(ObjectType, 1))
              {
                goto LABEL_224;
              }
            }

            else
            {
              if (ObjectType >= *(v4 + 16))
              {
                goto LABEL_225;
              }

              v5 = *(v7 + 8 * ObjectType + 32);
              swift_unknownObjectRetain();
              v96 = ObjectType + 1;
              if (__OFADD__(ObjectType, 1))
              {
                goto LABEL_224;
              }
            }

            swift_getObjectType();
            if ([v5 isSports])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++ObjectType;
            if (v96 == v248)
            {
              goto LABEL_116;
            }
          }

          v97 = [swift_unknownObjectRetain() identifier];
          v242 = sub_1D726207C();
          v231 = v98;

          swift_unknownObjectRelease();
          v99 = [v5 displayName];
          v226 = sub_1D726207C();
          v221 = v100;

          v101 = sub_1D62E5CE0();
          v103 = v102;
          v104 = [swift_unknownObjectRetain() identifier];
          v105 = sub_1D726207C();
          v107 = v106;

          *(v1 + 744) = 0;
          *(v1 + 752) = 1;
          *v95 = 0u;
          *(v95 + 16) = 0u;
          *(v95 + 32) = 0u;
          *(v95 + 48) = 0;
          *(v1 + 664) = v105;
          *(v1 + 672) = v107;
          *(v1 + 680) = v5;
          *(v1 + 688) = 0;
          *(v1 + 712) = 0;
          *(v1 + 720) = 0xE000000000000000;
          *(v1 + 696) = 0;
          *(v1 + 704) = 0;
          *(v1 + 728) = 0;
          *(v1 + 736) = MEMORY[0x1E69E7CD0];
          v108 = [v5 feedNavImageAssetHandle];
          if (v108)
          {
            break;
          }

          v114 = [v5 asSports];
          v10 = v236;
          if (v114)
          {
            v115 = [v114 sportsTheme];
            swift_unknownObjectRelease();
            if (v115)
            {
              v110 = [v115 sportsLogoImageAssetHandle];
              swift_unknownObjectRelease();
              if (v110)
              {
                goto LABEL_92;
              }
            }
          }

          v116 = [v5 asSports];
          if (v116)
          {
            v117 = [v116 sportsTheme];
            swift_unknownObjectRelease();
            if (v117)
            {
              v110 = [v117 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
LABEL_92:
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v237 + 664);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_82;
              }

LABEL_93:
              v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
              goto LABEL_82;
            }
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v237 + 664);
          v110 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_82:
          v112 = *(v3 + 16);
          v111 = *(v3 + 24);
          v5 = v112 + 1;
          if (v112 >= v111 >> 1)
          {
            v3 = sub_1D699046C((v111 > 1), v112 + 1, 1, v3);
          }

          *(v3 + 16) = v5;
          v113 = v3 + (v112 << 6);
          v7 = v238;
          *(v113 + 32) = v242;
          *(v113 + 40) = v231;
          *(v113 + 48) = v110;
          *(v113 + 56) = 1;
          *(v113 + 60) = *(&v252 + 3);
          *(v113 + 57) = v252;
          *(v113 + 64) = v226;
          *(v113 + 72) = v221;
          *(v113 + 80) = v101;
          *(v113 + 88) = v103;
          v1 = v237;
          v4 = v245;
          if (v96 == v248)
          {
LABEL_116:
            v10[10] = 0x7374726F7053;
            v10[11] = 0xE600000000000000;
            v10[12] = v3;
            v5 = MEMORY[0x1E69E7CC0];
            v130 = 0;
            v3 = MEMORY[0x1E69E7CC0];
            v4 = &off_1E84D3000;
            while (2)
            {
              ObjectType = v130;
              while (1)
              {
                if (v251)
                {
                  v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
                  v130 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_226;
                  }
                }

                else
                {
                  if (ObjectType >= *(v245 + 16))
                  {
                    goto LABEL_227;
                  }

                  v5 = *(v7 + 8 * ObjectType + 32);
                  swift_unknownObjectRetain();
                  v130 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_226;
                  }
                }

                swift_getObjectType();
                if ([v5 isPuzzleType])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++ObjectType;
                if (v130 == v248)
                {
                  goto LABEL_143;
                }
              }

              v131 = [swift_unknownObjectRetain() identifier];
              v132 = sub_1D726207C();
              v227 = v133;
              v232 = v132;

              swift_unknownObjectRelease();
              v134 = [v5 displayName];
              v135 = sub_1D726207C();
              v217 = v136;
              v222 = v135;

              v137 = sub_1D62E5CE0();
              v139 = v138;
              v140 = [swift_unknownObjectRetain() identifier];
              v141 = sub_1D726207C();
              v143 = v142;

              *(v1 + 896) = xmmword_1D7279980;
              *(v1 + 912) = 0u;
              *(v1 + 928) = 0u;
              *(v1 + 944) = 0u;
              *(v1 + 960) = 0;
              *(v1 + 816) = v141;
              *(v1 + 824) = v143;
              *(v1 + 832) = v5;
              *(v1 + 840) = 0;
              *(v1 + 864) = 0;
              *(v1 + 872) = 0xE000000000000000;
              *(v1 + 848) = 0;
              *(v1 + 856) = 0;
              *(v1 + 880) = 0;
              *(v1 + 888) = MEMORY[0x1E69E7CD0];
              v144 = [v5 feedNavImageAssetHandle];
              if (!v144)
              {
                v150 = [v5 asSports];
                v10 = v236;
                if (!v150 || (v151 = [v150 sportsTheme], swift_unknownObjectRelease(), !v151) || (v146 = objc_msgSend(v151, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v146))
                {
                  v152 = [v5 asSports];
                  if (!v152 || (v153 = [v152 sportsTheme], swift_unknownObjectRelease(), !v153))
                  {
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v237 + 816);
                    v146 = 0;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_140;
                    }

                    goto LABEL_129;
                  }

                  v146 = [v153 sportsLogoImageCompactAssetHandle];
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                sub_1D5EE5B54(v237 + 816);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_129;
              }

              v145 = v1;
              v146 = v144;
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v145 + 816);
              v10 = v236;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_129;
              }

LABEL_140:
              v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
LABEL_129:
              v148 = *(v3 + 16);
              v147 = *(v3 + 24);
              v5 = v148 + 1;
              if (v148 >= v147 >> 1)
              {
                v3 = sub_1D699046C((v147 > 1), v148 + 1, 1, v3);
              }

              *(v3 + 16) = v5;
              v149 = v3 + (v148 << 6);
              *(v149 + 32) = v232;
              *(v149 + 40) = v227;
              *(v149 + 48) = v146;
              *(v149 + 56) = 1;
              *(v149 + 60) = *(&v252 + 3);
              *(v149 + 57) = v252;
              *(v149 + 64) = v222;
              *(v149 + 72) = v217;
              *(v149 + 80) = v137;
              *(v149 + 88) = v139;
              v1 = v237;
              v7 = v238;
              if (v130 != v248)
              {
                continue;
              }

              break;
            }

LABEL_143:
            v10[13] = 0x73656C7A7A7550;
            v10[14] = 0xE700000000000000;
            v10[15] = v3;
            v5 = MEMORY[0x1E69E7CC0];
            v154 = 0;
            v233 = v1 + 1064;
            v3 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              ObjectType = v154;
              while (1)
              {
                if (v251)
                {
                  v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
                  v154 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_228;
                  }
                }

                else
                {
                  if (ObjectType >= *(v245 + 16))
                  {
                    goto LABEL_229;
                  }

                  v5 = *(v7 + 8 * ObjectType + 32);
                  swift_unknownObjectRetain();
                  v154 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_228;
                  }
                }

                swift_getObjectType();
                if ([v5 isLocal])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++ObjectType;
                v12 = v248;
                if (v154 == v248)
                {
                  goto LABEL_170;
                }
              }

              v155 = [swift_unknownObjectRetain() identifier];
              v228 = sub_1D726207C();
              v223 = v156;

              swift_unknownObjectRelease();
              v157 = [v5 displayName];
              v158 = sub_1D726207C();
              v215 = v159;
              v218 = v158;

              v160 = sub_1D62E5CE0();
              v214 = v161;
              v162 = [swift_unknownObjectRetain() identifier];
              v163 = sub_1D726207C();
              v165 = v164;

              *(v1 + 1048) = 0;
              *(v1 + 1056) = 1;
              *v233 = 0u;
              *(v233 + 16) = 0u;
              *(v233 + 32) = 0u;
              *(v233 + 48) = 0;
              *(v1 + 968) = v163;
              *(v1 + 976) = v165;
              *(v1 + 984) = v5;
              *(v1 + 992) = 0;
              *(v1 + 1016) = 0;
              *(v1 + 1024) = 0xE000000000000000;
              *(v1 + 1000) = 0;
              *(v1 + 1008) = 0;
              *(v1 + 1032) = 0;
              *(v1 + 1040) = MEMORY[0x1E69E7CD0];
              v166 = [v5 feedNavImageAssetHandle];
              if (v166)
              {
                v167 = v1;
                v168 = v166;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v167 + 968);
                v10 = v236;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_156;
                }

LABEL_167:
                v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
LABEL_156:
                v12 = v248;
                v170 = *(v3 + 16);
                v169 = *(v3 + 24);
                v5 = v170 + 1;
                if (v170 >= v169 >> 1)
                {
                  v3 = sub_1D699046C((v169 > 1), v170 + 1, 1, v3);
                }

                *(v3 + 16) = v5;
                v171 = v3 + (v170 << 6);
                *(v171 + 32) = v228;
                *(v171 + 40) = v223;
                *(v171 + 48) = v168;
                *(v171 + 56) = 1;
                *(v171 + 60) = *(&v252 + 3);
                *(v171 + 57) = v252;
                *(v171 + 64) = v218;
                *(v171 + 72) = v215;
                *(v171 + 80) = v160;
                *(v171 + 88) = v214;
                v1 = v237;
                v7 = v238;
                if (v154 == v248)
                {
LABEL_170:
                  v10[16] = 0x654E206C61636F4CLL;
                  v10[17] = 0xEA00000000007377;
                  v10[18] = v3;
                  v5 = MEMORY[0x1E69E7CC0];
                  v7 = 0;
                  v176 = v1 + 1216;
                  ObjectType = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v1 = v7;
                    while (1)
                    {
                      if (v251)
                      {
                        v177 = MEMORY[0x1DA6FB460](v1, v238);
                        v7 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                        if (v1 >= *(v245 + 16))
                        {
                          goto LABEL_231;
                        }

                        v177 = *(v238 + 8 * v1 + 32);
                        swift_unknownObjectRetain();
                        v7 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_230;
                        }
                      }

                      v3 = swift_getObjectType();
                      v5 = v177;
                      if (FCTagProviding.isChannel.getter(v3) && ![v177 isLocal] && (objc_msgSend(v177, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v177, sel_isMySports) & 1) == 0 && (objc_msgSend(v177, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v177, sel_isRecipeCatalog) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v1;
                      if (v7 == v12)
                      {
                        goto LABEL_191;
                      }
                    }

                    v178 = [swift_unknownObjectRetain() identifier];
                    v179 = sub_1D726207C();
                    v229 = v180;
                    v234 = v179;

                    swift_unknownObjectRelease();
                    v181 = [v177 displayName];
                    v182 = sub_1D726207C();
                    v219 = v183;
                    v224 = v182;

                    v184 = sub_1D62E5CE0();
                    v214 = v185;
                    v216 = v184;
                    v186 = [swift_unknownObjectRetain() identifier];
                    v3 = sub_1D726207C();
                    v188 = v187;

                    *(v237 + 1200) = xmmword_1D7279980;
                    *v176 = 0u;
                    *(v176 + 16) = 0u;
                    *(v176 + 32) = 0u;
                    *(v176 + 48) = 0;
                    *(v237 + 1120) = v3;
                    *(v237 + 1128) = v188;
                    *(v237 + 1136) = v177;
                    *(v237 + 1144) = 0;
                    *(v237 + 1168) = 0;
                    *(v237 + 1176) = 0xE000000000000000;
                    *(v237 + 1152) = 0;
                    *(v237 + 1160) = 0;
                    *(v237 + 1184) = 0;
                    *(v237 + 1192) = MEMORY[0x1E69E7CD0];
                    v5 = FeedTag.debugAssetHandle.getter();
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v237 + 1120);
                    LOBYTE(v252) = 1;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
                    }

                    v191 = *(ObjectType + 16);
                    v190 = *(ObjectType + 24);
                    if (v191 >= v190 >> 1)
                    {
                      ObjectType = sub_1D699046C((v190 > 1), v191 + 1, 1, ObjectType);
                    }

                    *(ObjectType + 16) = v191 + 1;
                    v192 = ObjectType + (v191 << 6);
                    *(v192 + 32) = v234;
                    *(v192 + 40) = v229;
                    *(v192 + 48) = v5;
                    *(v192 + 56) = 1;
                    *(v192 + 57) = v252;
                    *(v192 + 60) = *(&v252 + 3);
                    *(v192 + 64) = v224;
                    *(v192 + 72) = v219;
                    *(v192 + 80) = v216;
                    *(v192 + 88) = v214;
                    v12 = v248;
                  }

                  while (v7 != v248);
LABEL_191:
                  v236[19] = 0x736C656E6E616843;
                  v236[20] = 0xE800000000000000;
                  v236[21] = ObjectType;
                  v193 = v238;
                  v8 = 0;
                  v1 = v237;
                  v10 = (v237 + 1368);
                  v5 = MEMORY[0x1E69E7CC0];
                  while (2)
                  {
                    v4 = v5;
                    ObjectType = v8;
                    while (1)
                    {
                      if (v251)
                      {
                        v5 = MEMORY[0x1DA6FB460](ObjectType, v193);
                        v8 = (ObjectType + 1);
                        if (__OFADD__(ObjectType, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      else
                      {
                        if (ObjectType >= *(v245 + 16))
                        {
                          goto LABEL_237;
                        }

                        v5 = *(v193 + 8 * ObjectType + 32);
                        swift_unknownObjectRetain();
                        v8 = (ObjectType + 1);
                        if (__OFADD__(ObjectType, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      v12 = swift_getObjectType();
                      if (FCTagProviding.isTopic.getter(v12) && ![v5 isSports] && (objc_msgSend(v5, sel_isFoodHub) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++ObjectType;
                      if (v8 == v248)
                      {
                        v12 = v236;
                        v5 = v4;
                        goto LABEL_100;
                      }
                    }

                    v194 = [swift_unknownObjectRetain() identifier];
                    v243 = sub_1D726207C();
                    v235 = v195;

                    swift_unknownObjectRelease();
                    v196 = [v5 displayName];
                    v230 = sub_1D726207C();
                    v225 = v197;

                    v220 = sub_1D62E5CE0();
                    v199 = v198;
                    v200 = [swift_unknownObjectRetain() identifier];
                    v201 = sub_1D726207C();
                    v203 = v202;

                    *(v1 + 1352) = 0;
                    *(v1 + 1360) = 1;
                    *v10 = 0u;
                    *(v237 + 1384) = 0u;
                    *(v237 + 1400) = 0u;
                    *(v237 + 1416) = 0;
                    *(v1 + 1272) = v201;
                    *(v1 + 1280) = v203;
                    *(v1 + 1288) = v5;
                    *(v1 + 1296) = 0;
                    *(v1 + 1320) = 0;
                    *(v1 + 1328) = 0xE000000000000000;
                    *(v1 + 1304) = 0;
                    *(v1 + 1312) = 0;
                    *(v1 + 1336) = 0;
                    *(v1 + 1344) = MEMORY[0x1E69E7CD0];
                    v204 = [v5 feedNavImageAssetHandle];
                    if (v204)
                    {
                      ObjectType = v204;
                      swift_unknownObjectRelease();
                      v205 = v1 + 1272;
                      goto LABEL_213;
                    }

                    v206 = [v5 asSports];
                    if (v206 && (v207 = [v206 sportsTheme], swift_unknownObjectRelease(), v207) && (ObjectType = objc_msgSend(v207, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), ObjectType))
                    {
LABEL_212:
                      swift_unknownObjectRelease();
                      v205 = v237 + 1272;
LABEL_213:
                      sub_1D5EE5B54(v205);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    else
                    {
                      v208 = [v5 asSports];
                      if (v208)
                      {
                        v209 = [v208 sportsTheme];
                        swift_unknownObjectRelease();
                        if (v209)
                        {
                          ObjectType = [v209 sportsLogoImageCompactAssetHandle];
                          swift_unknownObjectRelease();
                          goto LABEL_212;
                        }
                      }

                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v237 + 1272);
                      ObjectType = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
LABEL_219:
                        v4 = sub_1D699046C(0, *(v4 + 16) + 1, 1, v4);
                      }
                    }

                    v211 = *(v4 + 16);
                    v210 = *(v4 + 24);
                    if (v211 >= v210 >> 1)
                    {
                      v4 = sub_1D699046C((v210 > 1), v211 + 1, 1, v4);
                    }

                    *(v4 + 16) = v211 + 1;
                    v212 = v4 + (v211 << 6);
                    *(v212 + 32) = v243;
                    *(v212 + 40) = v235;
                    *(v212 + 48) = ObjectType;
                    *(v212 + 56) = 1;
                    *(v212 + 60) = *(&v252 + 3);
                    *(v212 + 57) = v252;
                    *(v212 + 64) = v230;
                    *(v212 + 72) = v225;
                    *(v212 + 80) = v220;
                    *(v212 + 88) = v199;
                    v5 = v4;
                    v1 = v237;
                    v193 = v238;
                    v12 = v236;
                    if (v8 == v248)
                    {
                      goto LABEL_100;
                    }

                    continue;
                  }
                }

                continue;
              }

              break;
            }

            v172 = [v5 asSports];
            v10 = v236;
            if (!v172 || (v173 = [v172 sportsTheme], swift_unknownObjectRelease(), !v173) || (v168 = objc_msgSend(v173, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v168))
            {
              v174 = [v5 asSports];
              if (!v174 || (v175 = [v174 sportsTheme], swift_unknownObjectRelease(), !v175))
              {
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v237 + 968);
                v168 = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_167;
                }

                goto LABEL_156;
              }

              v168 = [v175 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            sub_1D5EE5B54(v237 + 968);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_167;
            }

            goto LABEL_156;
          }
        }

        v109 = v1;
        v110 = v108;
        swift_unknownObjectRelease();
        sub_1D5EE5B54(v109 + 664);
        v10 = v236;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_82;
        }

        goto LABEL_93;
      }

      goto LABEL_44;
    }

    if ([v5 isRecipeCatalog])
    {
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v81 = qword_1EDF05C40;
      goto LABEL_67;
    }

    swift_unknownObjectRelease();
    ++v77;
    if (v3 == v74)
    {
      goto LABEL_73;
    }
  }

  v78 = sub_1D726203C();
  v79 = [objc_opt_self() systemImageNamed_];

  if (v79)
  {
    goto LABEL_60;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return MEMORY[0x1EEE6DA10](v17, v13, v14, v15, v16);
}

uint64_t sub_1D5F096F4()
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (MEMORY[0x1E69E7CC0] >> 62);
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_231;
  }

  v4 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = *(v0 + 1712);
  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      goto LABEL_5;
    }

LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v218 = sub_1D7263BFC();
  v8 = v218 + v4;
  if (__OFADD__(v218, v4))
  {
    goto LABEL_234;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v5 &= 0xFFFFFFFFFFFFFF8uLL;
  v6 = *(v5 + 24) >> 1;
  if (v6 >= v8)
  {
    v1 = *(v0 + 1712);
    goto LABEL_13;
  }

LABEL_12:
  isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263DDC();
  v1 = isUniquelyReferenced_nonNull_bridgeObject;
  v5 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v14 = *(v5 + 16);
  if (!v3)
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v245 = v0;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_19:

    if (v4 <= 0)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
  v15 = isUniquelyReferenced_nonNull_bridgeObject;
  v245 = v0;
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v6 - v14 < v4)
  {
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    swift_once();
    goto LABEL_39;
  }

  v253 = v1;
  v254 = v4;
  v6 = v5 + 8 * v14 + 32;
  if (!v3)
  {
    sub_1D5B65AF4();
    swift_arrayInitWithCopy();
    goto LABEL_24;
  }

LABEL_21:
  if (v15 < 1)
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  v16 = (v0 + 1552);
  sub_1D5C44878();
  v4 = sub_1D5C44F84(&qword_1EC88E4D0);
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = sub_1D6D87860(v16, v17, v18);
    v21 = *v20;
    swift_unknownObjectRetain();
    (v19)(v16, 0);
    *(v6 + 8 * v17++) = v21;
  }

  while (v15 != v17);
LABEL_24:

  v1 = v253;
  v0 = v245;
  if (v254 <= 0)
  {
    goto LABEL_27;
  }

  v22 = *(v5 + 16);
  v23 = __OFADD__(v22, v254);
  v24 = v22 + v254;
  if (v23)
  {
    __break(1u);
    goto LABEL_242;
  }

  *(v5 + 16) = v24;
LABEL_27:
  v25 = *(v0 + 1704) + 1;
  if (v25 != *(v0 + 1696))
  {
    *(v0 + 1712) = v1;
    *(v0 + 1704) = v25;
    v58 = *(v0 + 1688);
    if (v25 < *(v58 + 16))
    {
      v59 = *(v0 + 1680);
      sub_1D5F0B788(v58 + ((*(v0 + 964) + 32) & ~*(v0 + 964)) + *(*(v0 + 1672) + 72) * v25, v59, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D5F0B728(v59, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v60 = *(v0 + 1592);
      *(v0 + 1720) = v60;
      v61 = swift_task_alloc();
      *(v0 + 1728) = v61;
      v62 = type metadata accessor for DebugFormatBindingResult();
      v12 = sub_1D5BA6EF4();
      *v61 = v0;
      v61[1] = sub_1D5F075A8;
      v13 = MEMORY[0x1E69E7288];
      isUniquelyReferenced_nonNull_bridgeObject = v0 + 1600;
      v10 = v60;
      v11 = v62;

      return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_bridgeObject, v10, v11, v12, v13);
    }

    goto LABEL_238;
  }

  v26 = (v0 + 1584);
  v27 = (v0 + 1608);
  *(v0 + 1584) = v1;

  sub_1D725B31C();

  v29 = *(v0 + 608);
  v28 = *(v0 + 624);
  v30 = *(v0 + 592);
  *(v0 + 392) = v29;
  *(v0 + 408) = v28;
  v31 = *(v0 + 624);
  *(v0 + 424) = *(v0 + 640);
  v33 = *(v0 + 544);
  v32 = *(v0 + 560);
  v34 = *(v0 + 528);
  *(v0 + 328) = v33;
  *(v0 + 344) = v32;
  v35 = *(v0 + 560);
  v37 = *(v0 + 576);
  v36 = *(v0 + 592);
  *(v0 + 360) = v37;
  *(v0 + 376) = v36;
  v39 = *(v0 + 480);
  v38 = *(v0 + 496);
  v40 = *(v0 + 464);
  *(v0 + 264) = v39;
  *(v0 + 280) = v38;
  v41 = *(v0 + 496);
  v43 = *(v0 + 512);
  v42 = *(v0 + 528);
  *(v0 + 296) = v43;
  *(v0 + 312) = v42;
  v44 = *(v0 + 464);
  v45 = *(v0 + 448);
  *(v0 + 232) = v45;
  *(v0 + 248) = v44;
  *(v0 + 176) = v29;
  *(v0 + 192) = v31;
  *(v0 + 208) = *(v0 + 640);
  *(v0 + 112) = v33;
  *(v0 + 128) = v35;
  *(v0 + 144) = v37;
  *(v0 + 160) = v30;
  *(v0 + 48) = v39;
  *(v0 + 64) = v41;
  *(v0 + 80) = v43;
  *(v0 + 96) = v34;
  *(v0 + 440) = *(v0 + 656);
  *(v0 + 224) = *(v0 + 656);
  *(v0 + 16) = v45;
  *(v0 + 32) = v40;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v46 = *(v0 + 224);
    v47 = *(v46 + 16);
    if (v47)
    {
      v253 = v0 + 232;
      v254 = v0 + 1608;
      v48 = *(v0 + 1648);
      v49 = *(v0 + 1640);
      v50 = *(*(v0 + 1632) + 20);
      v51 = v0;
      v52 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v53 = *(v49 + 72);

      do
      {
        v54 = *(v51 + 1656);
        v55 = *(v51 + 1648);
        sub_1D5F0B788(v52, v55, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v56 = *(v48 + v50);

        sub_1D5F0B728(v55, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v56 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v54, type metadata accessor for GroupLayoutBindingContext);

        v57 = sub_1D62EF50C();
        sub_1D5F0B728(v54, type metadata accessor for GroupLayoutBindingContext);
        sub_1D69856DC(v57);
        v52 += v53;
        --v47;
      }

      while (v47);
      sub_1D5F0B7F0(v253);

      v0 = v51;
      v27 = v254;
    }

    else
    {
      sub_1D5F0B7F0(v0 + 232);
    }
  }

  v4 = v0 + 1424;
  *v27 = *v26;
  sub_1D5C44878();
  sub_1D5C44F84(&qword_1EDF1AEA0);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v1 = sub_1D72626EC();

  v63 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v63);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v64 = qword_1EC87D4F8;

  if (v64 != -1)
  {
    goto LABEL_239;
  }

LABEL_39:
  v65 = xmmword_1EC9BA778;
  v66 = *&qword_1EC9BA788;
  *v4 = xmmword_1EC9BA778;
  *(v4 + 16) = v66;
  v67 = xmmword_1EC9BA798;
  v68 = *&qword_1EC9BA7A8;
  *(v4 + 32) = xmmword_1EC9BA798;
  *(v4 + 48) = v68;
  *(v5 + 32) = v65;
  *(v5 + 48) = v66;
  *(v5 + 64) = v67;
  *(v5 + 80) = v68;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  v243 = v6;
  *(v6 + 48) = v5;
  v69 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v3 = sub_1D7263BFC();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(v4, v0 + 1488);
  v244 = v1;
  if (!v3)
  {
    *(v6 + 56) = 1937204558;
    *(v6 + 64) = 0xE400000000000000;
    *(v6 + 72) = MEMORY[0x1E69E7CC0];
    *(v6 + 80) = 0x7374726F7053;
    *(v6 + 88) = 0xE600000000000000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v6 + 96) = MEMORY[0x1E69E7CC0];
    *(v6 + 104) = 0x73656C7A7A7550;
    *(v6 + 112) = 0xE700000000000000;
    *(v6 + 120) = v4;
    *(v6 + 128) = 0x654E206C61636F4CLL;
    *(v6 + 136) = 0xEA00000000007377;
    *(v6 + 144) = v4;
    *(v6 + 152) = 0x736C656E6E616843;
    *(v6 + 160) = 0xE800000000000000;
    *(v6 + 168) = v4;
    v5 = v6;
LABEL_99:

    v0 = 0;
    *(v5 + 176) = 0x736369706F54;
    *(v5 + 184) = 0xE600000000000000;
    *(v5 + 192) = v4;
    v3 = (v5 + 48);
    v117 = MEMORY[0x1E69E7CC0];
    v2 = 7;
LABEL_100:
    if (v0 <= 7)
    {
      v118 = 7;
    }

    else
    {
      v118 = v0;
    }

    v119 = &v3[3 * v0];
    v120 = v118 + 1;
    while (v0 != 7)
    {
      if (v120 == ++v0)
      {
        __break(1u);
        goto LABEL_221;
      }

      v121 = v119 + 3;
      v122 = *v119;
      prots = (*v119)->prots;
      v119 += 3;
      if (prots)
      {
        v125 = *(v121 - 5);
        v124 = *(v121 - 4);

        v255 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997F54(0, *(v117 + 16) + 1, 1);
        }

        v127 = *(v117 + 16);
        v126 = *(v117 + 24);
        if (v127 >= v126 >> 1)
        {
          sub_1D6997F54((v126 > 1), v127 + 1, 1);
        }

        *(v117 + 16) = v127 + 1;
        v128 = (v117 + 24 * v127);
        v128[4] = v125;
        v128[5] = v124;
        v128[6] = v122;
        v1 = v244;
        goto LABEL_100;
      }
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v129 = *(v245 + 8);

    return v129(v117);
  }

  v70 = 0;
  v254 = v1 & 0xC000000000000001;
  v246 = v1 & 0xFFFFFFFFFFFFFF8;
  v247 = MEMORY[0x1E69E7CC0];
  v71 = &selRef_accountStore;
  v2 = &off_1E84D3000;
  v253 = v3;
LABEL_43:
  v72 = v70;
  while (1)
  {
    if (v254)
    {
      v73 = MEMORY[0x1DA6FB460](v72, v1);
      v70 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
        goto LABEL_221;
      }
    }

    else
    {
      if (v72 >= *(v69 + 16))
      {
        goto LABEL_222;
      }

      v73 = *(v1 + 8 * v72 + 32);
      swift_unknownObjectRetain();
      v70 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        v4 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    swift_getObjectType();
    if ([v73 v71[49]])
    {
      break;
    }

    if ([v73 isPuzzleHub])
    {
      v76 = sub_1D726203C();
      v75 = [objc_opt_self() systemImageNamed_];

      if (!v75)
      {
        goto LABEL_244;
      }

LABEL_59:
      swift_unknownObjectRetain();
      goto LABEL_67;
    }

    if ([v73 *(v2 + 3728)])
    {
      if (qword_1EDF05B68 != -1)
      {
        swift_once();
      }

      v77 = qword_1EDF05B70;
LABEL_66:
      swift_unknownObjectRetain();
      v75 = v77;
LABEL_67:
      v78 = [v73 identifier];
      v79 = sub_1D726207C();
      v81 = v80;

      swift_unknownObjectRelease();
      v82 = [v73 displayName];
      v83 = sub_1D726207C();
      v85 = v84;

      v86 = sub_1D62E5CE0();
      v88 = v87;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_1D699046C(0, *(v247 + 2) + 1, 1, v247);
      }

      v90 = *(v247 + 2);
      v89 = *(v247 + 3);
      if (v90 >= v89 >> 1)
      {
        v247 = sub_1D699046C((v89 > 1), v90 + 1, 1, v247);
      }

      *(v247 + 2) = v90 + 1;
      v91 = &v247[64 * v90];
      *(v91 + 4) = v79;
      *(v91 + 5) = v81;
      *(v91 + 6) = v75;
      v91[56] = 0;
      *(v91 + 15) = *(&v255 + 3);
      *(v91 + 57) = v255;
      *(v91 + 8) = v83;
      *(v91 + 9) = v85;
      *(v91 + 10) = v86;
      *(v91 + 11) = v88;
      v3 = v253;
      v1 = v244;
      v0 = v245;
      v69 = v246;
      v2 = 0x1E84D3000;
      v71 = &selRef_accountStore;
      if (v70 == v253)
      {
LABEL_72:
        v243[7] = 1937204558;
        v243[8] = 0xE400000000000000;
        v243[9] = v247;
        v92 = MEMORY[0x1E69E7CC0];
        v2 = v0 + 760;
        v3 = &off_1E84D3000;
        v0 = v243;
        for (i = 0; ; i = v95)
        {
          while (1)
          {
            if (v254)
            {
              v94 = MEMORY[0x1DA6FB460](i, v1);
              v95 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_223;
              }
            }

            else
            {
              if (i >= *(v69 + 16))
              {
                goto LABEL_224;
              }

              v94 = *(v1 + 8 * i + 32);
              swift_unknownObjectRetain();
              v95 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_223;
              }
            }

            swift_getObjectType();
            if ([v94 isSports])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++i;
            if (v95 == v253)
            {
              goto LABEL_115;
            }
          }

          v96 = [swift_unknownObjectRetain() identifier];
          v97 = sub_1D726207C();
          v248 = v98;

          swift_unknownObjectRelease();
          v99 = [v94 displayName];
          v100 = sub_1D726207C();
          v237 = v101;
          v241 = v100;

          v102 = sub_1D62E5CE0();
          v227 = v103;
          v232 = v102;
          v104 = [swift_unknownObjectRetain() identifier];
          v105 = sub_1D726207C();
          v107 = v106;

          *(v245 + 744) = 0;
          *(v245 + 752) = 1;
          *v2 = 0u;
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
          *(v2 + 48) = 0;
          *(v245 + 664) = v105;
          *(v245 + 672) = v107;
          *(v245 + 680) = v94;
          *(v245 + 688) = 0;
          *(v245 + 712) = 0;
          *(v245 + 720) = 0xE000000000000000;
          *(v245 + 696) = 0;
          *(v245 + 704) = 0;
          *(v245 + 728) = 0;
          *(v245 + 736) = MEMORY[0x1E69E7CD0];
          v108 = [v94 feedNavImageAssetHandle];
          if (v108)
          {
            break;
          }

          v113 = [v94 asSports];
          v69 = v246;
          if (v113)
          {
            v114 = [v113 sportsTheme];
            swift_unknownObjectRelease();
            if (v114)
            {
              v109 = [v114 sportsLogoImageAssetHandle];
              swift_unknownObjectRelease();
              if (v109)
              {
                goto LABEL_91;
              }
            }
          }

          v115 = [v94 asSports];
          if (v115)
          {
            v116 = [v115 sportsTheme];
            swift_unknownObjectRelease();
            if (v116)
            {
              v109 = [v116 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
LABEL_91:
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v245 + 664);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_81;
              }

LABEL_92:
              v92 = sub_1D699046C(0, *(v92 + 2) + 1, 1, v92);
              goto LABEL_81;
            }
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v245 + 664);
          v109 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_81:
          v111 = *(v92 + 2);
          v110 = *(v92 + 3);
          if (v111 >= v110 >> 1)
          {
            v92 = sub_1D699046C((v110 > 1), v111 + 1, 1, v92);
          }

          *(v92 + 2) = v111 + 1;
          v112 = &v92[64 * v111];
          *(v112 + 4) = v97;
          *(v112 + 5) = v248;
          *(v112 + 6) = v109;
          v112[56] = 1;
          *(v112 + 15) = *(&v255 + 3);
          *(v112 + 57) = v255;
          *(v112 + 8) = v241;
          *(v112 + 9) = v237;
          *(v112 + 10) = v232;
          *(v112 + 11) = v227;
          v0 = v243;
          v1 = v244;
          if (v95 == v253)
          {
LABEL_115:
            *(v0 + 80) = 0x7374726F7053;
            *(v0 + 88) = 0xE600000000000000;
            *(v0 + 96) = v92;
            v131 = MEMORY[0x1E69E7CC0];
            v132 = 0;
            v2 = &off_1E84D3000;
            while (2)
            {
              v133 = v132;
              while (1)
              {
                if (v254)
                {
                  v134 = MEMORY[0x1DA6FB460](v133, v1);
                  v132 = v133 + 1;
                  if (__OFADD__(v133, 1))
                  {
                    goto LABEL_225;
                  }
                }

                else
                {
                  if (v133 >= *(v69 + 16))
                  {
                    goto LABEL_226;
                  }

                  v134 = *(v1 + 8 * v133 + 32);
                  swift_unknownObjectRetain();
                  v132 = v133 + 1;
                  if (__OFADD__(v133, 1))
                  {
                    goto LABEL_225;
                  }
                }

                swift_getObjectType();
                if ([v134 isPuzzleType])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v133;
                if (v132 == v253)
                {
                  goto LABEL_142;
                }
              }

              v135 = [swift_unknownObjectRetain() identifier];
              v136 = sub_1D726207C();
              v249 = v137;

              swift_unknownObjectRelease();
              v138 = [v134 displayName];
              v238 = sub_1D726207C();
              v233 = v139;

              v140 = sub_1D62E5CE0();
              v223 = v141;
              v228 = v140;
              v142 = [swift_unknownObjectRetain() identifier];
              v143 = sub_1D726207C();
              v145 = v144;

              *(v245 + 896) = xmmword_1D7279980;
              *(v245 + 912) = 0u;
              *(v245 + 928) = 0u;
              *(v245 + 944) = 0u;
              *(v245 + 960) = 0;
              *(v245 + 816) = v143;
              *(v245 + 824) = v145;
              *(v245 + 832) = v134;
              *(v245 + 840) = 0;
              *(v245 + 864) = 0;
              *(v245 + 872) = 0xE000000000000000;
              *(v245 + 848) = 0;
              *(v245 + 856) = 0;
              *(v245 + 880) = 0;
              *(v245 + 888) = MEMORY[0x1E69E7CD0];
              v146 = [v134 feedNavImageAssetHandle];
              if (!v146)
              {
                v151 = [v134 asSports];
                v69 = v246;
                if (!v151 || (v152 = [v151 sportsTheme], swift_unknownObjectRelease(), !v152) || (v147 = objc_msgSend(v152, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v147))
                {
                  v153 = [v134 asSports];
                  if (!v153 || (v154 = [v153 sportsTheme], swift_unknownObjectRelease(), !v154))
                  {
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v245 + 816);
                    v147 = 0;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_139;
                    }

                    goto LABEL_128;
                  }

                  v147 = [v154 sportsLogoImageCompactAssetHandle];
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 816);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_139;
                }

                goto LABEL_128;
              }

              v147 = v146;
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v245 + 816);
              v69 = v246;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_128;
              }

LABEL_139:
              v131 = sub_1D699046C(0, *(v131 + 2) + 1, 1, v131);
LABEL_128:
              v149 = *(v131 + 2);
              v148 = *(v131 + 3);
              if (v149 >= v148 >> 1)
              {
                v131 = sub_1D699046C((v148 > 1), v149 + 1, 1, v131);
              }

              *(v131 + 2) = v149 + 1;
              v150 = &v131[64 * v149];
              *(v150 + 4) = v136;
              *(v150 + 5) = v249;
              *(v150 + 6) = v147;
              v150[56] = 1;
              *(v150 + 15) = *(&v255 + 3);
              *(v150 + 57) = v255;
              *(v150 + 8) = v238;
              *(v150 + 9) = v233;
              *(v150 + 10) = v228;
              *(v150 + 11) = v223;
              v0 = v243;
              v1 = v244;
              if (v132 != v253)
              {
                continue;
              }

              break;
            }

LABEL_142:
            *(v0 + 104) = 0x73656C7A7A7550;
            *(v0 + 112) = 0xE700000000000000;
            *(v0 + 120) = v131;
            v155 = 0;
            v250 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              v156 = v155;
              while (1)
              {
                if (v254)
                {
                  v157 = MEMORY[0x1DA6FB460](v156, v1);
                  v155 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  if (v156 >= *(v69 + 16))
                  {
                    goto LABEL_228;
                  }

                  v157 = *(v1 + 8 * v156 + 32);
                  swift_unknownObjectRetain();
                  v155 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_227;
                  }
                }

                swift_getObjectType();
                if ([v157 isLocal])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v156;
                if (v155 == v253)
                {
                  goto LABEL_169;
                }
              }

              v158 = [swift_unknownObjectRetain() identifier];
              v159 = sub_1D726207C();
              v234 = v160;

              swift_unknownObjectRelease();
              v161 = [v157 displayName];
              v162 = sub_1D726207C();
              v224 = v163;
              v229 = v162;

              v164 = sub_1D62E5CE0();
              v219 = v165;
              v221 = v164;
              v166 = [swift_unknownObjectRetain() identifier];
              v167 = sub_1D726207C();
              v169 = v168;

              *(v245 + 1048) = 0;
              *(v245 + 1056) = 1;
              *(v245 + 1064) = 0u;
              *(v245 + 1080) = 0u;
              *(v245 + 1096) = 0u;
              *(v245 + 1112) = 0;
              *(v245 + 968) = v167;
              *(v245 + 976) = v169;
              *(v245 + 984) = v157;
              *(v245 + 992) = 0;
              *(v245 + 1016) = 0;
              *(v245 + 1024) = 0xE000000000000000;
              *(v245 + 1000) = 0;
              *(v245 + 1008) = 0;
              *(v245 + 1032) = 0;
              *(v245 + 1040) = MEMORY[0x1E69E7CD0];
              v170 = [v157 feedNavImageAssetHandle];
              if (v170)
              {
                v171 = v170;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 968);
                v69 = v246;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_155;
                }

LABEL_166:
                v250 = sub_1D699046C(0, *(v250 + 2) + 1, 1, v250);
LABEL_155:
                v173 = *(v250 + 2);
                v172 = *(v250 + 3);
                if (v173 >= v172 >> 1)
                {
                  v250 = sub_1D699046C((v172 > 1), v173 + 1, 1, v250);
                }

                *(v250 + 2) = v173 + 1;
                v174 = &v250[64 * v173];
                *(v174 + 4) = v159;
                *(v174 + 5) = v234;
                *(v174 + 6) = v171;
                v174[56] = 1;
                *(v174 + 15) = *(&v255 + 3);
                *(v174 + 57) = v255;
                *(v174 + 8) = v229;
                *(v174 + 9) = v224;
                *(v174 + 10) = v221;
                *(v174 + 11) = v219;
                v0 = v243;
                v1 = v244;
                if (v155 == v253)
                {
LABEL_169:
                  *(v0 + 128) = 0x654E206C61636F4CLL;
                  *(v0 + 136) = 0xEA00000000007377;
                  *(v0 + 144) = v250;
                  v179 = 0;
                  v0 = v245 + 1216;
                  v180 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v1 = v179;
                    while (1)
                    {
                      if (v254)
                      {
                        v181 = MEMORY[0x1DA6FB460](v1, v244);
                        v179 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_229;
                        }
                      }

                      else
                      {
                        if (v1 >= *(v246 + 16))
                        {
                          goto LABEL_230;
                        }

                        v181 = *(v244 + 8 * v1 + 32);
                        swift_unknownObjectRetain();
                        v179 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_229;
                        }
                      }

                      ObjectType = swift_getObjectType();
                      v5 = v181;
                      if (FCTagProviding.isChannel.getter(ObjectType) && ![v181 isLocal] && (objc_msgSend(v181, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v181, sel_isMySports) & 1) == 0 && (objc_msgSend(v181, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v181, sel_isRecipeCatalog) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v1;
                      if (v179 == v253)
                      {
                        goto LABEL_190;
                      }
                    }

                    v183 = [swift_unknownObjectRetain() identifier];
                    v251 = sub_1D726207C();
                    v239 = v184;

                    swift_unknownObjectRelease();
                    v185 = [v181 displayName];
                    v186 = sub_1D726207C();
                    v230 = v187;
                    v235 = v186;

                    v188 = sub_1D62E5CE0();
                    v222 = v189;
                    v225 = v188;
                    v190 = [swift_unknownObjectRetain() identifier];
                    v220 = sub_1D726207C();
                    v192 = v191;

                    *(v245 + 1200) = xmmword_1D7279980;
                    *v0 = 0u;
                    *(v245 + 1232) = 0u;
                    *(v245 + 1248) = 0u;
                    *(v245 + 1264) = 0;
                    *(v245 + 1120) = v220;
                    *(v245 + 1128) = v192;
                    *(v245 + 1136) = v181;
                    *(v245 + 1144) = 0;
                    *(v245 + 1168) = 0;
                    *(v245 + 1176) = 0xE000000000000000;
                    *(v245 + 1152) = 0;
                    *(v245 + 1160) = 0;
                    *(v245 + 1184) = 0;
                    *(v245 + 1192) = MEMORY[0x1E69E7CD0];
                    v5 = FeedTag.debugAssetHandle.getter();
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v245 + 1120);
                    LOBYTE(v255) = 1;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v180 = sub_1D699046C(0, *(v180 + 2) + 1, 1, v180);
                    }

                    v195 = *(v180 + 2);
                    v194 = *(v180 + 3);
                    if (v195 >= v194 >> 1)
                    {
                      v180 = sub_1D699046C((v194 > 1), v195 + 1, 1, v180);
                    }

                    *(v180 + 2) = v195 + 1;
                    v196 = &v180[64 * v195];
                    *(v196 + 4) = v251;
                    *(v196 + 5) = v239;
                    *(v196 + 6) = v5;
                    v196[56] = 1;
                    *(v196 + 57) = v255;
                    *(v196 + 15) = *(&v255 + 3);
                    *(v196 + 8) = v235;
                    *(v196 + 9) = v230;
                    *(v196 + 10) = v225;
                    *(v196 + 11) = v222;
                  }

                  while (v179 != v253);
LABEL_190:
                  v1 = v244;
                  v243[19] = 0x736C656E6E616843;
                  v243[20] = 0xE800000000000000;
                  v243[21] = v180;
                  v197 = 0;
                  v4 = MEMORY[0x1E69E7CC0];
                  while (2)
                  {
                    v6 = v197;
                    while (1)
                    {
                      if (v254)
                      {
                        v5 = MEMORY[0x1DA6FB460](v6, v1);
                        v197 = v6 + 1;
                        if (__OFADD__(v6, 1))
                        {
                          goto LABEL_235;
                        }
                      }

                      else
                      {
                        if (v6 >= *(v246 + 16))
                        {
                          goto LABEL_236;
                        }

                        v5 = *(v1 + 8 * v6 + 32);
                        swift_unknownObjectRetain();
                        v197 = v6 + 1;
                        if (__OFADD__(v6, 1))
                        {
                          goto LABEL_235;
                        }
                      }

                      v198 = swift_getObjectType();
                      if (FCTagProviding.isTopic.getter(v198) && ![v5 isSports] && (objc_msgSend(v5, sel_isFoodHub) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v6;
                      if (v197 == v253)
                      {
                        v5 = v243;
                        goto LABEL_99;
                      }
                    }

                    v199 = [swift_unknownObjectRetain() identifier];
                    v252 = sub_1D726207C();
                    v242 = v200;

                    swift_unknownObjectRelease();
                    v201 = [v5 displayName];
                    v240 = sub_1D726207C();
                    v236 = v202;

                    v203 = sub_1D62E5CE0();
                    v226 = v204;
                    v231 = v203;
                    v205 = [swift_unknownObjectRetain() identifier];
                    v206 = sub_1D726207C();
                    v208 = v207;

                    *(v245 + 1352) = 0;
                    *(v245 + 1360) = 1;
                    *(v245 + 1368) = 0u;
                    *(v245 + 1384) = 0u;
                    *(v245 + 1400) = 0u;
                    *(v245 + 1416) = 0;
                    *(v245 + 1272) = v206;
                    *(v245 + 1280) = v208;
                    *(v245 + 1288) = v5;
                    *(v245 + 1296) = 0;
                    *(v245 + 1320) = 0;
                    *(v245 + 1328) = 0xE000000000000000;
                    *(v245 + 1304) = 0;
                    *(v245 + 1312) = 0;
                    *(v245 + 1336) = 0;
                    *(v245 + 1344) = MEMORY[0x1E69E7CD0];
                    v209 = [v5 feedNavImageAssetHandle];
                    if (v209)
                    {
                      v210 = v209;
                      swift_unknownObjectRelease();
                      v211 = v245 + 1272;
                      goto LABEL_212;
                    }

                    v212 = [v5 asSports];
                    if (v212 && (v213 = [v212 sportsTheme], swift_unknownObjectRelease(), v213) && (v210 = objc_msgSend(v213, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), v210))
                    {
LABEL_211:
                      swift_unknownObjectRelease();
                      v211 = v245 + 1272;
LABEL_212:
                      sub_1D5EE5B54(v211);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_218;
                      }
                    }

                    else
                    {
                      v214 = [v5 asSports];
                      if (v214)
                      {
                        v215 = [v214 sportsTheme];
                        swift_unknownObjectRelease();
                        if (v215)
                        {
                          v210 = [v215 sportsLogoImageCompactAssetHandle];
                          swift_unknownObjectRelease();
                          goto LABEL_211;
                        }
                      }

                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v245 + 1272);
                      v210 = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
LABEL_218:
                        v4 = sub_1D699046C(0, *(v4 + 16) + 1, 1, v4);
                      }
                    }

                    v0 = *(v4 + 16);
                    v216 = *(v4 + 24);
                    if (v0 >= v216 >> 1)
                    {
                      v4 = sub_1D699046C((v216 > 1), v0 + 1, 1, v4);
                    }

                    *(v4 + 16) = v0 + 1;
                    v217 = v4 + (v0 << 6);
                    *(v217 + 32) = v252;
                    *(v217 + 40) = v242;
                    *(v217 + 48) = v210;
                    *(v217 + 56) = 1;
                    *(v217 + 60) = *(&v255 + 3);
                    *(v217 + 57) = v255;
                    *(v217 + 64) = v240;
                    *(v217 + 72) = v236;
                    *(v217 + 80) = v231;
                    *(v217 + 88) = v226;
                    v5 = v243;
                    v1 = v244;
                    if (v197 == v253)
                    {
                      goto LABEL_99;
                    }

                    continue;
                  }
                }

                continue;
              }

              break;
            }

            v175 = [v157 asSports];
            v69 = v246;
            if (!v175 || (v176 = [v175 sportsTheme], swift_unknownObjectRelease(), !v176) || (v171 = objc_msgSend(v176, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v171))
            {
              v177 = [v157 asSports];
              if (!v177 || (v178 = [v177 sportsTheme], swift_unknownObjectRelease(), !v178))
              {
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 968);
                v171 = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_166;
                }

                goto LABEL_155;
              }

              v171 = [v178 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            sub_1D5EE5B54(v245 + 968);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_166;
            }

            goto LABEL_155;
          }
        }

        v109 = v108;
        swift_unknownObjectRelease();
        sub_1D5EE5B54(v245 + 664);
        v69 = v246;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_81;
        }

        goto LABEL_92;
      }

      goto LABEL_43;
    }

    if ([v73 isRecipeCatalog])
    {
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v77 = qword_1EDF05C40;
      goto LABEL_66;
    }

    swift_unknownObjectRelease();
    v72 = (v72 + 1);
    if (v70 == v3)
    {
      goto LABEL_72;
    }
  }

  v74 = sub_1D726203C();
  v75 = [objc_opt_self() systemImageNamed_];

  if (v75)
  {
    goto LABEL_59;
  }

LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
  return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_bridgeObject, v10, v11, v12, v13);
}

void sub_1D5F0B674(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D5F0B728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F0B788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F0B7F0(uint64_t a1)
{
  sub_1D5B66EA4(0, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F0B870()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5EF05B8();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1D5F0B948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D5F0B9E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D5F0BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (sub_1D725AA4C() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    if ((v10 & 1) == 0)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  return sub_1D5B68374(a1 + 32, a4);
}

uint64_t sub_1D5F0BB34()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  v1 = *(*v0 + 104);
  sub_1D5EF05B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D5F0BC14()
{
  sub_1D5F0BB34();

  return swift_deallocClassInstance();
}

uint64_t PageKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

id sub_1D5F0BDC4(uint64_t a1, char a2, void *a3)
{
  v5 = type metadata accessor for BridgedPageKind();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR___NAPageKind_kind] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id sub_1D5F0BE4C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1D5F0BED0(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id BridgedPageKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPageKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5F0C014()
{
  sub_1D5B63E64(0, &unk_1EDF3B318, &type metadata for PageKind, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &unk_1EDF3B1C0, &type metadata for PageKind, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ABE0 = result;
  return result;
}

uint64_t sub_1D5F0C180()
{
  sub_1D5B63E64(0, &unk_1EDF3B318, &type metadata for PageKind, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &unk_1EDF3B1C0, &type metadata for PageKind, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ABC8 = result;
  return result;
}

uint64_t sub_1D5F0C2EC()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E30 = result;
  return result;
}

uint64_t sub_1D5F0C458()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E40 = result;
  return result;
}

uint64_t sub_1D5F0C5C4()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E48 = result;
  return result;
}

uint64_t FeedReadStoryCommandContext.feedItemIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FeedReadStoryCommandContext.init(headline:feedItemIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ReportConcernCompleteContext.subconcern.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReportConcernCompleteContext.init(headline:concernType:subconcern:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static SwipeAction.removeFromHistory(headline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = sub_1D725CC8C();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D725CC9C();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AC28 != -1)
  {
    swift_once();
  }

  v24 = a1;
  v25 = a2;
  v13 = objc_opt_self();

  v14 = [v13 systemRedColor];
  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDF05C10;
  v16 = [v13 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v15, v16);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  (*(v9 + 104))(v12, *MEMORY[0x1E69D7628], v21);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7620], v22);
  return sub_1D725CCAC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B543A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v25 - v14;
  if (!a1)
  {
    return 0;
  }

  v16 = [swift_unknownObjectRetain() routeURL];
  if (v16)
  {
    v17 = v16;
    sub_1D72584EC();

    swift_unknownObjectRelease();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    sub_1D5E3E404(v15);
    return 0;
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  sub_1D5E3E404(v15);
  if (qword_1EDF3AC48 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  swift_unknownObjectRetain();

  v21 = [v20 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBC8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDF1BBD0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v25[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v23 = v22;
  v24 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE15searchInArticleACSgyFZ_0()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D480 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC8951A0;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  return sub_1D725D39C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE17removeFromHistory8headlineACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v3 = sub_1D725DC6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AC28 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();

  v10 = [v9 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF05C10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7B40], v3);
  v16 = v15;
  v17 = a2;
  sub_1D725D3DC();
  swift_allocObject();
  v12 = v11;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE9readStory8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = qword_1EDF3AB98;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();

  v10 = [v9 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF05B18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v15[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v12 = v11;
  v13 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE04readG5Story7contextACSgAD0g4Readi7CommandC0V_tFZ_0(uint64_t *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v15[0] = a1[1];
  v8 = a1[2];
  if (qword_1EDF16990 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  swift_unknownObjectRetain();
  v11 = [v10 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF05B18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v15[1] = v7;
  v15[2] = v15[0];
  v15[3] = v8;
  sub_1D725D3DC();
  swift_allocObject();
  v13 = v12;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (!a1)
  {
    return 0;
  }

  v4 = qword_1EDF3AC48;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBC8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDF1BBD0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v8 = sub_1D725D5CC();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE15searchInArticleACSgyFZ_0()
{
  v0 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  if (qword_1EC87D480 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC8951A0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5AC();
}

unint64_t sub_1D5F0DCC0()
{
  result = qword_1EC880E58;
  if (!qword_1EC880E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E58);
  }

  return result;
}

uint64_t sub_1D5F0DD90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D5F0DDD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F0DE38(void *a1)
{
  sub_1D5F0E6A4(0, &qword_1EC880E60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F0E544();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F0E06C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F0E6A4(0, &qword_1EDF03808, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F0E544();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D72642BC();
  v29 = v12;
  LOBYTE(v33[0]) = 1;
  v13 = sub_1D72642BC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v33[0]) = 2;
  v25 = sub_1D726422C();
  v27 = v15;
  sub_1D5F0E598();
  v35 = 3;
  sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v24 = v36;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v25;
  v19 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v20 = v27;
  *v32 = v25;
  *&v32[8] = v27;
  *&v32[16] = v36;
  v32[24] = 6;
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  sub_1D5F0E63C(&v30, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v16;
  v33[2] = v19;
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v20;
  v33[6] = v24;
  v34 = 6;
  return sub_1D5F0E674(v33);
}

uint64_t sub_1D5F0E3D8()
{
  v1 = 0x6E6F6E6143636D75;
  v2 = 0x615465756761656CLL;
  if (*v0 != 2)
  {
    v2 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v1 = 0x6449746E657665;
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

uint64_t sub_1D5F0E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F0E8E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F0E49C(uint64_t a1)
{
  v2 = sub_1D5F0E544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F0E4D8(uint64_t a1)
{
  v2 = sub_1D5F0E544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5F0E544()
{
  result = qword_1EDF05FE0;
  if (!qword_1EDF05FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FE0);
  }

  return result;
}

void sub_1D5F0E598()
{
  if (!qword_1EDF04AA0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04AA0);
    }
  }
}

unint64_t sub_1D5F0E5E8()
{
  result = qword_1EDF060A0;
  if (!qword_1EDF060A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060A0);
  }

  return result;
}

void sub_1D5F0E6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F0E544();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseInjuryReportItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F0E708(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F0E598();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F0E774()
{
  result = qword_1EC880E70;
  if (!qword_1EC880E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E70);
  }

  return result;
}

unint64_t sub_1D5F0E7DC()
{
  result = qword_1EC880E78;
  if (!qword_1EC880E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E78);
  }

  return result;
}

unint64_t sub_1D5F0E834()
{
  result = qword_1EDF05FD0;
  if (!qword_1EDF05FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FD0);
  }

  return result;
}

unint64_t sub_1D5F0E88C()
{
  result = qword_1EDF05FD8;
  if (!qword_1EDF05FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FD8);
  }

  return result;
}

uint64_t sub_1D5F0E8E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatParagraphStyle.init(alignment:firstLineHeadIndent:headIndent:tailIndent:lineBreakMode:lineBreakStrategy:maximumLineHeight:minimumLineHeight:lineSpacing:paragraphSpacing:paragraphSpacingBefore:lineHeightMultiple:minimumLineHeightMultiple:defaultTabInterval:hyphenationFactor:allowsDefaultTighteningForTruncation:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, char a29)
{
  result = *a1;
  v30 = *a8;
  v31 = *a10;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = v30;
  *(a9 + 50) = v31;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a15;
  *(a9 + 96) = a16 & 1;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18 & 1;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20 & 1;
  *(a9 + 136) = a21;
  *(a9 + 144) = a22 & 1;
  *(a9 + 152) = a23;
  *(a9 + 160) = a24 & 1;
  *(a9 + 168) = a25;
  *(a9 + 176) = a26 & 1;
  *(a9 + 184) = a27;
  *(a9 + 192) = a28 & 1;
  *(a9 + 193) = a29;
  return result;
}

void *FormatParagraphStyle.paragraphStyle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v10 = v0[7];
  v11 = *(v0 + 64);
  v12 = v0[9];
  v13 = *(v0 + 80);
  v14 = v0[11];
  v15 = v0[13];
  v25 = *(v0 + 96);
  v26 = *(v0 + 112);
  v16 = v0[17];
  v27 = *(v0 + 144);
  v28 = *(v0 + 176);
  v23 = v0[21];
  v24 = v0[23];
  v29 = *(v0 + 192);
  v17 = *(v0 + 193);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  v19 = v18;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 3;
    }

    else
    {
      if (v1 != 4)
      {
        if ((v3 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_8:
        if ((v5 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_9:
        if (v7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v1 = 4;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  [v18 setAlignment_];
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_40:
  [v19 setFirstLineHeadIndent_];
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_41:
  [v19 setHeadIndent_];
  if ((v7 & 1) == 0)
  {
LABEL_10:
    [v19 setTailIndent_];
  }

LABEL_11:
  [v19 setLineBreakMode_];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_16:
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if ((v25 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_18:
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_19:
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_20:
      if ((v28 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_21:
      if ((v29 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    v20 = 0xFFFFLL;
  }

  else if (v9)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v19 setLineBreakStrategy_];
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_28:
  [v19 setMaximumLineHeight_];
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_29:
  [v19 setMinimumLineHeight_];
  if (v25)
  {
    goto LABEL_18;
  }

LABEL_30:
  [v19 setLineSpacing_];
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_31:
  [v19 setParagraphSpacing_];
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_32:
  [v19 setLineHeightMultiple_];
  if (v28)
  {
    goto LABEL_21;
  }

LABEL_33:
  [v19 setDefaultTabInterval_];
  if ((v29 & 1) == 0)
  {
LABEL_34:
    HIDWORD(v22) = HIDWORD(v24);
    *&v22 = v24;
    [v19 setHyphenationFactor_];
    if (v17 == 2)
    {
      return v19;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (v17 != 2)
  {
LABEL_23:
    [v19 setAllowsDefaultTighteningForTruncation_];
  }

  return v19;
}

uint64_t FormatParagraphStyle.merge(other:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = (a1 + 8);
  v5 = (a1 + 24);
  v6 = (a1 + 40);
  v7 = (a1 + 56);
  v8 = (a1 + 104);
  v9 = (a1 + 120);
  if (*v2 != 5)
  {
    v3 = *v2;
  }

  v44 = v3;
  if (!v2[16])
  {
    v4 = (v2 + 8);
  }

  v10 = v2[16] & a1[16];
  if (!v2[32])
  {
    v5 = (v2 + 24);
  }

  v11 = v2[49];
  v12 = v2[32] & a1[32];
  if (!v2[48])
  {
    v6 = (v2 + 40);
  }

  v13 = v2[48] & a1[48];
  if (v11 == 6)
  {
    LOBYTE(v11) = a1[49];
  }

  v43 = v11;
  if (v2[50] == 3)
  {
    v14 = a1[50];
  }

  else
  {
    v14 = v2[50];
  }

  if (!v2[64])
  {
    v7 = (v2 + 56);
  }

  v15 = (v2 + 88);
  v16 = v2[64] & a1[64];
  if (v2[80])
  {
    v17 = (a1 + 72);
  }

  else
  {
    v17 = (v2 + 72);
  }

  v18 = v2[80] & a1[80];
  if (v2[96])
  {
    v15 = (a1 + 88);
  }

  v19 = v2[96] & a1[96];
  if (!v2[112])
  {
    v8 = (v2 + 104);
  }

  v20 = v2[112] & a1[112];
  if (!v2[128])
  {
    v9 = (v2 + 120);
  }

  v21 = (v2 + 152);
  v22 = v2[128] & a1[128];
  if (v2[144])
  {
    v23 = (a1 + 136);
  }

  else
  {
    v23 = (v2 + 136);
  }

  v24 = v2[144] & a1[144];
  if (v2[160])
  {
    v21 = (a1 + 152);
  }

  v25 = v2[160] & a1[160];
  if (v2[176])
  {
    v26 = (a1 + 168);
  }

  else
  {
    v26 = (v2 + 168);
  }

  v27 = v2[176] & a1[176];
  v28 = (v2 + 184);
  if (v2[192])
  {
    v28 = (a1 + 184);
  }

  v29 = v2[192] & a1[192];
  v30 = a1[193];
  if (v2[193] != 2)
  {
    v30 = v2[193];
  }

  result = *v4;
  v32 = *v5;
  v33 = *v6;
  v34 = *v7;
  v35 = *v17;
  v36 = *v15;
  v37 = *v8;
  v38 = *v9;
  v39 = *v23;
  v40 = *v21;
  v41 = *v26;
  v42 = *v28;
  *a2 = v44;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  *(a2 + 24) = v32;
  *(a2 + 32) = v12;
  *(a2 + 40) = v33;
  *(a2 + 48) = v13;
  *(a2 + 49) = v43;
  *(a2 + 50) = v14;
  *(a2 + 56) = v34;
  *(a2 + 64) = v16;
  *(a2 + 72) = v35;
  *(a2 + 80) = v18;
  *(a2 + 88) = v36;
  *(a2 + 96) = v19;
  *(a2 + 104) = v37;
  *(a2 + 112) = v20;
  *(a2 + 120) = v38;
  *(a2 + 136) = v39;
  *(a2 + 144) = v24;
  *(a2 + 152) = v40;
  *(a2 + 160) = v25;
  *(a2 + 168) = v41;
  *(a2 + 176) = v27;
  *(a2 + 184) = v42;
  *(a2 + 192) = v29;
  *(a2 + 193) = v30;
  *(a2 + 128) = v22;
  return result;
}

uint64_t _s8NewsFeed20FormatParagraphStyleV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v185 = *(a1 + 16);
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  v11 = *(a1 + 50);
  v12 = a1[7];
  v13 = *(a1 + 64);
  v14 = a1[9];
  v15 = *(a1 + 80);
  v16 = a1[11];
  v17 = *(a1 + 96);
  v18 = a1[13];
  v19 = *(a1 + 112);
  v20 = a1[15];
  v21 = *(a1 + 128);
  v22 = a1[17];
  v23 = *(a1 + 144);
  v24 = a1[19];
  v25 = *(a1 + 160);
  v26 = a1[21];
  v27 = *(a1 + 176);
  v28 = a1[23];
  v29 = *(a1 + 192);
  v30 = *(a1 + 193);
  v31 = *a2;
  v32 = a2[1];
  v182 = *(a2 + 16);
  v33 = a2[3];
  v34 = a2[5];
  v176 = *(a2 + 48);
  v179 = *(a2 + 32);
  v35 = *(a2 + 49);
  v36 = *(a2 + 50);
  v37 = a2[7];
  v38 = *(a2 + 64);
  v39 = a2[9];
  v40 = *(a2 + 80);
  v41 = a2[11];
  v42 = *(a2 + 96);
  v43 = a2[13];
  v44 = *(a2 + 112);
  v45 = a2[15];
  v46 = *(a2 + 128);
  v47 = a2[17];
  v48 = *(a2 + 144);
  v49 = a2[19];
  v50 = *(a2 + 160);
  v51 = a2[21];
  v52 = *(a2 + 176);
  v53 = a2[23];
  v54 = *(a2 + 192);
  v55 = *(a2 + 193);
  if (v4 == 5)
  {
    if (v31 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == 5)
    {
      return 0;
    }

    v125 = v27;
    v118 = v29;
    v119 = v25;
    v56 = v30;
    v143 = v26;
    v146 = v24;
    v57 = v28;
    v58 = *(a2 + 193);
    v138 = *(a2 + 176);
    v111 = *(a2 + 192);
    v112 = *(a2 + 49);
    v122 = v20;
    v59 = a2[23];
    v60 = v23;
    v115 = v9;
    v61 = v21;
    v135 = *(a2 + 160);
    v62 = a2[19];
    v63 = v19;
    v173 = *(a2 + 144);
    v64 = a2[17];
    v117 = v10;
    v65 = v17;
    v170 = v14;
    v66 = *(a2 + 128);
    v167 = a2[15];
    v164 = v15;
    v161 = v12;
    v158 = *(a2 + 112);
    v155 = a2[13];
    v149 = *(a2 + 64);
    v152 = v13;
    v67 = *(a2 + 96);
    v130 = a2[9];
    v132 = a2[11];
    v141 = *(a2 + 50);
    v68 = *(a2 + 80);
    v128 = a2[7];
    v116 = v8;
    v113 = v5;
    v114 = v6;
    v109 = a2[3];
    v110 = a2[5];
    v108 = a2[1];
    v69 = sub_1D6DDDEA0(v4, v31);
    v32 = v108;
    v33 = v109;
    v34 = v110;
    v5 = v113;
    v6 = v114;
    v8 = v116;
    v37 = v128;
    v39 = v130;
    v40 = v68;
    v36 = v141;
    v41 = v132;
    v42 = v67;
    v38 = v149;
    v13 = v152;
    v43 = v155;
    v44 = v158;
    v12 = v161;
    v15 = v164;
    v45 = v167;
    v46 = v66;
    v14 = v170;
    v17 = v65;
    v10 = v117;
    v47 = v64;
    v48 = v173;
    v19 = v63;
    v54 = v111;
    v35 = v112;
    v49 = v62;
    v21 = v61;
    v9 = v115;
    v23 = v60;
    v50 = v135;
    v52 = v138;
    v53 = v59;
    v20 = v122;
    v55 = v58;
    v28 = v57;
    v26 = v143;
    v24 = v146;
    v30 = v56;
    v29 = v118;
    v25 = v119;
    v27 = v125;
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  if (v185)
  {
    if (!v182)
    {
      return 0;
    }
  }

  else
  {
    v70 = v182;
    if (v5 != v32)
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v179)
    {
      return 0;
    }
  }

  else
  {
    v71 = v179;
    if (v6 != v33)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v176)
    {
      return 0;
    }
  }

  else
  {
    v72 = v176;
    if (v8 != v34)
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  if (v10 == 6)
  {
    if (v35 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v35 == 6)
    {
      return 0;
    }

    v73 = v10;
    v74 = v35;
    v136 = v30;
    v144 = v26;
    v147 = v24;
    v75 = v28;
    v140 = v11;
    v142 = v36;
    v76 = v55;
    v133 = v22;
    v77 = v54;
    v78 = v53;
    v79 = v23;
    v80 = v21;
    v81 = v50;
    v186 = v49;
    v150 = v38;
    v82 = v19;
    v180 = v47;
    v183 = v16;
    v174 = v48;
    v177 = v17;
    v171 = v14;
    v126 = v46;
    v168 = v45;
    v165 = v15;
    v162 = v12;
    v159 = v44;
    v156 = v43;
    v153 = v13;
    v120 = v40;
    v123 = v42;
    v83 = v41;
    v84 = v39;
    v85 = v37;
    v86 = sub_1D6DDDCCC(v73, v74);
    v37 = v85;
    v39 = v84;
    v40 = v120;
    v42 = v123;
    v41 = v83;
    v43 = v156;
    v44 = v159;
    v12 = v162;
    v15 = v165;
    v45 = v168;
    v46 = v126;
    v14 = v171;
    v48 = v174;
    v17 = v177;
    v47 = v180;
    v16 = v183;
    v19 = v82;
    v38 = v150;
    v13 = v153;
    v49 = v186;
    v50 = v81;
    v21 = v80;
    v23 = v79;
    v53 = v78;
    v54 = v77;
    v22 = v133;
    v55 = v76;
    v11 = v140;
    v36 = v142;
    v28 = v75;
    v26 = v144;
    v24 = v147;
    v30 = v136;
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  if (v11 == 3)
  {
    if (v36 != 3)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v36 != 3)
  {
    v127 = v46;
    v87 = 0x74754F68737570;
    v151 = v38;
    if (v11)
    {
      if (v11 == 1)
      {
        v88 = 0xE700000000000000;
        v89 = 0x74754F68737570;
      }

      else
      {
        v88 = 0xE800000000000000;
        v89 = 0x647261646E617473;
      }
    }

    else
    {
      v89 = 0xD000000000000012;
      v88 = 0x80000001D73BB8E0;
    }

    v139 = v52;
    if (v36)
    {
      if (v36 == 1)
      {
        v90 = 0xE700000000000000;
      }

      else
      {
        v90 = 0xE800000000000000;
        v87 = 0x647261646E617473;
      }
    }

    else
    {
      v87 = 0xD000000000000012;
      v90 = 0x80000001D73BB8E0;
    }

    v129 = v37;
    v131 = v39;
    v121 = v40;
    v124 = v42;
    v134 = v41;
    v154 = v13;
    v157 = v43;
    v160 = v44;
    v163 = v12;
    v166 = v15;
    v169 = v45;
    v172 = v14;
    v175 = v48;
    v178 = v17;
    v181 = v47;
    v184 = v16;
    v148 = v19;
    v187 = v49;
    v137 = v50;
    v91 = v21;
    v92 = v23;
    v93 = v53;
    v94 = v54;
    v95 = v55;
    v96 = v28;
    v97 = v30;
    if (v89 == v87 && v88 == v90)
    {

      v30 = v97;
      v28 = v96;
      v55 = v95;
      v54 = v94;
      v53 = v93;
      v23 = v92;
      v50 = v137;
      v52 = v139;
      v21 = v91;
      v16 = v184;
      v49 = v187;
      v19 = v148;
      v48 = v175;
      v17 = v178;
      v47 = v181;
      v14 = v172;
      v46 = v127;
      v45 = v169;
      v15 = v166;
      v12 = v163;
      v44 = v160;
      v43 = v157;
      v38 = v151;
      v13 = v154;
      v40 = v121;
      v42 = v124;
      v39 = v131;
      v41 = v134;
      v37 = v129;
      goto LABEL_47;
    }

    v145 = sub_1D72646CC();

    v30 = v97;
    v28 = v96;
    v55 = v95;
    v54 = v94;
    v53 = v93;
    v23 = v92;
    v50 = v137;
    v52 = v139;
    v21 = v91;
    v16 = v184;
    v49 = v187;
    v19 = v148;
    v48 = v175;
    v17 = v178;
    v47 = v181;
    v14 = v172;
    v46 = v127;
    v45 = v169;
    v15 = v166;
    v12 = v163;
    v44 = v160;
    v43 = v157;
    v38 = v151;
    v13 = v154;
    v40 = v121;
    v42 = v124;
    v39 = v131;
    v41 = v134;
    v37 = v129;
    if (v145)
    {
LABEL_47:
      if (v13)
      {
        if (!v38)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v37)
        {
          v98 = v38;
        }

        else
        {
          v98 = 1;
        }

        if (v98)
        {
          return 0;
        }
      }

      if (v15)
      {
        if (!v40)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v39)
        {
          v99 = v40;
        }

        else
        {
          v99 = 1;
        }

        if (v99)
        {
          return 0;
        }
      }

      if (v17)
      {
        if (!v42)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v41)
        {
          v100 = v42;
        }

        else
        {
          v100 = 1;
        }

        if (v100)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (!v44)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == v43)
        {
          v101 = v44;
        }

        else
        {
          v101 = 1;
        }

        if (v101)
        {
          return 0;
        }
      }

      if (v21)
      {
        if (!v46)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v45)
        {
          v102 = v46;
        }

        else
        {
          v102 = 1;
        }

        if (v102)
        {
          return 0;
        }
      }

      if (v23)
      {
        if (!v48)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == v47)
        {
          v103 = v48;
        }

        else
        {
          v103 = 1;
        }

        if (v103)
        {
          return 0;
        }
      }

      if (v25)
      {
        if (!v50)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == v49)
        {
          v104 = v50;
        }

        else
        {
          v104 = 1;
        }

        if (v104)
        {
          return 0;
        }
      }

      if (v27)
      {
        if (!v52)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v51)
        {
          v105 = v52;
        }

        else
        {
          v105 = 1;
        }

        if (v105)
        {
          return 0;
        }
      }

      if (v29)
      {
        if (!v54)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == v53)
        {
          v106 = v54;
        }

        else
        {
          v106 = 1;
        }

        if (v106)
        {
          return 0;
        }
      }

      if (v30 == 2)
      {
        if (v55 != 2)
        {
          return 0;
        }
      }

      else if (v55 == 2 || ((v55 ^ v30) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D5F0F9F0(uint64_t a1)
{
  result = sub_1D5F0FA18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F0FA18()
{
  result = qword_1EC880E80;
  if (!qword_1EC880E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E80);
  }

  return result;
}

unint64_t sub_1D5F0FA6C(void *a1)
{
  a1[1] = sub_1D5C35064();
  a1[2] = sub_1D5F0FAA4();
  result = sub_1D5F0FAF8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F0FAA4()
{
  result = qword_1EDF0EE68;
  if (!qword_1EDF0EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE68);
  }

  return result;
}

unint64_t sub_1D5F0FAF8()
{
  result = qword_1EC880E88;
  if (!qword_1EC880E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E88);
  }

  return result;
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D5F0FB90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 194))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 193);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1D5F0FC00(uint64_t a1, __int128 *a2)
{
  v3 = a2[11];
  v194 = a2[10];
  v195 = v3;
  v196 = *(a2 + 96);
  v4 = a2[7];
  v190 = a2[6];
  v191 = v4;
  v5 = a2[8];
  v193 = a2[9];
  v192 = v5;
  v6 = a2[3];
  v186 = a2[2];
  v187 = v6;
  v7 = a2[4];
  v189 = a2[5];
  v188 = v7;
  v8 = *a2;
  v185 = a2[1];
  v184 = v8;
  v9 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v9);
  sub_1D5EA74B8();
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7281190;
  v15 = (v14 + v13);
  v16 = a2[11];
  v197[10] = a2[10];
  v197[11] = v16;
  v198 = *(a2 + 96);
  v17 = a2[7];
  v197[6] = a2[6];
  v197[7] = v17;
  v18 = a2[8];
  v197[9] = a2[9];
  v197[8] = v18;
  v19 = a2[3];
  v197[2] = a2[2];
  v197[3] = v19;
  v20 = a2[4];
  v197[5] = a2[5];
  v197[4] = v20;
  v21 = *a2;
  v197[1] = a2[1];
  v197[0] = v21;
  if (sub_1D5D39FB4(v197) == 1)
  {
    v22 = 5;
  }

  else
  {
    v22 = v197[0];
  }

  sub_1D7120CE4(0x6E656D6E67696C41, 0xE900000000000074, v22, v15);
  v23 = type metadata accessor for FormatInspectionItem(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 0, 1, v23);
  v179 = v194;
  v180 = v195;
  v181 = v196;
  v175 = v190;
  v176 = v191;
  v178 = v193;
  v177 = v192;
  v171 = v186;
  v172 = v187;
  v174 = v189;
  v173 = v188;
  v170 = v185;
  v169 = v184;
  v25 = sub_1D5D39FB4(&v169);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(&v169 + 1);
  }

  sub_1D711A80C(0xD000000000000016, 0x80000001D73C2060, v26, (v25 == 1) | v170 & 1, &v15[v12]);
  v24(&v15[v12], 0, 1, v23);
  v166 = v194;
  v167 = v195;
  v168 = v196;
  v162 = v190;
  v163 = v191;
  v165 = v193;
  v164 = v192;
  v158 = v186;
  v159 = v187;
  v161 = v189;
  v160 = v188;
  v157 = v185;
  v156 = v184;
  v27 = sub_1D5D39FB4(&v156);
  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(&v157 + 1);
  }

  sub_1D711A80C(0x646E492064616548, 0xEB00000000746E65, v28, (v27 == 1) | v158 & 1, &v15[2 * v12]);
  v24(&v15[2 * v12], 0, 1, v23);
  v153 = v194;
  v154 = v195;
  v155 = v196;
  v149 = v190;
  v150 = v191;
  v152 = v193;
  v151 = v192;
  v145 = v186;
  v146 = v187;
  v148 = v189;
  v147 = v188;
  v144[1] = v185;
  v144[0] = v184;
  v29 = sub_1D5D39FB4(v144);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(&v145 + 1);
  }

  sub_1D711A80C(0x646E49206C696154, 0xEB00000000746E65, v30, (v29 == 1) | v146 & 1, &v15[3 * v12]);
  v24(&v15[3 * v12], 0, 1, v23);
  v141 = v194;
  v142 = v195;
  v143 = v196;
  v137 = v190;
  v138 = v191;
  v140 = v193;
  v139 = v192;
  v133[2] = v186;
  v134 = v187;
  v136 = v189;
  v135 = v188;
  v133[1] = v185;
  v133[0] = v184;
  if (sub_1D5D39FB4(v133) == 1)
  {
    v31 = 6;
  }

  else
  {
    v31 = BYTE1(v134);
  }

  sub_1D7120F90(0x65724220656E694CLL, 0xEF65646F4D206B61, v31, &v15[4 * v12]);
  v24(&v15[4 * v12], 0, 1, v23);
  v130 = v194;
  v131 = v195;
  v132 = v196;
  v126 = v190;
  v127 = v191;
  v129 = v193;
  v128 = v192;
  v122[2] = v186;
  v123 = v187;
  v125 = v189;
  v124 = v188;
  v122[1] = v185;
  v122[0] = v184;
  if (sub_1D5D39FB4(v122) == 1)
  {
    v32 = 3;
  }

  else
  {
    v32 = BYTE2(v123);
  }

  sub_1D7121268(0xD000000000000013, 0x80000001D73C2080, v32, &v15[5 * v12]);
  v24(&v15[5 * v12], 0, 1, v23);
  v119 = v194;
  v120 = v195;
  v121 = v196;
  v115 = v190;
  v116 = v191;
  v118 = v193;
  v117 = v192;
  v111[2] = v186;
  v112 = v187;
  v114 = v189;
  v113 = v188;
  v111[1] = v185;
  v111[0] = v184;
  v33 = sub_1D5D39FB4(v111);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(&v112 + 1);
  }

  sub_1D711A80C(0xD000000000000013, 0x80000001D73C20A0, v34, (v33 == 1) | v113 & 1, &v15[6 * v12]);
  v24(&v15[6 * v12], 0, 1, v23);
  v108 = v194;
  v109 = v195;
  v110 = v196;
  v104 = v190;
  v105 = v191;
  v107 = v193;
  v106 = v192;
  v101[2] = v186;
  v101[3] = v187;
  v103 = v189;
  v102 = v188;
  v101[1] = v185;
  v101[0] = v184;
  v35 = sub_1D5D39FB4(v101);
  if (v35 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(&v102 + 1);
  }

  v37 = 8 * v12;
  sub_1D711A80C(0xD000000000000013, 0x80000001D73C20C0, v36, (v35 == 1) | v103 & 1, &v15[7 * v12]);
  v24(&v15[7 * v12], 0, 1, v23);
  v98 = v194;
  v99 = v195;
  v100 = v196;
  v94 = v190;
  v95 = v191;
  v97 = v193;
  v96 = v192;
  v92[2] = v186;
  v92[3] = v187;
  v93 = v189;
  v92[4] = v188;
  v92[1] = v185;
  v92[0] = v184;
  v38 = sub_1D5D39FB4(v92);
  if (v38 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(&v93 + 1);
  }

  sub_1D711A80C(0x61705320656E694CLL, 0xEC000000676E6963, v39, (v38 == 1) | v94 & 1, &v15[v37]);
  v24(&v15[v37], 0, 1, v23);
  v89 = v194;
  v90 = v195;
  v91 = v196;
  v85 = v190;
  v86 = v191;
  v88 = v193;
  v87 = v192;
  v84[2] = v186;
  v84[3] = v187;
  v84[5] = v189;
  v84[4] = v188;
  v84[1] = v185;
  v84[0] = v184;
  v40 = sub_1D5D39FB4(v84);
  if (v40 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(&v85 + 1);
  }

  sub_1D711A80C(0xD000000000000011, 0x80000001D73C20E0, v41, (v40 == 1) | v86 & 1, &v15[9 * v12]);
  v24(&v15[9 * v12], 0, 1, v23);
  v81 = v194;
  v82 = v195;
  v83 = v196;
  v77[6] = v190;
  v78 = v191;
  v80 = v193;
  v79 = v192;
  v77[2] = v186;
  v77[3] = v187;
  v77[5] = v189;
  v77[4] = v188;
  v77[1] = v185;
  v77[0] = v184;
  v42 = sub_1D5D39FB4(v77);
  if (v42 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(&v78 + 1);
  }

  sub_1D711A80C(0xD000000000000018, 0x80000001D73C2100, v43, (v42 == 1) | v79 & 1, &v15[10 * v12]);
  v24(&v15[10 * v12], 0, 1, v23);
  v74 = v194;
  v75 = v195;
  v76 = v196;
  v71[6] = v190;
  v71[7] = v191;
  v72 = v192;
  v73 = v193;
  v71[2] = v186;
  v71[3] = v187;
  v71[4] = v188;
  v71[5] = v189;
  v71[0] = v184;
  v71[1] = v185;
  v44 = sub_1D5D39FB4(v71);
  if (v44 == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = *(&v72 + 1);
  }

  sub_1D711A80C(0xD000000000000014, 0x80000001D73C2120, v45, (v44 == 1) | v73 & 1, &v15[11 * v12]);
  v24(&v15[11 * v12], 0, 1, v23);
  v68 = v194;
  v69 = v195;
  v70 = v196;
  v66[6] = v190;
  v66[7] = v191;
  v66[8] = v192;
  v67 = v193;
  v66[2] = v186;
  v66[3] = v187;
  v66[4] = v188;
  v66[5] = v189;
  v66[0] = v184;
  v66[1] = v185;
  v46 = sub_1D5D39FB4(v66);
  if (v46 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(&v67 + 1);
  }

  sub_1D711A80C(0xD00000000000001CLL, 0x80000001D73C2140, v47, (v46 == 1) | v68 & 1, &v15[12 * v12]);
  v24(&v15[12 * v12], 0, 1, v23);
  v63 = v194;
  v64 = v195;
  v65 = v196;
  v62[6] = v190;
  v62[7] = v191;
  v62[8] = v192;
  v62[9] = v193;
  v62[2] = v186;
  v62[3] = v187;
  v62[4] = v188;
  v62[5] = v189;
  v62[0] = v184;
  v62[1] = v185;
  v48 = sub_1D5D39FB4(v62);
  if (v48 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(&v63 + 1);
  }

  sub_1D711A80C(0xD000000000000014, 0x80000001D73C2160, v49, (v48 == 1) | v64 & 1, &v15[13 * v12]);
  v24(&v15[13 * v12], 0, 1, v23);
  v59[10] = v194;
  v60 = v195;
  v61 = v196;
  v59[6] = v190;
  v59[7] = v191;
  v59[8] = v192;
  v59[9] = v193;
  v59[2] = v186;
  v59[3] = v187;
  v59[4] = v188;
  v59[5] = v189;
  v59[0] = v184;
  v59[1] = v185;
  v50 = sub_1D5D39FB4(v59);
  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(&v60 + 1);
  }

  sub_1D711A80C(0xD000000000000012, 0x80000001D73C2180, v51, (v50 == 1) | v61 & 1, &v15[14 * v12]);
  v24(&v15[14 * v12], 0, 1, v23);
  v57[10] = v194;
  v57[11] = v195;
  v58 = v196;
  v57[6] = v190;
  v57[7] = v191;
  v57[8] = v192;
  v57[9] = v193;
  v57[2] = v186;
  v57[3] = v187;
  v57[4] = v188;
  v57[5] = v189;
  v57[0] = v184;
  v57[1] = v185;
  if (sub_1D5D39FB4(v57) == 1)
  {
    v52 = 2;
  }

  else
  {
    v52 = HIBYTE(v58);
  }

  sub_1D711E9F0(0xD000000000000028, 0x80000001D73C21A0, v52, &v15[15 * v12]);
  v24(&v15[15 * v12], 0, 1, v23);
  sub_1D6795150(0x7061726761726150, 0xE900000000000068, 0, 0, v14, v182);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v10 + 56) = &type metadata for FormatInspectionGroup;
  *(v10 + 64) = &off_1F518B2C0;
  v53 = swift_allocObject();
  *(v10 + 32) = v53;
  v54 = v182[1];
  *(v53 + 16) = v182[0];
  *(v53 + 32) = v54;
  *(v53 + 48) = v183;
  v55 = sub_1D7073500(v10);
  swift_setDeallocating();
  sub_1D5F10AA0(v10 + 32);
  swift_deallocClassInstance();
  return v55;
}

uint64_t sub_1D5F10AA0(uint64_t a1)
{
  sub_1D5E4F358(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F10AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1D725844C();
  v3 = [v1 assetHandleForURL:v2 lifetimeHint:1];

  v4 = [v3 filePath];
  if (v4)
  {
    v6 = v4;
    sub_1D726207C();

    sub_1D5F129A4();
    swift_allocObject();
    v7 = sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v5);
    sub_1D5F129A4();
    swift_allocObject();
    v7 = sub_1D725BBAC();
  }

  return v7;
}

uint64_t sub_1D5F10C3C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72583FC();
  v7 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v8 = sub_1D725844C();
  v9 = [v7 initWithURL_];

  result = (*(v3 + 8))(v6, v2);
  *a1 = v9;
  return result;
}

void sub_1D5F10D60(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a3 + *(type metadata accessor for FormatVideoData(0) + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 25);
  v11 = *(v4 + 32);
  v10 = *(v4 + 40);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v12 = v5;
  v13 = v11;
  sub_1D6EC1EB4(v3, &v15);
  v14 = v15;
}

void sub_1D5F10E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        if (v10 == a4)
        {
          v12 = a5 + *(type metadata accessor for FormatVideoData(0) + 20);
          v13 = *v12;
          v14 = *(v12 + 32);
          v15 = a1;
          v16 = v13;
          v17 = v14;
          v18 = [v9 layer];
          objc_opt_self();
          v19 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v19 setContentsGravity_];
          v20 = [v9 layer];
          objc_opt_self();
          v21 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v21 setImage_];
          v9 = v15;
          v11 = v21;
        }

        v9 = v11;
      }
    }
  }
}

uint64_t sub_1D5F10FE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1102C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = *(a2 + 80);
    v12 = *(a2 + 88);
    v13 = *(a2 + 96);
    sub_1D5ED34B0(v11, v12, v13);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = -2;
  }

  v14 = [a1 layer];
  [a1 bounds];
  v33 = v11;
  v34 = v12;
  v35 = v13;
  sub_1D6E549E4(v14, &v33, v15, v16, v17, v18);

  v19 = sub_1D5ED348C(v11, v12, v13);
  if (a2)
  {
    if ((~*(a2 + 192) & 0xF000000000000007) != 0)
    {
      v33 = *(a2 + 192);
      v20 = FormatColor.color.getter(v19);
    }

    else
    {
      v20 = 0;
    }

    sub_1D726346C();

    v25 = *(a2 + 64);
    if (!(v25 >> 61) && (v25 & 0xF000000000000007) != 0xF000000000000007)
    {
      v33 = *(v25 + 16);

      v27 = FormatColor.color.getter(v26);
      sub_1D726349C();
    }

    v23 = *(a2 + 72);
    v21 = *(a2 + 80);
    v22 = *(a2 + 88);
    v24 = *(a2 + 96);

    sub_1D5ED34B0(v21, v22, v24);
  }

  else
  {
    sub_1D726346C();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -2;
  }

  v28 = [a1 layer];
  v33 = v21;
  v34 = v22;
  v35 = v24;
  sub_1D6D111F4(v28, a4, v23, &v33, a5, a6);

  sub_1D5ED348C(v21, v22, v24);
  if (a2)
  {
  }

  else
  {
    v29 = 0;
  }

  v33 = v29;
  sub_1D613DC18(a1, &v33, v32);
}

uint64_t sub_1D5F11264(char *a1, uint64_t a2, void *a3)
{
  v137 = a3;
  v160 = a2;
  v146 = *v3;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B6D220(0, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v153 = &v134[-v8];
  v138 = type metadata accessor for FormatVideoData(0);
  v147 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v9);
  v148 = v10;
  v149 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v154 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v141 = &v134[-v17];
  sub_1D5BB60D4();
  v156 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v145 = &v134[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v134[-v23];
  sub_1D5B6D220(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v5);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v139 = &v134[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v29);
  v144 = &v134[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v150 = &v134[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v134[-v36];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v134[-v40];
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v134[-v44];
  v158 = a1;
  v46 = &a1[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_assets];
  swift_beginAccess();
  v47 = type metadata accessor for FormatVideoData.Assets(0);
  v152 = *(v47 - 8);
  v48 = *(v152 + 48);
  v155 = v47;
  v143 = v152 + 48;
  v142 = v48;
  v49 = (v48)(v46, 1);
  v157 = v46;
  if (v49)
  {
    v50 = *(v12 + 56);
    v51 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v45, 1, 1, v11);
    (*(v12 + 16))(v41, v160, v11);
  }

  else
  {
    v52 = *(v12 + 16);
    v52(v45, v46, v11);
    v50 = *(v12 + 56);
    v51 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v45, 0, 1, v11);
    v52(v41, v160, v11);
  }

  v140 = v51;
  v50(v41, 0, 1, v11);
  v53 = *(v156 + 48);
  sub_1D5EB84C0(v45, v24);
  sub_1D5EB84C0(v41, &v24[v53]);
  v159 = v12;
  v54 = *(v12 + 48);
  v55 = v54(v24, 1, v11);
  v161 = v11;
  if (v55 == 1)
  {
    sub_1D5E3E404(v41);
    sub_1D5E3E404(v45);
    v56 = v54(&v24[v53], 1, v11);
    v57 = v158;
    if (v56 == 1)
    {
      sub_1D5E3E404(v24);
      v58 = v160;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D5EB84C0(v24, v37);
  v59 = v54(&v24[v53], 1, v11);
  v57 = v158;
  if (v59 == 1)
  {
    sub_1D5E3E404(v41);
    sub_1D5E3E404(v45);
    (*(v159 + 8))(v37, v11);
LABEL_9:
    sub_1D5F126C8(v24);
    v58 = v160;
LABEL_10:
    v60 = sub_1D6EC1DE0();
    MEMORY[0x1EEE9AC00](v60, v61);
    *&v134[-16] = v151;
    *&v134[-8] = v58;
    sub_1D725BDCC();
    sub_1D5B5A498(0, &unk_1EC880E90);
    sub_1D725BAAC();

    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v62 = sub_1D726308C();
    v63 = v149;
    sub_1D5F12740(v58, v149, type metadata accessor for FormatVideoData);
    v64 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v65 = swift_allocObject();
    sub_1D5F127A8(v63, v65 + v64);
    type metadata accessor for FormatVideoView();
    sub_1D725BAAC();

    goto LABEL_11;
  }

  v79 = v159;
  v80 = *(v159 + 32);
  v136 = v50;
  v81 = v141;
  v80(v141, &v24[v53], v11);
  sub_1D5B70FC8(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
  v135 = sub_1D7261FBC();
  v82 = *(v79 + 8);
  v83 = v81;
  v50 = v136;
  v82(v83, v11);
  sub_1D5E3E404(v41);
  sub_1D5E3E404(v45);
  v82(v37, v11);
  v57 = v158;
  v58 = v160;
  sub_1D5E3E404(v24);
  if ((v135 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v66 = v155;
  v67 = *(v155 + 20);
  v68 = v150;
  sub_1D5EB84C0(v58 + v67, v150);
  if (v54(v68, 1, v161) != 1)
  {
    v76 = v50;
    v150 = *(v159 + 32);
    (v150)(v154, v68, v161);
    v77 = v157;
    if (v142(v157, 1, v66))
    {
      v78 = v144;
      v76(v144, 1, 1, v161);
    }

    else
    {
      v84 = &v77[*(v66 + 20)];
      v78 = v144;
      sub_1D5EB84C0(v84, v144);
    }

    v85 = *(v156 + 48);
    v86 = v145;
    sub_1D5EB84C0(v78, v145);
    sub_1D5EB84C0(v58 + v67, &v86[v85]);
    if (v54(v86, 1, v161) == 1)
    {
      sub_1D5E3E404(v78);
      v87 = v54(&v86[v85], 1, v161);
      v88 = v159;
      if (v87 == 1)
      {
        sub_1D5E3E404(v86);
        (*(v88 + 8))(v154, v161);
LABEL_28:
        v113 = v153;
        sub_1D5F12740(v58, v153, type metadata accessor for FormatVideoData.Assets);
        (*(v152 + 56))(v113, 0, 1, v66);
LABEL_31:
        v132 = v157;
        swift_beginAccess();
        v74 = v113;
        v75 = v132;
        goto LABEL_32;
      }
    }

    else
    {
      v89 = v78;
      v90 = v139;
      sub_1D5EB84C0(v86, v139);
      if (v54(&v86[v85], 1, v161) != 1)
      {
        v109 = v141;
        v110 = v161;
        (v150)(v141, &v86[v85], v161);
        sub_1D5B70FC8(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
        v111 = sub_1D7261FBC();
        v112 = *(v159 + 8);
        v112(v109, v110);
        sub_1D5E3E404(v89);
        v112(v90, v110);
        sub_1D5E3E404(v86);
        v91 = v151;
        if (v111)
        {
          v112(v154, v161);
          goto LABEL_28;
        }

LABEL_24:
        v92 = v91[2];
        v93 = sub_1D725844C();
        v94 = [v92 assetHandleForURL:v93 lifetimeHint:1];

        v164 = sub_1D5B5A498(0, &qword_1EDF1AB50);
        v165 = sub_1D5EECFF8();
        v163 = v94;
        v95 = v94;
        v96 = v158;
        [v158 bounds];
        v97 = sub_1D725E0DC();
        swift_allocObject();
        v98 = sub_1D725E0BC();
        __swift_project_boxed_opaque_existential_1(v91 + 3, v91[6]);
        v99 = MEMORY[0x1E69D7D98];
        v164 = v97;
        v165 = MEMORY[0x1E69D7D98];
        v163 = v98;
        v156 = v98;

        v100 = sub_1D725D0BC();
        __swift_destroy_boxed_opaque_existential_1(&v163);
        if (v100)
        {
          v101 = v58 + *(v138 + 20);
          v102 = *(v101 + 32);
          v103 = *v101;
          v104 = v102;
          v105 = [v96 layer];
          objc_opt_self();
          v106 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v106 setContentsGravity_];
          v107 = [v96 layer];
          objc_opt_self();
          v108 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v108 setImage_];

          (*(v159 + 8))(v154, v161);
        }

        else
        {
          v114 = [v96 layer];
          objc_opt_self();
          v115 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v115 setImage_];
          sub_1D5B5A498(0, &qword_1EDF1AA30);
          v146 = sub_1D726308C();
          v116 = swift_allocObject();
          v117 = v137;
          swift_unknownObjectWeakInit();
          v118 = swift_allocObject();
          v151 = v118;
          swift_unknownObjectWeakInit();
          v119 = v58;
          v120 = v149;
          sub_1D5F12740(v119, v149, type metadata accessor for FormatVideoData);
          v121 = (*(v147 + 80) + 40) & ~*(v147 + 80);
          v122 = swift_allocObject();
          v148 = v95;
          v123 = v122;
          v122[2] = v118;
          v122[3] = v116;
          v150 = v116;
          v122[4] = v117;
          sub_1D5F127A8(v120, v122 + v121);
          v164 = v97;
          v165 = v99;
          v163 = v156;

          v124 = v117;
          v125 = [v96 layer];
          objc_opt_self();
          v126 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          sub_1D725EAEC();
          v127 = sub_1D726203C();

          [v126 setIdentifier_];

          __swift_project_boxed_opaque_existential_1(v91 + 3, v91[6]);
          v128 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D5B68374(&v163, v162);
          v129 = swift_allocObject();
          v130 = v146;
          v129[2] = v146;
          v129[3] = v128;
          sub_1D5B63F14(v162, (v129 + 4));
          v129[9] = sub_1D5F12924;
          v129[10] = v123;
          v131 = v130;

          sub_1D725D0AC();

          (*(v159 + 8))(v154, v161);

          __swift_destroy_boxed_opaque_existential_1(&v163);
        }

        v113 = v153;
        sub_1D5F12740(v160, v153, type metadata accessor for FormatVideoData.Assets);
        (*(v152 + 56))(v113, 0, 1, v155);
        goto LABEL_31;
      }

      sub_1D5E3E404(v78);
      (*(v159 + 8))(v90, v161);
    }

    sub_1D5F126C8(v86);
    v91 = v151;
    goto LABEL_24;
  }

  sub_1D5E3E404(v68);
  v69 = [v57 layer];
  v70 = v157;
  v71 = v69;
  objc_opt_self();
  v72 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  [v72 setImage_];
  v73 = v153;
  sub_1D5F12740(v58, v153, type metadata accessor for FormatVideoData.Assets);
  (*(v152 + 56))(v73, 0, 1, v66);
  swift_beginAccess();
  v74 = v73;
  v75 = v70;
LABEL_32:
  sub_1D5F12890(v74, v75);
  return swift_endAccess();
}

uint64_t sub_1D5F12524(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = &a2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_identifier];
  *v18 = v17;
  *(v18 + 1) = v16;

  swift_beginAccess();
  sub_1D726344C();
  [a2 setUserInteractionEnabled_];
  v19 = *(a1 + 144);
  if (v19)
  {
    v20 = *(v19 + 200);
  }

  else
  {
    v20 = 0;
  }

  [a2 setAccessibilityIgnoresInvertColors_];
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  [a2 setIsAccessibilityElement_];
  [a2 setAccessibilityElementsHidden_];
  if (v22 <= 0xFD)
  {
    if ((v22 & 0x80) == 0)
    {
      v23 = &selRef_setIsAccessibilityElement_;
LABEL_9:
      [a2 *v23];
      goto LABEL_10;
    }

    if (v21 | v22 & 0x7F)
    {
      v23 = &selRef_setAccessibilityElementsHidden_;
      goto LABEL_9;
    }
  }

LABEL_10:
  [a2 setClipsToBounds_];
  sub_1D5F1102C(a2, v19, a3, a6, a7, a8);
  return sub_1D5F11264(a2, a4, a5);
}

uint64_t sub_1D5F126C8(uint64_t a1)
{
  sub_1D5BB60D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F12740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F127A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVideoData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F12890(uint64_t a1, uint64_t a2)
{
  sub_1D5B6D220(0, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D5F12924(void *a1)
{
  v3 = *(type metadata accessor for FormatVideoData(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1D5F10E08(a1, v4, v5, v6, v7);
}

void sub_1D5F129A4()
{
  if (!qword_1EDF179A0[0])
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF179A0);
    }
  }
}

uint64_t PuzzleProgress.rankID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D5F12A38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65726F6373;
    if (a1 != 2)
    {
      v5 = 0x70795465726F6373;
    }

    if (a1 <= 1u)
    {
      return 0x73736572676F7270;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6172754479616C70;
    v2 = 0x6465766C6F537369;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x44496B6E6172;
    if (a1 != 4)
    {
      v3 = 0x6576655264657375;
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

uint64_t sub_1D5F12B6C()
{
  sub_1D7264A0C();
  sub_1D694FF24();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F12BBC()
{
  sub_1D7264A0C();
  sub_1D694FF24();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F12C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F14CB8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5F12C30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5F12A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5F12C78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F14CB8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5F12CA0(uint64_t a1)
{
  v2 = sub_1D5F13D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F12CDC(uint64_t a1)
{
  v2 = sub_1D5F13D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D5F12D18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x73736572676F7270, 0xED00006C6576654CLL), (v5 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v4, v105), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v12 = sub_1D725C42C();
    __swift_project_value_buffer(v12, qword_1EDFFCFA8);

    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EBC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v105[0] = v16;
      *v15 = 136315138;
      v17 = sub_1D7261D4C();
      v19 = v18;

      v20 = sub_1D5BC5100(v17, v19, v105);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D5B42000, v13, v14, "Failed parsing PuzzleProgress message. Missing progressLevel: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v6 = v99;
  if (!*(a1 + 16))
  {
    v10 = 0;
    v93 = 1;
LABEL_25:
    v23 = 2;
    goto LABEL_26;
  }

  v7 = sub_1D5B69D90(0x65726F6373, 0xE500000000000000);
  if (v8)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v7, v105);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v99;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  v93 = v11;
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v21 = sub_1D5B69D90(0x70795465726F6373, 0xE900000000000065);
  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v21, v105);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v99 == __PAIR128__(0xE700000000000000, 0x746C7561666564) || (sub_1D72646CC() & 1) != 0)
  {

    v23 = 0;
  }

  else if (v99 == __PAIR128__(0xE700000000000000, 0x74636566726570))
  {

    v23 = 1;
  }

  else
  {
    v56 = sub_1D72646CC();

    if (v56)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

LABEL_26:
  if (!*(a1 + 16))
  {
    goto LABEL_57;
  }

  v24 = sub_1D5B69D90(0x44496B6E6172, 0xE600000000000000);
  if (v25)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v24, v105);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v99;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = *(&v99 + 1);
    }

    else
    {
      v28 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  v29 = sub_1D5B69D90(0x6576655264657375, 0xEA00000000006C61);
  if ((v30 & 1) != 0 && (sub_1D5B76B10(*(a1 + 56) + 32 * v29, v105), swift_dynamicCast()))
  {
    v31 = v99;
  }

  else
  {
    v31 = 0;
  }

  if (!*(a1 + 16) || (v92 = v31, v32 = sub_1D5B69D90(0x6172754479616C70, 0xEC0000006E6F6974), (v33 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v32, v105), (swift_dynamicCast() & 1) == 0))
  {
LABEL_57:
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725C42C();
    __swift_project_value_buffer(v41, qword_1EDFFCFA8);

    v42 = sub_1D725C3FC();
    v43 = sub_1D7262EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v105[0] = v45;
      *v44 = 136315138;
      v46 = sub_1D7261D4C();
      v48 = v47;

      v49 = sub_1D5BC5100(v46, v48, v105);

      *(v44 + 4) = v49;
      v50 = "Failed parsing PuzzleProgress message. Missing playDuration: %s";
LABEL_61:
      _os_log_impl(&dword_1D5B42000, v42, v43, v50, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1DA6FD500](v45, -1, -1);
      MEMORY[0x1DA6FD500](v44, -1, -1);
LABEL_67:

LABEL_16:
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      return;
    }

    goto LABEL_66;
  }

  if (!*(a1 + 16) || (v91 = v99, v34 = sub_1D5B69D90(0x6465766C6F537369, 0xE800000000000000), (v35 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v34, v105), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725C42C();
    __swift_project_value_buffer(v51, qword_1EDFFCFA8);

    v42 = sub_1D725C3FC();
    v43 = sub_1D7262EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v105[0] = v45;
      *v44 = 136315138;
      v52 = sub_1D7261D4C();
      v54 = v53;

      v55 = sub_1D5BC5100(v52, v54, v105);

      *(v44 + 4) = v55;
      v50 = "Failed parsing PuzzleProgress message. Missing isSolved: %s";
      goto LABEL_61;
    }

LABEL_66:

    goto LABEL_67;
  }

  if (!*(a1 + 16) || ((v89 = v99, v36 = sub_1D5B69D90(0xD000000000000018, 0x80000001D73B7720), (v37 & 1) == 0) ? (v39 = 0, v90 = 0) : ((sub_1D5B76B10(*(a1 + 56) + 32 * v36, v105), (v38 = swift_dynamicCast()) == 0) ? (v39 = 0) : (v39 = v99), !v38 ? (v40 = 0) : (v40 = *(&v99 + 1)), v90 = v40), !*(a1 + 16) || (v88 = v39, v57 = sub_1D5B69D90(0x73736572676F7270, 0xEC00000061746144), (v58 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v57, v105), sub_1D5BB0DB0(), (swift_dynamicCast() & 1) == 0)))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v69 = sub_1D725C42C();
    __swift_project_value_buffer(v69, qword_1EDFFCFA8);

    v70 = sub_1D725C3FC();
    v71 = sub_1D7262EBC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v105[0] = v73;
      *v72 = 136315138;
      v74 = sub_1D7261D4C();
      v76 = v75;

      v77 = sub_1D5BC5100(v74, v76, v105);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1D5B42000, v70, v71, "Failed parsing PuzzleProgress message. Missing progressData: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1DA6FD500](v73, -1, -1);
      MEMORY[0x1DA6FD500](v72, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v59 = objc_opt_self();
  v60 = sub_1D7261D2C();

  v105[0] = 0;
  v61 = [v59 dataWithJSONObject:v60 options:0 error:v105];

  if (!v61)
  {
    v78 = v105[0];
    v79 = sub_1D725829C();

    swift_willThrow();
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v80 = sub_1D725C42C();
    __swift_project_value_buffer(v80, qword_1EDFFCFA8);
    v81 = v79;
    v82 = sub_1D725C3FC();
    v83 = sub_1D7262EBC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = v79;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_1D5B42000, v82, v83, "Failed to create InternalData error: %@", v84, 0xCu);
      sub_1D5F15694(v85, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v85, -1, -1);
      MEMORY[0x1DA6FD500](v84, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v62 = v105[0];
  v63 = sub_1D725867C();
  v65 = v64;

  *(&v99 + 1) = v99;
  LOBYTE(v100) = v99;
  *(&v100 + 1) = *v97;
  DWORD1(v100) = *&v97[3];
  *(&v100 + 1) = v63;
  *&v101 = v65;
  *(&v101 + 1) = v10;
  *(&v102 + 2) = v95;
  WORD3(v102) = v96;
  *(&v103 + 9) = *v94;
  HIDWORD(v103) = *&v94[3];
  LOBYTE(v102) = v93;
  BYTE1(v102) = v23;
  *(&v102 + 1) = v27;
  *&v103 = v28;
  BYTE8(v103) = v92;
  *&v104 = v88;
  *(&v104 + 1) = v90;
  v66 = v102;
  *(a2 + 32) = v101;
  *(a2 + 48) = v66;
  v67 = v100;
  *a2 = v99;
  *(a2 + 16) = v67;
  v68 = v104;
  *(a2 + 64) = v103;
  *(a2 + 80) = v68;
  v105[0] = v6;
  v105[1] = v91;
  v106 = v89;
  *&v107[3] = *&v97[3];
  *v107 = *v97;
  v108 = v63;
  v109 = v65;
  v110 = v10;
  v111 = v93;
  v112 = v23;
  v114 = v96;
  v113 = v95;
  v115 = v27;
  v116 = v28;
  v117 = v92;
  *&v118[3] = *&v94[3];
  *v118 = *v94;
  v119 = v88;
  v120 = v90;
  sub_1D5F14544(&v99, v98);
  sub_1D5F1457C(v105);
}

uint64_t PuzzleProgress.encode(to:)(void *a1)
{
  sub_1D5F14438(0, &qword_1EC880EA0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v19 = v1[1];
  v18 = *(v1 + 16);
  v10 = v1[3];
  v11 = v1[4];
  v24 = v1[5];
  v25 = v9;
  v29 = *(v1 + 48);
  v23 = *(v1 + 49);
  v12 = v1[7];
  v21 = v1[8];
  v22 = v12;
  v20 = *(v1 + 72);
  v13 = v1[11];
  v17[1] = v1[10];
  v17[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F13DE4(v10, v11);
  sub_1D5F13D90();
  sub_1D7264B5C();
  v27 = v10;
  v28 = v11;
  v30 = 0;
  sub_1D5F13DF8();
  v14 = v26;
  sub_1D72643BC();
  if (v14)
  {
    sub_1D5B952E4(v27, v28);
  }

  else
  {
    v15 = v23;
    sub_1D5B952E4(v27, v28);
    LOBYTE(v27) = 1;
    sub_1D726442C();
    LOBYTE(v27) = 2;
    sub_1D72643AC();
    LOBYTE(v27) = v15;
    v30 = 3;
    sub_1D5F13E4C();
    sub_1D72643BC();
    LOBYTE(v27) = 4;
    sub_1D726437C();
    LOBYTE(v27) = 5;
    sub_1D726440C();
    LOBYTE(v27) = 6;
    sub_1D726442C();
    LOBYTE(v27) = 7;
    sub_1D726440C();
    LOBYTE(v27) = 8;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5F13D90()
{
  result = qword_1EC880EA8;
  if (!qword_1EC880EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EA8);
  }

  return result;
}

uint64_t sub_1D5F13DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D5E3E824(a1, a2);
  }

  return a1;
}

unint64_t sub_1D5F13DF8()
{
  result = qword_1EC880EB0;
  if (!qword_1EC880EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EB0);
  }

  return result;
}

unint64_t sub_1D5F13E4C()
{
  result = qword_1EC880EB8;
  if (!qword_1EC880EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EB8);
  }

  return result;
}

uint64_t PuzzleProgress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F14438(0, &qword_1EC880EC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F13D90();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  sub_1D5F1449C();
  sub_1D726427C();
  v12 = v42;
  v11 = v43;
  LOBYTE(v42) = 1;
  v35 = sub_1D72642FC();
  LOBYTE(v42) = 2;
  v34 = sub_1D726425C();
  v63 = v13 & 1;
  LOBYTE(v36) = 3;
  sub_1D5F144F0();
  sub_1D726427C();
  v33 = v42;
  LOBYTE(v42) = 4;
  v32 = sub_1D726422C();
  v65 = v14;
  LOBYTE(v42) = 5;
  v31 = sub_1D72642CC();
  LOBYTE(v42) = 6;
  v30 = sub_1D72642FC();
  LOBYTE(v42) = 7;
  v27 = sub_1D72642CC();
  v59 = 8;
  v29 = sub_1D726422C();
  v28 = v15;
  v31 &= 1u;
  v27 &= 1u;
  v16 = v27;
  (*(v7 + 8))(v10, v6);
  *&v36 = v35;
  *(&v36 + 1) = v30;
  LOBYTE(v37) = v16;
  *(&v37 + 1) = v64[0];
  DWORD1(v37) = *(v64 + 3);
  *(&v37 + 1) = v12;
  *&v38 = v11;
  *(&v38 + 1) = v34;
  v26 = v63;
  LOBYTE(v39) = v63;
  v17 = v33;
  BYTE1(v39) = v33;
  *(&v39 + 2) = v61;
  WORD3(v39) = v62;
  v18 = v32;
  v19 = v65;
  *(&v39 + 1) = v32;
  *&v40 = v65;
  BYTE8(v40) = v31;
  *(&v40 + 9) = *v60;
  HIDWORD(v40) = *&v60[3];
  v20 = v28;
  *&v41 = v29;
  *(&v41 + 1) = v28;
  v21 = v39;
  a2[2] = v38;
  a2[3] = v21;
  v22 = v37;
  *a2 = v36;
  a2[1] = v22;
  v23 = v41;
  a2[4] = v40;
  a2[5] = v23;
  sub_1D5F14544(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v35;
  v43 = v30;
  v44 = v27;
  *v45 = v64[0];
  *&v45[3] = *(v64 + 3);
  v46 = v12;
  v47 = v11;
  v48 = v34;
  v49 = v26;
  v50 = v17;
  v51 = v61;
  v52 = v62;
  v53 = v18;
  v54 = v19;
  v55 = v31;
  *&v56[3] = *&v60[3];
  *v56 = *v60;
  v57 = v29;
  v58 = v20;
  return sub_1D5F1457C(&v42);
}

void sub_1D5F14438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F13D90();
    v7 = a3(a1, &type metadata for PuzzleProgress.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F1449C()
{
  result = qword_1EC880EC8;
  if (!qword_1EC880EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EC8);
  }

  return result;
}

unint64_t sub_1D5F144F0()
{
  result = qword_1EC880ED0;
  if (!qword_1EC880ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880ED0);
  }

  return result;
}

uint64_t PuzzleProgress.debugDescription.getter()
{
  v1 = *(v0 + 88);
  if (*(v0 + 64))
  {
    v19 = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0xE400000000000000;
    v19 = 1819047278;
  }

  v22 = *(v0 + 16);
  v3 = *(v0 + 49);
  v20 = *(v0 + 72);
  v4 = *(v0 + 80);
  if (*(v0 + 48))
  {

    v5 = 0xE400000000000000;
    v6 = 1819047278;
  }

  else
  {

    v6 = sub_1D72644BC();
    v5 = v7;
  }

  if (v1)
  {
    v8 = v4;
  }

  else
  {
    v1 = 0xE400000000000000;
    v8 = 1819047278;
  }

  v21 = v8;
  v9 = 0x746C7561666564;
  if (v3)
  {
    v9 = 0x74636566726570;
  }

  if (v3 == 2)
  {
    v10 = 1819047278;
  }

  else
  {
    v10 = v9;
  }

  if (v3 == 2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x73736572676F7270, 0xEE003D6C6576654CLL);
  v12 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v12);

  MEMORY[0x1DA6F9910](0x3D65726F637320, 0xE700000000000000);
  MEMORY[0x1DA6F9910](v6, v5);

  MEMORY[0x1DA6F9910](0x795465726F637320, 0xEB000000003D6570);
  MEMORY[0x1DA6F9910](v10, v11);

  MEMORY[0x1DA6F9910](0x3D44496B6E617220, 0xE800000000000000);
  MEMORY[0x1DA6F9910](v19, v2);

  MEMORY[0x1DA6F9910](0x7665526465737520, 0xEC0000003D6C6165);
  if (v20)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v20)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v13, v14);

  MEMORY[0x1DA6F9910](0x72754479616C7020, 0xEE003D6E6F697461);
  v15 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v15);

  MEMORY[0x1DA6F9910](0x65766C6F53736920, 0xEA00000000003D64);
  if (v22)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v22)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v16, v17);

  MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C2240);
  MEMORY[0x1DA6F9910](v21, v1);

  return 0;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F149B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1D5F14A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1D5F14BB4()
{
  result = qword_1EC880EE8;
  if (!qword_1EC880EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EE8);
  }

  return result;
}

unint64_t sub_1D5F14C0C()
{
  result = qword_1EC880EF0;
  if (!qword_1EC880EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EF0);
  }

  return result;
}

unint64_t sub_1D5F14C64()
{
  result = qword_1EC880EF8;
  if (!qword_1EC880EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880EF8);
  }

  return result;
}

uint64_t sub_1D5F14CB8()
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

uint64_t sub_1D5F14D04(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (v4)
  {
    swift_unknownObjectRetain();
    if (sub_1D5FE2C40())
    {
      v5 = (a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
      v6 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
      v7 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
      __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v6);
      v8 = [v4 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = (*(*(v7 + 8) + 8))(v9, v11, v6);

      if ((v12 & 1) == 0)
      {
        v13 = v5[3];
        v14 = v5[4];
        __swift_project_boxed_opaque_existential_1(v5, v13);
        v15 = [v4 identifier];
        v51 = sub_1D726207C();
        v17 = v16;

        v18 = [objc_msgSend(v4 puzzleType)];
        swift_unknownObjectRelease();
        v19 = sub_1D726207C();
        v21 = v20;

        (*(v14 + 24))(v51, v17, v19, v21, v13, v14);

        v22 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager + 24);
        v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager + 32);
        __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleNotificationAutoEnableManager), v22);
        (*(v23 + 8))(v22, v23);
      }

      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725C42C();
      __swift_project_value_buffer(v24, qword_1EDFFCFA8);
      swift_unknownObjectRetain();
      sub_1D5F14544(a1, &v53);
      v25 = sub_1D725C3FC();
      v26 = sub_1D7262EDC();
      swift_unknownObjectRelease();
      sub_1D5F1457C(a1);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v59[0] = v52;
        *v27 = 136315394;
        v28 = [v4 identifier];
        v29 = sub_1D726207C();
        v31 = v30;

        v32 = sub_1D5BC5100(v29, v31, v59);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = a1[3];
        v55 = a1[2];
        v56 = v33;
        v34 = a1[5];
        v57 = a1[4];
        v58 = v34;
        v35 = a1[1];
        v53 = *a1;
        v54 = v35;
        v36 = PuzzleProgress.debugDescription.getter();
        v38 = sub_1D5BC5100(v36, v37, v59);

        *(v27 + 14) = v38;
        _os_log_impl(&dword_1D5B42000, v25, v26, "Submitting puzzle progress for the puzzle=%s progress=[%s]", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6FD500](v52, -1, -1);
        MEMORY[0x1DA6FD500](v27, -1, -1);
      }

      v39 = v5[3];
      v40 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v39);
      v41 = a1[3];
      v55 = a1[2];
      v56 = v41;
      v42 = a1[5];
      v57 = a1[4];
      v58 = v42;
      v43 = a1[1];
      v53 = *a1;
      v54 = v43;
      (*(v40 + 32))(&v53, v4, v39, v40);
      swift_unknownObjectRelease();
      return sub_1D5FE2B70(a2, a1);
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = result + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v45 + 8);
      ObjectType = swift_getObjectType();
      v48 = a1[3];
      v55 = a1[2];
      v56 = v48;
      v49 = a1[5];
      v57 = a1[4];
      v58 = v49;
      v50 = a1[1];
      v53 = *a1;
      v54 = v50;
      (*(v46 + 40))(&v53, ObjectType, v46);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D5F151B4(void *a1)
{
  v2 = [a1 body];
  v3 = sub_1D7261D3C();

  v4 = sub_1D71BC9D8(v3);

  if (v4)
  {
    if (*(v4 + 16) && (v5 = sub_1D5B69D90(0x7461745379616C70, 0xE900000000000065), (v6 & 1) != 0))
    {
      sub_1D5B76B10(*(v4 + 56) + 32 * v5, v34);

      sub_1D5BB0DB0();
      if (swift_dynamicCast())
      {
        sub_1D5F12D18(v33, &v28);
        if (*v32 != 1)
        {
          v35[0] = v28;
          v35[1] = v29;
          v35[2] = v30;
          v35[3] = v31;
          v37 = *&v32[8];
          v36 = *v32;
          v38 = *&v32[24];
          if ((*(&v28 + 1) & 0x8000000000000000) == 0)
          {
            if (qword_1EDF3B838 != -1)
            {
              swift_once();
            }

            v7 = sub_1D725C42C();
            __swift_project_value_buffer(v7, qword_1EDFFCFA8);
            v27[2] = v30;
            v27[3] = v31;
            v27[4] = *v32;
            v27[5] = *&v32[16];
            v27[0] = v28;
            v27[1] = v29;
            sub_1D5F14544(v27, v26);
            v8 = sub_1D725C3FC();
            v9 = sub_1D7262EDC();
            sub_1D5F15694(&v28, sub_1D5F15644);
            if (os_log_type_enabled(v8, v9))
            {
              v10 = swift_slowAlloc();
              v11 = swift_slowAlloc();
              v26[0] = v11;
              *v10 = 136315138;
              v12 = PuzzleProgress.debugDescription.getter();
              v14 = sub_1D5BC5100(v12, v13, v26);

              *(v10 + 4) = v14;
              _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleProgressMessageHandler received progress=%s", v10, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v11);
              MEMORY[0x1DA6FD500](v11, -1, -1);
              MEMORY[0x1DA6FD500](v10, -1, -1);
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              sub_1D5F14D04(v35, Strong);
              swift_unknownObjectRelease();
            }

            sub_1D5F15694(&v28, sub_1D5F15644);
            return;
          }

          sub_1D5F15694(&v28, sub_1D5F15644);
        }
      }
    }

    else
    {
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725C42C();
  __swift_project_value_buffer(v16, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v17 = sub_1D725C3FC();
  v18 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v28 = v20;
    *v19 = 136315138;
    v21 = [a1 body];
    sub_1D7261D3C();

    v22 = sub_1D7261D4C();
    v24 = v23;

    v25 = sub_1D5BC5100(v22, v24, &v28);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleProgressMessageHandler received invalid message %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1DA6FD500](v20, -1, -1);
    MEMORY[0x1DA6FD500](v19, -1, -1);
  }
}

void sub_1D5F15644()
{
  if (!qword_1EC880F08)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880F08);
    }
  }
}

uint64_t sub_1D5F15694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F156F4()
{
  if (!qword_1EDF04360)
  {
    sub_1D5F1574C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04360);
    }
  }
}

unint64_t sub_1D5F1574C()
{
  result = qword_1EDF1A650;
  if (!qword_1EDF1A650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A650);
  }

  return result;
}

void sub_1D5F15878()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView];
  [v2 setDelegate_];
  [v2 setDataSource_];
  [v2 setAlwaysBounceVertical_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTintColor_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTableFooterView_];

  type metadata accessor for DebugFormatTableViewCell();
  sub_1D7262DAC();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 navigationItem];
    v8 = sub_1D726203C();
    [v7 setTitle_];

    v9 = [v1 navigationItem];
    sub_1D5B5D358(0, &qword_1EDF194C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D72816C0;
    type metadata accessor for DebugFormatBarButtonItem();
    v11 = sub_1D726203C();
    v12 = [objc_opt_self() systemImageNamed_];

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v12 style:0 target:v1 action:sel_doDismiss];
    *(v10 + 32) = v13;
    sub_1D5B5A498(0, &qword_1EDF04590);
    v14 = sub_1D726265C();

    [v9 setRightBarButtonItems_];

    sub_1D5F15BAC(0);
    v15 = sub_1D726265C();

    [v1 setToolbarItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F15BAC(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v2 startAnimating];
    type metadata accessor for DebugFormatBarButtonItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
    sub_1D5B5D358(0, &qword_1EDF194C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D72816D0;
    *(v5 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v5 + 40) = v4;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v21[3] = ObjectType;
    v21[0] = v1;
    v7 = v1;
    v8 = sub_1D726203C();
    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v21, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = MEMORY[0x1EEE9AC00](v9, v9);
      v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_1D72646AC();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v14 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v15 = swift_getObjCClassFromMetadata();
    v16 = objc_allocWithZone(v15);
    v17 = [v16 initWithTitle:v8 style:0 target:v14 action:{sel_doUploadWithSender_, v21[0]}];

    swift_unknownObjectRelease();
    v18 = objc_opt_self();
    v2 = v17;
    v19 = [v18 systemBlueColor];
    [v2 setTintColor_];

    sub_1D5B5D358(0, &qword_1EDF194C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D72816D0;
    *(v5 + 32) = [objc_allocWithZone(v15) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v5 + 40) = v2;
  }

  return v5;
}

uint64_t sub_1D5F16148(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_uploadService);
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_entries);
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatUploadService();
  sub_1D5F1829C();
  sub_1D725964C();
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *(v3 + 24) = v1;
  *(v3 + 32) = v2;

  v4 = sub_1D725BDAC();

  return v4;
}

__n128 sub_1D5F16268(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D67B85E0();
    swift_unknownObjectRelease();
  }

  v4[0] = v1;
  v5 = v3;
  sub_1D5F162E8(v4);
  return result;
}

void sub_1D5F162E8(char *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections;
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections);
  v7 = *(v6 + 16);
  if (v7)
  {
    v65 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections;
    v86 = MEMORY[0x1E69E7CC0];
    v8 = v6;

    sub_1D6997FB4(0, v7, 0);
    v9 = 0;
    v10 = v86;
    v67 = v8;
    v68 = v8 + 32;
    v75 = v4;
    v76 = v3;
    v11 = v8;
    v70 = v2;
    v69 = v7;
    while (v9 < *(v11 + 16))
    {
      v73 = v9;
      v74 = v10;
      v12 = (v68 + 24 * v9);
      v71 = v12[1];
      v72 = *v12;
      v13 = v12[2];
      v14 = *(v13 + 16);
      if (v14)
      {
        v85 = MEMORY[0x1E69E7CC0];

        sub_1D6997F84(0, v14, 0);
        v15 = v85;
        v16 = v13 + 32;
        while (1)
        {
          sub_1D5F17D1C(v16, v87);
          sub_1D5F17D1C(v87, v77);
          if (v81)
          {
            break;
          }

          sub_1D5F17D78(v87);
          v18 = 0;
          v17 = v77[0];
          v19 = v77[1];
          v82 = v78;
          v83 = v79;
          v84 = v80;
LABEL_26:
          v85 = v15;
          v43 = *(v15 + 16);
          v42 = *(v15 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1D6997F84((v42 > 1), v43 + 1, 1);
            v15 = v85;
          }

          *(v15 + 16) = v43 + 1;
          v44 = v15 + (v43 << 6);
          *(v44 + 32) = v17;
          *(v44 + 40) = v19;
          v45 = v82;
          v46 = v83;
          *(v44 + 80) = v84;
          *(v44 + 48) = v45;
          *(v44 + 64) = v46;
          *(v44 + 88) = v18;
          v16 += 64;
          --v14;
          v3 = v76;
          if (!v14)
          {

            v11 = v67;
            goto LABEL_31;
          }
        }

        v17 = v77[0];
        if (v81 != 1)
        {
        }

        v20 = *(v17 + 16);
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = *(v3 + 16);

        if (v23 && (v24 = sub_1D5B69D90(v22, v21), (v25 & 1) != 0))
        {
          v26 = (*(v3 + 56) + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          sub_1D5F18250(*v26, v28);
          v19 = sub_1D69906D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v30 = *(v19 + 2);
          v29 = *(v19 + 3);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            v47 = sub_1D69906D0((v29 > 1), v30 + 1, 1, v19);
            v31 = v30 + 1;
            v19 = v47;
          }

          *(v19 + 2) = v31;
          v32 = &v19[16 * v30];
          *(v32 + 4) = v27;
          *(v32 + 5) = v28;
          v4 = v75;
          if (!*(v75 + 16))
          {
LABEL_16:

            goto LABEL_24;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
          if (!*(v4 + 16))
          {
            goto LABEL_16;
          }
        }

        v33 = sub_1D5B69D90(v22, v21);
        v35 = v34;

        if (v35)
        {
          v36 = (*(v4 + 56) + 16 * v33);
          v37 = *v36;
          v38 = v36[1];
          sub_1D5F18250(*v36, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1D69906D0(0, *(v19 + 2) + 1, 1, v19);
          }

          v40 = *(v19 + 2);
          v39 = *(v19 + 3);
          if (v40 >= v39 >> 1)
          {
            v19 = sub_1D69906D0((v39 > 1), v40 + 1, 1, v19);
          }

          sub_1D5F17D78(v87);
          *(v19 + 2) = v40 + 1;
          v41 = &v19[16 * v40];
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
        }

        else
        {
LABEL_24:
          sub_1D5F17D78(v87);
        }

        v18 = 2;
        goto LABEL_26;
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v10 = v74;
      v86 = v74;
      v49 = *(v74 + 16);
      v48 = *(v74 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D6997FB4((v48 > 1), v49 + 1, 1);
        v10 = v86;
      }

      v9 = v73 + 1;
      *(v10 + 16) = v49 + 1;
      v50 = (v10 + 24 * v49);
      v50[4] = v72;
      v50[5] = v71;
      v50[6] = v15;
      v2 = v70;
      if (v73 + 1 == v69)
      {

        v5 = v65;
        v1 = v66;
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_36:
  *(v1 + v5) = v10;
  v51 = v1;

  [*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView) reloadData];
  if (*(v3 + 16) <= *(v4 + 16))
  {
    v52 = *(v4 + 16);
  }

  else
  {
    v52 = *(v3 + 16);
  }

  v87[0] = v2;
  v88[0] = v4;
  v88[1] = v3;
  sub_1D7247118();
  v54 = __OFSUB__(v52, v53);
  v55 = v52 - v53;
  if (v54)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v87[0] = v2;
  v88[0] = v4;
  v88[1] = v3;
  sub_1D7247118();
  v57 = v56;
  v58 = sub_1D5F177B4(v56, v55);
  v60 = v59;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  *(v62 + 24) = v61;
  v87[0] = 0;
  strcpy(v88, "Update Result");
  HIWORD(v88[1]) = -4864;
  v88[2] = v58;
  v88[3] = v60;
  v88[4] = sub_1D5F18248;
  v88[5] = v62;
  v88[6] = 0;
  v88[7] = 0;
  v63 = *(v51 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor);
  v64 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v63 + v64))
  {

    sub_1D6AD3108(v87);
    sub_1D5F181F4(v87);
  }

  else
  {
    sub_1D5F181F4(v87);
  }
}

uint64_t sub_1D5F16868()
{
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D726491C();

  LOBYTE(v4[0]) = 0;
  v4[1] = 0x726F727245;
  v4[2] = 0xE500000000000000;
  v4[3] = 0;
  v4[4] = 0xE000000000000000;
  v5 = 0u;
  v6 = 0u;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor);
  v2 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    return sub_1D5F181F4(v4);
  }

  sub_1D6AD3108(v4);
  sub_1D5F181F4(v4);
}

void sub_1D5F1697C(void *a1)
{
  sub_1D5F15BAC(0);
  sub_1D5B5A498(0, &qword_1EDF04590);
  v2 = sub_1D726265C();

  [a1 setToolbarItems_];

  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      [v5 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D5F16B30()
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = *(v2 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (result >= *(v3 + 16))
  {
LABEL_54:
    __break(1u);
    return result;
  }

  sub_1D5F17D1C(v3 + (result << 6) + 32, v71);

  sub_1D5F17D1C(v71, v66);
  if (v70)
  {
    if (v70 == 1)
    {
      type metadata accessor for DebugFormatTableViewCell();
      v4 = sub_1D7262D8C();
      v5 = [v4 textLabel];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1D5DF5E68();
        [v6 setAttributedText_];
      }

      v8 = [v4 textLabel];
      if (v8)
      {
        v9 = v8;
        [v8 setNumberOfLines_];
      }

      v10 = [v4 detailTextLabel];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D5DF6328();
        [v11 setAttributedText_];
      }

      v13 = [v4 detailTextLabel];
      if (v13)
      {
        v14 = v13;
        [v13 setNumberOfLines_];
      }
    }

    else
    {
      v18 = v66[1];
      type metadata accessor for DebugFormatTableViewCell();
      v4 = sub_1D7262D8C();
      v19 = [v4 textLabel];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D5DF5E68();
        [v20 setAttributedText_];
      }

      v22 = [v4 textLabel];
      if (v22)
      {
        v23 = v22;
        [v22 setNumberOfLines_];
      }

      v24 = [v4 detailTextLabel];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1D5DF6328();
        [v25 setAttributedText_];
      }

      v27 = [v4 detailTextLabel];
      if (v27)
      {
        v28 = v27;
        [v27 setNumberOfLines_];
      }

      v29 = *(v18 + 16);
      v30 = v29 + 1;
      v31 = 40;
      while (--v30)
      {
        v32 = *(v18 + v31);
        v31 += 16;
        if (v32 < 0)
        {

          v33 = [objc_opt_self() systemRedColor];
          v34 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
          v35 = *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
          *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = v33;
          v36 = v33;

          v37 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
          [*&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
          [*&v4[v37] setHidden_];

          [v4 setAccessoryType_];
          goto LABEL_42;
        }
      }

      v38 = v29 + 1;
      v39 = 40;
      while (--v38)
      {
        v40 = *(v18 + v39);
        v39 += 16;
        if ((v40 & 0x8000000000000000) == 0)
        {

          v41 = [objc_opt_self() systemGreenColor];
          v42 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
          v43 = *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
          *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = v41;
          v44 = v41;

          v45 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
          [*&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
          [*&v4[v45] setHidden_];

          goto LABEL_41;
        }
      }
    }

    v50 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
    v51 = *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
    *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = 0;

    v52 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
    [*&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
    [*&v4[v52] setHidden_];
LABEL_41:
    [v4 setAccessoryType_];
LABEL_42:
  }

  else
  {
    v64[0] = v67;
    v64[1] = v68;
    v65 = v69;
    type metadata accessor for DebugFormatTableViewCell();
    v4 = sub_1D7262D8C();
    v15 = [v4 textLabel];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D726203C();

      [v16 setText_];
    }

    else
    {
    }

    v46 = [v4 textLabel];
    if (v46)
    {
      v47 = v46;
      [v46 setNumberOfLines_];
    }

    v48 = [v4 detailTextLabel];
    if (v48)
    {
      v49 = v48;
      sub_1D5F17E90(v64, v62);
      if (v63)
      {
        __swift_project_boxed_opaque_existential_1(v62, v63);
        sub_1D72644BC();
        __swift_destroy_boxed_opaque_existential_1(v62);
      }

      else
      {
        sub_1D5F17DCC(v62);
      }

      v53 = sub_1D726203C();

      [v49 setText_];
    }

    v54 = [v4 detailTextLabel];
    if (v54)
    {
      v55 = v54;
      v56 = [objc_opt_self() secondaryLabelColor];
      [v55 setTextColor_];
    }

    v57 = [v4 detailTextLabel];
    if (v57)
    {
      v58 = v57;
      [v57 setNumberOfLines_];
    }

    v59 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor;
    v60 = *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor];
    *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_indicatorColor] = 0;

    v61 = OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView;
    [*&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatTableViewCell_circleView] setBackgroundColor_];
    [*&v4[v61] setHidden_];
    [v4 setAccessoryType_];

    sub_1D5F17DCC(v64);
  }

  sub_1D5F17D78(v71);
  return v4;
}

unint64_t sub_1D5F17428(void *a1)
{
  v2 = v1;
  sub_1D7262D6C();
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections];
  if (result >= *(v5 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v5 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *(v6 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1D5F17D1C(v6 + (result << 6) + 32, v21);

  sub_1D5F17D1C(v21, v18);
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1D5F17D78(v21);
      v7 = v18;
    }

    else
    {
      v8 = v18[1];

      type metadata accessor for DebugFormatInspectorPaneViewController();
      v9 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor];
      sub_1D5B5D358(0, &qword_1EC88ECE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;

      v11 = sub_1D6F4FDF4(v8);

      *(inited + 32) = v11;
      v12 = sub_1D6A6ED08(v9, inited, 0, 0);
      [v12 setModalPresentationStyle_];
      v13 = [v12 popoverPresentationController];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D7258D4C();
        v16 = [a1 cellForRowAtIndexPath_];

        [v14 setSourceView_];
      }

      v17 = [v12 popoverPresentationController];

      if (v17)
      {
        [v17 setPermittedArrowDirections_];
      }

      [v2 presentViewController:v12 animated:1 completion:0];

      v7 = v21;
    }

    return sub_1D5F17D78(v7);
  }

  else
  {
    sub_1D5F17D78(v21);

    return sub_1D5F17DCC(&v19);
  }
}

uint64_t sub_1D5F177B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x646564616F6C7055, 0xE900000000000020);
      v2 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v2);

      MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73C22F0);
    }

    else
    {
      sub_1D7263D4C();

      strcpy(v8, "Upload failed ");
      HIBYTE(v8[1]) = -18;
    }

    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    v5 = 0x7364616F6C707520;
    v4 = 0xE800000000000000;
  }

  else
  {
    sub_1D7263D4C();

    strcpy(v8, "Uploaded ");
    WORD1(v8[1]) = 0;
    HIDWORD(v8[1]) = -385875968;
    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    v4 = 0x80000001D73C2310;
    v5 = 0xD000000000000013;
  }

  MEMORY[0x1DA6F9910](v5, v4);
  return v8[0];
}

void sub_1D5F179BC(uint64_t a1)
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1D5F17A2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_uploadService;
  type metadata accessor for DebugFormatUploadService();
  swift_allocObject();
  *&v2[v7] = sub_1D67D7E10();
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_tableView;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_editor] = a1;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_entries] = a2;
  swift_retain_n();

  v43[5] = sub_1D69F4DA8();
  v43[6] = v9;
  v44[0] = v10;
  LOBYTE(v43[0]) = 0;

  v44[1] = sub_1D69F4F5C(v11, v43);
  v44[2] = v12;
  v44[3] = v13;
  LOBYTE(v43[0]) = 1;

  v44[4] = sub_1D69F4F5C(v14, v43);
  v44[5] = v15;
  v44[6] = v16;
  LOBYTE(v43[0]) = 2;

  v44[7] = sub_1D69F4F5C(v17, v43);
  v44[8] = v18;
  v44[9] = v19;
  LOBYTE(v43[0]) = 4;

  v44[10] = sub_1D69F4F5C(v20, v43);
  v44[11] = v21;
  v44[12] = v22;
  LOBYTE(v43[0]) = 6;

  v44[13] = sub_1D69F4F5C(v23, v43);
  v44[14] = v24;
  v44[15] = v25;
  LOBYTE(v43[0]) = 3;
  result = sub_1D69F4F5C(a2, v43);
  v27 = 0;
  v44[16] = result;
  v44[17] = v28;
  v44[18] = v29;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v27 <= 7)
  {
    v31 = 7;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 + 1;
  v33 = &v44[3 * v27];
  while (1)
  {
    if (v27 == 7)
    {
      swift_arrayDestroy();
      *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatUploadConfirmViewController_sections] = v30;
      v42.receiver = v3;
      v42.super_class = ObjectType;
      return objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
    }

    if (v32 == ++v27)
    {
      break;
    }

    v34 = v33 + 3;
    v35 = *v33;
    v36 = *(*v33 + 16);
    v33 += 3;
    if (v36)
    {
      v38 = *(v34 - 5);
      v37 = *(v34 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v30;
      if ((result & 1) == 0)
      {
        result = sub_1D6997FB4(0, *(v30 + 16) + 1, 1);
        v30 = v43[0];
      }

      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1D6997FB4((v39 > 1), v40 + 1, 1);
        v30 = v43[0];
      }

      *(v30 + 16) = v40 + 1;
      v41 = (v30 + 24 * v40);
      v41[4] = v38;
      v41[5] = v37;
      v41[6] = v35;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F17DCC(uint64_t a1)
{
  sub_1D5F17E28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F17E28()
{
  if (!qword_1EC880F40)
  {
    sub_1D5B49474(255, &qword_1EC884160);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880F40);
    }
  }
}

uint64_t sub_1D5F17E90(uint64_t a1, uint64_t a2)
{
  sub_1D5F17E28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5F17EF4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v2 startAnimating];
  type metadata accessor for DebugFormatBarButtonItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];
  sub_1D5B5D358(0, &qword_1EDF194C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816D0;
  *(v5 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v5 + 40) = v4;

  sub_1D5B5A498(0, &qword_1EDF04590);
  v6 = sub_1D726265C();

  [v1 setToolbarItems_];

  v7 = [v1 navigationController];
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = [v7 view];

  if (v10)
  {
    [v10 setUserInteractionEnabled_];

LABEL_4:
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v11 = sub_1D726308C();
    sub_1D725BAAC();

    v12 = sub_1D726308C();
    sub_1D725BADC();

    v13 = sub_1D726308C();
    sub_1D725BB3C();

    return;
  }

  __break(1u);
}

id sub_1D5F18250(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {

    return (a2 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

unint64_t sub_1D5F1829C()
{
  result = qword_1EC880F50;
  if (!qword_1EC880F50)
  {
    type metadata accessor for DebugFormatUploadService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880F50);
  }

  return result;
}

uint64_t sub_1D5F1834C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5F18394(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t FeedGroupConfigDataKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F18480()
{
  result = qword_1EC880FC0;
  if (!qword_1EC880FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880FC0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatUploadRemotePackage()
{
  result = qword_1EC880FC8;
  if (!qword_1EC880FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F18530()
{
  sub_1D5F185A4();
  if (v0 <= 0x3F)
  {
    sub_1D5F18638();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5F185A4()
{
  if (!qword_1EC880FD8)
  {
    type metadata accessor for DebugNewsroomLayoutData();
    sub_1D5F186CC(&qword_1EC880FE0, type metadata accessor for DebugNewsroomLayoutData);
    v0 = type metadata accessor for DebugNewsroomContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880FD8);
    }
  }
}

void sub_1D5F18638()
{
  if (!qword_1EC880FE8)
  {
    type metadata accessor for DebugNewsroomThemeData();
    sub_1D5F186CC(qword_1EC880FF0, type metadata accessor for DebugNewsroomThemeData);
    v0 = type metadata accessor for DebugNewsroomContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880FE8);
    }
  }
}

uint64_t sub_1D5F186CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5F18714()
{
  sub_1D5F18638();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F185A4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatUploadRemotePackage();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F188A4(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5F18908(v12, v4, sub_1D5F18638);
    v13 = v4[16];
    v14 = v4;
    v15 = sub_1D5F18638;
  }

  else
  {
    sub_1D5F18908(v12, v8, sub_1D5F185A4);
    v13 = v8[88];
    v14 = v8;
    v15 = sub_1D5F185A4;
  }

  sub_1D5F18970(v14, v15);
  return v13 & 1;
}

uint64_t sub_1D5F188A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatUploadRemotePackage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F18908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F18970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 112), a1);
  *(v4 + *(*v4 + 120)) = a2;
  return v4;
}

uint64_t static FeedGroupKnobsRuleValue.== infix(_:_:)()
{
  if (sub_1D7261FBC())
  {
    type metadata accessor for FeedGroupKnobsRuleValue.Selector();
    swift_getWitnessTable();
    v0 = sub_1D726280C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t FeedGroupKnobsRuleValue.value(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 120));
  v17 = v4;
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    return (*(*(v5 - 8) + 16))(a1, v1 + *(*v1 + 112), v5);
  }

  v10 = type metadata accessor for FeedContext();
  v12[1] = v12;
  v13 = v4;
  MEMORY[0x1EEE9AC00](v10, v11);

  swift_getWitnessTable();
  sub_1D726249C();
}

uint64_t FeedGroupKnobsRuleValue.init(from:)(void *a1)
{
  v3 = v1;
  v33 = *v3;
  v5 = v33[10];
  v6 = v33[11];
  v7 = v33[12];
  v8 = v33[13];
  v44 = v5;
  v45 = v6;
  v36 = v8;
  v37 = v7;
  v46 = v7;
  v47 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D726435C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v28 - v11;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v19 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D7264AEC();
  if (v2)
  {
    v34 = v2;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D7264B0C();
    LOBYTE(v44) = 0;
    v21 = v5;
    sub_1D726431C();
    v44 = v5;
    v45 = v6;
    v46 = v37;
    v47 = v36;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector();
    sub_1D72627FC();
    LOBYTE(v44) = 1;
    v48 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D726427C();
    v26 = v40;
    if (!v40)
    {
      v26 = sub_1D726275C();
    }

    v25 = v39;
    v27 = v32;
    (*(v29 + 8))(v38, v30);
    (*(v31 + 32))(v3 + *(*v3 + 112), v27, v21);
    *(v3 + *(*v3 + 120)) = v26;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v44, v47);
    sub_1D726472C();
    v20 = v5;
    v23 = v31;
    (*(v31 + 16))(v3 + *(*v3 + 112), v18, v20);
    v40 = v20;
    v41 = v6;
    v42 = v37;
    v43 = v36;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector();
    v24 = sub_1D726275C();
    (*(v23 + 8))(v18, v20);
    *(v3 + *(*v3 + 120)) = v24;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v25 = v39;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v3;
}

uint64_t sub_1D5F19518()
{
  v1 = v0;
  v107 = *v0;
  *&v106 = v107;
  v2 = *(v107 + 80);
  v3 = sub_1D726393C();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v98 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v97 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v94 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v82 - v19;
  v108 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v86 = &v82 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v85 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v104 = &v82 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v84 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v102 = &v82 - v37;
  sub_1D72644CC();
  v38 = *(v4 + 72);
  swift_allocObject();
  v39 = sub_1D726270C();
  v41 = v40;
  v42 = *(*v1 + 120);
  v105 = v5;
  v43 = v5 + 16;
  v44 = *(v5 + 16);
  v90 = v42;
  v44(v40, &v1[v42], v3);
  v88 = *(*v1 + 112);
  v44(v41 + v38, &v1[v88], v3);
  v91 = *(*v1 + 128);
  v44(v41 + 2 * v38, &v1[v91], v3);
  v95 = *(*v1 + 136);
  v89 = v44;
  v44(v41 + 3 * v38, &v1[v95], v3);
  *&v112 = sub_1D5BFCB60(v39);
  v109 = v2;
  v107 = *(v107 + 88);
  v110 = v107;
  v106 = *(v106 + 96);
  v111 = v106;
  sub_1D72627FC();
  swift_getWitnessTable();
  v45 = v103;
  v46 = sub_1D726242C();
  v96 = v45;

  *&v112 = v46;
  v47 = v2;
  sub_1D72627FC();
  swift_getWitnessTable();
  v48 = v99;
  sub_1D7262C9C();
  v49 = v108 + 48;
  v50 = *(v108 + 48);
  v51 = v48;
  if (v50(v48, 1, v47) == 1)
  {
    (*(v105 + 8))(v48, v3);

    *&v52 = v47;
    *(&v52 + 1) = v107;
    v113 = v106;
    v112 = v52;
    type metadata accessor for LegacyFeedGroupKnobsRuleValue.Errors();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v54 = v47;
    v103 = v50;
    v101 = v49;
    v55 = v108 + 32;
    v56 = v51;
    v57 = *(v108 + 32);
    v57(v102, v56, v47);

    *&v112 = v47;
    *(&v112 + 1) = v107;
    v113 = v106;
    v58 = type metadata accessor for FeedGroupKnobsRuleValue.Selector();
    v114 = sub_1D7261CFC();
    v59 = &v1[v88];
    v60 = v100;
    v83 = v3;
    v88 = v43;
    v61 = v89;
    v89(v100, v59, v3);
    v62 = v103(v60, 1, v54);
    v99 = v58;
    v93 = v55;
    v92 = v57;
    if (v62 == 1)
    {
      v63 = v83;
      (*(v105 + 8))(v100, v83);
      v64 = v94;
    }

    else
    {
      v65 = v84;
      v57(v84, v100, v54);
      v66 = v104;
      (*(v108 + 16))(v104, v65, v54);
      *&v112 = 0xD00000000000001ELL;
      *(&v112 + 1) = 0x80000001D73C2470;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v66, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v108 + 8))(v65, v54);
      v64 = v94;
      v63 = v83;
    }

    v61(v64, &v1[v90], v63);
    if (v103(v64, 1, v54) == 1)
    {
      v67 = v105;
      (*(v105 + 8))(v64, v63);
    }

    else
    {
      v68 = v85;
      v92(v85, v64, v54);
      v69 = v104;
      (*(v108 + 16))(v104, v68, v54);
      *&v112 = 0xD000000000000022;
      *(&v112 + 1) = 0x80000001D73C2440;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v69, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v108 + 8))(v68, v54);
      v67 = v105;
    }

    v70 = v97;
    v61(v97, &v1[v91], v63);
    v71 = v103;
    if (v103(v70, 1, v54) == 1)
    {
      (*(v67 + 8))(v70, v63);
    }

    else
    {
      v72 = v86;
      v92(v86, v70, v54);
      v73 = v104;
      (*(v108 + 16))(v104, v72, v54);
      *&v112 = 0xD00000000000001BLL;
      *(&v112 + 1) = 0x80000001D73C2420;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v73, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      v74 = v72;
      v71 = v103;
      (*(v108 + 8))(v74, v54);
    }

    v75 = &v1[v95];
    v76 = v98;
    v61(v98, v75, v63);
    if (v71(v76, 1, v54) == 1)
    {
      (*(v67 + 8))(v76, v63);
      v77 = v104;
      v78 = v102;
      v79 = v92;
    }

    else
    {
      v80 = v87;
      v79 = v92;
      v92(v87, v76, v54);
      v81 = v108;
      v77 = v104;
      (*(v108 + 16))(v104, v80, v54);
      *&v112 = 0xD000000000000019;
      *(&v112 + 1) = 0x80000001D73C2400;
      *&v112 = FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(v77, &v112);
      sub_1D72627FC();
      sub_1D72627BC();
      (*(v81 + 8))(v80, v54);
      v78 = v102;
    }

    *&v112 = v54;
    *(&v112 + 1) = v107;
    v113 = v106;
    type metadata accessor for FeedGroupKnobsRuleValue();
    v79(v77, v78, v54);
    return FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(v77, v114);
  }
}

uint64_t FeedGroupKnobsRuleValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[13];
  v23 = v4[10];
  v24 = v5;
  v25 = v6;
  v26 = v7;
  type metadata accessor for FeedGroupKnobsRuleValue.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1D726446C();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v18 = v16 - v10;
  v17 = *(v2 + v4[15]);
  v28 = v17;
  v21 = v23;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v11 = type metadata accessor for FeedGroupKnobsRuleValue.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(&v23, v26);
    sub_1D726476C();
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    v16[1] = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = v18;
    sub_1D7264B5C();
    LOBYTE(v23) = 0;
    v14 = v20;
    v15 = v22;
    sub_1D726443C();
    if (!v15)
    {
      v23 = v17;
      LOBYTE(v28) = 1;
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726443C();
    }

    return (*(v19 + 8))(v13, v14);
  }
}

uint64_t sub_1D5F1A428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  sub_1D5F1A624(a2, &v16 - v11);
  v13 = *(a3 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v13 + 16))(a4, a1, a3);
  result = (v14)(v12, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1D5F1A624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    swift_once();
  }

  v7 = *(v3 + 3);
  *&v22[0] = *(v3 + 2);
  *(&v22[0] + 1) = v7;

  v8 = sub_1D6844380(v22);

  v9 = -*(v8 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = v8 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v23 = *(v13 + 48);
    v22[1] = v15;
    v22[2] = v16;
    v22[0] = v14;
    sub_1D5E3B610(v22, v21);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v22);
    v11 = v12;
    if (v17)
    {

      v18 = *(v6 + 80);
      v19 = *(v18 - 8);
      (*(v19 + 16))(a2, &v3[*(*v3 + 120)], v18);
      return (*(v19 + 56))(a2, 0, 1, v18);
    }
  }

  return (*(*(*(v6 + 80) - 8) + 56))(a2, 1, 1);
}

uint64_t FeedGroupKnobsRuleValue.value<A>(for:rules:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v21 = a1;
  v7 = *v5;
  v8 = *(a2 + 24);
  v9 = *(v5 + *(*v5 + 120));
  v28 = v9;
  v10 = v7[10];
  v11 = v7[11];
  v12 = v7[12];
  v13 = v7[13];
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    return (*(*(v10 - 8) + 16))(a5, v5 + *(*v5 + 112), v10);
  }

  v20 = a5;
  if (v8)
  {
    v15 = v21;
    v16 = sub_1D5F1AAD8(v21);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
    v15 = v21;
  }

  v17 = *(v15 + *(type metadata accessor for FeedContext() + 40));

  v18 = sub_1D5D6021C(v16, v17);
  v21 = &v20;
  v24 = v9;
  MEMORY[0x1EEE9AC00](v18, v19);

  swift_getWitnessTable();
  sub_1D726249C();
}

uint64_t sub_1D5F1AAD8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + *(type metadata accessor for FeedContext() + 40));
      a1 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        return a1;
      }

      v6 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        v8 = sub_1D5F1DE88(v5);
        if (v8)
        {
          v9 = v8;

          a1 = v9;
        }

        else
        {
        }

        ++v6;
        if (v7 == v4)
        {
          return a1;
        }
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  a1 = *(v1 + 16);

  return a1;
}

uint64_t sub_1D5F1AC24(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + *(type metadata accessor for FeedContext() + 40));
      a1 = *(v1 + 16);
      if (v4)
      {
        v4 = sub_1D7263BFC();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        return a1;
      }

      v6 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1DA6FB460](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        v8 = sub_1D5E3A010(v5);
        if (v8)
        {
          v9 = v8;

          a1 = v9;
        }

        else
        {
        }

        ++v6;
        if (v7 == v4)
        {
          return a1;
        }
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v1 = *(v3 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (sub_1D7263BFC());
  }

  a1 = *(v1 + 16);

  return a1;
}

char *FeedGroupKnobsRuleValue.Selector.__allocating_init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = *a2;
  v5 = a2[1];
  (*(*(*(*v4 + 80) - 8) + 32))(&v4[*(*v4 + 120)], a1);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  return v4;
}

char *FeedGroupKnobsRuleValue.Selector.init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  (*(*(*(*v2 + 80) - 8) + 32))(&v2[*(*v2 + 120)], a1);
  *(v2 + 2) = v3;
  *(v2 + 3) = v4;
  return v2;
}

uint64_t static FeedGroupKnobsRuleValue.Selector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v2 || (sub_1D72646CC() & 1) != 0)
  {
    return sub_1D7261FBC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedGroupKnobsRuleValue.Selector.description.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x726F7463656C6553, 0xE90000000000003CLL);
  swift_getMetatypeMetadata();
  v1 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x65756C6176203A3ELL, 0xE90000000000003DLL);
  sub_1D726465C();
  MEMORY[0x1DA6F9910](0x7463656C6573202CLL, 0xEB000000003D726FLL);
  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  return 0;
}

uint64_t sub_1D5F1B078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5F1B140(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D5F1B1B4()
{
  sub_1D7264A0C();
  sub_1D5DEA254(v2, *v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F1B248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1B29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t *FeedGroupKnobsRuleValue.Selector.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t FeedGroupKnobsRuleValue.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v13[0] = *(*v2 + 96);
  v13[1] = v4;
  v15 = v4;
  v16 = v13[0];
  type metadata accessor for FeedGroupKnobsRuleValue.Selector.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v10 = v2[3];
  *&v15 = v2[2];
  *(&v15 + 1) = v10;
  v17 = 0;
  sub_1D5D3E60C();

  v11 = v14;
  sub_1D726443C();

  if (!v11)
  {
    LOBYTE(v15) = 1;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D5F1B5D4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

char *FeedGroupKnobsRuleValue.Selector.init(from:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v22 = &v18 - v6;
  v8 = *(v7 + 104);
  v25 = v5;
  v20 = *(v4 + 88);
  v26 = v20;
  v27 = v8;
  type metadata accessor for FeedGroupKnobsRuleValue.Selector.CodingKeys();
  swift_getWitnessTable();
  v23 = sub_1D726435C();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v24;
  v13 = a1;
  sub_1D7264B0C();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v21;
    v15 = v22;
    v28 = 0;
    sub_1D5C36978();
    sub_1D726431C();
    v16 = v26;
    *(v2 + 2) = v25;
    *(v2 + 3) = v16;
    LOBYTE(v25) = 1;
    sub_1D726431C();
    (*(v14 + 8))(v11, v23);
    (*(v19 + 32))(&v2[*(*v2 + 120)], v15, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_1D5F1B990()
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

uint64_t sub_1D5F1B9E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleValue.Selector.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}