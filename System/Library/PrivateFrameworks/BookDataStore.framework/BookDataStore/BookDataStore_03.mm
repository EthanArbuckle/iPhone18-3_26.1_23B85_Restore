void sub_1E465F874(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1E4709BCC();
  }

  v5 = v3;
  [v2 setProtoData_];
}

uint64_t sub_1E465F8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v21 - v11;
  v13 = OBJC_IVAR____TtC13BookDataStore19CRDTModelSyncEntity____lazy_storage___logger;
  swift_beginAccess();
  sub_1E46640D4(v2 + v13, v12);
  v14 = sub_1E470A0DC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1E465E050(v12, &qword_1ECF74878, &qword_1E471B980);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v21, "CRDTModelSync.");
  HIBYTE(v21[1]) = -18;
  v16 = [v2 type];
  v17 = sub_1E470AF1C();
  v19 = v18;

  MEMORY[0x1E6915D10](v17, v19);

  sub_1E470A0CC();
  (*(v15 + 16))(v9, a1, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1E4664144(v9, v2 + v13);
  return swift_endAccess();
}

uint64_t sub_1E465FB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v8 = [v3 protoData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1E4709BDC();
    v12 = v11;

    v13 = a3(v10, v12, a1, a2);
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      if (v12 >> 60 != 15)
      {
        sub_1E465DD8C(v13, v14);
        sub_1E465DD8C(v10, v12);
        v17 = sub_1E4663C7C(v15, v16, v10, v12);
        sub_1E465DDA0(v10, v12);
        sub_1E465DDA0(v15, v16);
        if (v17)
        {
          sub_1E4664080();
          swift_allocError();
          *v18 = 1;
          swift_willThrow();
LABEL_11:
          sub_1E465DDA0(v15, v16);
          return sub_1E465DDA0(v10, v12);
        }

LABEL_10:
        v22 = sub_1E4709BCC();
        [v4 setProtoData_];

        goto LABEL_11;
      }

LABEL_9:
      sub_1E465DD8C(v15, v16);
      sub_1E465DD8C(v10, v12);
      sub_1E465DDA0(v15, v16);
      sub_1E465DDA0(v10, v12);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xF000000000000000;
    v19 = a3(0, 0xF000000000000000, a1, a2);
    v10 = 0;
    if (v20 >> 60 != 15)
    {
      v15 = v19;
      v16 = v20;
      goto LABEL_9;
    }
  }

  sub_1E4664080();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return sub_1E465DDA0(v10, v12);
}

void sub_1E465FD84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E470A0DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v145 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v145 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v26 = MEMORY[0x1EEE9AC00](&v145 - v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, &v145 - v27);
  v34 = &v145 - v33;
  if (!a2)
  {
    return;
  }

  v157 = v29;
  v155 = v28;
  v152 = v32;
  v153 = v31;
  v154 = v30;
  v158 = a1;
  v35 = [a1 recordType];
  v36 = sub_1E470AF1C();
  v38 = v37;

  v156 = v36;
  v160 = v36;
  v161 = v38;

  sub_1E470B56C();
  if (!*(a2 + 16) || (v39 = sub_1E4655398(v162), (v40 & 1) == 0))
  {
    sub_1E4658910(v162);

    return;
  }

  v149 = v22;
  v151 = *(*(a2 + 56) + 8 * v39);
  _Block_copy(v151);
  sub_1E4658910(v162);
  v41 = v158;
  swift_getObjectType();
  v42 = swift_conformsToProtocol2();
  if (!v42 || !v41)
  {

    sub_1E465F8EC(v18);
    v59 = sub_1E470A0BC();
    v60 = sub_1E470B2AC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1E45E0000, v59, v60, "CRDTModelSyncEntity configure(from:) wrong class passed in", v61, 2u);
      MEMORY[0x1E6917530](v61, -1, -1);
    }

    _Block_release(v151);

    (*(v7 + 8))(v18, v6);
    return;
  }

  v43 = v42;
  v150 = v7;
  v147 = v6;
  swift_unknownObjectRetain();
  v44 = [v3 type];
  v45 = sub_1E470AF1C();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  v148 = v43;
  if (v48)
  {
    v49 = [v3 type];
    v50 = sub_1E470AF1C();
    v52 = v51;

    ObjectType = swift_getObjectType();
    v54 = *(v43 + 8);
    v145 = ObjectType;
    v55 = v54;
    v146 = (v43 + 8);
    v56 = v54(ObjectType, v43);
    v58 = v157;
    if (v50 == v56 && v52 == v57)
    {
    }

    else
    {
      v63 = sub_1E470B84C();

      if ((v63 & 1) == 0)
      {

        sub_1E465F8EC(v34);
        swift_unknownObjectRetain();
        v86 = v3;
        v87 = sub_1E470A0BC();
        v88 = sub_1E470B2AC();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v162[0] = v90;
          *v89 = 136315394;
          v91 = (v55)(v145, v148);
          v93 = sub_1E4654D04(v91, v92, v162);

          *(v89 + 4) = v93;
          *(v89 + 12) = 2080;
          v94 = [v86 type];
          v95 = sub_1E470AF1C();
          v97 = v96;

          v98 = sub_1E4654D04(v95, v97, v162);

          *(v89 + 14) = v98;
          _os_log_impl(&dword_1E45E0000, v87, v88, "CRDTModelSyncEntity incompatible type %s passed in. Expecting %s", v89, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v90, -1, -1);
          MEMORY[0x1E6917530](v89, -1, -1);
          _Block_release(v151);
          swift_unknownObjectRelease();
        }

        else
        {
          _Block_release(v151);

          swift_unknownObjectRelease();
        }

        (*(v150 + 8))(v34, v147);
        return;
      }
    }

    v62 = v148;
  }

  else
  {
    v55 = *(v43 + 8);
    v62 = v43;
    v58 = v157;
  }

  v64 = v158;
  v157 = swift_getObjectType();
  (v55)(v157, v62);
  v65 = sub_1E470AF0C();

  [v3 setType_];

  swift_unknownObjectRetain();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v66 = sub_1E470AE2C();
  v67 = type metadata accessor for CRDTModelSyncEntity();
  v159.receiver = v3;
  v159.super_class = v67;
  objc_msgSendSuper2(&v159, sel_configureFromCloudData_withMergers_, v64, v66);
  swift_unknownObjectRelease();

  sub_1E465F8EC(v58);
  v68 = v3;
  swift_unknownObjectRetain();
  v69 = v68;
  v70 = sub_1E470A0BC();
  v71 = sub_1E470B2CC();
  if (!os_log_type_enabled(v70, v71))
  {

    swift_unknownObjectRelease();
    v70 = v69;
    v74 = v147;
    v85 = v64;
    goto LABEL_41;
  }

  v72 = swift_slowAlloc();
  *v72 = 134218240;
  v73 = [v69 protoData];
  v74 = v147;
  if (!v73)
  {

    v84 = -1;
    goto LABEL_38;
  }

  v75 = v69;
  v76 = v73;
  v77 = sub_1E4709BDC();
  v79 = v78;

  v80 = v79;
  v81 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v81 != 2)
    {
      sub_1E465746C(v77, v79);
      v69 = v75;

      v84 = 0;
      goto LABEL_37;
    }

    v100 = *(v77 + 16);
    v99 = *(v77 + 24);
    sub_1E465746C(v77, v80);

    v84 = v99 - v100;
    if (!__OFSUB__(v99, v100))
    {
      v69 = v75;
      goto LABEL_37;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v81)
  {
    sub_1E465746C(v77, v79);
    v69 = v75;

    LODWORD(v84) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v84 = v84;
      goto LABEL_37;
    }

    goto LABEL_70;
  }

  v82 = v77;
  v83 = BYTE6(v79);
  sub_1E465746C(v82, v79);
  v69 = v75;

  v84 = v83;
LABEL_37:
  v74 = v147;
LABEL_38:
  *(v72 + 4) = v84;

  *(v72 + 12) = 2048;
  v101 = (*(v148 + 16))(v157);
  if (v102 >> 60 != 15)
  {
    v132 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      goto LABEL_57;
    }

    if (!v132)
    {
      v133 = BYTE6(v102);
      sub_1E465DDA0(v101, v102);
      v103 = v133;
      goto LABEL_40;
    }

    v143 = HIDWORD(v101);
    v144 = v101;
    sub_1E465DDA0(v101, v102);
    LODWORD(v103) = v143 - v144;
    if (!__OFSUB__(v143, v144))
    {
      v103 = v103;
      goto LABEL_40;
    }

LABEL_72:
    __break(1u);
    return;
  }

  v103 = -1;
  while (1)
  {
LABEL_40:
    v85 = v158;
    *(v72 + 14) = v103;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1E45E0000, v70, v71, "CRDTModelSyncEntity Merging: existing data (%ld bytes) with incoming data (%ld bytes)", v72, 0x16u);
    MEMORY[0x1E6917530](v72, -1, -1);
LABEL_41:

    v104 = *(v150 + 8);
    v150 += 8;
    v146 = v104;
    v104(v58, v74);
    v105 = v85;
    v106 = (*(v148 + 16))(v157);
    v108 = v107;
    v109 = MEMORY[0x1EEE9AC00](v106, v107);
    v110 = v156;
    *(&v145 - 4) = v151;
    *(&v145 - 3) = v110;
    *(&v145 - 2) = v38;
    sub_1E465FB74(v109, v111, sub_1E46641B4);

    sub_1E465DDA0(v106, v108);
    v112 = v155;
    sub_1E465F8EC(v155);
    swift_unknownObjectRetain();
    v113 = v69;
    v114 = sub_1E470A0BC();
    v115 = sub_1E470B2CC();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v162[0] = v117;
      *v116 = 136315394;
      v118 = [v105 recordType];
      v119 = sub_1E470AF1C();
      v120 = v74;
      v121 = v69;
      v123 = v122;

      v124 = sub_1E4654D04(v119, v123, v162);
      v69 = v121;
      v74 = v120;

      *(v116 + 4) = v124;
      *(v116 + 12) = 2080;
      v125 = [v113 debugDescription];
      v126 = sub_1E470AF1C();
      v128 = v127;

      v129 = sub_1E4654D04(v126, v128, v162);

      *(v116 + 14) = v129;
      _os_log_impl(&dword_1E45E0000, v114, v115, "CRDTModelSyncEntity Merging: Adopted properties from cloudData: %s %s", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v117, -1, -1);
      MEMORY[0x1E6917530](v116, -1, -1);

      v130 = v155;
      v131 = v120;
    }

    else
    {

      v130 = v112;
      v131 = v74;
    }

    v71 = v146;
    v146(v130, v131);
    v134 = v149;
    sub_1E465F8EC(v149);
    v58 = v69;
    v135 = sub_1E470A0BC();
    LOBYTE(v136) = sub_1E470B2CC();
    if (!os_log_type_enabled(v135, v136))
    {
      swift_unknownObjectRelease();
      _Block_release(v151);

      v135 = v58;
      goto LABEL_65;
    }

    v55 = -1;
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    v137 = [v58 protoData];
    if (!v137)
    {
      break;
    }

    v138 = v137;
    v55 = sub_1E4709BDC();
    v140 = v139;

    v141 = v140;
    v142 = v140 >> 62;
    if ((v140 >> 62) <= 1)
    {
      if (!v142)
      {
        sub_1E465746C(v55, v140);
        v55 = BYTE6(v140);
        break;
      }

      goto LABEL_61;
    }

    if (v142 != 2)
    {
      sub_1E465746C(v55, v140);
      v55 = 0;
      break;
    }

    v38 = *(v55 + 16);
    v70 = *(v55 + 24);
    v101 = sub_1E465746C(v55, v141);
    v55 = v70 - v38;
    if (!__OFSUB__(v70, v38))
    {
      break;
    }

    __break(1u);
LABEL_57:
    if (v132 == 2)
    {
      v136 = *(v101 + 16);
      v135 = *(v101 + 24);
      sub_1E465DDA0(v101, v102);
      v103 = v135 - v136;
      if (__OFSUB__(v135, v136))
      {
        __break(1u);
LABEL_61:
        sub_1E465746C(v55, v141);
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_71;
        }

        v55 = HIDWORD(v55) - v55;
        break;
      }
    }

    else
    {
      sub_1E465DDA0(v101, v102);
      v103 = 0;
    }
  }

  *(v72 + 4) = v55;

  _os_log_impl(&dword_1E45E0000, v135, v136, "CRDTModelSyncEntity Merging: merged data (%ld bytes)", v72, 0xCu);
  MEMORY[0x1E6917530](v72, -1, -1);
  _Block_release(v151);
  swift_unknownObjectRelease();
  v134 = v149;
LABEL_65:

  v71(v134, v74);
}

uint64_t sub_1E46611DC(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  v7 = 0;
  if (v6 && a1)
  {
    v8 = v6;
    v25.receiver = v3;
    v25.super_class = type metadata accessor for CRDTModelSyncEntity();
    swift_unknownObjectRetain();
    if (objc_msgSendSuper2(&v25, sel_isEqualExceptForDate_ignoringEmptySalt_, a1, a2 & 1))
    {
      v9 = [v3 type];
      v10 = sub_1E470AF1C();
      v12 = v11;

      ObjectType = swift_getObjectType();
      if (v10 == (*(v8 + 8))(ObjectType, v8) && v12 == v14)
      {

        goto LABEL_8;
      }

      v15 = sub_1E470B84C();

      if (v15)
      {
LABEL_8:
        v16 = [v3 protoData];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1E4709BDC();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xF000000000000000;
        }

        v22 = (*(v8 + 16))(ObjectType, v8);
        v23 = v21;
        if (v20 >> 60 == 15)
        {
          swift_unknownObjectRelease();
          if (v23 >> 60 == 15)
          {
            sub_1E465DDA0(v18, v20);
            v7 = 1;
            return v7 & 1;
          }
        }

        else
        {
          if (v21 >> 60 != 15)
          {
            sub_1E465DD8C(v18, v20);
            sub_1E465DD8C(v22, v23);
            v7 = sub_1E4663C7C(v18, v20, v22, v23);
            sub_1E465DDA0(v22, v23);
            sub_1E465DDA0(v22, v23);
            sub_1E465DDA0(v18, v20);
            swift_unknownObjectRelease();
            sub_1E465DDA0(v18, v20);
            return v7 & 1;
          }

          swift_unknownObjectRelease();
        }

        sub_1E465DDA0(v18, v20);
        sub_1E465DDA0(v22, v23);
        v7 = 0;
        return v7 & 1;
      }
    }

    swift_unknownObjectRelease();
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1E46614D0(void *a1, uint64_t a2)
{
  v4 = sub_1E470A0DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v93 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v103 = &v93 - v20;
  v21 = sub_1E4709B9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v93 - v30;
  if (!a2)
  {
    return;
  }

  v99 = v18;
  v100 = v14;
  v101 = v10;
  v102 = v29;
  v32 = a1;
  v33 = sub_1E470B3DC();
  v35 = v34;
  v106 = v33;
  v107 = v34;

  sub_1E470B56C();
  if (!*(a2 + 16) || (v36 = sub_1E4655398(v108), (v37 & 1) == 0))
  {
    sub_1E4658910(v108);
LABEL_15:

    return;
  }

  v97 = v31;
  v94 = v4;
  v95 = v5;
  v96 = v22;
  v98 = *(*(a2 + 56) + 8 * v36);
  _Block_copy(v98);
  sub_1E4658910(v108);
  v38 = sub_1E470B3DC();
  v40 = v39;
  v41 = [v104 recordType];
  v42 = sub_1E470AF1C();
  v44 = v43;

  if (v38 == v42 && v40 == v44)
  {
  }

  else
  {
    v45 = sub_1E470B84C();

    if ((v45 & 1) == 0)
    {
LABEL_14:
      _Block_release(v98);
      goto LABEL_15;
    }
  }

  v46 = v32;
  if (!MEMORY[0x1E6916100](0x7461446F746F7270, 0xE900000000000061))
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v48 = [v47 fileURL];
  if (v48)
  {
    v49 = v48;
    sub_1E4709B7C();

    v50 = v96;
    (*(v96 + 32))(v97, v27, v102);
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    v51 = sub_1E470AE2C();
    v52 = type metadata accessor for CRDTModelSyncEntity();
    v53 = v104;
    v105.receiver = v104;
    v105.super_class = v52;
    objc_msgSendSuper2(&v105, sel_resolveConflictsFromRecord_withResolvers_, v32, v51);

    v54 = sub_1E4709BAC();
    v69 = v68;
    v70 = MEMORY[0x1EEE9AC00](v54, v68);
    *(&v93 - 4) = v98;
    *(&v93 - 3) = v33;
    *(&v93 - 2) = v35;
    v71 = v70;
    sub_1E46552AC(v70, v72);
    v93 = v71;
    sub_1E465FB74(v71, v69, sub_1E4663E38);

    sub_1E465746C(v93, v69);
    v73 = v103;
    sub_1E465F8EC(v103);
    v74 = v32;
    v75 = v53;
    v76 = sub_1E470A0BC();
    v77 = sub_1E470B2CC();

    if (os_log_type_enabled(v76, v77))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v108[0] = v80;
      *v79 = 136315394;
      v81 = [v74 recordID];
      v82 = [v81 recordName];
      v104 = v69;
      v83 = v82;

      v84 = sub_1E470AF1C();
      v86 = v85;

      v87 = sub_1E4654D04(v84, v86, v108);

      *(v79 + 4) = v87;
      *(v79 + 12) = 2080;
      v88 = [v75 debugDescription];
      v89 = sub_1E470AF1C();
      v91 = v90;

      v92 = sub_1E4654D04(v89, v91, v108);

      *(v79 + 14) = v92;
      _os_log_impl(&dword_1E45E0000, v76, v77, "CRDTModelSyncEntity Resolving: Adopted properties from record: %s %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v80, -1, -1);
      MEMORY[0x1E6917530](v79, -1, -1);
      _Block_release(v98);

      swift_unknownObjectRelease();
      sub_1E465746C(v93, v104);
      (*(v95 + 8))(v103, v94);
    }

    else
    {
      _Block_release(v98);

      swift_unknownObjectRelease();
      sub_1E465746C(v93, v69);
      (*(v95 + 8))(v73, v94);
    }

    (*(v50 + 8))(v97, v102);
  }

  else
  {

    sub_1E470B2AC();
    v55 = v104;
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E471B800;
    v57 = [v55 type];
    v58 = sub_1E470AF1C();
    v60 = v59;

    v61 = MEMORY[0x1E69E6158];
    *(v56 + 56) = MEMORY[0x1E69E6158];
    v62 = sub_1E4663DE4();
    *(v56 + 64) = v62;
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    v63 = [v46 recordID];
    v64 = [v63 recordName];

    v65 = sub_1E470AF1C();
    v67 = v66;

    *(v56 + 96) = v61;
    *(v56 + 104) = v62;
    *(v56 + 72) = v65;
    *(v56 + 80) = v67;
    sub_1E470A0AC();
    swift_unknownObjectRelease();

    _Block_release(v98);
  }
}

uint64_t sub_1E4662344(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = sub_1E470AF0C();
  v9 = a2;
  v10 = v8;
  if (v9 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1E4709BCC();
  }

  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1E4709BCC();
  }

  v13 = (*(a5 + 16))(a5, v10, v11, v12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1E470B4BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E465E050(v18, &unk_1ECF74DD0, &qword_1E471D8C0);
    return 0;
  }
}

id CRDTModelSyncEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CRDTModelSyncEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CRDTModelSyncEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRDTModelSyncEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4662778()
{
  v1 = [v0 type];
  v2 = sub_1E470AF1C();

  return v2;
}

uint64_t sub_1E46627D0()
{
  v1 = [v0 protoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4709BDC();

  return v3;
}

id CRDTModelSyncEntity.mutableCopy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRDTModelSync();
  result = [objc_allocWithZone(v4) initWithCloudData_];
  if (result)
  {
    a1[3] = v4;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRDTModelSyncEntity.debugDescription.getter()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  v1 = objc_msgSendSuper2(&v7, sel_debugDescription);
  v2 = sub_1E470AF1C();

  v3 = sub_1E4663874(v0);
  v5 = v4;

  MEMORY[0x1E6915D10](v3, v5);

  return v2;
}

Swift::String __swiftcall CRDTModelSyncEntity.recordType()()
{
  v1 = [v0 type];
  v2 = sub_1E470AF1C();
  v4 = v3;

  sub_1E470B04C();
  v5 = sub_1E470AF7C();
  v7 = v6;

  v8 = sub_1E465F4D4(15, v5, v7, v2, v4);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall CRDTModelSyncEntity.identifier()()
{
  v1 = sub_1E4663AB8(v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t CRDTModelSyncEntity.zoneName()()
{
  v1 = [v0 type];
  sub_1E470AF1C();

  v2 = sub_1E470AF0C();

  return v2;
}

id sub_1E4662DA4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  *&v2[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData] = xmmword_1E471B810;
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v26.receiver = v2;
    v26.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v26, sel_initWithCloudData_, a1);
    if (v10)
    {
      v11 = *(v8 + 8);
      v12 = v10;
      v13 = v10;
      v14 = v11(v9, v8);
      v15 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
      v16 = *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8];
      *v15 = v14;
      v15[1] = v17;

      v18 = (*(v8 + 16))(v9, v8);
      v20 = v19;
      swift_unknownObjectRelease();
      v21 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v22 = *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v23 = *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
      *v21 = v18;
      v21[1] = v20;
      sub_1E465DDA0(v22, v23);

      return v12;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v25 = *(v5 + 1);

    sub_1E465DDA0(*v6, *(v6 + 1));
    swift_deallocPartialClassInstance();
  }

  return 0;
}

id sub_1E466302C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46630B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v2 = *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);

  return v1;
}

uint64_t sub_1E46630F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData);
  sub_1E465DD8C(v1, *(v0 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8));
  return v1;
}

uint64_t sub_1E46633A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1E47099CC();
    if (v10)
    {
      v11 = sub_1E47099EC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1E47099DC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1E47099CC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1E47099EC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1E47099DC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1E46635D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1E4663BC4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1E465746C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1E46633A0(v14, a3, a4, &v13);
  v10 = v4;
  sub_1E465746C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t type metadata accessor for CRDTModelSyncEntity()
{
  result = qword_1ECF74840;
  if (!qword_1ECF74840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E46637AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1E470B05C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46637F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E470B03C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E6915D30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E4663874(void *a1)
{
  sub_1E470B5CC();

  v2 = [a1 type];
  v3 = sub_1E470AF1C();
  v5 = v4;

  MEMORY[0x1E6915D10](v3, v5);

  MEMORY[0x1E6915D10](0x446F746F7270202CLL, 0xED0000203A617461);
  v6 = [a1 protoData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E4709BDC();
    v10 = v9;

    sub_1E465746C(v8, v10);
    v11 = 0xE300000000000000;
    v12 = 7562617;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1701736302;
  }

  MEMORY[0x1E6915D10](v12, v11);

  return 0x203A65707974;
}

uint64_t sub_1E46639B0(uint64_t a1)
{
  sub_1E470B5CC();

  v2 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v3 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);

  MEMORY[0x1E6915D10](v2, v3);

  MEMORY[0x1E6915D10](0x446F746F7270202CLL, 0xED0000203A617461);
  if (*(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v4 = 1701736302;
  }

  else
  {
    v4 = 7562617;
  }

  if (*(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1E6915D10](v4, v5);

  return 0x203A65707974;
}

uint64_t sub_1E4663AB8(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1E470AF1C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 type];
  v8 = sub_1E470AF1C();

  return v8;
}

uint64_t sub_1E4663B68(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v2 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8);

  return v1;
}

uint64_t sub_1E4663BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1E47099CC();
  v11 = result;
  if (result)
  {
    result = sub_1E47099EC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E47099DC();
  sub_1E46633A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1E4663C7C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1E46552AC(a3, a4);
          return sub_1E46635D0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1E4663DE4()
{
  result = qword_1EE2ACD60;
  if (!qword_1EE2ACD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ACD60);
  }

  return result;
}

uint64_t sub_1E4663E38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[3];
  v6 = v4[4];
  return sub_1E4662344(a1, a2, a3, a4, v4[2]);
}

void sub_1E4663EC4()
{
  sub_1E4663F6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E4663F6C()
{
  if (!qword_1ECF74850)
  {
    sub_1E470A0DC();
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF74850);
    }
  }
}

unint64_t sub_1E4663FD8()
{
  result = qword_1ECF74870;
  if (!qword_1ECF74870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74870);
  }

  return result;
}

unint64_t sub_1E466402C()
{
  result = qword_1ECF74880;
  if (!qword_1ECF74880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74880);
  }

  return result;
}

unint64_t sub_1E4664080()
{
  result = qword_1ECF74890;
  if (!qword_1ECF74890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74890);
  }

  return result;
}

uint64_t sub_1E46640D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4664144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74878, &qword_1E471B980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46641B8()
{
  v0 = sub_1E4709E2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4709E4C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = sub_1E4709DCC();
  sub_1E4665F64(v9, qword_1ECF748A0);
  sub_1E4665EC4(v9, qword_1ECF748A0);
  (*(v1 + 104))(v5, *MEMORY[0x1E698F528], v0);
  v10 = [objc_opt_self() sharedProvider];
  v11 = [v10 activeStoreAccount];

  sub_1E4709E3C();
  return sub_1E4709DBC();
}

uint64_t BDSBookWidgetInfoManager.fetch(adamIDs:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665FCC;

  return sub_1E46650BC(a1);
}

uint64_t sub_1E46643F8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a1 + 56) + 8 * v11);
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v32 = result;
      if (*(v2 + 24) <= *(v2 + 16))
      {
        v18 = *(v2 + 16);

        v19 = v15;
        sub_1E4655D84(v18 + 1, 1);
        v2 = v33;
      }

      else
      {

        v17 = v15;
      }

      v20 = *(v2 + 40);
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v21 = v2 + 64;
      v22 = -1 << *(v2 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v26 = v32;
LABEL_24:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v31 = (*(v2 + 48) + 16 * v25);
      *v31 = v13;
      v31[1] = v14;
      *(*(v2 + 56) + 8 * v25) = v26;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v28 = (63 - v22) >> 6;
    v26 = v32;
    while (++v24 != v28 || (v27 & 1) == 0)
    {
      v29 = v24 == v28;
      if (v24 == v28)
      {
        v24 = 0;
      }

      v27 |= v29;
      v30 = *(v21 + 8 * v24);
      if (v30 != -1)
      {
        v25 = __clz(__rbit64(~v30)) + (v24 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v16);
      ++v9;
      if (v6)
      {
        v9 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46647D8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1E470B0BC();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1E46648BC;

  return sub_1E46650BC(v5);
}

uint64_t sub_1E46648BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1E4709AFC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_1E4650534(&qword_1ECF74920, &qword_1E471B9D0);
    v11 = sub_1E470AE2C();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t BDSBookWidgetInfoManager.fetch(bookAssets:audiobookAssets:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4664B3C;

  return (sub_1E4665538)(a1, a2);
}

uint64_t sub_1E4664B3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E4664DCC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1E470B0BC();
  v4[4] = v6;
  v7 = sub_1E470B0BC();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1E4664ED4;

  return sub_1E4665538(v6, v7);
}

uint64_t sub_1E4664ED4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1E4709AFC();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_1E4650534(&qword_1ECF74920, &qword_1E471B9D0);
    v12 = sub_1E470AE2C();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1E46650BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E4709DDC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E466517C, 0, 0);
}

uint64_t sub_1E466517C()
{
  v1 = v0[5];
  sub_1E4709DEC();
  if (qword_1ECF740B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4709DCC();
  sub_1E4665EC4(v2, qword_1ECF748A0);
  v3 = sub_1E46E5BC8(&unk_1F5E622F0);
  v0[6] = v3;
  sub_1E4665EFC(&unk_1F5E62310);
  v4 = *(MEMORY[0x1E698F520] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E46652BC;
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x1EEDF0988](v7, 0, 0, v3, 150, v6);
}

uint64_t sub_1E46652BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_1E46654B8;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_1E4665408;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E4665408()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_1E46643F8(v0[9]);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E46654B8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_1E4665538(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E4709DDC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46655F8, 0, 0);
}

uint64_t sub_1E46655F8()
{
  v1 = v0[6];
  sub_1E4709DEC();
  if (qword_1ECF740B0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1E4709DCC();
  sub_1E4665EC4(v4, qword_1ECF748A0);
  v5 = sub_1E46E5BC8(&unk_1F5E62330);
  v0[7] = v5;
  sub_1E4665EFC(&unk_1F5E62350);
  v6 = *(MEMORY[0x1E698F518] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1E4665748;
  v8 = v0[6];

  return MEMORY[0x1EEDF0980](v2, v3, 0, 0, v5, 150, v8);
}

uint64_t sub_1E4665748(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_1E4665944;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_1E4665894;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E4665894()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1E46B94C0(v0[10]);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E4665944()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_1E46659C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E4665FC8;

  return sub_1E4664DCC(v2, v3, v5, v4);
}

uint64_t sub_1E4665A84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E4665FC8;

  return sub_1E46FEEC4(v2, v3, v5);
}

uint64_t sub_1E4665B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4665FC8;

  return sub_1E46FEFAC(a1, v4, v5, v7);
}

uint64_t sub_1E4665C10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4665FC8;

  return sub_1E46647D8(v2, v3, v4);
}

uint64_t sub_1E4665CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4665D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4665DD0;

  return sub_1E46FEFAC(a1, v4, v5, v7);
}

