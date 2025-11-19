void sub_1ABC9A6F0()
{
  sub_1ABA7BCA8();
  v118 = v2;
  v119 = v3;
  v122 = v4;
  v117 = v5;
  v114 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v125 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v12;
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v113 = v12 + 16;
  sub_1ABA7D028();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v124 = (v15 + 16);
  sub_1ABA7D028();
  v121 = swift_allocObject();
  sub_1ABAA565C(v121);
  v108 = v16;
  sub_1ABA7D028();
  v120 = swift_allocObject();
  sub_1ABAA565C(v120);
  v112 = v17;
  sub_1ABA7D028();
  v131 = swift_allocObject();
  sub_1ABAA565C(v131);
  v126 = v18;
  sub_1ABA7D028();
  v123 = swift_allocObject();
  sub_1ABAA565C(v123);
  v109 = v19;
  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABAA565C(v20);
  v115 = v21;
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v22 + 16) = v13;
  v110 = (v22 + 16);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABAA565C(v23);
  v111 = v24;
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABAA565C(v25);
  v116 = v26;
  v27 = swift_allocObject();
  v27[2] = v118;
  v27[3] = v119;
  v27[4] = v14;
  v27[5] = v122;
  v27[6] = v15;
  v27[7] = v121;
  v27[8] = v120;
  v27[9] = v131;
  v27[10] = v123;
  v27[11] = v20;
  v27[12] = v1;
  v27[13] = v23;
  v27[14] = v25;

  sub_1ABD1B700();
  v117();
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    sub_1ABA8A740();
    v28 = *v115;
    v29 = *(*v115 + 16);
    if (v29)
    {

      v30 = MEMORY[0x1E69E7CC0];
      v31 = 32;
      v32 = v125;
      v33 = v126;
      do
      {
        sub_1ABD1B924(v28 + v31);
        if (v130)
        {
          sub_1ABAA0AB0(v130);
          sub_1ABD1B9E4();
          v34 = v128;
          if (v128 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = *(v30 + 16);
              sub_1ABA7BEF0();
              sub_1ABADADEC();
              v30 = v39;
            }

            v36 = *(v30 + 16);
            v35 = *(v30 + 24);
            v37 = v30;
            if (v36 >= v35 >> 1)
            {
              sub_1ABA7BBEC(v35);
              sub_1ABADADEC();
              v37 = v40;
            }

            *(v37 + 16) = v36 + 1;
            v30 = v37;
            *(v37 + v36 + 32) = v34;
            v33 = v126;
          }
        }

        v31 += 8;
        --v29;
      }

      while (v29);
      v41 = v112;
      v107 = v30;
    }

    else
    {
      v107 = MEMORY[0x1E69E7CC0];
      v32 = v125;
      v33 = v126;
      v41 = v112;
    }

    sub_1ABA8A740();
    v48 = *v116;
    v49 = *(*v116 + 16);
    v50 = v124;
    if (v49)
    {
      v51 = *v116;

      v52 = MEMORY[0x1E69E7CC0];
      v53 = 32;
      do
      {
        sub_1ABD1B924(v48 + v53);
        if (v130)
        {
          sub_1ABAA0AB0(v130);
          TransportationActivityEventType.init(modeOfTransportationEntityClass:)(&v129, v127);
          v54 = v127[0];
          if (v127[0] != 8)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADB354();
              v52 = v57;
            }

            v56 = *(v52 + 16);
            v55 = *(v52 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1ABA7BBEC(v55);
              sub_1ABA9ECC4();
              sub_1ABADB354();
              v52 = v58;
            }

            *(v52 + 16) = v56 + 1;
            *(v52 + v56 + 32) = v54;
            v50 = v124;
            v32 = v125;
          }
        }

        v53 += 8;
        --v49;
      }

      while (v49);
      v41 = v112;

      v33 = v126;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABC4AA3C(v106, v42, v43, v44, v45, v46, v47);
    *v114 = v129;
    sub_1ABD1B058();
    v59 = sub_1ABD1C284();
    v114[1] = v113;
    v114[2] = v59;
    v114[3] = v60;
    sub_1ABD1B0E8();
    v61 = *v50;
    sub_1ABD1AF20();
    v65 = sub_1ABA9DFB8(v32, v62, v63, v64);
    v66 = type metadata accessor for CustomGraphTransportationActivityEvent(v65);
    v67 = v66[6];

    sub_1ABC8B318(v68, v32, (v114 + v67));
    sub_1ABD1B058();
    *(v114 + v66[7]) = *v108;
    sub_1ABAA9068();
    *(v114 + v66[8]) = *v41;
    sub_1ABD1B1F4();
    if (*(*v33 + 16))
    {
      v69 = *(*v33 + 32);
    }

    sub_1ABAAFB28();
    v70 = v114 + v66[9];
    *v70 = v72;
    *(v70 + 1) = v71;
    v70[16] = v73;
    sub_1ABD1B080();
    v74 = *v109;
    if (*(*v109 + 16))
    {
      v75 = *(v74 + 32);
    }

    sub_1ABAAFB28();
    v76 = v114 + v66[10];
    *v76 = v74;
    *(v76 + 1) = v77;
    v76[16] = v78;
    v80 = *v79;
    if (*(*v79 + 16))
    {
      v81 = *(v80 + 32);
    }

    sub_1ABAAFB28();
    v82 = v114 + v66[11];
    *v82 = v80;
    *(v82 + 1) = v83;
    v82[16] = v84;
    if (*(v107 + 16))
    {
      v85 = *(v107 + 32);
    }

    else
    {
      v85 = 25;
    }

    v86 = v114 + v66[12];
    sub_1ABD1BA38(v85);
    sub_1ABD1B058();
    v87 = *v110;
    if (*(*v110 + 16))
    {
      v88 = *(v87 + 32);
    }

    sub_1ABAAFB28();
    v89 = v114 + v66[13];
    *v89 = v87;
    *(v89 + 1) = v90;
    v89[16] = v91;
    sub_1ABD1B0E8();
    v92 = *v111;
    if (*(*v111 + 16))
    {
      v93 = *(v92 + 32);
    }

    sub_1ABAAFB28();
    v94 = v114 + v66[14];
    *v94 = v92;
    *(v94 + 1) = v95;
    v94[16] = v96;
    v98 = *v97;
    if (*(*v97 + 16))
    {
      v99 = *(v98 + 32);
    }

    sub_1ABAAFB28();
    v100 = (v114 + v66[15]);
    *v100 = v98;
    v100[1] = v101;
    sub_1ABA889F8(v102);
    if (v103)
    {
      v104 = *(v52 + 32);
    }

    else
    {
      v104 = 8;
    }

    v105 = v114 + v66[16];
    *v105 = v52;
    v105[8] = v104;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC9AFB8(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphTransportationActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC9B250(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v141 = a7;
  v143 = a5;
  v145 = a4;
  v146 = a3;
  v17 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v138 - v19;
  v21 = type metadata accessor for CustomGraphDateRelationship(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = 279;
  v144 = v25;
  v142 = a6;
  v140 = a8;
  v148 = v12;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_141;
  }

  v26 = *a1;
  v27 = a1[1];
  v169 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v166);
  if (*&v166[0] == v26 && *(&v166[0] + 1) == v27)
  {

LABEL_67:
    v66 = v169;
    if (!*(v169 + 97))
    {
      v77 = v169[5];
      v76 = v169[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v78 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v78);
      v79 = *(a2 + 16);
      *(v79 + 16) = v78 + 1;
      v80 = v79 + 16 * v78;
      *(v80 + 32) = v77;
      *(v80 + 40) = v76;
      *(a2 + 16) = v79;
      swift_endAccess();
      return;
    }

LABEL_68:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v67 = sub_1ABF237F4();
    sub_1ABA7AA24(v67, qword_1ED871B40);
    sub_1ABAE2EC4();
    v68 = sub_1ABF237D4();
    v69 = sub_1ABF24664();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v163 = v71;
      *v70 = 136642819;
      v72 = v66;
LABEL_72:
      memcpy(v166, v72, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v73 = sub_1ABF23C94();
      v75 = &v163;
LABEL_98:
      v110 = sub_1ABADD6D8(v73, v74, v75);

      *(v70 + 4) = v110;
      _os_log_impl(&dword_1ABA78000, v68, v69, "Failed to parse %{sensitive}s.", v70, 0xCu);
      sub_1ABA84B54(v71);
      MEMORY[0x1AC5AB8B0](v71, -1, -1);
      MEMORY[0x1AC5AB8B0](v70, -1, -1);

      return;
    }

LABEL_99:

    v111 = v66;
LABEL_100:
    sub_1ABAB480C(v111, &qword_1EB4D1148, &qword_1ABF332D0);
    return;
  }

  v139 = v26;
  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_67;
  }

  if (v147 < 0x92)
  {
    __break(1u);
LABEL_115:

    goto LABEL_116;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_142;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v166);
  if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
  {

LABEL_75:
    v66 = v169;
    *(v165 + 10) = *(v169 + 82);
    v81 = *(v169 + 7);
    v163 = *(v169 + 5);
    v164 = v81;
    v165[0] = *(v169 + 9);
    if (BYTE9(v165[1]) == 1)
    {
      v82 = *(v169 + 7);
      v167[0] = *(v169 + 5);
      v167[1] = v82;
      *v168 = *(v169 + 9);
      *&v168[9] = *(v169 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v83 = v146;

      v84 = v83;
      v85 = v148;
      sub_1ABC8A96C(v167, v84, v20);
      if (v85)
      {
        v86 = &qword_1EB4D7E60;
        v87 = &unk_1ABF5E780;
        v88 = &v163;
      }

      else
      {
        if (sub_1ABA7E1E0(v20, 1, v21) != 1)
        {
          sub_1ABCF9424();
          v94 = v145;
          swift_beginAccess();
          sub_1ABB4DE30();
          v95 = *(*(v94 + 16) + 16);
          sub_1ABB4E234(v95);
          v96 = *(v94 + 16);
          *(v96 + 16) = v95 + 1;
          v97 = v96 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
          v98 = *(v144 + 72);
          sub_1ABD0AD58();
          *(v94 + 16) = v96;
          swift_endAccess();
          sub_1ABAB480C(&v163, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v24, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v163, &qword_1EB4D7E60, &unk_1ABF5E780);
        v86 = &qword_1EB4D5F20;
        v87 = &qword_1ABF4F358;
        v88 = v20;
      }

      sub_1ABAB480C(v88, v86, v87);
      return;
    }

    goto LABEL_94;
  }

  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_75;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
LABEL_129:
    v135 = sub_1ABF237F4();
    sub_1ABA7AA24(v135, qword_1ED871B40);
    sub_1ABAE2EC4();
    v68 = sub_1ABF237D4();
    v69 = sub_1ABF24664();
    if (!os_log_type_enabled(v68, v69))
    {
LABEL_139:

      v111 = v169;
      goto LABEL_100;
    }

    goto LABEL_130;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v166);
  if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
  {

LABEL_82:
    v66 = v169;
    *(v165 + 10) = *(v169 + 82);
    v89 = *(v169 + 7);
    v163 = *(v169 + 5);
    v164 = v89;
    v165[0] = *(v169 + 9);
    if (BYTE9(v165[1]) == 1)
    {
      v90 = *(v169 + 7);
      v160 = *(v169 + 5);
      v161 = v90;
      v162[0] = *(v169 + 9);
      *(v162 + 9) = *(v169 + 81);
      MEMORY[0x1EEE9AC00](v34);
      *(&v138 - 2) = &v160;
      v166[0] = v163;
      v166[1] = v164;
      v166[2] = v165[0];
      *(&v166[2] + 10) = *(v165 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v166, &v152);
      v91 = v148;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v138 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v92, v93, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), *&v154[0], *(&v154[0] + 1), *&v154[1], *(&v154[1] + 1), v155, *(&v155 + 1));
      if (!v91)
      {
        v99 = v156;
        if (v156)
        {
          v152 = v160;
          v153 = v161;
          v154[0] = v162[0];
          *(v154 + 9) = *(v162 + 9);
          sub_1ABD19208(&v152);
          v100 = v143;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v101 = *(*(v100 + 16) + 16);
          sub_1ABB4E2AC(v101);
LABEL_88:
          v102 = *(v100 + 16);
          *(v102 + 16) = v101 + 1;
          v103 = v102 + (v101 << 6);
          *(v103 + 32) = v155;
          *(v103 + 48) = v99;
          *(v103 + 56) = v157;
          *(v103 + 72) = v158;
          *(v103 + 88) = v159;
          *(v100 + 16) = v102;
          swift_endAccess();
LABEL_103:
          sub_1ABAB480C(&v163, &qword_1EB4D7E60, &unk_1ABF5E780);
          return;
        }

LABEL_102:
        v152 = v160;
        v153 = v161;
        v154[0] = v162[0];
        *(v154 + 9) = *(v162 + 9);
        sub_1ABD19208(&v152);
        goto LABEL_103;
      }

LABEL_84:
      v152 = v160;
      v153 = v161;
      v154[0] = v162[0];
      *(v154 + 9) = *(v162 + 9);
      sub_1ABD19208(&v152);
      sub_1ABAB480C(&v163, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_94:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v109 = sub_1ABF237F4();
    sub_1ABA7AA24(v109, qword_1ED871B40);
    sub_1ABAE2EC4();
    v68 = sub_1ABF237D4();
    v69 = sub_1ABF24664();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v152 = v71;
      *v70 = 136642819;
      memcpy(v166, v66, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v73 = sub_1ABF23C94();
      v75 = &v152;
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v33 = sub_1ABF25054();

  if (v33)
  {
    goto LABEL_82;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v166);
  if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
  {

LABEL_90:
    v66 = v169;
    *(v165 + 10) = *(v169 + 82);
    v104 = *(v169 + 7);
    v163 = *(v169 + 5);
    v164 = v104;
    v165[0] = *(v169 + 9);
    if (BYTE9(v165[1]) == 1)
    {
      v105 = *(v169 + 7);
      v160 = *(v169 + 5);
      v161 = v105;
      v162[0] = *(v169 + 9);
      *(v162 + 9) = *(v169 + 81);
      MEMORY[0x1EEE9AC00](v37);
      *(&v138 - 2) = &v160;
      v166[0] = v163;
      v166[1] = v164;
      v166[2] = v165[0];
      *(&v166[2] + 10) = *(v165 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v166, &v152);
      v106 = v148;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v138 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v107, v108, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), *&v154[0], *(&v154[0] + 1), *&v154[1], *(&v154[1] + 1), v155, *(&v155 + 1));
      if (!v106)
      {
        v99 = v156;
        if (v156)
        {
          v152 = v160;
          v153 = v161;
          v154[0] = v162[0];
          *(v154 + 9) = *(v162 + 9);
          sub_1ABD19208(&v152);
          v100 = v142;
          swift_beginAccess();
          sub_1ABB4DD28();
          v101 = *(*(v100 + 16) + 16);
          sub_1ABB4E12C(v101);
          goto LABEL_88;
        }

        goto LABEL_102;
      }

      goto LABEL_84;
    }

    goto LABEL_94;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_90;
  }

  if (v147 < 0xA1)
  {
    __break(1u);
    goto LABEL_133;
  }

  v38 = v139;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_146;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v166);
  if (*&v166[0] == v38 && *(&v166[0] + 1) == v27)
  {

    goto LABEL_106;
  }

  v40 = sub_1ABF25054();

  if (v40)
  {
LABEL_106:
    v66 = v169;
    if (*(v169 + 97) != 2)
    {
      goto LABEL_68;
    }

    v112 = v148;
    sub_1ABC4A630(&v163, v169[5]);
    if (v112)
    {
      return;
    }

    v113 = v163;
    v114 = v141;
    goto LABEL_109;
  }

  if (v147 == 161)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v41 = v139;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v166);
  if (*&v166[0] == v41 && *(&v166[0] + 1) == v27)
  {

    goto LABEL_111;
  }

  v43 = sub_1ABF25054();

  if (v43)
  {
LABEL_111:
    v66 = v169;
    if (*(v169 + 97) != 2)
    {
      goto LABEL_68;
    }

    v117 = v148;
    sub_1ABC4A630(&v163, v169[5]);
    if (v117)
    {
      return;
    }

    v113 = v163;
    v114 = v140;
LABEL_109:
    swift_beginAccess();
    sub_1ABB4DD40();
    v115 = *(*(v114 + 16) + 16);
    sub_1ABB4E144(v115);
    v116 = *(v114 + 16);
    *(v116 + 16) = v115 + 1;
    *(v116 + 8 * v115 + 32) = v113;
    *(v114 + 16) = v116;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v166);
  if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
  {
    goto LABEL_115;
  }

  v45 = sub_1ABF25054();

  if ((v45 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v166);
      if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
      {
      }

      else
      {
        v54 = sub_1ABF25054();

        if ((v54 & 1) == 0)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1188], *(_Records_GDEntityPredicate_records + 298), *(_Records_GDEntityPredicate_records + 299), v166);
            if (*&v166[0] == v139 && *(&v166[0] + 1) == v27)
            {
            }

            else
            {
              v56 = sub_1ABF25054();

              if ((v56 & 1) == 0)
              {
                if (v147 >= 0xAB)
                {
                  if (_Records_GDEntityPredicate_records)
                  {
                    sub_1ABA91D48(_Records_GDEntityPredicate_records[2040], *(_Records_GDEntityPredicate_records + 511), *(_Records_GDEntityPredicate_records + 512), v166);
                    if (*&v166[0] != v139 || *(&v166[0] + 1) != v27)
                    {
                      v58 = sub_1ABF25054();

                      if ((v58 & 1) == 0)
                      {
                        return;
                      }

LABEL_134:
                      if (*(v169 + 97) == 2)
                      {
                        v136 = v148;
                        sub_1ABC4CCC4(v169[5], v59, v60, v61, v62, v63, v64, v65, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), *&v154[0], *(&v154[0] + 1), *&v154[1], *(&v154[1] + 1), v155, *(&v155 + 1), v156, v157, *(&v157 + 1), v158);
                        if (!v136)
                        {
                          v119 = a12;
                          v120 = v163;
                          swift_beginAccess();
                          sub_1ABB4DF68();
                          v121 = *(*(a12 + 16) + 16);
                          sub_1ABB4E36C(v121);
                          goto LABEL_119;
                        }

                        return;
                      }

                      if (qword_1ED871B38 == -1)
                      {
LABEL_138:
                        v137 = sub_1ABF237F4();
                        sub_1ABA7AA24(v137, qword_1ED871B40);
                        sub_1ABAE2EC4();
                        v68 = sub_1ABF237D4();
                        v69 = sub_1ABF24664();
                        if (!os_log_type_enabled(v68, v69))
                        {
                          goto LABEL_139;
                        }

LABEL_130:
                        v70 = swift_slowAlloc();
                        v71 = swift_slowAlloc();
                        *&v163 = v71;
                        *v70 = 136642819;
                        v72 = v169;
                        goto LABEL_72;
                      }

LABEL_149:
                      swift_once();
                      goto LABEL_138;
                    }

LABEL_133:

                    goto LABEL_134;
                  }

LABEL_153:
                  __break(1u);
                  return;
                }

                goto LABEL_147;
              }
            }

            if (*(v169 + 97) || (v131 = v169[5], v132 = v169[6], , v133 = sub_1ABB24D04(v131, v132), (v134 & 1) != 0))
            {
LABEL_128:
              if (qword_1ED871B38 == -1)
              {
                goto LABEL_129;
              }

              goto LABEL_144;
            }

            v127 = v133;
            a10 = a11;
