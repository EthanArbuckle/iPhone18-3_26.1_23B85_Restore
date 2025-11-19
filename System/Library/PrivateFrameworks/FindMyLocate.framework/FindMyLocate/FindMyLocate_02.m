uint64_t sub_1B7FE5EC0()
{
  sub_1B7FE5CA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7FE5EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  if (*(a2 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) != 1)
  {
    return sub_1B80C928C();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
  v10 = *(a2 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1B807D88C(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1B807D88C(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_1B7FE60A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F18, &qword_1B80D9250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
  v7 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations);
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations;
    v17 = v0;
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v10(v5, v12, v1);
      sub_1B80C928C();
      (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);

    v6 = v16;
    v0 = v17;
    v14 = *(v17 + v16);
  }

  *(v0 + v6) = MEMORY[0x1E69E7CC0];

  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 0;
  return result;
}

uint64_t sub_1B7FE6218(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(type metadata accessor for Friend() - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE630C, v1, 0);
}

uint64_t sub_1B7FE630C()
{
  v1 = *(v0 + 16);
  *(*(v0 + 24) + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 1;
  v2 = *(v1 + 16);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v5 + 80);
    *(v0 + 96) = v6;
    *(v0 + 64) = *(v5 + 72);
    *(v0 + 72) = 0;
    sub_1B7FE7BD0(v3 + ((v6 + 32) & ~v6), v4);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1B7FE644C;
    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);

    return sub_1B7FF5E2C(v9, v8);
  }

  else
  {
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    sub_1B7FE60A0();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B7FE644C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FE66B8;
  }

  else
  {
    v6 = *(v2 + 24);
    sub_1B7FB86D4(*(v2 + 32), &unk_1EBA65FA0, &unk_1B80D2610);
    v5 = sub_1B7FE6580;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE6580()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72) + 1;
  sub_1B7FE7C34(*(v0 + 48));
  if (v2 == v1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_1B7FE60A0();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 72) + 1;
    *(v0 + 72) = v9;
    sub_1B7FE7BD0(*(v0 + 16) + ((*(v0 + 96) + 32) & ~*(v0 + 96)) + v8 * v9, *(v0 + 48));
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_1B7FE644C;
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);

    return sub_1B7FF5E2C(v12, v11);
  }
}

uint64_t sub_1B7FE66B8()
{
  v1 = v0[4];
  sub_1B7FE7C34(v0[6]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void *sub_1B7FE6734(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v135 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v129 - v8;
  v137 = type metadata accessor for Friend();
  v10 = *(v137 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v137);
  v147 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v136 = &v129 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v140 = &v129 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v139 = &v129 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v129 - v20;
  v22 = sub_1B80C8E2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *a2;
  static Date.trustedNow.getter(v26);
  v138 = v26;
  v150[2] = v26;

  v27 = sub_1B7FE759C(sub_1B7FE80F8, v150, a1);
  v29 = v27;
  if (*(v27 + 16))
  {
    v129 = v23;
    v130 = v22;
    v131 = v9;
    v132 = v3;
    v146 = a1[2];
    if (v146)
    {
      v30 = 0;
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v144 = a1 + v31;
      v32 = *(v10 + 72);
      v142 = 0;
      v143 = v31;
      v141 = v27 + v31;
      v149 = 0x80000001B80CBD30;
      a1 = MEMORY[0x1E69E7CC0];
      *&v28 = 141558275;
      v133 = v28;
      v145 = v27;
      while (1)
      {
        v148 = a1;
        sub_1B7FE7BD0(&v144[v32 * v30], v21);
        v35 = *(v29 + 16);
        if (!v35)
        {
LABEL_40:
          sub_1B7FE7BD0(v21, v147);
          a1 = v148;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1B807DA7C(0, a1[2] + 1, 1, a1);
          }

          v111 = a1[2];
          v110 = a1[3];
          if (v111 >= v110 >> 1)
          {
            a1 = sub_1B807DA7C(v110 > 1, v111 + 1, 1, a1);
          }

          sub_1B7FE7C34(v21);
          a1[2] = v111 + 1;
          v33 = a1 + v143 + v111 * v32;
          v34 = v147;
LABEL_5:
          sub_1B7FE8124(v34, v33);
          goto LABEL_6;
        }

        v36 = v141;
        while (1)
        {
          v39 = *v36;
          v40 = *(v36 + 16);
          v175[2] = *(v36 + 32);
          v175[1] = v40;
          v175[0] = v39;
          v41 = *(v36 + 48);
          v42 = *(v36 + 64);
          v43 = *(v36 + 80);
          v175[6] = *(v36 + 96);
          v175[5] = v43;
          v175[4] = v42;
          v175[3] = v41;
          v44 = *(v36 + 112);
          v45 = *(v36 + 128);
          v46 = *(v36 + 144);
          v175[10] = *(v36 + 160);
          v175[9] = v46;
          v175[8] = v45;
          v175[7] = v44;
          v47 = *v21;
          v176[1] = *(v21 + 1);
          v176[0] = v47;
          v48 = *(v21 + 4);
          v179 = *(v21 + 5);
          v178 = v48;
          v49 = *(v21 + 3);
          v176[2] = *(v21 + 2);
          v177 = v49;
          v50 = *(v21 + 9);
          v184 = *(v21 + 10);
          v51 = *(v21 + 7);
          v52 = *(v21 + 8);
          v183 = v50;
          v182 = v52;
          v180 = *(v21 + 6);
          v181 = v51;
          v53 = sub_1B80C90FC();
          v55 = v54;
          if (v53 != sub_1B80C90FC())
          {
            goto LABEL_14;
          }

          if (v55 == v56)
          {
            sub_1B7FC8DA4(v175, &v164);
            sub_1B7FC8DA4(v176, &v164);

            sub_1B7FCAD28(v176);
            sub_1B7FCAD28(v175);
          }

          else
          {
LABEL_14:
            v57 = sub_1B80C981C();
            sub_1B7FC8DA4(v175, &v164);
            sub_1B7FC8DA4(v176, &v164);

            sub_1B7FCAD28(v176);
            sub_1B7FCAD28(v175);
            if ((v57 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v58 = *(v36 + 176);
          if (v58 <= 1)
          {
            v59 = 0x65776F6C6C6F662ELL;
            v60 = 0xE900000000000072;
            if (*(v36 + 176))
            {
              v59 = 0x69776F6C6C6F662ELL;
              v60 = 0xEA0000000000676ELL;
            }
          }

          else if (v58 == 2)
          {
            v59 = 0x466572757475662ELL;
            v60 = 0xEF7265776F6C6C6FLL;
          }

          else if (v58 == 3)
          {
            v59 = 0xD000000000000010;
            v60 = v149;
          }

          else
          {
            v59 = 0x676E69646E65702ELL;
            v60 = 0xED0000726566664FLL;
          }

          v61 = v21[176];
          if (v61 <= 1)
          {
            v62 = 0x65776F6C6C6F662ELL;
            v63 = 0xE900000000000072;
            if (v21[176])
            {
              v62 = 0x69776F6C6C6F662ELL;
              v63 = 0xEA0000000000676ELL;
            }
          }

          else if (v61 == 2)
          {
            v62 = 0x466572757475662ELL;
            v63 = 0xEF7265776F6C6C6FLL;
          }

          else if (v61 == 3)
          {
            v62 = 0xD000000000000010;
            v63 = v149;
          }

          else
          {
            v62 = 0x676E69646E65702ELL;
            v63 = 0xED0000726566664FLL;
          }

          v64 = *(&v177 + 1);
          if (v59 == v62 && v60 == v63)
          {
            break;
          }

          v37 = sub_1B80C981C();

          if (v37)
          {
            goto LABEL_34;
          }

LABEL_10:
          v36 += v32;
          if (!--v35)
          {
            goto LABEL_40;
          }
        }

LABEL_34:
        MEMORY[0x1EEE9AC00](v38);
        *(&v129 - 2) = v138;
        v65 = v142;
        v66 = sub_1B7FE7C90(sub_1B7FE8118, (&v129 - 4), v64);
        v142 = v65;
        if (*(v66 + 16))
        {
          v67 = *(v21 + 7);
          v68 = *(v21 + 9);
          v159 = *(v21 + 8);
          v160 = v68;
          v69 = *(v21 + 9);
          v161 = *(v21 + 10);
          v70 = *(v21 + 3);
          v71 = *(v21 + 5);
          v155 = *(v21 + 4);
          v156 = v71;
          v72 = *(v21 + 5);
          v73 = *(v21 + 7);
          v157 = *(v21 + 6);
          v158 = v73;
          v74 = *(v21 + 1);
          v152[0] = *v21;
          v152[1] = v74;
          v75 = *(v21 + 3);
          v77 = *v21;
          v76 = *(v21 + 1);
          v153 = *(v21 + 2);
          v154 = v75;
          v172 = v159;
          v173 = v69;
          v174 = *(v21 + 10);
          v168 = v155;
          v169 = v72;
          v170 = v157;
          v171 = v67;
          v164 = v77;
          v165 = v76;
          v166 = v153;
          v167 = v70;
          Handle.updateWithdifferentExpiresByGroupID(_:)(v66, v163);
          sub_1B7FC8DA4(v152, v162);

          v162[8] = v172;
          v162[9] = v173;
          v162[10] = v174;
          v162[4] = v168;
          v162[5] = v169;
          v162[6] = v170;
          v162[7] = v171;
          v162[0] = v164;
          v162[1] = v165;
          v162[2] = v166;
          v162[3] = v167;
          sub_1B7FCAD28(v162);
          v78 = v21[176];
          v79 = v137;
          v80 = v139;
          sub_1B7FB8448(&v21[*(v137 + 40)], v139 + *(v137 + 40), &unk_1EBA65FD0, &unk_1B80D1920);
          sub_1B7FB8448(&v21[v79[12]], v80 + v79[12], &unk_1EBA65FD0, &unk_1B80D1920);
          v82 = v79[14];
          v81 = v79[15];
          v83 = &v21[v79[13]];
          v84 = *(v83 + 3);
          v86 = *(v83 + 5);
          v168 = *(v83 + 4);
          v85 = v168;
          v169 = v86;
          v87 = *(v83 + 9);
          v174 = *(v83 + 10);
          v88 = *(v83 + 7);
          v89 = *(v83 + 8);
          v90 = v89;
          v173 = *(v83 + 9);
          v172 = v89;
          v91 = *(v83 + 5);
          v93 = *(v83 + 7);
          v170 = *(v83 + 6);
          v92 = v170;
          v171 = v93;
          v94 = *(v83 + 1);
          v95 = *(v83 + 3);
          v166 = *(v83 + 2);
          v96 = v166;
          v167 = v95;
          v97 = *(v83 + 1);
          v164 = *v83;
          v98 = v164;
          v165 = v97;
          *(v80 + v79[11]) = 2;
          v99 = v163[9];
          *(v80 + 128) = v163[8];
          *(v80 + 144) = v99;
          *(v80 + 160) = v163[10];
          v100 = v163[5];
          *(v80 + 64) = v163[4];
          *(v80 + 80) = v100;
          v101 = v163[7];
          *(v80 + 96) = v163[6];
          *(v80 + 112) = v101;
          v102 = v163[1];
          *v80 = v163[0];
          *(v80 + 16) = v102;
          v103 = v163[3];
          *(v80 + 32) = v163[2];
          *(v80 + 48) = v103;
          LOBYTE(v82) = v21[v82];
          v104 = v21[177];
          v105 = v21[178];
          v106 = v21[179];
          LOBYTE(v81) = v21[v81];
          *(v80 + 176) = v78;
          *(v80 + v79[14]) = v82;
          *(v80 + 177) = v104;
          *(v80 + 178) = v105;
          *(v80 + 179) = v106;
          *(v80 + v79[15]) = v81;
          v107 = (v80 + v79[13]);
          v107[8] = v90;
          v107[9] = v87;
          v107[10] = *(v83 + 10);
          v107[4] = v85;
          v107[5] = v91;
          v107[6] = v92;
          v107[7] = v88;
          *v107 = v98;
          v107[1] = v94;
          v107[2] = v96;
          v107[3] = v84;
          sub_1B7FE7BD0(v80, v140);
          sub_1B7FB8448(&v164, &v151, &qword_1EBA65D78, &qword_1B80D2640);
          a1 = v148;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1B807DA7C(0, a1[2] + 1, 1, a1);
          }

          v109 = a1[2];
          v108 = a1[3];
          if (v109 >= v108 >> 1)
          {
            a1 = sub_1B807DA7C(v108 > 1, v109 + 1, 1, a1);
          }

          sub_1B7FE7C34(v139);
          sub_1B7FE7C34(v21);
          a1[2] = v109 + 1;
          v33 = a1 + v143 + v109 * v32;
          v34 = v140;
          goto LABEL_5;
        }

        if (qword_1ED8DD6D0 != -1)
        {
          swift_once();
        }

        v112 = sub_1B80C900C();
        __swift_project_value_buffer(v112, qword_1ED8DDE78);
        v113 = v136;
        sub_1B7FE7BD0(v21, v136);
        v114 = sub_1B80C8FEC();
        v115 = sub_1B80C941C();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *&v164 = v117;
          *v116 = v133;
          *(v116 + 4) = 1752392040;
          *(v116 + 12) = 2081;
          v118 = Friend.description.getter();
          v119 = v113;
          v121 = v120;
          sub_1B7FE7C34(v119);
          v122 = sub_1B7FB84FC(v118, v121, &v164);

          *(v116 + 14) = v122;
          _os_log_impl(&dword_1B7FB5000, v114, v115, "Friend: %{private,mask.hash}s expired", v116, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v117);
          MEMORY[0x1B8CB8970](v117, -1, -1);
          MEMORY[0x1B8CB8970](v116, -1, -1);
        }

        else
        {

          sub_1B7FE7C34(v113);
        }

        sub_1B7FE7C34(v21);
        a1 = v148;
LABEL_6:
        v29 = v145;
        if (++v30 == v146)
        {
          goto LABEL_52;
        }
      }
    }

    a1 = MEMORY[0x1E69E7CC0];
LABEL_52:

    v123 = sub_1B80C92CC();
    v124 = v131;
    (*(*(v123 - 8) + 56))(v131, 1, 1, v123);
    v125 = sub_1B7FE8254(&qword_1ED8DD560, _s20FriendshipConnectionCMa);
    v126 = swift_allocObject();
    v127 = v132;
    *(v126 + 16) = v132;
    *(v126 + 24) = v125;
    *(v126 + 32) = v127;
    *(v126 + 40) = v134;
    *(v126 + 48) = v135;
    swift_retain_n();
    sub_1B80A4870(0, 0, v124, &unk_1B80D2650, v126);

    v23 = v129;
    v22 = v130;
  }

  else
  {
  }

  (*(v23 + 8))(v138, v22);
  return a1;
}

uint64_t sub_1B7FE7394(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
  v3 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - v4;
  v6 = *(a1 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a1 + 56) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = *(a1 + 56);

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v27 + 56);
    v20 = *(*(v27 + 48) + v18);
    v21 = sub_1B80C8E2C();
    (*(*(v21 - 8) + 16))(&v5[*(v25 + 48)], v19 + *(*(v21 - 8) + 72) * v18, v21);
    *v5 = v20;
    sub_1B7FE8254(&qword_1EBA65F30, MEMORY[0x1E6969530]);
    v22 = sub_1B80C907C();
    result = sub_1B7FB86D4(v5, &qword_1EBA65DC0, &qword_1B80D2660);
    if ((v22 & 1) == 0)
    {
      v23 = 1;
LABEL_13:

      return v23;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v12 = *(v8 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FE759C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Friend();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1B7FE7BD0(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_1B7FE7C34(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1B7FE8124(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B8092B88(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B8092B88(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1B7FE8124(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1B7FE7C34(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1B7FE77C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FE77E8, a4, 0);
}

uint64_t sub_1B7FE77E8()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Framework trigger refreshClient since there's friendship expired", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F28, &qword_1B80D2658);
  v6 = swift_allocObject();
  *(v0 + 24) = v6;
  *(v6 + 16) = xmmword_1B80D1EB0;
  *(v6 + 32) = v5;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1B7FE7974;
  v8 = *(v0 + 16);

  return sub_1B7FE8BC0(v6);
}

uint64_t sub_1B7FE7974()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v5 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1B7FE7AD8, v5, 0);
  }

  else
  {
    v6 = *(v2 + 24);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1B7FE7AD8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1B7FE7B5C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1B7FE7BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FE7C34(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7FE7C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1B7FE7E10(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1B7FE8068(v12, v7, a3, v5);
  result = MEMORY[0x1B8CB8970](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7FE7E10(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1B80C8E2C();
  v6 = *(*(v38 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = v8 + 16;
  v34 = v8;
  v31 = 0;
  v32 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v37;
    v21 = v38;
LABEL_11:
    v24 = v36[7];
    v39 = *(v36[6] + v19);
    (*(v34 + 16))(v20, v24 + *(v34 + 72) * v19, v21);
    v25 = v35(&v39, v20);
    v26 = v20;
    if (v4)
    {
      return (*v32)(v20, v21);
    }

    v27 = v25;
    result = (*v32)(v26, v21);
    if (v27)
    {
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_1B8030500(v30, v29, v31, v36);
      }
    }
  }

  v22 = v10;
  v20 = v37;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1B8030500(v30, v29, v31, v36);
    }

    v23 = v12[v10];
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B7FE8068(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B7FE7E10(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B7FE8124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FE8188(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B7FE77C4(a1, v4, v5, v6, v8);
}

uint64_t sub_1B7FE8254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FE829C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632949;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF44496E6F697463;
    v4 = 0xEA00000000007265;
    if (a1 == 2)
    {
      v6 = 0x656E6E6F43637078;
    }

    else
    {
      v6 = 0x696669746E656469;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xEE00657079546E6FLL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x697463656E6E6F63;
    }

    else
    {
      v6 = 1684632949;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x656E6E6F43637078;
  v10 = 0xEF44496E6F697463;
  if (a2 != 2)
  {
    v9 = 0x696669746E656469;
    v10 = 0xEA00000000007265;
  }

  if (a2)
  {
    v2 = 0x697463656E6E6F63;
    v8 = 0xEE00657079546E6FLL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B80C981C();
  }

  return v13 & 1;
}

uint64_t sub_1B7FE840C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x4C64696C61766E69;
    v13 = 0xEF6E6F697461636FLL;
    if (a1 != 2)
    {
      v12 = 0x64656C6261736964;
      v13 = 0xE800000000000000;
    }

    v14 = 0x656C74746F726874;
    if (a1)
    {
      v11 = 0xE900000000000064;
    }

    else
    {
      v14 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7373654D646E6573;
    v4 = 0xEB00000000656761;
    v5 = 0xD000000000000012;
    v6 = 0x80000001B80CB600;
    if (a1 != 7)
    {
      v5 = 0xD000000000000014;
      v6 = 0x80000001B80CB620;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x696C616974696E69;
    v8 = 0xEE006E6F6974617ALL;
    if (a1 != 4)
    {
      v7 = 0x7550746F6E6E6163;
      v8 = 0xED00006873696C62;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEF6E6F697461636FLL;
        if (v9 != 0x4C64696C61766E69)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x64656C6261736964)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000064;
      if (v9 != 0x656C74746F726874)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x636972656E6567)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEE006E6F6974617ALL;
      if (v9 != 0x696C616974696E69)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xED00006873696C62;
      if (v9 != 0x7550746F6E6E6163)
      {
LABEL_52:
        v16 = sub_1B80C981C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEB00000000656761;
    if (v9 != 0x7373654D646E6573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x80000001B80CB600;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x80000001B80CB620;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1B7FE873C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &off_1B80CB290;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v4 = "FMLDevicesChangedNotification";
    }

    else
    {
      v4 = &off_1B80CB290;
    }
  }

  else if (a1 == 2)
  {
    v4 = "FMLFollowersChangedNotification";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "ngedNotification";
    v5 = 0xD000000000000023;
  }

  else
  {
    v4 = "ializedNotification";
    v5 = 0xD00000000000001ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v2 = "FMLDevicesChangedNotification";
    }
  }

  else if (a2 == 2)
  {
    v2 = "FMLFollowersChangedNotification";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "ngedNotification";
    if (a2 == 3)
    {
      v6 = 0xD000000000000023;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a2 != 3)
    {
      v2 = "ializedNotification";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B80C981C();
  }

  return v7 & 1;
}

uint64_t sub_1B7FE88A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D6F683C21245FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B726F773C21245FLL;
    }

    else
    {
      v4 = 0x656D6F683C21245FLL;
    }

    v5 = 0xEC0000005F24213ELL;
  }

  else if (a1 == 2)
  {
    v4 = 0x6F6863733C21245FLL;
    v5 = 0xEE005F24213E6C6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x3E6D79673C21245FLL;
    }

    else
    {
      v4 = 0x6568746F3C21245FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xEB000000005F2421;
    }

    else
    {
      v5 = 0xED00005F24213E72;
    }
  }

  v6 = 0x6F6863733C21245FLL;
  v7 = 0xEE005F24213E6C6FLL;
  v8 = 0x3E6D79673C21245FLL;
  v9 = 0xEB000000005F2421;
  if (a2 != 3)
  {
    v8 = 0x6568746F3C21245FLL;
    v9 = 0xED00005F24213E72;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0x6B726F773C21245FLL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xEC0000005F24213ELL;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B80C981C();
  }

  return v12 & 1;
}

uint64_t sub_1B7FE8A5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65766F6D6572;
    }

    else
    {
      v4 = 6579297;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x796669646F6DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726566666FLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x657469766E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65766F6D6572;
    }

    else
    {
      v9 = 6579297;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x726566666FLL;
    if (a2 != 3)
    {
      v6 = 0x657469766E69;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x796669646F6DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1B80C981C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1B7FE8BC0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = *v1;
  v3 = *(type metadata accessor for Friend() - 8);
  v2[21] = v3;
  v4 = *(v3 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE8D10, v1, 0);
}

uint64_t sub_1B7FE8D10()
{
  v18 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9].i64[0];
  v2 = sub_1B80C900C();
  v0[16].i64[0] = __swift_project_value_buffer(v2, qword_1ED8DDE78);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9].i64[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CC450, &v17);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x1B8CB7B30](v5, &type metadata for HandleType);
    v10 = sub_1B7FB84FC(v8, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s of types: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[10].i64[0];
  v12 = swift_task_alloc();
  v0[16].i64[1] = v12;
  v12[1] = vextq_s8(v0[9], v0[9], 8uLL);
  v12[2].i64[0] = v11;
  v13 = *(MEMORY[0x1E699C830] + 4);
  v14 = swift_task_alloc();
  v0[17].i64[0] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v14 = v0;
  v14[1] = sub_1B7FE8FA0;

  return MEMORY[0x1EEE04418](&v0[8].u64[1], 0x2873646E65697266, 0xEE00293A68746977, sub_1B7FF4260, v12, v15);
}

uint64_t sub_1B7FE8FA0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_1B7FE9BF0;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 152);

    v5 = sub_1B7FE90C8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FE90C8()
{
  v2 = v0[17];
  v1 = v0[18];
  v94 = *(v1 + 16);
  if (!v94)
  {
LABEL_88:
    v78 = v0[30];
    v77 = v0[31];
    v80 = v0[28];
    v79 = v0[29];
    v82 = v0[26];
    v81 = v0[27];
    v84 = v0[24];
    v83 = v0[25];
    v85 = v0[23];
    v106 = v0[22];

    v86 = v0[1];

    return v86(v2);
  }

  v104 = v0[29];
  v105 = v0[31];
  v103 = v0[27];
  v101 = v0[23];
  v102 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers;
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings;
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers;
  v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  v93 = v1 + 32;
  v87 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;
  swift_beginAccess();
  v88 = v8;
  swift_beginAccess();
  v89 = v7;
  swift_beginAccess();
  v90 = v6;
  swift_beginAccess();
  v92 = v4;
  v91 = v5;
  result = swift_beginAccess();
  v10 = 0;
  while (1)
  {
    v14 = *(v93 + v10);
    v100 = v10;
    if (v14 > 1)
    {
      break;
    }

    if (*(v93 + v10))
    {
      v48 = *(v2 + 16);
      if (v48)
      {
        v49 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        v99 = *(v2 + 16);
        while (v49 < *(v2 + 16))
        {
          v50 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v51 = *(v3 + 72);
          sub_1B7FF4050(v2 + v50 + v51 * v49, v0[29], type metadata accessor for Friend);
          v52 = v0[29];
          if (*(v104 + 176) == 1)
          {
            sub_1B7FE8124(v52, v0[28]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B8092B88(0, *(v17 + 16) + 1, 1);
              v48 = v99;
            }

            v54 = *(v17 + 16);
            v53 = *(v17 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1B8092B88(v53 > 1, v54 + 1, 1);
              v48 = v99;
            }

            v55 = v0[28];
            *(v17 + 16) = v54 + 1;
            result = sub_1B7FE8124(v55, v17 + v50 + v54 * v51);
          }

          else
          {
            result = sub_1B7FF3FF0(v52, type metadata accessor for Friend);
          }

          if (v48 == ++v49)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v17 = MEMORY[0x1E69E7CC0];
LABEL_84:
      v73 = v0[32];

      v74 = sub_1B80C8FEC();
      v75 = sub_1B80C941C();
      v59 = v100;
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        *(v76 + 4) = *(v17 + 16);

        _os_log_impl(&dword_1B7FB5000, v74, v75, "Caching followings count: %ld.", v76, 0xCu);
        MEMORY[0x1B8CB8970](v76, -1, -1);
      }

      else
      {
      }

      v11 = v92;
      v12 = v88;
    }

    else
    {
      v24 = *(v2 + 16);
      if (v24)
      {
        v25 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        v96 = *(v2 + 16);
        while (v25 < *(v2 + 16))
        {
          v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v27 = *(v3 + 72);
          sub_1B7FF4050(v2 + v26 + v27 * v25, v0[31], type metadata accessor for Friend);
          v28 = v0[31];
          if (*(v105 + 176))
          {
            result = sub_1B7FF3FF0(v28, type metadata accessor for Friend);
          }

          else
          {
            sub_1B7FE8124(v28, v0[30]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B8092B88(0, *(v17 + 16) + 1, 1);
              v24 = v96;
            }

            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_1B8092B88(v29 > 1, v30 + 1, 1);
              v24 = v96;
            }

            v31 = v0[30];
            *(v17 + 16) = v30 + 1;
            result = sub_1B7FE8124(v31, v17 + v26 + v30 * v27);
          }

          if (v24 == ++v25)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_94;
      }

      v17 = MEMORY[0x1E69E7CC0];
LABEL_79:
      v69 = v0[32];

      v70 = sub_1B80C8FEC();
      v71 = sub_1B80C941C();
      v59 = v100;
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        *(v72 + 4) = *(v17 + 16);

        _os_log_impl(&dword_1B7FB5000, v70, v71, "Caching followers count: %ld.", v72, 0xCu);
        MEMORY[0x1B8CB8970](v72, -1, -1);
      }

      else
      {
      }

      v11 = v92;
      v12 = v87;
    }

LABEL_5:
    v13 = *(v11 + v12);
    *(v11 + v12) = v17;
    v10 = v59 + 1;

    if (v10 == v94)
    {
      goto LABEL_88;
    }
  }

  if (v14 == 2)
  {
    v32 = *(v2 + 16);
    if (v32)
    {
      v33 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      v97 = *(v2 + 16);
      while (v33 < *(v2 + 16))
      {
        v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v35 = *(v3 + 72);
        sub_1B7FF4050(v2 + v34 + v35 * v33, v0[27], type metadata accessor for Friend);
        v36 = v0[27];
        if (*(v103 + 176) == 2)
        {
          sub_1B7FE8124(v36, v0[26]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B8092B88(0, *(v17 + 16) + 1, 1);
            v32 = v97;
          }

          v38 = *(v17 + 16);
          v37 = *(v17 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1B8092B88(v37 > 1, v38 + 1, 1);
            v32 = v97;
          }

          v39 = v0[26];
          *(v17 + 16) = v38 + 1;
          result = sub_1B7FE8124(v39, v17 + v34 + v38 * v35);
        }

        else
        {
          result = sub_1B7FF3FF0(v36, type metadata accessor for Friend);
        }

        if (v32 == ++v33)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_92;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v56 = v0[32];

    v57 = sub_1B80C8FEC();
    v58 = sub_1B80C941C();
    v59 = v100;
    if (os_log_type_enabled(v57, v58))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = *(v17 + 16);

      _os_log_impl(&dword_1B7FB5000, v57, v58, "Caching futureFollowers count: %ld.", v60, 0xCu);
      MEMORY[0x1B8CB8970](v60, -1, -1);
    }

    else
    {
    }

    v11 = v92;
    v12 = v89;
    goto LABEL_5;
  }

  if (v14 == 3)
  {
    v15 = *(v2 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      v95 = *(v2 + 16);
      while (v16 < *(v2 + 16))
      {
        v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v19 = *(v3 + 72);
        sub_1B7FF4050(v2 + v18 + v19 * v16, v0[25], type metadata accessor for Friend);
        v20 = v0[25];
        if (*(v102 + 176) == 3)
        {
          sub_1B7FE8124(v20, v0[24]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B8092B88(0, *(v17 + 16) + 1, 1);
            v15 = v95;
          }

          v22 = *(v17 + 16);
          v21 = *(v17 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1B8092B88(v21 > 1, v22 + 1, 1);
            v15 = v95;
          }

          v23 = v0[24];
          *(v17 + 16) = v22 + 1;
          result = sub_1B7FE8124(v23, v17 + v18 + v22 * v19);
        }

        else
        {
          result = sub_1B7FF3FF0(v20, type metadata accessor for Friend);
        }

        if (v15 == ++v16)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_93;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v61 = v0[32];

    v62 = sub_1B80C8FEC();
    v63 = sub_1B80C941C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = *(v17 + 16);

      _os_log_impl(&dword_1B7FB5000, v62, v63, "Caching futureFollowing count: %ld.", v64, 0xCu);
      MEMORY[0x1B8CB8970](v64, -1, -1);
    }

    else
    {
    }

    v59 = v100;

    v11 = v92;
    v12 = v90;
    goto LABEL_5;
  }

  v40 = *(v2 + 16);
  if (!v40)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_74:
    v65 = v0[32];

    v66 = sub_1B80C8FEC();
    v67 = sub_1B80C941C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = *(v17 + 16);

      _os_log_impl(&dword_1B7FB5000, v66, v67, "Caching pendingOffers count: %ld.", v68, 0xCu);
      MEMORY[0x1B8CB8970](v68, -1, -1);
    }

    else
    {
    }

    v59 = v100;

    v11 = v92;
    v12 = v91;
    goto LABEL_5;
  }

  v41 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v98 = *(v2 + 16);
  while (v41 < *(v2 + 16))
  {
    v42 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v43 = *(v3 + 72);
    sub_1B7FF4050(v2 + v42 + v43 * v41, v0[23], type metadata accessor for Friend);
    v44 = v0[23];
    if (*(v101 + 176) == 4)
    {
      sub_1B7FE8124(v44, v0[22]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B8092B88(0, *(v17 + 16) + 1, 1);
        v40 = v98;
      }

      v46 = *(v17 + 16);
      v45 = *(v17 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B8092B88(v45 > 1, v46 + 1, 1);
        v40 = v98;
      }

      v47 = v0[22];
      *(v17 + 16) = v46 + 1;
      result = sub_1B7FE8124(v47, v17 + v42 + v46 * v43);
    }

    else
    {
      result = sub_1B7FF3FF0(v44, type metadata accessor for Friend);
    }

    if (v40 == ++v41)
    {
      goto LABEL_74;
    }
  }

LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1B7FE9BF0()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v14 = v0[22];

  v11 = v0[1];
  v12 = v0[35];

  return v11();
}

uint64_t sub_1B7FE9CDC()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE9DAC, v0, 0);
}

uint64_t sub_1B7FE9DAC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(*(v4 - 8) + 48);
  LODWORD(v3) = v5(v1, 1, v4);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v3 == 1 && (v6 = v0[10], v7 = v0[8], v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, swift_beginAccess(), sub_1B7FB8448(v7 + v8, v6, &unk_1EBA65FF0, &qword_1B80D2620), v9 = v5(v6, 1, v4), sub_1B7FB86D4(v6, &unk_1EBA65FF0, &qword_1B80D2620), v9 == 1))
  {
    v11 = v0[10];
    v10 = v0[11];

    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C941C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7FB5000, v15, v16, "Retry updating Friends", v17, 2u);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v19 = v0[8];
    v18 = v0[9];

    v20 = swift_task_alloc();
    v0[12] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    v21 = *(MEMORY[0x1E699C830] + 4);
    v22 = swift_task_alloc();
    v0[13] = v22;
    *v22 = v0;
    v22[1] = sub_1B7FEA0D0;

    return MEMORY[0x1EEE04418]();
  }
}

