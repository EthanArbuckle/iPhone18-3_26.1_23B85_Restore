unint64_t sub_1C6BB31B8()
{
  result = qword_1EC1D7318;
  if (!qword_1EC1D7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7318);
  }

  return result;
}

unint64_t sub_1C6BB320C()
{
  result = qword_1EDCE7A60;
  if (!qword_1EDCE7A60)
  {
    sub_1C6B7A08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7A60);
  }

  return result;
}

unint64_t sub_1C6BB3278()
{
  result = qword_1EC1D7320;
  if (!qword_1EC1D7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7320);
  }

  return result;
}

uint64_t sub_1C6BB32CC(void *a1)
{
  v2 = v1;
  sub_1C6BB5940();
  v32 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C6BB6250(0, &qword_1EDCEA7D0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1C6D770E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v30 - v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D760A0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6BB66F4(v9, &qword_1EDCEA7D0, MEMORY[0x1E69E39F8]);
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    v17 = MEMORY[0x1E69E39F8];
    sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8]);
    sub_1C6BB6390(&unk_1EDCE61D0, v17);
    sub_1C6BB6390(&unk_1EDCE61C0, v17);
    sub_1C6D763E0();
    sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }

  else
  {
    v31 = *(v11 + 32);
    v31(v33, v9, v10);
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    v22 = *(v2 + 16);
    swift_getObjectType();
    sub_1C6D79B50();

    v23 = sub_1C6D78210();
    sub_1C6B0C69C(0, &qword_1EDCE7F20, 0x1E69B5598);
    sub_1C6D782A0();

    v24 = v33;
    (*(v11 + 16))(v13, v33, v10);
    v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v26 = swift_allocObject();
    v31((v26 + v25), v13, v10);
    v27 = sub_1C6D78210();
    sub_1C6D782A0();

    v28 = sub_1C6D78210();
    v29 = sub_1C6D78330();

    (*(v11 + 8))(v24, v10);
    return v29;
  }
}

uint64_t sub_1C6BB3870(id *a1)
{
  v1 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_locationRecommendationMappingsResourceId)) != 0)
  {
    v3 = v2;
    v4 = sub_1C6D795A0();
    v6 = v5;

    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C6D7E630;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C6B2064C();
    *(v7 + 32) = v4;
    *(v7 + 40) = v6;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v8 = sub_1C6BB3AA4(v4, v6);

    return v8;
  }

  else
  {
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    sub_1C6BB633C();
    swift_allocError();
    *v10 = 1;
    sub_1C6BB64E0(0, &qword_1EDCE5D48, &qword_1EDCE7F20, 0x1E69B5598, MEMORY[0x1E69D6B18]);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6BB3AA4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  MEMORY[0x1EEE9AC00](v6);
  sub_1C6B0C69C(0, &qword_1EDCE7F20, 0x1E69B5598);
  sub_1C6D783A0();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;

  v8 = sub_1C6D78210();
  sub_1C6D782B0();

  v9 = sub_1C6D78210();
  v10 = sub_1C6D782E0();

  return v10;
}

uint64_t sub_1C6BB3CA8(void **a1, void *a2)
{
  v123 = a2;
  sub_1C6BB6250(0, &qword_1EDCE62E8, sub_1C6BB5940, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v111 - v5;
  sub_1C6BB5940();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v111 - v14;
  v15 = sub_1C6D75DE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v111 - v22;
  v24 = *a1;
  v25 = [v24 fileURL];
  if (v25)
  {
    v118 = v12;
    v119 = v6;
    v120 = v9;
    v121 = v8;
    v26 = v25;
    sub_1C6D75D90();

    v124 = v16;
    (*(v16 + 32))(v23, v19, v15);
    v27 = [v24 resourceID];
    v28 = sub_1C6D795A0();
    v30 = v29;

    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDCE2358;
    sub_1C6B1D314();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C6D7EB10;
    v33 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1C6B2064C();
    *(v32 + 64) = v34;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    sub_1C6BB6390(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v35 = sub_1C6D7A0E0();
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 72) = v35;
    *(v32 + 80) = v36;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v37 = v125;
    v38 = sub_1C6D75E00();
    if (v37)
    {
      sub_1C6D79AA0();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1C6D7E630;
      v126 = 0;
      v127 = 0xE000000000000000;
      v128 = v37;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v41 = v126;
      v42 = v127;
      *(v40 + 56) = v33;
      *(v40 + 64) = v34;
      *(v40 + 32) = v41;
      *(v40 + 40) = v42;
      sub_1C6D78D30();

      sub_1C6BB633C();
      swift_allocError();
      *v43 = 0;
      sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      v47 = sub_1C6D782F0();

      (*(v124 + 8))(v23, v15);
      return v47;
    }

    v58 = v39;
    v114 = v23;
    v116 = v31;
    v125 = v38;
    sub_1C6D79AA0();
    result = swift_allocObject();
    v59 = result;
    *(result + 16) = xmmword_1C6D7E630;
    v126 = 0;
    v127 = 0xE000000000000000;
    v60 = v58 >> 62;
    v117 = v58;
    v115 = 0;
    if ((v58 >> 62) > 1)
    {
      v62 = 0;
      v61 = MEMORY[0x1E69E6158];
      if (v60 != 2 || (v64 = v125[2], v63 = v125[3], v62 = v63 - v64, !__OFSUB__(v63, v64)))
      {
LABEL_18:
        v113 = xmmword_1C6D7E630;
        v112 = v15;
        v65 = [objc_opt_self() stringFromByteCount:v62 countStyle:2];
        v66 = sub_1C6D795A0();
        v68 = v67;

        MEMORY[0x1CCA55B00](v66, v68);

        v69 = v126;
        v70 = v127;
        v59[7] = v61;
        v59[8] = v34;
        v59[4] = v69;
        v59[5] = v70;
        sub_1C6D78D30();

        v71 = objc_allocWithZone(MEMORY[0x1E69B6E98]);
        v72 = v125;
        v73 = v117;
        sub_1C6B1CD10(v125, v117);
        v74 = sub_1C6D75E50();
        sub_1C6B1C9F0(v72, v73);
        v75 = [v71 initWithData_];

        if (!v75)
        {
          v89 = swift_allocObject();
          *(v89 + 16) = v113;
          v90 = v114;
          v91 = v112;
          v92 = sub_1C6D7A0E0();
          *(v89 + 56) = MEMORY[0x1E69E6158];
          *(v89 + 64) = v34;
          *(v89 + 32) = v92;
          *(v89 + 40) = v93;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          sub_1C6BB633C();
          swift_allocError();
          *v94 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          v96 = *(v95 + 48);
          v97 = *(v95 + 52);
          swift_allocObject();
          v47 = sub_1C6D782F0();
          sub_1C6B1C9F0(v72, v73);
          (*(v124 + 8))(v90, v91);
          return v47;
        }

        v76 = v75;
        v77 = [v75 locationMappings];
        if (v77)
        {
          v78 = v77;
          v79 = swift_allocObject();
          *(v79 + 16) = v113;
          v126 = [v78 count];
          v80 = sub_1C6D7A0E0();
          *(v79 + 56) = MEMORY[0x1E69E6158];
          *(v79 + 64) = v34;
          *(v79 + 32) = v80;
          *(v79 + 40) = v81;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          v82 = v119;
          sub_1C6BB4978(v123, v119);
          v84 = v120;
          v83 = v121;
          if ((*(v120 + 48))(v82, 1, v121) != 1)
          {
            v107 = v122;
            (*(v84 + 32))(v122, v82, v83);
            (*(v84 + 16))(v118, v107, v83);
            sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
            v109 = *(v108 + 48);
            v110 = *(v108 + 52);
            swift_allocObject();
            v47 = sub_1C6D78300();

            sub_1C6B1C9F0(v125, v117);
            (*(v84 + 8))(v107, v83);
            goto LABEL_26;
          }

          sub_1C6BB66F4(v82, &qword_1EDCE62E8, sub_1C6BB5940);
          sub_1C6D79AA0();
          sub_1C6D78D30();
          sub_1C6BB633C();
          swift_allocError();
          *v85 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          v87 = *(v86 + 48);
          v88 = *(v86 + 52);
          swift_allocObject();
          v47 = sub_1C6D782F0();
        }

        else
        {
          sub_1C6D79AA0();
          v98 = swift_allocObject();
          *(v98 + 16) = v113;
          v99 = [v75 description];
          v100 = sub_1C6D795A0();
          v102 = v101;

          *(v98 + 56) = MEMORY[0x1E69E6158];
          *(v98 + 64) = v34;
          *(v98 + 32) = v100;
          *(v98 + 40) = v102;
          sub_1C6D78D30();

          sub_1C6BB633C();
          swift_allocError();
          *v103 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          v105 = *(v104 + 48);
          v106 = *(v104 + 52);
          swift_allocObject();
          v47 = sub_1C6D782F0();
        }

        sub_1C6B1C9F0(v125, v117);
LABEL_26:
        (*(v124 + 8))(v114, v112);
        return v47;
      }

      __break(1u);
    }

    else
    {
      v61 = MEMORY[0x1E69E6158];
      if (!v60)
      {
        v62 = BYTE6(v58);
        goto LABEL_18;
      }
    }

    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v62 = HIDWORD(v125) - v125;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C6D7E630;
    v49 = [v24 description];
    v50 = sub_1C6D795A0();
    v52 = v51;

    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1C6B2064C();
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    sub_1C6D78D30();

    sub_1C6BB633C();
    swift_allocError();
    *v53 = 2;
    sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  return result;
}

uint64_t sub_1C6BB4978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6BB6250(0, &qword_1EDCE61E0, sub_1C6BB63D8, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v56 - v7;
  sub_1C6BB63D8();
  v64 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v56 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v56 - v16;
  v17 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v18 = [v2 locationMappings];
  if (v18)
  {
    v19 = v18;
    v67 = 0;
    sub_1C6B0C69C(0, &unk_1EDCDF7D0, 0x1E69B6E90);
    sub_1C6D79770();

    v20 = v67;
    if (v67)
    {
      v2 = a1;
      sub_1C6D770C0();
      v22 = v21;
      sub_1C6D770D0();
      v60 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v22 longitude:v23];
      v24 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v20 >> 62)
      {
        v25 = sub_1C6D79E90();
        v56 = a2;
        if (v25)
        {
LABEL_5:
          v26 = 0;
          v58 = (v9 + 48);
          v59 = v20 & 0xC000000000000001;
          v27 = MEMORY[0x1E69E7CC8];
          v57 = v20 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v59)
            {
              v28 = MEMORY[0x1CCA56240](v26, v20);
              a2 = v65;
              v17 = (v26 + 1);
              if (__OFADD__(v26, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              a2 = v65;
              if (v26 >= *(v24 + 16))
              {
                __break(1u);
                goto LABEL_21;
              }

              v28 = *(v20 + 8 * v26 + 32);
              v17 = (v26 + 1);
              if (__OFADD__(v26, 1))
              {
                goto LABEL_14;
              }
            }

            sub_1C6BB5A6C(a2);
            v29 = v64;
            if ((*v58)(a2, 1, v64) == 1)
            {
              break;
            }

            v66 = v28;
            v30 = v61;
            sub_1C6BB6548(a2, v61);
            v31 = v27;
            v32 = v25;
            v33 = v62;
            sub_1C6BB65AC(v30, v62);
            v34 = *(v33 + *(v29 + 48));

            v35 = v20;
            v36 = v63;
            sub_1C6BB65AC(v30, v63);
            v37 = sub_1C6BEED64(*(v36 + *(v29 + 48)));

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = v31;
            sub_1C6BC51F4(v37, v33, isUniquelyReferenced_nonNull_native);
            v2 = sub_1C6D770E0();
            v39 = *(*(v2 - 1) + 8);
            v40 = v33;
            v25 = v32;
            v39(v40, v2);

            v27 = v67;
            sub_1C6BB6610(v30);
            v41 = v36;
            v20 = v35;
            v24 = v57;
            v39(v41, v2);
            ++v26;
            if (v17 == v25)
            {
              goto LABEL_23;
            }
          }

          sub_1C6BB66F4(a2, &qword_1EDCE61E0, sub_1C6BB63D8);
          if (qword_1EDCE2350 != -1)
          {
            swift_once();
          }

          sub_1C6D79AA0();
          sub_1C6B1D314();
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1C6D7E630;
          v48 = v28;
          v49 = [v48 description];
          v50 = sub_1C6D795A0();
          v52 = v51;

          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1C6B2064C();
          *(v47 + 32) = v50;
          *(v47 + 40) = v52;
          sub_1C6D78D30();

          v46 = 1;
          a2 = v56;
          goto LABEL_24;
        }
      }

      else
      {
        v25 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v56 = a2;
        if (v25)
        {
          goto LABEL_5;
        }
      }

LABEL_23:

      sub_1C6D770E0();
      v53 = MEMORY[0x1E69E39F8];
      sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8]);
      sub_1C6BB6390(&unk_1EDCE61D0, v53);
      sub_1C6BB6390(&unk_1EDCE61C0, v53);
      a2 = v56;
      sub_1C6D763E0();

      v46 = 0;
      goto LABEL_24;
    }
  }