LABEL_124:
            swift_beginAccess();
            sub_1ABB4DCB0();
            v129 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v129);
            v130 = *(a10 + 16);
            *(v130 + 16) = v129 + 1;
            *(v130 + 8 * v129 + 32) = v127;
            *(a10 + 16) = v130;
            return;
          }

LABEL_152:
          __break(1u);
          goto LABEL_153;
        }
      }

      if (*(v169 + 97))
      {
        goto LABEL_128;
      }

      v123 = v169[5];
      v124 = v169[6];

      v125 = sub_1ABB24D04(v123, v124);
      if (v126)
      {
        goto LABEL_128;
      }

      v127 = v125;
      goto LABEL_124;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

LABEL_116:
  v66 = v169;
  if (*(v169 + 97) != 2)
  {
    goto LABEL_68;
  }

  v118 = v148;
  sub_1ABC4CBC0(v169[5], v46, v47, v48, v49, v50, v51, v52, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *(&v152 + 1), v153, *(&v153 + 1), *&v154[0], *(&v154[0] + 1), *&v154[1], *(&v154[1] + 1), v155, *(&v155 + 1), v156, v157, *(&v157 + 1), v158);
  if (!v118)
  {
    v119 = a9;
    v120 = v163;
    swift_beginAccess();
    sub_1ABB4DE48();
    v121 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v121);
LABEL_119:
    v122 = *(v119 + 16);
    *(v122 + 16) = v121 + 1;
    *(v122 + 8 * v121 + 32) = v120;
    *(v119 + 16) = v122;
  }
}

