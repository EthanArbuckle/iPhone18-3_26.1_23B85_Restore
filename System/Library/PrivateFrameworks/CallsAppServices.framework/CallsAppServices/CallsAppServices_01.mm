uint64_t sub_1D3333E0C()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = sub_1D33DEC24();
  v8 = sub_1D3333FA4(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
  MEMORY[0x1D38B6CE0](v7, v8);
  sub_1D33DE4B4();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v9 = v0[15];
  v0[19] = sub_1D33DE964();
  v10 = sub_1D334CB54(&unk_1EDEBEFA8, &qword_1EC761168, &qword_1D33E2568);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1D3359094;
  v13 = v0[14];
  v14 = v0[12];
  v15 = v0[8];

  return MEMORY[0x1EEE6D8C8](v15, v14, v10);
}

uint64_t sub_1D3333FA4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D3334010()
{
  v1 = type metadata accessor for RecentsItem(0);
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v29 = v0;
  sub_1D33927E0(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDED4();

  v5 = v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 8);

  os_unfair_lock_unlock(v5);
  v29 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v8 = 0;
    v9 = &selRef_setOriginatingUIType_;
    v10 = &selRef_setOriginatingUIType_;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D38B75D0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (![v11 v9[87]] && !objc_msgSend(v12, v10[88]))
      {
        v14 = [v12 link];
        if (v14)
        {

          goto LABEL_18;
        }

        v15 = [v12 mergedRemoteMembers];
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        sub_1D3357A1C(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
        v16 = sub_1D33DEA54();

        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_1D33DEE14();
        }

        else
        {
          v17 = *(v16 + 16);
        }

        if (v17 <= 0)
        {
        }

        else
        {
LABEL_18:
          sub_1D33DEF84();
          v18 = *(v29 + 16);
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        v9 = &selRef_setOriginatingUIType_;
        v10 = &selRef_setOriginatingUIType_;
        goto LABEL_5;
      }

LABEL_5:
      ++v8;
      if (v13 == i)
      {
        v19 = v29;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v20 = *(v19 + 16);
  if (v20)
  {
LABEL_30:
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1D38B75D0](v21, v19);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v23 = *(v19 + 8 * v21 + 32);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v20 = sub_1D33DEE14();
          if (!v20)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      sub_1D33A23D0(v23, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D33226AC(0, v22[2] + 1, 1, v22);
      }

      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        v22 = sub_1D33226AC(v25 > 1, v26 + 1, 1, v22);
      }

      v22[2] = v26 + 1;
      sub_1D33302BC(v4, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26);
      ++v21;
      if (v24 == v20)
      {
        goto LABEL_46;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_46:

  return v22;
}

uint64_t sub_1D3334470(uint64_t a1, char a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D332CE34(v11, v9, type metadata accessor for RecentsItem);
      v14 = sub_1D3337D6C();
      sub_1D3337A54(v9, type metadata accessor for RecentsItem);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D3337BEC(0, v13[2] + 1, 1, v13);
        v13 = result;
      }

      v16 = v13[2];
      v15 = v13[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_1D3337BEC((v15 > 1), v16 + 1, 1, v13);
        v13 = result;
      }

      v13[2] = v17;
      v13[v16 + 4] = v14;
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (!v17)
    {
LABEL_27:

      sub_1D3334788(v18, a2 & 1);
    }
  }

  v19 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v19 < v13[2])
  {
    v20 = &v13[v19];
    v21 = v20[4];
    v22 = *(v21 + 16);
    v23 = v18[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_29;
    }

    v25 = v20[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v24 <= v18[3] >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v27 = v23 + v22;
      }

      else
      {
        v27 = v23;
      }

      v18 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v27, 1, v18);
      if (*(v21 + 16))
      {
LABEL_23:
        v28 = (v18[3] >> 1) - v18[2];
        result = sub_1D33DDDB4();
        v29 = *(result - 8);
        if (v28 < v22)
        {
          goto LABEL_31;
        }

        v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v31 = *(v29 + 72);
        swift_arrayInitWithCopy();

        if (v22)
        {
          v32 = v18[2];
          v33 = __OFADD__(v32, v22);
          v34 = v32 + v22;
          if (v33)
          {
            goto LABEL_32;
          }

          v18[2] = v34;
        }

        goto LABEL_12;
      }
    }

    if (v22)
    {
      goto LABEL_30;
    }

LABEL_12:
    if (v17 == ++v19)
    {
      goto LABEL_27;
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
  return result;
}

