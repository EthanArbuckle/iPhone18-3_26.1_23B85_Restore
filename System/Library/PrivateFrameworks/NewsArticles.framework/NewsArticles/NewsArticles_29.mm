uint64_t sub_1D7C7DC14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v68 = sub_1D7D2E24C();
  v62 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v13);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  if (v17 > 2)
  {
    if (v17 != 3)
    {
      if (v17 != 4)
      {

        v69[0] = sub_1D7C85B04(v25, sub_1D7B10FD4, sub_1D79E66A0);
        sub_1D7C77F88(v69, &selRef_computedGlobalScoreCoefficient);
        return v69[0];
      }

      goto LABEL_7;
    }

    return sub_1D7C89960(a1, a7);
  }

  else
  {
    if (!*(a2 + 8))
    {

      return a1;
    }

    if (v17 == 1)
    {
LABEL_7:

      v69[0] = sub_1D7C85B04(v18, sub_1D7B10FD4, sub_1D79E66A0);
      sub_1D7C77F0C(v69);
      return v69[0];
    }

    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v22 = *(a2 + 65);
    v69[0] = 0xD000000000000012;
    v69[1] = 0x80000001D7D67580;
    MEMORY[0x1EEE9AC00](v14, v15);
    *(&v61 - 2) = v69;
    if (sub_1D7B8ABB4(sub_1D7C8AD3C, (&v61 - 4), v23))
    {

      v69[0] = sub_1D7C85B04(v24, sub_1D7B10FD4, sub_1D79E66A0);
      sub_1D7C77F88(v69, &selRef_personalizationScore);
      return v69[0];
    }

    swift_beginAccess();
    v26 = sub_1D7C7A96C(a1, a4, (a5 + 16));
    swift_endAccess();
    if ((v22 & 1) == 0 && (v21 & 1) == 0)
    {
      v48 = sub_1D7B754D4(0, 1, a6);
      a1 = sub_1D7C89E7C(a1, v48, v26, v20);

      return a1;
    }

    if (a1 >> 62)
    {
      goto LABEL_46;
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v26;
    if (v27)
    {
LABEL_21:
      v28 = 0;
      v63 = a1 & 0xFFFFFFFFFFFFFF8;
      v64 = a1 & 0xC000000000000001;
      v29 = MEMORY[0x1E69E7CC8];
      v65 = a1;
      while (1)
      {
        if (v64)
        {
          a1 = MEMORY[0x1DA70EF00](v28, a1);
          v30 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v28 >= *(v63 + 16))
          {
            goto LABEL_43;
          }

          a1 = *(a1 + 8 * v28 + 32);

          v30 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v27 = sub_1D7D3167C();
            v61 = v26;
            if (!v27)
            {
              break;
            }

            goto LABEL_21;
          }
        }

        v66 = v30;
        v31 = [*(a1 + 16) identifier];
        v32 = sub_1D7D3034C();
        v34 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[0] = v29;
        v26 = v29;
        v37 = sub_1D7A18FFC(v32, v34);
        v38 = v29[2];
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_44;
        }

        v41 = v36;
        if (v29[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v36)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v26 = v69;
            sub_1D7B98848();
            if (v41)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_1D7B9420C(v40, isUniquelyReferenced_nonNull_native);
          v26 = v69[0];
          v42 = sub_1D7A18FFC(v32, v34);
          if ((v41 & 1) != (v43 & 1))
          {
            result = sub_1D7D31A2C();
            __break(1u);
            return result;
          }

          v37 = v42;
          if (v41)
          {
LABEL_22:

            v29 = v69[0];
            *(*(v69[0] + 56) + 8 * v37) = a1;

            goto LABEL_23;
          }
        }

        v29 = v69[0];
        *(v69[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
        v44 = (v29[6] + 16 * v37);
        *v44 = v32;
        v44[1] = v34;
        *(v29[7] + 8 * v37) = a1;

        v45 = v29[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_45;
        }

        v29[2] = v47;
LABEL_23:
        ++v28;
        a1 = v65;
        if (v66 == v27)
        {
          goto LABEL_48;
        }
      }
    }

    v29 = MEMORY[0x1E69E7CC8];
LABEL_48:
    v69[0] = MEMORY[0x1E69E7CC0];
    v49 = v61[2];
    if (v49)
    {
      v66 = *(v62 + 16);
      v50 = v61 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v51 = *(v62 + 72);
      v52 = (v62 + 8);
      v65 = MEMORY[0x1E69E7CC0];
      v66(v67, v50, v68);
      while (1)
      {
        v54 = [sub_1D7D2E23C() articleID];
        swift_unknownObjectRelease();
        v55 = sub_1D7D3034C();
        v57 = v56;

        if (!v29[2])
        {
          break;
        }

        sub_1D7A18FFC(v55, v57);
        v59 = v58;

        v53 = *v52;
        if ((v59 & 1) == 0)
        {
          goto LABEL_51;
        }

        v60 = v53(v67, v68);
        MEMORY[0x1DA70E080](v60);
        if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        v65 = v69[0];
LABEL_52:
        v50 += v51;
        if (!--v49)
        {

          return v65;
        }

        v66(v67, v50, v68);
      }

      v53 = *v52;
LABEL_51:
      v53(v67, v68);
      goto LABEL_52;
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D7C7E32C(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, void (*a6)(unint64_t *), unint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a4)
    {
      sub_1D7D30C4C();
      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      sub_1D7D29ABC();
      type metadata accessor for ArticleRecirculationConfigFactory();
      sub_1D7BAEB98(a8, 0, v23);
      a3 = 0;
      a2 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7BB010C(a1, a8, v23);
    }

    v22 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1D7C88238(a9, v22, a2, a3, a10, a6, a7, v18);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1D7C85E78();
    v19 = swift_allocError();
    *v20 = 2;
    v23[0] = v19;
    v24 = 1;
    a6(v23);
    return sub_1D7C89230(v23, &unk_1EE0C0308, &type metadata for ArticleRecirculationService.MergeResult, MEMORY[0x1E69D6AF8]);
  }
}

