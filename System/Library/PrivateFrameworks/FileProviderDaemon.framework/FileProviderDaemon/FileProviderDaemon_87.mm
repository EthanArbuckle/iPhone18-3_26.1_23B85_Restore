uint64_t sub_1CF8E6558(void *a1, unint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA427E0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xEF20202020202020);
  v18 = sub_1CF355B94(a1, a4, a5 & 1, a6, a7 & 1);
  MEMORY[0x1D3868CC0](v18);

  return v20;
}

uint64_t sub_1CF8E66B4(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v25[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42770);
  v25[3] = MEMORY[0x1E69E6530];
  v25[0] = a2;
  v16 = sub_1CEFF8EA0(v25);
  v18 = v17;
  sub_1CEFCCC44(v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v18)
  {
    MEMORY[0x1D3868CC0](v16, v18);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    if (a4)
    {
      if (a4 != 1)
      {
        a3 = (a3 != 0) << 63;
        goto LABEL_8;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v19 = [a1 bindLongParameter_];
        v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v22 = v21;

        MEMORY[0x1D3868CC0](v20, v22);

        MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xED00002020202020);
        v23 = sub_1CF355B94(a1, a5, a6 & 1, a7, a8 & 1);
        MEMORY[0x1D3868CC0](v23);

        return v26;
      }

      __break(1u);
    }

    a3 = -a3;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF8E68F4(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v152 = v4;
  v153 = v2;
  v6 = v5;
  v8 = v7;
  v145 = v9;
  v149 = v3;
  v183 = *MEMORY[0x1E69E9840];
  v143 = sub_1CF9E6118();
  v148 = *(v143 - 8);
  v10 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v132[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = sub_1CF9E5CF8();
  v147 = *(v151 - 8);
  v12 = v147[8];
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v132[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v146 = &v132[-v16];
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v132[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = v8;
  v166 = v8;
  v156 = v6;
  v167 = v6;
  v155 = v1;
  v22 = *(v1 + 64);
  *v21 = v22;
  v23 = *MEMORY[0x1E69E8020];
  v24 = v18[13];
  v24(v21, v23, v17);
  v154 = v22;
  LOBYTE(v22) = sub_1CF9E64D8();
  v25 = v18[1];
  v25(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_103:
    __break(1u);

    sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_9:
    v40 = *MEMORY[0x1E69E9840];
    return;
  }

  v180[0] = v157;
  LOBYTE(v180[1]) = v156;
  *v21 = v154;
  v24(v21, v23, v17);
  v26 = sub_1CF9E64D8();
  v27 = (v25)(v21, v17);
  if ((v26 & 1) == 0)
  {
    goto LABEL_103;
  }

  v28 = MEMORY[0x1E69E7CD0];
  v177[0] = MEMORY[0x1E69E7CD0];
  v29 = v155;
  v30 = *(v155 + 80);
  v31 = *(v155 + 40);
  MEMORY[0x1EEE9AC00](v27);
  *&v132[-16] = v177;
  v32 = *v31;
  v34 = v153;
  if ((v33 & 0x40000) != 0)
  {
    (*(v32 + 704))(v152, v180, sub_1CF902E00, &v132[-32], &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  else
  {
    (*(v32 + 696))(v149, v152, v180, sub_1CF8F91F8, &v132[-32], &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  v35 = v34;
  if (v34)
  {
    goto LABEL_8;
  }

  v164 = v28;
  v165 = v177[0];
  v36 = *(v29 + 24);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v38 = swift_dynamicCastClassUnconditional();
  v39 = *(v38 + 32);
  MEMORY[0x1EEE9AC00](v38);
  *&v132[-32] = v29;
  *&v132[-24] = &v166;
  *&v132[-16] = &v164;
  *&v132[-8] = &v165;

  sub_1CF8E4B7C(64, v157, v156, sub_1CF8F9214);
  v141 = v37;
  v142 = v36;
  v140 = v31;

  v41 = v164 + 56;
  v42 = 1 << v164[32];
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v164 + 7);
  v45 = (v42 + 63) >> 6;
  v153 = v164;

  v46 = 0;
  if (v44)
  {
    while (1)
    {
      v47 = v46;
LABEL_17:
      v48 = v153[6] + ((v47 << 10) | (16 * __clz(__rbit64(v44))));
      v49 = *v48;
      v50 = *(v48 + 8);
      v51 = *(swift_dynamicCastClassUnconditional() + 32);

      sub_1CF7FEF8C(v49, v50, 64, v157, v156);
      v35 = 0;
      v44 &= v44 - 1;

      v46 = v47;
      if (!v44)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_98;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = v41[v47];
    ++v46;
    if (v44)
    {
      goto LABEL_17;
    }
  }

  v163 = MEMORY[0x1E69E7CD0];
  v52 = (v165 + 56);
  v53 = 1 << *(v165 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v165 + 56);
  v139 = (v53 + 63) >> 6;
  v152 = v147 + 1;
  v136 = (v148 + 8);
  v137 = &v176[2];
  v148 = v165;

  v138 = 0;
  v56 = 0;
  *&v57 = 136446466;
  v135 = v57;
  v147 = v52;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v58 = v56;
        while (2)
        {
          while (2)
          {
            if (!v55)
            {
              while (1)
              {
                v56 = v58 + 1;
                if (__OFADD__(v58, 1))
                {
                  break;
                }

                if (v56 >= v139)
                {

                  v113 = 0;
                  v115 = v163 + 56;
                  v114 = *(v163 + 56);
                  v147 = v163;
                  v116 = 1 << *(v163 + 32);
                  v117 = -1;
                  if (v116 < 64)
                  {
                    v117 = ~(-1 << v116);
                  }

                  v118 = v117 & v114;
                  v119 = (v116 + 63) >> 6;
                  v146 = xmmword_1CFA04E70;
                  if ((v117 & v114) != 0)
                  {
                    while (1)
                    {
                      v154 = v35;
                      v120 = v113;
LABEL_85:
                      v101 = *(v147[6] + ((v120 << 9) | (8 * __clz(__rbit64(v118)))));
                      v149 = sub_1CF033A74();
                      v121 = v150;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v123 = v122;
                      v44 = *v152;
                      (*v152)(v121, v151);
                      v124 = v123 * 1000000000.0;
                      if (COERCE__INT64(fabs(v123 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      if (v124 <= -9.22337204e18)
                      {
                        goto LABEL_105;
                      }

                      if (v124 >= 9.22337204e18)
                      {
                        goto LABEL_106;
                      }

                      v125 = v124;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
                      v126 = swift_allocObject();
                      *(v126 + 16) = 0u;
                      *(v126 + 32) = 0u;
                      *(v126 + 48) = 1;
                      *(v126 + 56) = 0u;
                      *(v126 + 72) = 0u;
                      *(v126 + 88) = 0;
                      *(v126 + 120) = 0;
                      *(v126 + 128) = v125;
                      *(v126 + 136) = 0x4000000000;
                      *(v126 + 144) = v101;
                      *(v126 + 96) = v146;
                      *(v126 + 112) = 0;
                      v127 = v150;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v129 = v128;
                      (v44)(v127, v151);
                      v130 = v129 * 1000000000.0;
                      if (COERCE__INT64(fabs(v129 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_107;
                      }

                      if (v130 <= -9.22337204e18)
                      {
                        goto LABEL_108;
                      }

                      if (v130 >= 9.22337204e18)
                      {
                        goto LABEL_109;
                      }

                      v131 = v154;
                      sub_1CF7EA114(v126, v130, v157, v156);
                      v35 = v131;
                      if (v131)
                      {

                        goto LABEL_9;
                      }

                      v118 &= v118 - 1;

                      v113 = v120;
                      if (!v118)
                      {
                        goto LABEL_81;
                      }
                    }

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
                    goto LABEL_110;
                  }

LABEL_81:
                  while (1)
                  {
                    v120 = v113 + 1;
                    if (__OFADD__(v113, 1))
                    {
                      goto LABEL_99;
                    }

                    if (v120 >= v119)
                    {

                      goto LABEL_9;
                    }

                    v118 = *(v115 + 8 * v120);
                    ++v113;
                    if (v118)
                    {
                      v154 = v35;
                      goto LABEL_85;
                    }
                  }
                }

                v55 = v52[v56];
                ++v58;
                if (v55)
                {
                  v59 = v35;
                  goto LABEL_30;
                }
              }

LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:

              sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

              sub_1CEFD0994(v172, v173, SHIBYTE(v173));
              goto LABEL_101;
            }

            v59 = v35;
            v56 = v58;
LABEL_30:
            v44 = *(*(v148 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v55)))));
            v162 = v44;
            v60 = *(v155 + 16);
            v160 = v157;
            v161 = v156;
            v178 = v44;
            v179 = 256;
            v61 = *(*v60 + 168);
            v149 = v44;
            v61(v180, &v178, 1, &v160, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v59)
            {

              sub_1CEFD0994(v178, v179, SHIBYTE(v179));

              goto LABEL_9;
            }

            v55 &= v55 - 1;
            sub_1CEFD0994(v178, v179, SHIBYTE(v179));
            memcpy(v177, v180, sizeof(v177));
            if (sub_1CF08B99C(v177) == 1)
            {
              memcpy(v176, v180, sizeof(v176));
              sub_1CEFCCC44(v176, &unk_1EC4BFD20, &unk_1CFA05440);

              v58 = v56;
              v35 = 0;
              v52 = v147;
              continue;
            }

            break;
          }

          memcpy(v182, v180, sizeof(v182));
          sub_1CF7F62D0(v176);
          memcpy(v174, v176, sizeof(v174));
          memcpy(v175, v180, sizeof(v175));
          sub_1CEFCCC44(v175, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          if (LOBYTE(v174[27]) == 255)
          {
            (*(*v140 + 288))(v176, &v162, &v166, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v154 = 0;
            v62 = v176[0];
            if (!v176[0])
            {
              goto LABEL_39;
            }

            v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v44 = v64;
            if (v63 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v44 == v65)
            {

LABEL_39:
              sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

              v58 = v56;
              v35 = v154;
              v52 = v147;
              continue;
            }

            LODWORD(v134) = sub_1CF9E8048();

            if (v134)
            {

              goto LABEL_39;
            }

            v158 = v157;
            v159 = v156;
            v172 = v62;
            v173 = 256;
            v44 = v62;
            v66 = v154;
            v61(v176, &v172, 1, &v158, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v35 = v66;
            if (v66)
            {
              goto LABEL_100;
            }

            sub_1CEFD0994(v172, v173, SHIBYTE(v173));
            memcpy(v171, v176, sizeof(v171));
            if (sub_1CF08B99C(v171) == 1)
            {
              memcpy(v170, v176, sizeof(v170));
              sub_1CEFCCC44(v170, &unk_1EC4BFD20, &unk_1CFA05440);
              v67 = v174;
              goto LABEL_45;
            }

            memcpy(v181, v176, sizeof(v181));
            sub_1CF7F62D0(v168);
            memcpy(v169, v168, sizeof(v169));
            memcpy(v170, v176, 0x208uLL);
            sub_1CEFCCC44(v170, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (LOBYTE(v169[12]) == 2)
            {
              sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);
              v67 = v169;
LABEL_45:
              sub_1CEFCCC44(v67, &unk_1EC4BFC90, &unk_1CFA053E0);
            }

            else
            {
              v68 = v44;
              sub_1CF6EA6C4(v168, v68);
              sub_1CEFCCC44(v169, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

              v69 = v168[0];
            }

            v58 = v56;
            v52 = v147;
            continue;
          }

          break;
        }

        v171[0] = v174[26];
        LOBYTE(v171[1]) = v174[27];
        v70 = v146;
        (*(**(v155 + 32) + 240))(v171, 1, &v166, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v35 = 0;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
        if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
        {
          sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

          sub_1CEFCCC44(v70, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v52 = v147;
          continue;
        }

        break;
      }

      v72 = v70 + *(v71 + 48);
      LOBYTE(v72) = *(v72 + *(type metadata accessor for ItemMetadata() + 80));
      sub_1CEFCCC44(v70, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v72 & 1) == 0)
      {
LABEL_76:
        sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

        v52 = v147;
        continue;
      }

      break;
    }

    if (v145 <= 0)
    {
      sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

      if (!__OFADD__(v138++, 1))
      {
        v52 = v147;
        continue;
      }

      goto LABEL_118;
    }

    break;
  }

  v73 = *(swift_dynamicCastClassUnconditional() + 32);

  v74 = v150;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v76 = v75;
  (*v152)(v74, v151);
  v77 = v76 * 1000000000.0;
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_115;
  }

  v78 = v144;
  if (v77 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v134 = v73;
  if (v77 >= 9.22337204e18)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v170[0] = v171[0];
  LOBYTE(v170[1]) = v171[1];
  v79 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v80 = v170[0];
  v81 = v170[1];
  v82 = sub_1CF9E6108();
  v83 = sub_1CF9E7288();
  v84 = os_log_type_enabled(v82, v83);
  v154 = 0;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v133 = v83;
    v86 = v85;
    v87 = swift_slowAlloc();
    v169[0] = v87;
    *v86 = v135;
    v176[0] = v80;
    LOBYTE(v176[1]) = v81;
    v89 = VFSItemID.description.getter(v87, v88);
    v91 = sub_1CEFD0DF0(v89, v90, v169);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2082;
    v92 = sub_1CF7F5068(64);
    v94 = sub_1CEFD0DF0(v92, v93, v169);

    *(v86 + 14) = v94;
    _os_log_impl(&dword_1CEFC7000, v82, v133, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v87, -1, -1);
    MEMORY[0x1D386CDC0](v86, -1, -1);

    (*v136)(v144, v143);
  }

  else
  {

    (*v136)(v78, v143);
  }

  v96 = sub_1CF9E5278();
  MEMORY[0x1EEE9AC00](v96);
  v97 = v134;
  *&v132[-48] = v170;
  *&v132[-40] = v97;
  *&v132[-32] = 0;
  v132[-24] = 1;
  *&v132[-16] = 0;
  v132[-8] = 1;
  v98 = swift_allocObject();
  v98[2] = sub_1CF9032F4;
  v98[3] = &v132[-64];
  v176[4] = sub_1CF9034B4;
  v176[5] = v98;
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 1107296256;
  v176[2] = sub_1CEFE7548;
  v176[3] = &block_descriptor_1956;
  v99 = _Block_copy(v176);

  v176[0] = 0;
  v100 = [v157 fetchSwift:v99 error:v176];
  _Block_release(v99);
  v101 = v176[0];
  LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

  if (v99)
  {
    goto LABEL_117;
  }

  if (!v100)
  {
LABEL_110:
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_113;
  }

  --v145;
  v102 = [v100 next];
  v44 = v132;
  if ((v102 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v102);
    *&v132[-64] = v170;
    *&v132[-56] = 0;
    v132[-48] = 1;
    *&v132[-40] = 0;
    v132[-32] = 1;
    *&v132[-24] = v107;
    *&v132[-16] = 64;
    v108 = v157;
    v109 = v156;
    v110 = v154;
    sub_1CF7D5920(sub_1CF9032F8, &v132[-80], v157);
    v35 = v110;
    if (v110)
    {
      goto LABEL_112;
    }

    v111 = v109;
    v112 = v134;
    sub_1CF800340(v108, v111);
    if (*(v112 + qword_1EDEBBAE8))
    {
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      sub_1CF06779C(sub_1CF9032F0, v134);
    }

    else
    {
      *(v112 + qword_1EDEBBAE8) = 1;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBC10 addWatcher_];
    }

LABEL_75:

    goto LABEL_76;
  }

  MEMORY[0x1EEE9AC00](v102);
  *&v132[-64] = 64;
  *&v132[-56] = v170;
  *&v132[-48] = v97;
  *&v132[-40] = 0;
  v132[-32] = 1;
  *&v132[-24] = 0;
  v132[-16] = 1;
  v103 = swift_allocObject();
  v103[2] = sub_1CF9032FC;
  v103[3] = &v132[-80];
  v176[4] = sub_1CF9034B4;
  v176[5] = v103;
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 1107296256;
  v176[2] = sub_1CEFE7548;
  v176[3] = &block_descriptor_1966;
  v104 = _Block_copy(v176);

  v176[0] = 0;
  v105 = [v157 executeSwift:v104 error:v176];
  _Block_release(v104);
  v106 = v176[0];
  LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

  if ((v104 & 1) == 0)
  {
    if (v105)
    {
      sub_1CF800340(v157, v156);

      v35 = v154;
      goto LABEL_75;
    }

    sub_1CF9E57F8();

    swift_willThrow();
LABEL_112:

LABEL_113:
    sub_1CEFCCC44(v174, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_101:

LABEL_8:

    goto LABEL_9;
  }

LABEL_119:
  __break(1u);
}

uint64_t sub_1CF8E812C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1CF9E6118();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  result = sub_1CF9E5CC8();
  v47 = v4;
  if ((*(v4 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v4 + qword_1EDEBB798)) >> 63)
  {
    v42 = a1;
    v43 = a2;
    v44 = a3;
    sub_1CF9E5C38();
    v23 = *(v12 + 8);
    v23(v19, v11);
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v12 + 16))(v16, v21, v11);
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E7298();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = v23;
      v28 = v27;
      v41 = swift_slowAlloc();
      v49 = v41;
      *v28 = 136446210;
      sub_1CEFCCCA4(&unk_1EDEAECD0, MEMORY[0x1E6969530]);
      v29 = sub_1CF9E7F98();
      v31 = v30;
      v32 = v16;
      v33 = v40;
      v40(v32, v11);
      v34 = sub_1CEFD0DF0(v29, v31, &v49);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "🔮  refreshing speculative set with threshold %{public}s", v28, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);

      (*(v45 + 8))(v48, v46);
    }

    else
    {

      v23(v16, v11);
      (*(v45 + 8))(v48, v46);
      v33 = v23;
    }

    v36 = *(v47 + qword_1EDEBB780);
    v37 = *(v47 + qword_1EDEBB7A8);
    sub_1CF8E68F4(v21);
    v39 = v38;
    v33(v21, v11);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8E8524()
{
  v0 = sub_1CF9E6938();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v64 - v6;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46F0, &qword_1CFA16870);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v64 - v19;
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v64 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v64 - v29;
  v31 = [objc_opt_self() fp_backupManifestDirectory];
  if (!v31)
  {
    return 0;
  }

  v64[1] = v3;
  v32 = v31;
  sub_1CF9E59D8();

  v33 = v21[4];
  v68 = v20;
  v33(v30, v27, v20);
  sub_1CF9E5968();
  v65 = objc_opt_self();
  v34 = [v65 defaultManager];
  sub_1CF9E5A18();
  v35 = sub_1CF9E6888();

  v36 = [v34 fileExistsAtPath_];

  if (!v36)
  {
    v40 = 0;
LABEL_20:
    v61 = v21[1];
    v62 = v24;
    v63 = v68;
    v61(v62, v68);
    v61(v30, v63);
    return v40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v38 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v39 = v38;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CEFD5338(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  v64[0] = v9;

  v41 = sub_1CF9E5648();
  v42 = *(v41 - 8);
  v43 = v69;
  (*(v42 + 56))(v69, 0, 1, v41);
  sub_1CEFCCBDC(v43, v17, &unk_1EC4C46F0, &qword_1CFA16870);
  if ((*(v42 + 48))(v17, 1, v41) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4C46F0, &qword_1CFA16870);
    (*(v64[0] + 56))(v7, 1, 1, v8);
LABEL_9:
    sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v40 = 0;
LABEL_17:
    v55 = [v65 defaultManager];
    sub_1CF9E5A18();
    v56 = sub_1CF9E6888();

    v57 = [v55 contentsAtPath_];

    if (v57)
    {
      v58 = sub_1CF9E5B88();
      v60 = v59;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      sub_1CEFE4714(v58, v60);
    }

    sub_1CEFCCC44(v69, &unk_1EC4C46F0, &qword_1CFA16870);
    goto LABEL_20;
  }

  sub_1CF9E5588();
  (*(v42 + 8))(v17, v41);
  v44 = v64[0];
  if ((*(v64[0] + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_9;
  }

  v45 = v66;
  (*(v44 + 32))(v66, v7, v8);
  v46 = v67;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v48 = v47;
  v49 = *(v44 + 8);
  result = v49(v46, v8);
  v51 = v48 * 1000000000.0;
  if (COERCE__INT64(fabs(v48 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v44 + 16))(v46, v45, v8);
  sub_1CF9E5C98();
  v53 = v52;
  v49(v46, v8);
  result = v49(v45, v8);
  v54 = v53 * 1000000000.0;
  if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v40 = v51 - v54;
  if (!__OFSUB__(v51, v54))
  {
    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1CF8E8D5C(uint64_t a1)
{
  v97[6] = *MEMORY[0x1E69E9840];
  v84 = sub_1CF9E5D98();
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v76 - v9;
  v95 = sub_1CF9E5A58();
  v89 = *(v95 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  v91 = sub_1CF9E6118();
  v94 = *(v91 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v81 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v76 - v20;
  v21 = sub_1CF9E5648();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v27 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v28 = v27;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CEFD5338(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  if (v1)
  {

    v85 = 0;
    v30 = fpfs_current_or_default_log();
    v31 = v93;
    sub_1CF9E6128();
    v32 = v89;
    v33 = *(v89 + 16);
    v86 = a1;
    v33(v16, a1, v95);
    v34 = v1;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();

    v37 = os_log_type_enabled(v35, v36);
    v87 = v1;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v97[0] = v78;
      *v38 = 136315394;
      v39 = sub_1CF9E5928();
      v40 = [v39 fp_shortDescription];

      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;

      v79 = *(v32 + 8);
      v79(v16, v95);
      v44 = sub_1CEFD0DF0(v41, v43, v97);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v96);
      *(v38 + 14) = v45;
      v46 = v77;
      *v77 = v45;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "Can't unlink %s: %@", v38, 0x16u);
      sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      v47 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      v48 = v93;
      v49 = *(v94 + 8);
    }

    else
    {

      v79 = *(v32 + 8);
      v79(v16, v95);
      v49 = *(v94 + 8);
      v48 = v31;
    }

    v50 = v91;
    v49(v48, v91);
    v51 = v32;
    v52 = v88;
    v53 = [objc_opt_self() fp_secureTempDirectory];
    v54 = v92;
    v55 = v90;
    if (v53)
    {
      v56 = v53;
      sub_1CF9E59D8();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = v95;
    (*(v51 + 56))(v52, v57, 1, v95);
    sub_1CEFE55D0(v52, v55, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v51 + 48))(v55, 1, v58) == 1)
    {
      sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
      v59 = fpfs_current_or_default_log();
      v60 = v81;
      sub_1CF9E6128();
      v61 = sub_1CF9E6108();
      v62 = sub_1CF9E72A8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1CEFC7000, v61, v62, "Couldn't get tmp URL for fallback for forceRecursiveRemove", v63, 2u);
        MEMORY[0x1D386CDC0](v63, -1, -1);
      }

      else
      {
      }

      v49(v60, v50);
    }

    else
    {
      v64 = v51;
      v65 = v82;
      sub_1CF9E5D88();
      sub_1CF9E5D18();
      (*(v83 + 8))(v65, v84);
      v66 = v80;
      sub_1CF9E5968();

      v67 = v55;
      v68 = v95;
      v69 = v79;
      v79(v67, v95);
      (*(v64 + 32))(v54, v66, v68);
      v70 = [objc_opt_self() defaultManager];
      sub_1CF9E5A18();
      v71 = sub_1CF9E6888();

      sub_1CF9E5A18();
      v72 = sub_1CF9E6888();

      v97[0] = 0;
      LODWORD(v65) = [v70 moveItemAtPath:v71 toPath:v72 error:v97];

      if (v65)
      {
        v73 = v97[0];
        v69(v54, v95);
      }

      else
      {
        v74 = v97[0];
        sub_1CF9E57F8();

        swift_willThrow();
        v69(v54, v95);
      }
    }
  }

  else
  {

    MEMORY[0x1EEE9AC00](v29);
    *(&v76 - 2) = a1;
    *(&v76 - 1) = v25;
    sub_1CEFE1894(sub_1CF1B808C);
    (*(v22 + 8))(v25, v21);
  }

  v75 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF8E976C(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF8E9878(void *a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = *&v1[qword_1EDEADB40];
  *&v1[qword_1EDEADB40] = a1;
  v5 = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF8E997C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00);
  v4 = sub_1CF9E6EC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CF8E9A44, v4, v3);
}

uint64_t sub_1CF8E9A44()
{
  v1 = *(v0[4] + 40);
  v2 = sub_1CF7F7E74(sub_1CF8E4038, 0);
  v3 = v2;
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(v3 + 48) + ((v10 << 10) | (16 * v12));
      if ((*(v13 + 9) & 1) == 0)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v33 = *v13;
    v32 = *(v13 + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CF1F67E4(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1CF1F67E4((v15 > 1), v16 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = v33;
    *(v17 + 40) = v32;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  v18 = v0[3];

  v19 = swift_task_alloc();
  v19[2] = v18;
  v19[3] = 100;
  v19[4] = v11;
  v20 = *(*v18 + 432);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
  v20(2, sub_1CF8F8E94, v19, v21);
  v22 = v0[4];

  v23 = v0[2];
  v0[7] = v23;
  v24 = *(v22 + 56);

  v26 = sub_1CF8E167C(v25, v23);

  if (*(v26 + 16))
  {
    v27 = sub_1CF7EFEA0(v26);
    v0[8] = v27;

    v28 = swift_task_alloc();
    v0[9] = v28;
    *v28 = v0;
    v28[1] = sub_1CF8E9E1C;

    return sub_1CF7F8760(v27, 1, 0, 0, 0x2000000);
  }

  else
  {

    v29 = v0[4];
    v30 = *(v29 + 56);
    *(v29 + 56) = v0[7];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1CF8E9E1C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  v6 = v2[8];
  if (v0)
  {
    v7 = v3[7];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    v10 = v3[5];
    v11 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1CF8E9F84, v10, v11);
  }
}

uint64_t sub_1CF8E9F84()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  *(v1 + 56) = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_1CF8E9FF4(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(id, void, void, uint64_t), uint64_t a8)
{
  v58 = a4;
  v59 = a1;
  LODWORD(v61) = a3;
  v60 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v64 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v62 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF8F9A1C;
  *(v20 + 24) = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v21 = sub_1CF8403B4();

      a7(v21, 0, 0, 1);

      v22 = Strong;

      return;
    }
  }

  v54[2] = v19;
  v56 = v16;
  v57 = v13;
  Strong = v12;
  v23 = a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started];
  v24 = MEMORY[0x1E69E7CC0];
  v55 = v20;
  if ((v23 & 1) == 0)
  {
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 serialQueue];

      v71 = nullsub_1;
      v72 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1CEFCA444;
      v70 = &block_descriptor_2137;
      v28 = _Block_copy(&aBlock);
      v29 = v62;
      sub_1CF9E63F8();
      v66 = v24;
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v30 = v64;
      v31 = Strong;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v29, v30, v28);
      _Block_release(v28);

      (*(v57 + 8))(v30, v31);
      v32 = v29;
      v20 = v55;
      (*(v63 + 8))(v32, v56);
    }
  }

  v54[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v33 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v34 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v35 = swift_allocObject();
  v35[2] = a6;
  v35[3] = sub_1CF796A94;
  v36 = v58;
  v35[4] = v20;
  v35[5] = v36;
  v35[6] = a5;
  v37 = a6;

  v38 = v33;
  v58 = fpfs_adopt_log();
  v39 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v68 = v40;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v41 = v59;
  v42 = v60;
  v43 = v61;
  v44 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v44);

  sub_1CF9E6978();

  v45 = __fp_log_fork();

  *(v39 + 16) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v33;
  *(v46 + 24) = v39;
  *(v46 + 32) = v34;
  *(v46 + 40) = v41;
  *(v46 + 48) = v42;
  *(v46 + 56) = v43;
  *(v46 + 64) = sub_1CF902D8C;
  *(v46 + 72) = v35;
  v71 = sub_1CF2B9F54;
  v72 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1CEFCA444;
  v70 = &block_descriptor_2149;
  v47 = _Block_copy(&aBlock);
  v61 = v38;

  v48 = v34;

  v49 = v62;
  sub_1CF9E63F8();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v50 = v64;
  v51 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v47);
  (*(v57 + 8))(v50, v51);
  (*(v63 + 8))(v49, v56);

  v52 = v58;
  v53 = fpfs_adopt_log();
}

void sub_1CF8EA768(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v55 = a4;
  v56 = a1;
  LODWORD(v58) = a3;
  v57 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v64 = 0;
      v65 = 0;
      aBlock = v22;
      LOBYTE(v66) = 1;
      a7(&aBlock);

      return;
    }
  }

  v52 = v16;
  v53 = v13;
  v54 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v51[0] = [v23 serialQueue];

      v67 = nullsub_1;
      v68 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_2115;
      v25 = _Block_copy(&aBlock);
      v26 = v59;
      sub_1CF9E63F8();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v60;
      v28 = v54;
      sub_1CF9E77B8();
      v29 = v51[0];
      MEMORY[0x1D3869630](0, v26, v27, v25);
      _Block_release(v25);

      (*(v53 + 8))(v27, v28);
      (*(v52 + 8))(v26, v61);
    }
  }

  v51[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF79603C;
  v51[1] = v20;
  v33 = v55;
  v32[4] = v20;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v55 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v64 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  sub_1CF9E6978();

  v42 = __fp_log_fork();

  *(v36 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  *(v43 + 24) = v36;
  *(v43 + 32) = v31;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  *(v43 + 56) = v40;
  *(v43 + 64) = sub_1CF902D8C;
  *(v43 + 72) = v32;
  v67 = sub_1CF2B9F54;
  v68 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_2127;
  v44 = _Block_copy(&aBlock);
  v58 = v35;

  v45 = v31;

  v46 = v59;
  sub_1CF9E63F8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v47 = v60;
  v48 = v54;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v44);
  (*(v53 + 8))(v47, v48);
  (*(v52 + 8))(v46, v61);

  v49 = v55;
  v50 = fpfs_adopt_log();
}

uint64_t sub_1CF8EAE58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_1CF9E77C8();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1CF8E37F4(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_1CF9E77C8();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_1CF7ABFD0(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF8EAF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F43736676 && a2 == 0xEB00000000737265;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E756F436264 && a2 == 0xEA00000000007372 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFA5DAE0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFA5DB00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

void sub_1CF8EB0F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void), uint64_t a8)
{
  v56 = a4;
  v57 = a1;
  LODWORD(v59) = a3;
  v58 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  v21 = v20;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      a7();

      v23 = Strong;

      return;
    }
  }

  v53 = v17;
  v54 = v16;
  v55 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v52[0] = [v24 serialQueue];

      v68 = nullsub_1;
      v69 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v65 = 1107296256;
      v66 = sub_1CEFCA444;
      v67 = &block_descriptor_6054;
      v26 = _Block_copy(&aBlock);
      v27 = v60;
      sub_1CF9E63F8();
      v63 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v29 = v61;
      v28 = Strong;
      sub_1CF9E77B8();
      v30 = v52[0];
      MEMORY[0x1D3869630](0, v27, v29, v26);
      _Block_release(v26);

      (*(v55 + 8))(v29, v28);
      (*(v53 + 8))(v27, v54);
    }
  }

  v52[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF90324C;
  v52[1] = v21;
  v34 = v56;
  v33[4] = v21;
  v33[5] = v34;
  v33[6] = a5;
  v35 = a6;

  v36 = v31;
  v56 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v65 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v57;
  v40 = v58;
  v41 = v59;
  v42 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v42);

  sub_1CF9E6978();

  v43 = __fp_log_fork();

  *(v37 + 16) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v31;
  *(v44 + 24) = v37;
  *(v44 + 32) = v32;
  *(v44 + 40) = v39;
  *(v44 + 48) = v40;
  *(v44 + 56) = v41;
  *(v44 + 64) = sub_1CF902D8C;
  *(v44 + 72) = v33;
  v68 = sub_1CF2B9F54;
  v69 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFCA444;
  v67 = &block_descriptor_6066;
  v45 = _Block_copy(&aBlock);
  v59 = v36;

  v46 = v32;

  v47 = v60;
  sub_1CF9E63F8();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v49 = v61;
  v48 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v45);
  (*(v55 + 8))(v49, v48);
  (*(v53 + 8))(v47, v54);

  v50 = v56;
  v51 = fpfs_adopt_log();
}

