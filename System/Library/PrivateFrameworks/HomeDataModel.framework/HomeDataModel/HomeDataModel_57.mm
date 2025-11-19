uint64_t StaticAccessory.SpecialMediaCategory.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.SpecialMediaCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C418, &qword_1D1E9E5F0);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C420, &qword_1D1E9E5F8);
  v7 = *(v6 - 8);
  v75 = v6;
  v76 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C428, &qword_1D1E9E600);
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C430, &qword_1D1E9E608);
  v14 = *(v13 - 8);
  v69 = v13;
  v70 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v62 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C438, &qword_1D1E9E610);
  v67 = *(v68 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v80 = &v62 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C440, &qword_1D1E9E618);
  v65 = *(v66 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C448, &qword_1D1E9E620);
  v64 = *(v22 - 8);
  v23 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C450, &unk_1D1E9E628);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v62 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D1BC946C();
  v33 = v84;
  sub_1D1E692FC();
  if (!v33)
  {
    v34 = v25;
    v63 = v22;
    v84 = v21;
    v36 = v80;
    v35 = v81;
    v37 = v82;
    v38 = sub_1D1E68DDC();
    v39 = (2 * *(v38 + 16)) | 1;
    v85 = v38;
    v86 = v38 + 32;
    v87 = 0;
    v88 = v39;
    v40 = sub_1D18085C4();
    if (v40 != 7 && v87 == v88 >> 1)
    {
      if (v40 <= 2u)
      {
        if (v40)
        {
          if (v40 == 1)
          {
            LOBYTE(v89) = 1;
            sub_1D1BC96B8();
            v50 = v84;
            sub_1D1E68C4C();
            (*(v65 + 8))(v50, v66);
            (*(v27 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v57 = 3;
            v58 = 1;
          }

          else
          {
            LOBYTE(v89) = 2;
            sub_1D1BC9664();
            sub_1D1E68C4C();
            (*(v67 + 8))(v36, v68);
            (*(v27 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v57 = 3;
            v58 = 2;
          }
        }

        else
        {
          LOBYTE(v89) = 0;
          sub_1D1BC970C();
          sub_1D1E68C4C();
          (*(v64 + 8))(v34, v63);
          (*(v27 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v58 = 0;
          v57 = 3;
        }
      }

      else
      {
        if (v40 > 4u)
        {
          v51 = v79;
          if (v40 == 5)
          {
            LOBYTE(v89) = 5;
            sub_1D1BC9514();
            v52 = v37;
            sub_1D1E68C4C();
            LOBYTE(v89) = 0;
            v53 = v75;
            v59 = sub_1D1E68D3C();
            LOBYTE(v89) = 1;
            v60 = sub_1D1E68D3C();
            (*(v76 + 8))(v52, v53);
            (*(v27 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v61 = 256;
            if ((v60 & 1) == 0)
            {
              v61 = 0;
            }

            v58 = v61 & 0xFFFFFFFFFFFFFFFELL | v59 & 1;
            v57 = 2;
          }

          else
          {
            LOBYTE(v89) = 6;
            sub_1D1BC94C0();
            v56 = v78;
            sub_1D1E68C4C();
            (*(v73 + 8))(v56, v74);
            (*(v27 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v58 = 3;
            v57 = 3;
          }

          v48 = v83;
          goto LABEL_22;
        }

        if (v40 == 3)
        {
          LOBYTE(v89) = 3;
          sub_1D1BC9610();
          v41 = v77;
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
          sub_1D1BC92B0(&qword_1EC646B78, &qword_1EC644B20);
          v42 = v69;
          sub_1D1E68CBC();
          (*(v70 + 8))(v41, v42);
          (*(v27 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v57 = 0;
          v58 = v89;
        }

        else
        {
          LOBYTE(v89) = 4;
          sub_1D1BC9568();
          v54 = v35;
          sub_1D1E68C4C();
          sub_1D1BC9760();
          v55 = v72;
          sub_1D1E68D7C();
          (*(v71 + 8))(v54, v55);
          (*(v27 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v58 = v89;
          v57 = 1;
        }
      }

      v48 = v83;
      v51 = v79;
LABEL_22:
      *v51 = v58;
      *(v51 + 8) = v57;
      return __swift_destroy_boxed_opaque_existential_1(v48);
    }

    v43 = sub_1D1E688EC();
    swift_allocError();
    v45 = v44;
    v46 = v30;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v45 = &type metadata for StaticAccessory.SpecialMediaCategory;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v27 + 8))(v46, v26);
    swift_unknownObjectRelease();
  }

  v48 = v83;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1D1BBA458()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BBA4B0()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BBA530@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v229 = a8;
  v209 = a7;
  v234 = a6;
  v223 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v227 = &v202 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v211 = &v202 - v22;
  v212 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v23 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v25 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v224 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v222 = &v202 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v210 = &v202 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v232 = &v202 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v226 = &v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v221 = &v202 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v213 = &v202 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v207 = &v202 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v230 = &v202 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v242 = *(v47 - 8);
  v243 = v47;
  v48 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v208 = &v202 - v49;
  v218 = type metadata accessor for StaticService(0);
  v239 = *(v218 - 8);
  v50 = *(v239 + 64);
  v51 = MEMORY[0x1EEE9AC00](v218);
  v233 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v238 = &v202 - v53;
  v54 = sub_1D1E66A7C();
  v244 = *(v54 - 8);
  v55 = *(v244 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v220 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v206 = &v202 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v219 = &v202 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v235 = &v202 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v202 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v202 - v67;
  v214 = *a5;
  v231 = a1;
  v69 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v70 = sub_1D1E67C1C();

  v71 = v70;
  if (v70 >> 62)
  {
    v72 = sub_1D1E6873C();
    v71 = v70;
  }

  else
  {
    v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = MEMORY[0x1E69E7CC0];
  v228 = v21;
  v225 = v25;
  v74 = v235;
  v217 = a9;
  v216 = a3;
  v215 = a4;
  if (v72)
  {
    v246 = v71;
    v247 = v72;
    v248 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v72 & ~(v72 >> 63), 0);
    if (v247 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v75 = 0;
    v76 = v248;
    v77 = v246;
    v78 = v246 & 0xC000000000000001;
    do
    {
      if (v78)
      {
        v79 = MEMORY[0x1D3891EF0](v75);
      }

      else
      {
        v79 = *(v77 + 8 * v75 + 32);
      }

      v80 = v79;
      v81 = [v79 uniqueIdentifier];
      sub_1D1E66A5C();

      v248 = v76;
      v83 = *(v76 + 16);
      v82 = *(v76 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1D178CEFC(v82 > 1, v83 + 1, 1);
        v76 = v248;
      }

      ++v75;
      *(v76 + 16) = v83 + 1;
      (*(v244 + 32))(v76 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v83, v66, v54);
      v77 = v246;
    }

    while (v247 != v75);

    v74 = v235;
    v73 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v76 = MEMORY[0x1E69E7CC0];
  }

  v248 = v73;
  v84 = v244;
  v241 = *(v76 + 16);
  if (v241)
  {
    v85 = 0;
    v86 = *(v244 + 16);
    v237 = *(v244 + 80);
    v245 = (v237 + 32) & ~v237;
    v246 = v86;
    v240 = v76 + v245;
    v87 = *(v244 + 72);
    v247 = v244 + 16;
    v88 = (v244 + 8);
    v236 = xmmword_1D1E739C0;
    v86(v68, v76 + v245, v54);
    while (1)
    {
      v91 = v248 + v245;
      v92 = *(v248 + 16) + 1;
      while (--v92)
      {
        sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v91 += v87;
        if (sub_1D1E6775C())
        {
          goto LABEL_17;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v89 = v245;
      v90 = swift_allocObject();
      *(v90 + 16) = v236;
      (v246)(v90 + v89, v68, v54);
      sub_1D17A3840(v90);
LABEL_17:
      ++v85;
      (*v88)(v68, v54);
      if (v85 == v241)
      {
        break;
      }

      (v246)(v68, v240 + v87 * v85, v54);
    }

    v84 = v244;
    v74 = v235;
  }

  else
  {
  }

  v93 = *(v248 + 16);
  v94 = v234;
  v246 = v248;
  if (v93)
  {
    v95 = *(v84 + 16);
    v96 = v248 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v97 = *(v84 + 72);
    v98 = (v84 + 8);
    v99 = MEMORY[0x1E69E7CC0];
    v247 = v95;
    v95(v74, v96, v54);
    while (1)
    {
      if (*(v94 + 16) && (v100 = sub_1D1742188(v74), (v101 & 1) != 0))
      {
        v102 = *(v239 + 72);
        v103 = *(v94 + 56) + v102 * v100;
        v104 = v233;
        sub_1D1BC8E68(v103, v233, type metadata accessor for StaticService);
        (*v98)(v74, v54);
        sub_1D1BC91F4(v104, v238, type metadata accessor for StaticService);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = v99;
        }

        else
        {
          v105 = sub_1D177D048(0, v99[2] + 1, 1, v99);
        }

        v107 = v105[2];
        v106 = v105[3];
        if (v107 >= v106 >> 1)
        {
          v105 = sub_1D177D048(v106 > 1, v107 + 1, 1, v105);
        }

        v105[2] = v107 + 1;
        v99 = v105;
        sub_1D1BC91F4(v238, v105 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + v107 * v102, type metadata accessor for StaticService);
        v94 = v234;
        v74 = v235;
        v95 = v247;
      }

      else
      {
        (*v98)(v74, v54);
      }

      v96 += v97;
      if (!--v93)
      {
        break;
      }

      v95(v74, v96, v54);
    }

    v84 = v244;
    v108 = v99;
  }

  else
  {

    v108 = MEMORY[0x1E69E7CC0];
  }

  v109 = *(v108 + 16);
  v110 = MEMORY[0x1E69E7CC0];
  v234 = v108;
  if (v109)
  {
    v248 = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v109, 0);
    v110 = v248;
    v111 = v108 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
    v112 = *(v239 + 72);
    v113 = v208;
    do
    {
      v114 = *(v243 + 48);
      sub_1D1BC8E68(v111, v113 + v114, type metadata accessor for StaticService);
      (*(v84 + 16))(v113, v113 + v114, v54);
      v248 = v110;
      v116 = *(v110 + 16);
      v115 = *(v110 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_1D178D2D8(v115 > 1, v116 + 1, 1);
        v110 = v248;
      }

      *(v110 + 16) = v116 + 1;
      sub_1D1741A90(v113, v110 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v116, &qword_1EC6436E8, &unk_1D1E71E40);
      v111 += v112;
      --v109;
    }

    while (v109);
  }

  v117 = v231;
  v118 = v210;
  if (*(v110 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
    v119 = sub_1D1E68BCC();
  }

  else
  {
    v119 = MEMORY[0x1E69E7CC8];
  }

  v248 = v119;
  sub_1D1BC6510(v110, 1, &v248);
  v202 = 0;

  v120 = v248;
  sub_1D1BBBE58(v117, v248, v230);
  sub_1D1BBD6A8(v117, v209, v221);

  v121 = sub_1D1BBDC8C(v117);
  v235 = v122;
  v123 = sub_1D1E682DC();
  v125 = v124;
  v126 = [v117 supportsNativeMatter];
  v247 = v123;
  LODWORD(v245) = v125;
  v242 = v120;
  *&v236 = v121;
  if ((v126 & 1) != 0 && (sub_1D1E682DC(), (v127 & 1) == 0))
  {
    v129 = sub_1D1E682DC() != 0;
    v128 = v130 | v129;
  }

  else
  {
    v128 = 0;
  }

  LODWORD(v243) = v128;
  LODWORD(v241) = sub_1D1BBDD50(v117, v128 & 1);
  LODWORD(v240) = sub_1D1BBDFD8(v117, v241 & 1);
  v131 = v234;
  LODWORD(v238) = sub_1D1BBEFB4(v117, v234);
  LODWORD(v237) = sub_1D1BBF91C(v117, v131);

  v132 = sub_1D1E669FC();
  v133 = *(*(v132 - 8) + 56);
  v134 = 1;
  v133(v232, 1, 1, v132);
  v135 = [v117 lastSeenStatus];
  if (v135)
  {
    v136 = v135;
    v137 = [v135 lastSeenDate];

    sub_1D1E669BC();
    v134 = 0;
  }

  v138 = v232;
  sub_1D1741A30(v232, &qword_1EC642570, &qword_1D1E6C6A0);
  v133(v118, v134, 1, v132);
  sub_1D1741A90(v118, v138, &qword_1EC642570, &qword_1D1E6C6A0);
  v139 = [v231 lastSeenStatus];
  if (v139)
  {
    v140 = v139;
    v141 = [v139 lowBatteryStatus];

    v142 = 2 * (v141 != 1);
    if (v141 == 2)
    {
      v142 = 1;
    }
  }

  else
  {
    v142 = 2;
  }

  LODWORD(v210) = v142;
  v143 = v228;
  v144 = v225;
  v145 = v216;
  v146 = v244;
  v147 = v231;
  v148 = [v231 supportsCHIP];
  v149 = [v147 requiresThreadRouter];
  v150 = [v147 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1741C08(v232, v222, &qword_1EC642570, &qword_1D1E6C6A0);
  v151 = [v147 deviceIdentifier];
  v152 = sub_1D1E6781C();
  v154 = v153;

  v155 = v211;
  sub_1D1E66A0C();
  v156 = (*(v146 + 48))(v155, 1, v54);
  LODWORD(v234) = v148;
  LODWORD(v233) = v149;
  if (v156 == 1)
  {
    sub_1D1741A30(v155, &qword_1EC642590, qword_1D1E71260);
    *v144 = v152;
    v144[1] = v154;
  }

  else
  {

    v157 = *(v146 + 32);
    v158 = v206;
    v157(v206, v155, v54);
    v157(v144, v158, v54);
  }

  swift_storeEnumTagMultiPayload();
  v159 = v231;
  v160 = v227;
  sub_1D1CE96D0(v159, v227);
  v161 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v161 - 8) + 56))(v160, 0, 1, v161);
  HMAccessory.dateAdded.getter(v224);
  v162 = sub_1D1A11844();
  if (v162 == 2)
  {
    v163 = v207;
    sub_1D1741C08(v230, v207, &qword_1EC6436F0, &qword_1D1E99BC0);
    v164 = v218;
    if ((*(v239 + 48))(v163, 1, v218) == 1)
    {
      sub_1D1741A30(v163, &qword_1EC6436F0, &qword_1D1E99BC0);
      LODWORD(v231) = 0;
    }

    else
    {
      LODWORD(v231) = *(v163 + *(v164 + 28));
      sub_1D1BC9194(v163, type metadata accessor for StaticService);
    }
  }

  else
  {
    LODWORD(v231) = v162;
  }

  v165 = [v223 uniqueIdentifier];
  sub_1D1E66A5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v166 = *(v146 + 72);
  v167 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1D1E739C0;
  v169 = [v145 uniqueIdentifier];
  sub_1D1E66A5C();

  v170 = sub_1D179BE14(v168);
  swift_setDeallocating();
  (*(v146 + 8))(v168 + v167, v54);
  swift_deallocClassInstance();
  v171 = [v145 name];
  v172 = sub_1D1E6781C();
  v209 = v173;

  LODWORD(v171) = [v159 isCurrentAccessory];
  LODWORD(v207) = HMAccessory.isFavorite.getter();
  LODWORD(v206) = HMAccessory.shouldShowInDashboard.getter();
  v205 = HMAccessory.contributesToHomeStatus.getter();
  v204 = HMAccessory.showAsIndividualTiles.getter();
  v174 = v213;
  sub_1D1741C08(v230, v213, &qword_1EC6436F0, &qword_1D1E99BC0);
  v175 = (*(v239 + 48))(v174, 1, v218);
  v212 = v170;
  v211 = v172;
  LODWORD(v208) = v171;
  if (v175 == 1)
  {
    sub_1D1741A30(v174, &qword_1EC6436F0, &qword_1D1E99BC0);
    v176 = 1;
  }

  else
  {
    (*(v146 + 16))(v143, v174, v54);
    sub_1D1BC9194(v174, type metadata accessor for StaticService);
    v176 = 0;
  }

  v177 = v221;
  (*(v146 + 56))(v143, v176, 1, v54);
  HMAccessory.specialMediaCategory.getter(&v248);
  v239 = v248;
  LODWORD(v221) = v249;
  v178 = [v159 category];
  v179 = [v178 categoryType];

  v218 = sub_1D1E6781C();
  v213 = v180;

  v181 = [v159 uniqueIdentifiersForBridgedAccessories];
  if (v181)
  {
    v182 = v181;
    v203 = sub_1D1E67C1C();
  }

  else
  {
    v203 = 0;
  }

  sub_1D1741C08(v177, v226, &qword_1EC644760, &unk_1D1E9E530);
  v215 = sub_1D1BBFC34(v159, v229, v215);
  v183 = [v159 symptomsHandler];
  if (v183)
  {
    v184 = v183;
    v185 = [v183 symptoms];

    sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
    sub_1D1BCBD88();
    v186 = sub_1D1E6816C();

    sub_1D1BACEEC(v186);
    v188 = v187;

    v189 = sub_1D1784578(v188);
  }

  else
  {

    v189 = 0;
  }

  sub_1D1741A30(v232, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v177, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A30(v230, &qword_1EC6436F0, &qword_1D1E99BC0);
  v190 = *(v244 + 32);
  v191 = v217;
  v190(v217, v219, v54);
  v192 = type metadata accessor for StaticAccessory(0);
  sub_1D1741A90(v222, v191 + v192[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v191 + v192[6]) = v210;
  v193 = (v191 + v192[7]);
  v194 = v235;
  *v193 = v236;
  v193[1] = v194;
  sub_1D1BC91F4(v225, v191 + v192[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v227, v191 + v192[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v224, v191 + v192[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v191 + v192[11]) = v231 & 1;
  v190(v191 + v192[12], v220, v54);
  *(v191 + v192[13]) = v212;
  v195 = (v191 + v192[14]);
  v196 = v209;
  *v195 = v211;
  v195[1] = v196;
  *(v191 + v192[15]) = v208;
  *(v191 + v192[16]) = v207 & 1;
  *(v191 + v192[17]) = v206 & 1;
  *(v191 + v192[18]) = v205 & 1;
  *(v191 + v192[19]) = v204 & 1;
  *(v191 + v192[20]) = v242;
  *(v191 + v192[21]) = v246;
  sub_1D1741A90(v228, v191 + v192[22], &qword_1EC642590, qword_1D1E71260);
  v197 = v191 + v192[23];
  *v197 = v239;
  *(v197 + 8) = v221;
  v198 = (v191 + v192[24]);
  v199 = v213;
  *v198 = v218;
  v198[1] = v199;
  *(v191 + v192[25]) = v203;
  *(v191 + v192[26]) = v240 & 1;
  *(v191 + v192[27]) = v241 & 1;
  *(v191 + v192[28]) = v238 & 1;
  *(v191 + v192[29]) = v237 & 1;
  sub_1D1741A90(v226, v191 + v192[30], &qword_1EC644760, &unk_1D1E9E530);
  *(v191 + v192[31]) = v215 & 1;
  *(v191 + v192[32]) = v214;
  *(v191 + v192[33]) = v189;
  *(v191 + v192[34]) = v234;
  *(v191 + v192[35]) = v233;
  v200 = v191 + v192[36];
  *v200 = v247;
  *(v200 + 8) = v245 & 1;
  *(v191 + v192[37]) = v243 & 1;
  return sub_1D1741A90(v229, v191 + v192[38], &qword_1EC643650, &qword_1D1E71D40);
}

uint64_t sub_1D1BBBE58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v136 = a3;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v134 = v4;
  v135 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1D1E66A7C();
  v132 = *(v131 - 8);
  v8 = *(v132 + 64);
  v9 = MEMORY[0x1EEE9AC00](v131);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v127 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v125 - v14;
  v137 = a1;
  v16 = [a1 services];
  v130 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v17 = sub_1D1E67C1C();

  v18 = v17;
  v145 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_157;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v129 = v15;
    v125 = v11;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = "00000000-0000-0000-0000-000000000000";
    if (v19)
    {
      v15 = v19;
      v22 = 0;
      v140 = v18 & 0xFFFFFFFFFFFFFF8;
      v141 = v18 & 0xC000000000000001;
      v128 = v18;
      v138 = v19;
      v139 = v18 + 32;
      while (1)
      {
        if (v141)
        {
          v18 = MEMORY[0x1D3891EF0](v22, v128);
        }

        else
        {
          if (v22 >= *(v140 + 16))
          {
            goto LABEL_154;
          }

          v18 = *(v139 + 8 * v22);
        }

        v11 = v18;
        v23 = __OFADD__(v22++, 1);
        if (v23)
        {
          break;
        }

        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v24 = qword_1EC6BE1B0;
        v25 = [v11 serviceType];
        v26 = sub_1D1E6781C();
        v28 = v27;

        v29._countAndFlagsBits = v26;
        v29._object = v28;
        ServiceKind.init(rawValue:)(v29);
        if (v144 == 53)
        {
          v30 = 0;
        }

        else
        {
          v30 = v144;
        }

        if (*(v24 + 16))
        {
          v142 = v11;
          v31 = *(v24 + 40);
          sub_1D1E6920C();
          v143 = v30;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v32 = sub_1D1E6926C();
          v11 = (v24 + 56);
          v33 = -1 << *(v24 + 32);
          v34 = v32 & ~v33;
          if ((*(v24 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
          {
            v35 = ~v33;
            while (1)
            {
              v36 = "takeSnaphotsWhenBusy";
              switch(*(*(v24 + 48) + v34))
              {
                case 1:
                  v37 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 2:
                  v37 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 3:
                  v37 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 4:
                  v37 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 5:
                  v37 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 6:
                  v37 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 7:
                  v37 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 8:
                  v37 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 9:
                  v37 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xA:
                  v37 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xB:
                  v37 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xC:
                  v37 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xD:
                  v37 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xE:
                  v37 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xF:
                  v37 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x10:
                  v37 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x11:
                  v37 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x12:
                  v37 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x13:
                  v37 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x14:
                  v37 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x15:
                  v37 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x16:
                  v37 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x17:
                  v37 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x18:
                  v37 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x19:
                  v37 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1A:
                  v37 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1B:
                  v37 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1C:
                  v37 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1D:
                  v37 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1E:
                  v37 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1F:
                  v37 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x20:
                  v37 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x21:
                  v37 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x22:
                  v37 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x23:
                  v37 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x24:
                  v37 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x25:
                  v37 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x26:
                  v37 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x27:
                  v37 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x28:
                  v37 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x29:
                  v37 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2A:
                  v37 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2B:
                  v37 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2C:
                  v37 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2D:
                  v37 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2E:
                  v37 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2F:
                  v37 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x30:
                  v37 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x31:
                  v37 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x32:
                  v37 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x33:
                  v37 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x34:
                  v37 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_72:
                  v36 = v37 - 32;
                  break;
                default:
                  break;
              }

              v38 = v36 | 0x8000000000000000;
              v39 = "takeSnaphotsWhenBusy";
              switch(v30)
              {
                case 1:
                  v40 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 2:
                  v40 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 3:
                  v40 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 4:
                  v40 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 5:
                  v40 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 6:
                  v40 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 7:
                  v40 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 8:
                  v40 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 9:
                  v40 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 10:
                  v40 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 11:
                  v40 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 12:
                  v40 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 13:
                  v40 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 14:
                  v40 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 15:
                  v40 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 16:
                  v40 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 17:
                  v40 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 18:
                  v40 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 19:
                  v40 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 20:
                  v40 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 21:
                  v40 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 22:
                  v40 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 23:
                  v40 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 24:
                  v40 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 25:
                  v40 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 26:
                  v40 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 27:
                  v40 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 28:
                  v40 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 29:
                  v40 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 30:
                  v40 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 31:
                  v40 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 32:
                  v40 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 33:
                  v40 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 34:
                  v40 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 35:
                  v40 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 36:
                  v40 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 37:
                  v40 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 38:
                  v40 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 39:
                  v40 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 40:
                  v40 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 41:
                  v40 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 42:
                  v40 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 43:
                  v40 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 44:
                  v40 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 45:
                  v40 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 46:
                  v40 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 47:
                  v40 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 48:
                  v40 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 49:
                  v40 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 50:
                  v40 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 51:
                  v40 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 52:
                  v40 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_126:
                  v39 = v40 - 32;
                  break;
                default:
                  break;
              }

              if (v38 == (v39 | 0x8000000000000000))
              {
                break;
              }

              v41 = sub_1D1E6904C();

              if (v41)
              {
                goto LABEL_133;
              }

              v34 = (v34 + 1) & v35;
              if (((*&v11[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34) & 1) == 0)
              {

                goto LABEL_134;
              }
            }

LABEL_133:
            sub_1D1E6896C();
            v42 = *(v145 + 16);
            sub_1D1E689AC();
            sub_1D1E689BC();
            v18 = sub_1D1E6897C();
LABEL_134:
            v15 = v138;
          }

          else
          {
          }
        }

        else
        {
        }

        if (v22 == v15)
        {
          v20 = v145;
          v21 = "00000000-0000-0000-0000-000000000000";
          goto LABEL_137;
        }
      }

      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

LABEL_137:

    if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
    {
      v43 = *(v20 + 16);
      if (!v43)
      {
        break;
      }

      goto LABEL_140;
    }

    v18 = sub_1D1E6873C();
    v43 = v18;
    if (!v18)
    {
      break;
    }

LABEL_140:
    v44 = 0;
    v11 = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v11)
      {
        v18 = MEMORY[0x1D3891EF0](v44, v20);
      }

      else
      {
        if (v44 >= *(v20 + 16))
        {
          goto LABEL_156;
        }

        v18 = *(v20 + 8 * v44 + 32);
      }

      v15 = v18;
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if ([v18 isPrimaryService])
      {

        v46 = [v15 uniqueIdentifier];
        v47 = v129;
        sub_1D1E66A5C();

        if (*(v133 + 16))
        {
          v48 = sub_1D1742188(v47);
          if (v49)
          {
            v50 = v126;
            sub_1D1BC8E68(*(v133 + 56) + *(v135 + 72) * v48, v126, type metadata accessor for StaticService);

            (*(v132 + 8))(v47, v131);
            sub_1D1BC91F4(v50, v136, type metadata accessor for StaticService);
            v51 = 0;
            return (*(v135 + 56))(v136, v51, 1, v134);
          }
        }

        (*(v132 + 8))(v47, v131);

        goto LABEL_160;
      }

      ++v44;
      if (v45 == v43)
      {
        goto LABEL_159;
      }
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    v52 = v18;
    v19 = sub_1D1E6873C();
    v18 = v52;
  }

LABEL_159:

LABEL_160:
  v53 = sub_1D18DEE18();
  v54 = [v137 category];
  v55 = [v54 categoryType];

  v56 = sub_1D1E6781C();
  v58 = v57;

  if (!*(v53 + 16))
  {

    goto LABEL_295;
  }

  v59 = sub_1D171D2F0(v56, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_295:

    goto LABEL_296;
  }

  v62 = *(*(v53 + 56) + 8 * v59);

  v63 = [v137 services];
  v64 = sub_1D1E67C1C();

  v65 = v64;
  v145 = MEMORY[0x1E69E7CC0];
  if (v64 >> 62)
  {
    goto LABEL_301;
  }

  for (i = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v65 = v89)
  {
    v67 = 0;
    v140 = v65 & 0xFFFFFFFFFFFFFF8;
    v141 = v65 & 0xC000000000000001;
    v129 = v65;
    v138 = i;
    v139 = v65 + 32;
    v68 = v62 + 56;
    v69 = v21 - 32;
    while (1)
    {
      if (v141)
      {
        v65 = MEMORY[0x1D3891EF0](v67, v129);
      }

      else
      {
        if (v67 >= *(v140 + 16))
        {
          goto LABEL_300;
        }

        v65 = *(v139 + 8 * v67);
      }

      v70 = v65;
      v23 = __OFADD__(v67++, 1);
      if (v23)
      {
        break;
      }

      v71 = [v65 serviceType];
      v72 = sub_1D1E6781C();
      v21 = v73;

      v74._countAndFlagsBits = v72;
      v74._object = v21;
      ServiceKind.init(rawValue:)(v74);
      if (v144 == 53)
      {
        v75 = 0;
      }

      else
      {
        v75 = v144;
      }

      if (*(v62 + 16))
      {
        v142 = v70;
        v76 = *(v62 + 40);
        sub_1D1E6920C();
        v143 = v75;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v77 = sub_1D1E6926C();
        v78 = -1 << *(v62 + 32);
        v79 = v77 & ~v78;
        if ((*(v68 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
        {
          v80 = ~v78;
          while (1)
          {
            v81 = v69;
            switch(*(*(v62 + 48) + v79))
            {
              case 1:
                v82 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 2:
                v82 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 3:
                v82 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 4:
                v82 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 5:
                v82 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 6:
                v82 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 7:
                v82 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 8:
                v82 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 9:
                v82 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xA:
                v82 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xB:
                v82 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xC:
                v82 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xD:
                v82 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xE:
                v82 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xF:
                v82 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x10:
                v82 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x11:
                v82 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x12:
                v82 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x13:
                v82 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x14:
                v82 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x15:
                v82 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x16:
                v82 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x17:
                v82 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x18:
                v82 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x19:
                v82 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1A:
                v82 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1B:
                v82 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1C:
                v82 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1D:
                v82 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1E:
                v82 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1F:
                v82 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x20:
                v82 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x21:
                v82 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x22:
                v82 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x23:
                v82 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x24:
                v82 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x25:
                v82 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x26:
                v82 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x27:
                v82 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x28:
                v82 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x29:
                v82 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2A:
                v82 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2B:
                v82 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2C:
                v82 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2D:
                v82 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2E:
                v82 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2F:
                v82 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x30:
                v82 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x31:
                v82 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x32:
                v82 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x33:
                v82 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x34:
                v82 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_230:
                v81 = (v82 - 32);
                break;
              default:
                break;
            }

            v83 = v81 | 0x8000000000000000;
            v84 = v69;
            switch(v75)
            {
              case 1:
                v85 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 2:
                v85 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 3:
                v85 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 4:
                v85 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 5:
                v85 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 6:
                v85 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 7:
                v85 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 8:
                v85 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 9:
                v85 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 10:
                v85 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 11:
                v85 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 12:
                v85 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 13:
                v85 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 14:
                v85 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 15:
                v85 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 16:
                v85 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 17:
                v85 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 18:
                v85 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 19:
                v85 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 20:
                v85 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 21:
                v85 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 22:
                v85 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 23:
                v85 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 24:
                v85 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 25:
                v85 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 26:
                v85 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 27:
                v85 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 28:
                v85 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 29:
                v85 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 30:
                v85 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 31:
                v85 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 32:
                v85 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 33:
                v85 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 34:
                v85 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 35:
                v85 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 36:
                v85 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 37:
                v85 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 38:
                v85 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 39:
                v85 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 40:
                v85 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 41:
                v85 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 42:
                v85 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 43:
                v85 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 44:
                v85 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 45:
                v85 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 46:
                v85 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 47:
                v85 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 48:
                v85 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 49:
                v85 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 50:
                v85 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 51:
                v85 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 52:
                v85 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_284:
                v84 = (v85 - 32);
                break;
              default:
                break;
            }

            if (v83 == (v84 | 0x8000000000000000))
            {
              break;
            }

            v21 = sub_1D1E6904C();

            if (v21)
            {
              goto LABEL_291;
            }

            v79 = (v79 + 1) & v80;
            if (((*(v68 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
            {

              goto LABEL_292;
            }
          }

LABEL_291:
          sub_1D1E6896C();
          v86 = *(v145 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          v65 = sub_1D1E6897C();
LABEL_292:
          i = v138;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v67 == i)
      {
        v88 = v145;
        goto LABEL_303;
      }
    }

    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    v89 = v65;
    i = sub_1D1E6873C();
  }

  v88 = MEMORY[0x1E69E7CC0];
LABEL_303:

  if ((v88 & 0x8000000000000000) == 0 && (v88 & 0x4000000000000000) == 0)
  {
    if (*(v88 + 16))
    {
      goto LABEL_306;
    }

LABEL_314:

    v88 = [v137 services];
    v97 = sub_1D1E67C1C();

    v139 = v97;
    if (!(v97 >> 62))
    {
      v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v98)
      {
LABEL_316:
        v99 = 0;
        v141 = v139 & 0xFFFFFFFFFFFFFF8;
        v142 = (v139 & 0xC000000000000001);
        v140 = v139 + 32;
        v138 = v98;
        while (1)
        {
          if (v142)
          {
            v100 = MEMORY[0x1D3891EF0](v99, v139);
          }

          else
          {
            if (v99 >= *(v141 + 16))
            {
              goto LABEL_345;
            }

            v100 = *(v140 + 8 * v99);
          }

          v101 = v100;
          v23 = __OFADD__(v99++, 1);
          if (v23)
          {
            __break(1u);
LABEL_345:
            __break(1u);
            goto LABEL_346;
          }

          if (qword_1EC642398 != -1)
          {
            swift_once();
          }

          v102 = qword_1EC6BE1B0;
          v88 = [v101 serviceType];
          v103 = sub_1D1E6781C();
          v105 = v104;

          v106._countAndFlagsBits = v103;
          v106._object = v105;
          ServiceKind.init(rawValue:)(v106);
          v107 = v144 == 53 ? 0 : v144;
          if (*(v102 + 16))
          {
            v108 = *(v102 + 40);
            sub_1D1E6920C();
            LOBYTE(v145) = v107;
            ServiceKind.rawValue.getter();
            sub_1D1E678EC();

            v88 = &v144;
            v109 = sub_1D1E6926C();
            v110 = -1 << *(v102 + 32);
            v111 = v109 & ~v110;
            if ((*(v102 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
            {
              break;
            }
          }

LABEL_317:

          if (v99 == v138)
          {
            goto LABEL_295;
          }
        }

        v112 = ~v110;
        while (1)
        {
          v144 = *(*(v102 + 48) + v111);
          LOBYTE(v145) = v107;
          v113 = ServiceKind.rawValue.getter();
          v115 = v114;
          v116 = ServiceKind.rawValue.getter();
          v88 = v117;
          if (v113 == v116 && v115 == v117)
          {
            break;
          }

          v119 = sub_1D1E6904C();

          if (v119)
          {
            goto LABEL_339;
          }

          v111 = (v111 + 1) & v112;
          if (((*(v102 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
          {
            goto LABEL_317;
          }
        }

LABEL_339:

        v120 = [v101 uniqueIdentifier];
        v121 = v125;
        sub_1D1E66A5C();

        v122 = v133;
        if (*(v133 + 16))
        {
          v123 = sub_1D1742188(v121);
          if (v124)
          {
            sub_1D1BC8E68(*(v122 + 56) + *(v135 + 72) * v123, v136, type metadata accessor for StaticService);

            (*(v132 + 8))(v121, v131);
            goto LABEL_342;
          }
        }

        (*(v132 + 8))(v121, v131);

LABEL_296:
        v51 = 1;
        return (*(v135 + 56))(v136, v51, 1, v134);
      }

      goto LABEL_295;
    }

LABEL_348:
    v98 = sub_1D1E6873C();
    if (v98)
    {
      goto LABEL_316;
    }

    goto LABEL_295;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_314;
  }

LABEL_306:
  if ((v88 & 0xC000000000000001) != 0)
  {
LABEL_346:
    v90 = MEMORY[0x1D3891EF0](0, v88);
  }

  else
  {
    if (!*(v88 + 16))
    {
      __break(1u);
      goto LABEL_348;
    }

    v90 = *(v88 + 32);
  }

  v91 = v90;

  v92 = [v91 uniqueIdentifier];

  v93 = v127;
  sub_1D1E66A5C();

  v94 = v133;
  if (!*(v133 + 16) || (v95 = sub_1D1742188(v93), (v96 & 1) == 0))
  {
    (*(v132 + 8))(v93, v131);
    goto LABEL_296;
  }

  sub_1D1BC8E68(*(v94 + 56) + *(v135 + 72) * v95, v136, type metadata accessor for StaticService);
  (*(v132 + 8))(v93, v131);
LABEL_342:
  v51 = 0;
  return (*(v135 + 56))(v136, v51, 1, v134);
}

uint64_t sub_1D1BBD6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v4 = sub_1D1E66A7C();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for StaticHH2Update(0);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() processInfo];
  v16 = [v15 processName];

  v17 = sub_1D1E6781C();
  v19 = v18;

  if (v17 == 0x6F42676E69727053 && v19 == 0xEB00000000647261)
  {

    goto LABEL_12;
  }

  v21 = sub_1D1E6904C();

  if (v21)
  {
LABEL_12:
    v29 = type metadata accessor for StaticSoftwareUpdate(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = v29;
    v32 = v54;
    v33 = 1;
    goto LABEL_13;
  }

  v22 = a1;
  v23 = [a1 softwareUpdateController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 availableUpdate];

    if (v25)
    {
      v26 = a1;
      v27 = v54;

      return sub_1D1D263B0(v25, v26, v27);
    }
  }

  if (![a1 isFirmwareUpdateAvailable])
  {
    v38 = v53;
    if (v53)
    {
      v39 = [a1 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v38 + 16))
      {
        v40 = sub_1D1742188(v7);
        v41 = v52;
        if (v42)
        {
          sub_1D1BC8E68(*(v38 + 56) + *(v52 + 72) * v40, v11, type metadata accessor for StaticHH2Update);
          v43 = 0;
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v43 = 1;
        v41 = v52;
      }

      (*(v51 + 8))(v7, v4);
      (*(v41 + 56))(v11, v43, 1, v12);
      if ((*(v41 + 48))(v11, 1, v12) != 1)
      {
        v45 = v50;
        sub_1D1BC91F4(v11, v50, type metadata accessor for StaticHH2Update);
        v46 = [v22 uniqueIdentifier];
        v47 = v54;
        sub_1D1E66A5C();

        v48 = type metadata accessor for StaticSoftwareUpdate(0);
        sub_1D1BC91F4(v45, v47 + *(v48 + 20), type metadata accessor for StaticHH2Update);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      }
    }

    else
    {
      (*(v52 + 56))(v11, 1, 1, v12);
    }

    sub_1D1741A30(v11, &qword_1EC64C5F8, &qword_1D1E9FA00);
    v44 = type metadata accessor for StaticSoftwareUpdate(0);
    return (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
  }

  v34 = [a1 uniqueIdentifier];
  v35 = v54;
  sub_1D1E66A5C();

  v36 = type metadata accessor for StaticSoftwareUpdate(0);
  v37 = *(v36 + 20);
  type metadata accessor for StaticSoftwareUpdate.Kind(0);
  swift_storeEnumTagMultiPayload();
  v30 = *(*(v36 - 8) + 56);
  v32 = v35;
  v33 = 0;
  v31 = v36;
LABEL_13:

  return v30(v32, v33, 1, v31);
}

uint64_t sub_1D1BBDC8C(void *a1)
{
  v2 = [a1 configuredName];
  if (v2)
  {
    goto LABEL_5;
  }

  HMAccessory.specialMediaCategory.getter(&v10);
  v3 = v11;
  if (v11 == 255 || (v4 = v10, v5 = sub_1D1C06E10(&v10), v7 = v6, sub_1D18EB2D8(v4, v3), !v7))
  {
    v2 = [a1 name];
LABEL_5:
    v8 = v2;
    v5 = sub_1D1E6781C();
  }

  return v5;
}

uint64_t sub_1D1BBDD50(void *a1, char a2)
{
  v4 = [a1 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  v9 = *MEMORY[0x1E696C9B8];
  if (v6 == sub_1D1E6781C() && v8 == v10)
  {
    goto LABEL_9;
  }

  v12 = sub_1D1E6904C();

  if ((v12 & 1) == 0)
  {
    v14 = [a1 category];
    v15 = [v14 categoryType];

    v16 = sub_1D1E6781C();
    v18 = v17;

    v19 = *MEMORY[0x1E696CA40];
    if (v16 != sub_1D1E6781C() || v18 != v20)
    {
      v13 = sub_1D1E6904C();
      goto LABEL_10;
    }

LABEL_9:
    v13 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v13 = 1;
LABEL_11:
  v21 = [a1 category];
  v22 = [v21 categoryType];

  v23 = sub_1D1E6781C();
  v25 = v24;

  v26 = *MEMORY[0x1E696CA18];
  if (v23 == sub_1D1E6781C() && v25 == v27)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_1D1E6904C();
  }

  HMAccessory.specialMediaCategory.getter(&v31);
  if (v32 != 255)
  {
    sub_1D18EB2D8(v31, v32);
    v29 = [a1 mediaProfile];
    if (v29 || (v29 = [a1 siriEndpointProfile]) != 0)
    {

LABEL_20:
      a2 = 1;
      return a2 & 1;
    }
  }

  if ((v13 | v28))
  {
    goto LABEL_20;
  }

  return a2 & 1;
}

uint64_t sub_1D1BBDFD8(void *a1, char a2)
{
  v3 = a1;
  v4 = [a1 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  v9 = *MEMORY[0x1E696CA48];
  if (v6 == sub_1D1E6781C() && v8 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_1D1E6904C();

    v13 = 0;
    if ((v12 & 1) == 0)
    {
      v71 = v3;
      v14 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v15 = sub_1D1E67C1C();

      v70 = a2;
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        goto LABEL_67;
      }

      v72 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v17 = 0;
      v18 = *MEMORY[0x1E696CAA8];
      v19 = *MEMORY[0x1E696CAB0];
      while (1)
      {
        if (v72 == v17)
        {

          v13 = 1;
          goto LABEL_30;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1D3891EF0](v17, v15);
        }

        else
        {
          if (v17 >= *(v16 + 16))
          {
            goto LABEL_66;
          }

          v21 = *(v15 + 8 * v17 + 32);
        }

        v22 = v21;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_65;
        }

        v23 = [v21 serviceType];
        v24 = sub_1D1E6781C();
        v26 = v25;

        if (v24 == sub_1D1E6781C() && v26 == v27)
        {

          goto LABEL_28;
        }

        v29 = sub_1D1E6904C();

        if (v29)
        {
          break;
        }

        v30 = [v22 serviceType];
        v31 = sub_1D1E6781C();
        v33 = v32;

        if (v31 == sub_1D1E6781C() && v33 == v34)
        {

          goto LABEL_29;
        }

        v20 = sub_1D1E6904C();

        ++v17;
        if (v20)
        {
          goto LABEL_28;
        }
      }

LABEL_28:

LABEL_29:
      v13 = 0;
LABEL_30:
      v3 = v71;
      a2 = v70;
    }
  }

  v35 = sub_1D1BBE660(v3, a2 & 1);
  v36 = [v3 category];
  v37 = [v36 categoryType];

  v38 = sub_1D1E6781C();
  v40 = v39;

  v41 = *MEMORY[0x1E696CA08];
  if (v38 == sub_1D1E6781C() && v40 == v42)
  {

    v45 = 0;
  }

  else
  {
    v44 = sub_1D1E6904C();

    v45 = 0;
    if ((v44 & 1) == 0)
    {
      v71 = v3;
      v46 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v47 = sub_1D1E67C1C();

      v73 = v13;
      v70 = v35;
      v16 = v47 & 0xFFFFFFFFFFFFFF8;
      if (v47 >> 62)
      {
        v48 = sub_1D1E6873C();
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = 0;
      v15 = v47 & 0xC000000000000001;
      while (v48 != v49)
      {
        if (v15)
        {
          v51 = MEMORY[0x1D3891EF0](v49, v47);
        }

        else
        {
          if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v51 = *(v47 + 8 * v49 + 32);
        }

        v52 = v51;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v72 = sub_1D1E6873C();
          goto LABEL_8;
        }

        v53 = [v51 serviceType];
        v54 = sub_1D1E6781C();
        v56 = v55;

        v57._countAndFlagsBits = v54;
        v57._object = v56;
        ServiceKind.init(rawValue:)(v57);
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3130 == v58)
        {

          goto LABEL_52;
        }

        v50 = sub_1D1E6904C();

        ++v49;
        if (v50)
        {

LABEL_52:
          v45 = 0;
LABEL_53:
          v3 = v71;
          v13 = v73;
          v35 = v70;
          goto LABEL_54;
        }
      }

      v45 = 1;
      goto LABEL_53;
    }
  }

LABEL_54:
  v59 = v13 & v35;
  v60 = [v3 category];
  v61 = [v60 categoryType];

  v62 = sub_1D1E6781C();
  v64 = v63;

  v65 = *MEMORY[0x1E696C980];
  if (v62 == sub_1D1E6781C() && v64 == v66)
  {
  }

  else
  {
    v68 = sub_1D1E6904C();

    if ((v68 & 1) == 0)
    {
      return v59 & 1;
    }
  }

  v59 |= v45;
  return v59 & 1;
}

uint64_t sub_1D1BBE660(void *a1, int a2)
{
  v3 = [a1 category];
  v4 = [v3 categoryType];

  v5 = sub_1D1E6781C();
  v7 = v6;

  v8 = *MEMORY[0x1E696C980];
  if (v5 == sub_1D1E6781C() && v7 == v9)
  {

    v12 = 1;
    goto LABEL_10;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
    v12 = 1;
LABEL_10:
    v43 = v12;
    goto LABEL_11;
  }

  v13 = [a1 uniqueIdentifiersForBridgedAccessories];
  if (v13)
  {
    v14 = v13;
    sub_1D1E66A7C();
    v15 = sub_1D1E67C1C();

    v16 = *(v15 + 16);

    v12 = v16 != 0;
    goto LABEL_10;
  }

  v43 = 0;
LABEL_11:
  v17 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v18 = sub_1D1E67C1C();

  v46 = v18;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_147:

    return v43 & (a2 ^ 1u);
  }

LABEL_146:
  v19 = sub_1D1E6873C();
  if (!v19)
  {
    goto LABEL_147;
  }

LABEL_13:
  v20 = 0;
  v45 = v19;
  while (1)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1D3891EF0](v20, v46);
      v22 = __OFADD__(v20++, 1);
      if (v22)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v20 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_145;
      }

      v21 = *(v46 + 32 + 8 * v20);
      v22 = __OFADD__(v20++, 1);
      if (v22)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }
    }

    if (qword_1EC642398 != -1)
    {
      v41 = v21;
      swift_once();
      v21 = v41;
    }

    v23 = qword_1EC6BE1B0;
    v47 = v21;
    v24 = [v21 serviceType];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    ServiceKind.init(rawValue:)(v28);
    v29 = v48 == 53 ? 0 : v48;
    if (*(v23 + 16))
    {
      v30 = *(v23 + 40);
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v31 = sub_1D1E6926C();
      v32 = -1 << *(v23 + 32);
      v33 = v31 & ~v32;
      if ((*(v23 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }
    }

LABEL_14:

    if (v20 == v45)
    {
      goto LABEL_147;
    }
  }

  v34 = ~v32;
  while (1)
  {
    v35 = "takeSnaphotsWhenBusy";
    switch(*(*(v23 + 48) + v33))
    {
      case 1:
        v36 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 2:
        v36 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 3:
        v36 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 4:
        v36 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 5:
        v36 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 6:
        v36 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 7:
        v36 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 8:
        v36 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 9:
        v36 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xA:
        v36 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xB:
        v36 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xC:
        v36 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xD:
        v36 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xE:
        v36 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0xF:
        v36 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x10:
        v36 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x11:
        v36 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x12:
        v36 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x13:
        v36 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x14:
        v36 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x15:
        v36 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x16:
        v36 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x17:
        v36 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x18:
        v36 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x19:
        v36 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1A:
        v36 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1B:
        v36 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1C:
        v36 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1D:
        v36 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1E:
        v36 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x1F:
        v36 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x20:
        v36 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x21:
        v36 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x22:
        v36 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x23:
        v36 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x24:
        v36 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x25:
        v36 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x26:
        v36 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x27:
        v36 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x28:
        v36 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x29:
        v36 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2A:
        v36 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2B:
        v36 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2C:
        v36 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2D:
        v36 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2E:
        v36 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x2F:
        v36 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x30:
        v36 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x31:
        v36 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x32:
        v36 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x33:
        v36 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_79;
      case 0x34:
        v36 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_79:
        v35 = v36 - 32;
        break;
      default:
        break;
    }

    v37 = v35 | 0x8000000000000000;
    v38 = "takeSnaphotsWhenBusy";
    switch(v29)
    {
      case 1:
        v39 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 2:
        v39 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 3:
        v39 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 4:
        v39 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 5:
        v39 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 6:
        v39 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 7:
        v39 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 8:
        v39 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 9:
        v39 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 10:
        v39 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 11:
        v39 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 12:
        v39 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 13:
        v39 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 14:
        v39 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 15:
        v39 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 16:
        v39 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 17:
        v39 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 18:
        v39 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 19:
        v39 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 20:
        v39 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 21:
        v39 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 22:
        v39 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 23:
        v39 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 24:
        v39 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 25:
        v39 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 26:
        v39 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 27:
        v39 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 28:
        v39 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 29:
        v39 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 30:
        v39 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 31:
        v39 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 32:
        v39 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 33:
        v39 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 34:
        v39 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 35:
        v39 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 36:
        v39 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 37:
        v39 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 38:
        v39 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 39:
        v39 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 40:
        v39 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 41:
        v39 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 42:
        v39 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 43:
        v39 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 44:
        v39 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 45:
        v39 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 46:
        v39 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 47:
        v39 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 48:
        v39 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 49:
        v39 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 50:
        v39 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 51:
        v39 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_133;
      case 52:
        v39 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_133:
        v38 = v39 - 32;
        break;
      default:
        break;
    }

    if (v37 == (v38 | 0x8000000000000000))
    {

      return 0;
    }

    v40 = sub_1D1E6904C();

    if (v40)
    {
      break;
    }

    v33 = (v33 + 1) & v34;
    if (((*(v23 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_1D1BBEFB4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v79 - v6;
  v86 = type metadata accessor for StaticService(0);
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v79 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v79 - v18;
  v89 = a1;
  v20 = [a1 category];
  v21 = [v20 categoryType];

  v22 = sub_1D1E6781C();
  v24 = v23;

  v25 = *MEMORY[0x1E696C998];
  if (v22 == sub_1D1E6781C() && v24 == v26)
  {
    goto LABEL_3;
  }

  v27 = sub_1D1E6904C();

  if (v27)
  {
    goto LABEL_5;
  }

  v71 = [v89 category];
  v72 = [v71 categoryType];

  v73 = sub_1D1E6781C();
  v75 = v74;

  v76 = *MEMORY[0x1E696C9C8];
  if (v73 == sub_1D1E6781C() && v75 == v77)
  {
LABEL_3:
  }

  else
  {
    v78 = sub_1D1E6904C();

    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_5:
  v28 = 0;
  v29 = *(a2 + 16);
  v88 = 0x80000001D1EB31F0;
  v89 = v29;
  v30 = v86;
  while (1)
  {
    if (v89 == v28)
    {
      return 0;
    }

    v85 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v32 = *(v7 + 72);
    v87 = a2 + v85;
    sub_1D1BC8E68(a2 + v85 + v32 * v28, v19, type metadata accessor for StaticService);
    v92 = v19[*(v30 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v88 == v33)
    {
      break;
    }

    ++v28;
    v31 = sub_1D1E6904C();

    sub_1D1BC9194(v19, type metadata accessor for StaticService);
    if (v31)
    {
      goto LABEL_11;
    }
  }

  sub_1D1BC9194(v19, type metadata accessor for StaticService);
LABEL_11:
  v84 = 0x80000001D1EB2FB0;
  v34 = a2 + v85;
  v35 = v89 + 1;
  while (1)
  {
    if (!--v35)
    {
      return 0;
    }

    sub_1D1BC8E68(v34, v17, type metadata accessor for StaticService);
    v92 = v17[*(v30 + 104)];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v84 == v37)
    {
      break;
    }

    v34 += v32;
    v36 = sub_1D1E6904C();

    sub_1D1BC9194(v17, type metadata accessor for StaticService);
    if (v36)
    {
      goto LABEL_17;
    }
  }

  sub_1D1BC9194(v17, type metadata accessor for StaticService);
LABEL_17:
  v38 = 0;
  v83 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D1BC8E68(v87 + v38 * v32, v90, type metadata accessor for StaticService);
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v39 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16))
    {
      goto LABEL_18;
    }

    v40 = *(v90 + *(v86 + 104));
    v41 = *(qword_1EC6BE1B0 + 40);
    sub_1D1E6920C();
    v91 = v40;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v42 = sub_1D1E6926C();
    v43 = -1 << *(v39 + 32);
    v44 = v42 & ~v43;
    if (((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_18;
    }

    v45 = ~v43;
    while (1)
    {
      v92 = *(*(v39 + 48) + v44);
      v91 = v40;
      v46 = ServiceKind.rawValue.getter();
      v48 = v47;
      if (v46 == ServiceKind.rawValue.getter() && v48 == v49)
      {
        break;
      }

      v51 = sub_1D1E6904C();

      if (v51)
      {
        goto LABEL_33;
      }

      v44 = (v44 + 1) & v45;
      if (((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_33:
    v52 = v81;
    sub_1D1741C08(v90 + *(v86 + 116), v81, &qword_1EC642590, qword_1D1E71260);
    v53 = sub_1D1E66A7C();
    v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
    sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
    if (v54 == 1)
    {
      sub_1D1BC91F4(v90, v80, type metadata accessor for StaticService);
      v55 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v55;
      v93 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v55 + 16) + 1, 1);
        v57 = v93;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D17915E0(v58 > 1, v59 + 1, 1);
        v57 = v93;
      }

      *(v57 + 16) = v59 + 1;
      v83 = v57;
      sub_1D1BC91F4(v80, v57 + v85 + v59 * v32, type metadata accessor for StaticService);
    }

    else
    {
LABEL_18:
      sub_1D1BC9194(v90, type metadata accessor for StaticService);
    }

    v38 = v38 + 1;
  }

  while (v38 != v89);
  v61 = v82;
  result = v83;
  v62 = *(v83 + 16);
  if (!v62)
  {
LABEL_52:
    v70 = 1;
LABEL_53:

    return v70;
  }

  v63 = 0;
  v64 = *(v86 + 104);
  v65 = v83 + v85;
  while (v63 < *(result + 16))
  {
    sub_1D1BC8E68(v65, v61, type metadata accessor for StaticService);
    v92 = *(v61 + v64);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v88 == v66)
    {
      goto LABEL_41;
    }

    v67 = sub_1D1E6904C();
    v61 = v82;

    if (v67)
    {
      goto LABEL_42;
    }

    v92 = *(v61 + v64);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v84 == v68)
    {
LABEL_41:

LABEL_42:
      sub_1D1BC9194(v61, type metadata accessor for StaticService);
      goto LABEL_43;
    }

    v69 = sub_1D1E6904C();
    v61 = v82;

    sub_1D1BC9194(v61, type metadata accessor for StaticService);
    if ((v69 & 1) == 0)
    {
      v70 = 0;
      goto LABEL_53;
    }

LABEL_43:
    ++v63;
    v65 += v32;
    result = v83;
    if (v62 == v63)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BBF91C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 category];
  v10 = [v9 categoryType];

  v11 = sub_1D1E6781C();
  v13 = v12;

  v14 = *MEMORY[0x1E696C9D0];
  if (v11 == sub_1D1E6781C() && v13 == v15)
  {
    goto LABEL_8;
  }

  v17 = sub_1D1E6904C();

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = [a1 category];
  v19 = [v18 categoryType];

  v20 = sub_1D1E6781C();
  v22 = v21;

  v23 = *MEMORY[0x1E696C9C8];
  if (v20 == sub_1D1E6781C() && v22 == v24)
  {
LABEL_8:
  }

  else
  {
    v36 = sub_1D1E6904C();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v25 = *(a2 + 16);
  if (!v25)
  {
    return 0;
  }

  v26 = 0;
  v27 = *(v4 + 104);
  v28 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v29 = *(v5 + 72);
  while (1)
  {
    sub_1D1BC8E68(v28, v8, type metadata accessor for StaticService);
    v37[15] = v8[v27];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3310 == v30)
    {

      result = sub_1D1BC9194(v8, type metadata accessor for StaticService);
      v34 = 1;
    }

    else
    {
      v32 = sub_1D1E6904C();

      result = sub_1D1BC9194(v8, type metadata accessor for StaticService);
      v34 = v32 & 1;
    }

    v35 = __OFADD__(v26, v34);
    v26 += v34;
    if (v35)
    {
      break;
    }

    v28 += v29;
    if (!--v25)
    {
      return v26 > 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BBFC34(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3;
  v6 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for StaticMatterDevice();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 2)
  {
    sub_1D1741C08(a2, v10, &qword_1EC643650, &qword_1D1E71D40);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
      if (([a1 isReachable] & 1) != 0 || objc_msgSend(a1, sel_suspendedState) == 3)
      {
        v3 = 1;
        return v3 & 1;
      }

      v17 = [a1 suspendedState] == 2;
    }

    else
    {
      sub_1D1BC91F4(v10, v15, type metadata accessor for StaticMatterDevice);
      v16 = *&v15[*(v11 + 28)];
      sub_1D1BC9194(v15, type metadata accessor for StaticMatterDevice);
      v17 = v16 == 1;
    }

    v3 = v17;
  }

  return v3 & 1;
}

Swift::String __swiftcall StaticAccessory.DeviceIdentifier.stringVersion()()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1BC8E68(v1, v10, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1D1E66A1C();
    v13 = v12;
    (*(v3 + 8))(v6, v2);
    v14 = v13;
    v15 = v11;
  }

  else
  {
    v15 = *v10;
    v14 = v10[1];
  }

  result._object = v14;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_1D1BBFFEC(uint64_t a1)
{
  v2 = sub_1D1BC985C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC0028(uint64_t a1)
{
  v2 = sub_1D1BC985C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BC0064()
{
  if (*v0)
  {
    result = 1684632949;
  }

  else
  {
    result = 0x746F6F7465756C62;
  }

  *v0;
  return result;
}

uint64_t sub_1D1BC009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F6F7465756C62 && a2 == 0xE900000000000068;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BC0180(uint64_t a1)
{
  v2 = sub_1D1BC97B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC01BC(uint64_t a1)
{
  v2 = sub_1D1BC97B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BC01F8(uint64_t a1)
{
  v2 = sub_1D1BC9808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BC0234(uint64_t a1)
{
  v2 = sub_1D1BC9808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.DeviceIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C460, &qword_1D1E9E638);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - v4;
  v5 = sub_1D1E66A7C();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C468, &qword_1D1E9E640);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C470, &qword_1D1E9E648);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC97B4();
  sub_1D1E6930C();
  sub_1D1BC8E68(v38, v15, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v34;
    v22 = v32;
    v23 = v15;
    v24 = v35;
    (*(v34 + 32))(v32, v23, v35);
    v41 = 1;
    sub_1D1BC9808();
    v25 = v33;
    v26 = v39;
    sub_1D1E68DFC();
    sub_1D1BC8FB4(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    v27 = v37;
    sub_1D1E68F1C();
    (*(v36 + 8))(v25, v27);
    (*(v21 + 8))(v22, v24);
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    v40 = 0;
    sub_1D1BC985C();
    v26 = v39;
    sub_1D1E68DFC();
    sub_1D1E68ECC();

    (*(v31 + 8))(v11, v8);
  }

  return (*(v16 + 8))(v19, v26);
}

uint64_t StaticAccessory.DeviceIdentifier.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1BC8E68(v0, v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1D3892850](1);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }
}

uint64_t StaticAccessory.DeviceIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1E6920C();
  sub_1D1BC8E68(v1, v10, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1D3892850](1);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }

  return sub_1D1E6926C();
}

uint64_t StaticAccessory.DeviceIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C490, &qword_1D1E9E650);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v51 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C498, &qword_1D1E9E658);
  v55 = *(v58 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v51 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C4A0, &unk_1D1E9E660);
  v61 = *(v59 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v51 - v11;
  v13 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D1BC97B4();
  v25 = v63;
  sub_1D1E692FC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v52 = v20;
  v53 = v17;
  v26 = v9;
  v28 = v58;
  v27 = v59;
  v29 = v60;
  v54 = v22;
  v63 = v13;
  v30 = v62;
  v31 = sub_1D1E68DDC();
  v32 = (2 * *(v31 + 16)) | 1;
  v65 = v31;
  v66 = v31 + 32;
  v67 = 0;
  v68 = v32;
  v33 = sub_1D18085D0();
  if (v33 == 2 || v67 != v68 >> 1)
  {
    v39 = sub_1D1E688EC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v41 = v63;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v61 + 8))(v12, v27);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v33)
  {
    v69 = 1;
    sub_1D1BC9808();
    sub_1D1E68C4C();
    v34 = v54;
    sub_1D1E66A7C();
    sub_1D1BC8FB4(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    v35 = v53;
    v36 = v56;
    sub_1D1E68D7C();
    (*(v57 + 8))(v29, v36);
    (*(v61 + 8))(v12, v27);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v37 = v35;
    v38 = v62;
  }

  else
  {
    v69 = 0;
    sub_1D1BC985C();
    sub_1D1E68C4C();
    v44 = v12;
    v45 = sub_1D1E68D2C();
    v46 = v61;
    v47 = v45;
    v49 = v48;
    (*(v55 + 8))(v26, v28);
    (*(v46 + 8))(v44, v27);
    swift_unknownObjectRelease();
    v50 = v52;
    *v52 = v47;
    v50[1] = v49;
    swift_storeEnumTagMultiPayload();
    v37 = v50;
    v38 = v30;
    v34 = v54;
  }

  sub_1D1BC91F4(v37, v34, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1BC91F4(v34, v38, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1D1BC1158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.BatteryStatus.description.getter()
{
  if (*v0)
  {
    result = 0x6C616D726F6ELL;
  }

  else
  {
    result = 7827308;
  }

  *v0;
  return result;
}

HomeDataModel::StaticAccessory::BatteryStatus_optional __swiftcall StaticAccessory.BatteryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1BC12A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E68C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D1BC1300(uint64_t *a1@<X8>)
{
  v2 = 7827308;
  if (*v1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1BC1334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C616D726F6ELL;
  }

  else
  {
    v4 = 7827308;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C616D726F6ELL;
  }

  else
  {
    v6 = 7827308;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t sub_1D1BC13D0()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1BC1448()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1BC14AC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t StaticAccessory.copyReplacing(id:name:lastSeenDate:lastSeenBatteryStatus:deviceIdentifier:deviceMetadata:dateAdded:isDoubleHigh:homeId:roomIds:roomName:isCurrentAccessory:isFavorite:shouldShowInDashboard:contributesToHomeStatus:showAsIndividualTiles:staticServicesDictionary:staticServiceIDs:primaryServiceId:specialMediaCategory:accessoryCategory:bridgedAccessoryIds:showAsBridge:isNonServiceBased:isCeilingFanWithLight:isPowerStrip:symptoms:supportsCHIP:requiresThreadRouter:softwareUpdate:isReachable:homeNonResponsiveType:matterNodeID:isNativeMatterAccessory:matterDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int (*a24)(uint64_t, uint64_t, uint64_t), uint64_t a25, unsigned __int8 *a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, char a33, uint64_t a34, unsigned __int8 a35, unsigned __int8 *a36, uint64_t a37, char a38, char a39, uint64_t a40)
{
  v199 = a8;
  v198 = a7;
  v195 = a6;
  v221 = a5;
  v201 = a4;
  v218 = a3;
  v206 = a2;
  v211 = a1;
  v208 = a36;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v204 = &v181[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v205 = &v181[-v45];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v202 = &v181[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v217 = &v181[-v50];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v197 = &v181[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v216 = &v181[-v55];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = &v181[-v58];
  v194 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v60 = *(v194 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v214 = &v181[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v63 - 8);
  v213 = &v181[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = MEMORY[0x1EEE9AC00](v65);
  v69 = &v181[-v68];
  MEMORY[0x1EEE9AC00](v67);
  v212 = &v181[-v70];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v192 = &v181[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = MEMORY[0x1EEE9AC00](v73);
  v215 = &v181[-v76];
  v77 = MEMORY[0x1EEE9AC00](v75);
  v196 = &v181[-v78];
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v181[-v79];
  v81 = sub_1D1E66A7C();
  v82 = *(*(v81 - 8) + 64);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v210 = &v181[-((v84 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v181[-v85];
  v219 = *v221;
  v209 = *a23;
  v200 = *(a23 + 8);
  v88 = v87;
  LODWORD(v221) = *v208;
  sub_1D1741C08(v211, v80, &qword_1EC642590, qword_1D1E71260);
  v89 = *(v88 + 48);
  v90 = v89(v80, 1, v81);
  v211 = v81;
  v220 = v88;
  v207 = v89;
  v208 = (v88 + 48);
  v203 = v86;
  if (v90 == 1)
  {
    (*(v88 + 16))(v86, v222, v81);
    if (v89(v80, 1, v81) != 1)
    {
      sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v88 + 32))(v86, v80, v81);
  }

  sub_1D1741C08(v201, v69, &qword_1EC642570, &qword_1D1E6C6A0);
  v91 = sub_1D1E669FC();
  v92 = *(v91 - 8);
  v93 = *(v92 + 48);
  v94 = v93(v69, 1, v91);
  v95 = v197;
  v96 = v194;
  if (v94 == 1)
  {
    v97 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v222 + *(v97 + 20), v212, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v93(v69, 1, v91) != 1)
    {
      sub_1D1741A30(v69, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v98 = v212;
    (*(v92 + 32))(v212, v69, v91);
    (*(v92 + 56))(v98, 0, 1, v91);
  }

  v99 = v211;
  v100 = v220;
  if (v219 == 2)
  {
    v219 = *(v222 + *(type metadata accessor for StaticAccessory(0) + 24));
  }

  if (v218)
  {
    v201 = v218;
  }

  else
  {
    v101 = (v222 + *(type metadata accessor for StaticAccessory(0) + 28));
    v102 = v101[1];
    v206 = *v101;
    v201 = v102;
  }

  sub_1D1741C08(v195, v59, &qword_1EC643C58, &unk_1D1E995D0);
  v103 = *(v60 + 48);
  if (v103(v59, 1, v96) == 1)
  {
    v104 = type metadata accessor for StaticAccessory(0);
    sub_1D1BC8E68(v222 + *(v104 + 32), v214, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v105 = v103(v59, 1, v96);

    if (v105 != 1)
    {
      sub_1D1741A30(v59, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    sub_1D1BC91F4(v59, v214, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  LODWORD(v218) = a10;
  sub_1D1741C08(v198, v95, &qword_1EC644620, &unk_1D1E75A00);
  v106 = type metadata accessor for StaticDeviceMetadata();
  v107 = *(v106 - 8);
  v108 = *(v107 + 48);
  if (v108(v95, 1, v106) == 1)
  {
    v109 = type metadata accessor for StaticAccessory(0);
    v110 = v222;
    sub_1D1741C08(v222 + *(v109 + 36), v216, &qword_1EC644620, &unk_1D1E75A00);
    if (v108(v95, 1, v106) != 1)
    {
      sub_1D1741A30(v95, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v111 = v216;
    sub_1D1BC91F4(v95, v216, type metadata accessor for StaticDeviceMetadata);
    (*(v107 + 56))(v111, 0, 1, v106);
    v110 = v222;
  }

  sub_1D1741C08(v199, v213, &qword_1EC642570, &qword_1D1E6C6A0);
  v112 = v200;
  v113 = v196;
  if (v218 == 2)
  {
    LODWORD(v218) = *(v110 + *(type metadata accessor for StaticAccessory(0) + 44));
  }

  sub_1D1741C08(a11, v113, &qword_1EC642590, qword_1D1E71260);
  v114 = v207;
  if (v207(v113, 1, v99) == 1)
  {
    v115 = type metadata accessor for StaticAccessory(0);
    (*(v100 + 16))(v210, v110 + *(v115 + 48), v99);
    if (v114(v113, 1, v99) != 1)
    {
      sub_1D1741A30(v113, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v100 + 32))(v210, v113, v99);
  }

  v189 = a12;
  if (a12)
  {
    v198 = a12;
  }

  else
  {
    v198 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 52));
  }

  v117 = a15;
  v118 = a14;
  if (!a14)
  {
    v119 = (v110 + *(type metadata accessor for StaticAccessory(0) + 56));
    a13 = *v119;
    v118 = v119[1];
  }

  v120 = a16;
  if (a15 == 2)
  {
    v121 = type metadata accessor for StaticAccessory(0);
    v120 = a16;
    v117 = *(v110 + *(v121 + 60));
  }

  v122 = a17;
  if (v120 == 2)
  {
    v123 = type metadata accessor for StaticAccessory(0);
    v122 = a17;
    v120 = *(v110 + *(v123 + 64));
  }

  v124 = a18;
  LODWORD(v195) = v120;
  if (v122 == 2)
  {
    v122 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 68));
  }

  LODWORD(v222) = a19;
  v199 = a13;
  LODWORD(v194) = v122;
  if (a18 == 2)
  {
    v124 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 72));
  }

  LODWORD(v197) = v117;
  v196 = v118;
  if (v222 == 2)
  {
    LODWORD(v222) = *(v110 + *(type metadata accessor for StaticAccessory(0) + 76));
  }

  if (a20)
  {
    v191 = a20;
  }

  else
  {
    v191 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 80));
  }

  v125 = v99;
  v126 = v112;
  if (a21)
  {
    v190 = a21;
  }

  else
  {
    v190 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 84));
  }

  v193 = v124;
  v127 = v192;
  sub_1D1741C08(a22, v192, &qword_1EC642590, qword_1D1E71260);
  v128 = v207;
  if (v207(v127, 1, v125) == 1)
  {
    v129 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v110 + *(v129 + 88), v215, &qword_1EC642590, qword_1D1E71260);
    v130 = v128(v127, 1, v125);

    v131 = v127;
    v132 = v202;
    if (v130 != 1)
    {
      sub_1D1741A30(v131, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v133 = v220;
    v134 = v215;
    (*(v220 + 32))(v215, v127, v125);
    (*(v133 + 56))(v134, 0, 1, v125);

    v132 = v202;
  }

  v136 = v209;
  v137 = v126;
  v138 = v126;
  if (v126 == 255)
  {
    v139 = v110 + *(type metadata accessor for StaticAccessory(0) + 92);
    v136 = *v139;
    v138 = *(v139 + 8);
    sub_1D18EB144(*v139, *(v139 + 8));
  }

  v202 = v136;
  v140 = a25;
  if (!a25)
  {
    v141 = (v110 + *(type metadata accessor for StaticAccessory(0) + 96));
    a24 = *v141;
    v140 = v141[1];
  }

  v142 = a27;
  v208 = a26;
  if (!a26)
  {
    v208 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 100));
  }

  v143 = a28;
  if (a27 == 2)
  {
    v144 = type metadata accessor for StaticAccessory(0);
    v143 = a28;
    v142 = *(v110 + *(v144 + 104));
  }

  v145 = a29;
  LODWORD(v192) = v138;
  if (v143 == 2)
  {
    v146 = type metadata accessor for StaticAccessory(0);
    v145 = a29;
    v143 = *(v110 + *(v146 + 108));
  }

  v147 = a30;
  v187 = v143;
  v184 = a25;
  if (v145 == 2)
  {
    v148 = type metadata accessor for StaticAccessory(0);
    v147 = a30;
    v145 = *(v110 + *(v148 + 112));
  }

  v207 = a24;
  v189 = v140;
  v188 = v142;
  v186 = v145;
  if (v147 == 2)
  {
    v185 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 116));
  }

  else
  {
    v185 = v147;
  }

  v149 = a35;
  sub_1D1741C08(a34, v132, &qword_1EC644760, &unk_1D1E9E530);
  v150 = type metadata accessor for StaticSoftwareUpdate(0);
  v151 = *(v150 - 8);
  v152 = *(v151 + 48);
  if (v152(v132, 1, v150) == 1)
  {
    v153 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v110 + *(v153 + 120), v217, &qword_1EC644760, &unk_1D1E9E530);
    v154 = v152(v132, 1, v150);
    sub_1D18EB144(v209, v137);

    if (v154 != 1)
    {
      sub_1D1741A30(v132, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v155 = v217;
    sub_1D1BC91F4(v132, v217, type metadata accessor for StaticSoftwareUpdate);
    (*(v151 + 56))(v155, 0, 1, v150);
    sub_1D18EB144(v209, v137);
  }

  if (a35 == 2)
  {
    v149 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 124));
  }

  if (v221 == 3)
  {
    LODWORD(v221) = *(v110 + *(type metadata accessor for StaticAccessory(0) + 128));
  }

  v156 = a32;
  v157 = a31;
  if (!a31)
  {
    v157 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 132));
  }

  v158 = a33;
  LODWORD(v209) = v149;
  if (a32 == 2)
  {
    v156 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 136));
  }

  v184 = v157;
  if (a33 == 2)
  {
    v158 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 140));
  }

  v159 = a39;
  if (a38)
  {
    v160 = (v110 + *(type metadata accessor for StaticAccessory(0) + 144));
    v183 = *v160;
    v182 = *(v160 + 8);
  }

  else
  {
    v182 = 0;
    v183 = a37;
  }

  v200 = v156;
  if (a39 == 2)
  {
    v159 = *(v110 + *(type metadata accessor for StaticAccessory(0) + 148));
  }

  v161 = v204;
  sub_1D1741C08(a40, v204, &qword_1EC643650, &qword_1D1E71D40);
  v162 = type metadata accessor for StaticMatterDevice();
  v163 = *(v162 - 8);
  v164 = *(v163 + 48);
  if (v164(v161, 1, v162) == 1)
  {
    v165 = type metadata accessor for StaticAccessory(0);
    v166 = v205;
    sub_1D1741C08(v110 + *(v165 + 152), v205, &qword_1EC643650, &qword_1D1E71D40);
    v167 = v164(v161, 1, v162);

    if (v167 != 1)
    {
      sub_1D1741A30(v161, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    v168 = v205;
    sub_1D1BC91F4(v161, v205, type metadata accessor for StaticMatterDevice);
    (*(v163 + 56))(v168, 0, 1, v162);
    v166 = v168;
  }

  v169 = *(v220 + 32);
  v170 = v211;
  v169(a9, v203, v211);
  v171 = type metadata accessor for StaticAccessory(0);
  sub_1D1741A90(v212, a9 + v171[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v171[6]) = v219;
  v172 = (a9 + v171[7]);
  v173 = v201;
  *v172 = v206;
  v172[1] = v173;
  sub_1D1BC91F4(v214, a9 + v171[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v216, a9 + v171[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v213, a9 + v171[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v171[11]) = v218 & 1;
  v169(a9 + v171[12], v210, v170);
  *(a9 + v171[13]) = v198;
  v174 = (a9 + v171[14]);
  v175 = v196;
  *v174 = v199;
  v174[1] = v175;
  *(a9 + v171[15]) = v197 & 1;
  *(a9 + v171[16]) = v195 & 1;
  *(a9 + v171[17]) = v194 & 1;
  *(a9 + v171[18]) = v193 & 1;
  *(a9 + v171[19]) = v222 & 1;
  *(a9 + v171[20]) = v191;
  *(a9 + v171[21]) = v190;
  sub_1D1741A90(v215, a9 + v171[22], &qword_1EC642590, qword_1D1E71260);
  v176 = a9 + v171[23];
  *v176 = v202;
  *(v176 + 8) = v192;
  v177 = (a9 + v171[24]);
  v178 = v189;
  *v177 = v207;
  v177[1] = v178;
  *(a9 + v171[25]) = v208;
  *(a9 + v171[26]) = v188 & 1;
  *(a9 + v171[27]) = v187 & 1;
  *(a9 + v171[28]) = v186 & 1;
  *(a9 + v171[29]) = v185 & 1;
  sub_1D1741A90(v217, a9 + v171[30], &qword_1EC644760, &unk_1D1E9E530);
  *(a9 + v171[31]) = v209 & 1;
  *(a9 + v171[32]) = v221;
  *(a9 + v171[33]) = v184;
  *(a9 + v171[34]) = v200 & 1;
  *(a9 + v171[35]) = v158 & 1;
  v179 = a9 + v171[36];
  *v179 = v183;
  *(v179 + 8) = v182;
  *(a9 + v171[37]) = v159 & 1;
  return sub_1D1741A90(v166, a9 + v171[38], &qword_1EC643650, &qword_1D1E71D40);
}

uint64_t sub_1D1BC2BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC64C2B0);
  v5 = __swift_project_value_buffer(v4, qword_1EC64C2B0);
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

uint64_t sub_1D1BC2D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC64C2C8);
  v5 = __swift_project_value_buffer(v4, qword_1EC64C2C8);
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

uint64_t sub_1D1BC2E58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E66A7C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D1BC2EF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v67 = v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v57 - v7;
  v58 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v57 - v15;
  v17 = sub_1D1E66A7C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v64 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v57[0] = v57 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v57 - v24;
  v26 = type metadata accessor for StaticAccessory(0);
  __swift_allocate_value_buffer(v26, qword_1EC64C2E0);
  v27 = __swift_project_value_buffer(v26, qword_1EC64C2E0);
  if (qword_1EC642370 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v17, qword_1EC64C2B0);
  v59 = *(v18 + 16);
  v60 = v25;
  v57[1] = v18 + 16;
  v59(v25, v28, v17);
  v29 = sub_1D1E669FC();
  v30 = *(*(v29 - 8) + 56);
  v61 = v16;
  v30(v16, 1, 1, v29);
  v31 = v63;
  sub_1D1E66A0C();
  v32 = (*(v18 + 48))(v31, 1, v17);
  v66 = v10;
  if (v32 == 1)
  {
    sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
    *v10 = 0xD000000000000024;
    v10[1] = 0x80000001D1EC6310;
  }

  else
  {
    v33 = *(v18 + 32);
    v34 = v57[0];
    v33(v57[0], v63, v17);
    v33(v66, v34, v17);
  }

  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v35 - 8) + 56))(v67, 1, 1, v35);
  v30(v65, 1, 1, v29);
  if (qword_1EE07DD68 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StaticHome();
  v37 = __swift_project_value_buffer(v36, qword_1EE081500);
  v38 = v59;
  v59(v64, v37, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v39 = *(v18 + 72);
  v40 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D1E739C0;
  if (qword_1EE07DC08 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for StaticRoom(0);
  v43 = __swift_project_value_buffer(v42, qword_1EE07DC10);
  v38(v41 + v40, v43, v17);
  v63 = sub_1D179BE14(v41);
  swift_setDeallocating();
  (*(v18 + 8))(v41 + v40, v17);
  swift_deallocClassInstance();
  v44 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  if (qword_1EC6423B8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v17, qword_1EC6BE1D8);
  v46 = v62;
  v38(v62, v45, v17);
  (*(v18 + 56))(v46, 0, 1, v17);
  v47 = v26[30];
  v48 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v48 - 8) + 56))(v27 + v47, 1, 1, v48);
  v49 = v26[38];
  v50 = type metadata accessor for StaticMatterDevice();
  (*(*(v50 - 8) + 56))(v27 + v49, 1, 1, v50);
  v51 = *(v18 + 32);
  v51(v27, v60, v17);
  sub_1D1741A90(v61, v27 + v26[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v27 + v26[6]) = 2;
  v52 = (v27 + v26[7]);
  *v52 = 0x6341207974706D45;
  v52[1] = 0xEF79726F73736563;
  sub_1D1BC91F4(v66, v27 + v26[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v67, v27 + v26[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v65, v27 + v26[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v27 + v26[11]) = 0;
  v51(v27 + v26[12], v64, v17);
  *(v27 + v26[13]) = v63;
  *(v27 + v26[14]) = xmmword_1D1E9E4C0;
  *(v27 + v26[15]) = 0;
  *(v27 + v26[16]) = 0;
  *(v27 + v26[17]) = 1;
  *(v27 + v26[18]) = 1;
  *(v27 + v26[19]) = 0;
  *(v27 + v26[20]) = v44;
  *(v27 + v26[21]) = MEMORY[0x1E69E7CC0];
  result = sub_1D1741A90(v46, v27 + v26[22], &qword_1EC642590, qword_1D1E71260);
  v54 = v27 + v26[23];
  *v54 = 0;
  *(v54 + 8) = -1;
  v55 = (v27 + v26[24]);
  *v55 = 0;
  v55[1] = 0;
  *(v27 + v26[25]) = 0;
  *(v27 + v26[26]) = 0;
  *(v27 + v26[27]) = 0;
  *(v27 + v26[28]) = 0;
  *(v27 + v26[29]) = 0;
  *(v27 + v26[31]) = 1;
  *(v27 + v26[32]) = 0;
  *(v27 + v26[33]) = 0;
  *(v27 + v26[34]) = 0;
  *(v27 + v26[35]) = 0;
  v56 = v27 + v26[36];
  *v56 = 0;
  *(v56 + 8) = 1;
  *(v27 + v26[37]) = 0;
  return result;
}

double sub_1D1BC3804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v67 - v5;
  *&v75 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - v14;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v67 - v23;
  v25 = type metadata accessor for StaticAccessory(0);
  __swift_allocate_value_buffer(v25, qword_1EC64C2F8);
  v26 = __swift_project_value_buffer(v25, qword_1EC64C2F8);
  if (qword_1EC642378 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EC64C2C8);
  v28 = *(v17 + 16);
  v72 = v17 + 16;
  v73 = v24;
  v81 = v28;
  v28(v24, v27, v16);
  v29 = sub_1D1E669FC();
  v30 = *(*(v29 - 8) + 56);
  v74 = v15;
  v30(v15, 1, 1, v29);
  sub_1D1E66A0C();
  v31 = (*(v17 + 48))(v6, 1, v16);
  v79 = v9;
  v77 = v17;
  if (v31 == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    *v9 = 0xD000000000000024;
    *(v9 + 1) = 0x80000001D1EC6310;
  }

  else
  {
    v32 = *(v17 + 32);
    v33 = v71;
    v32(v71, v6, v16);
    v32(v79, v33, v16);
  }

  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v34 - 8) + 56))(v80, 1, 1, v34);
  v35 = v78;
  sub_1D1E6698C();
  v30(v35, 0, 1, v29);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v16, qword_1EC6BE208);
  v37 = v81;
  v81(v76, v36, v16);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v39 = v77;
  v40 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v69 = *(v77 + 72);
  v70 = v38;
  v41 = swift_allocObject();
  v75 = xmmword_1D1E739C0;
  *(v41 + 16) = xmmword_1D1E739C0;
  if (qword_1EC6423F0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v16, qword_1EC64DA98);
  v37(v41 + v40, v42, v16);
  v71 = sub_1D179BE14(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v16);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E0, &unk_1D1E9F9E0);
  v43 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40) - 8);
  v44 = *(*v43 + 72);
  v45 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v75;
  v47 = v46 + v45;
  v48 = v43[14];
  if (qword_1EC6423C0 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v16, qword_1EC6BE1F0);
  v81(v47, v49, v16);
  if (qword_1EC6423B0 != -1)
  {
    swift_once();
  }

  v67 = 0x80000001D1EC6340;
  v50 = type metadata accessor for StaticService(0);
  v51 = __swift_project_value_buffer(v50, qword_1EC6BE1C0);
  sub_1D1BC8E68(v51, v47 + v48, type metadata accessor for StaticService);
  v68 = sub_1D18D5D90(v46);
  swift_setDeallocating();
  sub_1D1741A30(v47, &qword_1EC6436E8, &unk_1D1E71E40);
  swift_deallocClassInstance();
  v52 = swift_allocObject();
  *(v52 + 16) = v75;
  v53 = v81;
  v81(v52 + v40, v49, v16);
  v54 = v25[22];
  v53(v26 + v54, v49, v16);
  v55 = v77;
  (*(v77 + 56))(v26 + v54, 0, 1, v16);
  v56 = v25[30];
  v57 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v57 - 8) + 56))(v26 + v56, 1, 1, v57);
  v58 = v25[38];
  v59 = type metadata accessor for StaticMatterDevice();
  (*(*(v59 - 8) + 56))(v26 + v58, 1, 1, v59);
  v60 = *(v55 + 32);
  v60(v26, v73, v16);
  sub_1D1741A90(v74, v26 + v25[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v26 + v25[6]) = 2;
  v61 = (v26 + v25[7]);
  v62 = v67;
  *v61 = 0xD000000000000016;
  v61[1] = v62;
  sub_1D1BC91F4(v79, v26 + v25[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v80, v26 + v25[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v78, v26 + v25[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v26 + v25[11]) = 0;
  v60(v26 + v25[12], v76, v16);
  *(v26 + v25[13]) = v71;
  result = 4.07710212e87;
  *(v26 + v25[14]) = xmmword_1D1E9E4D0;
  *(v26 + v25[15]) = 0;
  *(v26 + v25[16]) = 0;
  *(v26 + v25[17]) = 1;
  *(v26 + v25[18]) = 1;
  *(v26 + v25[19]) = 0;
  *(v26 + v25[20]) = v68;
  *(v26 + v25[21]) = v52;
  v64 = v26 + v25[23];
  *v64 = 0;
  *(v64 + 8) = -1;
  v65 = (v26 + v25[24]);
  *v65 = 0;
  v65[1] = 0;
  *(v26 + v25[25]) = 0;
  *(v26 + v25[26]) = 0;
  *(v26 + v25[27]) = 0;
  *(v26 + v25[28]) = 0;
  *(v26 + v25[29]) = 0;
  *(v26 + v25[31]) = 1;
  *(v26 + v25[32]) = 0;
  *(v26 + v25[33]) = 0;
  *(v26 + v25[34]) = 0;
  *(v26 + v25[35]) = 0;
  v66 = v26 + v25[36];
  *v66 = 0;
  *(v66 + 8) = 1;
  *(v26 + v25[37]) = 0;
  return result;
}

uint64_t sub_1D1BC426C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for StaticAccessory(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1D1BC8E68(v6, a3, type metadata accessor for StaticAccessory);
}

uint64_t StaticAccessory.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = type metadata accessor for StaticAccessory(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_1D1BC8E68(v0, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
  sub_1D1E6927C();
  v7 = sub_1D1E6928C();
  (*(v2 + 8))(v5, v1);
  v18[1] = v7;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v27 + 1))
  {
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D1741C08(v24, &v19, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v20)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0x206E776F6E6B6E55;
      }

      if (v20)
      {
        v10 = v20;
      }

      else
      {
        v10 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3890F70](v9, v10);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v11 = v22;
      v12 = v23;
      sub_1D1741A30(v24, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D177CF00(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1D177CF00((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      sub_1D1E68BFC();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v16 = sub_1D1E6770C();

  return v16;
}

uint64_t _s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = sub_1D1E66A7C();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v31 - v18;
  v20 = (&v31 + *(v17 + 56) - v18);
  sub_1D1BC8E68(a1, &v31 - v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1BC8E68(a2, v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1BC8E68(v19, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v25 = *v14;
    v24 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v20 && v24 == v20[1])
      {
        v29 = v20[1];
      }

      else
      {
        v27 = v20[1];
        v28 = sub_1D1E6904C();

        if ((v28 & 1) == 0)
        {
          sub_1D1BC9194(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
          goto LABEL_8;
        }
      }

      sub_1D1BC9194(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1D1741A30(v19, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D1BC8E68(v19, v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v12, v32);
    goto LABEL_7;
  }

  v21 = v32;
  (*(v4 + 32))(v7, v20, v32);
  v22 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v23 = *(v4 + 8);
  v23(v7, v21);
  v23(v12, v21);
  sub_1D1BC9194(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return v22 & 1;
}

BOOL _s13HomeDataModel15StaticAccessoryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v179 = type metadata accessor for StaticMatterDevice();
  v178 = *(v179 - 8);
  v4 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v163 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C600, &qword_1D1E9FA08);
  v10 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v12 = &v163 - v11;
  v175 = type metadata accessor for StaticSoftwareUpdate(0);
  v172 = *(v175 - 8);
  v13 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v173 = &v163 - v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  v18 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v176 = &v163 - v19;
  v20 = sub_1D1E66A7C();
  v184 = *(v20 - 8);
  v185 = v20;
  v21 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v183 = &v163 - v25;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v26 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v186 = &v163 - v27;
  v28 = type metadata accessor for StaticDeviceMetadata();
  v192 = *(v28 - 8);
  v193 = v28;
  v29 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v188 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v190 = &v163 - v33;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  v34 = *(*(v191 - 8) + 64);
  MEMORY[0x1EEE9AC00](v191);
  v194 = &v163 - v35;
  v36 = sub_1D1E669FC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v195 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v187 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v163 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v189 = &v163 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v163 - v50;
  v52 = a2;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v166 = v9;
  v167 = v12;
  v170 = type metadata accessor for StaticAccessory(0);
  v53 = v170[5];
  v168 = v46;
  v54 = *(v46 + 48);
  v169 = a1;
  sub_1D1741C08(a1 + v53, v51, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(v52 + v53, &v51[v54], &qword_1EC642570, &qword_1D1E6C6A0);
  v55 = *(v37 + 48);
  v56 = v52;
  v57 = v36;
  if (v55(v51, 1, v36) == 1)
  {
    if (v55(&v51[v54], 1, v36) == 1)
    {
      v164 = v55;
      v165 = v36;
      sub_1D1741A30(v51, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_11;
    }

LABEL_7:
    v58 = &qword_1EC642AC0;
    v59 = &qword_1D1E6E810;
    v60 = v51;
LABEL_8:
    sub_1D1741A30(v60, v58, v59);
    return 0;
  }

  sub_1D1741C08(v51, v45, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v55(&v51[v54], 1, v36) == 1)
  {
    (*(v37 + 8))(v45, v36);
    goto LABEL_7;
  }

  v164 = v55;
  v62 = v195;
  (*(v37 + 32))(v195, &v51[v54], v57);
  sub_1D1BC8FB4(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v63 = sub_1D1E6775C();
  v64 = *(v37 + 8);
  v64(v62, v57);
  v165 = v57;
  v64(v45, v57);
  sub_1D1741A30(v51, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v65 = v170;
  v66 = v170[6];
  v67 = v169;
  v68 = *(v169 + v66);
  v69 = *(v56 + v66);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v69 == 2)
    {
      return 0;
    }

    if (v68)
    {
      v70 = 0x6C616D726F6ELL;
    }

    else
    {
      v70 = 7827308;
    }

    if (v68)
    {
      v71 = 0xE600000000000000;
    }

    else
    {
      v71 = 0xE300000000000000;
    }

    if (v69)
    {
      v72 = 0x6C616D726F6ELL;
    }

    else
    {
      v72 = 7827308;
    }

    if (v69)
    {
      v73 = 0xE600000000000000;
    }

    else
    {
      v73 = 0xE300000000000000;
    }

    if (v70 == v72 && v71 == v73)
    {
    }

    else
    {
      v74 = sub_1D1E6904C();

      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v75 = v65[7];
  v76 = *(v67 + v75);
  v77 = *(v67 + v75 + 8);
  v78 = (v56 + v75);
  if ((v76 != *v78 || v77 != v78[1]) && (sub_1D1E6904C() & 1) == 0 || (_s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(v67 + v65[8], v56 + v65[8]) & 1) == 0)
  {
    return 0;
  }

  v163 = v56;
  v79 = v65[9];
  v80 = *(v191 + 48);
  v81 = v194;
  sub_1D1741C08(v67 + v79, v194, &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741C08(v163 + v79, v81 + v80, &qword_1EC644620, &unk_1D1E75A00);
  v82 = v193;
  v83 = *(v192 + 48);
  if (v83(v81, 1, v193) == 1)
  {
    if (v83(v81 + v80, 1, v82) == 1)
    {
      sub_1D1741A30(v81, &qword_1EC644620, &unk_1D1E75A00);
      goto LABEL_42;
    }

LABEL_40:
    v58 = &qword_1EC644880;
    v59 = &qword_1D1E76500;
    v60 = v81;
    goto LABEL_8;
  }

  v84 = v190;
  sub_1D1741C08(v81, v190, &qword_1EC644620, &unk_1D1E75A00);
  if (v83(v81 + v80, 1, v82) == 1)
  {
    sub_1D1BC9194(v84, type metadata accessor for StaticDeviceMetadata);
    goto LABEL_40;
  }

  v85 = v188;
  sub_1D1BC91F4(v81 + v80, v188, type metadata accessor for StaticDeviceMetadata);
  v86 = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v84, v85);
  sub_1D1BC9194(v85, type metadata accessor for StaticDeviceMetadata);
  sub_1D1BC9194(v84, type metadata accessor for StaticDeviceMetadata);
  sub_1D1741A30(v81, &qword_1EC644620, &unk_1D1E75A00);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v87 = v170[10];
  v88 = *(v168 + 48);
  v51 = v189;
  sub_1D1741C08(v67 + v87, v189, &qword_1EC642570, &qword_1D1E6C6A0);
  v89 = v163 + v87;
  v90 = v163;
  sub_1D1741C08(v89, &v51[v88], &qword_1EC642570, &qword_1D1E6C6A0);
  v91 = v165;
  v92 = v164;
  if (v164(v51, 1, v165) == 1)
  {
    if (v92(&v51[v88], 1, v91) == 1)
    {
      sub_1D1741A30(v51, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  v93 = v187;
  sub_1D1741C08(v51, v187, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v92(&v51[v88], 1, v91) == 1)
  {
    (*(v37 + 8))(v93, v91);
    goto LABEL_7;
  }

  v94 = &v51[v88];
  v95 = v195;
  (*(v37 + 32))(v195, v94, v91);
  sub_1D1BC8FB4(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v96 = v93;
  v97 = sub_1D1E6775C();
  v98 = *(v37 + 8);
  v98(v95, v91);
  v98(v96, v91);
  v90 = v163;
  sub_1D1741A30(v51, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v97 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v99 = v170;
  if (*(v67 + v170[11]) != *(v90 + v170[11]))
  {
    return 0;
  }

  v100 = v170[12];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v67 + v99[13]), *(v90 + v99[13])) & 1) == 0)
  {
    return 0;
  }

  v101 = v99[14];
  v102 = (v67 + v101);
  v103 = *(v67 + v101 + 8);
  v104 = (v90 + v101);
  v105 = v104[1];
  if (v103)
  {
    if (!v105 || (*v102 != *v104 || v103 != v105) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v105)
  {
    return 0;
  }

  if (*(v67 + v99[15]) != *(v90 + v99[15]) || *(v67 + v99[16]) != *(v90 + v99[16]) || *(v67 + v99[17]) != *(v90 + v99[17]) || *(v169 + v170[18]) != *(v163 + v170[18]) || *(v169 + v170[19]) != *(v163 + v170[19]) || (sub_1D18490AC(*(v169 + v170[20]), *(v163 + v170[20])) & 1) == 0 || (sub_1D17796E4(*(v169 + v170[21]), *(v163 + v170[21])) & 1) == 0)
  {
    return 0;
  }

  v106 = v170[22];
  v107 = *(v182 + 48);
  v108 = v186;
  sub_1D1741C08(v169 + v106, v186, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v163 + v106, v108 + v107, &qword_1EC642590, qword_1D1E71260);
  v109 = *(v184 + 48);
  if (v109(v108, 1, v185) == 1)
  {
    if (v109(v186 + v107, 1, v185) == 1)
    {
      sub_1D1741A30(v186, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  v110 = v186;
  sub_1D1741C08(v186, v183, &qword_1EC642590, qword_1D1E71260);
  if (v109(v110 + v107, 1, v185) == 1)
  {
    (*(v184 + 8))(v183, v185);
LABEL_70:
    v58 = &qword_1EC642980;
    v59 = &unk_1D1E6E6E0;
    v60 = v186;
    goto LABEL_8;
  }

  v111 = v184;
  v112 = v186;
  v113 = v186 + v107;
  v114 = v181;
  v115 = v185;
  (*(v184 + 32))(v181, v113, v185);
  sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v116 = v183;
  v117 = sub_1D1E6775C();
  v118 = *(v111 + 8);
  v118(v114, v115);
  v118(v116, v115);
  sub_1D1741A30(v112, &qword_1EC642590, qword_1D1E71260);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v119 = v170[23];
  v120 = (v169 + v119);
  v121 = *(v169 + v119);
  v122 = *(v169 + v119 + 8);
  v123 = v163 + v119;
  v124 = *v123;
  v125 = *(v123 + 8);
  if (v122 == 255)
  {
    sub_1D18EB144(*v120, 255);
    if (v125 == 255)
    {
      sub_1D18EB144(v124, 255);
      sub_1D18EB2D8(v121, 255);
      goto LABEL_81;
    }

    sub_1D18EB144(v124, v125);
LABEL_79:
    sub_1D18EB2D8(v121, v122);
    sub_1D18EB2D8(v124, v125);
    return 0;
  }

  v198 = v121;
  v199 = v122;
  if (v125 == 255)
  {
    sub_1D18EB144(v121, v122);
    sub_1D18EB144(v124, 255);
    sub_1D18EB144(v121, v122);
    sub_1D1771B5C(v121, v122);
    goto LABEL_79;
  }

  v196 = v124;
  v197 = v125;
  sub_1D18EB144(v121, v122);
  sub_1D18EB144(v124, v125);
  sub_1D18EB144(v121, v122);
  v126 = _s13HomeDataModel15StaticAccessoryV20SpecialMediaCategoryO2eeoiySbAE_AEtFZ_0(&v198, &v196);
  sub_1D1771B5C(v196, v197);
  sub_1D1771B5C(v198, v199);
  sub_1D18EB2D8(v121, v122);
  if (!v126)
  {
    return 0;
  }

LABEL_81:
  v127 = v170[24];
  v128 = (v169 + v127);
  v129 = *(v169 + v127 + 8);
  v130 = (v163 + v127);
  v131 = v130[1];
  if (v129)
  {
    if (!v131 || (*v128 != *v130 || v129 != v131) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v131)
  {
    return 0;
  }

  v132 = v170[25];
  v133 = *(v169 + v132);
  v134 = *(v163 + v132);
  if (v133)
  {
    if (!v134)
    {
      return 0;
    }

    v135 = *(v163 + v132);

    v136 = sub_1D17796E4(v133, v134);

    if ((v136 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v134)
  {
    return 0;
  }

  if (*(v169 + v170[26]) != *(v163 + v170[26]) || *(v169 + v170[27]) != *(v163 + v170[27]) || *(v169 + v170[28]) != *(v163 + v170[28]) || *(v169 + v170[29]) != *(v163 + v170[29]))
  {
    return 0;
  }

  v137 = v170[30];
  v138 = *(v171 + 48);
  v139 = v176;
  sub_1D1741C08(v169 + v137, v176, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v163 + v137, v139 + v138, &qword_1EC644760, &unk_1D1E9E530);
  v140 = *(v172 + 48);
  if (v140(v139, 1, v175) == 1)
  {
    if (v140(v176 + v138, 1, v175) == 1)
    {
      sub_1D1741A30(v176, &qword_1EC644760, &unk_1D1E9E530);
      goto LABEL_100;
    }

    goto LABEL_108;
  }

  v143 = v176;
  sub_1D1741C08(v176, v173, &qword_1EC644760, &unk_1D1E9E530);
  if (v140(v143 + v138, 1, v175) == 1)
  {
    sub_1D1BC9194(v173, type metadata accessor for StaticSoftwareUpdate);
LABEL_108:
    v58 = &qword_1EC64C608;
    v59 = &qword_1D1E9FA10;
LABEL_113:
    v147 = &v200;
LABEL_114:
    v60 = *(v147 - 32);
    goto LABEL_8;
  }

  sub_1D1BC91F4(v176 + v138, v174, type metadata accessor for StaticSoftwareUpdate);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    sub_1D1BC9194(v174, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1BC9194(v173, type metadata accessor for StaticSoftwareUpdate);
    v58 = &qword_1EC644760;
    v59 = &unk_1D1E9E530;
    goto LABEL_113;
  }

  v144 = v173;
  v145 = v174;
  updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v173 + *(v175 + 20), v174 + *(v175 + 20));
  sub_1D1BC9194(v145, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1BC9194(v144, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1741A30(v176, &qword_1EC644760, &unk_1D1E9E530);
  if (!updated)
  {
    return 0;
  }

LABEL_100:
  if (*(v169 + v170[31]) != *(v163 + v170[31]) || *(v169 + v170[32]) != *(v163 + v170[32]))
  {
    return 0;
  }

  v141 = v170[33];
  v142 = *(v163 + v141);
  if (*(v169 + v141))
  {
    if (!v142 || (sub_1D17B30F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  if (*(v169 + v170[34]) != *(v163 + v170[34]) || *(v169 + v170[35]) != *(v163 + v170[35]))
  {
    return 0;
  }

  v148 = v170[36];
  v149 = (v169 + v148);
  v150 = *(v169 + v148 + 8);
  v151 = (v163 + v148);
  v152 = *(v163 + v148 + 8);
  if (v150)
  {
    if (!v152)
    {
      return 0;
    }
  }

  else
  {
    if (*v149 != *v151)
    {
      LOBYTE(v152) = 1;
    }

    if (v152)
    {
      return 0;
    }
  }

  if (*(v169 + v170[37]) != *(v163 + v170[37]))
  {
    return 0;
  }

  v153 = v170[38];
  v154 = *(v177 + 48);
  v155 = v167;
  sub_1D1741C08(v169 + v153, v167, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1741C08(v163 + v153, v155 + v154, &qword_1EC643650, &qword_1D1E71D40);
  v156 = *(v178 + 48);
  if (v156(v155, 1, v179) != 1)
  {
    v157 = v167;
    sub_1D1741C08(v167, v166, &qword_1EC643650, &qword_1D1E71D40);
    if (v156(v157 + v154, 1, v179) != 1)
    {
      v158 = v167;
      v159 = &v167[v154];
      v160 = v180;
      sub_1D1BC91F4(v159, v180, type metadata accessor for StaticMatterDevice);
      v161 = v166;
      v162 = static StaticMatterDevice.== infix(_:_:)(v166, v160);
      sub_1D1BC9194(v160, type metadata accessor for StaticMatterDevice);
      sub_1D1BC9194(v161, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v158, &qword_1EC643650, &qword_1D1E71D40);
      return (v162 & 1) != 0;
    }

    sub_1D1BC9194(v166, type metadata accessor for StaticMatterDevice);
    goto LABEL_130;
  }

  if (v156(&v167[v154], 1, v179) != 1)
  {
LABEL_130:
    v58 = &qword_1EC64C600;
    v59 = &qword_1D1E9FA08;
    v147 = &v199;
    goto LABEL_114;
  }

  sub_1D1741A30(v167, &qword_1EC643650, &qword_1D1E71D40);
  return 1;
}

BOOL _s13HomeDataModel15StaticAccessoryV20SpecialMediaCategoryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          if (v5 != 3 || v4 != 2)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(2, 3);
          v7 = 2;
        }

        else
        {
          if (v5 != 3 || v4 != 3)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(3, 3);
          v7 = 3;
        }
      }

      else
      {
        if (v2)
        {
          if (v5 != 3 || v4 != 1)
          {
            goto LABEL_33;
          }

          sub_1D1771B5C(1, 3);
          sub_1D1771B5C(1, 3);
          return v4;
        }

        if (v5 != 3 || v4)
        {
          goto LABEL_33;
        }

        sub_1D1771B5C(0, 3);
        v7 = 0;
      }

      sub_1D1771B5C(v7, 3);
      return 1;
    }

    if (v5 != 2)
    {
      goto LABEL_33;
    }

    sub_1D1771B5C(*a1, 2);
    sub_1D1771B5C(v4, 2);
    if ((v4 ^ v2))
    {
      return 0;
    }

    else
    {
      return (v2 >> 8) & 1 ^ ((v4 & 0x100) == 0);
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        v6 = *a1;

LABEL_33:
        sub_1D1771B4C(v4, v5);
        sub_1D1771B5C(v2, v3);
        v9 = v4;
        v10 = v5;
LABEL_34:
        sub_1D1771B5C(v9, v10);
        return 0;
      }

      if (v2)
      {
        if (v4)
        {
          sub_1D1771B4C(*a1, 0);
          sub_1D1771B4C(v4, 0);
          sub_1D1771B4C(v2, 0);
          v8 = sub_1D17A6E98(v2, v4);
          sub_1D1771B5C(v2, 0);
          sub_1D1771B5C(v4, 0);
          sub_1D1771B5C(v2, 0);
          return (v8 & 1) != 0;
        }

        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v2, 0);
        sub_1D1771B5C(v2, 0);
LABEL_40:
        v9 = v4;
        v10 = 0;
        goto LABEL_34;
      }

      v12 = *a2;

      sub_1D1771B4C(v13, 0);
      sub_1D1771B4C(0, 0);
      sub_1D1771B5C(0, 0);
      sub_1D1771B5C(v4, 0);
      if (v4)
      {
        goto LABEL_40;
      }

      return 1;
    }

    if (v5 != 1)
    {
      goto LABEL_33;
    }

    sub_1D1771B5C(*a1, 1);
    sub_1D1771B5C(v4, 1);
    return v4 == v2;
  }
}

uint64_t sub_1D1BC6510(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticService(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC6436E8, &unk_1D1E71E40);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1BC91F4(v20 + v45, v8, type metadata accessor for StaticService);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735934();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723194(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1BCBDF0(v24, v19, type metadata accessor for StaticService);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1BC91F4(v24, v37, type metadata accessor for StaticService);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1BC6914(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticAccessory(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC6437A8, &unk_1D1E71F00);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1BC91F4(v20 + v45, v8, type metadata accessor for StaticAccessory);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17362B8();
        }
      }

      else
      {
        v32 = v51;
        sub_1D1723F74(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1BCBDF0(v24, v19, type metadata accessor for StaticAccessory);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1BC91F4(v24, v37, type metadata accessor for StaticAccessory);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1BC6D18(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v251 = a4;
  v312 = a3;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  v252 = *(v253 - 8);
  v8 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v232 = &v231 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v231 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v260 = &v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v250 = &v231 - v18;
  v249 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v19 = *(*(v249 - 8) + 64);
  MEMORY[0x1EEE9AC00](v249);
  v292 = (&v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v291 = &v231 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v290 = &v231 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v248 = &v231 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v300 = &v231 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v296 = &v231 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v247 = &v231 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v236 = &v231 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v299 = &v231 - v39;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v306 = *(v238 - 8);
  v40 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v42 = (&v231 - v41);
  v258 = type metadata accessor for StaticService(0);
  v43 = *(v258 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v258);
  v301 = &v231 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v304 = &v231 - v47;
  v48 = sub_1D1E66A7C();
  v310 = *(v48 - 8);
  v49 = *(v310 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v289 = &v231 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v235 = &v231 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v288 = &v231 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v311 = &v231 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v305 = &v231 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v231 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v231 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v297 = &v231 - v67;
  v287 = type metadata accessor for StaticAccessory(0);
  v255 = *(v287 - 8);
  v68 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v259 = &v231 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = *a2;
  v256 = a1;
  v70 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v71 = sub_1D1E67C1C();

  if (v71 >> 62)
  {
LABEL_118:
    v72 = sub_1D1E6873C();
  }

  else
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = MEMORY[0x1E69E7CC0];
  if (v72)
  {
    v317 = MEMORY[0x1E69E7CC0];
    v254 = v72;
    sub_1D178CEB8(0, v72 & ~(v72 >> 63), 0);
    if (v254 < 0)
    {
      __break(1u);
LABEL_120:

      v230 = v298;
      goto LABEL_121;
    }

    v74 = 0;
    v298 = 0;
    v75 = v71;
    v71 = v317;
    v245 = v75 & 0xC000000000000001;
    v234 = v75 & 0xFFFFFFFFFFFFFF8;
    v239 = v75;
    v233 = v75 + 32;
    v309 = (v310 + 32);
    v313 = (v310 + 8);
    v314 = (v310 + 16);
    v241 = (v310 + 48);
    v257 = (v43 + 48);
    v240 = (v310 + 56);
    v303 = xmmword_1D1E739C0;
    v244 = a5;
    v76 = v312;
    v286 = v13;
    v237 = v42;
    v243 = v43;
    v242 = v64;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (__OFADD__(v74, 1))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v285 = v74 + 1;
      if (v245)
      {
        v77 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v74 >= *(v234 + 16))
        {
          goto LABEL_117;
        }

        v77 = *(v233 + 8 * v74);
      }

      v42 = v77;
      v294 = [v77 room];
      if (v294)
      {
        if (!a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v294 = [v256 roomForEntireHome];
        if (!a5)
        {
          goto LABEL_19;
        }
      }

      v78 = [v42 uniqueIdentifier];
      sub_1D1E66A5C();

      if (a5[2])
      {
        v79 = sub_1D1742188(v64);
        if (v80)
        {
          v81 = v79;
          v82 = a5[7];
          v83 = type metadata accessor for StaticMatterDevice();
          v84 = *(v83 - 8);
          v85 = v82 + *(v84 + 72) * v81;
          v86 = v297;
          sub_1D1BC8E68(v85, v297, type metadata accessor for StaticMatterDevice);
          (*v313)(v64, v48);
          (*(v84 + 56))(v86, 0, 1, v83);
        }

        else
        {
          (*v313)(v64, v48);
          v88 = type metadata accessor for StaticMatterDevice();
          (*(*(v88 - 8) + 56))(v297, 1, 1, v88);
        }

        v76 = v312;
        goto LABEL_22;
      }

      (*v313)(v64, v48);
LABEL_19:
      v87 = type metadata accessor for StaticMatterDevice();
      (*(*(v87 - 8) + 56))(v297, 1, 1, v87);
LABEL_22:
      v295 = v42;
      v89 = [v42 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v90 = sub_1D1E67C1C();

      v91 = v90;
      v92 = v90 >> 62;
      a5 = v311;
      if (v92)
      {
        v217 = v91;
        v13 = sub_1D1E6873C();
        v91 = v217;
      }

      else
      {
        v13 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v293 = v71;
      if (v13)
      {
        v93 = v91;
        v315 = v43;
        sub_1D178CEFC(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          goto LABEL_116;
        }

        v94 = 0;
        v95 = v315;
        v96 = v93;
        v308 = (v93 & 0xC000000000000001);
        v97 = v93;
        do
        {
          v98 = v13;
          if (v308)
          {
            v99 = MEMORY[0x1D3891EF0](v94, v96);
          }

          else
          {
            v99 = *(v96 + 8 * v94 + 32);
          }

          v100 = v99;
          v101 = v305;
          v102 = [v99 uniqueIdentifier];
          sub_1D1E66A5C();

          v315 = v95;
          v104 = *(v95 + 16);
          v103 = *(v95 + 24);
          if (v104 >= v103 >> 1)
          {
            sub_1D178CEFC(v103 > 1, v104 + 1, 1);
            v95 = v315;
          }

          ++v94;
          *(v95 + 16) = v104 + 1;
          (*(v310 + 32))(v95 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v104, v101, v48);
          v13 = v98;
          a5 = v311;
          v96 = v97;
        }

        while (v98 != v94);

        v76 = v312;
        v43 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v95 = v43;
      }

      v315 = v43;
      v308 = *(v95 + 16);
      if (v308)
      {
        v105 = 0;
        v302 = *(v310 + 80);
        v106 = (v302 + 32) & ~v302;
        v307 = v95 + v106;
        v107 = *(v310 + 72);
        v108 = *(v310 + 16);
        v108(v62, v95 + v106, v48);
        while (1)
        {
          v110 = v315 + v106;
          v111 = *(v315 + 16) + 1;
          while (--v111)
          {
            sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            v110 += v107;
            if (sub_1D1E6775C())
            {
              goto LABEL_38;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
          v109 = swift_allocObject();
          *(v109 + 16) = v303;
          v108((v109 + v106), v62, v48);
          sub_1D17A3840(v109);
LABEL_38:
          ++v105;
          (*v313)(v62, v48);
          if (v105 == v308)
          {
            break;
          }

          v108(v62, v307 + v107 * v105, v48);
        }

        a5 = v311;
        v76 = v312;
        v43 = MEMORY[0x1E69E7CC0];
      }

      else
      {
      }

      v112 = *(v315 + 16);
      v113 = v243;
      v307 = v315;
      if (v112)
      {
        v114 = v315 + ((*(v310 + 80) + 32) & ~*(v310 + 80));
        v115 = *(v310 + 72);
        v117 = v43;
        v308 = *(v310 + 16);
        v116 = v308;
        (v308)(a5, v114, v48);
        while (1)
        {
          if (*(v76 + 16) && (v118 = sub_1D1742188(a5), v76 = v312, (v119 & 1) != 0))
          {
            v120 = v115;
            v121 = v113;
            v122 = *(v113 + 72);
            v123 = v117;
            v124 = v301;
            sub_1D1BC8E68(*(v312 + 56) + v122 * v118, v301, type metadata accessor for StaticService);
            (*v313)(a5, v48);
            sub_1D1BC91F4(v124, v304, type metadata accessor for StaticService);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_1D177D048(0, v123[2] + 1, 1, v123);
            }

            v126 = v123[2];
            v125 = v123[3];
            v127 = v123;
            v113 = v121;
            if (v126 >= v125 >> 1)
            {
              v127 = sub_1D177D048(v125 > 1, v126 + 1, 1, v127);
            }

            v115 = v120;
            v127[2] = v126 + 1;
            v117 = v127;
            sub_1D1BC91F4(v304, v127 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + v126 * v122, type metadata accessor for StaticService);
            a5 = v311;
            v76 = v312;
            v116 = v308;
          }

          else
          {
            (*v313)(a5, v48);
          }

          v114 += v115;
          if (!--v112)
          {
            break;
          }

          v116(a5, v114, v48);
        }
      }

      else
      {
        v117 = v43;
      }

      v128 = *(v117 + 16);
      v276 = v117;
      if (v128)
      {
        v315 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v128, 0);
        v129 = v315;
        v130 = v117 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v131 = *(v113 + 72);
        v132 = v238;
        v133 = v237;
        do
        {
          v134 = *(v132 + 48);
          sub_1D1BC8E68(v130, v133 + v134, type metadata accessor for StaticService);
          (*v314)(v133, v133 + v134, v48);
          v315 = v129;
          v136 = *(v129 + 16);
          v135 = *(v129 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_1D178D2D8(v135 > 1, v136 + 1, 1);
            v132 = v238;
            v129 = v315;
          }

          *(v129 + 16) = v136 + 1;
          sub_1D1741A90(v133, v129 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v136, &qword_1EC6436E8, &unk_1D1E71E40);
          v130 += v131;
          --v128;
        }

        while (v128);
      }

      else
      {
        v129 = MEMORY[0x1E69E7CC0];
      }

      v137 = v295;
      if (*(v129 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v138 = sub_1D1E68BCC();
      }

      else
      {
        v138 = MEMORY[0x1E69E7CC8];
      }

      v315 = v138;
      a5 = v298;
      sub_1D1BC6510(v129, 1, &v315);
      v298 = a5;
      if (a5)
      {
        goto LABEL_120;
      }

      v139 = v315;
      sub_1D1BBBE58(v137, v315, v299);
      sub_1D1BBD6A8(v137, v251, v296);
      v278 = sub_1D1BBDC8C(v137);
      v277 = v140;
      v141 = sub_1D1E682DC();
      v143 = v142;
      v144 = [v137 supportsNativeMatter];
      v308 = v141;
      LODWORD(v302) = v143;
      v284 = v139;
      if ((v144 & 1) != 0 && (sub_1D1E682DC(), (v145 & 1) == 0))
      {
        v147 = sub_1D1E682DC() != 0;
        v146 = v148 | v147;
      }

      else
      {
        v146 = 0;
      }

      v283 = v146;
      v282 = sub_1D1BBDD50(v137, v146 & 1);
      v281 = sub_1D1BBDFD8(v137, v282 & 1);
      v149 = v276;
      v280 = sub_1D1BBEFB4(v137, v276);
      v279 = sub_1D1BBF91C(v137, v149);

      v150 = sub_1D1E669FC();
      v151 = *(*(v150 - 8) + 56);
      v152 = 1;
      v151(v300, 1, 1, v150);
      v153 = [v137 lastSeenStatus];
      if (v153)
      {
        v154 = v153;
        v155 = [v153 lastSeenDate];

        v156 = v248;
        sub_1D1E669BC();

        v152 = 0;
      }

      else
      {
        v156 = v248;
      }

      v157 = v300;
      sub_1D1741A30(v300, &qword_1EC642570, &qword_1D1E6C6A0);
      v151(v156, v152, 1, v150);
      sub_1D1741A90(v156, v157, &qword_1EC642570, &qword_1D1E6C6A0);
      v158 = v295;
      v159 = [v295 lastSeenStatus];
      if (v159)
      {
        v160 = v159;
        v161 = [v159 lowBatteryStatus];

        v162 = 2 * (v161 != 1);
        if (v161 == 2)
        {
          v162 = 1;
        }
      }

      else
      {
        v162 = 2;
      }

      v275 = v162;
      v163 = v294;
      LODWORD(v294) = [v158 supportsCHIP];
      LODWORD(v276) = [v158 requiresThreadRouter];
      v164 = [v158 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1741C08(v300, v290, &qword_1EC642570, &qword_1D1E6C6A0);
      v165 = [v158 deviceIdentifier];
      v166 = sub_1D1E6781C();
      v168 = v167;

      v169 = v250;
      sub_1D1E66A0C();
      if ((*v241)(v169, 1, v48) == 1)
      {
        sub_1D1741A30(v169, &qword_1EC642590, qword_1D1E71260);
        v170 = v292;
        *v292 = v166;
        v170[1] = v168;
      }

      else
      {

        v171 = *v309;
        v172 = v235;
        (*v309)(v235, v169, v48);
        v171(v292, v172, v48);
      }

      swift_storeEnumTagMultiPayload();
      v173 = v158;
      v174 = v286;
      sub_1D1CE96D0(v173, v286);
      v175 = type metadata accessor for StaticDeviceMetadata();
      (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
      HMAccessory.dateAdded.getter(v291);
      v176 = sub_1D1A11844();
      if (v176 == 2)
      {
        v177 = v236;
        sub_1D1741C08(v299, v236, &qword_1EC6436F0, &qword_1D1E99BC0);
        v178 = v258;
        if ((*v257)(v177, 1, v258) == 1)
        {
          sub_1D1741A30(v177, &qword_1EC6436F0, &qword_1D1E99BC0);
          LODWORD(v295) = 0;
        }

        else
        {
          LODWORD(v295) = *(v177 + *(v178 + 28));
          sub_1D1BC9194(v177, type metadata accessor for StaticService);
        }
      }

      else
      {
        LODWORD(v295) = v176;
      }

      v179 = [v256 uniqueIdentifier];
      sub_1D1E66A5C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v180 = v310;
      v181 = *(v310 + 72);
      v182 = (*(v310 + 80) + 32) & ~*(v310 + 80);
      v183 = swift_allocObject();
      *(v183 + 16) = v303;
      v184 = [v163 uniqueIdentifier];
      sub_1D1E66A5C();

      v185 = sub_1D179BE14(v183);
      swift_setDeallocating();
      (*(v180 + 8))(v183 + v182, v48);
      swift_deallocClassInstance();
      v186 = [v163 name];
      v273 = sub_1D1E6781C();
      v272 = v187;

      v271 = [v173 isCurrentAccessory];
      v270 = HMAccessory.isFavorite.getter();
      v269 = HMAccessory.shouldShowInDashboard.getter();
      v268 = HMAccessory.contributesToHomeStatus.getter();
      v267 = HMAccessory.showAsIndividualTiles.getter();
      v188 = v247;
      sub_1D1741C08(v299, v247, &qword_1EC6436F0, &qword_1D1E99BC0);
      v189 = (*v257)(v188, 1, v258);
      v274 = v185;
      if (v189 == 1)
      {
        sub_1D1741A30(v188, &qword_1EC6436F0, &qword_1D1E99BC0);
        v190 = 1;
        v191 = v260;
      }

      else
      {
        v191 = v260;
        (*v314)(v260, v188, v48);
        sub_1D1BC9194(v188, type metadata accessor for StaticService);
        v190 = 0;
      }

      (*v240)(v191, v190, 1, v48);
      HMAccessory.specialMediaCategory.getter(&v315);
      v266 = v315;
      v265 = v316;
      v192 = [v173 category];
      v193 = [v192 categoryType];

      v264 = sub_1D1E6781C();
      v263 = v194;

      v195 = [v173 uniqueIdentifiersForBridgedAccessories];
      if (v195)
      {
        v196 = v195;
        v262 = sub_1D1E67C1C();
      }

      else
      {
        v262 = 0;
      }

      v13 = v259;
      sub_1D1741C08(v296, &v259[*(v287 + 120)], &qword_1EC644760, &unk_1D1E9E530);
      v261 = sub_1D1BBFC34(v173, v297, 2u);
      v197 = [v173 symptomsHandler];
      if (v197)
      {
        v198 = v197;
        v199 = [v197 symptoms];

        sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
        sub_1D1BCBD88();
        v200 = sub_1D1E6816C();

        v201 = v298;
        sub_1D1BACEEC(v200);
        v203 = v202;
        v298 = v201;
        v191 = v260;

        v204 = sub_1D1784578(v203);

        v13 = v259;
      }

      else
      {

        v204 = 0;
      }

      v42 = &qword_1EC642570;
      sub_1D1741A30(v300, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v296, &qword_1EC644760, &unk_1D1E9E530);
      sub_1D1741A30(v299, &qword_1EC6436F0, &qword_1D1E99BC0);
      v205 = v287;
      sub_1D1741A90(v297, v13 + *(v287 + 152), &qword_1EC643650, &qword_1D1E71D40);
      v206 = *v309;
      (*v309)(v13, v288, v48);
      sub_1D1741A90(v290, v13 + v205[5], &qword_1EC642570, &qword_1D1E6C6A0);
      *(v13 + v205[6]) = v275;
      v207 = (v13 + v205[7]);
      v208 = v277;
      *v207 = v278;
      v207[1] = v208;
      sub_1D1BC91F4(v292, v13 + v205[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D1741A90(v286, v13 + v205[9], &qword_1EC644620, &unk_1D1E75A00);
      sub_1D1741A90(v291, v13 + v205[10], &qword_1EC642570, &qword_1D1E6C6A0);
      *(v13 + v205[11]) = v295 & 1;
      v206((v13 + v205[12]), v289, v48);
      *(v13 + v205[13]) = v274;
      v209 = (v13 + v205[14]);
      v210 = v272;
      *v209 = v273;
      v209[1] = v210;
      *(v13 + v205[15]) = v271;
      *(v13 + v205[16]) = v270 & 1;
      *(v13 + v205[17]) = v269 & 1;
      *(v13 + v205[18]) = v268 & 1;
      *(v13 + v205[19]) = v267 & 1;
      *(v13 + v205[20]) = v284;
      *(v13 + v205[21]) = v307;
      sub_1D1741A90(v191, v13 + v205[22], &qword_1EC642590, qword_1D1E71260);
      v211 = v13 + v205[23];
      *v211 = v266;
      *(v211 + 8) = v265;
      v212 = (v13 + v205[24]);
      v213 = v263;
      *v212 = v264;
      v212[1] = v213;
      *(v13 + v205[25]) = v262;
      *(v13 + v205[26]) = v281 & 1;
      *(v13 + v205[27]) = v282 & 1;
      *(v13 + v205[28]) = v280 & 1;
      *(v13 + v205[29]) = v279 & 1;
      *(v13 + v205[31]) = v261 & 1;
      *(v13 + v205[32]) = v246;
      *(v13 + v205[33]) = v204;
      *(v13 + v205[34]) = v294;
      *(v13 + v205[35]) = v276;
      v214 = v13 + v205[36];
      *v214 = v308;
      *(v214 + 8) = v302 & 1;
      *(v13 + v205[37]) = v283 & 1;
      v71 = v293;
      v317 = v293;
      v216 = *(v293 + 16);
      v215 = *(v293 + 24);
      v76 = v312;
      if (v216 >= v215 >> 1)
      {
        sub_1D178CEB8(v215 > 1, v216 + 1, 1);
        v76 = v312;
        v71 = v317;
      }

      *(v71 + 16) = v216 + 1;
      sub_1D1BC91F4(v13, v71 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v216, type metadata accessor for StaticAccessory);
      v74 = v285;
      a5 = v244;
      v64 = v242;
      v43 = MEMORY[0x1E69E7CC0];
      if (v285 == v254)
      {

        v218 = *(v71 + 16);
        if (!v218)
        {
          goto LABEL_111;
        }

LABEL_104:
        v315 = v43;
        sub_1D178D298(0, v218, 0);
        v219 = v315;
        v220 = (*(v255 + 80) + 32) & ~*(v255 + 80);
        v293 = v71;
        v221 = v71 + v220;
        v222 = *(v255 + 72);
        v223 = (v310 + 16);
        v224 = v232;
        do
        {
          v225 = *(v253 + 48);
          sub_1D1BC8E68(v221, v224 + v225, type metadata accessor for StaticAccessory);
          (*v223)(v224, v224 + v225, v48);
          v315 = v219;
          v227 = *(v219 + 16);
          v226 = *(v219 + 24);
          if (v227 >= v226 >> 1)
          {
            sub_1D178D298(v226 > 1, v227 + 1, 1);
            v224 = v232;
            v219 = v315;
          }

          *(v219 + 16) = v227 + 1;
          sub_1D1741A90(v224, v219 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v227, &qword_1EC6437A8, &unk_1D1E71F00);
          v221 += v222;
          --v218;
        }

        while (v218);

        if (*(v219 + 16))
        {
          goto LABEL_109;
        }

LABEL_112:
        v228 = MEMORY[0x1E69E7CC8];
        goto LABEL_113;
      }
    }
  }

  v298 = 0;
  v71 = MEMORY[0x1E69E7CC0];
  v43 = v73;
  v218 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v218)
  {
    goto LABEL_104;
  }

LABEL_111:

  v219 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_112;
  }

LABEL_109:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  v228 = sub_1D1E68BCC();
LABEL_113:
  v315 = v228;
  a5 = v298;
  sub_1D1BC6914(v219, 1, &v315);
  if (a5)
  {
    while (1)
    {

      v230 = a5;
LABEL_121:

      __break(1u);
    }
  }

  return v315;
}

uint64_t sub_1D1BC8E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BC8EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1BC8F60()
{
  result = qword_1EC64C318;
  if (!qword_1EC64C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C318);
  }

  return result;
}

uint64_t sub_1D1BC8FB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1BC8FFC()
{
  result = qword_1EC64C320;
  if (!qword_1EC64C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C320);
  }

  return result;
}

uint64_t sub_1D1BC9050(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1BC8FB4(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC90EC()
{
  result = qword_1EC64C338;
  if (!qword_1EC64C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C338);
  }

  return result;
}

unint64_t sub_1D1BC9140()
{
  result = qword_1EC64C350;
  if (!qword_1EC64C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C350);
  }

  return result;
}

uint64_t sub_1D1BC9194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BC91F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1BC925C()
{
  result = qword_1EC64C360;
  if (!qword_1EC64C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C360);
  }

  return result;
}

uint64_t sub_1D1BC92B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1BC8FB4(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC934C()
{
  result = qword_1EC64C378;
  if (!qword_1EC64C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C378);
  }

  return result;
}

uint64_t sub_1D1BC93A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C340, &qword_1D1E9E550);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BC9418()
{
  result = qword_1EC64C388;
  if (!qword_1EC64C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C388);
  }

  return result;
}

unint64_t sub_1D1BC946C()
{
  result = qword_1EC64C3D0;
  if (!qword_1EC64C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3D0);
  }

  return result;
}

unint64_t sub_1D1BC94C0()
{
  result = qword_1EC64C3D8;
  if (!qword_1EC64C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3D8);
  }

  return result;
}

unint64_t sub_1D1BC9514()
{
  result = qword_1EC64C3E0;
  if (!qword_1EC64C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3E0);
  }

  return result;
}

unint64_t sub_1D1BC9568()
{
  result = qword_1EC64C3E8;
  if (!qword_1EC64C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3E8);
  }

  return result;
}

unint64_t sub_1D1BC95BC()
{
  result = qword_1EC64C3F0;
  if (!qword_1EC64C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3F0);
  }

  return result;
}

unint64_t sub_1D1BC9610()
{
  result = qword_1EC64C3F8;
  if (!qword_1EC64C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C3F8);
  }

  return result;
}

unint64_t sub_1D1BC9664()
{
  result = qword_1EC64C400;
  if (!qword_1EC64C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C400);
  }

  return result;
}

unint64_t sub_1D1BC96B8()
{
  result = qword_1EC64C408;
  if (!qword_1EC64C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C408);
  }

  return result;
}

unint64_t sub_1D1BC970C()
{
  result = qword_1EC64C410;
  if (!qword_1EC64C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C410);
  }

  return result;
}

unint64_t sub_1D1BC9760()
{
  result = qword_1EC64C458;
  if (!qword_1EC64C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C458);
  }

  return result;
}

unint64_t sub_1D1BC97B4()
{
  result = qword_1EC64C478;
  if (!qword_1EC64C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C478);
  }

  return result;
}

unint64_t sub_1D1BC9808()
{
  result = qword_1EC64C480;
  if (!qword_1EC64C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C480);
  }

  return result;
}

unint64_t sub_1D1BC985C()
{
  result = qword_1EC64C488;
  if (!qword_1EC64C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C488);
  }

  return result;
}

uint64_t sub_1D1BC9940(void *a1)
{
  a1[1] = sub_1D1BC8FB4(&qword_1EC64C4B0, type metadata accessor for StaticAccessory);
  a1[2] = sub_1D1BC8FB4(&qword_1EC64C4B8, type metadata accessor for StaticAccessory);
  a1[3] = sub_1D1BC8FB4(&qword_1EC644758, type metadata accessor for StaticAccessory);
  a1[4] = sub_1D1BC8FB4(&qword_1EC644708, type metadata accessor for StaticAccessory);
  a1[5] = sub_1D1BC8FB4(&qword_1EE07AB10, type metadata accessor for StaticAccessory);
  result = sub_1D1BC8FB4(&qword_1EC64C4C0, type metadata accessor for StaticAccessory);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1BC9A64(void *a1)
{
  a1[1] = sub_1D1BC8FB4(&qword_1EC644758, type metadata accessor for StaticAccessory);
  a1[2] = sub_1D1BC8FB4(&qword_1EC644708, type metadata accessor for StaticAccessory);
  a1[3] = sub_1D1BC8FB4(&qword_1EE07AB10, type metadata accessor for StaticAccessory);
  result = sub_1D1BC8FB4(&qword_1EC64C4C0, type metadata accessor for StaticAccessory);
  a1[4] = result;
  return result;
}

unint64_t sub_1D1BC9B3C()
{
  result = qword_1EC64C4C8;
  if (!qword_1EC64C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4C8);
  }

  return result;
}

unint64_t sub_1D1BC9B94()
{
  result = qword_1EC64C4D0;
  if (!qword_1EC64C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4D0);
  }

  return result;
}

unint64_t sub_1D1BC9C7C()
{
  result = qword_1EC64C4D8;
  if (!qword_1EC64C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4D8);
  }

  return result;
}

unint64_t sub_1D1BC9CD4()
{
  result = qword_1EC64C4E0;
  if (!qword_1EC64C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4E0);
  }

  return result;
}

void sub_1D1BC9D50()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1BCA1C4(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07CAB8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for StaticAccessory.DeviceIdentifier(319);
        if (v3 <= 0x3F)
        {
          sub_1D1BCA1C4(319, &qword_1EE07DF30, type metadata accessor for StaticDeviceMetadata, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D1791340();
            if (v5 <= 0x3F)
            {
              sub_1D17BDF80(319, qword_1EE07D1F8);
              if (v6 <= 0x3F)
              {
                sub_1D1BCA118();
                if (v7 <= 0x3F)
                {
                  sub_1D1BCA1C4(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D1BCA1C4(319, &qword_1EE07E018, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07CA78);
                      if (v10 <= 0x3F)
                      {
                        sub_1D19ADBB8(319, &qword_1EE07B748, &qword_1EC644D50, &qword_1D1E77910);
                        if (v11 <= 0x3F)
                        {
                          sub_1D1BCA1C4(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D19ADBB8(319, &qword_1EE07B6E0, &qword_1EC64C340, &qword_1D1E9E550);
                            if (v13 <= 0x3F)
                            {
                              sub_1D17BDF80(319, &qword_1EE07B5F8);
                              if (v14 <= 0x3F)
                              {
                                sub_1D1BCA1C4(319, qword_1EE07A818, type metadata accessor for StaticMatterDevice, MEMORY[0x1E69E6720]);
                                if (v15 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1BCA118()
{
  if (!qword_1EE07B7D8)
  {
    sub_1D1E66A7C();
    type metadata accessor for StaticService(255);
    sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B7D8);
    }
  }
}

void sub_1D1BCA1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1BCA248()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticAccessory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticAccessory.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1BCA4C8()
{
  result = qword_1EC64C4E8;
  if (!qword_1EC64C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4E8);
  }

  return result;
}

unint64_t sub_1D1BCA520()
{
  result = qword_1EC64C4F0;
  if (!qword_1EC64C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4F0);
  }

  return result;
}

unint64_t sub_1D1BCA578()
{
  result = qword_1EC64C4F8;
  if (!qword_1EC64C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C4F8);
  }

  return result;
}

unint64_t sub_1D1BCA5D0()
{
  result = qword_1EC64C500;
  if (!qword_1EC64C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C500);
  }

  return result;
}

unint64_t sub_1D1BCA628()
{
  result = qword_1EC64C508;
  if (!qword_1EC64C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C508);
  }

  return result;
}

unint64_t sub_1D1BCA680()
{
  result = qword_1EC64C510;
  if (!qword_1EC64C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C510);
  }

  return result;
}

unint64_t sub_1D1BCA6D8()
{
  result = qword_1EC64C518;
  if (!qword_1EC64C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C518);
  }

  return result;
}

unint64_t sub_1D1BCA730()
{
  result = qword_1EC64C520;
  if (!qword_1EC64C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C520);
  }

  return result;
}

unint64_t sub_1D1BCA788()
{
  result = qword_1EC64C528;
  if (!qword_1EC64C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C528);
  }

  return result;
}

unint64_t sub_1D1BCA7E0()
{
  result = qword_1EC64C530;
  if (!qword_1EC64C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C530);
  }

  return result;
}

unint64_t sub_1D1BCA838()
{
  result = qword_1EC64C538;
  if (!qword_1EC64C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C538);
  }

  return result;
}

unint64_t sub_1D1BCA890()
{
  result = qword_1EC64C540;
  if (!qword_1EC64C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C540);
  }

  return result;
}

unint64_t sub_1D1BCA8E8()
{
  result = qword_1EC64C548;
  if (!qword_1EC64C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C548);
  }

  return result;
}

unint64_t sub_1D1BCA940()
{
  result = qword_1EC64C550;
  if (!qword_1EC64C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C550);
  }

  return result;
}

unint64_t sub_1D1BCA998()
{
  result = qword_1EC64C558;
  if (!qword_1EC64C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C558);
  }

  return result;
}

unint64_t sub_1D1BCA9F0()
{
  result = qword_1EC64C560;
  if (!qword_1EC64C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C560);
  }

  return result;
}

unint64_t sub_1D1BCAA48()
{
  result = qword_1EC64C568;
  if (!qword_1EC64C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C568);
  }

  return result;
}

unint64_t sub_1D1BCAAA0()
{
  result = qword_1EC64C570;
  if (!qword_1EC64C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C570);
  }

  return result;
}

unint64_t sub_1D1BCAAF8()
{
  result = qword_1EC64C578;
  if (!qword_1EC64C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C578);
  }

  return result;
}

unint64_t sub_1D1BCAB50()
{
  result = qword_1EC64C580;
  if (!qword_1EC64C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C580);
  }

  return result;
}

unint64_t sub_1D1BCABA8()
{
  result = qword_1EC64C588;
  if (!qword_1EC64C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C588);
  }

  return result;
}

unint64_t sub_1D1BCAC00()
{
  result = qword_1EC64C590;
  if (!qword_1EC64C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C590);
  }

  return result;
}

unint64_t sub_1D1BCAC58()
{
  result = qword_1EC64C598;
  if (!qword_1EC64C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C598);
  }

  return result;
}

unint64_t sub_1D1BCACB0()
{
  result = qword_1EC64C5A0;
  if (!qword_1EC64C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5A0);
  }

  return result;
}

unint64_t sub_1D1BCAD08()
{
  result = qword_1EC64C5A8;
  if (!qword_1EC64C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5A8);
  }

  return result;
}

unint64_t sub_1D1BCAD60()
{
  result = qword_1EC64C5B0;
  if (!qword_1EC64C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5B0);
  }

  return result;
}

unint64_t sub_1D1BCADB8()
{
  result = qword_1EC64C5B8;
  if (!qword_1EC64C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5B8);
  }

  return result;
}

unint64_t sub_1D1BCAE10()
{
  result = qword_1EC64C5C0;
  if (!qword_1EC64C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5C0);
  }

  return result;
}

unint64_t sub_1D1BCAE68()
{
  result = qword_1EC64C5C8;
  if (!qword_1EC64C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5C8);
  }

  return result;
}

unint64_t sub_1D1BCAEC0()
{
  result = qword_1EC64C5D0;
  if (!qword_1EC64C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5D0);
  }

  return result;
}

unint64_t sub_1D1BCAF18()
{
  result = qword_1EC64C5D8;
  if (!qword_1EC64C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5D8);
  }

  return result;
}

unint64_t sub_1D1BCAF70()
{
  result = qword_1EC64C5E0;
  if (!qword_1EC64C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5E0);
  }

  return result;
}

uint64_t sub_1D1BCAFC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6565537473616CLL && a2 == 0xEC00000065746144 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC60F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6110 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6170 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC61B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC61D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC61F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC6210 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x72427341776F6873 && a2 == 0xEC00000065676469 || (sub_1D1E6904C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x537265776F507369 && a2 == 0xEC00000070697274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEC00000050494843 || (sub_1D1E6904C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6290 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6F4E72657474616DLL && a2 == 0xEC00000044496564 || (sub_1D1E6904C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC62B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x654472657474616DLL && a2 == 0xEC00000065636976)
  {

    return 34;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 34;
    }

    else
    {
      return 35;
    }
  }
}

uint64_t sub_1D1BCBA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F50726961 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5654656C707061 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xED00007265766965 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F50656D6F68 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70646E4569726973 && a2 == 0xEC000000746E696FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D1BCBCE0()
{
  result = qword_1EC64C5E8;
  if (!qword_1EC64C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5E8);
  }

  return result;
}

unint64_t sub_1D1BCBD34()
{
  result = qword_1EC64C5F0;
  if (!qword_1EC64C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C5F0);
  }

  return result;
}

unint64_t sub_1D1BCBD88()
{
  result = qword_1EE079BB8;
  if (!qword_1EE079BB8)
  {
    sub_1D1741B10(255, &unk_1EE079BC0, 0x1E696CC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079BB8);
  }

  return result;
}

uint64_t sub_1D1BCBDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void static StaticAccessory.SpecialMediaCategory.siriEndpoint(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 siriEndpointProfile];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 category];
    v7 = [v6 categoryType];

    v8 = sub_1D1E6781C();
    v10 = v9;

    v11 = *MEMORY[0x1E696CA00];
    if (sub_1D1E6781C() != v8 || v12 != v10)
    {
      v14 = sub_1D1E6904C();

      if (v14)
      {
        goto LABEL_12;
      }

      v17 = *MEMORY[0x1E696C978];
      if (sub_1D1E6781C() != v8 || v18 != v10)
      {
        v21 = sub_1D1E6904C();

        if (v21)
        {
          goto LABEL_12;
        }

        v22 = *MEMORY[0x1E696C960];
        if (sub_1D1E6781C() != v8 || v23 != v10)
        {
          v24 = sub_1D1E6904C();

          if (v24)
          {
            v19 = 256;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:

    v19 = 256;
LABEL_13:
    v20 = [v5 supportsOnboarding];

    v15 = v19 | v20;
    v16 = 2;
    goto LABEL_14;
  }

  v15 = 0;
  v16 = -1;
LABEL_14:
  *a2 = v15;
  *(a2 + 8) = v16;
}

id static StaticAccessory.HomePodTypes.homePodType(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 homePodVariant];
  if (result >= 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t StaticAccessory.categoryKind.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 96));
  v2 = v1[1];
  if (!v2)
  {
    return 36;
  }

  v3 = *v1;
  v4 = v1[1];

  return _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v3, v2);
}

uint64_t Set<>.staticAccessoriesIgnoringCurrentDevice.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v23[1] = v23;
    v24 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v26 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(a1 + 56);
    v7 = (v11 + 63) >> 6;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v27 + 72) * v16, v5, type metadata accessor for StaticAccessory);
      v17 = v5[*(v2 + 60)];
      sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
      if ((v17 & 1) == 0)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_1D19E09A0(v25, v24, v26, a1);
          goto LABEL_17;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v21 = swift_slowAlloc();
  v22 = sub_1D1BCEE60(v21, v7, a1, sub_1D1BCC3E4, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v21, -1, -1);
  result = v22;
LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Set<>.staticAccessoriesIgnoringOnlySensors.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v23[1] = v23;
    v24 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v26 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v27 + 72) * v16, v5, type metadata accessor for StaticAccessory);
      v17 = sub_1D1BCC724(v5);
      sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
      if (v17)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_1D19E073C(v25, v24, v26, a1);
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v21 = swift_slowAlloc();
  v22 = sub_1D1BCEE60(v21, v7, a1, sub_1D1BCC724, 0, sub_1D19FA9F4);
  MEMORY[0x1D3893640](v21, -1, -1);
  result = v22;
LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1BCC724(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = type metadata accessor for StaticAccessory(0);
  if (*(a1 + *(v10 + 92) + 8) != 255)
  {
    return 1;
  }

  v61 = v9;
  v12 = sub_1D1BCE89C(*(a1 + *(v10 + 80)));
  v51 = v1;
  v13 = *(v12 + 64);
  v53 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v52 = (v14 + 63) >> 6;
  v57 = v12;

  v17 = 0;
  v18 = 0;
  v55 = v3;
  v56 = v7;
  v54 = "takeSnaphotsWhenBusy";
  while (v16)
  {
    v21 = v18;
LABEL_15:
    v23 = __clz(__rbit64(v16)) | (v17 << 6);
    v24 = v57;
    v25 = *(v57 + 48);
    v26 = sub_1D1E66A7C();
    v59 = *(v26 - 8);
    v27 = v25 + *(v59 + 72) * v23;
    v28 = *(v59 + 16);
    v29 = v61;
    v60 = v26;
    v28(v61, v27);
    v30 = *(v24 + 56);
    v31 = type metadata accessor for StaticService(0);
    sub_1D1BCEF78(v30 + *(*(v31 - 8) + 72) * v23, v29 + *(v3 + 48), type metadata accessor for StaticService);
    sub_1D1741C08(v29, v7, &qword_1EC642DB0, &unk_1D1E6F360);
    v32 = *(v3 + 48);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    v33 = &v7[v32];
    v34 = off_1EE07AB38;
    v35 = *(off_1EE07AB38 + 2);
    v36 = v21;
    v58 = v33;
    if (v35)
    {
      v37 = *(v33 + *(v31 + 104));
      v38 = *(off_1EE07AB38 + 5);
      sub_1D1E6920C();
      v64 = v37;
      v65 = v37;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v39 = sub_1D1E6926C();
      v40 = -1 << v34[32];
      v41 = v39 & ~v40;
      v63 = v34 + 56;
      v42 = v54;
      if ((*&v34[((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v41))
      {
        v62 = ~v40;
        while (1)
        {
          v43 = v42;
          switch(*(*(v34 + 6) + v41))
          {
            case 1:
              v44 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 2:
              v44 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 3:
              v44 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 4:
              v44 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 5:
              v44 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 6:
              v44 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 7:
              v44 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 8:
              v44 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 9:
              v44 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xA:
              v44 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xB:
              v44 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xC:
              v44 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xD:
              v44 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xE:
              v44 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xF:
              v44 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x10:
              v44 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x11:
              v44 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x12:
              v44 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x13:
              v44 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x14:
              v44 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x15:
              v44 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x16:
              v44 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x17:
              v44 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x18:
              v44 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x19:
              v44 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1A:
              v44 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1B:
              v44 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1C:
              v44 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1D:
              v44 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1E:
              v44 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1F:
              v44 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x20:
              v44 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x21:
              v44 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x22:
              v44 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x23:
              v44 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x24:
              v44 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x25:
              v44 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x26:
              v44 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x27:
              v44 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x28:
              v44 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x29:
              v44 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2A:
              v44 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2B:
              v44 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2C:
              v44 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2D:
              v44 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2E:
              v44 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2F:
              v44 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x30:
              v44 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x31:
              v44 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x32:
              v44 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x33:
              v44 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x34:
              v44 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_73:
              v43 = v44 - 32;
              break;
            default:
              break;
          }

          v45 = v43 | 0x8000000000000000;
          v46 = v42;
          switch(v64)
          {
            case 1:
              v47 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 2:
              v47 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 3:
              v47 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 4:
              v47 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 5:
              v47 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 6:
              v47 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 7:
              v47 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 8:
              v47 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 9:
              v47 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 10:
              v47 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 11:
              v47 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 12:
              v47 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 13:
              v47 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 14:
              v47 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 15:
              v47 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 16:
              v47 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 17:
              v47 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 18:
              v47 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 19:
              v47 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 20:
              v47 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 21:
              v47 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 22:
              v47 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 23:
              v47 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 24:
              v47 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 25:
              v47 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 26:
              v47 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 27:
              v47 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 28:
              v47 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 29:
              v47 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 30:
              v47 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 31:
              v47 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 32:
              v47 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 33:
              v47 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 34:
              v47 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 35:
              v47 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 36:
              v47 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 37:
              v47 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 38:
              v47 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 39:
              v47 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 40:
              v47 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 41:
              v47 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 42:
              v47 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 43:
              v47 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 44:
              v47 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 45:
              v47 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 46:
              v47 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 47:
              v47 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 48:
              v47 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 49:
              v47 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 50:
              v47 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 51:
              v47 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 52:
              v47 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_127:
              v46 = v47 - 32;
              break;
            default:
              break;
          }

          if (v45 == (v46 | 0x8000000000000000))
          {
            break;
          }

          v48 = sub_1D1E6904C();

          if (v48)
          {
            goto LABEL_133;
          }

          v41 = (v41 + 1) & v62;
          if (((*&v63[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41) & 1) == 0)
          {
            goto LABEL_131;
          }
        }

LABEL_133:
        v19 = 1;
      }

      else
      {
LABEL_131:
        v19 = 0;
      }

      v3 = v55;
    }

    else
    {
      v19 = 0;
    }

    v16 &= v16 - 1;
    sub_1D1741A30(v61, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D1BCEFE0(v58, type metadata accessor for StaticService);
    v7 = v56;
    result = (*(v59 + 8))(v56, v60);
    v20 = __OFADD__(v36, v19);
    v18 = v36 + v19;
    if (v20)
    {
      goto LABEL_137;
    }
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v52)
    {
      v49 = v57;

      v50 = *(v49 + 16);

      return v18 < v50;
    }

    v16 = *(v53 + 8 * v22);
    ++v17;
    if (v16)
    {
      v21 = v18;
      v17 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t Set<>.staticAccessoriesIgnoringNativeMatter.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v23[1] = v23;
    v24 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v25 = v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v26 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(a1 + 56);
    v7 = (v11 + 63) >> 6;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v27 + 72) * v16, v5, type metadata accessor for StaticAccessory);
      v17 = v5[*(v2 + 148)];
      sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
      if ((v17 & 1) == 0)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_1D19E09A0(v25, v24, v26, a1);
          goto LABEL_17;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v21 = swift_slowAlloc();
  v22 = sub_1D1BCEE60(v21, v7, a1, sub_1D1BCD3DC, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v21, -1, -1);
  result = v22;
LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Set<>.staticAccessoriesIgnoringSingleServices.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  do
  {
    v24 = &v24;
    v25 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v10 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v8);
    v26 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v8 = v16 | (v11 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v27 + 72) * v8, v5, type metadata accessor for StaticAccessory);
      if (v5[*(v2 + 108)] == 1)
      {
        sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
LABEL_19:
        *&v10[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_22:
          result = sub_1D19E09A0(v10, v25, v26, a1);
          goto LABEL_23;
        }
      }

      else
      {
        v7 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

        if (v7 >= 2 && (v7 = *(StaticAccessory.visibleStaticServices.getter() + 16), , v7))
        {
          v7 = v5[*(v2 + 76)];
          sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
          if ((v7 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D1BCEFE0(v5, type metadata accessor for StaticAccessory);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v22 = swift_slowAlloc();
  v23 = sub_1D1BCEE60(v22, v7, a1, sub_1D1BCD780, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v22, -1, -1);
  result = v23;
LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1BCD780(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory(0);
  if (*(a1 + *(v2 + 108)))
  {
    v3 = 1;
  }

  else
  {
    v4 = v2;
    v5 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

    if (v5 >= 2 && (v6 = *(StaticAccessory.visibleStaticServices.getter() + 16), , v6))
    {
      v3 = *(a1 + *(v4 + 76)) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t Set<>.staticAccessoriesIgnoringSpeakers.getter(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v7 = v5 & 0x3F;
  v8 = ((1 << v5) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_35;
  }

  do
  {
    v28 = &v28;
    v29 = v8;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v30 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v9);
    v31 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v9 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v8 = v16 | (v11 << 6);
      sub_1D1BCEF78(*(a1 + 48) + *(v3 + 72) * v8, v6, type metadata accessor for StaticAccessory);
      v19 = &v6[*(v2 + 92)];
      v20 = *v19;
      v21 = v19[8];
      if (v21 <= 1)
      {
        if (v21)
        {
          v22 = v20;
          v15 = 1;
LABEL_6:
          sub_1D18EB2D8(v22, v15);
        }

LABEL_7:
        sub_1D1BCEFE0(v6, type metadata accessor for StaticAccessory);
      }

      else if (v21 == 2)
      {
        sub_1D18EB2D8(v20, 2);
        if ((v20 & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1D1BCEFE0(v6, type metadata accessor for StaticAccessory);
        if ((v20 & 0x100) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v21 == 3)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v22 = 2;
            }

            else
            {
              v22 = 3;
            }
          }

          else
          {
            v22 = v20 != 0;
          }

          v15 = 3;
          goto LABEL_6;
        }

        sub_1D1BCEFE0(v6, type metadata accessor for StaticAccessory);
LABEL_29:
        *&v30[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_32:
          result = sub_1D19E09A0(v30, v29, v31, a1);
          goto LABEL_33;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_32;
      }

      v18 = *(a1 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v26 = swift_slowAlloc();
  v27 = sub_1D1BCEE60(v26, v8, a1, sub_1D1BCDBB4, 0, sub_1D19FAC5C);
  MEMORY[0x1D3893640](v26, -1, -1);
  result = v27;
LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1D1BCDBB4(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for StaticAccessory(0) + 92);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (v3)
    {
      v5 = v2;
      v6 = 1;
LABEL_15:
      sub_1D18EB2D8(v5, v6);
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 255)
      {
        return 1;
      }

      if (v2 > 1)
      {
        if (v2 == 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = v2 != 0;
      }

      v6 = 3;
      goto LABEL_15;
    }

    sub_1D18EB2D8(v2, 2);
    if (v2)
    {
      return (v2 & 0x100) == 0;
    }
  }

  return 0;
}

uint64_t Set<>.staticAccessoriesIgnoringBridgedServices.getter(unint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v53 - v7;
  v8 = type metadata accessor for StaticService(0);
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = type metadata accessor for StaticAccessory(0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v17) = *(a1 + 32);
  v18 = v17 & 0x3F;
  v54 = ((1 << v17) + 63) >> 6;
  v19 = 8 * v54;

  if (v18 > 0xD)
  {
    goto LABEL_41;
  }

LABEL_2:
  v66 = v6;
  v53 = &v53;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v55 = &v53 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v55, v19);
  v56 = 0;
  v21 = 0;
  v22 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v57 = (v23 + 63) >> 6;
  v73 = 0x80000001D1EB3580;
  v6 = v13;
  v62 = a1 + 56;
  v59 = v14;
  v60 = a1;
  v58 = v15;
  v69 = v8;
  while (v25)
  {
    v64 = (v25 - 1) & v25;
    v65 = v21;
    v26 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_13:
    v30 = *(a1 + 48);
    v31 = v15[9];
    v61 = v26;
    v32 = v63;
    sub_1D1BCEF78(v30 + v31 * v26, v63, type metadata accessor for StaticAccessory);
    if (*(v32 + *(v14 + 104)) == 1)
    {
      sub_1D1BCEFE0(v32, type metadata accessor for StaticAccessory);
      v22 = v62;
      v25 = v64;
      v21 = v65;
    }

    else
    {
      v33 = StaticAccessory.staticServicesExcludingComponents.getter();
      v13 = v33;
      v71 = *(v33 + 2);
      if (v71)
      {
        v14 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        v68 = v33;
        while (1)
        {
          if (v14 >= *(v13 + 2))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
            if ((isStackAllocationSafe & 1) == 0)
            {
              v51 = swift_slowAlloc();
              v52 = sub_1D1BCEE60(v51, v54, a1, sub_1D1BCE418, 0, sub_1D19FAC5C);
              MEMORY[0x1D3893640](v51, -1, -1);
              result = v52;
              goto LABEL_38;
            }

            goto LABEL_2;
          }

          a1 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v34 = *(v70 + 72);
          sub_1D1BCEF78(&v13[a1 + v34 * v14], v6, type metadata accessor for StaticService);
          v76 = v6[*(v8 + 104)];
          if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v73 == v35)
          {
          }

          else
          {
            v19 = v35;
            v36 = sub_1D1E6904C();

            if ((v36 & 1) == 0)
            {
              sub_1D1BCEFE0(v6, type metadata accessor for StaticService);
              goto LABEL_17;
            }
          }

          v74 = v34;
          v75 = a1;
          v37 = &v6[*(v8 + 116)];
          v38 = v67;
          sub_1D1741C08(v37, v67, &qword_1EC642590, qword_1D1E71260);
          v39 = sub_1D1E66A7C();
          v40 = *(v39 - 8);
          v41 = v6;
          v42 = *(v40 + 48);
          a1 = v40 + 48;
          v43 = v42(v38, 1, v39);
          sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
          if (v43 != 1)
          {
            goto LABEL_27;
          }

          v8 = v69;
          v19 = v66;
          sub_1D1741C08(v41 + *(v69 + 148), v66, &qword_1EC642590, qword_1D1E71260);
          if (v42(v19, 1, v39) != 1)
          {
            sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
LABEL_27:
            sub_1D17978CC(v41, v72);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = v15;
            v6 = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D17915E0(0, v15[2] + 1, 1);
              v15 = v77;
            }

            v13 = v68;
            v8 = v69;
            v46 = v74;
            v45 = v75;
            a1 = v15[2];
            v47 = v15[3];
            v19 = a1 + 1;
            if (a1 >= v47 >> 1)
            {
              sub_1D17915E0(v47 > 1, a1 + 1, 1);
              v15 = v77;
            }

            v15[2] = v19;
            sub_1D17978CC(v72, v15 + v45 + a1 * v46);
            goto LABEL_17;
          }

          sub_1D1BCEFE0(v41, type metadata accessor for StaticService);
          sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
          v6 = v41;
          v13 = v68;
LABEL_17:
          if (v71 == ++v14)
          {
            goto LABEL_33;
          }
        }
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v19 = v15[2];

      sub_1D1BCEFE0(v63, type metadata accessor for StaticAccessory);
      v14 = v59;
      a1 = v60;
      v15 = v58;
      v22 = v62;
      v25 = v64;
      v21 = v65;
      if (!v19)
      {
        *&v55[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v61;
        if (__OFADD__(v56++, 1))
        {
          __break(1u);
          goto LABEL_37;
        }
      }
    }
  }

  v27 = v21;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_40;
    }

    if (v28 >= v57)
    {
      break;
    }

    v29 = *(v22 + 8 * v28);
    ++v27;
    if (v29)
    {
      v64 = (v29 - 1) & v29;
      v65 = v28;
      v26 = __clz(__rbit64(v29)) | (v28 << 6);
      goto LABEL_13;
    }
  }

LABEL_37:
  result = sub_1D19E09A0(v55, v54, v56, a1);
LABEL_38:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}