uint64_t sub_1E4665DD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E4665EC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E4665EFC(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF74928, &qword_1E471B9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1E4665F64(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1E4665FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];

  v4 = sub_1E4709B9C();
  v5 = sub_1E470B0BC();
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  (*(*(v4 - 8) + 16))(a1, v5 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
}

uint64_t static CRDTModelFileSyncContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v27 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  v27 = "SBookWidgetInfoManager.swift";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_1E4665FD0(v17);
  sub_1E4709B6C();
  v21 = *(v8 + 8);
  v21(v17, v7);
  v22 = [objc_opt_self() books];
  v23 = [v22 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v21(v13, v7);
  v24 = *(v28 + 96);
  v31 = *(v28 + 80);
  v32 = v24;
  type metadata accessor for _CRDTModelContextStore();
  (*(v8 + 16))(v6, v17, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v25 = sub_1E46663EC(v20, v6, v29, v30);
  sub_1E465E050(v6, &qword_1ECF754C0, &unk_1E471BA10);
  v21(v17, v7);
  v21(v20, v7);
  return v25;
}

uint64_t sub_1E46663EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v74 = *MEMORY[0x1E69E9840];
  v7 = sub_1E4709A6C();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v60 - v17;
  v19 = sub_1E4709B9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v62 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v60 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v60 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  v34 = *(v20 + 16);
  v69 = &v60 - v35;
  v61 = v34;
  v60 = v20 + 16;
  (v34)(&v60 - v35);
  *&v71 = a3;
  *(&v71 + 1) = a4;

  MEMORY[0x1E6915D10](45, 0xE100000000000000);
  v36 = sub_1E466709C();
  MEMORY[0x1E6915D10](v36);

  v70 = v32;
  sub_1E4709B6C();
  sub_1E46676CC(v65, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {

    sub_1E465E050(v18, &qword_1ECF754C0, &unk_1E471BA10);
  }

  else
  {
    (*(v20 + 32))(v28, v18, v19);
    sub_1E4667118(a1);

    (*(v20 + 8))(v28, v19);
  }

  sub_1E470B2CC();
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE2ADDF0;
  v64 = sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E471BA00;
  v39 = sub_1E4709B1C();
  v41 = v40;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1E4663DE4();
  *(v38 + 64) = v42;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v65 = v37;
  sub_1E470A0AC();

  v43 = v66;
  sub_1E4709A5C();
  sub_1E4709A4C();
  v44 = [objc_opt_self() defaultManager];
  v45 = sub_1E4709B4C();
  *&v71 = 0;
  LODWORD(v38) = [v44 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v71];

  if (v38)
  {
    v46 = v71;
    sub_1E4709B3C();
    sub_1E470AD7C();
    v47 = v70;
    v61(v62, v70, v19);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    (*(v20 + 56))(v63, 1, 1, v19);
    v59 = sub_1E470AD6C();
  }

  else
  {
    v48 = v71;
    v49 = sub_1E4709B0C();

    swift_willThrow();
    sub_1E470B2AC();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1E471B800;
    v47 = v70;
    v51 = sub_1E4709B1C();
    v52 = MEMORY[0x1E69E6158];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = v42;
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    swift_getErrorValue();
    v54 = sub_1E470B89C();
    *(v50 + 96) = v52;
    *(v50 + 104) = v42;
    *(v50 + 72) = v54;
    *(v50 + 80) = v55;
    sub_1E470A0AC();

    sub_1E470AD7C();
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v59 = MEMORY[0x1E6915A70](0, &v71);

    sub_1E465E050(&v71, &unk_1ECF74930, &qword_1E471DB20);
  }

  (*(v67 + 8))(v43, v68);
  v56 = *(v20 + 8);
  v56(v47, v19);
  v56(v69, v19);
  v57 = *MEMORY[0x1E69E9840];
  return v59;
}

uint64_t static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v26 - v8;
  v10 = sub_1E4709B9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v26 - v18;
  v20 = [objc_opt_self() books];
  v21 = [v20 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v22 = *(v11 + 8);
  v22(v16, v10);
  v23 = *(v3 + 96);
  v28 = *(v3 + 80);
  v29 = v23;
  type metadata accessor for _CRDTModelContextStore();
  (*(v11 + 56))(v9, 1, 1, v10);
  v24 = sub_1E46663EC(v19, v9, a1, v27);
  sub_1E465E050(v9, &qword_1ECF754C0, &unk_1E471BA10);
  v22(v19, v10);
  return v24;
}

uint64_t static CRDTModelLocalFileContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v27 - v19;
  v27 = "CRDTModelFileSyncContext";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_1E4665FD0(v16);
  sub_1E4709B6C();
  v21 = *(v8 + 8);
  v21(v16, v7);
  v22 = [objc_opt_self() books];
  v23 = [v22 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();
  v21(v12, v7);
  v24 = *(v28 + 96);
  v31 = *(v28 + 80);
  v32 = v24;
  type metadata accessor for _CRDTModelContextStore();
  (*(v8 + 16))(v6, v16, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v25 = sub_1E46663EC(v20, v6, v29, v30);
  sub_1E465E050(v6, &qword_1ECF754C0, &unk_1E471BA10);
  v21(v16, v7);
  v21(v20, v7);
  return v25;
}

uint64_t sub_1E466709C()
{
  v1 = *(v0 + 80);
  v3 = (*(*(v0 + 88) + 8))();

  MEMORY[0x1E6915D10](0x2E747865746E6F43, 0xEA00000000006264);

  return v3;
}

void sub_1E4667118(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1E4709B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v60 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v54 - v13;
  sub_1E4709B6C();
  v15 = [objc_opt_self() defaultManager];
  sub_1E4709B8C();
  v16 = sub_1E470AF0C();

  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {
    v55 = a1;
    v56 = v2;
    v58 = v8;
    v59 = v3;
    v57 = v15;
    sub_1E470B2CC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v19 = swift_allocObject();
    v54 = xmmword_1E471BA00;
    *(v19 + 16) = xmmword_1E471BA00;
    v20 = sub_1E4709B1C();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1E4663DE4();
    *(v19 + 64) = v23;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v24 = v18;
    sub_1E470A0AC();

    v25 = v60;
    v26 = v56;
    (*(v59 + 16))(v60, v55, v56);
    v27 = v58;
    sub_1E4709B6C();
    sub_1E4709B8C();
    v28 = sub_1E470AF0C();

    v29 = v57;
    LODWORD(v20) = [v57 fileExistsAtPath_];

    if (v20)
    {
      sub_1E470B2AC();
      v30 = swift_allocObject();
      *(v30 + 16) = v54;
      v31 = sub_1E4709B1C();
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = v23;
      *(v30 + 32) = v31;
      *(v30 + 40) = v32;
      sub_1E470A0AC();
    }

    else
    {
      v55 = v24;
      v33 = sub_1E4709B4C();
      v61[0] = 0;
      v34 = [v29 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v61];

      v35 = v61[0];
      if (!v34)
      {
        goto LABEL_10;
      }

      v36 = v61[0];
      v37 = sub_1E4709B4C();
      v38 = sub_1E4709B4C();
      v61[0] = 0;
      v39 = [v29 moveItemAtURL:v37 toURL:v38 error:v61];

      v35 = v61[0];
      if (v39)
      {
        v40 = v61[0];
        sub_1E470B2CC();
        v41 = swift_allocObject();
        *(v41 + 16) = v54;
        v42 = sub_1E4709B1C();
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = v23;
        *(v41 + 32) = v42;
        *(v41 + 40) = v43;
        sub_1E470A0AC();
      }

      else
      {
LABEL_10:
        v44 = v35;
        v45 = sub_1E4709B0C();

        swift_willThrow();
        LODWORD(v54) = sub_1E470B2AC();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1E471B800;
        v47 = sub_1E4709B1C();
        v48 = MEMORY[0x1E69E6158];
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = v23;
        *(v46 + 32) = v47;
        *(v46 + 40) = v49;
        swift_getErrorValue();
        v50 = sub_1E470B89C();
        *(v46 + 96) = v48;
        *(v46 + 104) = v23;
        *(v46 + 72) = v50;
        *(v46 + 80) = v51;
        sub_1E470A0AC();
      }
    }

    v52 = *(v59 + 8);
    v52(v27, v26);
    v52(v25, v26);
    v52(v14, v26);
  }

  else
  {
    (*(v3 + 8))(v14, v2);
  }

  v53 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E46676CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MutableObservableContainer.value.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v1 + 264);
  return sub_1E470B37C();
}

uint64_t MutableObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_1E466A1E0(a1);
  (*(*(*(v1 + 264) - 8) + 8))(a1);
  return v3;
}

void *ObservableTransaction.__allocating_init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_1E4669EBC(a1, a2, a3);
}

uint64_t MutableObservableContainer.mutate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E466A21C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E466A228;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E46679F4;
  v11[3] = &unk_1F5E62D38;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4667A1C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return v2(v1);
}

uint64_t ObservationToken.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(v1);

  return v1;
}

uint64_t ObservationToken.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2(v1);
  v4 = *(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t ObservableContainer.Event.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v7, v10);
  }

  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = *(v10 - 8);
  (*(v12 + 32))(a2, &v7[v11], v10);
  return (*(v12 + 8))(v7, v10);
}

uint64_t sub_1E4667C60(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v4 + 88);
  v22 = type metadata accessor for ObservableContainer.Event();
  v24 = *(v22 - 8);
  v7 = *(v24 + 64);
  v9 = MEMORY[0x1EEE9AC00](v22, v8);
  v11 = &v22 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v22 - v15;
  v17 = *(v4 + 120);
  swift_beginAccess();
  v18 = *(v12 + 16);
  v18(v16, &v2[v17], v5);
  v23 = a1;
  LOBYTE(v6) = sub_1E470AEFC();
  result = (*(v12 + 8))(v16, v5);
  if ((v6 & 1) == 0)
  {
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    v18(v11, v23, v5);
    v18(&v11[v20], &v2[v17], v5);
    v21 = v22;
    swift_storeEnumTagMultiPayload();
    sub_1E4668178(v11);
    return (*(v24 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_1E4667EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E4667F6C()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1E4667FC8(uint64_t a1, uint64_t a2)
{
  sub_1E466A268(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E4668000(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E46680B0;
}

void sub_1E46680B0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ObservableContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ObservableContainer.init(value:)(a1);
  return v5;
}

uint64_t sub_1E4668178(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = sub_1E470A61C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E4667F6C())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v33 = v1[3];
  sub_1E470A5CC();
  v39 = nullsub_60;
  v40 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1E46C4624;
  v38 = &unk_1F5E63020;
  v18 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v18);
  _Block_release(v18);
  v19 = *(v4 + 8);
  v30[1] = v4 + 8;
  v32 = v19;
  v19(v8, v3);
  v20 = *(v10 + 8);
  v30[2] = v10 + 8;
  v31 = v20;
  v20(v14, v9);
  swift_beginAccess();
  v21 = v1[4];
  v23 = *(v2 + 80);
  v22 = *(v2 + 88);
  type metadata accessor for ObservableContainer.Event();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  aBlock = v21;
  MEMORY[0x1EEE9AC00](FunctionTypeMetadata1, v25);
  v30[0] = v3;
  v30[-4] = v23;
  v30[-3] = v22;
  v30[-2] = v34;
  sub_1E470AE8C();
  v34 = v9;

  swift_getWitnessTable();
  sub_1E470B08C();

  sub_1E470A5CC();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v22;
  v27[4] = v26;
  v39 = sub_1E466ADFC;
  v40 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1E46C4624;
  v38 = &unk_1F5E63070;
  v28 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v28);
  _Block_release(v28);
  v32(v8, v30[0]);
  v31(v14, v34);
}

uint64_t sub_1E466860C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1E4667F6C())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E46686C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E466AE60;
  *(v10 + 24) = v9;
  v13[4] = sub_1E466AFC4;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E631D8;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4668844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v58 = a2;
  v5 = *a1;
  v6 = sub_1E470A61C();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A5DC();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 80);
  v56 = *(v5 + 88);
  v57 = v15;
  v16 = type metadata accessor for ObservableContainer.Event();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v47 - v23;
  sub_1E4667EC8(&v47 - v23);
  swift_storeEnumTagMultiPayload();
  if (sub_1E4667F6C())
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(a1, ObjectType, v26);
    swift_unknownObjectRelease();
  }

  v28 = a1[3];
  sub_1E470A5CC();
  v29 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v21, v24, v16);
  v30 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v48 = v24;
  v31 = (v18 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v56;
  v32[2] = v57;
  v32[3] = v33;
  v34 = v16;
  v35 = v55;
  v32[4] = v58;
  v32[5] = v35;
  v36 = v32 + v30;
  v37 = v34;
  (*(v17 + 32))(v36, v21);
  *(v32 + v31) = v29;
  aBlock[4] = sub_1E466AE6C;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E63228;
  v38 = _Block_copy(aBlock);

  v39 = v51;
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v39, v14, v38);
  _Block_release(v38);
  (*(v52 + 8))(v39, v53);
  (*(v49 + 8))(v14, v50);

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v42 = v54;
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v44 = v56;
  v43[2] = v57;
  v43[3] = v44;
  v43[4] = v40;
  v43[5] = v41;
  v45 = v58;
  v43[6] = v42;
  v43[7] = v45;
  v43[8] = v35;
  v60 = sub_1E466AF20;
  v61 = v43;
  v59 = v42;
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1E470AE9C();

  sub_1E470AEAC();
  swift_endAccess();
  (*(v17 + 8))(v48, v37);
}

uint64_t sub_1E4668D7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1E4667F6C())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);

      v7(v8, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4668E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v41 = a1;
  v10 = sub_1E470A5DC();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E470A61C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ObservableContainer.Event();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v40 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v40 = *(v27 + 24);
      (*(v21 + 16))(v25, v41, v20);
      v28 = *(v21 + 80);
      v41 = v27;
      v29 = (v28 + 48) & ~v28;
      v30 = swift_allocObject();
      *(v30 + 2) = a7;
      *(v30 + 3) = a8;
      v31 = v43;
      *(v30 + 4) = v42;
      *(v30 + 5) = v31;
      (*(v21 + 32))(&v30[v29], v25, v20);
      aBlock[4] = sub_1E466AF34;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E632C8;
      v32 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v49 = MEMORY[0x1E69E7CC0];
      sub_1E45E2E30(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      v33 = v47;
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v19, v14, v32);
      _Block_release(v32);
      (*(v46 + 8))(v14, v33);
      (*(v44 + 8))(v19, v45);
    }

    else
    {
      sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1E471BA00;
      v35 = v40;
      aBlock[0] = v40;
      v36 = sub_1E470AF6C();
      v38 = v37;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1E4663DE4();
      *(v34 + 32) = v36;
      *(v34 + 40) = v38;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v39 = sub_1E470B45C();
      sub_1E470A0AC();

      aBlock[6] = v35;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1E470AE9C();
      sub_1E470AE5C();
      swift_endAccess();

      return sub_1E45EB5D8(v49);
    }
  }

  return result;
}

uint64_t sub_1E46693B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = *(v5 + 88);
  v7[4] = v6;
  type metadata accessor for ObservationToken();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E466A2D8;
  *(v8 + 24) = v7;

  sub_1E46686C8(v9, a1, a2);

  return v8;
}

uint64_t sub_1E4669498()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    type metadata accessor for ObservableContainer.Event();
    swift_getFunctionTypeMetadata1();
    sub_1E470AE9C();
    sub_1E470AE5C();
    swift_endAccess();

    return sub_1E45EB5D8(v1);
  }

  return result;
}

uint64_t sub_1E4669588(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E466A308;
  *(v5 + 24) = v4;
  v8[4] = sub_1E466AFC4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E62E00;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E46696F0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for ObservableContainer.Event();
  swift_getFunctionTypeMetadata1();
  sub_1E470AE9C();
  sub_1E470AE5C();
  swift_endAccess();
  return sub_1E45EB5D8(v6);
}

uint64_t *ObservableContainer.deinit()
{
  v1 = *v0;

  v2 = v0[4];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  sub_1E466A310(v0 + *(*v0 + 128));
  return v0;
}

uint64_t sub_1E46698A0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 264);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v14 - v8;
  v11 = *(v10 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v9, a3 + v11, v5);
  a1(v9);
  sub_1E466A4A4(v9, v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t _s13BookDataStore19ObservableContainerCfD_0()
{
  ObservableContainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *ObservableTransaction.init(name:transactionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_1E4669F28(a1, a2, a3, v3);
}

void sub_1E4669A9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    v6 = [*(a1 + 48) createTransactionWithName_];

    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    oslog = sub_1E470A0BC();
    v8 = sub_1E470B28C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1E4654D04(a2, a3, &v12);
      _os_log_impl(&dword_1E45E0000, oslog, v8, "[Transaction]: Created transaction %s", v9, 0xCu);
      sub_1E4658A0C(v10);
      MEMORY[0x1E6917530](v10, -1, -1);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1E4669C30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = 0;

  oslog = sub_1E470A0BC();
  v6 = sub_1E470B28C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E4654D04(a2, a3, &v10);
    _os_log_impl(&dword_1E45E0000, oslog, v6, "[Transaction]: Ended transaction %s", v7, 0xCu);
    sub_1E4658A0C(v8);
    MEMORY[0x1E6917530](v8, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }
}

uint64_t ObservableTransaction.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13BookDataStore21ObservableTransaction_logger;
  v4 = sub_1E470A0DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ObservableTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13BookDataStore21ObservableTransaction_logger;
  v4 = sub_1E470A0DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1E4669EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ObservableTransaction();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();

  return sub_1E4669F28(a1, a2, a3, v9);
}

void *sub_1E4669F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v5 = sub_1E470B33C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1E470A61C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = sub_1E470B35C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v19[1] = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8098], v11);
  sub_1E470A5FC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E45E2E30(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  a4[5] = sub_1E470B39C();
  sub_1E470A0CC();
  v17 = v21;
  a4[2] = v20;
  a4[3] = v17;
  a4[6] = v22;
  return a4;
}

uint64_t sub_1E466A1E0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1E45E2954(a1);
}

uint64_t sub_1E466A228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E466A250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E466A268(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(*v2 + 128);
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E466A2D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E4669498();
}