uint64_t sub_1CF8EB80C(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

void sub_1CF8EB84C(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void *a7, uint64_t a8)
{
  v58 = a4;
  v59 = a1;
  LODWORD(v61) = a3;
  v60 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v64 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1CF9E6448();
  v63 = *(v65 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF902E90;
  *(v19 + 24) = v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = a7;

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v21 = sub_1CF8403B4();
      v22 = v20;

      sub_1CEFCC8E0(v22, a8);

      v23 = Strong;

      return;
    }
  }

  v55[2] = v18;
  v57 = v13;
  Strong = v12;
  v24 = a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started];
  v25 = MEMORY[0x1E69E7CC0];
  v56 = v19;
  if ((v24 & 1) == 0)
  {
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 serialQueue];

      v72 = nullsub_1;
      v73 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1CEFCA444;
      v71 = &block_descriptor_1985;
      v29 = _Block_copy(&aBlock);
      v30 = v62;
      sub_1CF9E63F8();
      v67 = v25;
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v31 = v64;
      v32 = Strong;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v30, v31, v29);
      _Block_release(v29);

      (*(v57 + 8))(v31, v32);
      v33 = v30;
      v19 = v56;
      (*(v63 + 8))(v33, v65);
    }
  }

  v55[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v34 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v35 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v36 = swift_allocObject();
  v36[2] = a6;
  v36[3] = sub_1CEFFD05C;
  v37 = v58;
  v36[4] = v19;
  v36[5] = v37;
  v36[6] = a5;
  v38 = a6;

  v39 = v34;
  v58 = fpfs_adopt_log();
  v40 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v69 = v41;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v42 = v59;
  v43 = v60;
  v44 = v61;
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v40 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v40;
  *(v47 + 32) = v35;
  *(v47 + 40) = v42;
  *(v47 + 48) = v43;
  *(v47 + 56) = v44;
  *(v47 + 64) = sub_1CF902D8C;
  *(v47 + 72) = v36;
  v72 = sub_1CF2B9F54;
  v73 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1CEFCA444;
  v71 = &block_descriptor_1997;
  v48 = _Block_copy(&aBlock);
  v61 = v39;

  v49 = v35;

  v50 = v62;
  sub_1CF9E63F8();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v64;
  v52 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v57 + 8))(v51, v52);
  (*(v63 + 8))(v50, v65);

  v53 = v58;
  v54 = fpfs_adopt_log();
}