void sub_1ABC9C4D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v299 = a8;
  v302 = a7;
  v304 = a6;
  v307 = a5;
  v315 = a4;
  v324 = a3;
  v334 = a2;
  v15 = a13;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v325 = &v289 - v18;
  v319 = type metadata accessor for CustomGraphDateRelationship(0);
  v313 = *(v319 - 8);
  v19 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v314 = &v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a14 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v327 = sub_1ABF247E4();
  v326 = *(v327 - 8);
  v23 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v312 = &v289 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v320 = &v289 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v329 = &v289 - v28;
  v332 = AssociatedTypeWitness;
  v328 = *(AssociatedTypeWitness - 8);
  v29 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v309 = &v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v310 = &v289 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v317 = &v289 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v318 = &v289 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v322 = &v289 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v323 = &v289 - v41;
  v335 = *(a13 - 8);
  v42 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v293 = &v289 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v295 = &v289 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v297 = &v289 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v298 = &v289 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v301 = &v289 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v305 = &v289 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v308 = &v289 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v316 = &v289 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v321 = &v289 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v289 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v289 - v65;
  v338 = swift_checkMetadataState();
  v336 = *(v338 - 8);
  v67 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v338);
  v292 = &v289 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v294 = &v289 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v296 = &v289 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v300 = &v289 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v303 = &v289 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v306 = &v289 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v311 = &v289 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v289 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = (&v289 - v85);
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = &v289 - v89;
  v91 = *(v21 + 24);
  v337 = v21;
  v91(v346, a13, v21, v88);
  v333 = 279;
  v347 = a1;
  v330 = v63;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_172;
  }

  v92 = v346[0];
  a1 = v346[1];
  v21 = v346[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v341);
  if (v341 == v92 && *(&v341 + 1) == a1)
  {

    goto LABEL_9;
  }

  v291 = a13;
  v290 = v92;
  v94 = sub_1ABF25054();

  if (v94)
  {
    v15 = v291;
LABEL_9:

    (*(v337 + 32))(v15, v337);
    v95 = v338;
    v96 = swift_getAssociatedConformanceWitness();
    v97 = (*(v96 + 24))(v95, v96);
    v98 = v15;
    v100 = v99;
    (*(v336 + 8))(v90, v95);
    if (v100)
    {
      v101 = v334;
      swift_beginAccess();
      sub_1ABB4DC20();
      v102 = *(*(v101 + 16) + 16);
      sub_1ABB4E024(v102);
      v103 = *(v101 + 16);
      *(v103 + 16) = v102 + 1;
      v104 = v103 + 16 * v102;
      *(v104 + 32) = v97;
      *(v104 + 40) = v100;
      *(v101 + 16) = v103;
      swift_endAccess();
      return;
    }

    v105 = v98;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v106 = sub_1ABF237F4();
    sub_1ABA7AA24(v106, qword_1ED871B40);
    v107 = v335;
    v108 = *(v335 + 16);
    v108(v66, v347, v98);
    v109 = sub_1ABF237D4();
    v110 = sub_1ABF24664();
    if (!os_log_type_enabled(v109, v110))
    {

      (*(v107 + 8))(v66, v105);
      return;
    }

    v111 = v105;
    v112 = swift_slowAlloc();
    v347 = swift_slowAlloc();
    *&v341 = v347;
    *v112 = 136642819;
    LODWORD(v338) = v110;
    v108(v330, v66, v111);
    v113 = sub_1ABF23C94();
    v115 = v114;
    (*(v107 + 8))(v66, v111);
    v116 = sub_1ABADD6D8(v113, v115, &v341);
    goto LABEL_16;
  }

  if (v333 < 0x92)
  {
    __break(1u);
    goto LABEL_116;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v341);
  v118 = v341 == v290 && *(&v341 + 1) == a1;
  v119 = v339;
  v21 = v335;
  if (!v118)
  {
    v120 = sub_1ABF25054();

    if (v120)
    {
      goto LABEL_27;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_178;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v341);
    if (v341 == v290 && *(&v341 + 1) == a1)
    {

LABEL_45:
      v145 = v291;

      v146 = v347;
      (*(v337 + 32))(v145);
      v147 = v320;
      v148 = v338;
      (*(AssociatedConformanceWitness + 40))(v338, AssociatedConformanceWitness);
      (*(v336 + 8))(v83, v148);
      v149 = v332;
      if (sub_1ABA7E1E0(v147, 1, v332) != 1)
      {
        v159 = v147;
        v160 = v328;
        v161 = v318;
        (*(v328 + 32))(v318, v159, v149);
        v162 = v317;
        (*(v160 + 16))(v317, v161, v149);
        v163 = type metadata accessor for CustomGraphPerson(0);
        v164 = sub_1ABD09EBC(&unk_1EB4D7E80);
        v165 = swift_getAssociatedConformanceWitness();
        CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v341, v162, v163, v149, v164, v165);
        if (!v119)
        {
          v166 = v342;
          if (v342)
          {
            v167 = v307;
            swift_beginAccess();
            sub_1ABB4DEA8();
            v168 = *(*(v167 + 16) + 16);
            sub_1ABB4E2AC(v168);
            v169 = *(v167 + 16);
            *(v169 + 16) = v168 + 1;
            v170 = v169 + (v168 << 6);
            *(v170 + 32) = v341;
            *(v170 + 48) = v166;
            *(v170 + 56) = v343;
            *(v170 + 72) = v344;
            *(v170 + 88) = v345;
            *(v167 + 16) = v169;
            swift_endAccess();
          }
        }

        (*(v160 + 8))(v161, v149);
        return;
      }

      (*(v326 + 8))(v147, v327);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v150 = sub_1ABF237F4();
      sub_1ABA7AA24(v150, qword_1ED871B40);
      v151 = *(v21 + 16);
      v152 = &v344;
LABEL_49:
      v153 = *(v152 - 32);
      v151(v153, v146, v145);
      v109 = sub_1ABF237D4();
      v154 = sub_1ABF24664();
      if (!os_log_type_enabled(v109, v154))
      {

        (*(v21 + 8))(v153, v145);
        return;
      }

      v155 = swift_slowAlloc();
      a1 = v145;
LABEL_51:
      v112 = v155;
      v347 = swift_slowAlloc();
      *&v341 = v347;
      *v112 = 136642819;
      LODWORD(v338) = v154;
      v151(v330, v153, a1);
      v156 = sub_1ABF23C94();
      v158 = v157;
      (*(v21 + 8))(v153, a1);
      v116 = sub_1ABADD6D8(v156, v158, &v341);
LABEL_16:

      *(v112 + 4) = v116;
      _os_log_impl(&dword_1ABA78000, v109, v338, "Failed to parse %{sensitive}s.", v112, 0xCu);
      v117 = v347;
      goto LABEL_32;
    }

    v144 = sub_1ABF25054();

    if (v144)
    {
      goto LABEL_45;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_180;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v341);
    if (v341 == v290 && *(&v341 + 1) == a1)
    {

LABEL_68:
      v145 = v291;

      v179 = v311;
      v146 = v347;
      (*(v337 + 32))(v145);
      v180 = v312;
      v181 = v338;
      (*(AssociatedConformanceWitness + 40))(v338, AssociatedConformanceWitness);
      v182 = v180;
      (*(v336 + 8))(v179, v181);
      v183 = v180;
      v184 = v332;
      if (sub_1ABA7E1E0(v183, 1, v332) != 1)
      {
        v186 = v328;
        v187 = v310;
        (*(v328 + 32))(v310, v182, v184);
        v188 = v309;
        (*(v186 + 16))(v309, v187, v184);
        v189 = sub_1ABD19740();
        v190 = swift_getAssociatedConformanceWitness();
        CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v341, v188, &type metadata for CustomGraphLocation, v184, v189, v190);
        if (!v119)
        {
          v191 = v342;
          if (v342)
          {
            v192 = v304;
            swift_beginAccess();
            sub_1ABB4DD28();
            v193 = *(*(v192 + 16) + 16);
            sub_1ABB4E12C(v193);
            v194 = *(v192 + 16);
            *(v194 + 16) = v193 + 1;
            v195 = v194 + (v193 << 6);
            *(v195 + 32) = v341;
            *(v195 + 48) = v191;
            *(v195 + 56) = v343;
            *(v195 + 72) = v344;
            *(v195 + 88) = v345;
            *(v192 + 16) = v194;
            swift_endAccess();
          }
        }

        (*(v186 + 8))(v187, v184);
        return;
      }

      (*(v326 + 8))(v182, v327);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v185 = sub_1ABF237F4();
      sub_1ABA7AA24(v185, qword_1ED871B40);
      v151 = *(v21 + 16);
      v152 = &v340;
      goto LABEL_49;
    }

    v178 = sub_1ABF25054();

    if (v178)
    {
      goto LABEL_68;
    }

    if (v333 < 0xA1)
    {
      __break(1u);
      goto LABEL_164;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_182;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v341);
    v86 = *(&v341 + 1);
    if (v341 == v290 && *(&v341 + 1) == a1)
    {

LABEL_85:
      a1 = v291;

      v198 = v306;
      v86 = v347;
      (*(v337 + 32))(a1, v337);
      v199 = v338;
      v200 = swift_getAssociatedConformanceWitness();
      (*(v200 + 32))(&v341, v199, v200);
      (*(v336 + 8))(v198, v199);
      if (BYTE8(v341))
      {
        if (qword_1ED871B38 == -1)
        {
LABEL_87:
          v201 = sub_1ABF237F4();
          sub_1ABA7AA24(v201, qword_1ED871B40);
          v151 = *(v21 + 16);
          v202 = &v337;
LABEL_88:
          v153 = *(v202 - 32);
          v151(v153, v86, a1);
          v109 = sub_1ABF237D4();
          v154 = sub_1ABF24664();
          if (!os_log_type_enabled(v109, v154))
          {

            (*(v21 + 8))(v153, a1);
            return;
          }

          v155 = swift_slowAlloc();
          goto LABEL_51;
        }

LABEL_172:
        swift_once();
        goto LABEL_87;
      }

      sub_1ABC4A630(&v340, v341);
      if (v119)
      {
        return;
      }

      v203 = v340;
      p_AssociatedConformanceWitness = &v334;
LABEL_92:
      v205 = *(p_AssociatedConformanceWitness - 32);
      swift_beginAccess();
      sub_1ABB4DD40();
      v206 = *(*(v205 + 16) + 16);
      sub_1ABB4E144(v206);
      v207 = *(v205 + 16);
      *(v207 + 16) = v206 + 1;
      *(v207 + 8 * v206 + 32) = v203;
      *(v205 + 16) = v207;
      return;
    }

    v197 = sub_1ABF25054();

    if (v197)
    {
      goto LABEL_85;
    }

    if (v333 != 161)
    {
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_184;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v341);
      if (v341 == v290 && *(&v341 + 1) == a1)
      {

        goto LABEL_103;
      }

      v209 = sub_1ABF25054();

      if (v209)
      {
LABEL_103:
        a1 = v291;

        v210 = v303;
        v86 = v347;
        (*(v337 + 32))(a1, v337);
        v211 = v338;
        v212 = swift_getAssociatedConformanceWitness();
        (*(v212 + 32))(&v341, v211, v212);
        (*(v336 + 8))(v210, v211);
        if ((BYTE8(v341) & 1) == 0)
        {
          sub_1ABC4A630(&v340, v341);
          if (v119)
          {
            return;
          }

          v203 = v340;
          p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
          goto LABEL_92;
        }

        if (qword_1ED871B38 == -1)
        {
LABEL_105:
          v213 = sub_1ABF237F4();
          sub_1ABA7AA24(v213, qword_1ED871B40);
          v151 = *(v21 + 16);
          v202 = &v333;
          goto LABEL_88;
        }

LABEL_176:
        swift_once();
        goto LABEL_105;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_187;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v341);
      if (v341 != v290 || *(&v341 + 1) != a1)
      {
        v215 = sub_1ABF25054();

        if (v215)
        {
          goto LABEL_117;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v341);
          if (v341 == v290 && *(&v341 + 1) == a1)
          {

            goto LABEL_133;
          }

          v245 = sub_1ABF25054();

          if (v245)
          {
LABEL_133:

            v246 = v296;
            (*(v337 + 32))(v291, v337);
            v247 = v338;
            v248 = swift_getAssociatedConformanceWitness();
            v249 = BaseEntityFactObjectProtocol.asDouble.getter(v247, v248);
            v251 = v250;
            (*(v336 + 8))(v246, v247);
            if (v251)
            {
              if (qword_1ED871B38 == -1)
              {
LABEL_135:
                v252 = sub_1ABF237F4();
                sub_1ABA7AA24(v252, qword_1ED871B40);
                v253 = *(v335 + 16);
                v253(v297, v347, v291);
                v230 = sub_1ABF237D4();
                v254 = sub_1ABF24664();
                if (!os_log_type_enabled(v230, v254))
                {

                  (*(v335 + 8))(v297, v291);
                  return;
                }

                v232 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                *&v341 = v255;
                *v232 = 136642819;
                v256 = v330;
                v257 = &v329;
LABEL_137:
                v258 = *(v257 - 32);
                v259 = v291;
                v253(v256, v258, v291);
                v260 = sub_1ABF23C94();
                v262 = v261;
                (*(v335 + 8))(v258, v259);
                v263 = sub_1ABADD6D8(v260, v262, &v341);

                *(v232 + 4) = v263;
                _os_log_impl(&dword_1ABA78000, v230, v254, "Failed to parse %{sensitive}s.", v232, 0xCu);
                sub_1ABA84B54(v255);
                v238 = v255;
LABEL_138:
                MEMORY[0x1AC5AB8B0](v238, -1, -1);
                MEMORY[0x1AC5AB8B0](v232, -1, -1);

                return;
              }

LABEL_180:
              swift_once();
              goto LABEL_135;
            }

LABEL_139:
            swift_beginAccess();
            sub_1ABB4DCB0();
            v265 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v265);
            v266 = *(a10 + 16);
            *(v266 + 16) = v265 + 1;
            *(v266 + 8 * v265 + 32) = v249;
            *(a10 + 16) = v266;
            return;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1188], *(_Records_GDEntityPredicate_records + 298), *(_Records_GDEntityPredicate_records + 299), &v341);
            if (v341 == v290 && *(&v341 + 1) == a1)
            {

              goto LABEL_149;
            }

            v268 = sub_1ABF25054();

            if (v268)
            {
LABEL_149:

              v269 = v294;
              (*(v337 + 32))(v291, v337);
              v270 = v338;
              v271 = swift_getAssociatedConformanceWitness();
              v249 = BaseEntityFactObjectProtocol.asDouble.getter(v270, v271);
              v273 = v272;
              (*(v336 + 8))(v269, v270);
              if ((v273 & 1) == 0)
              {
                a10 = a11;
                goto LABEL_139;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_151:
                v274 = sub_1ABF237F4();
                sub_1ABA7AA24(v274, qword_1ED871B40);
                v253 = *(v335 + 16);
                v253(v295, v347, v291);
                v230 = sub_1ABF237D4();
                v254 = sub_1ABF24664();
                if (!os_log_type_enabled(v230, v254))
                {

                  (*(v335 + 8))(v295, v291);
                  return;
                }

                v232 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                *&v341 = v255;
                *v232 = 136642819;
                v256 = v330;
                v257 = &v327;
                goto LABEL_137;
              }

LABEL_182:
              swift_once();
              goto LABEL_151;
            }

            if (v333 >= 0xAB)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[2040], *(_Records_GDEntityPredicate_records + 511), *(_Records_GDEntityPredicate_records + 512), &v341);
                if (v341 != v290 || *(&v341 + 1) != a1)
                {
                  v276 = sub_1ABF25054();

                  if ((v276 & 1) == 0)
                  {
                    return;
                  }

LABEL_165:
                  v277 = v292;
                  (*(v337 + 32))(v291, v337);
                  v278 = v338;
                  v279 = swift_getAssociatedConformanceWitness();
                  (*(v279 + 32))(&v341, v278, v279);
                  (*(v336 + 8))(v277, v278);
                  if ((BYTE8(v341) & 1) == 0)
                  {
                    v288 = v339;
                    sub_1ABC4CCC4(v341, v280, v281, v282, v283, v284, v285, v286, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
                    if (v288)
                    {
                      return;
                    }

                    v240 = a12;
                    v241 = v340;
                    swift_beginAccess();
                    sub_1ABB4DF68();
                    v242 = *(*(a12 + 16) + 16);
                    sub_1ABB4E36C(v242);
                    goto LABEL_123;
                  }

                  if (qword_1ED871B38 == -1)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_185;
                }

LABEL_164:

                goto LABEL_165;
              }

LABEL_189:
              __break(1u);
              return;
            }

            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            swift_once();
LABEL_167:
            v287 = sub_1ABF237F4();
            sub_1ABA7AA24(v287, qword_1ED871B40);
            v253 = *(v335 + 16);
            v253(v293, v347, v291);
            v230 = sub_1ABF237D4();
            v254 = sub_1ABF24664();
            if (!os_log_type_enabled(v230, v254))
            {

              (*(v335 + 8))(v293, v291);
              return;
            }

            v232 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            *&v341 = v255;
            *v232 = 136642819;
            v256 = v330;
            v257 = &v325;
            goto LABEL_137;
          }

LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

LABEL_116:

LABEL_117:
      a1 = v291;

      v216 = v300;
      v86 = v347;
      (*(v337 + 32))(a1, v337);
      v217 = v338;
      v218 = swift_getAssociatedConformanceWitness();
      (*(v218 + 32))(&v341, v217, v218);
      (*(v336 + 8))(v216, v217);
      if (BYTE8(v341))
      {
        if (qword_1ED871B38 == -1)
        {
LABEL_119:
          v226 = sub_1ABF237F4();
          sub_1ABA7AA24(v226, qword_1ED871B40);
          v227 = v335;
          v228 = *(v335 + 16);
          v229 = v298;
          v228(v298, v86, a1);
          v230 = sub_1ABF237D4();
          v231 = sub_1ABF24664();
          if (!os_log_type_enabled(v230, v231))
          {

            (*(v227 + 8))(v229, a1);
            return;
          }

          v232 = swift_slowAlloc();
          v347 = swift_slowAlloc();
          *&v341 = v347;
          *v232 = 136642819;
          v228(v330, v229, a1);
          v233 = sub_1ABF23C94();
          v235 = v234;
          (*(v227 + 8))(v229, a1);
          v236 = sub_1ABADD6D8(v233, v235, &v341);

          *(v232 + 4) = v236;
          _os_log_impl(&dword_1ABA78000, v230, v231, "Failed to parse %{sensitive}s.", v232, 0xCu);
          v237 = v347;
          sub_1ABA84B54(v347);
          v238 = v237;
          goto LABEL_138;
        }

LABEL_178:
        swift_once();
        goto LABEL_119;
      }

      v239 = v339;
      sub_1ABC4CBC0(v341, v219, v220, v221, v222, v223, v224, v225, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
      if (v239)
      {
        return;
      }

      v240 = a9;
      v241 = v340;
      swift_beginAccess();
      sub_1ABB4DE48();
      v242 = *(*(a9 + 16) + 16);
      sub_1ABB4E24C(v242);
LABEL_123:
      v243 = *(v240 + 16);
      *(v243 + 16) = v242 + 1;
      *(v243 + 8 * v242 + 32) = v241;
      *(v240 + 16) = v243;
      return;
    }

    __break(1u);
    goto LABEL_175;
  }

LABEL_27:
  v121 = v291;

  v122 = v347;
  (*(v337 + 32))(v121);
  v123 = v329;
  v124 = v338;
  (*(AssociatedConformanceWitness + 40))(v338, AssociatedConformanceWitness);
  v125 = v86;
  v126 = v123;
  (*(v336 + 8))(v125, v124);
  v127 = v123;
  v128 = v332;
  if (sub_1ABA7E1E0(v127, 1, v332) == 1)
  {
    (*(v326 + 8))(v126, v327);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v129 = sub_1ABF237F4();
    sub_1ABA7AA24(v129, qword_1ED871B40);
    v130 = *(v21 + 16);
    v131 = v321;
    v130(v321, v122, v121);
    v109 = sub_1ABF237D4();
    v132 = sub_1ABF24664();
    if (!os_log_type_enabled(v109, v132))
    {

      (*(v21 + 8))(v131, v121);
      return;
    }

    v133 = swift_slowAlloc();
    LODWORD(v347) = v132;
    v134 = v131;
    v135 = v121;
    v112 = v133;
    v338 = swift_slowAlloc();
    *&v341 = v338;
    *v112 = 136642819;
    v130(v330, v134, v135);
    v136 = sub_1ABF23C94();
    v138 = v137;
    (*(v21 + 8))(v134, v135);
    v139 = sub_1ABADD6D8(v136, v138, &v341);

    *(v112 + 4) = v139;
    _os_log_impl(&dword_1ABA78000, v109, v347, "Failed to parse %{sensitive}s.", v112, 0xCu);
    v117 = v338;
LABEL_32:
    sub_1ABA84B54(v117);
    MEMORY[0x1AC5AB8B0](v117, -1, -1);
    MEMORY[0x1AC5AB8B0](v112, -1, -1);

    return;
  }

  v140 = v328;
  v141 = v323;
  (*(v328 + 32))(v323, v126, v128);
  (*(v140 + 16))(v322, v141, v128);
  swift_getAssociatedConformanceWitness();

  v142 = v325;
  CustomGraphDateRelationship.init<A>(from:initializationResources:)();
  if (!v119)
  {
    if (sub_1ABA7E1E0(v142, 1, v319) == 1)
    {
      (*(v140 + 8))(v141, v128);
      sub_1ABAB480C(v142, &qword_1EB4D5F20, &qword_1ABF4F358);
      return;
    }

    v171 = v314;
    sub_1ABCF9424();
    v172 = v315;
    swift_beginAccess();
    sub_1ABB4DE30();
    v173 = *(*(v172 + 16) + 16);
    sub_1ABB4E234(v173);
    v174 = *(v172 + 16);
    *(v174 + 16) = v173 + 1;
    v175 = v174 + ((*(v313 + 80) + 32) & ~*(v313 + 80));
    v176 = *(v313 + 72);
    sub_1ABD0AD58();
    *(v172 + 16) = v174;
    swift_endAccess();
    sub_1ABD0ADB0(v171, type metadata accessor for CustomGraphDateRelationship);
  }

  (*(v140 + 8))(v141, v128);
}