uint64_t sub_1E466A338()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E466AE54;
  *(v6 + 24) = v5;
  v9[4] = sub_1E466AFC4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E63160;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466A4A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12[-v7];
  v10 = *(v9 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v10, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v10, a1, v4);
  swift_endAccess();
  sub_1E4667C60(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E466A600()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E466AE08;
  *(v6 + 24) = v5;
  v9[4] = sub_1E466AFC4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E630E8;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466A900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1E466AA50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata accessor for ObservableTransaction()
{
  result = qword_1EE2AD748;
  if (!qword_1EE2AD748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E466AC94()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E466ADC4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_1E466ADFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E466860C();
}

uint64_t sub_1E466AE14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E466AE6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4668D7C(v5, v6, v0 + v4);
}

uint64_t sub_1E466AF34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ObservableContainer.Event() - 8);
  v4 = *(v0 + 40);
  return (*(v0 + 32))(v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80)));
}

uint64_t CRDTModelFileSyncInfo.additionalFields.getter(uint64_t a1)
{
  sub_1E46705F0(a1);
}

uint64_t CRDTModelFileSyncInfo.additionalFields.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*CRDTModelFileSyncInfo.additionalFields.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t CRDTModelFileSyncInfo.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E470AA9C();
  result = type metadata accessor for CRDTModelFileSyncInfo();
  *(a1 + *(result + 52)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CRDTModelFileSyncInfo.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E470AA9C();
  *(a3 + *(type metadata accessor for CRDTModelFileSyncInfo() + 52)) = MEMORY[0x1E69E7CC8];
  return (*(*(a2 - 8) + 40))(a3, a1, a2);
}

uint64_t sub_1E466B1D8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  static CRDTModelFileSyncInfo.fields.getter();
  return 0x6C65646F6DLL;
}

uint64_t sub_1E466B20C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4618](a1, WitnessTable);
}

uint64_t sub_1E466B260(uint64_t a1)
{
  sub_1E46705F0(a1);
}

void (*sub_1E466B28C(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = CRDTModelFileSyncInfo.additionalFields.modify(v4, a2);
  return sub_1E466B304;
}

void sub_1E466B304(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E466B34C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return CRDTModelFileSyncInfo.init()(a1);
}

uint64_t sub_1E466B35C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF5248](a1, WitnessTable);
}

uint64_t sub_1E466B3B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4600](a1, a2, WitnessTable);
}

uint64_t sub_1E466B410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45A8](a1, a2, WitnessTable);
}

uint64_t sub_1E466B478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45D0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B4D8()
{
  swift_getWitnessTable();

  return sub_1E470A77C();
}

uint64_t sub_1E466B538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45D8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466B5B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4608](a1, a2, WitnessTable);
}

uint64_t sub_1E466B614(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45E0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45C0](a1, a2, WitnessTable);
}

uint64_t sub_1E466B6DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45B8](a1, a2, WitnessTable);
}

uint64_t sub_1E466B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45A0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466B7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4588](a1, a2, WitnessTable);
}

uint64_t sub_1E466B820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF45B0](a1, WitnessTable);
}

uint64_t sub_1E466B874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4590](a1, a2, WitnessTable);
}

uint64_t sub_1E466B8D4()
{
  swift_getWitnessTable();

  return sub_1E470A72C();
}

void sub_1E466B93C()
{
  swift_getWitnessTable();

  JUMPOUT(0x1E6915450);
}

uint64_t sub_1E466BA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF5200](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E466BBA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF4598](a1, WitnessTable);
}

uint64_t CRDTModelFileSyncInfo.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  return sub_1E470B81C();
}

uint64_t static CRDTModelFileSyncInfo.modelName.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8))();
  MEMORY[0x1E6915D10](0x666E49636E79532DLL, 0xE90000000000006FLL);
  return v3;
}

id CRDTModelFileSyncManager.DefaultConfig.crdtContext.getter()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelFileSyncManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v5, v0);
}

id sub_1E466BE50()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelFileSyncManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E466BF2C()
{
  sub_1E470B8FC();
  CRDTModelFileSyncManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

uint64_t CRDTModelFileSyncManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t CRDTModelFileSyncManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelFileSyncManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E466C098;
}

void sub_1E466C098(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E466C11C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  v12 = v1[4];

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v11, v3);
  return (*(v7 + 8))(v11, v6);
}

BOOL sub_1E466C270()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  v4 = type metadata accessor for ModelState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = v0[4];

  MutableObservableContainer.value.getter();

  LOBYTE(v10) = v9[*(v4 + 44)];
  (*(v5 + 8))(v9, v4);
  v14 = v10;
  v13 = 1;
  return static ModelState.LoadedState.== infix(_:_:)(&v14, &v13);
}

uint64_t CRDTModelFileSyncManager.observable.getter()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1E470B37C();
  return v7;
}

uint64_t CRDTModelFileSyncManager.model.getter()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = *(v1 + 80);
  return sub_1E470B37C();
}

uint64_t sub_1E466C50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  v13 = a1[4];

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v12, v4);
  return (*(v8 + 8))(v12, v7);
}

uint64_t CRDTModelFileSyncManager.modelSyncVersion.getter()
{
  v1 = *(v0 + 48);
  type metadata accessor for CRDTModelSyncVersion();
  return sub_1E470B37C();
}

uint64_t sub_1E466C6DC(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 16);
  type metadata accessor for CRDTModelSyncVersion();

  sub_1E470B37C();
}

uint64_t CRDTModelFileSyncManager.modelSyncVersionObservable.getter()
{
  v1 = *(v0 + 48);
  sub_1E4650534(&qword_1ECF74950, &qword_1E471BCD0);
  sub_1E470B37C();
  return v3;
}

uint64_t (*CRDTModelFileSyncManager.disableReadingInBackground.modify(uint64_t a1))(char *a1)
{
  *a1 = v1;
  v2 = *(v1 + 88);
  *(a1 + 8) = sub_1E4698540() & 1;
  return sub_1E466C86C;
}

uint64_t CRDTModelFileSyncManager.enableCloudSync.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void *CRDTModelFileSyncManager.__allocating_init(clientName:groupContext:transactionProvider:delegate:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *(v7 + 88);
  v13 = *(v7 + 96);
  v12 = *(v7 + 104);
  v22 = *(v7 + 80);
  if (a3)
  {
    v22 = type metadata accessor for CRDTModelFileSyncInfo();
    v23 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    WitnessTable = swift_getWitnessTable();
    v25 = swift_getWitnessTable();
    type metadata accessor for CRDTModelFileSyncContextStore();
    v14 = static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(a1, a2);
  }

  else
  {
    v22 = type metadata accessor for CRDTModelFileSyncInfo();
    v23 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    WitnessTable = swift_getWitnessTable();
    v25 = swift_getWitnessTable();
    type metadata accessor for CRDTModelFileSyncContextStore();
    v14 = static CRDTModelFileSyncContextStore.persistentContext(_:)(a1, a2);
  }

  v15 = v14;

  v23 = v11;
  WitnessTable = v13;
  v25 = type metadata accessor for CRDTModelFileSyncManager.DefaultConfig();
  v26 = &protocol witness table for CRDTModelFileSyncManager<A>.DefaultConfig;
  v22 = v15;
  v16 = *(v7 + 48);
  v17 = *(v7 + 52);
  swift_allocObject();
  v18 = sub_1E46706AC(&v22, a4, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1E466CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1E466CBC4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E466CC24(a1);
  }

  return result;
}

uint64_t sub_1E466CC24(uint64_t a1)
{
  v3 = sub_1E470A5DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 48);
  sub_1E470A5CC();
  v12 = v1;
  v13 = a1;
  sub_1E470B36C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E466CD30(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v3 = *v1;
  v172 = a1;
  v173 = v3;
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v163 = &v140 - v7;
  v8 = *(v3 + 80);
  v169 = *(v3 + 96);
  v9 = v169;
  v10 = type metadata accessor for ModelState();
  v164 = *(v10 - 8);
  v165 = v10;
  v11 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v162 = &v140 - v13;
  v161 = v9;
  v157 = type metadata accessor for ModelState.Source();
  v156 = *(v157 - 8);
  v14 = *(v156 + 64);
  v16 = MEMORY[0x1EEE9AC00](v157, v15);
  v160 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v155 = &v140 - v20;
  v170 = *(v8 - 8);
  v21 = *(v170 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v159 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v167 = &v140 - v26;
  v153 = sub_1E470AA2C();
  v152 = *(v153 - 8);
  v27 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153, v28);
  v150 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v8;
  *&v30 = v8;
  *(&v30 + 1) = *(v3 + 88);
  v176 = v169;
  v175 = v30;
  v31 = type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v32 = sub_1E470ACBC();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v140 - v37;
  v39 = *(v31 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x1EEE9AC00](v36, v41);
  v146 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v143 = (&v140 - v46);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v149 = &v140 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v144 = &v140 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v56 = &v140 - v55;
  v58 = MEMORY[0x1EEE9AC00](v54, v57);
  v60 = &v140 - v59;
  MEMORY[0x1EEE9AC00](v58, v61);
  v63 = &v140 - v62;
  v64 = *(v173 + 192);
  swift_beginAccess();
  v65 = v33[2];
  v166 = v64;
  v148 = v33 + 2;
  v147 = v65;
  v65(v38, v64 + v2, v32);
  sub_1E470AC8C();
  v66 = v33[1];
  v151 = v38;
  v154 = v33 + 1;
  v66(v38, v32);
  sub_1E470AC8C();
  v168 = sub_1E466C270();
  swift_getWitnessTable();
  v67 = sub_1E470A77C();
  v68 = *(*v2 + 200);
  v173 = v39;
  v69 = *(v39 + 16);
  if (v67)
  {
    *&v169 = v60;
    v69(v56, v60, v31);
    v70 = v144;
    v158 = v63;
    v69(v144, v63, v31);
    v71 = sub_1E470A0BC();
    v72 = sub_1E470B2CC();
    v73 = os_log_type_enabled(v71, v72);
    v142 = v66;
    v145 = v31;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v174 = v146;
      *v74 = 136315394;
      v172 = *(v31 + 16);
      v140 = *(v31 + 40);
      v143 = v71;
      v75 = sub_1E470B81C();
      v141 = v72;
      v77 = v76;
      v78 = *(v173 + 8);
      v78(v56, v31);
      v79 = sub_1E4654D04(v75, v77, &v174);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      v80 = sub_1E470B81C();
      v82 = v81;
      v172 = v78;
      v78(v70, v31);
      v83 = sub_1E4654D04(v80, v82, &v174);

      *(v74 + 14) = v83;
      v84 = v143;
      _os_log_impl(&dword_1E45E0000, v143, v141, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v74, 0x16u);
      v85 = v146;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v85, -1, -1);
      MEMORY[0x1E6917530](v74, -1, -1);
    }

    else
    {

      v110 = *(v173 + 8);
      v110(v70, v31);
      v172 = v110;
      v86 = (v110)(v56, v31);
    }

    v111 = v170;
    v112 = v167;
    MEMORY[0x1EEE9AC00](v86, v87);
    v113 = v169;
    *(&v140 - 2) = v169;
    swift_beginAccess();
    v114 = v150;
    v115 = v153;
    sub_1E470AC9C();
    swift_endAccess();
    (*(v152 + 8))(v114, v115);
    v116 = v111;
    v117 = *(v111 + 16);
    v118 = v171;
    v117(v112, v113, v171);
    if (sub_1E466C270())
    {
      v119 = v155;
      v117(v155, v112, v118);
      v120 = 0;
    }

    else
    {
      v120 = 2;
      v119 = v155;
    }

    (*(v116 + 56))(v119, v120, 2, v118);
    v129 = v151;
    v147(v151, &v166[v2], v32);
    v130 = v149;
    sub_1E470AC8C();
    v142(v129, v32);
    v131 = v159;
    v117(v159, v130, v118);
    v172(v130, v145);
    LOBYTE(v174) = 1;
    v132 = v156;
    v133 = v160;
    v134 = v157;
    (*(v156 + 16))(v160, v119, v157);
    v135 = type metadata accessor for CRDTModelRevisionInfo();
    v136 = v163;
    (*(*(v135 - 8) + 56))(v163, 1, 1, v135);
    v137 = v162;
    ModelState.init(model:loaded:source:revisionInfo:)(v131, &v174, v133, v136, v118, v162);
    sub_1E466DC98(v137, 0x656C646E61685F71, 0xE800000000000000);
    (*(v164 + 8))(v137, v165);
    sub_1E466E0D0();
    (*(v132 + 8))(v119, v134);
    (*(v116 + 8))(v167, v118);
    if (v168)
    {
      v63 = v158;
      v102 = v172;
      v60 = v169;
      v31 = v145;
      goto LABEL_20;
    }

    v138 = sub_1E466C270();
    v63 = v158;
    v102 = v172;
    v60 = v169;
    v31 = v145;
    if (!v138)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1E466FD30();
    goto LABEL_20;
  }

  v88 = v143;
  v69(v143, v60, v31);
  v89 = v146;
  v69(v146, v63, v31);
  v90 = sub_1E470A0BC();
  v91 = sub_1E470B2CC();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v158 = v63;
    v93 = v92;
    v167 = swift_slowAlloc();
    v174 = v167;
    *v93 = 136315394;
    *&v169 = v60;
    v94 = *(v31 + 16);
    v95 = *(v31 + 40);
    v166 = v90;
    v96 = sub_1E470B81C();
    v98 = v97;
    LODWORD(v157) = v91;
    v99 = v88;
    v100 = *(v173 + 8);
    v100(v99, v31);
    v101 = sub_1E4654D04(v96, v98, &v174);

    *(v93 + 4) = v101;
    *(v93 + 12) = 2080;
    v102 = v100;
    v60 = v169;
    v103 = sub_1E470B81C();
    v105 = v104;
    v100(v89, v31);
    v106 = sub_1E4654D04(v103, v105, &v174);

    *(v93 + 14) = v106;
    v107 = v166;
    _os_log_impl(&dword_1E45E0000, v166, v157, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v93, 0x16u);
    v108 = v167;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v108, -1, -1);
    v109 = v93;
    v63 = v158;
    MEMORY[0x1E6917530](v109, -1, -1);
  }

  else
  {

    v102 = *(v173 + 8);
    v102(v89, v31);
    v102(v88, v31);
  }

  v121 = sub_1E466C270();
  v123 = v170;
  v122 = v171;
  if (!v121)
  {
    v124 = v159;
    sub_1E466C11C(v159);
    LOBYTE(v174) = 1;
    v125 = v160;
    (*(v123 + 56))(v160, 2, 2, v122);
    v126 = type metadata accessor for CRDTModelRevisionInfo();
    v127 = v163;
    (*(*(v126 - 8) + 56))(v163, 1, 1, v126);
    v128 = v162;
    ModelState.init(model:loaded:source:revisionInfo:)(v124, &v174, v125, v127, v122, v162);
    sub_1E466DC98(v128, 0xD000000000000012, 0x80000001E47185F0);
    (*(v164 + 8))(v128, v165);
  }

  sub_1E466DFC8(v172);
  if (!v168 && sub_1E466C270())
  {
    goto LABEL_19;
  }

LABEL_20:
  v102(v63, v31);
  return (v102)(v60, v31);
}

uint64_t sub_1E466DC98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v38 = *v3;
  v7 = v38[10];
  v8 = v38[13];
  v36 = v38[12];
  v37 = v7;
  v35 = v8;
  v9 = type metadata accessor for ModelState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v32 - v13;
  v15 = v38[25];
  (*(v10 + 16))(&v32 - v13, a1, v9);

  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = a1;
    v20 = v19;
    v39 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1E4654D04(v34, a3, &v39);
    *(v18 + 12) = 2080;
    v21 = ModelState.description.getter(v9);
    v23 = v22;
    (*(v10 + 8))(v14, v9);
    v24 = sub_1E4654D04(v21, v23, &v39);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1E45E0000, v16, v17, "CRDTModelFileSyncManager q_updateState (%s) -- newState=%s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v20;
    a1 = v33;
    MEMORY[0x1E6917530](v25, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  else
  {

    v26 = (*(v10 + 8))(v14, v9);
  }

  v28 = v4[4];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v38[11];
  *(&v32 - 6) = v37;
  *(&v32 - 5) = v29;
  v30 = v35;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v30;
  *(&v32 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_1E4672268, (&v32 - 8));
}