void sub_1CF8EBFCC(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void, id), uint64_t a8)
{
  v56 = a4;
  v57 = a1;
  LODWORD(v59) = a3;
  v58 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  v21 = v20;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      a7(0, v22);

      v23 = Strong;

      return;
    }
  }

  v53 = v17;
  v54 = v16;
  v55 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v52[0] = [v24 serialQueue];

      v68 = nullsub_1;
      v69 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v65 = 1107296256;
      v66 = sub_1CEFCA444;
      v67 = &block_descriptor_2761;
      v26 = _Block_copy(&aBlock);
      v27 = v60;
      sub_1CF9E63F8();
      v63 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v29 = v61;
      v28 = Strong;
      sub_1CF9E77B8();
      v30 = v52[0];
      MEMORY[0x1D3869630](0, v27, v29, v26);
      _Block_release(v26);

      (*(v55 + 8))(v29, v28);
      (*(v53 + 8))(v27, v54);
    }
  }

  v52[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v33 = swift_allocObject();
  v33[2] = a6;
  v33[3] = sub_1CF903254;
  v52[1] = v21;
  v34 = v56;
  v33[4] = v21;
  v33[5] = v34;
  v33[6] = a5;
  v35 = a6;

  v36 = v31;
  v56 = fpfs_adopt_log();
  v37 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v65 = v38;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v39 = v57;
  v40 = v58;
  v41 = v59;
  v42 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v42);

  sub_1CF9E6978();

  v43 = __fp_log_fork();

  *(v37 + 16) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v31;
  *(v44 + 24) = v37;
  *(v44 + 32) = v32;
  *(v44 + 40) = v39;
  *(v44 + 48) = v40;
  *(v44 + 56) = v41;
  *(v44 + 64) = sub_1CF902D8C;
  *(v44 + 72) = v33;
  v68 = sub_1CF2B9F54;
  v69 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFCA444;
  v67 = &block_descriptor_2773;
  v45 = _Block_copy(&aBlock);
  v59 = v36;

  v46 = v32;

  v47 = v60;
  sub_1CF9E63F8();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v49 = v61;
  v48 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v45);
  (*(v55 + 8))(v49, v48);
  (*(v53 + 8))(v47, v54);

  v50 = v56;
  v51 = fpfs_adopt_log();
}

void sub_1CF8EC6D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(char *, id), uint64_t a8)
{
  v58 = a4;
  v59 = a5;
  LODWORD(v62) = a3;
  v60 = a1;
  v61 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v65 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v54 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = v22;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v25 = sub_1CF8403B4();
      v26 = sub_1CF9E5A58();
      (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
      a7(v21, v25);
      sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);

      goto LABEL_9;
    }
  }

  v55 = v15;
  v56 = v12;
  v57 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 serialQueue];

      v71 = nullsub_1;
      v72 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1CEFCA444;
      v70 = &block_descriptor_5483;
      v30 = _Block_copy(&aBlock);
      v31 = v63;
      sub_1CF9E63F8();
      v66 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v32 = v65;
      v33 = v57;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v31, v32, v30);
      _Block_release(v30);

      (*(v56 + 8))(v32, v33);
      (*(v64 + 8))(v31, v55);
    }
  }

  v54[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v34 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v35 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v36 = swift_allocObject();
  v36[2] = a6;
  v36[3] = sub_1CF901090;
  v54[2] = v23;
  v37 = v58;
  v36[4] = v23;
  v36[5] = v37;
  v36[6] = v59;
  v38 = a6;

  v39 = v34;
  v59 = fpfs_adopt_log();
  v40 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v68 = v41;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v40 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v40;
  *(v47 + 32) = v35;
  *(v47 + 40) = v42;
  *(v47 + 48) = v43;
  *(v47 + 56) = v44;
  *(v47 + 64) = sub_1CF902D8C;
  *(v47 + 72) = v36;
  v71 = sub_1CF2B9F54;
  v72 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1CEFCA444;
  v70 = &block_descriptor_5495;
  v48 = _Block_copy(&aBlock);
  v62 = v39;

  v49 = v35;

  v50 = v63;
  sub_1CF9E63F8();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v65;
  v52 = v57;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v56 + 8))(v51, v52);
  (*(v64 + 8))(v50, v55);

  v53 = v59;
  Strong = fpfs_adopt_log();

LABEL_9:
}

void sub_1CF8ECE60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(uint64_t *, char *, id), uint64_t a8)
{
  v59 = a4;
  v60 = a5;
  LODWORD(v63) = a3;
  v61 = a1;
  v62 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v55 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = v22;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v25 = sub_1CF8403B4();
      aBlock = 0;
      v26 = sub_1CF9E5A58();
      (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
      a7(&aBlock, v21, v25);
      sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);

      return;
    }
  }

  v56 = v15;
  v57 = v12;
  v58 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 serialQueue];

      v72 = nullsub_1;
      v73 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1CEFCA444;
      v71 = &block_descriptor_5280;
      v30 = _Block_copy(&aBlock);
      v31 = v64;
      sub_1CF9E63F8();
      v67 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v32 = v66;
      v33 = v58;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v31, v32, v30);
      _Block_release(v30);

      (*(v57 + 8))(v32, v33);
      (*(v65 + 8))(v31, v56);
    }
  }

  v55[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v34 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v35 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v36 = swift_allocObject();
  v36[2] = a6;
  v36[3] = sub_1CF9003D0;
  v55[2] = v23;
  v37 = v59;
  v36[4] = v23;
  v36[5] = v37;
  v36[6] = v60;
  v38 = a6;

  v39 = v34;
  v60 = fpfs_adopt_log();
  v40 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v69 = v41;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v42 = v61;
  v43 = v62;
  v44 = v63;
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v40 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v40;
  *(v47 + 32) = v35;
  *(v47 + 40) = v42;
  *(v47 + 48) = v43;
  *(v47 + 56) = v44;
  *(v47 + 64) = sub_1CF902D8C;
  *(v47 + 72) = v36;
  v72 = sub_1CF2B9F54;
  v73 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1CEFCA444;
  v71 = &block_descriptor_5292;
  v48 = _Block_copy(&aBlock);
  v63 = v39;

  v49 = v35;

  v50 = v64;
  sub_1CF9E63F8();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v66;
  v52 = v58;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v57 + 8))(v51, v52);
  (*(v65 + 8))(v50, v56);

  v53 = v60;
  v54 = fpfs_adopt_log();
}

void sub_1CF8ED5F4(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(void), uint64_t a8)
{
  v57 = a4;
  v58 = a1;
  LODWORD(v60) = a3;
  v59 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v61 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  v21 = v20;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v23 = [objc_opt_self() providingNotRequiredResponseWithSyncRootID_];
      a7();

      v24 = Strong;

      return;
    }
  }

  v54 = v17;
  v55 = v16;
  v56 = v13;
  Strong = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v53[0] = [v25 serialQueue];

      v69 = nullsub_1;
      v70 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = sub_1CEFCA444;
      v68 = &block_descriptor_5238;
      v27 = _Block_copy(&aBlock);
      v28 = v61;
      sub_1CF9E63F8();
      v64 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v30 = v62;
      v29 = Strong;
      sub_1CF9E77B8();
      v31 = v53[0];
      MEMORY[0x1D3869630](0, v28, v30, v27);
      _Block_release(v27);

      (*(v56 + 8))(v30, v29);
      (*(v54 + 8))(v28, v55);
    }
  }

  v53[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v32 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v33 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v34 = swift_allocObject();
  v34[2] = a6;
  v34[3] = sub_1CF900330;
  v53[1] = v21;
  v35 = v57;
  v34[4] = v21;
  v34[5] = v35;
  v34[6] = a5;
  v36 = a6;

  v37 = v32;
  v57 = fpfs_adopt_log();
  v38 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v66 = v39;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v40 = v58;
  v41 = v59;
  v42 = v60;
  v43 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v43);

  sub_1CF9E6978();

  v44 = __fp_log_fork();

  *(v38 + 16) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v32;
  *(v45 + 24) = v38;
  *(v45 + 32) = v33;
  *(v45 + 40) = v40;
  *(v45 + 48) = v41;
  *(v45 + 56) = v42;
  *(v45 + 64) = sub_1CF902D8C;
  *(v45 + 72) = v34;
  v69 = sub_1CF2B9F54;
  v70 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1CEFCA444;
  v68 = &block_descriptor_5250;
  v46 = _Block_copy(&aBlock);
  v60 = v37;

  v47 = v33;

  v48 = v61;
  sub_1CF9E63F8();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v50 = v62;
  v49 = Strong;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v46);
  (*(v56 + 8))(v50, v49);
  (*(v54 + 8))(v48, v55);

  v51 = v57;
  v52 = fpfs_adopt_log();
}

void sub_1CF8EDD24(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, id), uint64_t a8)
{
  v55 = a4;
  v56 = a1;
  LODWORD(v58) = a3;
  v57 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      aBlock = 0;
      a7(&aBlock, v22);

      return;
    }
  }

  v52 = v16;
  v53 = v13;
  v54 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v51[0] = [v23 serialQueue];

      v67 = nullsub_1;
      v68 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_5220;
      v25 = _Block_copy(&aBlock);
      v26 = v59;
      sub_1CF9E63F8();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v60;
      v28 = v54;
      sub_1CF9E77B8();
      v29 = v51[0];
      MEMORY[0x1D3869630](0, v26, v27, v25);
      _Block_release(v25);

      (*(v53 + 8))(v27, v28);
      (*(v52 + 8))(v26, v61);
    }
  }

  v51[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF903280;
  v51[1] = v20;
  v33 = v55;
  v32[4] = v20;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v55 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v64 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  sub_1CF9E6978();

  v42 = __fp_log_fork();

  *(v36 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  *(v43 + 24) = v36;
  *(v43 + 32) = v31;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  *(v43 + 56) = v40;
  *(v43 + 64) = sub_1CF902D8C;
  *(v43 + 72) = v32;
  v67 = sub_1CF2B9F54;
  v68 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_5232;
  v44 = _Block_copy(&aBlock);
  v58 = v35;

  v45 = v31;

  v46 = v59;
  sub_1CF9E63F8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v47 = v60;
  v48 = v54;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v44);
  (*(v53 + 8))(v47, v48);
  (*(v52 + 8))(v46, v61);

  v49 = v55;
  v50 = fpfs_adopt_log();
}

void sub_1CF8EE40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (**a7)(void, void, void))
{
  v62 = a4;
  v63 = a5;
  LODWORD(v66) = a3;
  v64 = a1;
  v65 = a2;
  v9 = sub_1CF9E63A8();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CF9E6448();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF902DE0;
  *(v23 + 24) = v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  _Block_copy(a7);
  v72 = v22;

  v71 = v23;
  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v25 = sub_1CF8403B4();
      v26 = sub_1CF9E5A58();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v21, 1, 1, v26);
      sub_1CEFCCBDC(v21, v18, &unk_1EC4BE310, qword_1CF9FCBE0);
      v28 = (*(v27 + 48))(v18, 1, v26);
      _Block_copy(a7);
      v29 = 0;
      if (v28 != 1)
      {
        v29 = sub_1CF9E5928();
        (*(v27 + 8))(v18, v26);
      }

      v30 = sub_1CF9E57E8();
      (a7)[2](a7, v29, v30);

      sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);
      _Block_release(a7);

      goto LABEL_11;
    }
  }

  v60 = v12;
  v61 = v9;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 serialQueue];

      v78 = nullsub_1;
      v79 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_1CEFCA444;
      v77 = &block_descriptor_1304;
      v34 = _Block_copy(&aBlock);
      v35 = v67;
      sub_1CF9E63F8();
      v73 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v36 = v68;
      v37 = v61;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v35, v36, v34);
      _Block_release(v34);

      (*(v70 + 8))(v36, v37);
      (*(v60 + 8))(v35, v69);
    }
  }

  v59 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v38 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v39 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v40 = swift_allocObject();
  v40[2] = a6;
  v40[3] = sub_1CF9034CC;
  v41 = v62;
  v42 = v63;
  v40[4] = v23;
  v40[5] = v41;
  v40[6] = v42;
  v43 = a6;

  v44 = v38;
  v63 = fpfs_adopt_log();
  v45 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v75 = v46;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v50 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v50);

  sub_1CF9E6978();

  v51 = __fp_log_fork();

  *(v45 + 16) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = v38;
  *(v52 + 24) = v45;
  *(v52 + 32) = v39;
  *(v52 + 40) = v47;
  *(v52 + 48) = v48;
  *(v52 + 56) = v49;
  *(v52 + 64) = sub_1CEFD3C24;
  *(v52 + 72) = v40;
  v78 = sub_1CEFD5064;
  v79 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v75 = 1107296256;
  v76 = sub_1CEFCA444;
  v77 = &block_descriptor_1316;
  v53 = _Block_copy(&aBlock);
  v66 = v44;

  v54 = v39;

  v55 = v67;
  sub_1CF9E63F8();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v56 = v68;
  v57 = v61;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v53);
  (*(v70 + 8))(v56, v57);
  (*(v60 + 8))(v55, v69);

  v58 = v63;
  Strong = fpfs_adopt_log();

