char *sub_1D682EEB4(_OWORD *a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  type metadata accessor for FeedCursor();
  v17 = 4;
  v8 = *(v4 + 3);
  v9 = *(v7 + 128);
  v10 = *(v7 + 136);

  swift_unknownObjectRetain();
  v11 = sub_1D72547E4(&v17, a1, a2, v8, v9, v10);

  swift_unknownObjectRelease();
  if (!v3)
  {
    v12 = a1[4];
    v16[2] = a1[3];
    v16[3] = v12;
    v13 = a1[6];
    v16[4] = a1[5];
    v16[5] = v13;
    v14 = a1[2];
    v16[0] = a1[1];
    v16[1] = v14;
    v4 = sub_1D682F014(v11, v16, a2);
  }

  return v4;
}

char *sub_1D682F014(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v66 = *v3;
  v67 = a3;
  v5 = *a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v59 - v9;
  v11 = *(v5 + 88);
  v12 = *(v5 + 80);
  v65 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1D726393C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - v16;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v71 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v59 - v23;
  v25 = sub_1D726393C();
  v70 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v69 = &v59 - v27;
  sub_1D725C4CC();
  sub_1D725C73C();

  v28 = *(&v74 + 1);
  if (*(&v74 + 1) >= 2uLL)
  {
    v64 = v25;
    v32 = v74;
    v60 = v24;
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    v63 = v13;
    v34 = v33;
    *(v33 + 16) = xmmword_1D7270C10;
    v59 = v17;
    v61 = v10;
    v62 = v14;
    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    v37 = MEMORY[0x1E69E6158];
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1D5B7E2C0();
    v34[4] = v36;
    v34[5] = v35;
    v34[12] = v37;
    v34[13] = v38;
    v34[8] = v38;
    v34[9] = v32;
    v34[10] = v28;

    sub_1D5D64C6C(v32, v28);
    sub_1D7262EDC();
    sub_1D725C30C();

    type metadata accessor for FeedNextCursor();
    LOBYTE(v74) = 7;
    v39 = v67;
    v40 = *(v67 + 32);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v66;
    *(v42 + 16) = *(v66 + 112);
    *(v42 + 24) = *(v43 + 120);
    *(v42 + 40) = *(v43 + 136);
    *(v42 + 48) = v41;
    *(v42 + 56) = v32;
    *(v42 + 64) = v28;
    *(v42 + 72) = v39;
    sub_1D5D64C6C(v32, v28);

    v44 = sub_1D6F799C4(v32, v28, &v74, v40, &unk_1D72F5AD8, v42);

    v45 = v69;
    (*(*(v12 - 8) + 56))(v69, 1, 1, v12);
    v76[0] = 7;
    v46 = sub_1D725891C();
    v47 = *(*(v46 - 8) + 56);
    v48 = v60;
    v47(v60, 1, 1, v46);
    v49 = v71;
    v47(v71, 1, 1, v46);
    v50 = v59;
    (*(*(AssociatedTypeWitness - 8) + 56))(v59, 1, 1);
    v51 = type metadata accessor for FeedContext();
    v52 = v61;
    (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
    v75 = 0;
    v74 = 0u;
    v72 = 0;
    v73 = 256;
    v58 = v52;
    v53 = v52;
    v54 = v50;
    v4 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v45, 0, v76, v48, v49, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v50, v58, &v74, &v72, 0, 0, v44);

    v55 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v53, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v62 + 8))(v54, v63);
    v56 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v49, &qword_1EDF45B00, MEMORY[0x1E6969530], v55, sub_1D5B76550);
    sub_1D5BA2558(v48, &qword_1EDF45B00, v56, v55, sub_1D5B76550);
    (*(v70 + 8))(v45, v64);
  }

  else
  {
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7273AE0;
    v31 = *(v4 + 2);
    v30 = *(v4 + 3);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1D5B7E2C0();
    *(v29 + 32) = v31;
    *(v29 + 40) = v30;

    sub_1D7262EDC();
    sub_1D725C30C();
  }

  return v4;
}

uint64_t sub_1D682F804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v14;
  *(v8 + 256) = v13;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 208) = a3;
  *(v8 + 216) = a4;
  *(v8 + 192) = a1;
  *(v8 + 200) = a2;
  *(v8 + 280) = *a4;
  v9 = *a5;
  *(v8 + 288) = *a5;
  v10 = *(v9 + 80);
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D682F950, 0, 0);
}

uint64_t sub_1D682F950()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 328) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1D68358EC();
    v5 = v3;
    v66 = v2;
    v6 = *(v3 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        v2 = v5;

        sub_1D725C4CC();
        sub_1D725C73C();

        if (!*(v0 + 168))
        {
          goto LABEL_54;
        }

        sub_1D725C87C();

        v11 = *(v0 + 176);

        v5 = v7;
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v7;
        }

        v13 = *(v12 + 16);
        v14 = *(v9 + 16);
        v15 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v15 > *(v9 + 24) >> 1)
        {
          if (v14 <= v15)
          {
            v17 = v14 + v13;
          }

          else
          {
            v17 = v14;
          }

          v9 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v17, 1, v9);
        }

        v7 = v5;
        v5 = v2;
        if (*(v12 + 16))
        {
          if ((*(v9 + 24) >> 1) - *(v9 + 16) < v13)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v13)
          {
            v18 = *(v9 + 16);
            v19 = __OFADD__(v18, v13);
            v20 = v18 + v13;
            if (v19)
            {
              goto LABEL_51;
            }

            *(v9 + 16) = v20;
          }
        }

        else
        {

          if (v13)
          {
            goto LABEL_49;
          }
        }

        if (v6 == ++v8)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v63 = sub_1D5B86020(v9);

      v21 = *(v66 + 16);
      sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7279970;
      v23 = v21;
      sub_1D725C4CC();
      sub_1D725C73C();

      v24 = *(v0 + 144);
      if (!v24)
      {
        goto LABEL_55;
      }

      v25 = MEMORY[0x1E69E6158];
      v67 = *(v0 + 320);
      v26 = *(v0 + 288);
      v27 = *(v0 + 136);

      *(v22 + 56) = v25;
      *(v22 + 64) = sub_1D5B7E2C0();
      *(v22 + 32) = v27;
      *(v22 + 40) = v24;
      v5 = *(v26 + 88);
      *(v0 + 336) = v5;
      type metadata accessor for FeedDatabaseGroup();
      v28 = sub_1D726279C();
      v29 = MEMORY[0x1E69E6530];
      v30 = MEMORY[0x1E69E65A8];
      *(v22 + 96) = MEMORY[0x1E69E6530];
      *(v22 + 104) = v30;
      *(v22 + 72) = v28;
      v2 = v63;
      v31 = *(v63 + 16);
      *(v22 + 136) = v29;
      *(v22 + 144) = v30;
      *(v22 + 112) = v31;
      sub_1D7262EDC();
      sub_1D725C30C();

      sub_1D6D9BC10(v67);
      (*(v5 + 112))(*(v0 + 296), v5);
      v9 = static FeedCursorGroup.tags(from:excluding:)();

      if (!(v9 >> 62))
      {
        v33 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
        v62 = v5;
        if (!v33)
        {

          v35 = MEMORY[0x1E69E7CC0];
LABEL_44:
          v45 = *(v0 + 312);
          v47 = *(v0 + 296);
          v46 = *(v0 + 304);
          v64 = *(v0 + 280);
          v61 = *(v0 + 232);
          v48 = *(v0 + 216);
          v49 = *(v0 + 200);
          v69 = *(v0 + 192);
          v59 = *(v0 + 264);
          v60 = *(v0 + 248);
          v50 = sub_1D5B86020(v35);

          (*(v62 + 152))(1, v2, v50, v47);

          v51 = swift_allocBox();
          (*(v46 + 16))(v52, v45, v47);
          *(v0 + 184) = v51 | 0x1000000000000000;
          v53 = *(v48 + 24);
          v54 = swift_allocObject();
          *(v0 + 344) = v54;
          *(v54 + 16) = v60;
          *(v54 + 32) = v59;
          *(v54 + 48) = v69;
          *(v54 + 56) = v49;
          *(v54 + 64) = v61;
          *(v54 + 72) = v48;
          v55 = *(v64 + 96);
          v56 = *(v55 + 40);
          v57 = *(v64 + 80);

          v65 = (v56 + *v56);
          v58 = swift_task_alloc();
          *(v0 + 352) = v58;
          *v58 = v0;
          v58[1] = sub_1D683013C;

          return (v65)(v0 + 152, v0 + 184, v53, sub_1D6837624, v54, v57, v55);
        }

        v70 = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v33 & ~(v33 >> 63), 0);
        if ((v33 & 0x8000000000000000) == 0)
        {
          v34 = 0;
          v35 = v70;
          v36 = v9;
          v68 = v9 & 0xC000000000000001;
          v37 = v9;
          do
          {
            if (v68)
            {
              MEMORY[0x1DA6FB460](v34, v36);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            v38 = [swift_unknownObjectRetain() identifier];
            v39 = sub_1D726207C();
            v41 = v40;

            swift_unknownObjectRelease_n();
            v43 = *(v70 + 16);
            v42 = *(v70 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_1D5BFC364((v42 > 1), v43 + 1, 1);
            }

            ++v34;
            *(v70 + 16) = v43 + 1;
            v44 = v70 + 16 * v43;
            *(v44 + 32) = v39;
            *(v44 + 40) = v41;
            v36 = v37;
          }

          while (v33 != v34);

          v2 = v63;
          goto LABEL_44;
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }
    }

    v33 = sub_1D7263BFC();
    goto LABEL_33;
  }

  sub_1D6836948();
  swift_allocError();
  *v4 = xmmword_1D72BAA70;
  *(v4 + 16) = 7;
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D683013C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1D6830440;
  }

  else
  {
    v2 = sub_1D683026C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D683026C()
{
  v1 = *(v0 + 360);
  sub_1D68372C8(*(v0 + 152));
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  if (v1)
  {

    v6 = *(v4 + 8);
    v6(v3, v5);
    v6(v2, v5);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = v9[2];
    *(v0 + 16) = v9[1];
    *(v0 + 32) = v11;
    v12 = v9[6];
    v14 = v9[3];
    v13 = v9[4];
    *(v0 + 80) = v9[5];
    *(v0 + 96) = v12;
    *(v0 + 48) = v14;
    *(v0 + 64) = v13;

    v16 = sub_1D682F014(v15, v0 + 16, v10);

    v17 = *(v4 + 8);
    v17(v3, v5);
    v17(v2, v5);

    v18 = *(v0 + 8);

    return v18(v16);
  }
}

uint64_t sub_1D6830440()
{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

char *sub_1D68304F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a4;
  v43 = a2;
  v44 = a3;
  v7 = *a1;
  v45 = type metadata accessor for FeedContext;
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v37 - v11;
  v41 = a1;
  v13 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_1D726393C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v15);
  v17 = v37 - v16;
  v39 = MEMORY[0x1E6969530];
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v37 - v24;
  v38 = sub_1D726393C();
  v26 = *(v38 - 8);
  v28 = MEMORY[0x1EEE9AC00](v38, v27);
  v30 = v37 - v29;
  (*(*(v13 - 8) + 56))(v37 - v29, 1, 1, v13, v28);
  v50 = 5;
  v31 = sub_1D725891C();
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  sub_1D725C4CC();
  sub_1D725C73C();

  v32 = *(a5 + 40);
  (*(*(AssociatedTypeWitness - 8) + 56))(v17, 1, 1, AssociatedTypeWitness);
  v33 = type metadata accessor for FeedContext();
  (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  v49 = 0;
  v48 = 0u;
  v46 = 0;
  v47 = 256;
  v34 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(v43, v44, v30, 0, &v50, v25, v21, 0, 0, 0, 0, 0, 0, 0, 1, v32, 0, 0, 1, 0, 0, v17, v12, &v48, &v46, *(a5 + 16), 0, 0);
  sub_1D5BA2558(v12, qword_1EDF34CA0, v45, v8, sub_1D5B76550);
  (*(v40 + 8))(v17, v42);
  v35 = v39;
  sub_1D5BA2558(v21, &qword_1EDF45B00, v39, v8, sub_1D5B76550);
  sub_1D5BA2558(v25, &qword_1EDF45B00, v35, v8, sub_1D5B76550);
  (*(v26 + 8))(v30, v38);
  return v34;
}

char *sub_1D68309D4(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v34 = a2;
  v4 = *a1;
  v41 = type metadata accessor for FeedContext;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v34 - v8;
  v40 = a1;
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_1D726393C();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v12);
  v14 = &v34 - v13;
  v36 = MEMORY[0x1E6969530];
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  v35 = sub_1D726393C();
  v23 = *(v35 - 8);
  v25 = MEMORY[0x1EEE9AC00](v35, v24);
  v27 = &v34 - v26;
  (*(*(v10 - 8) + 56))(&v34 - v26, 1, 1, v10, v25);
  v46 = 1;
  v28 = sub_1D725891C();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  sub_1D725C4CC();
  sub_1D725C73C();

  (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1, 1, AssociatedTypeWitness);
  v29 = type metadata accessor for FeedContext();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v45 = 0;
  v44 = 0u;
  v42 = 0;
  v43 = 256;
  v30 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v27, 0, &v46, v22, v18, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v14, v9, &v44, &v42, *(v38 + 16), 0, 0);
  sub_1D5BA2558(v9, qword_1EDF34CA0, v41, v5, sub_1D5B76550);
  (*(v37 + 8))(v14, v39);
  v31 = v18;
  v32 = v36;
  sub_1D5BA2558(v31, &qword_1EDF45B00, v36, v5, sub_1D5B76550);
  sub_1D5BA2558(v22, &qword_1EDF45B00, v32, v5, sub_1D5B76550);
  (*(v23 + 8))(v27, v35);
  return v30;
}

uint64_t sub_1D6830EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  *(v8 + 168) = v14;
  *(v8 + 176) = v15;
  *(v8 + 152) = v13;
  *(v8 + 272) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = *a4;
  *(v8 + 184) = *a4;
  *(v8 + 192) = *a7;
  v10 = *(v9 + 80);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6830FFC, 0, 0);
}

uint64_t sub_1D6830FFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1D6D9BC10(*(v0 + 224));
    sub_1D6837340();
    v3 = sub_1D725C70C();
    v71 = v2;
    v7 = sub_1D725C8BC();

    v8 = v7;
    v9 = *(v7 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    v74 = v8;
    if (v9)
    {
      v11 = 0;
      v12 = v8 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      while (v11 < *(v8 + 16))
      {

        sub_1D725C4CC();
        sub_1D725C73C();

        if (!*(v0 + 72))
        {
          goto LABEL_51;
        }

        sub_1D725C87C();

        v14 = *(v0 + 80);

        v15 = v10;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v10;
        }

        v3 = *(v16 + 16);
        v17 = *(v13 + 2);
        v18 = v17 + v3;
        if (__OFADD__(v17, v3))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v18 > *(v13 + 3) >> 1)
        {
          if (v17 <= v18)
          {
            v20 = v17 + v3;
          }

          else
          {
            v20 = v17;
          }

          v13 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v20, 1, v13);
        }

        v10 = v15;
        if (*(v16 + 16))
        {
          if ((*(v13 + 3) >> 1) - *(v13 + 2) < v3)
          {
            goto LABEL_42;
          }

          swift_arrayInitWithCopy();

          v8 = v74;
          if (v3)
          {
            v21 = *(v13 + 2);
            v22 = __OFADD__(v21, v3);
            v23 = v21 + v3;
            if (v22)
            {
              goto LABEL_43;
            }

            *(v13 + 2) = v23;
          }
        }

        else
        {

          v8 = v74;
          if (v3)
          {
            goto LABEL_41;
          }
        }

        if (v9 == ++v11)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v12 = v10;
      v24 = *(v0 + 184);
      v69 = sub_1D5B86020(v13);

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1D7261D1C();
      v25 = *(v24 + 88);
      *(v0 + 240) = v25;
      v67 = v25;
      v3 = static FeedCursorGroup.tags(from:excluding:)();

      if (!(v3 >> 62))
      {
        v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v27 = v69;
        if (!v26)
        {
LABEL_45:

          v29 = MEMORY[0x1E69E7CC0];
          goto LABEL_46;
        }

LABEL_30:
        result = sub_1D5BFC364(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v28 = 0;
        v29 = v12;
        v30 = v3;
        v73 = v3 & 0xC000000000000001;
        v31 = v3;
        v32 = v26;
        do
        {
          if (v73)
          {
            MEMORY[0x1DA6FB460](v28, v30);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v33 = [swift_unknownObjectRetain() identifier];
          v34 = sub_1D726207C();
          v36 = v35;

          swift_unknownObjectRelease_n();
          v38 = *(v29 + 16);
          v37 = *(v29 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D5BFC364((v37 > 1), v38 + 1, 1);
          }

          ++v28;
          *(v29 + 16) = v38 + 1;
          v39 = v29 + 16 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          v30 = v31;
        }

        while (v32 != v28);

        v27 = v69;
LABEL_46:
        v40 = *(v0 + 200);
        v41 = sub_1D5B86020(v29);

        (*(v67 + 152))(0, v27, v41, v40);

        v42 = *(v71 + 16);
        sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v43 = v27;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D7270C10;
        v45 = v42;
        sub_1D725C4CC();
        sub_1D725C73C();

        v46 = *(v0 + 48);
        if (v46)
        {
          v47 = *(v0 + 208);
          v62 = *(v0 + 216);
          v48 = *(v0 + 200);
          v70 = *(v0 + 192);
          v68 = *(v0 + 272);
          v49 = *(v0 + 144);
          v50 = *(v0 + 104);
          v65 = *(v0 + 96);
          v66 = *(v0 + 120);
          v51 = *(v0 + 40);
          v63 = *(v0 + 168);
          v64 = *(v0 + 152);

          *(v44 + 56) = MEMORY[0x1E69E6158];
          *(v44 + 64) = sub_1D5B7E2C0();
          *(v44 + 32) = v51;
          *(v44 + 40) = v46;
          v52 = *(v43 + 16);

          v53 = MEMORY[0x1E69E65A8];
          *(v44 + 96) = MEMORY[0x1E69E6530];
          *(v44 + 104) = v53;
          *(v44 + 72) = v52;
          sub_1D7262EDC();
          sub_1D725C30C();

          v54 = swift_allocBox();
          (*(v47 + 16))(v55, v62, v48);
          *(v0 + 88) = v54 | 0x1000000000000000;
          v56 = *(v49 + 24);
          v57 = swift_allocObject();
          *(v0 + 248) = v57;
          *(v57 + 16) = v64;
          *(v57 + 32) = v63;
          *(v57 + 48) = v65;
          *(v57 + 56) = v50;
          *(v57 + 64) = v68;
          *(v57 + 72) = v66;
          *(v57 + 80) = v49;
          v58 = *(v70 + 96);
          v59 = *(v58 + 40);
          v60 = *(v70 + 80);

          v72 = (v59 + *v59);
          v61 = swift_task_alloc();
          *(v0 + 256) = v61;
          *v61 = v0;
          v61[1] = sub_1D6831874;

          return (v72)(v0 + 56, v0 + 88, v56, sub_1D68377CC, v57, v60, v58);
        }

LABEL_52:
        __break(1u);
        return result;
      }
    }

    v26 = sub_1D7263BFC();
    v27 = v69;
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  sub_1D6836948();
  swift_allocError();
  *v4 = xmmword_1D72BAA70;
  *(v4 + 16) = 7;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D6831874()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D6831B44;
  }

  else
  {
    v2 = sub_1D68319A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68319A4()
{
  v1 = v0[33];
  v2 = v0[26];
  v3 = sub_1D68372C8(v0[7]);
  v4 = (v2 + 8);
  v5 = v0[28];
  v6 = v0[27];
  v7 = v0[25];
  if (v1)
  {

    v8 = *v4;
    (*v4)(v6, v7);
    v8(v5, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v3;

    v12 = *v4;
    (*v4)(v6, v7);
    v12(v5, v7);

    v13 = v0[1];

    return v13(v11);
  }
}

uint64_t sub_1D6831B44()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

char *sub_1D6831BFC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v40 = a4;
  v47 = a2;
  v48 = a3;
  v8 = *a1;
  v49 = type metadata accessor for FeedContext;
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39[-v12];
  v46 = a1;
  v14 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1D726393C();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39[-v18];
  v43 = MEMORY[0x1E6969530];
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v9);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v39[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39[-v26];
  v42 = sub_1D726393C();
  v28 = *(v42 - 8);
  v30 = MEMORY[0x1EEE9AC00](v42, v29);
  v32 = &v39[-v31];
  (*(*(v14 - 8) + 56))(&v39[-v31], 1, 1, v14, v30);
  v54 = v40;
  v33 = sub_1D725891C();
  (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  sub_1D725C4CC();
  sub_1D725C73C();

  v34 = *(a6 + 40);
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
  v35 = type metadata accessor for FeedContext();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  v53 = 0;
  v52 = 0u;
  v50 = 0;
  v51 = 256;
  v36 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(v47, v48, v32, 0, &v54, v27, v23, 0, 0, 0, 0, 0, 0, 0, 1, v34, 0, 0, 1, 0, 0, v19, v13, &v52, &v50, *(a6 + 16), 0, 0);
  sub_1D5BA2558(v13, qword_1EDF34CA0, v49, v9, sub_1D5B76550);
  (*(v44 + 8))(v19, v45);
  v37 = v43;
  sub_1D5BA2558(v23, &qword_1EDF45B00, v43, v9, sub_1D5B76550);
  sub_1D5BA2558(v27, &qword_1EDF45B00, v37, v9, sub_1D5B76550);
  (*(v28 + 8))(v32, v42);
  return v36;
}

uint64_t sub_1D68320D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D68320FC, 0, 0);
}