LABEL_15:
  if (qword_1EDCE2350 != -1)
  {
LABEL_21:
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C6D7E630;
  v67 = [v2 v17[474]];
  sub_1C6BB64E0(0, &qword_1EC1D7400, &unk_1EC1D7408, 0x1E695DF70, MEMORY[0x1E69E6720]);
  v43 = sub_1C6D795F0();
  v45 = v44;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1C6B2064C();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_1C6D78D30();

  v46 = 1;
LABEL_24:
  sub_1C6BB5940();
  return (*(*(v54 - 8) + 56))(a2, v46, 1, v54);
}

uint64_t sub_1C6BB50F0()
{
  sub_1C6BB5940();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1C6D78D30();

  sub_1C6D770E0();
  v3 = MEMORY[0x1E69E39F8];
  sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8]);
  sub_1C6BB6390(&unk_1EDCE61D0, v3);
  sub_1C6BB6390(&unk_1EDCE61C0, v3);
  sub_1C6D763E0();
  sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1C6D78300();
}

id sub_1C6BB539C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v41 = a2;
  sub_1C6BB6250(0, &qword_1EDCE5E20, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - v8;
  v9 = sub_1C6D75F50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v40 = v15;
  v16 = swift_allocObject();
  v39 = xmmword_1C6D7E630;
  *(v16 + 16) = xmmword_1C6D7E630;
  v17 = [v14 resourceID];
  v18 = sub_1C6D795A0();
  v20 = v19;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1C6B2064C();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v21 = [v14 fetchDate];
  sub_1C6D75F20();

  sub_1C6D75EF0();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v13, v9);
  sub_1C6D79930();
  if (v25 < fabs(v23))
  {
    v26 = v9;
    v27 = swift_allocObject();
    *(v27 + 16) = v39;
    v28 = [v14 fetchDate];
    sub_1C6D75F20();

    sub_1C6D75EF0();
    v30 = v29;
    v24(v13, v26);
    v31 = MEMORY[0x1E69E6438];
    *(v27 + 56) = MEMORY[0x1E69E63B0];
    *(v27 + 64) = v31;
    *(v27 + 32) = fabs(v30);
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v32 = v41[8];
    __swift_project_boxed_opaque_existential_1(v41 + 4, v41[7]);
    v33 = *MEMORY[0x1E69D63C0];
    v34 = sub_1C6D77F70();
    v35 = *(v34 - 8);
    v36 = v42;
    (*(v35 + 104))(v42, v33, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v37 = *MEMORY[0x1E69B50A8];
    sub_1C6D79370();

    sub_1C6BB66F4(v36, &qword_1EDCE5E20, MEMORY[0x1E69D63E8]);
  }

  *v45 = v14;
  return v14;
}

uint64_t sub_1C6BB57CC()
{
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1C6B2064C();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1C6D78D30();
}

uint64_t sub_1C6BB58F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return swift_deallocClassInstance();
}

void sub_1C6BB5940()
{
  if (!qword_1EDCE62F0)
  {
    sub_1C6D770E0();
    v0 = MEMORY[0x1E69E39F8];
    sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8]);
    sub_1C6BB6390(&unk_1EDCE61D0, v0);
    sub_1C6BB6390(&unk_1EDCE61C0, v0);
    v1 = sub_1C6D763F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE62F0);
    }
  }
}

uint64_t sub_1C6BB5A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = [v1 recommendationProviders];
  if (v2)
  {
    v3 = v2;
    sub_1C6B0C69C(0, &unk_1EDCDF818, 0x1E69B6F98);
    sub_1C6D79770();
  }

  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  [v10 recommendationProviders];
  sub_1C6BB64E0(0, &qword_1EC1D7400, &unk_1EC1D7408, 0x1E695DF70, MEMORY[0x1E69E6720]);
  v5 = sub_1C6D795F0();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6B2064C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1C6D78D30();

  sub_1C6BB63D8();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void sub_1C6BB6250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6BB633C()
{
  result = qword_1EC1D73F0;
  if (!qword_1EC1D73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D73F0);
  }

  return result;
}

uint64_t sub_1C6BB6390(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BB63D8()
{
  if (!qword_1EDCE61E8)
  {
    sub_1C6D770E0();
    sub_1C6BB6250(255, &unk_1EDCDFA30, sub_1C6BB647C, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE61E8);
    }
  }
}

void sub_1C6BB647C()
{
  if (!qword_1EDCDFB60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB60);
    }
  }
}

void sub_1C6BB64E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C69C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6BB6548(uint64_t a1, uint64_t a2)
{
  sub_1C6BB63D8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BB65AC(uint64_t a1, uint64_t a2)
{
  sub_1C6BB63D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BB6610(uint64_t a1)
{
  sub_1C6BB63D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6BB666C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  return sub_1C6D79380();
}

uint64_t sub_1C6BB66F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BB6250(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SportsLocationRecommendationMappingsService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsLocationRecommendationMappingsService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6BB68B8()
{
  result = qword_1EC1D7418;
  if (!qword_1EC1D7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7418);
  }

  return result;
}

uint64_t dispatch thunk of LocalNewsAutoFavoritesProviderType.autoFavorites(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C6BB6A40;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C6BB6A40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1C6BB6B34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v6 = sub_1C6D77E40();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C6D77570();
  v36 = *(v41 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB6FCC();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v35 - v20, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v3)
    {
      sub_1C6BB7060(&qword_1EC1D7420, MEMORY[0x1E69B4608]);
      v26 = v41;
      sub_1C6D75AF0();
      v28 = v37;
      sub_1C6D77560();
      v29 = sub_1C6D77E30();
      v31 = v30;
      sub_1C6B1C9F0(v23, v25);
      (*(v38 + 8))(v28, v39);
      (*(v36 + 8))(v11, v26);
      *a3 = v29;
      a3[1] = v31;
      v32 = *MEMORY[0x1E69E3650];
      v33 = sub_1C6D76F90();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a3, v32, v33);
      (*(v34 + 56))(a3, 0, 1, v33);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

void sub_1C6BB6FCC()
{
  if (!qword_1EDCE6020)
  {
    sub_1C6D77580();
    sub_1C6BB7060(&qword_1EDCE5FA0, MEMORY[0x1E69B4618]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6020);
    }
  }
}

uint64_t sub_1C6BB7060(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasFeatures.getter()
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v0 + *(v5 + 36), v4, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v6 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return v7;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata()
{
  result = qword_1EDCE2D80;
  if (!qword_1EDCE2D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v1 + *(v7 + 36), v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v8 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a1 + 3) = 0;
  *a1 = 0;
  v10 = a1 + *(v8 + 44);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasEmbedding.getter()
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v0 + *(v5 + 40), v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return v7;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v1 + *(v7 + 40), v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_1C6D7F510;
  v10 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasBodyEmbedding.getter()
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v0 + *(v5 + 44), v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return v7;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(v1 + *(v7 + 44), v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_1C6D7F510;
  v10 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1C6BB799C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v8 + 36), v7, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a2 + 3) = 0;
  *a2 = 0;
  v11 = a2 + *(v9 + 44);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t sub_1C6BB7B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v4 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6BB7D34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB75C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BB7DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BBB75C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BB7E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *(v15 + 3) = 0;
    *v15 = 0;
    v18 = v15 + *(v10 + 44);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return sub_1C6BB80E0;
}

uint64_t sub_1C6BB8128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearFeatures()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v2 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6BB8258@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v8 + 40), v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  v11 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_1C6BB83F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.modify(void *a1))()
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
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    v18 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6BBB7C0;
}

void sub_1C6BB884C(uint64_t **a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v16 = (*a1)[1];
  if (a2)
  {
    sub_1C6BB8128(v12, v11, a6);
    sub_1C6BB7DB4(v15 + v10, a3, a4);
    sub_1C6BB7E24(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1C6BB8984(v12, a5);
  }

  else
  {
    sub_1C6BB7DB4(v15 + v10, a3, a4);
    sub_1C6BB7E24(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v16);

  free(v9);
}

uint64_t sub_1C6BB8984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearEmbedding()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6BB8A7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v8 + 44), v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  v11 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_1C6BB8C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    v18 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6BB9070;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearBodyEmbedding()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.adCategories.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = v2;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  v4 = &a1[v3[8]];
  sub_1C6D78A30();
  v5 = v3[9];
  v6 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v3[10];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), &a1[v7], 1, 1, v8);
  v9 = &a1[v3[11]];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_1C6BB941C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7428);
  __swift_project_value_buffer(v0, qword_1EC1D7428);
  sub_1C6BBB75C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D824E0;
  v5 = v22 + v4 + *(v2 + 56);
  *(v22 + v4) = 1;
  *v5 = "topic_ids";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v22 + v4 + v3 + *(v2 + 56);
  *(v22 + v4 + v3) = 2;
  *v9 = "publisher_id";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v22 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "features";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v8();
  v13 = (v22 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "length";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v22 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "embedding";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v8();
  v17 = (v22 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "body_embedding";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v8();
  v19 = (v22 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "ad_categories";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v8();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5998 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          goto LABEL_15;
        case 2:
          sub_1C6D78B50();
          break;
        case 3:
          sub_1C6BB9924();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_1C6BB9A8C();
      }

      else if (result == 7)
      {
LABEL_15:
        sub_1C6D78B10();
      }
    }

    else if (result == 4)
    {
      sub_1C6D78B90();
    }

    else
    {
      sub_1C6BB99D8();
    }
  }
}