void sub_1D3334788(uint64_t a1, char a2)
{
  v291[8] = *MEMORY[0x1E69E9840];
  v272 = sub_1D33DDD34();
  v244 = *(v272 - 8);
  v3 = *(v244 + 64);
  v4 = MEMORY[0x1EEE9AC00](v272);
  v240 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v239 = &v234 - v6;
  v269 = sub_1D33DDDC4();
  v243 = *(v269 - 8);
  v7 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v268 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1D33DDE84();
  v242 = *(v267 - 8);
  v9 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v266 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_1D33DDB54();
  v241 = *(v285 - 8);
  v11 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v285);
  v265 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v248 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v234 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v250 = &v234 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v282 = &v234 - v22;
  v284 = type metadata accessor for ReminderStatus();
  v251 = *(v284 - 8);
  v23 = *(v251 + 64);
  v24 = MEMORY[0x1EEE9AC00](v284);
  v257 = &v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v234 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v234 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v246 = &v234 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v253 = &v234 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v245 = &v234 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v252 = &v234 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  i = &v234 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v234 - v43;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v279 = *(v280 - 8);
  v45 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v283 = &v234 - v46;
  v47 = sub_1D33DDDB4();
  v255 = *(v47 - 8);
  v48 = *(v255 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v271 = &v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v286 = &v234 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v234 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v278 = &v234 - v56;

  isUniquelyReferenced_nonNull_native = sub_1D3336A64(v57);

  v287 = v47;
  v247 = v19;
  v270 = v44;
  if ((a2 & 1) == 0)
  {
    v277 = v55;
    v61 = v254;
    swift_beginAccess();
    v62 = *(v61 + 24);

    sub_1D33DE4F4();

    v63 = v289;
    v55 = *(v289 + 16);
    if (v55)
    {
      v64 = sub_1D33D2BB0(*(v289 + 16), 0);
      v65 = sub_1D33D3B00(v291, (v64 + ((*(v255 + 80) + 32) & ~*(v255 + 80))), v55, v63);
      sub_1D331FEEC();
      if (v65 != v55)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v67 = sub_1D3336A64(v64);

    if (*(v67 + 16) <= *(isUniquelyReferenced_nonNull_native + 16) >> 3)
    {
      goto LABEL_18;
    }

    v68 = sub_1D33B6714(v67, isUniquelyReferenced_nonNull_native);

    v69 = v68[2];
    if (v69)
    {
      while (1)
      {
        v60 = sub_1D33D2BB0(v69, 0);
        v67 = sub_1D33D3DA4(v291, (v60 + ((*(v255 + 80) + 32) & ~*(v255 + 80))), v69, v68);
        sub_1D331FEEC();
        if (v67 == v69)
        {
          break;
        }

        __break(1u);
LABEL_18:
        v291[0] = isUniquelyReferenced_nonNull_native;

        sub_1D3336C00(v67);

        v68 = v291[0];
        v69 = *(v291[0] + 2);
        if (!v69)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v60 = MEMORY[0x1E69E7CC0];
    }

    v55 = v277;
    if (!*(v60 + 16))
    {

LABEL_108:
      v233 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_21:
    if (qword_1EDEBF058 != -1)
    {
LABEL_113:
      swift_once();
    }

    v70 = sub_1D33DE464();
    v71 = __swift_project_value_buffer(v70, qword_1EDEC1440);

    v237 = v71;
    v72 = sub_1D33DE444();
    v73 = sub_1D33DEAF4();

    v74 = os_log_type_enabled(v72, v73);
    v249 = v60;
    v235 = v30;
    v238 = isUniquelyReferenced_nonNull_native;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v291[0] = v76;
      *v75 = 136315138;
      v77 = v60;
      v78 = v287;
      v79 = MEMORY[0x1D38B6F50](v77, v287);
      v81 = v55;
      v82 = sub_1D3328B48(v79, v80, v291);
      v44 = v270;

      *(v75 + 4) = v82;
      v55 = v81;
      _os_log_impl(&dword_1D331A000, v72, v73, "Populating cache for %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x1D38B81C0](v76, -1, -1);
      MEMORY[0x1D38B81C0](v75, -1, -1);
    }

    else
    {

      v78 = v287;
    }

    v83 = *(v254 + 16);
    v256 = v28;
    v84 = v278;
    if (v83)
    {
      v291[0] = MEMORY[0x1E69E7CC0];
      v85 = v249;
      v86 = *(v249 + 16);
      if (v86)
      {
        v274 = v83;
        v277 = objc_opt_self();
        v276 = *(v255 + 16);
        v87 = v85 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
        v275 = *(v255 + 72);
        v88 = (v255 + 8);
        v89 = v287;
        do
        {
          v90 = v276;
          v276(v84, v87, v89);
          v90(v55, v84, v89);
          v91 = v84;
          v92 = v55;
          v93 = [v277 cdEntityName];
          if (!v93)
          {
            sub_1D33DE7B4();
            v93 = sub_1D33DE784();
          }

          v94 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
          v95 = sub_1D33DDD64();
          [v94 initWithUUID:v95 entityName:v93];

          v96 = *v88;
          (*v88)(v92, v89);
          v97 = v96(v91, v89);
          MEMORY[0x1D38B6F20](v97);
          v55 = v92;
          if (*((v291[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v291[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v98 = *((v291[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D33DE8D4();
            v55 = v92;
          }

          sub_1D33DE8F4();
          v87 += v275;
          --v86;
          v84 = v278;
        }

        while (v86);
        v78 = v287;
        v85 = v249;
        v44 = v270;
        v83 = v274;
      }

      sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
      v99 = sub_1D33DE8A4();

      v291[0] = 0;
      v100 = [v83 fetchRemindersWithObjectIDs:v99 error:v291];

      v101 = v291[0];
      v28 = v256;
      if (!v100)
      {
        v136 = v291[0];

        v137 = sub_1D33DDBE4();

        swift_willThrow();
        v138 = v137;
        v139 = sub_1D33DE444();
        v140 = sub_1D33DEAF4();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          *v141 = 138412290;
          v143 = v137;
          v144 = _swift_stdlib_bridgeErrorToNSError();
          *(v141 + 4) = v144;
          *v142 = v144;
          _os_log_impl(&dword_1D331A000, v139, v140, "reminderCache populate failed with error: %@", v141, 0xCu);
          sub_1D331E880(v142, &qword_1EC761D90, &unk_1D33E4E90);
          MEMORY[0x1D38B81C0](v142, -1, -1);
          MEMORY[0x1D38B81C0](v141, -1, -1);
        }

        else
        {
        }

        goto LABEL_108;
      }

      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D3357A1C(&qword_1EC761CF0, &qword_1EC761CE0, 0x1E69C6D10);
      v102 = sub_1D33DE6F4();
      v103 = v101;
    }

    else
    {
      v102 = 0;
      v85 = v249;
    }

    v104 = *(v85 + 16);
    v105 = MEMORY[0x1E69E7CC0];
    v236 = v102;
    if (v104)
    {
      v106 = v44;
      v291[0] = MEMORY[0x1E69E7CC0];
      v107 = MEMORY[0x1E6969868];
      sub_1D334B4AC(0, v104, 0);
      v277 = *(v255 + 16);
      v108 = v85 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
      v276 = (v241 + 56);
      v105 = v291[0];
      v275 = (v241 + 48);
      v264 = (v241 + 32);
      v274 = *(v255 + 72);
      v263 = (v243 + 104);
      v262 = (v243 + 8);
      LODWORD(v261) = *v107;
      v260 = (v242 + 8);
      v259 = (v241 + 8);
      v258 = (v244 + 56);
      v278 = (v255 + 16);
      v273 = (v255 + 8);
      v109 = v235;
      v110 = v283;
      do
      {
        v111 = v286;
        v112 = v78;
        v113 = v78;
        v114 = v277;
        (v277)(v286, v108, v112);
        (v114)(v110, v111, v113);
        v115 = v106;
        v116 = v106;
        v117 = v285;
        (*v276)(v116, 1, 1, v285);
        *v109 = 1;
        v118 = i;
        sub_1D331E818(v115, i, &qword_1EC761CD8, &unk_1D33E4A60);
        if ((*v275)(v118, 1, v117) == 1)
        {
          v119 = v282;
          (*v258)(v282, 1, 1, v272);
        }

        else
        {
          v120 = v109;
          v121 = v265;
          (*v264)(v265, v118, v117);
          v122 = v268;
          v123 = v269;
          (*v263)(v268, v261, v269);
          v124 = v266;
          sub_1D33DDDD4();
          v125 = v123;
          v119 = v282;
          (*v262)(v122, v125);
          sub_1D33DDE44();
          (*v260)(v124, v267);
          v126 = v121;
          v109 = v120;
          v115 = v270;
          (*v259)(v126, v117);
        }

        v127 = *(v280 + 48);
        v128 = v284;
        sub_1D333842C(v119, &v109[*(v284 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
        v109[*(v128 + 24)] = 0;
        v106 = v115;
        sub_1D331E880(v115, &qword_1EC761CD8, &unk_1D33E4A60);
        (*v273)(v286, v113);
        v110 = v283;
        sub_1D33B6048(v109, &v283[v127]);
        v291[0] = v105;
        v130 = v105[2];
        v129 = v105[3];
        if (v130 >= v129 >> 1)
        {
          sub_1D334B4AC(v129 > 1, v130 + 1, 1);
          v105 = v291[0];
        }

        v105[2] = v130 + 1;
        sub_1D333842C(v110, v105 + ((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v130, &qword_1EC761450, &qword_1D33E1B10);
        v108 += v274;
        --v104;
        v78 = v287;
      }

      while (v104);
      v28 = v256;
      v102 = v236;
    }

    if (v105[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761458, &qword_1D33E2990);
      v131 = sub_1D33DF124();
    }

    else
    {
      v131 = MEMORY[0x1E69E7CC8];
    }

    v291[0] = v131;

    v133 = 0;
    sub_1D33B6110(v132, 1, v291);

    isUniquelyReferenced_nonNull_native = v291[0];
    v288 = v291[0];
    if (v102)
    {
      v259 = 0;
      if ((v102 & 0xC000000000000001) != 0)
      {
        v134 = 0;
        v135 = 0;
        v60 = 0;
        v282 = sub_1D33DF024() | 0x8000000000000000;
      }

      else
      {
        v145 = -1 << *(v102 + 32);
        v135 = ~v145;
        v134 = v102 + 64;
        v146 = -v145;
        if (v146 < 64)
        {
          v147 = ~(-1 << v146);
        }

        else
        {
          v147 = -1;
        }

        v60 = v147 & *(v102 + 64);
        v282 = v102;
      }

      v148 = v250;

      v149 = 0;
      v258 = v135;
      v44 = ((v135 + 64) >> 6);
      v280 = v241 + 56;
      v279 = v241 + 48;
      v276 = (v241 + 32);
      LODWORD(v275) = *MEMORY[0x1E6969868];
      v274 = (v243 + 104);
      v273 = (v243 + 8);
      v270 = (v242 + 8);
      v264 = (v241 + 8);
      v263 = (v244 + 56);
      v262 = (v244 + 48);
      v261 = (v244 + 32);
      v260 = (v244 + 8);
      v55 = (v255 + 16);
      v278 = (v255 + 8);
      for (i = v134; ; v134 = i)
      {
        if ((v282 & 0x8000000000000000) != 0)
        {
          v156 = sub_1D33DF0B4();
          if (!v156)
          {
            goto LABEL_97;
          }

          v158 = v157;
          v289 = v156;
          sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
          swift_dynamicCast();
          v159 = v291[0];
          v289 = v158;
          sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
          v154 = v159;
          swift_dynamicCast();
          v155 = v291[0];
          v30 = v149;
          v286 = v60;
          if (!v154)
          {
LABEL_97:
            sub_1D331FEEC();

            v133 = v259;
            break;
          }
        }

        else
        {
          v150 = v149;
          v151 = v60;
          v30 = v149;
          if (!v60)
          {
            while (1)
            {
              v30 = v150 + 1;
              if (__OFADD__(v150, 1))
              {
                break;
              }

              if (v30 >= v44)
              {
                goto LABEL_97;
              }

              v151 = *(v134 + 8 * v30);
              ++v150;
              if (v151)
              {
                goto LABEL_67;
              }
            }

            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

LABEL_67:
          v286 = ((v151 - 1) & v151);
          v152 = (v30 << 9) | (8 * __clz(__rbit64(v151)));
          v153 = *(*(v282 + 56) + v152);
          v154 = *(*(v282 + 48) + v152);
          v155 = v153;
          if (!v154)
          {
            goto LABEL_97;
          }
        }

        v160 = [v154 uuid];
        sub_1D33DDD84();

        v161 = [v155 isCompleted];
        v283 = v155;
        if (v161)
        {
          v162 = v252;
          v60 = v285;
          (*v280)(v252, 1, 1, v285);
          *v28 = 2;
          v163 = v162;
          v164 = v245;
          sub_1D331E818(v163, v245, &qword_1EC761CD8, &unk_1D33E4A60);
          if ((*v279)(v164, 1, v60) == 1)
          {
            (*v263)(v148, 1, 1, v272);
          }

          else
          {
            v172 = v265;
            (*v276)(v265, v164, v60, v272);
            v173 = v268;
            v174 = v269;
            (*v274)(v268, v275, v269);
            v175 = v266;
            sub_1D33DDDD4();
            (*v273)(v173, v174);
            sub_1D33DDE44();
            v176 = v175;
            v28 = v256;
            (*v270)(v176, v267);
            (*v264)(v172, v60);
          }

          v177 = v284;
          sub_1D333842C(v148, &v28[*(v284 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
          v28[*(v177 + 24)] = 0;
          sub_1D331E880(v252, &qword_1EC761CD8, &unk_1D33E4A60);
        }

        else
        {
          v165 = [v155 dueDateComponents];
          v166 = v272;
          v167 = v285;
          if (v165)
          {
            v168 = v253;
            v169 = v165;
            sub_1D33DDB34();

            v170 = 0;
            v171 = v246;
          }

          else
          {
            v170 = 1;
            v171 = v246;
            v168 = v253;
          }

          v277 = v154;
          (*v280)(v168, v170, 1, v167);
          *v28 = 0;
          sub_1D331E818(v168, v171, &qword_1EC761CD8, &unk_1D33E4A60);
          if ((*v279)(v171, 1, v167) == 1)
          {
            v178 = v247;
            (*v263)(v247, 1, 1, v166);
          }

          else
          {
            v179 = v265;
            (*v276)(v265, v171, v285);
            v180 = v268;
            v181 = v269;
            (*v274)(v268, v275, v269);
            v182 = v266;
            sub_1D33DDDD4();
            (*v273)(v180, v181);
            v178 = v247;
            sub_1D33DDE44();
            v183 = v182;
            v28 = v256;
            (*v270)(v183, v267);
            (*v264)(v179, v285);
          }

          v60 = &unk_1D33E1A90;
          v184 = v284;
          v185 = *(v284 + 20);
          sub_1D333842C(v178, &v28[v185], &qword_1EC760E10, &unk_1D33E1A90);
          v186 = *(v184 + 24);
          v28[v186] = 0;
          v187 = &v28[v185];
          v188 = v248;
          sub_1D331E818(v187, v248, &qword_1EC760E10, &unk_1D33E1A90);
          if ((*v262)(v188, 1, v166) == 1)
          {
            sub_1D331E880(v253, &qword_1EC761CD8, &unk_1D33E4A60);
            sub_1D331E880(v188, &qword_1EC760E10, &unk_1D33E1A90);
            v148 = v250;
            v154 = v277;
          }

          else
          {
            v189 = v239;
            (*v261)(v239, v188, v166);
            v60 = v240;
            sub_1D33DDD24();
            v190 = sub_1D33DDCB4();
            sub_1D331E880(v253, &qword_1EC761CD8, &unk_1D33E4A60);
            v191 = *v260;
            (*v260)(v60, v166);
            v191(v189, v166);
            v28 = v256;
            v148 = v250;
            v154 = v277;
            if (v190)
            {
              v256[v186] = 1;
            }
          }
        }

        sub_1D33B6048(v28, v257);
        v192 = v288;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v291[0] = v192;
        v193 = sub_1D33B926C(v271);
        v195 = v192[2];
        v196 = (v194 & 1) == 0;
        v197 = __OFADD__(v195, v196);
        v198 = v195 + v196;
        if (v197)
        {
          goto LABEL_111;
        }

        v60 = v194;
        if (v192[3] >= v198)
        {
          v200 = v283;
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v291[0];
            if (v194)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v205 = v283;
            v206 = v193;
            sub_1D3399FE0();
            v200 = v205;
            v193 = v206;
            isUniquelyReferenced_nonNull_native = v291[0];
            if (v60)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          sub_1D3397A8C(v198, isUniquelyReferenced_nonNull_native);
          v193 = sub_1D33B926C(v271);
          if ((v60 & 1) != (v199 & 1))
          {
            sub_1D33DF1E4();
            __break(1u);
            swift_unexpectedError();
            __break(1u);
            goto LABEL_116;
          }

          v200 = v283;
          isUniquelyReferenced_nonNull_native = v291[0];
          if (v60)
          {
LABEL_60:
            sub_1D33B60AC(v257, *(isUniquelyReferenced_nonNull_native + 56) + *(v251 + 72) * v193);
            v28 = v287;
            goto LABEL_61;
          }
        }

        v201 = v200;
        *(isUniquelyReferenced_nonNull_native + 8 * (v193 >> 6) + 64) |= 1 << v193;
        v202 = v193;
        v28 = v287;
        (*(v255 + 16))(*(isUniquelyReferenced_nonNull_native + 48) + *(v255 + 72) * v193, v271, v287);
        sub_1D33B6048(v257, *(isUniquelyReferenced_nonNull_native + 56) + *(v251 + 72) * v202);
        v203 = *(isUniquelyReferenced_nonNull_native + 16);
        v197 = __OFADD__(v203, 1);
        v204 = v203 + 1;
        if (v197)
        {
          goto LABEL_112;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v204;
        v200 = v201;
LABEL_61:
        (*v278)(v271, v28);

        v288 = isUniquelyReferenced_nonNull_native;
        v149 = v30;
        v60 = v286;
        v28 = v256;
      }
    }

    v207 = sub_1D33DE444();
    v208 = sub_1D33DEAF4();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v291[0] = v210;
      *v209 = 136315138;
      sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);

      v211 = sub_1D33DE704();
      v213 = v212;

      v214 = sub_1D3328B48(v211, v213, v291);

      *(v209 + 4) = v214;
      _os_log_impl(&dword_1D331A000, v207, v208, "Cache state for fetched reminderStatus %s", v209, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v210);
      MEMORY[0x1D38B81C0](v210, -1, -1);
      MEMORY[0x1D38B81C0](v209, -1, -1);
    }

    v215 = v254;
    swift_beginAccess();
    v216 = *(v215 + 24);

    sub_1D33DE4F4();

    v217 = v289;

    v218 = swift_isUniquelyReferenced_nonNull_native();
    v290 = v217;
    sub_1D33B8128(isUniquelyReferenced_nonNull_native, sub_1D33B7178, 0, v218, &v290);
    if (v133)
    {
LABEL_116:

      __break(1u);
      return;
    }

    v219 = v290;
    swift_beginAccess();
    v288 = v219;

    v220 = *(v254 + 24);

    sub_1D33DE4F4();

    LOBYTE(v220) = sub_1D33B4B8C(v219, v290);

    if (v220)
    {
      v221 = sub_1D33DE444();
      v222 = sub_1D33DEAF4();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *v223 = 0;
        _os_log_impl(&dword_1D331A000, v221, v222, "ReminderCache has not changed", v223, 2u);
        v224 = v223;
LABEL_106:
        MEMORY[0x1D38B81C0](v224, -1, -1);
      }
    }

    else
    {
      v225 = *(v254 + 24);
      v290 = v219;

      sub_1D33DE4E4();

      v221 = sub_1D33DE444();
      v226 = sub_1D33DEAF4();
      if (os_log_type_enabled(v221, v226))
      {
        v227 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v290 = v228;
        *v227 = 136315138;
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);

        v229 = sub_1D33DE704();
        v231 = v230;

        v232 = sub_1D3328B48(v229, v231, &v290);

        *(v227 + 4) = v232;
        _os_log_impl(&dword_1D331A000, v221, v226, "Updated reminder cache: %s", v227, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v228);
        MEMORY[0x1D38B81C0](v228, -1, -1);
        v224 = v227;
        goto LABEL_106;
      }
    }

    goto LABEL_108;
  }

  v59 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v59)
  {
    v277 = v55;
    v60 = sub_1D33D2BB0(v59, 0);
    v276 = sub_1D33D3DA4(v291, (v60 + ((*(v255 + 80) + 32) & ~*(v255 + 80))), v59, isUniquelyReferenced_nonNull_native);
    v275 = v291[4];

    sub_1D331FEEC();
    if (v276 != v59)
    {
      __break(1u);
    }

    v44 = v270;
    v55 = v277;
    if (!*(v60 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_9:
  v60 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_21;
  }

LABEL_10:

  v66 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D3336A64(uint64_t a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D38B7100](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D33632DC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1D3336C00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1D33DDDB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1D331E880(v6, &qword_1EC7612B0, qword_1D33E2830))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1D33B7230(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D3336E1C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = sub_1D33DDDB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v18 = [v0 reminderUUID];
  if (v18)
  {
    v19 = v18;
    sub_1D33DDD84();

    (*(v8 + 16))(v14, v16, v7);
    v17 = sub_1D3338090(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v1 = v17[2];
    v20 = v17[3];
    v2 = v1 + 1;
    if (v1 >= v20 >> 1)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

LABEL_4:
  v21 = [v0 callOccurrences];
  if (v21)
  {
    v0 = v21;
    v32 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D20, &unk_1D33E4AC0);
    v14 = sub_1D33DE8B4();

    v22 = *(v14 + 2);
    if (v22)
    {
      v16 = 0;
      v38 = v14 + 32;
      v37 = *MEMORY[0x1E6993598];
      v17 = (v32 + 56);
      v33 = (v32 + 32);
      v34 = (v32 + 48);
      v36 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v20 = *(v14 + 2);
        if (v16 >= v20)
        {
          __break(1u);
LABEL_24:
          v17 = sub_1D3338090(v20 > 1, v2, 1, v17);
LABEL_3:
          (*(v8 + 8))(v16, v7);
          v17[2] = v2;
          (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v1, v14, v7);
          v40 = v17;
          goto LABEL_4;
        }

        v0 = *&v38[8 * v16];
        v23 = sub_1D33DE7B4();
        v8 = v24;
        if (v0[2] && (v25 = v23, , v1 = sub_1D33378A8(v25, v8), v2 = v26, , (v2 & 1) != 0))
        {
          sub_1D3328D20(v0[7] + 32 * v1, v39);

          v27 = swift_dynamicCast();
          (*v17)(v6, v27 ^ 1u, 1, v7);
          if ((*v34)(v6, 1, v7) != 1)
          {
            v1 = *v33;
            (*v33)(v35, v6, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_1D3338090(0, v36[2] + 1, 1, v36);
            }

            v8 = v36[2];
            v28 = v36[3];
            v0 = (v8 + 1);
            if (v8 >= v28 >> 1)
            {
              v36 = sub_1D3338090(v28 > 1, v8 + 1, 1, v36);
            }

            v29 = v35;
            v30 = v36;
            v36[2] = v0;
            (v1)(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v8, v29, v7);
            goto LABEL_9;
          }
        }

        else
        {

          (*v17)(v6, 1, 1, v7);
        }

        sub_1D331E880(v6, &qword_1EC7612B0, qword_1D33E2830);
LABEL_9:
        if (v22 == ++v16)
        {
          goto LABEL_21;
        }
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_21:

    sub_1D3337B74(v36);
    return v40;
  }

  return v17;
}

uint64_t sub_1D3337330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

unint64_t sub_1D333746C()
{
  result = qword_1EDEBFC38;
  if (!qword_1EDEBFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC38);
  }

  return result;
}

uint64_t RecentsItem.date.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RecentsItem(0);
  sub_1D331E818(v1 + *(v11 + 32), v6, &unk_1EC761DE0, &unk_1D33E50F0);
  v12 = type metadata accessor for CallInfo(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) != 1)
  {
    v22 = *(v12 + 24);
    v23 = sub_1D33DDD34();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v10, &v6[v22], v23);
    sub_1D3337AB4(v6, type metadata accessor for CallInfo);
    v25 = *(v24 + 56);
    v25(v10, 0, 1, v23);
    (*(v24 + 32))(a1, v10, v23);
    return (v25)(a1, 0, 1, v23);
  }

  sub_1D331E880(v6, &unk_1EC761DE0, &unk_1D33E50F0);
  v13 = sub_1D33DDD34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = 1;
  v15(v10, 1, 1, v13);
  v17 = *v1;
  v18 = *(v1 + 32);
  if (v18 > 8)
  {
    goto LABEL_6;
  }

  if (((1 << v18) & 0x1B0) != 0)
  {
    goto LABEL_9;
  }

  v19 = *(v1 + 8);
  if (v18 != 3 && v18 != 6)
  {
LABEL_6:
    if (v18 < 2)
    {
      goto LABEL_9;
    }

    v19 = *v1;
  }

  v20 = v19;
  sub_1D33DE0C4();

  v16 = 0;
LABEL_9:
  v15(a1, v16, 1, v13);
  result = (*(v14 + 48))(v10, 1, v13);
  if (result != 1)
  {
    return sub_1D331E880(v10, &qword_1EC760E10, &unk_1D33E1A90);
  }

  return result;
}

unint64_t sub_1D33378A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D33DF284();
  sub_1D33DE824();
  v6 = sub_1D33DF2C4();

  return sub_1D333793C(a1, a2, v6);
}

id RecentsItem.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D332B0D0(v2, v3, v4, v5, v6);
}

unint64_t sub_1D333793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D33DF1B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D33379F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D3337C38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1D3337D6C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  v4 = 0;
  if (((1 << v3) & 0x187) == 0)
  {
    if (((1 << v3) & 0x70) == 0)
    {
      v34 = 0;
      goto LABEL_9;
    }

    v5 = v2;
    v4 = sub_1D3336E1C();
  }

  v34 = v4;
  v6 = 0;
  if (((1 << v3) & 0x1B3) != 0)
  {
    goto LABEL_10;
  }

  if (((1 << v3) & 0x48) == 0)
  {
    v1 = v2;
  }

LABEL_9:
  v7 = v1;
  v6 = sub_1D33380BC();

LABEL_10:
  v35 = v6;
  result = v34;
  if (v34)
  {
    v9 = v34;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = v9[2];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    goto LABEL_44;
  }

  v13 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && (v15 = v13, v12 <= v13[3] >> 1))
  {
    if (v9[2])
    {
LABEL_17:
      v16 = (v15[3] >> 1) - v15[2];
      result = sub_1D33DDDB4();
      v17 = *(result - 8);
      if (v16 < v10)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      swift_arrayInitWithCopy();

      v20 = v15[2];
      if (v10)
      {
        v21 = __OFADD__(v20, v10);
        v20 += v10;
        if (v21)
        {
          goto LABEL_47;
        }

        v15[2] = v20;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v11 <= v12)
    {
      v22 = v11 + v10;
    }

    else
    {
      v22 = v11;
    }

    v15 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v22, 1, MEMORY[0x1E69E7CC0]);
    if (v9[2])
    {
      goto LABEL_17;
    }
  }

  if (v10)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v20 = v15[2];
LABEL_27:
  result = v35;
  if (v35)
  {
    v23 = v35;
  }

  else
  {
    v23 = v13;
  }

  v24 = *(v23 + 2);
  v25 = v20 + v24;
  if (__OFADD__(v20, v24))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if (v26 && v25 <= v15[3] >> 1)
  {
    if (*(v23 + 2))
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  if (v20 <= v25)
  {
    v33 = v20 + v24;
  }

  else
  {
    v33 = v20;
  }

  v15 = sub_1D3338090(v26, v33, 1, v15);
  if (!*(v23 + 2))
  {
LABEL_42:

    if (!v24)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

LABEL_34:
  v27 = (v15[3] >> 1) - v15[2];
  result = sub_1D33DDDB4();
  v28 = *(result - 8);
  if (v27 < v24)
  {
    goto LABEL_46;
  }

  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = *(v28 + 72);
  swift_arrayInitWithCopy();

  if (!v24)
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D18, &qword_1D33E4AB8);
    swift_arrayDestroy();
    return v15;
  }

  v31 = v15[2];
  v21 = __OFADD__(v31, v24);
  v32 = v31 + v24;
  if (!v21)
  {
    v15[2] = v32;
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
  return result;
}

char *sub_1D33380BC()
{
  v0 = sub_1D33DDDB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D90, &qword_1D33E19E8);
  v13 = *(v6 + 72);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1D33DE104();
  sub_1D331E818(v15 + v14, v12, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D332FEC4(v12, v10);
  if ((*(v1 + 48))(v10, 1, v0) == 1)
  {
    sub_1D331E880(v10, &qword_1EC7612B0, qword_1D33E2830);
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = *(v1 + 32);
    v17(v4, v10, v0);
    v16 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D3338090(0, *(v16 + 2) + 1, 1, v16);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1D3338090(v18 > 1, v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v17(&v16[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v4, v0);
  }

  swift_setDeallocating();
  sub_1D331E880(v15 + v14, &qword_1EC7612B0, qword_1D33E2830);
  swift_deallocClassInstance();
  return v16;
}

uint64_t sub_1D33383BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D333842C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t CallInfo.senderIdentity.getter()
{
  v1 = (v0 + *(type metadata accessor for CallInfo(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CallInfo.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D33DE824();
  v4 = *(v0 + 16);
  sub_1D33DF2A4();
  v5 = type metadata accessor for CallInfo(0);
  v6 = v5[6];
  sub_1D33DDD34();
  sub_1D332C29C(&unk_1EDEBFD40, MEMORY[0x1E6969530]);
  sub_1D33DE734();
  MEMORY[0x1D38B7920](*(v1 + v5[7]));
  v7 = (v1 + v5[8]);
  if (v7[1])
  {
    v8 = *v7;
    sub_1D33DF2A4();
    sub_1D33DE824();
  }

  else
  {
    sub_1D33DF2A4();
  }

  v9 = *(v1 + v5[9]);
  sub_1D33DF2A4();
  v10 = *(v1 + v5[10]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1D38B7940](*&v10);
  v11 = *(v1 + v5[11]);
  sub_1D33DF2A4();
  v12 = *(v1 + v5[12]);
  sub_1D33DF2A4();
  v13 = *(v1 + v5[13]);
  return sub_1D33DF2A4();
}

uint64_t sub_1D3338648(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (qword_1EDEBF058 != -1)
    {
      swift_once();
    }

    v13 = sub_1D33DE464();
    __swift_project_value_buffer(v13, qword_1EDEC1440);
    v14 = sub_1D33DE444();
    v15 = sub_1D33DEAF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D331A000, v14, v15, a3, v16, 2u);
      MEMORY[0x1D38B81C0](v16, -1, -1);
    }

    v17 = sub_1D33DE9B4();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v12;
    sub_1D333DD88(0, 0, v10, a5, v18);
  }

  return result;
}

uint64_t sub_1D333888C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D33DE464();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D33DE454();
}

uint64_t sub_1D3338904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D33389B8(a1, v4, v5, v6);
}

uint64_t sub_1D33389D8()
{
  v12 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 24);

  sub_1D33DE4F4();

  v3 = v0[5];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1D33D2BB0(*(v3 + 16), 0);
    v6 = *(sub_1D33DDDB4() - 8);
    v7 = sub_1D33D3B00(&v11, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);
    sub_1D331FEEC();
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v8 = v0[6];
  sub_1D3334788(v5, 1);

  v9 = v0[1];

  return v9();
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3338B5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1D332C2E4(v3, v2);
  v4 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_1D332C6AC, 0, 0);
}

BOOL sub_1D3338C34(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D3338CC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D3338CD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3338CF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D3338D20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  result = sub_1D33DE4F4();
  *a2 = v5;
  return result;
}

uint64_t sub_1D3338D68(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  v4 = *a1;
  return sub_1D33DE4E4();
}

uint64_t sub_1D3338DB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3338DE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_1D33DDDB4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v2 | 7);
}

uint64_t sub_1D3338F24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D3338F6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3338FBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333901C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33390A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33390DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D33511E4(v4);
}

uint64_t sub_1D3339108()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D33391B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D33391F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339254()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void sub_1D3339334(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), v15 = v28, v4 = v9, v5 = v10, !v28))
      {
LABEL_29:
        sub_1D331FEEC();
        return;
      }

      goto LABEL_19;
    }

    v13 = v9;
    v14 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v5 = (v14 - 1) & v14;
    v15 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_19:
    v16 = [v15 type];
    if (v16 > 3)
    {
      v17 = 2;
    }

    else
    {
      v17 = qword_1D33E2708[v16];
    }

    v18 = [v15 value];
    if (!v18)
    {
      sub_1D33DE7B4();
      v18 = sub_1D33DE784();
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

    v12 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v11);
    v9 = v4;
    v10 = v5;
    if (v12)
    {
      v19 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D3359DB0(0, v22[2] + 1, 1, v22);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1D3359DB0((v20 > 1), v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      v22 = v19;
      v19[v21 + 4] = v12;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v14 = *(v2 + 8 * v4);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D3339674()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33396AC()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  sub_1D332B1DC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));
  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 72);

  v10 = v0 + v3 + v1[8];
  v11 = type metadata accessor for CallInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = *(v10 + 8);

    v13 = *(v11 + 24);
    v14 = sub_1D33DDD34();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = *(v10 + *(v11 + 32) + 8);
  }

  v16 = *(v6 + v1[9] + 8);

  v17 = *(v6 + v1[10] + 8);

  v18 = v6 + v1[11];
  v19 = type metadata accessor for ReminderStatus();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    v21 = sub_1D33DDD34();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v18 + v20, 1, v21))
    {
      (*(v22 + 8))(v18 + v20, v21);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D333992C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339964()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33399D0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3339A18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339A50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D3339AB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3339B48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339B8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D33DE464();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  v13 = *(v0 + v12);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v10 | 7);
}

