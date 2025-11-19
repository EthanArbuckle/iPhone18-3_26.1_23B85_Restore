unint64_t sub_1D1D04E50()
{
  result = qword_1EC64DA70;
  if (!qword_1EC64DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA70);
  }

  return result;
}

unint64_t sub_1D1D04EA8()
{
  result = qword_1EC64DA78;
  if (!qword_1EC64DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA78);
  }

  return result;
}

uint64_t sub_1D1D04EFC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_1D1E66A7C();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if ((v20 & 1) == 0)
    {
      a2 = 0;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 1;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  v346 = a4;
  v360 = a3;
  v344 = a2;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v348 - 8) + 64);
  MEMORY[0x1EEE9AC00](v348);
  v347 = &v341 - v7;
  v8 = type metadata accessor for MatterTilePath(0);
  v350 = *(v8 - 8);
  v9 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v349 = &v341 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = type metadata accessor for MatterStateSnapshot();
  v11 = *(*(v342 - 8) + 64);
  MEMORY[0x1EEE9AC00](v342);
  v355 = &v341 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v13 = *(*(v358 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v358 - 8);
  v345 = &v341 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v343 = &v341 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v357 = &v341 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v351 = &v341 - v20;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v21 = *(*(v367 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v367);
  v366 = &v341 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v365 = &v341 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v364 = &v341 - v26;
  v363 = type metadata accessor for StaticMediaProfile();
  v362 = *(v363 - 8);
  v27 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v363);
  v361 = &v341 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v29 = *(*(v383 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v383);
  v352 = &v341 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v370 = &v341 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v369 = &v341 - v34;
  v382 = type metadata accessor for StaticMediaSystem();
  v381 = *(v382 - 1);
  v35 = v381[8];
  MEMORY[0x1EEE9AC00](v382);
  v368 = &v341 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v37 = *(*(v380 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v380);
  v379 = (&v341 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x1EEE9AC00](v38);
  v378 = &v341 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v377 = &v341 - v42;
  v376 = type metadata accessor for StaticServiceGroup();
  v375 = *(v376 - 8);
  v43 = *(v375 + 8);
  MEMORY[0x1EEE9AC00](v376);
  v45 = &v341 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = *a1;
  v46 = type metadata accessor for StaticRoom(0);
  v353 = v46;
  v47 = *(v46 + 60);
  v354 = v4;
  v48 = *(v4 + v47);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    *&v392 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v49, 0);
    v51 = v392;
    v52 = v48 + 64;
    v53 = -1 << *(v48 + 32);
    v54 = sub_1D1E6869C();
    v55 = 0;
    v356 = v48 + 72;
    v374 = v45;
    v371 = v49;
    v372 = v48 + 64;
    v373 = v48;
    do
    {
      if (v54 < 0 || v54 >= 1 << *(v48 + 32))
      {
        goto LABEL_182;
      }

      if ((*(v52 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
      {
        goto LABEL_183;
      }

      v386 = 1 << v54;
      i = v54 >> 6;
      v57 = *(v48 + 36);
      v384 = v55;
      v385 = v57;
      v388 = v51;
      v58 = v380;
      v59 = *(v380 + 48);
      v60 = *(v48 + 48);
      v61 = sub_1D1E66A7C();
      v62 = *(v61 - 8);
      v63 = v377;
      (*(v62 + 16))(v377, v60 + *(v62 + 72) * v54, v61);
      sub_1D1D1D7E0(*(v48 + 56) + *(v375 + 9) * v54, &v63[v59], type metadata accessor for StaticServiceGroup);
      v64 = v378;
      (*(v62 + 32))(v378, v63, v61);
      v51 = v388;
      sub_1D1D26328(&v63[v59], v64 + *(v58 + 48), type metadata accessor for StaticServiceGroup);
      v65 = v379;
      sub_1D1741C08(v64, v379, &qword_1EC645458, &qword_1D1E799E8);
      v66 = *(v58 + 48);
      v67 = v374;
      sub_1D1D26328(v65 + v66, v374, type metadata accessor for StaticServiceGroup);
      sub_1D1741A30(v64, &qword_1EC645458, &qword_1D1E799E8);
      (*(v62 + 8))(v65, v61);
      *&v392 = v51;
      v69 = v51[2];
      v68 = v51[3];
      if (v69 >= v68 >> 1)
      {
        sub_1D178CF40((v68 > 1), v69 + 1, 1);
        v51 = v392;
      }

      v396 = v376;
      v397 = sub_1D1D1D848(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v395);
      sub_1D1D1D7E0(v67, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
      v51[2] = v69 + 1;
      sub_1D16EEE20(&v395, &v51[5 * v69 + 4]);
      v46 = sub_1D1D1D890(v67, type metadata accessor for StaticServiceGroup);
      v48 = v373;
      v56 = 1 << *(v373 + 32);
      if (v54 >= v56)
      {
        goto LABEL_184;
      }

      v52 = v372;
      v71 = *(v372 + 8 * i);
      if ((v71 & v386) == 0)
      {
        goto LABEL_185;
      }

      if (v385 != *(v373 + 36))
      {
        goto LABEL_186;
      }

      v72 = v71 & (-2 << (v54 & 0x3F));
      if (v72)
      {
        v56 = __clz(__rbit64(v72)) | v54 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v73 = i << 6;
        v74 = (i + 1);
        v75 = (v356 + 8 * i);
        while (v74 < (v56 + 63) >> 6)
        {
          v77 = *v75++;
          v76 = v77;
          v73 += 64;
          ++v74;
          if (v77)
          {
            v46 = sub_1D1716920(v54, v385, 0);
            v56 = __clz(__rbit64(v76)) + v73;
            goto LABEL_4;
          }
        }

        v46 = sub_1D1716920(v54, v385, 0);
      }

LABEL_4:
      v55 = v384 + 1;
      v54 = v56;
    }

    while (v384 + 1 != v371);
    v50 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v388 = v51;
  v78 = *(v354 + v353[13]);
  MEMORY[0x1EEE9AC00](v46);
  LODWORD(v376) = v346 & 1;
  *(&v341 - 16) = v346 & 1;
  *(&v341 - 1) = v79;
  v377 = v80;
  v48 = 0;
  v81 = sub_1D1D1DB10(sub_1D1D1D150, (&v341 - 4), v80, type metadata accessor for StaticMediaSystem, sub_1D188BF00, type metadata accessor for StaticMediaSystem, type metadata accessor for StaticMediaSystem);
  v375 = 0;
  v82 = *(v81 + 16);
  if (v82)
  {
    *&v392 = v50;
    sub_1D178CF40(0, v82, 0);
    v83 = v392;
    v84 = v81 + 64;
    v85 = -1 << *(v81 + 32);
    v86 = sub_1D1E6869C();
    v87 = 0;
    v88 = *(v81 + 36);
    v378 = (v81 + 72);
    v379 = v82;
    v384 = v81 + 64;
    v380 = v88;
    v385 = v81;
    do
    {
      if (v86 < 0 || v86 >= 1 << *(v81 + 32))
      {
        goto LABEL_187;
      }

      v48 = v86 >> 6;
      if ((*(v84 + 8 * (v86 >> 6)) & (1 << v86)) == 0)
      {
        goto LABEL_188;
      }

      if (v88 != *(v81 + 36))
      {
        goto LABEL_189;
      }

      v386 = v87;
      i = 1 << v86;
      v90 = v383;
      v91 = *(v383 + 48);
      v92 = *(v81 + 48);
      v93 = sub_1D1E66A7C();
      v94 = v83;
      v95 = *(v93 - 8);
      v96 = v369;
      (*(v95 + 16))(v369, v92 + *(v95 + 72) * v86, v93);
      sub_1D1D1D7E0(*(v81 + 56) + v381[9] * v86, &v96[v91], type metadata accessor for StaticMediaSystem);
      v97 = v370;
      (*(v95 + 32))(v370, v96, v93);
      v83 = v94;
      v98 = v368;
      v99 = *(v90 + 48);
      sub_1D1D26328(&v96[v91], v97 + v99, type metadata accessor for StaticMediaSystem);
      sub_1D1D1D7E0(v97 + v99, v98, type metadata accessor for StaticMediaSystem);
      sub_1D1741A30(v97, &qword_1EC645478, &qword_1D1E79A08);
      *&v392 = v83;
      v101 = v83[2];
      v100 = v83[3];
      if (v101 >= v100 >> 1)
      {
        sub_1D178CF40((v100 > 1), v101 + 1, 1);
        v83 = v392;
      }

      v396 = v382;
      v397 = sub_1D1D1D848(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem);
      v102 = __swift_allocate_boxed_opaque_existential_1(&v395);
      sub_1D1D1D7E0(v98, v102, type metadata accessor for StaticMediaSystem);
      v83[2] = v101 + 1;
      sub_1D16EEE20(&v395, &v83[5 * v101 + 4]);
      sub_1D1D1D890(v98, type metadata accessor for StaticMediaSystem);
      v81 = v385;
      v89 = 1 << *(v385 + 32);
      if (v86 >= v89)
      {
        goto LABEL_190;
      }

      v84 = v384;
      v103 = *(v384 + 8 * v48);
      if ((v103 & i) == 0)
      {
        goto LABEL_191;
      }

      LODWORD(v88) = v380;
      if (v380 != *(v385 + 9))
      {
        goto LABEL_192;
      }

      v104 = v103 & (-2 << (v86 & 0x3F));
      if (v104)
      {
        v89 = __clz(__rbit64(v104)) | v86 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v105 = v48 << 6;
        v106 = v48 + 1;
        v107 = &v378[8 * v48];
        while (v106 < (v89 + 63) >> 6)
        {
          v108 = *v107++;
          v48 = v108;
          v105 += 64;
          ++v106;
          if (v108)
          {
            sub_1D1716920(v86, v380, 0);
            v89 = __clz(__rbit64(v48)) + v105;
            goto LABEL_24;
          }
        }

        sub_1D1716920(v86, v380, 0);
      }

LABEL_24:
      v87 = (v386 + 1);
      v86 = v89;
    }

    while ((v386 + 1) != v379);

    v50 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v83 = MEMORY[0x1E69E7CC0];
  }

  *&v395 = v50;
  v109 = v377 + 64;
  v110 = 1 << v377[32];
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v377 + 8);
  v113 = (v110 + 63) >> 6;

  v114 = 0;
  v48 = &qword_1D1E79A08;
  v115 = v352;
  if (v112)
  {
    while (1)
    {
      v116 = v114;
LABEL_50:
      v117 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      v118 = v117 | (v116 << 6);
      v119 = v377;
      v120 = *(v377 + 6);
      v121 = sub_1D1E66A7C();
      (*(*(v121 - 8) + 16))(v115, v120 + *(*(v121 - 8) + 72) * v118, v121);
      v122 = *(v119 + 7) + v381[9] * v118;
      v123 = v115 + *(v383 + 48);
      sub_1D1D1D7E0(v122, v123, type metadata accessor for StaticMediaSystem);
      v124 = *(v123 + *(v382 + 24));

      sub_1D1741A30(v115, &qword_1EC645478, &qword_1D1E79A08);
      sub_1D17A317C(v124);
      if (!v112)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
LABEL_46:
    v116 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
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
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    if (v116 >= v113)
    {
      break;
    }

    v112 = *&v109[8 * v116];
    ++v114;
    if (v112)
    {
      v114 = v116;
      goto LABEL_50;
    }
  }

  v379 = v83;

  v125 = v395;
  v126 = v354;
  v127 = v375;
  v128 = sub_1D1D1D2C8(*(v354 + v353[14]), sub_1D1D1F000, sub_1D1D1F000);

  v129 = sub_1D1D24618(v128, v125, sub_1D1D236C0, sub_1D1D236C0);

  v130 = swift_bridgeObjectRelease_n();
  MEMORY[0x1EEE9AC00](v130);
  *(&v341 - 16) = v376;
  *(&v341 - 1) = v126;
  v131 = sub_1D1D1DB10(sub_1D1D23A58, (&v341 - 4), v129, type metadata accessor for StaticMediaProfile, sub_1D188BA98, type metadata accessor for StaticMediaProfile, type metadata accessor for StaticMediaProfile);

  v132 = sub_1D1D1D2C8(v131, sub_1D1D1ED70, sub_1D1D1ED70);

  v133 = *(v132 + 16);
  if (v133)
  {
    v378 = v127;
    *&v392 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v133, 0);
    v134 = v392;
    v48 = v132 + 64;
    v135 = -1 << *(v132 + 32);
    v136 = sub_1D1E6869C();
    v137 = 0;
    v380 = v132 + 72;
    v381 = v133;
    v383 = v132 + 64;
    v382 = v132;
    do
    {
      if (v136 < 0 || v136 >= 1 << *(v132 + 32))
      {
        goto LABEL_193;
      }

      if ((*(v48 + 8 * (v136 >> 6)) & (1 << v136)) == 0)
      {
        goto LABEL_194;
      }

      v386 = 1 << v136;
      i = v136 >> 6;
      v141 = *(v132 + 36);
      v384 = v137;
      v385 = v141;
      v142 = v367;
      v143 = *(v367 + 48);
      v144 = *(v132 + 48);
      v145 = sub_1D1E66A7C();
      v146 = *(v145 - 8);
      v147 = v364;
      (*(v146 + 16))(v364, v144 + *(v146 + 72) * v136, v145);
      sub_1D1D1D7E0(*(v132 + 56) + *(v362 + 72) * v136, &v147[v143], type metadata accessor for StaticMediaProfile);
      v148 = v365;
      (*(v146 + 32))(v365, v147, v145);
      sub_1D1D26328(&v147[v143], v148 + *(v142 + 48), type metadata accessor for StaticMediaProfile);
      v149 = v366;
      sub_1D1741C08(v148, v366, &qword_1EC645468, &unk_1D1E995E0);
      v150 = *(v142 + 48);
      v151 = v361;
      sub_1D1D26328(v149 + v150, v361, type metadata accessor for StaticMediaProfile);
      sub_1D1741A30(v148, &qword_1EC645468, &unk_1D1E995E0);
      (*(v146 + 8))(v149, v145);
      *&v392 = v134;
      v153 = *(v134 + 16);
      v152 = *(v134 + 24);
      if (v153 >= v152 >> 1)
      {
        sub_1D178CF40((v152 > 1), v153 + 1, 1);
        v134 = v392;
      }

      v396 = v363;
      v397 = sub_1D1D1D848(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile);
      v154 = __swift_allocate_boxed_opaque_existential_1(&v395);
      sub_1D1D1D7E0(v151, v154, type metadata accessor for StaticMediaProfile);
      *(v134 + 16) = v153 + 1;
      sub_1D16EEE20(&v395, v134 + 40 * v153 + 32);
      sub_1D1D1D890(v151, type metadata accessor for StaticMediaProfile);
      v132 = v382;
      v138 = 1 << *(v382 + 32);
      v48 = v383;
      if (v136 >= v138)
      {
        goto LABEL_195;
      }

      v155 = *(v383 + 8 * i);
      if ((v155 & v386) == 0)
      {
        goto LABEL_196;
      }

      if (v385 != *(v382 + 9))
      {
        goto LABEL_197;
      }

      v156 = v155 & (-2 << (v136 & 0x3F));
      if (v156)
      {
        v138 = __clz(__rbit64(v156)) | v136 & 0x7FFFFFFFFFFFFFC0;
        v139 = v381;
        v140 = v384;
      }

      else
      {
        v157 = i << 6;
        v158 = (i + 1);
        v159 = (v380 + 8 * i);
        v139 = v381;
        v140 = v384;
        while (v158 < (v138 + 63) >> 6)
        {
          v161 = *v159++;
          v160 = v161;
          v157 += 64;
          ++v158;
          if (v161)
          {
            sub_1D1716920(v136, v385, 0);
            v138 = __clz(__rbit64(v160)) + v157;
            goto LABEL_55;
          }
        }

        sub_1D1716920(v136, v385, 0);
      }

LABEL_55:
      v137 = (v140 + 1);
      v136 = v138;
    }

    while (v137 != v139);
    v384 = v134;

    v127 = v378;
  }

  else
  {

    v384 = MEMORY[0x1E69E7CC0];
  }

  v163 = *(v354 + v353[10]);
  MEMORY[0x1EEE9AC00](v162);
  *(&v341 - 2) = v344;
  i = v164;
  v165 = sub_1D1D1DB10(sub_1D1D23A64, (&v341 - 4), v164, type metadata accessor for StaticAccessory, sub_1D188CC38, type metadata accessor for StaticAccessory, type metadata accessor for StaticAccessory);
  v166 = sub_1D1D1D2C8(v165, sub_1D1D1FE20, sub_1D1D1FE20);

  v167 = sub_1D1D1D2C8(v166, sub_1D1D1FBDC, sub_1D1D1FBDC);

  v168 = sub_1D1D1D8F0(v167, v346 & 1, sub_1D1D1F9C4, sub_1D1D1F9C4);
  v381 = v127;

  v169 = v168 + 64;
  v170 = 1 << *(v168 + 32);
  v171 = -1;
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  v172 = v171 & *(v168 + 64);
  v48 = (v170 + 63) >> 6;
  v385 = v168;

  v173 = 0;
  v386 = MEMORY[0x1E69E7CC0];
  v383 = v168 + 64;
  v382 = v48;
  while (v172)
  {
LABEL_82:
    v175 = __clz(__rbit64(v172));
    v172 &= v172 - 1;
    v176 = v175 | (v173 << 6);
    v177 = v385;
    v178 = v385[6];
    v179 = sub_1D1E66A7C();
    v180 = *(v179 - 8);
    v181 = v351;
    (*(v180 + 16))(v351, v178 + *(v180 + 72) * v176, v179);
    v182 = *(v177 + 56);
    v183 = type metadata accessor for StaticAccessory(0);
    v184 = v182 + *(*(v183 - 8) + 72) * v176;
    v185 = v358;
    sub_1D1D1D7E0(v184, v181 + *(v358 + 48), type metadata accessor for StaticAccessory);
    v186 = v357;
    sub_1D1741C08(v181, v357, &qword_1EC644B30, &qword_1D1E77280);
    v187 = *(v185 + 48);
    v393 = v183;
    v394 = sub_1D1D1D848(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    v188 = __swift_allocate_boxed_opaque_existential_1(&v392);
    sub_1D1D26328(v186 + v187, v188, type metadata accessor for StaticAccessory);
    sub_1D1741A30(v181, &qword_1EC644B30, &qword_1D1E77280);
    (*(v180 + 8))(v186, v179);
    if (v393)
    {
      sub_1D16EEE20(&v392, &v395);
      v189 = v386;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v389 = v189;
      v169 = v383;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v386 = sub_1D177F2B8(0, *(v386 + 16) + 1, 1, v386);
        *&v389 = v386;
      }

      v192 = *(v386 + 16);
      v191 = *(v386 + 24);
      if (v192 >= v191 >> 1)
      {
        v386 = sub_1D177F2B8((v191 > 1), v192 + 1, 1, v386);
        *&v389 = v386;
      }

      v193 = v396;
      v194 = v397;
      v195 = __swift_mutable_project_boxed_opaque_existential_1(&v395, v396);
      v196 = *(*(v193 - 8) + 64);
      MEMORY[0x1EEE9AC00](v195);
      v198 = &v341 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v199 + 16))(v198);
      sub_1D1D20B74(v192, v198, &v389, v193, v194);
      __swift_destroy_boxed_opaque_existential_1(&v395);
    }

    else
    {
      sub_1D1741A30(&v392, &qword_1EC643668, &qword_1D1E71D60);
      v169 = v383;
    }

    v48 = v382;
  }

  while (1)
  {
    v174 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      goto LABEL_178;
    }

    if (v174 >= v48)
    {
      break;
    }

    v172 = *(v169 + 8 * v174);
    ++v173;
    if (v172)
    {
      v173 = v174;
      goto LABEL_82;
    }
  }

  *&v395 = MEMORY[0x1E69E7CD0];
  v200 = (i + 64);
  v201 = 1 << *(i + 32);
  v202 = -1;
  if (v201 < 64)
  {
    v202 = ~(-1 << v201);
  }

  v203 = v202 & *(i + 64);
  v204 = (v201 + 63) >> 6;

  v205 = 0;
  v206 = v343;
  v383 = v200;
  v382 = v204;
  while (2)
  {
    if (v203)
    {
      v207 = v205;
LABEL_99:
      v208 = __clz(__rbit64(v203));
      v203 &= v203 - 1;
      v209 = v208 | (v207 << 6);
      v210 = i;
      v211 = *(i + 48);
      v212 = sub_1D1E66A7C();
      v213 = *(v212 - 8);
      (*(v213 + 16))(v206, v211 + *(v213 + 72) * v209, v212);
      v214 = *(v210 + 56);
      v215 = type metadata accessor for StaticAccessory(0);
      v216 = v358;
      sub_1D1D1D7E0(v214 + *(*(v215 - 8) + 72) * v209, v206 + *(v358 + 48), type metadata accessor for StaticAccessory);
      v48 = v357;
      sub_1D1741C08(v206, v357, &qword_1EC644B30, &qword_1D1E77280);
      v217 = v48 + *(v216 + 48);
      LODWORD(v214) = *(v217 + *(v215 + 148));
      sub_1D1D1D890(v217, type metadata accessor for StaticAccessory);
      v385 = *(v213 + 8);
      (v385)(v48, v212);
      if (v214 == 1)
      {
        v218 = v345;
        sub_1D1741C08(v206, v345, &qword_1EC644B30, &qword_1D1E77280);
        v219 = *(v216 + 48);
        v220 = v218;
        v221 = v218 + v219;
        v222 = v218 + v219 + *(v215 + 144);
        v223 = *v222;
        v224 = *(v222 + 8);
        sub_1D1D1D890(v221, type metadata accessor for StaticAccessory);
        if (v224)
        {
          sub_1D1741A30(v206, &qword_1EC644B30, &qword_1D1E77280);
          (v385)(v220, v212);
          goto LABEL_93;
        }

        (v385)(v220, v212);
        sub_1D1766118(&v392, v223);
      }

      sub_1D1741A30(v206, &qword_1EC644B30, &qword_1D1E77280);
LABEL_93:
      v205 = v207;
      v200 = v383;
      v204 = v382;
      continue;
    }

    break;
  }

  while (1)
  {
    v207 = v205 + 1;
    if (__OFADD__(v205, 1))
    {
      goto LABEL_179;
    }

    if (v207 >= v204)
    {
      break;
    }

    v203 = v200[v207];
    ++v205;
    if (v203)
    {
      goto LABEL_99;
    }
  }

  v226 = v395;
  v227 = v344;
  v228 = *(v344 + *(v342 + 24));
  MEMORY[0x1EEE9AC00](v225);
  *(&v341 - 2) = v227;

  v229 = v381;
  v230 = sub_1D1892A20(sub_1D1A30408, (&v341 - 4), v228);

  v231 = sub_1D178547C(v230);

  v232 = sub_1D1D23D00(v231, v226);
  v385 = v229;

  sub_1D1D1D7E0(v227, v355, type metadata accessor for MatterStateSnapshot);
  v233 = v232 + 56;
  v234 = 1 << *(v232 + 32);
  v235 = -1;
  if (v234 < 64)
  {
    v235 = ~(-1 << v234);
  }

  v236 = v235 & *(v232 + 56);
  v237 = (v234 + 63) >> 6;

  v238 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v239 = v388;
  for (i = v232; v236; v239 = v388)
  {
LABEL_111:
    while (1)
    {
      v241 = __clz(__rbit64(v236));
      v236 &= v236 - 1;
      v242 = v349;
      sub_1D1D1D7E0(*(v232 + 48) + *(v350 + 72) * (v241 | (v238 << 6)), v349, type metadata accessor for MatterTilePath);
      MatterStateSnapshot.tileInfo(for:)(v242, &v392);
      sub_1D1D1D890(v242, type metadata accessor for MatterTilePath);
      if (v393)
      {
        break;
      }

      sub_1D1741A30(&v392, &qword_1EC643668, &qword_1D1E71D60);
      if (!v236)
      {
        goto LABEL_107;
      }
    }

    sub_1D16EEE20(&v392, &v395);
    sub_1D16EEE20(&v395, &v392);
    v243 = swift_isUniquelyReferenced_nonNull_native();
    *&v389 = v48;
    if ((v243 & 1) == 0)
    {
      v48 = sub_1D177F2B8(0, *(v48 + 16) + 1, 1, v48);
      *&v389 = v48;
    }

    v245 = *(v48 + 16);
    v244 = *(v48 + 24);
    if (v245 >= v244 >> 1)
    {
      v48 = sub_1D177F2B8((v244 > 1), v245 + 1, 1, v48);
      *&v389 = v48;
    }

    v246 = v393;
    v247 = v394;
    v248 = __swift_mutable_project_boxed_opaque_existential_1(&v392, v393);
    v249 = *(*(v246 - 8) + 64);
    MEMORY[0x1EEE9AC00](v248);
    v251 = &v341 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v252 + 16))(v251);
    sub_1D1D20B74(v245, v251, &v389, v246, v247);
    __swift_destroy_boxed_opaque_existential_1(&v392);
    v232 = i;
  }

  while (1)
  {
LABEL_107:
    v240 = v238 + 1;
    if (__OFADD__(v238, 1))
    {
      goto LABEL_180;
    }

    if (v240 >= v237)
    {
      break;
    }

    v236 = *(v233 + 8 * v240);
    ++v238;
    if (v236)
    {
      v238 = v240;
      goto LABEL_111;
    }
  }

  v381 = v48;
  sub_1D1D1D890(v355, type metadata accessor for MatterStateSnapshot);

  v254 = v354;
  v255 = *(v354 + v353[16]);
  MEMORY[0x1EEE9AC00](v253);
  *(&v341 - 2) = v254;
  v48 = v385;
  v257 = sub_1D1D1D438(sub_1D1D240D0, (&v341 - 4), v256);

  v258 = sub_1D1D24618(v257, v239, sub_1D1D240D8, sub_1D1D240D8);

  v259 = v386;

  v260 = sub_1D1D24618(v258, v259, sub_1D1D247E8, sub_1D1D247E8);

  v261 = v384;

  v262 = sub_1D1D24618(v260, v261, sub_1D1D24D28, sub_1D1D24D28);

  v263 = sub_1D1D1D2C8(v262, sub_1D1D1E440, sub_1D1D1E440);

  MEMORY[0x1EEE9AC00](v264);
  *(&v341 - 2) = v254;
  v265 = sub_1D1D1D438(sub_1D1D2500C, (&v341 - 4), v263);

  v266 = sub_1D1D1D8F0(v265, v346 & 1, sub_1D1D1E228, sub_1D1D1E228);

  v267 = v266 + 64;
  v268 = 1 << *(v266 + 32);
  v269 = -1;
  if (v268 < 64)
  {
    v269 = ~(-1 << v268);
  }

  v270 = v269 & *(v266 + 64);
  v271 = (v268 + 63) >> 6;
  v385 = v266;

  v272 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v270; v261 = v384)
  {
LABEL_127:
    while (1)
    {
      v274 = __clz(__rbit64(v270));
      v270 &= v270 - 1;
      v275 = v274 | (v272 << 6);
      v276 = v385;
      v277 = v385[6];
      v278 = sub_1D1E66A7C();
      v279 = v347;
      (*(*(v278 - 8) + 16))(v347, v277 + *(*(v278 - 8) + 72) * v275, v278);
      v280 = *(v276 + 56);
      v281 = type metadata accessor for StaticService(0);
      v282 = v280 + *(*(v281 - 8) + 72) * v275;
      v283 = *(v348 + 48);
      sub_1D1D1D7E0(v282, v279 + v283, type metadata accessor for StaticService);
      v393 = v281;
      v284 = sub_1D1D1D848(&qword_1EC646AF0, type metadata accessor for StaticService);
      v394 = v284;
      v285 = __swift_allocate_boxed_opaque_existential_1(&v392);
      sub_1D1D1D7E0(v279 + v283, v285, type metadata accessor for StaticService);
      sub_1D1741A30(v279, &qword_1EC642DB0, &unk_1D1E6F360);
      if (v393)
      {
        break;
      }

      sub_1D1741A30(&v392, &qword_1EC643668, &qword_1D1E71D60);
      v261 = v384;
      if (!v270)
      {
        goto LABEL_123;
      }
    }

    sub_1D16EEE20(&v392, &v395);
    sub_1D16EEE20(&v395, &v392);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1D177F2B8(0, *(i + 16) + 1, 1, i);
    }

    v287 = *(i + 16);
    v286 = *(i + 24);
    v383 = v287 + 1;
    if (v287 >= v286 >> 1)
    {
      i = sub_1D177F2B8((v286 > 1), v287 + 1, 1, i);
    }

    v288 = v393;
    v289 = __swift_mutable_project_boxed_opaque_existential_1(&v392, v393);
    v382 = &v341;
    v290 = *(*(v288 - 8) + 64);
    MEMORY[0x1EEE9AC00](v289);
    v292 = &v341 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v293 + 16))(v292);
    v390 = v281;
    v391 = v284;
    v294 = __swift_allocate_boxed_opaque_existential_1(&v389);
    sub_1D1D26328(v292, v294, type metadata accessor for StaticService);
    v295 = i;
    *(i + 16) = v383;
    sub_1D16EEE20(&v389, v295 + 40 * v287 + 32);
    __swift_destroy_boxed_opaque_existential_1(&v392);
  }

  while (1)
  {
LABEL_123:
    v273 = v272 + 1;
    if (__OFADD__(v272, 1))
    {
      goto LABEL_181;
    }

    if (v273 >= v271)
    {
      break;
    }

    v270 = *(v267 + 8 * v273);
    ++v272;
    if (v270)
    {
      v272 = v273;
      goto LABEL_127;
    }
  }

  *&v395 = v386;
  sub_1D17A53D0(i);
  sub_1D17A53D0(v388);
  v296 = v395;
  *&v395 = v261;
  sub_1D17A53D0(v379);
  v297 = v395;
  *&v395 = v296;
  sub_1D17A53D0(v297);
  sub_1D17A53D0(v381);
  v298 = v395;
  v299 = *(v395 + 16);
  if (v299)
  {
    *&v392 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v299, 0);
    v300 = v392;
    v301 = v298 + 32;
    do
    {
      sub_1D17419CC(v301, &v395);
      *&v392 = v300;
      v303 = v300[2];
      v302 = v300[3];
      if (v303 >= v302 >> 1)
      {
        sub_1D178CF40((v302 > 1), v303 + 1, 1);
      }

      v304 = v396;
      v305 = v397;
      v306 = __swift_mutable_project_boxed_opaque_existential_1(&v395, v396);
      v307 = *(*(v304 - 8) + 64);
      MEMORY[0x1EEE9AC00](v306);
      v309 = &v341 - ((v308 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v310 + 16))(v309);
      sub_1D1D20ADC(v303, v309, &v392, v304, v305);
      __swift_destroy_boxed_opaque_existential_1(&v395);
      v300 = v392;
      v301 += 40;
      --v299;
    }

    while (v299);
  }

  else
  {

    v300 = MEMORY[0x1E69E7CC0];
  }

  if (v359 != 8)
  {
    v311 = v300[2];
    if (v311)
    {
      v312 = 0;
      v313 = MEMORY[0x1E69E7CC0];
      v314 = (v300 + 4);
      while (1)
      {
        if (v312 >= v300[2])
        {
          goto LABEL_199;
        }

        sub_1D17419CC(v314, &v395);
        sub_1D1D18D58(&v395, v359, &v392);
        if (v48)
        {
          goto LABEL_204;
        }

        __swift_destroy_boxed_opaque_existential_1(&v395);
        v315 = v392;
        v316 = *(v392 + 16);
        v317 = v313[2];
        v318 = v317 + v316;
        if (__OFADD__(v317, v316))
        {
          goto LABEL_200;
        }

        v319 = swift_isUniquelyReferenced_nonNull_native();
        if (v319 && v318 <= v313[3] >> 1)
        {
          if (!*(v315 + 16))
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v317 <= v318)
          {
            v320 = v317 + v316;
          }

          else
          {
            v320 = v317;
          }

          v313 = sub_1D177F2B8(v319, v320, 1, v313);
          if (!*(v315 + 16))
          {
LABEL_144:

            if (v316)
            {
              goto LABEL_201;
            }

            goto LABEL_145;
          }
        }

        if ((v313[3] >> 1) - v313[2] < v316)
        {
          goto LABEL_202;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        swift_arrayInitWithCopy();

        if (v316)
        {
          v321 = v313[2];
          v322 = __OFADD__(v321, v316);
          v323 = v321 + v316;
          if (v322)
          {
            goto LABEL_203;
          }

          v313[2] = v323;
        }

LABEL_145:
        ++v312;
        v314 += 40;
        if (v311 == v312)
        {
          goto LABEL_162;
        }
      }
    }

    v313 = MEMORY[0x1E69E7CC0];
LABEL_162:

    v300 = v313;
  }

  v324 = v300[2];
  if (!v324)
  {
    v326 = MEMORY[0x1E69E7CC0];
LABEL_176:

    v339 = sub_1D1D07DC4(*(v354 + v353[18]), v326);

    return v339;
  }

  v325 = 0;
  v48 = (v300 + 4);
  v326 = MEMORY[0x1E69E7CC0];
  while (v325 < v300[2])
  {
    sub_1D17419CC(v48, &v395);
    if ((v360 & 1) != 0 && (v327 = v396, v328 = v397, __swift_project_boxed_opaque_existential_1(&v395, v396), ((*(v328 + 128))(v327, v328) & 1) == 0))
    {
      __swift_destroy_boxed_opaque_existential_1(&v395);
    }

    else
    {
      sub_1D16EEE20(&v395, &v392);
      v329 = swift_isUniquelyReferenced_nonNull_native();
      *&v389 = v326;
      if ((v329 & 1) == 0)
      {
        sub_1D178CF40(0, *(v326 + 16) + 1, 1);
        v326 = v389;
      }

      v331 = *(v326 + 16);
      v330 = *(v326 + 24);
      if (v331 >= v330 >> 1)
      {
        sub_1D178CF40((v330 > 1), v331 + 1, 1);
      }

      v332 = v393;
      v333 = v394;
      v334 = __swift_mutable_project_boxed_opaque_existential_1(&v392, v393);
      v335 = *(*(v332 - 8) + 64);
      MEMORY[0x1EEE9AC00](v334);
      v337 = &v341 - ((v336 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v338 + 16))(v337);
      sub_1D1D20ADC(v331, v337, &v389, v332, v333);
      __swift_destroy_boxed_opaque_existential_1(&v392);
      v326 = v389;
    }

    ++v325;
    v48 += 40;
    if (v324 == v325)
    {
      goto LABEL_176;
    }
  }

LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:

  __swift_destroy_boxed_opaque_existential_1(&v395);

  __break(1u);
  return result;
}

uint64_t sub_1D1D07DC4(void *a1, uint64_t a2)
{
  v51 = a1;
  v3 = type metadata accessor for DashboardSortableData();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - v9;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D178DB30(0, v11, 0);
    v12 = v56;
    v13 = a2 + 32;
    do
    {
      v14 = *(v6 + 48);
      sub_1D17419CC(v13, &v10[v14]);
      sub_1D17419CC(&v10[v14], &v53);
      v16 = v54;
      v15 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      (*(v15 + 64))(v16, v15);
      v17 = v54;
      v18 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v19 = (*(v18 + 56))(v17, v18);
      v20 = &v10[*(v3 + 20)];
      *v20 = v19;
      v20[1] = v21;
      v22 = v54;
      v23 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      TileInfoBearer.sortID.getter(v22, v23, &v10[*(v3 + 24)]);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      v56 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178DB30(v24 > 1, v25 + 1, 1);
        v12 = v56;
      }

      *(v12 + 16) = v25 + 1;
      sub_1D1741A90(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, &qword_1EC6436D8, &unk_1D1E71E30);
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD0, &qword_1D1E6E818);
    v26 = sub_1D1E68BCC();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC8];
  }

  v53 = v26;
  sub_1D1C84198(v12, 1, &v53);

  v27 = v53;
  v28 = v53[2];
  if (v28)
  {
    v29 = sub_1D1804444(v53[2], 0);
    v30 = sub_1D18085B4(&v53, v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v28, v27);
    swift_retain_n();

    sub_1D1716918();
    if (v30 != v28)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v31 = v51;
  }

  else
  {
    v31 = v51;

    v29 = MEMORY[0x1E69E7CC0];
  }

  v53 = v29;

  sub_1D1C84628(&v53, v31);

  swift_bridgeObjectRelease_n();
  v51 = v53;
  v32 = v53[2];
  if (v32)
  {
    v33 = v52;
    v34 = v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v35 = *(v50 + 72);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1D1D7E0(v34, v33, type metadata accessor for DashboardSortableData);
      if (v27[2] && (v37 = sub_1D171DC84(v33), (v38 & 1) != 0))
      {
        sub_1D17419CC(v27[7] + 40 * v37, &v53);
        sub_1D1D1D890(v33, type metadata accessor for DashboardSortableData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_1D177F2B8(0, v36[2] + 1, 1, v36);
          v56 = v36;
        }

        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = sub_1D177F2B8((v40 > 1), v41 + 1, 1, v36);
          v56 = v36;
        }

        v42 = v54;
        v43 = v55;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(&v53, v54);
        v45 = *(*(v42 - 8) + 64);
        MEMORY[0x1EEE9AC00](v44);
        v47 = &v50 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v48 + 16))(v47);
        sub_1D1D20B74(v41, v47, &v56, v42, v43);
        __swift_destroy_boxed_opaque_existential_1(&v53);
        v33 = v52;
      }

      else
      {
        sub_1D1D1D890(v33, type metadata accessor for DashboardSortableData);
      }

      v34 += v35;
      --v32;
    }

    while (v32);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v36;
}