uint64_t sub_1B7FEA0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1B7FEA264;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 64);

    v5 = sub_1B7FEA1F8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FEA1F8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7FEA264()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1B7FEA2DC(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FE0, &qword_1B80D2720);
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEA3D4, v2, 0);
}

uint64_t sub_1B7FEA3D4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  type metadata accessor for FriendStreamChange();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v4;
  v10 = *(MEMORY[0x1E699C830] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1B7FEA55C;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v11, 0xD000000000000014, 0x80000001B80CC480, sub_1B7FF4278, v9, v12);
}

uint64_t sub_1B7FEA55C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FEA6E8;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_1B7FEA684;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FEA684()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FEA6E8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F88, &qword_1B80D2728);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t sub_1B7FEA79C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_1B80C92CC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_1B7FF414C();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = v17;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  (*(v8 + 32))(v20 + v18, v11, v7);
  *(v20 + v19) = v23;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v15, &unk_1B80D2738, v20);
}

uint64_t sub_1B7FEA9C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 168) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for FriendStreamChange();
  *(v6 + 72) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  *(v6 + 88) = v11;
  v12 = *(v11 - 8);
  *(v6 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v14 = type metadata accessor for Friend();
  *(v6 + 112) = v14;
  v15 = *(v14 - 8);
  *(v6 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEAB64, a5, 0);
}

uint64_t sub_1B7FEAB64()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1B7FEAD6C;
    v2 = *(v0 + 48);

    return sub_1B7FE8BC0(&unk_1F2FF9458);
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, v9, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v13 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
    swift_beginAccess();
    sub_1B7FF450C(v8, v10 + v13, &unk_1EBA65FF0, &qword_1B80D2620);
    swift_endAccess();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B7FEAD6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_1B7FEB390;
  }

  else
  {
    v8 = sub_1B7FEAEA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1B7FEAEA0()
{
  v49 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = MEMORY[0x1B8CB7B30](v5, v6);
    v11 = sub_1B7FB84FC(v9, v10, &v48);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "receiveInitialUpdates: %{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = v0[19];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v0[15];
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v46 = (v0[12] + 8);
    v47 = *(v14 + 72);
    do
    {
      v28 = v0[16];
      v27 = v0[17];
      sub_1B7FF4050(v15, v27, type metadata accessor for Friend);
      sub_1B7FF4050(v27, v28, type metadata accessor for Friend);
      v29 = sub_1B80C8FEC();
      v30 = sub_1B80C941C();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[16];
      if (v31)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v48 = v17;
        *v16 = 136315138;
        v18 = Friend.description.getter();
        v20 = v19;
        sub_1B7FF3FF0(v32, type metadata accessor for Friend);
        v21 = sub_1B7FB84FC(v18, v20, &v48);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1B7FB5000, v29, v30, "Sending initial friend update: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B8CB8970](v17, -1, -1);
        MEMORY[0x1B8CB8970](v16, -1, -1);
      }

      else
      {

        sub_1B7FF3FF0(v32, type metadata accessor for Friend);
      }

      v22 = v0[17];
      v23 = v0[13];
      v24 = v0[11];
      v25 = v0[9];
      v26 = v0[7];
      sub_1B7FF4050(v22, v0[10], type metadata accessor for Friend);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
      sub_1B80C92EC();
      (*v46)(v23, v24);
      sub_1B7FF3FF0(v22, type metadata accessor for Friend);
      v15 += v47;
      --v13;
    }

    while (v13);
    v33 = v0[19];
  }

  v34 = v0[16];
  v35 = v0[17];
  v36 = v0[13];
  v37 = v0[10];
  v39 = v0[7];
  v38 = v0[8];
  v40 = v0[6];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v42 = *(v41 - 8);
  (*(v42 + 16))(v38, v39, v41);
  (*(v42 + 56))(v38, 0, 1, v41);
  v43 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v38, v40 + v43, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v44 = v0[1];

  return v44();
}

uint64_t sub_1B7FEB390()
{
  v27 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to send inital friends update %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[13];
  v17 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v18, v19, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  v23 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v18, v20 + v23, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B7FEB668()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEB778, v0, 0);
}