uint64_t sub_1E466DFC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v5 = sub_1E470ACBC();
  (*(*(v5 - 8) + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  return sub_1E466E0D0();
}

uint64_t sub_1E466E0D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[12];
  v4 = *(*v0 + 192);
  swift_beginAccess();
  v5 = *(v2 + 96);
  v12 = *(v2 + 80);
  v13 = v5;
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  sub_1E470ACBC();
  sub_1E470AC6C();
  swift_endAccess();
  v6 = v1[5];
  v7 = *(v6 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1E467223C;
  v8[3] = v1;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4672244;
  *(v9 + 24) = v8;
  v14 = sub_1E465DE98;
  v15 = v9;
  *&v12 = MEMORY[0x1E69E9820];
  *(&v12 + 1) = 1107296256;
  *&v13 = sub_1E46679F4;
  *(&v13 + 1) = &unk_1F5E63568;
  v10 = _Block_copy(&v12);
  swift_retain_n();

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E466E2FC(void *a1, char *a2)
{
  v2 = a2;
  v4 = *(*a2 + 96);
  v15[0] = *(*a2 + 80);
  v15[1] = v4;
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v5 = sub_1E470ACBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  sub_1E46721E0(a1);
  v11 = *(v2 + 12);
  v12 = *(*v2 + 192);
  swift_beginAccess();
  (*(v6 + 16))(v10, &v2[v12], v5);
  LODWORD(v2) = *(type metadata accessor for CRDTModelSyncVersion() + 20);
  v13 = v11;
  sub_1E470ACAC();
  result = (*(v6 + 8))(v10, v5);
  *a1 = v13;
  return result;
}

uint64_t CRDTModelFileSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + 48);
  sub_1E470A5CC();
  v14 = v2;
  v15 = a1;
  v16 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v10, v5);
}

void sub_1E466E5EC(uint64_t *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v169 = a3;
  v170 = a4;
  v163 = a2;
  v179 = a1;
  v6 = *v4;
  v7 = *(*v4 + 10);
  v176 = *(*v4 + 6);
  v8 = v176;
  v153 = type metadata accessor for ModelState();
  v148 = *(v153 - 8);
  v9 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v153, v10);
  v152 = &v138 - v11;
  v165 = *(&v176 + 1);
  v147 = type metadata accessor for ModelState.Source();
  v146 = *(v147 - 8);
  v12 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147, v13);
  v151 = &v138 - v14;
  v160 = sub_1E470AB3C();
  v159 = *(v160 - 8);
  v15 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160, v16);
  v158 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1E470AA2C();
  v155 = *(v156 - 8);
  v18 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156, v19);
  v154 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6[11];
  *&v177 = v7;
  *(&v177 + 1) = v21;
  v175 = v21;
  v178 = v176;
  v22 = type metadata accessor for CRDTModelFileSyncInfo();
  v162 = *(v22 - 8);
  v23 = *(v162 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v150 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v167 = &v138 - v28;
  swift_getWitnessTable();
  v164 = v22;
  v174 = sub_1E470ACBC();
  v166 = *(v174 - 8);
  v29 = *(v166 + 64);
  v31 = MEMORY[0x1EEE9AC00](v174, v30);
  v145 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v173 = &v138 - v35;
  v36 = *(v7 - 8);
  v37 = v36[8];
  v39 = MEMORY[0x1EEE9AC00](v34, v38);
  v41 = (&v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = (&v138 - v44);
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = (&v138 - v47);
  v168 = [v4[8] createTransactionWithName_];
  sub_1E466C11C(v48);
  v157 = v8;
  v49 = *(v8 + 8);
  v50 = v179;
  LOBYTE(v22) = sub_1E470AB9C();
  v171 = v36[1];
  v172 = v36 + 1;
  v171(v48, v7);
  v51 = *(*v4 + 25);
  v144 = v36;
  v54 = v36[2];
  v53 = v36 + 2;
  v52 = v54;
  if (v22)
  {
    v149 = v52;
    v52(v45, v50, v7);

    v142 = v51;
    v55 = sub_1E470A0BC();
    v56 = sub_1E470B2CC();

    v57 = os_log_type_enabled(v55, v56);
    v143 = v53;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v177 = v141;
      *v58 = 67109634;
      *(v58 + 4) = v163 & 1;
      *(v58 + 8) = 2080;
      LODWORD(v140) = v56;
      v59 = sub_1E470B81C();
      v61 = v60;
      v139 = v55;
      v62 = v171;
      v171(v45, v7);
      v63 = sub_1E4654D04(v59, v61, &v177);

      *(v58 + 10) = v63;
      *(v58 + 18) = 2080;
      sub_1E466C11C(v48);
      v64 = sub_1E470B81C();
      v66 = v65;
      v62(v48, v7);
      v67 = sub_1E4654D04(v64, v66, &v177);

      *(v58 + 20) = v67;
      v68 = v139;
      _os_log_impl(&dword_1E45E0000, v139, v140, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v58, 0x1Cu);
      v69 = v141;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v69, -1, -1);
      MEMORY[0x1E6917530](v58, -1, -1);
    }

    else
    {

      v171(v45, v7);
    }

    v85 = v48;
    v86 = v5 + *(*v5 + 24);
    swift_beginAccess();
    v88 = (v166 + 16);
    v87 = *(v166 + 16);
    v141 = v86;
    v140 = v87;
    v87(v173, v86, v174);
    v149(v85, v179, v7);
    v89 = v167;
    v139 = v85;
    v165 = v7;
    v90 = CRDTModelFileSyncInfo.init(model:)(v85, v7, v167);
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v138 - 2) = v89;
    v92 = v154;
    v93 = v156;
    v94 = v161;
    sub_1E470AC9C();
    (*(v155 + 8))(v92, v93);
    v95 = v5[12];
    v96 = v159;
    v97 = v158;
    v98 = v160;
    (*(v159 + 104))(v158, *MEMORY[0x1E6995288], v160);
    v99 = sub_1E470AC5C();
    if (v94)
    {

      (*(v96 + 8))(v97, v98);
      v101 = sub_1E470A0BC();
      v102 = sub_1E470B2AC();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        *&v177 = v179;
        *v103 = 136315138;
        v104 = v173;
        swift_beginAccess();
        v105 = v150;
        v106 = v174;
        LODWORD(v172) = v102;
        sub_1E470AC8C();
        v107 = v164;
        v108 = *(v164 + 16);
        v109 = *(v164 + 40);
        v110 = sub_1E470B81C();
        v112 = v111;
        v113 = v162;
        (*(v162 + 8))(v105, v107);
        v114 = sub_1E4654D04(v110, v112, &v177);

        *(v103 + 4) = v114;
        _os_log_impl(&dword_1E45E0000, v101, v172, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v103, 0xCu);
        v115 = v179;
        sub_1E4658A0C(v179);
        MEMORY[0x1E6917530](v115, -1, -1);
        MEMORY[0x1E6917530](v103, -1, -1);
      }

      else
      {

        v107 = v164;
        v113 = v162;
        v104 = v173;
        v106 = v174;
      }

      v120 = v165;
      v169();
      *&v121 = v120;
      *(&v121 + 1) = v175;
      v178 = v176;
      v177 = v121;
      type metadata accessor for CRDTModelFileSyncManager.SyncError();
      swift_getWitnessTable();
      swift_allocError();
      *v122 = 1;
      swift_willThrow();

      (*(v113 + 8))(v167, v107);
      (*(v166 + 8))(v104, v106);
    }

    else
    {
      v161 = v88;
      v175 = v99;
      *&v176 = v100;
      (*(v96 + 8))(v97, v98);
      if (v163)
      {
        v117 = v151;
        v118 = v165;
        v149(v151, v179, v165);
        v119 = 0;
      }

      else
      {
        v119 = 1;
        v117 = v151;
        v118 = v165;
      }

      v123 = v139;
      (v144[7])(v117, v119, 2, v118);
      v124 = v5[4];

      MutableObservableContainer.value.getter();

      v125 = v150;
      v126 = v173;
      sub_1E470AC8C();
      v149(v123, v125, v118);
      v179 = *(v162 + 8);
      (v179)(v125, v164);
      v127 = v117;
      v128 = v152;
      ModelState.updating(model:source:)(v123, v127, v153);
      v171(v123, v118);
      sub_1E466DC98(v128, 0x636E79735F71, 0xE600000000000000);
      sub_1E466DFC8(v126);
      v129 = v5[11];
      v130 = v145;
      v131 = v174;
      v140(v145, v141, v174);
      v132 = swift_allocObject();
      v133 = v169;
      v134 = v170;
      v132[2] = v5;
      v132[3] = v133;
      v135 = v168;
      v132[4] = v134;
      v132[5] = v135;

      v136 = v135;
      sub_1E46985FC(v130, sub_1E46721D4, v132);

      sub_1E465746C(v175, v176);

      v137 = *(v166 + 8);
      v137(v130, v131);
      (*(v148 + 8))(v128, v153);
      (*(v146 + 8))(v151, v147);
      (v179)(v167, v164);
      v137(v173, v131);
    }
  }

  else
  {
    v52(v41, v50, v7);

    v70 = sub_1E470A0BC();
    v71 = sub_1E470B2CC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *&v177 = v179;
      *v72 = 67109634;
      *(v72 + 4) = v163 & 1;
      *(v72 + 8) = 2080;
      LODWORD(v174) = v71;
      v73 = sub_1E470B81C();
      v74 = v7;
      v76 = v75;
      v173 = v70;
      v77 = v171;
      v171(v41, v74);
      v78 = sub_1E4654D04(v73, v76, &v177);

      *(v72 + 10) = v78;
      *(v72 + 18) = 2080;
      sub_1E466C11C(v48);
      v79 = sub_1E470B81C();
      v81 = v80;
      v77(v48, v74);
      v82 = sub_1E4654D04(v79, v81, &v177);
      v7 = v74;

      *(v72 + 20) = v82;
      v83 = v173;
      _os_log_impl(&dword_1E45E0000, v173, v174, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v72, 0x1Cu);
      v84 = v179;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v84, -1, -1);
      MEMORY[0x1E6917530](v72, -1, -1);
    }

    else
    {

      v171(v41, v7);
    }

    v169();
    *&v177 = v7;
    *(&v177 + 1) = v175;
    v178 = v176;
    type metadata accessor for CRDTModelFileSyncManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v116 = 0;
    swift_willThrow();
  }
}

uint64_t CRDTModelFileSyncManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v4 + 48);
  sub_1E470A5CC();
  v18 = v4;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  sub_1E4650534(&qword_1ECF74958, &qword_1E471BCD8);
  sub_1E470B36C();
  return (*(v10 + 8))(v14, v9);
}

void sub_1E466F894(uint64_t *a1@<X1>, char a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = sub_1E466C270();
  v12 = a2 & 1;
  if (v11)
  {
    sub_1E466E5EC(a1, v12, a3, a4);
    if (v5)
    {

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1E466F940(a1, v12, a3, a4);
    v13 = 0;
  }

  *a5 = v13;
}

uint64_t sub_1E466F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  HIDWORD(v28) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v28 - v11;
  v14 = v4 + *(v13 + 200);
  v15 = sub_1E470A0BC();
  v16 = sub_1E470B2CC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1E45E0000, v15, v16, "CRDTModelFileSyncManager q_enqueuePendingSync", v17, 2u);
    MEMORY[0x1E6917530](v17, -1, -1);
  }

  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = *(v7 + 88);
  *(v19 + 40) = *(v7 + 104);
  *(v19 + 48) = v5;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + v18 + v10) = BYTE4(v28) & 1;
  v20 = v19 + ((v18 + v10) & 0xFFFFFFFFFFFFFFF8);
  v21 = v30;
  *(v20 + 8) = v29;
  *(v20 + 16) = v21;
  swift_beginAccess();
  v22 = v5[9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[9] = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1E4693A54(0, v22[2] + 1, 1, v22);
    v5[9] = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1E4693A54((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = &v22[2 * v25];
  v26[4] = sub_1E4672320;
  v26[5] = v19;
  v5[9] = v22;
  return swift_endAccess();
}

void sub_1E466FC0C(uint64_t a1, uint64_t *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = a1 + *(*a1 + 200);
  v10 = sub_1E470A0BC();
  v11 = sub_1E470B2CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1E45E0000, v10, v11, "CRDTModelFileSyncManager q_enqueuePendingSync -- about to run", v12, 2u);
    MEMORY[0x1E6917530](v12, -1, -1);
  }

  sub_1E466E5EC(a2, a3 & 1, a4, a5);
}

uint64_t sub_1E466FD30()
{
  v24 = sub_1E470A61C();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v24, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E470A5DC();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v0 + 72);
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  v22 = v11;
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v0 + 48);
    v14 = (v22 + 32);
    v15 = (v1 + 8);
    v16 = (v6 + 8);
    do
    {
      v17 = swift_allocObject();
      v18 = *v14++;
      *(v17 + 16) = v18;

      sub_1E470A5CC();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1E467248C;
      *(v19 + 24) = v17;
      aBlock[4] = sub_1E466A228;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E63658;
      v20 = _Block_copy(aBlock);

      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v5, v10, v20);
      _Block_release(v20);

      (*v15)(v5, v24);
      (*v16)(v10, v23);

      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1E466FFEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1E470AC7C();
  v3 = *(v1 + *MEMORY[0x1E6995440]);
  swift_getWitnessTable();
  sub_1E470A72C();
  return v2(&v5, 0);
}

uint64_t sub_1E46700CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a1 + *(*a1 + 200);
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1E45E0000, v4, v5, "CRDTModelFileSyncManager q_sync: finished", v6, 2u);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v7 = sub_1E467019C();
  return a2(v7);
}

uint64_t sub_1E467019C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for CRDTModelSyncVersion();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + v2[25];
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    v13 = (*(v2[11] + 8))(v2[10]);
    v15 = sub_1E4654D04(v13, v14, v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelFileSyncManager: Model did sync %s", v11, 0xCu);
    sub_1E4658A0C(v12);
    MEMORY[0x1E6917530](v12, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v1[3];
    ObjectType = swift_getObjectType();
    v19 = v1[6];
    sub_1E470B37C();
    (*(v17 + 8))(v7, ObjectType, v17);
    swift_unknownObjectRelease();
    return sub_1E46721E0(v7);
  }

  return result;
}