void CustomGraphTransportationActivityEvent.init(typedId:all_name:all_date:all_attendees:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:all_uncertainty:all_modeOfTransportation:all_transportationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABA7E2A8();
  v29 = v28;
  sub_1ABA88F38();
  v31 = v30;
  sub_1ABD1B3D0();
  v32 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v32);
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v36 = sub_1ABB2B834(v31);
  v25[1] = v31;
  v25[2] = v36;
  v25[3] = v37;
  v38 = sub_1ABA8B2DC();
  v39 = type metadata accessor for CustomGraphTransportationActivityEvent(v38);
  sub_1ABAB1F84(v39);
  sub_1ABD1BA68();
  if (v40)
  {
    v41 = *(v27 + 32);
  }

  sub_1ABA897F0();
  v42 = v39[9];
  sub_1ABD1AE28();
  if (v43)
  {
    v44 = *(v26 + 32);
  }

  sub_1ABAB5FE0();
  v45 = v39[10];
  sub_1ABA89D74();
  v48 = *(v29 + 16);
  if (v48)
  {
    v49 = *(v29 + 32);
  }

  else
  {
    v49 = 0;
  }

  v50 = v25 + v39[11];
  *v50 = v29;
  *(v50 + 1) = v49;
  v50[16] = v48 == 0;
  if (*(v46 + 16))
  {
    v51 = *(v46 + 32);
  }

  else
  {
    v51 = 25;
  }

  v52 = v25 + v39[12];
  *v52 = v46;
  v52[8] = v51;
  v53 = *(v47 + 16);
  if (v53)
  {
    v54 = *(v47 + 32);
  }

  else
  {
    v54 = 0;
  }

  v55 = v25 + v39[13];
  *v55 = v47;
  *(v55 + 1) = v54;
  v55[16] = v53 == 0;
  v56 = *(a23 + 16);
  if (v56)
  {
    v57 = *(a23 + 32);
  }

  else
  {
    v57 = 0;
  }

  v58 = v25 + v39[14];
  *v58 = a23;
  *(v58 + 1) = v57;
  v58[16] = v56 == 0;
  v59 = *(a24 + 16);
  if (v59)
  {
    v60 = *(a24 + 32);
  }

  else
  {
    v60 = 0;
  }

  v61 = v25 + v39[15];
  *v61 = a24;
  *(v61 + 1) = v60;
  v61[16] = v59 == 0;
  if (*(a25 + 16))
  {
    v62 = *(a25 + 32);
  }

  v63 = v39[16];
  sub_1ABA89678(a25);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC9EDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6961747265636E75 && a2 == 0xEB0000000079746ELL;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000001ABF8D600 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000012 && 0x80000001ABF8D620 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1ABC9F1D8(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x636F4C7472617473;
      break;
    case 6:
      result = 0x7461636F4C646E65;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0x6961747265636E75;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC9F35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC9EDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC9F384(uint64_t a1)
{
  v2 = sub_1ABD0AFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC9F3C0(uint64_t a1)
{
  v2 = sub_1ABD0AFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphTransportationActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D67D8, &qword_1ABF50C08);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0AFBC();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348260);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();

    sub_1ABA98014(348266);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA1328();

    sub_1ABAA2300(348272);
    sub_1ABAB6330();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1B69C();

    sub_1ABAD219C(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD0B010();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348278);
    sub_1ABD1B690();

    sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B0FC();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphTransportationActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA9F7AC();
  v9 = sub_1ABAD219C(&qword_1EB4D6840, &unk_1ABF50C30);
  sub_1ABA960BC(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E5C0();
  v45 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  v13 = sub_1ABA7BBB0(v45);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v46 = v16;
  v18 = v1[3];
  v17 = v1[4];
  sub_1ABA8A074(v1);
  sub_1ABD0AFBC();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA8B13C();
    sub_1ABAA08F0();
    sub_1ABA84B54(v1);
    if (v5)
    {
      sub_1ABAB480C(v46 + v45[6], &qword_1EB4D5F30, &unk_1ABF50B00);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    else if (v4)
    {
LABEL_13:
      v25 = *(v46 + v45[7]);

      if ((v18 & 1) == 0)
      {
LABEL_14:
        if (v42)
        {
          v26 = *(v46 + v45[11]);

          if ((v43 & 1) == 0)
          {
LABEL_16:
            if (v0)
            {
LABEL_17:
              v27 = *(v46 + v45[13]);

              if ((v44 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_10;
            }

LABEL_9:
            if (!v44)
            {
              goto LABEL_18;
            }

LABEL_10:
            v24 = *(v46 + v45[14]);

            goto LABEL_18;
          }
        }

        else if (!v43)
        {
          goto LABEL_16;
        }

        v23 = *(v46 + v45[12]);

        if (v0)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_6:
      v22 = *(v46 + v45[8]);

      goto LABEL_14;
    }

    if (!v18)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v19 = sub_1ABA954F0();
  sub_1ABAD219C(v19, v20);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v21);
  sub_1ABD1AC44();
  sub_1ABD1BBF8();
  *v46 = v47;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA8B6EC();
  sub_1ABD0A2D4();
  sub_1ABA8B4F0();
  sub_1ABF24E64();
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  LOBYTE(v47) = 2;
  sub_1ABA7F460();
  sub_1ABD0A358(v28);
  sub_1ABA9EEBC();
  sub_1ABD1B110();
  sub_1ABF24E64();
  v29 = v45[6];
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABD1AF94();
  sub_1ABD0A408();
  sub_1ABA8B4F0();
  sub_1ABD1B294();
  *(v46 + v45[7]) = v47;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA8B908();
  sub_1ABD0A568();
  sub_1ABA8B4F0();
  sub_1ABD1B294();
  *(v46 + v45[8]) = v47;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA9F1AC();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABD1AFC4();
  sub_1ABD0AB5C();
  sub_1ABA8B4F0();
  sub_1ABD1B294();
  sub_1ABD1AF54();
  v30 = v45[11];
  sub_1ABD1AEEC(v31);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA8B4F0();
  sub_1ABD1B294();
  v32 = v46 + v45[12];
  sub_1ABD1B104(v47);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA9F1AC();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  v33 = v45[13];
  sub_1ABD1AEEC(v34);
  sub_1ABA8AB1C(10);
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  v35 = v45[14];
  sub_1ABD1AEEC(v36);
  sub_1ABAD219C(&qword_1EB4D67F8, &qword_1ABF50C18);
  sub_1ABD1B69C();
  sub_1ABD0B230();
  sub_1ABAA112C();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  v37 = v45[15];
  sub_1ABD1AEEC(v38);
  sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
  sub_1ABD1B690();
  sub_1ABD0B31C();
  sub_1ABAA112C();
  sub_1ABF24E64();
  v39 = sub_1ABA89164();
  v40(v39);
  v41 = v45[16];
  sub_1ABA89678(v47);
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_18:
  sub_1ABA7BC90();
}

void static CustomGraphWorkingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWorkingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWorkingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA0448(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphWorkingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA0714(uint64_t a1)
{
  v2 = sub_1ABD0B3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA0750(uint64_t a1)
{
  v2 = sub_1ABD0B3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWorkingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6860, &dword_1ABF50C38);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B3A8();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348296);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348302);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWorkingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6880, &dword_1ABF50C48);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphWorkingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B3A8();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphMeetingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphMeetingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphMeetingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA11F0()
{
  sub_1ABA7BCA8();
  v78 = v1;
  v77 = v2;
  v89 = v3;
  v82 = v4;
  sub_1ABD1BEE4(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v10);
  sub_1ABA7D028();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B184(v11);
  sub_1ABD1BD0C(v13);
  sub_1ABA7D028();
  v14 = swift_allocObject();
  sub_1ABD1B184(v14);
  sub_1ABD1BE50(v15);
  sub_1ABA7D028();
  v81 = swift_allocObject();
  sub_1ABD1B184(v81);
  sub_1ABD1BE44(v16);
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B184(v17);
  sub_1ABD1BA5C(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B184(v19);
  sub_1ABD1B61C(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B184(v21);
  sub_1ABD1B6E8(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B184(v23);
  sub_1ABD1BA8C(v24);
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B184(v25);
  sub_1ABD1B3C4(v26);
  v27 = swift_allocObject();
  v27[2] = v11;
  v27[3] = v89;
  sub_1ABD1B628();
  v28[4] = v14;
  v28[5] = v12;
  v28[6] = v17;
  v28[7] = v19;
  v28[8] = v21;
  v28[9] = v23;
  v28[10] = v25;

  v29 = sub_1ABD1BE68();
  v82(v29);
  if (v0)
  {

    sub_1ABA8D348();

    sub_1ABAA6420();
  }

  else
  {

    sub_1ABD1C01C();
    sub_1ABAAD280(&v88);
    v30 = *v27;
    v31 = *(*v27 + 16);
    if (v31)
    {

      v32 = MEMORY[0x1E69E7CC0];
      v33 = 32;
      v34 = v77;
      do
      {
        sub_1ABD1B924(v30 + v33);
        if (v87)
        {
          sub_1ABAA0AB0(v87);
          sub_1ABD1B9E4();
          v35 = v85;
          if (v85 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v32 = v37;
            }

            sub_1ABD1B8B4();
            if (v36)
            {
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v32 = v38;
            }

            *(v32 + 16) = v34;
            *(v32 + v17 + 32) = v35;
            v34 = v77;
          }
        }

        v33 += 8;
        --v31;
      }

      while (v31);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
      v34 = v77;
    }

    v39 = sub_1ABD1BE5C();
    v34(v39);
    sub_1ABD1BF7C(v86[2]);
    sub_1ABAAD280(&v83);
    v40 = sub_1ABD1C26C();
    v80[1] = v89;
    v80[2] = v40;
    v80[3] = v41;
    sub_1ABD1B058();
    v42 = *v73;
    sub_1ABD1AF20();
    v46 = sub_1ABA9DFB8(v75, v43, v44, v45);
    v47 = v78(v46);
    sub_1ABD1C23C(v47);

    sub_1ABC8B318(v48, v75, v80);
    sub_1ABAAD280(&v84);
    *(v80 + v47[7]) = *v89;
    sub_1ABAAD280(&v85);
    *(v80 + v47[8]) = *v89;
    sub_1ABAAD280(v86);
    v49 = *v89;
    if (*(*v89 + 16))
    {
      v50 = *(v49 + 32);
    }

    sub_1ABAAFB28();
    v51 = v47[9];
    sub_1ABD1BCD8();
    *v53 = v49;
    v53[1] = v52;
    sub_1ABD1BE04(v54);
    sub_1ABD1B03C();
    sub_1ABD1BA44();
    if (v55)
    {
      v56 = *(v74 + 32);
    }

    v57 = v47[10];
    sub_1ABD1BCD8();
    sub_1ABD1BCCC(v58);
    v60 = *v79;
    v61 = *(*v79 + 16);
    if (v61)
    {
      v62 = *(v60 + 32);
    }

    else
    {
      v62 = 0;
    }

    v63 = (v59 + v47[11]);
    *v63 = v60;
    v63[1] = v62;
    sub_1ABA889F8(v61 == 0);
    if (v65)
    {
      v66 = *(v32 + 32);
    }

    else
    {
      v66 = 25;
    }

    v67 = v64 + v47[12];
    sub_1ABAA5C0C(v66);
    sub_1ABD1B058();
    v68 = *v76;
    v69 = *(*v76 + 16);
    if (v69)
    {
      v70 = *(v68 + 32);
    }

    else
    {
      v70 = 0;
    }

    v71 = v69 == 0;

    sub_1ABAA1460();

    sub_1ABAA2168();

    sub_1ABA9EA34();

    v72 = v80 + v47[13];
    *v72 = v68;
    *(v72 + 1) = v70;
    v72[16] = v71;
    sub_1ABA8D348();

    sub_1ABAA6420();
  }

  sub_1ABA7BC90();
}

void sub_1ABCA18C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t))
{
  sub_1ABA7BCA8();
  v25 = v24;
  v104 = v26;
  sub_1ABD1B6D0(v27);
  v28 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v28);
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v114 = v32;
  sub_1ABA7D028();
  v107 = swift_allocObject();
  v33 = MEMORY[0x1E69E7CC0];
  *(v107 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v34 = swift_allocObject();
  sub_1ABA9DDF8(v34);
  sub_1ABD1BA5C(v35);
  sub_1ABA7D028();
  v36 = swift_allocObject();
  sub_1ABA9DDF8(v36);
  sub_1ABD1B61C(v37);
  sub_1ABA7D028();
  v106 = swift_allocObject();
  sub_1ABA9DDF8(v106);
  sub_1ABD1B6E8(v38);
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v39 + 16) = v33;
  sub_1ABD1B6DC(v39 + 16);
  sub_1ABA7D028();
  v40 = swift_allocObject();
  sub_1ABA9DDF8(v40);
  sub_1ABD1B3DC(v41);
  sub_1ABA7D028();
  v42 = swift_allocObject();
  sub_1ABA9DDF8(v42);
  sub_1ABD1BA8C(v43);
  sub_1ABA7D028();
  v44 = swift_allocObject();
  sub_1ABA9DDF8(v44);
  sub_1ABD1B3C4(v45);
  sub_1ABA88928();
  swift_allocObject();
  sub_1ABAA3CF0();
  v46[2] = v48;
  v46[3] = v47;
  v46[4] = v107;
  v46[5] = v25;
  v46[6] = v34;
  v46[7] = v36;
  v46[8] = v106;
  v46[9] = v23;
  v46[10] = v40;
  v46[11] = v42;
  v46[12] = v44;

  v49 = sub_1ABD1BE68();
  v104(v49);
  if (v22)
  {

    sub_1ABAA1668();

    sub_1ABA9EA34();
  }

  else
  {
    v105 = v44;
    sub_1ABD1BD0C(a21);

    v50 = v112;
    v51 = v103;
    sub_1ABAAA634();
    v52 = *v103;
    v53 = *(*v103 + 16);
    if (v53)
    {
      v54 = *v103;

      v55 = MEMORY[0x1E69E7CC0];
      v56 = 32;
      v57 = v114;
      do
      {
        sub_1ABD1B924(v52 + v56);
        if (v113)
        {
          sub_1ABAA0AB0(v113);
          sub_1ABD1B9E4();
          v58 = v109;
          if (v109 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v55 = v60;
            }

            v59 = *(v55 + 16);
            if (v59 >= *(v55 + 24) >> 1)
            {
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v55 = v61;
            }

            *(v55 + 16) = v59 + 1;
            *(v55 + v59 + 32) = v58;
            v57 = v114;
          }
        }

        v56 += 8;
        --v53;
      }

      while (v53);
      v62 = v101;

      v51 = v103;
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
      v57 = v114;
      v62 = v101;
    }

    v98(&v112, v50);
    sub_1ABD1BF7C(v112);
    sub_1ABAAD280(&v108);
    v63 = sub_1ABD1C26C();
    v102[1] = v105;
    v102[2] = v63;
    v102[3] = v64;
    sub_1ABD1B058();
    v65 = *v99;
    sub_1ABD1AF20();
    v69 = sub_1ABA9DFB8(v57, v66, v67, v68);
    v70 = a22(v69);
    sub_1ABD1C23C(v70);

    sub_1ABC8B318(v71, v57, v102);
    sub_1ABAAD280(&v110);
    *(v102 + v70[7]) = *v105;
    sub_1ABAAD280(&v111);
    *(v102 + v70[8]) = *v105;
    sub_1ABA890D8();
    v72 = *v62;
    if (*(*v62 + 16))
    {
      v73 = *(v72 + 32);
    }

    sub_1ABAAFB28();
    v74 = v70[9];
    sub_1ABD1BCD8();
    *v76 = v72;
    v76[1] = v75;
    sub_1ABD1BE04(v77);
    sub_1ABD1B03C();
    sub_1ABD1BA44();
    if (v78)
    {
      v79 = *(v100 + 32);
    }

    sub_1ABAAFB28();
    v80 = v70[10];
    sub_1ABD1BCD8();
    sub_1ABD1BCCC(v81);
    v83 = *v51;
    v84 = *(v83 + 16);
    if (v84)
    {
      v85 = *(v83 + 32);
    }

    else
    {
      v85 = 0;
    }

    v86 = (v82 + v70[11]);
    *v86 = v83;
    v86[1] = v85;
    sub_1ABA889F8(v84 == 0);
    if (v88)
    {
      v89 = *(v55 + 32);
    }

    else
    {
      v89 = 25;
    }

    v90 = v87 + v70[12];
    sub_1ABAA5C0C(v89);
    v92 = v91;
    sub_1ABA7F2A0();
    v93 = *v92;
    v94 = *(v93 + 16);
    if (v94)
    {
      v95 = *(v93 + 32);
    }

    else
    {
      v95 = 0;
    }

    v96 = v94 == 0;

    sub_1ABD1BC5C();
    sub_1ABAA1460();

    sub_1ABAA1668();

    v97 = v102 + v70[13];
    *v97 = v93;
    *(v97 + 1) = v95;
    v97[16] = v96;
    sub_1ABA8D348();

    sub_1ABA9EA34();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCA2170(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphMeetingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCA243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t))
{
  sub_1ABA7E2A8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v58 = v30;
  v32 = v31;
  v34 = v33;
  sub_1ABD1B3D0();
  v35 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v35);
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v39 = sub_1ABB2B834(v34);
  v23[1] = v34;
  v23[2] = v39;
  v23[3] = v40;
  v41 = sub_1ABA8B2DC();
  v42 = a23(v41);
  sub_1ABAB1F84(v42);
  *(v23 + v42[7]) = v32;
  *(v23 + v42[8]) = v58;
  if (*(v29 + 16))
  {
    v43 = *(v29 + 32);
  }

  sub_1ABA897F0();
  v44 = v42[9];
  sub_1ABD1AE28();
  if (v45)
  {
    v46 = *(v27 + 32);
  }

  sub_1ABAB5FE0();
  v47 = v42[10];
  sub_1ABA89D74();
  if (*(v25 + 16))
  {
    v49 = *(v25 + 32);
  }

  sub_1ABD1BB10(v48);
  if (v51)
  {
    v52 = *(v50 + 32);
  }

  v53 = v42[12];
  sub_1ABD1B190(v50);
  if (v54)
  {
    v56 = *(v55 + 32);
  }

  v57 = v42[13];
  sub_1ABAA2B08(v54 == 0);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCA25A0(uint64_t a1)
{
  v2 = sub_1ABD0B3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA25DC(uint64_t a1)
{
  v2 = sub_1ABD0B3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphMeetingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6890, &dword_1ABF50C50);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B3FC();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348314);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348320);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphMeetingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D68B0, &unk_1ABF50C60);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphMeetingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B3FC();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphEatingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphEatingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphEatingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA3244(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphEatingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA3510(uint64_t a1)
{
  v2 = sub_1ABD0B450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA354C(uint64_t a1)
{
  v2 = sub_1ABD0B450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphEatingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D68C0, &dword_1ABF50C68);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B450();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphEatingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348332);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348338);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphEatingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D68E0, &unk_1ABF50C78);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphEatingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B450();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWatchingTVActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWatchingTVActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA41B4(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphWatchingTVActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA4480(uint64_t a1)
{
  v2 = sub_1ABD0B4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA44BC(uint64_t a1)
{
  v2 = sub_1ABD0B4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWatchingTVActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D68F0, &dword_1ABF50C80);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B4A4();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348350);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348356);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWatchingTVActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6910, &unk_1ABF50C90);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B4A4();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphCommunicatingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphCommunicatingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA5124(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphCommunicatingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA53F0(uint64_t a1)
{
  v2 = sub_1ABD0B4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA542C(uint64_t a1)
{
  v2 = sub_1ABD0B4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphCommunicatingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6920, &dword_1ABF50C98);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B4F8();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348368);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348374);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphCommunicatingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6940, &unk_1ABF50CA8);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B4F8();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphShoppingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphShoppingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphShoppingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA6094(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphShoppingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA6360(uint64_t a1)
{
  v2 = sub_1ABD0B54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA639C(uint64_t a1)
{
  v2 = sub_1ABD0B54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphShoppingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6950, &dword_1ABF50CB0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B54C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348386);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348392);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphShoppingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6970, &unk_1ABF50CC0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphShoppingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B54C();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphMindfulnessActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphMindfulnessActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA7004(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphMindfulnessActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA72D0(uint64_t a1)
{
  v2 = sub_1ABD0B5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA730C(uint64_t a1)
{
  v2 = sub_1ABD0B5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphMindfulnessActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6980, &dword_1ABF50CC8);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B5A0();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348404);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348410);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphMindfulnessActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D69A0, &unk_1ABF50CD8);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B5A0();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphSleepingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphSleepingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphSleepingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA7F74(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphSleepingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA8240(uint64_t a1)
{
  v2 = sub_1ABD0B5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA827C(uint64_t a1)
{
  v2 = sub_1ABD0B5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSleepingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D69B0, &dword_1ABF50CE0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B5F4();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348422);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348428);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSleepingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D69D0, &unk_1ABF50CF0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphSleepingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B5F4();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphTravelingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphTravelingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphTravelingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA8EE4(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphTravelingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA91B0(uint64_t a1)
{
  v2 = sub_1ABD0B648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA91EC(uint64_t a1)
{
  v2 = sub_1ABD0B648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphTravelingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D69E0, &dword_1ABF50CF8);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B648();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348440);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348446);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphTravelingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6A00, &unk_1ABF50D08);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphTravelingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B648();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphReadingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphReadingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphReadingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA9E54(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphReadingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCAA120(uint64_t a1)
{
  v2 = sub_1ABD0B69C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCAA15C(uint64_t a1)
{
  v2 = sub_1ABD0B69C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphReadingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6A10, &dword_1ABF50D10);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B69C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphReadingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348458);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348464);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphReadingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6A30, &unk_1ABF50D20);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphReadingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B69C();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphVacationingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphVacationingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphVacationingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCAADC4(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphVacationingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCAB090(uint64_t a1)
{
  v2 = sub_1ABD0B6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCAB0CC(uint64_t a1)
{
  v2 = sub_1ABD0B6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphVacationingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6A40, &dword_1ABF50D28);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B6F0();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(19);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(0);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(0);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348474);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphVacationingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6A60, &unk_1ABF50D38);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphVacationingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B6F0();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphGamingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABCABAC8@<X0>(void (*a1)(void *__return_ptr, void (*)(uint64_t a1), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v103 = a2;
  v104 = a1;
  v101 = a4;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v88 - v7;
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v99 = v8 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v92 = (v10 + 16);
  v11 = swift_allocObject();
  v118 = v11;
  *(v11 + 16) = v9;
  v93 = (v11 + 16);
  v12 = swift_allocObject();
  v109 = v12;
  *(v12 + 16) = v9;
  v94 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v95 = v13 + 16;
  v14 = a3;
  v15 = swift_allocObject();
  v15[2] = v9;
  v96 = v15 + 2;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v102 = v16 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v97 = v17 + 16;
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  v98 = (v18 + 16);
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = v14;
  v20 = v118;
  v19[4] = v10;
  v19[5] = v20;
  v19[6] = v109;
  v19[7] = v13;
  v19[8] = v15;
  v19[9] = v16;
  v19[10] = v17;
  v19[11] = v18;
  v107 = v8;

  v108 = v14;

  v106 = v10;

  v21 = v105;
  v104(v117, sub_1ABCACC08, 0, sub_1ABD19F4C, v19);
  if (v21)
  {

LABEL_17:
  }

  v22 = v99;
  v105 = 0;
  v89 = v13;
  v104 = v15;
  v90 = v16;
  v91 = v17;
  v103 = v18;

  v88 = v117[0];
  v23 = v102;
  swift_beginAccess();
  v31 = *v23;
  v32 = *(*v23 + 16);
  if (v32)
  {
    v33 = *v23;

    v34 = MEMORY[0x1E69E7CC0];
    v35 = 32;
    v36 = v22;
    do
    {
      EntityClass.init(intValue:)(*(v31 + v35 + 7), v117);
      if (v117[1])
      {
        ActivityEventType.init(activityTypeEntityClass:)(v117, v116);
        v37 = v116[0];
        if (v116[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v34 + 16);
            sub_1ABADADEC();
            v34 = v40;
          }

          v38 = *(v34 + 16);
          if (v38 >= *(v34 + 24) >> 1)
          {
            sub_1ABADADEC();
            v34 = v41;
          }

          *(v34 + 16) = v38 + 1;
          *(v34 + v38 + 32) = v37;
          v36 = v22;
        }
      }

      v35 += 8;
      --v32;
    }

    while (v32);

    v23 = v102;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    v36 = v22;
  }

  v42 = v105;
  sub_1ABC4B66C(v88, v24, v25, v26, v27, v28, v29, v30, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v43 = v101;
  v105 = v42;
  v44 = v100;
  if (v42)
  {

    goto LABEL_17;
  }

  v46 = v23;
  *v101 = v117[0];
  swift_beginAccess();
  v47 = *v36;
  v48 = sub_1ABB2B834(*v36);
  v43[1] = v47;
  v43[2] = v48;
  v43[3] = v49;
  v50 = v92;
  swift_beginAccess();
  v51 = *v50;
  v52 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7B9B4(v44, 1, 1, v52);
  v53 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  v54 = v53[6];

  sub_1ABC8B318(v55, v44, (v43 + v54));
  v56 = v93;
  swift_beginAccess();
  v57 = v53[7];
  v100 = *v56;
  *(v43 + v57) = v100;
  v58 = v94;
  swift_beginAccess();
  v59 = v53[8];
  v99 = *v58;
  *(v43 + v59) = v99;
  v60 = v95;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(*v60 + 16);
  if (v62)
  {
    v63 = *(v61 + 32);
  }

  else
  {
    v63 = 0;
  }

  v64 = v98;
  v65 = v97;
  v66 = v96;
  v67 = v43 + v53[9];
  *v67 = v61;
  *(v67 + 1) = v63;
  v67[16] = v62 == 0;
  swift_beginAccess();
  v68 = *v66;
  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = *(v68 + 32);
  }

  else
  {
    v70 = 0;
  }

  v71 = v43 + v53[10];
  *v71 = v68;
  *(v71 + 1) = v70;
  v71[16] = v69 == 0;
  v72 = *v46;
  v73 = *(*v46 + 16);
  if (v73)
  {
    v74 = *(v72 + 32);
  }

  else
  {
    v74 = 0;
  }

  v75 = v43 + v53[11];
  *v75 = v72;
  *(v75 + 1) = v74;
  v75[16] = v73 == 0;
  if (*(v34 + 16))
  {
    v76 = *(v34 + 32);
  }

  else
  {
    v76 = 25;
  }

  v77 = v43 + v53[12];
  *v77 = v34;
  v77[8] = v76;
  swift_beginAccess();
  v78 = *v65;
  v79 = *(*v65 + 16);
  if (v79)
  {
    v80 = *(v78 + 32);
  }

  else
  {
    v80 = 0;
  }

  v81 = v43 + v53[13];
  *v81 = v78;
  *(v81 + 1) = v80;
  v81[16] = v79 == 0;
  swift_beginAccess();
  v82 = *v64;
  if (*(v82 + 16))
  {
    v83 = *(v82 + 40);
    v102 = *(v82 + 32);
    v98 = v83;
    v84 = *(v82 + 48);
    v97 = *(v82 + 56);
    v85 = *(v82 + 64);
  }

  else
  {
    v102 = 0;
    v98 = 0;
    v84 = 0;
    v97 = 0;
    v85 = 0;
  }

  v86 = v101 + v53[14];
  v87 = v102;
  *v86 = v82;
  *(v86 + 1) = v87;
  *(v86 + 2) = v98;
  *(v86 + 3) = v84;
  *(v86 + 4) = v97;
  v86[40] = v85;
}