uint64_t sub_1D1D083F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v109 = type metadata accessor for TilesFilter(0);
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v103 - v11;
  v106 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(*(v106 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v103 - v15;
  v130 = type metadata accessor for StaticService(0);
  v116 = *(v130 - 1);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x1EEE9AC00](v130);
  v123 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v103 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = &v103 - v35;
  v113 = 0;
  v37 = 0;
  v120 = a1;
  v40 = *(a1 + 64);
  v39 = a1 + 64;
  v38 = v40;
  v41 = 1 << *(v39 - 32);
  v133 = MEMORY[0x1E69E7CD0];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v117 = (v21 + 16);
  v119 = (v21 + 32);
  v128 = &v103 - v35;
  v129 = 0x80000001D1EB3670;
  v121 = v44;
  v122 = (v21 + 8);
  v125 = v21;
  v126 = v33;
  v114 = v39;
  v124 = v20;
  for (i = v25; v43; v44 = v121)
  {
    v45 = v37;
LABEL_14:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v120;
    (*(v21 + 16))(v118, *(v120 + 48) + *(v21 + 72) * v49, v20);
    v51 = v115;
    sub_1D1D1D7E0(*(v50 + 56) + *(v116 + 72) * v49, v115, type metadata accessor for StaticService);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v53 = *(v52 + 48);
    v54 = *(v21 + 32);
    v33 = v126;
    v55 = v20;
    v54();
    sub_1D1D26328(v51, &v33[v53], type metadata accessor for StaticService);
    (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
    v25 = i;
    v36 = v128;
    v39 = v114;
LABEL_15:
    sub_1D1741A90(v33, v36, &qword_1EC643C68, &unk_1D1E764C0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v56 - 8) + 48))(v36, 1, v56) == 1)
    {

      if (v113)
      {
        v74 = v55;
        v75 = v25;
        v76 = v103;
        (*(v125 + 56))(v103, 1, 1, v55);
        v129 = 0x80000001D1EB63B0;
        v128 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5990);
        v78 = v77;
        static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC8850);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1D1E739C0;
        v80 = *(v133 + 16);
        v81 = MEMORY[0x1E69E65A8];
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = v81;
        *(v79 + 32) = v80;
        v82 = sub_1D1E6783C();
        v84 = v83;

        v85 = v125;

        v86 = v104;
        sub_1D1741C08(v76, v104, &qword_1EC642590, qword_1D1E71260);
        v87 = *(v85 + 48);
        if (v87(v86, 1, v74) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          v88 = v87(v86, 1, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
          if (v88 != 1)
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          (*v119)(v75, v86, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
        }

        v93 = v105;
        (*v119)(v105, v75, v74);
        v94 = v106;
        v95 = (v93 + *(v106 + 20));
        v96 = v129;
        *v95 = 0xD000000000000018;
        v95[1] = v96;
        v97 = (v93 + v94[6]);
        *v97 = v128;
        v97[1] = v78;
        v98 = (v93 + v94[7]);
        *v98 = v82;
        v98[1] = v84;
        v99 = v93 + v94[8];
        *v99 = 0;
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *(v99 + 24) = -1;
        v100 = sub_1D1D26328(v93, v91, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v100);
        *(&v103 - 2) = &v133;
        v132 = v130;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v90, v89, type metadata accessor for TilesFilter);
        v101 = type metadata accessor for ClosedBlindsStatusItem(0);
        v102 = v112;
        *(v112 + v101[6]) = 3;
        *(v102 + v101[7]) = 0;
        *(v102 + v101[8]) = 3;
        sub_1D1D26328(v91, v102, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v89, v102 + v101[5], type metadata accessor for TilesFilter);

        return (*(*(v101 - 1) + 56))(v102, 0, 1, v101);
      }

      else
      {

        v92 = type metadata accessor for ClosedBlindsStatusItem(0);
        return (*(*(v92 - 8) + 56))(v112, 1, 1, v92);
      }
    }

    v57 = v123;
    sub_1D1D26328(&v36[*(v56 + 48)], v123, type metadata accessor for StaticService);
    v58 = v130[26];
    v59 = *(v57 + v58);
    if (v59 == 11 && *(v57 + v130[28]) != 53)
    {
      LOBYTE(v132) = *(v57 + v130[28]);
      v131 = 52;
      v60 = ServiceKind.rawValue.getter();
      v62 = v61;
      if (v60 == ServiceKind.rawValue.getter() && v62 == v63)
      {
      }

      else
      {
        v65 = sub_1D1E6904C();

        if ((v65 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v132 = *(v57 + v130[32]);
      v131 = 28;
      v134 = StaticCharacteristicsBag.int(for:)(&v131);
      if (!v134.is_nil && !v134.value)
      {
        v113 = 1;
        v21 = v125;
        v33 = v126;
LABEL_39:
        v70 = v111;
        v20 = v124;
        (*v117)(v111, v57, v124);
        v71 = v118;
        sub_1D1762CB8(v118, v70);
        v72 = *v122;
        (*v122)(v71, v20);
        v73 = v72;
        sub_1D1D1D890(v57, type metadata accessor for StaticService);
        v36 = v128;
        result = (v73)(v128, v20);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v132) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v66)
    {

      v21 = v125;
      v33 = v126;
      v36 = v128;
    }

    else
    {
      v67 = sub_1D1E6904C();

      v21 = v125;
      v33 = v126;
      v36 = v128;
      if ((v67 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v132) = *(v57 + v58);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v132 = *(v57 + v130[32]);
    v131 = 40;
    v135 = StaticCharacteristicsBag.int(for:)(&v131);
    if (!v135.is_nil && v135.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v57, type metadata accessor for StaticService);
    v20 = v124;
    result = (*v122)(v36, v124);
LABEL_36:
    v25 = i;
  }

  if (v44 <= v37 + 1)
  {
    v46 = v37 + 1;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v44)
    {
      v55 = v20;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v64 - 8) + 56))(v33, 1, 1, v64);
      v43 = 0;
      v37 = v47;
      goto LABEL_15;
    }

    v43 = *(v39 + 8 * v45);
    ++v37;
    if (v43)
    {
      v37 = v45;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D0917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v109 = type metadata accessor for TilesFilter(0);
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v103 - v11;
  v106 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(*(v106 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v103 - v15;
  v130 = type metadata accessor for StaticService(0);
  v116 = *(v130 - 1);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x1EEE9AC00](v130);
  v123 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v103 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = &v103 - v35;
  v113 = 0;
  v37 = 0;
  v120 = a1;
  v40 = *(a1 + 64);
  v39 = a1 + 64;
  v38 = v40;
  v41 = 1 << *(v39 - 32);
  v133 = MEMORY[0x1E69E7CD0];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v117 = (v21 + 16);
  v119 = (v21 + 32);
  v128 = &v103 - v35;
  v129 = 0x80000001D1EB3040;
  v121 = v44;
  v122 = (v21 + 8);
  v125 = v21;
  v126 = v33;
  v114 = v39;
  v124 = v20;
  for (i = v25; v43; v44 = v121)
  {
    v45 = v37;
LABEL_14:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v120;
    (*(v21 + 16))(v118, *(v120 + 48) + *(v21 + 72) * v49, v20);
    v51 = v115;
    sub_1D1D1D7E0(*(v50 + 56) + *(v116 + 72) * v49, v115, type metadata accessor for StaticService);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v53 = *(v52 + 48);
    v54 = *(v21 + 32);
    v33 = v126;
    v55 = v20;
    v54();
    sub_1D1D26328(v51, &v33[v53], type metadata accessor for StaticService);
    (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
    v25 = i;
    v36 = v128;
    v39 = v114;
LABEL_15:
    sub_1D1741A90(v33, v36, &qword_1EC643C68, &unk_1D1E764C0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v56 - 8) + 48))(v36, 1, v56) == 1)
    {

      if (v113)
      {
        v74 = v55;
        v75 = v25;
        v76 = v103;
        (*(v125 + 56))(v103, 1, 1, v55);
        v129 = 0x80000001D1EB5D20;
        v128 = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC57B0);
        v78 = v77;
        static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC8820);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1D1E739C0;
        v80 = *(v133 + 16);
        v81 = MEMORY[0x1E69E65A8];
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = v81;
        *(v79 + 32) = v80;
        v82 = sub_1D1E6783C();
        v84 = v83;

        v85 = v125;

        v86 = v104;
        sub_1D1741C08(v76, v104, &qword_1EC642590, qword_1D1E71260);
        v87 = *(v85 + 48);
        if (v87(v86, 1, v74) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          v88 = v87(v86, 1, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
          if (v88 != 1)
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          (*v119)(v75, v86, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
        }

        v93 = v105;
        (*v119)(v105, v75, v74);
        v94 = v106;
        v95 = (v93 + *(v106 + 20));
        v96 = v129;
        *v95 = 0xD000000000000012;
        v95[1] = v96;
        v97 = (v93 + v94[6]);
        *v97 = v128;
        v97[1] = v78;
        v98 = (v93 + v94[7]);
        *v98 = v82;
        v98[1] = v84;
        v99 = v93 + v94[8];
        *v99 = 0;
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *(v99 + 24) = -1;
        v100 = sub_1D1D26328(v93, v91, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v100);
        *(&v103 - 2) = &v133;
        v132 = v130;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v90, v89, type metadata accessor for TilesFilter);
        v101 = type metadata accessor for ClosedGarageDoorStatusItem(0);
        v102 = v112;
        *(v112 + v101[6]) = 4;
        *(v102 + v101[7]) = 3;
        sub_1D1D26328(v91, v102, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v89, v102 + v101[5], type metadata accessor for TilesFilter);

        return (*(*(v101 - 1) + 56))(v102, 0, 1, v101);
      }

      else
      {

        v92 = type metadata accessor for ClosedGarageDoorStatusItem(0);
        return (*(*(v92 - 8) + 56))(v112, 1, 1, v92);
      }
    }

    v57 = v123;
    sub_1D1D26328(&v36[*(v56 + 48)], v123, type metadata accessor for StaticService);
    v58 = v130[26];
    v59 = *(v57 + v58);
    if (v59 == 11 && *(v57 + v130[28]) != 53)
    {
      LOBYTE(v132) = *(v57 + v130[28]);
      v131 = 19;
      v60 = ServiceKind.rawValue.getter();
      v62 = v61;
      if (v60 == ServiceKind.rawValue.getter() && v62 == v63)
      {
      }

      else
      {
        v65 = sub_1D1E6904C();

        if ((v65 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v132 = *(v57 + v130[32]);
      v131 = 28;
      v134 = StaticCharacteristicsBag.int(for:)(&v131);
      if (!v134.is_nil && !v134.value)
      {
        v113 = 1;
        v21 = v125;
        v33 = v126;
LABEL_39:
        v70 = v111;
        v20 = v124;
        (*v117)(v111, v57, v124);
        v71 = v118;
        sub_1D1762CB8(v118, v70);
        v72 = *v122;
        (*v122)(v71, v20);
        v73 = v72;
        sub_1D1D1D890(v57, type metadata accessor for StaticService);
        v36 = v128;
        result = (v73)(v128, v20);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v132) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v66)
    {

      v21 = v125;
      v33 = v126;
      v36 = v128;
    }

    else
    {
      v67 = sub_1D1E6904C();

      v21 = v125;
      v33 = v126;
      v36 = v128;
      if ((v67 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v132) = *(v57 + v58);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v132 = *(v57 + v130[32]);
    v131 = 31;
    v135 = StaticCharacteristicsBag.int(for:)(&v131);
    if (!v135.is_nil && v135.value == 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v57, type metadata accessor for StaticService);
    v20 = v124;
    result = (*v122)(v36, v124);
LABEL_36:
    v25 = i;
  }

  if (v44 <= v37 + 1)
  {
    v46 = v37 + 1;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v44)
    {
      v55 = v20;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v64 - 8) + 56))(v33, 1, 1, v64);
      v43 = 0;
      v37 = v47;
      goto LABEL_15;
    }

    v43 = *(v39 + 8 * v45);
    ++v37;
    if (v43)
    {
      v37 = v45;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D09F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v109 = type metadata accessor for TilesFilter(0);
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v103 - v11;
  v106 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(*(v106 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v103 - v15;
  v130 = type metadata accessor for StaticService(0);
  v116 = *(v130 - 1);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x1EEE9AC00](v130);
  v123 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v103 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = &v103 - v35;
  v113 = 0;
  v37 = 0;
  v120 = a1;
  v40 = *(a1 + 64);
  v39 = a1 + 64;
  v38 = v40;
  v41 = 1 << *(v39 - 32);
  v133 = MEMORY[0x1E69E7CD0];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v117 = (v21 + 16);
  v119 = (v21 + 32);
  v128 = &v103 - v35;
  v129 = 0x80000001D1EB2F50;
  v121 = v44;
  v122 = (v21 + 8);
  v125 = v21;
  v126 = v33;
  v114 = v39;
  v124 = v20;
  for (i = v25; v43; v44 = v121)
  {
    v45 = v37;
LABEL_14:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v120;
    (*(v21 + 16))(v118, *(v120 + 48) + *(v21 + 72) * v49, v20);
    v51 = v115;
    sub_1D1D1D7E0(*(v50 + 56) + *(v116 + 72) * v49, v115, type metadata accessor for StaticService);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v53 = *(v52 + 48);
    v54 = *(v21 + 32);
    v33 = v126;
    v55 = v20;
    v54();
    sub_1D1D26328(v51, &v33[v53], type metadata accessor for StaticService);
    (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
    v25 = i;
    v36 = v128;
    v39 = v114;
LABEL_15:
    sub_1D1741A90(v33, v36, &qword_1EC643C68, &unk_1D1E764C0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v56 - 8) + 48))(v36, 1, v56) == 1)
    {

      if (v113)
      {
        v74 = v55;
        v75 = v25;
        v76 = v103;
        (*(v125 + 56))(v103, 1, 1, v55);
        v129 = 0x80000001D1EB5C70;
        v128 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC56D0);
        v78 = v77;
        static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC87F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1D1E739C0;
        v80 = *(v133 + 16);
        v81 = MEMORY[0x1E69E65A8];
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = v81;
        *(v79 + 32) = v80;
        v82 = sub_1D1E6783C();
        v84 = v83;

        v85 = v125;

        v86 = v104;
        sub_1D1741C08(v76, v104, &qword_1EC642590, qword_1D1E71260);
        v87 = *(v85 + 48);
        if (v87(v86, 1, v74) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          v88 = v87(v86, 1, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
          if (v88 != 1)
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          (*v119)(v75, v86, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
        }

        v93 = v105;
        (*v119)(v105, v75, v74);
        v94 = v106;
        v95 = (v93 + *(v106 + 20));
        v96 = v129;
        *v95 = 0xD000000000000016;
        v95[1] = v96;
        v97 = (v93 + v94[6]);
        *v97 = v128;
        v97[1] = v78;
        v98 = (v93 + v94[7]);
        *v98 = v82;
        v98[1] = v84;
        v99 = v93 + v94[8];
        *v99 = 0;
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *(v99 + 24) = -1;
        v100 = sub_1D1D26328(v93, v91, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v100);
        *(&v103 - 2) = &v133;
        v132 = v130;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v90, v89, type metadata accessor for TilesFilter);
        v101 = type metadata accessor for ClosedDoorStatusItem(0);
        v102 = v112;
        *(v112 + v101[6]) = 4;
        *(v102 + v101[7]) = 3;
        sub_1D1D26328(v91, v102, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v89, v102 + v101[5], type metadata accessor for TilesFilter);

        return (*(*(v101 - 1) + 56))(v102, 0, 1, v101);
      }

      else
      {

        v92 = type metadata accessor for ClosedDoorStatusItem(0);
        return (*(*(v92 - 8) + 56))(v112, 1, 1, v92);
      }
    }

    v57 = v123;
    sub_1D1D26328(&v36[*(v56 + 48)], v123, type metadata accessor for StaticService);
    v58 = v130[26];
    v59 = *(v57 + v58);
    if (v59 == 11 && *(v57 + v130[28]) != 53)
    {
      LOBYTE(v132) = *(v57 + v130[28]);
      v131 = 14;
      v60 = ServiceKind.rawValue.getter();
      v62 = v61;
      if (v60 == ServiceKind.rawValue.getter() && v62 == v63)
      {
      }

      else
      {
        v65 = sub_1D1E6904C();

        if ((v65 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v132 = *(v57 + v130[32]);
      v131 = 28;
      v134 = StaticCharacteristicsBag.int(for:)(&v131);
      if (!v134.is_nil && !v134.value)
      {
        v113 = 1;
        v21 = v125;
        v33 = v126;
LABEL_39:
        v70 = v111;
        v20 = v124;
        (*v117)(v111, v57, v124);
        v71 = v118;
        sub_1D1762CB8(v118, v70);
        v72 = *v122;
        (*v122)(v71, v20);
        v73 = v72;
        sub_1D1D1D890(v57, type metadata accessor for StaticService);
        v36 = v128;
        result = (v73)(v128, v20);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v132) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v66)
    {

      v21 = v125;
      v33 = v126;
      v36 = v128;
    }

    else
    {
      v67 = sub_1D1E6904C();

      v21 = v125;
      v33 = v126;
      v36 = v128;
      if ((v67 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v132) = *(v57 + v58);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v132 = *(v57 + v130[32]);
    v131 = 40;
    v135 = StaticCharacteristicsBag.int(for:)(&v131);
    if (!v135.is_nil && v135.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v57, type metadata accessor for StaticService);
    v20 = v124;
    result = (*v122)(v36, v124);
LABEL_36:
    v25 = i;
  }

  if (v44 <= v37 + 1)
  {
    v46 = v37 + 1;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v44)
    {
      v55 = v20;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v64 - 8) + 56))(v33, 1, 1, v64);
      v43 = 0;
      v37 = v47;
      goto LABEL_15;
    }

    v43 = *(v39 + 8 * v45);
    ++v37;
    if (v43)
    {
      v37 = v45;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D0AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v109 = type metadata accessor for TilesFilter(0);
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v103 - v11;
  v106 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(*(v106 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v103 - v15;
  v130 = type metadata accessor for StaticService(0);
  v116 = *(v130 - 1);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x1EEE9AC00](v130);
  v123 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v103 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v103 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = &v103 - v35;
  v113 = 0;
  v37 = 0;
  v120 = a1;
  v40 = *(a1 + 64);
  v39 = a1 + 64;
  v38 = v40;
  v41 = 1 << *(v39 - 32);
  v133 = MEMORY[0x1E69E7CD0];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v117 = (v21 + 16);
  v119 = (v21 + 32);
  v128 = &v103 - v35;
  v129 = 0x80000001D1EB3640;
  v121 = v44;
  v122 = (v21 + 8);
  v125 = v21;
  v126 = v33;
  v114 = v39;
  v124 = v20;
  for (i = v25; v43; v44 = v121)
  {
    v45 = v37;
LABEL_14:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v120;
    (*(v21 + 16))(v118, *(v120 + 48) + *(v21 + 72) * v49, v20);
    v51 = v115;
    sub_1D1D1D7E0(*(v50 + 56) + *(v116 + 72) * v49, v115, type metadata accessor for StaticService);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v53 = *(v52 + 48);
    v54 = *(v21 + 32);
    v33 = v126;
    v55 = v20;
    v54();
    sub_1D1D26328(v51, &v33[v53], type metadata accessor for StaticService);
    (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
    v25 = i;
    v36 = v128;
    v39 = v114;
LABEL_15:
    sub_1D1741A90(v33, v36, &qword_1EC643C68, &unk_1D1E764C0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v56 - 8) + 48))(v36, 1, v56) == 1)
    {

      if (v113)
      {
        v74 = v55;
        v75 = v25;
        v76 = v103;
        (*(v125 + 56))(v103, 1, 1, v55);
        v129 = 0x80000001D1EB6480;
        v128 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC55E0);
        v78 = v77;
        static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC87C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1D1E739C0;
        v80 = *(v133 + 16);
        v81 = MEMORY[0x1E69E65A8];
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = v81;
        *(v79 + 32) = v80;
        v82 = sub_1D1E6783C();
        v84 = v83;

        v85 = v125;

        v86 = v104;
        sub_1D1741C08(v76, v104, &qword_1EC642590, qword_1D1E71260);
        v87 = *(v85 + 48);
        if (v87(v86, 1, v74) == 1)
        {
          sub_1D1E66A6C();
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          v88 = v87(v86, 1, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
          if (v88 != 1)
          {
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          (*v119)(v75, v86, v74);
          v89 = v110;
          v90 = v108;
          v91 = v107;
        }

        v93 = v105;
        (*v119)(v105, v75, v74);
        v94 = v106;
        v95 = (v93 + *(v106 + 20));
        v96 = v129;
        *v95 = 0xD000000000000016;
        v95[1] = v96;
        v97 = (v93 + v94[6]);
        *v97 = v128;
        v97[1] = v78;
        v98 = (v93 + v94[7]);
        *v98 = v82;
        v98[1] = v84;
        v99 = v93 + v94[8];
        *v99 = 0;
        *(v99 + 8) = 0;
        *(v99 + 16) = 0;
        *(v99 + 24) = -1;
        v100 = sub_1D1D26328(v93, v91, type metadata accessor for IconTextValueStringDataHolder);
        MEMORY[0x1EEE9AC00](v100);
        *(&v103 - 2) = &v133;
        v132 = v130;
        sub_1D1E66C8C();
        swift_storeEnumTagMultiPayload();
        sub_1D1D26328(v90, v89, type metadata accessor for TilesFilter);
        v101 = type metadata accessor for ClosedWindowStatusItem(0);
        v102 = v112;
        *(v112 + v101[6]) = 4;
        *(v102 + v101[7]) = 3;
        sub_1D1D26328(v91, v102, type metadata accessor for IconTextValueStringDataHolder);
        sub_1D1D26328(v89, v102 + v101[5], type metadata accessor for TilesFilter);

        return (*(*(v101 - 1) + 56))(v102, 0, 1, v101);
      }

      else
      {

        v92 = type metadata accessor for ClosedWindowStatusItem(0);
        return (*(*(v92 - 8) + 56))(v112, 1, 1, v92);
      }
    }

    v57 = v123;
    sub_1D1D26328(&v36[*(v56 + 48)], v123, type metadata accessor for StaticService);
    v58 = v130[26];
    v59 = *(v57 + v58);
    if (v59 == 11 && *(v57 + v130[28]) != 53)
    {
      LOBYTE(v132) = *(v57 + v130[28]);
      v131 = 51;
      v60 = ServiceKind.rawValue.getter();
      v62 = v61;
      if (v60 == ServiceKind.rawValue.getter() && v62 == v63)
      {
      }

      else
      {
        v65 = sub_1D1E6904C();

        if ((v65 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v132 = *(v57 + v130[32]);
      v131 = 28;
      v134 = StaticCharacteristicsBag.int(for:)(&v131);
      if (!v134.is_nil && !v134.value)
      {
        v113 = 1;
        v21 = v125;
        v33 = v126;
LABEL_39:
        v70 = v111;
        v20 = v124;
        (*v117)(v111, v57, v124);
        v71 = v118;
        sub_1D1762CB8(v118, v70);
        v72 = *v122;
        (*v122)(v71, v20);
        v73 = v72;
        sub_1D1D1D890(v57, type metadata accessor for StaticService);
        v36 = v128;
        result = (v73)(v128, v20);
        goto LABEL_36;
      }
    }

LABEL_25:
    LOBYTE(v132) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v66)
    {

      v21 = v125;
      v33 = v126;
      v36 = v128;
    }

    else
    {
      v67 = sub_1D1E6904C();

      v21 = v125;
      v33 = v126;
      v36 = v128;
      if ((v67 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v132) = *(v57 + v58);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v129 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v132 = *(v57 + v130[32]);
    v131 = 40;
    v135 = StaticCharacteristicsBag.int(for:)(&v131);
    if (!v135.is_nil && v135.value < 1)
    {
      goto LABEL_39;
    }

LABEL_35:
    sub_1D1D1D890(v57, type metadata accessor for StaticService);
    v20 = v124;
    result = (*v122)(v36, v124);
LABEL_36:
    v25 = i;
  }

  if (v44 <= v37 + 1)
  {
    v46 = v37 + 1;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v45 >= v44)
    {
      v55 = v20;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      (*(*(v64 - 8) + 56))(v33, 1, 1, v64);
      v43 = 0;
      v37 = v47;
      goto LABEL_15;
    }

    v43 = *(v39 + 8 * v45);
    ++v37;
    if (v43)
    {
      v37 = v45;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRoom.room.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0BAE0, 0, 0);
}

uint64_t sub_1D1D0BAE0()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[11] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D0BBD0;
    v4 = 0;
  }

  else
  {
    v0[13] = sub_1D1E67E1C();
    v0[14] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D0C2BC;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D0BBD0()
{
  v52 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v51 = sub_1D1749970(v4);
    sub_1D1747DDC(&v51);

    v5 = v51;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[9];
  v7 = v0[6];
  v47 = v0;
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[10], v8, v7);
  v9(v6, v8, v7);
  v43 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_37:
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v48 = sub_1D1E6873C();
  }

  else
  {
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v48 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = v47;
  v42 = v5 + 32;
  v45 = v5 & 0xC000000000000001;
  v46 = (v47[7] + 8);
  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v44 = v5;
  while (1)
  {
    if (v48 == v10)
    {
      v10 = v48;
LABEL_19:
      if (!v43)
      {
        goto LABEL_20;
      }

LABEL_27:
      if (v10 == sub_1D1E6873C())
      {
        goto LABEL_28;
      }

LABEL_21:
      if (v45)
      {
        v26 = MEMORY[0x1D3891EF0](v10, v5);
      }

      else
      {
        if (v10 >= *(v49 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v26 = *(v42 + 8 * v10);
      }

      v10 = v26;
      v27 = v11[10];
      v28 = [v26 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v0 = v11;
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v31 = sub_1D174A6C4(sub_1D1778988, v30, v29);

      v32 = v11[10];
      if (v31)
      {
        v12 = *v46;
        (*v46)(v11[10], v11[6]);

        goto LABEL_32;
      }

      v33 = v11[8];
      v50 = v11[6];
      v34 = [v10 roomForEntireHome];
      v35 = [v34 uniqueIdentifier];

      sub_1D1E66A5C();
      LOBYTE(v34) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v12 = *v46;
      (*v46)(v33, v50);
      v8 = v0[10];
      if (v34)
      {
        v36 = v0[6];
        v31 = [v10 &selRef_description + 7];
        (v12)(v8, v36);

        if (v31)
        {

          v11 = v47;
          goto LABEL_32;
        }

LABEL_41:
        v37 = (v12)(v47[9], v47[6]);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v37, v38, v39);
      }

LABEL_40:
      v40 = v0[6];
      (v12)(v0[9], v40);
      (v12)(v8, v40);

      __break(1u);
      goto LABEL_41;
    }

    if (v45)
    {
      v14 = MEMORY[0x1D3891EF0](v10, v5);
    }

    else
    {
      if (v10 >= *(v49 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = *(v5 + 8 * v10 + 32);
    }

    v0 = v14;
    v15 = v11[9];
    v16 = [v14 rooms];
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v17 = sub_1D1E67C1C();

    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    v19 = sub_1D174A6C4(sub_1D1749C64, v18, v17);

    if (v19)
    {
      break;
    }

    v21 = v11[8];
    v20 = v11[9];
    v22 = v11[6];
    v23 = [v0 roomForEntireHome];
    v24 = [v23 uniqueIdentifier];

    v8 = v46;
    sub_1D1E66A5C();

    LOBYTE(v24) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    (*v46)(v21, v22);
    if (v24)
    {
      v25 = [v0 roomForEntireHome];

      v5 = v44;
      v11 = v47;
      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {

      v5 = v44;
      v11 = v47;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_36;
    }
  }

  v5 = v44;
  if (v43)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v10 != *(v49 + 16))
  {
    goto LABEL_21;
  }

LABEL_28:
  v12 = *v46;
  (*v46)(v11[10], v11[6]);

  v31 = 0;
LABEL_32:
  v11[12] = v31;
  (v12)(v11[9], v11[6]);
  v37 = sub_1D1D0C230;
  v38 = 0;
  v39 = 0;

  return MEMORY[0x1EEE6DFA0](v37, v38, v39);
}

uint64_t sub_1D1D0C230()
{
  v1 = v0[11];

  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_1D1D0C2BC()
{
  v1 = *(v0 + 112);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C354, 0, 0);
}

uint64_t sub_1D1D0C354()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C3E0, v3, v2);
}

uint64_t sub_1D1D0C3E0()
{
  v1 = *(v0 + 120);

  *(v0 + 128) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C454, 0, 0);
}

uint64_t sub_1D1D0C454()
{
  v1 = v0[13];
  v2 = v0[5];
  v0[17] = sub_1D1E66A2C();
  v0[18] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D0C4EC, v4, v3);
}

uint64_t sub_1D1D0C4EC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v4 = [v3 roomFor_];

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  v8 = v0[1];

  return v8(v4);
}

uint64_t StaticRoom.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticRoom(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D1D0C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  v64 = a1;
  v27 = sub_1D18E4158(a1, a3);
  v29 = v28;
  v65 = a2;
  v30 = sub_1D18E4158(a2, a3);
  if (v29)
  {
    if ((v31 & 1) == 0)
    {
      v32 = 0;
      return v32 & 1;
    }
  }

  else
  {
    if (v31)
    {
      v32 = 1;
      return v32 & 1;
    }

    if (v27 != v30)
    {
      v32 = v27 < v30;
      return v32 & 1;
    }
  }

  v34 = v66;
  v33 = v67;
  v35 = *(v66 + 56);
  v35(v26, 1, 1, v67);
  v35(v24, 1, 1, v33);
  v36 = *(v11 + 48);
  sub_1D1741A90(v26, v14, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v24, &v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = *(v34 + 48);
  if (v37(v14, 1, v33) == 1)
  {
    if (v37(&v14[v36], 1, v33) != 1)
    {
      sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      v32 = 0;
      return v32 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v14, v21, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v37(&v14[v36], 1, v33) == 1)
    {
      (*(v34 + 8))(v21, v33);
      sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      v32 = 1;
      return v32 & 1;
    }

    v38 = v61;
    sub_1D1741C08(&v14[v36], v61, &qword_1EC642570, &qword_1D1E6C6A0);
    v39 = *(v34 + 32);
    v40 = v63;
    v39(v63, v21, v33);
    v41 = v62;
    v39(v62, v38, v33);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v32 = sub_1D1E6696C();
      v58 = *(v34 + 8);
      v58(v41, v33);
      v58(v40, v33);
      sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      return v32 & 1;
    }

    v42 = *(v34 + 8);
    v42(v41, v33);
    v42(v40, v33);
  }

  sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
  v43 = *(type metadata accessor for StaticCameraProfile() + 20);
  v44 = (v64 + v43);
  v45 = *(v64 + v43);
  v46 = *(v64 + v43 + 8);
  v47 = (v65 + v43);
  v48 = *v47;
  v49 = v47[1];
  if (*v44 == *v47 && v46 == v49 || (v50 = *v44, v51 = v44[1], v52 = *v47, v53 = v47[1], (sub_1D1E6904C() & 1) != 0))
  {
    v54 = sub_1D1E66A1C();
    v56 = v55;
    if (v54 == sub_1D1E66A1C() && v56 == v57)
    {

      v32 = 0;
    }

    else
    {
      v32 = sub_1D1E6904C();
    }
  }

  else
  {
    v70 = v45;
    v71 = v46;
    v68 = v48;
    v69 = v49;
    sub_1D17D8EF0();
    v32 = sub_1D1E685FC() == -1;
  }

  return v32 & 1;
}

uint64_t sub_1D1D0CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - v23;
  v25 = type metadata accessor for StaticActionSet();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v29 = sub_1D18E4158(a1, a3);
  v31 = v30;
  v32 = sub_1D18E4158(a2, a3);
  if (v31)
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33)
    {
      goto LABEL_16;
    }

    v34 = v29 < v32;
    if (v29 != v32)
    {
      goto LABEL_21;
    }
  }

  v74 = a2;
  sub_1D1D1D7E0(a2, v28, type metadata accessor for StaticActionSet);
  if (*(v82 + *(v25 + 24)) == 7)
  {
    v35 = 4;
  }

  else
  {
    v35 = *(v82 + *(v25 + 24));
  }

  v36 = sub_1D18E4248(v35, &unk_1F4D5EDD8);
  v38 = v37;
  if (v28[*(v25 + 24)] == 7)
  {
    v39 = 4;
  }

  else
  {
    v39 = v28[*(v25 + 24)];
  }

  v40 = sub_1D18E4248(v39, &unk_1F4D5EDD8);
  v42 = v41;
  sub_1D1D1D890(v28, type metadata accessor for StaticActionSet);
  if (v38)
  {
    if ((v42 & 1) == 0)
    {
LABEL_14:
      v43 = 0;
      return v43 & 1;
    }

    goto LABEL_18;
  }

  if (v42)
  {
LABEL_16:
    v43 = 1;
    return v43 & 1;
  }

  v34 = v36 < v40;
  if (v36 != v40)
  {
LABEL_21:
    v43 = v34;
    return v43 & 1;
  }

LABEL_18:
  v45 = v79;
  v44 = v80;
  v46 = *(v79 + 56);
  v46(v24, 1, 1, v80);
  v46(v22, 1, 1, v44);
  v47 = *(v11 + 48);
  v48 = v24;
  v49 = v81;
  sub_1D1741A90(v48, v81, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v22, v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
  v50 = *(v45 + 48);
  if (v50(v49, 1, v44) == 1)
  {
    if (v50(v49 + v47, 1, v44) != 1)
    {
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v43 = 0;
      return v43 & 1;
    }
  }

  else
  {
    v52 = v77;
    sub_1D1741C08(v49, v77, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v50(v49 + v47, 1, v44) == 1)
    {
      (*(v45 + 8))(v52, v44);
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v43 = 1;
      return v43 & 1;
    }

    sub_1D1741C08(v49 + v47, v78, &qword_1EC642570, &qword_1D1E6C6A0);
    v53 = *(v45 + 32);
    v54 = v76;
    v53(v76, v52, v44);
    v55 = v75;
    v53(v75, v78, v44);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v43 = sub_1D1E6696C();
      v72 = *(v45 + 8);
      v72(v55, v44);
      v72(v54, v44);
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      return v43 & 1;
    }

    v56 = *(v45 + 8);
    v56(v55, v44);
    v56(v54, v44);
  }

  sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
  v57 = *(v25 + 20);
  v58 = (v82 + v57);
  v59 = *(v82 + v57);
  v60 = *(v82 + v57 + 8);
  v61 = (v74 + v57);
  v62 = *v61;
  v63 = v61[1];
  if (*v58 == *v61 && v60 == v63 || (v64 = *v58, v65 = v58[1], v66 = *v61, v67 = v61[1], (sub_1D1E6904C() & 1) != 0))
  {
    v68 = sub_1D1E66A1C();
    v70 = v69;
    if (v68 == sub_1D1E66A1C() && v70 == v71)
    {

      v43 = 0;
    }

    else
    {
      v43 = sub_1D1E6904C();
    }
  }

  else
  {
    v85 = v59;
    v86 = v60;
    v83 = v62;
    v84 = v63;
    sub_1D17D8EF0();
    v43 = sub_1D1E685FC() == -1;
  }

  return v43 & 1;
}

uint64_t sub_1D1D0D3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - v19;
  v21 = a1;
  v22 = sub_1D18E4158(a1, a3);
  v24 = v23;
  v25 = a2;
  v26 = sub_1D18E4158(a2, a3);
  if (v24)
  {
    if ((v27 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    if (v27)
    {
      v28 = 1;
      return v28 & 1;
    }

    if (v22 != v26)
    {
      v28 = v22 < v26;
      return v28 & 1;
    }
  }

  v59 = type metadata accessor for StaticService(0);
  v29 = *(v59 + 56);
  v30 = *(v17 + 48);
  v31 = v21;
  sub_1D1741C08(v21 + v29, v20, &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v25 + v29;
  v33 = v25;
  sub_1D1741C08(v32, &v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
  v35 = v63;
  v34 = v64;
  v36 = *(v63 + 48);
  if (v36(v20, 1, v64) == 1)
  {
    if (v36(&v20[v30], 1, v34) != 1)
    {
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v20, v16, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v36(&v20[v30], 1, v34) == 1)
    {
      (*(v35 + 8))(v16, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 1;
      return v28 & 1;
    }

    v57 = v31;
    v58 = v33;
    v37 = v60;
    sub_1D1741C08(&v20[v30], v60, &qword_1EC642570, &qword_1D1E6C6A0);
    v38 = *(v35 + 32);
    v39 = v62;
    v38(v62, v16, v34);
    v40 = v61;
    v38(v61, v37, v34);
    v41 = v40;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v28 = sub_1D1E6696C();
      v55 = *(v35 + 8);
      v55(v41, v34);
      v55(v39, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      return v28 & 1;
    }

    v42 = *(v35 + 8);
    v42(v40, v34);
    v42(v39, v34);
    v31 = v57;
    v33 = v58;
  }

  sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
  v43 = *(v59 + 20);
  v44 = *(v31 + v43);
  v45 = *(v31 + v43 + 8);
  v46 = (v33 + v43);
  v47 = *v46;
  v48 = v46[1];
  if (v44 == *v46 && v45 == v48 || (v49 = *v46, v50 = v46[1], (sub_1D1E6904C() & 1) != 0))
  {
    v51 = sub_1D1E66A1C();
    v53 = v52;
    if (v51 == sub_1D1E66A1C() && v53 == v54)
    {

      v28 = 0;
    }

    else
    {
      v28 = sub_1D1E6904C();
    }
  }

  else
  {
    v67 = v44;
    v68 = v45;
    v65 = v47;
    v66 = v48;
    sub_1D17D8EF0();
    v28 = sub_1D1E685FC() == -1;
  }

  return v28 & 1;
}

uint64_t sub_1D1D0D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - v19;
  v21 = a1;
  v22 = sub_1D18E4158(a1, a3);
  v24 = v23;
  v25 = a2;
  v26 = sub_1D18E4158(a2, a3);
  if (v24)
  {
    if ((v27 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    if (v27)
    {
      v28 = 1;
      return v28 & 1;
    }

    if (v22 != v26)
    {
      v28 = v22 < v26;
      return v28 & 1;
    }
  }

  v59 = type metadata accessor for StaticHome();
  v29 = *(v59 + 24);
  v30 = *(v17 + 48);
  v31 = v21;
  sub_1D1741C08(v21 + v29, v20, &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v25 + v29;
  v33 = v25;
  sub_1D1741C08(v32, &v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
  v35 = v63;
  v34 = v64;
  v36 = *(v63 + 48);
  if (v36(v20, 1, v64) == 1)
  {
    if (v36(&v20[v30], 1, v34) != 1)
    {
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v20, v16, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v36(&v20[v30], 1, v34) == 1)
    {
      (*(v35 + 8))(v16, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 1;
      return v28 & 1;
    }

    v57 = v31;
    v58 = v33;
    v37 = v60;
    sub_1D1741C08(&v20[v30], v60, &qword_1EC642570, &qword_1D1E6C6A0);
    v38 = *(v35 + 32);
    v39 = v62;
    v38(v62, v16, v34);
    v40 = v61;
    v38(v61, v37, v34);
    v41 = v40;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v28 = sub_1D1E6696C();
      v55 = *(v35 + 8);
      v55(v41, v34);
      v55(v39, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      return v28 & 1;
    }

    v42 = *(v35 + 8);
    v42(v40, v34);
    v42(v39, v34);
    v31 = v57;
    v33 = v58;
  }

  sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
  v43 = *(v59 + 20);
  v44 = *(v31 + v43);
  v45 = *(v31 + v43 + 8);
  v46 = (v33 + v43);
  v47 = *v46;
  v48 = v46[1];
  if (v44 == *v46 && v45 == v48 || (v49 = *v46, v50 = v46[1], (sub_1D1E6904C() & 1) != 0))
  {
    v51 = sub_1D1E66A1C();
    v53 = v52;
    if (v51 == sub_1D1E66A1C() && v53 == v54)
    {

      v28 = 0;
    }

    else
    {
      v28 = sub_1D1E6904C();
    }
  }

  else
  {
    v67 = v44;
    v68 = v45;
    v65 = v47;
    v66 = v48;
    sub_1D17D8EF0();
    v28 = sub_1D1E685FC() == -1;
  }

  return v28 & 1;
}

uint64_t sub_1D1D0DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - v23;
  v25 = type metadata accessor for StaticActionSet();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v29 = sub_1D18E4158(a1, a3);
  v31 = v30;
  v32 = sub_1D18E4158(a2, a3);
  if (v31)
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33)
    {
      goto LABEL_16;
    }

    v34 = v29 < v32;
    if (v29 != v32)
    {
      goto LABEL_21;
    }
  }

  v74 = a2;
  sub_1D1D1D7E0(a2, v28, type metadata accessor for StaticActionSet);
  if (*(v82 + *(v25 + 24)) == 7)
  {
    v35 = 4;
  }

  else
  {
    v35 = *(v82 + *(v25 + 24));
  }

  v36 = sub_1D18E4248(v35, &unk_1F4D660C0);
  v38 = v37;
  if (v28[*(v25 + 24)] == 7)
  {
    v39 = 4;
  }

  else
  {
    v39 = v28[*(v25 + 24)];
  }

  v40 = sub_1D18E4248(v39, &unk_1F4D660C0);
  v42 = v41;
  sub_1D1D1D890(v28, type metadata accessor for StaticActionSet);
  if (v38)
  {
    if ((v42 & 1) == 0)
    {
LABEL_14:
      v43 = 0;
      return v43 & 1;
    }

    goto LABEL_18;
  }

  if (v42)
  {
LABEL_16:
    v43 = 1;
    return v43 & 1;
  }

  v34 = v36 < v40;
  if (v36 != v40)
  {
LABEL_21:
    v43 = v34;
    return v43 & 1;
  }

LABEL_18:
  v45 = v79;
  v44 = v80;
  v46 = *(v79 + 56);
  v46(v24, 1, 1, v80);
  v46(v22, 1, 1, v44);
  v47 = *(v11 + 48);
  v48 = v24;
  v49 = v81;
  sub_1D1741A90(v48, v81, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v22, v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
  v50 = *(v45 + 48);
  if (v50(v49, 1, v44) == 1)
  {
    if (v50(v49 + v47, 1, v44) != 1)
    {
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v43 = 0;
      return v43 & 1;
    }
  }

  else
  {
    v52 = v77;
    sub_1D1741C08(v49, v77, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v50(v49 + v47, 1, v44) == 1)
    {
      (*(v45 + 8))(v52, v44);
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v43 = 1;
      return v43 & 1;
    }

    sub_1D1741C08(v49 + v47, v78, &qword_1EC642570, &qword_1D1E6C6A0);
    v53 = *(v45 + 32);
    v54 = v76;
    v53(v76, v52, v44);
    v55 = v75;
    v53(v75, v78, v44);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v43 = sub_1D1E6696C();
      v72 = *(v45 + 8);
      v72(v55, v44);
      v72(v54, v44);
      sub_1D1741A30(v49 + v47, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      return v43 & 1;
    }

    v56 = *(v45 + 8);
    v56(v55, v44);
    v56(v54, v44);
  }

  sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
  v57 = *(v25 + 20);
  v58 = (v82 + v57);
  v59 = *(v82 + v57);
  v60 = *(v82 + v57 + 8);
  v61 = (v74 + v57);
  v62 = *v61;
  v63 = v61[1];
  if (*v58 == *v61 && v60 == v63 || (v64 = *v58, v65 = v58[1], v66 = *v61, v67 = v61[1], (sub_1D1E6904C() & 1) != 0))
  {
    v68 = sub_1D1E66A1C();
    v70 = v69;
    if (v68 == sub_1D1E66A1C() && v70 == v71)
    {

      v43 = 0;
    }

    else
    {
      v43 = sub_1D1E6904C();
    }
  }

  else
  {
    v85 = v59;
    v86 = v60;
    v83 = v62;
    v84 = v63;
    sub_1D17D8EF0();
    v43 = sub_1D1E685FC() == -1;
  }

  return v43 & 1;
}

uint64_t sub_1D1D0E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - v19;
  v21 = a1;
  v22 = sub_1D18E4158(a1, a3);
  v24 = v23;
  v25 = a2;
  v26 = sub_1D18E4158(a2, a3);
  if (v24)
  {
    if ((v27 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    if (v27)
    {
      v28 = 1;
      return v28 & 1;
    }

    if (v22 != v26)
    {
      v28 = v22 < v26;
      return v28 & 1;
    }
  }

  v59 = type metadata accessor for StaticRoom(0);
  v29 = *(v59 + 24);
  v30 = *(v17 + 48);
  v31 = v21;
  sub_1D1741C08(v21 + v29, v20, &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v25 + v29;
  v33 = v25;
  sub_1D1741C08(v32, &v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
  v35 = v63;
  v34 = v64;
  v36 = *(v63 + 48);
  if (v36(v20, 1, v64) == 1)
  {
    if (v36(&v20[v30], 1, v34) != 1)
    {
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v20, v16, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v36(&v20[v30], 1, v34) == 1)
    {
      (*(v35 + 8))(v16, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 1;
      return v28 & 1;
    }

    v57 = v31;
    v58 = v33;
    v37 = v60;
    sub_1D1741C08(&v20[v30], v60, &qword_1EC642570, &qword_1D1E6C6A0);
    v38 = *(v35 + 32);
    v39 = v62;
    v38(v62, v16, v34);
    v40 = v61;
    v38(v61, v37, v34);
    v41 = v40;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v28 = sub_1D1E6696C();
      v55 = *(v35 + 8);
      v55(v41, v34);
      v55(v39, v34);
      sub_1D1741A30(&v20[v30], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      return v28 & 1;
    }

    v42 = *(v35 + 8);
    v42(v40, v34);
    v42(v39, v34);
    v31 = v57;
    v33 = v58;
  }

  sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
  v43 = *(v59 + 20);
  v44 = *(v31 + v43);
  v45 = *(v31 + v43 + 8);
  v46 = (v33 + v43);
  v47 = *v46;
  v48 = v46[1];
  if (v44 == *v46 && v45 == v48 || (v49 = *v46, v50 = v46[1], (sub_1D1E6904C() & 1) != 0))
  {
    v51 = sub_1D1E66A1C();
    v53 = v52;
    if (v51 == sub_1D1E66A1C() && v53 == v54)
    {

      v28 = 0;
    }

    else
    {
      v28 = sub_1D1E6904C();
    }
  }

  else
  {
    v67 = v44;
    v68 = v45;
    v65 = v47;
    v66 = v48;
    sub_1D17D8EF0();
    v28 = sub_1D1E685FC() == -1;
  }

  return v28 & 1;
}

uint64_t sub_1D1D0EC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = v66[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  v64 = a1;
  v27 = sub_1D18E4158(a1, a3);
  v29 = v28;
  v65 = a2;
  v30 = sub_1D18E4158(a2, a3);
  if (v29)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v31)
    {
      v32 = 1;
      return v32 & 1;
    }

    if (v27 != v30)
    {
      v32 = v27 < v30;
      return v32 & 1;
    }
  }

  v34 = v66;
  v33 = v67;
  v35 = v66[7];
  v35(v26, 1, 1, v67);
  v35(v24, 1, 1, v33);
  v36 = *(v11 + 48);
  sub_1D1741A90(v26, v14, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v24, &v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = v34[6];
  if (v37(v14, 1, v33) == 1)
  {
    if (v37(&v14[v36], 1, v33) != 1)
    {
      sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_21:
      v32 = 0;
      return v32 & 1;
    }

LABEL_15:
    sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
    v43 = *(type metadata accessor for StaticResident() + 20);
    v44 = (v64 + v43);
    v45 = *(v64 + v43);
    v46 = *(v64 + v43 + 8);
    v47 = (v65 + v43);
    v48 = *v47;
    v49 = v47[1];
    if (*v44 != *v47 || v46 != v49)
    {
      v50 = *v44;
      v51 = v44[1];
      v52 = *v47;
      v53 = v47[1];
      if ((sub_1D1E6904C() & 1) == 0)
      {
        v70 = v45;
        v71 = v46;
        v68 = v48;
        v69 = v49;
        sub_1D17D8EF0();
        v32 = sub_1D1E685FC() == -1;
        return v32 & 1;
      }
    }

    v54 = sub_1D1E66A1C();
    v56 = v55;
    if (v54 != sub_1D1E66A1C() || v56 != v57)
    {
      v32 = sub_1D1E6904C();

      return v32 & 1;
    }

    goto LABEL_21;
  }

  sub_1D1741C08(v14, v21, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v37(&v14[v36], 1, v33) != 1)
  {
    v38 = v61;
    sub_1D1741C08(&v14[v36], v61, &qword_1EC642570, &qword_1D1E6C6A0);
    v39 = v34[4];
    v40 = v63;
    v39(v63, v21, v33);
    v41 = v62;
    v39(v62, v38, v33);
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v32 = sub_1D1E6696C();
      v59 = v34[1];
      v59(v41, v33);
      v59(v40, v33);
      sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      return v32 & 1;
    }

    v42 = v34[1];
    v42(v41, v33);
    v42(v40, v33);
    goto LABEL_15;
  }

  (v34[1])(v21, v33);
  sub_1D1741A30(&v14[v36], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = 1;
  return v32 & 1;
}

uint64_t static RoomType.orderedStaticRoomTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F0, &unk_1D1EA26E0);
  v0 = *(type metadata accessor for RoomType(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E6F900;
  v4 = v3 + v2;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 2, 4, v5);
  v6(v4 + v1, 1, 4, v5);
  v6(v4 + 2 * v1, 3, 4, v5);
  return v3;
}

uint64_t RoomType.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoomType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D1D7E0(v1, v10, type metadata accessor for RoomType);
  v11 = (*(v3 + 48))(v10, 4, v2);
  if (v11 <= 1)
  {
    if (v11)
    {
      return 0x655373656E656373;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = sub_1D1E66A1C();
      (*(v3 + 8))(v6, v2);
      return v13;
    }
  }

  else if (v11 == 2)
  {
    return 0x53736172656D6163;
  }

  else if (v11 == 3)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x526E776F6E6B6E75;
  }
}

uint64_t StaticRoom.copyReplacing(id:name:dateAdded:isDefaultRoom:staticZones:homeId:staticAccessoriesDictionary:staticActionSetsDictionary:staticCameraProfilesDictionary:staticMediaSystemsDictionary:staticMediaProfilesDictionary:staticServiceGroupsDictionary:staticServicesDictionary:actionSetsSortOrder:servicesSortOrder:roomServicesSortOrderGroupedByCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v102 = a8;
  v93 = a7;
  v96 = a6;
  v97 = a2;
  v103 = a5;
  v90 = a4;
  v98 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v81 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v91 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v81 - v32;
  v34 = sub_1D1E66A7C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v99 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v81 - v39;
  v41 = a1;
  v43 = v42;
  sub_1D1741C08(v41, v33, &qword_1EC642590, qword_1D1E71260);
  v44 = *(v35 + 48);
  v45 = v44(v33, 1, v43);
  v95 = v35;
  v92 = v44;
  if (v45 == 1)
  {
    v46 = v19;
    (*(v35 + 16))(v40, v19, v43);
    v47 = v40;
    if (v44(v33, 1, v43) != 1)
    {
      sub_1D1741A30(v33, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v46 = v19;
    (*(v35 + 32))(v40, v33, v43);
    v47 = v40;
  }

  v100 = v43;
  v48 = v91;
  if (v98)
  {
    v94 = v98;
  }

  else
  {
    v49 = (v46 + *(type metadata accessor for StaticRoom(0) + 20));
    v50 = v49[1];
    v97 = *v49;
    v94 = v50;
  }

  sub_1D1741C08(v90, v26, &qword_1EC642570, &qword_1D1E6C6A0);
  v51 = sub_1D1E669FC();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v26, 1, v51) == 1)
  {
    v54 = type metadata accessor for StaticRoom(0);
    sub_1D1741C08(v46 + *(v54 + 24), v101, &qword_1EC642570, &qword_1D1E6C6A0);
    v55 = v53(v26, 1, v51);

    v57 = v95;
    v56 = v96;
    if (v55 != 1)
    {
      sub_1D1741A30(v26, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v58 = v101;
    (*(v52 + 32))(v101, v26, v51);
    (*(v52 + 56))(v58, 0, 1, v51);

    v57 = v95;
    v56 = v96;
  }

  v59 = v100;
  v60 = v92;
  if (v103 == 2)
  {
    v103 = *(v46 + *(type metadata accessor for StaticRoom(0) + 28));
  }

  v61 = v56;
  if (!v56)
  {
    v61 = *(v46 + *(type metadata accessor for StaticRoom(0) + 32));
  }

  sub_1D1741C08(v93, v48, &qword_1EC642590, qword_1D1E71260);
  if (v60(v48, 1, v59) == 1)
  {
    v62 = type metadata accessor for StaticRoom(0);
    (*(v57 + 16))(v99, v46 + *(v62 + 36), v59);
    v63 = v60(v48, 1, v59);

    if (v63 != 1)
    {
      sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v57 + 32))(v99, v48, v59);
  }

  if (v102)
  {
    v90 = v102;
    v64 = a11;
    if (a10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v90 = *(v46 + *(type metadata accessor for StaticRoom(0) + 40));

    v64 = a11;
    if (a10)
    {
LABEL_22:
      v88 = a10;
      v65 = a12;
      if (v64)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  v88 = *(v46 + *(type metadata accessor for StaticRoom(0) + 44));

  v65 = a12;
  if (v64)
  {
LABEL_23:
    v86 = v64;
    v66 = a13;
    if (v65)
    {
      goto LABEL_24;
    }

LABEL_29:
    v85 = *(v46 + *(type metadata accessor for StaticRoom(0) + 52));

    v67 = a14;
    if (v66)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_28:
  v86 = *(v46 + *(type metadata accessor for StaticRoom(0) + 48));

  v66 = a13;
  if (!v65)
  {
    goto LABEL_29;
  }

LABEL_24:
  v85 = v65;
  v67 = a14;
  if (v66)
  {
LABEL_25:
    v84 = v66;
    goto LABEL_31;
  }

LABEL_30:
  v84 = *(v46 + *(type metadata accessor for StaticRoom(0) + 56));

LABEL_31:
  v68 = a15;
  v98 = a15;
  if (v67)
  {
    v83 = v67;
  }

  else
  {
    v83 = *(v46 + *(type metadata accessor for StaticRoom(0) + 60));

    v68 = v98;
  }

  v69 = a16;
  v96 = a16;
  v93 = a10;
  if (v68)
  {
    v82 = v68;
  }

  else
  {
    v82 = *(v46 + *(type metadata accessor for StaticRoom(0) + 64));

    v69 = v96;
  }

  v91 = v65;
  v87 = v67;
  if (v69)
  {
    v81 = v69;
  }

  else
  {
    v81 = *(v46 + *(type metadata accessor for StaticRoom(0) + 68));
  }

  v70 = v61;
  if (a17)
  {
    v71 = a17;
  }

  else
  {
    v71 = *(v46 + *(type metadata accessor for StaticRoom(0) + 72));
  }

  v89 = v66;
  v92 = v64;
  if (a18)
  {
    v72 = a18;
  }

  else
  {
    v72 = *(v46 + *(type metadata accessor for StaticRoom(0) + 76));
  }

  v73 = *(v57 + 32);
  v74 = v100;
  v73(a9, v47, v100);
  v75 = type metadata accessor for StaticRoom(0);
  v76 = (a9 + v75[5]);
  v77 = v94;
  *v76 = v97;
  v76[1] = v77;
  sub_1D1741A90(v101, a9 + v75[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v75[7]) = v103 & 1;
  *(a9 + v75[8]) = v70;
  v73(a9 + v75[9], v99, v74);
  *(a9 + v75[10]) = v90;
  *(a9 + v75[11]) = v88;
  v78 = v85;
  *(a9 + v75[12]) = v86;
  *(a9 + v75[13]) = v78;
  v79 = v83;
  *(a9 + v75[14]) = v84;
  *(a9 + v75[15]) = v79;
  *(a9 + v75[16]) = v82;
  *(a9 + v75[17]) = v81;
  *(a9 + v75[18]) = v71;
  *(a9 + v75[19]) = v72;
}

uint64_t StaticRoom.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticRoom.staticZones.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 32));
}

uint64_t StaticRoom.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticRoom(0) + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticRoom.staticAccessoriesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 40));
}

uint64_t StaticRoom.staticActionSetsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 44));
}

uint64_t StaticRoom.staticCameraProfilesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 48));
}

uint64_t StaticRoom.staticMediaSystemsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 52));
}