uint64_t sub_1D68320FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = sub_1D5B81F5C();
    v0[10] = v2;
    v6 = v2;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_1D6832270;
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];

    return sub_1D682A928(v10, v8, v6, v9);
  }

  else
  {
    sub_1D6836948();
    swift_allocError();
    *v3 = xmmword_1D72BAA70;
    *(v3 + 16) = 7;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D6832270(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1D6832408;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_1D68323A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D68323A0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_1D6832408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6832474()
{
  v2 = v0[26];
  v1 = v0[27];

  sub_1D5B952E4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D683250C()
{
  v1 = v0[27];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  sub_1D5B952E4(v0[33], v0[34]);

  sub_1D5B952E4(v2, v1);

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D68325E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = v11;
  v6[38] = v12;
  v6[35] = a5;
  v6[36] = a6;
  v6[33] = a3;
  v6[34] = a4;
  v6[31] = a1;
  v6[32] = a2;
  v7 = *a1;
  v6[39] = *a1;
  v8 = *(v7 + 80);
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D68326EC, 0, 0);
}

uint64_t sub_1D68326EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 344) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1D6D9BC10(*(v0 + 336));
    v6 = *(v0 + 336);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 248);
    type metadata accessor for FeedCursor();

    v11 = sub_1D7254FD8(v10, v6, v8, v7);
    *(v0 + 352) = v11;

    v12 = *(v2 + 16);
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_1D7279970;
    v15 = *(v9 + qword_1EDFFC640);
    v46 = qword_1EDFFC640;
    v47 = v11;
    if (v15 <= 2)
    {
      if (*(v9 + qword_1EDFFC640))
      {
        if (v15 == 1)
        {
          v16 = 0xE400000000000000;
          v17 = 1852138835;
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x6E657A6F7246;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        v17 = 0x657669746341;
      }
    }

    else if (*(v9 + qword_1EDFFC640) > 4u)
    {
      v16 = 0xE800000000000000;
      if (v15 == 5)
      {
        v18 = 0x6C6F6F706552;
      }

      else
      {
        v18 = 0x646E61707845;
      }

      v17 = v18 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else if (v15 == 3)
    {
      v16 = 0xEB00000000646565;
      v17 = 0x4620666F20646E45;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x646568636143;
    }

    v19 = *(v0 + 264);
    v20 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1D5B7E2C0();
    v14[8] = v21;
    v14[4] = v17;
    v14[5] = v16;
    v22 = (v19 + 16);
    v23 = v12;
    sub_1D725C4CC();
    sub_1D725C73C();

    v24 = *(v0 + 240);
    if (!v24)
    {
      __break(1u);
      return result;
    }

    v25 = *(v0 + 232);
    v14[12] = v20;
    v14[13] = v21;
    v14[9] = v25;
    v14[10] = v24;
    v26 = sub_1D5BA88B4();
    v14[17] = v20;
    v14[18] = v21;
    v14[14] = v26;
    v14[15] = v27;
    sub_1D7262EDC();
    sub_1D725C30C();

    v28 = *(v9 + v46);
    if (v28 <= 3)
    {
      if (v28 - 1 >= 3)
      {
        v29 = v22[1];
        *(v0 + 112) = *v22;
        *(v0 + 128) = v29;
        v30 = v22[2];
        v31 = v22[3];
        v32 = v22[5];
        *(v0 + 176) = v22[4];
        *(v0 + 192) = v32;
        *(v0 + 144) = v30;
        *(v0 + 160) = v31;
        v33 = swift_task_alloc();
        *(v0 + 360) = v33;
        *v33 = v0;
        v33[1] = sub_1D6832C14;
        v35 = *(v0 + 272);
        v34 = *(v0 + 280);

        return sub_1D68330CC(v47, v34, v0 + 112, v35);
      }

      goto LABEL_31;
    }

    if (v28 == 4)
    {
      v45 = sub_1D682F014(v47, *(v0 + 288), *(v0 + 272));

      v43 = v45;
      goto LABEL_32;
    }

    if (v28 != 5)
    {
LABEL_31:
      v43 = v47;
LABEL_32:

      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

      v44 = *(v0 + 8);

      return v44(v43);
    }

    v36 = v22[1];
    *(v0 + 16) = *v22;
    *(v0 + 32) = v36;
    v37 = v22[2];
    v38 = v22[3];
    v39 = v22[5];
    *(v0 + 80) = v22[4];
    *(v0 + 96) = v39;
    *(v0 + 48) = v37;
    *(v0 + 64) = v38;
    v40 = swift_task_alloc();
    *(v0 + 384) = v40;
    *v40 = v0;
    v40[1] = sub_1D6832DD4;
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);

    return sub_1D6834650(v47, v41, v0 + 16, v42);
  }

  else
  {
    sub_1D6836948();
    swift_allocError();
    *v3 = xmmword_1D72BAA70;
    *(v3 + 16) = 7;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D6832C14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_1D6832F94;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_1D6832D3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6832D3C()
{

  v1 = v0[47];
  (*(v0[41] + 8))(v0[42], v0[40]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D6832DD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_1D6833030;
  }

  else
  {
    *(v4 + 400) = a1;
    v5 = sub_1D6832EFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6832EFC()
{

  v1 = v0[50];
  (*(v0[41] + 8))(v0[42], v0[40]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D6832F94()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6833030()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D68330CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = *v4;
  v5[28] = *v4;
  v7 = *a1;
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  v5[29] = swift_task_alloc();
  v5[30] = *(v7 + 88);
  v9 = *(v7 + 80);
  v5[31] = v9;
  v5[32] = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = sub_1D726393C();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = *(v6 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[45] = swift_getAssociatedTypeWitness();
  v5[46] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[47] = AssociatedTypeWitness;
  v5[48] = *(AssociatedTypeWitness - 8);
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D68334C4, 0, 0);
}

uint64_t sub_1D68334C4()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 184);
  v5 = *(*v4 + 256);
  (*(*(v0 + 240) + 48))(*(v0 + 248));
  swift_getAssociatedConformanceWitness();
  v6 = FeedServiceContextType.canWriteToDatabase()();
  (*(v2 + 8))(v1, v3);
  if (!v6)
  {
    sub_1D7262EDC();
    sub_1D725C30C();

    v11 = *(v0 + 184);
LABEL_7:

    v12 = *(v0 + 8);

    return v12(v11);
  }

  sub_1D725C4CC();
  sub_1D725C73C();

  v8 = *(v0 + 440);
  if (v8 == 2)
  {
    goto LABEL_57;
  }

  if (v8)
  {
    sub_1D725C4CC();
    sub_1D725C73C();

    v9 = *(v0 + 152);
    if (v9 != 1)
    {
      v39 = *(v0 + 208);
      v40 = *(v0 + 200);
      v41 = *(v0 + 184);
      sub_1D5D25B88(*(v0 + 144), v9);
      v11 = sub_1D682F014(v41, v40, v39);
      goto LABEL_7;
    }
  }

  sub_1D6837340();
  sub_1D725C70C();
  v10 = sub_1D725C8BC();

  v72 = v5;
  v13 = *(v10 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v74 = v10;
  if (v13)
  {
    for (i = 0; v13 != i; ++i)
    {
      if (i >= *(v10 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v29 = sub_1D7263BFC();
        if (!v29)
        {
          goto LABEL_50;
        }

LABEL_34:
        v76 = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v29 & ~(v29 >> 63), 0);
        if ((v29 & 0x8000000000000000) == 0)
        {
          v30 = 0;
          v31 = v76;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](v30, v14);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            v32 = [swift_unknownObjectRetain() identifier];
            v33 = sub_1D726207C();
            v35 = v34;

            swift_unknownObjectRelease_n();
            v37 = *(v76 + 16);
            v36 = *(v76 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1D5BFC364((v36 > 1), v37 + 1, 1);
            }

            ++v30;
            *(v76 + 16) = v37 + 1;
            v38 = v76 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v35;
          }

          while (v29 != v30);

          goto LABEL_51;
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      sub_1D725C4CC();
      sub_1D725C73C();

      if (!*(v0 + 160))
      {
        goto LABEL_56;
      }

      sub_1D725C87C();

      v16 = *(v0 + 168);

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v18 = *(v17 + 16);
      v19 = *(v14 + 16);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v20 <= *(v14 + 24) >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v14 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v22, 1, v14);
        if (*(v17 + 16))
        {
LABEL_28:
          if ((*(v14 + 24) >> 1) - *(v14 + 16) < v18)
          {
            goto LABEL_47;
          }

          swift_arrayInitWithCopy();

          v10 = v74;
          if (v18)
          {
            v23 = *(v14 + 16);
            v24 = __OFADD__(v23, v18);
            v25 = v23 + v18;
            if (v24)
            {
              goto LABEL_48;
            }

            *(v14 + 16) = v25;
          }

          continue;
        }
      }

      v10 = v74;
      if (v18)
      {
        goto LABEL_46;
      }
    }
  }

  v27 = *(v0 + 328);
  v26 = *(v0 + 336);
  v28 = *(v0 + 248);
  v71 = sub_1D5B86020(v14);

  v70 = *(v27 + 16);
  v70(v26, v4 + v72, v28);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7261D1C();
  v14 = static FeedCursorGroup.tags(from:excluding:)();

  if (v14 >> 62)
  {
    goto LABEL_49;
  }

  v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_34;
  }

LABEL_50:

  v31 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v42 = *(v0 + 336);
  v43 = *(v0 + 328);
  v45 = *(v0 + 240);
  v44 = *(v0 + 248);
  v46 = sub_1D5B86020(v31);

  (*(v45 + 152))(0, v71, v46, v44, v45);

  v47 = *(v43 + 8);
  *(v0 + 400) = v47;
  *(v0 + 408) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v42, v44);
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  v49 = *(v0 + 120);
  if (!v49)
  {
    goto LABEL_58;
  }

  v73 = *(v0 + 352);
  v69 = *(v0 + 344);
  v50 = *(v0 + 248);
  v51 = *(v0 + 224);
  v52 = *(v0 + 200);
  v53 = *(v0 + 208);
  v54 = *(v0 + 112);

  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1D5B7E2C0();
  *(v48 + 32) = v54;
  *(v48 + 40) = v49;
  v55 = *(v71 + 16);

  v56 = MEMORY[0x1E69E65A8];
  *(v48 + 96) = MEMORY[0x1E69E6530];
  *(v48 + 104) = v56;
  *(v48 + 72) = v55;
  sub_1D7262EDC();
  sub_1D725C30C();

  v57 = swift_allocBox();
  v70(v58, v69, v50);
  *(v0 + 176) = v57 | 0x1000000000000000;
  v59 = *(v53 + 24);
  v60 = swift_allocObject();
  *(v0 + 416) = v60;
  *(v60 + 16) = *(v51 + 112);
  *(v60 + 24) = *(v51 + 120);
  *(v60 + 40) = *(v51 + 136);
  v62 = v52[4];
  v61 = v52[5];
  v63 = v52[3];
  *(v60 + 80) = v52[2];
  *(v60 + 96) = v63;
  *(v60 + 112) = v62;
  *(v60 + 128) = v61;
  v64 = v52[1];
  *(v60 + 48) = *v52;
  *(v60 + 64) = v64;
  *(v60 + 144) = v53;
  v65 = *(v73 + 40);
  sub_1D5BA739C(v52, v0 + 16);
  v66 = *(v51 + 80);

  v75 = (v65 + *v65);
  v67 = swift_task_alloc();
  *(v0 + 424) = v67;
  *v67 = v0;
  v67[1] = sub_1D6833EE4;
  v68 = *(v0 + 352);

  return (v75)(v0 + 128, v0 + 176, v59, sub_1D6837394, v60, v66, v68);
}

uint64_t sub_1D6833EE4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1D6834578;
  }

  else
  {
    v2 = sub_1D6834014;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6834014()
{
  v39 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v34 = v0[54];
  v31 = v0[29];
  v5 = v0[16];
  (*(v0[41] + 56))(v0[40], 1, 1, v0[31]);
  v35 = 7;
  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v2, 1, 1, v6);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v8 = type metadata accessor for FeedContext();
  (*(*(v8 - 8) + 56))(v31, 1, 1, v8);
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v38 = 256;
  sub_1D68372C8(v5);
  v33 = v0[50];
  v32 = v0[43];
  v9 = v0[40];
  v27 = v0[39];
  v10 = v0[37];
  v29 = v0[38];
  v11 = v0[35];
  v28 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  v30 = v0[31];
  v14 = v0[29];
  if (v34)
  {

    v15 = v9;
    v16 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v14, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v13 + 8))(v11, v12);
    v17 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v28, &qword_1EDF45B00, MEMORY[0x1E6969530], v16, sub_1D5B76550);
    sub_1D5BA2558(v10, &qword_1EDF45B00, v17, v16, sub_1D5B76550);
    (*(v27 + 8))(v15, v29);
    v33(v32, v30);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v25 = v0[37];

    v26 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v9, 0, &v35, v10, v28, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v11, v14, v36, &v37, 0, 0, v20);

    v21 = v9;
    v22 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v14, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v13 + 8))(v11, v12);
    v23 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v28, &qword_1EDF45B00, MEMORY[0x1E6969530], v22, sub_1D5B76550);
    sub_1D5BA2558(v25, &qword_1EDF45B00, v23, v22, sub_1D5B76550);
    (*(v27 + 8))(v21, v29);
    v33(v32, v30);

    v24 = v0[1];

    return v24(v26);
  }
}

uint64_t sub_1D6834578()
{
  (*(v0 + 400))(*(v0 + 344), *(v0 + 248));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6834650(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = *v4;
  v6 = *a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  v5[29] = swift_task_alloc();
  v5[30] = *(v6 + 88);
  v8 = *(v6 + 80);
  v5[31] = v8;
  v5[32] = swift_getAssociatedTypeWitness();
  v9 = sub_1D726393C();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v10 = sub_1D726393C();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6834918, 0, 0);
}

uint64_t sub_1D6834918()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  v2 = *(v0 + 392);
  if (v2 == 2)
  {
    goto LABEL_53;
  }

  if (v2)
  {
    sub_1D725C4CC();
    sub_1D725C73C();

    v3 = *(v0 + 152);
    if (v3 != 1)
    {
      v42 = *(v0 + 208);
      v43 = *(v0 + 200);
      v44 = *(v0 + 184);
      sub_1D5D25B88(*(v0 + 144), v3);
      v45 = sub_1D682F014(v44, v43, v42);

      v46 = *(v0 + 8);

      return v46(v45);
    }
  }

  v4 = *(v0 + 224);
  v6 = v4[14];
  v5 = v4[15];
  v7 = v4[16];
  v8 = v4[17];
  v9 = sub_1D68358EC();
  v70 = v8;
  v71 = v7;
  v72 = v5;
  v73 = v6;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    for (i = 0; v10 != i; ++i)
    {
      if (i >= *(v9 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v32 = sub_1D7263BFC();
        if (!v32)
        {
          goto LABEL_47;
        }

LABEL_29:
        v76 = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v32 & ~(v32 >> 63), 0);
        if ((v32 & 0x8000000000000000) == 0)
        {
          v33 = 0;
          v34 = v76;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](v33, v9);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            v35 = [swift_unknownObjectRetain() identifier];
            v36 = sub_1D726207C();
            v38 = v37;

            swift_unknownObjectRelease_n();
            v40 = *(v76 + 16);
            v39 = *(v76 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_1D5BFC364((v39 > 1), v40 + 1, 1);
            }

            ++v33;
            *(v76 + 16) = v40 + 1;
            v41 = v76 + 16 * v40;
            *(v41 + 32) = v36;
            *(v41 + 40) = v38;
          }

          while (v32 != v33);

          goto LABEL_48;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      sub_1D725C4CC();
      sub_1D725C73C();

      if (!*(v0 + 160))
      {
        goto LABEL_52;
      }

      sub_1D725C87C();

      v13 = *(v0 + 168);

      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);
      v16 = *(v11 + 2);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v11 + 3) >> 1)
      {
        if (*(v14 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v11 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v19, 1, v11);
        if (*(v14 + 16))
        {
LABEL_22:
          if ((*(v11 + 3) >> 1) - *(v11 + 2) < v15)
          {
            goto LABEL_44;
          }

          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = *(v11 + 2);
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (v21)
            {
              goto LABEL_45;
            }

            *(v11 + 2) = v22;
          }

          continue;
        }
      }

      if (v15)
      {
        goto LABEL_43;
      }
    }
  }

  v75 = sub_1D5B86020(v11);

  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  v24 = *(v0 + 120);
  if (!v24)
  {
    goto LABEL_54;
  }

  v25 = *(v0 + 328);
  v26 = *(v0 + 336);
  v27 = *(v0 + 248);
  v28 = *(v0 + 184);
  v29 = *(v0 + 112);

  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1D5B7E2C0();
  *(v23 + 32) = v29;
  *(v23 + 40) = v24;
  v30 = *(v75 + 16);
  v31 = MEMORY[0x1E69E65A8];
  *(v23 + 96) = MEMORY[0x1E69E6530];
  *(v23 + 104) = v31;
  *(v23 + 72) = v30;
  sub_1D7262EDC();
  sub_1D725C30C();

  v68 = *(v25 + 16);
  v68(v26, v28 + *(*v28 + 256), v27);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7261D1C();
  v9 = static FeedCursorGroup.tags(from:excluding:)();

  if (v9 >> 62)
  {
    goto LABEL_46;
  }

  v32 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    goto LABEL_29;
  }

LABEL_47:

  v34 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v48 = *(v0 + 336);
  v47 = *(v0 + 344);
  v49 = *(v0 + 328);
  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v69 = *(v0 + 224);
  v52 = *(v0 + 200);
  v67 = *(v0 + 208);
  v53 = sub_1D5B86020(v34);

  (*(v51 + 152))(1, v75, v53, v50, v51);

  v54 = *(v49 + 8);
  *(v0 + 352) = v54;
  *(v0 + 360) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v48, v50);
  v55 = swift_allocBox();
  v68(v56, v47, v50);
  *(v0 + 176) = v55 | 0x1000000000000000;
  v57 = *(v67 + 24);
  v58 = swift_allocObject();
  *(v0 + 368) = v58;
  *(v58 + 16) = v73;
  *(v58 + 24) = v72;
  *(v58 + 32) = v71;
  *(v58 + 40) = v70;
  v60 = v52[4];
  v59 = v52[5];
  v61 = v52[3];
  *(v58 + 80) = v52[2];
  *(v58 + 96) = v61;
  *(v58 + 112) = v60;
  *(v58 + 128) = v59;
  v62 = v52[1];
  *(v58 + 48) = *v52;
  *(v58 + 64) = v62;
  *(v58 + 144) = v67;
  v63 = *(v69 + 96);
  v64 = *(v63 + 40);
  sub_1D5BA739C(v52, v0 + 16);
  v65 = *(v69 + 80);

  v74 = (v64 + *v64);
  v66 = swift_task_alloc();
  *(v0 + 376) = v66;
  *v66 = v0;
  v66[1] = sub_1D6835250;

  return (v74)(v0 + 128, v0 + 176, v57, sub_1D683739C, v58, v65, v63);
}