void sub_1ABCAC438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9E2C4(v10, v11, v12, v13, v14);
  sub_1ABD1B6DC(v15);
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B074(v21);
  sub_1ABA7D028();
  v109 = swift_allocObject();
  sub_1ABD1B074(v109);
  sub_1ABD1BD0C(v22);
  sub_1ABA7D028();
  v108 = swift_allocObject();
  sub_1ABD1B074(v108);
  sub_1ABD1BE50(v23);
  sub_1ABA7D028();
  v24 = swift_allocObject();
  sub_1ABD1B074(v24);
  sub_1ABD1BE44(v25);
  sub_1ABA7D028();
  v26 = swift_allocObject();
  sub_1ABD1B074(v26);
  sub_1ABD1B3DC(v27);
  sub_1ABA7D028();
  v28 = swift_allocObject();
  sub_1ABD1B074(v28);
  sub_1ABD1BA5C(v29);
  sub_1ABA7D028();
  v30 = swift_allocObject();
  sub_1ABD1B074(v30);
  sub_1ABD1B6D0(v31);
  sub_1ABA7D028();
  v32 = swift_allocObject();
  sub_1ABD1B074(v32);
  sub_1ABD1B61C(v33);
  sub_1ABA7D028();
  v34 = swift_allocObject();
  sub_1ABD1B074(v34);
  sub_1ABD1B6E8(v35);
  sub_1ABD1B534();
  v36 = swift_allocObject();
  sub_1ABD1BB28();
  *(v37 + 16) = v38;
  v36[3] = v107;
  v36[4] = v21;
  v36[5] = a10;
  v36[6] = v109;
  v36[7] = v108;
  v36[8] = v24;
  v36[9] = v26;
  v36[10] = v28;
  v36[11] = v30;
  v36[12] = v32;
  v36[13] = v34;

  sub_1ABD1B6B4();
  v39();
  if (v108)
  {

    sub_1ABAA1460();

    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABD1BC5C();
  }

  else
  {

    sub_1ABD1C01C();
    v40 = v105;
    sub_1ABAAA634();
    v41 = *v105;
    v42 = *(*v105 + 16);
    if (v42)
    {

      v43 = MEMORY[0x1E69E7CC0];
      v44 = 32;
      do
      {
        sub_1ABD1B924(v41 + v44);
        if (v115)
        {
          sub_1ABAA0AB0(v115);
          sub_1ABD1B9E4();
          v45 = v113;
          if (v113 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v43 = v48;
            }

            v47 = *(v43 + 16);
            v46 = *(v43 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_1ABA7BBEC(v46);
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v43 = v49;
            }

            *(v43 + 16) = v47 + 1;
            *(v43 + v47 + 32) = v45;
          }
        }

        v44 += 8;
        --v42;
      }

      while (v42);

      v40 = v105;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v50 = sub_1ABD1BE5C();
    sub_1ABC4B66C(v50, v51, v52, v53, v54, v55, v56, v57);
    sub_1ABD1BE30(&v116);
    v59 = *(v58 - 256);
    MEMORY[0] = v114;
    sub_1ABAAD280(&v110);
    v60 = sub_1ABD1C26C();
    MEMORY[8] = a10;
    MEMORY[0x10] = v60;
    MEMORY[0x18] = v61;
    sub_1ABD1B058();
    v62 = *v98;
    sub_1ABD1AF20();
    v66 = sub_1ABA9DFB8(v103, v63, v64, v65);
    v67 = type metadata accessor for CustomGraphGamingActivityEvent(v66);
    sub_1ABD1C23C(v67);

    sub_1ABC8B318(v68, v103, 0);
    sub_1ABAAD280(&v111);
    v69 = *a10;
    sub_1ABD1BDEC(v67[7]);
    sub_1ABAAD280(&v112);
    v70 = *a10;
    sub_1ABD1BDEC(v67[8]);
    sub_1ABD1B1F4();
    v71 = *v102;
    if (*(*v102 + 16))
    {
      v72 = *(v71 + 32);
    }

    sub_1ABAAFB28();
    v73 = v67[9];
    *v73 = v71;
    v73[1] = v74;
    sub_1ABD1BE04(v75);
    sub_1ABD1B058();
    v76 = *v99;
    if (*(*v99 + 16))
    {
      v77 = *(v76 + 32);
    }

    sub_1ABAAFB28();
    v78 = v67[10];
    *v78 = v76;
    *(v78 + 8) = v79;
    *(v78 + 16) = v80;
    v81 = *v40;
    if (*(v81 + 16))
    {
      v82 = *(v81 + 32);
    }

    sub_1ABAAFB28();
    v83 = v67[11];
    *v83 = v81;
    v83[1] = v84;
    sub_1ABA889F8(v85);
    if (v86)
    {
      v87 = *(v43 + 32);
    }

    else
    {
      v87 = 25;
    }

    v88 = v67[12];
    sub_1ABAA5C0C(v87);
    sub_1ABD1B03C();
    sub_1ABD1BA44();
    if (v89)
    {
      v90 = *(v100 + 32);
    }

    sub_1ABAAFB28();
    v91 = v67[13];
    sub_1ABD1BCCC(v92);
    sub_1ABA8A740();
    v93 = *v101;
    if (*(*v101 + 16))
    {
      v106 = *(v93 + 32);
      sub_1ABD1B3DC(*(v93 + 40));
      v94 = *(v93 + 48);
      v95 = *(v93 + 56);
      v96 = *(v93 + 64);
    }

    else
    {
      v106 = 0;
      v102 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
    }

    sub_1ABD1C2FC();

    v97 = v104 + v67[14];
    *v97 = v93;
    *(v97 + 8) = v106;
    *(v97 + 16) = v102;
    *(v97 + 24) = v94;
    *(v97 + 32) = v95;
    *(v97 + 40) = v96;
    sub_1ABAA1460();

    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABD1BC5C();
    sub_1ABD1B628();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCACC08(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphGamingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCACEA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v139 = a7;
  v140 = a6;
  v141 = a5;
  v143 = a4;
  v144 = a3;
  v15 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v135 - v17;
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = v23;
  v138 = a8;
  v145 = v11;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_130;
  }

  v166 = a1;
  v24 = *a1;
  v25 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v160);
  v26 = v25;
  v27 = *(&v160[0] + 1);
  if (*&v160[0] == v24 && *(&v160[0] + 1) == v26)
  {

LABEL_57:
    v58 = v166;
    if (!*(v166 + 97))
    {
      v68 = v166[5];
      v67 = v166[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v69 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v69);
      v70 = *(a2 + 16);
      *(v70 + 16) = v69 + 1;
      v71 = v70 + 16 * v69;
      *(v71 + 32) = v68;
      *(v71 + 40) = v67;
      *(a2 + 16) = v70;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_59:
      v59 = sub_1ABF237F4();
      sub_1ABA7AA24(v59, qword_1ED871B40);
      sub_1ABAE2EC4();
      v60 = sub_1ABF237D4();
      v61 = sub_1ABF24664();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v161 = v63;
        *v62 = 136642819;
        memcpy(v160, v58, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v64 = sub_1ABF23C94();
        v66 = &v161;
LABEL_86:
        v102 = sub_1ABADD6D8(v64, v65, v66);

        *(v62 + 4) = v102;
        _os_log_impl(&dword_1ABA78000, v60, v61, "Failed to parse %{sensitive}s.", v62, 0xCu);
        sub_1ABA84B54(v63);
        MEMORY[0x1AC5AB8B0](v63, -1, -1);
        MEMORY[0x1AC5AB8B0](v62, -1, -1);

        return;
      }

      goto LABEL_87;
    }

LABEL_100:
    swift_once();
    goto LABEL_59;
  }

  v136 = v26;
  v137 = v24;
  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_57;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_132;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v160);
  v27 = *(&v160[0] + 1);
  if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
  {

LABEL_63:
    v58 = v166;
    *&v163[10] = *(v166 + 82);
    v72 = *(v166 + 7);
    v161 = *(v166 + 5);
    v162 = v72;
    *v163 = *(v166 + 9);
    if (v163[25] == 1)
    {
      v73 = *(v166 + 7);
      v164[0] = *(v166 + 5);
      v164[1] = v73;
      v165[0] = *(v166 + 9);
      *(v165 + 9) = *(v166 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v74 = v144;

      v75 = v74;
      v76 = v145;
      sub_1ABC8A96C(v164, v75, v18);
      if (!v76)
      {
        if (sub_1ABA7E1E0(v18, 1, v19) != 1)
        {
          sub_1ABCF9424();
          v85 = v143;
          swift_beginAccess();
          sub_1ABB4DE30();
          v86 = *(*(v85 + 16) + 16);
          sub_1ABB4E234(v86);
          v87 = *(v85 + 16);
          *(v87 + 16) = v86 + 1;
          v88 = v87 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
          v89 = *(v142 + 72);
          sub_1ABD0AD58();
          *(v85 + 16) = v87;
          swift_endAccess();
          sub_1ABAB480C(&v161, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v22, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v161, &qword_1EB4D7E60, &unk_1ABF5E780);
        v77 = &qword_1EB4D5F20;
        v78 = &qword_1ABF4F358;
        v79 = v18;
        goto LABEL_88;
      }

      goto LABEL_65;
    }

    goto LABEL_82;
  }

  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_63;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v22 = &v154;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v160);
  if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
  {

LABEL_69:
    v58 = v166;
    *&v163[10] = *(v166 + 82);
    v80 = *(v166 + 7);
    v161 = *(v166 + 5);
    v162 = v80;
    *v163 = *(v166 + 9);
    if (v163[25] == 1)
    {
      v81 = *(v166 + 7);
      v157 = *(v166 + 5);
      v158 = v81;
      v159[0] = *(v166 + 9);
      *(v159 + 9) = *(v166 + 81);
      MEMORY[0x1EEE9AC00](v34);
      *(&v135 - 2) = &v157;
      v160[0] = v161;
      v160[1] = v162;
      v160[2] = *v163;
      *(&v160[2] + 10) = *&v163[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(v160, &v154);
      v82 = v145;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v135 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v83, v84, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, *(&v146 + 1), v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152, v153, v154, *(&v154 + 1));
      if (!v82)
      {
        v90 = v147;
        if (v147)
        {
          v154 = v157;
          v155 = v158;
          *v156 = v159[0];
          *(&v156[1] + 1) = *(v159 + 9);
          sub_1ABD19208(&v154);
          v91 = v141;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v92 = *(*(v91 + 16) + 16);
          sub_1ABB4E2AC(v92);
LABEL_75:
          v93 = *(v91 + 16);
          *(v93 + 16) = v92 + 1;
          v94 = v93 + (v92 << 6);
          *(v94 + 32) = v146;
          *(v94 + 48) = v90;
          v95 = v149;
          *(v94 + 56) = v148;
          *(v94 + 72) = v95;
          *(v94 + 88) = v150;
          *(v91 + 16) = v93;
          swift_endAccess();
          goto LABEL_76;
        }
      }

LABEL_71:
      v154 = v157;
      v155 = v158;
      *v156 = v159[0];
      *(&v156[1] + 1) = *(v159 + 9);
      sub_1ABD19208(&v154);
LABEL_76:
      sub_1ABAB480C(&v161, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_82:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v101 = sub_1ABF237F4();
    sub_1ABA7AA24(v101, qword_1ED871B40);
    sub_1ABAE2EC4();
    v60 = sub_1ABF237D4();
    v61 = sub_1ABF24664();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v154 = v63;
      *v62 = 136642819;
      memcpy(v160, v58, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v64 = sub_1ABF23C94();
      v66 = &v154;
      goto LABEL_86;
    }

LABEL_87:

    v77 = &qword_1EB4D1148;
    v78 = &qword_1ABF332D0;
    v79 = v58;
    goto LABEL_88;
  }

  v33 = sub_1ABF25054();

  if (v33)
  {
    goto LABEL_69;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v160);
  if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
  {

LABEL_78:
    v58 = v166;
    *&v163[10] = *(v166 + 82);
    v96 = *(v166 + 7);
    v161 = *(v166 + 5);
    v162 = v96;
    *v163 = *(v166 + 9);
    if (v163[25] == 1)
    {
      v97 = *(v166 + 7);
      v157 = *(v166 + 5);
      v158 = v97;
      v159[0] = *(v166 + 9);
      *(v159 + 9) = *(v166 + 81);
      MEMORY[0x1EEE9AC00](v37);
      *(&v135 - 2) = &v157;
      v160[0] = v161;
      v160[1] = v162;
      v160[2] = *v163;
      *(&v160[2] + 10) = *&v163[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(v160, &v154);
      v98 = v145;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v135 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v99, v100, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, *(&v146 + 1), v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152, v153, v154, *(&v154 + 1));
      if (!v98)
      {
        v90 = v147;
        if (v147)
        {
          v154 = v157;
          v155 = v158;
          *v156 = v159[0];
          *(&v156[1] + 1) = *(v159 + 9);
          sub_1ABD19208(&v154);
          v91 = v140;
          swift_beginAccess();
          sub_1ABB4DD28();
          v92 = *(*(v91 + 16) + 16);
          sub_1ABB4E12C(v92);
          goto LABEL_75;
        }
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_78;
  }

  v38 = v137;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v160);
  if (*&v160[0] == v38 && *(&v160[0] + 1) == v136)
  {

LABEL_91:
    v58 = v166;
    if (*(v166 + 97) == 2)
    {
      v103 = v145;
      sub_1ABC4A630(&v161, v166[5]);
      if (v103)
      {
        return;
      }

      v104 = v161;
      v105 = v139;
      goto LABEL_94;
    }

LABEL_99:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_100;
  }

  v40 = sub_1ABF25054();

  if (v40)
  {
    goto LABEL_91;
  }

  v41 = v137;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_138;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v160);
  if (*&v160[0] == v41 && *(&v160[0] + 1) == v136)
  {

LABEL_96:
    v58 = v166;
    if (*(v166 + 97) == 2)
    {
      v108 = v145;
      sub_1ABC4A630(&v161, v166[5]);
      if (v108)
      {
        return;
      }

      v104 = v161;
      v105 = v138;
LABEL_94:
      swift_beginAccess();
      sub_1ABB4DD40();
      v106 = *(*(v105 + 16) + 16);
      sub_1ABB4E144(v106);
      v107 = *(v105 + 16);
      *(v107 + 16) = v106 + 1;
      *(v107 + 8 * v106 + 32) = v104;
      *(v105 + 16) = v107;
      return;
    }

    goto LABEL_99;
  }

  v43 = sub_1ABF25054();

  if (v43)
  {
    goto LABEL_96;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v160);
  if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
  {
  }

  else
  {
    v45 = sub_1ABF25054();

    if ((v45 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v160);
        if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
        {
        }

        else
        {
          v54 = sub_1ABF25054();

          if ((v54 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1752], *(_Records_GDEntityPredicate_records + 439), *(_Records_GDEntityPredicate_records + 440), v160);
              if (*&v160[0] == v137 && *(&v160[0] + 1) == v136)
              {
              }

              else
              {
                v56 = sub_1ABF25054();

                if ((v56 & 1) == 0)
                {
                  return;
                }
              }

              *&v163[10] = *(v166 + 82);
              v124 = *(v166 + 7);
              v161 = *(v166 + 5);
              v162 = v124;
              *v163 = *(v166 + 9);
              if (v163[25] == 1)
              {
                v125 = *(v166 + 7);
                v157 = *(v166 + 5);
                v158 = v125;
                v159[0] = *(v166 + 9);
                *(v159 + 9) = *(v166 + 81);
                MEMORY[0x1EEE9AC00](v57);
                *(&v135 - 2) = &v157;
                v160[0] = v161;
                v160[1] = v162;
                v160[2] = *v163;
                *(&v160[2] + 10) = *&v163[10];
                sub_1ABAE2EC4();
                sub_1ABD191AC(v160, &v154);
                v126 = v145;
                sub_1ABD08790(sub_1ABD1A8C8, (&v135 - 4), &unk_1F209AEF8, sub_1ABD18F74, sub_1ABD19FB4);
                if (v126)
                {
                  v154 = v157;
                  v155 = v158;
                  *v156 = v159[0];
                  *(&v156[1] + 1) = *(v159 + 9);
                  sub_1ABD19208(&v154);
                  sub_1ABAB480C(&v161, &qword_1EB4D7E60, &unk_1ABF5E780);
                  return;
                }

                v128 = v147;
                if (v147)
                {
                  LODWORD(v166) = BYTE8(v148);
                  v145 = v148;
                  v129 = v146;
                  v154 = v157;
                  v155 = v158;
                  *v156 = v159[0];
                  *(&v156[1] + 1) = *(v159 + 9);
                  sub_1ABD19208(&v154);
                  swift_beginAccess();
                  sub_1ABB4DF38();
                  v130 = *(*(a11 + 16) + 16);
                  sub_1ABB4E33C(v130);
                  v131 = *(a11 + 16);
                  *(v131 + 16) = v130 + 1;
                  v132 = v131 + 40 * v130;
                  *(v132 + 32) = v129;
                  v133 = v145;
                  *(v132 + 48) = v128;
                  *(v132 + 56) = v133;
                  *(v132 + 64) = v166 & 1;
                  *(a11 + 16) = v131;
                  swift_endAccess();
LABEL_65:
                  v77 = &qword_1EB4D7E60;
                  v78 = &unk_1ABF5E780;
                  v79 = &v161;
LABEL_88:
                  sub_1ABAB480C(v79, v77, v78);
                  return;
                }

LABEL_130:
                v134 = v22[5];
                v154 = v22[4];
                v155 = v134;
                *v156 = v22[6];
                *(v22 + 41) = *(v22 + 105);
                sub_1ABD19208(&v154);
                goto LABEL_65;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_123:
                v127 = sub_1ABF237F4();
                sub_1ABA7AA24(v127, qword_1ED871B40);
                sub_1ABAE2EC4();
                v60 = sub_1ABF237D4();
                v61 = sub_1ABF24664();
                if (os_log_type_enabled(v60, v61))
                {
                  v62 = swift_slowAlloc();
                  v63 = swift_slowAlloc();
                  *&v154 = v63;
                  *v62 = 136642819;
                  memcpy(v160, v166, 0x62uLL);
                  sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
                  v64 = sub_1ABF23C94();
                  v66 = &v154;
                  goto LABEL_86;
                }

                goto LABEL_125;
              }

LABEL_136:
              swift_once();
              goto LABEL_123;
            }

LABEL_140:
            __break(1u);
            return;
          }
        }

        if (!*(v166 + 97))
        {
          v116 = v166[5];
          v117 = v166[6];

          v118 = sub_1ABB24D04(v116, v117);
          if ((v119 & 1) == 0)
          {
            v121 = v118;
            swift_beginAccess();
            sub_1ABB4DCB0();
            v122 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v122);
            v123 = *(a10 + 16);
            *(v123 + 16) = v122 + 1;
            *(v123 + 8 * v122 + 32) = v121;
            *(a10 + 16) = v123;
            return;
          }
        }

        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v120 = sub_1ABF237F4();
        sub_1ABA7AA24(v120, qword_1ED871B40);
        sub_1ABAE2EC4();
        v60 = sub_1ABF237D4();
        v61 = sub_1ABF24664();
        if (!os_log_type_enabled(v60, v61))
        {
LABEL_125:

          v115 = v166;
          goto LABEL_126;
        }

        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v161 = v63;
        *v62 = 136642819;
        v114 = v166;
        goto LABEL_116;
      }

LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  v27 = v166;
  if (*(v166 + 97) != 2)
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_106:
      v113 = sub_1ABF237F4();
      sub_1ABA7AA24(v113, qword_1ED871B40);
      sub_1ABAE2EC4();
      v60 = sub_1ABF237D4();
      v61 = sub_1ABF24664();
      if (!os_log_type_enabled(v60, v61))
      {

        v115 = v27;
LABEL_126:
        sub_1ABAB480C(v115, &qword_1EB4D1148, &qword_1ABF332D0);
        return;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v161 = v63;
      *v62 = 136642819;
      v114 = v27;
LABEL_116:
      memcpy(v160, v114, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v64 = sub_1ABF23C94();
      v66 = &v161;
      goto LABEL_86;
    }

LABEL_133:
    swift_once();
    goto LABEL_106;
  }

  v109 = v145;
  sub_1ABC4CBC0(v166[5], v46, v47, v48, v49, v50, v51, v52, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, *(&v146 + 1), v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), v156[0], v156[1]);
  if (!v109)
  {
    v110 = v161;
    swift_beginAccess();
    sub_1ABB4DE48();
    v111 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v111);
    v112 = *(a9 + 16);
    *(v112 + 16) = v111 + 1;
    *(v112 + 8 * v111 + 32) = v110;
    *(a9 + 16) = v112;
  }
}