uint64_t sub_1D3339D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339D80()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3339DCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339E04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D3339F10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339F6C()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339FA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D333A000()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  if (v0[6])
  {
    v4 = v0[7];
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1D333A084(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  RecentsItemDataSource.preFetchingPredicate.setter(v2);
}

void *sub_1D333A0B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = RecentsItemDataSource.recentsReminderActionProvider.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D333A0E0(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider);
  *(*a2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider) = *a1;
}

uint64_t sub_1D333A144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D333A214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333A29C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D333A2D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A30C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A368()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D333A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D333A4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D33DDDB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D333A558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for EasySharedNameAndPhotoKey, sub_1D33297F0);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A5C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for SolariumKey, sub_1D3399044);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for CallExperiencePhoneAppKey, sub_1D33990C0);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for NudityDetectionKey, sub_1D333746C);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A720()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A758@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333A7B4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333A818()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333A850()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
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
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D333A964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_1D333AAD0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D33B1350(v2);
}

uint64_t sub_1D333AB34()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333ACD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333AD18()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(type metadata accessor for ReminderTime(0) - 8);
  v6 = *(v5 + 80);
  v7 = v3 + v4 + v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  sub_1D332B1DC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));
  v11 = *(v0 + v3 + 40);

  v12 = *(v0 + v3 + 56);

  v13 = *(v0 + v3 + 72);

  v14 = v0 + v3 + v1[8];
  v15 = type metadata accessor for CallInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v14 + 8);

    v17 = *(v15 + 24);
    v18 = sub_1D33DDD34();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
    v19 = *(v14 + *(v15 + 32) + 8);
  }

  v20 = v7 & ~v6;
  v21 = *(v10 + v1[9] + 8);

  v22 = *(v10 + v1[10] + 8);

  v23 = v10 + v1[11];
  v24 = type metadata accessor for ReminderStatus();
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = *(v24 + 20);
    v26 = sub_1D33DDD34();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v23 + v25, 1, v26))
    {
      (*(v27 + 8))(v23 + v25, v26);
    }
  }

  v28 = sub_1D33DDB54();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v0 + v20, 3, v28))
  {
    (*(v29 + 8))(v0 + v20, v28);
  }

  v30 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v0 + v30);

  return MEMORY[0x1EEE6BDD0](v0, v30 + 8, v2 | v6 | 7);
}

uint64_t sub_1D333B094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333B0E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333B140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDB54();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D333B1AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D33DDB54();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D333B230(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1D333B3C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D333B550()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333B598()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D333B5D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333B620()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B69C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333B6EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333B748()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333B784()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D333B7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D333B828(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D333B87C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D333B8C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B90C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333B95C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B9A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D333BA84()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1D333BB14()
{
  result = [objc_allocWithZone(type metadata accessor for ReminderInteractionMetrics()) init];
  qword_1EC7620E8 = result;
  return result;
}

void sub_1D333BB44(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760B00, &qword_1D33E12F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E11F0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001D33E5A30;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001D33E5A50;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001D33E5A70;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  v8 = sub_1D336B9F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760B08, &qword_1D33E12F8);
  swift_arrayDestroy();
  v9 = *(v3 + OBJC_IVAR____TtC16CallsAppServices26ReminderInteractionMetrics_analyticsLogger);
  v10 = sub_1D33DE784();
  sub_1D33C7DD4(v8);

  sub_1D333C36C();
  v11 = sub_1D33DE6E4();

  [v9 logEvent:v10 withCoreAnalyticsDictionary:v11];
}

id sub_1D333BD90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderInteractionMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D333BE08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D333BE28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D333BE98(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

uint64_t sub_1D333BF20(uint64_t a1, id *a2)
{
  result = sub_1D33DE794();
  *a2 = 0;
  return result;
}

uint64_t sub_1D333BF98(uint64_t a1, id *a2)
{
  v3 = sub_1D33DE7A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D333C018@<X0>(uint64_t *a1@<X8>)
{
  sub_1D33DE7B4();
  v2 = sub_1D33DE784();

  *a1 = v2;
  return result;
}

_DWORD *sub_1D333C07C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D333C08C()
{
  v1 = *v0;
  v2 = sub_1D33DE7B4();
  v3 = MEMORY[0x1D38B6F00](v2);

  return v3;
}

uint64_t sub_1D333C0C8()
{
  v1 = *v0;
  sub_1D33DE7B4();
  sub_1D33DE824();
}

uint64_t sub_1D333C11C()
{
  v1 = *v0;
  sub_1D33DE7B4();
  sub_1D33DF284();
  sub_1D33DE824();
  v2 = sub_1D33DF2C4();

  return v2;
}

uint64_t sub_1D333C190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D33DE7B4();
  v6 = v5;
  if (v4 == sub_1D33DE7B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D33DF1B4();
  }

  return v9 & 1;
}

uint64_t sub_1D333C218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D33DE784();

  *a2 = v5;
  return result;
}

uint64_t sub_1D333C260@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D33DE7B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D333C28C(uint64_t a1)
{
  v2 = sub_1D333C4DC(&qword_1EC760B58);
  v3 = sub_1D333C4DC(&unk_1EC760B60);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D333C36C()
{
  result = qword_1EDEBEE70;
  if (!qword_1EDEBEE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEE70);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D333C428(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D333C4DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNActionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Bool __swiftcall RecentsItem.isRequest()()
{
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  if (RequestsHandler.isItemUnknownParticipant(_:)(v0))
  {
    return RequestsHandler.isRequestItem(_:handleCacheMiss:)(v0, 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FavoriteContact.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FavoriteContact.subtitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FavoriteContact.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void FavoriteContact.init(contact:entry:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E695C420];
  v6 = a1;
  v7 = [v6 isKeyAvailable_];
  v8 = [objc_opt_self() stringFromContact:v6 style:1000];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D33DE7B4();
    v12 = v11;
  }

  else
  {
    v9 = [v6 givenName];

    v10 = sub_1D33DE7B4();
    v12 = v13;
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 48) = v7;
}

uint64_t FavoriteContact.id.getter()
{
  v1 = [*(v0 + 40) entryIdentifier];
  v2 = sub_1D33DE7B4();

  return v2;
}

uint64_t FavoriteContact.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  MEMORY[0x1D38B7920]([v0[5] hash]);
  sub_1D33DE824();
  sub_1D33DF2A4();
  if (v4)
  {
    sub_1D33DE824();
  }

  return sub_1D33DF2A4();
}

uint64_t FavoriteContact.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 48);
  sub_1D33DF284();
  MEMORY[0x1D38B7920]([v5 hash]);
  sub_1D33DE824();
  sub_1D33DF2A4();
  if (v4)
  {
    sub_1D33DE824();
  }

  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

void sub_1D333C96C(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 40) entryIdentifier];
  v4 = sub_1D33DE7B4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1D333C9C8()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = v0[5];
  v6 = *(v0 + 48);
  sub_1D33DF284();
  FavoriteContact.hash(into:)();
  return sub_1D33DF2C4();
}

uint64_t _s16CallsAppServices15FavoriteContactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v13 = *(a2 + 48);
  v14 = *(a1 + 48);
  sub_1D333C36C();
  if (sub_1D33DEC74() & 1) != 0 && (v2 == v7 && v3 == v8 || (sub_1D33DF1B4()))
  {
    if (v5)
    {
      if (v9 && (v4 == v10 && v5 == v9 || (sub_1D33DF1B4() & 1) != 0))
      {
        return v14 ^ v13 ^ 1u;
      }
    }

    else if (!v9)
    {
      return v14 ^ v13 ^ 1u;
    }
  }

  return 0;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D333CB58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D333CBE8;

  return sub_1D3323EE4();
}