uint64_t sub_1C6BB9924()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  sub_1C6BBB714(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BB99D8()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BB9A8C()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6D78C50(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1C6D78CA0(), !v4))
    {
      result = sub_1C6BB9C78(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 12))
        {
          sub_1C6D78CD0();
        }

        sub_1C6BB9EB8(v3, a1, a2, a3);
        sub_1C6BBA0F8(v3, a1, a2, a3);
        if (*(*(v3 + 16) + 16))
        {
          sub_1C6D78C50();
        }

        v9 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 32);
        return sub_1C6D78A20();
      }
    }
  }

  return result;
}

uint64_t sub_1C6BB9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v14 + 36), v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BBB714(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
}

uint64_t sub_1C6BB9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v14 + 40), v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6BBA0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BB7D34(a1 + *(v14 + 44), v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  sub_1C6BBB714(&qword_1EC1D7440, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BBA3C4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  *(a2 + 2) = v4;
  v5 = &a2[a1[8]];
  sub_1C6D78A30();
  v6 = a1[9];
  v7 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[10];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), &a2[v8], 1, 1, v9);
  v10 = &a2[a1[11]];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_1C6BBA4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6BBA568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6BBA5DC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C6BBA630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BBB714(&qword_1EC1D7450, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BBA6AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5998 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BBA754(uint64_t a1)
{
  v2 = sub_1C6BBB714(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BBA7C0()
{
  sub_1C6BBB714(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B46Storage_CompressedSessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v73 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v73 - v14;
  sub_1C6BBB640(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v82 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v9);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v73 - v28;
  sub_1C6BBB640(0, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v31 = v30;
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v73 - v33;
  v35 = *a1;
  v36 = *a2;
  v37 = *(*a1 + 16);
  if (v37 != *(*a2 + 16))
  {
    goto LABEL_40;
  }

  if (v37 && v35 != v36)
  {
    v38 = (v35 + 32);
    v39 = (v36 + 32);
    while (*v38 == *v39)
    {
      ++v38;
      ++v39;
      if (!--v37)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_40;
  }

LABEL_7:
  if (a1[2] != a2[2])
  {
LABEL_40:
    v63 = 0;
    return v63 & 1;
  }

  v40 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  v76 = a2;
  v41 = *(v40 + 36);
  v42 = a1;
  v43 = *(v31 + 48);
  v74 = v40;
  v75 = v42;
  sub_1C6BB7D34(v42 + v41, v34, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v44 = v76 + v41;
  v45 = v76;
  sub_1C6BB7D34(v44, &v34[v43], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v46 = *(v22 + 48);
  if (v46(v34, 1, v21) == 1)
  {
    if (v46(&v34[v43], 1, v21) == 1)
    {
      sub_1C6BB7DB4(v34, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      goto LABEL_16;
    }

LABEL_13:
    v47 = &qword_1EC1D7458;
    v48 = qword_1EDCE5190;
    v49 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures;
    v50 = v34;
LABEL_14:
    sub_1C6BBB6B8(v50, v47, v48, v49);
    goto LABEL_40;
  }

  sub_1C6BB7D34(v34, v29, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v46(&v34[v43], 1, v21) == 1)
  {
    sub_1C6BB8984(v29, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_13;
  }

  sub_1C6BB7E24(&v34[v43], v25, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v51 = static Com_Apple_News_Personalization_ArticleFeatures.== infix(_:_:)(v29, v25);
  sub_1C6BB8984(v25, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB8984(v29, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v34, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((v51 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  v52 = v75;
  if (v75[3] != v45[3])
  {
    goto LABEL_40;
  }

  v53 = v74[10];
  v54 = v82;
  v55 = *(v82 + 48);
  sub_1C6BB7D34(v75 + v53, v20, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v45 + v53, &v20[v55], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v56 = v84;
  v57 = *(v83 + 48);
  if (v57(v20, 1, v84) == 1)
  {
    if (v57(&v20[v55], 1, v56) == 1)
    {
      sub_1C6BB7DB4(v20, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v64 = v81;
  sub_1C6BB7D34(v20, v81, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v57(&v20[v55], 1, v56) == 1)
  {
    sub_1C6BB8984(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_27:
    v47 = &qword_1EC1D6BA8;
    v48 = qword_1EDCEA710;
    v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v50 = v20;
    goto LABEL_14;
  }

  v65 = &v20[v55];
  v66 = v79;
  sub_1C6BB7E24(v65, v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((sub_1C6B5E090(*v64, *(v64 + 8), *v66, *(v66 + 8)) & 1) == 0)
  {
    sub_1C6BB8984(v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v69 = v20;
LABEL_39:
    sub_1C6BB7DB4(v69, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_40;
  }

  v83 = *(v56 + 20);
  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v67 = sub_1C6D79560();
  sub_1C6BB8984(v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v20, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v67 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v58 = v74[11];
  v59 = v45;
  v60 = *(v54 + 48);
  v61 = v80;
  sub_1C6BB7D34(v52 + v58, v80, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v59 + v58, v61 + v60, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v57(v61, 1, v56) == 1)
  {
    if (v57((v61 + v60), 1, v56) == 1)
    {
      sub_1C6BB7DB4(v61, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  v68 = v78;
  sub_1C6BB7D34(v61, v78, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v57((v61 + v60), 1, v56) == 1)
  {
    sub_1C6BB8984(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_33:
    v47 = &qword_1EC1D6BA8;
    v48 = qword_1EDCEA710;
    v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v50 = v61;
    goto LABEL_14;
  }

  v70 = v77;
  sub_1C6BB7E24(v61 + v60, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((sub_1C6B5E090(*v68, *(v68 + 8), *v70, *(v70 + 8)) & 1) == 0)
  {
    sub_1C6BB8984(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v69 = v61;
    goto LABEL_39;
  }

  v71 = *(v56 + 20);
  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  LOBYTE(v71) = sub_1C6D79560();
  sub_1C6BB8984(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v61, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v71 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_23:
  if ((sub_1C6B5AC24(*(v52 + 2), *(v76 + 2)) & 1) == 0)
  {
    goto LABEL_40;
  }

  v62 = v74[8];
  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v63 = sub_1C6D79560();
  return v63 & 1;
}

void sub_1C6BBB4C8()
{
  sub_1C6BBB5F0();
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6BBB75C(319, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6BBB75C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6BBB5F0()
{
  if (!qword_1EDCDF970)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF970);
    }
  }
}

void sub_1C6BBB640(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BBB75C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BBB6B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB640(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BBB714(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6BBB75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_GroupType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      v2 = 1634891107;
      return v2 | 0x64657400000000;
    case 2:
      return 0x657061707377656ELL;
    case 3:
      return 0x77654E6C61636F6CLL;
    case 4:
      return 0x6957646572616873;
    case 5:
    case 0x4FLL:
      return 0x676E69646E657274;
    case 6:
      return 0x697A6167614D796DLL;
    case 7:
    case 0xALL:
      return 0x6465727574616566;
    case 8:
      return 0x736575737369;
    case 9:
      return 0x6369706F74;
    case 0xBLL:
      return 0xD000000000000014;
    case 0xCLL:
      return 0xD000000000000011;
    case 0xDLL:
      return 0x657573734977656ELL;
    case 0xELL:
      v5 = 1953460339;
      return v5 | 0x6867696C00000000;
    case 0xFLL:
      return 0x676E696B61657262;
    case 0x10:
      return 0x456C616963657073;
    case 0x11:
      return 0x4C656C6369747261;
    case 0x12:
    case 0x1DLL:
      return 0xD000000000000012;
    case 0x13:
      return 0x7542664F74736562;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x6C656E6E616863;
    case 0x16:
      return 0x69726F7453706F74;
    case 0x17:
      return 0x6D6F724665726F6DLL;
    case 0x18:
      v2 = 1634493810;
      return v2 | 0x64657400000000;
    case 0x19:
      return 0x756F59726F66;
    case 0x1ALL:
      return 0xD000000000000010;
    case 0x1BLL:
      return 0x6F7661466F747561;
    case 0x1CLL:
      return 0x697242796C696164;
    case 0x1ELL:
      return 0x4E70556F69647561;
    case 0x1FLL:
      return 0x726F466F69647561;
    case 0x20:
    case 0x28:
    case 0x3DLL:
      return 0xD000000000000013;
    case 0x21:
      return 0x59726F4665726F6DLL;
    case 0x22:
      return 0x6F6C6C6F4677656ELL;
    case 0x23:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x24:
      return 25697;
    case 0x25:
      return 0x746E6F436E656573;
    case 0x26:
      v4 = 0x64657373696DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x27:
      return 0xD000000000000010;
    case 0x29:
      return 0x6C6C6177796170;
    case 0x2ALL:
      v5 = 1751607656;
      return v5 | 0x6867696C00000000;
    case 0x2BLL:
    case 0x30:
      return 0x7374726F7053796DLL;
    case 0x2CLL:
      return 0x72656874616577;
    case 0x2DLL:
      return 0x65527374726F7073;
    case 0x2ELL:
      return 0xD000000000000010;
    case 0x2FLL:
      v3 = 0x7374726F7073;
      goto LABEL_14;
    case 0x31:
      return 0x536C656E6E616863;
    case 0x32:
      return 0xD000000000000017;
    case 0x33:
      return 0x536F546F72746E69;
    case 0x34:
      return 0x63537374726F7073;
    case 0x35:
      return 0x63537374726F7073;
    case 0x36:
      return 0x74537374726F7073;
    case 0x37:
      return 0x72427374726F7073;
    case 0x38:
      return 0xD000000000000010;
    case 0x39:
      return 0x76457374726F7073;
    case 0x3ALL:
      return 0x6F427374726F7073;
    case 0x3BLL:
      return 0xD000000000000010;
    case 0x3CLL:
      return 0xD000000000000016;
    case 0x3ELL:
      return 0x74756374726F6873;
    case 0x3FLL:
      return 0xD000000000000010;
    case 0x40:
      return 0x694C656C7A7A7570;
    case 0x41:
      return 0x7241656C7A7A7570;
    case 0x42:
    case 0x4ELL:
      return 0xD000000000000015;
    case 0x43:
      return 0x6546656C7A7A7570;
    case 0x44:
      return 0x4664656546676174;
    case 0x45:
      return 0xD000000000000010;
    case 0x46:
      return 0x5265746144676174;
    case 0x47:
      v3 = 0x6E4965726F6DLL;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
      break;
    case 0x48:
      result = 0x694C7374726F7073;
      break;
    case 0x49:
      result = 0x614D7374726F7073;
      break;
    case 0x4ALL:
      result = 0xD000000000000010;
      break;
    case 0x4BLL:
      result = 0x655274736574616CLL;
      break;
    case 0x4CLL:
      result = 0x6365526465766173;
      break;
    case 0x4DLL:
      result = 0x526C656E6E616863;
      break;
    case 0x50:
      result = 0x52646574616C6572;
      break;
    case 0x51:
      result = 0x6F54657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6BBC0E4(unint64_t a1)
{
  v3 = [*(v1 + 16) possiblyUnfetchedAppConfiguration];
  if ([v3 respondsToSelector_])
  {
    v74 = [v3 useAltSportsRecommendationMapping];
  }

  else
  {
    v74 = 0;
  }

  swift_unknownObjectRelease();
  v78 = MEMORY[0x1E69E7CC8];
  v79 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
    v4 = sub_1C6D79E90();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_34:
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C6D7EB10;
    v49 = v79;
    v77 = *(v79 + 16);
    v50 = sub_1C6D7A0E0();
    v52 = v51;
    v53 = MEMORY[0x1E69E6158];
    *(v48 + 56) = MEMORY[0x1E69E6158];
    v54 = sub_1C6B2064C();
    *(v48 + 64) = v54;
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    v55 = v78;
    v77 = *(v78 + 16);
    v56 = sub_1C6D7A0E0();
    *(v48 + 96) = v53;
    *(v48 + 104) = v54;
    *(v48 + 72) = v56;
    *(v48 + 80) = v57;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    sub_1C6D79A90();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1C6D7E630;
    sub_1C6BBDC08(0, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    v59 = sub_1C6D794A0();
    *(v58 + 56) = v53;
    *(v58 + 64) = v54;
    *(v58 + 32) = v59;
    *(v58 + 40) = v60;
    sub_1C6D78D30();

    sub_1C6D79A90();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1C6D7E630;
    v62 = sub_1C6D794A0();
    *(v61 + 56) = v53;
    *(v61 + 64) = v54;
    *(v61 + 32) = v62;
    *(v61 + 40) = v63;
    sub_1C6D78D30();

    v76[5] = v49;
    v76[6] = v55;
    v77 = MEMORY[0x1E69E7CD0];

    v76[0] = v49;

    sub_1C6BBD2F0(&v77, v76);

    v76[0] = v55;

    sub_1C6BBD2F0(&v77, v76);

    sub_1C6BBDC6C();
    swift_arrayDestroy();
    v64 = v77;
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1C6D7E630;
    v77 = *(v64 + 16);
    v66 = sub_1C6D7A0E0();
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = v54;
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    MEMORY[0x1EEE9AC00](v68);
    sub_1C6B75508(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    sub_1C6D783A0();

    v69 = swift_allocObject();
    *(v69 + 16) = v49;
    *(v69 + 24) = v55;
    v70 = sub_1C6D78210();
    type metadata accessor for SportsTopicMappingServiceResult();
    v71 = sub_1C6D782A0();

    return v71;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_34;
  }

LABEL_6:
  if (v4 >= 1)
  {
    v5 = 0;
    v75 = a1 & 0xC000000000000001;
    v73 = a1;
    while (1)
    {
      if (v75)
      {
        v11 = MEMORY[0x1CCA56240](v5, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 asChannel];
      if (v12)
      {
        v13 = v12;
        swift_getObjectType();

        v14 = [v13 identifier];
        v15 = sub_1C6D795A0();
        v17 = v16;

        if (!*(v79 + 16))
        {

LABEL_29:
          v38 = [v13 identifier];
          v39 = sub_1C6D795A0();
          v41 = v40;

          v42 = sub_1C6BBCBD8(v74);
          sub_1C6BC1B1C(v42, v39, v41);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        sub_1C6B5DEA8(v15, v17);
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (qword_1EDCE18E0 != -1)
        {
          swift_once();
        }

        sub_1C6D79AA0();
        sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1C6D7E630;
        v21 = [v13 identifier];
        v22 = sub_1C6D795A0();
        v24 = v23;

        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1C6B2064C();
        *(v20 + 32) = v22;
        *(v20 + 40) = v24;
        sub_1C6D78D30();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = [v11 asTopic];
        if (v25)
        {
          v26 = v25;
          swift_getObjectType();

          v27 = [v26 identifier];
          v28 = sub_1C6D795A0();
          v30 = v29;

          if (*(v78 + 16))
          {
            sub_1C6B5DEA8(v28, v30);
            v32 = v31;

            if (v32)
            {
              if (qword_1EDCE18E0 != -1)
              {
                swift_once();
              }

              sub_1C6D79AA0();
              sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_1C6D7E630;
              v34 = [v26 identifier];
              v35 = sub_1C6D795A0();
              v37 = v36;

              *(v33 + 56) = MEMORY[0x1E69E6158];
              *(v33 + 64) = sub_1C6B2064C();
              *(v33 + 32) = v35;
              *(v33 + 40) = v37;
              sub_1C6D78D30();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_11;
            }
          }

          else
          {
          }

          v6 = [v26 identifier];
          v7 = sub_1C6D795A0();
          v9 = v8;

          v10 = sub_1C6BBCBD8(v74);
          sub_1C6BC1B1C(v10, v7, v9);
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1EDCE18E0 != -1)
          {
            swift_once();
          }

          sub_1C6D79AA0();
          sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1C6D7E630;
          v44 = [v11 identifier];
          v45 = sub_1C6D795A0();
          v47 = v46;

          *(v43 + 56) = MEMORY[0x1E69E6158];
          *(v43 + 64) = sub_1C6B2064C();
          *(v43 + 32) = v45;
          *(v43 + 40) = v47;
          sub_1C6D78D30();
        }

        swift_unknownObjectRelease();
      }

LABEL_11:
      a1 = v73;
LABEL_12:
      if (v4 == ++v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_1C6BBCBD8(char a1)
{
  v3 = [v1 sportsRecommendationMappings];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = [v3 alternativeRecommendations];
      if (v5)
      {
        v58 = v5;
        v60 = v4;
        v6 = [v5 scoredTagIDs];
        sub_1C6B18500();
        v7 = sub_1C6D79490();

        v8 = v7 + 64;
        v9 = 1 << *(v7 + 32);
        v10 = -1;
        if (v9 < 64)
        {
          v10 = ~(-1 << v9);
        }

        v11 = v10 & *(v7 + 64);
        v12 = (v9 + 63) >> 6;
        v62 = v7;

        v13 = 0;
        v1 = MEMORY[0x1E69E7CC0];
        if (v11)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            return v1;
          }

          v11 = *(v8 + 8 * v14);
          ++v13;
          if (v11)
          {
            v13 = v14;
            do
            {
LABEL_11:
              v15 = __clz(__rbit64(v11)) | (v13 << 6);
              v16 = (*(v62 + 48) + 16 * v15);
              v17 = *v16;
              v18 = v16[1];
              v19 = *(*(v62 + 56) + 8 * v15);
              swift_bridgeObjectRetain_n();
              v20 = v19;
              [v20 doubleValue];
              v22 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_1C6B65FD0(0, v1[2] + 1, 1, v1);
              }

              v24 = v1[2];
              v23 = v1[3];
              if (v24 >= v23 >> 1)
              {
                v1 = sub_1C6B65FD0((v23 > 1), v24 + 1, 1, v1);
              }

              v11 &= v11 - 1;

              v1[2] = v24 + 1;
              v25 = &v1[3 * v24];
              v25[4] = v17;
              v25[5] = v18;
              v25[6] = v22;
            }

            while (v11);
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (qword_1EDCE18E0 == -1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v31 = [v3 defaultRecommendations];
      if (v31)
      {
        v59 = v31;
        v61 = v4;
        v32 = [v31 scoredTagIDs];
        sub_1C6B18500();
        v33 = sub_1C6D79490();

        v34 = v33 + 64;
        v35 = 1 << *(v33 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & *(v33 + 64);
        v38 = (v35 + 63) >> 6;
        v63 = v33;

        v39 = 0;
        v1 = MEMORY[0x1E69E7CC0];
        if (v37)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v40 >= v38)
          {

            return v1;
          }

          v37 = *(v34 + 8 * v40);
          ++v39;
          if (v37)
          {
            v39 = v40;
            do
            {
LABEL_27:
              v41 = __clz(__rbit64(v37)) | (v39 << 6);
              v42 = (*(v63 + 48) + 16 * v41);
              v43 = *v42;
              v44 = v42[1];
              v45 = *(*(v63 + 56) + 8 * v41);
              swift_bridgeObjectRetain_n();
              v46 = v45;
              [v46 doubleValue];
              v48 = v47;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_1C6B65FD0(0, v1[2] + 1, 1, v1);
              }

              v50 = v1[2];
              v49 = v1[3];
              if (v50 >= v49 >> 1)
              {
                v1 = sub_1C6B65FD0((v49 > 1), v50 + 1, 1, v1);
              }

              v37 &= v37 - 1;

              v1[2] = v50 + 1;
              v51 = &v1[3 * v50];
              v51[4] = v43;
              v51[5] = v44;
              v51[6] = v48;
            }

            while (v37);
          }
        }

        goto LABEL_42;
      }

      if (qword_1EDCE18E0 == -1)
      {
LABEL_38:
        sub_1C6D79AA0();
        sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1C6D7E630;
        v53 = [v1 identifier];
        v54 = sub_1C6D795A0();
        v56 = v55;

        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1C6B2064C();
        *(v52 + 32) = v54;
        *(v52 + 40) = v56;
        sub_1C6D78D30();

        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_38;
  }

  if (qword_1EDCE18E0 != -1)
  {
LABEL_43:
    swift_once();
  }

  sub_1C6D79A80();
  sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6D7E630;
  v27 = [v1 identifier];
  v28 = sub_1C6D795A0();
  v30 = v29;

  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1C6B2064C();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  sub_1C6D78D30();
LABEL_39:

  return 0;
}

uint64_t sub_1C6BBD2F0(uint64_t a1, uint64_t a2)
{
  v2 = *a2 + 64;
  v3 = 1 << *(*a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v20 = result;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(result + 56);
    v12 = (v8 << 9) | (8 * v10);
    v13 = *(v11 + v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v11 + v12);

      v16 = (v13 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_1C6B1E6A8(&v19, v17, v18);

        v16 += 3;
        --v14;
      }

      while (v14);

      result = v20;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BBD420(void *a1, uint64_t a2)
{
  v4 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  v5 = *(a2 + 16);
  if (v5 && (v10[6] = v2, v6 = sub_1C6B6732C(v5, 0), v7 = sub_1C6B67FC8(v10, v6 + 4, v5, a2), , result = sub_1C6B688C4(), v7 != v5))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1C6D79320();

    return v9;
  }

  return result;
}

void sub_1C6BBD528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsTopicMappingServiceResult();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v47 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
    v38 = v8;
    v12 = sub_1C6D79E90();
    v8 = v38;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v10;
  v40 = v8;
  v41 = a3;
  v39[1] = a2;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v14 = v11 & 0xC000000000000001;
    v15 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    v43 = xmmword_1C6D7E630;
    v44 = v12;
    do
    {
      if (v14)
      {
        v17 = MEMORY[0x1CCA56240](v13, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      if ([v17 v15[494]])
      {
        v16 = swift_unknownObjectRetain();
        MEMORY[0x1CCA55C20](v16);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6D797C0();
        }

        sub_1C6D79800();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v45 = v47;
      }

      else
      {
        v18 = v14;
        v19 = v11;
        if (qword_1EDCE18E0 != -1)
        {
          swift_once();
        }

        sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v43;
        v21 = [v17 identifier];
        v22 = sub_1C6D795A0();
        v24 = v23;

        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1C6B2064C();
        *(v20 + 32) = v22;
        *(v20 + 40) = v24;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        swift_unknownObjectRelease();
        v11 = v19;
        v14 = v18;
        v12 = v44;
        v15 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D7E630;
  v26 = v45;
  v27 = v42;
  v28 = v40;
  if (v45 >> 62)
  {
    v29 = sub_1C6D79E90();
  }

  else
  {
    v29 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v29;
  v30 = sub_1C6D7A0E0();
  v32 = v31;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6B2064C();
  *(v25 + 32) = v30;
  *(v25 + 40) = v32;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v33 = *(v28 + 20);

  sub_1C6D763E0();
  v34 = *(v28 + 24);

  sub_1C6D763E0();
  *v27 = v26;
  sub_1C6BBDC08(0, &qword_1EDCE5DA8, type metadata accessor for SportsTopicMappingServiceResult, MEMORY[0x1E69D6B18]);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1C6D78300();
}

uint64_t sub_1C6BBDA34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1C6BBDA88()
{
  if (!qword_1EDCE62D8)
  {
    v0 = sub_1C6D763F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE62D8);
    }
  }
}

uint64_t type metadata accessor for SportsTopicMappingServiceResult()
{
  result = qword_1EDCE0608;
  if (!qword_1EDCE0608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6BBDB6C()
{
  sub_1C6B75508(319, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
  if (v0 <= 0x3F)
  {
    sub_1C6BBDA88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6BBDC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6BBDC6C()
{
  if (!qword_1EDCDFBF0)
  {
    sub_1C6BBDC08(255, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFBF0);
    }
  }
}

unint64_t ComputeServiceCohortMembershipService.evaluate(tags:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_1C6BBDEC4(a1);
  }

  v2 = MEMORY[0x1E69E7CC0];

  return sub_1C6B5F1EC(v2);
}

uint64_t sub_1C6BBDEC4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C6D783E0();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v11 = v10;
  v65 = *(v10 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v63 = v2;
    v64 = v4;
    v66 = v9;
    v67 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_1C6B6732C(v16, 0);
    v19 = sub_1C6B67FC8(v68, v18 + 4, v16, a1);

    v13 = sub_1C6B688C4();
    if (v19 != v16)
    {
      goto LABEL_42;
    }

    v9 = v66;
    v15 = v67;
    v17 = v18;
    v3 = v63;
    v4 = v64;
  }

  v20 = v4[7];
  MEMORY[0x1EEE9AC00](v13);
  v58[-2] = v4;
  v58[-1] = v17;
  sub_1C6D784F0();
  if (v3)
  {

    return v20;
  }

  sub_1C6D78500();
  v20 = v68[3];

  v21 = [v20 tagCohortMembershipConfiguration];

  if (!v21)
  {

    sub_1C6BBEB14();
    swift_allocError();
    swift_willThrow();
    (*(v65 + 8))(v15, v11);
    return v20;
  }

  v64 = v17;
  v22 = v4[5];
  v23 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v25 = &selRef_bundleOutputConfiguration;
  if ((v24 & 1) == 0)
  {
    v25 = &selRef_nonBundleOutputConfiguration;
  }

  v26 = [v21 *v25];
  v27 = [v26 cohortMembershipOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6BB320C();
  v28 = sub_1C6D786D0();
  v58[0] = v21;
  v58[1] = 0;
  v66 = v9;
  v67 = v15;
  v29 = *(v28 + 16);
  if (v29)
  {
    v68[0] = MEMORY[0x1E69E7CC0];
    v30 = v28;
    sub_1C6B39260(0, v29, 0);
    v31 = v30;
    v32 = v68[0];
    v33 = *(v68[0] + 16);
    v34 = 32;
    do
    {
      v35 = *(v31 + v34);
      v68[0] = v32;
      v36 = *(v32 + 24);
      if (v33 >= v36 >> 1)
      {
        sub_1C6B39260((v36 > 1), v33 + 1, 1);
        v31 = v30;
        v32 = v68[0];
      }

      *(v32 + 16) = v33 + 1;
      *(v32 + 8 * v33 + 32) = v35;
      v34 += 4;
      ++v33;
      --v29;
    }

    while (v29);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v59 = v11;
  v37 = v64;
  v63 = v64[2];
  if (!v63)
  {
    v20 = MEMORY[0x1E69E7CC8];
LABEL_37:

    (*(v61 + 8))(v66, v62);
    (*(v65 + 8))(v67, v59);
    return v20;
  }

  v38 = 0;
  v60 = v32 + 32;
  v39 = v64 + 5;
  v20 = MEMORY[0x1E69E7CC8];
  while (v38 < v37[2])
  {
    v40 = *(v32 + 16);
    if (v38 == v40)
    {
      goto LABEL_37;
    }

    if (v38 >= v40)
    {
      goto LABEL_40;
    }

    v41 = *(v39 - 1);
    v42 = *v39;
    v43 = *(v60 + 8 * v38);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v20;
    v46 = sub_1C6B5DEA8(v41, v42);
    v47 = v20[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_41;
    }

    v50 = v45;
    if (v20[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1C6B72BD8();
        if (v50)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1C6B6E868(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_1C6B5DEA8(v41, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_44;
      }

      v46 = v51;
      if (v50)
      {
LABEL_20:

        v20 = v68[0];
        *(*(v68[0] + 56) + 8 * v46) = v43;

        goto LABEL_21;
      }
    }

    v20 = v68[0];
    *(v68[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
    v53 = (v20[6] + 16 * v46);
    *v53 = v41;
    v53[1] = v42;
    *(v20[7] + 8 * v46) = v43;

    v54 = v20[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_43;
    }

    v20[2] = v56;
LABEL_21:
    ++v38;
    v39 += 2;
    v37 = v64;
    if (v63 == v38)
    {
      goto LABEL_37;
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
LABEL_44:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BBE530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a4;
  v6 = sub_1C6D78810();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D75F80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*(a1 + 24) tagCohortMembershipConfiguration];
  if (v20)
  {
    v21 = v20;
    v47 = v9;
    sub_1C6D75F70();
    v22 = sub_1C6D75F60();
    v24 = v23;
    (*(v15 + 8))(v19, v14);
    v25 = a2[5];
    v26 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v25);
    v27 = (*(v26 + 8))(v25, v26);
    v28 = &selRef_bundleOutputConfiguration;
    if ((v27 & 1) == 0)
    {
      v28 = &selRef_nonBundleOutputConfiguration;
    }

    v29 = [v21 *v28];
    v30 = [v29 cohortMembershipOutputName];
    sub_1C6D795A0();

    v46 = v13;
    sub_1C6D783C0();

    v45 = v21;
    if (qword_1EC1D5AC0 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v31 = swift_allocObject();
    v51 = xmmword_1C6D7E630;
    *(v31 + 16) = xmmword_1C6D7E630;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1C6B2064C();
    v44[0] = v24;
    v44[1] = v22;
    *(v31 + 32) = v22;
    *(v31 + 40) = v24;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    sub_1C6BBEB68(0, &qword_1EDCE7D20, sub_1C6B9F304);
    sub_1C6B9F304();
    v33 = v32 - 8;
    v34 = *(*(v32 - 8) + 72);
    v35 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
    *(swift_allocObject() + 16) = v51;
    v36 = *(v33 + 56);
    sub_1C6D783C0();

    sub_1C6D78740();
    sub_1C6D787D0();
    sub_1C6BBEB68(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
    v37 = *(v10 + 72);
    v38 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v51;
    v41 = v46;
    v40 = v47;
    (*(v10 + 16))(v39 + v38, v46, v47);
    sub_1C6B68E34(v39);
    swift_setDeallocating();
    v42 = *(v10 + 8);
    v42(v39 + v38, v40);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v42)(v41, v40);
  }

  else
  {
    sub_1C6BBEB14();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t ComputeServiceCohortMembershipService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t ComputeServiceCohortMembershipService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1C6BBEB14()
{
  result = qword_1EC1D7460;
  if (!qword_1EC1D7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7460);
  }

  return result;
}

void sub_1C6BBEB68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C6BBEBD0()
{
  result = qword_1EC1D7468;
  if (!qword_1EC1D7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7468);
  }

  return result;
}

void sub_1C6BBEC24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  os_unfair_lock_lock((a1 + 24));
  v12 = *(a1 + 16);
  v13 = v12;
  os_unfair_lock_unlock((a1 + 24));
  if (!v12)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    goto LABEL_10;
  }

  v14 = [v13 fileURL];
  if (!v14)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v15 = v14;
  sub_1C6D75D90();

  (*(v5 + 32))(v11, v9, v4);
  v16 = sub_1C6D75E00();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x1E69B6F18]);
  sub_1C6B1CD10(v16, v18);
  v20 = sub_1C6D75E50();
  sub_1C6B1C9F0(v16, v18);
  v21 = [v19 initWithData_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69B5490]) initWithPBPersonalizationWhitelist_];
  sub_1C6B1C9F0(v16, v18);
  (*(v5 + 8))(v11, v4);
LABEL_11:
  *a2 = v22;
}

void sub_1C6BBF040(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  os_unfair_lock_lock((a1 + 24));
  v12 = *(a1 + 16);
  v13 = v12;
  os_unfair_lock_unlock((a1 + 24));
  if (!v12)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    goto LABEL_10;
  }

  v14 = [v13 fileURL];
  if (!v14)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v15 = v14;
  sub_1C6D75D90();

  (*(v5 + 32))(v11, v9, v4);
  v16 = sub_1C6D75E00();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x1E69B6D30]);
  sub_1C6B1CD10(v16, v18);
  v20 = sub_1C6D75E50();
  sub_1C6B1C9F0(v16, v18);
  v21 = [v19 initWithData_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69B5440]) initWithPBBundleIDMapping_];
  sub_1C6B1C9F0(v16, v18);
  (*(v5 + 8))(v11, v4);
LABEL_11:
  *a2 = v22;
}

void sub_1C6BBF45C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  os_unfair_lock_lock((a1 + 24));
  v12 = *(a1 + 16);
  v13 = v12;
  os_unfair_lock_unlock((a1 + 24));
  if (!v12)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    goto LABEL_10;
  }

  v14 = [v13 fileURL];
  if (!v14)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v15 = v14;
  sub_1C6D75D90();

  (*(v5 + 32))(v11, v9, v4);
  v16 = sub_1C6D75E00();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x1E69B7048]);
  sub_1C6B1CD10(v16, v18);
  v20 = sub_1C6D75E50();
  sub_1C6B1C9F0(v16, v18);
  v21 = [v19 initWithData_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69B5488]) initWithPBURLMapping_];
  sub_1C6B1C9F0(v16, v18);
  (*(v5 + 8))(v11, v4);
LABEL_11:
  *a2 = v22;
}

uint64_t sub_1C6BBF898()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v0[22] = qword_1EDCE23C0;
  sub_1C6D79AC0();
  sub_1C6D78D30();
  v2 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  v4 = *(MEMORY[0x1E69B68C0] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1C6BBF9B0;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6BBF9B0(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v4 = sub_1C6BC02E8;
  }

  else
  {
    v4 = sub_1C6BBFACC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6BBFACC()
{
  v1 = v0;
  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationAllowlistResourceId)) != 0)
  {
    v3 = v2;
    v4 = sub_1C6D795A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationBundleIdMappingResourceId)) != 0)
  {
    v8 = v7;
    v9 = sub_1C6D795A0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v12 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationUrlMappingResourceId)) != 0)
  {
    v13 = v12;
    v14 = sub_1C6D795A0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if (qword_1EDCE60F8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v17 = *(v0 + 168);
  type metadata accessor for RecipeAutoFavoritesResourceManager();
  sub_1C6B24A00(qword_1EDCE0300, v18, type metadata accessor for RecipeAutoFavoritesResourceManager);
  sub_1C6D77110();
  if (*(v0 + 272) != 1)
  {
    goto LABEL_29;
  }

  if (v6)
  {
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_25:
    v25 = [*(v0 + 192) personalizationBundleIdMappingResourceId];
    if (v25)
    {
      v26 = v25;
      v9 = sub_1C6D795A0();
      v11 = v27;

      if (v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
      if (v16)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    v19 = [*(v0 + 192) personalizationUrlMappingResourceId];
    if (v19)
    {
      v20 = v19;
      v14 = sub_1C6D795A0();
      v16 = v21;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    goto LABEL_29;
  }

  v22 = [*(v0 + 192) personalizationWhitelistResourceId];
  if (v22)
  {
    v23 = v22;
    v4 = sub_1C6D795A0();
    v6 = v24;

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_29:
  *(v0 + 232) = v14;
  *(v0 + 240) = v16;
  *(v0 + 216) = v9;
  *(v0 + 224) = v11;
  *(v0 + 200) = v4;
  *(v0 + 208) = v6;
  sub_1C6B16F28(*(v0 + 168) + 24, v0 + 96);
  v37 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v14;
  *(v0 + 88) = v16;

  v14 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_30:
  if (v14 <= 3)
  {
    v28 = 3;
  }

  else
  {
    v28 = v14;
  }

  v29 = (v0 + 56 + 16 * v14);
  v30 = v28 + 1;
  while (v14 != 3)
  {
    if (v30 == ++v14)
    {
      __break(1u);
      goto LABEL_46;
    }

    v31 = v29 + 2;
    v11 = *v29;
    v29 += 2;
    if (v11)
    {
      v4 = *(v31 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C6B6592C(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v32 = *(v6 + 3);
      v9 = v16 + 1;
      if (v16 >= v32 >> 1)
      {
        v6 = sub_1C6B6592C((v32 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v9;
      v33 = &v6[16 * v16];
      *(v33 + 4) = v4;
      *(v33 + 5) = v11;
      goto LABEL_30;
    }
  }

  sub_1C6B95D68();
  swift_arrayDestroy();
  *(v0 + 248) = sub_1C6D79390();

  v34 = *(MEMORY[0x1E69D6B08] + 4);
  v35 = swift_task_alloc();
  *(v1 + 256) = v35;
  *v35 = v1;
  v35[1] = sub_1C6BBFF40;

  return MEMORY[0x1EEE44EE0](v1 + 152);
}

uint64_t sub_1C6BBFF40()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1C6BC0374;
  }

  else
  {
    v5 = *(v2 + 248);

    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    v4 = sub_1C6BC0064;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1C6BC0064()
{
  v1 = v0[19];
  if (!v0[26])
  {
    v6 = v0[33];
LABEL_8:
    v10 = v0[28];
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (*(v1 + 16))
  {
    v2 = v0[19];
    v3 = sub_1C6B5DEA8(v0[25], v0[26]);
    v5 = v4;

    v6 = v0[33];
    if (v5)
    {
      v7 = *(*(v1 + 56) + 8 * v3);
      v8 = *(v0[21] + 64);
      *(swift_task_alloc() + 16) = v7;
      v9 = v7;
      os_unfair_lock_lock((v8 + 24));
      sub_1C6BC08B0((v8 + 16));
      os_unfair_lock_unlock((v8 + 24));
      if (v6)
      {
        return;
      }

      v10 = v0[28];
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (*(v1 + 16))
      {
        v12 = sub_1C6B5DEA8(v0[27], v10);
        v14 = v13;

        if (v14)
        {
          v15 = *(*(v1 + 56) + 8 * v12);
          v16 = *(v0[21] + 72);
          *(swift_task_alloc() + 16) = v15;
          v17 = v15;
          os_unfair_lock_lock((v16 + 24));
          sub_1C6BC08F4((v16 + 16));
          os_unfair_lock_unlock((v16 + 24));
          if (v6)
          {
            return;
          }
        }
      }

      else
      {
      }

      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v11 = v0[26];

  v6 = v0[33];
  v10 = v0[28];
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (!v0[30])
  {
    goto LABEL_21;
  }

  if (!*(v1 + 16))
  {
    v25 = v0[24];
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v18 = sub_1C6B5DEA8(v0[29], v0[30]);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_21:
    v24 = v0[24];
    swift_unknownObjectRelease();
LABEL_23:

    goto LABEL_24;
  }

  v21 = v0[21];
  v22 = *(*(v1 + 56) + 8 * v18);

  v23 = *(v21 + 80);
  *(swift_task_alloc() + 16) = v22;
  os_unfair_lock_lock((v23 + 24));
  sub_1C6BC08F4((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));
  if (v6)
  {
    return;
  }

  v27 = v0[24];
  swift_unknownObjectRelease();

LABEL_24:
  v26 = v0[1];

  v26();
}

uint64_t sub_1C6BC02E8()
{
  v1 = *(v0 + 176);
  sub_1C6D79AA0();
  sub_1C6D78D30();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C6BC0374()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[26];
  v12 = v0[24];
  v6 = v0[22];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_1C6D79AA0();
  sub_1C6B1D314();
  v7 = swift_allocObject();
  v0[17] = 0;
  *(v7 + 16) = xmmword_1C6D7E630;
  v0[18] = 0xE000000000000000;
  v0[20] = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v8 = v0[17];
  v9 = v0[18];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_1C6D78D30();

  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

void *sub_1C6BC0508()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  return v0;
}

uint64_t sub_1C6BC0560()
{
  sub_1C6BC0508();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6BC0618(uint64_t a1, uint64_t a2)
{
  v5 = [v2 allowlist];
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  result = [v5 defaultTags];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  v9 = sub_1C6D79490();

  if (*(v9 + 16))
  {
    sub_1C6B5DEA8(a1, a2);
    if (v10)
    {

      return 0;
    }
  }

  result = [v6 optionalTags];
  if (!result)
  {
    goto LABEL_14;
  }

  v11 = result;
  v12 = sub_1C6D79490();

  if (!*(v12 + 16))
  {

    return 2;
  }

  sub_1C6B5DEA8(a1, a2);
  v14 = v13;

  if (v14)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_1C6BC08B0(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_1C6BC090C(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x636F72705F707061 && a2 == 0xEB00000000737365;
  if (v5 || (sub_1C6D7A130() & 1) != 0)
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
  }

  else
  {
    v6 = 0x745F636974617473;
    if ((a1 != 0x636974617473 || a2 != 0xE600000000000000) && (sub_1C6D7A130() & 1) == 0)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C6D7E630;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1C6B2064C();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;

      sub_1C6D79AC0();
      sub_1C6D78D30();

      return 0;
    }
  }

  return v6;
}

uint64_t sub_1C6BC0AA0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore()
{
  result = qword_1EDCE39D8;
  if (!qword_1EDCE39D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BC0D0C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7530);
  __swift_project_value_buffer(v0, qword_1EC1D7530);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.decodeMessage<A>(decoder:)()
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore() + 20);
  sub_1C6D78A40();
  sub_1C6BC1574(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  sub_1C6BC1574(&qword_1EC1D7548, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BC117C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BC1574(&qword_1EC1D7568, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BC11F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BC12A0(uint64_t a1)
{
  v2 = sub_1C6BC1574(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BC130C()
{
  sub_1C6BC1574(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BC14A8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6BC1574(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BC1574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6BC161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1C6D763C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E69E32C0];
    sub_1C6BC62FC(a1, &qword_1EDCEA808, MEMORY[0x1E69E32C0]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E69E32C0], sub_1C6D11F10, sub_1C6B739E4, v10);

    return sub_1C6BC62FC(v10, &qword_1EDCEA808, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1C6BC503C(v16, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B739E4, sub_1C6B70260, MEMORY[0x1E69E32C0], MEMORY[0x1E69E32C0]);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_1C6BC189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &unk_1EDCEA840, MEMORY[0x1E69E31D0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1C6D76190();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E69E31D0];
    sub_1C6BC62FC(a1, &unk_1EDCEA840, MEMORY[0x1E69E31D0]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E69E31D0], sub_1C6D11F28, sub_1C6B73A18, v10);

    return sub_1C6BC62FC(v10, &unk_1EDCEA840, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1C6BC503C(v16, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B73A18, sub_1C6B70294, MEMORY[0x1E69E31D0], MEMORY[0x1E69E31D0]);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_1C6BC1B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1C6D78760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v16 = MEMORY[0x1E6996150];
    sub_1C6BC62FC(a1, &qword_1EDCEA320, MEMORY[0x1E6996150]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E6996150], sub_1C6D11F40, sub_1C6B73E50, v10);

    return sub_1C6BC62FC(v10, &qword_1EDCEA320, v16);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1C6BC503C(v15, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B73E50, sub_1C6B70964, MEMORY[0x1E6996150], MEMORY[0x1E6996150]);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1C6BC1DF0(uint64_t a1, uint64_t *a2)
{
  sub_1C6BC4A18(0, &qword_1EDCEA310, MEMORY[0x1E6996170]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1C6D78810();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x1E6996170];
    sub_1C6BC62FC(a1, &qword_1EDCEA310, MEMORY[0x1E6996170]);
    sub_1C6BC4D08(a2, v8);
    sub_1C6BC624C(a2);
    return sub_1C6BC62FC(v8, &qword_1EDCEA310, v14);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1C6BC53C0(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1C6BC624C(a2);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_1C6BC202C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    v14 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v7;
    sub_1C6BC5B54(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v27;
  }

  else
  {
    v19 = *v7;
    v20 = sub_1C6B5DEA8(a2, a3);
    LOBYTE(v19) = v21;

    if (v19)
    {
      v22 = *v8;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v8;
      v28 = *v8;
      if (!v23)
      {
        a7();
        v24 = v28;
      }

      v25 = *(*(v24 + 48) + 16 * v20 + 8);

      v26 = *(*(v24 + 56) + 8 * v20);

      result = a6(v20, v24);
      *v8 = v24;
    }
  }

  return result;
}

uint64_t sub_1C6BC214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C6BC55B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1C6B5DEA8(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1C6B744B4();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1C6B16C9C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1C6BC2244(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  sub_1C6BC4A18(0, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1C6BC62FC(a1, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v16 = *v3;
    v17 = sub_1C6B64DD0(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C6B74A94();
        v22 = v27;
      }

      sub_1C6BC6358(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6D1216C(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1C6BC62FC(v9, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  }

  else
  {
    sub_1C6BC6358(a1, v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1C6BC5894(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1C6BC2514()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void sub_1C6BC255C()
{
  v1 = v0;
  v80 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1C6D783E0();
  v4 = *(v85 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75F80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 32);
  os_unfair_lock_lock((v16 + 32));
  v17 = *(v16 + 16);
  v78 = v16 + 16;
  v18 = *(v16 + 24);
  sub_1C6BC372C(v17, v18);
  v79 = v16;
  os_unfair_lock_unlock((v16 + 32));
  if (v18 >> 60 != 15)
  {
    if (qword_1EC1D5AC8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    return;
  }

  v76 = v12;
  v77 = v11;
  v19 = [*(v1 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v19, v19 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  v20 = v85;
  v89 = v87;
  v90 = v88;
  v85 = v15;
  if (!*(&v88 + 1))
  {
    sub_1C6B79FDC(&v89);
    goto LABEL_13;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v21 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  v21 = v91;
  v22 = [v91 integerValue];
  if (v22 == -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (objc_getAssociatedObject(v19, ~v22))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  v89 = v87;
  v90 = v88;
  if (!*(&v88 + 1))
  {
    sub_1C6B79FDC(&v89);
    goto LABEL_21;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    v25 = -55;
    goto LABEL_22;
  }

  v23 = v91;
  v24 = [v23 integerValue];

  v25 = v24 - 55;
LABEL_22:
  v26 = (v25 ^ v22) & 1;
  sub_1C6D75F70();
  if (qword_1EC1D5AC8 != -1)
  {
    swift_once();
  }

  v27 = qword_1EC1D85C8;
  sub_1C6B1D314();
  v73 = v28;
  v29 = swift_allocObject();
  v72 = xmmword_1C6D7E630;
  *(v29 + 16) = xmmword_1C6D7E630;
  v30 = sub_1C6D75F60();
  v32 = v31;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v74 = sub_1C6B2064C();
  *(v29 + 64) = v74;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = v85;
  sub_1C6D79AC0();
  v75 = v27;
  sub_1C6D78D30();

  v35 = *(v1 + 24);
  MEMORY[0x1EEE9AC00](v34);
  *(&v70 - 16) = v26 ^ 1;
  *(&v70 - 1) = v33;
  v36 = v84;
  v37 = v86;
  sub_1C6D784F0();
  v38 = v37;
  if (v37)
  {
    goto LABEL_38;
  }

  sub_1C6D78500();
  v39 = *(&v90 + 1);

  v40 = [v39 smarterFetchConfiguration];

  if (!v40)
  {
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors();
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors);
    v38 = swift_allocError();
    (*(v4 + 56))(v54, 1, 1, v20);
    swift_willThrow();
    (*(v82 + 8))(v36, v83);
LABEL_38:
    (*(v76 + 8))(v33, v77);
    sub_1C6D79AA0();
    v57 = swift_allocObject();
    *(v57 + 16) = v72;
    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    *&v87 = v38;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v58 = v89;
    v59 = v74;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = v59;
    *(v57 + 32) = v58;
    sub_1C6D78D30();

    swift_willThrow();
    return;
  }

  v41 = &selRef_bundleOutputConfiguration;
  if (v26)
  {
    v41 = &selRef_nonBundleOutputConfiguration;
  }

  v42 = *v41;
  v71 = v40;
  v43 = [v40 v42];
  v44 = [v43 userEncodingOutputNames];

  v45 = sub_1C6D79780();
  v46 = *(v45 + 16);
  if (v46)
  {
    v86 = 0;
    *&v89 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v46, 0);
    v47 = v89;
    v70 = v45;
    v48 = (v45 + 40);
    do
    {
      v50 = *(v48 - 1);
      v49 = *v48;

      sub_1C6D783C0();
      *&v89 = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1C6B394C4(v51 > 1, v52 + 1, 1);
        v47 = v89;
      }

      *(v47 + 16) = v52 + 1;
      (*(v4 + 32))(v47 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v52, v7, v20);
      v48 += 2;
      --v46;
    }

    while (v46);

    v33 = v85;
    v38 = v86;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v53);
  v55 = v84;
  *(&v70 - 2) = v84;
  v56 = sub_1C6C26FA4(MEMORY[0x1E69E7CC8], sub_1C6BC48EC, (&v70 - 4), v47);
  if (v38)
  {

    (*(v82 + 8))(v55, v83);
    goto LABEL_38;
  }

  v60 = v56;

  MEMORY[0x1EEE9AC00](v61);
  *(&v70 - 2) = v60;
  sub_1C6BC4924(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v62 = v81;
  sub_1C6D78C30();
  v63 = v62;

  v64 = sub_1C6D78BF0();
  v66 = v65;
  v67 = sub_1C6BC496C(v63);
  MEMORY[0x1EEE9AC00](v67);
  *(&v70 - 2) = v64;
  *(&v70 - 1) = v66;
  v68 = v79;
  os_unfair_lock_lock(v79 + 8);
  sub_1C6BC49C8(v78);
  v69 = v85;
  os_unfair_lock_unlock(v68 + 8);

  (*(v82 + 8))(v84, v83);
  (*(v76 + 8))(v69, v77);
}

void sub_1C6BC3054(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D78810();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*(a1 + 24) smarterFetchConfiguration];
  if (v18)
  {
    v36 = v17;
    v34 = v9;
    v19 = &selRef_bundleOutputConfiguration;
    if ((a2 & 1) == 0)
    {
      v19 = &selRef_nonBundleOutputConfiguration;
    }

    v20 = *v19;
    v35 = v18;
    v21 = [v18 v20];
    v22 = [v21 userEncodingOutputNames];

    v23 = sub_1C6D79780();
    v24 = *(v23 + 16);
    if (v24)
    {
      v33[2] = a3;
      v33[3] = a4;
      v33[4] = v4;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C6B394C4(0, v24, 0);
      v25 = v37;
      v33[1] = v23;
      v26 = (v23 + 40);
      v27 = v34;
      do
      {
        v29 = *(v26 - 1);
        v28 = *v26;

        sub_1C6D783C0();
        v37 = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1C6B394C4(v30 > 1, v31 + 1, 1);
          v27 = v34;
          v25 = v37;
        }

        *(v25 + 16) = v31 + 1;
        (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v13, v27);
        v26 += 2;
        --v24;
      }

      while (v24);
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6D78800();
    sub_1C6D75F60();
    sub_1C6B68E34(v25);

    sub_1C6D78790();
  }

  else
  {
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors();
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors);
    swift_allocError();
    (*(v10 + 56))(v32, 1, 1, v9);
    swift_willThrow();
  }
}

uint64_t sub_1C6BC33DC(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = sub_1C6D78760();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  sub_1C6D78520();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6BC62FC(v9, &qword_1EDCEA320, MEMORY[0x1E6996150]);
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors();
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors);
    swift_allocError();
    v16 = v15;
    v17 = sub_1C6D783E0();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v16, a2, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v20 = sub_1C6D783D0();
    v22 = v21;
    (*(v11 + 16))(v7, v14, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_1C6BC1B70(v7, v20, v22);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1C6BC372C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6B1CD10(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6BC3740(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v76 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v74 = *(v76 - 8);
  v5 = *(v74 + 64);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v82 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v67 - v8;
  v9 = sub_1C6D78760();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v80 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v67 - v14;
  sub_1C6BC4A18(0, &qword_1EDCDFB80, sub_1C6BC4A6C);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = (v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v77 = (v67 - v19);
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v67[0] = (v21 + 63) >> 6;
  v67[1] = v10 + 16;
  v79 = (v10 + 32);
  v69 = v10;
  v70 = a2;
  v71 = (v10 + 8);

  v24 = 0;
  v72 = a2 + 64;
  v73 = v9;
  while (v23)
  {
    v83 = v3;
    v27 = v24;
LABEL_16:
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v69;
    v33 = (*(v70 + 48) + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = v68;
    (*(v69 + 16))(v68, *(v70 + 56) + *(v69 + 72) * v31, v9);
    sub_1C6BC4A6C();
    v38 = v37;
    v39 = *(v37 + 48);
    v40 = v78;
    *v78 = v35;
    *(v40 + 8) = v34;
    (*(v32 + 32))(v40 + v39, v36, v9);
    (*(*(v38 - 8) + 56))(v40, 0, 1, v38);

LABEL_17:
    v41 = v77;
    sub_1C6BC4AD8(v40, v77);
    sub_1C6BC4A6C();
    if ((*(*(v38 - 8) + 48))(v41, 1, v38) == 1)
    {
    }

    v42 = *v41;
    v43 = v41[1];
    v44 = *(v38 + 48);
    v45 = v80;
    v46 = (*v79)(v80, v41 + v44, v9);
    MEMORY[0x1EEE9AC00](v46);
    v67[-2] = v45;
    sub_1C6BC4924(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v47 = v75;
    v48 = v83;
    sub_1C6D78C30();
    v3 = v48;
    sub_1C6BC6358(v47, v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v49 = v81;
    v50 = *v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v49;
    v84 = v52;
    v54 = sub_1C6B5DEA8(v42, v43);
    v55 = v52[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_32;
    }

    v58 = v53;
    if (v52[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v53)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C6B73E84();
        if (v58)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C6B70998(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1C6B5DEA8(v42, v43);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_34;
      }

      v54 = v59;
      if (v58)
      {
LABEL_4:

        v25 = v84;
        sub_1C6BC63C0(v82, v84[7] + *(v74 + 72) * v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        goto LABEL_5;
      }
    }

    v25 = v84;
    v84[(v54 >> 6) + 8] |= 1 << v54;
    v61 = (v25[6] + 16 * v54);
    *v61 = v42;
    v61[1] = v43;
    sub_1C6BC6358(v82, v25[7] + *(v74 + 72) * v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v62 = v25[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_33;
    }

    v25[2] = v64;
LABEL_5:
    v26 = v80;
    *v81 = v25;
    v9 = v73;
    (*v71)(v26, v73);
    v20 = v72;
  }

  if (v67[0] <= v24 + 1)
  {
    v28 = v24 + 1;
  }

  else
  {
    v28 = v67[0];
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v67[0])
    {
      v83 = v3;
      sub_1C6BC4A6C();
      v38 = v65;
      v40 = v78;
      (*(*(v65 - 8) + 56))(v78, 1, 1, v65);
      v23 = 0;
      v24 = v29;
      goto LABEL_17;
    }

    v23 = *(v20 + 8 * v27);
    ++v24;
    if (v23)
    {
      v83 = v3;
      v24 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BC3DD4(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_1C6D78760();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v12, a2, v8);
  result = (*(v9 + 88))(v12, v8);
  if (result == *MEMORY[0x1E6996138])
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
    MEMORY[0x1EEE9AC00](v15);
    *(&v31 - 2) = v14;
    sub_1C6BC4924(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6D78C30();

    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    return sub_1C6B5F5A0(v7, a1);
  }

  if (result == *MEMORY[0x1E6996140])
  {
    (*(v9 + 96))(v12, v8);
    v17 = *v12;
    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
    MEMORY[0x1EEE9AC00](v18);
    *(&v31 - 2) = v17;
    sub_1C6BC4924(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6D78C30();

    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996148])
  {
    (*(v9 + 96))(v12, v8);
    v19 = *v12;
    v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
    MEMORY[0x1EEE9AC00](v20);
    *(&v31 - 2) = v19;
    sub_1C6BC4924(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6D78C30();

    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996130])
  {
    (*(v9 + 96))(v12, v8);
    v21 = *v12;
    v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
    MEMORY[0x1EEE9AC00](v22);
    *(&v31 - 2) = v21;
    sub_1C6BC4924(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6D78C30();

    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996118])
  {
    (*(v9 + 96))(v12, v8);
    v23 = *v12;
    v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 2) = v23;
    sub_1C6BC4924(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78C30();

LABEL_13:
    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996120])
  {
    (*(v9 + 96))(v12, v8);
    v26 = *v12;
    v25 = v12[1];
    v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v26;
    *(&v31 - 1) = v25;
    sub_1C6BC4924(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78C30();
    sub_1C6B1C9F0(v26, v25);
    goto LABEL_13;
  }

  if (result != *MEMORY[0x1E6996128])
  {
    if (qword_1EC1D5AC8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C6D7E630;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1C6D79E60();
    v29 = v31;
    v30 = v32;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C6B2064C();
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    sub_1C6D78D30();

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1C6BC4610(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  if (v1)
  {
    if ((2 * v1) < 15)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v2 = a1;
      v3 = sub_1C6D75C40();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      v6 = sub_1C6D75C30();
      v7 = v6;
      v8 = v1 >> 30;
      if (v1 >> 30)
      {
        sub_1C6D75E30();
        v8 = swift_allocObject();
        v9 = v7 | 0x8000000000000000;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
      }

      else
      {
        v9 = v6 | 0x4000000000000000;
      }

      a1 = v2;
    }

    v28 = v8;
    v29 = v9;
    v12 = (a1 + 32);
    v13 = MEMORY[0x1E69E7508];
    do
    {
      if (v29 >> 62 == 2)
      {
        v14 = *(v28 + 24);
      }

      v16 = *v12++;
      v15 = HIBYTE(v16);
      sub_1C6BC6180(0, &qword_1EC1D75E8, v13, MEMORY[0x1E69E6BC0]);
      v18 = v17;
      v26 = v17;
      v19 = sub_1C6BC61D0();
      v27 = v19;
      LOBYTE(v25[0]) = v16;
      v24 = *__swift_project_boxed_opaque_existential_1(v25, v18);
      sub_1C6D75E40();
      __swift_destroy_boxed_opaque_existential_1(v25);
      if (v29 >> 62 == 2)
      {
        v20 = *(v28 + 24);
      }

      v26 = v18;
      v27 = v19;
      LOBYTE(v25[0]) = v15;
      v23 = *__swift_project_boxed_opaque_existential_1(v25, v18);
      sub_1C6D75E40();
      __swift_destroy_boxed_opaque_existential_1(v25);
      --v1;
    }

    while (v1);
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v10 = 0;
    v11 = 0xC000000000000000;
  }

  sub_1C6B1CD10(v10, v11);
  sub_1C6B1C9F0(v10, v11);
  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors()
{
  result = qword_1EC1D75F8;
  if (!qword_1EC1D75F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BC4924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6BC496C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6BC49C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C6B75B88(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_1C6B1CD10(v4, v3);
}

void sub_1C6BC4A18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6BC4A6C()
{
  if (!qword_1EDCDFB88)
  {
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB88);
    }
  }
}

uint64_t sub_1C6BC4AD8(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, &qword_1EDCDFB80, sub_1C6BC4A6C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BC4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_1C6B5DEA8(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    a4(v15, v18);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_1C6BC4D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1C6B64FC0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6B73F00();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 56 * v8 + 48);

    v13 = *(v11 + 56);
    v14 = sub_1C6D78810();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_1C6D11F58(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_1C6D78810();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1C6BC4E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C6B5DEA8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v24 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6B751D4();
      v12 = v24;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    sub_1C6B3C1F8();
    v16 = v15;
    v23 = *(v15 - 8);
    sub_1C6BC6358(v14 + *(v23 + 72) * v9, a3, sub_1C6B3C1F8);
    sub_1C6D124CC(v9, v12);
    *v4 = v12;
    v17 = *(v23 + 56);
    v18 = a3;
    v19 = 0;
    v20 = v16;
  }

  else
  {
    sub_1C6B3C1F8();
    v17 = *(*(v21 - 8) + 56);
    v20 = v21;
    v18 = a3;
    v19 = 1;
  }

  return v17(v18, v19, 1, v20);
}

uint64_t sub_1C6BC503C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1C6B5DEA8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = *v11;
    v33 = sub_1C6B5DEA8(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_1C6BC5DA4(v18, a2, a3, a1, v24, a8);
}

uint64_t sub_1C6BC51F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C6D770E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C6B64EEC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C6B73A4C();
      goto LABEL_7;
    }

    sub_1C6B702C8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1C6B64EEC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C6BC5CEC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1C6BC53C0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C6B64FC0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1C6B73F00();
      goto LABEL_7;
    }

    sub_1C6B70A14(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1C6B64FC0(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C6BC5E58(v10, a2, a1, v16);
      return sub_1C6BC62A0(a2, v27);
    }

LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1C6D78810();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1C6BC55B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C6B5DEA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C6B7139C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C6B5DEA8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1C6D7A1C0();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1C6B744B4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_1C6BC5730(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C6B5DEA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C6B71A0C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1C6B5DEA8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1C6D7A1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C6B74918();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1C6BC5894(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C6B64DD0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
      return sub_1C6BC63C0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1C6B74A94();
    goto LABEL_7;
  }

  sub_1C6B71CC0(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1C6B64DD0(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1C6BC5F20(v10, a2, a1, v16);
}

uint64_t sub_1C6BC59E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C6B5DEA8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      sub_1C6B3C1F8();
      return sub_1C6BC63C0(a1, v19 + *(*(v20 - 8) + 72) * v12, sub_1C6B3C1F8);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C6B751D4();
    goto LABEL_7;
  }

  sub_1C6B72894(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1C6B5DEA8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C6BC5FC8(v12, a2, a3, a1, v18);
}

uint64_t sub_1C6BC5B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C6B5DEA8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1C6B5DEA8(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1C6D7A1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1C6BC5CEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C6D770E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C6BC5DA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1C6BC5E58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = sub_1C6D78810();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1C6BC5F20(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  result = sub_1C6BC6358(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1C6BC5FC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  sub_1C6B3C1F8();
  result = sub_1C6BC6358(a4, v9 + *(*(v10 - 8) + 72) * a1, sub_1C6B3C1F8);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1C6BC6074(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_1C6B1CD10(v4, v3);
  result = sub_1C6B1C9F0(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6BC60D0(uint64_t a1)
{
  v3 = sub_1C6BC4610(*(v1 + 16));
  v5 = v4;
  result = sub_1C6B1C9F0(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C6BC6134(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

void sub_1C6BC6180(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C6BC61D0()
{
  result = qword_1EC1D75F0;
  if (!qword_1EC1D75F0)
  {
    sub_1C6BC6180(255, &qword_1EC1D75E8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D75F0);
  }

  return result;
}

uint64_t sub_1C6BC62FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6BC4A18(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BC6358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BC63C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BC6450()
{
  v0 = sub_1C6D783E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BDF108(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BC6674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BDF108(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BC680C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(a2 + v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
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
  v10 = sub_1C6D789A0();
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BDF178(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BDF108(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BC6C78;
}

void sub_1C6BC6C78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BDF108(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BDF108(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BDF108(v5, &qword_1EDCE66F0, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6BC6FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6BC7070(uint64_t a1, uint64_t a2)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1C6BDF178(v2, &v16 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v10 = &a1[v9[5]];
  sub_1C6D78A30();
  v11 = v9[6];
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v9[7];
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSeen.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v12 = *(*(v11 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 1) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      return sub_1C6BC764C;
    }

    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *v14 = 0;
  v17 = &v14[v11[5]];
  sub_1C6D78A30();
  v18 = v11[6];
  v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
  v20 = v11[7];
  v21 = sub_1C6D78A00();
  (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
  return sub_1C6BC764C;
}

uint64_t sub_1C6BC7690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleVisited.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1C6BDF178(v2, &v16 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v11 = &a1[v10[5]];
  sub_1C6D78A30();
  v12 = v10[6];
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v10[7];
  v15 = sub_1C6D78A00();
  return (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
}

uint64_t sub_1C6BC791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1C6BDF25C(a1, &v17 - v13, a6);
  sub_1C6BDF108(a2, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1C6BC7A58(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C6BDF108(v2, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t sub_1C6BC7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleVisited.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v12 = *(*(v11 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 1) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v14 = 0;
    v17 = &v14[v11[5]];
    sub_1C6D78A30();
    v18 = v11[6];
    v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = v11[7];
    v21 = sub_1C6D78A00();
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    return sub_1C6BC7E6C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  return sub_1C6BC7E6C;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleRead.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1C6BDF178(v2, &v16 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v11 = a1 + v10[6];
  sub_1C6D78A30();
  v12 = v10[7];
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[8];
  v15 = sub_1C6D78A00();
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleRead.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v12 = *(*(v11 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 1) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v14 = 0;
    *(v14 + 8) = MEMORY[0x1E69E7CC0];
    v17 = v14 + v11[6];
    sub_1C6D78A30();
    v18 = v11[7];
    v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = v11[8];
    v21 = sub_1C6D78A00();
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    return sub_1C6BC83F8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  return sub_1C6BC83F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleShared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v11 = a1 + *(v10 + 24);
  sub_1C6D78A30();
  v12 = *(v10 + 28);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleShared.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    v16 = v13 + *(v10 + 24);
    sub_1C6D78A30();
    v17 = *(v10 + 28);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return sub_1C6BC88F8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  return sub_1C6BC88F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleLiked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BC8B24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleLiked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BC8FC8;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  return sub_1C6BC8FC8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleDisliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BC91F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleDisliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BC9698;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  return sub_1C6BC9698;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSaved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BC98C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSaved.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BC9D68;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  return sub_1C6BC9D68;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagMuted.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(v2, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BC9F4C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(a1, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagMuted.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6BCA364;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  return sub_1C6BCA364;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnmuted.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(v2, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCA548@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(a1, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnmuted.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6BCA960;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  return sub_1C6BCA960;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFollowed.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(v2, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCAB44@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(a1, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFollowed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6BCAF5C;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  return sub_1C6BCAF5C;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnfollowed.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(v2, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCB140@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6BDF178(a1, &v11 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnfollowed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6BCB558;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  return sub_1C6BCB558;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFeedView.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCB784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFeedView.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = sub_1C6D78A00();
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCBC28;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  return sub_1C6BCBC28;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackVisited.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCBE54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackVisited.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCC2F8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  return sub_1C6BCC2F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackListened.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCC524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackListened.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCC9C8;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  return sub_1C6BCC9C8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackFinished.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCCBF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackFinished.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCD098;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  return sub_1C6BCD098;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCD2C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCD768;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  return sub_1C6BCD768;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUndisliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCD994@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUndisliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCDE38;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  return sub_1C6BCDE38;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnsaved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCE064@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnsaved.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCE508;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  return sub_1C6BCE508;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.sportsTagSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(v2, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1C6BCE734@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6BDF178(a1, &v14 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v11 = &a2[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.sportsTagSeen.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = sub_1C6D78A00();
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6BCEBD8;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  return sub_1C6BCEBD8;
}