LABEL_11:
}

void sub_1CF8EECC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, void (*a7)(char *, id), uint64_t a8)
{
  v58 = a4;
  v59 = a5;
  LODWORD(v62) = a3;
  v60 = a1;
  v61 = a2;
  v11 = sub_1CF9E63A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v65 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v54 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = v22;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v25 = sub_1CF8403B4();
      v26 = sub_1CF9E5A58();
      (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
      a7(v21, v25);
      sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);

      goto LABEL_9;
    }
  }

  v55 = v15;
  v56 = v12;
  v57 = v11;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 serialQueue];

      v71 = nullsub_1;
      v72 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1CEFCA444;
      v70 = &block_descriptor_3707;
      v30 = _Block_copy(&aBlock);
      v31 = v63;
      sub_1CF9E63F8();
      v66 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v32 = v65;
      v33 = v57;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v31, v32, v30);
      _Block_release(v30);

      (*(v56 + 8))(v32, v33);
      (*(v64 + 8))(v31, v55);
    }
  }

  v54[1] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v34 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v35 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v36 = swift_allocObject();
  v36[2] = a6;
  v36[3] = sub_1CF9034CC;
  v54[2] = v23;
  v37 = v58;
  v36[4] = v23;
  v36[5] = v37;
  v36[6] = v59;
  v38 = a6;

  v39 = v34;
  v59 = fpfs_adopt_log();
  v40 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v68 = v41;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v40 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v40;
  *(v47 + 32) = v35;
  *(v47 + 40) = v42;
  *(v47 + 48) = v43;
  *(v47 + 56) = v44;
  *(v47 + 64) = sub_1CF902D8C;
  *(v47 + 72) = v36;
  v71 = sub_1CF2B9F54;
  v72 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1CEFCA444;
  v70 = &block_descriptor_3719;
  v48 = _Block_copy(&aBlock);
  v62 = v39;

  v49 = v35;

  v50 = v63;
  sub_1CF9E63F8();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v65;
  v52 = v57;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v56 + 8))(v51, v52);
  (*(v64 + 8))(v50, v55);

  v53 = v59;
  Strong = fpfs_adopt_log();

LABEL_9:
}

void sub_1CF8EF448(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, uint64_t *, id), uint64_t a8)
{
  v55 = a4;
  v56 = a1;
  LODWORD(v58) = a3;
  v57 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      v62 = 0;
      aBlock = 0;
      a7(&aBlock, &v62, v22);

      return;
    }
  }

  v52 = v16;
  v53 = v13;
  v54 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v51[0] = [v23 serialQueue];

      v67 = nullsub_1;
      v68 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_3580;
      v25 = _Block_copy(&aBlock);
      v26 = v59;
      sub_1CF9E63F8();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v60;
      v28 = v54;
      sub_1CF9E77B8();
      v29 = v51[0];
      MEMORY[0x1D3869630](0, v26, v27, v25);
      _Block_release(v25);

      (*(v53 + 8))(v27, v28);
      (*(v52 + 8))(v26, v61);
    }
  }

  v51[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF903284;
  v51[1] = v20;
  v33 = v55;
  v32[4] = v20;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v55 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v64 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  sub_1CF9E6978();

  v42 = __fp_log_fork();

  *(v36 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  *(v43 + 24) = v36;
  *(v43 + 32) = v31;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  *(v43 + 56) = v40;
  *(v43 + 64) = sub_1CF902D8C;
  *(v43 + 72) = v32;
  v67 = sub_1CF2B9F54;
  v68 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_3592;
  v44 = _Block_copy(&aBlock);
  v58 = v35;

  v45 = v31;

  v46 = v59;
  sub_1CF9E63F8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v47 = v60;
  v48 = v54;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v44);
  (*(v53 + 8))(v47, v48);
  (*(v52 + 8))(v46, v61);

  v49 = v55;
  v50 = fpfs_adopt_log();
}

void sub_1CF8EFB34(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *, uint64_t *, id), uint64_t a8)
{
  v55 = a4;
  v56 = a1;
  LODWORD(v58) = a3;
  v57 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      aBlock = 0;
      v64 = 0;
      v62 = 0;
      a7(&aBlock, &v62, v22);

      return;
    }
  }

  v52 = v16;
  v53 = v13;
  v54 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v51[0] = [v23 serialQueue];

      v67 = nullsub_1;
      v68 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_2412;
      v25 = _Block_copy(&aBlock);
      v26 = v59;
      sub_1CF9E63F8();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v60;
      v28 = v54;
      sub_1CF9E77B8();
      v29 = v51[0];
      MEMORY[0x1D3869630](0, v26, v27, v25);
      _Block_release(v25);

      (*(v53 + 8))(v27, v28);
      (*(v52 + 8))(v26, v61);
    }
  }

  v51[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF8FA66C;
  v51[1] = v20;
  v33 = v55;
  v32[4] = v20;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v55 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v64 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  sub_1CF9E6978();

  v42 = __fp_log_fork();

  *(v36 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  *(v43 + 24) = v36;
  *(v43 + 32) = v31;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  *(v43 + 56) = v40;
  *(v43 + 64) = sub_1CF902D8C;
  *(v43 + 72) = v32;
  v67 = sub_1CF2B9F54;
  v68 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_2424;
  v44 = _Block_copy(&aBlock);
  v58 = v35;

  v45 = v31;

  v46 = v59;
  sub_1CF9E63F8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v47 = v60;
  v48 = v54;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v44);
  (*(v53 + 8))(v47, v48);
  (*(v52 + 8))(v46, v61);

  v49 = v55;
  v50 = fpfs_adopt_log();
}

id _s18FileProviderDaemon20FPDDomainFPFSBackendC21registerXPCActivitiesyyFZ_0()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v6 = sub_1CF9E6108();
  v7 = sub_1CF9E7288();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1CEFC7000, v6, v7, "registering xpc activities", v8, 2u);
    MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBC10 ping];
  if (qword_1EDEAC5D0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBAB8 ping];
  if (qword_1EDEA5178 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB778 ping];
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB28 ping];
  if (qword_1EDEAC220[0] != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA80 ping];
  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA88 ping];
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB830 ping];
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBD10 ping];
  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 ping];
  if (qword_1EDEA5A98 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBB818 ping];
}

void sub_1CF8F0650(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF481340(a1, a2 & 1);
  }
}

void sub_1CF8F067C(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = 1;
  if ((*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) = 1;
    if ((*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started) & 1) == 0)
    {
      v4 = a1;
      dispatch_group_leave(*(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup));
      a1 = v4;
    }

    v3 = 0;
  }

  *a1 = v3;
}

void *sub_1CF8F0704()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1CF742200(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1CF8F0788()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1CF850240(v0 + v2, v5, v6, v7, v9, v10);
}

uint64_t sub_1CF8F0894(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF85A228(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, v1 + v5, *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8F095C(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1CF85FD5C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1CF8F0A04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CF8F0A30(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = (v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80)));

  return sub_1CF861890(a1, v7, v8, v1 + v4, v9, v10, v11);
}

void sub_1CF8F0B4C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 19) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF8651E8(a1, v1 + v4, v10, v11, v9, v12, v13);
}

uint64_t sub_1CF8F0C2C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, *a2, *a3);
}

uint64_t sub_1CF8F0C64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, a1);
}

uint64_t sub_1CF8F0CC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1CF8F0D0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0, 0.0);
}

uint64_t sub_1CF8F0D90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void *sub_1CF8F0F1C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void sub_1CF8F0FE0(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  dispatch_group_leave(v3);
}

uint64_t sub_1CF8F1034(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

unint64_t sub_1CF8F10A4(uint64_t a1, int a2, unint64_t a3, char *a4, void (*a5)(id), uint64_t a6, void *a7, void *a8, unint64_t a9)
{
  v111 = a3;
  LODWORD(v110) = a2;
  v115 = a1;
  v102 = sub_1CF9E6118();
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E63A8();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1CF9E6448();
  v105 = *(v107 - 8);
  v19 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1CF9E5A58();
  v21 = *(v113 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v101 - v25;
  v27 = swift_allocObject();
  v114 = a5;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v112 = a8;
  v118 = v27;
  v27[6] = a9;
  v28 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];

  v29 = a7;
  sub_1CEFD09A0(a9);
  v119 = a6;

  v30 = v29;
  v116 = a9;
  sub_1CEFD09A0(a9);
  v31 = sub_1CEFCE64C();
  v117 = a4;
  v32 = v103;
  if (!*(v31 + 16))
  {
    v35 = v28;
    v36 = v30;

    v33 = v113;
    goto LABEL_8;
  }

  v33 = v113;
  (*(v21 + 16))(v26, v31 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v113);

  if ((sub_1CF9E59A8() & 1) == 0)
  {
    v37 = v26;
    v35 = v28;
    v36 = v30;
    (*(v21 + 8))(v37, v33);
LABEL_8:
    (*(v21 + 16))(v23, v115, v33);
    v38 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v39 = swift_allocObject();
    v40 = v118;
    *(v39 + 16) = sub_1CF8F9E7C;
    *(v39 + 24) = v40;
    (*(v21 + 32))(v39 + v38, v23, v33);
    v41 = v39 + ((v38 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
    v42 = v111;
    *v41 = v111;
    *(v41 + 8) = v110 & 1;
    v115 = v39;
    v43 = v35;
    *(v39 + ((v38 + v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
    v44 = swift_allocObject();
    v45 = v119;
    v44[2] = v114;
    v44[3] = v45;
    v46 = v112;
    v44[4] = v36;
    v44[5] = v46;
    v47 = v116;
    v44[6] = v116;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1CF903388;
    *(v48 + 24) = v44;
    v113 = v48;
    Strong = swift_unknownObjectWeakLoadStrong();

    v50 = v36;
    sub_1CEFD09A0(v47);

    v51 = v50;
    sub_1CEFD09A0(v47);

    sub_1CEFD09A0(v42);
    v52 = v43;
    v112 = v44;

    if (Strong)
    {
      if ([Strong unableToStartup])
      {
        v53 = sub_1CF8403B4();

        v54 = v51;
        sub_1CEFD09A0(v47);
        v114(v53);
        sub_1CEFD0A98(v47);

LABEL_16:

        sub_1CEFD0A98(v47);

        return sub_1CEFD0A98(v47);
      }
    }

    v114 = v51;
    v55 = v117;
    if ((v117[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
    {
      v56 = swift_unknownObjectWeakLoadStrong();
      if (v56)
      {
        v57 = v56;
        v58 = [v56 serialQueue];

        v125 = nullsub_1;
        v126 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v122 = 1107296256;
        v123 = sub_1CEFCA444;
        v124 = &block_descriptor_2279;
        v59 = _Block_copy(&aBlock);
        v60 = v104;
        sub_1CF9E63F8();
        v120 = MEMORY[0x1E69E7CC0];
        sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
        v61 = v106;
        v62 = v109;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v60, v61, v59);
        _Block_release(v59);

        (*(v108 + 8))(v61, v62);
        (*(v105 + 8))(v60, v107);
      }
    }

    v111 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
    v63 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
    v64 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v65 = swift_allocObject();
    v65[2] = v55;
    v65[3] = sub_1CF8F9E94;
    v65[4] = v113;
    v65[5] = sub_1CF8F9E80;
    v65[6] = v115;
    v66 = v55;

    v67 = v63;
    v117 = fpfs_adopt_log();
    v68 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v122 = v69;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v70 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v70);

    sub_1CF9E6978();

    v71 = __fp_log_fork();

    *(v68 + 16) = v71;
    v72 = swift_allocObject();
    *(v72 + 16) = v63;
    *(v72 + 24) = v68;
    *(v72 + 32) = v64;
    *(v72 + 40) = "itemID(for:requireProviderItemID:userRequest:completionHandler:)";
    *(v72 + 48) = 64;
    *(v72 + 56) = 2;
    *(v72 + 64) = sub_1CF902D8C;
    *(v72 + 72) = v65;
    v125 = sub_1CF2B9F54;
    v126 = v72;
    aBlock = MEMORY[0x1E69E9820];
    v122 = 1107296256;
    v123 = sub_1CEFCA444;
    v124 = &block_descriptor_2291;
    v73 = _Block_copy(&aBlock);
    v110 = v67;

    v74 = v64;

    v75 = v104;
    sub_1CF9E63F8();
    v120 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v76 = v106;
    v77 = v109;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v73);
    (*(v108 + 8))(v76, v77);
    (*(v105 + 8))(v75, v107);

    v78 = v117;
    Strong = fpfs_adopt_log();

    v47 = v116;
    v51 = v114;
    goto LABEL_16;
  }

  v34 = v26;
  if (*&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] || a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] == 1)
  {
    v35 = v28;
    v36 = v30;
    (*(v21 + 8))(v34, v33);
    goto LABEL_8;
  }

  v80 = fpfs_current_or_default_log();
  v81 = v32;
  sub_1CF9E6128();
  v82 = v111;
  sub_1CEFD09A0(v111);
  v83 = sub_1CF9E6108();
  v84 = sub_1CF9E7298();
  sub_1CEFD0A98(v82);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136446210;
    v87 = sub_1CEFD11AC(v82);
    v89 = sub_1CEFD0DF0(v87, v88, &aBlock);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1CEFC7000, v83, v84, "Going through fast-path for the rootItem at startup for %{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1D386CDC0](v86, -1, -1);
    MEMORY[0x1D386CDC0](v85, -1, -1);

    (*(v101 + 8))(v103, v102);
  }

  else
  {

    (*(v101 + 8))(v81, v102);
  }

  v47 = v116;
  v90 = v114;
  v91 = v34;
  v92 = sub_1CF75C4E8(*MEMORY[0x1E6967258], 1);
  v93 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v28 itemIdentifier:v92];

  v94 = swift_allocObject();
  v95 = v119;
  *(v94 + 16) = v90;
  *(v94 + 24) = v95;
  v96 = swift_allocObject();
  v96[2] = v90;
  v96[3] = v95;
  v97 = v112;
  v96[4] = v93;
  v96[5] = v97;
  v96[6] = v47;
  v98 = v93;
  swift_retain_n();
  v99 = v98;
  sub_1CEFD09A0(v47);
  v100 = v99;
  sub_1CEFD4024("uploadLocalVersionOfItem(at:policy:request:completionHandler:)", 62, 2, sub_1CF90324C, v94, sub_1CF8F9EC4, v96);

  (*(v21 + 8))(v91, v113);

  return sub_1CEFD0A98(v47);
}

void sub_1CF8F1EA0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  _Block_copy(a5);
  v16 = [a1 searchQuery];
  if (v16)
  {
    v17 = v16;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = [Strong extensionBackend];
      v21 = swift_allocObject();
      v21[2] = sub_1CF8F75E0;
      v21[3] = v15;
      v21[4] = a2;
      v21[5] = a3;
      v21[6] = a4;
      v21[7] = v17;
      aBlock[4] = sub_1CF90336C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_1523;
      v22 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v23 = a4;
      v24 = v17;

      [v20 enumerateWithSettings:a1 lifetimeExtender:a2 observer:a3 completionHandler:v22];

      _Block_release(v22);

      swift_unknownObjectRelease();
    }

    else
    {
      v39 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v40 = sub_1CF9E6108();
      v41 = sub_1CF9E72A8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1CEFC7000, v40, v41, "Missing domain in enumerateWithSettings for search", v42, 2u);
        MEMORY[0x1D386CDC0](v42, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
      v43 = FPNotSupportedError();
      if (v43)
      {
        v44 = sub_1CF9E57E8();
      }

      else
      {
        v44 = 0;
      }

      (a5)[2](a5, 0, v44);
    }

    return;
  }

  v50 = [a1 enumeratedItemID];
  v25 = [v50 identifier];
  v26 = *MEMORY[0x1E6967298];
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;
  if (v27 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v29 == v30)
  {
  }

  else
  {
    v32 = sub_1CF9E8048();

    if ((v32 & 1) == 0)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1CF8F75E0;
      *(v33 + 24) = v15;
      v34 = swift_allocObject();
      v34[2] = sub_1CF8F75E0;
      v34[3] = v15;
      v35 = v50;
      v34[4] = a1;
      v34[5] = v35;
      v34[6] = a2;
      v34[7] = a3;
      v34[8] = a4;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1CF90325C;
      *(v36 + 24) = v33;
      swift_retain_n();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      a4;
      v37 = a1;
      v38 = v35;

      sub_1CEFD4024("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, sub_1CF903280, v36, sub_1CF9032C8, v34);

      return;
    }
  }

  v45 = FPNotSupportedError();
  if (v45)
  {
    v46 = sub_1CF9E57E8();
  }

  else
  {
    v46 = 0;
  }

  v47 = a5[2];
  v49 = v46;
  v47(a5, 0);

  v48 = v49;
}