uint64_t StaticRoom.staticMediaProfilesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 56));
}

uint64_t StaticRoom.staticServiceGroupsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 60));
}

uint64_t StaticRoom.staticServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 64));
}

uint64_t StaticRoom.actionSetsSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 68));
}

uint64_t StaticRoom.servicesSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 72));
}

uint64_t StaticRoom.roomServicesSortOrderGroupedByCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 76));
}

unint64_t sub_1D1D101A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6564644165746164;
      break;
    case 3:
      result = 0x6C75616665447369;
      break;
    case 4:
      result = 0x6F5A636974617473;
      break;
    case 5:
      result = 0x6449656D6F68;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1D10390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D25380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D103B8(uint64_t a1)
{
  v2 = sub_1D1D25034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D103F4(uint64_t a1)
{
  v2 = sub_1D1D25034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRoom.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAB0, &qword_1D1EA7E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D25034();
  sub_1D1E6930C();
  LOBYTE(v22) = 0;
  sub_1D1E66A7C();
  sub_1D1D1D848(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticRoom(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v22) = 1;
    sub_1D1E68ECC();
    v20 = v11;
    v15 = *(v11 + 24);
    LOBYTE(v22) = 2;
    sub_1D1E669FC();
    sub_1D1D1D848(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v16 = v20;
    v17 = *(v3 + v20[7]);
    LOBYTE(v22) = 3;
    sub_1D1E68EDC();
    v22 = *(v3 + v16[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
    sub_1D1D251E8(&qword_1EC64DAC8, &qword_1EC64CD08);
    sub_1D1E68E5C();
    v18 = v16[9];
    LOBYTE(v22) = 5;
    sub_1D1E68F1C();
    v22 = *(v3 + v16[10]);
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B86AB4();
    sub_1D1E68F1C();
    v22 = *(v3 + v16[11]);
    v21 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CBE964();
    sub_1D1E68F1C();
    v22 = *(v3 + v16[12]);
    v21 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CBEA50();
    sub_1D1E68F1C();
    v22 = *(v3 + v16[13]);
    v21 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CBEB3C();
    sub_1D1E68F1C();
    v22 = *(v3 + v16[14]);
    v21 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CBEC28();
    sub_1D1E68F1C();
    v22 = *(v3 + v20[15]);
    v21 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v22 = *(v3 + v20[16]);
    v21 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v22 = *(v3 + v20[17]);
    v21 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D25088(&qword_1EC644D58, &qword_1EE07B258);
    sub_1D1E68F1C();
    v22 = *(v3 + v20[18]);
    v21 = 14;
    sub_1D1E68F1C();
    v22 = *(v3 + v20[19]);
    v21 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
    sub_1D1D25124();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticRoom.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v19 = type metadata accessor for StaticRoom(0);
  v20 = (v2 + *(v19 + 20));
  v21 = *v20;
  v22 = v20[1];
  sub_1D1E678EC();
  v47 = v19;
  sub_1D1741C08(v2 + *(v19 + 24), v18, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1D1E6922C();
    sub_1D1D1D848(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v11 + 8))(v14, v10);
  }

  v23 = v47;
  v24 = *(v2 + v47[7]);
  sub_1D1E6922C();
  v25 = *(v2 + v23[8]);
  sub_1D1E6922C();
  if (v25)
  {
    sub_1D176F198(a1, v25);
  }

  v26 = v47;
  v27 = v2 + v47[9];
  sub_1D1E676EC();
  sub_1D1859F70(a1, *(v2 + v26[10]));
  sub_1D185EA44(a1, *(v2 + v26[11]));
  sub_1D185E4C8(a1, *(v2 + v26[12]));
  sub_1D185DF4C(a1, *(v2 + v26[13]));
  sub_1D185D9D0(a1, *(v2 + v26[14]));
  sub_1D1859478(a1, *(v2 + v26[15]));
  sub_1D18599F4(a1, *(v2 + v26[16]));
  v28 = v26[17];
  v46 = v2;
  v29 = *(v2 + v28);
  MEMORY[0x1D3892850](*(v29 + 16));
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v45 + 16);
    v32 = v29 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v33 = *(v45 + 72);
    v34 = (v45 + 8);
    do
    {
      v31(v9, v32, v4);
      sub_1D1E676EC();
      (*v34)(v9, v4);
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  v35 = *(v46 + v47[18]);
  MEMORY[0x1D3892850](*(v35 + 16));
  v36 = *(v35 + 16);
  v37 = a1;
  v38 = v44;
  if (v36)
  {
    v39 = *(v45 + 16);
    v40 = v35 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v41 = *(v45 + 72);
    v42 = (v45 + 8);
    do
    {
      v39(v38, v40, v4);
      sub_1D1E676EC();
      (*v42)(v38, v4);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  return sub_1D186058C(v37, *(v46 + v47[19]));
}

uint64_t StaticRoom.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v57 - v5;
  v6 = sub_1D1E66A7C();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAE0, &qword_1D1EA7E68);
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = type metadata accessor for StaticRoom(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D25034();
  v68 = v15;
  v21 = v69;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v59 = v10;
  v60 = v16;
  v61 = a1;
  v69 = v19;
  LOBYTE(v71) = 0;
  sub_1D1D1D848(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v23 = v6;
  v24 = (v64 + 32);
  v25 = *(v64 + 32);
  v26 = v69;
  v25(v69, v67, v23);
  LOBYTE(v71) = 1;
  v27 = sub_1D1E68D2C();
  v58 = v23;
  v57 = v25;
  v67 = v24;
  v28 = v60;
  v29 = &v26[v60[5]];
  *v29 = v27;
  v29[1] = v30;
  sub_1D1E669FC();
  LOBYTE(v71) = 2;
  sub_1D1D1D848(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  v31 = v63;
  sub_1D1E68CBC();
  sub_1D1741A90(v31, &v26[v28[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v71) = 3;
  v26[v28[7]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAC0, &qword_1D1EA7E58);
  v70 = 4;
  sub_1D1D251E8(&qword_1EC64DAE8, &qword_1EC64CDF0);
  sub_1D1E68CBC();
  *&v26[v28[8]] = v71;
  LOBYTE(v71) = 5;
  v48 = v59;
  sub_1D1E68D7C();
  v57(&v26[v28[9]], v48, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v70 = 6;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  *&v26[v28[10]] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
  v70 = 7;
  sub_1D1CBF3B4();
  sub_1D1E68D7C();
  *&v26[v60[11]] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
  v70 = 8;
  sub_1D1CBF4A0();
  sub_1D1E68D7C();
  v67 = 0;
  *&v69[v60[12]] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
  v70 = 9;
  sub_1D1CBF58C();
  v49 = v67;
  sub_1D1E68D7C();
  v67 = v49;
  if (v49)
  {
    (*(v65 + 8))(v68, v66);
    LODWORD(v59) = 0;
    LODWORD(v62) = 0;
    LODWORD(v63) = 0;
    LODWORD(v65) = 0;
    LODWORD(v66) = 0;
    LODWORD(v68) = 0;
    LODWORD(v57) = 1;
  }

  else
  {
    *&v69[v60[13]] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    v70 = 10;
    sub_1D1CBF678();
    v50 = v67;
    sub_1D1E68D7C();
    v67 = v50;
    if (v50)
    {
      (*(v65 + 8))(v68, v66);
      LODWORD(v62) = 0;
      LODWORD(v63) = 0;
      LODWORD(v65) = 0;
      LODWORD(v66) = 0;
      LODWORD(v68) = 0;
      LODWORD(v57) = 1;
      LODWORD(v59) = 1;
    }

    else
    {
      *&v69[v60[14]] = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
      v70 = 11;
      sub_1D1B86E64();
      v51 = v67;
      sub_1D1E68D7C();
      v67 = v51;
      if (v51)
      {
        (*(v65 + 8))(v68, v66);
        LODWORD(v63) = 0;
        LODWORD(v65) = 0;
        LODWORD(v66) = 0;
        LODWORD(v68) = 0;
        LODWORD(v57) = 1;
        LODWORD(v59) = 1;
        LODWORD(v62) = 1;
      }

      else
      {
        *&v69[v60[15]] = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
        v70 = 12;
        sub_1D1B43CAC();
        v52 = v67;
        sub_1D1E68D7C();
        v67 = v52;
        if (v52)
        {
          (*(v65 + 8))(v68, v66);
          LODWORD(v65) = 0;
          LODWORD(v66) = 0;
          LODWORD(v68) = 0;
          LODWORD(v57) = 1;
          LODWORD(v59) = 1;
          LODWORD(v62) = 1;
          LODWORD(v63) = 1;
        }

        else
        {
          *&v69[v60[16]] = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
          v70 = 13;
          sub_1D1D25088(&qword_1EC644DA0, &qword_1EC644B20);
          v53 = v67;
          sub_1D1E68D7C();
          v67 = v53;
          if (v53)
          {
            (*(v65 + 8))(v68, v66);
            LODWORD(v66) = 0;
            LODWORD(v68) = 0;
            LODWORD(v57) = 1;
            LODWORD(v59) = 1;
            LODWORD(v62) = 1;
            LODWORD(v63) = 1;
            LODWORD(v65) = 1;
          }

          else
          {
            *&v69[v60[17]] = v71;
            v70 = 14;
            v54 = v67;
            sub_1D1E68D7C();
            v67 = v54;
            if (v54)
            {
              (*(v65 + 8))(v68, v66);
              LODWORD(v68) = 0;
              LODWORD(v57) = 1;
              LODWORD(v59) = 1;
              LODWORD(v62) = 1;
              LODWORD(v63) = 1;
              LODWORD(v65) = 1;
              LODWORD(v66) = 1;
            }

            else
            {
              *&v69[v60[18]] = v71;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAD0, &qword_1D1EA7E60);
              v70 = 15;
              sub_1D1D25284();
              v55 = v67;
              sub_1D1E68D7C();
              v67 = v55;
              if (!v55)
              {
                (*(v65 + 8))(v68, v66);
                v56 = v69;
                *&v69[v60[19]] = v71;
                sub_1D1D1D7E0(v56, v62, type metadata accessor for StaticRoom);
                __swift_destroy_boxed_opaque_existential_1(v61);
                return sub_1D1D1D890(v56, type metadata accessor for StaticRoom);
              }

              (*(v65 + 8))(v68, v66);
              LODWORD(v57) = 1;
              LODWORD(v59) = 1;
              LODWORD(v62) = 1;
              LODWORD(v63) = 1;
              LODWORD(v65) = 1;
              LODWORD(v66) = 1;
              LODWORD(v68) = 1;
            }
          }
        }
      }
    }
  }

  v32 = v64;
  __swift_destroy_boxed_opaque_existential_1(v61);
  v33 = *(v32 + 8);
  v34 = v69;
  v33(v69, v58);
  v41 = *&v34[v60[5] + 8];

  v35 = v60;
  v36 = v69;
  sub_1D1741A30(&v69[v60[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  v42 = *&v36[v35[8]];

  v33(&v36[v35[9]], v58);
  v43 = *&v36[v35[10]];

  v37 = *&v36[v35[11]];

  if (v57)
  {
    v44 = *&v36[v35[12]];

    if (v59)
    {
LABEL_7:
      v38 = *&v36[v35[13]];

      if ((v62 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if (v59)
  {
    goto LABEL_7;
  }

  if (!v62)
  {
LABEL_8:
    if (v63)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v45 = *&v36[v35[14]];

  if (v63)
  {
LABEL_9:
    v39 = *&v36[v35[15]];

    if ((v65 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v65)
  {
LABEL_10:
    if (v66)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v46 = *&v36[v35[16]];

  if (v66)
  {
LABEL_11:
    v40 = *&v36[v35[17]];

    if (v68)
    {
      goto LABEL_19;
    }

    return result;
  }

LABEL_18:
  if (v68)
  {
LABEL_19:
    v47 = *&v36[v35[18]];
  }

  return result;
}

uint64_t StaticRoom.staticAccessories.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 40));

  return sub_1D1781AF4(v2);
}

uint64_t StaticRoom.staticActionSets.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 44));

  return sub_1D1782F48(v2);
}

uint64_t StaticRoom.staticCameraProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 48));

  return sub_1D1781428(v2);
}

uint64_t StaticRoom.staticMediaSystems.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 52));

  return sub_1D17818B0(v2);
}

uint64_t StaticRoom.staticMediaProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 56));

  return sub_1D178166C(v2);
}

uint64_t StaticRoom.staticServiceGroups.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 60));

  return sub_1D17821C0(v2);
}

uint64_t StaticRoom.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticRoom(0) + 64));

  return sub_1D1781D38(v2);
}