uint64_t sub_1D333CBE8(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1D333CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1D333CDA4;

  return sub_1D3323EE4();
}

uint64_t sub_1D333CDA4(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *v2;

  if (v7)
  {
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    swift_getObjectType();
    v11 = sub_1D33DE914();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v5 + 56) = a2;
  *(v5 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D333CF00, v11, v13);
}

uint64_t sub_1D333CF00()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 48);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_1D333CF30()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D333CF80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EDEC1480);
  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D331A000, v5, v6, "CNContactStoreDidChange notification received (debounced)", v7, 2u);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D33DE984();
    v9 = sub_1D33DE9B4();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    sub_1D3387C2C(0, 0, v3, &unk_1D33E1B30, v11);

    return sub_1D331E880(v3, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  return result;
}

uint64_t sub_1D333D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  sub_1D33DE984();
  v9 = sub_1D33DE9B4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D3325720(a3, v13);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a1;
  sub_1D331E6AC(v13, (v11 + 6));

  sub_1D333DD88(0, 0, v8, &unk_1D33E1B20, v11);
}

uint64_t sub_1D333D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1D33DE2F4();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D333D408, 0, 0);
}

uint64_t sub_1D333D408()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v3 = v0[12];
  if (Strong)
  {
    v4 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    sub_1D334421C();
    v8 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *v3 = v9;
    (*(v5 + 104))(v3, *MEMORY[0x1E699BFD0], v4);
    v10 = *v8;
    v11 = *(MEMORY[0x1E699BF90] + 4);

    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1D333D5A4;
    v13 = v0[12];

    return MEMORY[0x1EEE03C08](v13);
  }

  else
  {
    v14 = v0[12];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D333D5A4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D333D83C;
  }

  else
  {
    v6 = sub_1D333D714;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D333D714()
{
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully deleted messages", v6, 2u);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D333D83C()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1D33DE464();
  v0[16] = __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[6] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v10 = sub_1D33DE804();
    v12 = sub_1D3328B48(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to delete messages with error %s. Reloading items.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1D333DA30;
  v14 = v0[13];

  return sub_1D3323538();
}

uint64_t sub_1D333DA30()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D333DBB8;
  }

  else
  {
    v3 = sub_1D333DB44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D333DB44()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D333DBB8()
{
  v21 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v0 + 40) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v12 = sub_1D33DE804();
    v14 = sub_1D3328B48(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to reload items %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38B81C0](v10, -1, -1);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 104);
  }

  v17 = *(v0 + 96);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D333DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D33DE814() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D333E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D33DE814() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D333E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D33DE814() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D334CC54();

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D331E880(v27[0], &unk_1EC7610E0, &qword_1D33E16C0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1D334CC54();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D333E6D4()
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1D333E79C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v4 = v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  *a2 = v5;
}

void sub_1D333E868(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24);

    os_unfair_lock_unlock(v3);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *a2 = sub_1D334C978;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333E8F4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;

  os_unfair_lock_lock(v6);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v6 + 16) = sub_1D334C940;
  *(v6 + 24) = v5;

  sub_1D331EEDC(v7);
  os_unfair_lock_unlock(v6);
}

void sub_1D333E9A4()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333EA04(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1D331EEDC(v6);
  os_unfair_lock_unlock(v5);
}

void sub_1D333EA84(void *a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);

    os_unfair_lock_unlock(v4);
    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333EB04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[2] + v4;
  if (a2)
  {
    v6 = a1[1];

    os_unfair_lock_lock(v5);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    sub_1D331EEDC(v7);
    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_lock((a1[2] + v4));
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    sub_1D331EEDC(v9);
    os_unfair_lock_unlock(v5);
  }
}

uint64_t sub_1D333EBC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = sub_1D33DDDB4();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v40 - v22;
  sub_1D333F090();
  v24 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v41 = v23;
    v42 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v26 = *(v51 + 16);
    v49 = v6;
    v50 = v26;
    v27 = *(v51 + 80);
    v43 = a1;
    v48 = v11;
    v28 = (a1 + ((v27 + 32) & ~v27));
    v29 = *(v51 + 72);
    v46 = v13;
    v47 = v29;
    v30 = (v51 + 56);
    v51 += 16;
    v45 = (v51 - 8);
    v31 = v44;
    do
    {
      v32 = v50;
      v50(v19, v28, v14);
      v32(v31, v19, v14);
      v33 = *v30;
      (*v30)(v46, 1, 1, v14);
      v33(v48, 1, 1, v14);
      v34 = sub_1D33DDC44();
      (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
      v35 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v45)(v19, v14);
      sub_1D33DEF84();
      v36 = *(v52 + 16);
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v28 += v47;
      --v24;
    }

    while (v24);
    v25 = v52;
    v1 = v42;
    a1 = v43;
    v23 = v41;
  }

  sub_1D33DE984();
  v37 = sub_1D33DE9B4();
  (*(*(v37 - 8) + 56))(v23, 0, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v1;
  v38[5] = v25;
  v38[6] = a1;

  sub_1D333DD88(0, 0, v23, &unk_1D33E1A48, v38);
}

uint64_t sub_1D333F090()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  sub_1D33DE4E4();
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

uint64_t sub_1D333F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D333F1D0, 0, 0);
}

uint64_t sub_1D333F1D0()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  v3 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = *(MEMORY[0x1E699BFA0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D333F314;
  v6 = v0[8];

  return MEMORY[0x1EEE03C18](v6);
}

uint64_t sub_1D333F314()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D333F5C8;
  }

  else
  {
    v3 = sub_1D333F428;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D333F428()
{
  v15 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = sub_1D33DDDB4();
    v9 = MEMORY[0x1D38B6F50](v5, v8);
    v11 = sub_1D3328B48(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v3, v4, "Successfully moved messages to trash with uuids:%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D333F5C8()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to move messages to trash with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D333F798(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = sub_1D33DDDB4();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v40 - v22;
  sub_1D333F090();
  v24 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v41 = v23;
    v42 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v26 = *(v51 + 16);
    v49 = v6;
    v50 = v26;
    v27 = *(v51 + 80);
    v43 = a1;
    v48 = v11;
    v28 = (a1 + ((v27 + 32) & ~v27));
    v29 = *(v51 + 72);
    v46 = v13;
    v47 = v29;
    v30 = (v51 + 56);
    v51 += 16;
    v45 = (v51 - 8);
    v31 = v44;
    do
    {
      v32 = v50;
      v50(v19, v28, v14);
      v32(v31, v19, v14);
      v33 = *v30;
      (*v30)(v46, 1, 1, v14);
      v33(v48, 1, 1, v14);
      v34 = sub_1D33DDC44();
      (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
      v35 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v45)(v19, v14);
      sub_1D33DEF84();
      v36 = *(v52 + 16);
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v28 += v47;
      --v24;
    }

    while (v24);
    v25 = v52;
    v1 = v42;
    a1 = v43;
    v23 = v41;
  }

  sub_1D33DE984();
  v37 = sub_1D33DE9B4();
  (*(*(v37 - 8) + 56))(v23, 0, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v1;
  v38[5] = v25;
  v38[6] = a1;

  sub_1D333DD88(0, 0, v23, &unk_1D33E1A28, v38);
}

uint64_t sub_1D333FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D333FC8C, 0, 0);
}

uint64_t sub_1D333FC8C()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  v3 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = *(MEMORY[0x1E699BFA0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D333FDD0;
  v6 = v0[8];

  return MEMORY[0x1EEE03C18](v6);
}

uint64_t sub_1D333FDD0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D3340084;
  }

  else
  {
    v3 = sub_1D333FEE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D333FEE4()
{
  v15 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = sub_1D33DDDB4();
    v9 = MEMORY[0x1D38B6F50](v5, v8);
    v11 = sub_1D3328B48(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v3, v4, "Successfully moved messages to inbox with uuids:%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D3340084()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to move messages to inbox with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D3340254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v11 = sub_1D33DDDB4();
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33403D8, 0, 0);
}

uint64_t sub_1D33403D8()
{
  v2 = v0[12];
  v1 = v0[13];
  swift_getKeyPath();
  v0[10] = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  sub_1D3325720(v2 + v3, (v0 + 2));
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v25 = v4;
    v7 = v0[21];
    v8 = v0[13];
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v8 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v28 = *(v7 + 56);
    v29 = v9;
    v27 = (v7 + 40);
    v26 = (v7 - 8);
    do
    {
      v30 = v5;
      v12 = v0[22];
      v11 = v0[23];
      v14 = v0[19];
      v13 = v0[20];
      v16 = v0[17];
      v15 = v0[18];
      v29(v11, v10, v13);
      v29(v12, v11, v13);
      v17 = *v27;
      (*v27)(v14, 1, 1, v13);
      v17(v15, 1, 1, v13);
      v18 = sub_1D33DDC44();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
      v19 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v26)(v11, v13);
      sub_1D33DEF84();
      v20 = *(v31 + 16);
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v10 += v28;
      v5 = v30 - 1;
    }

    while (v30 != 1);
    v6 = v31;
    v4 = v25;
  }

  v0[24] = v6;
  v21 = *v4;
  v22 = *(MEMORY[0x1E699BFA0] + 4);
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_1D3340740;

  return MEMORY[0x1EEE03C18](v6);
}

uint64_t sub_1D3340740()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1D3340B0C;
  }

  else
  {
    v4 = sub_1D3340870;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3340870()
{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);

  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x1D38B6F50](v6, v5);
    v11 = sub_1D3328B48(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v3, v4, "Marked video messages as read %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[17];
  v19 = v0[14];
  v18 = v0[15];
  v20 = sub_1D33DE9B4();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  sub_1D33DE974();
  sub_1D331FEDC(v19);
  v21 = sub_1D33DE964();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v19;
  v22[5] = v18;
  sub_1D333E088(0, 0, v16, &unk_1D33E1AF0, v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D3340B0C()
{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v0[11] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Marking video messages as read failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[17];
  v21 = v0[14];
  v20 = v0[15];
  v22 = sub_1D33DE9B4();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  sub_1D33DE974();
  sub_1D331FEDC(v21);
  v23 = sub_1D33DE964();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v21;
  v24[5] = v20;
  sub_1D333E088(0, 0, v18, &unk_1D33E1AF0, v24);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D3340DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D33DE974();
  v5[5] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D3340E78, v7, v6);
}

uint64_t sub_1D3340E78()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v2)
  {
    v4 = *(v0 + 32);
    (*(v0 + 24))(v3);
  }

  **(v0 + 16) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D3340EFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  return sub_1D3325720(v5 + v3, a1);
}

uint64_t sub_1D3340FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v4 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  return sub_1D3325720(v3 + v4, a2);
}

uint64_t sub_1D334108C(uint64_t a1, uint64_t *a2)
{
  sub_1D3325720(a1, v17);
  v3 = *a2;
  v4 = v18;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  v10 = *v8;
  v16[3] = sub_1D33DE2A4();
  v16[4] = &off_1F4EE4AF0;
  v16[0] = v10;
  swift_getKeyPath();
  v13 = v3;
  v14 = v16;
  v15 = v3;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_1D3341228(uint64_t a1, uint64_t a2)
{
  sub_1D3325720(a2, v16);
  v3 = v17;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v14 = sub_1D33DE2A4();
  v15 = &off_1F4EE4AF0;
  *&v13 = v9;
  v10 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v10));
  sub_1D331E6AC(&v13, a1 + v10);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1D3341378(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v4 = *(v2 + *a2);
}

uint64_t sub_1D334141C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1D33414D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();
}

uint64_t sub_1D33415C0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
      os_unfair_lock_lock((v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
      if (*(v7 + 40) == 1)
      {
        if (sub_1D33DE9F4())
        {
          v8 = 0;
        }

        else
        {
          v8 = 2;
        }

        *(v7 + 40) = v8;
      }

      os_unfair_lock_unlock(v7);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  if (sub_1D33DE9F4())
  {
    v4 = v0[8];

    sub_1D3341A5C();
LABEL_11:
    v9 = v0[1];

    return v9();
  }

  v11 = *(v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader);
  v0[10] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D3341728, v11, 0);
}

uint64_t sub_1D3341728()
{
  v1 = *(v0 + 80);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D3341794, 0, 0);
}

uint64_t sub_1D3341794()
{
  if (sub_1D33DE9F4())
  {
    v2 = v0[8];
    v1 = v0[9];

    sub_1D3341A5C();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1D3341870;
    v6 = v0[9];

    return sub_1D3323538();
  }
}

uint64_t sub_1D3341870()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D33419F0;
  }

  else
  {
    v3 = sub_1D3341984;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3341984()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_1D3341A5C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D33419F0()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_1D3341A5C();
  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1D3341A5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((result + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    if (*(v1 + 40) == 1)
    {
      if (sub_1D33DE9F4())
      {
        v2 = 0;
      }

      else
      {
        v2 = 2;
      }

      *(v1 + 40) = v2;
    }

    os_unfair_lock_unlock(v1);
  }

  return result;
}

uint64_t sub_1D3341AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D331E818(a3, v24 - v10, &unk_1EC7610E0, &qword_1D33E16C0);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D33DE914();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D33DE814() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D3341D58()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 152) + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);
  *(v2 + 8) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(v2);
  *(v0 + 96) = v1;
  v4 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState;
  *(v0 + 440) = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject;
  *(v0 + 448) = v4;
  *(v0 + 544) = *MEMORY[0x1E69E93E8];
  *(v0 + 456) = *(v0 + 424);

  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_1D3341E64;

  return sub_1D3323EE4();
}

uint64_t sub_1D3341E64(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v6 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 549) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D3341F68, 0, 0);
}