void *sub_1CF8F2468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59[30] = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E6938();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  v12 = sub_1CF4AF818(3);
  if (!v4)
  {
    v13 = v12;
    swift_dynamicCastClassUnconditional();
    v58 = sub_1CF4AF818(501);
    swift_dynamicCastClassUnconditional();
    v56 = sub_1CF4AF818(2);
    swift_dynamicCastClassUnconditional();
    v54 = sub_1CF4AF818(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5070, &qword_1CFA18208);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FC330;
    *(inited + 32) = 0xD000000000000023;
    *(inited + 40) = 0x80000001CFA5EE00;
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v17 = v16;

    *(inited + 48) = v17;
    *(inited + 56) = 0xD00000000000001FLL;
    *(inited + 64) = 0x80000001CFA5EE30;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v20 = v19;

    *(inited + 72) = v20;
    *(inited + 80) = 0xD000000000000023;
    *(inited + 88) = 0x80000001CFA5EE50;
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v23 = v22;

    *(inited + 96) = v23;
    *(inited + 104) = 0xD000000000000018;
    *(inited + 112) = 0x80000001CFA5EE80;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v26 = v25;

    *(inited + 120) = v26;
    sub_1CF4E44D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5078, &qword_1CFA18210);
    swift_arrayDestroy();
    swift_dynamicCastClassUnconditional();
    v57 = sub_1CF4AF268(a2);
    swift_dynamicCastClassUnconditional();
    v55 = sub_1CF4AF520(a2, a3, a4);
    swift_dynamicCastClassUnconditional();
    v29 = sub_1CF4AF4EC(a2, a3, a4);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1CF9FC3C0;
    *(v30 + 32) = 0xD00000000000002DLL;
    *(v30 + 40) = 0x80000001CFA5EEA0;
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v33 = v32;

    *(v30 + 48) = v33;
    *(v30 + 56) = 0xD000000000000022;
    *(v30 + 64) = 0x80000001CFA5EED0;
    v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v36 = v35;

    *(v30 + 72) = v36;
    *(v30 + 80) = 0xD000000000000034;
    *(v30 + 88) = 0x80000001CFA5EF00;
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v39 = v38;

    *(v30 + 96) = v39;
    sub_1CF4E44D8(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    v40 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5080, &qword_1CFA18218);
    v41 = sub_1CF9E6618();

    v59[0] = 0;
    v42 = [v40 dataWithJSONObject:v41 options:0 error:v59];

    v43 = v59[0];
    if (v42)
    {
      v44 = sub_1CF9E5B88();
      v46 = v45;

      sub_1CF9E6918();
      a2 = sub_1CF9E68D8();
      sub_1CEFE4714(v44, v46);
      v47 = sub_1CF9E6618();

      v59[0] = 0;
      v48 = [v40 dataWithJSONObject:v47 options:0 error:v59];

      v49 = v59[0];
      if (v48)
      {
        v50 = sub_1CF9E5B88();
        v52 = v51;

        sub_1CF9E6918();
        sub_1CF9E68D8();
        sub_1CEFE4714(v50, v52);
        goto LABEL_3;
      }

      v53 = v49;

      sub_1CF9E57F8();
    }

    else
    {
      a2 = v43;

      sub_1CF9E57F8();
    }

    swift_willThrow();
  }

LABEL_3:
  v27 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t _s18FileProviderDaemon20FPDDomainFPFSBackendC14forceIngestion2aty10Foundation3URLV_tF_0(uint64_t a1)
{
  v2 = sub_1CF9E53C8();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E5A58();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v51 = a1;
  sub_1CF9E5A18();
  v63 = 0;
  v64 = 1;
  v62 = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = &v63;
  *(v16 + 24) = sub_1CF891A4C;
  *(v16 + 32) = 0;
  *(v16 + 40) = &v62;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF1B7F70;
  *(v17 + 24) = v16;
  v60 = sub_1CF50EB9C;
  v61 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1CF005DF8;
  v59 = &block_descriptor_4332;
  v18 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v19 = fpfs_openat();

  _Block_release(v18);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v62;
  if (v62)
  {
LABEL_3:
    swift_willThrow();

    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = v52;
    (*(v6 + 16))(v9, v51, v52);
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v28 = sub_1CF9E7F98();
      v29 = v23;
      v31 = v30;
      (*(v6 + 8))(v9, v29);
      v32 = sub_1CEFD0DF0(v28, v31, &aBlock);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "can't force ingestion of item at %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v23);
    }

    return (*(v53 + 8))(v15, v54);
  }

  if ((v19 & 0x80000000) == 0)
  {
    if ((v64 & 1) == 0)
    {
    }

    goto LABEL_19;
  }

  if (MEMORY[0x1D38683F0](v20))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v21 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v34 = sub_1CF9E6138();
      if ((v34 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v34;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v35 = v50;
      sub_1CF9E57D8();
      v21 = sub_1CF9E53A8();
      (*(v49 + 8))(v5, v35);
    }

    goto LABEL_3;
  }

LABEL_20:
  aBlock = 0;
  v57 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v57 = 0x80000001CFA2DF30;
  v55 = v19;
  v36 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v36);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v37 = aBlock;
  v38 = v57;
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E72B8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136315650;
    v44 = sub_1CF9E7988();
    v46 = sub_1CEFD0DF0(v44, v45, &aBlock);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2048;
    *(v42 + 14) = 315;
    *(v42 + 22) = 2080;
    *(v42 + 24) = sub_1CEFD0DF0(v37, v38, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v40, v41, "[ASSERT] ‼️  %s:%lu: %s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v42, -1, -1);
  }

  (*(v53 + 8))(v48, v54);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF8F3564(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1CF8F359C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1CF8F3600(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CF8F36C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_1CF8F36F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*(*(a1 + 16) + 80), 0);
}

uint64_t sub_1CF8F377C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CF8F37DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D40EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F38BC(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1CF9E5A58() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = (v1 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1CF0264D8;

  return sub_1CF8D6330(a1, v8, v9, v10, v11, v1 + v5, v13, v14);
}

void sub_1CF8F3A1C(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *v12;
      v15 = [v14 knownFolder];
      sub_1CF9E59D8();

      v16 = [v14 logicalLocation];
      sub_1CF9E59D8();

      sub_1CF7A41CC();
      if (v1)
      {
        break;
      }

      v17 = *v13;
      (*v13)(v6, v3);
      v17(v10, v3);
      v12 += 2;
      if (!--v11)
      {
        return;
      }
    }

    v18 = *v13;
    (*v13)(v6, v3);
    v18(v10, v3);
  }
}

uint64_t sub_1CF8F3BF0(uint64_t a1, void *a2, char *a3, uint64_t a4, void *a5)
{
  v32 = a5;
  v34 = a2;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  v15 = *(*(v14 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v16 = *(swift_dynamicCastClassUnconditional() + 216);
  *v13 = v16;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  v18 = (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = *(*(v14 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 232) suspend];
  v20 = *(*(v14 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 248) suspend];
  sub_1CF8F3A1C(a4);
  if (v5)
  {
    goto LABEL_6;
  }

  v18 = objc_sync_enter(a3);
  if (v18)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v18);
    *(&v31 - 2) = a3;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v31 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v21 = &a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  v22 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v21 = 0;
  v23 = v21[8];
  v21[8] = -1;
  sub_1CF8F0650(v22, v23);
  v24 = objc_sync_exit(a3);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 2) = a3;

    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v31 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v25 = *(*(v14 + 32) + 16);
  swift_dynamicCastClassUnconditional();

  v26 = sub_1CEFCE64C();
  sub_1CF261A18(v26);

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4084;
  v27 = _Block_copy(aBlock);
  [v34 didRefreshRootURLsWithCompletionHandler_];
  _Block_release(v27);
LABEL_6:
  v28 = *(*(v14 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 232) resume];
  v29 = *(*(v14 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 248) resume];
}

uint64_t sub_1CF8F4034(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = &v131 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v139 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v135 = (&v131 - v18);
  v138 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v131 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v22 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v131 - v23;
  v24 = sub_1CF9E6118();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v131 - v29;
  v147 = *(a2 + 16);
  v137 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v31 = swift_allocObject();
  *(v31 + 2) = a1;
  *(v31 + 3) = a4;
  v145 = v31;
  *(v31 + 4) = a5;

  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a3);

  sub_1CEFD09A0(a3);
  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E7298();
  v35 = os_log_type_enabled(v33, v34);
  v140 = a1;
  v143 = v25;
  v144 = v24;
  if (v35)
  {
    v131 = v14;
    v36 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v148[0] = v136;
    *v36 = 136315394;
    v37 = swift_beginAccess();
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v41 = v39;
      v42 = NSFileProviderItemIdentifier.description.getter();
      v44 = v43;
      sub_1CEFD0994(v39, v40, 1);
    }

    else
    {
      v150 = *(a1 + 32);
      v151 = v40;
      v42 = VFSItemID.description.getter(v37, v38);
      v44 = v46;
    }

    v47 = sub_1CEFD0DF0(v42, v44, v148);

    *(v36 + 4) = v47;
    *(v36 + 12) = 2080;
    v48 = sub_1CEFD11AC(a3);
    v50 = v49;
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);
    v51 = sub_1CEFD0DF0(v48, v50, v148);

    *(v36 + 14) = v51;
    _os_log_impl(&dword_1CEFC7000, v33, v34, "Request to materialize content of itemID %s reason %s", v36, 0x16u);
    v52 = v136;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v36, -1, -1);

    v136 = *(v143 + 8);
    v136(v30, v144);
    v45 = v146;
    v14 = v131;
  }

  else
  {
    sub_1CEFD0A98(a3);
    sub_1CEFD0A98(a3);

    v136 = *(v25 + 8);
    v136(v30, v24);
    v45 = v146;
  }

  LODWORD(v131) = (a3 >> 58) & 0x3C | (a3 >> 1) & 3;
  if (v131 == 2)
  {
    v53 = swift_projectBox();
    v54 = v133;
    sub_1CEFCCBDC(v53, v133, &unk_1EC4C4F40, qword_1CFA0F4C0);
    v55 = *(v54 + 8);

    v56 = v132;
    v57 = *(v132 + 48);

    v58 = *(v54 + *(v56 + 80));
    v59 = sub_1CF9E5A58();
    (*(*(v59 - 8) + 8))(v54 + v57, v59);
  }

  else
  {
    v58 = 0;
  }

  v60 = v134;
  sub_1CEFCCBDC(v147 + qword_1EDEBBC18, v134, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v61 = type metadata accessor for TelemetrySignposter(0);
  v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
  v141 = a3;
  if (v62 == 1)
  {
    sub_1CEFCCC44(v60, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v63 = 1;
  }

  else
  {
    sub_1CF519DE8(v58, v45);
    sub_1CEFD5338(v60, type metadata accessor for TelemetrySignposter);
    v63 = 0;
  }

  v64 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v64 - 8) + 56))(v45, v63, 1, v64);
  v65 = v135;
  sub_1CEFCCBDC(v45, v135, qword_1EC4C1588, &unk_1CFA0A260);
  v66 = *(v14 + 80);
  v67 = (v66 + 16) & ~v66;
  v68 = v138;
  v69 = &v138[v67 + 7] & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_1CEFE55D0(v65, v70 + v67, qword_1EC4C1588, &unk_1CFA0A260);
  v71 = (v70 + v69);
  v135 = sub_1CF8FDA38;
  v72 = v145;
  *v71 = sub_1CF8FDA38;
  v71[1] = v72;
  v73 = v139;
  sub_1CEFCCBDC(v45, v139, qword_1EC4C1588, &unk_1CFA0A260);
  v74 = (v66 + 24) & ~v66;
  v134 = &v68[v74 + 7] & 0xFFFFFFFFFFFFFFF8;
  v75 = &v68[v74 + 31] & 0xFFFFFFFFFFFFFFF8;
  v138 = ((v75 + 15) & 0xFFFFFFFFFFFFFFF8);
  v76 = (v75 + 31) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v141;
  *(v79 + 16) = v141;
  sub_1CEFE55D0(v73, v79 + v74, qword_1EC4C1588, &unk_1CFA0A260);
  v81 = v79 + v134;
  *v81 = v135;
  *(v81 + 8) = v72;
  *(v81 + 16) = 0;
  *(v79 + v75) = v147;
  v82 = &v138[v79];
  v83 = v140;
  *v82 = v140;
  v82[8] = 0;
  *(v79 + v76) = 0;
  v84 = v137;
  *(v79 + v77) = v137;
  v85 = v83;
  v86 = v79 + v78;
  *v86 = sub_1CF903314;
  *(v86 + 8) = v70;
  *(v86 + 16) = 1;
  v87 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  sub_1CEFD09A0(v80);

  v138 = v84;
  v139 = v70;
  v88 = v80;

  v137 = [v87 init];
  v89 = swift_allocObject();
  *(v89 + 2) = sub_1CF903318;
  *(v89 + 3) = v79;
  v135 = v89;
  *(v89 + 4) = v80;
  sub_1CEFD09A0(v80);

  sub_1CEFD09A0(v80);
  v134 = v79;

  v90 = fpfs_current_or_default_log();
  v91 = v142;
  sub_1CF9E6128();
  sub_1CEFD09A0(v80);

  sub_1CEFD09A0(v80);
  v92 = sub_1CF9E6108();
  v93 = sub_1CF9E7298();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v149 = v95;
    *v94 = 136315906;
    v96 = swift_beginAccess();
    v98 = *(v85 + 32);
    v99 = *(v85 + 40);
    if (*(v85 + 41))
    {
      v100 = v98;
      v101 = NSFileProviderItemIdentifier.description.getter();
      v103 = v102;
      sub_1CEFD0994(v98, v99, 1);
    }

    else
    {
      v150 = *(v85 + 32);
      v151 = v99;
      v101 = VFSItemID.description.getter(v96, v97);
      v103 = v105;
    }

    v106 = sub_1CEFD0DF0(v101, v103, &v149);

    *(v94 + 4) = v106;
    *(v94 + 12) = 2080;
    *(v94 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v149);
    *(v94 + 22) = 2080;
    v107 = sub_1CEFD11AC(v88);
    v109 = v108;
    sub_1CEFD0A98(v88);
    sub_1CEFD0A98(v88);
    v110 = sub_1CEFD0DF0(v107, v109, &v149);

    *(v94 + 24) = v110;
    *(v94 + 32) = 2048;
    *(v94 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v92, v93, "Lookup itemID %s with behavior %s request %s iteration %ld", v94, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v95, -1, -1);
    MEMORY[0x1D386CDC0](v94, -1, -1);

    v104 = v142;
  }

  else
  {
    sub_1CEFD0A98(v80);
    sub_1CEFD0A98(v80);

    v104 = v91;
  }

  v136(v104, v144);
  swift_beginAccess();
  v111 = *(v85 + 32);
  v112 = *(v85 + 40);
  if (*(v85 + 41))
  {
    v113 = qword_1EDEA34B0;
    v114 = v111;
    if (v113 != -1)
    {
      swift_once();
    }

    v115 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v117 = v116;
    if (v115 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v117 == v118)
    {

      sub_1CEFD0994(v111, v112, 1);
LABEL_27:
      sub_1CF90CAC8(v88, sub_1CF796A0C, v135);
      v119 = v137;
      goto LABEL_33;
    }

    v120 = sub_1CF9E8048();

    sub_1CEFD0994(v111, v112, 1);
    if (v120)
    {
      goto LABEL_27;
    }
  }

  else if (!v111 && v112 == 2)
  {
    goto LABEL_27;
  }

  if (v131 == 30)
  {
    v121 = *((v88 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v122 = v121;
  }

  else
  {
    v123 = swift_allocObject();
    *(v123 + 16) = v88;
    v122 = v123 | 0x7000000000000004;
    v121 = v88;
  }

  sub_1CEFD09A0(v121);
  v124 = swift_allocObject();
  v125 = v135;
  *(v124 + 16) = sub_1CF796A0C;
  *(v124 + 24) = v125;
  v126 = v147;
  *(v124 + 32) = v147;
  *(v124 + 40) = 1;
  *(v124 + 48) = v88;
  *(v124 + 56) = v85;
  *(v124 + 64) = 0;
  v119 = v137;
  *(v124 + 72) = v137;
  *(v124 + 80) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v85;
  *(v127 + 24) = v126;
  *(v127 + 32) = 0;
  *(v127 + 40) = sub_1CF796A90;
  *(v127 + 48) = v124;
  *(v127 + 56) = v122;
  v128 = swift_allocObject();
  *(v128 + 16) = sub_1CF796A90;
  *(v128 + 24) = v124;
  swift_retain_n();

  sub_1CEFD09A0(v88);

  v129 = v119;
  sub_1CEFD09A0(v122);
  sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v128, sub_1CF796A9C, v127);

  sub_1CEFD0A98(v122);
LABEL_33:

  sub_1CEFD0A98(v88);

  return sub_1CEFCCC44(v146, qword_1EC4C1588, &unk_1CFA0A260);
}