uint64_t *CRDTModelFileSyncManager.deinit()
{
  v1 = *v0;
  sub_1E466A310((v0 + 2));
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[9];

  v7 = v0[11];

  v8 = *(*v0 + 192);
  v13 = *(v1 + 80);
  v14 = *(v1 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v9 = sub_1E470ACBC();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 200);
  v11 = sub_1E470A0DC();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t CRDTModelFileSyncManager.__deallocating_deinit()
{
  CRDTModelFileSyncManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1E46706AC(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v175 = a4;
  v176 = a3;
  v180 = a2;
  v200 = a1;
  v205 = *MEMORY[0x1E69E9840];
  v6 = *v4;
  v179 = sub_1E470A0DC();
  v187 = *(v179 - 8);
  v7 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v179, v8);
  v186 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E4709B9C();
  v197 = *(v185 - 8);
  v10 = *(v197 + 64);
  v12 = MEMORY[0x1EEE9AC00](v185, v11);
  v183 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v173 = &v165 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v196 = &v165 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v184 = &v165 - v21;
  v22 = type metadata accessor for CRDTModelSyncVersion();
  v23 = *(v22 - 8);
  v178 = (v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22 - 8, v25);
  v181 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v177 = &v165 - v29;
  v30 = v6[10];
  v199 = v6[11];
  v31 = v6[12];
  v32 = v6[13];
  v201 = v30;
  v202 = v199;
  v203 = v31;
  v204 = v32;
  v33 = v31;
  v34 = v32;
  v35 = type metadata accessor for CRDTModelFileSyncInfo();
  WitnessTable = swift_getWitnessTable();
  v195 = v35;
  v192 = sub_1E470ACBC();
  v198 = *(v192 - 8);
  v36 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v192, v37);
  v190 = &v165 - v38;
  v39 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v172 = &v165 - v42;
  v193 = v34;
  v194 = v33;
  v43 = type metadata accessor for ModelState.Source();
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v169 = &v165 - v47;
  v167 = *(v30 - 1);
  v48 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v46, v49);
  v166 = &v165 - v50;
  v191 = type metadata accessor for ModelState();
  v182 = *(v191 - 8);
  v51 = *(v182 + 64);
  v53 = MEMORY[0x1EEE9AC00](v191, v52);
  v188 = &v165 - v54;
  v189 = *(v35 - 8);
  v55 = *(v189 + 64);
  v57 = MEMORY[0x1EEE9AC00](v53, v56);
  v170 = &v165 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v59);
  v61 = &v165 - v60;
  v62 = sub_1E470B35C();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62, v65);
  v67 = &v165 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E470B33C();
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8, v70);
  v71 = sub_1E470A61C();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8, v73);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  (*(v63 + 104))(v67, *MEMORY[0x1E69E8098], v62);
  v5[6] = sub_1E470B39C();
  *(v5 + 80) = 0;
  v171 = *(*v5 + 200);
  v201 = 0;
  v202 = 0xE000000000000000;
  sub_1E470B5CC();

  v201 = 0xD000000000000012;
  v202 = 0x80000001E4718540;
  v168 = *(v199 + 8);
  v74 = v199;
  v75 = v168(v30);
  MEMORY[0x1E6915D10](v75);

  sub_1E470A0CC();
  v76 = v194;
  sub_1E470AA9C();
  v201 = v30;
  v202 = v74;
  v203 = v76;
  v204 = v193;
  *&v61[*(type metadata accessor for CRDTModelFileSyncInfo() + 52)] = MEMORY[0x1E69E7CC8];
  v77 = v200[3];
  v78 = v200[4];
  sub_1E465057C(v200, v77);
  v5[12] = (*(v78 + 8))(v77, v78);
  swift_beginAccess();
  v5[3] = v175;
  swift_unknownObjectWeakAssign();
  v79 = v180;
  v5[8] = v180;
  v80 = type metadata accessor for ObservableTransaction();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v5[7] = sub_1E4669F28(0xD000000000000034, 0x80000001E4718560, v79, v83);
  v84 = v167;
  v85 = v166;
  (*(v167 + 16))(v166, v61, v30);
  LOBYTE(v201) = 0;
  v86 = v169;
  (*(v84 + 56))(v169, 1, 2, v30);
  v87 = type metadata accessor for CRDTModelRevisionInfo();
  v88 = v172;
  (*(*(v87 - 8) + 56))(v172, 1, 1, v87);
  v89 = v188;
  ModelState.init(model:loaded:source:revisionInfo:)(v85, &v201, v86, v88, v30, v188);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  v5[4] = sub_1E466A1E0(v89);
  v90 = *(v189 + 16);
  v180 = v61;
  v90(v170, v61, v195);
  v91 = v190;
  sub_1E470ACCC();
  v92 = *(*v5 + 192);
  v93 = v198;
  v94 = v192;
  (*(v198 + 32))(v5 + v92, v91, v192);
  v95 = v5[12];
  swift_beginAccess();
  v96 = v95;
  sub_1E470AC6C();
  swift_endAccess();

  v97 = v5[12];
  v98 = *(v93 + 16);
  v176 = v92;
  v175 = v93 + 16;
  WitnessTable = v98;
  v98(v91, v5 + v92, v94);
  v99 = v178[7];
  v100 = v97;
  v101 = v177;
  sub_1E470ACAC();
  v102 = *(v93 + 8);
  v198 = v93 + 8;
  v178 = v102;
  (v102)(v91, v94);
  *v101 = v100;
  v103 = sub_1E4650534(&qword_1ECF74950, &qword_1E471BCD0);
  v104 = *(v103 + 48);
  v105 = *(v103 + 52);
  swift_allocObject();
  v106 = v181;
  sub_1E4672390(v101, v181);
  v107 = sub_1E4676038(v106);
  sub_1E46721E0(v101);
  v5[5] = v107;
  v108 = v200[3];
  v109 = v200[4];
  sub_1E465057C(v200, v108);
  v110 = *(v109 + 16);
  v111 = v184;
  v112 = v109;
  v113 = v197;
  v110(v108, v112);
  v181 = v30;
  v114 = v30;
  v115 = v179;
  v116 = (v168)(v114, v199);
  v117 = v185;
  v201 = v116;
  v202 = v118;
  MEMORY[0x1E6915D10](0x666E49636E79532DLL, 0xE90000000000006FLL);
  v119 = v111;
  sub_1E4709B6C();

  (*(v187 + 16))(v186, v171 + v5, v115);
  v120 = *(v113 + 16);
  v121 = v173;
  v172 = (v113 + 16);
  v171 = v120;
  v120();
  v122 = sub_1E470A0BC();
  v123 = sub_1E470B29C();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v201 = v125;
    *v124 = 136315138;
    sub_1E4672404();
    v126 = sub_1E470B81C();
    v127 = v121;
    v129 = v128;
    v177 = *(v113 + 8);
    (v177)(v127, v117);
    v130 = sub_1E4654D04(v126, v129, &v201);

    *(v124 + 4) = v130;
    _os_log_impl(&dword_1E45E0000, v122, v123, "CRDTModelFileSyncManager Init: modelFileURL: %s", v124, 0xCu);
    sub_1E4658A0C(v125);
    MEMORY[0x1E6917530](v125, -1, -1);
    v131 = v124;
    v119 = v184;
    MEMORY[0x1E6917530](v131, -1, -1);
  }

  else
  {

    v177 = *(v113 + 8);
    (v177)(v121, v117);
  }

  (*(v187 + 8))(v186, v115);
  v132 = [objc_opt_self() defaultManager];
  v133 = sub_1E4709B4C();
  v201 = 0;
  v134 = [v132 createDirectoryAtURL:v133 withIntermediateDirectories:1 attributes:0 error:&v201];

  if (v134)
  {
    v135 = v201;
  }

  else
  {
    v136 = v201;
    v137 = sub_1E4709B0C();

    swift_willThrow();
    sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1E471B800;
    v139 = sub_1E4709B1C();
    v141 = v140;
    v142 = MEMORY[0x1E69E6158];
    *(v138 + 56) = MEMORY[0x1E69E6158];
    v143 = sub_1E4663DE4();
    *(v138 + 64) = v143;
    *(v138 + 32) = v139;
    *(v138 + 40) = v141;
    swift_getErrorValue();
    v144 = sub_1E470B89C();
    *(v138 + 96) = v142;
    *(v138 + 104) = v143;
    *(v138 + 72) = v144;
    *(v138 + 80) = v145;
    sub_1E470A0AC();

    v117 = v185;
  }

  v146 = v195;
  v147 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v201 = v146;
  v202 = &protocol witness table for CRDTModelFileSyncInfo<A>;
  v203 = v147;
  v204 = v148;
  type metadata accessor for CRDTModelFileSyncTransport();
  v149 = v5[12];
  v150 = v190;
  v151 = v192;
  WitnessTable(v190, v5 + v176, v192);
  v152 = v183;
  v153 = v196;
  (v171)(v183, v196, v117);
  v154 = v149;
  v155 = sub_1E469CBA0(v154, v150, v152);
  (v178)(v150, v151);

  v5[11] = v155;
  v156 = v5[4];
  sub_1E466A268(v5[7], &protocol witness table for ObservableTransaction);
  v5[9] = MEMORY[0x1E69E7CC0];
  v157 = v5[11];
  v158 = swift_allocObject();
  swift_weakInit();
  v159 = swift_allocObject();
  v160 = v199;
  v159[2] = v181;
  v159[3] = v160;
  v161 = v193;
  v159[4] = v194;
  v159[5] = v161;
  v159[6] = v158;
  sub_1E46985D8(sub_1E46723F4, v159);

  v162 = v177;
  (v177)(v153, v117);
  v162(v119, v117);
  (*(v182 + 8))(v188, v191);
  (*(v189 + 8))(v180, v146);
  sub_1E4658A0C(v200);
  v163 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1E467191C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1E46706AC(a1, a2, a3, a4);
}

void sub_1E4671980()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1E466E5EC(v1, v2, nullsub_60, 0);
}

void sub_1E4671B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E4671EC0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4671BD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1E4671D0C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1E4671EC0()
{
  if (!qword_1EE2ACD50)
  {
    sub_1E470AC3C();
    v0 = sub_1E470AE9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACD50);
    }
  }
}

uint64_t sub_1E4671F28(uint64_t a1)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  result = sub_1E470ACBC();
  if (v2 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_1E470A0DC();
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E46720C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4672114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E467215C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E46721D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1E46700CC(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1E46721E0(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4672250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4672268(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = type metadata accessor for ModelState();
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

uint64_t sub_1E4672390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46723F4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1E466CBC4(a1);
}

unint64_t sub_1E4672404()
{
  result = qword_1ECF754D0;
  if (!qword_1ECF754D0)
  {
    sub_1E4709B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF754D0);
  }

  return result;
}

uint64_t sub_1E467245C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1E466CD30(v1);
}

uint64_t sub_1E46724D0(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF749A8, &unk_1E471C308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46735E0();
  sub_1E470B93C();
  v12 = *v3;
  v13 = v3[1];
  v16[15] = 0;
  sub_1E470B7BC();
  if (!v2)
  {
    v14 = *(type metadata accessor for BDSSyncEngineStateMetadata() + 20);
    v16[14] = 1;
    sub_1E470A53C();
    sub_1E4673764(&qword_1ECF749B0, MEMORY[0x1E695B6C8]);
    sub_1E470B7AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E4672688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = sub_1E4650534(&qword_1ECF74990, &qword_1E471C300);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for BDSSyncEngineStateMetadata();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 28);
  v21 = sub_1E470A53C();
  v22 = *(*(v21 - 8) + 56);
  v30 = v20;
  v22(v19 + v20, 1, 1, v21);
  v23 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46735E0();
  sub_1E470B92C();
  if (v2)
  {
    sub_1E4658A0C(a1);
    return sub_1E465E050(v19 + v30, &unk_1ECF752B0, &unk_1E471C280);
  }

  else
  {
    v24 = v28;
    v32 = 0;
    *v19 = sub_1E470B74C();
    v19[1] = v25;
    v31 = 1;
    sub_1E4673764(&qword_1ECF749A0, MEMORY[0x1E695B6C8]);
    sub_1E470B73C();
    (*(v24 + 8))(v13, v29);
    sub_1E4673634(v8, v19 + v30);
    sub_1E46736A4(v19, v27);
    sub_1E4658A0C(a1);
    return sub_1E4673708(v19);
  }
}

uint64_t sub_1E46729B8()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1E46729E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

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

uint64_t sub_1E4672AC0(uint64_t a1)
{
  v2 = sub_1E46735E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4672AFC(uint64_t a1)
{
  v2 = sub_1E46735E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4672B68()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF74960);
  sub_1E4665EC4(v0, qword_1ECF74960);
  return sub_1E470A0CC();
}

uint64_t sub_1E4672BE8@<X0>(uint64_t a1@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1E4709B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = [objc_opt_self() books];
  v14 = [v13 containerURL];

  sub_1E4709B7C();
  sub_1E4709B5C();
  (*(v3 + 8))(v7, v2);
  v25 = 1;
  sub_1E4709B8C();
  v15 = sub_1E470AF0C();

  LOBYTE(v7) = [v12 fileExistsAtPath:v15 isDirectory:&v25];

  if ((v7 & 1) == 0)
  {
    v16 = sub_1E4709B4C();
    v24 = 0;
    v17 = [v12 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v24];

    if (!v17)
    {
      v19 = v24;
      v20 = sub_1E4709B0C();

      swift_willThrow();
      goto LABEL_6;
    }

    v18 = v24;
  }

LABEL_6:
  (*(v3 + 32))(a1, v11, v2);
  result = (*(v3 + 56))(a1, 0, 1, v2);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4672EA0()
{
  v49[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v46 - v3;
  v5 = sub_1E4709B9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  sub_1E4672BE8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E465E050(v4, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E470A0DC();
    sub_1E4665EC4(v19, qword_1ECF74960);
    v20 = sub_1E470A0BC();
    v21 = sub_1E470B2AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E45E0000, v20, v21, "Could not get metadata. No BaseURL", v22, 2u);
      MEMORY[0x1E6917530](v22, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v18, v4, v5);
    v23 = [objc_opt_self() defaultManager];
    sub_1E4709B6C();
    sub_1E4709B8C();
    v24 = sub_1E470AF0C();

    v25 = [v23 fileExistsAtPath_];

    if (v25)
    {
      if (qword_1ECF740B8 != -1)
      {
        swift_once();
      }

      v26 = sub_1E470A0DC();
      sub_1E4665EC4(v26, qword_1ECF74960);
      (*(v6 + 16))(v10, v14, v5);
      v27 = sub_1E470A0BC();
      v28 = sub_1E470B2CC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v46 = v29;
        v47 = swift_slowAlloc();
        v49[0] = v47;
        *v29 = 136315138;
        sub_1E4673764(&qword_1ECF754D0, MEMORY[0x1E6968FB0]);
        v30 = sub_1E470B81C();
        v48 = v23;
        v32 = v31;
        v33 = *(v6 + 8);
        v33(v10, v5);
        v34 = sub_1E4654D04(v30, v32, v49);
        v23 = v48;

        v35 = v46;
        *(v46 + 1) = v34;
        v36 = v35;
        _os_log_impl(&dword_1E45E0000, v27, v28, "Removing sync engine metadata at: %s", v35, 0xCu);
        v37 = v47;
        sub_1E4658A0C(v47);
        MEMORY[0x1E6917530](v37, -1, -1);
        MEMORY[0x1E6917530](v36, -1, -1);
      }

      else
      {

        v33 = *(v6 + 8);
        v33(v10, v5);
      }

      v39 = sub_1E4709B4C();
      v49[0] = 0;
      v40 = [v23 removeItemAtURL:v39 error:v49];

      if (!v40)
      {
        v44 = v49[0];
        v45 = sub_1E4709B0C();

        swift_willThrow();
        v33(v14, v5);
        v33(v18, v5);
        result = v45;
        goto LABEL_17;
      }

      v41 = v49[0];

      v33(v14, v5);
      v33(v18, v5);
    }

    else
    {

      v38 = *(v6 + 8);
      v38(v14, v5);
      v38(v18, v5);
    }
  }

  result = 0;
LABEL_17:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for BDSSyncEngineStateMetadata()
{
  result = qword_1ECF74978;
  if (!qword_1ECF74978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E467350C()
{
  sub_1E4673588();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E4673588()
{
  if (!qword_1ECF74988)
  {
    sub_1E470A53C();
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF74988);
    }
  }
}

unint64_t sub_1E46735E0()
{
  result = qword_1ECF74998;
  if (!qword_1ECF74998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74998);
  }

  return result;
}

uint64_t sub_1E4673634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46736A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BDSSyncEngineStateMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4673708(uint64_t a1)
{
  v2 = type metadata accessor for BDSSyncEngineStateMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4673764(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E46737C0()
{
  result = qword_1ECF749B8;
  if (!qword_1ECF749B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749B8);
  }

  return result;
}

unint64_t sub_1E4673818()
{
  result = qword_1ECF749C0;
  if (!qword_1ECF749C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749C0);
  }

  return result;
}

unint64_t sub_1E4673870()
{
  result = qword_1ECF749C8;
  if (!qword_1ECF749C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749C8);
  }

  return result;
}

uint64_t ModelState.init(model:loaded:source:revisionInfo:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for ModelState();
  v13 = v12[13];
  v14 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  *(a6 + v12[11]) = v11;
  v15 = v12[12];
  v16 = type metadata accessor for ModelState.Source();
  (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);

  return sub_1E4673A4C(a4, a6 + v13);
}

uint64_t sub_1E4673A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ModelState.updating(model:source:revisionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ModelState.updating(model:source:)(a1, a2, a4);
  v7 = v4 + *(a4 + 52);

  return sub_1E465DEB8(a3, v7);
}

uint64_t ModelState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v26 - v7;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1E470B5CC();
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = sub_1E470B81C();
  v13 = v12;

  v26 = v11;
  v27 = v13;
  MEMORY[0x1E6915D10](0x646564616F6C202CLL, 0xE90000000000003DLL);
  v14 = *(a1 + 24);
  if (*(v2 + *(a1 + 44)))
  {
    v15 = 0x7964616572;
  }

  else
  {
    v15 = 0x676E6964616F6CLL;
  }

  if (*(v2 + *(a1 + 44)))
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  MEMORY[0x1E6915D10](v15, v16);

  MEMORY[0x1E6915D10](0x6F537473616C202CLL, 0xED00003D65637275);
  v17 = *(a1 + 48);
  v18 = type metadata accessor for ModelState.Source();
  v19 = ModelState.Source.description.getter(v18);
  MEMORY[0x1E6915D10](v19);

  MEMORY[0x1E6915D10](0x697369766572202CLL, 0xEF3D6F666E496E6FLL);
  sub_1E4674548(v2 + *(a1 + 52), v8);
  v20 = type metadata accessor for CRDTModelRevisionInfo();
  if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
  {
    sub_1E465E050(v8, &qword_1ECF74770, &unk_1E471C900);
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    v23 = CRDTModelRevisionInfo.description.getter();
    v21 = v24;
    sub_1E465DFF4(v8);
    v22 = v23;
  }

  MEMORY[0x1E6915D10](v22, v21);

  return v26;
}