uint64_t sub_1D3341F68()
{
  if (*(v0 + 549) & 1) != 0 || (sub_1D33DE9F4())
  {
    v1 = *(v0 + 432);
    v2 = *(v0 + 368);
    v3 = *(v0 + 376);
    v4 = *(v0 + 352);
    v5 = *(v0 + 360);
    v6 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 296);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v42 = *(v0 + 248);
    v43 = *(v0 + 240);
    v44 = *(v0 + 216);
    v45 = *(v0 + 192);
    v46 = *(v0 + 176);

    (*(v5 + 8))(v3, v4);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 472);
    v14 = *(*(v0 + 152) + *(v0 + 440));
    *(v0 + 548) = 1;
    sub_1D33DE4E4();
    if (v13 == 3)
    {
      v15 = *(v0 + 280);
      sub_1D33DF214();
      v16 = swift_task_alloc();
      *(v0 + 480) = v16;
      *v16 = v0;
      v16[1] = sub_1D33423D8;
      v17 = *(v0 + 280);

      return sub_1D33710C8(250000000000000000, 0, 0, 0, 1);
    }

    else
    {
      v18 = *(v0 + 456);
      if (qword_1EDEBF088 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 256);
      v20 = sub_1D33DE3E4();
      *(v0 + 496) = __swift_project_value_buffer(v20, qword_1EDEC1458);
      sub_1D33DE3A4();
      v21 = sub_1D33DE3D4();
      v22 = sub_1D33DEC04();
      if (sub_1D33DECC4())
      {
        v23 = *(v0 + 256);
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v21, v22, v25, "VideoMessageInboxController loading", "", v24, 2u);
        MEMORY[0x1D38B81C0](v24, -1, -1);
      }

      v27 = *(v0 + 392);
      v26 = *(v0 + 400);
      v28 = *(v0 + 248);
      v29 = *(v0 + 256);
      v30 = *(v0 + 224);
      v31 = *(v0 + 232);
      v32 = *(v0 + 152);

      (*(v31 + 16))(v28, v29, v30);
      v33 = sub_1D33DE424();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_1D33DE414();
      v37 = *(v31 + 8);
      *(v0 + 504) = v37;
      *(v0 + 512) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37(v29, v30);
      swift_getKeyPath();
      v38 = swift_task_alloc();
      *(v38 + 16) = v32;
      *(v38 + 24) = v36;
      *(v0 + 104) = v32;
      sub_1D33DDEC4();

      v39 = swift_task_alloc();
      *(v0 + 520) = v39;
      *v39 = v0;
      v39[1] = sub_1D33428CC;
      v40 = *(v0 + 472);
      v41 = *(v0 + 152);

      return sub_1D3325488(v40);
    }
  }
}

uint64_t sub_1D33423D8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  if (v0)
  {
    v5 = sub_1D3325E48;
  }

  else
  {
    v5 = sub_1D3342540;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3342540()
{
  if (sub_1D33DE9F4())
  {
    v1 = v0[54];
    v2 = v0[46];
    v3 = v0[47];
    v4 = v0[44];
    v5 = v0[45];
    v6 = v0[43];
    v7 = v0[40];
    v8 = v0[37];
    v9 = v0[35];
    v10 = v0[32];
    v37 = v0[31];
    v38 = v0[30];
    v39 = v0[27];
    v40 = v0[24];
    v41 = v0[22];

    (*(v5 + 8))(v3, v4);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[61];
    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v14 = v0[32];
    v15 = sub_1D33DE3E4();
    v0[62] = __swift_project_value_buffer(v15, qword_1EDEC1458);
    sub_1D33DE3A4();
    v16 = sub_1D33DE3D4();
    v17 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v18 = v0[32];
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v16, v17, v20, "VideoMessageInboxController loading", "", v19, 2u);
      MEMORY[0x1D38B81C0](v19, -1, -1);
    }

    v22 = v0[49];
    v21 = v0[50];
    v23 = v0[31];
    v24 = v0[32];
    v25 = v0[28];
    v26 = v0[29];
    v27 = v0[19];

    (*(v26 + 16))(v23, v24, v25);
    v28 = sub_1D33DE424();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1D33DE414();
    v32 = *(v26 + 8);
    v0[63] = v32;
    v0[64] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v24, v25);
    swift_getKeyPath();
    v33 = swift_task_alloc();
    *(v33 + 16) = v27;
    *(v33 + 24) = v31;
    v0[13] = v27;
    sub_1D33DDEC4();

    v34 = swift_task_alloc();
    v0[65] = v34;
    *v34 = v0;
    v34[1] = sub_1D33428CC;
    v35 = v0[59];
    v36 = v0[19];

    return sub_1D3325488(v35);
  }
}

uint64_t sub_1D33428CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v7 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v5 = sub_1D33429E4;
  }

  else
  {
    v5 = sub_1D332C70C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D33429E4()
{
  v1 = v0[54];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];

  (*(v4 + 8))(v2, v3);
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[27];
  v17 = v0[24];
  v18 = v0[22];
  v19 = v0[67];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D3342B18(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();

  v2 = *(a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  return sub_1D33DE4E4();
}

void sub_1D3342C0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v14 = a2;

  sub_1D3333DE0(v3);
  v4 = sub_1D332BD24(v14);

  v5 = v4[2];
  if (v5)
  {
    v6 = sub_1D33D2B88(v4[2], 0);
    v7 = *(type metadata accessor for RecentsItem(0) - 8);
    v8 = sub_1D3330080(&v14, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
    sub_1D331FEEC();
    if (v8 != v5)
    {
      __break(1u);
      return;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
  v9 = *(v6 + 16);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v10 = sub_1D33DE464();
  __swift_project_value_buffer(v10, qword_1EDEC1480);
  v11 = sub_1D33DE444();
  v12 = sub_1D33DEAF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v11, v12, "VideoMessageInboxController Finished adding items, now have new count of %{public}ld", v13, 0xCu);
    MEMORY[0x1D38B81C0](v13, -1, -1);
  }
}

void *sub_1D3342DFC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_1D33DDDB4();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x1D38B6F20](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_1D3342F7C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_1D3343024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D3343044, 0, 0);
}