uint64_t sub_1B7FEB778()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1B7FB86D4(v0[13], &unk_1EBA65FF0, &qword_1B80D2620);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B80C92FC();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  v12 = v0[11];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1B7FF450C(v11, v4 + v5, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B7FEB948(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F58, &qword_1B80D26B8) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for FriendStreamChange();
  v2[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = *(type metadata accessor for Friend() - 8);
  v2[18] = v9;
  v10 = *(v9 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F60, &qword_1B80D26C0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEBB98, v1, 0);
}

uint64_t sub_1B7FEBB98()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  *(v0 + 224) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v6 = *(v3 + 48);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v2 == 1)
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v9 + v10, v7, &unk_1EBA65FF0, &qword_1B80D2620);
    LODWORD(v8) = v6(v7, 1, v8);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    if (v8 == 1)
    {
LABEL_13:
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      v34 = *(v0 + 192);
      v33 = *(v0 + 200);
      v36 = *(v0 + 176);
      v35 = *(v0 + 184);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v39 = *(v0 + 152);
      v40 = *(v0 + 136);
      v79 = *(v0 + 128);
      v80 = *(v0 + 112);
      v81 = *(v0 + 104);

      v41 = *(v0 + 8);

      return v41();
    }
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 72);
  v13 = *(v12 + 32);
  *(v0 + 296) = v13;
  v14 = -1;
  v15 = -1 << v13;
  if (-(-1 << v13) < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);

  if (v16)
  {
    v17 = 0;
LABEL_10:
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = __clz(__rbit64(v16));
    v23 = (v16 - 1) & v16;
    v24 = v22 | (v17 << 6);
    sub_1B7FF4050(*(v12 + 48) + *(v11 + 72) * v24, v21, type metadata accessor for Friend);
    v25 = *(*(v12 + 56) + v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    v27 = *(v26 + 48);
    sub_1B7FE8124(v21, v20);
    *(v20 + v27) = v25;
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = ((63 - v15) >> 6) - 1;
    while (v19 != v18)
    {
      v17 = v18 + 1;
      v16 = *(v12 + 72 + 8 * v18++);
      if (v16)
      {
        goto LABEL_10;
      }
    }

    v58 = *(v0 + 184);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v23 = 0;
  }

  *(v0 + 248) = v23;
  *(v0 + 256) = v19;
  v28 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v28, &qword_1EBA65F60, &qword_1B80D26C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    v30 = *(v0 + 72);

    goto LABEL_13;
  }

  v43 = *(v0 + 192);
  v44 = *(v0 + 168);
  v45 = *(v43 + *(v29 + 48));
  *(v0 + 297) = v45;
  sub_1B7FE8124(v43, v44);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 160);
  v47 = *(v0 + 168);
  v48 = *(v0 + 152);
  v49 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v49, qword_1ED8DDE78);
  sub_1B7FF4050(v47, v46, type metadata accessor for Friend);
  sub_1B7FF4050(v47, v48, type metadata accessor for Friend);
  v50 = sub_1B80C8FEC();
  v51 = sub_1B80C941C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *(v0 + 64) = v53;
    *v52 = 136446979;
    if (v45 <= 1)
    {
      if (v45)
      {
        v54 = 0xE600000000000000;
        v55 = 0x65766F6D6572;
      }

      else
      {
        v54 = 0xE300000000000000;
        v55 = 6579297;
      }
    }

    else if (v45 == 2)
    {
      v54 = 0xE600000000000000;
      v55 = 0x796669646F6DLL;
    }

    else if (v45 == 3)
    {
      v54 = 0xE500000000000000;
      v55 = 0x726566666FLL;
    }

    else
    {
      v54 = 0xE600000000000000;
      v55 = 0x657469766E69;
    }

    v61 = *(v0 + 152);
    v60 = *(v0 + 160);
    v62 = sub_1B7FB84FC(v55, v54, (v0 + 64));

    *(v52 + 4) = v62;
    *(v52 + 12) = 2160;
    *(v52 + 14) = 1752392040;
    *(v52 + 22) = 2081;
    v63 = *v60;
    v64 = v60[1];

    sub_1B7FF3FF0(v60, type metadata accessor for Friend);
    v65 = sub_1B7FB84FC(v63, v64, (v0 + 64));

    *(v52 + 24) = v65;
    *(v52 + 32) = 2082;
    v66 = 0xE900000000000072;
    v67 = *(v61 + 176);
    v68 = 0x65776F6C6C6F662ELL;
    v69 = 0xEF7265776F6C6C6FLL;
    v70 = 0x466572757475662ELL;
    v71 = 0xD000000000000010;
    v72 = 0xED0000726566664FLL;
    if (v67 == 3)
    {
      v72 = 0x80000001B80CBD30;
    }

    else
    {
      v71 = 0x676E69646E65702ELL;
    }

    if (v67 != 2)
    {
      v70 = v71;
      v69 = v72;
    }

    if (*(v61 + 176))
    {
      v68 = 0x69776F6C6C6F662ELL;
      v66 = 0xEA0000000000676ELL;
    }

    if (*(v61 + 176) <= 1u)
    {
      v73 = v68;
    }

    else
    {
      v73 = v70;
    }

    if (*(v61 + 176) <= 1u)
    {
      v74 = v66;
    }

    else
    {
      v74 = v69;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v75 = sub_1B7FB84FC(v73, v74, (v0 + 64));

    *(v52 + 34) = v75;
    _os_log_impl(&dword_1B7FB5000, v50, v51, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v52, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v53, -1, -1);
    MEMORY[0x1B8CB8970](v52, -1, -1);
  }

  else
  {
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);

    sub_1B7FF3FF0(v57, type metadata accessor for Friend);
    sub_1B7FF3FF0(v56, type metadata accessor for Friend);
  }

  v76 = swift_task_alloc();
  *(v0 + 272) = v76;
  *v76 = v0;
  v76[1] = sub_1B7FEC3A0;
  v77 = *(v0 + 72);
  v78 = *(v0 + 80);

  return sub_1B7FEDB08(v77);
}

uint64_t sub_1B7FEC3A0()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FEC4B0, v2, 0);
}

uint64_t sub_1B7FEC4B0()
{
  v2 = 0x65766F6D6572;
  if (*(v0 + 297) <= 1u && !*(v0 + 297))
  {
    goto LABEL_5;
  }

  v3 = sub_1B80C981C();

  if (v3)
  {
    goto LABEL_7;
  }

  if (*(v0 + 297) != 1)
  {
    sub_1B80C981C();
  }

  else
  {
LABEL_5:
  }

LABEL_7:
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  sub_1B7FF4050(v4, *(v0 + 136), type metadata accessor for Friend);
  swift_storeEnumTagMultiPayload();
  if (*(v4 + 176) == 1)
  {
    v6 = *(v0 + 264);
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C941C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "Internal FriendStream with following updates", v9, 2u);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_1B7FECFD8;
    v11 = *(v0 + 136);
    v12 = *(v0 + 80);

    return sub_1B7FF5020(v11);
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 200);
  v17 = *(v0 + 88);
  sub_1B7FB8448(*(v0 + 80) + *(v0 + 224), v16, &unk_1EBA65FF0, &qword_1B80D2620);
  v18 = v15(v16, 1, v17);
  v19 = *(v0 + 200);
  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  if (v18)
  {
    sub_1B7FF3FF0(*(v0 + 136), type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v20, type metadata accessor for Friend);
    sub_1B7FB86D4(v19, &unk_1EBA65FF0, &qword_1B80D2620);
    v22 = 1;
  }

  else
  {
    v23 = *(v0 + 128);
    v1 = *(v0 + 104);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    (*(v24 + 16))(v1, *(v0 + 200), v25);
    sub_1B7FB86D4(v19, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B7FF4050(v21, v23, type metadata accessor for FriendStreamChange);
    sub_1B80C92EC();
    (*(v24 + 8))(v1, v25);
    v2 = 0x65766F6D6572;
    sub_1B7FF3FF0(v21, type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v20, type metadata accessor for Friend);
    v22 = 0;
  }

  v26 = *(v0 + 112);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  (*(*(v27 - 8) + 56))(v26, v22, 1, v27);
  sub_1B7FB86D4(v26, &qword_1EBA65F58, &qword_1B80D26B8);
  v28 = *(v0 + 248);
  v29 = *(v0 + 256);
  if (!v28)
  {
    v31 = ((1 << *(v0 + 296)) + 63) >> 6;
    if (v31 <= (v29 + 1))
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = ((1 << *(v0 + 296)) + 63) >> 6;
    }

    v33 = v32 - 1;
    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        v68 = *(v0 + 184);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
        (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
        v37 = 0;
        goto LABEL_27;
      }

      v30 = *(v0 + 72);
      v28 = *(v30 + 8 * v34 + 64);
      ++v29;
      if (v28)
      {
        v29 = v34;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_32;
  }

  v30 = *(v0 + 72);
LABEL_26:
  v36 = *(v0 + 176);
  v35 = *(v0 + 184);
  v37 = (v28 - 1) & v28;
  v38 = __clz(__rbit64(v28)) | (v29 << 6);
  sub_1B7FF4050(*(v30 + 48) + *(*(v0 + 144) + 72) * v38, v36, type metadata accessor for Friend);
  LOBYTE(v38) = *(*(v30 + 56) + v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  v40 = *(v39 + 48);
  sub_1B7FE8124(v36, v35);
  *(v35 + v40) = v38;
  (*(*(v39 - 8) + 56))(v35, 0, 1, v39);
  v33 = v29;
LABEL_27:
  *(v0 + 248) = v37;
  *(v0 + 256) = v33;
  v41 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v41, &qword_1EBA65F60, &qword_1B80D26C0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {
    v43 = *(v0 + 72);

    v45 = *(v0 + 208);
    v44 = *(v0 + 216);
    v47 = *(v0 + 192);
    v46 = *(v0 + 200);
    v49 = *(v0 + 176);
    v48 = *(v0 + 184);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    v53 = *(v0 + 136);
    v83 = *(v0 + 128);
    v84 = *(v0 + 112);
    v85 = *(v0 + 104);

    v54 = *(v0 + 8);

    return v54();
  }

  v55 = *(v0 + 192);
  v56 = *(v0 + 168);
  LODWORD(v1) = *(v55 + *(v42 + 48));
  *(v0 + 297) = v1;
  sub_1B7FE8124(v55, v56);
  if (qword_1ED8DD6D0 != -1)
  {
    goto LABEL_61;
  }

LABEL_32:
  v58 = *(v0 + 160);
  v57 = *(v0 + 168);
  v59 = *(v0 + 152);
  v60 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v60, qword_1ED8DDE78);
  sub_1B7FF4050(v57, v58, type metadata accessor for Friend);
  sub_1B7FF4050(v57, v59, type metadata accessor for Friend);
  v61 = sub_1B80C8FEC();
  v62 = sub_1B80C941C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *(v0 + 64) = v64;
    *v63 = 136446979;
    if (v1 <= 1)
    {
      if (v1)
      {
        v65 = 0xE600000000000000;
      }

      else
      {
        v2 = 6579297;
        v65 = 0xE300000000000000;
      }
    }

    else if (v1 == 2)
    {
      v65 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
    }

    else if (v1 == 3)
    {
      v65 = 0xE500000000000000;
      v2 = 0x726566666FLL;
    }

    else
    {
      v65 = 0xE600000000000000;
      v2 = 0x657469766E69;
    }

    v71 = *(v0 + 152);
    v70 = *(v0 + 160);
    v72 = sub_1B7FB84FC(v2, v65, (v0 + 64));

    *(v63 + 4) = v72;
    *(v63 + 12) = 2160;
    *(v63 + 14) = 1752392040;
    *(v63 + 22) = 2081;
    v73 = *v70;
    v74 = v70[1];

    sub_1B7FF3FF0(v70, type metadata accessor for Friend);
    v75 = sub_1B7FB84FC(v73, v74, (v0 + 64));

    *(v63 + 24) = v75;
    *(v63 + 32) = 2082;
    v76 = *(v71 + 176);
    if (v76 <= 1)
    {
      if (*(v71 + 176))
      {
        v78 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v78 = 0x65776F6C6C6F662ELL;
      }

      if (*(v71 + 176))
      {
        v77 = 0xEA0000000000676ELL;
      }

      else
      {
        v77 = 0xE900000000000072;
      }
    }

    else if (v76 == 2)
    {
      v77 = 0xEF7265776F6C6C6FLL;
      v78 = 0x466572757475662ELL;
    }

    else if (v76 == 3)
    {
      v77 = 0x80000001B80CBD30;
      v78 = 0xD000000000000010;
    }

    else
    {
      v77 = 0xED0000726566664FLL;
      v78 = 0x676E69646E65702ELL;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v79 = sub_1B7FB84FC(v78, v77, (v0 + 64));

    *(v63 + 34) = v79;
    _os_log_impl(&dword_1B7FB5000, v61, v62, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v63, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v64, -1, -1);
    MEMORY[0x1B8CB8970](v63, -1, -1);
  }

  else
  {
    v67 = *(v0 + 152);
    v66 = *(v0 + 160);

    sub_1B7FF3FF0(v67, type metadata accessor for Friend);
    sub_1B7FF3FF0(v66, type metadata accessor for Friend);
  }

  v80 = swift_task_alloc();
  *(v0 + 272) = v80;
  *v80 = v0;
  v80[1] = sub_1B7FEC3A0;
  v81 = *(v0 + 72);
  v82 = *(v0 + 80);

  return sub_1B7FEDB08(v81);
}

uint64_t sub_1B7FECFD8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1B7FED9C0;
  }

  else
  {
    v6 = sub_1B7FED104;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B7FED104()
{
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = *(v0 + 88);
  sub_1B7FB8448(*(v0 + 80) + *(v0 + 224), v4, &unk_1EBA65FF0, &qword_1B80D2620);
  v6 = v3(v4, 1, v5);
  v7 = *(v0 + 200);
  v8 = *(v0 + 168);
  v9 = *(v0 + 136);
  if (v6)
  {
    sub_1B7FF3FF0(*(v0 + 136), type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v8, type metadata accessor for Friend);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    v10 = 1;
  }

  else
  {
    v11 = *(v0 + 128);
    v1 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    (*(v13 + 16))(v1, *(v0 + 200), v12);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B7FF4050(v9, v11, type metadata accessor for FriendStreamChange);
    sub_1B80C92EC();
    (*(v13 + 8))(v1, v12);
    sub_1B7FF3FF0(v9, type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v8, type metadata accessor for Friend);
    v10 = 0;
  }

  v14 = *(v0 + 112);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  (*(*(v15 - 8) + 56))(v14, v10, 1, v15);
  sub_1B7FB86D4(v14, &qword_1EBA65F58, &qword_1B80D26B8);
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  if (!v16)
  {
    v19 = ((1 << *(v0 + 296)) + 63) >> 6;
    if (v19 <= (v17 + 1))
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 296)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v58 = *(v0 + 184);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
        (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
        v25 = 0;
        goto LABEL_15;
      }

      v18 = *(v0 + 72);
      v16 = *(v18 + 8 * v22 + 64);
      ++v17;
      if (v16)
      {
        v17 = v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_20;
  }

  v18 = *(v0 + 72);
LABEL_14:
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  v25 = (v16 - 1) & v16;
  v26 = __clz(__rbit64(v16)) | (v17 << 6);
  sub_1B7FF4050(*(v18 + 48) + *(*(v0 + 144) + 72) * v26, v23, type metadata accessor for Friend);
  LOBYTE(v26) = *(*(v18 + 56) + v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  v28 = *(v27 + 48);
  sub_1B7FE8124(v23, v24);
  *(v24 + v28) = v26;
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  v21 = v17;
LABEL_15:
  *(v0 + 248) = v25;
  *(v0 + 256) = v21;
  v29 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v29, &qword_1EBA65F60, &qword_1B80D26C0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    v31 = *(v0 + 72);

    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = *(v0 + 136);
    v73 = *(v0 + 128);
    v74 = *(v0 + 112);
    v75 = *(v0 + 104);

    v42 = *(v0 + 8);

    return v42();
  }

  v44 = *(v0 + 192);
  v45 = *(v0 + 168);
  LODWORD(v1) = *(v44 + *(v30 + 48));
  *(v0 + 297) = v1;
  sub_1B7FE8124(v44, v45);
  if (qword_1ED8DD6D0 != -1)
  {
    goto LABEL_49;
  }

LABEL_20:
  v46 = *(v0 + 160);
  v47 = *(v0 + 168);
  v48 = *(v0 + 152);
  v49 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v49, qword_1ED8DDE78);
  sub_1B7FF4050(v47, v46, type metadata accessor for Friend);
  sub_1B7FF4050(v47, v48, type metadata accessor for Friend);
  v50 = sub_1B80C8FEC();
  v51 = sub_1B80C941C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *(v0 + 64) = v53;
    *v52 = 136446979;
    if (v1 <= 1)
    {
      if (v1)
      {
        v54 = 0xE600000000000000;
        v55 = 0x65766F6D6572;
      }

      else
      {
        v54 = 0xE300000000000000;
        v55 = 6579297;
      }
    }

    else if (v1 == 2)
    {
      v54 = 0xE600000000000000;
      v55 = 0x796669646F6DLL;
    }

    else if (v1 == 3)
    {
      v54 = 0xE500000000000000;
      v55 = 0x726566666FLL;
    }

    else
    {
      v54 = 0xE600000000000000;
      v55 = 0x657469766E69;
    }

    v61 = *(v0 + 152);
    v60 = *(v0 + 160);
    v62 = sub_1B7FB84FC(v55, v54, (v0 + 64));

    *(v52 + 4) = v62;
    *(v52 + 12) = 2160;
    *(v52 + 14) = 1752392040;
    *(v52 + 22) = 2081;
    v63 = *v60;
    v64 = v60[1];

    sub_1B7FF3FF0(v60, type metadata accessor for Friend);
    v65 = sub_1B7FB84FC(v63, v64, (v0 + 64));

    *(v52 + 24) = v65;
    *(v52 + 32) = 2082;
    v66 = *(v61 + 176);
    if (v66 <= 1)
    {
      if (*(v61 + 176))
      {
        v68 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v68 = 0x65776F6C6C6F662ELL;
      }

      if (*(v61 + 176))
      {
        v67 = 0xEA0000000000676ELL;
      }

      else
      {
        v67 = 0xE900000000000072;
      }
    }

    else if (v66 == 2)
    {
      v67 = 0xEF7265776F6C6C6FLL;
      v68 = 0x466572757475662ELL;
    }

    else if (v66 == 3)
    {
      v67 = 0x80000001B80CBD30;
      v68 = 0xD000000000000010;
    }

    else
    {
      v67 = 0xED0000726566664FLL;
      v68 = 0x676E69646E65702ELL;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v69 = sub_1B7FB84FC(v68, v67, (v0 + 64));

    *(v52 + 34) = v69;
    _os_log_impl(&dword_1B7FB5000, v50, v51, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v52, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v53, -1, -1);
    MEMORY[0x1B8CB8970](v52, -1, -1);
  }

  else
  {
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);

    sub_1B7FF3FF0(v57, type metadata accessor for Friend);
    sub_1B7FF3FF0(v56, type metadata accessor for Friend);
  }

  v70 = swift_task_alloc();
  *(v0 + 272) = v70;
  *v70 = v0;
  v70[1] = sub_1B7FEC3A0;
  v71 = *(v0 + 72);
  v72 = *(v0 + 80);

  return sub_1B7FEDB08(v71);
}