void sub_1ABCAE3A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13)
{
  v291 = a8;
  v294 = a7;
  v296 = a6;
  v299 = a5;
  v306 = a4;
  v316 = a3;
  v15 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v317 = &v280 - v17;
  v310 = type metadata accessor for CustomGraphDateRelationship(0);
  v304 = *(v310 - 8);
  v18 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v310);
  v305 = &v280 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a13 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v319 = sub_1ABF247E4();
  v318 = *(v319 - 8);
  v22 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v287 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v303 = &v280 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v312 = &v280 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v321 = &v280 - v29;
  v324 = AssociatedTypeWitness;
  v320 = *(AssociatedTypeWitness - 8);
  v30 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v283 = &v280 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v286 = &v280 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v300 = &v280 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v301 = &v280 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v308 = &v280 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v309 = &v280 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v313 = &v280 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v315 = &v280 - v46;
  v327 = *(a12 - 1);
  v47 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v285 = &v280 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v289 = &v280 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v290 = &v280 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v295 = &v280 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v297 = &v280 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v280 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v307 = &v280 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v314 = &v280 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v322 = &v280 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v326 = &v280 - v68;
  v331 = swift_checkMetadataState();
  v328 = *(v331 - 8);
  v69 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v284 = &v280 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v288 = &v280 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v292 = &v280 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v280 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v298 = &v280 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v302 = &v280 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v311 = &v280 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v280 - v85;
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = &v280 - v89;
  v91 = *(v20 + 24);
  v332 = a1;
  v329 = v20;
  v330 = a12;
  v91(v338, a12, v20, v88);
  v325 = 279;
  v293 = v77;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_161;
  }

  v93 = v338[0];
  v92 = v338[1];
  v94 = v338[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v334);
  if (v334 == v93 && *(&v334 + 1) == v92)
  {

    goto LABEL_9;
  }

  v282 = v94;
  v281 = v60;
  v96 = a2;
  v97 = v92;
  v98 = sub_1ABF25054();

  if (v98)
  {
    a2 = v96;
LABEL_9:

    v86 = v330;
    v99 = v332;
    (*(v329 + 32))(v330, v329);
    v100 = v331;
    v101 = swift_getAssociatedConformanceWitness();
    v102 = (*(v101 + 24))(v100, v101);
    v104 = v103;
    (*(v328 + 8))(v90, v100);
    if (v104)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v105 = *(a2[2] + 16);
      sub_1ABB4E024(v105);
      v106 = a2[2];
      *(v106 + 16) = v105 + 1;
      v107 = v106 + 16 * v105;
      *(v107 + 32) = v102;
      *(v107 + 40) = v104;
      a2[2] = v106;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v108 = sub_1ABF237F4();
    sub_1ABA7AA24(v108, qword_1ED871B40);
    v109 = v327;
    v110 = *(v327 + 16);
    v111 = v326;
    v110(v326, v99, v86);
    v112 = sub_1ABF237D4();
    v113 = sub_1ABF24664();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = v109;
      v115 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      *&v334 = v332;
      *v115 = 136642819;
      v110(v322, v111, v86);
      v116 = sub_1ABF23C94();
      v118 = v117;
      (*(v114 + 8))(v111, v86);
      v119 = sub_1ABADD6D8(v116, v118, &v334);
LABEL_50:

      *(v115 + 4) = v119;
      v154 = v113;
LABEL_51:
      _os_log_impl(&dword_1ABA78000, v112, v154, "Failed to parse %{sensitive}s.", v115, 0xCu);
      v155 = v332;
      sub_1ABA84B54(v332);
      v156 = v155;
LABEL_52:
      MEMORY[0x1AC5AB8B0](v156, -1, -1);
      v157 = v115;
LABEL_53:
      MEMORY[0x1AC5AB8B0](v157, -1, -1);

      return;
    }

    v124 = *(v109 + 8);
    v125 = v111;
    goto LABEL_24;
  }

  v326 = v97;
  if (v325 < 0x92)
  {
    __break(1u);
    goto LABEL_119;
  }

  v120 = &_Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v334);
  v121 = v334 == v93 && *(&v334 + 1) == v326;
  v122 = v324;
  v123 = AssociatedConformanceWitness;
  if (v121)
  {

LABEL_26:
    v127 = v331;

    v128 = v330;
    (*(v329 + 32))(v330);
    v129 = v321;
    (*(v123 + 40))(v127, v123);
    (*(v328 + 8))(v86, v127);
    v130 = sub_1ABA7E1E0(v129, 1, v122);
    v131 = v327;
    if (v130 != 1)
    {
      v139 = v320;
      v140 = v315;
      (*(v320 + 32))(v315, v129, v122);
      (*(v139 + 16))(v313, v140, v122);
      swift_getAssociatedConformanceWitness();

      v141 = v317;
      v142 = v339;
      CustomGraphDateRelationship.init<A>(from:initializationResources:)();
      v339 = v142;
      if (!v142)
      {
        if (sub_1ABA7E1E0(v141, 1, v310) == 1)
        {
          (*(v139 + 8))(v140, v122);
          sub_1ABAB480C(v141, &qword_1EB4D5F20, &qword_1ABF4F358);
          return;
        }

        v170 = v305;
        sub_1ABCF9424();
        v171 = v306;
        swift_beginAccess();
        sub_1ABB4DE30();
        v172 = *(*(v171 + 16) + 16);
        sub_1ABB4E234(v172);
        v173 = *(v171 + 16);
        *(v173 + 16) = v172 + 1;
        v174 = v173 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
        v175 = *(v304 + 72);
        sub_1ABD0AD58();
        *(v171 + 16) = v173;
        swift_endAccess();
        sub_1ABD0ADB0(v170, type metadata accessor for CustomGraphDateRelationship);
      }

      v124 = *(v139 + 8);
      v125 = v140;
      v126 = v122;
      goto LABEL_60;
    }

    (*(v318 + 8))(v129, v319);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v132 = sub_1ABF237F4();
    sub_1ABA7AA24(v132, qword_1ED871B40);
    v133 = *(v131 + 16);
    v134 = v314;
    v133(v314, v332, v128);
    v112 = sub_1ABF237D4();
    v113 = sub_1ABF24664();
    if (!os_log_type_enabled(v112, v113))
    {

      (*(v131 + 8))(v134, v128);
      return;
    }

    v135 = v131;
    v115 = swift_slowAlloc();
    v332 = swift_slowAlloc();
    *&v334 = v332;
    *v115 = 136642819;
    v133(v322, v134, v128);
    v136 = sub_1ABF23C94();
    v138 = v137;
    (*(v135 + 8))(v134, v128);
LABEL_49:
    v119 = sub_1ABADD6D8(v136, v138, &v334);
    goto LABEL_50;
  }

  v90 = sub_1ABF25054();

  if (v90)
  {
    goto LABEL_26;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_167:
    swift_once();
LABEL_122:
    v223 = sub_1ABF237F4();
    sub_1ABA7AA24(v223, qword_1ED871B40);
    v224 = v327;
    v225 = *(v327 + 16);
    v226 = v290;
    v225(v290, v90, v86);
    v112 = sub_1ABF237D4();
    v227 = sub_1ABF24664();
    if (os_log_type_enabled(v112, v227))
    {
      v228 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      *&v334 = v332;
      *v228 = 136642819;
      v225(v322, v226, v86);
      v229 = sub_1ABF23C94();
      v231 = v230;
      (*(v224 + 8))(v226, v86);
      v232 = sub_1ABADD6D8(v229, v231, &v334);

      *(v228 + 4) = v232;
      _os_log_impl(&dword_1ABA78000, v112, v227, "Failed to parse %{sensitive}s.", v228, 0xCu);
      v233 = v332;
      sub_1ABA84B54(v332);
      MEMORY[0x1AC5AB8B0](v233, -1, -1);
      v157 = v228;
      goto LABEL_53;
    }

    (*(v224 + 8))(v226, v86);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v334);
  if (v334 == v93 && *(&v334 + 1) == v326)
  {

    goto LABEL_43;
  }

  v144 = sub_1ABF25054();

  if (v144)
  {
LABEL_43:
    v145 = v331;

    v86 = v330;
    v146 = v311;
    a2 = v332;
    (*(v329 + 32))(v330);
    v147 = v312;
    (*(v123 + 40))(v145, v123);
    (*(v328 + 8))(v146, v145);
    if (sub_1ABA7E1E0(v147, 1, v122) == 1)
    {
      (*(v318 + 8))(v147, v319);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v148 = sub_1ABF237F4();
      sub_1ABA7AA24(v148, qword_1ED871B40);
      v77 = v327;
      v149 = *(v327 + 16);
      v150 = v336;
      goto LABEL_47;
    }

    v158 = v320;
    v159 = v309;
    (*(v320 + 32))(v309, v147, v122);
    v160 = v308;
    (*(v158 + 16))(v308, v159, v122);
    v161 = type metadata accessor for CustomGraphPerson(0);
    v162 = sub_1ABD09EBC(&unk_1EB4D7E80);
    v163 = swift_getAssociatedConformanceWitness();
    v164 = v339;
    CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v334, v160, v161, v122, v162, v163);
    v339 = v164;
    if (!v164)
    {
      v165 = v335;
      if (v335)
      {
        v166 = v299;
        swift_beginAccess();
        sub_1ABB4DEA8();
        v167 = *(*(v166 + 16) + 16);
        sub_1ABB4E2AC(v167);
LABEL_57:
        v168 = *(v166 + 16);
        *(v168 + 16) = v167 + 1;
        v169 = v168 + (v167 << 6);
        *(v169 + 32) = v334;
        *(v169 + 48) = v165;
        *(v169 + 56) = v336[0];
        *(v169 + 72) = v336[1];
        *(v169 + 88) = v337;
        *(v166 + 16) = v168;
        swift_endAccess();
        goto LABEL_76;
      }
    }

    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_169:
    swift_once();