uint64_t sub_1D3343044()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    v5 = Strong + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    sub_1D3343110((v5 + 8), v4);
    os_unfair_lock_unlock(v5);
  }

  **(v0 + 40) = v3 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D3343110(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  v38 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
    v40 = 1;
    sub_1D33DE4E4();
  }

  v17 = MEMORY[0x1D38B7A70](Strong);
  v36 = a1;
  v18 = *a1;
  v19 = *(*a1 + 16);
  v34 = v17;
  v35 = v18;
  if (v19)
  {
    v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = v18 + v37;
    swift_beginAccess();
    v21 = *(v5 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D332A828(v20, v14);
      v23 = *v14;
      v24 = v14[32];
      if (v24 <= 8)
      {
        if (((1 << v24) & 0x1B0) != 0)
        {
          goto LABEL_6;
        }

        v25 = *(v14 + 1);
        if (v24 == 3 || v24 == 6)
        {
          goto LABEL_14;
        }
      }

      if (v24 >= 2)
      {
        v25 = *v14;
LABEL_14:
        v26 = v25;
        v27 = swift_weakLoadStrong();
        if (v27)
        {
          v28 = *(v27 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager);
        }

        else
        {
          v28 = 0;
        }

        RecentsItem.init(message:callProviderManager:)(v26, v28, v9);
        sub_1D332B2E8(v14);
        sub_1D33302BC(v9, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D33226AC(0, v22[2] + 1, 1, v22);
        }

        v30 = v22[2];
        v29 = v22[3];
        if (v30 >= v29 >> 1)
        {
          v22 = sub_1D33226AC(v29 > 1, v30 + 1, 1, v22);
        }

        v22[2] = v30 + 1;
        sub_1D33302BC(v12, v22 + v37 + v30 * v21);
        goto LABEL_7;
      }

LABEL_6:
      sub_1D332B2E8(v14);
LABEL_7:
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_23:
  objc_autoreleasePoolPop(v34);

  *v36 = v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = *(result + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
    v39 = 2;
    sub_1D33DE4E4();
  }

  return result;
}

uint64_t VideoMessageInboxController.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
  v3 = sub_1D33DE2F4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader);

  v5 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask);

  sub_1D33435AC(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state + 8);
  v6 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController));
  v7 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState);

  v8 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController___observationRegistrar;
  v9 = sub_1D33DDF14();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t VideoMessageInboxController.__deallocating_deinit()
{
  VideoMessageInboxController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3343654(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v69 = a2;
  v72 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = v68 - v9;
  v10 = sub_1D33DDDB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v86 = v68 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v85 = (v68 - v18);
  v19 = type metadata accessor for RecentsItem(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v79 = v68 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v68 - v26;
  v68[1] = a1;
  v28 = *a1;
  v29 = *(*a1 + 16);
  v73 = v25;
  v74 = v11;
  if (v29)
  {
    v30 = v28 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v31 = *(v25 + 72);
    v83 = (v11 + 56);
    v84 = v31;
    v81 = (v11 + 32);
    v82 = (v11 + 48);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v80;
    v78 = v8;
    while (1)
    {
      sub_1D332A828(v30, v27);
      v34 = v27[32];
      v35 = 1;
      if (v34 <= 8)
      {
        if (((1 << v34) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v36 = *(v27 + 1);
        if (v34 == 3 || v34 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v34 >= 2)
      {
        v36 = *v27;
LABEL_11:
        v37 = v36;
        sub_1D33DE0B4();

        v35 = 0;
      }

LABEL_12:
      (*v83)(v8, v35, 1, v10);
      sub_1D332FEC4(v8, v33);
      sub_1D332B2E8(v27);
      if ((*v82)(v33, 1, v10) == 1)
      {
        sub_1D331E880(v33, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v38 = *v81;
        (*v81)(v85, v33, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1D3338090(0, v32[2] + 1, 1, v32);
        }

        v40 = v32[2];
        v39 = v32[3];
        if (v40 >= v39 >> 1)
        {
          v32 = sub_1D3338090(v39 > 1, v40 + 1, 1, v32);
        }

        v32[2] = v40 + 1;
        v38((v32 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v40), v85, v10);
        v8 = v78;
        v33 = v80;
      }

      v30 += v84;
      if (!--v29)
      {
        goto LABEL_19;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v85 = sub_1D3336A64(v32);

  v41 = v69;
  if (v69 >> 62)
  {
    goto LABEL_41;
  }

  v42 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v74;
  if (v42)
  {
LABEL_21:
    v44 = 0;
    v70 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v77 = v41 & 0xFFFFFFFFFFFFFF8;
    v78 = v41 & 0xC000000000000001;
    v75 = v41 + 32;
    v83 = (v43 + 16);
    v84 = v85 + 7;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = (v43 + 8);
    v76 = v42;
    while (1)
    {
      v82 = v45;
      if (v78)
      {
        v48 = MEMORY[0x1D38B75D0](v44, v69);
        v49 = __OFADD__(v44, 1);
        v50 = (v44 + 1);
        if (v49)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v44 >= *(v77 + 16))
        {
          goto LABEL_40;
        }

        v48 = *(v75 + 8 * v44);
        v49 = __OFADD__(v44, 1);
        v50 = (v44 + 1);
        if (v49)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v42 = sub_1D33DEE14();
          v43 = v74;
          if (!v42)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      v80 = v48;
      v81 = v50;
      sub_1D33DE0B4();
      if (v85[2] && (v51 = v85, v52 = v85[5], sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8]), v53 = sub_1D33DE724(), v54 = -1 << *(v51 + 32), v41 = v53 & ~v54, ((*(v84 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
      {
        v55 = ~v54;
        v56 = *(v74 + 72);
        v57 = *(v74 + 16);
        while (1)
        {
          v57(v15, v85[6] + v56 * v41, v10);
          sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
          v58 = sub_1D33DE774();
          v59 = *v46;
          (*v46)(v15, v10);
          if (v58)
          {
            break;
          }

          v41 = (v41 + 1) & v55;
          if (((*(v84 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v59(v86, v10);
        v47 = v76;
        v45 = v82;
      }

      else
      {
LABEL_32:
        (*v46)(v86, v10);
        v60 = *(v72 + v70);
        v61 = v60;
        v62 = v71;
        RecentsItem.init(message:callProviderManager:)(v80, v60, v71);
        sub_1D33302BC(v62, v79);
        v45 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D33226AC(0, v45[2] + 1, 1, v45);
        }

        v47 = v76;
        v64 = v45[2];
        v63 = v45[3];
        v41 = v64 + 1;
        v65 = v73;
        if (v64 >= v63 >> 1)
        {
          v66 = sub_1D33226AC(v63 > 1, v64 + 1, 1, v45);
          v65 = v73;
          v45 = v66;
        }

        v45[2] = v41;
        sub_1D33302BC(v79, v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64);
      }

      v44 = v81;
      if (v81 == v47)
      {
        goto LABEL_43;
      }
    }
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_43:

  return sub_1D3333DE0(v45);
}

Swift::Void __swiftcall VideoMessageInboxController.messageStoreDidUpdateMessages(_:)(Swift::OpaquePointer a1)
{
  v44 = sub_1D33DDDB4();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v7 = sub_1D33DE464();
  __swift_project_value_buffer(v7, qword_1EDEC1480);

  v8 = sub_1D33DE444();
  v9 = sub_1D33DEAF4();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_21;
  }

  v42 = v1;
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v46 = v11;
  *v10 = 136446210;
  v12 = v3;
  if (a1._rawValue >> 62)
  {
    v13 = sub_1D33DEE14();
  }

  else
  {
    v13 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v41 = v11;
  if (!v13)
  {
LABEL_20:
    v32 = MEMORY[0x1D38B6F50](v14, MEMORY[0x1E69E6158]);
    v34 = v33;

    v35 = sub_1D3328B48(v32, v34, &v46);

    *(v10 + 4) = v35;
    _os_log_impl(&dword_1D331A000, v8, v9, "messageStoreDidUpdateMessages: %{public}s", v10, 0xCu);
    v36 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1D38B81C0](v36, -1, -1);
    MEMORY[0x1D38B81C0](v10, -1, -1);
LABEL_21:

    sub_1D334421C();
    return;
  }

  v45 = MEMORY[0x1E69E7CC0];
  sub_1D334A9E0(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v38 = v10;
    v39 = v9;
    v40 = v8;
    v14 = v45;
    rawValue = a1._rawValue;
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v16 = (v12 + 8);
      do
      {
        MEMORY[0x1D38B75D0](v15, rawValue);
        sub_1D33DE0B4();
        v17 = sub_1D33DDD54();
        v19 = v18;
        (*v16)(v6, v44);
        swift_unknownObjectRelease();
        v45 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D334A9E0((v20 > 1), v21 + 1, 1);
          v14 = v45;
        }

        ++v15;
        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v13 != v15);
    }

    else
    {
      v23 = (a1._rawValue + 32);
      v24 = (v12 + 8);
      do
      {
        v25 = *v23;
        sub_1D33DE0B4();
        v26 = sub_1D33DDD54();
        v28 = v27;
        (*v24)(v6, v44);

        v45 = v14;
        v30 = *(v14 + 16);
        v29 = *(v14 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D334A9E0((v29 > 1), v30 + 1, 1);
          v14 = v45;
        }

        *(v14 + 16) = v30 + 1;
        v31 = v14 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        ++v23;
        --v13;
      }

      while (v13);
    }

    v8 = v40;
    LOBYTE(v9) = v39;
    v10 = v38;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D334421C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  sub_1D33DE4E4();
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

char *sub_1D3344364(unint64_t a1, const char *a2, uint64_t a3)
{
  v6 = v3;
  v55 = sub_1D33DDDB4();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v12 = sub_1D33DE464();
  __swift_project_value_buffer(v12, qword_1EDEC1480);

  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAF4();

  if (!os_log_type_enabled(v13, v14))
  {
    goto LABEL_21;
  }

  v53 = a3;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v57 = v16;
  *v15 = 136446210;
  v51 = v16;
  v52 = v15;
  v17 = v8;
  if (a1 >> 62)
  {
    v18 = sub_1D33DEE14();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_20:
    v38 = MEMORY[0x1D38B6F50](v19, MEMORY[0x1E69E6158]);
    v40 = v39;

    v41 = sub_1D3328B48(v38, v40, &v57);

    v42 = v52;
    *(v52 + 1) = v41;
    _os_log_impl(&dword_1D331A000, v13, v14, a2, v42, 0xCu);
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1D38B81C0](v43, -1, -1);
    MEMORY[0x1D38B81C0](v42, -1, -1);
LABEL_21:

    v44 = *(v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
    LOBYTE(v57) = 1;
    sub_1D33DE4E4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v46[-16] = v6;
    *&v46[-8] = a1;
    v57 = v6;
    sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
    sub_1D33DDEC4();

    LOBYTE(v57) = 2;
    return sub_1D33DE4E4();
  }

  v56 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v47 = v14;
    v48 = v13;
    v49 = a2;
    v50 = v3;
    v19 = v56;
    v54 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v22 = (v17 + 8);
      do
      {
        MEMORY[0x1D38B75D0](v21, v54);
        sub_1D33DE0B4();
        v23 = sub_1D33DDD54();
        v25 = v24;
        (*v22)(v11, v55);
        swift_unknownObjectRelease();
        v56 = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D334A9E0((v26 > 1), v27 + 1, 1);
          v19 = v56;
        }

        ++v21;
        *(v19 + 16) = v27 + 1;
        v28 = v19 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
      }

      while (v18 != v21);
    }

    else
    {
      v29 = (a1 + 32);
      v30 = (v17 + 8);
      do
      {
        v31 = *v29;
        sub_1D33DE0B4();
        v32 = sub_1D33DDD54();
        v34 = v33;
        (*v30)(v11, v55);

        v56 = v19;
        v36 = *(v19 + 16);
        v35 = *(v19 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1D334A9E0((v35 > 1), v36 + 1, 1);
          v19 = v56;
        }

        *(v19 + 16) = v36 + 1;
        v37 = v19 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        ++v29;
        --v18;
      }

      while (v18);
    }

    a1 = v54;
    a2 = v49;
    v6 = v50;
    v13 = v48;
    LOBYTE(v14) = v47;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3344820(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - v10;
  v12 = sub_1D33DDDB4();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v61 = *a1;
  v71 = v61;
  if (a2 >> 62)
  {
LABEL_37:
    v23 = sub_1D33DEE14();
  }

  else
  {
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v11;
  v53 = v9;
  v54 = a1;
  v56 = v18;
  v57 = v5;
  if (v23)
  {
    v24 = a2;
    v70 = MEMORY[0x1E69E7CC0];
    v25 = v23 & ~(v23 >> 63);
    v68 = v23;

    result = sub_1D334B3C4(0, v25, 0);
    if (v68 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v28 = a2;
    v67 = a2 & 0xC000000000000001;
    v29 = v70;
    v30 = v24;
    do
    {
      if (v67)
      {
        v31 = MEMORY[0x1D38B75D0](v27, v28);
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = v31;
      sub_1D33DE0B4();

      v70 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D334B3C4(v33 > 1, v34 + 1, 1);
        v29 = v70;
      }

      ++v27;
      *(v29 + 16) = v34 + 1;
      (*(v69 + 32))(v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v34, v22, v12);
      v28 = v30;
    }

    while (v68 != v27);
    v18 = v56;
    v5 = v57;
    a1 = v61;
  }

  else
  {
    a1 = v61;

    v29 = MEMORY[0x1E69E7CC0];
  }

  v9 = v66;
  v35 = sub_1D3336A64(v29);

  v11 = a1[2];
  if (!v11)
  {
LABEL_34:
  }

  v22 = 0;
  v62 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v60 = (v69 + 32);
  v64 = v69 + 16;
  v67 = v35 + 56;
  v68 = v69 + 8;
  v55 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  a2 = v59;
  v58 = v11;
  while (1)
  {
    if (v22 >= a1[2])
    {
      __break(1u);
      goto LABEL_37;
    }

    sub_1D332A828(&v62[*(v5 + 72) * v22], a2);
    v36 = *a2;
    v37 = *(a2 + 32);
    if (v37 > 8)
    {
      goto LABEL_24;
    }

    if (((1 << v37) & 0x1B0) != 0)
    {
      goto LABEL_18;
    }

    v38 = *(a2 + 8);
    if (v37 != 3 && v37 != 6)
    {
LABEL_24:
      if (v37 < 2)
      {
        goto LABEL_18;
      }

      v38 = *a2;
    }

    v39 = v38;
    sub_1D33DE0B4();

    (*v60)(v9, v18, v12);
    if (*(v35 + 16))
    {
      break;
    }

    (*v68)(v9, v12);
LABEL_17:
    v11 = v58;
LABEL_18:
    sub_1D332B2E8(a2);
    if (++v22 == v11)
    {
      goto LABEL_34;
    }
  }

  v40 = *(v35 + 40);
  sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v41 = sub_1D33DE724();
  v42 = -1 << *(v35 + 32);
  v43 = v41 & ~v42;
  if (((*(v67 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
  {
    v49 = *v68;
LABEL_33:
    v50 = v66;
    v49(v66, v12);
    v9 = v50;
    a1 = v61;
    goto LABEL_17;
  }

  v44 = v35;
  v63 = ~v42;
  v45 = *(v69 + 72);
  v46 = *(v69 + 16);
  while (1)
  {
    v47 = v65;
    v46(v65, *(v44 + 48) + v45 * v43, v12);
    sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
    v48 = sub_1D33DE774();
    v49 = *v68;
    (*v68)(v47, v12);
    if (v48)
    {
      break;
    }

    v43 = (v43 + 1) & v63;
    if (((*(v67 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      v5 = v57;
      a2 = v59;
      v35 = v44;
      v18 = v56;
      goto LABEL_33;
    }
  }

  v49(v66, v12);
  sub_1D332B2E8(v59);
  v51 = v53;
  sub_1D3357C20(v22, v53);
  sub_1D332B2E8(v51);

  *v54 = v71;
  return result;
}

Swift::Void __swiftcall VideoMessageInboxController.messageStoreDidDeleteMessagesWithUUIDs(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EDEC1480);

  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAF4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = sub_1D33DDDB4();
    v10 = MEMORY[0x1D38B6F50](a1._rawValue, v9);
    v12 = sub_1D3328B48(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v5, v6, "messageStoreDidDeleteMessagesWithUUIDs: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  LOBYTE(v15) = 1;
  sub_1D33DE4E4();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v15 = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDEC4();

  LOBYTE(v15) = 2;
  sub_1D33DE4E4();
}

uint64_t sub_1D334510C(void *a1)
{
  v2 = sub_1D33DDDB4();
  v47 = *(v2 - 8);
  v3 = v47[8];
  v4 = MEMORY[0x1EEE9AC00](v2);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for RecentsItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v41 - v16;
  v58 = *a1;
  v17 = v58;

  v19 = sub_1D3336A64(v18);

  v21 = *(v17 + 16);
  if (!v21)
  {
  }

  v41 = v15;
  v42 = a1;
  v22 = 0;
  v51 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v48 = (v47 + 4);
  v54 = v9;
  v55 = v19 + 56;
  v52 = v47 + 2;
  v56 = v19;
  v57 = (v47 + 1);
  v23 = v49;
  v24 = v19;
  v44 = v17;
  v45 = v11;
  v46 = v21;
  while (1)
  {
    if (v22 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D332A828(v51 + *(v11 + 72) * v22, v23);
    v25 = *v23;
    v26 = *(v23 + 32);
    if (v26 > 8)
    {
      goto LABEL_11;
    }

    if (((1 << v26) & 0x1B0) != 0)
    {
      goto LABEL_5;
    }

    v27 = *(v23 + 8);
    if (v26 != 3 && v26 != 6)
    {
LABEL_11:
      if (v26 < 2)
      {
        goto LABEL_5;
      }

      v27 = *v23;
    }

    v28 = v27;
    v29 = v50;
    sub_1D33DE0B4();

    (*v48)(v9, v29, v2);
    if (*(v24 + 16))
    {
      break;
    }

    (*v57)(v9, v2);
LABEL_4:
    v21 = v46;
LABEL_5:
    result = sub_1D332B2E8(v23);
    if (++v22 == v21)
    {
    }
  }

  v30 = *(v24 + 40);
  sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v31 = sub_1D33DE724();
  v32 = -1 << *(v24 + 32);
  v33 = v31 & ~v32;
  if (((*(v55 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    v39 = *v57;
LABEL_20:
    v23 = v49;
    v39(v9, v2);
    v11 = v45;
    v24 = v56;
    goto LABEL_4;
  }

  v43 = v57 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34 = ~v32;
  v35 = v47[9];
  v36 = v47[2];
  while (1)
  {
    v37 = v53;
    v36(v53, *(v56 + 48) + v35 * v33, v2);
    sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
    v38 = sub_1D33DE774();
    v39 = *v57;
    (*v57)(v37, v2);
    if (v38)
    {
      break;
    }

    v33 = (v33 + 1) & v34;
    if (((*(v55 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      v9 = v54;
      v17 = v44;
      goto LABEL_20;
    }
  }

  v39(v54, v2);
  sub_1D332B2E8(v49);
  v40 = v41;
  sub_1D3357C20(v22, v41);
  sub_1D332B2E8(v40);

  *v42 = v58;
  return result;
}

uint64_t sub_1D334563C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = sub_1D33DE8B4();

  a5(v6);
}

void sub_1D33456EC(const char *a1)
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EDEC1480);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, a1, v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  sub_1D33220A8();
}

uint64_t sub_1D33457F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1D334583C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  sub_1D33458DC((v9 + 8), a2, a3, a4, a1);
  os_unfair_lock_unlock(v9);
  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_1D33458DC(size_t *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v91 = a4;
  v90 = a3;
  v88 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v86 - v8;
  v9 = sub_1D33DDDB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v106 = &v86 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v105 = (&v86 - v19);
  v110 = type metadata accessor for RecentsItem(0);
  v20 = *(v110 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v110);
  v89 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v96 = &v86 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v101 = (&v86 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v86 - v28;
  v30 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v87 = a1;
  v31 = *a1;
  v32 = *(v31 + 16);
  v103 = v20;
  v104 = v9;
  v100 = v10;
  v102 = v14;
  v97 = v31;
  v108 = v32;
  if (v32)
  {
    v33 = 0;
    v107 = (v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)));
    v99 = (v10 + 16);
    v93 = (v10 + 8);
    v94 = (v10 + 32);
    do
    {
      if (v33 >= *(v31 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v34 = *(v20 + 72);
      sub_1D332A828(v107 + v34 * v33, v29);
      v35 = *v29;
      v36 = v29[32];
      if (v36 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v36) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v29);
        goto LABEL_5;
      }

      v37 = *(v29 + 1);
      if (v36 != 3 && v36 != 6)
      {
LABEL_3:
        if (v36 < 2)
        {
          goto LABEL_4;
        }

        v37 = *v29;
      }

      v38 = v37;
      v39 = v95;
      sub_1D33DE0B4();

      v40 = v105;
      (*v94)(v105, v39, v9);
      v41 = *v99;
      v42 = v106;
      (*v99)(v106, v40, v9);
      sub_1D332A828(v29, v101);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v30;
      v45 = sub_1D33B926C(v42);
      v46 = v30[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_50;
      }

      v49 = v44;
      if (v30[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_1D33B926C(v106);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_53;
        }

        v45 = v50;
      }

      v9 = v104;
      v30 = v109;
      if (v49)
      {
        sub_1D334C7C4(v101, v109[7] + v45 * v34);
        v52 = *v93;
        (*v93)(v106, v9);
        v52(v105, v9);
        sub_1D332B2E8(v29);
      }

      else
      {
        v109[(v45 >> 6) + 8] |= 1 << v45;
        v53 = v100;
        v54 = v106;
        v41(v30[6] + *(v100 + 72) * v45, v106, v9);
        sub_1D33302BC(v101, v30[7] + v45 * v34);
        v55 = *(v53 + 8);
        v55(v54, v9);
        v55(v105, v9);
        sub_1D332B2E8(v29);
        v56 = v30[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_51;
        }

        v30[2] = v58;
      }

      v14 = v102;
      v20 = v103;
      v31 = v97;
LABEL_5:
      v33 = (v33 + 1);
    }

    while (v108 != v33);
  }

  v59 = *(v88 + 16);
  if (v59)
  {
    v60 = *(v100 + 16);
    v61 = v88 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v107 = (v103 + 48);
    v108 = (v103 + 56);
    v62 = *(v100 + 72);
    v105 = (v100 + 8);
    v106 = v62;
    v63 = v98;
    v99 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v100 += 16;
    v60(v14, v61, v9);
    while (1)
    {
      if (v30[2] && (v64 = sub_1D33B926C(v14), (v65 & 1) != 0))
      {
        sub_1D332A828(v30[7] + *(v103 + 72) * v64, v63);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = v110;
      (*v108)(v63, v66, 1, v110);
      if ((*v107)(v63, 1, v67))
      {
        (*v105)(v14, v9);
        sub_1D331E880(v63, &unk_1EC760EE0, &qword_1D33E4CE0);
        goto LABEL_27;
      }

      v101 = v30;
      v68 = v60;
      v69 = v96;
      sub_1D332A828(v63, v96);
      sub_1D331E880(v63, &unk_1EC760EE0, &qword_1D33E4CE0);
      v70 = *v69;
      v71 = *(v69 + 8);
      v72 = *(v69 + 16);
      v73 = *(v69 + 24);
      v74 = *(v69 + 32);
      sub_1D332B0D0(*v69, v71, v72, v73, *(v69 + 32));
      v75 = v69;
      v60 = v68;
      v30 = v101;
      sub_1D332B2E8(v75);
      if (v74 <= 8)
      {
        if (((1 << v74) & 0xB0) != 0)
        {
          goto LABEL_40;
        }

        if (((1 << v74) & 0x48) != 0)
        {

          goto LABEL_43;
        }

        if (v74 == 8)
        {
          goto LABEL_41;
        }
      }

      if (v74 < 2)
      {
LABEL_40:
        sub_1D332B1DC(v70, v71, v72, v73, v74);
LABEL_41:
        v9 = v104;
        v14 = v102;
        (*v105)(v102, v104);
        v63 = v98;
        goto LABEL_27;
      }

      v71 = v70;
LABEL_43:
      v90(v71);
      v76 = *&v99[v92];
      v77 = v71;
      v78 = v76;
      v79 = v89;
      RecentsItem.init(message:callProviderManager:)(v77, v76, v89);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v30;
      v81 = v79;
      v14 = v102;
      sub_1D3398888(v81, v102, v80);

      v9 = v104;
      (*v105)(v14, v104);
      v30 = v109;
      v63 = v98;
LABEL_27:
      v61 += v106;
      if (!--v59)
      {
        break;
      }

      v60(v14, v61, v9);
    }
  }

  v82 = v30[2];
  if (v82)
  {
    v83 = sub_1D33D2B88(v30[2], 0);
    v84 = sub_1D33D388C(&v109, v83 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v82, v30);

    sub_1D331FEEC();
    if (v84 != v82)
    {
      goto LABEL_52;
    }
  }

  else
  {

    v83 = MEMORY[0x1E69E7CC0];
  }

  *v87 = v83;
  return result;
}

uint64_t sub_1D33461E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RecentsItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D331E880(a1, &unk_1EC760EE0, &qword_1D33E4CE0);
    sub_1D334BB5C(a2, v8);
    v14 = sub_1D33DDDB4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D331E880(v8, &unk_1EC760EE0, &qword_1D33E4CE0);
  }

  else
  {
    sub_1D33302BC(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D3398888(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D33DDDB4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

void sub_1D33463EC(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t))
{
  v7 = (a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  a3(v7 + 2, a2, a1);
  os_unfair_lock_unlock(v7);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1D334647C(size_t *a1, unint64_t a2, uint64_t a3)
{
  v59 = a3;
  v58 = a2;
  v4 = sub_1D33DDDB4();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for RecentsItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v73 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v57 = a1;
  v19 = *a1;
  v20 = *(*a1 + 16);
  v68 = *a1;
  if (v20)
  {
    v21 = 0;
    v22 = v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v65 = v11;
    v66 = (v60 + 32);
    v69 = (v60 + 16);
    v63 = v13;
    v64 = (v60 + 8);
    v61 = v22;
    v62 = v20;
    do
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v23 = *(v13 + 72);
      sub_1D332A828(v22 + v23 * v21, v18);
      v24 = *v18;
      v25 = v18[32];
      if (v25 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v25) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v18);
        goto LABEL_5;
      }

      v26 = *(v18 + 1);
      if (v25 != 3 && v25 != 6)
      {
LABEL_3:
        if (v25 < 2)
        {
          goto LABEL_4;
        }

        v26 = *v18;
      }

      v27 = v26;
      v28 = v67;
      sub_1D33DE0B4();

      (*v66)(v11, v28, v4);
      v29 = *v69;
      v30 = v71;
      v31 = v11;
      v32 = v4;
      (*v69)(v71, v31, v4);
      sub_1D332A828(v18, v70);
      v33 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v33;
      v36 = sub_1D33B926C(v30);
      v37 = *(v33 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_30;
      }

      v40 = v35;
      if (*(v33 + 24) >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_1D33B926C(v71);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_33;
        }

        v36 = v41;
      }

      v4 = v32;
      v43 = v72;
      if (v40)
      {
        sub_1D334C7C4(v70, v72[7] + v36 * v23);
        v44 = *v64;
        (*v64)(v71, v32);
        v11 = v65;
        v44(v65, v4);
        sub_1D332B2E8(v18);
      }

      else
      {
        v72[(v36 >> 6) + 8] |= 1 << v36;
        v45 = v60;
        v46 = v71;
        v29(v43[6] + *(v60 + 72) * v36, v71, v4);
        sub_1D33302BC(v70, v43[7] + v36 * v23);
        v47 = *(v45 + 8);
        v47(v46, v4);
        v11 = v65;
        v47(v65, v4);
        sub_1D332B2E8(v18);
        v48 = v43[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_31;
        }

        v43[2] = v50;
      }

      v73 = v43;
      v19 = v68;
      v20 = v62;
      v13 = v63;
      v22 = v61;
LABEL_5:
      ++v21;
    }

    while (v20 != v21);
  }

  v51 = v59;

  sub_1D334D298(v58, &v73, v51);

  v52 = v73;
  v53 = *(v73 + 16);
  if (v53)
  {
    v54 = sub_1D33D2B88(*(v73 + 16), 0);
    v55 = sub_1D33D388C(&v72, v54 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v53, v52);

    sub_1D331FEEC();
    if (v55 != v53)
    {
      goto LABEL_32;
    }
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  *v57 = v54;
  return result;
}

void sub_1D33469E4(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t))
{
  v6 = (a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  a3(v6 + 2, a2);
  os_unfair_lock_unlock(v6);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1D3346A6C(uint64_t *a1, uint64_t a2)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v73 - v5;
  v7 = sub_1D33DDDB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v86 = (v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = v73 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v83 = v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v81 = v73 - v16;
  v88 = type metadata accessor for RecentsItem(0);
  v17 = *(v88 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v88);
  v82 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v73 - v21;
  v23 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v73[0] = a1;
  v24 = *a1;
  v25 = *(v24 + 16);
  v84 = v7;
  v85 = v17;
  v78 = v24;
  v89 = v6;
  v91 = v8;
  if (v25)
  {
    v26 = 0;
    v87 = (v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
    v79 = v25;
    v80 = (v8 + 16);
    v75 = (v8 + 8);
    v76 = (v8 + 32);
    do
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v27 = *(v17 + 72);
      sub_1D332A828(v87 + v27 * v26, v22);
      v28 = *v22;
      v29 = v22[32];
      if (v29 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v29) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v22);
        goto LABEL_5;
      }

      v30 = *(v22 + 1);
      if (v29 != 3 && v29 != 6)
      {
LABEL_3:
        if (v29 < 2)
        {
          goto LABEL_4;
        }

        v30 = *v22;
      }

      v31 = v30;
      v32 = v77;
      sub_1D33DE0B4();

      v33 = v83;
      (*v76)(v83, v32, v7);
      v34 = *v80;
      v35 = v86;
      (*v80)(v86, v33, v7);
      sub_1D332A828(v22, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v23;
      v38 = sub_1D33B926C(v35);
      v39 = v23[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_39;
      }

      v42 = v37;
      if (v23[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_1D33B926C(v86);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_42;
        }

        v38 = v43;
      }

      v45 = v91;
      v25 = v79;
      v23 = v90;
      if (v42)
      {
        sub_1D334C7C4(v82, v90[7] + v38 * v27);
        v46 = *v75;
        v7 = v84;
        (*v75)(v86, v84);
        v46(v83, v7);
        sub_1D332B2E8(v22);
      }

      else
      {
        v90[(v38 >> 6) + 8] |= 1 << v38;
        v47 = v86;
        v7 = v84;
        v34((v23[6] + *(v45 + 72) * v38), v86, v84);
        sub_1D33302BC(v82, v23[7] + v38 * v27);
        v48 = *(v45 + 8);
        v48(v47, v7);
        v48(v83, v7);
        sub_1D332B2E8(v22);
        v49 = v23[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_40;
        }

        v23[2] = v51;
        v25 = v79;
      }

      v24 = v78;
      v17 = v85;
LABEL_5:
      ++v26;
    }

    while (v25 != v26);
  }

  v52 = *(v74 + 16);
  if (v52)
  {
    v87 = *(v91 + 16);
    v53 = v74 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v54 = *(v91 + 72);
    v91 += 16;
    v55 = (v91 - 8);
    v86 = (v17 + 56);
    v56 = v81;
    v87(v81, v53, v7);
    while (1)
    {
      v61 = sub_1D33B926C(v56);
      if (v62)
      {
        v63 = v61;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v23;
        if (!v64)
        {
          sub_1D3399734();
          v23 = v90;
        }

        v65 = *v55;
        v7 = v84;
        (*v55)(v23[6] + v63 * v54, v84);
        v66 = v23[7] + *(v85 + 72) * v63;
        v67 = v23;
        v59 = v54;
        v60 = v89;
        sub_1D33302BC(v66, v89);
        v68 = v63;
        v57 = v67;
        sub_1D334BE3C(v68, v67);
        v56 = v81;
        v65(v81, v7);
        v58 = 0;
      }

      else
      {
        v57 = v23;
        (*v55)(v56, v7);
        v58 = 1;
        v59 = v54;
        v60 = v89;
      }

      (*v86)(v60, v58, 1, v88);
      sub_1D331E880(v60, &unk_1EC760EE0, &qword_1D33E4CE0);
      v53 += v59;
      --v52;
      v54 = v59;
      v23 = v57;
      if (!v52)
      {
        break;
      }

      v87(v56, v53, v7);
    }
  }

  v69 = v23[2];
  if (v69)
  {
    v70 = sub_1D33D2B88(v23[2], 0);
    v71 = sub_1D33D388C(&v90, v70 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v69, v23);

    sub_1D331FEEC();
    if (v71 != v69)
    {
      goto LABEL_41;
    }
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  *v73[0] = v70;
  return result;
}

Swift::Void __swiftcall VideoMessageInboxController.deleteAll()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v6 = sub_1D33DE464();
  __swift_project_value_buffer(v6, qword_1EC762118);
  v7 = sub_1D33DE444();
  v8 = sub_1D33DEAF4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D331A000, v7, v8, "Attempt to delete all messages.", v9, 2u);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  sub_1D33DE984();
  v10 = sub_1D33DE9B4();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_1D333DD88(0, 0, v5, &unk_1D33E16D0, v11);
}

uint64_t sub_1D3347390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1D33DE2F4();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3347450, 0, 0);
}

uint64_t sub_1D3347450()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v5 = (v4 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  v6 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  (*(v2 + 104))(v1, *MEMORY[0x1E699BFE0], v3);
  v7 = *v6;
  v8 = *(MEMORY[0x1E699BF90] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1D33475D0;
  v10 = v0[10];

  return MEMORY[0x1EEE03C08](v10);
}

uint64_t sub_1D33475D0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D334785C;
  }

  else
  {
    v6 = sub_1D3347740;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D3347740()
{
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully deleted all messages.", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D334785C()
{
  v18 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to delete all messages error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

void sub_1D3347A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v140 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v145 = &v134 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v139 = &v134 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v138 = &v134 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v134 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v134 - v15;
  v16 = sub_1D33DDDB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v144 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v134 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v134 - v23;
  v24 = type metadata accessor for RecentsItem(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v150 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v153 = &v134 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v154 = (&v134 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v134 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v152 = (&v134 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v142 = &v134 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v134 - v40;
  v42 = *(a1 + 16);
  v155 = v16;
  v151 = v17;
  v137 = v39;
  v135 = v42;
  v134 = a1;
  if (v42)
  {
    v43 = a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v44 = *(v39 + 72);
    v45 = (v17 + 56);
    v147 = (v17 + 32);
    v148 = (v17 + 48);
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v146;
    v141 = v45;
    while (1)
    {
      sub_1D332A828(v43, v41);
      v48 = v41[32];
      v49 = 1;
      if (v48 <= 8)
      {
        if (((1 << v48) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v50 = *(v41 + 1);
        if (v48 == 3 || v48 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v48 >= 2)
      {
        v50 = *v41;
LABEL_11:
        v51 = v50;
        sub_1D33DE0B4();

        v47 = v146;
        v49 = 0;
      }

LABEL_12:
      (*v45)(v14, v49, 1, v16);
      sub_1D332FEC4(v14, v47);
      sub_1D332B2E8(v41);
      if ((*v148)(v47, 1, v16) == 1)
      {
        sub_1D331E880(v47, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v52 = v44;
        v53 = v14;
        v54 = v34;
        v55 = *v147;
        (*v147)(v149, v47, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D3338090(0, v46[2] + 1, 1, v46);
        }

        v57 = v46[2];
        v56 = v46[3];
        if (v57 >= v56 >> 1)
        {
          v46 = sub_1D3338090(v56 > 1, v57 + 1, 1, v46);
        }

        v46[2] = v57 + 1;
        v58 = v46 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v57;
        v16 = v155;
        v55(v58, v149, v155);
        v34 = v54;
        v14 = v53;
        v47 = v146;
        v44 = v52;
        v45 = v141;
      }

      v43 += v44;
      if (!--v42)
      {
        goto LABEL_19;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!v46[2])
  {

    return;
  }

  v59 = *(v136 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  LOBYTE(v156) = 1;
  v148 = v59;
  sub_1D33DE4E4();
  sub_1D3336A64(v46);

  v60 = v135;
  if (v135)
  {
    v61 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v62 = *(v137 + 72);
    v63 = v134 + v61;
    v64 = MEMORY[0x1E69E7CC0];
    v65 = v142;
    while (1)
    {
      sub_1D332A828(v63, v65);
      v66 = *v65;
      v67 = *(v65 + 32);
      if (v67 > 8)
      {
        goto LABEL_29;
      }

      if (((1 << v67) & 0x1B0) != 0)
      {
        goto LABEL_39;
      }

      v68 = *(v65 + 8);
      if (v67 != 3 && v67 != 6)
      {
LABEL_29:
        if (v67 < 2)
        {
          goto LABEL_39;
        }

        v68 = *v65;
      }

      v69 = v68;
      sub_1D33DE0D4();

      v65 = v142;
      v70 = sub_1D33DE304();
      if (v70 != sub_1D33DE304())
      {
LABEL_39:
        sub_1D33302BC(v65, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3330B0C(0, *(v64 + 16) + 1, 1);
          v65 = v142;
          v64 = v156;
        }

        v78 = *(v64 + 16);
        v77 = *(v64 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1D3330B0C(v77 > 1, v78 + 1, 1);
          v65 = v142;
          v64 = v156;
        }

        *(v64 + 16) = v78 + 1;
        sub_1D33302BC(v34, v64 + v61 + v78 * v62);
        goto LABEL_24;
      }

      v71 = *v65;
      v72 = *(v65 + 32);
      if (v72 > 8)
      {
        goto LABEL_22;
      }

      if (((1 << v72) & 0x1B0) != 0)
      {
        goto LABEL_23;
      }

      v73 = *(v65 + 8);
      if (v72 != 3 && v72 != 6)
      {
LABEL_22:
        if (v72 < 2)
        {
          goto LABEL_23;
        }

        v73 = *v65;
      }

      v74 = v73;
      sub_1D33DE0F4();

      v65 = v142;
      v75 = sub_1D33DE1F4();
      if (v75 == sub_1D33DE1F4())
      {
        goto LABEL_39;
      }

LABEL_23:
      sub_1D332B2E8(v65);
LABEL_24:
      v63 += v62;
      if (!--v60)
      {
        goto LABEL_46;
      }
    }
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v79 = *(v64 + 16);
  if (v79)
  {
    v80 = v138;
    v81 = v64 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    v82 = *(v137 + 72);
    v83 = (v151 + 56);
    v84 = (v151 + 48);
    v85 = (v151 + 32);
    v149 = MEMORY[0x1E69E7CC0];
    v86 = v139;
    while (1)
    {
      v87 = v152;
      sub_1D332A828(v81, v152);
      v88 = *(v87 + 32);
      v89 = 1;
      if (v88 <= 8)
      {
        if (((1 << v88) & 0x1B0) != 0)
        {
          goto LABEL_57;
        }

        v90 = v152[1];
        if (v88 == 3 || v88 == 6)
        {
          goto LABEL_56;
        }
      }

      if (v88 >= 2)
      {
        v90 = *v87;
LABEL_56:
        v91 = v90;
        sub_1D33DE0B4();

        v89 = 0;
      }

LABEL_57:
      v92 = v155;
      (*v83)(v86, v89, 1, v155);
      sub_1D332FEC4(v86, v80);
      sub_1D332B2E8(v152);
      if ((*v84)(v80, 1, v92) == 1)
      {
        sub_1D331E880(v80, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v93 = v80;
        v94 = *v85;
        (*v85)(v143, v93, v92);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1D3338090(0, *(v149 + 2) + 1, 1, v149);
        }

        v96 = *(v149 + 2);
        v95 = *(v149 + 3);
        if (v96 >= v95 >> 1)
        {
          v149 = sub_1D3338090(v95 > 1, v96 + 1, 1, v149);
        }

        v97 = v149;
        *(v149 + 2) = v96 + 1;
        v94(&v97[((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v96], v143, v155);
        v80 = v138;
        v86 = v139;
      }

      v81 += v82;
      if (!--v79)
      {

        goto LABEL_65;
      }
    }
  }

  v149 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v98 = v140;
  v99 = v135;
  if (v135)
  {
    v100 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v101 = v134 + v100;
    v102 = *(v137 + 72);
    v103 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v104 = v154;
      sub_1D332A828(v101, v154);
      v105 = *v104;
      v106 = *(v104 + 32);
      if (v106 > 8)
      {
        goto LABEL_73;
      }

      if (((1 << v106) & 0x1B0) != 0)
      {
        goto LABEL_76;
      }

      v107 = v154[1];
      if (v106 != 3 && v106 != 6)
      {
LABEL_73:
        if (v106 < 2)
        {
          goto LABEL_76;
        }

        v107 = *v104;
      }

      v108 = v107;
      sub_1D33DE0F4();

      LODWORD(v108) = sub_1D33DE1F4();
      if (v108 != sub_1D33DE1F4())
      {
LABEL_76:
        sub_1D33302BC(v154, v150);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v103;
        if ((v109 & 1) == 0)
        {
          sub_1D3330B0C(0, *(v103 + 16) + 1, 1);
          v103 = v156;
        }

        v111 = *(v103 + 16);
        v110 = *(v103 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1D3330B0C(v110 > 1, v111 + 1, 1);
          v103 = v156;
        }

        *(v103 + 16) = v111 + 1;
        sub_1D33302BC(v150, v103 + v100 + v111 * v102);
        goto LABEL_68;
      }

      sub_1D332B2E8(v154);
LABEL_68:
      v101 += v102;
      if (!--v99)
      {
        goto LABEL_82;
      }
    }
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v112 = *(v103 + 16);
  if (!v112)
  {

    v154 = MEMORY[0x1E69E7CC0];
    goto LABEL_101;
  }

  v113 = v103 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v114 = *(v137 + 72);
  v115 = (v151 + 56);
  v116 = (v151 + 48);
  v152 = (v151 + 32);
  v154 = MEMORY[0x1E69E7CC0];
  do
  {
    v117 = v153;
    sub_1D332A828(v113, v153);
    v118 = *(v117 + 32);
    v119 = 1;
    if (v118 > 8)
    {
      goto LABEL_90;
    }

    if (((1 << v118) & 0x1B0) != 0)
    {
      goto LABEL_93;
    }

    v120 = *(v153 + 8);
    if (v118 != 3 && v118 != 6)
    {
LABEL_90:
      if (v118 < 2)
      {
        goto LABEL_93;
      }

      v120 = *v117;
    }

    v121 = v120;
    sub_1D33DE0B4();

    v119 = 0;
LABEL_93:
    v122 = v155;
    (*v115)(v98, v119, 1, v155);
    v123 = v145;
    sub_1D332FEC4(v98, v145);
    sub_1D332B2E8(v153);
    if ((*v116)(v123, 1, v122) == 1)
    {
      sub_1D331E880(v123, &qword_1EC7612B0, qword_1D33E2830);
    }

    else
    {
      v124 = v115;
      v125 = v114;
      v126 = *v152;
      (*v152)(v144, v123, v122);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_1D3338090(0, v154[2] + 1, 1, v154);
      }

      v128 = v154[2];
      v127 = v154[3];
      if (v128 >= v127 >> 1)
      {
        v154 = sub_1D3338090(v127 > 1, v128 + 1, 1, v154);
      }

      v130 = v154;
      v129 = v155;
      v154[2] = (v128 + 1);
      v126(v130 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v128, v144, v129);
      v98 = v140;
      v114 = v125;
      v115 = v124;
    }

    v113 += v114;
    --v112;
  }

  while (v112);

LABEL_101:
  v131 = v136 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v136 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v132 = *(v131 + 16);
  if (v132)
  {
    v133 = *(v131 + 24);

    os_unfair_lock_unlock(v131);
    v132(v149);
    sub_1D331EEDC(v132);

    sub_1D333EBC0(v154);

    LOBYTE(v156) = 2;
    sub_1D33DE4E4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3348804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v81 = &v77 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - v11;
  v13 = sub_1D33DDDB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v77 - v18;
  v19 = type metadata accessor for RecentsItem(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v89 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v90 = &v77 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v77 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - v28;
  v30 = *(a1 + 16);
  v92 = v13;
  v86 = v14;
  v78 = v30;
  v79 = v27;
  v77 = a1;
  if (v30)
  {
    v31 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v32 = *(v27 + 72);
    v33 = (v14 + 56);
    v34 = (v14 + 48);
    v87 = (v14 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v83 = v34;
    v84 = v33;
    while (1)
    {
      sub_1D332A828(v31, v29);
      v36 = v29[32];
      v37 = 1;
      if (v36 <= 8)
      {
        if (((1 << v36) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v38 = *(v29 + 1);
        if (v36 == 3 || v36 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v36 >= 2)
      {
        v38 = *v29;
LABEL_11:
        v39 = v38;
        sub_1D33DE0B4();

        v13 = v92;
        v37 = 0;
      }

LABEL_12:
      (*v33)(v10, v37, 1, v13);
      sub_1D332FEC4(v10, v12);
      sub_1D332B2E8(v29);
      if ((*v34)(v12, 1, v13) == 1)
      {
        sub_1D331E880(v12, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v40 = v32;
        v41 = v10;
        v42 = *v87;
        (*v87)(v88, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1D3338090(0, *(v35 + 2) + 1, 1, v35);
        }

        v44 = *(v35 + 2);
        v43 = *(v35 + 3);
        if (v44 >= v43 >> 1)
        {
          v35 = sub_1D3338090(v43 > 1, v44 + 1, 1, v35);
        }

        *(v35 + 2) = v44 + 1;
        v13 = v92;
        v42(&v35[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v44], v88, v92);
        v10 = v41;
        v32 = v40;
        v34 = v83;
        v33 = v84;
      }

      v31 += v32;
      if (!--v30)
      {
        goto LABEL_19;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!*(v35 + 2))
  {
  }

  v45 = *(v80 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  v95 = 1;
  v88 = v45;
  sub_1D33DE4E4();
  sub_1D3336A64(v35);

  v46 = v78;
  if (v78)
  {
    v47 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v48 = v77 + v47;
    v49 = *(v79 + 72);
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v92;
    while (1)
    {
      v52 = v91;
      sub_1D332A828(v48, v91);
      v53 = *v52;
      v54 = *(v52 + 32);
      if (v54 > 8)
      {
        goto LABEL_28;
      }

      if (((1 << v54) & 0x1B0) != 0)
      {
        goto LABEL_31;
      }

      v55 = *(v91 + 8);
      if (v54 != 3 && v54 != 6)
      {
LABEL_28:
        if (v54 < 2)
        {
          goto LABEL_31;
        }

        v55 = *v52;
      }

      v56 = v55;
      sub_1D33DE0D4();

      LODWORD(v56) = sub_1D33DE304();
      v57 = v56 == sub_1D33DE304();
      v51 = v92;
      if (!v57)
      {
LABEL_31:
        sub_1D33302BC(v91, v89);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3330B0C(0, *(v50 + 16) + 1, 1);
          v51 = v92;
          v50 = v94;
        }

        v60 = *(v50 + 16);
        v59 = *(v50 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1D3330B0C(v59 > 1, v60 + 1, 1);
          v51 = v92;
          v50 = v94;
        }

        *(v50 + 16) = v60 + 1;
        sub_1D33302BC(v89, v50 + v47 + v60 * v49);
        goto LABEL_23;
      }

      sub_1D332B2E8(v91);
LABEL_23:
      v48 += v49;
      if (!--v46)
      {
        goto LABEL_38;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
  v51 = v92;
LABEL_38:
  v62 = *(v50 + 16);
  if (v62)
  {
    v63 = v50 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v91 = *(v79 + 72);
    v64 = (v86 + 56);
    v65 = (v86 + 48);
    v89 = (v86 + 32);
    v66 = MEMORY[0x1E69E7CC0];
    v68 = v81;
    v67 = v82;
    while (1)
    {
      v69 = v90;
      sub_1D332A828(v63, v90);
      v70 = *(v69 + 32);
      v71 = 1;
      if (v70 <= 8)
      {
        if (((1 << v70) & 0x1B0) != 0)
        {
          goto LABEL_49;
        }

        v72 = *(v90 + 8);
        if (v70 == 3 || v70 == 6)
        {
          goto LABEL_48;
        }
      }

      if (v70 >= 2)
      {
        v72 = *v69;
LABEL_48:
        v73 = v72;
        sub_1D33DE0B4();

        v51 = v92;
        v71 = 0;
      }

LABEL_49:
      (*v64)(v67, v71, 1, v51);
      sub_1D332FEC4(v67, v68);
      sub_1D332B2E8(v90);
      if ((*v65)(v68, 1, v51) == 1)
      {
        sub_1D331E880(v68, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v74 = *v89;
        (*v89)(v85, v68, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D3338090(0, *(v66 + 2) + 1, 1, v66);
        }

        v76 = *(v66 + 2);
        v75 = *(v66 + 3);
        if (v76 >= v75 >> 1)
        {
          v66 = sub_1D3338090(v75 > 1, v76 + 1, 1, v66);
        }

        *(v66 + 2) = v76 + 1;
        v51 = v92;
        v74(&v66[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v76], v85, v92);
        v68 = v81;
        v67 = v82;
      }

      v63 += v91;
      if (!--v62)
      {

        goto LABEL_57;
      }
    }
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_57:
  sub_1D333F798(v66);

  v93 = 2;
  return sub_1D33DE4E4();
}

uint64_t sub_1D3349074(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  v63 = v13;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v14;
  v15 = sub_1D33DDDB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecentsItem(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v66 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  v26 = *(a2 + 16);
  v60 = v23;
  v61 = a2;
  if (v26)
  {
    v27 = a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    v29 = (v16 + 56);
    v70 = v16;
    v72 = (v16 + 32);
    v73 = (v16 + 48);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v26;
    v32 = v71;
    v69 = v29;
    while (1)
    {
      sub_1D332A828(v27, v25);
      v33 = v25[32];
      v34 = 1;
      if (v33 <= 8)
      {
        if (((1 << v33) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v35 = *(v25 + 1);
        if (v33 == 3 || v33 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v33 >= 2)
      {
        v35 = *v25;
LABEL_11:
        v36 = v30;
        v37 = v35;
        sub_1D33DE0B4();

        v30 = v36;
        v32 = v71;
        v34 = 0;
      }

LABEL_12:
      (*v29)(v12, v34, 1, v15);
      sub_1D332FEC4(v12, v32);
      sub_1D332B2E8(v25);
      if ((*v73)(v32, 1, v15) == 1)
      {
        sub_1D331E880(v32, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v38 = v28;
        v39 = v12;
        v40 = *v72;
        (*v72)(v74, v32, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1D3338090(0, v30[2] + 1, 1, v30);
        }

        v42 = v30[2];
        v41 = v30[3];
        v43 = v30;
        if (v42 >= v41 >> 1)
        {
          v43 = sub_1D3338090(v41 > 1, v42 + 1, 1, v30);
        }

        *(v43 + 16) = v42 + 1;
        v30 = v43;
        v40((v43 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v42), v74, v15);
        v12 = v39;
        v28 = v38;
        v32 = v71;
        v29 = v69;
      }

      v27 += v28;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!v30[2])
  {
  }

  v74 = v30;
  v44 = v65;
  v45 = *(v65 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  v76 = 1;
  v73 = v45;
  sub_1D33DE4E4();
  v46 = v66;
  if (v26)
  {
    v47 = v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v48 = *(v60 + 72);
    do
    {
      sub_1D332A828(v47, v46);
      v50 = *v46;
      v51 = *(v46 + 32);
      if (v51 > 8)
      {
        goto LABEL_28;
      }

      if (((1 << v51) & 0x1B0) != 0)
      {
        goto LABEL_23;
      }

      v52 = *(v46 + 8);
      if (v51 != 3 && v51 != 6)
      {
LABEL_28:
        if (v51 < 2)
        {
          goto LABEL_23;
        }

        v52 = *v46;
      }

      v49 = v52;
      sub_1D331E818(v68, v67, &qword_1EC7612B0, qword_1D33E2830);
      v46 = v66;
      sub_1D33DE114();

LABEL_23:
      sub_1D332B2E8(v46);
      v47 += v48;
      --v26;
    }

    while (v26);
  }

  v53 = v64;
  sub_1D33DE984();
  v54 = sub_1D33DE9B4();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = v67;
  sub_1D331E818(v68, v67, &qword_1EC7612B0, qword_1D33E2830);
  v56 = (*(v62 + 80) + 40) & ~*(v62 + 80);
  v57 = (v63 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v74;
  sub_1D332FEC4(v55, v58 + v56);
  *(v58 + v57) = v44;

  sub_1D333DD88(0, 0, v53, &unk_1D33E1A80, v58);

  v75 = 2;
  return sub_1D33DE4E4();
}

uint64_t sub_1D3349710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33497C0, 0, 0);
}

uint64_t sub_1D33497C0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_1D3342DFC(sub_1D334CAE4, v4, v3);
  v0[13] = v5;

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
  sub_1D33DDED4();

  v6 = (v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  v7 = *__swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v8 = *(MEMORY[0x1E699BFA0] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1D3349950;

  return MEMORY[0x1EEE03C18](v5);
}

uint64_t sub_1D3349950()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_1D3349D0C;
  }

  else
  {
    v6 = sub_1D3349A84;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D3349A84()
{
  v27 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EC762118);
  sub_1D331E818(v2, v1, &qword_1EC7612B0, qword_1D33E2830);

  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAF4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v10 = v0[10];
    v9 = v0[11];
    v25 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    sub_1D331E818(v8, v9, &qword_1EC7612B0, qword_1D33E2830);
    v13 = sub_1D33DE7E4();
    v15 = v14;
    sub_1D331E880(v8, &qword_1EC7612B0, qword_1D33E2830);
    v16 = sub_1D3328B48(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_1D33DDDB4();
    v18 = MEMORY[0x1D38B6F50](v25, v17);
    v20 = sub_1D3328B48(v18, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1D331A000, v5, v6, "Updated reminderUUID: %s for messages %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v12, -1, -1);
    MEMORY[0x1D38B81C0](v11, -1, -1);
  }

  else
  {

    sub_1D331E880(v8, &qword_1EC7612B0, qword_1D33E2830);
  }

  v22 = v0[11];
  v21 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D3349D0C()
{
  v19 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Updating reminderUUID failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[11];
  v14 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D3349EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D98, &qword_1D33E1A88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v35 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  v25 = sub_1D33DDDB4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  (*(v26 + 16))(&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25);
  v29 = *(v26 + 56);
  v29(v24, 1, 1, v25);
  v29(v22, 1, 1, v25);
  v30 = sub_1D33DDC44();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  v31 = sub_1D33DDD34();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  v32 = sub_1D33DE324();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  sub_1D331E818(v36, v19, &qword_1EC7612B0, qword_1D33E2830);
  v33 = objc_allocWithZone(sub_1D33DE224());
  v38 = 1;
  result = sub_1D33DE204();
  *v37 = result;
  return result;
}

uint64_t sub_1D334A2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240);
  v6 = sub_1D33DE5A4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1D334A500(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D334A574(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D3328B48(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1D334A600(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D334A64C(a1, a2);
  sub_1D334A77C(&unk_1F4EE4698);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D334A64C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D334A868(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D33DEF64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D33DE864();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D334A868(v10, 0);
        result = sub_1D33DEF14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D334A77C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D334A8DC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}