uint64_t sub_1D6835250()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1D6835820;
  }

  else
  {
    v2 = sub_1D6835380;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6835380()
{
  v37 = v0;
  v1 = v0[48];
  sub_1D68372C8(v0[16]);
  v2 = v0[44];
  v3 = v0[43];
  if (v1)
  {
    v4 = v0[31];

    v2(v3, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[40];
    v7 = v0[41];
    v30 = v0[39];
    v31 = v0[38];
    v23 = v0[37];
    v24 = v0[36];
    v25 = v0[35];
    v26 = v0[34];
    v27 = v0[33];
    v10 = v0[31];
    v9 = v0[32];
    v28 = v0[44];
    v29 = v0[43];
    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[25];

    v15 = sub_1D682F014(v14, v13, v12);

    (*(v7 + 56))(v8, 1, 1, v10);
    v32 = 7;
    v16 = sub_1D725891C();
    v17 = *(*(v16 - 8) + 56);
    v17(v23, 1, 1, v16);
    v17(v24, 1, 1, v16);
    (*(*(v9 - 8) + 56))(v25, 1, 1, v9);
    v18 = type metadata accessor for FeedContext();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v34 = 0;
    v35 = 0;
    v33 = 0u;
    v36 = 256;

    v19 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v8, 0, &v32, v23, v24, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v25, v11, &v33, &v35, 0, 0, v15);

    v20 = MEMORY[0x1E69E6720];
    sub_1D5BA2558(v11, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v26 + 8))(v25, v27);
    v21 = MEMORY[0x1E6969530];
    sub_1D5BA2558(v24, &qword_1EDF45B00, MEMORY[0x1E6969530], v20, sub_1D5B76550);
    sub_1D5BA2558(v23, &qword_1EDF45B00, v21, v20, sub_1D5B76550);
    (*(v30 + 8))(v8, v31);
    v28(v29, v10);

    v22 = v0[1];

    return v22(v19);
  }
}

uint64_t sub_1D6835820()
{
  (*(v0 + 352))(*(v0 + 344), *(v0 + 248));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68358EC()
{
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v23[-1] - v3;
  v24 = sub_1D725C4AC();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedCursorTrackerSnapshot();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-1] - v11;
  FeedCursorTracker.snapshot()(&v23[-1] - v11);
  v13 = *&v12[*(v8 + 36)];
  v14 = *(v9 + 8);

  v14(v12, v8);
  v15 = *(v13 + 16);
  if (!v15)
  {

    v16 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D5B9A6D8(*(v13 + 16), 0);
  v17 = sub_1D5B9A6EC(v23, v16 + 4, v15, v13);
  result = sub_1D5BA45DC(v23[0], v23[1], v23[2], v23[3], v23[4]);
  if (v17 != v15)
  {
    __break(1u);
    return result;
  }

  if (!v16[2])
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D6837340();
  sub_1D725C70C();
  sub_1D5B9A888(v16);

  sub_1D725C63C();

  v19 = sub_1D725C79C();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = sub_1D725C8CC();
  if (v0)
  {

    sub_1D5BA2558(v4, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    return (*(v22 + 8))(v7, v24);
  }

  else
  {
    v21 = v20;

    sub_1D5BA2558(v4, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    (*(v22 + 8))(v7, v24);
    return v21;
  }
}

char *sub_1D6835D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v41 = a8;
  v42 = a2;
  v10 = *a1;
  v48 = type metadata accessor for FeedContext;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v40[-v14];
  v46 = a1;
  v16 = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_1D726393C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v18);
  v20 = &v40[-v19];
  v44 = MEMORY[0x1E6969530];
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v11);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v40[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v40[-v27];
  v43 = sub_1D726393C();
  v29 = *(v43 - 8);
  v31 = MEMORY[0x1EEE9AC00](v43, v30);
  v33 = &v40[-v32];
  (*(*(v16 - 8) + 56))(&v40[-v32], 1, 1, v16, v31);
  v53 = v41;
  v34 = sub_1D725891C();
  (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
  sub_1D725C4CC();
  sub_1D725C73C();

  v35 = *(a3 + 40);
  (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1, AssociatedTypeWitness);
  v36 = type metadata accessor for FeedContext();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v52 = 0;
  v51 = 0u;
  v49 = 0;
  v50 = 256;
  v37 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v33, 0, &v53, v28, v24, 0, 0, 0, 0, 0, 0, 0, 1, v35, 0, 0, 1, 0, 0, v20, v15, &v51, &v49, *(a3 + 16), 0, 0);
  sub_1D5BA2558(v15, qword_1EDF34CA0, v48, v11, sub_1D5B76550);
  (*(v45 + 8))(v20, v47);
  v38 = v44;
  sub_1D5BA2558(v24, &qword_1EDF45B00, v44, v11, sub_1D5B76550);
  sub_1D5BA2558(v28, &qword_1EDF45B00, v38, v11, sub_1D5B76550);
  (*(v29 + 8))(v33, v43);
  return v37;
}

id *FeedDatabase.deinit()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 20));

  return v0;
}

uint64_t FeedDatabase.__deallocating_deinit()
{
  FeedDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6836390(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64680;

  return FeedDatabase.hotSwap(group:context:state:)(a1, a2, a3, a4);
}

uint64_t sub_1D6836478(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1D62CFA6C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1D68365A4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1D62CFBA8(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1D683669C(uint64_t a1)
{
  sub_1D5B76550(0, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for FeedLayoutCacheKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_1D5C1948C(*(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v11);
      sub_1D62D0B28(v11, v6);
      sub_1D5BF2EA8(v11);
      sub_1D5BA2558(v6, qword_1EDF38750, type metadata accessor for FeedLayoutCacheKey, MEMORY[0x1E69E6720], sub_1D5B76550);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1D6836900(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 && a3 != 2)
    {
      if (a3 == 3)
      {
      }

      return;
    }

LABEL_9:

    return;
  }

  if (a3 == 4 || a3 == 5 || a3 == 6)
  {
    goto LABEL_9;
  }
}

unint64_t sub_1D6836948()
{
  result = qword_1EDF15028;
  if (!qword_1EDF15028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15028);
  }

  return result;
}

uint64_t dispatch thunk of FeedDatabaseType.hotSwap(group:context:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 88) + **(a6 + 88));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5B64684;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D6836D34(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = *(*a2 + 272);

  swift_beginAccess();
  if (*&v10[v11])
  {
    for (i = FeedNextCursor.syncCursor.getter(); i; i = FeedNextCursor.syncCursor.getter())
    {
      v10 = i;

      v13 = *(*v10 + 272);
      swift_beginAccess();
      if (!*&v10[v13])
      {
        break;
      }
    }
  }

  while (1)
  {

    if (v10[32] == 3)
    {
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
      break;
    }

    sub_1D69D1420(v15, a8, &v18);
    if (v8)
    {
      break;
    }

    sub_1D725C6CC();
    sub_1D725C67C();

    v16 = sub_1D5BE1A00();
    sub_1D5BA7608(&v18);

    if (!v16)
    {
      return result;
    }

    v10 = v16;
  }
}

void sub_1D6836FE8()
{
  if (!qword_1EDF17C60)
  {
    sub_1D5BA4E90(255, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E62F8]);
    sub_1D5B9AD14(&unk_1EDF05260, &qword_1EDF05270, &type metadata for FeedJournalEntry);
    v0 = sub_1D725AD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C60);
    }
  }
}