void sub_1CF8F4EC0(void (**a1)(void, void, void), void *a2, void *a3, void (**a4)(void, void, void))
{
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *(v15 + 16);
    v40 = Strong;
    v20(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v14);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = a2;
    v39 = a3;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v41 = a4;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = v18;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v15 + 32))(&v27[v21], v17, v14);
    v28 = &v27[v22];
    *v28 = sub_1CF326F78;
    v28[1] = v25;
    v29 = v40;
    *&v27[v23] = v40;
    v31 = v38;
    v30 = v39;
    *&v27[v24] = v39;
    a4 = v41;
    *&v27[v26] = v31;
    swift_retain_n();
    _Block_copy(a4);

    _Block_copy(a4);
    v32 = v29;
    v33 = v30;
    v34 = v31;
    sub_1CF8EE40C("trashItem(at:request:completionHandler:)", 40, 2, sub_1CF9032A0, v27, v33, a4);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    _Block_copy(a4);
    _Block_copy(a4);
    v35 = sub_1CF8403B4();
    sub_1CEFCCBDC(v13, v10, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_1CF9E5928();
      (*(v15 + 8))(v10, v14);
    }

    v37 = sub_1CF9E57E8();
    (a4)[2](a4, v36, v37);

    sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  _Block_release(a4);
}

uint64_t sub_1CF8F5280(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if ((a2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(FPGSStorageManager) init];
    v4 = sub_1CF9E5928();
    *&v21[0] = 0;
    v5 = [v3 permanentStorageForItemAtURL:v4 allocateIfNone:0 error:v21];

    if (v5)
    {
      v6 = *MEMORY[0x1E69A0798];
      v7 = *&v21[0];
      v8 = [v5 enumeratorForAdditionsInNameSpace:v6 withOptions:0 withoutOptions:0 ordering:0];
      v16 = v2;
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          if ([v9 nextObject])
          {
            sub_1CF9E7728();
            swift_unknownObjectRelease();
          }

          else
          {
            v17 = 0u;
            v18 = 0u;
          }

          v19 = v17;
          v20 = v18;
          if (!*(&v18 + 1))
          {
            break;
          }

          sub_1CEFE9EB8(&v19, v21);
          sub_1CEFD1104(v21, &v19);
          sub_1CEFD57E0(0, &qword_1EC4C4FE0, 0x1E69A07B0);
          if (swift_dynamicCast())
          {
            v10 = v17;
            MEMORY[0x1D3868FA0]();
            if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v11 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1CF9E6D88();
            }

            sub_1CF9E6DE8();

            __swift_destroy_boxed_opaque_existential_1(v21);
            v2 = v16;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v21);
          }
        }
      }

      else
      {

        v19 = 0u;
        v20 = 0u;
      }

      sub_1CEFCCC44(&v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    else
    {
      v12 = *&v21[0];
      v13 = sub_1CF9E57F8();

      swift_willThrow();
      v2 = MEMORY[0x1E69E7CC0];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1CF8F5530(void *a1, void *a2, void (**a3)(const void *, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v35 = a3;
  _Block_copy(a3);
  v7 = a1;
  v8 = sub_1CF94C0CC(a1);
  v9 = sub_1CF9E57E8();
  v10 = [v9 userInfo];

  v11 = sub_1CF9E6638();
  if (*(v11 + 16) && (v12 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA5C3B0), (v13 & 1) != 0))
  {
    sub_1CEFD1104(*(v11 + 56) + 32 * v12, v38);

    if (swift_dynamicCast())
    {
      v14 = v37;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  v15 = sub_1CF9E57E8();
  v16 = [v15 userInfo];

  v17 = sub_1CF9E6638();
  v18 = *MEMORY[0x1E6967180];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (*(v17 + 16))
  {
    v21 = v8;
    v22 = a2;
    v23 = sub_1CEFE4328(v19, v20);
    v25 = v24;

    if (v25)
    {
      sub_1CEFD1104(*(v17 + 56) + 32 * v23, v38);

      v26 = swift_dynamicCast();
      if (v26)
      {
        v27 = v36;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v37;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {

      v27 = 0;
      v28 = 0;
    }

    a2 = v22;
    v8 = v21;
    if (v21)
    {
LABEL_20:
      if (!v14)
      {
        v30 = 0;
        goto LABEL_23;
      }

LABEL_21:
      v29 = sub_1CF9E6888();

      v30 = sub_1CEFD4E9C(v29);

LABEL_23:
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1CF067718;
      *(v31 + 24) = v6;
      *(v31 + 32) = a2;
      *(v31 + 40) = v8;
      *(v31 + 48) = v27;
      *(v31 + 56) = v28;
      *(v31 + 64) = v30;
      *(v31 + 72) = a1;
      v32 = a1;

      v33 = a2;
      sub_1CEFD4024("signalErrorResolved(_:completionHandler:)", 41, 2, nullsub_1, 0, sub_1CF903290, v31);
    }
  }

  else
  {

    v27 = 0;
    v28 = 0;
    if (v8)
    {
      goto LABEL_20;
    }
  }

  if (v14)
  {
    goto LABEL_21;
  }

  v35[2](v35, 0);
}

uint64_t sub_1CF8F58BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_1CEFE4328(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_1CF7CF818();
      }
    }

    else
    {
      v31 = v50;
      sub_1CF7C3E7C(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_1CEFE4328(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1CEFCB59C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF8F5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(sub_1CF9E5248() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_1CF9E5268();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = sub_1CF9E6118();
  *(v6 + 88) = v11;
  v12 = *(v11 - 8);
  *(v6 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8F5C98, 0, 0);
}

uint64_t sub_1CF8F5C98()
{
  v1 = [*(v0 + 16) provider];
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = [v1 descriptor];
    v5 = [v4 localizedName];

    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v8 = v7;

    v9 = [v3 providerDomainID];
    type metadata accessor for FPFeedbackUIManager();
    v10 = swift_allocObject();
    *(v0 + 120) = v10;
    v10[2] = v6;
    v10[3] = v8;
    v10[4] = v9;
    v11 = sub_1CF9E57E8();
    *(v0 + 128) = v11;
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *v12 = v0;
    v12[1] = sub_1CF8F5FC0;
    v13 = *(v0 + 152);
    v14 = *(v0 + 48);
    v16 = *(v0 + 24);
    v15 = *(v0 + 32);

    return sub_1CF36F790(v16, v15, v11, v14, v13, 0);
  }

  else
  {
    v18 = *(v0 + 104);
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "No provider for domain in launchFeedback", v22, 2u);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    v29 = *(v0 + 56);

    (*(v24 + 8))(v23, v25);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v28 + 8))(v26, v27);
    swift_willThrow();
    v30 = *(v0 + 104);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1CF8F5FC0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1CF8F6180;
  }

  else
  {
    v4 = sub_1CF8F60EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CF8F60EC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CF8F6180()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

void sub_1CF8F6288()
{
  sub_1CF8F687C(319, qword_1EDEA5D18, type metadata accessor for FPDDomainFPFSBackend.PendingSetState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1CF8F687C(319, &qword_1EDEAFE20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1CF8F6D08(319, &qword_1EDEAEE00, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1CF8F687C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CF8F68F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF8F693C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_18FileProviderDaemon20FPDDomainFPFSBackendC11StartStatusO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1CF8F69A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF8F6A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1CF8F6A54(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1CF8F6AA4()
{
  sub_1CF9E5D98();
  if (v0 <= 0x3F)
  {
    sub_1CF9E5CF8();
    if (v1 <= 0x3F)
    {
      sub_1CF8F687C(319, &qword_1EDEAFE00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1CF8F6C3C();
        if (v3 <= 0x3F)
        {
          sub_1CF8F687C(319, &qword_1EDEA3768, type metadata accessor for NSFileProviderItemIdentifier, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1CF8F6CA0();
            if (v5 <= 0x3F)
            {
              sub_1CF8F6D08(319, &unk_1EDEAED90, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CF8F6C3C()
{
  if (!qword_1EDEA37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
    v0 = sub_1CF9E6E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA37C8);
    }
  }
}

void sub_1CF8F6CA0()
{
  if (!qword_1EDEAB570)
  {
    sub_1CEFD57E0(255, &qword_1EDEAB580, 0x1E69674E0);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAB570);
    }
  }
}

void sub_1CF8F6D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CF8F6DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v16 + v17, v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
    v18 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v19 = sub_1CF9E57E8();
    (*(a2 + 16))(a2, 0, v19);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v9 + 16))(v12, v15, v8);
    v20 = sub_1CF02BFF8(v12, 0);
    (*(a2 + 16))(a2, v20, 0);

    (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_1CF8F70FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D6EA8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1CF8F71D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CF0264D8;

  return sub_1CF8DC5D4(v2, v3, v5);
}

uint64_t sub_1CF8F7298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CF0264D8;

  return sub_1CF8DC6BC(a1, v4, v5, v7);
}

uint64_t sub_1CF8F7364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CF0264D8;

  return sub_1CF025B7C(a1, v5);
}

uint64_t objectdestroy_700Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_689Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1CEFE4714(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_679Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_643Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF8F76D0(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1CF8CBCB0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1CF8F7758(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8C5180(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t sub_1CF8F780C(void *a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C0C4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_499Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t objectdestroy_478Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_460Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v6);

  v9 = *(v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF8F7B6C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = (v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];

  sub_1CF8B44F4(a1, v1 + v4, v10, v11, v12, v13, v17, v18, v14, v15);
}

uint64_t objectdestroy_457Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_451Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

void sub_1CF8F7E10(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_1CF8AEEB0(a1, v1 + v4, v9, v10, v8);
}

uint64_t objectdestroy_448Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF8F7F94(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v5);
  v9 = *(v1 + v6);
  v10 = *v8;
  v11 = v8[1];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8ADBFC(a1, v1 + v4, v10, v11, v9, v12, v13);
}

uint64_t objectdestroy_403Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_362Tm()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_351Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_340Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_330Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_224Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_209Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_215Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF8F841C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = 0;
  v6 = 0;
  return v2(a1, &v6, &v5);
}

uint64_t objectdestroy_147Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_140Tm_0()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF8F85EC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1CF863A10(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1CF8F869C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CF0264D8;

  return sub_1CF863384(v2, v3, v4);
}

uint64_t objectdestroy_102Tm_0()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF8F884C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_1CF8575D4(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t objectdestroy_84Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_70Tm()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_41Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF8F89F4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

unint64_t sub_1CF8F8A20(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t objectdestroy_1840Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  if (!(*(*(v5 - 1) + 48))(v0 + v2, 1, v5))
  {
    v16 = v3;
    v6 = sub_1CF9E5D98();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = v5[5];
    v8 = sub_1CF9E5CF8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 8);
    v10(v4 + v7, v8);
    v11 = v5[6];
    if (!(*(v9 + 48))(v4 + v11, 1, v8))
    {
      v10(v4 + v11, v8);
    }

    v12 = *(v4 + v5[7]);

    v13 = *(v4 + v5[8]);

    v14 = *(v4 + v5[9]);

    v10(v4 + v5[13], v8);
    v3 = v16;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF8F8D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF810E34(a1, v4, v5, v6);
}

uint64_t sub_1CF8F8DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF811050(a1, v4, v5, v6);
}

uint64_t sub_1CF8F8F14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF7FBE94(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1CF8F8F44()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF7F0FF8(v3, (v0 + 24), v0 + v2, v4);
}

void *sub_1CF8F9070@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void *sub_1CF8F90B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

void sub_1CF8F9304(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF35BCF4(v3, v1, v2);
}

uint64_t sub_1CF8F9348(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1CF8126C8(a1, *(v1 + 16));
}

uint64_t sub_1CF8F9370(uint64_t a1)
{
  v3 = *(type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF86F980(a1, v5, v6, v1 + v4, v8, v7);
}

uint64_t sub_1CF8F9414(uint64_t a1)
{
  v3 = *(type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF86FB6C(*(v1 + 24), a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF8F9524(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}

unint64_t sub_1CF8F95C4()
{
  result = qword_1EC4C4E90;
  if (!qword_1EC4C4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4E90);
  }

  return result;
}

uint64_t sub_1CF8F9640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 64);
  v9 = *(a1 + 96);
  v17 = *(a1 + 80);
  v8 = v17;
  v18 = v9;
  v19 = *(a1 + 112);
  v10 = v19;
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v7;
  *a5 = v16[0];
  *(a5 + 16) = v11;
  *(a5 + 32) = v12;
  *(a5 + 48) = v13;
  *(a5 + 64) = v7;
  *(a5 + 80) = v8;
  *(a5 + 96) = v9;
  *(a5 + 112) = v10;
  sub_1CEFCCBDC(v16, v15, a2, a3);
  return a4(a5, 0x16180000D034200);
}

void *sub_1CF8F96E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1CF8E3AB0(a1, *(v2 + 16), a2);
}

uint64_t sub_1CF8F9704(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8377D0(a1, v1 + v4, v5);
}

void sub_1CF8F97A0()
{
  if (*(v0 + 16))
  {
    sub_1CF6C0474();
  }
}

uint64_t objectdestroy_28Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF8F9824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF835EFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F98EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0264D8;

  return sub_1CF881F8C(a1, v4, v5, v6);
}

unint64_t sub_1CF8F99A0(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_1CF8F99BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_1CF8F99E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[0] = 0;
  v5[1] = 0;
  return v2(v5, a1);
}

uint64_t sub_1CF8F9A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF805EF4(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF8F9ACC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 72);
  result = sub_1CF742688(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF8F9B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CF8F9B78()
{
  result = qword_1EC4C4F10;
  if (!qword_1EC4C4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C4F10);
  }

  return result;
}

uint64_t sub_1CF8F9BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF8D7818(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF8F9CC0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v13 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48) | (*(v1 + 49) << 8);
  v8 = *(v1 + 56);
  v9 = *(v1 + 584);
  v10 = *(v1 + 592);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CF0262EC;

  return sub_1CF8D5CC0(a1, v13, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_1CF8F9E0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1CF8F9E94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

void sub_1CF8F9F6C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1CF9E5A58() - 8);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = v1 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80));

  sub_1CF84F278(a1, v1 + v4, v10, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_2359Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v44 = *(v2 - 8);
  v45 = v2;
  v39 = *(v44 + 80);
  v43 = *(v44 + 64);
  v3 = *(v0 + 16);

  v41 = (v42 + 24) & ~v42;
  v4 = v0 + v41;
  v5 = *(v0 + v41 + 40);

  v6 = v0 + v41 + v1[7];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = *(v6 + v7[31]);

  v15 = *(v6 + v7[33]);

  v16 = (v6 + v7[34]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1CEFE4714(*v16, v17);
  }

  v18 = *(v6 + v7[38] + 8);

  v19 = v4 + v1[8];
  v20 = *(v19 + 16);
  if (v20 != 1)
  {

    v21 = *(v19 + 48);

    v22 = *(v19 + 64);

    v23 = *(v19 + 88);

    v24 = *(v19 + 120);

    v25 = *(v19 + 136);

    v26 = *(v19 + 152);

    v27 = *(v19 + 168);

    v28 = *(v19 + 184);

    if (*(v19 + 192))
    {

      v29 = *(v19 + 200);
    }

    v30 = *(v19 + 224);

    v31 = *(v19 + 240);
  }

  v32 = v1[12];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v33 - 8) + 48))(v4 + v32, 1, v33) && !(*(v44 + 48))(v4 + v32, 1, v45))
  {
    (*(v44 + 8))(v4 + v32, v45);
  }

  v34 = (v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + v34));

  v37 = *(v0 + v36 + 8);

  (*(v44 + 8))(v0 + ((v39 + v36 + 16) & ~v39), v45);

  return swift_deallocObject();
}

uint64_t sub_1CF8FA488(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void, void, void, unint64_t))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1CF9E5A58() - 8);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((*(v9 + 80) + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v9 + 80)));
}

uint64_t objectdestroy_2265Tm()
{
  v1 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF8FA5EC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1CF8CBF28(a1, v4, v5, v6, v9, v7, v8, v10);
}

uint64_t sub_1CF8FA66C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6[0] = 0;
  v6[1] = 0;
  v5 = 0;
  return v2(v6, &v5, a1);
}