uint64_t sub_1B7FED9C0()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[14];
  v17 = v0[13];
  v10 = v0[9];

  sub_1B7FF3FF0(v9, type metadata accessor for FriendStreamChange);
  sub_1B7FF3FF0(v7, type metadata accessor for Friend);

  v11 = v0[1];
  v12 = v0[36];

  return v11();
}

uint64_t sub_1B7FEDB08(uint64_t a1)
{
  v2[122] = v1;
  v2[121] = a1;
  v3 = type metadata accessor for Friend();
  v2[123] = v3;
  v4 = *(v3 - 8);
  v2[124] = v4;
  v5 = *(v4 + 64) + 15;
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F60, &qword_1B80D26C0) - 8) + 64) + 15;
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEDC70, v1, 0);
}

int64_t sub_1B7FEDC70()
{
  v246 = v1;
  v2 = *(v1 + 968);
  v243 = (v1 + 960);
  v3 = *(v2 + 32);
  *(v1 + 1176) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  *(v1 + 1088) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers;
  *(v1 + 1096) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings;
  *(v1 + 1104) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers;
  *(v1 + 1112) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  *(v1 + 1120) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_owningSession;
  *(v1 + 1128) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;

  v7 = 0;
  while (1)
  {
    if (!v6)
    {
      v13 = ((1 << *(v1 + 1176)) + 63) >> 6;
      if (v13 <= (v7 + 1))
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = ((1 << *(v1 + 1176)) + 63) >> 6;
      }

      v15 = v14 - 1;
      while (1)
      {
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v16 >= v13)
        {
          v37 = *(v1 + 1072);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
          v19 = 0;
          goto LABEL_19;
        }

        v12 = *(v1 + 968);
        v6 = *(v12 + 8 * v16 + 64);
        ++v7;
        if (v6)
        {
          v7 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_166;
    }

    v12 = *(v1 + 968);
LABEL_18:
    v17 = *(v1 + 1072);
    v18 = *(v1 + 1064);
    v19 = (v6 - 1) & v6;
    v20 = __clz(__rbit64(v6)) | (v7 << 6);
    sub_1B7FF4050(*(v12 + 48) + *(*(v1 + 992) + 72) * v20, v18, type metadata accessor for Friend);
    LOBYTE(v20) = *(*(v12 + 56) + v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    v22 = *(v21 + 48);
    sub_1B7FE8124(v18, v17);
    *(v17 + v22) = v20;
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    v15 = v7;
LABEL_19:
    *(v1 + 1144) = v15;
    *(v1 + 1136) = v19;
    v23 = *(v1 + 1080);
    sub_1B7FC8F2C(*(v1 + 1072), v23, &qword_1EBA65F60, &qword_1B80D26C0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      v191 = *(v1 + 968);

      goto LABEL_159;
    }

    v25 = *(v1 + 1080);
    v26 = *(v25 + *(v24 + 48));
    sub_1B7FE8124(v25, *(v1 + 1056));
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v27 = *(v1 + 1056);
    v28 = *(v1 + 1048);
    v29 = sub_1B80C900C();
    __swift_project_value_buffer(v29, qword_1ED8DDE78);
    sub_1B7FF4050(v27, v28, type metadata accessor for Friend);
    v30 = sub_1B80C8FEC();
    v31 = sub_1B80C941C();
    if (!os_log_type_enabled(v30, v31))
    {
      v36 = *(v1 + 1048);

      sub_1B7FF3FF0(v36, type metadata accessor for Friend);
      goto LABEL_45;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v243 = v33;
    *v32 = 136446466;
    if (v26 <= 1)
    {
      if (v26)
      {
        v34 = 0xE700000000000000;
        v39 = 0x766F6D65722ELL;
        goto LABEL_34;
      }

      v34 = 0xE400000000000000;
      v35 = 1684300078;
    }

    else
    {
      if (v26 == 2)
      {
        v34 = 0xE700000000000000;
        v35 = 0x796669646F6D2ELL;
        goto LABEL_35;
      }

      if (v26 != 3)
      {
        v34 = 0xE700000000000000;
        v39 = 0x7469766E692ELL;
LABEL_34:
        v35 = v39 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        goto LABEL_35;
      }

      v34 = 0xE600000000000000;
      v35 = 0x726566666F2ELL;
    }

LABEL_35:
    v40 = *(v1 + 1048);
    v41 = sub_1B7FB84FC(v35, v34, v243);

    *(v32 + 4) = v41;
    *(v32 + 12) = 2082;
    v42 = *(v40 + 176);
    if (v42 <= 1)
    {
      if (*(v40 + 176))
      {
        v44 = 0xEA0000000000676ELL;
        v43 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v44 = 0xE900000000000072;
        v43 = 0x65776F6C6C6F662ELL;
      }
    }

    else if (v42 == 2)
    {
      v43 = 0x466572757475662ELL;
      v44 = 0xEF7265776F6C6C6FLL;
    }

    else if (v42 == 3)
    {
      v43 = 0xD000000000000010;
      v44 = 0x80000001B80CBD30;
    }

    else
    {
      v43 = 0x676E69646E65702ELL;
      v44 = 0xED0000726566664FLL;
    }

    sub_1B7FF3FF0(*(v1 + 1048), type metadata accessor for Friend);
    v45 = sub_1B7FB84FC(v43, v44, v243);

    *(v32 + 14) = v45;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "Updating friends cache %{public}s %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v33, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);

LABEL_45:
    v0 = *(v1 + 1056);
    v46 = *(v0 + 176);
    if (v46 <= 1)
    {
      break;
    }

    if (v46 == 2)
    {
      if (v26 == 1)
      {
        v88 = *(v1 + 1104);
        v89 = *(v1 + 976);
        v90 = swift_task_alloc();
        *(v90 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v90);
        v0 = *(v89 + v88);
        v91 = *(v0 + 16);
        v92 = v91 - result;
        if (v91 < result)
        {
          goto LABEL_178;
        }

        v93 = result;
        if (result < 0)
        {
          goto LABEL_182;
        }

        v94 = result - v91;
        v95 = result;
        if (__OFADD__(v91, result - v91))
        {
          goto LABEL_185;
        }

        v96 = *(v1 + 1104);
        v97 = *(v1 + 976);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + v96) = v0;
        if (!isUniquelyReferenced_nonNull_native || v95 > *(v0 + 24) >> 1)
        {
          v99 = *(v1 + 1104);
          v100 = *(v1 + 976);
          if (v91 <= v95)
          {
            v101 = v91 - v92;
          }

          else
          {
            v101 = v91;
          }

          v0 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v101, 1, v0);
          *(v100 + v99) = v0;
        }

        v102 = *(v1 + 992);
        v103 = *(v1 + 984);
        v104 = v0 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v105 = *(v102 + 72);
        v106 = v105 * v93;
        result = swift_arrayDestroy();
        if (v91 != v93)
        {
          if (v106 < v105 * v91 || v104 + v105 * v93 >= v104 + v105 * v91 + (*(v0 + 16) - v91) * v105)
          {
            v168 = *(v1 + 984);
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v106 != v105 * v91)
          {
            v107 = *(v1 + 984);
            result = swift_arrayInitWithTakeBackToFront();
          }

          v169 = *(v0 + 16);
          v170 = __OFADD__(v169, v94);
          v171 = v169 + v94;
          if (v170)
          {
            goto LABEL_190;
          }

          *(v0 + 16) = v171;
        }

        *(*(v1 + 976) + *(v1 + 1104)) = v0;
LABEL_156:
        swift_endAccess();

        goto LABEL_7;
      }

      if (!v26)
      {
        v65 = *(v1 + 1104);
        v66 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1016), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v66 + v65);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + v65) = v0;
        if ((v67 & 1) == 0)
        {
          v183 = *(v1 + 1104);
          v184 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v184 + v183) = v0;
        }

        v69 = *(v0 + 16);
        v68 = *(v0 + 24);
        if (v69 >= v68 >> 1)
        {
          v0 = sub_1B807DA7C(v68 > 1, v69 + 1, 1, v0);
        }

        v70 = *(v1 + 1104);
        v71 = *(v1 + 1016);
        v72 = *(v1 + 992);
        v73 = *(v1 + 976);
        *(v0 + 16) = v69 + 1;
        sub_1B7FE8124(v71, v0 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v69);
        *(v73 + v70) = v0;
        goto LABEL_6;
      }
    }

    else if (v46 == 3)
    {
      if (v26 == 1)
      {
        v108 = *(v1 + 1096);
        v109 = *(v1 + 976);
        v110 = swift_task_alloc();
        *(v110 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v110);
        v0 = *(v109 + v108);
        v111 = *(v0 + 16);
        v112 = v111 - result;
        if (v111 < result)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
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
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          return result;
        }

        v113 = result;
        if (result < 0)
        {
          goto LABEL_181;
        }

        v114 = result - v111;
        v115 = result;
        if (__OFADD__(v111, result - v111))
        {
          goto LABEL_184;
        }

        v116 = *(v1 + 1096);
        v117 = *(v1 + 976);
        v118 = swift_isUniquelyReferenced_nonNull_native();
        *(v117 + v116) = v0;
        if (!v118 || v115 > *(v0 + 24) >> 1)
        {
          v119 = *(v1 + 1096);
          v120 = *(v1 + 976);
          if (v111 <= v115)
          {
            v121 = v111 - v112;
          }

          else
          {
            v121 = v111;
          }

          v0 = sub_1B807DA7C(v118, v121, 1, v0);
          *(v120 + v119) = v0;
        }

        v122 = *(v1 + 992);
        v123 = *(v1 + 984);
        v124 = v0 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
        v125 = *(v122 + 72);
        v126 = v125 * v113;
        result = swift_arrayDestroy();
        if (v111 != v113)
        {
          if (v126 < v125 * v111 || v124 + v125 * v113 >= v124 + v125 * v111 + (*(v0 + 16) - v111) * v125)
          {
            v172 = *(v1 + 984);
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v126 != v125 * v111)
          {
            v127 = *(v1 + 984);
            result = swift_arrayInitWithTakeBackToFront();
          }

          v173 = *(v0 + 16);
          v170 = __OFADD__(v173, v114);
          v174 = v173 + v114;
          if (v170)
          {
            goto LABEL_187;
          }

          *(v0 + 16) = v174;
        }

        *(*(v1 + 976) + *(v1 + 1096)) = v0;
        goto LABEL_156;
      }

      if (!v26)
      {
        v47 = *(v1 + 1096);
        v48 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1008), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v48 + v47);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v48 + v47) = v0;
        if ((v49 & 1) == 0)
        {
          v185 = *(v1 + 1096);
          v186 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v186 + v185) = v0;
        }

        v51 = *(v0 + 16);
        v50 = *(v0 + 24);
        if (v51 >= v50 >> 1)
        {
          v0 = sub_1B807DA7C(v50 > 1, v51 + 1, 1, v0);
        }

        v52 = *(v1 + 1096);
        v53 = *(v1 + 1008);
        v54 = *(v1 + 992);
        v55 = *(v1 + 976);
        *(v0 + 16) = v51 + 1;
        sub_1B7FE8124(v53, v0 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51);
        *(v55 + v52) = v0;
LABEL_6:
        swift_endAccess();
      }
    }

    else
    {
      if (v26 == 1)
      {
        v128 = *(v1 + 1088);
        v129 = *(v1 + 976);
        v130 = swift_task_alloc();
        *(v130 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v130);
        v0 = *(v129 + v128);
        v131 = *(v0 + 16);
        v132 = v131 - result;
        if (v131 < result)
        {
          goto LABEL_177;
        }

        v133 = result;
        if (result < 0)
        {
          goto LABEL_180;
        }

        v134 = result;
        if (__OFADD__(v131, result - v131))
        {
          goto LABEL_183;
        }

        v242 = result - v131;
        v135 = *(v1 + 1088);
        v136 = *(v1 + 976);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        *(v136 + v135) = v0;
        if (!v137 || v134 > *(v0 + 24) >> 1)
        {
          v138 = *(v1 + 1088);
          v139 = *(v1 + 976);
          if (v131 <= v134)
          {
            v140 = v131 - v132;
          }

          else
          {
            v140 = v131;
          }

          v0 = sub_1B807DA7C(v137, v140, 1, v0);
          *(v139 + v138) = v0;
        }

        v141 = *(v1 + 992);
        v142 = *(v1 + 984);
        v143 = v0 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v144 = *(v141 + 72);
        v145 = v144 * v133;
        result = swift_arrayDestroy();
        if (v131 != v133)
        {
          if (v145 < v144 * v131 || v143 + v144 * v133 >= v143 + v144 * v131 + (*(v0 + 16) - v131) * v144)
          {
            v175 = *(v1 + 984);
            result = swift_arrayInitWithTakeFrontToBack();
            v146 = v242;
          }

          else
          {
            v146 = v242;
            if (v145 != v144 * v131)
            {
              v147 = *(v1 + 984);
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v176 = *(v0 + 16);
          v170 = __OFADD__(v176, v146);
          v177 = v176 + v146;
          if (v170)
          {
            goto LABEL_188;
          }

          *(v0 + 16) = v177;
        }

        *(*(v1 + 976) + *(v1 + 1088)) = v0;
        goto LABEL_156;
      }

      if (!v26)
      {
        v74 = *(v1 + 1088);
        v75 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1000), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v75 + v74);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + v74) = v0;
        if ((v76 & 1) == 0)
        {
          v187 = *(v1 + 1088);
          v188 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v188 + v187) = v0;
        }

        v78 = *(v0 + 16);
        v77 = *(v0 + 24);
        if (v78 >= v77 >> 1)
        {
          v0 = sub_1B807DA7C(v77 > 1, v78 + 1, 1, v0);
        }

        v79 = *(v1 + 1088);
        v80 = *(v1 + 1000);
        v81 = *(v1 + 992);
        v82 = *(v1 + 976);
        *(v0 + 16) = v78 + 1;
        sub_1B7FE8124(v80, v0 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78);
        *(v82 + v79) = v0;
        goto LABEL_6;
      }
    }

LABEL_7:
    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
    v7 = *(v1 + 1144);
    v6 = *(v1 + 1136);
  }

  if (!*(v0 + 176))
  {
    if (v26 == 1)
    {
      v148 = *(v1 + 1128);
      v149 = *(v1 + 976);
      v150 = swift_task_alloc();
      *(v150 + 16) = v0;
      swift_beginAccess();
      result = sub_1B7FF8190(sub_1B7FF4794, v150);
      v0 = *(v149 + v148);
      v151 = *(v0 + 16);
      v152 = v151 - result;
      if (v151 < result)
      {
        goto LABEL_176;
      }

      v153 = result;
      if (result < 0)
      {
        goto LABEL_179;
      }

      v154 = result - v151;
      v155 = result;
      if (__OFADD__(v151, result - v151))
      {
        goto LABEL_186;
      }

      v156 = *(v1 + 1128);
      v157 = *(v1 + 976);
      v158 = swift_isUniquelyReferenced_nonNull_native();
      *(v157 + v156) = v0;
      if (!v158 || v155 > *(v0 + 24) >> 1)
      {
        v159 = *(v1 + 1128);
        v160 = *(v1 + 976);
        if (v151 <= v155)
        {
          v161 = v151 - v152;
        }

        else
        {
          v161 = v151;
        }

        v0 = sub_1B807DA7C(v158, v161, 1, v0);
        *(v160 + v159) = v0;
      }

      v162 = *(v1 + 992);
      v163 = *(v1 + 984);
      v164 = v0 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v165 = *(v162 + 72);
      v166 = v165 * v153;
      result = swift_arrayDestroy();
      if (v151 != v153)
      {
        if (v166 < v165 * v151 || v164 + v165 * v153 >= v164 + v165 * v151 + (*(v0 + 16) - v151) * v165)
        {
          v178 = *(v1 + 984);
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v166 != v165 * v151)
        {
          v167 = *(v1 + 984);
          result = swift_arrayInitWithTakeBackToFront();
        }

        v179 = *(v0 + 16);
        v170 = __OFADD__(v179, v154);
        v180 = v179 + v154;
        if (v170)
        {
          goto LABEL_189;
        }

        *(v0 + 16) = v180;
      }

      *(*(v1 + 976) + *(v1 + 1128)) = v0;
      goto LABEL_156;
    }

    if (!v26)
    {
      v56 = *(v1 + 1128);
      v57 = *(v1 + 976);
      sub_1B7FF4050(*(v1 + 1056), *(v1 + 1040), type metadata accessor for Friend);
      swift_beginAccess();
      v0 = *(v57 + v56);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + v56) = v0;
      if ((v58 & 1) == 0)
      {
        v189 = *(v1 + 1128);
        v190 = *(v1 + 976);
        v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
        *(v190 + v189) = v0;
      }

      v60 = *(v0 + 16);
      v59 = *(v0 + 24);
      if (v60 >= v59 >> 1)
      {
        v0 = sub_1B807DA7C(v59 > 1, v60 + 1, 1, v0);
      }

      v61 = *(v1 + 1128);
      v62 = *(v1 + 1040);
      v63 = *(v1 + 992);
      v64 = *(v1 + 976);
      *(v0 + 16) = v60 + 1;
      sub_1B7FE8124(v62, v0 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v60);
      *(v64 + v61) = v0;
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (!v26)
  {
    v83 = *(v1 + 1112);
    v84 = *(v1 + 976);
    sub_1B7FF4050(*(v1 + 1056), *(v1 + 1032), type metadata accessor for Friend);
    swift_beginAccess();
    v0 = *(v84 + v83);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + v83) = v0;
    if ((v85 & 1) == 0)
    {
      v181 = *(v1 + 1112);
      v182 = *(v1 + 976);
      v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
      *(v182 + v181) = v0;
    }

    v87 = *(v0 + 16);
    v86 = *(v0 + 24);
    if (v87 >= v86 >> 1)
    {
      v0 = sub_1B807DA7C(v86 > 1, v87 + 1, 1, v0);
    }

    v8 = *(v1 + 1112);
    v9 = *(v1 + 1032);
    v10 = *(v1 + 992);
    v11 = *(v1 + 976);
    *(v0 + 16) = v87 + 1;
    sub_1B7FE8124(v9, v0 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v87);
    *(v11 + v8) = v0;
    goto LABEL_6;
  }

  if (v26 != 1)
  {
    goto LABEL_7;
  }

  v203 = *(v1 + 1112);
  v204 = *(v1 + 976);
  v205 = swift_task_alloc();
  *(v205 + 16) = v0;
  swift_beginAccess();
  result = sub_1B7FF8190(sub_1B7FF40B8, v205);
  *(v1 + 1152) = 0;
  v207 = *(*(v204 + v203) + 16);
  if (v207 < result)
  {
    goto LABEL_191;
  }

  v208 = *(v1 + 1056);
  v209 = *(v1 + 1024);
  v210 = *(v1 + 976) + *(v1 + 1112);
  sub_1B7FF8700(result, v207);
  swift_endAccess();

  sub_1B7FF4050(v208, v209, type metadata accessor for Friend);
  v0 = sub_1B80C8FEC();
  v211 = sub_1B80C941C();
  v212 = os_log_type_enabled(v0, v211);
  v6 = *(v1 + 1024);
  if (v212)
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v245[0] = v214;
    *v213 = 141558275;
    *(v213 + 4) = 1752392040;
    *(v213 + 12) = 2081;
    v215 = *v6;
    v216 = *(v6 + 8);

    sub_1B7FF3FF0(v6, type metadata accessor for Friend);
    v217 = sub_1B7FB84FC(v215, v216, v245);

    *(v213 + 14) = v217;
    _os_log_impl(&dword_1B7FB5000, v0, v211, "Removing cached location for following: %{private,mask.hash}s", v213, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v214);
    MEMORY[0x1B8CB8970](v214, -1, -1);
    MEMORY[0x1B8CB8970](v213, -1, -1);

    goto LABEL_167;
  }