uint64_t sub_1D7C7E54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v89 = a3;
  v7 = sub_1D7D2DB3C();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D7D2DB7C();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v10);
  v92 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v12 = 7104878;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1D7D5D170;
  v100 = swift_allocObject();
  *(v100 + 16) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  dispatch_group_enter(v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = v4;
  *(&v86 - 2) = v4;
  *(&v86 - 1) = a2;
  sub_1D7D294BC();

  v17 = sub_1D7D2934C();
  sub_1D7D293AC();

  v90 = v14;

  v18 = sub_1D7D2934C();
  sub_1D7D293DC();

  *(swift_allocObject() + 16) = v13;
  v87 = v13;
  v19 = sub_1D7D2934C();
  sub_1D7D2941C();

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  v86 = xmmword_1D7D3B4D0;
  *(v20 + 16) = xmmword_1D7D3B4D0;
  aBlock = 0;
  v103 = 0xE000000000000000;
  v21 = [a1 publisherID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D7D3034C();
    v25 = v24;
  }

  else
  {
    v25 = 0xE300000000000000;
    v23 = 7104878;
  }

  MEMORY[0x1DA70DE90](v23, v25);

  v26 = aBlock;
  v27 = v103;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D79D6AE0();
  *(v20 + 64) = v28;
  *(v20 + 32) = v26;
  *(v20 + 40) = v27;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v29 = swift_allocObject();
  *(v29 + 16) = v86;
  aBlock = 0;
  v103 = 0xE000000000000000;
  v30 = [a1 surfacedBySectionID];
  if (v30)
  {
    v31 = v30;
    v12 = sub_1D7D3034C();
    v33 = v32;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  MEMORY[0x1DA70DE90](v12, v33);

  v34 = aBlock;
  v35 = v103;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = v28;
  *(v29 + 32) = v34;
  *(v29 + 40) = v35;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v36 = [a1 publisherID];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1D7D3034C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v108 = v38;
  v109[0] = v40;
  v41 = [a1 surfacedBySectionID];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D7D3034C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = 0;
  v109[1] = v43;
  v109[2] = v45;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v49 = &v109[2 * v46];
  while (++v46 != 3)
  {
    v50 = v49 + 2;
    v51 = *v49;
    v49 += 2;
    if (v51)
    {
      v52 = *(v50 - 3);

      v53 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1D79A8020(0, *(v48 + 2) + 1, 1, v48);
      }

      v55 = *(v48 + 2);
      v54 = *(v48 + 3);
      if (v55 >= v54 >> 1)
      {
        v48 = sub_1D79A8020((v54 > 1), v55 + 1, 1, v48);
      }

      *(v48 + 2) = v55 + 1;
      v56 = &v48[16 * v55];
      *(v56 + 4) = v52;
      *(v56 + 5) = v51;
      v47 = v53;
      goto LABEL_16;
    }
  }

  sub_1D7C8A6D4(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v57 = v87;
  dispatch_group_enter(v87);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v86 - 2) = v88;
  *(&v86 - 1) = v48;
  sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
  sub_1D7D294BC();
  v60 = swift_allocObject();
  v62 = v99;
  v61 = v100;
  v60[2] = a1;
  v60[3] = v62;
  v60[4] = v61;
  swift_unknownObjectRetain();

  v63 = sub_1D7D2934C();
  sub_1D7D293AC();

  *(swift_allocObject() + 16) = v48;
  v64 = sub_1D7D2934C();
  sub_1D7D293DC();

  *(swift_allocObject() + 16) = v57;
  v65 = v57;
  v66 = sub_1D7D2934C();
  sub_1D7D2941C();

  if ([a1 respondsToSelector_])
  {
    v67 = [a1 articleRecirculationConfigAssetHandle];
    if (v67)
    {
      v68 = v67;
      dispatch_group_enter(v65);
      MEMORY[0x1EEE9AC00](v69, v70);
      *(&v86 - 2) = v68;
      sub_1D7C8A6D4(0, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      sub_1D7D294BC();

      v71 = sub_1D7D2934C();
      sub_1D7D293AC();

      *(swift_allocObject() + 16) = v65;
      v72 = v65;
      v73 = sub_1D7D2934C();
      sub_1D7D2941C();
    }
  }

  v88 = v65;
  if (qword_1EE0C56A0 != -1)
  {
    swift_once();
  }

  v74 = swift_allocObject();
  v75 = v99;
  v76 = v100;
  v74[2] = v90;
  v74[3] = v75;
  v77 = v98;
  v74[4] = v76;
  v74[5] = v77;
  v78 = v91;
  v74[6] = v89;
  v74[7] = v78;
  v106 = sub_1D7C85DA4;
  v107 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = sub_1D79FE25C;
  v105 = &block_descriptor_57;
  v79 = _Block_copy(&aBlock);

  v80 = v92;
  sub_1D7D2DB5C();
  v101 = v47;
  sub_1D7C85C1C(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
  v81 = MEMORY[0x1E69E7F60];
  sub_1D7C8A618(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7C80AD0(&qword_1EE0BF270, &qword_1EE0BF280, v81);
  v82 = v94;
  v83 = v97;
  sub_1D7D313AC();
  v84 = v88;
  sub_1D7D30DDC();
  _Block_release(v79);

  (*(v96 + 8))(v82, v83);
  (*(v93 + 8))(v80, v95);
}

uint64_t sub_1D7C7F1D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;

  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D79D6AE0();
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  sub_1D7D30C6C();
  sub_1D7D29AAC();
}

uint64_t sub_1D7C7F334()
{
  sub_1D7D30C4C();
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D79D6AE0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D7D29ABC();
}

id sub_1D7C7F498(id *a1, void *a2, void *a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;

  v12 = [a2 publisherID];
  if (v12)
  {
    v13 = v12;
    v32 = a3;
    v14 = a4;
    v15 = sub_1D7D3034C();
    v17 = v16;

    if (v9 == v15 && v11 == v17)
    {

LABEL_14:
      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D7D3B4D0;
      sub_1D798C3BC(0, &qword_1EE0BF070);
      sub_1D7D315DC();
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1D79D6AE0();
      *(v29 + 32) = 0;
      *(v29 + 40) = 0xE000000000000000;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      swift_beginAccess();
      *a3 = v7;
      goto LABEL_21;
    }

    v19 = sub_1D7D3197C();

    a4 = v14;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  result = [a2 surfacedBySectionID];
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = sub_1D7D3034C();
  v24 = v23;

  v25 = [v7 identifier];
  v26 = sub_1D7D3034C();
  v28 = v27;

  if (v26 == v22 && v28 == v24)
  {
  }

  else
  {
    v30 = sub_1D7D3197C();

    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7D3B4D0;
  sub_1D798C3BC(0, &qword_1EE0BF070);
  sub_1D7D315DC();
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1D79D6AE0();
  *(v31 + 32) = 0;
  *(v31 + 40) = 0xE000000000000000;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  swift_beginAccess();
  *a4 = v7;
LABEL_21:
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7C7F8F8(uint64_t a1, uint64_t a2)
{
  sub_1D7D30C4C();
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4E0;
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1DA70E0B0](a2, MEMORY[0x1E69E6158]);
  v7 = v6;
  *(v3 + 56) = v4;
  v8 = sub_1D79D6AE0();
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  *(v3 + 96) = v4;
  *(v3 + 104) = v8;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_1D7D29ABC();
}

uint64_t sub_1D7C7FA7C()
{
  sub_1D7C85ECC(0, &unk_1EE0C02F8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7C7FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1D7C85DF4;
  v11[5] = v10;
  v15[4] = sub_1D7C85E6C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D79E9424;
  v15[3] = &block_descriptor_69_0;
  v12 = _Block_copy(v15);

  v13 = [a5 fetchDataProviderWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D7C7FC3C(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
LABEL_3:
    a3(v8);

    return;
  }

  if (!a1)
  {
    sub_1D7C85E78();
    v8 = swift_allocError();
    v6 = v8;
    *v15 = 4;
    goto LABEL_3;
  }

  v10 = [swift_unknownObjectRetain() data];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D7D2827C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  a5(v12, v14);
  sub_1D79EA2D0(v12, v14);

  swift_unknownObjectRelease();
}

uint64_t sub_1D7C7FD60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  sub_1D79EA38C(v3, v4);
  return sub_1D79EA2D0(v5, v6);
}

void sub_1D7C7FDD8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v89 = v8;
  v90 = v9;
  v11 = v10;
  v12 = sub_1D7D3039C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C85ECC(0, &qword_1EE0BEAA8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  swift_beginAccess();
  v18 = *(v11 + 24);
  v87[2] = v3;
  v88 = v5;
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = *(v11 + 16);
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1D7D3038C();
    v21 = sub_1D7D3035C();
    v23 = v22;

    (*(v13 + 8))(v16, v12);
  }

  else
  {
LABEL_6:
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  v17[4] = v21;
  v17[5] = v23;
  v24 = v89;
  swift_beginAccess();
  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [v25 articleRecirculationConfigJSON];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_1D7D3034C();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

LABEL_14:
    v32 = 0;
    v34 = 0xF000000000000000;
    goto LABEL_15;
  }

  sub_1D7D3038C();
  v32 = sub_1D7D3035C();
  v34 = v33;

  (*(v13 + 8))(v16, v12);
LABEL_15:
  v17[6] = v32;
  v17[7] = v34;
  v35 = v90;
  swift_beginAccess();
  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_22;
  }

  v37 = [v36 articleRecirculationConfigJSON];
  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = v37;
  v39 = sub_1D7D3034C();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

LABEL_22:
    v43 = 0;
    v45 = 0xF000000000000000;
    goto LABEL_23;
  }

  sub_1D7D3038C();
  v43 = sub_1D7D3035C();
  v45 = v44;

  (*(v13 + 8))(v16, v12);
LABEL_23:
  v17[8] = v43;
  v17[9] = v45;
  swift_beginAccess();
  v46 = *(v7 + 16);
  v47 = *(v7 + 24);
  v17[10] = v46;
  v17[11] = v47;
  sub_1D79EA38C(v46, v47);
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = 4;
  v51 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (v48 <= 4)
  {
    v52 = 4;
  }

  else
  {
    v52 = v48;
  }

  v53 = v52 + 1;
  v54 = 16 * v48 + 40;
  while (v48 != 4)
  {
    if (v53 == ++v48)
    {
      __break(1u);
      goto LABEL_62;
    }

    v55 = v54 + 16;
    v56 = *(v17 + v54);
    v54 += 16;
    if (v56 >> 60 != 15)
    {
      v57 = *(v17 + v55 - 24);
      sub_1D79EA338(v57, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1D79E5D1C(0, *(v51 + 2) + 1, 1, v51);
      }

      v59 = *(v51 + 2);
      v58 = *(v51 + 3);
      v60 = v51;
      if (v59 >= v58 >> 1)
      {
        v60 = sub_1D79E5D1C((v58 > 1), v59 + 1, 1, v51);
      }

      *(v60 + 2) = v59 + 1;
      v51 = v60;
      v61 = &v60[16 * v59];
      *(v61 + 4) = v57;
      *(v61 + 5) = v56;
      goto LABEL_24;
    }
  }

  swift_setDeallocating();
  sub_1D7C8A6D4(0, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = *(v51 + 2);
  if (v62)
  {
    v94[0] = v49;
    sub_1D7A5C828(0, v62, 0);
    v63 = v94[0];
    v92 = sub_1D7D28A9C();
    v64 = v62 - 1;
    v87[1] = v51;
    v65 = (v51 + 40);
    v91 = xmmword_1D7D3B4D0;
    while (1)
    {
      v66 = *(v65 - 1);
      v67 = *v65;
      swift_allocObject();
      sub_1D79EA338(v66, v67);
      sub_1D7D28A8C();
      sub_1D7B6A06C();
      sub_1D7D28A7C();
      sub_1D79EA2E4(v66, v67);

      memcpy(v95, v96, 0x450uLL);
      nullsub_1(v95);
      memcpy(v97, v95, sizeof(v97));
      v94[0] = v63;
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_1D7A5C828((v68 > 1), v69 + 1, 1);
        v63 = v94[0];
      }

      *(v63 + 16) = v69 + 1;
      memcpy((v63 + 1104 * v69 + 32), v97, 0x450uLL);
      if (!v64)
      {
        break;
      }

      v65 += 2;
      --v64;
    }

    v70 = *(v63 + 16);
    if (v70)
    {
LABEL_43:
      v93 = 0;
      v71 = 0;
      v50 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v72 = (v63 + 32 + 1104 * v71);
      v73 = v71;
      while (v73 < *(v63 + 16))
      {
        memcpy(v96, v72, sizeof(v96));
        v71 = v73 + 1;
        memmove(v97, v72, 0x450uLL);
        if (sub_1D7BFA834(v97) != 1)
        {
          memcpy(v95, v96, 0x450uLL);
          sub_1D7BB5DC0(v95, v94);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1D79E53DC(0, *(v50 + 16) + 1, 1, v50);
          }

          v75 = *(v50 + 16);
          v74 = *(v50 + 24);
          if (v75 >= v74 >> 1)
          {
            v50 = sub_1D79E53DC((v74 > 1), v75 + 1, 1, v50);
          }

          memcpy(v94, v96, sizeof(v94));
          *(v50 + 16) = v75 + 1;
          memcpy((v50 + 1104 * v75 + 32), v94, 0x450uLL);
          if (v70 - 1 != v73)
          {
            goto LABEL_44;
          }

          goto LABEL_57;
        }

        v72 += 1104;
        ++v73;
        if (v70 == v71)
        {
          goto LABEL_57;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_58;
    }
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
    v70 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v70)
    {
      goto LABEL_43;
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_57:

  if (qword_1EE0CA130 != -1)
  {
    goto LABEL_63;
  }

LABEL_58:
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1D7D3B4D0;
  v77 = MEMORY[0x1DA70E0B0](v50, &type metadata for ArticleRecirculationConfig);
  v79 = v78;
  *(v76 + 56) = MEMORY[0x1E69E6158];
  *(v76 + 64) = sub_1D79D6AE0();
  *(v76 + 32) = v77;
  *(v76 + 40) = v79;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v80 = v88;
  if (*(v50 + 16))
  {
    v81 = v89;
    swift_beginAccess();
    v82 = *(v81 + 16);
    v83 = v90;
    swift_beginAccess();
    v84 = *(v83 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80(v50, v82, v84, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1D7C85E78();
    v85 = swift_allocError();
    *v86 = 0;
    v80(v85, 0, 0, 1);
  }
}

uint64_t sub_1D7C8080C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  sub_1D7A3B3F0(*(v0 + 408), *(v0 + 416), *(v0 + 424));
  return v0;
}

uint64_t sub_1D7C80898()
{
  sub_1D7C8080C();

  return swift_deallocClassInstance();
}

void sub_1D7C80968()
{
  if (!qword_1EE0C0270)
  {
    sub_1D7B80F8C(255, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0270);
    }
  }
}

uint64_t sub_1D7C809D8(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))();
  }

  else
  {
    return (*(v2 + 16))();
  }
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7C80AD0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7C8A618(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7C80B34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7C80BE0(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_1D7D318FC();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EndOfArticleHeadlineModel();
        v8 = sub_1D7D3070C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1D7C81978(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D7C80F20(0, v4, 1, a1, a2);
  }
}

void sub_1D7C80CF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EndOfArticleHeadlineModel();
        v6 = sub_1D7D3070C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D7C82190(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7C81078(0, v2, 1, a1);
  }
}

void sub_1D7C80DF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7D2E24C();
        v6 = sub_1D7D3070C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D7D2E24C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D7C83284(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7C816B4(0, v2, 1, a1);
  }
}

void sub_1D7C80F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_6:
    v10 = *(v7 + 8 * v6);
    v24 = v9;
    v25 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = *(v10 + 16);

      v13 = [v12 scoreProfile];
      if (!v13 || (v14 = v13, [v13 *a5], v16 = v15, v14, (v17 = objc_msgSend(*(v11 + 16), sel_scoreProfile)) == 0))
      {

LABEL_5:
        ++v6;
        v8 = v25 + 1;
        v9 = v24 - 1;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v18 = v17;
      [v17 *a5];
      v20 = v19;

      if (v20 >= v16)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v21 = *v8;
      v10 = v8[1];
      *v8 = v10;
      v8[1] = v21;
      --v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D7C81078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v60 - v14;
  sub_1D7C8A584();
  v72 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v71 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v70 = &v60 - v27;
  v61 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v77 = (v9 + 56);
    v73 = (v9 + 48);
    v74 = v28;
    v65 = (v9 + 32);
    v68 = (v9 + 8);
    v29 = (v28 + 8 * a3 - 8);
    v30 = a1 - a3;
    v31 = &selRef_addTarget_action_;
LABEL_5:
    v63 = v29;
    v64 = a3;
    v32 = *(v74 + 8 * a3);
    v62 = v30;
    v34 = v70;
    v33 = v71;
    while (1)
    {
      v75 = v30;
      v76 = v32;
      v35 = *v29;
      v36 = *(v32 + 16);

      v78 = v35;

      v37 = [v36 v31[136]];
      if (v37)
      {
        v38 = v37;
        sub_1D7D2830C();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = *v77;
      v41 = 1;
      (*v77)(v34, v39, 1, v8);
      v42 = [*(v78 + 16) v31[136]];
      if (v42)
      {
        v43 = v42;
        sub_1D7D2830C();

        v41 = 0;
      }

      v40(v33, v41, 1, v8);
      v44 = *(v72 + 48);
      sub_1D7B07B18(v34, v18);
      sub_1D7B07B18(v33, &v18[v44]);
      v45 = *v73;
      if ((*v73)(&v18[v44], 1, v8) == 1)
      {
        v46 = v45(v18, 1, v8);
        sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v46 != 1)
        {
          sub_1D7C89734(v18, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        }

        v47 = v75;
      }

      else
      {
        v48 = v69;
        sub_1D7C89454(&v18[v44], v69, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v45(v18, 1, v8) == 1)
        {
          (*v68)(v48, v8);
          if (v45(v18, 1, v8) != 1)
          {
            goto LABEL_24;
          }

          sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

LABEL_4:
          a3 = v64 + 1;
          v29 = v63 + 1;
          v30 = v62 - 1;
          if (v64 + 1 == v61)
          {
            return;
          }

          goto LABEL_5;
        }

        v49 = v48;
        v50 = v66;
        v51 = *v65;
        (*v65)(v66, v18, v8);
        v52 = v67;
        v53 = v49;
        v33 = v71;
        v51(v67, v53, v8);
        sub_1D7D282AC();
        v55 = v54;
        v56 = *v68;
        (*v68)(v52, v8);
        v57 = v50;
        v34 = v70;
        v56(v57, v8);
        v31 = &selRef_addTarget_action_;
        sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

        v47 = v75;
        if (v55 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      if (!v74)
      {
        break;
      }

      v58 = *v29;
      v32 = v29[1];
      *v29 = v32;
      v29[1] = v58;
      --v29;
      v59 = __CFADD__(v47, 1);
      v30 = v47 + 1;
      if (v59)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_24:
    sub_1D7D3196C();
    __break(1u);
  }
}

void sub_1D7C816B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D7D2E24C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v40 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v51 = *(v16 + 16);
    v52 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v48 = (v16 + 32);
    v49 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v47 = -v20;
    v23 = a1 - a3;
    v41 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v53;
      v28 = v51;
      (v51)(v53, v24, v8, v17);
      v29 = v54;
      v28(v54, v26, v8);
      v30 = sub_1D7D2E21C();
      [v30 sortingScore];
      v32 = v31;

      v33 = sub_1D7D2E21C();
      [v33 sortingScore];
      v35 = v34;

      v36 = *v21;
      (*v21)(v29, v8);
      v36(v27, v8);
      if (v35 >= v32)
      {
LABEL_4:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v26, v38, v8);
      v26 += v47;
      v24 += v47;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7C81978(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v14 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    v5 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v110 = v5;
LABEL_107:
      v5 = *(v110 + 2);
      if (v5 >= 2)
      {
        while (*a3)
        {
          v111 = *&v110[16 * v5];
          v112 = v110;
          v113 = *&v110[16 * v5 + 24];
          sub_1D7C842B8((*a3 + 8 * v111), (*a3 + 8 * *&v110[16 * v5 + 16]), (*a3 + 8 * v113), v7, a5);
          if (v14)
          {
            goto LABEL_115;
          }

          if (v113 < v111)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_1D7B50220(v112);
          }

          if (v5 - 2 >= *(v112 + 2))
          {
            goto LABEL_132;
          }

          v114 = &v112[16 * v5];
          *v114 = v111;
          *(v114 + 1) = v113;
          sub_1D7B50194(v5 - 1);
          v110 = v112;
          v5 = *(v112 + 2);
          if (v5 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_142;
      }

LABEL_115:

      return;
    }

LABEL_138:
    v110 = sub_1D7B50220(v5);
    goto LABEL_107;
  }

  v9 = a5;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = &selRef_addTarget_action_;
  while (1)
  {
    v13 = v10;
    v14 = v10 + 1;
    if (v10 + 1 < v8)
    {
      v117 = v11;
      v119 = v10;
      v15 = *a3;
      v16 = *(*a3 + 8 * v14);
      v17 = *(*a3 + 8 * v10);
      v18 = *(v16 + 16);

      v19 = [v18 v12[477]];
      if (v19 && (v20 = v19, [v19 *a5], v22 = v21, v20, v12 = &selRef_addTarget_action_, (v23 = objc_msgSend(*(v17 + 16), sel_scoreProfile)) != 0))
      {
        v24 = v23;
        [v23 *a5];
        v26 = v25;

        v12 = &selRef_addTarget_action_;
        v5 = v26 < v22;
      }

      else
      {

        v5 = 0;
      }

      v13 = v119;
      v14 = v119 + 2;
      if (v119 + 2 >= v8)
      {
        v11 = v117;
        v9 = a5;
        if (v5)
        {
LABEL_18:
          if (v14 < v13)
          {
            goto LABEL_135;
          }

LABEL_24:
          if (v13 < v14)
          {
            v39 = 8 * v14 - 8;
            v40 = 8 * v13;
            v41 = v14;
            v42 = v13;
            do
            {
              if (v42 != --v41)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                v43 = *(v44 + v40);
                *(v44 + v40) = *(v44 + v39);
                *(v44 + v39) = v43;
              }

              ++v42;
              v39 -= 8;
              v40 += 8;
            }

            while (v42 < v41);
          }
        }
      }

      else
      {
        v27 = v15 + 8 * v119 + 16;
        do
        {
          v28 = v14;
          v29 = *(v27 - 8);
          v30 = *(*v27 + 16);

          v31 = [v30 v12[477]];
          if (v31 && (v32 = v31, [v31 *a5], v34 = v33, v32, v12 = &selRef_addTarget_action_, (v35 = objc_msgSend(*(v29 + 16), sel_scoreProfile)) != 0))
          {
            v36 = v35;
            [v35 *a5];
            v38 = v37;

            v12 = &selRef_addTarget_action_;
            if (v5 == v38 >= v34)
            {
              v11 = v117;
              v14 = v28;
              goto LABEL_21;
            }
          }

          else
          {

            if (v5)
            {
              v9 = a5;
              v14 = v28;
              v11 = v117;
              v13 = v119;
              if (v14 < v119)
              {
                goto LABEL_135;
              }

              goto LABEL_24;
            }
          }

          v14 = (v28 + 1);
          v27 += 8;
        }

        while (v8 != v28 + 1);
        v14 = v8;
        v11 = v117;
LABEL_21:
        v13 = v119;
        v9 = a5;
        if (v5)
        {
          goto LABEL_18;
        }
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v13))
      {
        goto LABEL_134;
      }

      if (v14 - v13 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v14 < v13)
    {
      goto LABEL_133;
    }

    v64 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v64;
    }

    else
    {
      v11 = sub_1D79E4688(0, *(v64 + 2) + 1, 1, v64);
    }

    v5 = *(v11 + 2);
    v65 = *(v11 + 3);
    v66 = v5 + 1;
    if (v5 >= v65 >> 1)
    {
      v11 = sub_1D79E4688((v65 > 1), v5 + 1, 1, v11);
    }

    *(v11 + 2) = v66;
    v67 = &v11[16 * v5];
    *(v67 + 4) = v13;
    *(v67 + 5) = v14;
    v124 = v14;
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v5)
    {
      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v11 + 4);
          v70 = *(v11 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_72:
          if (v72)
          {
            goto LABEL_122;
          }

          v85 = &v11[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_125;
          }

          v91 = &v11[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_129;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v95 = &v11[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_86:
        if (v90)
        {
          goto LABEL_124;
        }

        v98 = &v11[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_127;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_93:
        v5 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v106 = v11;
        v107 = *&v11[16 * v5 + 32];
        v108 = *&v11[16 * v68 + 40];
        sub_1D7C842B8((*a3 + 8 * v107), (*a3 + 8 * *&v11[16 * v68 + 32]), (*a3 + 8 * v108), v14, v9);
        if (v7)
        {
          goto LABEL_115;
        }

        if (v108 < v107)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1D7B50220(v106);
        }

        if (v5 >= *(v106 + 2))
        {
          goto LABEL_119;
        }

        v109 = &v106[16 * v5];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        sub_1D7B50194(v68);
        v11 = v106;
        v66 = *(v106 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v11[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_120;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_121;
      }

      v80 = &v11[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_123;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_126;
      }

      if (v84 >= v76)
      {
        v102 = &v11[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v10 = v124;
    v8 = a3[1];
    v12 = &selRef_addTarget_action_;
    if (v124 >= v8)
    {
      goto LABEL_104;
    }
  }

  v46 = (v13 + a4);
  if (__OFADD__(v13, a4))
  {
    goto LABEL_136;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v13)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v14 == v46)
  {
    goto LABEL_52;
  }

  v118 = v11;
  v115 = v7;
  v47 = *a3;
  v48 = (*a3 + 8 * v14 - 8);
  v49 = v13 - v14;
  v121 = v46;
LABEL_42:
  v122 = v48;
  v123 = v14;
  v50 = *(v47 + 8 * v14);
  v5 = v49;
  while (1)
  {
    v51 = *v48;
    v52 = *(v50 + 16);

    v53 = [v52 v12[477]];
    v54 = v12;
    if (!v53)
    {

      goto LABEL_41;
    }

    v55 = v53;
    [v53 *a5];
    v57 = v56;

    v58 = [*(v51 + 16) v54 + 2477];
    if (!v58)
    {

      v12 = &selRef_addTarget_action_;
LABEL_41:
      v14 = v123 + 1;
      v48 = v122 + 1;
      --v49;
      if ((v123 + 1) == v121)
      {
        v14 = v121;
        v7 = v115;
        v9 = a5;
        v11 = v118;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v59 = v58;
    [v58 *a5];
    v61 = v60;

    v12 = &selRef_addTarget_action_;
    if (v61 >= v57)
    {
      goto LABEL_41;
    }

    if (!v47)
    {
      break;
    }

    v62 = *v48;
    v50 = v48[1];
    *v48 = v50;
    v48[1] = v62;
    --v48;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D7C82190(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v162 = a1;
  v186 = sub_1D7D2833C();
  v6 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v7);
  v178 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v177 = &v161 - v11;
  sub_1D7C8A584();
  v183 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v161 - v18;
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v161 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v161 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v161 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v172 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_122:
    a3 = *v162;
    if (!*v162)
    {
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v173;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_155:
      v42 = sub_1D7B50220(v42);
    }

    v191 = v42;
    v156 = *(v42 + 2);
    if (v156 >= 2)
    {
      while (*v172)
      {
        v157 = *&v42[16 * v156];
        v158 = *&v42[16 * v156 + 24];
        sub_1D7C84678(*v172 + 8 * v157, (*v172 + 8 * *&v42[16 * v156 + 16]), (*v172 + 8 * v158), a3);
        if (v25)
        {
        }

        if (v158 < v157)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D7B50220(v42);
        }

        if (v156 - 2 >= *(v42 + 2))
        {
          goto LABEL_149;
        }

        v159 = &v42[16 * v156];
        *v159 = v157;
        *(v159 + 1) = v158;
        v191 = v42;
        sub_1D7B50194(v156 - 1);
        v42 = v191;
        v156 = *(v191 + 2);
        if (v156 <= 1)
        {
        }
      }

      goto LABEL_159;
    }
  }

  v171 = &v161 - v38;
  v164 = v40;
  v187 = (v6 + 56);
  v182 = (v6 + 48);
  v175 = (v6 + 32);
  v176 = v39;
  v180 = (v6 + 8);
  v42 = MEMORY[0x1E69E7CC0];
  v161 = a4;
  v168 = v19;
  v43 = 0;
  v179 = v25;
  v185 = v29;
  v44 = a4;
  v165 = v35;
  while (1)
  {
    v45 = v43 + 1;
    v163 = v42;
    v166 = v43;
    if (v43 + 1 >= v41)
    {
      v42 = v186;
      goto LABEL_37;
    }

    v46 = v43;
    v170 = v41;
    a3 = *v172;
    v47 = *(*v172 + 8 * v45);
    v189 = *(*v172 + 8 * v43);
    v190 = v47;

    v48 = v173;
    LODWORD(v181) = sub_1D7C7A48C(&v190, &v189);
    v173 = v48;
    if (v48)
    {
    }

    v45 = v46 + 2;
    if (v46 + 2 < v170)
    {
      v174 = v46 + 2;
      v49 = a3 + 8 * v46 + 16;
      v50 = v171;
      while (1)
      {
        v52 = *(v49 - 8);
        v51 = *v49;
        v53 = *(*v49 + 16);

        v54 = [v53 publishDate];
        v184 = v51;
        if (v54)
        {
          v55 = v54;
          sub_1D7D2830C();

          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v57 = *v187;
        v58 = 1;
        (*v187)(v50, v56, 1, v186);
        v59 = [*(v52 + 16) publishDate];
        v188 = v52;
        if (v59)
        {
          v60 = v59;
          sub_1D7D2830C();

          v58 = 0;
        }

        v61 = v186;
        v57(v35, v58, 1, v186);
        a3 = *(v183 + 48);
        v62 = v168;
        sub_1D7B07B18(v171, v168);
        sub_1D7B07B18(v35, v62 + a3);
        v63 = *v182;
        if ((*v182)(v62 + a3, 1, v61) == 1)
        {
          v64 = v63(v62, 1, v61);
          sub_1D7C89734(v62 + a3, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v64 != 1)
          {
            sub_1D7C89734(v62, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          }

          v50 = v171;
          if ((v181 & 1) == 0)
          {
            v44 = v161;
            v42 = v186;
            v25 = v179;
            v45 = v174;
            goto LABEL_37;
          }
        }

        else
        {
          v65 = v164;
          sub_1D7C89454(v62 + a3, v164, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v63(v62, 1, v61) == 1)
          {
            (*v180)(v65, v61);
            if (v63(v62, 1, v61) != 1)
            {
              goto LABEL_162;
            }

            sub_1D7C89734(v62 + a3, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

            v35 = v165;
            v50 = v171;
            if (v181)
            {
              v44 = v161;
              v42 = v186;
              v25 = v179;
              v45 = v174;
              v46 = v166;
              if (v174 < v166)
              {
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

LABEL_30:
              if (v46 < v45)
              {
                v73 = 8 * v45 - 8;
                v74 = 8 * v46;
                v75 = v45;
                do
                {
                  if (v46 != --v75)
                  {
                    v76 = *v172;
                    if (!*v172)
                    {
                      goto LABEL_158;
                    }

                    v77 = *(v76 + v74);
                    *(v76 + v74) = *(v76 + v73);
                    *(v76 + v73) = v77;
                  }

                  ++v46;
                  v73 -= 8;
                  v74 += 8;
                }

                while (v46 < v75);
              }

              goto LABEL_37;
            }
          }

          else
          {
            v66 = *v175;
            v67 = v177;
            (*v175)(v177, v62, v61);
            v68 = v178;
            v66(v178, v65, v61);
            sub_1D7D282AC();
            v70 = v69;
            v71 = *v180;
            (*v180)(v68, v61);
            v72 = v67;
            v29 = v185;
            v71(v72, v61);
            sub_1D7C89734(&v168[a3], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

            v35 = v165;
            v50 = v171;
            if ((v181 ^ (v70 > 0.0)))
            {
              v44 = v161;
              v25 = v179;
              v45 = v174;
LABEL_27:
              v46 = v166;
              goto LABEL_28;
            }
          }
        }

        v49 += 8;
        if (v170 == ++v174)
        {
          v45 = v170;
          v44 = v161;
          v25 = v179;
          goto LABEL_27;
        }
      }
    }

    v44 = v161;
LABEL_28:
    v42 = v186;
    if (v181)
    {
      if (v45 < v46)
      {
        goto LABEL_154;
      }

      goto LABEL_30;
    }

LABEL_37:
    v78 = v172[1];
    if (v45 >= v78)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v45, v166))
    {
      goto LABEL_151;
    }

    if (v45 - v166 >= v44)
    {
LABEL_67:
      v80 = v166;
      goto LABEL_68;
    }

    if (__OFADD__(v166, v44))
    {
      goto LABEL_152;
    }

    if (v166 + v44 >= v78)
    {
      v79 = v172[1];
    }

    else
    {
      v79 = v166 + v44;
    }

    if (v79 < v166)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v80 = v166;
    if (v45 != v79)
    {
      break;
    }

LABEL_68:
    v42 = v163;
    if (v45 < v80)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1D79E4688(0, *(v42 + 2) + 1, 1, v42);
    }

    a3 = *(v42 + 2);
    v110 = *(v42 + 3);
    v111 = a3 + 1;
    if (a3 >= v110 >> 1)
    {
      v42 = sub_1D79E4688((v110 > 1), a3 + 1, 1, v42);
    }

    *(v42 + 2) = v111;
    v112 = &v42[16 * a3];
    *(v112 + 4) = v166;
    *(v112 + 5) = v45;
    v174 = v45;
    v113 = *v162;
    if (!*v162)
    {
      goto LABEL_160;
    }

    if (a3)
    {
      while (1)
      {
        v25 = v111 - 1;
        if (v111 >= 4)
        {
          break;
        }

        if (v111 == 3)
        {
          v114 = *(v42 + 4);
          v115 = *(v42 + 5);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_88:
          if (v117)
          {
            goto LABEL_139;
          }

          v130 = &v42[16 * v111];
          v132 = *v130;
          v131 = *(v130 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_142;
          }

          v136 = &v42[16 * v25 + 32];
          v138 = *v136;
          v137 = *(v136 + 1);
          v124 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v124)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v134, v139))
          {
            goto LABEL_146;
          }

          if (v134 + v139 >= v116)
          {
            if (v116 < v139)
            {
              v25 = v111 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v140 = &v42[16 * v111];
        v142 = *v140;
        v141 = *(v140 + 1);
        v124 = __OFSUB__(v141, v142);
        v134 = v141 - v142;
        v135 = v124;
LABEL_102:
        if (v135)
        {
          goto LABEL_141;
        }

        v143 = &v42[16 * v25];
        v145 = *(v143 + 4);
        v144 = *(v143 + 5);
        v124 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v124)
        {
          goto LABEL_144;
        }

        if (v146 < v134)
        {
          goto LABEL_3;
        }

LABEL_109:
        a3 = v25 - 1;
        if (v25 - 1 >= v111)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v172)
        {
          goto LABEL_157;
        }

        v151 = *&v42[16 * a3 + 32];
        v152 = *&v42[16 * v25 + 40];
        v153 = v173;
        sub_1D7C84678(*v172 + 8 * v151, (*v172 + 8 * *&v42[16 * v25 + 32]), (*v172 + 8 * v152), v113);
        v173 = v153;
        if (v153)
        {
        }

        if (v152 < v151)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D7B50220(v42);
        }

        if (a3 >= *(v42 + 2))
        {
          goto LABEL_136;
        }

        v154 = &v42[16 * a3];
        *(v154 + 4) = v151;
        *(v154 + 5) = v152;
        v191 = v42;
        sub_1D7B50194(v25);
        v42 = v191;
        v111 = *(v191 + 2);
        if (v111 <= 1)
        {
          goto LABEL_3;
        }
      }

      v118 = &v42[16 * v111 + 32];
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_137;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_138;
      }

      v125 = &v42[16 * v111];
      v127 = *v125;
      v126 = *(v125 + 1);
      v124 = __OFSUB__(v126, v127);
      v128 = v126 - v127;
      if (v124)
      {
        goto LABEL_140;
      }

      v124 = __OFADD__(v116, v128);
      v129 = v116 + v128;
      if (v124)
      {
        goto LABEL_143;
      }

      if (v129 >= v121)
      {
        v147 = &v42[16 * v25 + 32];
        v149 = *v147;
        v148 = *(v147 + 1);
        v124 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v124)
        {
          goto LABEL_147;
        }

        if (v116 < v150)
        {
          v25 = v111 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v41 = v172[1];
    v43 = v174;
    v44 = v161;
    v25 = v179;
    if (v174 >= v41)
    {
      goto LABEL_122;
    }
  }

  v181 = *v172;
  a3 = v181 + 8 * v45 - 8;
  v81 = v166 - v45;
  v82 = &selRef_addTarget_action_;
  v167 = v79;
LABEL_48:
  v174 = v45;
  v83 = v81;
  v84 = *(v181 + 8 * v45);
  v169 = v81;
  v170 = a3;
  while (1)
  {
    v184 = v83;
    v85 = *a3;
    v86 = *(v84 + 16);

    v188 = v85;

    v87 = [v86 v82[136]];
    if (v87)
    {
      v88 = v87;
      sub_1D7D2830C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    v90 = *v187;
    v91 = 1;
    (*v187)(v29, v89, 1, v42);
    v92 = [*(v188 + 16) v82[136]];
    if (v92)
    {
      v93 = v92;
      sub_1D7D2830C();

      v91 = 0;
    }

    v90(v25, v91, 1, v42);
    v94 = *(v183 + 48);
    sub_1D7B07B18(v185, v15);
    sub_1D7B07B18(v25, &v15[v94]);
    v95 = *v182;
    if ((*v182)(&v15[v94], 1, v42) == 1)
    {
      v96 = v95(v15, 1, v42);
      sub_1D7C89734(&v15[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v96 != 1)
      {
        sub_1D7C89734(v15, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      }

      v29 = v185;
    }

    else
    {
      v97 = &v15[v94];
      v98 = v15;
      v99 = v176;
      sub_1D7C89454(v97, v176, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v95(v98, 1, v42) == 1)
      {
        (*v180)(v99, v42);
        if (v95(v98, 1, v42) != 1)
        {
          goto LABEL_162;
        }

        v15 = v98;
        sub_1D7C89734(&v98[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

        v25 = v179;
        v29 = v185;
LABEL_47:
        v45 = v174 + 1;
        a3 = v170 + 8;
        v81 = v169 - 1;
        if (v174 + 1 == v167)
        {
          v45 = v167;
          v35 = v165;
          goto LABEL_67;
        }

        goto LABEL_48;
      }

      v100 = *v175;
      v101 = v177;
      (*v175)(v177, v98, v186);
      v102 = v178;
      v100(v178, v99, v186);
      v82 = &selRef_addTarget_action_;
      sub_1D7D282AC();
      v104 = v103;
      v105 = *v180;
      (*v180)(v102, v186);
      v106 = v101;
      v42 = v186;
      v105(v106, v186);
      sub_1D7C89734(&v98[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

      v15 = v98;
      v25 = v179;
      v29 = v185;
      if (v104 <= 0.0)
      {
        goto LABEL_47;
      }
    }

    v107 = v184;
    if (!v181)
    {
      break;
    }

    v108 = *a3;
    v84 = *(a3 + 8);
    *a3 = v84;
    *(a3 + 8) = v108;
    a3 -= 8;
    v109 = __CFADD__(v107, 1);
    v83 = v107 + 1;
    if (v109)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  result = sub_1D7D3196C();
  __break(1u);
  return result;
}

void sub_1D7C83284(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_1D7D2E24C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v140 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v149 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v155 = &v133 - v16;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v154 = &v133 - v21;
  v146 = a3;
  v22 = a3[1];
  v144 = v19;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v137;
    if (!*v137)
    {
      goto LABEL_132;
    }

    v8 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v8 = sub_1D7B50220(v8);
    }

    v156 = v8;
    v129 = *(v8 + 16);
    if (v129 >= 2)
    {
      while (*v146)
      {
        v130 = *(v8 + 16 * v129);
        v131 = *(v8 + 16 * (v129 - 1) + 40);
        sub_1D7C852E4(&(*v146)[*(v24 + 9) * v130], &(*v146)[*(v24 + 9) * *(v8 + 16 * (v129 - 1) + 32)], &(*v146)[*(v24 + 9) * v131], v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v131 < v130)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D7B50220(v8);
        }

        if (v129 - 2 >= *(v8 + 16))
        {
          goto LABEL_120;
        }

        v132 = (v8 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v156 = v8;
        sub_1D7B50194(v129 - 1);
        v8 = v156;
        v129 = *(v156 + 16);
        if (v129 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v134 = a4;
  v23 = 0;
  v152 = (v19 + 8);
  v153 = v19 + 16;
  v151 = (v19 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v145 = v24;
    if (v23 + 1 >= v22)
    {
      v43 = v23 + 1;
    }

    else
    {
      v147 = v22;
      v136 = v5;
      v27 = *(v144 + 9);
      v28 = &(*v146)[v27 * v26];
      v142 = *v146;
      v29 = v142;
      v30 = *(v144 + 2);
      v31 = v154;
      v30(v154, &v142[v27 * v26], v8, v20);
      v32 = &v29[v27 * v23];
      v33 = v155;
      v148 = v30;
      (v30)(v155, v32, v8);
      v34 = sub_1D7D2E21C();
      [v34 sortingScore];
      v36 = v35;

      v37 = sub_1D7D2E21C();
      [v37 sortingScore];
      v39 = v38;

      v40 = *(v144 + 1);
      v40(v33, v8);
      v143 = v40;
      v40(v31, v8);
      v135 = v23;
      v41 = v23 + 2;
      v150 = v27;
      v42 = &v142[v27 * (v23 + 2)];
      while (1)
      {
        v43 = v147;
        if (v147 == v41)
        {
          break;
        }

        v44 = v154;
        v45 = v148;
        v148(v154, v42, v8);
        v46 = v155;
        v45(v155, v28, v8);
        v47 = sub_1D7D2E21C();
        [v47 sortingScore];
        v49 = v48;

        v50 = sub_1D7D2E21C();
        [v50 sortingScore];
        v52 = v51;

        v53 = v143;
        (v143)(v46, v8);
        v53(v44, v8);
        v24 = v145;
        ++v41;
        v42 += v150;
        v28 += v150;
        if (v39 < v36 == v52 >= v49)
        {
          v43 = v41 - 1;
          break;
        }
      }

      v5 = v136;
      v25 = v135;
      if (v39 < v36)
      {
        if (v43 < v135)
        {
          goto LABEL_123;
        }

        if (v135 < v43)
        {
          v54 = v43;
          v55 = v150 * (v43 - 1);
          v56 = v43 * v150;
          v147 = v43;
          v57 = v135;
          v58 = v135 * v150;
          do
          {
            if (v57 != --v54)
            {
              v59 = *v146;
              if (!*v146)
              {
                goto LABEL_129;
              }

              v60 = *v151;
              (*v151)(v140, &v59[v58], v8);
              if (v58 < v55 || &v59[v58] >= &v59[v56])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60(&v59[v55], v140, v8);
              v24 = v145;
            }

            ++v57;
            v55 -= v150;
            v56 -= v150;
            v58 += v150;
          }

          while (v57 < v54);
          v5 = v136;
          v25 = v135;
          v43 = v147;
        }
      }
    }

    v61 = v146[1];
    if (v43 < v61)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_122;
      }

      if (v43 - v25 < v134)
      {
        if (__OFADD__(v25, v134))
        {
          goto LABEL_124;
        }

        if (v25 + v134 >= v61)
        {
          v62 = v146[1];
        }

        else
        {
          v62 = v25 + v134;
        }

        if (v62 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v23 = v43;
    if (v43 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D79E4688(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_1D79E4688((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v25;
    *(v66 + 5) = v23;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_131;
    }

    if (v64)
    {
      while (1)
      {
        v25 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v24 + 4);
          v69 = *(v24 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_52:
          if (v71)
          {
            goto LABEL_110;
          }

          v84 = &v24[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_113;
          }

          v90 = &v24[16 * v25 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_117;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v25 = v65 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v94 = &v24[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_66:
        if (v89)
        {
          goto LABEL_112;
        }

        v97 = &v24[16 * v25];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_115;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_73:
        v105 = v25 - 1;
        if (v25 - 1 >= v65)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v146)
        {
          goto LABEL_128;
        }

        v106 = *&v24[16 * v105 + 32];
        v107 = *&v24[16 * v25 + 40];
        sub_1D7C852E4(&(*v146)[*(v144 + 9) * v106], &(*v146)[*(v144 + 9) * *&v24[16 * v25 + 32]], &(*v146)[*(v144 + 9) * v107], v67);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v107 < v106)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D7B50220(v24);
        }

        if (v105 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v108 = &v24[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v156 = v24;
        sub_1D7B50194(v25);
        v24 = v156;
        v65 = *(v156 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v24[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_108;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_109;
      }

      v79 = &v24[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_111;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_114;
      }

      if (v83 >= v75)
      {
        v101 = &v24[16 * v25 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_118;
        }

        if (v70 < v104)
        {
          v25 = v65 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = v146[1];
    if (v23 >= v22)
    {
      goto LABEL_94;
    }
  }

  v136 = v5;
  v109 = *v146;
  v110 = *(v144 + 9);
  v150 = *(v144 + 2);
  v111 = &v109[v110 * (v43 - 1)];
  v112 = -v110;
  v135 = v25;
  v113 = (v25 - v43);
  v148 = v109;
  v138 = v110;
  v114 = &v109[v43 * v110];
  v139 = v62;
LABEL_85:
  v147 = v43;
  v141 = v114;
  v142 = v113;
  v143 = v111;
  while (1)
  {
    v115 = v154;
    v116 = v150;
    (v150)(v154, v114, v8, v20);
    v117 = v155;
    v116(v155, v111, v8);
    v118 = sub_1D7D2E21C();
    [v118 sortingScore];
    v120 = v119;

    v121 = sub_1D7D2E21C();
    [v121 sortingScore];
    v123 = v122;

    v124 = *v152;
    (*v152)(v117, v8);
    v124(v115, v8);
    if (v123 >= v120)
    {
LABEL_84:
      v43 = v147 + 1;
      v111 = &v143[v138];
      v113 = v142 - 1;
      v114 = &v141[v138];
      v23 = v139;
      if (v147 + 1 != v139)
      {
        goto LABEL_85;
      }

      v5 = v136;
      v24 = v145;
      v25 = v135;
      if (v139 < v135)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v8);
    swift_arrayInitWithTakeFrontToBack();
    v125(v111, v126, v8);
    v111 += v112;
    v114 += v112;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1D7C83D10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D7B50220(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1D7C858D4((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = (*a3 + 32 * v9);
      v13 = *v11;
      v12 = v11 + 8;
      v14 = v13;
      v15 = v9 + 2;
      v16 = v10;
      while (v6 != v15)
      {
        v17 = *v12;
        v12 += 4;
        v18 = v16 >= v17;
        ++v15;
        v16 = v17;
        if ((((v14 < v10) ^ v18) & 1) == 0)
        {
          v7 = v15 - 1;
          if (v14 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v14 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 16;
        v20 = 32 * v9 + 24;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v20);
            v24 = (v29 + v19);
            v25 = *(v23 - 3);
            v26 = *(v23 - 1);
            v27 = *v23;
            v28 = *v24;
            *(v23 - 3) = *(v24 - 1);
            *(v23 - 1) = v28;
            *(v24 - 2) = v25;
            *(v24 - 8) = v26;
            *(v24 + 1) = v27;
          }

          ++v22;
          v19 -= 32;
          v20 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D79E4688(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_1D79E4688((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_1D7C858D4((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 32;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*v35 >= v33)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 40);
    v37 = *(v35 + 56);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v36;
    *(v35 + 24) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D7C842B8(char *__dst, char *__src, char *a3, char *a4, SEL *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v15 = &v5[8 * v14];
    if (v12 >= 8 && v7 > v8)
    {
      v33 = &selRef_addTarget_action_;
LABEL_31:
      v34 = (v7 - 8);
      v6 -= 8;
      v35 = v15;
      v49 = v7;
      v50 = v7 - 8;
      do
      {
        v36 = *(v35 - 1);
        v35 -= 8;
        v37 = *v34;
        v38 = *(v36 + 16);

        v39 = [v38 v33[477]];
        if (v39)
        {
          v52 = v15;
          v40 = v33;
          v41 = v39;
          [v39 *a5];
          v43 = v42;

          v33 = v40;
          v44 = [*(v37 + 16) v40 + 2477];
          if (v44)
          {
            v45 = v44;
            [v44 *a5];
            v47 = v46;

            v33 = v40;
            v7 = v49;
            v15 = v52;
            if (v47 < v43)
            {
              if (v6 + 8 != v49)
              {
                *v6 = *v50;
              }

              if (v52 <= v5 || (v7 = v50, v50 <= v8))
              {
                v7 = v50;
                goto LABEL_47;
              }

              goto LABEL_31;
            }
          }

          else
          {

            v7 = v49;
            v15 = v52;
          }
        }

        else
        {
        }

        v34 = v50;
        if (v6 + 8 != v15)
        {
          *v6 = *v35;
        }

        v6 -= 8;
        v15 = v35;
      }

      while (v35 > v5);
      v15 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 >= 8 && v7 < v6)
    {
      v16 = &selRef_addTarget_action_;
      v17 = a5;
      while (1)
      {
        v18 = *v5;
        v19 = *(*v7 + 16);

        v20 = [v19 v16[477]];
        if (!v20)
        {
          break;
        }

        v51 = v5;
        v21 = *v17;
        v22 = v17;
        v23 = v16;
        v24 = v20;
        [v20 v21];
        v26 = v25;

        v16 = v23;
        v27 = [*(v18 + 16) v23 + 2477];
        if (!v27)
        {

          v5 = v51;
LABEL_20:
          v31 = v5;
          v32 = v8 == v5;
          v5 += 8;
          if (v32)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v8 = *v31;
          goto LABEL_22;
        }

        v28 = v27;
        [v27 *v22];
        v30 = v29;

        v16 = v23;
        v5 = v51;
        if (v30 >= v26)
        {
          goto LABEL_20;
        }

        v31 = v7;
        v32 = v8 == v7;
        v7 += 8;
        if (!v32)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 8;
        v17 = a5;
        if (v5 >= v15 || v7 >= v6)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_20;
    }

LABEL_24:
    v7 = v8;
  }

LABEL_47:
  if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t sub_1D7C84678(uint64_t a1, char *a2, void *a3, char *a4)
{
  v8 = sub_1D7D2833C();
  v125 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v112 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v111 = &v109 - v13;
  sub_1D7C8A584();
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v109 - v20;
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v116 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v124 = (&v109 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v117 = &v109 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v123 = (&v109 - v40);
  v41 = &a2[-a1];
  v42 = v41 / 8;
  v119 = a3;
  v43 = a3 - a2;
  v44 = v43 / 8;
  v126 = a4;
  if (v41 / 8 >= v43 / 8)
  {
    v114 = v37;
    v122 = v39;
    v45 = a4;
    if (a4 != a2 || &a2[8 * v44] <= a4)
    {
      memmove(a4, a2, 8 * v44);
      v45 = v126;
    }

    v127 = &v45[8 * v44];
    if (v43 >= 8 && a2 > v122)
    {
      v79 = v124;
      v123 = (v125 + 56);
      v113 = (v125 + 48);
      v110 = (v125 + 32);
      v80 = (v125 + 8);
      v81 = v119;
LABEL_35:
      v121 = a2;
      v82 = a2 - 8;
      v83 = v127;
      v84 = v116;
      v115 = v82;
      while (1)
      {
        v85 = *(v83 - 1);
        v117 = v83 - 8;
        v86 = *v82;
        v87 = *(v85 + 16);
        v118 = v85;
        v119 = v81;

        v125 = v86;

        v88 = [v87 publishDate];
        if (v88)
        {
          v89 = v88;
          sub_1D7D2830C();

          v90 = 0;
        }

        else
        {
          v90 = 1;
        }

        v91 = *v123;
        v92 = 1;
        (*v123)(v79, v90, 1, v8);
        v93 = [*(v125 + 16) publishDate];
        v94 = v114;
        if (v93)
        {
          v95 = v93;
          sub_1D7D2830C();

          v92 = 0;
        }

        v91(v94, v92, 1, v8);
        v96 = *(v120 + 48);
        sub_1D7B07B18(v124, v17);
        sub_1D7B07B18(v94, &v17[v96]);
        v97 = *v113;
        if ((*v113)(&v17[v96], 1, v8) == 1)
        {
          v106 = v97(v17, 1, v8);
          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v106 != 1)
          {
            sub_1D7C89734(v17, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          }

          v98 = v119;
          v81 = v119 - 1;
          v79 = v124;
LABEL_52:
          v69 = v98 == v121;
          v45 = v126;
          v107 = v115;
          if (!v69)
          {
            *v81 = *v115;
          }

          if (v127 <= v45 || (a2 = v107, v107 <= v122))
          {
            a2 = v107;
            break;
          }

          goto LABEL_35;
        }

        sub_1D7C89454(&v17[v96], v84, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v97(v17, 1, v8) == 1)
        {
          (*v80)(v84, v8);
          if (v97(v17, 1, v8) != 1)
          {
LABEL_63:
            result = sub_1D7D3196C();
            __break(1u);
            return result;
          }

          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v98 = v119;
          v81 = v119 - 1;
          v79 = v124;
        }

        else
        {
          v99 = v111;
          v100 = *v110;
          (*v110)(v111, v17, v8);
          v101 = v112;
          v100(v112, v116, v8);
          sub_1D7D282AC();
          v103 = v102;
          v104 = *v80;
          (*v80)(v101, v8);
          v105 = v99;
          v84 = v116;
          v104(v105, v8);
          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v98 = v119;
          v81 = v119 - 1;
          v79 = v124;
          if (v103 > 0.0)
          {
            goto LABEL_52;
          }
        }

        v45 = v126;
        v69 = v127 == v98;
        v82 = v115;
        v83 = v117;
        if (!v69)
        {
          *v81 = *v117;
        }

        v127 = v83;
        if (v83 <= v45)
        {
          v127 = v83;
          a2 = v121;
          break;
        }
      }
    }
  }

  else
  {
    v118 = v38;
    v45 = a4;
    v46 = v39;
    if (a4 != v39 || &v39[8 * v42] <= a4)
    {
      memmove(a4, v39, 8 * v42);
      v45 = v126;
    }

    v127 = &v45[8 * v42];
    if (v41 >= 8 && a2 < v119)
    {
      v47 = a2;
      v124 = (v125 + 56);
      v48 = (v125 + 48);
      v49 = (v125 + 8);
      v50 = &selRef_addTarget_action_;
      v51 = v123;
      v115 = (v125 + 8);
      v116 = (v125 + 32);
      while (1)
      {
        v122 = v46;
        v52 = *v47;
        v126 = v45;
        v53 = *v45;
        v54 = *(v52 + 16);

        v125 = v53;

        v55 = [v54 v50[136]];
        v121 = v47;
        if (v55)
        {
          v56 = v55;
          sub_1D7D2830C();

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v58 = *v124;
        v59 = 1;
        (*v124)(v51, v57, 1, v8);
        v60 = [*(v125 + 16) v50[136]];
        if (v60)
        {
          v61 = v60;
          v62 = v118;
          sub_1D7D2830C();

          v59 = 0;
        }

        else
        {
          v62 = v118;
        }

        v58(v62, v59, 1, v8);
        v63 = *(v120 + 48);
        sub_1D7B07B18(v123, v21);
        sub_1D7B07B18(v62, &v21[v63]);
        v64 = *v48;
        if ((*v48)(&v21[v63], 1, v8) == 1)
        {
          break;
        }

        v70 = v117;
        sub_1D7C89454(&v21[v63], v117, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v64(v21, 1, v8) == 1)
        {
          (*v49)(v70, v8);
          v71 = v64(v21, 1, v8);
          v66 = v119;
          if (v71 != 1)
          {
            goto LABEL_63;
          }

          sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v47 = v121;
          v51 = v123;
          v50 = &selRef_addTarget_action_;
        }

        else
        {
          v72 = *v116;
          v73 = v111;
          (*v116)(v111, v21, v8);
          v74 = v70;
          v75 = v112;
          v72(v112, v74, v8);
          v49 = v115;
          sub_1D7D282AC();
          v77 = v76;
          v78 = *v49;
          (*v49)(v75, v8);
          v78(v73, v8);
          sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v47 = v121;
          v66 = v119;
          v51 = v123;
          v50 = &selRef_addTarget_action_;
          if (v77 > 0.0)
          {
            goto LABEL_18;
          }
        }

        v67 = v126;
        v45 = v126 + 8;
        v68 = v122;
        if (v122 != v126)
        {
          goto LABEL_19;
        }

LABEL_20:
        v46 = v68 + 8;
        if (v45 >= v127 || v47 >= v66)
        {
          goto LABEL_57;
        }
      }

      v65 = v64(v21, 1, v8);
      sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v66 = v119;
      if (v65 != 1)
      {
        sub_1D7C89734(v21, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      }

      v47 = v121;
      v51 = v123;
      v50 = &selRef_addTarget_action_;
LABEL_18:
      v67 = v47;
      v68 = v122;
      v69 = v122 == v47;
      v47 += 8;
      v45 = v126;
      if (v69)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v68 = *v67;
      goto LABEL_20;
    }

LABEL_57:
    a2 = v46;
  }

  if (a2 != v45 || a2 >= &v45[(v127 - v45 + (v127 - v45 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v45, 8 * ((v127 - v45) / 8));
  }

  return 1;
}

void sub_1D7C852E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = sub_1D7D2E24C();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v9);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v58 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_64;
  }

  v17 = (a2 - a1) / v15;
  v73 = a1;
  v72 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v19;
    if (v19 >= 1)
    {
      v37 = -v15;
      v62 = (v8 + 8);
      v63 = (v8 + 16);
      v38 = v36;
      v60 = a1;
      v61 = a4;
      v64 = -v15;
      do
      {
        v59 = v36;
        v39 = a2 + v37;
        v40 = v36;
        v66 = a2;
        v67 = a2 + v37;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v36 = v59;
            goto LABEL_60;
          }

          v42 = a3;
          v65 = v40;
          v43 = a3 + v37;
          v44 = v38 + v37;
          v45 = *v63;
          v46 = v39;
          v47 = v70;
          v48 = v68;
          (*v63)(v68, v44, v70);
          v49 = v46;
          v50 = v69;
          v45(v69, v49, v47);
          v51 = sub_1D7D2E21C();
          [v51 sortingScore];
          v53 = v52;

          v54 = sub_1D7D2E21C();
          [v54 sortingScore];
          v56 = v55;

          v57 = *v62;
          (*v62)(v50, v47);
          v57(v48, v47);
          if (v56 < v53)
          {
            break;
          }

          v40 = v44;
          a3 = v43;
          if (v42 < v38 || v43 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v67;
            a1 = v60;
          }

          else
          {
            v39 = v67;
            a1 = v60;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v44;
          v41 = v44 > v61;
          v37 = v64;
          a2 = v66;
          if (!v41)
          {
            v36 = v40;
            goto LABEL_59;
          }
        }

        a3 = v43;
        if (v42 < v66 || v43 >= v66)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v37 = v64;
        }

        else
        {
          a2 = v67;
          a1 = v60;
          v37 = v64;
          if (v42 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v65;
      }

      while (v38 > v61);
    }

LABEL_59:
    v73 = a2;
LABEL_60:
    v71 = v36;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v18;
    v71 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v63 = *(v8 + 16);
      v64 = v8 + 16;
      v62 = (v8 + 8);
      v65 = a3;
      v67 = v15;
      do
      {
        v21 = a4;
        v22 = v68;
        v23 = v70;
        v24 = v63;
        (v63)(v68, a2, v70);
        v25 = v69;
        (v24)(v69, v21, v23);
        v26 = sub_1D7D2E21C();
        [v26 sortingScore];
        v28 = v27;

        v29 = sub_1D7D2E21C();
        [v29 sortingScore];
        v31 = v30;

        v32 = *v62;
        (*v62)(v25, v23);
        v32(v22, v23);
        if (v31 >= v28)
        {
          v35 = v67;
          a4 = v21 + v67;
          if (a1 < v21 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v72 = a4;
        }

        else
        {
          v33 = a2 + v67;
          a4 = v21;
          if (a1 < a2 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v33;
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v33;
          }

          v35 = v67;
        }

        a1 += v35;
        v73 = a1;
      }

      while (a4 < v66 && a2 < v34);
    }
  }

  sub_1D7B5024C(&v73, &v72, &v71);
}

uint64_t sub_1D7C858D4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_1D7C85B04(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D7D3167C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1D7C85C10(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D7C85C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C85C64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

uint64_t sub_1D7C85D40(unint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  swift_unknownObjectRetain();
  sub_1D7C89118(v5, v2, (v3 + 16), (v4 + 16));
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7C85DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t objectdestroy_4Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D7C85E78()
{
  result = qword_1EE0BC140;
  if (!qword_1EE0BC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BC140);
  }

  return result;
}

void sub_1D7C85ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7C8A6D4(255, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C85F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2898C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27[-v13 - 8];
  Config = type metadata accessor for ArticleRecirculationFetchConfig();
  MEMORY[0x1EEE9AC00](Config, v16);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v30 = &type metadata for CombinedArticleRecirculationConfig.Section;
  v31 = &off_1F52A98F0;
  v19 = swift_allocObject();
  v29[0] = v19;
  v20 = *(a2 + 48);
  *(v19 + 48) = *(a2 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a2 + 64);
  *(v19 + 96) = *(a2 + 80);
  v21 = *(a2 + 16);
  *(v19 + 16) = *a2;
  *(v19 + 32) = v21;
  sub_1D7C894C4(a1, v18, type metadata accessor for ArticleRecirculationFetchConfig);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      a3 = *(v18 + 16);
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_22;
      }

      a3 = *(v18 + 8);
    }

    else
    {
      a3 = *v18;
    }

LABEL_19:
    sub_1D7B653B4(a2, v27);
    goto LABEL_20;
  }

  (*(v7 + 32))(v14, v18, v6);
  v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
  a3 = v22[5];
  v18 = v22[6];
  v23 = v22[7];
  (*(v7 + 16))(v10, v14, v6);
  v24 = (*(v7 + 88))(v10, v6);
  if (v24 == *MEMORY[0x1E69D7380])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v29);
    return a3;
  }

  if (v24 == *MEMORY[0x1E69D7388])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
    if (v18 + 0x4000000000000000 >= 0)
    {
      a3 = 2 * v18;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v24 == *MEMORY[0x1E69D7390])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
    a3 = 3 * v23;
    if ((v23 * 3) >> 64 == (3 * v23) >> 63)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    if (a3 == 3)
    {
      a3 = *(v18 + 24);
      goto LABEL_19;
    }

LABEL_22:
    v28 = a3;
    sub_1D7B653B4(a2, v27);
    sub_1D7D319FC();
    __break(1u);
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

char *sub_1D7C86334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v187 = a8;
  v203 = a6;
  v204 = a7;
  v205 = a5;
  v189 = a2;
  v11 = _s15ArticleProviderOMa();
  v202 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v201 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v200 = v171 - v16;
  sub_1D7C892E8();
  v177 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v176 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = &type metadata for CombinedArticleRecirculationConfig;
  v222 = &off_1F52A9508;
  v220[0] = swift_allocObject();
  sub_1D7C8928C(a3, v220[0] + 16);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v178 = v21 + 16;
  __swift_project_boxed_opaque_existential_1(v220, &type metadata for CombinedArticleRecirculationConfig);
  (off_1F52A9510)(a1, &v223);
  if (!*(&v224 + 1))
  {
    sub_1D7C8AA90(&v223, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);

    v102 = 0;
    goto LABEL_154;
  }

  v188 = v21;
  sub_1D79E14FC(&v223, v218);
  v23 = swift_allocObject();
  v185 = v23;
  *(v23 + 16) = v22;
  v173 = (v23 + 16);
  v184 = swift_allocObject();
  *(v184 + 16) = MEMORY[0x1E69E7CC8];
  v24 = swift_allocObject();
  v186 = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  v171[1] = v24 + 16;
  v25 = __swift_project_boxed_opaque_existential_1(v218, v219);
  v26 = *(v25 + 3);
  v230[2] = *(v25 + 2);
  v230[3] = v26;
  v230[4] = *(v25 + 4);
  v231 = v25[10];
  v27 = *(v25 + 1);
  v230[0] = *v25;
  v230[1] = v27;
  v28 = sub_1D7C85F58(a4, v230, a1);
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v170 = v28;
    swift_once();
    v28 = v170;
LABEL_5:
    v30 = 0;
    v193 = qword_1EE0CA138;
    v31 = MEMORY[0x1E69E7740];
    v175 = (v18 + 8);
    v192 = xmmword_1D7D3B4D0;
    v172 = v28;
    while (1)
    {
      if (v30 >= v28)
      {
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_162;
      }

      v174 = v30 + 1;
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, v31, MEMORY[0x1E69E6F90]);
      v191 = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = v192;
      *&v211 = v30;
      v34 = sub_1D7D3190C();
      v36 = v35;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v190 = sub_1D79D6AE0();
      *(v33 + 64) = v190;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      v37 = __swift_project_boxed_opaque_existential_1(v218, v219);
      v38 = v37[9];
      *&v211 = v37[10];
      sub_1D7C8937C();
      v39 = sub_1D7C85C1C(&unk_1EE0BF208, sub_1D7C8937C);

      v18 = v176;
      sub_1D7D309FC();
      v183 = v30;
      v210 = v30;
      v40 = v177;
      sub_1D7D28E6C();
      v28 = (*v175)(v18, v40);
      v41 = v206;
      v182 = v38;
      if (v206)
      {
        v42 = v206[2];
        v43 = *(v38 + 16);
        v21 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_164;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v211 = v182;
        if (!isUniquelyReferenced_nonNull_native || v21 > *(v182 + 3) >> 1)
        {
          if (v43 <= v21)
          {
            v45 = v43 + v42;
          }

          else
          {
            v45 = v43;
          }

          v182 = sub_1D79E529C(isUniquelyReferenced_nonNull_native, v45, 1, v182);
          *&v211 = v182;
        }

        v21 = v200;
        sub_1D7BE3ACC(0, 0, v42, v41);
      }

      v28 = v182;
      v179 = *(v182 + 2);
      if (v179)
      {
        break;
      }

LABEL_46:

      v30 = v174;
      v28 = v172;
      v29 = v189;
      v31 = MEMORY[0x1E69E7740];
      if (v174 == v172)
      {
        goto LABEL_47;
      }
    }

    v46 = 0;
    v180 = v182 + 32;
    while (1)
    {
      if (v46 >= *(v28 + 16))
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v47 = &v180[112 * v46];
      v48 = v47[3];
      v49 = v47[4];
      v50 = v47[5];
      v229 = v47[6];
      v51 = *v47;
      v52 = v47[1];
      v53 = v47[2];
      v227 = v49;
      v228 = v50;
      v225 = v53;
      v226 = v48;
      v223 = v51;
      v224 = v52;
      v54 = *(&v229 + 1);
      v232[0] = *(&v229 + 1);
      v196 = *(*(&v229 + 1) + 16);
      if (v196)
      {
        break;
      }

LABEL_21:
      if (++v46 == v179)
      {
        goto LABEL_46;
      }
    }

    v181 = v46;
    v195 = *(&v229 + 1) + 32;
    sub_1D7C893F8(&v223, &v211);
    sub_1D7C89454(v232, &v211, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
    v28 = swift_beginAccess();
    v55 = 0;
    v194 = v54;
    while (1)
    {
      if (v55 >= *(v54 + 2))
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v198 = v55;
      v60 = *(v195 + 8 * v55);
      a1 = *(v60 + 16);

      if (a1)
      {
        break;
      }

      v62 = MEMORY[0x1E69E7CC0];
LABEL_40:

      if (*(v62 + 16))
      {
        v197 = dispatch_semaphore_create(0);
        v67 = swift_allocObject();
        *(v67 + 16) = v192;
        v206 = 0;
        v207 = 0xE000000000000000;
        v215 = v227;
        v216 = v228;
        v217 = v229;
        v211 = v223;
        v212 = v224;
        v213 = v225;
        v214 = v226;
        sub_1D7D315DC();
        v68 = v206;
        v69 = v207;
        v70 = v190;
        *(v67 + 56) = MEMORY[0x1E69E6158];
        *(v67 + 64) = v70;
        *(v67 + 32) = v68;
        *(v67 + 40) = v69;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        MEMORY[0x1EEE9AC00](v71, v72);
        v73 = v187;
        v171[-4] = v187;
        v171[-3] = v62;
        v74 = v205;
        v171[-2] = &v223;
        v171[-1] = v74;
        sub_1D7C8A6D4(0, &qword_1EE0BF340, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69E62F8]);
        sub_1D7D294BC();

        sub_1D799CC84(v218, &v211);
        v75 = swift_allocObject();
        v76 = v228;
        *(v75 + 80) = v227;
        *(v75 + 96) = v76;
        *(v75 + 112) = v229;
        v77 = v224;
        *(v75 + 16) = v223;
        *(v75 + 32) = v77;
        v78 = v226;
        *(v75 + 48) = v225;
        *(v75 + 64) = v78;
        v18 = v186;
        *(v75 + 128) = v186;
        *(v75 + 136) = v73;
        *(v75 + 144) = v74;
        sub_1D79E14FC(&v211, v75 + 152);
        v79 = v188;
        v80 = v189;
        *(v75 + 192) = v188;
        *(v75 + 200) = v80;
        v82 = v184;
        v81 = v185;
        *(v75 + 208) = v199;
        *(v75 + 216) = v82;
        *(v75 + 224) = v81;
        sub_1D7C893F8(&v223, &v211);

        swift_unknownObjectRetain();

        v83 = sub_1D7D2934C();
        sub_1D7D293AC();

        v39 = swift_allocObject();
        v84 = v197;
        *(v39 + 16) = v197;
        v85 = v84;
        v86 = sub_1D7D2934C();
        sub_1D7D2941C();

        sub_1D7D30F2C();
        v87 = *(v79 + 16);
        if (v87 >> 62)
        {
          v88 = sub_1D7D3167C();
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v199;
        v21 = v200;
        if (v183 < v88)
        {
          sub_1D7C89734(v232, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
          sub_1D7C896E0(&v223);
          goto LABEL_20;
        }
      }

      else
      {

        v56 = swift_allocObject();
        *(v56 + 16) = v192;
        v206 = 0;
        v207 = 0xE000000000000000;
        v215 = v227;
        v216 = v228;
        v217 = v229;
        v211 = v223;
        v212 = v224;
        v213 = v225;
        v214 = v226;
        sub_1D7D315DC();
        v57 = v206;
        v58 = v207;
        v59 = v190;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = v59;
        *(v56 + 32) = v57;
        *(v56 + 40) = v58;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        a1 = v199;
      }

      v55 = v198 + 1;
      v54 = v194;
      if (v198 + 1 == v196)
      {
        sub_1D7C896E0(&v223);
        sub_1D7C89734(v232, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
LABEL_20:
        v46 = v181;
        v28 = v182;
        goto LABEL_21;
      }
    }

    v61 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    while (v61 < *(v60 + 16))
    {
      v63 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v18 = *(v202 + 72);
      sub_1D7C894C4(v60 + v63 + v18 * v61, v21, _s15ArticleProviderOMa);
      v54 = v21;
      if (sub_1D7A85A9C(&v223, v205, v203, v204))
      {
        sub_1D7C8958C(v21, v201, _s15ArticleProviderOMa);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *&v211 = v62;
        if ((v64 & 1) == 0)
        {
          v54 = &v211;
          sub_1D7A5C7D8(0, *(v62 + 16) + 1, 1);
          v62 = v211;
        }

        v66 = *(v62 + 16);
        v65 = *(v62 + 24);
        v39 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v54 = &v211;
          sub_1D7A5C7D8(v65 > 1, v66 + 1, 1);
          v62 = v211;
        }

        *(v62 + 16) = v39;
        sub_1D7C8958C(v201, v62 + v63 + v66 * v18, _s15ArticleProviderOMa);
        v21 = v200;
      }

      else
      {
        sub_1D7C8952C(v21, _s15ArticleProviderOMa);
      }

      if (a1 == ++v61)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v199 = a1;
  v29 = v189;
  v21 = v200;
  if (v28)
  {
    if (qword_1EE0CA130 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_165;
  }

LABEL_47:
  v39 = v29 >> 62;
  if (v29 >> 62)
  {
    v89 = sub_1D7D3167C();
  }

  else
  {
    v89 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    *&v211 = MEMORY[0x1E69E7CC0];
    result = sub_1D7A5BDC8(0, v89 & ~(v89 >> 63), 0);
    if (v89 < 0)
    {
      __break(1u);
      return result;
    }

    v91 = 0;
    v54 = v211;
    v92 = v189;
    v93 = v189 & 0xC000000000000001;
    do
    {
      if (v93)
      {
        v94 = MEMORY[0x1DA70EF00](v91);
      }

      else
      {
        v94 = *(v92 + 8 * v91 + 32);
      }

      v95 = [*(v94 + 16) identifier];
      v96 = sub_1D7D3034C();
      v98 = v97;

      *&v211 = v54;
      v100 = *(v54 + 2);
      v99 = *(v54 + 3);
      if (v100 >= v99 >> 1)
      {
        sub_1D7A5BDC8((v99 > 1), v100 + 1, 1);
        v54 = v211;
      }

      ++v91;
      *(v54 + 2) = v100 + 1;
      v101 = &v54[v100];
      *(v101 + 4) = v96;
      *(v101 + 5) = v98;
      a1 = v199;
      v92 = v189;
    }

    while (v89 != v91);
  }

LABEL_61:
  v103 = sub_1D7BDE0A4(v54);

  if (v39)
  {
    v107 = v189;
    v105 = v189 & 0xFFFFFFFFFFFFFF8;
    v28 = sub_1D7D3167C();
    v104 = v107;
    v106 = v28;
  }

  else
  {
    v104 = v189;
    v105 = v189 & 0xFFFFFFFFFFFFFF8;
    v106 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v106)
  {
    v108 = 0;
    v109 = v104 & 0xC000000000000001;
    do
    {
      v21 = v108;
      while (1)
      {
        if (v109)
        {
          v28 = MEMORY[0x1DA70EF00](v21, v104);
          v110 = v28;
          v108 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (v21 >= *(v105 + 16))
          {
            goto LABEL_157;
          }

          v110 = *(v104 + 8 * v21 + 32);

          v108 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_156;
          }
        }

        v111 = [*(v110 + 16) clusterID];
        if (v111)
        {
          break;
        }

        ++v21;
        v104 = v189;
        if (v108 == v106)
        {
          goto LABEL_81;
        }
      }

      v112 = v111;
      v113 = sub_1D7D3034C();
      v204 = v114;

      v28 = swift_isUniquelyReferenced_nonNull_native();
      if ((v28 & 1) == 0)
      {
        v28 = sub_1D79A8020(0, *(v18 + 16) + 1, 1, v18);
        v18 = v28;
      }

      v116 = *(v18 + 16);
      v115 = *(v18 + 24);
      v104 = v189;
      if (v116 >= v115 >> 1)
      {
        v28 = sub_1D79A8020((v115 > 1), v116 + 1, 1, v18);
        v104 = v189;
        v18 = v28;
      }

      *(v18 + 16) = v116 + 1;
      v117 = v18 + 16 * v116;
      v118 = v204;
      *(v117 + 32) = v113;
      *(v117 + 40) = v118;
      a1 = v199;
    }

    while (v108 != v106);
  }

LABEL_81:
  v21 = sub_1D7BDE0A4(v18);

  v119 = v173;
  swift_beginAccess();
  v120 = *v119;
  v206 = MEMORY[0x1E69E7CC0];
  if (v120 >> 62)
  {
    v121 = sub_1D7D3167C();
  }

  else
  {
    v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = MEMORY[0x1E69E7CC0];
  v200 = v120;
  if (!v121)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_106;
  }

  v123 = 0;
  v203 = (v120 & 0xFFFFFFFFFFFFFF8);
  v204 = (v120 & 0xC000000000000001);
  v201 = (v120 + 32);
  v202 = v21;
  v18 = v103 + 56;
  while (v204)
  {
    a1 = MEMORY[0x1DA70EF00](v123, v200);
    v124 = __OFADD__(v123++, 1);
    if (v124)
    {
      goto LABEL_103;
    }

LABEL_90:
    v125 = v121;
    v126 = [*(a1 + 16) identifier];
    v127 = sub_1D7D3034C();
    v129 = v128;

    if (*(v103 + 16) && (sub_1D7D31A8C(), sub_1D7D303FC(), v130 = sub_1D7D31ABC(), v131 = -1 << *(v103 + 32), v132 = v130 & ~v131, ((*(v18 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) != 0))
    {
      v133 = ~v131;
      while (1)
      {
        v134 = (*(v103 + 48) + 16 * v132);
        v135 = *v134 == v127 && v134[1] == v129;
        if (v135 || (sub_1D7D3197C() & 1) != 0)
        {
          break;
        }

        v132 = (v132 + 1) & v133;
        if (((*(v18 + ((v132 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v132) & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
LABEL_85:

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      v28 = sub_1D7D3154C();
    }

    v121 = v125;
    v135 = v123 == v125;
    a1 = v199;
    v21 = v202;
    if (v135)
    {
      goto LABEL_104;
    }
  }

  if (v123 >= *(v203 + 2))
  {
    goto LABEL_158;
  }

  a1 = *&v201[8 * v123];

  v124 = __OFADD__(v123++, 1);
  if (!v124)
  {
    goto LABEL_90;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  v18 = v206;
  v122 = MEMORY[0x1E69E7CC0];
LABEL_106:

  v206 = v122;
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v28 = sub_1D7D3167C();
    v136 = v28;
    v137 = v188;
    if (!v28)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v136 = *(v18 + 16);
    v137 = v188;
    if (!v136)
    {
      goto LABEL_132;
    }
  }

  v138 = 0;
  v203 = (v18 + 32);
  v204 = (v18 & 0xC000000000000001);
  v139 = v21 + 56;
  v201 = v18;
  while (2)
  {
    if (v204)
    {
      v140 = MEMORY[0x1DA70EF00](v138, v18);
      v124 = __OFADD__(v138++, 1);
      if (v124)
      {
        goto LABEL_130;
      }

LABEL_116:
      v141 = [*(v140 + 16) clusterID];
      if (v141)
      {
        v142 = v136;
        v143 = v141;
        v144 = sub_1D7D3034C();
        v146 = v145;

        if (*(v21 + 16))
        {
          sub_1D7D31A8C();
          sub_1D7D303FC();
          v147 = sub_1D7D31ABC();
          v148 = -1 << *(v21 + 32);
          v149 = v147 & ~v148;
          if ((*(v139 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149))
          {
            v150 = ~v148;
            while (1)
            {
              v151 = (*(v21 + 48) + 16 * v149);
              v152 = *v151 == v144 && v151[1] == v146;
              if (v152 || (sub_1D7D3197C() & 1) != 0)
              {
                break;
              }

              v149 = (v149 + 1) & v150;
              if (((*(v139 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            v136 = v142;
            v18 = v201;
LABEL_112:
            v137 = v188;
            a1 = v199;
            if (v138 == v136)
            {
              goto LABEL_131;
            }

            continue;
          }
        }

LABEL_110:

        v136 = v142;
        v18 = v201;
      }

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      v28 = sub_1D7D3154C();
      goto LABEL_112;
    }

    break;
  }

  if (v138 >= *(v18 + 16))
  {
    goto LABEL_159;
  }

  v140 = *(v203 + v138);

  v124 = __OFADD__(v138++, 1);
  if (!v124)
  {
    goto LABEL_116;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  v122 = v206;
LABEL_132:

  v153 = *(__swift_project_boxed_opaque_existential_1(v218, v219) + 33);
  if (v153 > 2)
  {
    if (v153 == 3 || v153 == 4)
    {
LABEL_137:
      v154 = sub_1D7D3197C();

      if (v154)
      {
        goto LABEL_145;
      }
    }

    v155 = *(__swift_project_boxed_opaque_existential_1(v218, v219) + 33);
    if (v155 > 2)
    {
      if (v155 == 3)
      {
        goto LABEL_142;
      }

      if (v155 != 4)
      {
        goto LABEL_147;
      }
    }

    v156 = sub_1D7D3197C();

    if ((v156 & 1) == 0)
    {
LABEL_147:
      v204 = v122;
      sub_1D799CC84(v187 + 288, &v211);
      v157 = __swift_project_boxed_opaque_existential_1(&v211, *(&v212 + 1));
      v158 = [v205 publisherID];
      if (v158)
      {
        v159 = v158;
        v160 = sub_1D7D3034C();
        v162 = v161;
      }

      else
      {
        v160 = 0;
        v162 = 0;
      }

      __swift_project_boxed_opaque_existential_1(v220, v221);
      v163 = sub_1D7BB3D2C(a1);
      if (!v163)
      {
        v163 = sub_1D7A51868(MEMORY[0x1E69E7CC0]);
      }

      sub_1D7CE88D8(*v157, v160, v162, v163, &v206);

      v164 = v208;
      v165 = v209;
      __swift_project_boxed_opaque_existential_1(&v206, v208);
      swift_beginAccess();
      v166 = *(v137 + 16);
      swift_beginAccess();
      v167 = *(v186 + 16);
      v205 = *(v165 + 8);
      v168 = type metadata accessor for EndOfArticleHeadlineModel();
      v169 = sub_1D7C85C1C(&qword_1EE0C6288, type metadata accessor for EndOfArticleHeadlineModel);

      v102 = (v205)(v166, v204, v167, v168, &off_1F52B1B90, v169, v164, v165);

      __swift_destroy_boxed_opaque_existential_1(&v206);
      __swift_destroy_boxed_opaque_existential_1(&v211);

      __swift_destroy_boxed_opaque_existential_1(v218);
      goto LABEL_153;
    }

LABEL_145:

    goto LABEL_146;
  }

  if (v153 <= 1)
  {
    goto LABEL_137;
  }

LABEL_142:

LABEL_146:
  swift_beginAccess();
  v102 = *(v137 + 16);

  __swift_destroy_boxed_opaque_existential_1(v218);
LABEL_153:

LABEL_154:
  __swift_destroy_boxed_opaque_existential_1(v220);
  return v102;
}

char *sub_1D7C87AA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = &type metadata for CombinedArticleRecirculationConfig.Section;
  v54 = &off_1F52A98F0;
  v8 = swift_allocObject();
  v52[0] = v8;
  v9 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = *(a4 + 80);
  v10 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v10;
  if (*(a1 + 32))
  {
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = objc_opt_self();
  sub_1D7B653B4(a4, &v50);

  v13 = [v12 mainBundle];
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
    goto LABEL_54;
  }

  v15 = sub_1D7D3034C();
  v17 = v16;

  if (v15 == 0x6C7070612E6D6F63 && v17 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v19 = sub_1D7D3197C();

    if ((v19 & 1) == 0)
    {
LABEL_54:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D79E5C10(0, *(v11 + 2) + 1, 1, v11);
      }

      v46 = *(v11 + 2);
      v45 = *(v11 + 3);
      if (v46 >= v45 >> 1)
      {
        v11 = sub_1D79E5C10((v45 > 1), v46 + 1, 1, v11);
      }

      *(v11 + 2) = v46 + 1;
      v42 = &v11[v46];
LABEL_59:
      v42[32] = 4;
      goto LABEL_60;
    }
  }

  v20 = [*(a2 + 232) cachedSubscription];
  if (objc_getAssociatedObject(v20, v20 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E69E7CA0];
  if (!*(&v49 + 1))
  {
    sub_1D7C89230(&v50, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    goto LABEL_20;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v22 = 0;
    v24 = 0;
    goto LABEL_21;
  }

  v22 = v47;
  v23 = [v47 integerValue];
  if (v23 == -1)
  {

    goto LABEL_32;
  }

  v24 = v23;
LABEL_21:
  if (objc_getAssociatedObject(v20, ~v24))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D7C89230(&v50, &qword_1EE0BE7A0, v21 + 8, MEMORY[0x1E69E6720]);
LABEL_29:

    if ((v24 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_32;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v25 = v47;
  v26 = [v25 integerValue];

  if (((v26 ^ v24) & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_32:
  v27 = [a3 sourceChannel];
  if (v27)
  {
    v28 = [v27 identifier];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = [a3 sourceChannelID];
    if (!v28)
    {
      goto LABEL_48;
    }
  }

  v29 = sub_1D7D3034C();
  v31 = v30;

  result = [*(a2 + 16) configuration];
  if (result)
  {
    v33 = result;
    if ([result respondsToSelector_])
    {
      v34 = [v33 channelPaywallConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_1D7992EFC(0, &qword_1EC9E7BC8);
      v35 = sub_1D7D3028C();

      if (*(v35 + 16))
      {
        v36 = sub_1D7A18FFC(v29, v31);
        v38 = v37;

        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v36);

          if (([v39 filterALaCartePaidArticlesForPaidBundleSubscribers] & 1) == 0)
          {

            goto LABEL_60;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1D79E5C10(0, *(v11 + 2) + 1, 1, v11);
          }

          v41 = *(v11 + 2);
          v40 = *(v11 + 3);
          if (v41 >= v40 >> 1)
          {
            v11 = sub_1D79E5C10((v40 > 1), v41 + 1, 1, v11);
          }

          *(v11 + 2) = v41 + 1;
          v42 = &v11[v41];
          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_48:
    v43 = *(__swift_project_boxed_opaque_existential_1(v52, v53) + 33);
    if (v43 > 2)
    {
      if (v43 != 3 && v43 != 4)
      {
        goto LABEL_54;
      }
    }

    else if (v43 > 1)
    {

      goto LABEL_60;
    }

    v44 = sub_1D7D3197C();

    if (v44)
    {
LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v52);
      return v11;
    }

    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C88164(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(v2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

uint64_t sub_1D7C88238(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(unint64_t *), unint64_t a7, uint64_t a8)
{
  v90[1] = a7;
  v91 = a6;
  v94 = a5;
  v96 = a4;
  v95 = a3;
  v93 = a1;
  v10 = sub_1D7D2DBAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = &type metadata for CombinedArticleRecirculationConfig;
  v116 = &off_1F52A9508;
  v114 = swift_allocObject();
  sub_1D7C8928C(a2, v114 + 16);
  if (qword_1EE0C56A0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v15 = qword_1EE0C56B0;
    *v14 = qword_1EE0C56B0;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
    v16 = v15;
    LOBYTE(v15) = sub_1D7D2DBCC();
    v17 = *(v11 + 8);
    v11 += 8;
    v17(v14, v10);
    if (v15)
    {
      if (qword_1EE0CA130 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v18 = qword_1EE0CA138;
    sub_1D7D30C6C();
    v19 = MEMORY[0x1E69E7CC0];
    v105 = v18;
    sub_1D7D29AAC();
    v20 = __swift_project_boxed_opaque_existential_1(&v114, v115);
    v21 = sub_1D7C86334(0, v19, v20, v94, v93, v95, v96, a8);
    v10 = v21;
    v104 = v21;
    v92 = a8;
    if (!v21)
    {
      goto LABEL_20;
    }

    a8 = v21 & 0xFFFFFFFFFFFFFF8;
    v14 = v21 >> 62 ? sub_1D7D3167C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v14)
    {
      break;
    }

    v22 = 0;
    v103 = v10 & 0xC000000000000001;
    v101 = 0x80000001D7D7CA90;
    v100 = xmmword_1D7D3B4D0;
    v102 = v14;
    while (v103)
    {
      v25 = MEMORY[0x1DA70EF00](v22, v10);
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_14:
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = v100;
      v28 = 0xE000000000000000;
      v106 = 0;
      v107 = 0xE000000000000000;
      sub_1D7D3145C();

      v106 = 0xD00000000000001DLL;
      v107 = v101;
      v29 = *(v25 + 16);
      v30 = [v29 identifier];
      v31 = sub_1D7D3034C();
      v33 = v32;

      MEMORY[0x1DA70DE90](v31, v33);

      MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
      v34 = [v29 title];
      if (v34)
      {
        v35 = v34;
        v23 = sub_1D7D3034C();
        v28 = v36;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x1DA70DE90](v23, v28);

      v24 = v106;
      v11 = v107;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1D79D6AE0();
      *(v27 + 32) = v24;
      *(v27 + 40) = v11;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      ++v22;
      v14 = v102;
      v10 = v104;
      if (v26 == v102)
      {
        goto LABEL_19;
      }
    }

    if (v22 < *(a8 + 16))
    {
      v25 = *(v10 + 8 * v22 + 32);

      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

LABEL_19:

  v19 = v10;
  a8 = v92;
LABEL_20:
  sub_1D7D30C6C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D7D29AAC();
  v37 = __swift_project_boxed_opaque_existential_1(&v114, v115);

  v10 = sub_1D7C86334(1, v19, v37, v94, v93, v95, v96, a8);

  v102 = v19;
  v103 = v10;
  if (v10)
  {
    a8 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      v14 = sub_1D7D3167C();
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v38 = 0;
      v101 = v10 & 0xC000000000000001;
      v99 = 0x80000001D7D7CA90;
      v98 = xmmword_1D7D3B4D0;
      *&v100 = v14;
      do
      {
        if (v101)
        {
          v45 = MEMORY[0x1DA70EF00](v38, v10);
          v46 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v38 >= *(a8 + 16))
          {
            goto LABEL_70;
          }

          v45 = *(v10 + 8 * v38 + 32);

          v46 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
LABEL_34:
            __break(1u);
            break;
          }
        }

        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v47 = swift_allocObject();
        *(v47 + 16) = v98;
        v42 = 0xE000000000000000;
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_1D7D3145C();

        v106 = 0xD00000000000001DLL;
        v107 = v99;
        v48 = *(v45 + 16);
        v49 = [v48 identifier];
        v11 = sub_1D7D3034C();
        v51 = v50;

        MEMORY[0x1DA70DE90](v11, v51);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v52 = [v48 title];
        if (v52)
        {
          v39 = v52;
          v40 = sub_1D7D3034C();
          v42 = v41;
        }

        else
        {
          v40 = 0;
        }

        MEMORY[0x1DA70DE90](v40, v42);

        v43 = v106;
        v44 = v107;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1D79D6AE0();
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        ++v38;
        v14 = v100;
        v10 = v103;
      }

      while (v46 != v100);
    }

    v11 = v10;
    a8 = v92;
    v19 = v102;
  }

  sub_1D7D30C6C();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D7D29AAC();
  v106 = v19;

  v90[0] = v11;
  sub_1D79E2F38(v11);
  v54 = v106;
  v55 = __swift_project_boxed_opaque_existential_1(&v114, v115);
  v11 = sub_1D7C86334(2, v54, v55, v94, v93, v95, v96, a8);

  v101 = v11;
  if (v11)
  {
    a8 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v14 = sub_1D7D3167C();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v10 = 0;
      *&v100 = v11 & 0xC000000000000001;
      *&v98 = 0x80000001D7D7CA90;
      v97 = xmmword_1D7D3B4D0;
      v99 = v14;
      do
      {
        if (v100)
        {
          v59 = MEMORY[0x1DA70EF00](v10, v11);
          v60 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v10 >= *(a8 + 16))
          {
            goto LABEL_71;
          }

          v59 = *(v11 + 8 * v10 + 32);

          v60 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_50:
            __break(1u);
            break;
          }
        }

        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v61 = swift_allocObject();
        *(v61 + 16) = v97;
        v62 = 0xE000000000000000;
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_1D7D3145C();

        v106 = 0xD00000000000001DLL;
        v107 = v98;
        v63 = *(v59 + 16);
        v64 = [v63 identifier];
        v65 = sub_1D7D3034C();
        v67 = v66;

        MEMORY[0x1DA70DE90](v65, v67);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v68 = [v63 title];
        if (v68)
        {
          v69 = v68;
          v56 = sub_1D7D3034C();
          v62 = v70;
        }

        else
        {
          v56 = 0;
        }

        MEMORY[0x1DA70DE90](v56, v62);

        v57 = v106;
        v58 = v107;
        *(v61 + 56) = MEMORY[0x1E69E6158];
        *(v61 + 64) = sub_1D79D6AE0();
        *(v61 + 32) = v57;
        *(v61 + 40) = v58;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        ++v10;
        v14 = v99;
        v11 = v101;
        v19 = v102;
      }

      while (v60 != v99);
    }

    v53 = v11;
    a8 = v92;
  }

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v113 = v19;

  sub_1D79E2F38(v90[0]);

  sub_1D79E2F38(v53);
  v14 = v113;
  v71 = __swift_project_boxed_opaque_existential_1(&v114, v115);
  v10 = sub_1D7C86334(3, v14, v71, v94, v93, v95, v96, a8);

  if (v10)
  {
    a8 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      v72 = sub_1D7D3167C();
    }

    else
    {
      v72 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v72)
    {
      v73 = 0;
      v102 = v10 & 0xC000000000000001;
      *&v98 = 0x80000001D7D7CA90;
      v97 = xmmword_1D7D3B4D0;
      *&v100 = v10;
      v99 = v72;
      do
      {
        if (v102)
        {
          v80 = MEMORY[0x1DA70EF00](v73, v10);
          v81 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v73 >= *(a8 + 16))
          {
            goto LABEL_72;
          }

          v80 = *(v10 + 8 * v73 + 32);

          v81 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v82 = a8;
        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        *(v11 + 16) = v97;
        v77 = 0xE000000000000000;
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_1D7D3145C();

        v106 = 0xD00000000000001DLL;
        v107 = v98;
        v83 = *(v80 + 16);
        v84 = [v83 identifier];
        v85 = sub_1D7D3034C();
        v87 = v86;

        MEMORY[0x1DA70DE90](v85, v87);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v88 = [v83 title];
        if (v88)
        {
          v74 = v88;
          v75 = sub_1D7D3034C();
          v77 = v76;
        }

        else
        {
          v75 = 0;
        }

        a8 = v82;
        v10 = v100;
        v78 = v99;
        MEMORY[0x1DA70DE90](v75, v77);

        v14 = v106;
        v79 = v107;
        *(v11 + 56) = MEMORY[0x1E69E6158];
        *(v11 + 64) = sub_1D79D6AE0();
        *(v11 + 32) = v14;
        *(v11 + 40) = v79;
        sub_1D7D30C6C();
        sub_1D7D29AAC();

        ++v73;
      }

      while (v81 != v78);
    }

    v11 = v101;
  }

  sub_1D799CC84(&v114, &v106);
  v108 = v104;
  v109 = v103;
  v110 = v11;
  v111 = v10;
  v112 = 0;
  v91(&v106);
  sub_1D7C89230(&v106, &unk_1EE0C0308, &type metadata for ArticleRecirculationService.MergeResult, MEMORY[0x1E69D6AF8]);
  return __swift_destroy_boxed_opaque_existential_1(&v114);
}

unint64_t sub_1D7C89118(unint64_t result, void *a2, void *a3, void *a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA70EF00](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_1D7C7F498(&v13, a2, a3, a4);
        result = swift_unknownObjectRelease();
        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1D7D3167C();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D7C89230(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D7C8A6D4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7C892E8()
{
  if (!qword_1EE0C0480)
  {
    sub_1D7C8937C();
    sub_1D7C85C1C(&unk_1EE0BF208, sub_1D7C8937C);
    v0 = sub_1D7D28E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0480);
    }
  }
}

void sub_1D7C8937C()
{
  if (!qword_1EE0BF218)
  {
    sub_1D7C8A6D4(255, &unk_1EE0BF330, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF218);
    }
  }
}

uint64_t sub_1D7C89454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D7C8A618(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7C894C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C8952C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C8958C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C895F4()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v4 = *(v3 + 80);
  v8[4] = *(v3 + 64);
  v8[5] = v4;
  v9 = *(v3 + 96);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  v6 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v6;
  return sub_1D7B75A74(v1, v8, v2);
}

uint64_t sub_1D7C89734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D7C8A618(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7C89790(unint64_t a1, unint64_t *a2)
{
  v15 = a2;
  v17 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_1D7D3167C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v6 = MEMORY[0x1DA70EF00](v4, a1);
        v5 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          return v17;
        }
      }

      else
      {
        if (v4 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = *(a1 + 8 * v4 + 32);

        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v9 = *v15;
      v16 = v5;
      MEMORY[0x1EEE9AC00](v6, v7);
      v12[2] = &v16;

      v10 = sub_1D7B8AC60(sub_1D7C8A564, v12, v9);

      if (v10)
      {
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      ++v4;
      if (v8 == v3)
      {
        return v17;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7C89960(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_69:
    v41 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = sub_1D7D3167C();
  }

  else
  {
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  i = 1;
  while (1)
  {
    if (v43 == v3)
    {

      return v2;
    }

    if (v4)
    {
      v6 = MEMORY[0x1DA70EF00](v3, v2);
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v7 = [*(v6 + 16) articleID];
    v8 = sub_1D7D3034C();
    v10 = v9;

    v11 = [a2 articleID];
    v12 = sub_1D7D3034C();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_1D7D3197C();

    if (v16)
    {
      goto LABEL_19;
    }

    i += 2;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_68;
    }
  }

LABEL_19:
  v44 = v2;

  v18 = &v44;
  sub_1D7B029BC(v3);

  v19 = v44;
  v20 = v44 >> 62;
  if (v44 >> 62)
  {
    if (v44 < 0)
    {
      v18 = v44;
    }

    else
    {
      v18 = (v44 & 0xFFFFFFFFFFFFFF8);
    }

    result = sub_1D7D3167C();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (sub_1D7D3167C() >= v3)
    {
      goto LABEL_21;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
  {
    goto LABEL_75;
  }

LABEL_21:
  v14 = v19 & 0xC000000000000001;
  if ((v19 & 0xC000000000000001) != 0 && v3)
  {
    type metadata accessor for EndOfArticleHeadlineModel();

    v21 = 0;
    do
    {
      v22 = v21 + 1;
      sub_1D7D3147C();
      v21 = v22;
    }

    while (v3 != v22);
    if (!v20)
    {
      goto LABEL_26;
    }

LABEL_29:

    v18 = sub_1D7D3168C();
    v4 = v24;
    i = v25;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v20)
    {
      goto LABEL_29;
    }

LABEL_26:
    v4 = 0;
    v18 = (v19 & 0xFFFFFFFFFFFFFF8);
    v23 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((i & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v12 = v23;
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(i >> 1, v4))
  {
    goto LABEL_77;
  }

  if (v28 != (i >> 1) - v4)
  {
    goto LABEL_79;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!i)
  {
    goto LABEL_39;
  }

  v29 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v20)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v4 = *(v29 + 16);
    if (v4 >= v3)
    {
      break;
    }

    __break(1u);
LABEL_39:
    for (i = MEMORY[0x1E69E7CC0]; ; i = v26)
    {
      swift_unknownObjectRelease();
      v29 = v19 & 0xFFFFFFFFFFFFFF8;
      if (!v20)
      {
        break;
      }

LABEL_41:
      if (v19 < 0)
      {
        v18 = v19;
      }

      else
      {
        v18 = v29;
      }

      v30 = sub_1D7D3167C();
      if (v30 >= v3)
      {
        v4 = v30;
        if (sub_1D7D3167C() < v3)
        {
          __break(1u);
          goto LABEL_81;
        }

        if (sub_1D7D3167C() >= v4)
        {
          goto LABEL_47;
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      __break(1u);
LABEL_79:
      swift_unknownObjectRelease();
      v23 = v12;
LABEL_30:
      sub_1D7B10210(v18, v23, v4, i);
    }
  }

LABEL_47:
  if (!v14 || v4 == v3)
  {

    if (!v20)
    {
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  if (v3 >= v4)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  type metadata accessor for EndOfArticleHeadlineModel();

  v31 = v3;
  do
  {
    v32 = v31 + 1;
    sub_1D7D3147C();
    v31 = v32;
  }

  while (v4 != v32);
  if (v20)
  {
LABEL_56:

    v18 = sub_1D7D3168C();
    v3 = v34;
    v4 = v35;
    if (v35)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_53:
  v18 = (v19 & 0xFFFFFFFFFFFFFF8);
  v33 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
LABEL_57:
    sub_1D7B10210(v18, v33, v3, v4);
    v37 = v36;
    goto LABEL_64;
  }

LABEL_58:
  v20 = v33;
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_82;
  }

  if (v39 != (v4 >> 1) - v3)
  {
LABEL_83:
    swift_unknownObjectRelease();
    v33 = v20;
    goto LABEL_57;
  }

  v37 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v37)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_64:
    swift_unknownObjectRelease();
  }

  sub_1D79E2F38(i);

  return v37;
}

char *sub_1D7C89E7C(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v68 = a3;
  v7 = sub_1D7D2E24C();
  v67 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v61 - v13;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v78 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C7B8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v78;
    v72 = a1 & 0xC000000000000001;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v61 = a1 + 32;
    v70 = *(v68 + 16);
    v76 = v67 + 16;
    v18 = (v67 + 8);
    v63 = (v67 + 32);
    v69 = xmmword_1D7D3C680;
    v77 = v7;
    v71 = i;
    v66 = a2;
    v65 = a1;
    while (!__OFADD__(v16, 1))
    {
      v74 = v16 + 1;
      v75 = v17;
      if (v72)
      {
        v19 = MEMORY[0x1DA70EF00]();
      }

      else
      {
        if (v16 >= *(v62 + 16))
        {
          goto LABEL_40;
        }

        v19 = *(v61 + 8 * v16);
      }

      v20 = [*(v19 + 16) identifier];
      v21 = sub_1D7D3034C();
      v23 = v22;

      v24 = 0.0;
      if (v70)
      {
        v73 = v19;
        v25 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v26 = *(v67 + 72);
        v27 = *(v67 + 16);
        v28 = v70;
        while (1)
        {
          v29 = v27(v10, v25, v7);
          if (MEMORY[0x1DA70BC70](v29) == v21 && v30 == v23)
          {
            break;
          }

          v31 = sub_1D7D3197C();

          if (v31)
          {
            goto LABEL_19;
          }

          v7 = v77;
          (*v18)(v10, v77);
          v25 += v26;
          if (!--v28)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        v32 = v64;
        v33 = v77;
        (*v63)(v64, v10, v77);
        sub_1D7D2E22C();
        v24 = v34;
        (*v18)(v32, v33);
LABEL_20:
        a2 = v66;
        a1 = v65;
        v19 = v73;
      }

      if (*(a2 + 16))
      {
        v35 = sub_1D7A18FFC(v21, v23);
        v37 = v36;

        v38 = 0.0;
        v39 = 0.0;
        if (v37)
        {
          v38 = *(*(a2 + 56) + 8 * v35);
          v39 = a4;
        }
      }

      else
      {

        v38 = 0.0;
        v39 = 0.0;
      }

      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      v40 = v38 * v39 + v24 * (1.0 - v39);
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 16) = v69;
      v42 = [*(v19 + 16) identifier];
      v43 = sub_1D7D3034C();
      v45 = v44;

      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1D79D6AE0();
      *(v41 + 32) = v43;
      *(v41 + 40) = v45;
      v46 = MEMORY[0x1E69E63B0];
      *(v41 + 96) = MEMORY[0x1E69E63B0];
      v47 = MEMORY[0x1E69E6438];
      *(v41 + 104) = MEMORY[0x1E69E6438];
      *(v41 + 72) = a4;
      *(v41 + 136) = v46;
      *(v41 + 144) = v47;
      *(v41 + 112) = v40;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      v48 = *(v19 + 16);

      v49 = [v48 sourceChannelID];
      if (!v49)
      {
        v49 = [*(v19 + 16) identifier];
      }

      v50 = v49;
      v51 = sub_1D7D3034C();
      v53 = v52;

      v17 = v75;
      v78 = v75;
      v54 = v19;
      v56 = *(v75 + 2);
      v55 = *(v75 + 3);
      if (v56 >= v55 >> 1)
      {
        sub_1D7A5C7B8((v55 > 1), v56 + 1, 1);
        v17 = v78;
      }

      *(v17 + 2) = v56 + 1;
      v57 = &v17[32 * v56];
      *(v57 + 4) = v40;
      *(v57 + 5) = v54;
      *(v57 + 6) = v51;
      *(v57 + 7) = v53;
      v16 = v74;
      v7 = v77;
      if (v74 == v71)
      {
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v78 = v17;

  sub_1D7C780B4(&v78);

  v58 = *(v78 + 2);
  if (v58)
  {
    v78 = v15;
    sub_1D7D3156C();
    v59 = 40;
    do
    {

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v59 += 32;
      --v58;
    }

    while (v58);

    return v78;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1D7C8A584()
{
  if (!qword_1EC9E7BB8)
  {
    sub_1D7C8A618(255, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E7BB8);
    }
  }
}

void sub_1D7C8A618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C8A67C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C() & 1;
  }
}

void sub_1D7C8A6D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7C8A724(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7C8A6D4(0, a3, a4, MEMORY[0x1E69D6AF8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7C8A7A4(uint64_t a1, uint64_t a2)
{
  sub_1D7C80B34(0, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(type metadata accessor for ArticleRecirculationFetchConfig() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D7D2898C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7C8AA90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7C80B34(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7C8AB10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D7C8AB58(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_12NewsArticles52ArticleRecirculationSpecifiedSectionDataProviderType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7C8ABE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D7C8AC28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7C8AC94()
{
  result = qword_1EC9E7BD0;
  if (!qword_1EC9E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BD0);
  }

  return result;
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

uint64_t sub_1D7C8AD84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1D7C8ADCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7C8AE40()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = [*v0 identifier];
    v1 = sub_1D7D3034C();
  }

  return v1;
}

uint64_t sub_1D7C8AEB0()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7C8AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C8B0F0();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7C8AF70()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

unint64_t sub_1D7C8AFE8()
{
  result = qword_1EC9E7BE0;
  if (!qword_1EC9E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BE0);
  }

  return result;
}

unint64_t sub_1D7C8B040()
{
  result = qword_1EC9E7BE8;
  if (!qword_1EC9E7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BE8);
  }

  return result;
}

unint64_t sub_1D7C8B098()
{
  result = qword_1EC9E7BF0;
  if (!qword_1EC9E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BF0);
  }

  return result;
}

unint64_t sub_1D7C8B0F0()
{
  result = qword_1EC9E7BF8;
  if (!qword_1EC9E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BF8);
  }

  return result;
}

unint64_t sub_1D7C8B148()
{
  result = qword_1EC9E7C00;
  if (!qword_1EC9E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7C00);
  }

  return result;
}

uint64_t sub_1D7C8B19C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);

    if ((v5 & 1) == 0)
    {
LABEL_3:
      v8 = [v2 identifier];
      v4 = sub_1D7D3034C();
      v3 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = [*a1 identifier];
    v7 = sub_1D7D3034C();
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  if (v7 == v4 && v6 == v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7D3197C();
  }

  return v13 & 1;
}

uint64_t sub_1D7C8B29C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D7C8B2F0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (!v2)
  {
    swift_unknownObjectRetain();
    if (!v1)
    {
      return;
    }

LABEL_10:
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7D3B4D0;
    sub_1D7C8F4D0();
    sub_1D7D315DC();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D79D6AE0();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_1D7D29AAC();
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRetain();
  v3 = [v2 currentItem];
  v4 = v3;
  if (v1)
  {
    if (v3)
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C6C();
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D7D3B4D0;
      v6 = [v4 description];
      v7 = sub_1D7D3034C();
      v9 = v8;

      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 64) = sub_1D79D6AE0();
      *(v5 + 32) = v7;
      *(v5 + 40) = v9;
      sub_1D7D29AAC();

      v10 = [objc_opt_self() defaultCenter];
      swift_unknownObjectRetain();
      v17 = sub_1D7D3031C();
      [v10 removeObserver:v1 name:v17 object:v4];

      swift_unknownObjectRelease_n();

      return;
    }

    goto LABEL_10;
  }

  if (v3)
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7D3B4D0;
    v13 = [v4 description];
    v14 = sub_1D7D3034C();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D79D6AE0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_1D7D29AAC();
  }
}

void sub_1D7C8B7A4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = *(v0 + v2[21]);
  if (v3)
  {
    swift_getKeyPath();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v2[10];
    v5[3] = v2[11];
    v5[4] = v4;
    v6 = v3;
    v7 = v0;
    v8 = sub_1D7D2816C();

    v9 = *((*v1 & *v7) + 0x88);
    v10 = *(v7 + v9);
    *(v7 + v9) = v8;
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();

    sub_1D7D29AAC();
  }
}

uint64_t sub_1D7C8B9A0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();

    [v1 timeControlStatus];
    sub_1D7C8F3EC();
    sub_1D7D28F1C();
  }

  return result;
}

uint64_t AudioPlayer.currentTime.getter()
{
  sub_1D79A219C();
}

uint64_t AudioPlayer.currentRate.getter()
{
  sub_1D79A2230();
}

uint64_t AudioPlayer.itemReachedEndSignal.getter()
{
  sub_1D79A53B8();
}

uint64_t AudioPlayer.timeControlStatus.getter()
{
  sub_1D79A22D4();
}

uint64_t AudioPlayer.seekState.getter()
{
  sub_1D79A23C8();
}

id AudioPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D7C8BB6C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE0CB4A0 != -1)
    {
      swift_once();
    }

    v8 = qword_1D7D5D830[v1];
    type metadata accessor for AudioPlayer();
    swift_getWitnessTable();
    sub_1D7D2872C();
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
    v5 = *(v3 + v4);
    if (v5)
    {
      [v5 rate];
      if (*&v6 > 0.0)
      {
        v7 = *(v3 + v4);
        if (v7)
        {
          LODWORD(v6) = dword_1D7D5D860[v1];
          [v7 setRate_];
        }
      }
    }
  }
}

id AudioPlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7C8BCFC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D79F0014(&a1[*((*v2 & *a1) + 0x70)]);

  v3 = *((*v2 & *a1) + 0x98);
  v4 = sub_1D7D3130C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

uint64_t _s12NewsArticles11AudioPlayerC11skipForwardyySdF_0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v34 = (*MEMORY[0x1E69E7D40] & v4);
  v7 = *((v6 & v4) + 0x50);
  v8 = sub_1D7D3130C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v32 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v32 - v16;
  swift_beginAccess();

  sub_1D7D28EDC();

  v18 = v37;
  v19 = *((*v5 & *v2) + 0x98);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v2[v19], v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    return sub_1D7D29AAC();
  }

  else
  {
    (*(v13 + 32))(v17, v12, v7);
    sub_1D7A60E04(v7, *(v34 + 11), v18 + a1);
    v22 = v21;
    v34 = v17;
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v33 = qword_1EE0C05E8;
    v32[3] = sub_1D7D30C6C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7D3C680;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1D7D3093C();
    v25 = v35;
    v24 = v36;
    v26 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D79D6AE0();
    *(v23 + 64) = v27;
    *(v23 + 32) = v25;
    *(v23 + 40) = v24;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1D7D3093C();
    v28 = v35;
    v29 = v36;
    *(v23 + 96) = v26;
    *(v23 + 104) = v27;
    *(v23 + 72) = v28;
    *(v23 + 80) = v29;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1D7D3093C();
    v30 = v35;
    v31 = v36;
    *(v23 + 136) = v26;
    *(v23 + 144) = v27;
    *(v23 + 112) = v30;
    *(v23 + 120) = v31;
    sub_1D7D29AAC();

    AudioPlayer.seek(to:)(v22);
    return (*(v13 + 8))(v34, v7);
  }
}

Swift::Void __swiftcall AudioPlayer.seek(to:)(Swift::Double to)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x50);
  v7 = sub_1D7D3130C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v34 = &v33 - v15;
  swift_beginAccess();

  sub_1D7D28EDC();

  if (v37 != 1)
  {
    if (qword_1EE0C05E0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v16 = *v4 & *v1;
  v17 = *&v1[*(v16 + 0xA8)];
  if (!v17)
  {
    if (qword_1EE0C05E0 == -1)
    {
LABEL_10:
      sub_1D7D30C4C();
      sub_1D7D29AAC();
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  v33 = v5;
  v18 = *(v16 + 152);
  swift_beginAccess();
  (*(v8 + 16))(v11, &v2[v18], v7);
  v19 = v12;
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v20 = *(v8 + 8);
    v21 = v17;
    v20(v11, v7);
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7D29AAC();
  }

  else
  {
    v22 = *(v12 + 32);
    v23 = v34;
    v22(v34, v11, v6);
    v24 = qword_1EE0C05E0;
    v25 = v17;
    if (v24 != -1)
    {
      swift_once();
    }

    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7D3B4D0;
    v35 = 0.0;
    v36 = 0xE000000000000000;
    sub_1D7D3093C();
    v27 = v35;
    v28 = v36;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1D79D6AE0();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    v35 = to;
    LOBYTE(v36) = 0;

    sub_1D7D28EAC();

    v29 = *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0)];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v6;
    v32 = *(v33 + 88);
    *(v31 + 24) = v32;
    *(v31 + 32) = to;
    *(v31 + 40) = v30;

    sub_1D7A61398(v25, v29, sub_1D7C8F254, v31, v6, v32, to);

    (*(v19 + 8))(v23, v6);
  }
}

void AudioPlayer.play(_:at:)(uint64_t a1, uint64_t a2, Float64 a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v125 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *((v9 & v7) + 0x50);
  v124 = *(v10 - 8);
  v115 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v116 = &v109 - v11;
  v118 = sub_1D7D3130C();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v12);
  v14 = &v109 - v13;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0C05E8;
  sub_1D7D30C6C();
  sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v121 = v16;
  v17 = swift_allocObject();
  v119 = xmmword_1D7D3B4D0;
  *(v17 + 16) = xmmword_1D7D3B4D0;
  *aBlock = 0;
  *&aBlock[8] = 0xE000000000000000;
  sub_1D7D3193C();
  v18 = *aBlock;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v120 = sub_1D79D6AE0();
  *(v17 + 64) = v120;
  *(v17 + 32) = v18;
  v123 = v15;
  sub_1D7D29AAC();

  *(v3 + *((*v8 & *v3) + 0x90)) = 1;
  v19 = *((*v8 & *v3) + 0xA8);
  v20 = v8;
  if (!*(v3 + v19))
  {
LABEL_14:
    v43 = v124;
    v44 = *(v124 + 16);
    v122 = a1;
    v114 = v124 + 16;
    v113 = v44;
    v44(v14, a1, v10);
    (*(v43 + 56))(v14, 0, 1, v10);
    v45 = *((*v20 & *v4) + 0x98);
    swift_beginAccess();
    (v117)[5](v4 + v45, v14, v118);
    swift_endAccess();
    v46 = *(v4 + v19);
    if (v46)
    {
      [v46 pause];
    }

    v47 = *(v125 + 88);
    v48 = *(v47 + 24);
    v118 = v10;
    v125 = v47;
    v48(aBlock, v10);
    v132 = v135;
    v133[0] = *v136;
    *(v133 + 9) = *&v136[9];
    v131 = *&aBlock[16];
    v130 = *aBlock;
    v49 = sub_1D7C9D8F0();
    sub_1D7A61558(aBlock);
    if (v49 >> 62)
    {
      v50 = sub_1D7D3167C();
      if (v50)
      {
LABEL_18:
        v126 = MEMORY[0x1E69E7CC0];
        v51 = &v126;
        sub_1D7D3156C();
        if (v50 < 0)
        {
          __break(1u);
          goto LABEL_38;
        }

        v52 = 0;
        v53 = *MEMORY[0x1E6987398];
        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1DA70EF00](v52, v49);
          }

          else
          {
            v54 = *(v49 + 8 * v52 + 32);
          }

          ++v52;
          [v54 setAudioTimePitchAlgorithm_];
          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
        }

        while (v50 != v52);

        v51 = v126;
        v20 = MEMORY[0x1E69E7D40];
        if (!(v126 >> 62))
        {
LABEL_25:
          v49 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49)
          {
            goto LABEL_26;
          }

          goto LABEL_35;
        }

LABEL_34:
        v49 = sub_1D7D3167C();
        if (v49)
        {
LABEL_26:
          if ((v51 & 0xC000000000000001) == 0)
          {
            v55 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v55)
            {
              v56 = v49 - 1;
              if (!__OFSUB__(v49, 1))
              {
                if (v56 < v55)
                {
                  v57 = *(v51 + 32 + 8 * v56);
                  v117 = *(v51 + 32);
                  v58 = v57;
LABEL_31:
                  v59 = objc_allocWithZone(MEMORY[0x1E6988100]);
                  sub_1D7992EFC(0, &unk_1EC9E4B10);
                  v60 = sub_1D7D3062C();
                  v61 = [v59 initWithItems_];

                  v62 = [objc_opt_self() sharedSessionForMode_];
                  v63 = v61;
                  [v62 addInterestForPlayer:v63 withMode:0];

                  [v63 setAllowsExternalPlayback_];
                  *(v4 + *((*v20 & *v4) + 0xA0)) = v51;

                  v64 = v63;
                  v112 = v64;
                  sub_1D7C8F1D8(v63);

                  sub_1D7D30C3C();
                  v65 = swift_allocObject();
                  *(v65 + 16) = v119;
                  v66 = [v58 description];
                  v67 = sub_1D7D3034C();
                  v69 = v68;

                  v70 = v120;
                  *(v65 + 56) = MEMORY[0x1E69E6158];
                  *(v65 + 64) = v70;
                  *(v65 + 32) = v67;
                  *(v65 + 40) = v69;
                  sub_1D7D29AAC();

                  v110 = objc_opt_self();
                  v71 = [v110 defaultCenter];
                  v72 = sub_1D7D3031C();
                  v73 = objc_opt_self();
                  v74 = v58;
                  v75 = [v73 mainQueue];
                  v76 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v77 = swift_allocObject();
                  v78 = v118;
                  v79 = v125;
                  v77[2] = v118;
                  v77[3] = v79;
                  v77[4] = v74;
                  v77[5] = v76;
                  *&v132 = sub_1D7C8F264;
                  *(&v132 + 1) = v77;
                  *&v130 = MEMORY[0x1E69E9820];
                  *(&v130 + 1) = 1107296256;
                  *&v131 = sub_1D7C8DBA8;
                  *(&v131 + 1) = &block_descriptor_38;
                  v80 = _Block_copy(&v130);
                  v81 = v74;

                  v111 = v81;
                  v82 = [v71 addObserverForName:v72 object:v81 queue:v75 usingBlock:v80];
                  _Block_release(v80);

                  v83 = MEMORY[0x1E69E7D40];
                  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x60)) = v82;
                  swift_unknownObjectRelease();
                  v84 = [v110 defaultCenter];
                  v85 = *MEMORY[0x1E69B4F80];
                  v86 = [v73 mainQueue];
                  v87 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v88 = swift_allocObject();
                  v89 = v125;
                  v88[2] = v78;
                  v88[3] = v89;
                  v88[4] = v87;
                  *&v132 = sub_1D7C8F288;
                  *(&v132 + 1) = v88;
                  *&v130 = MEMORY[0x1E69E9820];
                  *(&v130 + 1) = 1107296256;
                  *&v131 = sub_1D7C8DBA8;
                  *(&v131 + 1) = &block_descriptor_18;
                  v90 = _Block_copy(&v130);

                  v91 = [v84 addObserverForName:v85 object:0 queue:v86 usingBlock:v90];
                  _Block_release(v90);

                  *(v4 + *((*v83 & *v4) + 0x68)) = v91;
                  swift_unknownObjectRelease();
                  sub_1D7D30C3C();
                  v92 = swift_allocObject();
                  *(v92 + 16) = v119;
                  v93 = v117;
                  v94 = [v117 description];
                  v95 = sub_1D7D3034C();
                  v97 = v96;

                  v98 = v120;
                  *(v92 + 56) = MEMORY[0x1E69E6158];
                  *(v92 + 64) = v98;
                  *(v92 + 32) = v95;
                  *(v92 + 40) = v97;
                  sub_1D7D29AAC();

                  *&v130 = v93;
                  swift_getKeyPath();
                  v99 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v100 = v116;
                  v113(v116, v122, v78);
                  v101 = v124;
                  v102 = (*(v124 + 80) + 48) & ~*(v124 + 80);
                  v103 = swift_allocObject();
                  v104 = v125;
                  *(v103 + 16) = v78;
                  *(v103 + 24) = v104;
                  *(v103 + 32) = v99;
                  *(v103 + 40) = a3;
                  (*(v101 + 32))(v103 + v102, v100, v78);
                  v105 = sub_1D7D2816C();

                  v106 = *((*v83 & *v4) + 0x78);
                  v107 = *(v4 + v106);
                  *(v4 + v106) = v105;

                  return;
                }

                goto LABEL_42;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_38:
          v108 = MEMORY[0x1DA70EF00](0, v51);
          if (!__OFSUB__(v49, 1))
          {
            v58 = MEMORY[0x1DA70EF00](v49 - 1, v51);
            v117 = v108;
            goto LABEL_31;
          }

LABEL_43:
          __break(1u);
          return;
        }

LABEL_35:

        sub_1D7D30C6C();
        sub_1D7D29AAC();
        return;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        goto LABEL_18;
      }
    }

    v51 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v21 = sub_1D7A614C8(v10, *(v125 + 88));
  v22 = *(v3 + v19);
  if (!v22 || (v23 = [v22 currentItem]) == 0 || (v24 = v23, v25 = objc_msgSend(v23, sel_asset), v24, !v25))
  {

    v20 = MEMORY[0x1E69E7D40];
    goto LABEL_14;
  }

  sub_1D7992EFC(0, &qword_1EC9E7C10);
  v26 = sub_1D7D311DC();

  v20 = MEMORY[0x1E69E7D40];
  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = *(v4 + v19);
  if (v27)
  {
    v28 = [v27 currentItem];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 status];

      if (v30 == 1)
      {
        v31 = *(v4 + v19);
        if (v31)
        {
          v32 = v31;
          CMTimeMakeWithSeconds(aBlock, a3, 1000000000);
          v33 = *aBlock;
          v34 = *&aBlock[16];
          v35 = *&aBlock[8];
          v36 = *MEMORY[0x1E6960CC0];
          v37 = *(MEMORY[0x1E6960CC0] + 8);
          v38 = *(MEMORY[0x1E6960CC0] + 12);
          v39 = *(MEMORY[0x1E6960CC0] + 16);
          v40 = swift_allocObject();
          *(v40 + 16) = v4;
          *&v135 = sub_1D7C8F2E4;
          *(&v135 + 1) = v40;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1D7C8B29C;
          *&aBlock[24] = &block_descriptor_28_1;
          v41 = _Block_copy(aBlock);
          v42 = v4;

          *aBlock = v33;
          *&aBlock[8] = v35;
          *&aBlock[16] = v34;
          *&v130 = v36;
          *(&v130 + 1) = __PAIR64__(v38, v37);
          *&v131 = v39;
          v126 = v36;
          v127 = v37;
          v128 = v38;
          v129 = v39;
          [v32 seekToTime:aBlock toleranceBefore:&v130 toleranceAfter:&v126 completionHandler:v41];
          _Block_release(v41);
        }
      }
    }
  }
}

uint64_t sub_1D7C8D9DC(uint64_t a1, void *a2)
{
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4D0;
  v4 = a2;
  v5 = [v4 description];
  v6 = sub_1D7D3034C();
  v8 = v7;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D79D6AE0();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_1D7D29AAC();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();

    sub_1D7D28EAC();
  }

  return result;
}

uint64_t sub_1D7C8DBA8(uint64_t a1)
{
  v2 = sub_1D7D2802C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1D7D27FFC();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1D7C8DC9C()
{
  sub_1D7D2800C();
  if (v12)
  {
    sub_1D7992EFC(0, &qword_1EC9E7C18);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v1 = MEMORY[0x1E69E7D40];
      if (Strong)
      {
        v2 = Strong;
        swift_beginAccess();

        v3 = v10;
        sub_1D7D28EAC();
      }

      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = *(v4 + *((*v1 & *v4) + 0x68));
        v6 = v4;
        swift_unknownObjectRetain();

        if (v5)
        {
          v7 = [objc_opt_self() defaultCenter];
          v8 = *MEMORY[0x1E69B50F0];
          swift_unknownObjectRetain();
          v9 = v8;
          [v7 removeObserver:v5 name:v9 object:0];

          swift_unknownObjectRelease_n();
        }
      }
    }
  }

  else
  {
    sub_1D79F0014(v11);
  }
}

void sub_1D7C8DE8C(uint64_t a1, uint64_t a2, Float64 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = *v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([v14 status] == 1)
    {
      v63 = a6;
      v64 = a5;
      v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v66 = v11;
      v67 = a7;
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C6C();
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      v62 = xmmword_1D7D3B4D0;
      *(v17 + 16) = xmmword_1D7D3B4D0;
      v18 = [v14 description];
      v19 = sub_1D7D3034C();
      v21 = v20;

      *(v17 + 56) = MEMORY[0x1E69E6158];
      v22 = sub_1D79D6AE0();
      *(v17 + 64) = v22;
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      sub_1D7D29AAC();

      v23 = MEMORY[0x1E69E7D40];
      v24 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x78);
      v25 = *(v16 + v24);
      *(v16 + v24) = 0;

      if (*(v16 + *((*v23 & *v16) + 0x90)) == 1)
      {
        v26 = *(v16 + *((*v23 & *v16) + 0xA8));
        if (v26)
        {
          v27 = v26;
          CMTimeMakeWithSeconds(aBlock, a3, 1000000000);
          v61 = *aBlock;
          *&v62 = *&aBlock[16];
          v28 = *&aBlock[8];
          v29 = *MEMORY[0x1E6960CC0];
          v30 = *(MEMORY[0x1E6960CC0] + 8);
          v31 = *(MEMORY[0x1E6960CC0] + 12);
          v32 = *(MEMORY[0x1E6960CC0] + 16);
          v33 = swift_allocObject();
          *(v33 + 16) = v16;
          v77 = sub_1D7C8F554;
          v78 = v33;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1D7C8B29C;
          *&aBlock[24] = &block_descriptor_41;
          v34 = _Block_copy(aBlock);
          v35 = v16;

          v75 = v32;
          *aBlock = v61;
          *&aBlock[8] = v28;
          *&aBlock[16] = v62;
          v71 = v32;
          v72 = v29;
          v73 = v30;
          v74 = v31;
          v68 = v29;
          v69 = v30;
          v70 = v31;
          v23 = MEMORY[0x1E69E7D40];
          [v27 seekToTime:aBlock toleranceBefore:&v72 toleranceAfter:&v68 completionHandler:v34];
          _Block_release(v34);
        }
      }

      else
      {
        sub_1D7D30C6C();
        v36 = swift_allocObject();
        *(v36 + 16) = v62;
        v37 = [v14 description];
        v38 = sub_1D7D3034C();
        v40 = v39;

        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = v22;
        *(v36 + 32) = v38;
        *(v36 + 40) = v40;
        sub_1D7D29AAC();
      }

      sub_1D7D30C6C();
      sub_1D7D29AAC();
      v41 = *v23 & *v16;
      v42 = *(v16 + *(v41 + 0xA8));
      if (v42)
      {
        *&v62 = v42;
        v59 = sub_1D7D3104C();
        v44 = v43;
        v61 = v45;
        v60 = HIDWORD(v43);
        sub_1D7992EFC(0, &qword_1EE0BEFF0);
        v46 = sub_1D7D30E1C();
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = v65;
        v48 = v66;
        v50 = v63;
        (*(v66 + 16))(v65, v64, v63);
        v51 = (*(v48 + 80) + 40) & ~*(v48 + 80);
        v52 = swift_allocObject();
        v53 = v67;
        *(v52 + 2) = v50;
        *(v52 + 3) = v53;
        *(v52 + 4) = v47;
        (*(v48 + 32))(&v52[v51], v49, v50);
        v77 = sub_1D7C8F308;
        v78 = v52;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1D7C8E8B8;
        *&aBlock[24] = &block_descriptor_35_0;
        v54 = _Block_copy(aBlock);

        *aBlock = v59;
        *&aBlock[8] = __PAIR64__(v60, v44);
        *&aBlock[16] = v61;
        v55 = v62;
        v56 = [v62 addPeriodicTimeObserverForInterval:aBlock queue:v46 usingBlock:v54];
        _Block_release(v54);

        sub_1D7D3138C();
        swift_unknownObjectRelease();
        v41 = *MEMORY[0x1E69E7D40] & *v16;
      }

      else
      {
        memset(aBlock, 0, sizeof(aBlock));
      }

      v57 = *(v41 + 112);
      swift_beginAccess();
      sub_1D7C8F348(aBlock, v16 + v57);
      swift_endAccess();
    }
  }
}

void sub_1D7C8E5B0(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8));
    if (v14)
    {
      v24 = a6;
      v25 = a7;
      v15 = qword_1EE0C05E0;
      v23 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      sub_1D7D30C3C();
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7D3B4E0;
      type metadata accessor for CMTime(0);
      sub_1D7D315DC();
      v17 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1D79D6AE0();
      *(v16 + 64) = v18;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      time.value = a1;
      *&time.timescale = a2;
      time.epoch = a3;
      CMTimeGetSeconds(&time);
      sub_1D7D3093C();
      *(v16 + 96) = v17;
      *(v16 + 104) = v18;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0xE000000000000000;
      sub_1D7D29AAC();

      v19 = MEMORY[0x1E69E7D40];
      swift_beginAccess();

      v26.value = a1;
      *&v26.timescale = a2;
      v26.epoch = a3;
      CMTimeGetSeconds(&v26);
      v20 = *(v13 + *((*v19 & *v13) + 0xA0));

      sub_1D7A60E90(v23, v20, v24, v25);
      v22 = v21;

      v26.value = v22;
      sub_1D7D28F1C();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7C8E8B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

Swift::Void __swiftcall AudioPlayer.pause()()
{
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90)) = 0;
  v2 = *(v0 + *((*v1 & *v0) + 0xA8));
  if (v2)
  {

    [v2 pause];
  }
}