uint64_t ModelState.updating(model:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 24))(v3, a1, *(a3 + 16));
  v6 = *(a3 + 48);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = type metadata accessor for ModelState.Source();
  v10 = *(*(v9 - 8) + 24);

  return v10(v3 + v6, a2, v9);
}

uint64_t ModelState.LoadedState.description.getter()
{
  if (*v0)
  {
    result = 0x7964616572;
  }

  else
  {
    result = 0x676E6964616F6CLL;
  }

  *v0;
  return result;
}

uint64_t ModelState.LoadedState.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4673F1C()
{
  sub_1E470B8FC();
  ModelState.LoadedState.hash(into:)();
  return sub_1E470B91C();
}

uint64_t static ModelState.Source.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v41 = v11;
  v42 = &v40 - v12;
  v13 = type metadata accessor for ModelState.Source();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v44 = &v40 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v19 = *(v47 + 64);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v20);
  v23 = &v40 - v22;
  v45 = v14;
  v46 = v21;
  v24 = *(v21 + 48);
  v25 = *(v14 + 16);
  v25(&v40 - v22, a1, v13);
  v25(&v23[v24], a2, v13);
  v26 = *(v6 + 48);
  v27 = a3;
  v28 = v26(v23, 2, a3);
  if (v28)
  {
    if (v28 == 1)
    {
      if (v26(&v23[v24], 2, a3) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v26(&v23[v24], 2, a3) == 2)
    {
LABEL_8:
      v30 = 1;
      v31 = v45;
      goto LABEL_10;
    }

LABEL_9:
    v30 = 0;
    v13 = v46;
    v31 = v47;
    goto LABEL_10;
  }

  v40 = v6;
  v29 = v44;
  v25(v44, v23, v13);
  if (v26(&v23[v24], 2, a3))
  {
    (*(v40 + 8))(v29, a3);
    goto LABEL_9;
  }

  v33 = v40;
  v34 = *(v40 + 32);
  v35 = v42;
  v34(v42, v29, v27);
  v36 = &v23[v24];
  v37 = v43;
  v34(v43, v36, v27);
  v38 = *(v41 + 8);
  if (sub_1E470AB9C())
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1E470AB9C() ^ 1;
  }

  v39 = *(v33 + 8);
  v39(v37, v27);
  v39(v35, v27);
  v31 = v45;
LABEL_10:
  (*(v31 + 8))(v23, v13);
  return v30 & 1;
}

uint64_t ModelState.Source.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, v2);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = (*(v5 + 48))(v13, 2, v4);
  if (v15)
  {
    if (v15 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    (*(v5 + 32))(v9, v13, v4);
    v20[0] = 0x2865746F6D6572;
    v20[1] = 0xE700000000000000;
    v17 = *(a1 + 32);
    v18 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v18);

    MEMORY[0x1E6915D10](41, 0xE100000000000000);
    v19 = v20[0];
    (*(v5 + 8))(v9, v4);
    return v19;
  }
}

uint64_t sub_1E4674548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46745B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  return static ModelState.Source.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t (*ModelState.loaded.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ModelState.lastSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for ModelState.Source();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t ModelState.lastSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = type metadata accessor for ModelState.Source();
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

uint64_t (*ModelState.lastSource.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*ModelState.revisionInfo.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 52);
  return result;
}

BOOL static ModelState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRDTModelRevisionInfo();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v31 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = (&v31 - v15);
  v17 = sub_1E4650534(&qword_1ECF749D0, &qword_1E471C430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - v20;
  v22 = type metadata accessor for ModelState();
  if (*(a1 + *(v22 + 44)) != *(a2 + *(v22 + 44)))
  {
    return 0;
  }

  v23 = v22;
  if ((static ModelState.Source.== infix(_:_:)(a1 + *(v22 + 48), a2 + *(v22 + 48), a3) & 1) == 0)
  {
    return 0;
  }

  v24 = *(a4 + 8);
  if (sub_1E470AB9C() & 1) != 0 || (sub_1E470AB9C())
  {
    return 0;
  }

  v25 = *(v23 + 52);
  v26 = *(v17 + 48);
  sub_1E4674548(a1 + v25, v21);
  sub_1E4674548(a2 + v25, &v21[v26]);
  v27 = *(v32 + 48);
  if (v27(v21, 1, v8) != 1)
  {
    sub_1E4674548(v21, v16);
    if (v27(&v21[v26], 1, v8) != 1)
    {
      v30 = v31;
      sub_1E465DF2C(&v21[v26], v31);
      v28 = _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(v16, v30);
      sub_1E465DFF4(v30);
      sub_1E465DFF4(v16);
      sub_1E465E050(v21, &qword_1ECF74770, &unk_1E471C900);
      return v28;
    }

    sub_1E465DFF4(v16);
    goto LABEL_10;
  }

  if (v27(&v21[v26], 1, v8) != 1)
  {
LABEL_10:
    sub_1E465E050(v21, &qword_1ECF749D0, &qword_1E471C430);
    return 0;
  }

  sub_1E465E050(v21, &qword_1ECF74770, &unk_1E471C900);
  return 1;
}