LABEL_166:

  sub_1B7FF3FF0(v6, type metadata accessor for Friend);
LABEL_167:
  v218 = *(v1 + 1120);
  v219 = *(v1 + 976);
  if (swift_weakLoadStrong() && (v220 = sub_1B7FF1014(), *(v1 + 1160) = v220, , v220))
  {
    v221 = *(v1 + 1056);
    v222 = *v221;
    v223 = v221[2];
    *(v1 + 208) = v221[1];
    *(v1 + 224) = v223;
    *(v1 + 192) = v222;
    v224 = v221[3];
    v225 = v221[4];
    v226 = v221[6];
    *(v1 + 272) = v221[5];
    *(v1 + 288) = v226;
    *(v1 + 240) = v224;
    *(v1 + 256) = v225;
    v227 = v221[7];
    v228 = v221[8];
    v229 = v221[10];
    *(v1 + 336) = v221[9];
    *(v1 + 352) = v229;
    *(v1 + 304) = v227;
    *(v1 + 320) = v228;
    v230 = *(v1 + 352);
    *(v1 + 512) = *(v1 + 336);
    *(v1 + 528) = v230;
    v231 = *(v1 + 320);
    *(v1 + 480) = *(v1 + 304);
    *(v1 + 496) = v231;
    v232 = *(v1 + 288);
    *(v1 + 448) = *(v1 + 272);
    *(v1 + 464) = v232;
    v233 = *(v1 + 256);
    *(v1 + 416) = *(v1 + 240);
    *(v1 + 432) = v233;
    v234 = *(v1 + 224);
    *(v1 + 384) = *(v1 + 208);
    *(v1 + 400) = v234;
    *(v1 + 368) = *(v1 + 192);
    sub_1B7FC8DA4(v1 + 192, v1 + 544);
    v235 = swift_task_alloc();
    *(v1 + 1168) = v235;
    *v235 = v1;
    v235[1] = sub_1B7FEF244;

    return sub_1B80134B0((v1 + 368));
  }

  else
  {
    v236 = sub_1B80C8FEC();
    v237 = sub_1B80C93FC();
    v238 = os_log_type_enabled(v236, v237);
    v239 = *(v1 + 968);
    if (v238)
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v245[0] = v241;
      *v240 = 136446210;
      *(v240 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC410, v245);
      _os_log_impl(&dword_1B7FB5000, v236, v237, "%{public}s missing LocationConnection.", v240, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v241);
      MEMORY[0x1B8CB8970](v241, -1, -1);
      MEMORY[0x1B8CB8970](v240, -1, -1);
    }

    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
LABEL_159:
    v192 = *(v1 + 1080);
    v193 = *(v1 + 1072);
    v194 = *(v1 + 1064);
    v195 = *(v1 + 1056);
    v196 = *(v1 + 1048);
    v197 = *(v1 + 1040);
    v198 = *(v1 + 1032);
    v199 = *(v1 + 1024);
    v200 = *(v1 + 1016);
    v201 = *(v1 + 1008);
    v244 = *(v1 + 1000);

    v202 = *(v1 + 8);

    return v202();
  }
}

uint64_t sub_1B7FEF244()
{
  v1 = *v0;
  v2 = *(*v0 + 1168);
  v3 = *(*v0 + 976);
  v10 = *v0;

  v4 = v1[32];
  v1[9] = v1[31];
  v1[10] = v4;
  v1[11] = v1[33];
  v5 = v1[28];
  v1[5] = v1[27];
  v1[6] = v5;
  v6 = v1[30];
  v1[7] = v1[29];
  v1[8] = v6;
  v7 = v1[24];
  v1[1] = v1[23];
  v1[2] = v7;
  v8 = v1[26];
  v1[3] = v1[25];
  v1[4] = v8;
  sub_1B7FCAD28((v1 + 1));

  return MEMORY[0x1EEE6DFA0](sub_1B7FEF38C, v3, 0);
}

int64_t sub_1B7FEF38C()
{
  v232 = v1;
  v229 = (v1 + 960);
  v3 = *(v1 + 1160);

  v228 = *(v1 + 1152);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
          v4 = *(v1 + 1144);
          v5 = *(v1 + 1136);
          if (!v5)
          {
            v6 = ((1 << *(v1 + 1176)) + 63) >> 6;
            if (v6 <= (v4 + 1))
            {
              v7 = v4 + 1;
            }

            else
            {
              v7 = ((1 << *(v1 + 1176)) + 63) >> 6;
            }

            v8 = v7 - 1;
            while (1)
            {
              v9 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                break;
              }

              if (v9 >= v6)
              {
                v29 = *(v1 + 1072);
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
                (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
                v12 = 0;
                goto LABEL_15;
              }

              v2 = *(v1 + 968);
              v5 = v2[v9 + 8];
              ++v4;
              if (v5)
              {
                v4 = v9;
                goto LABEL_14;
              }
            }

            __break(1u);
            goto LABEL_163;
          }

          v2 = *(v1 + 968);
LABEL_14:
          v10 = *(v1 + 1072);
          v11 = *(v1 + 1064);
          v12 = (v5 - 1) & v5;
          v13 = __clz(__rbit64(v5)) | (v4 << 6);
          sub_1B7FF4050(v2[6] + *(*(v1 + 992) + 72) * v13, v11, type metadata accessor for Friend);
          LOBYTE(v13) = *(v2[7] + v13);
          v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          v14 = *(v2 + 12);
          sub_1B7FE8124(v11, v10);
          *(v10 + v14) = v13;
          (*(*(v2 - 1) + 56))(v10, 0, 1, v2);
          v8 = v4;
LABEL_15:
          *(v1 + 1144) = v8;
          *(v1 + 1136) = v12;
          v15 = *(v1 + 1080);
          sub_1B7FC8F2C(*(v1 + 1072), v15, &qword_1EBA65F60, &qword_1B80D26C0);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
          {
            v177 = *(v1 + 968);

            goto LABEL_156;
          }

          v17 = *(v1 + 1080);
          v18 = *(v17 + *(v16 + 48));
          sub_1B7FE8124(v17, *(v1 + 1056));
          if (qword_1ED8DD6D0 != -1)
          {
            swift_once();
          }

          v19 = *(v1 + 1056);
          v20 = *(v1 + 1048);
          v21 = sub_1B80C900C();
          __swift_project_value_buffer(v21, qword_1ED8DDE78);
          sub_1B7FF4050(v19, v20, type metadata accessor for Friend);
          v22 = sub_1B80C8FEC();
          v23 = sub_1B80C941C();
          if (!os_log_type_enabled(v22, v23))
          {
            v28 = *(v1 + 1048);

            sub_1B7FF3FF0(v28, type metadata accessor for Friend);
            goto LABEL_44;
          }

          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v229 = v25;
          *v24 = 136446466;
          if (v18 <= 1)
          {
            if (v18)
            {
              v26 = 0xE700000000000000;
              v31 = 0x766F6D65722ELL;
              goto LABEL_30;
            }

            v26 = 0xE400000000000000;
            v27 = 1684300078;
          }

          else
          {
            if (v18 == 2)
            {
              v26 = 0xE700000000000000;
              v27 = 0x796669646F6D2ELL;
              goto LABEL_31;
            }

            if (v18 != 3)
            {
              v26 = 0xE700000000000000;
              v31 = 0x7469766E692ELL;
LABEL_30:
              v27 = v31 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              goto LABEL_31;
            }

            v26 = 0xE600000000000000;
            v27 = 0x726566666F2ELL;
          }

LABEL_31:
          v32 = *(v1 + 1048);
          v33 = sub_1B7FB84FC(v27, v26, v229);

          *(v24 + 4) = v33;
          *(v24 + 12) = 2082;
          v34 = *(v32 + 176);
          if (v34 <= 1)
          {
            v35 = *(v32 + 176) ? 0x69776F6C6C6F662ELL : 0x65776F6C6C6F662ELL;
            v36 = *(v32 + 176) ? 0xEA0000000000676ELL : 0xE900000000000072;
          }

          else if (v34 == 2)
          {
            v35 = 0x466572757475662ELL;
            v36 = 0xEF7265776F6C6C6FLL;
          }

          else if (v34 == 3)
          {
            v35 = 0xD000000000000010;
            v36 = 0x80000001B80CBD30;
          }

          else
          {
            v35 = 0x676E69646E65702ELL;
            v36 = 0xED0000726566664FLL;
          }

          sub_1B7FF3FF0(*(v1 + 1048), type metadata accessor for Friend);
          v2 = sub_1B7FB84FC(v35, v36, v229);

          *(v24 + 14) = v2;
          _os_log_impl(&dword_1B7FB5000, v22, v23, "Updating friends cache %{public}s %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v25, -1, -1);
          MEMORY[0x1B8CB8970](v24, -1, -1);

LABEL_44:
          v0 = *(v1 + 1056);
          v37 = *(v0 + 176);
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            if (v18 == 1)
            {
              v78 = *(v1 + 1104);
              v79 = *(v1 + 976);
              v80 = swift_task_alloc();
              *(v80 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v80);
              v0 = *(v79 + v78);
              v2 = *(v0 + 16);
              v81 = v2 - result;
              if (v2 < result)
              {
                goto LABEL_175;
              }

              v82 = result;
              if (result < 0)
              {
                goto LABEL_179;
              }

              v83 = result - v2;
              v84 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_182;
              }

              v85 = *(v1 + 1104);
              v86 = *(v1 + 976);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v86 + v85) = v0;
              if (!isUniquelyReferenced_nonNull_native || v84 > *(v0 + 24) >> 1)
              {
                v88 = *(v1 + 1104);
                v89 = *(v1 + 976);
                if (v2 <= v84)
                {
                  v90 = v2 - v81;
                }

                else
                {
                  v90 = v2;
                }

                v0 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v90, 1, v0);
                *(v89 + v88) = v0;
              }

              v91 = *(v1 + 992);
              v92 = *(v1 + 984);
              v93 = v0 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
              v94 = *(v91 + 72);
              v95 = v94 * v82;
              result = swift_arrayDestroy();
              if (v2 != v82)
              {
                if (v95 < v94 * v2 || v93 + v94 * v82 >= v93 + v94 * v2 + (*(v0 + 16) - v2) * v94)
                {
                  v154 = *(v1 + 984);
                  result = swift_arrayInitWithTakeFrontToBack();
                }

                else if (v95 != v94 * v2)
                {
                  v96 = *(v1 + 984);
                  result = swift_arrayInitWithTakeBackToFront();
                }

                v155 = *(v0 + 16);
                v156 = __OFADD__(v155, v83);
                v157 = v155 - v81;
                if (v156)
                {
                  goto LABEL_187;
                }

                *(v0 + 16) = v157;
              }

              *(*(v1 + 976) + *(v1 + 1104)) = v0;
              goto LABEL_3;
            }

            if (!v18)
            {
              v54 = *(v1 + 1104);
              v55 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1016), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v55 + v54);
              v56 = swift_isUniquelyReferenced_nonNull_native();
              *(v55 + v54) = v0;
              if ((v56 & 1) == 0)
              {
                v169 = *(v1 + 1104);
                v170 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v170 + v169) = v0;
              }

              v58 = *(v0 + 16);
              v57 = *(v0 + 24);
              if (v58 >= v57 >> 1)
              {
                v0 = sub_1B807DA7C(v57 > 1, v58 + 1, 1, v0);
              }

              v59 = *(v1 + 1104);
              v60 = *(v1 + 1016);
              v61 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v58 + 1;
              sub_1B7FE8124(v60, v0 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v58);
              *(v2 + v59) = v0;
              swift_endAccess();
            }
          }

          else if (v37 == 3)
          {
            if (v18 == 1)
            {
              v97 = *(v1 + 1096);
              v98 = *(v1 + 976);
              v99 = swift_task_alloc();
              *(v99 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v99);
              v0 = *(v98 + v97);
              v2 = *(v0 + 16);
              v100 = v2 - result;
              if (v2 < result)
              {
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
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
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
                __break(1u);
                return result;
              }

              v101 = result;
              if (result < 0)
              {
                goto LABEL_178;
              }

              v102 = result - v2;
              v103 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_181;
              }

              v104 = *(v1 + 1096);
              v105 = *(v1 + 976);
              v106 = swift_isUniquelyReferenced_nonNull_native();
              *(v105 + v104) = v0;
              if (!v106 || v103 > *(v0 + 24) >> 1)
              {
                v107 = *(v1 + 1096);
                v108 = *(v1 + 976);
                if (v2 <= v103)
                {
                  v109 = v2 - v100;
                }

                else
                {
                  v109 = v2;
                }

                v0 = sub_1B807DA7C(v106, v109, 1, v0);
                *(v108 + v107) = v0;
              }

              v110 = *(v1 + 992);
              v111 = *(v1 + 984);
              v112 = v0 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
              v113 = *(v110 + 72);
              v114 = v113 * v101;
              result = swift_arrayDestroy();
              if (v2 != v101)
              {
                if (v114 < v113 * v2 || v112 + v113 * v101 >= v112 + v113 * v2 + (*(v0 + 16) - v2) * v113)
                {
                  v158 = *(v1 + 984);
                  result = swift_arrayInitWithTakeFrontToBack();
                }

                else if (v114 != v113 * v2)
                {
                  v115 = *(v1 + 984);
                  result = swift_arrayInitWithTakeBackToFront();
                }

                v159 = *(v0 + 16);
                v156 = __OFADD__(v159, v102);
                v160 = v159 - v100;
                if (v156)
                {
                  goto LABEL_184;
                }

                *(v0 + 16) = v160;
              }

              *(*(v1 + 976) + *(v1 + 1096)) = v0;
LABEL_3:
              swift_endAccess();
            }

            else if (!v18)
            {
              v38 = *(v1 + 1096);
              v39 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1008), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v39 + v38);
              v40 = swift_isUniquelyReferenced_nonNull_native();
              *(v39 + v38) = v0;
              if ((v40 & 1) == 0)
              {
                v171 = *(v1 + 1096);
                v172 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v172 + v171) = v0;
              }

              v42 = *(v0 + 16);
              v41 = *(v0 + 24);
              if (v42 >= v41 >> 1)
              {
                v0 = sub_1B807DA7C(v41 > 1, v42 + 1, 1, v0);
              }

              v43 = *(v1 + 1096);
              v44 = *(v1 + 1008);
              v45 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v42 + 1;
              sub_1B7FE8124(v44, v0 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42);
              *(v2 + v43) = v0;
              swift_endAccess();
            }
          }

          else
          {
            if (v18 == 1)
            {
              v116 = *(v1 + 1088);
              v117 = *(v1 + 976);
              v118 = swift_task_alloc();
              *(v118 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v118);
              v0 = *(v117 + v116);
              v2 = *(v0 + 16);
              v119 = v2 - result;
              if (v2 < result)
              {
                goto LABEL_174;
              }

              v120 = result;
              if (result < 0)
              {
                goto LABEL_177;
              }

              v121 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_180;
              }

              v122 = *(v1 + 1088);
              v123 = *(v1 + 976);
              v124 = swift_isUniquelyReferenced_nonNull_native();
              *(v123 + v122) = v0;
              if (!v124 || v121 > *(v0 + 24) >> 1)
              {
                v125 = *(v1 + 1088);
                v126 = *(v1 + 976);
                if (v2 <= v121)
                {
                  v127 = v2 - v119;
                }

                else
                {
                  v127 = v2;
                }

                v0 = sub_1B807DA7C(v124, v127, 1, v0);
                *(v126 + v125) = v0;
              }

              v128 = *(v1 + 992);
              v129 = *(v1 + 984);
              v130 = v0 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
              v131 = *(v128 + 72);
              v132 = v131 * v120;
              result = swift_arrayDestroy();
              if (v2 != v120)
              {
                if (v132 < v131 * v2 || v130 + v131 * v120 >= v130 + v131 * v2 + (*(v0 + 16) - v2) * v131)
                {
                  v161 = *(v1 + 984);
                  result = swift_arrayInitWithTakeFrontToBack();
                  v133 = -v119;
                }

                else
                {
                  v133 = -v119;
                  if (v132 != v131 * v2)
                  {
                    v134 = *(v1 + 984);
                    result = swift_arrayInitWithTakeBackToFront();
                  }
                }

                v162 = *(v0 + 16);
                v156 = __OFADD__(v162, v133);
                v163 = v162 + v133;
                if (v156)
                {
                  goto LABEL_185;
                }

                *(v0 + 16) = v163;
              }

              *(*(v1 + 976) + *(v1 + 1088)) = v0;
              goto LABEL_3;
            }

            if (!v18)
            {
              v62 = *(v1 + 1088);
              v63 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1000), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v63 + v62);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *(v63 + v62) = v0;
              if ((v64 & 1) == 0)
              {
                v173 = *(v1 + 1088);
                v174 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v174 + v173) = v0;
              }

              v66 = *(v0 + 16);
              v65 = *(v0 + 24);
              if (v66 >= v65 >> 1)
              {
                v0 = sub_1B807DA7C(v65 > 1, v66 + 1, 1, v0);
              }

              v67 = *(v1 + 1088);
              v68 = *(v1 + 1000);
              v69 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v66 + 1;
              sub_1B7FE8124(v68, v0 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v66);
              *(v2 + v67) = v0;
              swift_endAccess();
            }
          }
        }

        if (*(v0 + 176))
        {
          break;
        }

        if (v18 == 1)
        {
          v135 = *(v1 + 1128);
          v136 = *(v1 + 976);
          v137 = swift_task_alloc();
          *(v137 + 16) = v0;
          swift_beginAccess();
          result = sub_1B7FF8190(sub_1B7FF4794, v137);
          v0 = *(v136 + v135);
          v2 = *(v0 + 16);
          v138 = v2 - result;
          if (v2 < result)
          {
            goto LABEL_173;
          }

          v139 = result;
          if (result < 0)
          {
            goto LABEL_176;
          }

          v140 = result - v2;
          v141 = result;
          if (__OFADD__(v2, result - v2))
          {
            goto LABEL_183;
          }

          v142 = *(v1 + 1128);
          v143 = *(v1 + 976);
          v144 = swift_isUniquelyReferenced_nonNull_native();
          *(v143 + v142) = v0;
          if (!v144 || v141 > *(v0 + 24) >> 1)
          {
            v145 = *(v1 + 1128);
            v146 = *(v1 + 976);
            if (v2 <= v141)
            {
              v147 = v2 - v138;
            }

            else
            {
              v147 = v2;
            }

            v0 = sub_1B807DA7C(v144, v147, 1, v0);
            *(v146 + v145) = v0;
          }

          v148 = *(v1 + 992);
          v149 = *(v1 + 984);
          v150 = v0 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
          v151 = *(v148 + 72);
          v152 = v151 * v139;
          result = swift_arrayDestroy();
          if (v2 != v139)
          {
            if (v152 < v151 * v2 || v150 + v151 * v139 >= v150 + v151 * v2 + (*(v0 + 16) - v2) * v151)
            {
              v164 = *(v1 + 984);
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v152 != v151 * v2)
            {
              v153 = *(v1 + 984);
              result = swift_arrayInitWithTakeBackToFront();
            }

            v165 = *(v0 + 16);
            v156 = __OFADD__(v165, v140);
            v166 = v165 - v138;
            if (v156)
            {
              goto LABEL_186;
            }

            *(v0 + 16) = v166;
          }

          *(*(v1 + 976) + *(v1 + 1128)) = v0;
          goto LABEL_3;
        }

        if (!v18)
        {
          v46 = *(v1 + 1128);
          v47 = *(v1 + 976);
          sub_1B7FF4050(*(v1 + 1056), *(v1 + 1040), type metadata accessor for Friend);
          swift_beginAccess();
          v0 = *(v47 + v46);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(v47 + v46) = v0;
          if ((v48 & 1) == 0)
          {
            v175 = *(v1 + 1128);
            v176 = *(v1 + 976);
            v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
            *(v176 + v175) = v0;
          }

          v50 = *(v0 + 16);
          v49 = *(v0 + 24);
          if (v50 >= v49 >> 1)
          {
            v0 = sub_1B807DA7C(v49 > 1, v50 + 1, 1, v0);
          }

          v51 = *(v1 + 1128);
          v52 = *(v1 + 1040);
          v53 = *(v1 + 992);
          v2 = *(v1 + 976);
          *(v0 + 16) = v50 + 1;
          sub_1B7FE8124(v52, v0 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50);
          *(v2 + v51) = v0;
          swift_endAccess();
        }
      }

      if (v18)
      {
        break;
      }

      v70 = *(v1 + 1112);
      v71 = *(v1 + 976);
      sub_1B7FF4050(*(v1 + 1056), *(v1 + 1032), type metadata accessor for Friend);
      swift_beginAccess();
      v0 = *(v71 + v70);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *(v71 + v70) = v0;
      if ((v72 & 1) == 0)
      {
        v167 = *(v1 + 1112);
        v168 = *(v1 + 976);
        v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
        *(v168 + v167) = v0;
      }

      v74 = *(v0 + 16);
      v73 = *(v0 + 24);
      if (v74 >= v73 >> 1)
      {
        v0 = sub_1B807DA7C(v73 > 1, v74 + 1, 1, v0);
      }

      v75 = *(v1 + 1112);
      v76 = *(v1 + 1032);
      v77 = *(v1 + 992);
      v2 = *(v1 + 976);
      *(v0 + 16) = v74 + 1;
      sub_1B7FE8124(v76, v0 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v74);
      *(v2 + v75) = v0;
      swift_endAccess();
    }
  }

  while (v18 != 1);
  v189 = *(v1 + 1112);
  v190 = *(v1 + 976);
  v191 = swift_task_alloc();
  *(v191 + 16) = v0;
  swift_beginAccess();
  result = sub_1B7FF8190(sub_1B7FF40B8, v191);
  *(v1 + 1152) = v228;
  v193 = *(*(v190 + v189) + 16);
  if (v193 < result)
  {
    goto LABEL_188;
  }

  v194 = *(v1 + 1056);
  v195 = *(v1 + 1024);
  v196 = *(v1 + 976) + *(v1 + 1112);
  sub_1B7FF8700(result, v193);
  swift_endAccess();

  sub_1B7FF4050(v194, v195, type metadata accessor for Friend);
  v0 = sub_1B80C8FEC();
  v197 = sub_1B80C941C();
  v198 = os_log_type_enabled(v0, v197);
  v2 = *(v1 + 1024);
  if (v198)
  {
    v199 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v231[0] = v200;
    *v199 = 141558275;
    *(v199 + 4) = 1752392040;
    *(v199 + 12) = 2081;
    v201 = *v2;
    v202 = v2[1];

    sub_1B7FF3FF0(v2, type metadata accessor for Friend);
    v203 = sub_1B7FB84FC(v201, v202, v231);

    *(v199 + 14) = v203;
    _os_log_impl(&dword_1B7FB5000, v0, v197, "Removing cached location for following: %{private,mask.hash}s", v199, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v200);
    MEMORY[0x1B8CB8970](v200, -1, -1);
    MEMORY[0x1B8CB8970](v199, -1, -1);

    goto LABEL_164;
  }