uint64_t sub_1CF8FA6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8 = a3;
  return v5(v9, &v8, a4);
}

uint64_t sub_1CF8FA714(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0, 0, a1);
}

uint64_t sub_1CF8FA7D4(void *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, a1[1], *a2, a3);
}

uint64_t sub_1CF8FA810(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8CD304(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, *(v1 + v9), *(v1 + v9 + 8));
}

void sub_1CF8FA950(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8CE080(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), v1 + v10, *(v1 + v11), *(v1 + v11 + 8));
}

uint64_t sub_1CF8FAAB0(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, void *a8)
{
  v17 = *(type metadata accessor for StagedRemoteVersion(0) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8CF150(a1, a2, a3, a4, a5, a6, a7, a8, v8 + v18, *(v8 + v19), *(v8 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v8 + ((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FABC0(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 16) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8CF9B0(a1, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), v1 + v8, *(v1 + v9), *(v1 + v10), v1 + v12, *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF8FAD64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 48);
  v7 = *(v1 + 32);
  v6 = v4;
  return v3(&v7, &v6, a1);
}

uint64_t objectdestroy_640Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF8FAE94(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8C53A0(a1, v5, v6, v7, v8, v1 + v4, v9);
}

void sub_1CF8FAF38(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C56BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF8FAFF8()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 584) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C8968(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + 64, v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB0B8(char *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C5EE8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FB178(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C6C78(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB254(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C701C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB3B0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 568) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C961C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + 48, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FB498(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8CA160(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_2605Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF8FB658()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 32);

  return sub_1CF28BD04(v3, v4, v8, v5, v6, v0 + v2, v7);
}

uint64_t objectdestroy_2268Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v5));

  return swift_deallocObject();
}

uint64_t sub_1CF8FB838(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF84DB6C(a1, v6, v7, v1 + v4, v9, v10, v11);
}

uint64_t objectdestroy_637Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  sub_1CEFD0A98(*(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF8FB9F0(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C0EA8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FBAB0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8C11F8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FBB8C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8C34E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FBC7C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF80B204(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 9), *(v1 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_1829Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_1CF8FBDD0(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF80BB68(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 9), *(v1 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_2809Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1CEFD0A98(*(v0 + 56));
  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t objectdestroy_2816Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF8FC124()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + 32);

  return sub_1CF289008(v3, v4, v10, v5, v6, v0 + v2, v8, v9);
}

uint64_t objectdestroy_3051Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_3088Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1CF8FC3E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = [*(a1 + 48) getAlternateContentsURLWrapperForItemID_];
  v3();
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF8FC49C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  [*(a1 + 48) setAlternateContentsURLWrapper:v2 forDocumentWithItemID:v3];
  return v5(v3, 0);
}

uint64_t objectdestroy_3211Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t objectdestroy_3285Tm()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1CF8FC8B8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v5 = *(v1 + 16);
  sub_1CF5AD9F8(v4, v2, v3);
}

unint64_t sub_1CF8FC9C0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1CEFD0A98(result);
  }

  return result;
}

uint64_t objectdestroy_3371Tm()
{
  v1 = *(v0 + 16);

  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_3282Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1CEFD0A98(v0[6]);

  return swift_deallocObject();
}

uint64_t sub_1CF8FCB08(int a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CF75C09C(a1, a2);
}

void sub_1CF8FCB1C(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_1CF81C408(a1, v4);
}

void sub_1CF8FCBBC(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1CF8B9438(a1, a2 & 1, *(v2 + 16));
}

uint64_t objectdestroy_875Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  return swift_deallocObject();
}

void sub_1CF8FCD38(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8B496C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), (v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_2496Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1CF8FCF24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = 0;
  v6 = 0;
  return v2(&v6, &v5, a1);
}

uint64_t sub_1CF8FCF78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1CF8FCFB8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, MEMORY[0x1E69E7CC0], a1);
}

void sub_1CF8FCFF0(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1CF8B2048(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), (v1 + v8), *v9, *(v9 + 8));
}

void sub_1CF8FD168(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8B36B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FD23C(void *a1, char a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));
  v10 = *(v9 + *(v5 + 64));

  sub_1CF8B12B4(a1, a2 & 1, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_3621Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF8FD3B4(unint64_t a1, void *a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));
  v10 = *(v9 + *(v5 + 64));

  sub_1CF8B1504(a1, a2, v6, v7, v8, v9, v10);
}