void sub_1E4674B40(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    v5 = a1[4];
    type metadata accessor for ModelState.LoadedState();
    if (v6 <= 0x3F)
    {
      type metadata accessor for ModelState.Source();
      if (v7 <= 0x3F)
      {
        sub_1E46755C4();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4674C20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 - 2;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(sub_1E4709CCC() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v9 > v14)
  {
    v14 = v9;
  }

  v15 = *(v6 + 64);
  v16 = v15;
  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v18 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 + v15;
  }

  if (v11)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = v22 | 7;
  if (a2 > v14)
  {
    v24 = v20 + *(v10 + 64) - ((-33 - v22) | v22) - ((((-2 - v15 - v21) | v21) - (v16 + v23)) | v23);
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_31;
    }

    v27 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v27 <= 0xFF)
      {
        if (v27 < 2)
        {
          goto LABEL_51;
        }

LABEL_31:
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_51;
        }

LABEL_38:
        v28 = (v26 - 1) << v25;
        if (v24 > 3)
        {
          v28 = 0;
        }

        if (v24)
        {
          if (v24 <= 3)
          {
            v29 = v24;
          }

          else
          {
            v29 = 4;
          }

          if (v29 > 2)
          {
            if (v29 == 3)
            {
              v30 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v30 = *a1;
            }
          }

          else if (v29 == 1)
          {
            v30 = *a1;
          }

          else
          {
            v30 = *a1;
          }
        }

        else
        {
          v30 = 0;
        }

        return v14 + (v30 | v28) + 1;
      }

      v26 = *(a1 + v24);
      if (*(a1 + v24))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_51:
  if (v7 == v14)
  {
    v31 = *(v6 + 48);

    return v31(a1, v7, v5);
  }

  v33 = (a1 + v15 + v21 + 1) & ~v21;
  if (v8 == v14)
  {
    if (v7)
    {
      v34 = (*(v6 + 48))(v33, v7, v5);
      v35 = v34 >= 2;
      result = v34 - 2;
      if (result != 0 && v35)
      {
        return result;
      }
    }

    return 0;
  }

  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v37 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      v38 = 1;
      if (v37 >= 0xFF)
      {
        v38 = 2;
      }

      if (!v37)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFE)
      {
        v36 = v38;
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 1;
    }

    v15 += v36;
  }

  if (v12 > 0x7FFFFFFE)
  {
    v40 = (*(v10 + 48))((v22 + ((((v23 + v33 + v15) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22);
    LODWORD(v39) = v40 - 1;
  }

  else
  {
    v39 = *(((v23 + v33 + v15) & ~v23) + 8);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    v40 = v39 + 1;
  }

  if (v40 < 2)
  {
    LODWORD(v39) = 0;
  }

  if (v39 >= 2)
  {
    return (v39 - 1);
  }

  else
  {
    return 0;
  }
}

void sub_1E4675010(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v52 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - 2;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(sub_1E4709CCC() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v11 <= v16 - 1)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v21 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v22 = 1;
      if (v21 >= 0xFF)
      {
        v22 = 2;
      }

      if (!v21)
      {
        v22 = 0;
      }

      if (v21 <= 0xFFFE)
      {
        v20 = v22;
      }

      else
      {
        v20 = 4;
      }
    }

    else
    {
      v20 = 1;
    }

    v19 = v20 + v14;
  }

  v23 = *(v12 + 80);
  v24 = (v19 + (v23 | 7) + ((v14 + v18 + 1) & ~v18)) & ~(v23 | 7);
  v25 = *(v12 + 64);
  if (!v13)
  {
    ++v25;
  }

  v26 = ((v23 + 32) & ~v23) + v25;
  v27 = v24 + v26;
  if (a3 <= v17)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_81;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v27)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
LABEL_36:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

LABEL_81:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v9 == v17)
  {
    v34 = *(v52 + 56);
    v35 = a1;
    v36 = a2;
LABEL_59:

    v34(v35, v36, v9, v7);
    return;
  }

  v37 = &a1[v14 + 1 + v18] & ~v18;
  if (v10 == v17)
  {
    if (a2 + 2 <= v9)
    {
      if (a2 == -2)
      {
        return;
      }

      v34 = *(v52 + 56);
      v35 = v37;
      v36 = (a2 + 2);
      goto LABEL_59;
    }

    if (v14 <= 3)
    {
      v38 = ~(-1 << (8 * v14));
    }

    else
    {
      v38 = -1;
    }

    if (!v14)
    {
      return;
    }

    v39 = v38 & (a2 - v9 + 1);
    if (v14 <= 3)
    {
      v40 = v14;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
LABEL_115:
    bzero(v41, v14);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        *(v37 + 2) = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v43 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v44 = 1;
      if (v43 >= 0xFF)
      {
        v44 = 2;
      }

      if (!v43)
      {
        v44 = 0;
      }

      if (v43 <= 0xFFFE)
      {
        v42 = v44;
      }

      else
      {
        v42 = 4;
      }
    }

    else
    {
      v42 = 1;
    }

    v14 += v42;
  }

  v37 = ((v23 | 7) + v37 + v14) & ~(v23 | 7);
  if (v16 - 1 < a2)
  {
    if (v26 <= 3)
    {
      v45 = ~(-1 << (8 * v26));
    }

    else
    {
      v45 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v45 & (a2 - v16);
LABEL_111:
    if (v26 <= 3)
    {
      v40 = v26;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v26;
    goto LABEL_115;
  }

  v46 = a2 >= v16;
  v47 = a2 - v16;
  if (v46)
  {
    if (v26 <= 3)
    {
      v48 = ~(-1 << (8 * v26));
    }

    else
    {
      v48 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v48 & v47;
    goto LABEL_111;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFD)
    {
      *v37 = 0;
      *(v37 + 8) = 0;
      *v37 = a2 - 2147483646;
    }

    else
    {
      *(v37 + 8) = (a2 + 1);
    }

    return;
  }

  v37 = (v23 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v49 = a2 - v15;
  if (a2 >= v15)
  {
    if (v25 <= 3)
    {
      v51 = ~(-1 << (8 * v25));
    }

    else
    {
      v51 = -1;
    }

    if (!v25)
    {
      return;
    }

    v39 = v51 & v49;
    if (v25 <= 3)
    {
      v40 = v25;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v25;
    goto LABEL_115;
  }

  v50 = *(v12 + 56);

  v50(v37, (a2 + 2));
}

void sub_1E46755C4()
{
  if (!qword_1EE2AD7C0)
  {
    type metadata accessor for CRDTModelRevisionInfo();
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2AD7C0);
    }
  }
}

uint64_t sub_1E467561C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1E4675678(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 2;
  result = v18 - 2;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void sub_1E4675848(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 2;
  v10 = v8;
  if (v7 <= 1)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 2 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 1);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

uint64_t sub_1E4675B48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74A18, &qword_1E471C930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24[-v7];
  v9 = type metadata accessor for CRDTModelSyncVersion();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v24[-v16];
  v18 = *(*v1 + 120);
  swift_beginAccess();
  sub_1E4672390(v1 + v18, v17);
  swift_beginAccess();
  sub_1E467A318(a1, v1 + v18);
  swift_endAccess();
  sub_1E4672390(v1 + v18, v14);
  sub_1E45E2DE8(0, &qword_1EE2ACCC0, 0x1E69E58C0);
  v19 = *v17;
  v20 = *v14;
  if (sub_1E470B42C() & 1) != 0 && (v21 = *(v9 + 20), (sub_1E470ADDC()))
  {
    sub_1E467A37C(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1E467A37C(v14, type metadata accessor for CRDTModelSyncVersion);
  }

  else
  {
    sub_1E467A37C(v14, type metadata accessor for CRDTModelSyncVersion);
    v22 = *(sub_1E4650534(&qword_1ECF74A20, &qword_1E471C938) + 48);
    sub_1E4672390(v17, v8);
    sub_1E4672390(v2 + v18, &v8[v22]);
    swift_storeEnumTagMultiPayload();
    sub_1E4676A38(v8);
    sub_1E467A37C(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1E465E050(v8, &qword_1ECF74A18, &qword_1E471C930);
  }

  return sub_1E467A37C(v17, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1E4675DD8(uint64_t a1)
{
  v3 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24[-v6];
  v8 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24[-v15];
  v17 = *(*v1 + 120);
  swift_beginAccess();
  sub_1E465E0B0(v1 + v17, v16, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_beginAccess();
  sub_1E467A194(a1, v1 + v17);
  swift_endAccess();
  sub_1E465E0B0(v1 + v17, v12, &qword_1ECF74A00, &unk_1E471D5B0);
  v18 = sub_1E4677E30(v16, v12);
  sub_1E465E050(v12, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v18)
  {
    v19 = &qword_1ECF74A00;
    v20 = &unk_1E471D5B0;
    v21 = a1;
  }

  else
  {
    v22 = *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
    sub_1E465E0B0(v16, v7, &qword_1ECF74A00, &unk_1E471D5B0);
    sub_1E465E0B0(v1 + v17, &v7[v22], &qword_1ECF74A00, &unk_1E471D5B0);
    swift_storeEnumTagMultiPayload();
    sub_1E46772AC(v7);
    sub_1E465E050(a1, &qword_1ECF74A00, &unk_1E471D5B0);
    v19 = &qword_1ECF74D90;
    v20 = &unk_1E471C8F0;
    v21 = v7;
  }

  sub_1E465E050(v21, v19, v20);
  return sub_1E465E050(v16, &qword_1ECF74A00, &unk_1E471D5B0);
}

void *sub_1E4676038(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1E470B35C();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470B33C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1E470A61C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v14 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v21[1] = " = %{public}@";
  v21[2] = v14;
  sub_1E470A5FC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v15 = *(v3 + 104);
  v16 = v22;
  v15(v7, *MEMORY[0x1E69E8090], v22);
  v1[2] = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v15(v7, *MEMORY[0x1E69E8098], v16);
  v17 = sub_1E470B39C();
  v18 = MEMORY[0x1E69E7CC8];
  v1[3] = v17;
  v1[4] = v18;
  v19 = v2 + *(*v2 + 128);
  *(v19 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v19 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E467A3DC(v23, v2 + *(*v2 + 120), type metadata accessor for CRDTModelSyncVersion);
  return v2;
}

uint64_t sub_1E46763A0(uint64_t a1, int a2, double a3)
{
  v25 = a2;
  v24 = a1;
  v23 = sub_1E470B35C();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v23, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470B33C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = sub_1E470A61C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v16 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v22[0] = " = %{public}@";
  v22[1] = v16;
  sub_1E470A5FC();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v17 = *(v5 + 104);
  v18 = v23;
  v17(v9, *MEMORY[0x1E69E8090], v23);
  *(v3 + 16) = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v17(v9, *MEMORY[0x1E69E8098], v18);
  v19 = sub_1E470B39C();
  v20 = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v19;
  *(v3 + 32) = v20;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 40) = v24;
  *(v3 + 48) = a3;
  *(v3 + 56) = v25;
  return v3;
}

void *sub_1E46766E4(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1E470B35C();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470B33C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1E470A61C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v14 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v21[1] = " = %{public}@";
  v21[2] = v14;
  sub_1E470A5FC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E467A258(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v15 = *(v3 + 104);
  v16 = v22;
  v15(v7, *MEMORY[0x1E69E8090], v22);
  v1[2] = sub_1E470B39C();
  sub_1E470A60C();
  sub_1E470B32C();
  v15(v7, *MEMORY[0x1E69E8098], v16);
  v17 = sub_1E470B39C();
  v18 = MEMORY[0x1E69E7CC8];
  v1[3] = v17;
  v1[4] = v18;
  v19 = v2 + *(*v2 + 128);
  *(v19 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v19 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E467A2A0(v23, v2 + *(*v2 + 120));
  return v2;
}

uint64_t sub_1E4676A38(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1E470A61C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = v1[3];
  sub_1E470A5CC();
  v37 = nullsub_60;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v29 = &v35;
  v35 = sub_1E46C4624;
  v36 = &unk_1F5E63F40;
  v19 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v19);
  _Block_release(v19);
  v20 = *(v4 + 8);
  v27 = v4 + 8;
  v31 = v20;
  v20(v8, v3);
  v30 = *(v10 + 8);
  v30(v14, v9);
  v21 = swift_beginAccess();
  v28 = v3;
  v22 = v2[4];
  MEMORY[0x1EEE9AC00](v21, v23);
  *(&v27 - 2) = v32;

  sub_1E46776AC(sub_1E467A480, (&v27 - 4), v22);

  sub_1E470A5CC();
  v24 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1E467A474;
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1E46C4624;
  v36 = &unk_1F5E63F90;
  v25 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v25);
  _Block_release(v25);
  v31(v8, v28);
  v30(v14, v9);
}

uint64_t sub_1E4676E38(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1E470A61C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A5DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v11;
    v17 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 8);
    v20 = v17;
    v11 = v16;
    v19(v1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  v21 = *(v1 + 24);
  sub_1E470A5CC();
  *&v52[16] = nullsub_60;
  *&v52[24] = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v52 = sub_1E46C4624;
  *&v52[8] = &unk_1F5E63E50;
  v22 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  v45 = v21;
  MEMORY[0x1E69160A0](0, v9, v15, v22);
  _Block_release(v22);
  v23 = *(v5 + 8);
  v48 = v9;
  v49 = v5 + 8;
  v50 = v4;
  v44 = v23;
  v23(v9, v4);
  v24 = *(v11 + 8);
  v46 = v11 + 8;
  v47 = v10;
  v43 = v24;
  v24(v15, v10);
  swift_beginAccess();
  v25 = *(v2 + 32);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = *(v2 + 32);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v28; result = )
  {
    v33 = i;
LABEL_11:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = *(v25 + 56) + ((v33 << 10) | (16 * v34));
    v37 = *v35;
    v36 = *(v35 + 8);
    v38 = a1[1];
    aBlock = *a1;
    *v52 = v38;
    *&v52[10] = *(a1 + 26);

    v37(&aBlock);
  }

  while (1)
  {
    v33 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      sub_1E470A5CC();
      v39 = swift_allocObject();
      swift_weakInit();
      *&v52[16] = sub_1E467A310;
      *&v52[24] = v39;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *v52 = sub_1E46C4624;
      *&v52[8] = &unk_1F5E63EA0;
      v40 = _Block_copy(&aBlock);

      v41 = v48;
      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v41, v15, v40);
      _Block_release(v40);
      v44(v41, v50);
      v43(v15, v47);
    }

    v28 = *(v25 + 64 + 8 * v33);
    ++i;
    if (v28)
    {
      i = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46772AC(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_1E470A61C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = v1[3];
  sub_1E470A5CC();
  v37 = nullsub_60;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v29 = &v35;
  v35 = sub_1E46C4624;
  v36 = &unk_1F5E63DD8;
  v19 = _Block_copy(&aBlock);
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v19);
  _Block_release(v19);
  v20 = *(v4 + 8);
  v27 = v4 + 8;
  v31 = v20;
  v20(v8, v3);
  v30 = *(v10 + 8);
  v30(v14, v9);
  v21 = swift_beginAccess();
  v28 = v3;
  v22 = v2[4];
  MEMORY[0x1EEE9AC00](v21, v23);
  *(&v27 - 2) = v32;

  sub_1E46776AC(sub_1E467A204, (&v27 - 4), v22);

  sub_1E470A5CC();
  v24 = swift_allocObject();
  swift_weakInit();
  v37 = sub_1E467A23C;
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1E46C4624;
  v36 = &unk_1F5E63E28;
  v25 = _Block_copy(&aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v8, v14, v25);
  _Block_release(v25);
  v31(v8, v28);
  v30(v14, v9);
}

uint64_t sub_1E46776AC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E46777E0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E46778D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E46779A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4677A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1E4672390(a1 + v4, a2);
}

uint64_t sub_1E4677B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1E465E0B0(a1 + v4, a2, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t sub_1E4677B80(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRDTModelSyncVersion();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*a3 + 120);
  swift_beginAccess();
  sub_1E4672390(a3 + v10, v9);
  a1(v9);
  return sub_1E4675B48(v9);
}

uint64_t sub_1E4677C50(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  v14 = *(a3 + 40);
  v15 = v5;
  v16 = v6;
  result = a1(&v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = *(a3 + 40);
  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  *(a3 + 40) = v14;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  if (v11 != v8 || v12 != v9)
  {
    goto LABEL_8;
  }

  if (v13 == 3)
  {
    if (v10 == 3)
    {
      return result;
    }

LABEL_8:
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = v13;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = 1;
    return sub_1E4676E38(&v17);
  }

  if (v10 == 3 || v13 != v10)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1E4677D40(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v12 - v8;
  v10 = *(*a3 + 120);
  swift_beginAccess();
  sub_1E465E0B0(a3 + v10, v9, &qword_1ECF74A00, &unk_1E471D5B0);
  a1(v9);
  return sub_1E4675DD8(v9);
}

BOOL sub_1E4677E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v62 = (&v56 - v12);
  v63 = sub_1E4650534(&qword_1ECF749D0, &qword_1E471C430);
  v13 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63, v14);
  v16 = &v56 - v15;
  v65 = type metadata accessor for ReadingHistoryModel(0);
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v56 - v23;
  v25 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v29 = &v56 - v28;
  v30 = sub_1E4650534(&qword_1ECF74A10, &qword_1E471C918);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v56 - v33;
  v35 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  if (*(a1 + *(v35 + 44)) != *(a2 + *(v35 + 44)))
  {
    return 0;
  }

  v58 = v4;
  v59 = v16;
  v57 = v8;
  v60 = v35;
  v36 = *(v35 + 48);
  v37 = *(v30 + 48);
  sub_1E465E0B0(a1 + v36, v34, &unk_1ECF74C60, &qword_1E471C910);
  v61 = a2;
  sub_1E465E0B0(a2 + v36, &v34[v37], &unk_1ECF74C60, &qword_1E471C910);
  v38 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v39 = *(*(v38 - 8) + 48);
  v40 = v39(v34, 2, v38);
  if (v40)
  {
    if (v40 == 1)
    {
      if (v39(&v34[v37], 2, v38) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v39(&v34[v37], 2, v38) == 2)
    {
LABEL_9:
      sub_1E465E050(v34, &unk_1ECF74C60, &qword_1E471C910);
      goto LABEL_10;
    }

LABEL_15:
    v48 = &qword_1ECF74A10;
    v49 = &qword_1E471C918;
LABEL_16:
    v50 = v34;
LABEL_17:
    sub_1E465E050(v50, v48, v49);
    return 0;
  }

  sub_1E465E0B0(v34, v29, &unk_1ECF74C60, &qword_1E471C910);
  if (v39(&v34[v37], 2, v38))
  {
    sub_1E467A37C(v29, type metadata accessor for ReadingHistoryModel);
    goto LABEL_15;
  }

  sub_1E467A3DC(v29, v24, type metadata accessor for ReadingHistoryModel);
  sub_1E467A3DC(&v34[v37], v20, type metadata accessor for ReadingHistoryModel);
  sub_1E467A258(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel);
  if (sub_1E470AB9C())
  {
    sub_1E467A37C(v20, type metadata accessor for ReadingHistoryModel);
    sub_1E467A37C(v24, type metadata accessor for ReadingHistoryModel);
    v48 = &unk_1ECF74C60;
    v49 = &qword_1E471C910;
    goto LABEL_16;
  }

  v52 = sub_1E470AB9C();
  sub_1E467A37C(v20, type metadata accessor for ReadingHistoryModel);
  sub_1E467A37C(v24, type metadata accessor for ReadingHistoryModel);
  sub_1E465E050(v34, &unk_1ECF74C60, &qword_1E471C910);
  if (v52)
  {
    return 0;
  }

LABEL_10:
  sub_1E467A258(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel);
  v41 = v61;
  if (sub_1E470AB9C() & 1) != 0 || (sub_1E470AB9C())
  {
    return 0;
  }

  v42 = *(v60 + 52);
  v43 = *(v63 + 48);
  v44 = v59;
  sub_1E465E0B0(a1 + v42, v59, &qword_1ECF74770, &unk_1E471C900);
  sub_1E465E0B0(v41 + v42, v44 + v43, &qword_1ECF74770, &unk_1E471C900);
  v45 = *(v64 + 48);
  v46 = v58;
  if (v45(v44, 1, v58) != 1)
  {
    v53 = v62;
    sub_1E465E0B0(v44, v62, &qword_1ECF74770, &unk_1E471C900);
    if (v45(v44 + v43, 1, v46) != 1)
    {
      v54 = v44 + v43;
      v55 = v57;
      sub_1E467A3DC(v54, v57, type metadata accessor for CRDTModelRevisionInfo);
      v47 = _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(v53, v55);
      sub_1E467A37C(v55, type metadata accessor for CRDTModelRevisionInfo);
      sub_1E467A37C(v53, type metadata accessor for CRDTModelRevisionInfo);
      sub_1E465E050(v44, &qword_1ECF74770, &unk_1E471C900);
      return v47;
    }

    sub_1E467A37C(v53, type metadata accessor for CRDTModelRevisionInfo);
    goto LABEL_26;
  }

  if (v45(v44 + v43, 1, v46) != 1)
  {
LABEL_26:
    v48 = &qword_1ECF749D0;
    v49 = &qword_1E471C430;
    v50 = v44;
    goto LABEL_17;
  }

  sub_1E465E050(v44, &qword_1ECF74770, &unk_1E471C900);
  return 1;
}

BookDataStore::ReadingGoals::State __swiftcall ReadingGoals.State.init(booksFinishedGoal:streakDayGoal:)(Swift::Int booksFinishedGoal, Swift::Double streakDayGoal)
{
  *v2 = booksFinishedGoal;
  *(v2 + 8) = streakDayGoal;
  result.streakDayGoal = streakDayGoal;
  result.booksFinishedGoal = booksFinishedGoal;
  return result;
}

BOOL ReadingGoals.State.isDefaultDailyReadingGoal.getter()
{
  v1 = *(v0 + 8);
  if (qword_1EE2AE440 != -1)
  {
    swift_once();
  }

  return v1 == *&qword_1EE2AE450;
}

BOOL ReadingGoals.State.isDefaultYearlyReadingGoal.getter()
{
  v1 = *v0;
  if (qword_1EE2AE440 != -1)
  {
    swift_once();
  }

  return v1 == qword_1EE2AE448;
}

BookDataStore::ReadingGoals::Goal_optional __swiftcall ReadingGoals.Goal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = BookDataStore_ReadingGoals_Goal_dailyReading;
  }

  else
  {
    v1.value = BookDataStore_ReadingGoals_Goal_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1E4678720@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL static ReadingGoals.StateChange.Source.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t ReadingGoals.StateChange.ChangeOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

double ReadingGoals.StateChange.state.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double ReadingGoals.StateChange.init(state:source:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 8);
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  return result;
}

uint64_t ReadingGoalsController.observable.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

double ReadingGoalsController.state.getter@<D0>(double *a1@<X8>)
{
  v3 = *(*(v1 + 56) + 16);
  sub_1E470B37C();
  result = v6;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t ReadingGoalsController.__allocating_init(dataSource:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ReadingGoalsController.init(dataSource:)(a1);
  return v2;
}

uint64_t ReadingGoalsController.init(dataSource:)(uint64_t *a1)
{
  v2 = v1;
  sub_1E4658550(a1, (v1 + 2));
  v4 = a1[3];
  v5 = a1[4];
  sub_1E465057C(a1, v4);
  (*(v5 + 8))(&aBlock, v4, v5);
  v6 = aBlock;
  v7 = *&v38;
  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  sub_1E470A0AC();
  sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  swift_allocObject();
  v2[7] = sub_1E46763A0(v6, 2, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v9 = v2[5];
  v10 = v2[6];
  sub_1E4679A94((v2 + 2), v9);
  v11 = *(v10 + 24);

  v11(sub_1E4679A8C, v8, v9, v10);
  swift_endAccess();

  v12 = *(v2[7] + 16);
  sub_1E470B37C();
  v13 = aBlock;
  v14 = *&v38;
  v15 = a1[3];
  v16 = a1[4];
  sub_1E465057C(a1, v15);
  (*(v16 + 8))(v43, v15, v16);
  if (v13 == v43[0] && v14 == *&v43[1])
  {
    goto LABEL_6;
  }

  sub_1E470B2CC();
  sub_1E470A0AC();
  v17 = v2[5];
  v18 = v2[6];
  v19 = sub_1E465057C(v2 + 2, v17);
  v20 = *(v17 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v19);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, v22);
  (*(v18 + 8))(&aBlock, v17, v18);
  v25 = (*(v20 + 8))(v24, v17);
  v26 = v2[7];
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v35[2] = v29;
  *&v35[3] = v28;
  v30 = *(v26 + 16);
  v31 = swift_allocObject();
  v31[2] = sub_1E4679AE4;
  v31[3] = v35;
  v31[4] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1E4679B00;
  *(v32 + 24) = v31;
  v41 = sub_1E465DE98;
  v42 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1E46679F4;
  v40 = &unk_1F5E638C0;
  v33 = _Block_copy(&aBlock);

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
LABEL_6:
    sub_1E4658A0C(a1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4678E64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    sub_1E470A0AC();
    swift_beginAccess();
    v2 = v1[5];
    v3 = v1[6];
    v4 = sub_1E465057C(v1 + 2, v2);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4, v4);
    v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    (*(v3 + 8))(aBlock, v2, v3);
    v9 = (*(v5 + 8))(v8, v2);
    v10 = v1[7];
    v12 = MEMORY[0x1EEE9AC00](v9, v11);
    v18[2] = v13;
    *&v18[3] = v12;
    v14 = *(v10 + 16);
    v15 = swift_allocObject();
    v15[2] = sub_1E467A47C;
    v15[3] = v18;
    v15[4] = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1E467A4D8;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1E467A478;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46679F4;
    aBlock[3] = &unk_1F5E63F18;
    v17 = _Block_copy(aBlock);

    dispatch_sync(v14, v17);
    _Block_release(v17);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }
  }

  return result;
}