LABEL_163:

  sub_1B7FF3FF0(v2, type metadata accessor for Friend);
LABEL_164:
  v204 = *(v1 + 1120);
  v205 = *(v1 + 976);
  if (swift_weakLoadStrong() && (v206 = sub_1B7FF1014(), *(v1 + 1160) = v206, , v206))
  {
    v207 = *(v1 + 1056);
    v208 = *v207;
    v209 = v207[2];
    *(v1 + 208) = v207[1];
    *(v1 + 224) = v209;
    *(v1 + 192) = v208;
    v210 = v207[3];
    v211 = v207[4];
    v212 = v207[6];
    *(v1 + 272) = v207[5];
    *(v1 + 288) = v212;
    *(v1 + 240) = v210;
    *(v1 + 256) = v211;
    v213 = v207[7];
    v214 = v207[8];
    v215 = v207[10];
    *(v1 + 336) = v207[9];
    *(v1 + 352) = v215;
    *(v1 + 304) = v213;
    *(v1 + 320) = v214;
    v216 = *(v1 + 352);
    *(v1 + 512) = *(v1 + 336);
    *(v1 + 528) = v216;
    v217 = *(v1 + 320);
    *(v1 + 480) = *(v1 + 304);
    *(v1 + 496) = v217;
    v218 = *(v1 + 288);
    *(v1 + 448) = *(v1 + 272);
    *(v1 + 464) = v218;
    v219 = *(v1 + 256);
    *(v1 + 416) = *(v1 + 240);
    *(v1 + 432) = v219;
    v220 = *(v1 + 224);
    *(v1 + 384) = *(v1 + 208);
    *(v1 + 400) = v220;
    *(v1 + 368) = *(v1 + 192);
    sub_1B7FC8DA4(v1 + 192, v1 + 544);
    v221 = swift_task_alloc();
    *(v1 + 1168) = v221;
    *v221 = v1;
    v221[1] = sub_1B7FEF244;

    return sub_1B80134B0((v1 + 368));
  }

  else
  {
    v222 = sub_1B80C8FEC();
    v223 = sub_1B80C93FC();
    v224 = os_log_type_enabled(v222, v223);
    v225 = *(v1 + 968);
    if (v224)
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v231[0] = v227;
      *v226 = 136446210;
      *(v226 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC410, v231);
      _os_log_impl(&dword_1B7FB5000, v222, v223, "%{public}s missing LocationConnection.", v226, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v227);
      MEMORY[0x1B8CB8970](v227, -1, -1);
      MEMORY[0x1B8CB8970](v226, -1, -1);
    }

    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
LABEL_156:
    v178 = *(v1 + 1080);
    v179 = *(v1 + 1072);
    v180 = *(v1 + 1064);
    v181 = *(v1 + 1056);
    v182 = *(v1 + 1048);
    v183 = *(v1 + 1040);
    v184 = *(v1 + 1032);
    v185 = *(v1 + 1024);
    v186 = *(v1 + 1016);
    v187 = *(v1 + 1008);
    v230 = *(v1 + 1000);

    v188 = *(v1 + 8);

    return v188();
  }
}

uint64_t sub_1B7FF08C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v75 = a2;
  v9 = type metadata accessor for Friend();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v14 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v68 - v17;
  v19 = a1[9];
  v107 = a1[8];
  v108 = v19;
  v109 = a1[10];
  v20 = a1[5];
  v103 = a1[4];
  v104 = v20;
  v21 = a1[7];
  v105 = a1[6];
  v106 = v21;
  v22 = a1[1];
  v99 = *a1;
  v100 = v22;
  v23 = a1[3];
  v101 = a1[2];
  v102 = v23;
  if (qword_1ED8DD6D0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v24 = sub_1B80C900C();
  v25 = __swift_project_value_buffer(v24, qword_1ED8DDE78);
  sub_1B7FC8DA4(&v99, &v88);

  v73 = v25;
  v26 = sub_1B80C8FEC();
  v27 = sub_1B80C941C();
  sub_1B7FCAD28(&v99);

  v28 = os_log_type_enabled(v26, v27);
  v74 = a4;
  v72 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v87[0] = v69;
    *v29 = 136315394;
    v84 = v107;
    v85 = v108;
    v86 = v109;
    v80 = v103;
    v81 = v104;
    v82 = v105;
    v83 = v106;
    v76 = v99;
    v77 = v100;
    v78 = v101;
    v79 = v102;
    sub_1B7FC8DA4(&v99, &v88);
    v30 = Handle.description.getter();
    v70 = v5;
    v32 = v31;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v83;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v91 = v79;
    sub_1B7FCAD28(&v88);
    v33 = sub_1B7FB84FC(v30, v32, v87);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *&v76 = v75;
    *(&v76 + 1) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    v34 = sub_1B80C90EC();
    v36 = sub_1B7FB84FC(v34, v35, v87);

    *(v29 + 14) = v36;
    v5 = v70;
    _os_log_impl(&dword_1B7FB5000, v26, v27, "Getting cached offer expiration for %s groupId: %s", v29, 0x16u);
    v37 = v69;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v37, -1, -1);
    MEMORY[0x1B8CB8970](v29, -1, -1);
  }

  v38 = sub_1B80C967C();

  v39 = v38 == 1;
  if (v38 == 2)
  {
    v39 = 2;
  }

  LODWORD(v75) = v39;
  v40 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;
  swift_beginAccess();
  a4 = *(v5 + v40);
  a3 = *(a4 + 16);

  if (a3)
  {
    v18 = 0;
    while (1)
    {
      if (v18 >= *(a4 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1B7FF4050(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v14, type metadata accessor for Friend);
      v41 = v14[9];
      v96 = v14[8];
      v97 = v41;
      v98 = v14[10];
      v42 = v14[5];
      v92 = v14[4];
      v93 = v42;
      v43 = v14[7];
      v94 = v14[6];
      v95 = v43;
      v44 = v14[1];
      v88 = *v14;
      v89 = v44;
      v45 = v14[3];
      v90 = v14[2];
      v91 = v45;
      v5 = sub_1B80C90FC();
      v47 = v46;
      if (v5 == sub_1B80C90FC() && v47 == v48)
      {
        break;
      }

      v49 = sub_1B80C981C();
      sub_1B7FC8DA4(&v88, &v76);

      sub_1B7FCAD28(&v88);
      if (v49)
      {
        goto LABEL_17;
      }

      ++v18;
      sub_1B7FF3FF0(v14, type metadata accessor for Friend);
      if (a3 == v18)
      {
        goto LABEL_13;
      }
    }

    sub_1B7FC8DA4(&v88, &v76);

    sub_1B7FCAD28(&v88);
LABEL_17:

    v55 = v71;
    sub_1B7FE8124(v14, v71);
    v56 = v72;
    sub_1B7FE8124(v55, v72);
    v57 = *(v56 + 56);
    if (*(v57 + 16) && (v58 = sub_1B7FDA32C(v75), (v59 & 1) != 0))
    {
      v60 = v58;
      v61 = *(v57 + 56);
      v62 = sub_1B80C8E2C();
      v63 = *(v62 - 8);
      v64 = v63;
      v65 = v61 + *(v63 + 72) * v60;
      v66 = v74;
      (*(v63 + 16))(v74, v65, v62);
      (*(v64 + 56))(v66, 0, 1, v62);
    }

    else
    {
      v67 = sub_1B80C8E2C();
      (*(*(v67 - 8) + 56))(v74, 1, 1, v67);
    }

    return sub_1B7FF3FF0(v56, type metadata accessor for Friend);
  }

  else
  {
LABEL_13:

    v50 = sub_1B80C8FEC();
    v51 = sub_1B80C941C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B7FB5000, v50, v51, "Trying to get cached offer expiration for handle that is not a follower, returning nil", v52, 2u);
      MEMORY[0x1B8CB8970](v52, -1, -1);
    }

    v53 = sub_1B80C8E2C();
    return (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
  }
}

uint64_t sub_1B7FF1014()
{
  v1 = v0[7];
  v14[3] = _s18LocationConnectionCMa();
  v14[4] = &off_1F2FF65B0;
  v14[0] = v1;
  v2 = v0[5];
  v15[3] = _s20FriendshipConnectionCMa();
  v15[4] = &off_1F2FF6440;
  v15[0] = v2;
  v3 = v0[6];
  v16[3] = _s18SettingsConnectionCMa();
  v16[4] = &off_1F2FF6520;
  v16[0] = v3;
  v4 = v0[4];
  v17[3] = _s15FenceConnectionCMa(0);
  v17[4] = &off_1F2FFA948;
  v17[0] = v4;

  sub_1B7FF40E8(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
  if ((swift_dynamicCast() & 1) != 0 && (v5 = v13, , v5))
  {
    v6 = v14;
  }

  else
  {
    v6 = v15;
    sub_1B7FF40E8(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    if ((swift_dynamicCast() & 1) == 0 || (v7 = v13, , !v7))
    {
      v6 = v16;
      sub_1B7FF40E8(v16, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
      if ((swift_dynamicCast() & 1) == 0 || (v8 = v13, , !v8))
      {
        v6 = v17;
        sub_1B7FF40E8(v17, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_13;
        }

        v9 = v13;

        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1B7FF40E8(v6, v12);
  if ((swift_dynamicCast() & 1) == 0 || (v10 = v13) == 0)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    v10 = 0;
  }

  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1B7FF12A4()
{
  v1 = v0[7];
  v14[3] = _s18LocationConnectionCMa();
  v14[4] = &off_1F2FF65B0;
  v14[0] = v1;
  v2 = v0[5];
  v15[3] = _s20FriendshipConnectionCMa();
  v15[4] = &off_1F2FF6440;
  v15[0] = v2;
  v3 = v0[6];
  v16[3] = _s18SettingsConnectionCMa();
  v16[4] = &off_1F2FF6520;
  v16[0] = v3;
  v4 = v0[4];
  v17[3] = _s15FenceConnectionCMa(0);
  v17[4] = &off_1F2FFA948;
  v17[0] = v4;

  sub_1B7FF40E8(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
  if ((swift_dynamicCast() & 1) != 0 && (v5 = v13, , v5))
  {
    v6 = v14;
  }

  else
  {
    v6 = v15;
    sub_1B7FF40E8(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    if ((swift_dynamicCast() & 1) == 0 || (v7 = v13, , !v7))
    {
      v6 = v16;
      sub_1B7FF40E8(v16, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
      if ((swift_dynamicCast() & 1) == 0 || (v8 = v13, , !v8))
      {
        v6 = v17;
        sub_1B7FF40E8(v17, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_13;
        }

        v9 = v13;

        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1B7FF40E8(v6, v12);
  if ((swift_dynamicCast() & 1) == 0 || (v10 = v13) == 0)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    v10 = 0;
  }

  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1B7FF1534(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1698, v2, 0);
}

uint64_t sub_1B7FF1698()
{
  v1 = v0[7];
  v0[17] = sub_1B7FF414C();
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1B7FF1784;
  v4 = v0[7];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF1784()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1894, v2, 0);
}

uint64_t sub_1B7FF1894()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  v0[19] = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v0[20] = *(v1 + v2);
  if ()
  {

    v3 = v0[17];
    v4 = v0[7];
    v5 = *(MEMORY[0x1E69E88D0] + 4);
    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_1B7FF1D58;
    v7 = v0[7];

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_1B7FF1A20;
    v9 = v0[7];

    return sub_1B7FE8BC0(&unk_1F2FF94E8);
  }
}

uint64_t sub_1B7FF1A20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[15];
    v7 = v4[16];
    v10 = v4[13];
    v9 = v4[14];
    v11 = v4[12];
    v14 = v4 + 8;
    v12 = v4[8];
    v13 = v14[1];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {
    v17 = v4[7];
    v4[22] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B7FF1BC0, v17, 0);
  }
}

uint64_t sub_1B7FF1BC0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[7];
  v5 = *(v4 + v1);
  *(v4 + v1) = v0[22];

  v6 = sub_1B80C92CC();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v4;
  swift_retain_n();
  sub_1B80A4870(0, 0, v2, &unk_1B80D2700, v7);

  v8 = v0[17];
  v9 = v0[7];
  v10 = *(MEMORY[0x1E69E88D0] + 4);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_1B7FF1D58;
  v12 = v0[7];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF1D58()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1E68, v2, 0);
}

uint64_t sub_1B7FF1E68()
{
  *(v0 + 192) = *(*(v0 + 56) + *(v0 + 152));

  if (!result)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    v40 = *(v0 + 96);
    v42 = *(v0 + 64);
    v41 = *(v0 + 72);

    v43 = *(v0 + 8);

    return v43(v4);
  }

  v2 = *(result + 16);
  *(v0 + 200) = v2;
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_29:

    goto LABEL_30;
  }

  v3 = 0;
  *(v0 + 248) = *(*(v0 + 88) + 80);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 208) = v3;
    *(v0 + 216) = v4;
    v5 = *(v0 + 192);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 120);
    v7 = v5 + ((*(v0 + 248) + 32) & ~*(v0 + 248));
    v8 = *(*(v0 + 88) + 72);
    *(v0 + 224) = v8;
    sub_1B7FF4050(v7 + v8 * v3, v6, type metadata accessor for Friend);
    if (sub_1B7FBB9C4())
    {
      break;
    }

    (*(*(v0 + 88) + 56))(*(v0 + 72), 1, 1, *(v0 + 80));
    v9 = *(v0 + 72);
    if ((*(*(v0 + 88) + 48))(v9, 1, *(v0 + 80)) == 1)
    {
      sub_1B7FB86D4(v9, &unk_1EBA65FA0, &unk_1B80D2610);
    }

    else
    {
      v10 = *(v0 + 112);
      v12 = *(v0 + 40);
      v11 = *(v0 + 48);
      sub_1B7FE8124(v9, v10);
      if (v12(v10))
      {
        v13 = *(v0 + 216);
        sub_1B7FF4050(*(v0 + 112), *(v0 + 104), type metadata accessor for Friend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = *(v0 + 216);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_1B807DA7C(0, v4[2] + 1, 1, *(v0 + 216));
        }

        v16 = v4[2];
        v15 = v4[3];
        if (v16 >= v15 >> 1)
        {
          v4 = sub_1B807DA7C(v15 > 1, v16 + 1, 1, v4);
        }

        v17 = *(v0 + 224);
        v18 = *(v0 + 120);
        v19 = *(v0 + 104);
        v20 = (*(v0 + 248) + 32) & ~*(v0 + 248);
        sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
        sub_1B7FF3FF0(v18, type metadata accessor for Friend);
        v4[2] = v16 + 1;
        result = sub_1B7FE8124(v19, v4 + v20 + v17 * v16);
        goto LABEL_5;
      }

      sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
    }

    v21 = *(v0 + 48);
    if ((*(v0 + 40))(*(v0 + 120)))
    {
      v22 = *(v0 + 216);
      sub_1B7FF4050(*(v0 + 120), *(v0 + 96), type metadata accessor for Friend);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 216);
      if ((v23 & 1) == 0)
      {
        v4 = sub_1B807DA7C(0, v4[2] + 1, 1, *(v0 + 216));
      }

      v25 = v4[2];
      v24 = v4[3];
      if (v25 >= v24 >> 1)
      {
        v4 = sub_1B807DA7C(v24 > 1, v25 + 1, 1, v4);
      }

      v26 = *(v0 + 224);
      v27 = *(v0 + 96);
      v28 = (*(v0 + 248) + 32) & ~*(v0 + 248);
      sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
      v4[2] = v25 + 1;
      result = sub_1B7FE8124(v27, v4 + v28 + v26 * v25);
    }

    else
    {
      result = sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
      v4 = *(v0 + 216);
    }

LABEL_5:
    v3 = *(v0 + 208) + 1;
    if (v3 == *(v0 + 200))
    {
      v35 = *(v0 + 192);
      goto LABEL_29;
    }
  }

  v29 = *(v0 + 160);
  v30 = swift_task_alloc();
  *(v0 + 232) = v30;
  *v30 = v0;
  v30[1] = sub_1B7FF2310;
  v31 = v29 != 0;
  v32 = *(v0 + 120);
  v34 = *(v0 + 56);
  v33 = *(v0 + 64);

  return sub_1B7FF47C0(v33, v32, v31);
}