LABEL_137:
    v246 = sub_1ABF237F4();
    sub_1ABA7AA24(v246, qword_1ED871B40);
    v247 = *(v327 + 16);
    v247(v289, v332, v330);
    v112 = sub_1ABF237D4();
    v248 = sub_1ABF24664();
    if (os_log_type_enabled(v112, v248))
    {
      v115 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *&v334 = v249;
      *v115 = 136642819;
      v250 = v322;
      v251 = &v321;
LABEL_139:
      v252 = *(v251 - 32);
      v253 = v330;
      v247(v250, v252, v330);
      v254 = sub_1ABF23C94();
      v256 = v255;
      (*(v327 + 8))(v252, v253);
      v257 = sub_1ABADD6D8(v254, v256, &v334);

      *(v115 + 4) = v257;
      _os_log_impl(&dword_1ABA78000, v112, v248, "Failed to parse %{sensitive}s.", v115, 0xCu);
      sub_1ABA84B54(v249);
      v156 = v249;
      goto LABEL_52;
    }

    v124 = *(v327 + 8);
    v261 = &v321;
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v334);
  a2 = *(&v334 + 1);
  v176 = v334 == v93 && *(&v334 + 1) == v326;
  v90 = v331;
  if (v176)
  {

    goto LABEL_71;
  }

  v77 = sub_1ABF25054();

  if (v77)
  {
LABEL_71:
    v77 = v327;

    v86 = v330;
    v177 = v302;
    a2 = v332;
    (*(v329 + 32))(v330);
    v178 = v303;
    (*(v123 + 40))(v90, v123);
    (*(v328 + 8))(v177, v90);
    if (sub_1ABA7E1E0(v178, 1, v122) == 1)
    {
      (*(v318 + 8))(v178, v319);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v179 = sub_1ABF237F4();
      sub_1ABA7AA24(v179, qword_1ED871B40);
      v149 = *(v77 + 16);
      v150 = &v313;
      goto LABEL_47;
    }

    v158 = v320;
    v159 = v301;
    (*(v320 + 32))(v301, v178, v122);
    v180 = v300;
    (*(v158 + 16))(v300, v159, v122);
    v181 = sub_1ABD19740();
    v182 = swift_getAssociatedConformanceWitness();
    v183 = v339;
    CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v334, v180, &type metadata for CustomGraphLocation, v122, v181, v182);
    v339 = v183;
    if (!v183)
    {
      v165 = v335;
      if (v335)
      {
        v166 = v296;
        swift_beginAccess();
        sub_1ABB4DD28();
        v167 = *(*(v166 + 16) + 16);
        sub_1ABB4E12C(v167);
        goto LABEL_57;
      }
    }