uint64_t RoomType.id.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoomType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D1D7E0(v1, v10, type metadata accessor for RoomType);
  v11 = (*(v3 + 48))(v10, 4, v2);
  if (v11 <= 1)
  {
    if (v11)
    {
      return 0x65536E6F69746361;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = sub_1D1E66A1C();
      (*(v3 + 8))(v6, v2);
      return v13;
    }
  }

  else if (v11 == 2)
  {
    return 0x52736172656D6163;
  }

  else if (v11 == 3)
  {
    return 0x657469726F766166;
  }

  else
  {
    return 0x526E776F6E6B6E75;
  }
}

uint64_t RoomType.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoomType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D1D7E0(v0, v9, type metadata accessor for RoomType);
  v10 = (*(v2 + 48))(v9, 4, v1);
  if (v10 <= 1)
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1D3892850](4);
      sub_1D1D1D848(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      return (*(v2 + 8))(v5, v1);
    }

    v11 = 0;
  }

  else if (v10 == 2)
  {
    v11 = 1;
  }

  else if (v10 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  return MEMORY[0x1D3892850](v11);
}

uint64_t sub_1D1D12634(void (*a1)(_BYTE *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D12694(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D126F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D1273C@<X0>(uint64_t *a1@<X8>)
{
  result = RoomType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *StaticRoom.orderedStaticActionSets.getter()
{
  v1 = type metadata accessor for StaticRoom(0);
  v2 = *(v0 + *(v1 + 44));

  v4 = sub_1D1782F48(v3);
  v5 = v4;
  v6 = *(v0 + *(v1 + 68));
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_1D1804318(*(v4 + 16), 0);
  v9 = *(type metadata accessor for StaticActionSet() - 8);
  v10 = sub_1D1806238(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v5);

  sub_1D1716918();
  if (v10 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = v8;

  sub_1D1CC1BF4(&v12, v6);

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t StaticRoom.orderedVisibleStaticActionSets(filterCategory:forDashboard:)(unsigned __int8 *a1, int a2)
{
  v48 = a2;
  v46 = type metadata accessor for StaticActionSet();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v46);
  v50 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = v43 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v43 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - v13;
  v49 = *a1;
  v15 = type metadata accessor for StaticRoom(0);
  v16 = *(v2 + *(v15 + 44));

  v18 = sub_1D1782F48(v17);
  v19 = v18;
  v20 = *(v2 + *(v15 + 68));
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = sub_1D1804318(*(v18 + 16), 0);
    v23 = sub_1D1806238(v51, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v21, v19);
    v47 = v51[2];
    v43[1] = v51[4];
    v44 = v51[3];

    sub_1D1716918();
    if (v23 == v21)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v51[0] = v22;

  sub_1D1CC1BF4(v51, v20);

  swift_bridgeObjectRelease_n();
  v24 = v51[0];
  v25 = v45;
  v47 = v51[0][2];
  if (v47)
  {
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    v44 = v12;
    while (v26 < v24[2])
    {
      v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v29 = *(v4 + 72);
      sub_1D1D1D7E0(v24 + v28 + v29 * v26, v14, type metadata accessor for StaticActionSet);
      if ((v48 & 1) != 0 && v14[*(v46 + 48)] != 1)
      {
        sub_1D1D1D890(v14, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1D26328(v14, v12, type metadata accessor for StaticActionSet);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51[0] = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CE74(0, v27[2] + 1, 1);
          v25 = v45;
          v27 = v51[0];
        }

        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          sub_1D178CE74(v31 > 1, v32 + 1, 1);
          v25 = v45;
          v27 = v51[0];
        }

        v27[2] = v32 + 1;
        v33 = v27 + v28 + v32 * v29;
        v12 = v44;
        sub_1D1D26328(v44, v33, type metadata accessor for StaticActionSet);
      }

      if (v47 == ++v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v34 = v27[2];
  if (v34)
  {
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    while (v35 < v27[2])
    {
      v37 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v38 = *(v4 + 72);
      sub_1D1D1D7E0(v27 + v37 + v38 * v35, v25, type metadata accessor for StaticActionSet);
      if (v49 == 8 || (sub_1D171B004(v49, *(v25 + *(v46 + 52))) & 1) != 0)
      {
        sub_1D1D26328(v25, v50, type metadata accessor for StaticActionSet);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v51[0] = v36;
        if ((v39 & 1) == 0)
        {
          sub_1D178CE74(0, v36[2] + 1, 1);
          v25 = v45;
          v36 = v51[0];
        }

        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          sub_1D178CE74(v40 > 1, v41 + 1, 1);
          v25 = v45;
          v36 = v51[0];
        }

        v36[2] = v41 + 1;
        sub_1D1D26328(v50, v36 + v37 + v41 * v38, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1D1D890(v25, type metadata accessor for StaticActionSet);
      }

      if (v34 == ++v35)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_31:

  return v36;
}

uint64_t StaticRoom.status(matterSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v643 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B828, &qword_1D1E9AD28);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v674 = &v515 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v668 = &v515 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B820, &qword_1D1E9AD20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v673 = &v515 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v642 = &v515 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B818, &qword_1D1E9AD18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v672 = &v515 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v641 = &v515 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B810, &qword_1D1E9AD10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v671 = &v515 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v640 = &v515 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B808, &qword_1D1E9AD08);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v670 = &v515 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v639 = &v515 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B800, &qword_1D1E9AD00);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v669 = &v515 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v667 = &v515 - v33;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DAF8, &qword_1D1EA7E70);
  v637 = *(v638 - 8);
  v34 = *(v637 + 64);
  MEMORY[0x1EEE9AC00](v638);
  v578 = &v515 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB00, &qword_1D1EA7E78);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v576 = &v515 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v577 = &v515 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v575 = &v515 - v42;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB08, &qword_1D1EA7E80);
  v635 = *(v636 - 8);
  v43 = *(v635 + 64);
  MEMORY[0x1EEE9AC00](v636);
  v574 = &v515 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B868, &qword_1D1E9AD68);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v572 = &v515 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v573 = &v515 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v571 = &v515 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB10, &qword_1D1EA7E88);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v631 = &v515 - v54;
  v633 = type metadata accessor for OccupancySensorStatusItem(0);
  v632 = *(v633 - 8);
  v55 = *(v632 + 64);
  MEMORY[0x1EEE9AC00](v633);
  v570 = &v515 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7F8, &qword_1D1E9ACF8);
  v57 = *(*(v634 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v634);
  v666 = &v515 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v665 = &v515 - v60;
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB18, &qword_1D1EA7E90);
  v629 = *(v630 - 8);
  v61 = *(v629 + 64);
  MEMORY[0x1EEE9AC00](v630);
  v569 = &v515 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB20, &qword_1D1EA7E98);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v63 - 8);
  v567 = &v515 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v568 = &v515 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v566 = &v515 - v69;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB28, &qword_1D1EA7EA0);
  v627 = *(v628 - 8);
  v70 = *(v627 + 64);
  MEMORY[0x1EEE9AC00](v628);
  v565 = &v515 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B860, &qword_1D1E9AD60);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8);
  v563 = &v515 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v564 = &v515 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v562 = &v515 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB30, &qword_1D1EA7EA8);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v623 = &v515 - v81;
  v625 = type metadata accessor for MotionSensorStatusItem(0);
  v624 = *(v625 - 8);
  v82 = *(v624 + 64);
  MEMORY[0x1EEE9AC00](v625);
  v561 = &v515 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7F0, &qword_1D1E9ACF0);
  v84 = *(*(v626 - 8) + 64);
  v85 = MEMORY[0x1EEE9AC00](v626);
  v664 = &v515 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v698 = &v515 - v87;
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB38, &qword_1D1EA7EB0);
  v621 = *(v622 - 8);
  v88 = *(v621 + 64);
  MEMORY[0x1EEE9AC00](v622);
  v560 = &v515 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB40, &qword_1D1EA7EB8);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x1EEE9AC00](v90 - 8);
  v558 = &v515 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v559 = &v515 - v95;
  MEMORY[0x1EEE9AC00](v94);
  v557 = &v515 - v96;
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB48, &qword_1D1EA7EC0);
  v619 = *(v620 - 8);
  v97 = *(v619 + 64);
  MEMORY[0x1EEE9AC00](v620);
  v556 = &v515 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B858, &qword_1D1E9AD58);
  v100 = *(*(v99 - 8) + 64);
  v101 = MEMORY[0x1EEE9AC00](v99 - 8);
  v554 = &v515 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x1EEE9AC00](v101);
  v555 = &v515 - v104;
  MEMORY[0x1EEE9AC00](v103);
  v553 = &v515 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB50, &qword_1D1EA7EC8);
  v107 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106 - 8);
  v615 = &v515 - v108;
  v617 = type metadata accessor for ContactSensorStatusItem(0);
  v616 = *(v617 - 8);
  v109 = *(v616 + 64);
  MEMORY[0x1EEE9AC00](v617);
  v552 = &v515 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E8, &qword_1D1E9ACE8);
  v111 = *(*(v618 - 8) + 64);
  v112 = MEMORY[0x1EEE9AC00](v618);
  v663 = &v515 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v697 = &v515 - v114;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E0, &qword_1D1E9ACE0);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x1EEE9AC00](v115 - 8);
  v662 = &v515 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117);
  v696 = &v515 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D8, &qword_1D1E9ACD8);
  v121 = *(*(v120 - 8) + 64);
  v122 = MEMORY[0x1EEE9AC00](v120 - 8);
  v661 = &v515 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v695 = &v515 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D0, &qword_1D1E9ACD0);
  v126 = *(*(v125 - 8) + 64);
  v127 = MEMORY[0x1EEE9AC00](v125 - 8);
  v660 = &v515 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127);
  v694 = &v515 - v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C8, &qword_1D1E9ACC8);
  v131 = *(*(v130 - 8) + 64);
  v132 = MEMORY[0x1EEE9AC00](v130 - 8);
  v659 = &v515 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v132);
  v693 = &v515 - v134;
  v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB58, &qword_1D1EA7ED0);
  v613 = *(v614 - 8);
  v135 = *(v613 + 64);
  MEMORY[0x1EEE9AC00](v614);
  v551 = &v515 - v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB60, &qword_1D1EA7ED8);
  v138 = *(*(v137 - 8) + 64);
  v139 = MEMORY[0x1EEE9AC00](v137 - 8);
  v548 = &v515 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = MEMORY[0x1EEE9AC00](v139);
  v550 = &v515 - v142;
  MEMORY[0x1EEE9AC00](v141);
  v547 = &v515 - v143;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB68, &qword_1D1EA7EE0);
  v611 = *(v612 - 8);
  v144 = *(v611 + 64);
  MEMORY[0x1EEE9AC00](v612);
  v549 = &v515 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B850, &qword_1D1E9AD50);
  v147 = *(*(v146 - 8) + 64);
  v148 = MEMORY[0x1EEE9AC00](v146 - 8);
  v545 = &v515 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = MEMORY[0x1EEE9AC00](v148);
  v546 = &v515 - v151;
  MEMORY[0x1EEE9AC00](v150);
  v544 = &v515 - v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB70, &qword_1D1EA7EE8);
  v154 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153 - 8);
  v607 = &v515 - v155;
  v609 = type metadata accessor for WindowStatusItem(0);
  v608 = *(v609 - 8);
  v156 = *(v608 + 64);
  MEMORY[0x1EEE9AC00](v609);
  v543 = &v515 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C0, &qword_1D1E9ACC0);
  v158 = *(*(v610 - 8) + 64);
  v159 = MEMORY[0x1EEE9AC00](v610);
  v658 = &v515 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v159);
  v692 = &v515 - v161;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB78, &qword_1D1EA7EF0);
  v603 = *(v604 - 8);
  v162 = *(v603 + 64);
  MEMORY[0x1EEE9AC00](v604);
  v542 = &v515 - v163;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB80, &qword_1D1EA7EF8);
  v165 = *(*(v164 - 8) + 64);
  v166 = MEMORY[0x1EEE9AC00](v164 - 8);
  v539 = &v515 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = MEMORY[0x1EEE9AC00](v166);
  v541 = &v515 - v169;
  MEMORY[0x1EEE9AC00](v168);
  v538 = &v515 - v170;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB88, &qword_1D1EA7F00);
  v600 = *(v601 - 8);
  v171 = *(v600 + 64);
  MEMORY[0x1EEE9AC00](v601);
  v540 = &v515 - v172;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B848, &qword_1D1E9AD48);
  v174 = *(*(v173 - 8) + 64);
  v175 = MEMORY[0x1EEE9AC00](v173 - 8);
  v536 = &v515 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = MEMORY[0x1EEE9AC00](v175);
  v537 = &v515 - v178;
  MEMORY[0x1EEE9AC00](v177);
  v535 = &v515 - v179;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB90, &qword_1D1EA7F08);
  v181 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180 - 8);
  v596 = &v515 - v182;
  v598 = type metadata accessor for DoorStatusItem(0);
  v597 = *(v598 - 8);
  v183 = *(v597 + 64);
  MEMORY[0x1EEE9AC00](v598);
  v534 = &v515 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7B8, &qword_1D1E9ACB8);
  v185 = *(*(v599 - 8) + 64);
  v186 = MEMORY[0x1EEE9AC00](v599);
  v657 = &v515 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v186);
  v691 = &v515 - v188;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DB98, &qword_1D1EA7F10);
  v594 = *(v595 - 8);
  v189 = *(v594 + 64);
  MEMORY[0x1EEE9AC00](v595);
  v533 = &v515 - v190;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBA0, &qword_1D1EA7F18);
  v192 = *(*(v191 - 8) + 64);
  v193 = MEMORY[0x1EEE9AC00](v191 - 8);
  v530 = &v515 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = MEMORY[0x1EEE9AC00](v193);
  v532 = &v515 - v196;
  MEMORY[0x1EEE9AC00](v195);
  v529 = &v515 - v197;
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBA8, &qword_1D1EA7F20);
  v592 = *(v593 - 8);
  v198 = *(v592 + 64);
  MEMORY[0x1EEE9AC00](v593);
  v531 = &v515 - v199;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B840, &qword_1D1E9AD40);
  v201 = *(*(v200 - 8) + 64);
  v202 = MEMORY[0x1EEE9AC00](v200 - 8);
  v527 = &v515 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = MEMORY[0x1EEE9AC00](v202);
  v528 = &v515 - v205;
  MEMORY[0x1EEE9AC00](v204);
  v526 = &v515 - v206;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBB0, &qword_1D1EA7F28);
  v208 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207 - 8);
  v589 = &v515 - v209;
  v590 = type metadata accessor for GarageDoorStatusItem(0);
  v588 = *(v590 - 8);
  v210 = *(v588 + 64);
  MEMORY[0x1EEE9AC00](v590);
  v525 = &v515 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7B0, &qword_1D1E9ACB0);
  v212 = *(*(v591 - 8) + 64);
  v213 = MEMORY[0x1EEE9AC00](v591);
  v656 = &v515 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v213);
  v690 = &v515 - v215;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A8, &qword_1D1E9ACA8);
  v217 = *(*(v216 - 8) + 64);
  v218 = MEMORY[0x1EEE9AC00](v216 - 8);
  v655 = &v515 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v218);
  v689 = &v515 - v220;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A0, &qword_1D1E9ACA0);
  v222 = *(*(v221 - 8) + 64);
  v223 = MEMORY[0x1EEE9AC00](v221 - 8);
  v654 = &v515 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v223);
  v688 = &v515 - v225;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B798, &qword_1D1E9AC98);
  v227 = *(*(v226 - 8) + 64);
  v228 = MEMORY[0x1EEE9AC00](v226 - 8);
  v653 = &v515 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v228);
  v687 = &v515 - v230;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B790, &qword_1D1E9AC90);
  v232 = *(*(v231 - 8) + 64);
  v233 = MEMORY[0x1EEE9AC00](v231 - 8);
  v652 = &v515 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v233);
  v686 = &v515 - v235;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B788, &qword_1D1E9AC88);
  v237 = *(*(v236 - 8) + 64);
  v238 = MEMORY[0x1EEE9AC00](v236 - 8);
  v651 = &v515 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v238);
  v685 = &v515 - v240;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B740, &qword_1D1E9AC40);
  v242 = *(*(v241 - 8) + 64);
  v243 = MEMORY[0x1EEE9AC00](v241 - 8);
  v650 = &v515 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v243);
  v684 = &v515 - v245;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B748, &qword_1D1E9AC48);
  v247 = *(*(v246 - 8) + 64);
  v248 = MEMORY[0x1EEE9AC00](v246 - 8);
  v649 = &v515 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v248);
  v683 = &v515 - v250;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBB8, &qword_1D1EA7F30);
  v586 = *(v587 - 8);
  v251 = *(v586 + 64);
  MEMORY[0x1EEE9AC00](v587);
  v524 = &v515 - v252;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBC0, &qword_1D1EA7F38);
  v254 = *(*(v253 - 8) + 64);
  v255 = MEMORY[0x1EEE9AC00](v253 - 8);
  v521 = &v515 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = MEMORY[0x1EEE9AC00](v255);
  v523 = &v515 - v258;
  MEMORY[0x1EEE9AC00](v257);
  v520 = &v515 - v259;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBC8, &qword_1D1EA7F40);
  v584 = *(v585 - 8);
  v260 = *(v584 + 64);
  MEMORY[0x1EEE9AC00](v585);
  v522 = &v515 - v261;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B750, &qword_1D1E9AC50);
  v263 = *(*(v262 - 8) + 64);
  v264 = MEMORY[0x1EEE9AC00](v262 - 8);
  v518 = &v515 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = MEMORY[0x1EEE9AC00](v264);
  v519 = &v515 - v267;
  MEMORY[0x1EEE9AC00](v266);
  v517 = &v515 - v268;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBD0, &qword_1D1EA7F48);
  v270 = *(*(v269 - 8) + 64);
  MEMORY[0x1EEE9AC00](v269 - 8);
  v581 = &v515 - v271;
  v580 = type metadata accessor for BlindsStatusItem(0);
  v579 = *(v580 - 8);
  v272 = *(v579 + 64);
  MEMORY[0x1EEE9AC00](v580);
  v516 = &v515 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B780, &qword_1D1E9AC80);
  v274 = *(*(v583 - 8) + 64);
  v275 = MEMORY[0x1EEE9AC00](v583);
  v648 = &v515 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v275);
  v682 = &v515 - v277;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B758, &qword_1D1E9AC58);
  v279 = *(*(v278 - 8) + 64);
  v280 = MEMORY[0x1EEE9AC00](v278 - 8);
  v647 = &v515 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v280);
  v681 = &v515 - v282;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B760, &qword_1D1E9AC60);
  v284 = *(*(v283 - 8) + 64);
  v285 = MEMORY[0x1EEE9AC00](v283 - 8);
  v646 = &v515 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v285);
  v680 = &v515 - v287;
  v288 = type metadata accessor for StatusItemLocation(0);
  v289 = *(*(v288 - 8) + 64);
  MEMORY[0x1EEE9AC00](v288 - 8);
  v291 = &v515 - ((v290 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B768, &qword_1D1E9AC68);
  v293 = *(*(v292 - 8) + 64);
  v294 = MEMORY[0x1EEE9AC00](v292 - 8);
  v645 = &v515 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v294);
  v679 = &v515 - v296;
  v297 = type metadata accessor for StaticRoom(0);
  v298 = *(v2 + v297[10]);
  v299 = sub_1D18DBDB4(MEMORY[0x1E69E7CC0]);
  v702[2] = a1;
  v300 = sub_1D18FC6E4(v299, sub_1D1D25348, v702, v298);
  v701[2] = a1;
  v582 = sub_1D1789DAC(sub_1D1D25364, v701, v300);

  sub_1D1D24618(v298, v300, sub_1D1D258AC, sub_1D1D258AC);

  swift_bridgeObjectRelease_n();
  v301 = v2;
  v302 = *(v2 + v297[16]);
  v303 = sub_1D1D1D2C8(v302, sub_1D1D1EA84, sub_1D1D1EA84);
  v606 = sub_1D1D1D2C8(*(v2 + v297[14]), sub_1D1D1F1EC, sub_1D1D1F1EC);
  v605 = sub_1D1D1D2C8(*(v2 + v297[13]), sub_1D1D1F5D8, sub_1D1D1F5D8);
  v304 = sub_1D1E66A7C();
  v305 = *(v304 - 8);
  v306 = *(v305 + 16);
  v306(v291, v301, v304);
  v307 = *(v305 + 56);
  v307(v291, 0, 1, v304);
  swift_bridgeObjectRetain_n();
  sub_1D1B34554(v302, v291, v679);
  v700 = v305 + 56;
  v699 = v301;
  v678 = v305 + 16;
  v677 = v306;
  v306(v291, v301, v304);
  v602 = v304;
  v308 = v304;
  v309 = v581;
  v675 = v307;
  v307(v291, 0, 1, v308);
  v310 = v580;
  v311 = v302;
  v312 = v579;
  v676 = v291;
  sub_1D1B35B48(v311, v291, v680);

  sub_1D1B37208(v313, v681);

  sub_1D1B53CE8(v314, v309);
  if ((*(v312 + 48))(v309, 1, v310) == 1)
  {
    sub_1D1741A30(v309, &qword_1EC64DBD0, &qword_1D1EA7F48);

    v316 = v520;
    sub_1D1D083F4(v315, v520);
    v317 = v523;
    sub_1D1741C08(v316, v523, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v318 = v521;
    sub_1D1741C08(v317, v521, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v319 = v318;
    v320 = v524;
    sub_1D1741A90(v319, v524, &qword_1EC64DBC0, &qword_1D1EA7F38);
    sub_1D1741A30(v316, &qword_1EC64DBC0, &qword_1D1EA7F38);
    sub_1D1741A30(v317, &qword_1EC64DBC0, &qword_1D1EA7F38);
    v321 = v682;
    (*(v584 + 56))(v682, 1, 1, v585);
    v322 = *(v583 + 52);
    sub_1D1741A90(v320, v321 + v322, &qword_1EC64DBB8, &qword_1D1EA7F30);
    (*(v586 + 56))(v321 + v322, 0, 1, v587);
  }

  else
  {
    v323 = v516;
    sub_1D1D26328(v309, v516, type metadata accessor for BlindsStatusItem);
    v324 = v517;
    sub_1D1D1D7E0(v323, v517, type metadata accessor for BlindsStatusItem);
    (*(v312 + 56))(v324, 0, 1, v310);
    v325 = v519;
    sub_1D1741C08(v324, v519, &qword_1EC64B750, &qword_1D1E9AC50);
    v326 = v518;
    sub_1D1741C08(v325, v518, &qword_1EC64B750, &qword_1D1E9AC50);
    v327 = v326;
    v328 = v522;
    sub_1D1741A90(v327, v522, &qword_1EC64B750, &qword_1D1E9AC50);
    sub_1D1741A30(v324, &qword_1EC64B750, &qword_1D1E9AC50);
    sub_1D1D1D890(v323, type metadata accessor for BlindsStatusItem);
    sub_1D1741A30(v325, &qword_1EC64B750, &qword_1D1E9AC50);
    v329 = v328;
    v330 = v682;
    sub_1D1741A90(v329, v682, &qword_1EC64DBC8, &qword_1D1EA7F40);
    (*(v584 + 56))(v330, 0, 1, v585);
    (*(v586 + 56))(v330 + *(v583 + 52), 1, 1, v587);
  }

  sub_1D1B37BA0(v331, v683);

  sub_1D1B38748(v332, v684);
  v704[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBD8, &qword_1D1EA7F50);
  v704[4] = sub_1D17D8EA8(&qword_1EC64DBE0, &qword_1EC64DBD8, &qword_1D1EA7F50);
  v704[0] = v582;
  sub_1D1B4A8AC(v704, v685);

  sub_1D1B3AE7C(v333, v686);

  sub_1D1B41C84(v334, v687);

  sub_1D1B40B20(v335, v688);

  sub_1D1B55400(v336, v689);

  v338 = v589;
  sub_1D1B56598(v337, v589);
  v339 = v588;
  v340 = v590;
  v341 = (*(v588 + 48))(v338, 1, v590);
  v342 = v303;
  v343 = v596;
  if (v341 == 1)
  {
    sub_1D1741A30(v338, &qword_1EC64DBB0, &qword_1D1EA7F28);

    v345 = v529;
    sub_1D1D0917C(v344, v529);
    v346 = v532;
    sub_1D1741C08(v345, v532, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v347 = v530;
    sub_1D1741C08(v346, v530, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v348 = v347;
    v349 = v533;
    sub_1D1741A90(v348, v533, &qword_1EC64DBA0, &qword_1D1EA7F18);
    sub_1D1741A30(v345, &qword_1EC64DBA0, &qword_1D1EA7F18);
    sub_1D1741A30(v346, &qword_1EC64DBA0, &qword_1D1EA7F18);
    v350 = v690;
    (*(v592 + 56))(v690, 1, 1, v593);
    v351 = *(v591 + 52);
    sub_1D1741A90(v349, v350 + v351, &qword_1EC64DB98, &qword_1D1EA7F10);
    (*(v594 + 56))(v350 + v351, 0, 1, v595);
  }

  else
  {
    v352 = v525;
    sub_1D1D26328(v338, v525, type metadata accessor for GarageDoorStatusItem);
    v353 = v526;
    sub_1D1D1D7E0(v352, v526, type metadata accessor for GarageDoorStatusItem);
    (*(v339 + 56))(v353, 0, 1, v340);
    v354 = v528;
    sub_1D1741C08(v353, v528, &qword_1EC64B840, &qword_1D1E9AD40);
    v355 = v527;
    sub_1D1741C08(v354, v527, &qword_1EC64B840, &qword_1D1E9AD40);
    v356 = v355;
    v357 = v531;
    sub_1D1741A90(v356, v531, &qword_1EC64B840, &qword_1D1E9AD40);
    sub_1D1741A30(v353, &qword_1EC64B840, &qword_1D1E9AD40);
    v358 = v352;
    v342 = v303;
    sub_1D1D1D890(v358, type metadata accessor for GarageDoorStatusItem);
    sub_1D1741A30(v354, &qword_1EC64B840, &qword_1D1E9AD40);
    v359 = v690;
    sub_1D1741A90(v357, v690, &qword_1EC64DBA8, &qword_1D1EA7F20);
    (*(v592 + 56))(v359, 0, 1, v593);
    (*(v594 + 56))(v359 + *(v591 + 52), 1, 1, v595);
  }

  sub_1D1B57AD4(v360, v343);
  v361 = v597;
  v362 = v598;
  v363 = (*(v597 + 48))(v343, 1, v598);
  v364 = v607;
  if (v363 == 1)
  {
    sub_1D1741A30(v343, &qword_1EC64DB90, &qword_1D1EA7F08);

    v366 = v538;
    sub_1D1D09F00(v365, v538);
    v367 = v541;
    sub_1D1741C08(v366, v541, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v368 = v539;
    sub_1D1741C08(v367, v539, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v369 = v368;
    v370 = v542;
    sub_1D1741A90(v369, v542, &qword_1EC64DB80, &qword_1D1EA7EF8);
    sub_1D1741A30(v366, &qword_1EC64DB80, &qword_1D1EA7EF8);
    sub_1D1741A30(v367, &qword_1EC64DB80, &qword_1D1EA7EF8);
    v371 = v691;
    (*(v600 + 56))(v691, 1, 1, v601);
    v372 = *(v599 + 52);
    sub_1D1741A90(v370, v371 + v372, &qword_1EC64DB78, &qword_1D1EA7EF0);
    (*(v603 + 56))(v371 + v372, 0, 1, v604);
  }

  else
  {
    v373 = v534;
    sub_1D1D26328(v343, v534, type metadata accessor for DoorStatusItem);
    v374 = v535;
    sub_1D1D1D7E0(v373, v535, type metadata accessor for DoorStatusItem);
    (*(v361 + 56))(v374, 0, 1, v362);
    v375 = v537;
    sub_1D1741C08(v374, v537, &qword_1EC64B848, &qword_1D1E9AD48);
    v376 = v536;
    sub_1D1741C08(v375, v536, &qword_1EC64B848, &qword_1D1E9AD48);
    v377 = v376;
    v378 = v540;
    sub_1D1741A90(v377, v540, &qword_1EC64B848, &qword_1D1E9AD48);
    sub_1D1741A30(v374, &qword_1EC64B848, &qword_1D1E9AD48);
    sub_1D1D1D890(v373, type metadata accessor for DoorStatusItem);
    sub_1D1741A30(v375, &qword_1EC64B848, &qword_1D1E9AD48);
    v379 = v691;
    sub_1D1741A90(v378, v691, &qword_1EC64DB88, &qword_1D1EA7F00);
    (*(v600 + 56))(v379, 0, 1, v601);
    (*(v603 + 56))(v379 + *(v599 + 52), 1, 1, v604);
  }

  sub_1D1B59184(v380, v364);
  v381 = v608;
  v382 = v609;
  v383 = (*(v608 + 48))(v364, 1, v609);
  v644 = v342;
  if (v383 == 1)
  {
    sub_1D1741A30(v364, &qword_1EC64DB70, &qword_1D1EA7EE8);

    v385 = v547;
    sub_1D1D0AC84(v384, v547);
    v386 = v550;
    sub_1D1741C08(v385, v550, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v387 = v548;
    sub_1D1741C08(v386, v548, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v388 = v387;
    v389 = v551;
    sub_1D1741A90(v388, v551, &qword_1EC64DB60, &qword_1D1EA7ED8);
    sub_1D1741A30(v385, &qword_1EC64DB60, &qword_1D1EA7ED8);
    sub_1D1741A30(v386, &qword_1EC64DB60, &qword_1D1EA7ED8);
    v390 = v692;
    (*(v611 + 56))(v692, 1, 1, v612);
    v391 = *(v610 + 52);
    sub_1D1741A90(v389, v390 + v391, &qword_1EC64DB58, &qword_1D1EA7ED0);
    (*(v613 + 56))(v390 + v391, 0, 1, v614);
  }

  else
  {
    v392 = v543;
    sub_1D1D26328(v364, v543, type metadata accessor for WindowStatusItem);
    v393 = v544;
    sub_1D1D1D7E0(v392, v544, type metadata accessor for WindowStatusItem);
    (*(v381 + 56))(v393, 0, 1, v382);
    v394 = v546;
    sub_1D1741C08(v393, v546, &qword_1EC64B850, &qword_1D1E9AD50);
    v395 = v545;
    sub_1D1741C08(v394, v545, &qword_1EC64B850, &qword_1D1E9AD50);
    v396 = v395;
    v397 = v549;
    sub_1D1741A90(v396, v549, &qword_1EC64B850, &qword_1D1E9AD50);
    sub_1D1741A30(v393, &qword_1EC64B850, &qword_1D1E9AD50);
    sub_1D1D1D890(v392, type metadata accessor for WindowStatusItem);
    sub_1D1741A30(v394, &qword_1EC64B850, &qword_1D1E9AD50);
    v398 = v692;
    sub_1D1741A90(v397, v692, &qword_1EC64DB68, &qword_1D1EA7EE0);
    (*(v611 + 56))(v398, 0, 1, v612);
    (*(v613 + 56))(v398 + *(v610 + 52), 1, 1, v614);
  }

  v399 = v676;
  v400 = v699;
  v401 = v602;
  v402 = v677;
  v677(v676, v699, v602);
  v403 = v675;
  v675(v399, 0, 1, v401);

  sub_1D1B676EC(v404, v399, v693);
  v402(v399, v400, v401);
  v403(v399, 0, 1, v401);

  sub_1D1B67F90(v405, v399, v694);
  v402(v399, v400, v401);
  v403(v399, 0, 1, v401);

  sub_1D1B687F4(v406, v399, v695);

  sub_1D1B4468C(v407, v696);
  v402(v399, v400, v401);
  v403(v399, 0, 1, v401);

  v409 = v615;
  sub_1D1B69058(v408, v399, v615);
  v410 = v616;
  v411 = v617;
  if ((*(v616 + 48))(v409, 1, v617) == 1)
  {
    sub_1D1741A30(v409, &qword_1EC64DB50, &qword_1D1EA7EC8);
    v402(v399, v400, v401);
    v403(v399, 0, 1, v401);
    v412 = v644;

    v414 = v557;
    sub_1D1B6B318(v413, v399, v557);
    v415 = v399;
    v416 = v559;
    sub_1D1741C08(v414, v559, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v417 = v558;
    sub_1D1741C08(v416, v558, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v418 = v417;
    v419 = v560;
    sub_1D1741A90(v418, v560, &qword_1EC64DB40, &qword_1D1EA7EB8);
    sub_1D1741A30(v414, &qword_1EC64DB40, &qword_1D1EA7EB8);
    sub_1D1741A30(v416, &qword_1EC64DB40, &qword_1D1EA7EB8);
    v420 = v697;
    (*(v619 + 56))(v697, 1, 1, v620);
    v421 = *(v618 + 52);
    sub_1D1741A90(v419, v420 + v421, &qword_1EC64DB38, &qword_1D1EA7EB0);
    (*(v621 + 56))(v420 + v421, 0, 1, v622);
  }

  else
  {
    v422 = v409;
    v423 = v552;
    sub_1D1D26328(v422, v552, type metadata accessor for ContactSensorStatusItem);
    v424 = v553;
    sub_1D1D1D7E0(v423, v553, type metadata accessor for ContactSensorStatusItem);
    (*(v410 + 56))(v424, 0, 1, v411);
    v415 = v399;
    v425 = v555;
    sub_1D1741C08(v424, v555, &qword_1EC64B858, &qword_1D1E9AD58);
    v426 = v554;
    sub_1D1741C08(v425, v554, &qword_1EC64B858, &qword_1D1E9AD58);
    v427 = v426;
    v428 = v556;
    sub_1D1741A90(v427, v556, &qword_1EC64B858, &qword_1D1E9AD58);
    sub_1D1741A30(v424, &qword_1EC64B858, &qword_1D1E9AD58);
    sub_1D1D1D890(v423, type metadata accessor for ContactSensorStatusItem);
    sub_1D1741A30(v425, &qword_1EC64B858, &qword_1D1E9AD58);
    v429 = v697;
    sub_1D1741A90(v428, v697, &qword_1EC64DB48, &qword_1D1EA7EC0);
    (*(v619 + 56))(v429, 0, 1, v620);
    (*(v621 + 56))(v429 + *(v618 + 52), 1, 1, v622);
    v412 = v644;
  }

  v677(v415, v699, v401);
  v403(v415, 0, 1, v401);

  v431 = v623;
  sub_1D1B69978(v430, v415, v623);
  v432 = v624;
  v433 = v625;
  if ((*(v624 + 48))(v431, 1, v625) == 1)
  {
    v434 = v415;
    sub_1D1741A30(v431, &qword_1EC64DB30, &qword_1D1EA7EA8);
    v435 = v415;
    v436 = v677;
    v677(v435, v699, v401);
    v403(v434, 0, 1, v401);

    v438 = v566;
    sub_1D1B6BC38(v437, v434, v566);
    v439 = v568;
    sub_1D1741C08(v438, v568, &qword_1EC64DB20, &qword_1D1EA7E98);
    v440 = v567;
    sub_1D1741C08(v439, v567, &qword_1EC64DB20, &qword_1D1EA7E98);
    v441 = v440;
    v442 = v569;
    sub_1D1741A90(v441, v569, &qword_1EC64DB20, &qword_1D1EA7E98);
    sub_1D1741A30(v438, &qword_1EC64DB20, &qword_1D1EA7E98);
    sub_1D1741A30(v439, &qword_1EC64DB20, &qword_1D1EA7E98);
    v443 = v698;
    (*(v627 + 56))(v698, 1, 1, v628);
    v444 = *(v626 + 52);
    sub_1D1741A90(v442, v443 + v444, &qword_1EC64DB18, &qword_1D1EA7E90);
    (*(v629 + 56))(v443 + v444, 0, 1, v630);
  }

  else
  {
    v445 = v561;
    sub_1D1D26328(v431, v561, type metadata accessor for MotionSensorStatusItem);
    v446 = v562;
    sub_1D1D1D7E0(v445, v562, type metadata accessor for MotionSensorStatusItem);
    (*(v432 + 56))(v446, 0, 1, v433);
    v447 = v564;
    sub_1D1741C08(v446, v564, &qword_1EC64B860, &qword_1D1E9AD60);
    v448 = v563;
    sub_1D1741C08(v447, v563, &qword_1EC64B860, &qword_1D1E9AD60);
    v449 = v448;
    v450 = v565;
    sub_1D1741A90(v449, v565, &qword_1EC64B860, &qword_1D1E9AD60);
    sub_1D1741A30(v446, &qword_1EC64B860, &qword_1D1E9AD60);
    sub_1D1D1D890(v445, type metadata accessor for MotionSensorStatusItem);
    sub_1D1741A30(v447, &qword_1EC64B860, &qword_1D1E9AD60);
    v451 = v698;
    sub_1D1741A90(v450, v698, &qword_1EC64DB28, &qword_1D1EA7EA0);
    (*(v627 + 56))(v451, 0, 1, v628);
    (*(v629 + 56))(v451 + *(v626 + 52), 1, 1, v630);
    v436 = v677;
  }

  v452 = v676;
  v453 = v699;
  v436(v676, v699, v401);
  v403(v452, 0, 1, v401);

  v455 = v631;
  sub_1D1B6A208(v454, v452, v631);
  v456 = v632;
  v457 = v633;
  if ((*(v632 + 48))(v455, 1, v633) == 1)
  {
    sub_1D1741A30(v455, &qword_1EC64DB10, &qword_1D1EA7E88);
    v458 = v676;
    v436(v676, v453, v401);
    v675(v458, 0, 1, v401);

    v460 = v575;
    sub_1D1B6C4D0(v459, v458, v575);
    v461 = v577;
    sub_1D1741C08(v460, v577, &qword_1EC64DB00, &qword_1D1EA7E78);
    v462 = v401;
    v463 = v576;
    sub_1D1741C08(v461, v576, &qword_1EC64DB00, &qword_1D1EA7E78);
    v464 = v463;
    v465 = v578;
    sub_1D1741A90(v464, v578, &qword_1EC64DB00, &qword_1D1EA7E78);
    sub_1D1741A30(v460, &qword_1EC64DB00, &qword_1D1EA7E78);
    sub_1D1741A30(v461, &qword_1EC64DB00, &qword_1D1EA7E78);
    v466 = v665;
    (*(v635 + 56))(v665, 1, 1, v636);
    v467 = *(v634 + 52);
    sub_1D1741A90(v465, v466 + v467, &qword_1EC64DAF8, &qword_1D1EA7E70);
    (*(v637 + 56))(v466 + v467, 0, 1, v638);
    v468 = v458;
    v469 = v675;
  }

  else
  {
    v470 = v570;
    sub_1D1D26328(v455, v570, type metadata accessor for OccupancySensorStatusItem);
    v471 = v571;
    sub_1D1D1D7E0(v470, v571, type metadata accessor for OccupancySensorStatusItem);
    (*(v456 + 56))(v471, 0, 1, v457);
    v472 = v573;
    sub_1D1741C08(v471, v573, &qword_1EC64B868, &qword_1D1E9AD68);
    v462 = v401;
    v473 = v572;
    sub_1D1741C08(v472, v572, &qword_1EC64B868, &qword_1D1E9AD68);
    v474 = v473;
    v475 = v574;
    sub_1D1741A90(v474, v574, &qword_1EC64B868, &qword_1D1E9AD68);
    sub_1D1741A30(v471, &qword_1EC64B868, &qword_1D1E9AD68);
    v476 = v470;
    v469 = v675;
    sub_1D1D1D890(v476, type metadata accessor for OccupancySensorStatusItem);
    sub_1D1741A30(v472, &qword_1EC64B868, &qword_1D1E9AD68);
    v466 = v665;
    sub_1D1741A90(v475, v665, &qword_1EC64DB08, &qword_1D1EA7E80);
    (*(v635 + 56))(v466, 0, 1, v636);
    (*(v637 + 56))(v466 + *(v634 + 52), 1, 1, v638);
    v468 = v676;
  }

  v477 = v667;
  sub_1D1B3C9B0(v606, v605, v667);

  v479 = v639;
  sub_1D1B3E58C(v478, v639);
  v469(v468, 1, 1, v462);

  v481 = v640;
  sub_1D1B6AAAC(v480, v468, v640);

  v483 = v641;
  sub_1D1B4BDE4(v482, v641);

  v485 = v642;
  sub_1D1B5A834(v484, v642);
  sub_1D1B3FEFC(v412, v668);
  v486 = v645;
  sub_1D1741C08(v679, v645, &qword_1EC64B768, &qword_1D1E9AC68);
  v703[0] = v486;
  v487 = v646;
  sub_1D1741C08(v680, v646, &qword_1EC64B760, &qword_1D1E9AC60);
  v703[1] = v487;
  v488 = v647;
  sub_1D1741C08(v681, v647, &qword_1EC64B758, &qword_1D1E9AC58);
  v703[2] = v488;
  v489 = v648;
  sub_1D1741C08(v682, v648, &qword_1EC64B780, &qword_1D1E9AC80);
  v703[3] = v489;
  v490 = v649;
  sub_1D1741C08(v683, v649, &qword_1EC64B748, &qword_1D1E9AC48);
  v703[4] = v490;
  v491 = v650;
  sub_1D1741C08(v684, v650, &qword_1EC64B740, &qword_1D1E9AC40);
  v703[5] = v491;
  v492 = v651;
  sub_1D1741C08(v685, v651, &qword_1EC64B788, &qword_1D1E9AC88);
  v703[6] = v492;
  v493 = v652;
  sub_1D1741C08(v686, v652, &qword_1EC64B790, &qword_1D1E9AC90);
  v703[7] = v493;
  v494 = v653;
  sub_1D1741C08(v687, v653, &qword_1EC64B798, &qword_1D1E9AC98);
  v703[8] = v494;
  v495 = v654;
  sub_1D1741C08(v688, v654, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  v703[9] = v495;
  v496 = v655;
  sub_1D1741C08(v689, v655, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v703[10] = v496;
  v497 = v656;
  sub_1D1741C08(v690, v656, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  v703[11] = v497;
  v498 = v657;
  sub_1D1741C08(v691, v657, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  v703[12] = v498;
  v499 = v658;
  sub_1D1741C08(v692, v658, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  v703[13] = v499;
  v500 = v659;
  sub_1D1741C08(v693, v659, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v703[14] = v500;
  v501 = v660;
  sub_1D1741C08(v694, v660, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v703[15] = v501;
  v502 = v661;
  sub_1D1741C08(v695, v661, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v703[16] = v502;
  v503 = v662;
  sub_1D1741C08(v696, v662, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v703[17] = v503;
  v504 = v663;
  sub_1D1741C08(v697, v663, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  v703[18] = v504;
  v505 = v664;
  sub_1D1741C08(v698, v664, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  v703[19] = v505;
  v506 = v666;
  sub_1D1741C08(v466, v666, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  v703[20] = v506;
  v507 = v669;
  sub_1D1741C08(v477, v669, &qword_1EC64B800, &qword_1D1E9AD00);
  v703[21] = v507;
  v508 = v670;
  sub_1D1741C08(v479, v670, &qword_1EC64B808, &qword_1D1E9AD08);
  v703[22] = v508;
  v509 = v671;
  sub_1D1741C08(v481, v671, &qword_1EC64B810, &qword_1D1E9AD10);
  v703[23] = v509;
  v510 = v672;
  sub_1D1741C08(v483, v672, &qword_1EC64B818, &qword_1D1E9AD18);
  v703[24] = v510;
  v511 = v673;
  sub_1D1741C08(v485, v673, &qword_1EC64B820, &qword_1D1E9AD20);
  v703[25] = v511;
  v512 = v668;
  v513 = v674;
  sub_1D1741C08(v668, v674, &qword_1EC64B828, &qword_1D1E9AD28);
  v703[26] = v513;
  sub_1D1B5C58C(v703, v643);
  sub_1D1741A30(v512, &qword_1EC64B828, &qword_1D1E9AD28);
  sub_1D1741A30(v485, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v483, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v481, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v479, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v667, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v665, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A30(v698, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A30(v697, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A30(v696, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v695, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v694, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v693, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v692, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A30(v691, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A30(v690, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A30(v689, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v688, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A30(v687, &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A30(v686, &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A30(v685, &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A30(v684, &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A30(v683, &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A30(v682, &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A30(v681, &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A30(v680, &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A30(v679, &qword_1EC64B768, &qword_1D1E9AC68);
  sub_1D1741A30(v674, &qword_1EC64B828, &qword_1D1E9AD28);
  sub_1D1741A30(v673, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v672, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v671, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v670, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v669, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v666, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A30(v664, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A30(v663, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A30(v662, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v661, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v660, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v659, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v658, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A30(v657, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A30(v656, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A30(v655, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v654, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A30(v653, &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A30(v652, &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A30(v651, &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A30(v650, &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A30(v649, &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A30(v648, &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A30(v647, &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A30(v646, &qword_1EC64B760, &qword_1D1E9AC60);
  return sub_1D1741A30(v645, &qword_1EC64B768, &qword_1D1E9AC68);
}

uint64_t sub_1D1D173C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for StaticAccessory(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a2, v16, &qword_1EC644B30, &qword_1D1E77280);
  sub_1D1D26328(&v16[*(v13 + 56)], v20, type metadata accessor for StaticAccessory);
  v21 = sub_1D1E66A7C();
  (*(*(v21 - 8) + 8))(v16, v21);
  v22 = &v20[*(v17 + 144)];
  if (v22[8] == 1 || v20[*(v17 + 148)] != 1)
  {
    return sub_1D1D1D890(v20, type metadata accessor for StaticAccessory);
  }

  v23 = *v22;
  sub_1D1741C08(a3, v8, &unk_1EC64F390, &qword_1D1E92B10);
  v24 = type metadata accessor for MatterStateSnapshot();
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
  {
    sub_1D1D1D890(v20, type metadata accessor for StaticAccessory);
    sub_1D1741A30(v8, &unk_1EC64F390, &qword_1D1E92B10);
    v25 = type metadata accessor for StaticMatterDevice();
    v26 = v41;
    (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
    return sub_1D1741A30(v26, &qword_1EC643650, &qword_1D1E71D40);
  }

  v28 = *&v8[*(v24 + 24)];

  sub_1D1D1D890(v8, type metadata accessor for MatterStateSnapshot);
  if (*(v28 + 16) && (v29 = sub_1D17420B0(v23), (v30 & 1) != 0))
  {
    v31 = v29;
    v32 = *(v28 + 56);
    v33 = type metadata accessor for StaticMatterDevice();
    v34 = *(v33 - 8);
    v35 = v32 + *(v34 + 72) * v31;
    v26 = v41;
    sub_1D1D1D7E0(v35, v41, type metadata accessor for StaticMatterDevice);

    (*(v34 + 56))(v26, 0, 1, v33);
  }

  else
  {

    v33 = type metadata accessor for StaticMatterDevice();
    v26 = v41;
    (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  }

  type metadata accessor for StaticMatterDevice();
  if ((*(*(v33 - 8) + 48))(v26, 1, v33) == 1)
  {
    sub_1D1D1D890(v20, type metadata accessor for StaticAccessory);
    return sub_1D1741A30(v26, &qword_1EC643650, &qword_1D1E71D40);
  }

  sub_1D1741A30(v26, &qword_1EC643650, &qword_1D1E71D40);
  v36 = v40;
  v37 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v36;
  sub_1D1756D58(v23, v20, isUniquelyReferenced_nonNull_native);
  result = sub_1D1D1D890(v20, type metadata accessor for StaticAccessory);
  *v36 = v42;
  return result;
}

uint64_t sub_1D1D17910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v21 - v8;
  v10 = *a1;
  sub_1D1741C08(a2, v21 - v8, &unk_1EC64F390, &qword_1D1E92B10);
  v11 = type metadata accessor for MatterStateSnapshot();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v12 = *&v9[*(v11 + 24)];

    sub_1D1D1D890(v9, type metadata accessor for MatterStateSnapshot);
    if (*(v12 + 16))
    {
      v13 = sub_1D17420B0(v10);
      if (v14)
      {
        v15 = v13;
        v16 = *(v12 + 56);
        v17 = type metadata accessor for StaticMatterDevice();
        v18 = *(v17 - 8);
        sub_1D1D1D7E0(v16 + *(v18 + 72) * v15, a3, type metadata accessor for StaticMatterDevice);

        return (*(v18 + 56))(a3, 0, 1, v17);
      }
    }
  }

  v20 = type metadata accessor for StaticMatterDevice();
  return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
}

uint64_t sub_1D1D17B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = type metadata accessor for StaticAccessory(0);
  if (*(a2 + *(v9 + 124)) != 1)
  {
LABEL_20:
    v30 = 0;
    return v30 & 1;
  }

  v31 = a2;
  v32 = a3;
  v10 = *(a2 + *(v9 + 80));
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(a2 + *(v9 + 80));

  v17 = 0;
  if (v13)
  {
    while (1)
    {
LABEL_12:
      while (1)
      {
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v21 = v20 | (v17 << 6);
        v22 = *(v10 + 48);
        v23 = sub_1D1E66A7C();
        (*(*(v23 - 8) + 16))(v8, v22 + *(*(v23 - 8) + 72) * v21, v23);
        v24 = *(v10 + 56);
        v25 = type metadata accessor for StaticService(0);
        v26 = v24 + *(*(v25 - 1) + 72) * v21;
        v27 = &v8[*(v5 + 48)];
        sub_1D1D1D7E0(v26, v27, type metadata accessor for StaticService);
        v28 = *(v27 + v25[9]);
        if (v28 == 2 || (v28 & 1) == 0)
        {
          break;
        }

        result = sub_1D1741A30(v8, &qword_1EC642DB0, &unk_1D1E6F360);
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      v34 = *(v27 + v25[32]);
      v33 = *(v27 + v25[26]);

      v18 = StaticCharacteristicsBag.isReachable(for:)(&v33);

      result = sub_1D1741A30(v8, &qword_1EC642DB0, &unk_1D1E6F360);
      if (!v18)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }

  while (1)
  {
LABEL_8:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  if (*(v32 + 16))
  {
    sub_1D1742188(v31);
    v30 = v29 ^ 1;
  }

  else
  {
    v30 = 1;
  }

  return v30 & 1;
}

uint64_t sub_1D1D17DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v6 = type metadata accessor for StaticMediaSystem();
  v7 = *(a2 + *(v6 + 92));
  MEMORY[0x1EEE9AC00](v6);
  v10[2] = a4;
  return sub_1D1D04EFC(sub_1D1D262E8, v10, v8) & 1;
}

uint64_t sub_1D1D17E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v9 + 16))
  {
    return 1;
  }

  v10 = sub_1D1742188(a1);
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  sub_1D1D1D7E0(*(v9 + 56) + *(v5 + 72) * v10, v8, type metadata accessor for StaticAccessory);
  v12 = v8[*(v4 + 72)];
  sub_1D1D1D890(v8, type metadata accessor for StaticAccessory);
  return v12;
}

uint64_t sub_1D1D17FC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for StaticAccessory(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v13 = v10;
  v14 = *(a4 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v14 + 16))
  {
    return 1;
  }

  v15 = type metadata accessor for StaticMediaProfile();
  v16 = sub_1D1742188(a2 + *(v15 + 56));
  if ((v17 & 1) == 0)
  {
    return 1;
  }

  sub_1D1D1D7E0(*(v14 + 56) + *(v8 + 72) * v16, v12, type metadata accessor for StaticAccessory);
  v18 = v12[*(v13 + 72)];
  sub_1D1D1D890(v12, type metadata accessor for StaticAccessory);
  return v18;
}

uint64_t sub_1D1D18108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for StaticAccessory(0);
  v10 = v9;
  if (*(a2 + v9[27]) == 1)
  {
    if (*(a2 + v9[37]) != 1 || (v11 = a2 + v9[36], (*(v11 + 8) & 1) != 0))
    {
      v12 = 1;
      return v12 & 1;
    }

    v13 = *v11;
    v14 = *(a3 + *(type metadata accessor for MatterStateSnapshot() + 24));
    if (!*(v14 + 16) || (v15 = sub_1D17420B0(v13), (v16 & 1) == 0))
    {
      v24 = type metadata accessor for StaticMatterDevice();
      v12 = 1;
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
      return v12 & 1;
    }

    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticMatterDevice();
    v20 = *(v19 - 8);
    sub_1D1D1D7E0(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticMatterDevice);
    (*(v20 + 56))(v8, 0, 1, v19);
    sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
  }

  v21 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

  if (v21 >= 2 && (v22 = *(StaticAccessory.visibleStaticServices.getter() + 16), , v22))
  {
    v12 = *(a2 + v10[19]) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_1D1D18354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StaticAccessory(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *(a3 + *(type metadata accessor for StaticRoom(0) + 40));
  if (*(v13 + 16))
  {
    v14 = type metadata accessor for StaticService(0);
    v15 = sub_1D1742188(a2 + *(v14 + 44));
    if (v16)
    {
      sub_1D1D1D7E0(*(v13 + 56) + *(v6 + 72) * v15, v10, type metadata accessor for StaticAccessory);
      sub_1D1D26328(v10, v12, type metadata accessor for StaticAccessory);
      if (v12[*(v5 + 76)] != 1)
      {
        v18 = StaticAccessory.staticServicesExcludingComponents.getter();
        sub_1D1D1D890(v12, type metadata accessor for StaticAccessory);
        v19 = v18[2];

        return v19 == 1;
      }

      sub_1D1D1D890(v12, type metadata accessor for StaticAccessory);
    }
  }

  return 1;
}

uint64_t sub_1D1D1850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  if (!*(a3 + 16))
  {
    return 1;
  }

  v59 = *(a3 + 16);
  v24 = a3 + 32;
  v25 = *(type metadata accessor for StaticService(0) + 44);
  v53 = (v5 + 56);
  v54 = v25;
  v26 = (v5 + 16);
  v45 = (v5 + 32);
  v48 = (v5 + 8);
  v55 = v14;
  v50 = (v5 + 16);
  v51 = (v5 + 48);
  v58 = v21;
  v52 = v10;
  while (1)
  {
    sub_1D17419CC(v24, v61);
    sub_1D17419CC(v61, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v28 = type metadata accessor for StaticMediaProfile();
    v29 = swift_dynamicCast();
    v30 = *(*(v28 - 8) + 56);
    v31 = v53;
    if (v29)
    {
      v30(v14, 0, 1, v28);
      v32 = *(v28 + 56);
      v33 = v14;
      v34 = *v26;
      (*v26)(v23, v33 + v32, v4);
      sub_1D1D1D890(v33, type metadata accessor for StaticMediaProfile);
      v35 = *v31;
      (*v31)(v23, 0, 1, v4);
    }

    else
    {
      v30(v14, 1, 1, v28);
      sub_1D1741A30(v14, &qword_1EC643758, &qword_1D1E71EB0);
      v35 = *v31;
      (*v31)(v23, 1, 1, v4);
      v34 = *v26;
    }

    v36 = v58;
    v34(v58, v57 + v54, v4);
    v35(v36, 0, 1, v4);
    v37 = *(v56 + 48);
    v38 = v52;
    sub_1D1741C08(v23, v52, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741C08(v36, v38 + v37, &qword_1EC642590, qword_1D1E71260);
    v39 = *v51;
    if ((*v51)(v38, 1, v4) == 1)
    {
      break;
    }

    v40 = v49;
    sub_1D1741C08(v38, v49, &qword_1EC642590, qword_1D1E71260);
    if (v39(v38 + v37, 1, v4) == 1)
    {
      sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
      __swift_destroy_boxed_opaque_existential_1(v61);
      (*v48)(v40, v4);
      v14 = v55;
      goto LABEL_4;
    }

    v41 = v40;
    v42 = v46;
    (*v45)(v46, v38 + v37, v4);
    sub_1D1D1D848(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    v47 = sub_1D1E6775C();
    v43 = *v48;
    (*v48)(v42, v4);
    sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v43(v41, v4);
    sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
    v14 = v55;
    if (v47)
    {
      return 0;
    }

LABEL_5:
    v24 += 40;
    --v59;
    v26 = v50;
    if (!v59)
    {
      return 1;
    }
  }

  sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v27 = v39(v38 + v37, 1, v4);
  v14 = v55;
  if (v27 != 1)
  {
LABEL_4:
    sub_1D1741A30(v38, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_5;
  }

  sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
  return 0;
}

uint64_t sub_1D1D18B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StaticAccessory(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + *(type metadata accessor for StaticRoom(0) + 40));
  if (!*(v10 + 16) || (v11 = type metadata accessor for StaticService(0), v12 = sub_1D1742188(a2 + v11[11]), (v13 & 1) == 0))
  {
LABEL_6:
    v17 = 1;
    return v17 & 1;
  }

  sub_1D1D1D7E0(*(v10 + 56) + *(v6 + 72) * v12, v9, type metadata accessor for StaticAccessory);
  v14 = &v9[*(v5 + 92)];
  v15 = *v14;
  v16 = v14[8];
  sub_1D18EB144(*v14, v14[8]);
  sub_1D1D1D890(v9, type metadata accessor for StaticAccessory);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = (v15 & 0x100) == 0;
      return v17 & 1;
    }

    if (v16 != 255)
    {
      v17 = v15 != 1;
      return v17 & 1;
    }

    goto LABEL_6;
  }

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v19 = *(a2 + v11[28]);
    if (v19 == 53)
    {
      v19 = *(a2 + v11[26]);
    }

    v20 = sub_1D17C4E00(v19, &unk_1F4D66110);
    sub_1D18EB2D8(v15, 0);
    v17 = !v20;
  }

  return v17 & 1;
}

uint64_t sub_1D1D18D58@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  LODWORD(v177) = a2;
  v166 = a3;
  v158 = type metadata accessor for StaticEndpoint();
  v4 = *(*(v158 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v158);
  v156 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v157 = &v153 - v7;
  v162 = type metadata accessor for StaticMatterDevice();
  v8 = *(*(v162 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v162);
  v159 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v161 = &v153 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v163 = &v153 - v14;
  v175 = type metadata accessor for StaticServiceGroup();
  v15 = *(*(v175 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v175);
  v165 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v153 - v18;
  v19 = type metadata accessor for StaticMediaSystem();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StaticMediaProfile();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v180 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StaticActionSet();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v160 = *(v173 - 8);
  v29 = *(v160 + 64);
  v30 = MEMORY[0x1EEE9AC00](v173);
  v171 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v170 = &v153 - v32;
  v174 = type metadata accessor for StaticService(0);
  v169 = *(v174 - 8);
  v33 = *(v169 + 64);
  v34 = MEMORY[0x1EEE9AC00](v174);
  v168 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v178 = &v153 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v172 = &v153 - v38;
  v39 = type metadata accessor for StaticAccessory(0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v153 - v44;
  sub_1D17419CC(a1, &v185);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v164 = v45;
  v47 = v39;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(a1, &v181);
    swift_dynamicCast();
    v48 = &v43[*(v39 + 92)];
    v49 = v48[8];
    v50 = a1;
    if (v49 == 255)
    {
      goto LABEL_46;
    }

    v51 = *v48;
    if (v177 > 3u)
    {
      if (v177 > 5u)
      {
        if (v177 == 6)
        {
          v52 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
        }

        else
        {
          v52 = "7FADD792-61A4-4340-A849-215882E2F008";
        }
      }

      else if (v177 == 4)
      {
        v52 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
      }

      else
      {
        v52 = "63489665-5E39-4C17-A590-755E1AAC02AE";
      }
    }

    else if (v177 > 1u)
    {
      if (v177 == 2)
      {
        v52 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
      }

      else
      {
        v52 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
      }
    }

    else if (v177)
    {
      v52 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
    }

    else
    {
      v52 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
    }

    a1 = (v52 - 32) | 0x8000000000000000;
    if (a1 == 0x80000001D1EB3730)
    {
      sub_1D1771B4C(v51, v49);
    }

    else
    {
      v46 = sub_1D1E6904C();
      sub_1D1771B4C(v51, v49);

      if ((v46 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (v49)
    {
      if (v49 != 2)
      {
        sub_1D18EB2D8(v51, v49);
LABEL_240:
        v124 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v50, v125 + 32);
        *v166 = v125;
        v123 = v124;
LABEL_241:
        sub_1D1D1D890(v123, type metadata accessor for StaticAccessory);
        v54 = v164;
        v53 = type metadata accessor for StaticAccessory;
        goto LABEL_288;
      }

      if ((v51 & 0x100) != 0)
      {
        goto LABEL_240;
      }

LABEL_46:
      v163 = v43;
      v65 = sub_1D1C56820();
      v178 = *(v65 + 16);
      v154 = v50;
      v155 = v47;
      if (v178)
      {
        v175 = v65;
        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v66 = 0;
        v58 = v175;
        v176 = v175 + 32;
        v67 = qword_1EC6BE1B0;
        v180 = (qword_1EC6BE1B0 + 56);
        v68 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v69 = *(v58 + 2);
          if (v66 >= v69)
          {
            break;
          }

          if (*(v67 + 16))
          {
            v179 = v68;
            v46 = v176[v66];
            v70 = *(v67 + 40);
            sub_1D1E6920C();
            v186 = v46;
            ServiceKind.rawValue.getter();
            sub_1D1E678EC();

            v71 = sub_1D1E6926C();
            v72 = -1 << *(v67 + 32);
            v73 = v71 & ~v72;
            if ((*&v180[(v73 >> 3) & 0xFFFFFFFFFFFFFF8] >> v73))
            {
              v74 = ~v72;
              while (1)
              {
                v75 = "takeSnaphotsWhenBusy";
                switch(*(*(v67 + 48) + v73))
                {
                  case 1:
                    v76 = "0000003E-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 2:
                    v76 = "00000270-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 3:
                    v76 = "000000BB-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 4:
                    v76 = "0000008D-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 5:
                    v76 = "00000096-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 6:
                    v76 = "00000042-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 7:
                    v76 = "00000110-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 8:
                    v76 = "00000204-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 9:
                    v76 = "00000097-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xA:
                    v76 = "0000007F-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xB:
                    v76 = "00000080-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xC:
                    v76 = "00000129-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xD:
                    v76 = "00000237-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xE:
                    v76 = "00000081-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0xF:
                    v76 = "00000121-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x10:
                    v76 = "00000040-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x11:
                    v76 = "000000D7-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x12:
                    v76 = "000000BA-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x13:
                    v76 = "00000041-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x14:
                    v76 = "000000BC-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x15:
                    v76 = "000000BD-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x16:
                    v76 = "00000082-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x17:
                    v76 = "000000D9-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x18:
                    v76 = "000000CF-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x19:
                    v76 = "000000CC-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1A:
                    v76 = "00000083-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1B:
                    v76 = "00000084-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1C:
                    v76 = "00000043-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1D:
                    v76 = "00000044-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1E:
                    v76 = "00000045-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x1F:
                    v76 = "00000112-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x20:
                    v76 = "00000085-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x21:
                    v76 = "00000086-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x22:
                    v76 = "00000047-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x23:
                    v76 = "0000007E-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x24:
                    v76 = "000000B9-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x25:
                    v76 = "00000087-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x26:
                    v76 = "00000113-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x27:
                    v76 = "00000088-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x28:
                    v76 = "00000089-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x29:
                    v76 = "00000049-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2A:
                    v76 = "00000125-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2B:
                    v76 = "00000122-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2C:
                    v76 = "000000D8-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2D:
                    v76 = "0000008A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2E:
                    v76 = "0000004A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x2F:
                    v76 = "000000D0-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x30:
                    v76 = "000000B7-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x31:
                    v76 = "0000020A-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x32:
                    v76 = "0000020F-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x33:
                    v76 = "0000008B-0000-1000-8000-0026BB765291";
                    goto LABEL_109;
                  case 0x34:
                    v76 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_109:
                    v75 = v76 - 32;
                    break;
                  default:
                    break;
                }

                v77 = v75 | 0x8000000000000000;
                v78 = "takeSnaphotsWhenBusy";
                switch(v46)
                {
                  case 1:
                    v79 = "0000003E-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 2:
                    v79 = "00000270-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 3:
                    v79 = "000000BB-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 4:
                    v79 = "0000008D-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 5:
                    v79 = "00000096-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 6:
                    v79 = "00000042-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 7:
                    v79 = "00000110-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 8:
                    v79 = "00000204-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 9:
                    v79 = "00000097-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 10:
                    v79 = "0000007F-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 11:
                    v79 = "00000080-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 12:
                    v79 = "00000129-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 13:
                    v79 = "00000237-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 14:
                    v79 = "00000081-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 15:
                    v79 = "00000121-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 16:
                    v79 = "00000040-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 17:
                    v79 = "000000D7-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 18:
                    v79 = "000000BA-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 19:
                    v79 = "00000041-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 20:
                    v79 = "000000BC-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 21:
                    v79 = "000000BD-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 22:
                    v79 = "00000082-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 23:
                    v79 = "000000D9-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 24:
                    v79 = "000000CF-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 25:
                    v79 = "000000CC-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 26:
                    v79 = "00000083-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 27:
                    v79 = "00000084-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 28:
                    v79 = "00000043-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 29:
                    v79 = "00000044-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 30:
                    v79 = "00000045-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 31:
                    v79 = "00000112-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 32:
                    v79 = "00000085-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 33:
                    v79 = "00000086-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 34:
                    v79 = "00000047-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 35:
                    v79 = "0000007E-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 36:
                    v79 = "000000B9-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 37:
                    v79 = "00000087-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 38:
                    v79 = "00000113-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 39:
                    v79 = "00000088-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 40:
                    v79 = "00000089-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 41:
                    v79 = "00000049-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 42:
                    v79 = "00000125-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 43:
                    v79 = "00000122-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 44:
                    v79 = "000000D8-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 45:
                    v79 = "0000008A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 46:
                    v79 = "0000004A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 47:
                    v79 = "000000D0-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 48:
                    v79 = "000000B7-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 49:
                    v79 = "0000020A-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 50:
                    v79 = "0000020F-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 51:
                    v79 = "0000008B-0000-1000-8000-0026BB765291";
                    goto LABEL_163;
                  case 52:
                    v79 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_163:
                    v78 = v79 - 32;
                    break;
                  default:
                    break;
                }

                LOBYTE(a1) = v78;
                if (v77 == (v78 | 0x8000000000000000))
                {
                  break;
                }

                v80 = sub_1D1E6904C();

                if (v80)
                {
                  goto LABEL_169;
                }

                v73 = (v73 + 1) & v74;
                if (((*&v180[(v73 >> 3) & 0xFFFFFFFFFFFFFF8] >> v73) & 1) == 0)
                {
                  v68 = v179;
                  v58 = v175;
                  goto LABEL_51;
                }
              }

LABEL_169:
              v68 = v179;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v184 = v68;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D178CF80(0, *(v68 + 16) + 1, 1);
                v68 = v184;
              }

              v83 = *(v68 + 16);
              v82 = *(v68 + 24);
              a1 = v83 + 1;
              if (v83 >= v82 >> 1)
              {
                sub_1D178CF80((v82 > 1), v83 + 1, 1);
                v68 = v184;
              }

              *(v68 + 16) = a1;
              *(v68 + v83 + 32) = v46;
              v58 = v175;
            }

            else
            {
              v68 = v179;
            }
          }

LABEL_51:
          if (++v66 == v178)
          {

            v84 = v68;
            goto LABEL_176;
          }
        }

        __break(1u);
      }

      else
      {

        v84 = MEMORY[0x1E69E7CC0];
LABEL_176:
        v175 = *(v84 + 16);
        if (!v175)
        {
LABEL_214:

          v93 = *&v163[*(v155 + 80)];

          v95 = v167;
          v58 = sub_1D1D1D15C(v94, v177);
          v167 = v95;

          v96 = *(v58 + 2);
          if (!v96)
          {

            v97 = MEMORY[0x1E69E7CC0];
LABEL_237:
            *v166 = v97;
LABEL_238:
            v123 = v163;
            goto LABEL_241;
          }

          v184 = MEMORY[0x1E69E7CC0];
          sub_1D178CF40(0, v96, 0);
          v97 = v184;
          v98 = v58 + 64;
          v99 = -1 << v58[32];
          v100 = sub_1D1E6869C();
          v101 = 0;
          v102 = *(v58 + 9);
          v165 = v58 + 72;
          v69 = &v187;
          v168 = v96;
          v175 = v102;
          v176 = v58 + 64;
          v177 = v58;
          while ((v100 & 0x8000000000000000) == 0)
          {
            v69 = 1 << v58[32];
            if (v100 >= v69)
            {
              break;
            }

            a1 = v100 >> 6;
            v69 = *&v98[8 * (v100 >> 6)];
            if ((v69 & (1 << v100)) == 0)
            {
              goto LABEL_308;
            }

            LODWORD(v69) = *(v58 + 9);
            if (v102 != v69)
            {
              goto LABEL_309;
            }

            v178 = v101;
            v179 = 1 << v100;
            v180 = v97;
            v106 = v173;
            v107 = *(v173 + 48);
            v108 = *(v58 + 6);
            v109 = sub_1D1E66A7C();
            v110 = *(v109 - 8);
            v46 = v170;
            (*(v110 + 16))(v170, v108 + *(v110 + 72) * v100, v109);
            sub_1D1D1D7E0(*(v58 + 7) + *(v169 + 72) * v100, v46 + v107, type metadata accessor for StaticService);
            v111 = v171;
            (*(v110 + 32))(v171, v46, v109);
            v112 = *(v106 + 48);
            v97 = v180;
            sub_1D1D26328(v46 + v107, v111 + v112, type metadata accessor for StaticService);
            v113 = v111 + v112;
            v114 = v172;
            sub_1D1D1D7E0(v113, v172, type metadata accessor for StaticService);
            sub_1D1741A30(v111, &qword_1EC642DB0, &unk_1D1E6F360);
            v184 = v97;
            v116 = *(v97 + 2);
            v115 = *(v97 + 3);
            if (v116 >= v115 >> 1)
            {
              sub_1D178CF40((v115 > 1), v116 + 1, 1);
              v114 = v172;
              v97 = v184;
            }

            v182 = v174;
            v183 = sub_1D1D1D848(&qword_1EC646AF0, type metadata accessor for StaticService);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v181);
            sub_1D1D1D7E0(v114, boxed_opaque_existential_1, type metadata accessor for StaticService);
            *(v97 + 2) = v116 + 1;
            sub_1D16EEE20(&v181, &v97[40 * v116 + 32]);
            sub_1D1D1D890(v114, type metadata accessor for StaticService);
            v58 = v177;
            LOBYTE(v69) = v177[32];
            v103 = 1 << v69;
            if (v100 >= 1 << v69)
            {
              goto LABEL_310;
            }

            v98 = v176;
            v69 = *&v176[8 * a1];
            if ((v69 & v179) == 0)
            {
              goto LABEL_311;
            }

            LODWORD(v102) = v175;
            if (v175 != *(v177 + 9))
            {
              goto LABEL_312;
            }

            v118 = v69 & (-2 << (v100 & 0x3F));
            if (v118)
            {
              v103 = __clz(__rbit64(v118)) | v100 & 0x7FFFFFFFFFFFFFC0;
              v69 = &v187;
              v104 = v168;
              v105 = v178;
            }

            else
            {
              v46 = a1 << 6;
              v119 = a1 + 1;
              v120 = &v165[8 * a1];
              v104 = v168;
              while (v119 < (v103 + 63) >> 6)
              {
                v121 = *v120++;
                a1 = v121;
                v46 += 64;
                ++v119;
                if (v121)
                {
                  sub_1D1716920(v100, v175, 0);
                  v69 = __clz(__rbit64(a1));
                  v103 = v69 + v46;
                  goto LABEL_233;
                }
              }

              sub_1D1716920(v100, v175, 0);
LABEL_233:
              v105 = v178;
            }

            v101 = v105 + 1;
            v100 = v103;
            if (v101 == v104)
            {

              goto LABEL_237;
            }
          }

          goto LABEL_307;
        }

        v69 = 0;
        v58 = "00-8000-0026BB765291";
        v179 = "73-8FBD-0E8978A33403";
        v180 = "17-A590-755E1AAC02AE";
        v178 = "60-AD68-D91053B75F44";
        v176 = "7E-BE63-1D00B1500545";
        while (v69 < *(v84 + 16))
        {
          v85 = v69 + 1;
          v86 = v84;
          LOBYTE(v181) = *(v84 + v69 + 32);
          ServiceKind.umbrellaCategory.getter(&v184);
          v87 = v180;
          if (v184 != 6)
          {
            v87 = v179;
          }

          v88 = v178;
          if (v184 != 4)
          {
            v88 = v176;
          }

          if (v184 <= 5u)
          {
            v87 = v88;
          }

          if (v184 == 2)
          {
            v89 = "73-A058-C5E64BC487B2";
          }

          else
          {
            v89 = "CE-986D-63B28F62C9E3";
          }

          if (v184)
          {
            v90 = "13-AA62-01754F256DD5";
          }

          else
          {
            v90 = "00-8000-0026BB765291";
          }

          if (v184 <= 1u)
          {
            v89 = v90;
          }

          if (v184 <= 3u)
          {
            v91 = v89;
          }

          else
          {
            v91 = v87;
          }

          if (v177 > 3u)
          {
            if (v177 > 5u)
            {
              if (v177 == 6)
              {
                v92 = v180;
              }

              else
              {
                v92 = v179;
              }
            }

            else if (v177 == 4)
            {
              v92 = v178;
            }

            else
            {
              v92 = v176;
            }
          }

          else if (v177 > 1u)
          {
            if (v177 == 2)
            {
              v92 = "73-A058-C5E64BC487B2";
            }

            else
            {
              v92 = "CE-986D-63B28F62C9E3";
            }
          }

          else
          {
            v92 = "00-8000-0026BB765291";
            if (v177)
            {
              v92 = "13-AA62-01754F256DD5";
            }
          }

          LOBYTE(a1) = v91;
          if ((v91 | 0x8000000000000000) == (v92 | 0x8000000000000000))
          {

            v84 = v86;
          }

          else
          {
            v46 = sub_1D1E6904C();

            v84 = v86;
            if ((v46 & 1) == 0)
            {
              goto LABEL_214;
            }
          }

          v69 = v85;
          if (v175 == v85)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_1D1E739C0;
            sub_1D17419CC(v154, v122 + 32);
            *v166 = v122;
            goto LABEL_238;
          }
        }
      }

      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
      goto LABEL_313;
    }

LABEL_45:
    sub_1D18EB2D8(v51, v49);
    goto LABEL_46;
  }

  if (!swift_dynamicCast())
  {
    v55 = v180;
    if (swift_dynamicCast())
    {
      if (v177 > 3u)
      {
        if (v177 > 5u)
        {
          if (v177 == 6)
          {
            v56 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
          }

          else
          {
            v56 = "7FADD792-61A4-4340-A849-215882E2F008";
          }
        }

        else if (v177 == 4)
        {
          v56 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
        }

        else
        {
          v56 = "63489665-5E39-4C17-A590-755E1AAC02AE";
        }
      }

      else if (v177 > 1u)
      {
        if (v177 == 2)
        {
          v56 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
        }

        else
        {
          v56 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
        }
      }

      else if (v177)
      {
        v56 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
      }

      else
      {
        v56 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
      }

      if (((v56 - 32) | 0x8000000000000000) == 0x80000001D1EB3730)
      {
      }

      else
      {
        v132 = sub_1D1E6904C();

        if ((v132 & 1) == 0)
        {
          v133 = MEMORY[0x1E69E7CC0];
          goto LABEL_267;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(a1, v133 + 32);
LABEL_267:
      *v166 = v133;
      v134 = type metadata accessor for StaticMediaProfile;
LABEL_287:
      v53 = v134;
      v54 = v55;
      goto LABEL_288;
    }

    v55 = v179;
    v57 = swift_dynamicCast();
    v58 = a1;
    LOBYTE(a1) = v177;
    if (v57)
    {
      if (v177 > 3u)
      {
        if (v177 > 5u)
        {
          if (v177 == 6)
          {
            v59 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
          }

          else
          {
            v59 = "7FADD792-61A4-4340-A849-215882E2F008";
          }
        }

        else if (v177 == 4)
        {
          v59 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
        }

        else
        {
          v59 = "63489665-5E39-4C17-A590-755E1AAC02AE";
        }
      }

      else if (v177 > 1u)
      {
        if (v177 != 2)
        {
          v143 = "CE-986D-63B28F62C9E3";
          goto LABEL_281;
        }

        v59 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
      }

      else if (v177)
      {
        v59 = "B92ACEEE-DFF5-4773-A058-C5E64BC487B2";
      }

      else
      {
        v59 = "0CA6536B-8EAD-4013-AA62-01754F256DD5";
      }

      v143 = (v59 - 32);
LABEL_281:
      if ((v143 | 0x8000000000000000) == 0x80000001D1EB3730)
      {
      }

      else
      {
        v144 = sub_1D1E6904C();

        if ((v144 & 1) == 0)
        {
          v145 = MEMORY[0x1E69E7CC0];
          goto LABEL_286;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v58, v145 + 32);
LABEL_286:
      *v166 = v145;
      v134 = type metadata accessor for StaticMediaSystem;
      goto LABEL_287;
    }

    v60 = v178;
    v61 = v174;
    if (swift_dynamicCast())
    {
      sub_1D17419CC(v58, &v181);
      v62 = v168;
      swift_dynamicCast();
      v63 = *(v62 + *(v61 + 112));
      if (v63 == 53)
      {
        LOBYTE(v63) = *(v62 + *(v61 + 104));
      }

      LOBYTE(v181) = v63;
      ServiceKind.umbrellaCategory.getter(&v184);
      if (sub_1D179F48C(v184, a1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v58, v64 + 32);
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      *v166 = v64;
      v131 = type metadata accessor for StaticService;
      goto LABEL_300;
    }

    v126 = v175;
    v60 = v176;
    if (!swift_dynamicCast())
    {
      v135 = v161;
      v136 = v162;
      if (swift_dynamicCast())
      {
        v46 = v159;
        sub_1D1D26328(v135, v159, type metadata accessor for StaticMatterDevice);
        static MatterDeviceType.primaryDeviceType(for:)(*(v46 + *(v136 + 32)), &v181);
        if (v181 == 28)
        {
          v137 = 7;
        }

        else
        {
          LOBYTE(v184) = v181;
          MatterDeviceType.umbrellaCategory.getter(&v186);
          v137 = v186;
        }

        if (sub_1D179F48C(a1, v137))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
          v150 = swift_allocObject();
          *(v150 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v58, v150 + 32);
        }

        else
        {
          v150 = MEMORY[0x1E69E7CC0];
        }

        v152 = type metadata accessor for StaticMatterDevice;
        goto LABEL_304;
      }

      v147 = v157;
      v148 = v158;
      if (!swift_dynamicCast())
      {
        *v166 = MEMORY[0x1E69E7CC0];
        return __swift_destroy_boxed_opaque_existential_1(&v185);
      }

      v46 = v156;
      sub_1D1D26328(v147, v156, type metadata accessor for StaticEndpoint);
      static MatterDeviceType.primaryDeviceType(for:)(*(v46 + *(v148 + 32)), &v181);
      LOBYTE(v69) = v181;
      if (v181 == 28)
      {
        v149 = 7;
LABEL_314:
        if (sub_1D179F48C(a1, v149))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
          v150 = swift_allocObject();
          *(v150 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v58, v150 + 32);
        }

        else
        {
          v150 = MEMORY[0x1E69E7CC0];
        }

        v152 = type metadata accessor for StaticEndpoint;
LABEL_304:
        sub_1D1D1D890(v46, v152);
        *v166 = v150;
        return __swift_destroy_boxed_opaque_existential_1(&v185);
      }

LABEL_313:
      LOBYTE(v184) = v69;
      MatterDeviceType.umbrellaCategory.getter(&v186);
      v149 = v186;
      goto LABEL_314;
    }

    sub_1D17419CC(v58, &v181);
    v62 = v165;
    swift_dynamicCast();
    v127 = *(v62 + *(v126 + 56));

    v129 = v163;
    sub_1D17727C0(v128, v163);

    v130 = v173;
    if ((*(v160 + 48))(v129, 1, v173) == 1)
    {
      sub_1D1741A30(v129, &qword_1EC643C68, &unk_1D1E764C0);
    }

    else
    {
      v138 = v129 + *(v130 + 48);
      v139 = *(v138 + *(v61 + 112));
      if (v139 == 53)
      {
        LOBYTE(v139) = *(v138 + *(v61 + 104));
      }

      sub_1D1D1D890(v138, type metadata accessor for StaticService);
      LOBYTE(v181) = v139;
      ServiceKind.umbrellaCategory.getter(&v184);
      v140 = v184;
      v141 = sub_1D1E66A7C();
      (*(*(v141 - 8) + 8))(v129, v141);
      if (v140 != 8)
      {
        if (a1 != 8 && (sub_1D179F48C(v140, a1) & 1) != 0)
        {
          goto LABEL_277;
        }

        goto LABEL_298;
      }
    }

    if (a1 == 8)
    {
LABEL_277:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v58, v142 + 32);
LABEL_299:
      *v166 = v142;
      v131 = type metadata accessor for StaticServiceGroup;
LABEL_300:
      v151 = v131;
      sub_1D1D1D890(v62, v131);
      v54 = v60;
      v53 = v151;
      goto LABEL_288;
    }

LABEL_298:
    v142 = MEMORY[0x1E69E7CC0];
    goto LABEL_299;
  }

  *v166 = MEMORY[0x1E69E7CC0];
  v53 = type metadata accessor for StaticActionSet;
  v54 = v28;
LABEL_288:
  sub_1D1D1D890(v54, v53);
  return __swift_destroy_boxed_opaque_existential_1(&v185);
}

uint64_t StaticRoom.orderedVisibleTileInfos(filter:matterSnapshot:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBF0, &qword_1D1EA7F60);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBF8, &qword_1D1EA7F68);
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC00, &qword_1D1EA7F70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  v23 = a2;
  sub_1D1741C08(a1, &v47 - v21, &qword_1EC64DC00, &qword_1D1EA7F70);
  v24 = type metadata accessor for TilesFilter(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
LABEL_2:
    LOBYTE(v53) = 8;
    v25 = a2;
    v26 = 1;
    v27 = 0;
LABEL_3:
    v28 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v53, v25, v26, v27);
LABEL_4:
    sub_1D1741A30(v22, &qword_1EC64DC00, &qword_1D1EA7F70);
    return v28;
  }

  sub_1D1741C08(v22, v20, &qword_1EC64DC00, &qword_1D1EA7F70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = v48;
      v44 = v49;
      (*(v48 + 32))(v12, v20, v49);
      LOBYTE(v53) = 8;
      v53 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v53, v23, 1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
      sub_1D17D8EA8(&qword_1EC64DC10, &qword_1EC64DC08, &qword_1D1EA7F78);
      v28 = sub_1D1E67A1C();

      (*(v45 + 8))(v12, v44);
      goto LABEL_4;
    }

    LOBYTE(v53) = *v20;
    v25 = a2;
    v26 = 0;
    v27 = 1;
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v47;
      (*(v47 + 32))(v8, v20, v5);
      LOBYTE(v53) = 8;
      v32 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v53, a2, 1, 0);
      MEMORY[0x1EEE9AC00](v32);
      *(&v47 - 2) = v8;
      v28 = sub_1D1796C00(sub_1D1D25B90, (&v47 - 4), v33);
      (*(v31 + 8))(v8, v5);
      goto LABEL_4;
    }

    sub_1D1D1D890(v20, type metadata accessor for TilesFilter);
    goto LABEL_2;
  }

  v34 = v50;
  (*(v51 + 32))(v50, v20, v52);
  v35 = type metadata accessor for StaticRoom(0);
  v36 = *(v2 + *(v35 + 64));

  v38 = sub_1D1781D38(v37);
  v39 = v38;
  v40 = *(v2 + *(v35 + 72));
  v41 = *(v38 + 16);
  if (!v41)
  {

    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v42 = sub_1D18042C8(*(v38 + 16), 0);
  v43 = *(type metadata accessor for StaticService(0) - 8);
  v49 = sub_1D1804A98(&v53, v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41, v39);

  sub_1D1716918();
  if (v49 == v41)
  {
    v34 = v50;
LABEL_17:
    v53 = v42;

    sub_1D1D235D8(&v53, v40);

    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    sub_1D17D8EA8(&qword_1EC64DC18, &qword_1EC64C9C8, &qword_1D1EA11A8);
    v46 = sub_1D1E67A1C();

    v28 = sub_1D18F9FDC(v46);

    (*(v51 + 8))(v34, v52);
    goto LABEL_4;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_1D1D1B26C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v46 - v8;
  v9 = type metadata accessor for StaticEndpoint();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v46 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v48 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v46 - v22;
  v23 = type metadata accessor for StaticMatterDevice();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46 - v28;
  sub_1D17419CC(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    v30 = sub_1D1D26328(v29, v27, type metadata accessor for StaticMatterDevice);
    v31 = *&v27[*(v23 + 56)];
    MEMORY[0x1EEE9AC00](v30);
    *(&v46 - 2) = v27;

    v32 = v52;
    sub_1D1746B78(sub_1D18076C8, v31, v7);

    v33 = v49;
    v34 = *(v49 + 48);
    if (v34(v7, 1, v9) == 1)
    {

      v36 = v50;
      sub_1D1771D7C(v35, v50);

      if (v34(v7, 1, v9) != 1)
      {
        sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
      }
    }

    else
    {
      v36 = v50;
      sub_1D1D26328(v7, v50, type metadata accessor for StaticEndpoint);
      (*(v33 + 56))(v36, 0, 1, v9);
    }

    if (v34(v36, 1, v9) == 1)
    {
      sub_1D1D1D890(v27, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v36, &qword_1EC644780, &qword_1D1E91AA0);
      goto LABEL_11;
    }

    v40 = v36;
    v41 = v47;
    sub_1D1D26328(v40, v47, type metadata accessor for StaticEndpoint);
    v42 = v48;
    sub_1D1D1D7E0(v41, v48, type metadata accessor for StaticEndpoint);
    v54 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
    v43 = sub_1D1E66C6C();
    if (v32)
    {

      sub_1D1D1D890(v41, type metadata accessor for StaticEndpoint);
      sub_1D1D1D890(v27, type metadata accessor for StaticMatterDevice);
      sub_1D1D1D890(v42, type metadata accessor for StaticEndpoint);
      v39 = 0;
      goto LABEL_18;
    }

    v39 = v43;
    sub_1D1D1D890(v41, type metadata accessor for StaticEndpoint);
    sub_1D1D1D890(v27, type metadata accessor for StaticMatterDevice);
    v44 = v42;
LABEL_17:
    sub_1D1D1D890(v44, type metadata accessor for StaticEndpoint);
    goto LABEL_18;
  }

  v37 = v52;
  if (swift_dynamicCast())
  {
    sub_1D1D26328(v19, v16, type metadata accessor for StaticEndpoint);
    sub_1D1D1D7E0(v16, v13, type metadata accessor for StaticEndpoint);
    v54 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DBE8, &qword_1D1EA7F58);
    v38 = sub_1D1E66C6C();
    if (v37)
    {

      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    sub_1D1D1D890(v16, type metadata accessor for StaticEndpoint);
    v44 = v13;
    goto LABEL_17;
  }

LABEL_11:
  v39 = 0;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v39 & 1;
}

BOOL StaticRoom.hasContent(filterCategory:matterSnapshot:forDashboard:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  v3 = *(StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v5, a2, a3, 0) + 16);

  return v3 != 0;
}

uint64_t sub_1D1D1B8DC(void *a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticZone();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = [a1 zones];
  sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
  v17 = sub_1D1E67C1C();

  if (v17 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v53 = v7;
    v19 = 0;
    v59 = v17 & 0xFFFFFFFFFFFFFF8;
    v60 = v17 & 0xC000000000000001;
    v58 = v17 + 32;
    v64 = 0;
    v65 = v67 + 32;
    v20 = &selRef_addZoneWithName_completionHandler_;
    v62 = MEMORY[0x1E69E7CC0];
    v51 = v15;
    v52 = v11;
    v50 = v17;
    v57 = i;
    while (1)
    {
      while (1)
      {
        if (v60)
        {
          v21 = MEMORY[0x1D3891EF0](v19, v17);
          v22 = __OFADD__(v19, 1);
          v23 = v19 + 1;
          if (v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v19 >= *(v59 + 16))
          {
            goto LABEL_37;
          }

          v21 = *(v58 + 8 * v19);
          v22 = __OFADD__(v19, 1);
          v23 = v19 + 1;
          if (v22)
          {
            goto LABEL_36;
          }
        }

        v63 = v23;
        v24 = v21;
        v25 = [v21 v20[6]];
        sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
        v26 = sub_1D1E67C1C();

        v7 = &v50;
        v69 = v61;
        MEMORY[0x1EEE9AC00](v27);
        *(&v50 - 2) = &v69;
        v28 = v64;
        LOBYTE(v25) = sub_1D18B8754(sub_1D1D26308, (&v50 - 4), v26);

        v64 = v28;
        if (v25)
        {
          break;
        }

        v19 = v63;
        if (v63 == v57)
        {
          goto LABEL_40;
        }
      }

      v29 = [v24 uniqueIdentifier];
      sub_1D1E66A5C();

      v30 = [v24 name];
      v31 = sub_1D1E6781C();
      v15 = v32;

      v7 = v53;
      v33 = &v11[*(v53 + 20)];
      *v33 = v31;
      v33[1] = v15;
      v34 = v20[6];
      v56 = v24;
      v35 = [v24 v34];
      v17 = sub_1D1E67C1C();

      if (v17 >> 62)
      {
        break;
      }

      v36 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v7;
      if (v36)
      {
        goto LABEL_11;
      }

LABEL_27:
      v39 = MEMORY[0x1E69E7CC0];
LABEL_28:

      v11 = v52;
      *&v52[*(v37 + 24)] = v39;
      v44 = v54;
      sub_1D1D26328(v11, v54, type metadata accessor for StaticZone);
      v15 = v51;
      sub_1D1D26328(v44, v51, type metadata accessor for StaticZone);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1D177D7A4(0, v62[2] + 1, 1, v62);
      }

      v17 = v50;
      v45 = v57;
      v19 = v63;
      v20 = &selRef_addZoneWithName_completionHandler_;
      v7 = v62[2];
      v46 = v62[3];
      if (v7 >= v46 >> 1)
      {
        v62 = sub_1D177D7A4(v46 > 1, v7 + 1, 1, v62);
      }

      v47 = v62;
      v62[2] = v7 + 1;
      sub_1D1D26328(v15, v47 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v7, type metadata accessor for StaticZone);
      if (v19 == v45)
      {
        goto LABEL_40;
      }
    }

    v36 = sub_1D1E6873C();
    v37 = v7;
    if (!v36)
    {
      goto LABEL_27;
    }

LABEL_11:
    v38 = 0;
    v11 = (v17 & 0xC000000000000001);
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11)
      {
        v40 = MEMORY[0x1D3891EF0](v38, v17);
      }

      else
      {
        if (v38 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v40 = *(v17 + 8 * v38 + 32);
      }

      v15 = v40;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v42 = [v40 uniqueIdentifier];
      sub_1D1E66A5C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1D177D0AC(0, v39[2] + 1, 1, v39);
      }

      v7 = v39[2];
      v43 = v39[3];
      v15 = (v7 + 1);
      if (v7 >= v43 >> 1)
      {
        v39 = sub_1D177D0AC(v43 > 1, v7 + 1, 1, v39);
      }

      v39[2] = v15;
      (*(v67 + 32))(v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v7, v68, v66);
      ++v38;
      if (v41 == v36)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_40:

  v48 = sub_1D17843EC(v62);

  return v48;
}

uint64_t sub_1D1D1BF5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for StaticRoom(0);
  __swift_allocate_value_buffer(v12, qword_1EE07DC10);
  v13 = __swift_project_value_buffer(v12, qword_1EE07DC10);
  if (qword_1EE07DC28 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EE07DC30);
  (*(v5 + 16))(v11, v14, v4);
  sub_1D1E669EC();
  v15 = sub_1D1E669FC();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  sub_1D1E66A6C();
  v30 = v9;
  v16 = MEMORY[0x1E69E7CC0];
  v31 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v29 = sub_1D18D50D4(v16);
  v28 = sub_1D18D5520(v16);
  v27 = sub_1D18D573C(v16);
  v26 = sub_1D18D5958(v16);
  v25 = sub_1D18D5B74(v16);
  v17 = sub_1D18D5D90(v16);
  v18 = sub_1D18D52F0(v16);
  v19 = *(v5 + 32);
  v19(v13, v11, v4);
  v20 = (v13 + v12[5]);
  *v20 = 0x6F52207974706D45;
  v20[1] = 0xEA00000000006D6FLL;
  sub_1D1741A90(v3, v13 + v12[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v13 + v12[7]) = 0;
  *(v13 + v12[8]) = 0;
  result = (v19)(v13 + v12[9], v30, v4);
  *(v13 + v12[10]) = v31;
  v22 = v28;
  *(v13 + v12[11]) = v29;
  *(v13 + v12[12]) = v22;
  v23 = v26;
  *(v13 + v12[13]) = v27;
  *(v13 + v12[14]) = v23;
  *(v13 + v12[15]) = v25;
  *(v13 + v12[16]) = v17;
  *(v13 + v12[17]) = v16;
  *(v13 + v12[18]) = v16;
  *(v13 + v12[19]) = v18;
  return result;
}

uint64_t sub_1D1D1C2DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for StaticRoom(0);
  __swift_allocate_value_buffer(v12, qword_1EC64DA80);
  v13 = __swift_project_value_buffer(v12, qword_1EC64DA80);
  if (qword_1EC6423F0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EC64DA98);
  (*(v5 + 16))(v11, v14, v4);
  sub_1D1E669EC();
  v15 = sub_1D1E669FC();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  sub_1D1E66A6C();
  v30 = v9;
  v16 = MEMORY[0x1E69E7CC0];
  v31 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v29 = sub_1D18D50D4(v16);
  v28 = sub_1D18D5520(v16);
  v27 = sub_1D18D573C(v16);
  v26 = sub_1D18D5958(v16);
  v25 = sub_1D18D5B74(v16);
  v17 = sub_1D18D5D90(v16);
  v18 = sub_1D18D52F0(v16);
  v19 = *(v5 + 32);
  v19(v13, v11, v4);
  v20 = (v13 + v12[5]);
  *v20 = 0x5220656C706D6153;
  v20[1] = 0xEB000000006D6F6FLL;
  sub_1D1741A90(v3, v13 + v12[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v13 + v12[7]) = 0;
  *(v13 + v12[8]) = 0;
  result = (v19)(v13 + v12[9], v30, v4);
  *(v13 + v12[10]) = v31;
  v22 = v28;
  *(v13 + v12[11]) = v29;
  *(v13 + v12[12]) = v22;
  v23 = v26;
  *(v13 + v12[13]) = v27;
  *(v13 + v12[14]) = v23;
  *(v13 + v12[15]) = v25;
  *(v13 + v12[16]) = v17;
  *(v13 + v12[17]) = v16;
  *(v13 + v12[18]) = v16;
  *(v13 + v12[19]) = v18;
  return result;
}

uint64_t sub_1D1D1C660@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for StaticRoom(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1D1D1D7E0(v6, a3, type metadata accessor for StaticRoom);
}

uint64_t sub_1D1D1C6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EE07DC30);
  v5 = __swift_project_value_buffer(v4, qword_1EE07DC30);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D1C81C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC64DA98);
  v5 = __swift_project_value_buffer(v4, qword_1EC64DA98);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t StaticRoom.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0x27203A6469202C27, 0xE800000000000000);
  sub_1D1E66A7C();
  sub_1D1D1D848(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC8710);
  if (*(v0 + *(v1 + 28)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0x27206D6F6F52;
}

uint64_t sub_1D1D1CAEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticService(0);
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1D1D7E0(v40 + v39, v41, type metadata accessor for StaticService);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1D1D7E0(v43, v60, type metadata accessor for StaticService);
          v50 = sub_1D1D0D3A0(v48, v49, v63);
          if (v47)
          {
            sub_1D1D1D890(v49, type metadata accessor for StaticService);
            sub_1D1D1D890(v48, type metadata accessor for StaticService);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1D1D890(v49, type metadata accessor for StaticService);
          sub_1D1D1D890(v48, type metadata accessor for StaticService);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1D1D7E0(a2, v22, type metadata accessor for StaticService);
        sub_1D1D1D7E0(a4, v18, type metadata accessor for StaticService);
        v32 = sub_1D1D0D3A0(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1D1D890(v34, type metadata accessor for StaticService);
        sub_1D1D1D890(v22, type metadata accessor for StaticService);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1D1D890(v18, type metadata accessor for StaticService);
      sub_1D1D1D890(v22, type metadata accessor for StaticService);
    }
  }

LABEL_62:
  sub_1D1DC712C(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1D1D15C(uint64_t a1, int a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D1D1DE58(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D1D20740(v11, v6, v4, a2);
  result = MEMORY[0x1D3893640](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D1D2C8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
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

  v13 = swift_slowAlloc();
  v14 = sub_1D1D20920(v13, v7, v5, a3);
  result = MEMORY[0x1D3893640](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}