uint64_t sub_1B7FF2310()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = *(v2 + 56);

    v6 = sub_1B7FF289C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = sub_1B7FF2438;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1B7FF2438()
{
  sub_1B7FC8F2C(*(v0 + 64), *(v0 + 72), &unk_1EBA65FA0, &unk_1B80D2610);
  while (1)
  {
    v1 = *(v0 + 72);
    if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
    {
      sub_1B7FB86D4(v1, &unk_1EBA65FA0, &unk_1B80D2610);
      goto LABEL_11;
    }

    v2 = *(v0 + 112);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_1B7FE8124(v1, v2);
    if ((v4(v2) & 1) == 0)
    {
      sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
LABEL_11:
      v15 = *(v0 + 48);
      if ((*(v0 + 40))(*(v0 + 120)))
      {
        v16 = *(v0 + 216);
        sub_1B7FF4050(*(v0 + 120), *(v0 + 96), type metadata accessor for Friend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = *(v0 + 216);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1B807DA7C(0, v7[2] + 1, 1, *(v0 + 216));
        }

        v19 = v7[2];
        v18 = v7[3];
        if (v19 >= v18 >> 1)
        {
          v7 = sub_1B807DA7C(v18 > 1, v19 + 1, 1, v7);
        }

        v20 = *(v0 + 224);
        v21 = *(v0 + 96);
        v22 = (*(v0 + 248) + 32) & ~*(v0 + 248);
        sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
        v7[2] = v19 + 1;
        result = sub_1B7FE8124(v21, v7 + v22 + v20 * v19);
      }

      else
      {
        result = sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
        v7 = *(v0 + 216);
      }

      goto LABEL_18;
    }

    v5 = *(v0 + 216);
    sub_1B7FF4050(*(v0 + 112), *(v0 + 104), type metadata accessor for Friend);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 216);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1B807DA7C(0, v7[2] + 1, 1, *(v0 + 216));
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1B807DA7C(v8 > 1, v9 + 1, 1, v7);
    }

    v10 = *(v0 + 224);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = (*(v0 + 248) + 32) & ~*(v0 + 248);
    sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
    sub_1B7FF3FF0(v11, type metadata accessor for Friend);
    v7[2] = v9 + 1;
    result = sub_1B7FE8124(v12, v7 + v13 + v10 * v9);
LABEL_18:
    v23 = *(v0 + 208) + 1;
    if (v23 == *(v0 + 200))
    {
      break;
    }

    *(v0 + 208) = v23;
    *(v0 + 216) = v7;
    v24 = *(v0 + 192);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    v25 = *(v0 + 120);
    v26 = v24 + ((*(v0 + 248) + 32) & ~*(v0 + 248));
    v27 = *(*(v0 + 88) + 72);
    *(v0 + 224) = v27;
    sub_1B7FF4050(v26 + v27 * v23, v25, type metadata accessor for Friend);
    if (sub_1B7FBB9C4())
    {
      v37 = *(v0 + 160);
      v38 = swift_task_alloc();
      *(v0 + 232) = v38;
      *v38 = v0;
      v38[1] = sub_1B7FF2310;
      v39 = v37 != 0;
      v40 = *(v0 + 120);
      v42 = *(v0 + 56);
      v41 = *(v0 + 64);

      return sub_1B7FF47C0(v41, v40, v39);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 72), 1, 1, *(v0 + 80));
  }

  v28 = *(v0 + 192);

  v30 = *(v0 + 120);
  v29 = *(v0 + 128);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 96);
  v35 = *(v0 + 64);
  v34 = *(v0 + 72);

  v36 = *(v0 + 8);

  return v36(v7);
}

uint64_t sub_1B7FF289C()
{
  v1 = v0[27];
  v2 = v0[15];

  sub_1B7FF3FF0(v2, type metadata accessor for Friend);
  v3 = v0[30];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B7FF297C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B7FF55EC();
}

uint64_t sub_1B7FF2A0C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  *(v3 + 208) = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F90, &qword_1B80D2750);
  *(v3 + 216) = v5;
  v6 = *(v5 - 8);
  *(v3 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v8 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v8;
  *(v3 + 176) = a2[10];
  v9 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v9;
  v10 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v10;
  v11 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v11;
  v12 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF2B34, v2, 0);
}

uint64_t sub_1B7FF2B34()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  (*(v0[28] + 104))(v0[29], *MEMORY[0x1E69E8650], v0[27]);
  sub_1B80C934C();
  v4 = swift_task_alloc();
  v0[30] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FF2C88;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000015, 0x80000001B80CC4C0, sub_1B7FF45AC, v4, v7);
}

uint64_t sub_1B7FF2C88()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = sub_1B7FF2E14;
  }

  else
  {
    v6 = *(v2 + 240);
    v7 = *(v2 + 200);

    v5 = sub_1B7FF2DB0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FF2DB0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FF2E14()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[24];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F98, &qword_1B80D2758);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v0[1];
  v6 = v0[32];

  return v5();
}

uint64_t sub_1B7FF2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF2F68, a4, 0);
}

uint64_t sub_1B7FF2F68()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA65F20, &qword_1B80D2628);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7FF30A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F90, &qword_1B80D2750);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3198, v1, 0);
}

uint64_t sub_1B7FF3198()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69E8650], v0[5]);
  sub_1B80C934C();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FF32DC;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000013, 0x80000001B80CC4A0, sub_1B7FF4400, v4, v7);
}

uint64_t sub_1B7FF32DC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FF3404;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_1B7FF47B0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FF3404()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F98, &qword_1B80D2758);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t sub_1B7FF34B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_1B80C92CC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_1B7FF414C();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v17;
  *(v19 + 4) = a2;
  (*(v8 + 32))(&v19[v18], v11, v7);
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v15, a4, v19);
}

uint64_t sub_1B7FF36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF47B4, a4, 0);
}

uint64_t sub_1B7FF374C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F48, &qword_1B80D2698) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3888, v1, 0);
}

uint64_t sub_1B7FF3888()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "discovered: %@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v13 + v14, v10, &qword_1EBA65F20, &qword_1B80D2628);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_1B7FB86D4(*(v0 + 96), &qword_1EBA65F20, &qword_1B80D2628);
    v15 = 1;
  }

  else
  {
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    (*(v18 + 16))(v17, v16, v19);
    sub_1B7FB86D4(v16, &qword_1EBA65F20, &qword_1B80D2628);
    *(v0 + 40) = v20;
    *(v0 + 48) = 0;
    v21 = v20;
    sub_1B80C92EC();
    (*(v18 + 8))(v17, v19);
    v15 = 0;
  }

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F50, &qword_1B80D26A0);
  (*(*(v25 - 8) + 56))(v22, v15, 1, v25);
  sub_1B7FB86D4(v22, &qword_1EBA65F48, &qword_1B80D2698);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B7FF3B98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F48, &qword_1B80D2698) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3CD4, v1, 0);
}

uint64_t sub_1B7FF3CD4()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "updated: %@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v13 + v14, v10, &qword_1EBA65F20, &qword_1B80D2628);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_1B7FB86D4(*(v0 + 96), &qword_1EBA65F20, &qword_1B80D2628);
    v15 = 1;
  }

  else
  {
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    (*(v18 + 16))(v17, v16, v19);
    sub_1B7FB86D4(v16, &qword_1EBA65F20, &qword_1B80D2628);
    *(v0 + 40) = v20;
    *(v0 + 48) = 1;
    v21 = v20;
    sub_1B80C92EC();
    (*(v18 + 8))(v17, v19);
    v15 = 0;
  }

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 88);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F50, &qword_1B80D26A0);
  (*(*(v25 - 8) + 56))(v22, v15, 1, v25);
  sub_1B7FB86D4(v22, &qword_1EBA65F48, &qword_1B80D2698);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B7FF3FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FF4050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FF40E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B7FF414C()
{
  result = qword_1ED8DD560;
  if (!qword_1ED8DD560)
  {
    _s20FriendshipConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD560);
  }

  return result;
}

uint64_t sub_1B7FF41AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FBA3EC;

  return sub_1B7FF297C();
}

uint64_t sub_1B7FF4280(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B7FEA9C0(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_1B7FF4408(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FF36AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF450C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_31Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FF4690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B7FF2EC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF47C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 936) = v3;
  *(v4 + 984) = a3;
  *(v4 + 928) = a2;
  *(v4 + 920) = a1;
  v5 = type metadata accessor for Friend();
  *(v4 + 944) = v5;
  v6 = *(v5 - 8);
  *(v4 + 952) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 960) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF488C, v3, 0);
}

uint64_t sub_1B7FF488C()
{
  v26 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 928);
  v4 = v2[1];
  v3 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v5;
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v8;
  *(v0 + 128) = v10;
  *(v0 + 144) = v9;
  if (v1 == 1)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDE78);
    sub_1B7FC8DA4(v0 + 16, v0 + 192);
    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      *(v14 + 14) = sub_1B7FB84FC(*(v0 + 16), *(v0 + 24), &v25);
      _os_log_impl(&dword_1B7FB5000, v12, v13, "Query Friend:%{private,mask.hash}s's prettyName through cache", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }

    v16 = *(v0 + 936);
    sub_1B7FF414C();
    v17 = *(MEMORY[0x1E69E88D0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 968) = v18;
    *v18 = v0;
    v18[1] = sub_1B7FF4B58;
    v19 = *(v0 + 936);

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 976) = v20;
    *v20 = v0;
    v20[1] = sub_1B7FF4F08;
    v21 = *(v0 + 936);
    v22 = *(v0 + 928);
    v23 = *(v0 + 920);

    return sub_1B7FF5E2C(v23, v22);
  }
}

uint64_t sub_1B7FF4B58()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 936);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF4C68, v2, 0);
}

uint64_t sub_1B7FF4C68()
{
  v1 = *(v0 + 936);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v3 = *(v1 + v2);

  if (!v3)
  {
    (*(*(v0 + 952) + 56))(*(v0 + 920), 1, 1, *(v0 + 944));
    goto LABEL_13;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_9:
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);
    v28 = *(v0 + 920);

    (*(v26 + 56))(v28, 1, 1, v27);
LABEL_13:
    v33 = *(v0 + 960);

    v34 = *(v0 + 8);

    return v34();
  }

  v6 = 0;
  v7 = *(v0 + 952);
  while (v6 < *(v3 + 16))
  {
    v8 = *(v0 + 960);
    sub_1B7FF8820(v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v8, type metadata accessor for Friend);
    v10 = v8[1];
    v9 = v8[2];
    *(v0 + 368) = *v8;
    *(v0 + 384) = v10;
    *(v0 + 400) = v9;
    v11 = v8[6];
    v13 = v8[3];
    v12 = v8[4];
    *(v0 + 448) = v8[5];
    *(v0 + 464) = v11;
    *(v0 + 416) = v13;
    *(v0 + 432) = v12;
    v14 = v8[10];
    v16 = v8[7];
    v15 = v8[8];
    *(v0 + 512) = v8[9];
    *(v0 + 528) = v14;
    *(v0 + 480) = v16;
    *(v0 + 496) = v15;
    v17 = *(v0 + 368);
    v18 = *(v0 + 376);
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);
    v21 = sub_1B80C90FC();
    v23 = v22;
    if (v21 == sub_1B80C90FC() && v23 == v24)
    {
      sub_1B7FC8DA4(v0 + 368, v0 + 720);

      sub_1B7FCAD28(v0 + 368);
LABEL_12:
      v29 = *(v0 + 960);
      v30 = *(v0 + 952);
      v31 = *(v0 + 944);
      v32 = *(v0 + 920);

      sub_1B7FE8124(v29, v32);
      (*(v30 + 56))(v32, 0, 1, v31);
      goto LABEL_13;
    }

    v25 = sub_1B80C981C();
    sub_1B7FC8DA4(v0 + 368, v0 + 544);

    sub_1B7FCAD28(v0 + 368);
    if (v25)
    {
      goto LABEL_12;
    }

    ++v6;
    result = sub_1B7FF87C0(*(v0 + 960), type metadata accessor for Friend);
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FF4F08()
{
  v1 = *v0;
  v2 = *(*v0 + 976);
  v6 = *v0;

  v3 = *(v1 + 960);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B7FF5020(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Friend() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for FriendStreamChange();
  v2[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5124, v1, 0);
}

int64_t sub_1B7FF5124()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  *(v0[7] + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 1;
  sub_1B7FF8820(v3, v2, type metadata accessor for FriendStreamChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[12];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[7];
      sub_1B7FE8124(v5, v0[9]);
      v8 = sub_1B7FE5C40();
      if (*v7)
      {
        v9 = v7;
        v10 = v0[9];
        v11 = swift_task_alloc();
        *(v11 + 16) = v10;
        result = sub_1B7FF8190(sub_1B7FF8BB0, v11);
        v13 = *(*v9 + 16);
        if (v13 < result)
        {
          __break(1u);
          return result;
        }

        sub_1B7FF8700(result, v13);
      }

      (v8)(v0 + 2, 0);
      v5 = v0[9];
      v14 = type metadata accessor for Friend;
    }

    else
    {
      v14 = type metadata accessor for FriendStreamChange;
    }

    sub_1B7FF87C0(v5, v14);
    v19 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[7];
    v23 = v0[8];
    sub_1B7FE60A0();

    v24 = v0[1];

    return v24();
  }

  else
  {
    sub_1B7FE8124(v5, v0[10]);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_1B7FF5354;
    v16 = v0[10];
    v18 = v0[7];
    v17 = v0[8];

    return sub_1B7FF5E2C(v17, v16);
  }
}

uint64_t sub_1B7FF5354()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1B7FF5540;
  }

  else
  {
    v6 = *(v2 + 56);
    sub_1B7FB86D4(*(v2 + 64), &unk_1EBA65FA0, &unk_1B80D2610);
    v5 = sub_1B7FF5488;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FF5488()
{
  sub_1B7FF87C0(v0[10], type metadata accessor for Friend);
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  sub_1B7FE60A0();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7FF5540()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  sub_1B7FF87C0(v0[10], type metadata accessor for Friend);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1B7FF55EC()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FE0, &qword_1B80D2720);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F88, &qword_1B80D2728);
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5780, 0, 0);
}

uint64_t sub_1B7FF5780()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Query Friend  start an internal friend update stream to listen for friendship changes and update the cache as needed", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF58A0, v5, 0);
}

uint64_t sub_1B7FF58A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &unk_1EBA65FF0, &qword_1B80D2620);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF594C, 0, 0);
}

uint64_t sub_1B7FF594C()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v3 == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    type metadata accessor for FriendStreamChange();
    (*(v9 + 104))(v7, *MEMORY[0x1E69E8650], v8);
    sub_1B80C934C();
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x1EEE6DFA0](sub_1B7FF5B14, v10, 0);
  }

  else
  {
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[9];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B7FF5B14()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FF5C00;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000014, 0x80000001B80CC480, sub_1B7FF4278, v3, v6);
}

uint64_t sub_1B7FF5C00()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1B7FF5DA0;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 40);

    v5 = sub_1B7FF5D28;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FF5D28()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7FF5DA0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1B7FF5E2C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = sub_1B80C8E2C();
  v3[34] = v4;
  v5 = *(v4 - 8);
  v3[35] = v5;
  v6 = *(v5 + 64) + 15;
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v3[37] = v7;
  v8 = *(v7 - 8);
  v3[38] = v8;
  v9 = *(v8 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5F8C, v2, 0);
}