uint64_t sub_1D68370E0(uint64_t a1)
{
  sub_1D5B67740(0, &unk_1EDF34940, &qword_1EDF34950, &protocol descriptor for FeedGroupType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D68371DC(uint64_t *a1)
{
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5F77AD4;

  return sub_1D68325E0(a1, v4, v5, v6, v7, (v1 + 10));
}

uint64_t sub_1D68372C8(uint64_t result)
{
  if (result < 0)
  {
    v2 = *((result & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v1 = *((result & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D6836948();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 4;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1D6837340()
{
  result = qword_1EDF153C0;
  if (!qword_1EDF153C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153C0);
  }

  return result;
}

uint64_t sub_1D68373D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  v8 = v2[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5E97EA8;

  return sub_1D68320D4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D68374D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2[4];
  v7[2] = v2[3];
  v7[3] = v3;
  v4 = v2[6];
  v7[4] = v2[5];
  v7[5] = v4;
  v5 = v2[2];
  v7[0] = v2[1];
  v7[1] = v5;
  return sub_1D5B9A19C(v1, v7);
}

uint64_t sub_1D6837528(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  v10 = v2[10];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D5F77AD4;

  return sub_1D682F804(a1, a2, v7, v8, v9, v11, v10, v6);
}

uint64_t objectdestroy_66Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D68376CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5F77AD4;

  return sub_1D6830EAC(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_92Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

id FormatGroupNodeMaskBasicLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FormatGroupNodeMaskBasicLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1D6837B34(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v2[*a1] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1D6837B9C(_BYTE *a1, uint64_t a2, void *a3, char a4)
{
  ObjectType = swift_getObjectType();
  a1[*a3] = a4;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id _s8NewsFeed29FormatGroupNodeMaskBasicLayerC5layerACyp_tcfC_0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id sub_1D6837C80(void *a1, void *a2, char a3)
{
  ObjectType = swift_getObjectType();
  v3[*a2] = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D72646AC();
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithLayer_, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id sub_1D6837D30(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  a1[*a4] = a5;
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v9 = sub_1D72646AC();
  v12.receiver = a1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithLayer_, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

id sub_1D6837DF8(void *a1, void *a2, char a3)
{
  ObjectType = swift_getObjectType();
  v3[*a2] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_1D6837E80(_BYTE *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  ObjectType = swift_getObjectType();
  a1[*a4] = a5;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, v10);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_1D6837FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D726207C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t FCMescalSignature.signature(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D683805C, 0, 0);
}

uint64_t sub_1D683805C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_1D5B58D88();
  *v4 = v0;
  v4[1] = sub_1D5F74EE4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x727574616E676973, 0xEF293A726F662865, sub_1D6838330, v3, v5);
}

void sub_1D6838160(uint64_t a1)
{
  sub_1D5F77808();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = objc_opt_self();
  v8 = sub_1D725865C();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_1D68384DC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6837FA4;
  aBlock[3] = &block_descriptor_49;
  v11 = _Block_copy(aBlock);

  [v7 signatureFromData:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D6838338(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    sub_1D5F77808();
    return sub_1D726286C();
  }

  else
  {
    sub_1D5F77808();

    return sub_1D726287C();
  }
}

uint64_t sub_1D68383B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D68383D8, 0, 0);
}

uint64_t sub_1D68383D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_1D5B58D88();
  *v4 = v0;
  v4[1] = sub_1D5F71F50;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x727574616E676973, 0xEF293A726F662865, sub_1D6838564, v3, v5);
}

uint64_t sub_1D68384DC(int a1, int a2, void *a3)
{
  sub_1D5F77808();

  return sub_1D6838338(a1, a2, a3);
}

uint64_t sub_1D6838568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D7261B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = 0x64616F6C6552;
  a3[1] = 0xE600000000000000;
  sub_1D5B68374(a1, (a3 + 2));
  v11 = type metadata accessor for FormatReloadBlueprintModifier(0);
  sub_1D683A074(a2, a3 + *(v11 + 28), type metadata accessor for FormatReloadRequest);
  sub_1D5B5DA7C();
  *v10 = sub_1D726308C();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = sub_1D7261BBC();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v14 = FormatContent.Resolved.slotItems.getter();
    MEMORY[0x1EEE9AC00](v14, v15);
    v18[-2] = a1;
    v18[-1] = a2;
    v16 = sub_1D719594C(sub_1D5E2B874, &v18[-4], v14);

    v18[0] = v16;
    sub_1D6838844();
    sub_1D683A02C(&qword_1EC88C7A8, sub_1D6838844);
    sub_1D683A02C(&qword_1EDF128F8, type metadata accessor for FormatModel);
    v17 = sub_1D72623BC();

    a3[7] = v17;
    sub_1D683A0F8(a2, type metadata accessor for FormatReloadRequest);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6838844()
{
  if (!qword_1EDF05160)
  {
    type metadata accessor for FormatModel();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05160);
    }
  }
}

void sub_1D68388C4()
{
  sub_1D6838970();
  if (v0 <= 0x3F)
  {
    sub_1D68389D4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FormatReloadRequest(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D6838970()
{
  result = qword_1EDF0DAA8;
  if (!qword_1EDF0DAA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF0DAA8);
  }

  return result;
}

void sub_1D68389D4()
{
  if (!qword_1EC88C7C0)
  {
    type metadata accessor for FormatModel();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C7C0);
    }
  }
}

void sub_1D6838A64()
{
  type metadata accessor for FormatPluginData();
  if (v0 <= 0x3F)
  {
    sub_1D5B81B04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6838AE8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v38 = a2;
  v34 = sub_1D725D85C();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v7);
  v33 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6839F18(0, &unk_1EDF17028, MEMORY[0x1E69D7ED8]);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v30 - v11;
  sub_1D5E2C53C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1D6839F18(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v30 - v18;
  v30[3] = a1;
  v20 = sub_1D725FA2C();
  v30[1] = v21;
  v30[2] = v20;
  v40 = v4;
  v22 = sub_1D5ECCF88(sub_1D683A00C, v39);
  sub_1D5E2C428(0);
  v24 = v23;
  v25 = sub_1D683A02C(&qword_1EDF17228, sub_1D5E2C428);
  v26 = sub_1D683A02C(&qword_1EDF17230, sub_1D5E2C428);
  MEMORY[0x1DA6F27E0](v22, v24, v25, v26);
  type metadata accessor for FormatSectionDescriptor();
  type metadata accessor for FormatModel();
  sub_1D683A02C(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
  sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
  sub_1D725FA1C();
  v28 = v33;
  v27 = v34;
  (*(v6 + 104))(v33, *MEMORY[0x1E69D7A40], v34);
  sub_1D683A02C(&unk_1EDF0D400, type metadata accessor for FormatSectionDescriptor);
  sub_1D725E4BC();
  (*(v6 + 8))(v28, v27);
  v38(v12);
  (*(v35 + 8))(v12, v36);
  return (*(v32 + 8))(v19, v31);
}

uint64_t sub_1D6838F54(uint64_t a1, uint64_t a2)
{
  sub_1D5E2C35C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FormatReloadBlueprintModifier(0);
  sub_1D683A074(a2 + *(v9 + 28), v8, type metadata accessor for FormatPluginData);
  v17 = a2;
  v10 = sub_1D5FBDA68(sub_1D683A0DC, v16);
  sub_1D5E2C2C8();
  v12 = v11;
  v13 = sub_1D683A02C(&qword_1EDF17260, sub_1D5E2C2C8);
  v14 = sub_1D683A02C(&qword_1EDF17268, sub_1D5E2C2C8);
  MEMORY[0x1DA6F27E0](v10, v12, v13, v14);
  type metadata accessor for FormatModel();
  sub_1D683A02C(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
  sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
  return sub_1D725D60C();
}

uint64_t sub_1D68391B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v125 = a3;
  v4 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v120 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v114 - v17;
  v119 = type metadata accessor for FormatModel();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v19);
  v115 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v116 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v114 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v118 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v114 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v114 = &v114 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v114 - v44;
  sub_1D5E2C2C8();
  v123 = v46;
  v121 = a1;
  sub_1D725CE7C();
  v124 = v45;
  v47 = v45;
  v48 = v18;
  sub_1D5C21B54(v47, v18, type metadata accessor for FeedItem);
  sub_1D683A074(v18, v14, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v120 = v31;
    sub_1D5C21B54(v14, v7, type metadata accessor for FeedHeadline);
    v88 = [v7[5] sourceChannel];
    if (v88)
    {
      v89 = v88;
      v90 = type metadata accessor for FormatReloadBlueprintModifier(0);
      v91 = v122;
      v92 = v122 + *(v90 + 28);
      v93 = *(v92 + *(type metadata accessor for FormatReloadRequest(0) + 20));
      v94 = [v89 identifier];
      v95 = sub_1D726207C();
      v97 = v96;

      LOBYTE(v93) = sub_1D5BE240C(v95, v97, v93);

      if (v93)
      {
        v98 = *(v91 + 56);
        v99 = FeedItem.identifier.getter();
        if (*(v98 + 16))
        {
          v101 = sub_1D5B69D90(v99, v100);
          v103 = v102;

          if (v103)
          {
            sub_1D683A074(*(v98 + 56) + *(v117 + 72) * v101, v27, type metadata accessor for FormatModel);
            v104 = v120;
            sub_1D5C21B54(v27, v120, type metadata accessor for FormatModel);
            sub_1D683A074(v104, v118, type metadata accessor for FormatModel);
            sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
            v105 = v125;
            sub_1D725CE6C();
            swift_unknownObjectRelease();
            sub_1D683A0F8(v104, type metadata accessor for FormatModel);
            sub_1D683A0F8(v48, type metadata accessor for FeedItem);
            sub_1D683A0F8(v7, type metadata accessor for FeedHeadline);
            (*(*(v123 - 8) + 56))(v105, 0, 1);
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      sub_1D683A0F8(v48, type metadata accessor for FeedItem);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D683A0F8(v18, type metadata accessor for FeedItem);
    }

    sub_1D683A0F8(v7, type metadata accessor for FeedHeadline);
    v109 = v123;
    v110 = *(v123 - 8);
    v111 = v125;
    (*(v110 + 16))(v125, v121, v123);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v68 = v14[7];
    v126[6] = v14[6];
    v127[0] = v68;
    *(v127 + 9) = *(v14 + 121);
    v69 = v14[3];
    v126[2] = v14[2];
    v126[3] = v69;
    v70 = v14[5];
    v126[4] = v14[4];
    v126[5] = v70;
    v71 = v14[1];
    v126[0] = *v14;
    v126[1] = v71;
    v72 = type metadata accessor for FormatReloadBlueprintModifier(0);
    v73 = v122;
    v74 = v122 + *(v72 + 28);
    v75 = *(v74 + *(type metadata accessor for FormatReloadRequest(0) + 20));
    v76 = [objc_msgSend(*&v126[0] sourceChannel)];
    swift_unknownObjectRelease();
    v77 = sub_1D726207C();
    v79 = v78;

    LOBYTE(v75) = sub_1D5BE240C(v77, v79, v75);

    if (v75)
    {
      v80 = *(v73 + 56);
      v81 = FeedItem.identifier.getter();
      if (*(v80 + 16))
      {
        v83 = sub_1D5B69D90(v81, v82);
        v85 = v84;

        if (v85)
        {
          v86 = v115;
          sub_1D683A074(*(v80 + 56) + *(v117 + 72) * v83, v115, type metadata accessor for FormatModel);
          v87 = v116;
          sub_1D5C21B54(v86, v116, type metadata accessor for FormatModel);
          sub_1D683A074(v87, v118, type metadata accessor for FormatModel);
          sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
          v65 = v125;
          sub_1D725CE6C();
          sub_1D5ECF320(v126);
          sub_1D683A0F8(v87, type metadata accessor for FormatModel);
          v66 = type metadata accessor for FeedItem;
          v67 = v18;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    sub_1D683A0F8(v18, type metadata accessor for FeedItem);
    sub_1D5ECF320(v126);
    goto LABEL_25;
  }

  v50 = v122;
  if (EnumCaseMultiPayload != 12)
  {
    sub_1D683A0F8(v18, type metadata accessor for FeedItem);
    v106 = v123;
    v107 = *(v123 - 8);
    v108 = v125;
    (*(v107 + 16))(v125, v121, v123);
    (*(v107 + 56))(v108, 0, 1, v106);
    sub_1D683A0F8(v14, type metadata accessor for FeedItem);
    goto LABEL_30;
  }

  v51 = v120;
  sub_1D5C21B54(v14, v120, type metadata accessor for FeedRecipe);
  v52 = v50 + *(type metadata accessor for FormatReloadBlueprintModifier(0) + 28);
  v53 = *(v52 + *(type metadata accessor for FormatReloadRequest(0) + 20));
  v54 = [objc_msgSend(*(v51 + 56) sourceChannel)];
  swift_unknownObjectRelease();
  v55 = sub_1D726207C();
  v57 = v56;

  LOBYTE(v53) = sub_1D5BE240C(v55, v57, v53);

  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

  v58 = *(v50 + 56);
  v59 = FeedItem.identifier.getter();
  if (!*(v58 + 16))
  {

    goto LABEL_24;
  }

  v61 = sub_1D5B69D90(v59, v60);
  v63 = v62;

  if ((v63 & 1) == 0)
  {
LABEL_24:
    sub_1D683A0F8(v48, type metadata accessor for FeedItem);
    sub_1D683A0F8(v51, type metadata accessor for FeedRecipe);
LABEL_25:
    v109 = v123;
    v110 = *(v123 - 8);
    v111 = v125;
    (*(v110 + 16))(v125, v121, v123);
LABEL_29:
    (*(v110 + 56))(v111, 0, 1, v109);
    goto LABEL_30;
  }

  sub_1D683A074(*(v58 + 56) + *(v117 + 72) * v61, v38, type metadata accessor for FormatModel);
  v64 = v114;
  sub_1D5C21B54(v38, v114, type metadata accessor for FormatModel);
  sub_1D683A074(v64, v118, type metadata accessor for FormatModel);
  sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
  v65 = v125;
  sub_1D725CE6C();
  sub_1D683A0F8(v64, type metadata accessor for FormatModel);
  sub_1D683A0F8(v48, type metadata accessor for FeedItem);
  v66 = type metadata accessor for FeedRecipe;
  v67 = v51;
LABEL_12:
  sub_1D683A0F8(v67, v66);
  (*(*(v123 - 8) + 56))(v65, 0, 1);
LABEL_30:
  sub_1D683A158();
  return sub_1D683A1C4(&v124[*(v112 + 48)]);
}

void sub_1D6839F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D683A02C(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D683A02C(&qword_1EDF128E0, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D683A02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D683A074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D683A0F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D683A158()
{
  if (!qword_1EDF13030)
  {
    type metadata accessor for FeedItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF13030);
    }
  }
}

uint64_t FormatCommandState.description.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      if (*v0)
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }
    }

    else
    {
      sub_1D5E4049C();
      return sub_1D7263ADC();
    }
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t sub_1D683A2D0()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      if (*v0)
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }
    }

    else
    {
      sub_1D5E4049C();
      return sub_1D7263ADC();
    }
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t _s8NewsFeed18FormatCommandStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_1D5D07BA8(*a1, v3, 1);
        sub_1D5D07BA8(v5, v6, 1);
        v8 = v5 ^ v2 ^ 1;
        return v8 & 1;
      }
    }

    else if (v7 == 2)
    {
      sub_1D5D07BA8(*a1, v3, 2);
      sub_1D5D07BA8(v5, v6, 2);
      v8 = v2 == v5;
      return v8 & 1;
    }

LABEL_9:
    sub_1D5D03180(v5, v6, v7);
    sub_1D5D07BA8(v2, v3, v4);
    sub_1D5D07BA8(v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (*(a2 + 16))
  {

    goto LABEL_9;
  }

  v10 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1D5D03180(v10, v3, 0);
    sub_1D5D03180(v2, v3, 0);
    sub_1D5D07BA8(v2, v3, 0);
    sub_1D5D07BA8(v2, v3, 0);
    v8 = 1;
    return v8 & 1;
  }

  v12 = sub_1D72646CC();
  sub_1D5D03180(v5, v6, 0);
  sub_1D5D03180(v2, v3, 0);
  sub_1D5D07BA8(v2, v3, 0);
  sub_1D5D07BA8(v5, v6, 0);
  return v12 & 1;
}

unint64_t sub_1D683A510(uint64_t a1)
{
  result = sub_1D683A538();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D683A538()
{
  result = qword_1EC88C7E0;
  if (!qword_1EC88C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C7E0);
  }

  return result;
}

unint64_t sub_1D683A58C(void *a1)
{
  a1[1] = sub_1D5C71444();
  a1[2] = sub_1D66F0F2C();
  result = sub_1D683A5C4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D683A5C4()
{
  result = qword_1EC88C7E8;
  if (!qword_1EC88C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C7E8);
  }

  return result;
}

uint64_t sub_1D683A634@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v87 = a4;
  v103[1] = *MEMORY[0x1E69E9840];
  sub_1D5BFC960(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v88 = &v83 - v11;
  sub_1D5BFC960(0, &qword_1EC88C7F0, type metadata accessor for FormatContentSlotItem);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v96 = &v83 - v14;
  v95 = type metadata accessor for FormatContentSlotItem();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v15);
  v94 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v91 = &v83 - v19;
  v90 = 0;
  v20 = type metadata accessor for FormatOption();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = (&v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[3];
  v101 = a1[2];
  v102 = v25;
  v26 = a1[1];
  v99 = *a1;
  v100 = v26;
  v85 = v99;
  v27 = v25;
  v28 = *(v25 + 16);
  v92 = a2;
  v86 = a5;
  v89 = a3;
  v84 = *(&v99 + 1);
  if (v28)
  {
    v98[0] = MEMORY[0x1E69E7CC0];

    sub_1D69988B8(0, v28, 0);
    v29 = v98[0];
    v30 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v31 = *(v21 + 72);
    do
    {
      sub_1D5D2538C(v30, v24, type metadata accessor for FormatOption);
      v32 = *v24;
      v33 = v24[1];
      v34 = v24[2];

      sub_1D5D28984(v24, type metadata accessor for FormatOption);
      v98[0] = v29;
      a3 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (a3 >= v35 >> 1)
      {
        sub_1D69988B8((v35 > 1), a3 + 1, 1);
        v29 = v98[0];
      }

      *(v29 + 16) = a3 + 1;
      v36 = (v29 + 24 * a3);
      v36[4] = v32;
      v36[5] = v33;
      v36[6] = v34;
      v30 += v31;
      --v28;
    }

    while (v28);
    v83 = v29;
    a2 = v92;
  }

  else
  {

    v83 = MEMORY[0x1E69E7CC0];
  }

  v37 = v100;
  v39 = v100 + 56;
  v38 = *(v100 + 56);
  v103[0] = v100;
  v40 = 1 << *(v100 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v38;
  v43 = (v40 + 63) >> 6;
  v44 = (v93 + 48);
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v97 = MEMORY[0x1E69E7CC0];
  for (i = v90; v42; a2 = v92)
  {
LABEL_17:
    while (1)
    {
      v49 = (*(v37 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v42)))));
      a3 = v49[1];
      v42 &= v42 - 1;
      v98[0] = *v49;
      v98[1] = a3;

      v50 = v96;
      sub_1D683B068(v98, a2, &v99, v96);

      if ((*v44)(v50, 1, v95) != 1)
      {
        break;
      }

      sub_1D683C3B4(v50, &qword_1EC88C7F0, type metadata accessor for FormatContentSlotItem);
      if (!v42)
      {
        goto LABEL_13;
      }
    }

    a3 = v91;
    sub_1D683C490(v50, v91, type metadata accessor for FormatContentSlotItem);
    sub_1D683C490(a3, v94, type metadata accessor for FormatContentSlotItem);
    v51 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_1D6995118(0, v97[2] + 1, 1, v97);
    }

    v53 = v97[2];
    v52 = v97[3];
    if (v53 >= v52 >> 1)
    {
      v97 = sub_1D6995118(v52 > 1, v53 + 1, 1, v97);
    }

    v54 = v97;
    v97[2] = v53 + 1;
    sub_1D683C490(v94, v54 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v53, type metadata accessor for FormatContentSlotItem);
    i = v51;
  }

  while (1)
  {
LABEL_13:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v48 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v48);
    ++v46;
    if (v42)
    {
      v46 = v48;
      goto LABEL_17;
    }
  }

  sub_1D5D28984(v103, sub_1D5B81B04);
  v42 = v89;
  v39 = v88;
  sub_1D683C410(v89, v88);
  v55 = type metadata accessor for FeedContext();
  if ((*(*(v55 - 8) + 48))(v39, 1, v55) == 1)
  {
    sub_1D683C3B4(v42, qword_1EDF34CA0, type metadata accessor for FeedContext);

    sub_1D683C3B4(v39, qword_1EDF34CA0, type metadata accessor for FeedContext);
    v56 = *(&v102 + 1);
  }

  else
  {
    v57 = *(&v102 + 1);
    v58 = *(v39 + *(v55 + 40));

    v59 = sub_1D5D6021C(v87, v58);
    v60 = *(v59 + 16);
    v61 = *(v57 + 16);
    v90 = i;
    if (v60 > v61 >> 3)
    {

      v37 = sub_1D6E14F70(v59, v57);
    }

    else
    {
      v98[0] = v57;

      sub_1D6836478(v59);

      v37 = v98[0];
    }

    v63 = *(v37 + 32);
    a3 = ((1 << v63) + 63) >> 6;
    v45 = 8 * a3;
    if ((v63 & 0x3Fu) > 0xD)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v94 = &v83;
      MEMORY[0x1EEE9AC00](v62, v45);
      v65 = &v83 - ((v64 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v65, v64);
      v66 = 0;
      v42 = v37 + 56;
      v67 = 1 << *(v37 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v69 = v68 & *(v37 + 56);
      v39 = (v67 + 63) >> 6;
      v95 = 0;
      v96 = "ormatGroupNodeMaskGradientLayer";
      while (v69)
      {
        v70 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
LABEL_41:
        v73 = v70 | (v66 << 6);

        if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
        {
        }

        else
        {
          v74 = sub_1D726230C();

          if ((v74 & 1) == 0)
          {
            *&v65[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
            if (__OFADD__(v95++, 1))
            {
              __break(1u);
LABEL_47:
              v56 = sub_1D6EC09F8(v65, a3, v95, v37);
              v42 = v89;
              v39 = v88;
              goto LABEL_48;
            }
          }
        }
      }

      v71 = v66;
      while (1)
      {
        v66 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v66 >= v39)
        {
          goto LABEL_47;
        }

        v72 = *(v42 + 8 * v66);
        ++v71;
        if (v72)
        {
          v70 = __clz(__rbit64(v72));
          v69 = (v72 - 1) & v72;
          goto LABEL_41;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      v81 = v45;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v45 = v81;
    }

    v82 = swift_slowAlloc();
    v56 = sub_1D70E22F0(v82, a3, v37, sub_1D70E2238);

    MEMORY[0x1DA6FD500](v82, -1, -1);
LABEL_48:
    sub_1D683C3B4(v42, qword_1EDF34CA0, type metadata accessor for FeedContext);
    sub_1D5D28984(v39, type metadata accessor for FeedContext);
  }

  v76 = v85;
  v77 = MEMORY[0x1E69E7CC0];
  result = sub_1D5E3FABC(&v99);
  v79 = v86;
  v80 = v84;
  *v86 = v76;
  v79[1] = v80;
  v79[2] = v83;
  v79[3] = v77;
  v79[4] = v97;
  v79[5] = v56;
  return result;
}

uint64_t sub_1D683B068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  sub_1D5BFC960(0, &unk_1EDF22738, type metadata accessor for FormatContentSlotItemObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v49 - v9);
  v11 = type metadata accessor for FormatContentSlotItemObject();
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  if (!*(a2 + 16) || (v27 = sub_1D5B69D90(*a1, a1[1]), (v28 & 1) == 0))
  {
    v34 = type metadata accessor for FormatContentSlotItem();
    return (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  }

  sub_1D5D2538C(*(a2 + 56) + *(v15 + 72) * v27, v22, type metadata accessor for FeedItem);
  sub_1D683C490(v22, v26, type metadata accessor for FeedItem);
  sub_1D5D2538C(v26, v18, type metadata accessor for FeedItem);
  v29 = *(a3 + 16);
  v53[0] = *a3;
  v53[1] = v29;
  v30 = *(a3 + 48);
  v53[2] = *(a3 + 32);
  v53[3] = v30;
  sub_1D5E3FA60(a3, v52);
  v31 = v51;
  sub_1D6E7E0A4(v18, v53, v10);
  if (v31)
  {

    sub_1D5D28984(v26, type metadata accessor for FeedItem);
    (*(v50 + 56))(v10, 1, 1, v11);
    sub_1D683C3B4(v10, &unk_1EDF22738, type metadata accessor for FormatContentSlotItemObject);
    v32 = type metadata accessor for FormatContentSlotItem();
    return (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  }

  (*(v50 + 56))(v10, 0, 1, v11);
  v35 = v10;
  v36 = v49;
  sub_1D683C490(v35, v49, type metadata accessor for FormatContentSlotItemObject);
  v37 = *(a3 + 40);
  v38 = FeedItem.identifier.getter();
  if (*(v37 + 16))
  {
    v40 = sub_1D5B69D90(v38, v39);
    v42 = v41;

    if (v42)
    {
      v51 = *(*(v37 + 56) + 16 * v40);
      v43 = v54;
      sub_1D5D2538C(v36, v54, type metadata accessor for FormatContentSlotItemObject);
      *v52 = v51;

      sub_1D69302CC(v52, v53);
      sub_1D5D28984(v36, type metadata accessor for FormatContentSlotItemObject);
      sub_1D5D28984(v26, type metadata accessor for FeedItem);
      v44 = v53[0];
      v45 = type metadata accessor for FormatContentSlotItem();
      *(v43 + *(v45 + 20)) = v44;
      return (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
    }
  }

  else
  {
  }

  sub_1D5D28984(v26, type metadata accessor for FeedItem);
  v46 = v54;
  sub_1D683C490(v36, v54, type metadata accessor for FormatContentSlotItemObject);
  v47 = type metadata accessor for FormatContentSlotItem();
  v48 = (v46 + *(v47 + 20));
  *v48 = 0;
  v48[1] = 0;
  return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
}

uint64_t sub_1D683B5D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v76 = a3;
  v95 = *MEMORY[0x1E69E9840];
  sub_1D5BFC960(0, &qword_1EC88C7F0, type metadata accessor for FormatContentSlotItem);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v76 - v7;
  v86 = type metadata accessor for FormatContentSlotItem();
  v82 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v76 - v13;
  sub_1D5BFC960(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v79 = &v76 - v16;
  v17 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v84 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatOption();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[3];
  v92 = a1[2];
  v93 = v25;
  v26 = a1[1];
  v90 = *a1;
  v91 = v26;
  v94 = v90;
  v27 = v26;
  v28 = *(v26 + 16);
  v83 = v8;
  v77 = a2;
  if (v28)
  {
    v89 = MEMORY[0x1E69E7CC0];

    sub_1D69988B8(0, v28, 0);
    v29 = v89;
    v30 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v88 = *(v21 + 72);
    do
    {
      sub_1D5D2538C(v30, v24, type metadata accessor for FormatOption);
      v32 = *v24;
      v31 = v24[1];
      v33 = v24[2];

      sub_1D5D28984(v24, type metadata accessor for FormatOption);
      v89 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D69988B8((v35 > 1), v36 + 1, 1);
        v29 = v89;
      }

      *(v29 + 16) = v36 + 1;
      v37 = (v29 + 24 * v36);
      v37[4] = v32;
      v37[5] = v31;
      v37[6] = v33;
      v30 += v88;
      --v28;
    }

    while (v28);
    a2 = v77;
    v8 = v83;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v80 = v29;
  v38 = v92;
  v39 = *(v92 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  v41 = v84;
  if (!v39)
  {
    v44 = v78;
LABEL_21:
    v49 = v79;
    sub_1D683C410(a2, v79);
    v50 = type metadata accessor for FeedContext();
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      sub_1D683C3B4(a2, qword_1EDF34CA0, type metadata accessor for FeedContext);
      sub_1D683C3B4(v49, qword_1EDF34CA0, type metadata accessor for FeedContext);
      v51 = *(&v91 + 1);

      v52 = v80;
    }

    else
    {
      v53 = *(&v91 + 1);
      v54 = *(v49 + *(v50 + 40));

      v55 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v54);
      if (*(v55 + 16) <= *(v53 + 16) >> 3)
      {
        v89 = v53;

        sub_1D6836478(v55);

        v88 = v89;
      }

      else
      {

        v88 = sub_1D6E14F70(v55, v53);
      }

      v58 = *(v88 + 32);
      v43 = ((1 << v58) + 63) >> 6;
      v34 = 8 * v43;
      if ((v58 & 0x3Fu) > 0xD)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v83 = &v76;
        v84 = v43;
        MEMORY[0x1EEE9AC00](v56, v34);
        v85 = &v76 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v85, v59);
        v60 = 0;
        v61 = v88 + 56;
        v62 = 1 << *(v88 + 32);
        v63 = -1;
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        v64 = v63 & *(v88 + 56);
        v65 = (v62 + 63) >> 6;
        v86 = 0;
        v87 = "ormatGroupNodeMaskGradientLayer";
        while (v64)
        {
          v66 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
LABEL_39:
          v43 = v66 | (v60 << 6);
          v52 = *(*(v88 + 48) + 16 * v43 + 8);

          if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
          {
          }

          else
          {
            v69 = sub_1D726230C();

            if ((v69 & 1) == 0)
            {
              *&v85[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
              if (__OFADD__(v86++, 1))
              {
                __break(1u);
LABEL_45:
                v51 = sub_1D6EC09F8(v85, v84, v86, v88);
                goto LABEL_46;
              }
            }
          }
        }

        v67 = v60;
        v52 = v80;
        while (1)
        {
          v60 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v60 >= v65)
          {
            goto LABEL_45;
          }

          v68 = *(v61 + 8 * v60);
          ++v67;
          if (v68)
          {
            v66 = __clz(__rbit64(v68));
            v64 = (v68 - 1) & v68;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v73 = v34;

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v34 = v73;
      }

      v74 = swift_slowAlloc();
      v75 = sub_1D70E22F0(v74, v43, v88, sub_1D70E2238);
      if (v44)
      {

        result = MEMORY[0x1DA6FD500](v74, -1, -1);
        __break(1u);
        return result;
      }

      v51 = v75;

      MEMORY[0x1DA6FD500](v74, -1, -1);
      v52 = v80;
LABEL_46:
      sub_1D683C3B4(v77, qword_1EDF34CA0, type metadata accessor for FeedContext);
      sub_1D5D28984(v79, type metadata accessor for FeedContext);
    }

    result = sub_1D5CB6FB4(&v90);
    v71 = *(&v94 + 1);
    v72 = v76;
    *v76 = v94;
    v72[1] = v71;
    v72[2] = v52;
    v72[3] = MEMORY[0x1E69E7CC0];
    v72[4] = v40;
    v72[5] = v51;
    return result;
  }

  v42 = 0;
  v43 = v82 + 48;
  v44 = v78;
  while (1)
  {
    if (v42 >= *(v38 + 16))
    {
      goto LABEL_49;
    }

    sub_1D5D2538C(v38 + ((v87[80] + 32) & ~v87[80]) + *(v87 + 9) * v42, v41, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D683C06C(v41, &v90, v8);
    if (v44)
    {
      break;
    }

    sub_1D5D28984(v41, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v43)(v8, 1, v86) == 1)
    {
      sub_1D683C3B4(v8, &qword_1EC88C7F0, type metadata accessor for FormatContentSlotItem);
    }

    else
    {
      v45 = v8;
      v46 = v81;
      sub_1D683C490(v45, v81, type metadata accessor for FormatContentSlotItem);
      sub_1D683C490(v46, v85, type metadata accessor for FormatContentSlotItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1D6995118(0, v40[2] + 1, 1, v40);
      }

      v48 = v40[2];
      v47 = v40[3];
      if (v48 >= v47 >> 1)
      {
        v40 = sub_1D6995118(v47 > 1, v48 + 1, 1, v40);
      }

      v40[2] = v48 + 1;
      sub_1D683C490(v85, v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v48, type metadata accessor for FormatContentSlotItem);
      v8 = v83;
      v41 = v84;
    }

    if (v39 == ++v42)
    {
      goto LABEL_21;
    }
  }

  sub_1D5BFB68C(&v94);
  sub_1D5CB6FB4(&v90);
  sub_1D683C3B4(a2, qword_1EDF34CA0, type metadata accessor for FeedContext);
  sub_1D5D28984(v41, type metadata accessor for FormatContentSlotItemObject.Resolved);
}

uint64_t sub_1D683C06C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v7 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D2538C(a1, v10, type metadata accessor for FormatContentSlotItemObject.Resolved);
  v15 = a2[6];
  v16 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v15 + 16))
  {
    v18 = sub_1D5B69D90(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v15 + 56) + 8 * v18);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v22 = a2[5];
  v23 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v22 + 16))
  {
    *&v41 = a1;
    sub_1D5B69D90(v23, v24);
    v26 = v25;

    if (v26)
    {
    }

    else
    {
      v27 = MEMORY[0x1E69E7CD0];
    }

    v4 = v3;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CD0];
  }

  result = sub_1D6E7F164(v10, v21, v27, v14);
  if (!v4)
  {
    v29 = a2[7];
    v30 = FormatContentSlotItemObject.Resolved.identifier.getter();
    if (*(v29 + 16))
    {
      v32 = sub_1D5B69D90(v30, v31);
      v34 = v33;

      if (v34)
      {
        v41 = *(*(v29 + 56) + 16 * v32);
        v35 = v44;
        sub_1D5D2538C(v14, v44, type metadata accessor for FormatContentSlotItemObject);
        v42 = v41;

        sub_1D69302CC(&v42, v43);
        sub_1D5D28984(v14, type metadata accessor for FormatContentSlotItemObject);
        v36 = v43[0];
        v37 = v43[1];
        v38 = type metadata accessor for FormatContentSlotItem();
        v39 = (v35 + *(v38 + 20));
        *v39 = v36;
        v39[1] = v37;
LABEL_18:
        type metadata accessor for FormatContentSlotItem();
        return (*(*(v38 - 8) + 56))(v35, 0, 1, v38);
      }
    }

    else
    {
    }

    v35 = v44;
    sub_1D683C490(v14, v44, type metadata accessor for FormatContentSlotItemObject);
    v38 = type metadata accessor for FormatContentSlotItem();
    v40 = (v35 + *(v38 + 20));
    *v40 = 0;
    v40[1] = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1D683C3B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BFC960(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D683C410(uint64_t a1, uint64_t a2)
{
  sub_1D5BFC960(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D683C490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D683C508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1D683D3D4();
  v4 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D683D4DC(0, &qword_1EDF03828, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D683D434();
  v14 = v38;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v37;
  v38 = v10;
  LOBYTE(v39) = 0;
  v17 = sub_1D72642BC();
  v35 = v18;
  LOBYTE(v39) = 1;
  v31 = sub_1D726422C();
  v32 = v17;
  v34 = v19;
  LOBYTE(v39) = 2;
  v20 = sub_1D726434C();
  v33 = 0;
  if (v20)
  {
    v40 = 2;
    sub_1D66F5F58();
    v21 = v4;
    sub_1D726431C();
    v22 = v13;
    v23 = sub_1D725A74C();
    v24 = v21;
    v25 = v23;
    (*(v15 + 8))(v7, v24);
  }

  else
  {
    v22 = v13;
    v25 = MEMORY[0x1E69E7CC0];
  }

  v37 = a1;
  sub_1D683D540(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
  v40 = 3;
  sub_1D683D5F8(&qword_1EDF04A98, sub_1D5F0E5E8);
  sub_1D726431C();
  v26 = v36;
  (*(v38 + 8))(v22, v9);
  v27 = v39;
  v28 = v31;
  v30 = v34;
  v29 = v35;
  *v26 = v32;
  *(v26 + 8) = v29;
  *(v26 + 16) = v28;
  *(v26 + 24) = v30;
  *(v26 + 32) = v25;
  *(v26 + 40) = v27;
  *(v26 + 48) = 2;

  __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D683CB28(void *a1)
{
  sub_1D683D4DC(0, &qword_1EC88C7F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v20 = v1[3];
  v21 = v9;
  v10 = v1[4];
  v18 = v1[5];
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D683D434();
  sub_1D7264B5C();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v18;
    v13 = v19;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    v14 = MEMORY[0x1E69E6720];
    sub_1D683D540(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D683D590(&qword_1EDF054F0, &qword_1EDF43BE0, v14);
    sub_1D726443C();
    v23 = v13;
    v25 = 2;
    v15 = MEMORY[0x1E69E62F8];
    sub_1D683D540(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D683D590(&qword_1EDF04A90, &qword_1EDF43BA0, v15);
    sub_1D726443C();
    v23 = v12;
    v25 = 3;
    sub_1D683D540(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D683D5F8(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D683CE64()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D683CF68()
{
  sub_1D72621EC();
}

uint64_t sub_1D683D058()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D683D158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D683D7A0();
  *a1 = result;
  return result;
}

void sub_1D683D188(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xE600000000000000;
  v6 = 0x736449676174;
  v7 = 0xEE0073656372756FLL;
  v8 = 0x53617461446C7275;
  if (v2 != 3)
  {
    v8 = 0x72756F5361746164;
    v7 = 0xEA00000000006563;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x615465756761656CLL;
    v3 = 0xEB00000000644967;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D683D248()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x736449676174;
  v4 = 0x53617461446C7275;
  if (v1 != 3)
  {
    v4 = 0x72756F5361746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x615465756761656CLL;
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

uint64_t sub_1D683D304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D683D7A0();
  *a1 = result;
  return result;
}

uint64_t sub_1D683D32C(uint64_t a1)
{
  v2 = sub_1D683D434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D683D368(uint64_t a1)
{
  v2 = sub_1D683D434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D683D3D4()
{
  if (!qword_1EDF3BB80)
  {
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB80);
    }
  }
}

unint64_t sub_1D683D434()
{
  result = qword_1EDF06138;
  if (!qword_1EDF06138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06138);
  }

  return result;
}

unint64_t sub_1D683D488()
{
  result = qword_1EDF15EE0;
  if (!qword_1EDF15EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15EE0);
  }

  return result;
}

void sub_1D683D4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D683D434();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseStandingItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D683D540(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D683D590(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D683D540(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D683D5F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D683D540(255, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D683D69C()
{
  result = qword_1EC88C800;
  if (!qword_1EC88C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C800);
  }

  return result;
}

unint64_t sub_1D683D6F4()
{
  result = qword_1EDF06128;
  if (!qword_1EDF06128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06128);
  }

  return result;
}

unint64_t sub_1D683D74C()
{
  result = qword_1EDF06130;
  if (!qword_1EDF06130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06130);
  }

  return result;
}

uint64_t sub_1D683D7A0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

NewsFeed::BundleSessionStrategy_optional __swiftcall BundleSessionStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BundleSessionStrategy.rawValue.getter()
{
  v1 = 0x6465786966;
  if (*v0 != 1)
  {
    v1 = 1869440356;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t sub_1D683D894(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6465786966;
  if (v2 != 1)
  {
    v4 = 1869440356;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6769666E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6465786966;
  if (*a2 != 1)
  {
    v8 = 1869440356;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6769666E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D683D97C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D683DA10()
{
  sub_1D72621EC();
}

uint64_t sub_1D683DA90()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D683DB2C(uint64_t a1)
{
  v2 = sub_1D5B780CC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D683DB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B780CC();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t FormatPuzzleStatisticBinding.Image.image(from:context:imageContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for FeedPuzzleStatistic();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  if (*v3)
  {
    v11 = swift_allocObject();
    v12 = *(a2 + 80);
    v13 = *(a2 + 112);
    v32 = *(a2 + 96);
    v33 = v13;
    v34 = *(a2 + 128);
    v14 = *(a2 + 64);
    v29 = *(a2 + 48);
    v30 = v14;
    v31 = v12;
    sub_1D683EAA8(a1, &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedPuzzleStatistic);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    sub_1D683EA2C(&v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 88) = v31;
    v17 = v33;
    *(v11 + 104) = v32;
    *(v11 + 120) = v17;
    v18 = v30;
    *(v11 + 56) = v29;
    *(v11 + 48) = 1;
    *(v11 + 136) = v34;
    *(v11 + 72) = v18;
    v19 = sub_1D683EA90;
  }

  else
  {
    v11 = swift_allocObject();
    v20 = *(a2 + 80);
    v21 = *(a2 + 112);
    v32 = *(a2 + 96);
    v33 = v21;
    v34 = *(a2 + 128);
    v22 = *(a2 + 64);
    v29 = *(a2 + 48);
    v30 = v22;
    v31 = v20;
    sub_1D683EAA8(a1, &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeedPuzzleStatistic);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    sub_1D683EA2C(&v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v23);
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 88) = v31;
    v24 = v33;
    *(v11 + 104) = v32;
    *(v11 + 120) = v24;
    v25 = v30;
    *(v11 + 56) = v29;
    *(v11 + 48) = 1;
    *(v11 + 136) = v34;
    *(v11 + 72) = v25;
    v19 = sub_1D683EB10;
  }

  *(v11 + 144) = v19;
  *(v11 + 152) = v16;
  result = sub_1D683EAA8(&v29, v28, sub_1D671E290);
  *a3 = v11 | 0x2000000000000000;
  return result;
}

uint64_t sub_1D683DE90@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v42 = sub_1D725895C();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A59C(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v41 - v22;
  v24 = a1 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
  v25 = type metadata accessor for PuzzleStatistic();
  sub_1D683EAA8(v24 + *(v25 + 20), v15, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D67B7068(v15, v23);
    sub_1D67B6B70(v23, v19);
    v26 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
    {
      sub_1D683ED9C(v23, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D683ED9C(v19, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

    else
    {
      sub_1D683EAA8(v19, v11, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D683EDF8(v19, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v30 = &v11[*(v8 + 24)];
      v31 = *(v30 + 2);
      v32 = *(v30 + 4);
      v33 = *(v30 + 5);

      sub_1D5F13DE4(v32, v33);
      sub_1D683EDF8(v11, type metadata accessor for PuzzleLeaderboardEntry);
      if (v33 >> 60 == 15)
      {

        sub_1D5B952E4(v32, v33);
        sub_1D683ED9C(v23, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      }

      else
      {
        v41 = v31;
        v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D5E3E824(v32, v33);
        sub_1D5E3E824(v32, v33);
        v35 = sub_1D725865C();
        v36 = [v34 initWithData_];

        sub_1D5B952E4(v32, v33);
        if (v36)
        {
          v37 = sub_1D725D7EC();
          swift_allocObject();
          v38 = v36;

          v39 = sub_1D725D7DC();
          v40 = MEMORY[0x1E69D79C0];
          a2[3] = v37;
          a2[4] = v40;

          sub_1D5B952E4(v32, v33);

          sub_1D5B952E4(v32, v33);
          *a2 = v39;
          return sub_1D683ED9C(v23, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        }

        sub_1D683ED9C(v23, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        sub_1D5B952E4(v32, v33);

        sub_1D5B952E4(v32, v33);
      }
    }
  }

  else
  {
    sub_1D683EDF8(v15, type metadata accessor for PuzzleStatisticCategory);
  }

  sub_1D725894C();
  sub_1D725893C();
  (*(v4 + 8))(v7, v42);
  v27 = sub_1D725D7EC();
  swift_allocObject();
  result = sub_1D725D7DC();
  v29 = MEMORY[0x1E69D79C0];
  a2[3] = v27;
  a2[4] = v29;
  *a2 = result;
  return result;
}

uint64_t sub_1D683E410@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_1D725895C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A59C(0, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v43 - v11;
  v13 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A59C(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v43 - v23;
  v25 = a1 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
  v26 = type metadata accessor for PuzzleStatistic();
  sub_1D683EAA8(v25 + *(v26 + 20), v16, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D67B7068(v16, v24);
    sub_1D67B6B70(v24, v20);
    v27 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D683ED9C(v24, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D683ED9C(v20, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

    else
    {
      sub_1D6E99958(v12);
      sub_1D683EDF8(v20, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v31 = type metadata accessor for PuzzleLeaderboardEntry();
      if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
      {
        sub_1D683ED9C(v24, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        sub_1D683ED9C(v12, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
      }

      else
      {
        v32 = &v12[*(v31 + 24)];
        v33 = *(v32 + 1);
        v43[1] = *(v32 + 2);
        v34 = *(v32 + 4);
        v35 = *(v32 + 5);

        sub_1D5F13DE4(v34, v35);
        sub_1D683EDF8(v12, type metadata accessor for PuzzleLeaderboardEntry);
        if (v35 >> 60 == 15)
        {

          sub_1D5B952E4(v34, v35);
          sub_1D683ED9C(v24, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        }

        else
        {
          v43[0] = v33;
          v36 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          sub_1D5E3E824(v34, v35);
          sub_1D5E3E824(v34, v35);
          v37 = sub_1D725865C();
          v38 = [v36 initWithData_];

          sub_1D5B952E4(v34, v35);
          if (v38)
          {
            v39 = sub_1D725D7EC();
            swift_allocObject();
            v40 = v38;

            v41 = sub_1D725D7DC();
            v42 = MEMORY[0x1E69D79C0];
            a2[3] = v39;
            a2[4] = v42;

            sub_1D5B952E4(v34, v35);

            sub_1D5B952E4(v34, v35);
            *a2 = v41;
            return sub_1D683ED9C(v24, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          }

          sub_1D683ED9C(v24, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          sub_1D5B952E4(v34, v35);

          sub_1D5B952E4(v34, v35);
        }
      }
    }
  }

  else
  {
    sub_1D683EDF8(v16, type metadata accessor for PuzzleStatisticCategory);
  }

  sub_1D725894C();
  sub_1D725893C();
  (*(v5 + 8))(v8, v4);
  v28 = sub_1D725D7EC();
  swift_allocObject();
  result = sub_1D725D7DC();
  v30 = MEMORY[0x1E69D79C0];
  a2[3] = v28;
  a2[4] = v30;
  *a2 = result;
  return result;
}

uint64_t sub_1D683EA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPuzzleStatistic();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D683EAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D683EB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for FeedPuzzleStatistic() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t FormatPuzzleStatisticBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D683EC54()
{
  result = qword_1EC88C808;
  if (!qword_1EC88C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C808);
  }

  return result;
}

unint64_t sub_1D683ECA8(uint64_t a1)
{
  result = sub_1D683ECD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D683ECD0()
{
  result = qword_1EC88C810;
  if (!qword_1EC88C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C810);
  }

  return result;
}

unint64_t sub_1D683ED24(void *a1)
{
  a1[1] = sub_1D6696714();
  a1[2] = sub_1D66FC9D4();
  result = sub_1D683EC54();
  a1[3] = result;
  return result;
}

uint64_t sub_1D683ED9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7A59C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D683EDF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::PuzzleStyleAttributes::Value_optional __swiftcall PuzzleStyleAttributes.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleStyleAttributes.Value.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E696C7265646E75;
  v3 = 0x7069726373627573;
  v4 = 0x72656C6C616D73;
  if (v1 != 3)
  {
    v4 = 0x726567676962;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7263737265707573;
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

uint64_t sub_1D683EFA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D683F094()
{
  sub_1D72621EC();
}

uint64_t sub_1D683F16C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D683F260(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6E696C7265646E75;
  v4 = 0xE900000000000074;
  v5 = 0x7069726373627573;
  v6 = 0xE700000000000000;
  v7 = 0x72656C6C616D73;
  if (v2 != 3)
  {
    v7 = 0x726567676962;
    v6 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEB00000000747069;
  if (*v1)
  {
    v3 = 0x7263737265707573;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t static PuzzleStyleAttributes.name.getter()
{
  swift_beginAccess();
  v0 = *aPuzzlestyle_0;

  return v0;
}

uint64_t static PuzzleStyleAttributes.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPuzzlestyle_0 = a1;
  *&aPuzzlestyle_0[8] = a2;
}

uint64_t sub_1D683F4C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aPuzzlestyle_0 = v2;
  *&aPuzzlestyle_0[8] = v1;
}

uint64_t sub_1D683F648()
{
  swift_beginAccess();
  v0 = *aPuzzlestyle_0;

  return v0;
}

uint64_t sub_1D683F6B0()
{
  sub_1D6812C40();

  return sub_1D7257D0C();
}

uint64_t sub_1D683F6FC()
{
  sub_1D6812C40();

  return sub_1D7257D0C();
}

unint64_t sub_1D683F750()
{
  result = qword_1EC88C828;
  if (!qword_1EC88C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C828);
  }

  return result;
}

unint64_t sub_1D683F7A8()
{
  result = qword_1EC88C830;
  if (!qword_1EC88C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C830);
  }

  return result;
}

unint64_t sub_1D683F800()
{
  result = qword_1EC88C838;
  if (!qword_1EC88C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C838);
  }

  return result;
}

unint64_t sub_1D683F858()
{
  result = qword_1EC88C840;
  if (!qword_1EC88C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C840);
  }

  return result;
}

unint64_t sub_1D683F8DC()
{
  result = qword_1EC88C848;
  if (!qword_1EC88C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C848);
  }

  return result;
}

unint64_t sub_1D683F930()
{
  result = qword_1EC88C850;
  if (!qword_1EC88C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C850);
  }

  return result;
}

unint64_t sub_1D683F984()
{
  result = qword_1EC88C858;
  if (!qword_1EC88C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C858);
  }

  return result;
}

unint64_t sub_1D683F9D8()
{
  result = qword_1EC88C860;
  if (!qword_1EC88C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C860);
  }

  return result;
}

double static FormatCodingPuzzleOverridesStrategy.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
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

double sub_1D683FA50@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
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

BOOL _s8NewsFeed35FormatCodingPuzzleOverridesStrategyV12shouldEncode12wrappedValueSbAA0cE0C0F0V_tFZ_0(_OWORD *a1)
{
  v1 = a1[7];
  v16[6] = a1[6];
  v16[7] = v1;
  v16[8] = a1[8];
  v2 = a1[3];
  v16[2] = a1[2];
  v16[3] = v2;
  v3 = a1[5];
  v16[4] = a1[4];
  v16[5] = v3;
  v4 = a1[1];
  v16[0] = *a1;
  v16[1] = v4;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v5 = _s8NewsFeed12FormatPuzzleC9OverridesV2eeoiySbAE_AEtFZ_0(v16, &v7);
  v17[6] = v13;
  v17[7] = v14;
  v17[8] = v15;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  v17[5] = v12;
  v17[0] = v7;
  v17[1] = v8;
  sub_1D6702788(v17);
  return (v5 & 1) == 0;
}

unint64_t sub_1D683FB1C(uint64_t a1)
{
  result = sub_1D683FB44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D683FB44()
{
  result = qword_1EDF071F0;
  if (!qword_1EDF071F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF071F0);
  }

  return result;
}

unint64_t sub_1D683FB98()
{
  result = qword_1EDF337C8;
  if (!qword_1EDF337C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337C8);
  }

  return result;
}

unint64_t sub_1D683FBEC()
{
  result = qword_1EDF123C0;
  if (!qword_1EDF123C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF123C0);
  }

  return result;
}

uint64_t FormatRemoteVideo.x1VideoURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2VideoURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3VideoURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1VideoURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2VideoURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3VideoURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1VideoURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2VideoURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3VideoURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1VideoURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2VideoURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3VideoURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1ImageURL.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2ImageURL.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3ImageURL.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1ImageURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2ImageURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3ImageURL_6.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1ImageURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2ImageURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3ImageURL_8.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1ImageURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 192);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2ImageURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3ImageURL_12.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x1ImageURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x2ImageURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t FormatRemoteVideo.x3ImageURL_18.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = v2;
  return sub_1D66B21E4(v2);
}

uint64_t sub_1D683FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v391 = a2;
  v393 = a1;
  v385 = a3;
  v6 = sub_1D725A3AC();
  v390 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v380 = &v351 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v384 = &v351 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v386 = &v351 - v14;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v353 = &v351 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v356 = &v351 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v352 = &v351 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v358 = &v351 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v363 = &v351 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v355 = &v351 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v367 = &v351 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v371 = &v351 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v361 = &v351 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v375 = &v351 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v357 = &v351 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v362 = &v351 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v354 = &v351 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v366 = &v351 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v370 = &v351 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v360 = &v351 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v374 = &v351 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v377 = &v351 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v369 = &v351 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v379 = &v351 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v364 = &v351 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v365 = &v351 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v359 = &v351 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v373 = &v351 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v372 = &v351 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v368 = &v351 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v378 = &v351 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v381 = &v351 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v376 = &v351 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v383 = &v351 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v382 = &v351 - v107;
  v389 = sub_1D72585BC();
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389, v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  v118 = &v351 - v117;
  MEMORY[0x1EEE9AC00](v119, v120);
  v122 = &v351 - v121;
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](&v351 - v125, v126);
  MEMORY[0x1EEE9AC00](v127, v128);
  v130 = &v351 - v129;
  MEMORY[0x1EEE9AC00](v131, v132);
  v134 = &v351 - v133;
  MEMORY[0x1EEE9AC00](v135, v136);
  v138 = &v351 - v137;
  MEMORY[0x1EEE9AC00](v139, v140);
  v142 = &v351 - v141;
  MEMORY[0x1EEE9AC00](v143, v144);
  v387 = &v351 - v151;
  v152 = *(v4 + 16);
  v153 = *(v4 + 40);
  v154 = *(v4 + 88);
  v155 = *(v4 + 112);
  v156 = *(v4 + 136);
  v157 = *(v4 + 160);
  v158 = *(v4 + 208);
  v159 = *(v4 + 232);
  if (a4 < 3.0)
  {
    v386 = v6;
    v383 = *(v4 + 8);
    v160 = *(v4 + 32);
    v161 = *(v4 + 80);
    v162 = *(v4 + 104);
    v163 = *(v4 + 128);
    v164 = *(v4 + 152);
    v165 = *(v4 + 200);
    v166 = *(v4 + 224);
    if (a4 < 2.0)
    {
      v167 = *v4;
      v168 = *(v4 + 24);
      v169 = *(v4 + 72);
      v170 = *(v4 + 96);
      v171 = *(v4 + 120);
      v172 = *(v4 + 144);
      v173 = *(v4 + 192);
      v174 = *(v4 + 216);
      if (a4 < 1.0)
      {
        v394 = *v4;
        v395[0] = v383;
        v395[1] = v152;
        v395[2] = v168;
        v395[3] = v160;
        v395[4] = v153;
        v396 = *(v4 + 48);
        v397[0] = *(v4 + 64);
        v397[1] = v169;
        v397[2] = v161;
        v397[3] = v154;
        v397[4] = v170;
        v397[5] = v162;
        v398 = v155;
        v399[0] = v171;
        v399[1] = v163;
        v399[2] = v156;
        v399[3] = v172;
        v400[0] = v164;
        v400[1] = v157;
        v175 = *(v4 + 184);
        v401 = *(v4 + 168);
        v402 = v175;
        v403 = v173;
        v404 = v165;
        v405 = v158;
        v406 = v174;
        v407 = v166;
        v408 = v159;
        return sub_1D683FDD0(v393, v391, 3.0);
      }

      v381 = *(v4 + 144);
      v199 = v167;
      v378 = v173;
      v377 = v174;
      v200 = v147;
      v201 = v150;
      v384 = v149;
      v379 = v148;
      v383 = v171;
      v202 = v390;
      v203 = v380;
      v204 = v386;
      (*(v390 + 16))(v380, v391, v386);
      v205 = (*(v202 + 88))(v203, v204);
      if (v205 == *MEMORY[0x1E69D7380])
      {
        v184 = v389;
        v206 = v388;
        if ((~v168 & 0xF000000000000007) != 0)
        {
          v242 = v375;
          v208 = v393;
          v243 = v392;
          result = sub_1D6D4FCF8(v393, v168, v375);
          if (v243)
          {
            return result;
          }

          v392 = 0;
          v182 = *(v206 + 56);
          v182(v242, 0, 1, v184);
          v244 = v201;
          (*(v206 + 32))(v201, v242, v184);
        }

        else
        {
          v182 = *(v388 + 56);
          v207 = v375;
          v182(v375, 1, 1, v389);

          v208 = v393;
          v209 = v392;
          sub_1D6D4FCF8(v393, v199, v201);
          v392 = v209;
          if (v209)
          {

            result = (*(v206 + 48))(v207, 1, v184);
            if (result == 1)
            {
              return result;
            }

            return sub_1D5E3E404(v207);
          }

          if ((*(v206 + 48))(v207, 1, v184) != 1)
          {
            sub_1D5E3E404(v207);
          }

          v244 = v201;
        }

        v212 = *(v206 + 32);
        (v212)(v387, v244, v184);
        if ((~v381 & 0xF000000000000007) == 0)
        {
          v281 = 1;
          v182(v371, 1, 1, v184);
          v282 = v383;
          if ((~v383 & 0xF000000000000007) == 0)
          {
            v216 = v361;
LABEL_181:
            v182(v216, v281, 1, v184);
            v340 = v371;
            v341 = (*(v206 + 48))(v371, 1, v184);
LABEL_210:
            if (v341 == 1)
            {
              goto LABEL_199;
            }

            v348 = v340;
            goto LABEL_198;
          }

          v216 = v361;
          v315 = v282;
          v316 = v282;
          v317 = v392;
          sub_1D6D4FCF8(v393, v315, v361);
          v392 = v317;
          if (!v317)
          {
            sub_1D5D1F044(v316);
            v281 = 0;
            goto LABEL_181;
          }

          sub_1D5D1F044(v316);
          (*(v206 + 8))(v387, v184);
          v183 = v371;
          result = (*(v206 + 48))(v371, 1, v184);
          goto LABEL_18;
        }

        v239 = v371;
        v297 = v392;
        sub_1D6D4FCF8(v208, v381, v371);
        v392 = v297;
        if (v297)
        {
          return (*(v206 + 8))(v387, v184);
        }

        v182(v239, 0, 1, v184);
        v241 = &v393;
        goto LABEL_179;
      }

      v228 = v389;
      v229 = v388;
      if (v205 == *MEMORY[0x1E69D7388])
      {
        if ((~v169 & 0xF000000000000007) != 0)
        {
          v271 = v367;
          v231 = v393;
          v272 = v392;
          result = sub_1D6D4FCF8(v393, v169, v367);
          if (v272)
          {
            return result;
          }

          v184 = v228;
          v392 = 0;
          v230 = *(v229 + 56);
          v230(v271, 0, 1, v228);
          v233 = v384;
          (*(v229 + 32))(v384, v271, v228);
LABEL_93:
          v273 = v229;
          v212 = *(v229 + 32);
          (v212)(v387, v233, v184);
          if ((~v378 & 0xF000000000000007) == 0)
          {
            v274 = 1;
            v230(v363, 1, 1, v184);
            v275 = v383;
            if ((~v383 & 0xF000000000000007) == 0)
            {
              v216 = v355;
LABEL_193:
              v230(v216, v274, 1, v184);
              v346 = *(v273 + 48);
              v347 = v395;
LABEL_209:
              v340 = *(v347 - 32);
              v341 = v346(v340, 1, v184);
              goto LABEL_210;
            }

            v216 = v355;
            v330 = v275;
            v331 = v275;
            v332 = v392;
            sub_1D6D4FCF8(v393, v330, v355);
            v392 = v332;
            if (!v332)
            {
              sub_1D5D1F044(v331);
              v274 = 0;
              goto LABEL_193;
            }

            sub_1D5D1F044(v331);
            (*(v273 + 8))(v387, v184);
            v333 = *(v273 + 48);
            v334 = v395;
            goto LABEL_191;
          }

          v306 = v273;
          v307 = v363;
          v308 = v392;
          sub_1D6D4FCF8(v231, v378, v363);
          v392 = v308;
          if (!v308)
          {
            v230(v307, 0, 1, v184);
            v309 = &v387;
LABEL_206:
            v216 = *(v309 - 32);
            (v212)(v216, v307, v184);
            v230(v216, 0, 1, v184);
            goto LABEL_199;
          }

          return (*(v306 + 8))(v387, v184);
        }

        v230 = *(v388 + 56);
        v207 = v367;
        v184 = v389;
        v230(v367, 1, 1, v389);

        v231 = v393;
        v232 = v392;
        sub_1D6D4FCF8(v393, v199, v384);
        v392 = v232;
        if (!v232)
        {

          if ((*(v229 + 48))(v207, 1, v228) != 1)
          {
            sub_1D5E3E404(v207);
          }

          v233 = v384;
          goto LABEL_93;
        }

        goto LABEL_69;
      }

      if (v205 != *MEMORY[0x1E69D7390])
      {
        v279 = v393;
        v280 = v392;
        sub_1D6D4FCF8(v393, v199, v200);
        v392 = v280;
        if (v280)
        {
          return (*(v202 + 8))(v203, v386);
        }

        v311 = v229;
        v212 = *(v229 + 32);
        v184 = v228;
        (v212)(v387, v200, v228);
        v312 = v386;
        if ((~v383 & 0xF000000000000007) != 0)
        {
          v314 = v353;
          v338 = v392;
          sub_1D6D4FCF8(v279, v383, v353);
          v392 = v338;
          if (v338)
          {
            (*(v311 + 8))(v387, v228);
            return (*(v390 + 8))(v203, v312);
          }

          v313 = 0;
        }

        else
        {
          v313 = 1;
          v314 = v353;
        }

        (*(v311 + 56))(v314, v313, 1, v228);
        v302 = v382;
        sub_1D5EB8540(v314, v382);
        (*(v390 + 8))(v203, v386);
        goto LABEL_201;
      }

      v251 = v393;
      if ((~v170 & 0xF000000000000007) != 0)
      {
        v303 = v358;
        v304 = v392;
        result = sub_1D6D4FCF8(v393, v170, v358);
        if (v304)
        {
          return result;
        }

        v184 = v228;
        v392 = 0;
        v230 = *(v229 + 56);
        v230(v303, 0, 1, v228);
        v305 = v379;
        (*(v229 + 32))(v379, v303, v228);
      }

      else
      {
        v230 = *(v388 + 56);
        v207 = v358;
        v184 = v389;
        v230(v358, 1, 1, v389);

        v252 = v392;
        sub_1D6D4FCF8(v251, v199, v379);
        v392 = v252;
        if (v252)
        {
LABEL_69:

          result = (*(v229 + 48))(v207, 1, v184);
          if (result != 1)
          {
            return sub_1D5E3E404(v207);
          }

          return result;
        }

        if ((*(v229 + 48))(v207, 1, v228) != 1)
        {
          sub_1D5E3E404(v207);
        }

        v305 = v379;
      }

      v327 = v229;
      v212 = *(v229 + 32);
      (v212)(v387, v305, v184);
      if ((~v377 & 0xF000000000000007) == 0)
      {
        v328 = 1;
        v230(v356, 1, 1, v184);
        v329 = v383;
        if ((~v383 & 0xF000000000000007) != 0)
        {

          v216 = v352;
          v343 = v329;
          v344 = v329;
          v345 = v392;
          sub_1D6D4FCF8(v393, v343, v352);
          v392 = v345;
          if (v345)
          {
            sub_1D5D1F044(v344);
            (*(v327 + 8))(v387, v184);
            v333 = *(v327 + 48);
            v334 = &v388;
LABEL_191:
            v183 = *(v334 - 32);
            result = v333(v183, 1, v184);
LABEL_18:
            if (result != 1)
            {
              return sub_1D5E3E404(v183);
            }

            return result;
          }

          sub_1D5D1F044(v344);
          v328 = 0;
        }

        else
        {
          v216 = v352;
        }

        v230(v216, v328, 1, v184);
        v346 = *(v327 + 48);
        v347 = &v388;
        goto LABEL_209;
      }

      v306 = v327;
      v307 = v356;
      v339 = v392;
      sub_1D6D4FCF8(v251, v377, v356);
      v392 = v339;
      if (!v339)
      {
        v230(v307, 0, 1, v184);
        v309 = &v384;
        goto LABEL_206;
      }

      return (*(v306 + 8))(v387, v184);
    }

    v378 = *(v4 + 152);
    v375 = v165;
    v187 = v146;
    v373 = v166;
    v381 = v145;
    v376 = v122;
    v380 = v163;
    v188 = v390;
    v189 = v384;
    v190 = v386;
    (*(v390 + 16))(v384, v391, v386);
    v191 = (*(v188 + 88))(v189, v190);
    if (v191 == *MEMORY[0x1E69D7380])
    {
      if ((~v160 & 0xF000000000000007) != 0)
      {
        v224 = v379;
        v225 = v392;
        result = sub_1D6D4FCF8(v393, v160, v379);
        v184 = v389;
        if (v225)
        {
          return result;
        }

        v392 = 0;
        v181 = v388;
        v182 = *(v388 + 56);
        v182(v224, 0, 1, v389);
        (*(v181 + 32))(v187, v224, v184);
      }

      else
      {
        v181 = v388;
        v182 = *(v388 + 56);
        v183 = v379;
        v184 = v389;
        v182(v379, 1, 1, v389);
        v192 = v383;

        v193 = v392;
        sub_1D6D4FCF8(v393, v192, v187);
        v392 = v193;
        if (v193)
        {
          goto LABEL_13;
        }

        if ((*(v181 + 48))(v183, 1, v184) != 1)
        {
          sub_1D5E3E404(v183);
        }
      }

      v212 = *(v181 + 32);
      (v212)(v387, v187, v184);
      if ((~v378 & 0xF000000000000007) == 0)
      {
        v213 = 1;
        v182(v377, 1, 1, v184);
        v254 = v380;
        if ((~v380 & 0xF000000000000007) == 0)
        {
          v215 = v377;
          v216 = v369;
          goto LABEL_196;
        }

        v216 = v369;
        v290 = v254;
        v291 = v254;
        v292 = v392;
        sub_1D6D4FCF8(v393, v290, v369);
        v392 = v292;
        if (v292)
        {
          sub_1D5D1F044(v291);
          (*(v181 + 8))(v387, v184);
          v183 = v377;
          result = (*(v181 + 48))(v377, 1, v184);
          goto LABEL_18;
        }

        sub_1D5D1F044(v291);
        v213 = 0;
        v301 = v399;
        goto LABEL_195;
      }

      v239 = v377;
      v268 = v392;
      sub_1D6D4FCF8(v393, v378, v377);
      v392 = v268;
      if (!v268)
      {
        v182(v239, 0, 1, v184);
        v241 = &v396 + 1;
        goto LABEL_179;
      }

      return (*(v181 + 8))(v387, v184);
    }

    if (v191 != *MEMORY[0x1E69D7388])
    {
      v234 = v393;
      if (v191 != *MEMORY[0x1E69D7390])
      {
        v253 = v392;
        sub_1D6D4FCF8(v393, v383, v118);
        v392 = v253;
        v184 = v389;
        if (v253)
        {
          return (*(v188 + 8))(v384, v386);
        }

        v287 = v388;
        v212 = *(v388 + 32);
        (v212)(v387, v118, v389);
        if ((~v380 & 0xF000000000000007) != 0)
        {
          v289 = v357;
          v324 = v392;
          sub_1D6D4FCF8(v234, v380, v357);
          v392 = v324;
          if (v324)
          {
            (*(v287 + 8))(v387, v184);
            return (*(v390 + 8))(v384, v386);
          }

          v288 = 0;
        }

        else
        {
          v288 = 1;
          v289 = v357;
        }

        (*(v287 + 56))(v289, v288, 1, v184);
        v342 = v289;
        v302 = v382;
        sub_1D5EB8540(v342, v382);
        (*(v390 + 8))(v384, v386);
        goto LABEL_201;
      }

      v184 = v389;
      if ((~v162 & 0xF000000000000007) != 0)
      {
        v276 = v366;
        v277 = v392;
        result = sub_1D6D4FCF8(v393, v162, v366);
        if (v277)
        {
          return result;
        }

        v392 = 0;
        v181 = v388;
        v182 = *(v388 + 56);
        v182(v276, 0, 1, v184);
        v237 = v376;
        (*(v181 + 32))(v376, v276, v184);
      }

      else
      {
        v181 = v388;
        v182 = *(v388 + 56);
        v183 = v366;
        v182(v366, 1, 1, v389);
        v235 = v383;

        v236 = v392;
        sub_1D6D4FCF8(v234, v235, v376);
        v392 = v236;
        if (v236)
        {
          goto LABEL_13;
        }

        if ((*(v181 + 48))(v183, 1, v184) != 1)
        {
          sub_1D5E3E404(v183);
        }

        v237 = v376;
      }

      v212 = *(v181 + 32);
      (v212)(v387, v237, v184);
      if ((~v373 & 0xF000000000000007) == 0)
      {
        v213 = 1;
        v182(v362, 1, 1, v184);
        v278 = v380;
        if ((~v380 & 0xF000000000000007) == 0)
        {
          v215 = v362;
          v216 = v354;
          goto LABEL_196;
        }

        v216 = v354;
        v335 = v278;
        v336 = v278;
        v337 = v392;
        sub_1D6D4FCF8(v393, v335, v354);
        v392 = v337;
        if (v337)
        {
          sub_1D5D1F044(v336);
          (*(v181 + 8))(v387, v184);
          v183 = v362;
          result = (*(v181 + 48))(v362, 1, v184);
          goto LABEL_18;
        }

        sub_1D5D1F044(v336);
        v213 = 0;
        v301 = &v394;
        goto LABEL_195;
      }

      v239 = v362;
      v310 = v392;
      sub_1D6D4FCF8(v234, v373, v362);
      v392 = v310;
      if (!v310)
      {
        v182(v239, 0, 1, v184);
        v241 = &v386;
        goto LABEL_179;
      }

      return (*(v181 + 8))(v387, v184);
    }

    v217 = v393;
    if ((~v161 & 0xF000000000000007) != 0)
    {
      v245 = v374;
      v246 = v392;
      result = sub_1D6D4FCF8(v393, v161, v374);
      if (v246)
      {
        return result;
      }

      v392 = 0;
      v181 = v388;
      v182 = *(v388 + 56);
      v184 = v389;
      v182(v245, 0, 1, v389);
      v247 = v381;
      (*(v181 + 32))(v381, v245, v184);
    }

    else
    {
      v181 = v388;
      v182 = *(v388 + 56);
      v207 = v374;
      v184 = v389;
      v182(v374, 1, 1, v389);
      v218 = v383;

      v219 = v392;
      sub_1D6D4FCF8(v217, v218, v381);
      v392 = v219;
      if (v219)
      {

        result = (*(v181 + 48))(v207, 1, v184);
        goto LABEL_38;
      }

      if ((*(v181 + 48))(v207, 1, v184) != 1)
      {
        sub_1D5E3E404(v207);
      }

      v247 = v381;
    }

    v212 = *(v181 + 32);
    (v212)(v387, v247, v184);
    if ((~v375 & 0xF000000000000007) != 0)
    {
      v239 = v370;
      v298 = v392;
      sub_1D6D4FCF8(v217, v375, v370);
      v392 = v298;
      if (!v298)
      {
        v182(v239, 0, 1, v184);
        v241 = &v392;
        goto LABEL_179;
      }

      return (*(v181 + 8))(v387, v184);
    }

    v213 = 1;
    v182(v370, 1, 1, v184);
    v283 = v380;
    if ((~v380 & 0xF000000000000007) == 0)
    {
      v215 = v370;
      v216 = v360;
      goto LABEL_196;
    }

    v216 = v360;
    v318 = v283;
    v319 = v283;
    v320 = v392;
    sub_1D6D4FCF8(v393, v318, v360);
    v392 = v320;
    if (v320)
    {
      sub_1D5D1F044(v319);
      (*(v181 + 8))(v387, v184);
      v183 = v370;
      result = (*(v181 + 48))(v370, 1, v184);
      goto LABEL_18;
    }

    sub_1D5D1F044(v319);
    v213 = 0;
    v301 = v397;
LABEL_195:
    v215 = *(v301 - 32);
LABEL_196:
    v182(v216, v213, 1, v184);
    if ((*(v181 + 48))(v215, 1, v184) != 1)
    {
      v348 = v215;
LABEL_198:
      sub_1D5E3E404(v348);
    }

LABEL_199:
    v302 = v382;
    v325 = v216;
    goto LABEL_200;
  }

  v377 = *(v4 + 112);
  v379 = v157;
  v384 = v152;
  v375 = v158;
  v374 = v159;
  v380 = v156;
  v177 = v390;
  v178 = v386;
  (*(v390 + 16))(v386, v391, v6);
  v179 = (*(v177 + 88))(v178, v6);
  if (v179 == *MEMORY[0x1E69D7380])
  {
    v180 = v393;
    if ((~v153 & 0xF000000000000007) != 0)
    {
      v210 = v383;
      v211 = v392;
      result = sub_1D6D4FCF8(v393, v153, v383);
      v184 = v389;
      v181 = v388;
      if (v211)
      {
        return result;
      }

      v392 = 0;
      v182 = *(v388 + 56);
      v182(v210, 0, 1, v389);
      (*(v181 + 32))(v142, v210, v184);
    }

    else
    {
      v181 = v388;
      v182 = *(v388 + 56);
      v183 = v383;
      v184 = v389;
      v182(v383, 1, 1, v389);
      v185 = v384;

      v186 = v392;
      sub_1D6D4FCF8(v180, v185, v142);
      v392 = v186;
      if (v186)
      {
LABEL_13:

        result = (*(v181 + 48))(v183, 1, v184);
        goto LABEL_18;
      }

      if ((*(v181 + 48))(v183, 1, v184) != 1)
      {
        sub_1D5E3E404(v183);
      }
    }

    v212 = *(v181 + 32);
    (v212)(v387, v142, v184);
    if ((~v379 & 0xF000000000000007) != 0)
    {
      v239 = v381;
      v240 = v392;
      sub_1D6D4FCF8(v180, v379, v381);
      v392 = v240;
      if (!v240)
      {
        v182(v239, 0, 1, v184);
        v241 = &v398;
LABEL_179:
        v216 = *(v241 - 32);
        (v212)(v216, v239, v184);
        v182(v216, 0, 1, v184);
        goto LABEL_199;
      }

      return (*(v181 + 8))(v387, v184);
    }

    v213 = 1;
    v182(v381, 1, 1, v184);
    v214 = v380;
    if ((~v380 & 0xF000000000000007) == 0)
    {
      v215 = v381;
      v216 = v376;
      goto LABEL_196;
    }

    v216 = v376;
    v260 = v214;
    v261 = v214;
    v262 = v392;
    sub_1D6D4FCF8(v393, v260, v376);
    v392 = v262;
    if (v262)
    {
      sub_1D5D1F044(v261);
      (*(v181 + 8))(v387, v184);
      v183 = v381;
      result = (*(v181 + 48))(v381, 1, v184);
      goto LABEL_18;
    }

    sub_1D5D1F044(v261);
    v213 = 0;
    v301 = v400;
    goto LABEL_195;
  }

  v194 = v393;
  if (v179 == *MEMORY[0x1E69D7388])
  {
    if ((~v154 & 0xF000000000000007) != 0)
    {
      v226 = v378;
      v227 = v392;
      result = sub_1D6D4FCF8(v393, v154, v378);
      v184 = v389;
      v195 = v388;
      if (v227)
      {
        return result;
      }

      v392 = 0;
      v196 = *(v388 + 56);
      v196(v226, 0, 1, v389);
      (*(v195 + 32))(v138, v226, v184);
    }

    else
    {
      v195 = v388;
      v196 = *(v388 + 56);
      v183 = v378;
      v184 = v389;
      v196(v378, 1, 1, v389);
      v197 = v384;

      v198 = v392;
      sub_1D6D4FCF8(v194, v197, v138);
      v392 = v198;
      if (v198)
      {

        result = (*(v195 + 48))(v183, 1, v184);
        goto LABEL_18;
      }

      if ((*(v195 + 48))(v183, 1, v184) != 1)
      {
        sub_1D5E3E404(v183);
      }
    }

    v255 = *(v195 + 32);
    (v255)(v387, v138, v184);
    if ((~v375 & 0xF000000000000007) != 0)
    {
      v269 = v372;
      v270 = v392;
      sub_1D6D4FCF8(v194, v375, v372);
      v392 = v270;
      if (v270)
      {
        return (*(v195 + 8))(v387, v184);
      }

      v196(v269, 0, 1, v184);
      v259 = v368;
      v212 = v255;
      (v255)(v368, v269, v184);
      v196(v259, 0, 1, v184);
      v302 = v382;
      goto LABEL_160;
    }

    v256 = 1;
    v257 = v372;
    v196(v372, 1, 1, v184);
    v258 = v380;
    if ((~v380 & 0xF000000000000007) == 0)
    {
      v259 = v368;
LABEL_157:
      v196(v259, v256, 1, v184);
      if ((*(v195 + 48))(v257, 1, v184) != 1)
      {
        sub_1D5E3E404(v257);
      }

      v302 = v382;
      v212 = v255;
LABEL_160:
      v325 = v259;
LABEL_200:
      sub_1D5EB8540(v325, v302);
LABEL_201:
      v349 = v385;
      (v212)(v385, v387, v184);
      v350 = type metadata accessor for FormatVideoData.Assets(0);
      return sub_1D5EB8540(v302, v349 + *(v350 + 20));
    }

    v259 = v368;
    v293 = v258;
    v294 = v258;
    v295 = v392;
    sub_1D6D4FCF8(v393, v293, v368);
    v392 = v295;
    if (!v295)
    {
      sub_1D5D1F044(v294);
      v256 = 0;
      goto LABEL_157;
    }

    sub_1D5D1F044(v294);
    (*(v195 + 8))(v387, v184);
    result = (*(v195 + 48))(v257, 1, v184);
LABEL_151:
    if (result != 1)
    {
      return sub_1D5E3E404(v257);
    }

    return result;
  }

  if (v179 != *MEMORY[0x1E69D7390])
  {
    v238 = v392;
    sub_1D6D4FCF8(v393, v384, v130);
    v392 = v238;
    if (v238)
    {
      return (*(v177 + 8))(v386, v6);
    }

    v263 = v130;
    v212 = *(v388 + 32);
    v184 = v389;
    (v212)(v387, v263, v389);
    v264 = v386;
    if ((~v380 & 0xF000000000000007) != 0)
    {
      v267 = v364;
      v296 = v392;
      sub_1D6D4FCF8(v194, v380, v364);
      v392 = v296;
      if (v296)
      {
        (*(v388 + 8))(v387, v184);
        return (*(v177 + 8))(v264, v6);
      }

      v265 = 0;
      v266 = v388;
    }

    else
    {
      v265 = 1;
      v266 = v388;
      v267 = v364;
    }

    (*(v266 + 56))(v267, v265, 1, v184);
    v326 = v267;
    v302 = v382;
    sub_1D5EB8540(v326, v382);
    (*(v177 + 8))(v264, v6);
    goto LABEL_201;
  }

  if ((~v377 & 0xF000000000000007) != 0)
  {
    v248 = v373;
    v249 = v392;
    result = sub_1D6D4FCF8(v393, v377, v373);
    v181 = v388;
    if (v249)
    {
      return result;
    }

    v392 = 0;
    v220 = *(v388 + 56);
    v250 = v389;
    v220(v248, 0, 1, v389);
    (*(v181 + 32))(v134, v248, v250);
LABEL_118:
    v212 = *(v181 + 32);
    (v212)(v387, v134, v250);
    v184 = v250;
    if ((~v374 & 0xF000000000000007) != 0)
    {
      v299 = v365;
      v300 = v392;
      sub_1D6D4FCF8(v194, v374, v365);
      v392 = v300;
      if (v300)
      {
        return (*(v181 + 8))(v387, v184);
      }

      v220(v299, 0, 1, v250);
      v286 = v359;
      v212();
      v220(v286, 0, 1, v250);
    }

    else
    {
      v284 = 1;
      v257 = v365;
      v220(v365, 1, 1, v184);
      v285 = v380;
      if ((~v380 & 0xF000000000000007) != 0)
      {

        v286 = v359;
        v321 = v285;
        v322 = v285;
        v323 = v392;
        sub_1D6D4FCF8(v393, v321, v359);
        v392 = v323;
        if (v323)
        {
          sub_1D5D1F044(v322);
          (*(v181 + 8))(v387, v184);
          result = (*(v181 + 48))(v257, 1, v184);
          goto LABEL_151;
        }

        sub_1D5D1F044(v322);
        v284 = 0;
      }

      else
      {
        v286 = v359;
      }

      v220(v286, v284, 1, v184);
      if ((*(v181 + 48))(v257, 1, v184) != 1)
      {
        sub_1D5E3E404(v257);
      }
    }

    v302 = v382;
    v325 = v286;
    goto LABEL_200;
  }

  v181 = v388;
  v220 = *(v388 + 56);
  v207 = v373;
  v221 = v389;
  v220(v373, 1, 1, v389);
  v222 = v384;

  v223 = v392;
  sub_1D6D4FCF8(v194, v222, v134);
  v392 = v223;
  if (!v223)
  {

    if ((*(v181 + 48))(v207, 1, v221) != 1)
    {
      sub_1D5E3E404(v207);
    }

    v250 = v389;
    goto LABEL_118;
  }

  result = (*(v181 + 48))(v207, 1, v221);
LABEL_38:
  if (result != 1)
  {
    return sub_1D5E3E404(v207);
  }

  return result;
}

BOOL _s8NewsFeed17FormatRemoteVideoV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v91 = a1[6];
  v93 = a1[7];
  v94 = a1[5];
  v89 = a1[8];
  v87 = a1[9];
  v85 = a1[10];
  v83 = a1[11];
  v81 = a1[12];
  v79 = a1[13];
  v77 = a1[14];
  v75 = a1[15];
  v73 = a1[16];
  v71 = a1[17];
  v47 = a1[18];
  v49 = a1[19];
  v51 = a1[20];
  v53 = a1[21];
  v55 = a1[22];
  v57 = a1[23];
  v59 = a1[24];
  v61 = a1[25];
  v63 = a1[26];
  v65 = a1[27];
  v67 = a1[28];
  v69 = a1[29];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v90 = a2[6];
  v92 = a2[7];
  v88 = a2[8];
  v86 = a2[9];
  v84 = a2[10];
  v82 = a2[11];
  v80 = a2[12];
  v78 = a2[13];
  v76 = a2[14];
  v74 = a2[15];
  v72 = a2[16];
  v70 = a2[17];
  v46 = a2[18];
  v48 = a2[19];
  v50 = a2[20];
  v52 = a2[21];
  v54 = a2[22];
  v56 = a2[23];
  v58 = a2[24];
  v60 = a2[25];
  v62 = a2[26];
  v64 = a2[27];
  v66 = a2[28];
  v68 = a2[29];
  v95 = *a2;
  v96[0] = v2;

  LOBYTE(v2) = static FormatURL.== infix(_:_:)(v96, &v95);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v95 = v7;
  v96[0] = v3;

  v12 = static FormatURL.== infix(_:_:)(v96, &v95);

  if (!v12)
  {
    return 0;
  }

  v95 = v9;
  v96[0] = v5;

  v13 = static FormatURL.== infix(_:_:)(v96, &v95);

  if (!v13)
  {
    return 0;
  }

  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v4);
    sub_1D66B21E4(v8);
    if ((~v8 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v4);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D5D1F044(v4);
    v14 = v8;
LABEL_53:
    sub_1D5D1F044(v14);
    return 0;
  }

  v96[0] = v4;
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v4);
    sub_1D66B21E4(v8);
    sub_1D66B21E4(v4);

    goto LABEL_9;
  }

  v95 = v8;
  sub_1D66B21E4(v4);
  sub_1D66B21E4(v8);
  sub_1D66B21E4(v4);
  v15 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v4);
  if (!v15)
  {
    return 0;
  }

LABEL_11:
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v6);
    sub_1D66B21E4(v10);
    if ((~v10 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v6);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v96[0] = v6;
  if ((~v10 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v6);
    sub_1D66B21E4(v10);
    sub_1D66B21E4(v6);

LABEL_16:
    sub_1D5D1F044(v6);
    v14 = v10;
    goto LABEL_53;
  }

  v95 = v10;
  sub_1D66B21E4(v6);
  sub_1D66B21E4(v10);
  sub_1D66B21E4(v6);
  v16 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v6);
  if (!v16)
  {
    return 0;
  }

LABEL_18:
  if ((~v94 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v94);
    sub_1D66B21E4(v11);
    if ((~v11 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v94);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v96[0] = v94;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v94);
    sub_1D66B21E4(v11);
    sub_1D66B21E4(v94);

LABEL_23:
    sub_1D5D1F044(v94);
    v14 = v11;
    goto LABEL_53;
  }

  v95 = v11;
  sub_1D66B21E4(v94);
  sub_1D66B21E4(v11);
  sub_1D66B21E4(v94);
  v17 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v94);
  if (!v17)
  {
    return 0;
  }

LABEL_25:
  if ((~v91 & 0xF000000000000007) == 0)
  {
    v18 = v90;
    sub_1D66B21E4(v91);
    sub_1D66B21E4(v90);
    v20 = v92;
    v19 = v93;
    if ((~v90 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v91);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v96[0] = v91;
  v18 = v90;
  v20 = v92;
  v19 = v93;
  if ((~v90 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v91);
    sub_1D66B21E4(v90);
    sub_1D66B21E4(v91);

LABEL_30:
    sub_1D5D1F044(v91);
    v14 = v18;
    goto LABEL_53;
  }

  v95 = v90;
  sub_1D66B21E4(v91);
  sub_1D66B21E4(v90);
  sub_1D66B21E4(v91);
  v21 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v91);
  if (!v21)
  {
    return 0;
  }

LABEL_32:
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v96[0] = v19;
    if ((~v20 & 0xF000000000000007) == 0)
    {
      goto LABEL_51;
    }

    v95 = v20;
    sub_1D66B21E4(v19);
    sub_1D66B21E4(v20);
    sub_1D66B21E4(v19);
    v22 = static FormatURL.== infix(_:_:)(v96, &v95);

    sub_1D5D1F044(v19);
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    sub_1D66B21E4(v19);
    sub_1D66B21E4(v20);
    if ((~v20 & 0xF000000000000007) != 0)
    {
      goto LABEL_52;
    }

    sub_1D5D1F044(v19);
  }

  v19 = v89;
  if ((~v89 & 0xF000000000000007) != 0)
  {
    v96[0] = v89;
    v20 = v88;
    if ((~v88 & 0xF000000000000007) == 0)
    {
      goto LABEL_51;
    }

    v95 = v88;
    sub_1D66B21E4(v89);
    sub_1D66B21E4(v88);
    sub_1D66B21E4(v89);
    v23 = static FormatURL.== infix(_:_:)(v96, &v95);

    sub_1D5D1F044(v89);
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    v20 = v88;
    sub_1D66B21E4(v89);
    sub_1D66B21E4(v88);
    if ((~v88 & 0xF000000000000007) != 0)
    {
      goto LABEL_52;
    }

    sub_1D5D1F044(v89);
  }

  v19 = v87;
  if ((~v87 & 0xF000000000000007) == 0)
  {
    v20 = v86;
    sub_1D66B21E4(v87);
    sub_1D66B21E4(v86);
    if ((~v86 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v87);
      v20 = v84;
      v19 = v85;
      goto LABEL_47;
    }

LABEL_52:
    sub_1D5D1F044(v19);
    v14 = v20;
    goto LABEL_53;
  }

  v96[0] = v87;
  v20 = v86;
  if ((~v86 & 0xF000000000000007) == 0)
  {
LABEL_51:
    sub_1D66B21E4(v19);
    sub_1D66B21E4(v20);
    sub_1D66B21E4(v19);

    goto LABEL_52;
  }

  v95 = v86;
  sub_1D66B21E4(v87);
  sub_1D66B21E4(v86);
  sub_1D66B21E4(v87);
  v24 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v87);
  v20 = v84;
  v19 = v85;
  if (!v24)
  {
    return 0;
  }

LABEL_47:
  if ((~v19 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v19);
    sub_1D66B21E4(v20);
    if ((~v20 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v19);
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v96[0] = v19;
  if ((~v20 & 0xF000000000000007) == 0)
  {
    goto LABEL_51;
  }

  v95 = v20;
  sub_1D66B21E4(v19);
  sub_1D66B21E4(v20);
  sub_1D66B21E4(v19);
  v26 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v19);
  if (!v26)
  {
    return 0;
  }

LABEL_57:
  if ((~v83 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v83);
    sub_1D66B21E4(v82);
    if ((~v82 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v83);
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v96[0] = v83;
  if ((~v82 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v83);
    sub_1D66B21E4(v82);
    sub_1D66B21E4(v83);

LABEL_62:
    sub_1D5D1F044(v83);
    v14 = v82;
    goto LABEL_53;
  }

  v95 = v82;
  sub_1D66B21E4(v83);
  sub_1D66B21E4(v82);
  sub_1D66B21E4(v83);
  v27 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v83);
  if (!v27)
  {
    return 0;
  }

LABEL_64:
  if ((~v81 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v81);
    sub_1D66B21E4(v80);
    if ((~v80 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v81);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v96[0] = v81;
  if ((~v80 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v81);
    sub_1D66B21E4(v80);
    sub_1D66B21E4(v81);

LABEL_69:
    sub_1D5D1F044(v81);
    v14 = v80;
    goto LABEL_53;
  }

  v95 = v80;
  sub_1D66B21E4(v81);
  sub_1D66B21E4(v80);
  sub_1D66B21E4(v81);
  v28 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v81);
  if (!v28)
  {
    return 0;
  }

LABEL_71:
  if ((~v79 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v79);
    sub_1D66B21E4(v78);
    if ((~v78 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v79);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v96[0] = v79;
  if ((~v78 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v79);
    sub_1D66B21E4(v78);
    sub_1D66B21E4(v79);

LABEL_76:
    sub_1D5D1F044(v79);
    v14 = v78;
    goto LABEL_53;
  }

  v95 = v78;
  sub_1D66B21E4(v79);
  sub_1D66B21E4(v78);
  sub_1D66B21E4(v79);
  v29 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v79);
  if (!v29)
  {
    return 0;
  }

LABEL_78:
  if ((~v77 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v77);
    sub_1D66B21E4(v76);
    if ((~v76 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v77);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v96[0] = v77;
  if ((~v76 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v77);
    sub_1D66B21E4(v76);
    sub_1D66B21E4(v77);

LABEL_83:
    sub_1D5D1F044(v77);
    v14 = v76;
    goto LABEL_53;
  }

  v95 = v76;
  sub_1D66B21E4(v77);
  sub_1D66B21E4(v76);
  sub_1D66B21E4(v77);
  v30 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v77);
  if (!v30)
  {
    return 0;
  }

LABEL_85:
  if ((~v75 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v75);
    sub_1D66B21E4(v74);
    if ((~v74 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v75);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v96[0] = v75;
  if ((~v74 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v75);
    sub_1D66B21E4(v74);
    sub_1D66B21E4(v75);

LABEL_90:
    sub_1D5D1F044(v75);
    v14 = v74;
    goto LABEL_53;
  }

  v95 = v74;
  sub_1D66B21E4(v75);
  sub_1D66B21E4(v74);
  sub_1D66B21E4(v75);
  v31 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v75);
  if (!v31)
  {
    return 0;
  }

LABEL_92:
  if ((~v73 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v73);
    sub_1D66B21E4(v72);
    if ((~v72 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v73);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v96[0] = v73;
  if ((~v72 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v73);
    sub_1D66B21E4(v72);
    sub_1D66B21E4(v73);

LABEL_97:
    sub_1D5D1F044(v73);
    v14 = v72;
    goto LABEL_53;
  }

  v95 = v72;
  sub_1D66B21E4(v73);
  sub_1D66B21E4(v72);
  sub_1D66B21E4(v73);
  v32 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v73);
  if (!v32)
  {
    return 0;
  }

LABEL_99:
  if ((~v71 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v71);
    sub_1D66B21E4(v70);
    if ((~v70 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v71);
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v96[0] = v71;
  if ((~v70 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v71);
    sub_1D66B21E4(v70);
    sub_1D66B21E4(v71);

LABEL_104:
    sub_1D5D1F044(v71);
    v14 = v70;
    goto LABEL_53;
  }

  v95 = v70;
  sub_1D66B21E4(v71);
  sub_1D66B21E4(v70);
  sub_1D66B21E4(v71);
  v33 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v71);
  if (!v33)
  {
    return 0;
  }

LABEL_106:
  if ((~v47 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v47);
    sub_1D66B21E4(v46);
    if ((~v46 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v47);
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v96[0] = v47;
  if ((~v46 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v47);
    sub_1D66B21E4(v46);
    sub_1D66B21E4(v47);

LABEL_111:
    sub_1D5D1F044(v47);
    v14 = v46;
    goto LABEL_53;
  }

  v95 = v46;
  sub_1D66B21E4(v47);
  sub_1D66B21E4(v46);
  sub_1D66B21E4(v47);
  v34 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v47);
  if (!v34)
  {
    return 0;
  }

LABEL_113:
  if ((~v49 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v49);
    sub_1D66B21E4(v48);
    if ((~v48 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v49);
      goto LABEL_120;
    }

    goto LABEL_118;
  }

  v96[0] = v49;
  if ((~v48 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v49);
    sub_1D66B21E4(v48);
    sub_1D66B21E4(v49);

LABEL_118:
    sub_1D5D1F044(v49);
    v14 = v48;
    goto LABEL_53;
  }

  v95 = v48;
  sub_1D66B21E4(v49);
  sub_1D66B21E4(v48);
  sub_1D66B21E4(v49);
  v35 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v49);
  if (!v35)
  {
    return 0;
  }

LABEL_120:
  if ((~v51 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v51);
    sub_1D66B21E4(v50);
    if ((~v50 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v51);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v96[0] = v51;
  if ((~v50 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v51);
    sub_1D66B21E4(v50);
    sub_1D66B21E4(v51);

LABEL_125:
    sub_1D5D1F044(v51);
    v14 = v50;
    goto LABEL_53;
  }

  v95 = v50;
  sub_1D66B21E4(v51);
  sub_1D66B21E4(v50);
  sub_1D66B21E4(v51);
  v36 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v51);
  if (!v36)
  {
    return 0;
  }

LABEL_127:
  if ((~v53 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v53);
    sub_1D66B21E4(v52);
    if ((~v52 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v53);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v96[0] = v53;
  if ((~v52 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v53);
    sub_1D66B21E4(v52);
    sub_1D66B21E4(v53);

LABEL_132:
    sub_1D5D1F044(v53);
    v14 = v52;
    goto LABEL_53;
  }

  v95 = v52;
  sub_1D66B21E4(v53);
  sub_1D66B21E4(v52);
  sub_1D66B21E4(v53);
  v37 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v53);
  if (!v37)
  {
    return 0;
  }

LABEL_134:
  if ((~v55 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v55);
    sub_1D66B21E4(v54);
    if ((~v54 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v55);
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  v96[0] = v55;
  if ((~v54 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v55);
    sub_1D66B21E4(v54);
    sub_1D66B21E4(v55);

LABEL_139:
    sub_1D5D1F044(v55);
    v14 = v54;
    goto LABEL_53;
  }

  v95 = v54;
  sub_1D66B21E4(v55);
  sub_1D66B21E4(v54);
  sub_1D66B21E4(v55);
  v38 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v55);
  if (!v38)
  {
    return 0;
  }

LABEL_141:
  if ((~v57 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v57);
    sub_1D66B21E4(v56);
    if ((~v56 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v57);
      goto LABEL_148;
    }

    goto LABEL_146;
  }

  v96[0] = v57;
  if ((~v56 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v57);
    sub_1D66B21E4(v56);
    sub_1D66B21E4(v57);

LABEL_146:
    sub_1D5D1F044(v57);
    v14 = v56;
    goto LABEL_53;
  }

  v95 = v56;
  sub_1D66B21E4(v57);
  sub_1D66B21E4(v56);
  sub_1D66B21E4(v57);
  v39 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v57);
  if (!v39)
  {
    return 0;
  }

LABEL_148:
  if ((~v59 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v59);
    sub_1D66B21E4(v58);
    if ((~v58 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v59);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v96[0] = v59;
  if ((~v58 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v59);
    sub_1D66B21E4(v58);
    sub_1D66B21E4(v59);

LABEL_153:
    sub_1D5D1F044(v59);
    v14 = v58;
    goto LABEL_53;
  }

  v95 = v58;
  sub_1D66B21E4(v59);
  sub_1D66B21E4(v58);
  sub_1D66B21E4(v59);
  v40 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v59);
  if (!v40)
  {
    return 0;
  }

LABEL_155:
  if ((~v61 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v61);
    sub_1D66B21E4(v60);
    if ((~v60 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v61);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v96[0] = v61;
  if ((~v60 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v61);
    sub_1D66B21E4(v60);
    sub_1D66B21E4(v61);

LABEL_160:
    sub_1D5D1F044(v61);
    v14 = v60;
    goto LABEL_53;
  }

  v95 = v60;
  sub_1D66B21E4(v61);
  sub_1D66B21E4(v60);
  sub_1D66B21E4(v61);
  v41 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v61);
  if (!v41)
  {
    return 0;
  }

LABEL_162:
  if ((~v63 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v63);
    sub_1D66B21E4(v62);
    if ((~v62 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v63);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v96[0] = v63;
  if ((~v62 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v63);
    sub_1D66B21E4(v62);
    sub_1D66B21E4(v63);

LABEL_167:
    sub_1D5D1F044(v63);
    v14 = v62;
    goto LABEL_53;
  }

  v95 = v62;
  sub_1D66B21E4(v63);
  sub_1D66B21E4(v62);
  sub_1D66B21E4(v63);
  v42 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v63);
  if (!v42)
  {
    return 0;
  }

LABEL_169:
  if ((~v65 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v65);
    sub_1D66B21E4(v64);
    if ((~v64 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v65);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v96[0] = v65;
  if ((~v64 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v65);
    sub_1D66B21E4(v64);
    sub_1D66B21E4(v65);

LABEL_174:
    sub_1D5D1F044(v65);
    v14 = v64;
    goto LABEL_53;
  }

  v95 = v64;
  sub_1D66B21E4(v65);
  sub_1D66B21E4(v64);
  sub_1D66B21E4(v65);
  v43 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v65);
  if (!v43)
  {
    return 0;
  }

LABEL_176:
  if ((~v67 & 0xF000000000000007) != 0)
  {
    v96[0] = v67;
    if ((~v66 & 0xF000000000000007) != 0)
    {
      v95 = v66;
      sub_1D66B21E4(v67);
      sub_1D66B21E4(v66);
      sub_1D66B21E4(v67);
      v44 = static FormatURL.== infix(_:_:)(v96, &v95);

      sub_1D5D1F044(v67);
      if (!v44)
      {
        return 0;
      }

      goto LABEL_183;
    }

    sub_1D66B21E4(v67);
    sub_1D66B21E4(v66);
    sub_1D66B21E4(v67);

    goto LABEL_181;
  }

  sub_1D66B21E4(v67);
  sub_1D66B21E4(v66);
  if ((~v66 & 0xF000000000000007) != 0)
  {
LABEL_181:
    sub_1D5D1F044(v67);
    v14 = v66;
    goto LABEL_53;
  }

  sub_1D5D1F044(v67);
LABEL_183:
  if ((~v69 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v69);
    sub_1D66B21E4(v68);
    if ((~v68 & 0xF000000000000007) == 0)
    {
      sub_1D5D1F044(v69);
      return 1;
    }

    goto LABEL_188;
  }

  v96[0] = v69;
  if ((~v68 & 0xF000000000000007) == 0)
  {
    sub_1D66B21E4(v69);
    sub_1D66B21E4(v68);
    sub_1D66B21E4(v69);

LABEL_188:
    sub_1D5D1F044(v69);
    v14 = v68;
    goto LABEL_53;
  }

  v95 = v68;
  sub_1D66B21E4(v69);
  sub_1D66B21E4(v68);
  sub_1D66B21E4(v69);
  v45 = static FormatURL.== infix(_:_:)(v96, &v95);

  sub_1D5D1F044(v69);
  return v45;
}

unint64_t sub_1D6844138(uint64_t a1)
{
  result = sub_1D6844160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6844160()
{
  result = qword_1EC88C868;
  if (!qword_1EC88C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C868);
  }

  return result;
}

unint64_t sub_1D68441B4(void *a1)
{
  a1[1] = sub_1D665B10C();
  a1[2] = sub_1D67062FC();
  result = sub_1D68441EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68441EC()
{
  result = qword_1EC88C870;
  if (!qword_1EC88C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C870);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1D6844284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 240))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D68442E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6844380(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  sub_1D725A76C();
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16) && (v6 = sub_1D6D8CB60(v4, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 24 * v6 + 16);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13[0] = v4;
    v13[1] = v3;

    sub_1D6844C30(v13, v14);
    v10 = v14[0];
    v9 = v14[1];
    v8 = v14[2];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_1D6D76ED8(v10, v9, v8, v4, v3, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v13[0];
    swift_endAccess();
  }

  sub_1D725A77C();
  return v8;
}

uint64_t sub_1D68444DC(uint64_t a1)
{
  v3 = v1[3];

  v4 = sub_1D5FB855C(a1, v3);
  LOBYTE(v3) = sub_1D5BFC390(v4, v3);

  if (v3 & 1) != 0 && (sub_1D670EDB8(a1, v1[4]))
  {
    v5 = v1[5];
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 40;
      do
      {

        switch(sub_1D72641CC())
        {
          case 0:
            if (qword_1EC87DB60 == -1)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          case 1:
            if (qword_1EDF05C38 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 2:
            if (qword_1EC87DB90 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 3:
            if (qword_1EDF1BBE8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 4:
            if (qword_1EC87DB70 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 5:
            if (qword_1EDF05CB8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 6:
            if (qword_1EC87DB80 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 7:
            if (qword_1EC87DB98 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 8:
            if (qword_1EC87DBA0 == -1)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          case 9:
            if (qword_1EC87DBA8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 10:
            if (qword_1EC87DBB0 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 11:
            if (qword_1EC87DBB8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          case 12:
            if (qword_1EC87DBC0 != -1)
            {
LABEL_31:
              swift_once();
            }

LABEL_33:

            break;
          default:
            v8 = sub_1D726203C();
            v9 = [objc_opt_self() systemImageNamed_];

            if (!v9)
            {
              return 0;
            }

            break;
        }

        v7 += 16;
        --v6;
      }

      while (v6);
    }

    v10 = v1[6];
    v11 = *(v10 + 16);
    if (!v11)
    {
      return 1;
    }

    for (i = v10 + 40; ; i += 16)
    {
      swift_bridgeObjectRetain_n();
      v13 = sub_1D61E05F4();
      if (v13 != 13)
      {
        break;
      }

      v14 = sub_1D726203C();
      v15 = [objc_opt_self() systemImageNamed_];

      if (v15)
      {

        return 0;
      }

      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    switch(v13)
    {
      case 1:
        if (qword_1EDF05C38 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 2:
        if (qword_1EC87DB90 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 3:
        if (qword_1EDF1BBE8 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 4:
        if (qword_1EC87DB70 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 5:
        if (qword_1EDF05CB8 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 6:
        if (qword_1EC87DB80 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 7:
        if (qword_1EC87DB98 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 8:
        if (qword_1EC87DBA0 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 9:
        if (qword_1EC87DBA8 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 10:
        if (qword_1EC87DBB0 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 11:
        if (qword_1EC87DBB8 != -1)
        {
          goto LABEL_73;
        }

        break;
      case 12:
        if (qword_1EC87DBC0 != -1)
        {
          goto LABEL_73;
        }

        break;
      default:
        if (qword_1EC87DB60 != -1)
        {
LABEL_73:
          swift_once();
        }

        break;
    }
  }

  return 0;
}

uint64_t sub_1D6844B70()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatStringSelector();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  result = sub_1D725A7AC();
  *(v2 + 24) = result;
  qword_1EDFFCAB8 = v2;
  return result;
}

uint64_t sub_1D6844C30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = sub_1D7257A4C();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  *&v38[0] = v9;
  *(&v38[0] + 1) = v8;
  sub_1D5BF4D9C();

  v10 = sub_1D7263ACC();

  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = v8;
    v33 = v9;
    v34 = a2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D699770C(0, v11, 0);
    v12 = v37;
    v13 = (v4 + 8);
    v31 = v10;
    v14 = (v10 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;

      v36[0] = MEMORY[0x1DA6F97E0](v15, v16, v17, v18);
      v36[1] = v19;
      sub_1D725795C();
      v20 = sub_1D7263A4C();
      v22 = v21;
      (*v13)(v7, v35);

      sub_1D6846338(v20, v22, v38);

      v37 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D699770C((v23 > 1), v24 + 1, 1);
        v12 = v37;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 56 * v24;
      v26 = v38[0];
      v27 = v38[1];
      v28 = v38[2];
      *(v25 + 80) = v39;
      *(v25 + 48) = v27;
      *(v25 + 64) = v28;
      *(v25 + 32) = v26;
      v14 += 4;
      --v11;
    }

    while (v11);

    v9 = v33;
    a2 = v34;
    v8 = v32;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v36[0] = v12;

  sub_1D6845970(v36);

  v30 = v36[0];
  *a2 = v9;
  a2[1] = v8;
  a2[2] = v30;
  return result;
}

uint64_t sub_1D6844EDC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6844F60(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = *v13;
      v15 = v13[1];

      sub_1D6845150(v14, v15, a1);
      if (v3)
      {
        goto LABEL_21;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v16 = *(v1 + 32);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  if (!v19)
  {
LABEL_15:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_24;
      }

      if (v22 >= v20)
      {
      }

      v19 = *(v16 + 56 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v22 = v21;
LABEL_18:
    v23 = (*(v16 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
    v24 = *v23;
    v25 = v23[1];

    sub_1D6845150(v24, v25, a1);
    if (v3)
    {
      break;
    }

    v19 &= v19 - 1;

    v21 = v22;
    if (!v19)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
}

uint64_t sub_1D6845150(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D726230C())
  {
    sub_1D5E2D970();
    swift_allocError();
    *v11 = a1;
    v11[1] = a2;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = 0x7000000000000004;
    swift_willThrow();
  }

  result = sub_1D726230C();
  if (result)
  {

    if (sub_1D726231C() & 1) != 0 || (, , (sub_1D726231C()))
    {
      v91 = v3;
      v92 = a3;
      swift_arrayDestroy();

      v13 = sub_1D5FD24A4(1uLL, a1, a2);

      v14 = sub_1D726221C();

      if (v14 < 0)
      {
        __break(1u);
      }

      else
      {
        v15 = sub_1D726396C();
        if (v16)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        if (v17 >> 14 >= v13 >> 14)
        {
          v18 = sub_1D72639BC();
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v25 = MEMORY[0x1DA6F97E0](v18, v20, v22, v24);
          v27 = v26;

          v28 = *(v7 + 28);
          v29 = type metadata accessor for FormatVersionRequirement(0);
          (*(*(v29 - 8) + 56))(&v10[v28], 1, 1, v29);
          *v10 = v25;
          *(v10 + 1) = v27;
          *(v10 + 3) = 0;
          *(v10 + 4) = 0;
          *(v10 + 2) = 0;
          v10[40] = 2;
          *(v10 + 6) = MEMORY[0x1E69E7CC0];
          v30 = swift_allocBox();
          sub_1D5EB9A4C(v10, v31);
          sub_1D6C4D24C(v30 | 0x1000000000000000);

          return sub_1D60E13EC(v10);
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    swift_arrayDestroy();
    v93 = a1;
    v94 = a2;
    sub_1D5BF4D9C();
    v32 = sub_1D7263ACC();
    if (v32[2] != 2)
    {
    }

    v92 = a3;
    v7 = v32[4];
    v33 = v32[5];
    v10 = v32[6];
    v34 = v32;

    v35 = sub_1D726396C();
    if (v36)
    {
      v35 = v33;
    }

    if (v33 >> 14 < v35 >> 14)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v37 = sub_1D72639BC();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v10 = MEMORY[0x1DA6F97E0](v37, v39, v41, v43);
    v7 = v44;

    if (v34[2] < 2uLL)
    {
LABEL_96:
      __break(1u);
LABEL_97:

LABEL_91:
      v52 = &unk_1F50F46E0;
      goto LABEL_25;
    }

    v45 = v34[8];
    v46 = v34[9];
    v47 = v34[10];
    v48 = v34[11];

    v49 = MEMORY[0x1DA6F97E0](v45, v46, v47, v48);
    v51 = v50;

    if (v49 == 1702195828 && v51 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0 || v49 == 0x65736C6166 && v51 == 0xE500000000000000 || (result = sub_1D72646CC(), (result & 1) != 0))
    {

      v52 = &unk_1F50F4690;
LABEL_25:
      v53 = sub_1D5E26E28(v52);
      v54 = swift_allocObject();
      *(v54 + 16) = v10;
      *(v54 + 24) = v7;
      *(v54 + 32) = v53;
      *(v54 + 40) = 1;
      sub_1D6C4D24C(v54 | 0x3000000000000000);
    }

    v55 = HIBYTE(v51) & 0xF;
    v56 = v49 & 0xFFFFFFFFFFFFLL;
    if ((v51 & 0x2000000000000000) != 0)
    {
      v57 = HIBYTE(v51) & 0xF;
    }

    else
    {
      v57 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57)
    {
      goto LABEL_97;
    }

    if ((v51 & 0x1000000000000000) != 0)
    {
      v95 = 0;
      sub_1D5FD15E0(v49, v51, 10);
      v89 = v90;
LABEL_90:

      if ((v89 & 1) == 0)
      {
        v52 = &unk_1F50F46B8;
        goto LABEL_25;
      }

      goto LABEL_91;
    }

    if ((v51 & 0x2000000000000000) != 0)
    {
      v93 = v49;
      v94 = v51 & 0xFFFFFFFFFFFFFFLL;
      if (v49 == 43)
      {
        if (v55)
        {
          if (--v55)
          {
            v75 = 0;
            v76 = &v93 + 1;
            while (1)
            {
              v77 = *v76 - 48;
              if (v77 > 9)
              {
                break;
              }

              v78 = (v75 * 10) >> 64;
              v79 = 10 * v75;
              if (v78 != v79 >> 63)
              {
                break;
              }

              v64 = __OFADD__(v79, v77);
              v75 = v79 + v77;
              if (v64)
              {
                break;
              }

              ++v76;
              if (!--v55)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_88;
        }

LABEL_103:
        __break(1u);
        return result;
      }

      if (v49 != 45)
      {
        if (v55)
        {
          v84 = 0;
          v85 = &v93;
          while (1)
          {
            v86 = *v85 - 48;
            if (v86 > 9)
            {
              break;
            }

            v87 = (v84 * 10) >> 64;
            v88 = 10 * v84;
            if (v87 != v88 >> 63)
            {
              break;
            }

            v64 = __OFADD__(v88, v86);
            v84 = v88 + v86;
            if (v64)
            {
              break;
            }

            v85 = (v85 + 1);
            if (!--v55)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_88;
      }

      if (v55)
      {
        if (--v55)
        {
          v65 = 0;
          v66 = &v93 + 1;
          while (1)
          {
            v67 = *v66 - 48;
            if (v67 > 9)
            {
              break;
            }

            v68 = (v65 * 10) >> 64;
            v69 = 10 * v65;
            if (v68 != v69 >> 63)
            {
              break;
            }

            v64 = __OFSUB__(v69, v67);
            v65 = v69 - v67;
            if (v64)
            {
              break;
            }

            ++v66;
            if (!--v55)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_88;
      }
    }

    else
    {
      if ((v49 & 0x1000000000000000) != 0)
      {
        result = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D7263E5C();
      }

      v58 = *result;
      if (v58 == 43)
      {
        v55 = v56 - 1;
        if (v56 >= 1)
        {
          if (v56 != 1)
          {
            if (result)
            {
              v70 = 0;
              v71 = (result + 1);
              while (1)
              {
                v72 = *v71 - 48;
                if (v72 > 9)
                {
                  goto LABEL_88;
                }

                v73 = (v70 * 10) >> 64;
                v74 = 10 * v70;
                if (v73 != v74 >> 63)
                {
                  goto LABEL_88;
                }

                v64 = __OFADD__(v74, v72);
                v70 = v74 + v72;
                if (v64)
                {
                  goto LABEL_88;
                }

                ++v71;
                if (!--v55)
                {
                  goto LABEL_89;
                }
              }
            }

            goto LABEL_80;
          }

          goto LABEL_88;
        }

        goto LABEL_102;
      }

      if (v58 != 45)
      {
        if (v56)
        {
          if (result)
          {
            v80 = 0;
            while (1)
            {
              v81 = *result - 48;
              if (v81 > 9)
              {
                goto LABEL_88;
              }

              v82 = (v80 * 10) >> 64;
              v83 = 10 * v80;
              if (v82 != v83 >> 63)
              {
                goto LABEL_88;
              }

              v64 = __OFADD__(v83, v81);
              v80 = v83 + v81;
              if (v64)
              {
                goto LABEL_88;
              }

              ++result;
              if (!--v56)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_80;
        }

LABEL_88:
        LOBYTE(v55) = 1;
        goto LABEL_89;
      }

      v55 = v56 - 1;
      if (v56 >= 1)
      {
        if (v56 != 1)
        {
          if (result)
          {
            v59 = 0;
            v60 = (result + 1);
            while (1)
            {
              v61 = *v60 - 48;
              if (v61 > 9)
              {
                goto LABEL_88;
              }

              v62 = (v59 * 10) >> 64;
              v63 = 10 * v59;
              if (v62 != v63 >> 63)
              {
                goto LABEL_88;
              }

              v64 = __OFSUB__(v63, v61);
              v59 = v63 - v61;
              if (v64)
              {
                goto LABEL_88;
              }

              ++v60;
              if (!--v55)
              {
                goto LABEL_89;
              }
            }
          }

LABEL_80:
          LOBYTE(v55) = 0;
LABEL_89:
          v95 = v55;
          v89 = v55;
          goto LABEL_90;
        }

        goto LABEL_88;
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  return result;
}

uint64_t sub_1D6845970(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFB1C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1D726449C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 3) >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 40);
          v17 = *(v13 + 56);
          v18 = *(v13 - 24);
          *(v13 + 1) = *(v13 - 40);
          *(v13 + 2) = v18;
          *(v13 + 3) = *(v13 - 8);
          *(v13 + 8) = *(v13 + 1);
          *(v13 - 5) = v14;
          *(v13 - 4) = v15;
          *(v13 - 3) = v11;
          *(v13 - 1) = v16;
          *v13 = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D726276C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1D6845AE0(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}