id sub_1CF8FD45C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[2];
  result = sub_1CF8B0088(*a1, v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_1CF8FD4A4(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v7 = v4;
  return v3(&v7, &v6, a1);
}

uint64_t sub_1CF8FD4EC(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  return sub_1CF8AFD10(a1, (v1 + v4), v1 + v7, v10, *(v1 + v9), *v11);
}

uint64_t sub_1CF8FD604(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_1CF8AE234(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_3743Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t objectdestroy_435Tm()
{
  sub_1CEFD0A98(*(v0 + 32));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

ssize_t sub_1CF8FD974@<X0>(ssize_t *a1@<X8>)
{
  result = fgetxattr(*(v1 + 16), "com.apple.fileprovider.trash-put-back#PN", 0, 0, 0, 0);
  *a1 = result;
  return result;
}

ssize_t sub_1CF8FD9D8@<X0>(ssize_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32) - v3;
  if (v3)
  {
    v5 = *(v1 + 32) - v3;
  }

  else
  {
    v5 = 0;
  }

  result = fgetxattr(*(v1 + 16), "com.apple.fileprovider.trash-put-back#PN", v3, v5, 0, 0);
  *a1 = result;
  return result;
}

void sub_1CF8FDA2C(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1CF8FDA7C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

uint64_t sub_1CF8FDABC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BD7D0(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t objectdestroy_3812Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_3816Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (((v44 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 24);

  v6 = v4 + v1[12];
  v7 = type metadata accessor for ItemMetadata();
  v8 = v7[7];
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v7[8], v9);
  v12 = *(v6 + v7[14] + 8);

  v13 = v7[30];
  if (!(*(v10 + 48))(v6 + v13, 1, v9))
  {
    v11(v6 + v13, v9);
  }

  v14 = (((v45 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v6 + v7[31]);

  v16 = *(v6 + v7[33]);

  v17 = (v6 + v7[34]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1CEFE4714(*v17, v18);
  }

  v19 = *(v6 + v7[38] + 8);

  v20 = *(v0 + v3);

  v21 = *(v0 + v42);

  v22 = *(v0 + v43 + 8);

  v23 = *(v0 + v44 + 32);

  v24 = *(v0 + v44 + 64);

  v25 = *(v0 + v44 + 72);

  v26 = *(v0 + v44 + 88);

  v27 = *(v0 + v45);

  v28 = v0 + v14;
  v29 = *(v0 + v14 + 16);
  if (v29 != 1)
  {

    v30 = *(v28 + 48);

    v31 = *(v28 + 64);

    v32 = *(v28 + 88);

    v33 = *(v28 + 120);

    v34 = *(v28 + 136);

    v35 = *(v28 + 152);

    v36 = *(v28 + 168);

    v37 = *(v28 + 184);

    if (*(v28 + 192))
    {

      v38 = *(v28 + 200);
    }

    v39 = *(v28 + 224);

    v40 = *(v28 + 240);
  }

  return swift_deallocObject();
}

id sub_1CF8FDE38(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_521Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 40);

  return swift_deallocObject();
}

uint64_t sub_1CF8FDECC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1CF89C600(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *v3, v3[1]);
}

uint64_t sub_1CF8FDFB8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BDEE4(a1, *(v1 + 16), *(v1 + 24));
}

void sub_1CF8FDFDC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v1 + 80);
  sub_1CF896D34(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v0 + ((v2 + 96) & ~v2), v0 + ((*(v1 + 64) + v2 + ((v2 + 96) & ~v2)) & ~v2));
}

uint64_t sub_1CF8FE0B0(uint64_t (*a1)(void, void, void, void, void, void, char *, char *, void, void, void))
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  return a1(*(v1 + 2), *(v1 + 3), *(v1 + 4), *(v1 + 5), *(v1 + 6), *(v1 + 7), &v1[v5], &v1[v7], *&v1[(v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8], *&v1[(((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v1[((((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8]);
}

uint64_t objectdestroy_4054Tm()
{
  v1 = v0[3];

  sub_1CEFD0A98(v0[4]);
  v2 = v0[5];

  return swift_deallocObject();
}

void sub_1CF8FE238()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1CF8247B4(v2, v3, v4, v5);
}

uint64_t sub_1CF8FE2A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1CF8253D0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1CF8FE39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CF0264D8;

  return sub_1CF025C74(a1, v4, v5, v6, v1 + 5, v7, v8, v9);
}

uint64_t sub_1CF8FE49C(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF7D8E9C(a1, a2 & 1, v6, v7, v8);
}

uint64_t objectdestroy_854Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF8FE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_1CF8914D8(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t objectdestroy_2310Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1CEFD0A98(v0[4]);
  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t objectdestroy_2936Tm()
{
  sub_1CEFD0A98(v0[4]);
  v1 = v0[5];

  v2 = v0[7];

  return swift_deallocObject();
}

uint64_t objectdestroy_387Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));
  sub_1CEFD0A98(*(v1 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF8FE800()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1CF2A7478(v0 + v2, v4);
}

uint64_t sub_1CF8FE974(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a2(a1, *(v2 + 16), v2 + v6, *v7, v7[1]);
}

uint64_t sub_1CF8FEA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3181Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_4702Tm()
{
  sub_1CF8F99BC(*(v0 + 24));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF8FED0C()
{
  result = *(*(v0 + 16) + 16);
  if ((*(result + qword_1EDEBBE10) & 1) == 0)
  {
    v4 = v0 + 24;
    v3 = *(v0 + 24);
    v2 = *(v4 + 8);
    *(result + qword_1EDEBBE10) = 1;
    return sub_1CF8306AC(result, v2);
  }

  return result;
}

void sub_1CF8FEE44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF87D638(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v2, *(v0 + v4) | (*(v0 + v4 + 4) << 32), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 9), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 9), *(v0 + v6 + 10), *(v0 + ((v5 + 35) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 35) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_597Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF8FEFD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1CF4FC678(*(v0 + 16));
}

uint64_t sub_1CF8FF064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CF8FF0CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF806838(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), sub_1CF3C81F4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF8FF13C@<X0>(uint64_t (*a1)(void, void, void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF8FF198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF806838(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), sub_1CF3C7FA4);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1CF8FF208(void *a1@<X8>)
{
  v4 = *(v1 + 72);
  sub_1CF742834(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = v5;
  }
}

void *sub_1CF8FF248()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1CF74238C(*(v0 + 16), *(v0 + 24));
}

uint64_t objectdestroy_842Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF8FF29C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CF8FF2D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1CF8FF314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1CF4E43E0(MEMORY[0x1E69E7CC0]);
  v4(v5, a1);
}

void sub_1CF8FF464(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF87563C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF8FF5AC(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8750A0(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_4994Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v40 = (v41 + 24) & ~v41;
  v3 = v0 + v40;
  v4 = *(v0 + v40 + 40);

  v5 = v0 + v40 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v35 + 8);

  sub_1CEFD0A98(*(v0 + v36));

  return swift_deallocObject();
}

uint64_t sub_1CF8FF9E0(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF80E7B0(a1, *(v1 + 16), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF8FFA94(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF8771F4(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_5037Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v38 = (v39 + 24) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1CF8FFF30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, 0, a1, 0.0);
}

uint64_t objectdestroy_180Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1CF900054()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_1CF8403B4();
  v2(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, v4);
}

uint64_t sub_1CF900104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a3;
  v8 = a2;
  return v4(a1, &v8, &v7);
}

uint64_t objectdestroy_162Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF90019C(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v7 = v4;
  return v3(a1, &v7, &v6);
}

uint64_t objectdestroy_4184Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1CEFD0A98(v0[5]);

  return swift_deallocObject();
}

uint64_t sub_1CF900244(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF86721C(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF9002F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = 0;
  return v2(&v5, a1);
}

uint64_t sub_1CF900354(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BDC94(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1CF900360@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_fget_parent_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF900398@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_fget_syncroot();
  *a1 = result;
  return result;
}

uint64_t sub_1CF9003D8(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1CF862764(a1, v1 + v4, v7, v8, v9);
}

uint64_t objectdestroy_815Tm(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[3]);
  v4 = v1[5];

  return swift_deallocObject();
}

uint64_t sub_1CF900518(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF860BD8(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t objectdestroy_3607Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1CF900634(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF85B210(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF9006E8@<X0>(_DWORD *a1@<X8>)
{
  if (*(v1 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v1 + 40);
  if (*(v1 + 42))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1CF9CAD3C(*(v1 + 16), *(v1 + 24), *(v1 + 32), v4 | v5, *(v1 + 44), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  *a1 = result;
  return result;
}

uint64_t objectdestroy_2836Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v7 = sub_1CF9E6098();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = *(v4 + *(v5 + 20));
  }

  v9 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF9008C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF808658(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_2839Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_1CEFD0A98(*(v0 + 16));
  v4 = v0 + v2;
  v5 = type metadata accessor for TelemetrySignpost(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    v6 = *(type metadata accessor for TelemetrySignposter(0) + 24);
    v7 = sub_1CF9E6098();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = *(v4 + *(v5 + 20));
  }

  v9 = (v2 + v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  v12 = *(v0 + v9);

  v13 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  v14 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF900B28(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF8089EC(a1, *(v1 + 16), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1CF900C5C(void *a1@<X8>)
{
  v4 = *(v1 + 72);
  sub_1CF7424E0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }
}

uint64_t sub_1CF900C9C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1CF74216C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1CF900CA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_99Tm_0()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF900DFC()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 17);

  sub_1CF85547C(v4, v0 + v2, v5, v7, v8, v9, v10);
}

uint64_t sub_1CF900ED0(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void))
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_4786Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF9010AC(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF85808C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1CF90114C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1CF855990(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_1CF901218@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

void sub_1CF90124C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF856A90(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1CF901308(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t sub_1CF901334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CF0262EC;

  return sub_1CF025C74(a1, v4, v5, v6, v1 + 5, v7, v8, v9);
}

uint64_t objectdestroy_5656Tm()
{
  v1 = *(v0 + 24);

  sub_1CEFD0A98(*(v0 + 32));
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_5687Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);

  v2 = *(v0 + 32);

  v40 = (v41 + 40) & ~v41;
  v3 = v0 + v40;
  v4 = *(v0 + v40 + 40);

  v5 = v0 + v40 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + v35));
  v37 = *(v0 + v36 + 8);

  return swift_deallocObject();
}

void sub_1CF901918(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for VFSItem(0) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF852BAC(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3);
}

uint64_t objectdestroy_4262Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1CEFD0A98(*(v0 + 48));
  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t objectdestroy_3279Tm()
{
  v1 = v0[2];

  sub_1CEFD0A98(v0[3]);
  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t objectdestroy_3269Tm(void (*a1)(void))
{
  v3 = v1[3];

  v4 = v1[4];

  a1(v1[5]);

  return swift_deallocObject();
}

uint64_t objectdestroy_3365Tm()
{
  v1 = v0[2];

  sub_1CEFD0A98(v0[3]);
  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t objectdestroy_230Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_5742Tm()
{
  v1 = *(v0 + 16);

  sub_1CEFD0A98(*(v0 + 32));
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1CF901D9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1CF901E74(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF8482C8(a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF901FB0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_1CF902000()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 48);
    sub_1CF746824(v1);
  }
}

id sub_1CF902038(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CF902088@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CF8035F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
  return result;
}

uint64_t objectdestroy_1306Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

void sub_1CF90218C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_1CF8070F8(v3, v0 + v2, v5);
}

uint64_t objectdestroy_5861Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1CF9022FC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1CF9023AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a3(a1, v3 + v6, v8, v9);
}

uint64_t objectdestroy_227Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_1653Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

void sub_1CF902604(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = (v1 + v4);
  v7 = *(a1 + 16);
  sub_1CF806CE8(v6, *v5, v5[1]);
}

uint64_t sub_1CF9026C4()
{
  result = type metadata accessor for VFSCounters(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DBCounters();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SnapshotCounters();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CF902760()
{
  result = qword_1EC4C5118;
  if (!qword_1EC4C5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5118);
  }

  return result;
}

unint64_t sub_1CF9027C8()
{
  result = qword_1EC4C5158;
  if (!qword_1EC4C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5158);
  }

  return result;
}

unint64_t sub_1CF902820()
{
  result = qword_1EC4C5160;
  if (!qword_1EC4C5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5160);
  }

  return result;
}

unint64_t sub_1CF902878()
{
  result = qword_1EC4C5168;
  if (!qword_1EC4C5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5168);
  }

  return result;
}

uint64_t sub_1CF9034D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FPFSMaterializedSetAnchor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5B88();
  v13 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v12);
      sub_1CEFE4714(v11, v12);
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v25 = HIDWORD(v11);
    v26 = v11;
    result = sub_1CEFE4714(v11, v12);
    if (!__OFSUB__(v25, v26))
    {
      if (v25 == v26)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if (v13 != 2)
  {
    v27 = v12;
    v28 = v11;

    sub_1CEFE4714(v28, v27);
    goto LABEL_14;
  }

  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  result = sub_1CEFE4714(v11, v12);
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v15 == v16)
  {
LABEL_12:

LABEL_14:
    v29 = sub_1CF9E5D98();
    result = (*(*(v29 - 8) + 32))(a3, a2, v29);
LABEL_15:
    *(a3 + *(v7 + 20)) = 0;
    return result;
  }

LABEL_8:
  v34 = a2;
  v18 = sub_1CF9E5688();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1CF9E5678();
  v21 = sub_1CF9E5B88();
  v23 = v22;
  sub_1CF9040B4(&qword_1EC4C5170, type metadata accessor for FPFSMaterializedSetAnchor);
  sub_1CF9E5668();
  if (v3)
  {
    v24 = sub_1CF9E5D98();
    (*(*(v24 - 8) + 8))(v34, v24);
    sub_1CEFE4714(v21, v23);
  }

  sub_1CEFE4714(v21, v23);
  v30 = sub_1CF9E5D98();
  sub_1CF9040B4(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
  v31 = v34;
  v32 = sub_1CF9E6868();

  if ((v32 & 1) == 0)
  {
    sub_1CF903868(v10);
    result = (*(*(v30 - 8) + 32))(a3, v31, v30);
    goto LABEL_15;
  }

  (*(*(v30 - 8) + 8))(v31, v30);
  return sub_1CF9038C4(v10, a3);
}

uint64_t type metadata accessor for FPFSMaterializedSetAnchor()
{
  result = qword_1EC4C5178;
  if (!qword_1EC4C5178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF903868(uint64_t a1)
{
  v2 = type metadata accessor for FPFSMaterializedSetAnchor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF9038C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSMaterializedSetAnchor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF903950()
{
  result = sub_1CF9E5D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF9039C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5188, &qword_1CFA187C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF904060();
  sub_1CF9E82A8();
  v13[15] = 0;
  sub_1CF9E5D98();
  sub_1CF9040B4(&qword_1EDEAECC8, MEMORY[0x1E69695A8]);
  sub_1CF9E7F08();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FPFSMaterializedSetAnchor() + 20));
    v13[14] = 1;
    sub_1CF9E7EE8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF903B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1CF9E5D98();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5198, &qword_1CFA187C8);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for FPFSMaterializedSetAnchor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF904060();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_1CF9040B4(&qword_1EDEAECB8, MEMORY[0x1E69695A8]);
  v16 = v24;
  sub_1CF9E7D88();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = sub_1CF9E7D78();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18;
  sub_1CF9040FC(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF903868(v17);
}

uint64_t sub_1CF903EB8()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x444955556264;
  }
}

uint64_t sub_1CF903EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444955556264 && a2 == 0xE600000000000000;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

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

uint64_t sub_1CF903FB8(uint64_t a1)
{
  v2 = sub_1CF904060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF903FF4(uint64_t a1)
{
  v2 = sub_1CF904060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF904060()
{
  result = qword_1EC4C5190;
  if (!qword_1EC4C5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C5190);
  }

  return result;
}

uint64_t sub_1CF9040B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF9040FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFSMaterializedSetAnchor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CF904174()
{
  result = qword_1EC4C51A0;
  if (!qword_1EC4C51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51A0);
  }

  return result;
}

unint64_t sub_1CF9041CC()
{
  result = qword_1EC4C51A8;
  if (!qword_1EC4C51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51A8);
  }

  return result;
}

unint64_t sub_1CF904224()
{
  result = qword_1EC4C51B0;
  if (!qword_1EC4C51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C51B0);
  }

  return result;
}

uint64_t sub_1CF9042D0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = a2(a1);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 date];

    sub_1CF9E5CB8();
    (*(v7 + 56))(v20, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v20, 1, 1, v6);
  }

  sub_1CEFCCBDC(v20, v18, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v7 + 48))(v18, 1, v6) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF9E5CE8();
    v11 = v13;
    sub_1CF9E5C98();
    v25 = v24;
    v26 = *(v7 + 8);
    v7 += 8;
    result = v26(v13, v6);
    v28 = v25 * 1000000000.0;
    if (COERCE__INT64(fabs(v25 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v28 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v28 < 9.22337204e18)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  (*(v7 + 32))(v13, v18, v6);
  (*(v7 + 16))(v11, v13, v6);
  sub_1CF9E5C98();
  v30 = v29;
  v31 = *(v7 + 8);
  v31(v11, v6);
  v31(v13, v6);
  result = sub_1CEFCCC44(v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v32 = v30 * 1000000000.0;
  if (COERCE__INT64(fabs(v30 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  result = a3(a1);
  if (v33)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF90467C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, void (*a5)(_OWORD *, id), uint64_t a6)
{
  v7 = v6;
  v101 = a5;
  v102 = a6;
  v96 = a4;
  v98 = a3;
  v99 = a1;
  v100 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v93 = *(v97 - 8);
  v8 = *(v93 + 64);
  v9 = MEMORY[0x1EEE9AC00](v97);
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v85 - v16;
  v17 = sub_1CF9E63D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v85 - v22;
  v23 = sub_1CF9E6448();
  v94 = *(v23 - 8);
  v95 = v23;
  v24 = *(v94 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v85 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v88 = &v85 - v10;
  v31 = sub_1CF9E64A8();
  v32 = *(v31 - 1);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v7 + 64);
  *v35 = v36;
  (*(v32 + 104))(v35, *MEMORY[0x1E69E8020], v31);
  v37 = v36;
  v38 = sub_1CF9E64D8();
  (*(v32 + 8))(v35, v31);
  if ((v38 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v7 + 152) == 1)
  {
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    v39 = FPDomainUnavailableError();
    v101(v103, v39);

    return sub_1CEFCCC44(v103, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v38 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!*(*(v7 + v38) + 16) || (sub_1CF7BF2C0(v99, v100), (v41 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v46 = *(v93 + 72);
    v47 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1CF9FA450;
    v49 = (v48 + v47);
    qos_class_self();
    sub_1CF9E63B8();
    v50 = *(v18 + 48);
    v51 = v50(v15, 1, v17);
    v86 = v38;
    if (v51 == 1)
    {
      (*(v18 + 104))(v92, *MEMORY[0x1E69E7FA0], v17);
      if (v50(v15, 1, v17) != 1)
      {
        sub_1CEFCCC44(v15, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v18 + 32))(v92, v15, v17);
    }

    sub_1CF9E6428();
    v52 = v97;
    v53 = *(v97 + 64);
    v54 = v95;
    v55 = *(v94 + 32);
    v56 = v91;
    v55(&v91[v53], v27, v95);
    v57 = v98;
    v58 = v96;
    *v49 = v98;
    v49[1] = v58;
    v55(v49 + *(v52 + 64), &v56[v53], v54);
    v59 = (v49 + *(v52 + 80));
    v60 = swift_allocObject();
    v61 = v102;
    *(v60 + 16) = v101;
    *(v60 + 24) = v61;
    *v59 = sub_1CF926640;
    v59[1] = v60;
    v38 = v86;
    swift_beginAccess();

    sub_1CEFD09A0(v57);
    v62 = *(v7 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v7 + v38);
    *(v7 + v38) = 0x8000000000000000;
    sub_1CF1D35F8(v48, v99, v100, isUniquelyReferenced_nonNull_native);
    v64 = v105;
    goto LABEL_26;
  }

  qos_class_self();
  v42 = v89;
  sub_1CF9E63B8();
  v43 = *(v18 + 48);
  if (v43(v42, 1, v17) == 1)
  {
    (*(v18 + 104))(v87, *MEMORY[0x1E69E7FA0], v17);
    v44 = v43(v42, 1, v17);
    v45 = v88;
    if (v44 != 1)
    {
      sub_1CEFCCC44(v42, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v18 + 32))(v87, v42, v17);
    v45 = v88;
  }

  sub_1CF9E6428();
  v65 = v97;
  v66 = *(v97 + 64);
  v67 = v95;
  v68 = *(v94 + 32);
  v15 = v90;
  v68(&v90[v66], v30, v95);
  v69 = v98;
  v70 = v96;
  *v45 = v98;
  *(v45 + 1) = v70;
  v68(&v45[*(v65 + 64)], &v15[v66], v67);
  v71 = &v45[*(v65 + 80)];
  v72 = swift_allocObject();
  v73 = v102;
  *(v72 + 16) = v101;
  *(v72 + 24) = v73;
  *v71 = sub_1CF9284B8;
  *(v71 + 1) = v72;
  swift_beginAccess();

  sub_1CEFD09A0(v69);
  v74 = *(v7 + v38);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v7 + v38);
  v31 = v105;
  *(v7 + v38) = 0x8000000000000000;
  v18 = sub_1CF7BF2C0(v99, v100);
  v77 = v31[2];
  v78 = (v76 & 1) == 0;
  v79 = v77 + v78;
  if (__OFADD__(v77, v78))
  {
    goto LABEL_28;
  }

  v80 = v76;
  v15 = v45;
  if (v31[3] >= v79)
  {
    if (v75)
    {
      if (v76)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1CF7D296C();
      if (v80)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1CF7CAB14(v79, v75);
  v81 = sub_1CF7BF2C0(v99, v100);
  if ((v80 & 1) == (v82 & 1))
  {
    v18 = v81;
    if ((v80 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_22:
    v31 = *(v105[7] + 8 * v18);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v84 = v31[2];
      v83 = v31[3];
      if (v84 >= v83 >> 1)
      {
        v31 = sub_1CF1F7C20(v83 > 1, v84 + 1, 1, v31);
      }

      v31[2] = v84 + 1;
      sub_1CEFE55D0(v15, v31 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v84, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v64 = v105;
      *(v105[7] + 8 * v18) = v31;
LABEL_26:
      *(v7 + v38) = v64;
      return swift_endAccess();
    }

LABEL_29:
    v31 = sub_1CF1F7C20(0, v31[2] + 1, 1, v31);
    goto LABEL_23;
  }

LABEL_32:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}