uint64_t sub_1B7FF5F8C()
{
  v144 = v0;
  v143[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8DD6D0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[32];
  v3 = sub_1B80C900C();
  v0[41] = __swift_project_value_buffer(v3, qword_1ED8DDE78);
  sub_1B7FF8820(v2, v1, type metadata accessor for Friend);
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v143[0] = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = *v7;
    v11 = v7[1];

    sub_1B7FF87C0(v7, type metadata accessor for Friend);
    v12 = sub_1B7FB84FC(v10, v11, v143);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Query Friend:%{private,mask.hash}s through Contact", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {

    sub_1B7FF87C0(v7, type metadata accessor for Friend);
  }

  v13 = v0[32];
  v14 = *v13;
  v15 = v13[1];
  v0[24] = *v13;
  v0[25] = v15;
  v0[26] = 64;
  v0[27] = 0xE100000000000000;
  sub_1B7FB6CB8();
  v16 = sub_1B80C949C();
  v17 = objc_opt_self();
  v136 = v15;
  v138 = v14;
  if (v16)
  {
    v18 = sub_1B80C90AC();
    v19 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v21 = sub_1B80C90AC();
    v18 = [v20 initWithStringValue_];

    v19 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v140 = [v17 *v19];
  v0[42] = v140;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FB0, &unk_1B80D27B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B80D2790;
  v23 = *MEMORY[0x1E695C410];
  v24 = *MEMORY[0x1E695C258];
  v25 = MEMORY[0x1E695C240];
  *(v22 + 32) = *MEMORY[0x1E695C410];
  *(v22 + 40) = v24;
  v26 = *v25;
  v27 = *MEMORY[0x1E695C230];
  *(v22 + 48) = *v25;
  *(v22 + 56) = v27;
  v28 = *MEMORY[0x1E695C2F0];
  v29 = *MEMORY[0x1E695C310];
  *(v22 + 64) = *MEMORY[0x1E695C2F0];
  *(v22 + 72) = v29;
  v30 = *MEMORY[0x1E695C208];
  v31 = *MEMORY[0x1E695C330];
  v32 = MEMORY[0x1E695C360];
  *(v22 + 80) = *MEMORY[0x1E695C208];
  *(v22 + 88) = v31;
  v33 = *v32;
  *(v22 + 96) = *v32;
  v0[28] = v22;
  v142 = v0;
  v34 = objc_opt_self();
  v35 = v23;
  v36 = v24;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v33;
  v44 = v34;
  v0 = v142;
  v45 = [v44 descriptorForRequiredKeysForStyle_];
  MEMORY[0x1B8CB7AF0]();
  if (*((v0[28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v125 = *((v142[28] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B80C923C();
  }

  v46 = v142[33];
  sub_1B80C925C();
  v47 = v142[28];
  v48 = sub_1B7FE5BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FB8, &qword_1B80D27C0);
  v49 = sub_1B80C91FC();

  v142[29] = 0;
  v50 = [v48 unifiedContactsMatchingPredicate:v140 keysToFetch:v49 error:v142 + 29];

  v51 = v142[29];
  if (v50)
  {
    sub_1B7FF8888();
    v52 = sub_1B80C921C();
    v53 = v51;

    if (v52 >> 62)
    {
      v54 = sub_1B80C963C();
      if (v54)
      {
LABEL_13:
        v55 = 0;
        while (1)
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x1B8CB7E40](v55, v52);
          }

          else
          {
            if (v55 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v56 = *(v52 + 8 * v55 + 32);
          }

          v57 = v56;
          v142[43] = v56;
          v58 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v59 = [v44 stringFromContact:v56 style:0];
          if (v59)
          {
            break;
          }

          ++v55;
          if (v58 == v54)
          {
            goto LABEL_40;
          }
        }

        v73 = v142[35];
        v72 = v142[36];
        v129 = v142[34];
        v74 = v142[32];
        v75 = v59;

        v141 = sub_1B80C90BC();
        v135 = v76;

        v77 = v74[7];
        v78 = v74[14];
        v79 = v74[21];
        v134 = v74[20];
        v80 = [v57 identifier];
        v81 = sub_1B80C90BC();
        v132 = v82;
        v133 = v81;

        v83 = v74[19];
        sub_1B7FCEC00(v138, v136);
        v131 = sub_1B80C90FC();
        v85 = v84;

        v139 = v79;

        v137 = v77;

        sub_1B80C8E1C();
        sub_1B80C8DDC();
        v87 = v86;
        (*(v73 + 8))(v72, v129);
        v88 = *(v83 + 16);
        if (v88)
        {
          v143[0] = MEMORY[0x1E69E7CC0];

          sub_1B7FCF988(0, v88, 0);
          v89 = v143[0];
          v90 = (v83 + 40);
          do
          {
            v91 = *(v90 - 1);
            v92 = *v90;
            v93 = sub_1B80C90FC();
            v143[0] = v89;
            v96 = *(v89 + 16);
            v95 = *(v89 + 24);
            if (v96 >= v95 >> 1)
            {
              v130 = v93;
              v98 = v94;
              sub_1B7FCF988((v95 > 1), v96 + 1, 1);
              v94 = v98;
              v93 = v130;
              v89 = v143[0];
            }

            *(v89 + 16) = v96 + 1;
            v97 = v89 + 16 * v96;
            *(v97 + 32) = v93;
            *(v97 + 40) = v94;
            v90 += 2;
            --v88;
          }

          while (v88);
        }

        else
        {

          v89 = MEMORY[0x1E69E7CC0];
        }

        v108 = v142[39];
        v109 = v142[37];
        v110 = v142[32];
        v111 = *(v110 + 176);
        sub_1B7FB8448(v110 + v109[10], v108 + v109[10], &unk_1EBA65FD0, &unk_1B80D1920);
        sub_1B7FB8448(v110 + v109[12], v108 + v109[12], &unk_1EBA65FD0, &unk_1B80D1920);
        v112 = *(v110 + v109[15]);
        sub_1B7FF88D4(v142 + 1);
        *(v108 + v109[11]) = 2;
        *v108 = v131;
        *(v108 + 8) = v85;
        *(v108 + 16) = v131;
        *(v108 + 24) = v85;
        *(v108 + 32) = 0;
        *(v108 + 40) = 0;
        *(v108 + 48) = 0;
        *(v108 + 56) = v137;
        *(v108 + 64) = floor(v87 * 1000.0);
        *(v108 + 72) = 0u;
        *(v108 + 88) = 0u;
        *(v108 + 104) = 1;
        *(v108 + 112) = v78;
        *(v108 + 120) = v141;
        *(v108 + 128) = v135;
        *(v108 + 136) = v133;
        *(v108 + 144) = v132;
        *(v108 + 152) = v89;
        *(v108 + 160) = v134;
        *(v108 + 168) = v139;
        *(v108 + 176) = v111;
        *(v108 + v109[14]) = 2;
        *(v108 + 177) = 0;
        *(v108 + v109[15]) = v112;
        v113 = (v108 + v109[13]);
        v114 = *(v142 + 1);
        v115 = *(v142 + 3);
        v113[1] = *(v142 + 2);
        v113[2] = v115;
        *v113 = v114;
        v116 = *(v142 + 4);
        v117 = *(v142 + 5);
        v118 = *(v142 + 7);
        v113[5] = *(v142 + 6);
        v113[6] = v118;
        v113[3] = v116;
        v113[4] = v117;
        v119 = *(v142 + 8);
        v120 = *(v142 + 9);
        v121 = *(v142 + 11);
        v113[9] = *(v142 + 10);
        v113[10] = v121;
        v113[7] = v119;
        v113[8] = v120;
        v122 = swift_task_alloc();
        v142[44] = v122;
        *v122 = v142;
        v122[1] = sub_1B7FF6AA0;
        v123 = v142[39];
        v124 = v142[33];
        goto LABEL_41;
      }
    }

    else
    {
      v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_13;
      }
    }

LABEL_40:

    v126 = swift_task_alloc();
    v142[46] = v126;
    *v126 = v142;
    v126[1] = sub_1B7FF6CF0;
    v123 = v142[32];
    v127 = v142[33];
LABEL_41:
    v128 = *MEMORY[0x1E69E9840];

    return sub_1B7FF73B8(v123);
  }

  v60 = v51;
  v61 = sub_1B80C8D0C();

  swift_willThrow();
  v62 = v142[41];
  v63 = v61;
  v64 = sub_1B80C8FEC();
  v65 = sub_1B80C93FC();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v143[0] = v67;
    *v66 = 136446210;
    v142[30] = v61;
    v68 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v69 = sub_1B80C90EC();
    v71 = sub_1B7FB84FC(v69, v70, v143);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_1B7FB5000, v64, v65, "Contacts match error %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x1B8CB8970](v67, -1, -1);
    MEMORY[0x1B8CB8970](v66, -1, -1);
  }

  else
  {
  }

  v99 = v142[37];
  v100 = v142[38];
  v101 = v142[31];
  sub_1B7FF8820(v142[32], v101, type metadata accessor for Friend);
  (*(v100 + 56))(v101, 0, 1, v99);
  v103 = v142[39];
  v102 = v142[40];
  v104 = v142[36];

  v105 = v142[1];
  v106 = *MEMORY[0x1E69E9840];

  return v105();
}

uint64_t sub_1B7FF6AA0()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_1B7FF6F4C;
  }

  else
  {
    v6 = sub_1B7FF6BF8;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B7FF6BF8()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 248);

  sub_1B7FE8124(v2, v5);
  (*(v3 + 56))(v5, 0, 1, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 288);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1B7FF6CF0()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_1B7FF7194;
  }

  else
  {
    v6 = sub_1B7FF6E48;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B7FF6E48()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);

  sub_1B7FF8820(v3, v4, type metadata accessor for Friend);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 288);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1B7FF6F4C()
{
  v24 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);

  sub_1B7FF87C0(v2, type metadata accessor for Friend);
  v3 = *(v0 + 360);
  v4 = *(v0 + 328);
  v5 = v3;
  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C93FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446210;
    *(v0 + 240) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "Contacts match error %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  v16 = *(v0 + 248);
  sub_1B7FF8820(*(v0 + 256), v16, type metadata accessor for Friend);
  (*(v15 + 56))(v16, 0, 1, v14);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 288);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

uint64_t sub_1B7FF7194()
{
  v22 = v0;
  v21[1] = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136446210;
    *(v0 + 240) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, v21);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Contacts match error %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  v14 = *(v0 + 248);
  sub_1B7FF8820(*(v0 + 256), v14, type metadata accessor for Friend);
  (*(v13 + 56))(v14, 0, 1, v12);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v17 = *(v0 + 288);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x1E69E9840];

  return v18();
}

uint64_t sub_1B7FF73B8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(type metadata accessor for Friend() - 8);
  v2[12] = v3;
  v4 = *(v3 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7474, v1, 0);
}

uint64_t sub_1B7FF7474()
{
  v1 = v0 + 2;
  v2 = v0[11];
  v4 = sub_1B7FE5C40();
  if (*v3)
  {
    v5 = v3;
    v6 = v0[10];
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    v8 = 0;
    v9 = sub_1B7FF8190(sub_1B7FF88F4, v7);
    v10 = *(*v5 + 16);
    if (v10 < v9)
    {
      __break(1u);
LABEL_13:
      v1 = sub_1B807DA7C(0, v1[2] + 1, 1, v1);
      *v8 = v1;
      goto LABEL_6;
    }

    sub_1B7FF8700(v9, v10);
  }

  v7 = (v0 + 6);
  (v4)(v0 + 2, 0);
  v11 = v0[11];
  v5 = sub_1B7FE5C40();
  if (!*v12)
  {
    goto LABEL_9;
  }

  v8 = v12;
  sub_1B7FF8820(v0[10], v0[13], type metadata accessor for Friend);
  v1 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v15 = v1[2];
  v14 = v1[3];
  if (v15 >= v14 >> 1)
  {
    v1 = sub_1B807DA7C(v14 > 1, v15 + 1, 1, v1);
    *v8 = v1;
  }

  v17 = v0[12];
  v16 = v0[13];
  v1[2] = v15 + 1;
  sub_1B7FE8124(v16, v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
LABEL_9:
  (v5)(v7, 0);
  v18 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B7FF765C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1B80C92CC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1B80A4870(0, 0, v3, &unk_1B80D27F8, v7);
  }

  return result;
}

uint64_t sub_1B7FF777C(uint64_t a1)
{
  v2 = sub_1B80C8C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1B80C8BFC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B7FF7890()
{
  v1 = *(v0 + 40);
  sub_1B7FF414C();
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1B7FF7978;
  v4 = *(v0 + 40);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF7978()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7A88, v2, 0);
}

uint64_t sub_1B7FF7A88()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1B7FF7B98;
    v5 = v0[5];

    return sub_1B7FE6218(v3);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B7FF7B98()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B7FF7CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_1B80C92CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_1B80A1D3C(0, 0, v12, &unk_1B80D27E8, v15);
}

uint64_t sub_1B7FF7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7F34, a4, 0);
}

uint64_t sub_1B7FF7F34()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
  swift_beginAccess();
  sub_1B7FF8A84(v2, v3 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7FF8060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v19[8] = a1[8];
  v19[9] = v2;
  v19[10] = a1[10];
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  v7 = a2[9];
  v20[8] = a2[8];
  v20[9] = v7;
  v20[10] = a2[10];
  v8 = a2[5];
  v20[4] = a2[4];
  v20[5] = v8;
  v9 = a2[7];
  v20[6] = a2[6];
  v20[7] = v9;
  v10 = a2[1];
  v20[0] = *a2;
  v20[1] = v10;
  v11 = a2[3];
  v20[2] = a2[2];
  v20[3] = v11;
  v12 = sub_1B80C90FC();
  v14 = v13;
  if (v12 == sub_1B80C90FC() && v14 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1B80C981C();
  }

  sub_1B7FC8DA4(v19, v18);
  sub_1B7FC8DA4(v20, v18);

  sub_1B7FCAD28(v20);
  sub_1B7FCAD28(v19);
  return v16 & 1;
}

uint64_t sub_1B7FF8190(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_1B7FF84B8(a1, a2, *v2);
  if (!v3)
  {
    v41 = v16;
    v44 = 0;
    if (v19)
    {
      return v17[2];
    }

    v34 = v2;
    v35 = v11;
    v38 = a1;
    v42 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v17 + 2;
      v21 = v17[2];
      v23 = v41;
      if (v20 == v21)
      {
        return v42;
      }

      v36 = a2;
      v37 = v7;
      while (v20 < v21)
      {
        v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v43 = v17;
        v39 = v24;
        v25 = v17 + v24;
        v26 = *(v7 + 72);
        v40 = v26 * v20;
        sub_1B7FF8820(&v25[v26 * v20], v23, type metadata accessor for Friend);
        v27 = v44;
        v28 = v38(v23);
        result = sub_1B7FF87C0(v23, type metadata accessor for Friend);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v23 = v41;
          v17 = v43;
        }

        else
        {
          v23 = v41;
          v29 = v42;
          if (v20 == v42)
          {
            v7 = v37;
            v17 = v43;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v22;
            if (v42 >= *v22)
            {
              goto LABEL_27;
            }

            v31 = v26 * v42;
            result = sub_1B7FF8820(&v25[v26 * v42], v14, type metadata accessor for Friend);
            if (v20 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v40;
            sub_1B7FF8820(&v25[v40], v35, type metadata accessor for Friend);
            v17 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1B7FF85A4(v17);
            }

            v33 = v17 + v39;
            result = sub_1B7FF8914(v35, v17 + v39 + v31);
            v7 = v37;
            if (v20 >= v17[2])
            {
              goto LABEL_29;
            }

            result = sub_1B7FF8914(v14, &v33[v32]);
            *v34 = v17;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v20;
        v22 = v17 + 2;
        v21 = v17[2];
        if (v20 == v21)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7FF84B8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Friend() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1B7FF85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Friend();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1B7FF8700(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B7FF85B8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B7FF87C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FF8820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7FF8888()
{
  result = qword_1EBA65FC8;
  if (!qword_1EBA65FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA65FC8);
  }

  return result;
}

double sub_1B7FF88D4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
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

uint64_t sub_1B7FF8914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FF8980(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B7FF7E94(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF8A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FF8AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FF7870(a1, v4, v5, v6);
}

uint64_t sub_1B7FF8BCC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF8C14, v1, 0);
}

uint64_t sub_1B7FF8C14()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v4 = v0;
  v4[1] = sub_1B7FF8D20;

  return MEMORY[0x1EEE04418](v0 + 16, 0x2873646E65697266, 0xEE00293A68746977, sub_1B8011C6C, v2, v5);
}

uint64_t sub_1B7FF8D20()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B7FF8E48;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B8011D04;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FF8E48()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1B7FF8ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF8EF0, 0, 0);
}

uint64_t sub_1B7FF8EF0()
{
  v1 = v0[33];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FF8FFC;
  v7 = v0[32];
  v6 = v0[33];

  return MEMORY[0x1EEE04428](v0 + 30, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FF8FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_1B7FF948C;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_1B7FF9118;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FF9118()
{
  v37 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v11;
  *(v0 + 80) = v10;
  v12 = v2[10];
  v14 = v2[7];
  v13 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v12;
  *(v0 + 128) = v14;
  *(v0 + 144) = v13;
  sub_1B7FDC224();
  v15 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = v1;
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C93FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v36);
      *(v21 + 12) = 2114;
      v24 = sub_1B80C8CFC();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "Failed to create proxy in %{public}s: %{public}@", v21, 0x16u);
      sub_1B7FB86D4(v22, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      MEMORY[0x1B8CB8970](v21, -1, -1);
    }

    v25 = *(v0 + 264);
    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = *(v0 + 280);
    v27 = *(v0 + 264);
    v28 = v15;
    v29 = v16;

    v30 = sub_1B80C8D1C();
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    *(v31 + 24) = v26;
    *(v0 + 224) = sub_1B800FF30;
    *(v0 + 232) = v31;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B7FCE114;
    *(v0 + 216) = &block_descriptor_86;
    v32 = _Block_copy((v0 + 192));
    v33 = *(v0 + 232);

    [v3 startRangingWithHandle:v30 completion:v32];
    _Block_release(v32);

    sub_1B7FC3CCC(v28, v29);
    swift_unknownObjectRelease();
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B7FF948C()
{
  v15 = v0;
  v1 = v0[33];

  v2 = v0[37];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[33];
  v0[31] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

void sub_1B7FF968C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FF99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF99C8, 0, 0);
}

uint64_t sub_1B7FF99C8()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FF9AD4;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FF9AD4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FF9D14;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FF9BF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FF9BF0()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B800FE18;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_73;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 startOwnerRangingWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FF9D14()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B7FF9F1C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFA214()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFA25C, v0, 0);
}

uint64_t sub_1B7FFA25C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0x676E6152706F7473, 0xED00002928676E69, sub_1B8011CFC, v3, v6);
}

uint64_t sub_1B7FFA350()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B8011CE8;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FFA478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFA49C, 0, 0);
}

uint64_t sub_1B7FFA49C()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFA5A8;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFA5A8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FFA7E8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FFA6C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFA6C4()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B800FD10;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_60;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 stopRangingWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FFA7E8()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B7FFA9F8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFAD00()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFAD48, v0, 0);
}

uint64_t sub_1B7FFAD48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFAE34;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001ALL, 0x80000001B80CC520, sub_1B8011CEC, v3, v6);
}

uint64_t sub_1B7FFAE34()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B7FFAF74;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1B7FFAF5C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FFAF74()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1B7FFAFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFAFFC, 0, 0);
}

uint64_t sub_1B7FFAFFC()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFB108;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B7FE58F0, v6, v4, v5);
}

uint64_t sub_1B7FFB108()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FFB348;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FFB224;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFB224()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B800F8F0;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_3;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 stopConfigRangingSessionWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FFB348()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B7FFB550(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}