LABEL_76:
    (*(v158 + 8))(v159, v122);
    return;
  }

  if (v325 < 0xA1)
  {
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v184 = v326;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_171:
    swift_once();
LABEL_153:
    v265 = sub_1ABF237F4();
    sub_1ABA7AA24(v265, qword_1ED871B40);
    v247 = *(v327 + 16);
    v247(v285, v332, v330);
    v112 = sub_1ABF237D4();
    v248 = sub_1ABF24664();
    if (os_log_type_enabled(v112, v248))
    {
      v115 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *&v334 = v249;
      *v115 = 136642819;
      v250 = v322;
      v251 = &v317;
      goto LABEL_139;
    }

    v124 = *(v327 + 8);
    v261 = &v317;
LABEL_149:
    v125 = *(v261 - 32);
    v126 = v330;
    goto LABEL_60;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v334);
  if (v334 == v93 && *(&v334 + 1) == v184)
  {

    goto LABEL_88;
  }

  v120 = sub_1ABF25054();

  if (v120)
  {
LABEL_88:
    v77 = v327;

    v86 = v330;
    v186 = v298;
    a2 = v332;
    (*(v329 + 32))(v330, v329);
    v187 = swift_getAssociatedConformanceWitness();
    (*(v187 + 32))(&v334, v90, v187);
    (*(v328 + 8))(v186, v90);
    if (BYTE8(v334))
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_90:
        v188 = sub_1ABF237F4();
        sub_1ABA7AA24(v188, qword_1ED871B40);
        v149 = *(v77 + 16);
        v150 = &v329;
LABEL_47:
        v151 = *(v150 - 32);
        v149(v151, a2, v86);
        v112 = sub_1ABF237D4();
        v113 = sub_1ABF24664();
        if (os_log_type_enabled(v112, v113))
        {
          v152 = v77;
          v115 = swift_slowAlloc();
          v332 = swift_slowAlloc();
          *&v334 = v332;
          *v115 = 136642819;
          v149(v322, v151, v86);
          v136 = sub_1ABF23C94();
          v138 = v153;
          (*(v152 + 8))(v151, v86);
          goto LABEL_49;
        }

        v124 = *(v77 + 8);
        v125 = v151;
LABEL_24:
        v126 = v86;
LABEL_60:
        v124(v125, v126);
        return;
      }

LABEL_162:
      swift_once();
      goto LABEL_90;
    }

    v189 = v339;
    sub_1ABC4A630(&v333, v334);
    v339 = v189;
    if (!v189)
    {
      v190 = v333;
      p_AssociatedConformanceWitness = &v326;
LABEL_93:
      v192 = *(p_AssociatedConformanceWitness - 32);
      swift_beginAccess();
      sub_1ABB4DD40();
      v193 = *(*(v192 + 16) + 16);
      sub_1ABB4E144(v193);
      v194 = *(v192 + 16);
      *(v194 + 16) = v193 + 1;
      *(v194 + 8 * v193 + 32) = v190;
LABEL_94:
      *(v192 + 16) = v194;
      return;
    }

    return;
  }

  if (v325 == 161)
  {
    __break(1u);
    goto LABEL_164;
  }

  v195 = v93;
  v93 = v295;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_173;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v334);
  v196 = v334 == v195 && *(&v334 + 1) == v184;
  v86 = v330;
  v90 = v332;
  if (v196)
  {

    goto LABEL_104;
  }

  v197 = sub_1ABF25054();

  if ((v197 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v334);
      if (v334 != v195 || *(&v334 + 1) != v184)
      {
        v212 = sub_1ABF25054();

        if (v212)
        {
LABEL_120:

          v213 = v292;
          (*(v329 + 32))(v86, v329);
          v214 = v331;
          v215 = swift_getAssociatedConformanceWitness();
          (*(v215 + 32))(&v334, v214, v215);
          (*(v328 + 8))(v213, v214);
          if ((BYTE8(v334) & 1) == 0)
          {
            v234 = v339;
            sub_1ABC4CBC0(v334, v216, v217, v218, v219, v220, v221, v222, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307);
            v339 = v234;
            if (!v234)
            {
              v235 = v333;
              swift_beginAccess();
              sub_1ABB4DE48();
              v236 = *(*(a9 + 16) + 16);
              sub_1ABB4E24C(v236);
              v237 = *(a9 + 16);
              *(v237 + 16) = v236 + 1;
              *(v237 + 8 * v236 + 32) = v235;
              *(a9 + 16) = v237;
            }

            return;
          }

          if (qword_1ED871B38 == -1)
          {
            goto LABEL_122;
          }

          goto LABEL_167;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v334);
          if (v334 == v195 && *(&v334 + 1) == v326)
          {

            goto LABEL_135;
          }

          v239 = sub_1ABF25054();

          if (v239)
          {
LABEL_135:

            v240 = v288;
            (*(v329 + 32))(v330, v329);
            v241 = v331;
            v242 = swift_getAssociatedConformanceWitness();
            v243 = BaseEntityFactObjectProtocol.asDouble.getter(v241, v242);
            v245 = v244;
            (*(v328 + 8))(v240, v241);
            if ((v245 & 1) == 0)
            {
              v192 = a10;
              swift_beginAccess();
              sub_1ABB4DCB0();
              v258 = *(*(a10 + 16) + 16);
              sub_1ABB4E0CC(v258);
              v194 = *(a10 + 16);
              *(v194 + 16) = v258 + 1;
              *(v194 + 8 * v258 + 32) = v243;
              goto LABEL_94;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_137;
            }

            goto LABEL_169;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1752], *(_Records_GDEntityPredicate_records + 439), *(_Records_GDEntityPredicate_records + 440), &v334);
            if (v334 == v195 && *(&v334 + 1) == v326)
            {
            }

            else
            {
              v260 = sub_1ABF25054();

              if ((v260 & 1) == 0)
              {
                return;
              }
            }

            v262 = v284;
            (*(v329 + 32))(v330);
            v263 = v287;
            v264 = v331;
            (*(AssociatedConformanceWitness + 40))(v331);
            (*(v328 + 8))(v262, v264);
            if (sub_1ABA7E1E0(v263, 1, v324) != 1)
            {
              v266 = v320;
              v267 = v286;
              v268 = v324;
              (*(v320 + 32))(v286, v287, v324);
              v269 = v283;
              (*(v266 + 16))(v283, v267, v268);
              v270 = sub_1ABD19E78();
              v271 = swift_getAssociatedConformanceWitness();
              v272 = v339;
              CustomGraphSoftwareRelationship.init<A>(from:initializationResources:)(&v334, v269, &type metadata for CustomGraphSoftware, v268, v270, v271);
              v339 = v272;
              if (!v272)
              {
                v273 = v335;
                if (v335)
                {
                  v274 = BYTE8(v336[0]);
                  v275 = *&v336[0];
                  v276 = v334;
                  swift_beginAccess();
                  sub_1ABB4DF38();
                  v277 = *(*(a11 + 16) + 16);
                  sub_1ABB4E33C(v277);
                  v278 = *(a11 + 16);
                  *(v278 + 16) = v277 + 1;
                  v279 = v278 + 40 * v277;
                  *(v279 + 32) = v276;
                  *(v279 + 48) = v273;
                  *(v279 + 56) = v275;
                  *(v279 + 64) = v274 & 1;
                  *(a11 + 16) = v278;
                  swift_endAccess();
                }
              }

              (*(v320 + 8))(v286, v324);
              return;
            }

            (*(v318 + 8))(v287, v319);
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_153;
            }

            goto LABEL_171;
          }

LABEL_175:
          __break(1u);
          return;
        }

LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

LABEL_119:

      goto LABEL_120;
    }

LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

LABEL_104:
  v120 = v327;

  v198 = v293;
  (*(v329 + 32))(v86, v329);
  v199 = v331;
  v200 = swift_getAssociatedConformanceWitness();
  (*(v200 + 32))(&v334, v199, v200);
  (*(v328 + 8))(v198, v199);
  if (BYTE8(v334))
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_106:
      v201 = sub_1ABF237F4();
      sub_1ABA7AA24(v201, qword_1ED871B40);
      v202 = *(v120 + 16);
      v202(v93, v90, v86);
      v112 = sub_1ABF237D4();
      v203 = sub_1ABF24664();
      if (os_log_type_enabled(v112, v203))
      {
        v204 = v93;
        v205 = v120;
        v115 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        *&v334 = v332;
        *v115 = 136642819;
        v202(v322, v204, v86);
        v206 = sub_1ABF23C94();
        v208 = v207;
        (*(v205 + 8))(v204, v86);
        v209 = sub_1ABADD6D8(v206, v208, &v334);

        *(v115 + 4) = v209;
        v154 = v203;
        goto LABEL_51;
      }

      v124 = *(v120 + 8);
      v125 = v93;
      goto LABEL_24;
    }

LABEL_165:
    swift_once();
    goto LABEL_106;
  }

  v210 = v339;
  sub_1ABC4A630(&v333, v334);
  v339 = v210;
  if (!v210)
  {
    v190 = v333;
    p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
    goto LABEL_93;
  }
}