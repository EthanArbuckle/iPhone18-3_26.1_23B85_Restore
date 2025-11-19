uint64_t sub_1D1B5A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v150 = type metadata accessor for TilesFilter(0);
  v3 = *(*(v150 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v150);
  v151 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v149 = &v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v145 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v144 = &v143 - v11;
  v147 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(*(v147 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v147);
  v146 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v143 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v154 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v143 - v20;
  v168 = type metadata accessor for StaticService(0);
  v158 = *(v168 - 8);
  v21 = *(v158 + 64);
  v22 = MEMORY[0x1EEE9AC00](v168);
  v24 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v143 - v25;
  v26 = sub_1D1E66A7C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v143 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v155 = &v143 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v166 = &v143 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v36);
  v41 = &v143 - v40;
  v42 = 0;
  v161 = a1;
  v45 = *(a1 + 64);
  v44 = a1 + 64;
  v43 = v45;
  v46 = 1 << *(v44 - 32);
  v174 = MEMORY[0x1E69E7CD0];
  v175 = MEMORY[0x1E69E7CD0];
  v173 = MEMORY[0x1E69E7CD0];
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & v43;
  v49 = (v46 + 63) >> 6;
  v159 = v27;
  v160 = (v27 + 32);
  v170 = v38;
  v171 = 0x80000001D1EB2FE0;
  v164 = (v27 + 8);
  v165 = (v27 + 16);
  v167 = v24;
  v169 = &v143 - v40;
  v162 = v26;
  v163 = v44;
  v156 = v49;
  if ((v47 & v43) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v52 = v42;
LABEL_17:
    v55 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v56 = v55 | (v52 << 6);
    v57 = v161;
    v58 = v159;
    (*(v159 + 16))(v166, *(v161 + 48) + *(v159 + 72) * v56, v26);
    v59 = v157;
    sub_1D1B615D8(*(v57 + 56) + *(v158 + 72) * v56, v157, type metadata accessor for StaticService);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v61 = *(v60 + 48);
    v62 = *(v58 + 32);
    v38 = v170;
    v53 = v26;
    v62();
    sub_1D1B61510(v59, &v38[v61], type metadata accessor for StaticService);
    (*(*(v60 - 8) + 56))(v38, 0, 1, v60);
    v41 = v169;
    v49 = v156;
LABEL_18:
    sub_1D1741A90(v38, v41, &qword_1EC643C68, &unk_1D1E764C0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v63 - 8) + 48))(v41, 1, v63) == 1)
    {
      break;
    }

    v64 = v167;
    sub_1D1B61510(&v41[*(v63 + 48)], v167, type metadata accessor for StaticService);
    v65 = *(v168 + 104);
    LOBYTE(v172) = *(v64 + v65);
    v66 = v172;
    ServiceKind.rawValue.getter();

    LOBYTE(v172) = v66;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v171 == v67)
    {
    }

    else
    {
      v68 = sub_1D1E6904C();

      if ((v68 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    LOBYTE(v172) = *(v64 + v65);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v171 == v69)
    {
    }

    else
    {
      v70 = sub_1D1E6904C();

      if ((v70 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v71 = *(v64 + *(v168 + 128));
    if (*(v71 + 16) && (v72 = sub_1D171D140(3), (v73 & 1) != 0))
    {
      v74 = v72;
      v75 = *(v71 + 56);
      v76 = type metadata accessor for StaticCharacteristic();
      v77 = *(v76 - 8);
      v78 = v75 + *(v77 + 72) * v74;
      v79 = v153;
      sub_1D1B615D8(v78, v153, type metadata accessor for StaticCharacteristic);
      (*(v77 + 56))(v79, 0, 1, v76);
    }

    else
    {
      v76 = type metadata accessor for StaticCharacteristic();
      v79 = v153;
      (*(*(v76 - 8) + 56))(v153, 1, 1, v76);
    }

    v80 = v154;
    sub_1D1741A90(v79, v154, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic();
    result = (*(*(v76 - 8) + 48))(v80, 1, v76);
    if (result == 1)
    {
      sub_1D1741A30(v80, &qword_1EC643630, &qword_1D1E71D10);
      v64 = v167;
      goto LABEL_55;
    }

    v81 = v80 + *(v76 + 24);
    v82 = *v81;
    v83 = *(v81 + 16);
    v64 = v167;
    if (v83 > 2)
    {
      if (v83 > 4)
      {
        if (v83 != 6 && v83 != 5)
        {
          goto LABEL_54;
        }

        v82 = v82;
        if (v82 > 1)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v83 == 3)
        {
          v82 = v82;
        }

        else if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v82 > 1)
        {
LABEL_54:
          sub_1D1B61578(v80, type metadata accessor for StaticCharacteristic);
          goto LABEL_55;
        }
      }

LABEL_50:
      sub_1D1B61578(v80, type metadata accessor for StaticCharacteristic);
      if (v82 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    if (v83)
    {
      if (v83 == 1)
      {
        v82 = v82;
        if (v82 > 1uLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v82 = v82;
        if (v82 > 1uLL)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_50;
    }

    sub_1D1B61578(v80, type metadata accessor for StaticCharacteristic);
    if ((v82 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_51:
    if (sub_1D1B4D4D4(v64))
    {
      goto LABEL_60;
    }

LABEL_55:
    LOBYTE(v172) = v66;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v171 == v84)
    {

      goto LABEL_59;
    }

    v85 = sub_1D1E6904C();

    if (v85)
    {
LABEL_59:
      if ((sub_1D1B4D4D4(v64) & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_60:
      v26 = v162;
      v38 = v170;
LABEL_66:
      v88 = v155;
      (*v165)(v155, v64, v26);
      v89 = v166;
      sub_1D1762CB8(v166, v88);
      v90 = *v164;
      (*v164)(v89, v26);
      sub_1D1B61578(v64, type metadata accessor for StaticService);
      v41 = v169;
      result = v90(v169, v26);
      v44 = v163;
      if (!v48)
      {
LABEL_7:
        if (v49 <= v42 + 1)
        {
          v50 = v42 + 1;
        }

        else
        {
          v50 = v49;
        }

        v51 = v50 - 1;
        while (1)
        {
          v52 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v52 >= v49)
          {
            v53 = v26;
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
            (*(*(v54 - 8) + 56))(v38, 1, 1, v54);
            v48 = 0;
            v42 = v51;
            goto LABEL_18;
          }

          v48 = *(v44 + 8 * v52);
          ++v42;
          if (v48)
          {
            v42 = v52;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    else
    {
LABEL_61:
      LOBYTE(v172) = v66;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v171 == v86)
      {

        v26 = v162;
        v38 = v170;
      }

      else
      {
        v87 = sub_1D1E6904C();

        v26 = v162;
        v38 = v170;
        if ((v87 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_1D1B4D080(v64))
      {
        goto LABEL_66;
      }

LABEL_6:
      sub_1D1B61578(v64, type metadata accessor for StaticService);
      v41 = v169;
      result = (*v164)(v169, v26);
      v44 = v163;
      if (!v48)
      {
        goto LABEL_7;
      }
    }
  }

  v92 = v174;
  v91 = v175;
  v93 = *(v175 + 16);
  v94 = *(v174 + 16);
  v95 = __OFADD__(v93, v94);
  v96 = v93 + v94;
  if (v95)
  {
    goto LABEL_87;
  }

  v97 = v173;
  v98 = *(v173 + 16);
  v99 = v96 + v98;
  if (__OFADD__(v96, v98))
  {
LABEL_88:
    __break(1u);
    return result;
  }

  v100 = v53;

  v101 = sub_1D18C02C0(v92, v91);
  v102 = sub_1D18C02C0(v97, v101);
  v103 = sub_1D18C02C0(MEMORY[0x1E69E7CD0], v102);
  if (v99 <= 0)
  {

    v112 = type metadata accessor for FaucetStatusItem(0);
    return (*(*(v112 - 8) + 56))(v152, 1, 1, v112);
  }

  else
  {
    v104 = *(v92 + 16);
    if (v104 && v104 == v99)
    {

      static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC5580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D1E739C0;
      v106 = *(v92 + 16);

      v107 = MEMORY[0x1E69E65A8];
      *(v105 + 56) = MEMORY[0x1E69E6530];
      *(v105 + 64) = v107;
      *(v105 + 32) = v106;
      v171 = sub_1D1E6783C();
      v109 = v108;
      v110 = v145;
      v111 = v159;
    }

    else
    {

      v113 = *(v97 + 16);
      v110 = v145;
      v111 = v159;
      if (v113 && v113 == v99)
      {
        static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC5550);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1D1E739C0;
        v115 = *(v97 + 16);

        v116 = MEMORY[0x1E69E65A8];
        *(v114 + 56) = MEMORY[0x1E69E6530];
        *(v114 + 64) = v116;
        *(v114 + 32) = v115;
      }

      else
      {

        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5520);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v117 = swift_allocObject();
        v118 = MEMORY[0x1E69E6530];
        *(v117 + 16) = xmmword_1D1E739C0;
        v119 = MEMORY[0x1E69E65A8];
        *(v117 + 56) = v118;
        *(v117 + 64) = v119;
        *(v117 + 32) = v99;
      }

      v171 = sub_1D1E6783C();
      v109 = v120;
    }

    v121 = v144;
    (*(v111 + 56))(v144, 1, 1, v53);
    v122 = v121;
    v123 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBD2D0);
    v125 = v124;
    sub_1D1741C08(v121, v110, &qword_1EC642590, qword_1D1E71260);
    v126 = *(v111 + 48);
    if (v126(v110, 1, v100) == 1)
    {
      v127 = v103;
      v128 = v143;
      sub_1D1E66A6C();
      v129 = v122;
      v130 = v128;
      v103 = v127;
      sub_1D1741A30(v129, &qword_1EC642590, qword_1D1E71260);
      if (v126(v110, 1, v100) != 1)
      {
        sub_1D1741A30(v110, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v122, &qword_1EC642590, qword_1D1E71260);
      v130 = v143;
      (*v160)(v143, v110, v100);
    }

    v131 = v146;
    (*v160)(v146, v130, v100);
    v132 = v147;
    v133 = (v131 + *(v147 + 20));
    *v133 = 0x662E746F67697073;
    v133[1] = 0xEB000000006C6C69;
    v134 = (v131 + v132[6]);
    *v134 = v123;
    v134[1] = v125;
    v135 = (v131 + v132[7]);
    *v135 = v171;
    v135[1] = v109;
    v136 = v131 + v132[8];
    *v136 = 0;
    *(v136 + 8) = 0;
    *(v136 + 16) = 0;
    *(v136 + 24) = -1;
    v137 = v148;
    v138 = sub_1D1B61510(v131, v148, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v138);
    *(&v143 - 2) = v103;
    v172 = v168;
    v139 = v149;
    sub_1D1E66C8C();

    swift_storeEnumTagMultiPayload();
    v140 = v151;
    sub_1D1B61510(v139, v151, type metadata accessor for TilesFilter);
    v141 = type metadata accessor for FaucetStatusItem(0);
    v142 = v152;
    *(v152 + v141[6]) = 6;
    *(v142 + v141[7]) = 3;
    sub_1D1B61510(v137, v142, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B61510(v140, v142 + v141[5], type metadata accessor for TilesFilter);
    return (*(*(v141 - 1) + 56))(v142, 0, 1, v141);
  }
}

uint64_t sub_1D1B5BAA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741A90(*a1, a2, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B838, &qword_1D1E9AD38);
  sub_1D1741A90(a1[1], a2 + v4[12], &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A90(a1[2], a2 + v4[16], &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A90(a1[3], a2 + v4[20], &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A90(a1[4], a2 + v4[24], &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A90(a1[5], a2 + v4[28], &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A90(a1[6], a2 + v4[32], &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A90(a1[7], a2 + v4[36], &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A90(a1[8], a2 + v4[40], &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A90(a1[9], a2 + v4[44], &qword_1EC64B860, &qword_1D1E9AD60);
  return sub_1D1741A90(a1[10], a2 + v4[48], &qword_1EC64B868, &qword_1D1E9AD68);
}

uint64_t sub_1D1B5BC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741A90(*a1, a2, &qword_1EC64B768, &qword_1D1E9AC68);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B778, &qword_1D1E9AC78);
  sub_1D1741A90(a1[1], a2 + v4[12], &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A90(a1[2], a2 + v4[16], &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A90(a1[3], a2 + v4[20], &qword_1EC64B780, &qword_1D1E9AC80);
  sub_1D1741A90(a1[4], a2 + v4[24], &qword_1EC64B748, &qword_1D1E9AC48);
  sub_1D1741A90(a1[5], a2 + v4[28], &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A90(a1[6], a2 + v4[32], &qword_1EC64B788, &qword_1D1E9AC88);
  sub_1D1741A90(a1[7], a2 + v4[36], &qword_1EC64B790, &qword_1D1E9AC90);
  sub_1D1741A90(a1[8], a2 + v4[40], &qword_1EC64B798, &qword_1D1E9AC98);
  sub_1D1741A90(a1[9], a2 + v4[44], &qword_1EC64B7A0, &qword_1D1E9ACA0);
  sub_1D1741A90(a1[10], a2 + v4[48], &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A90(a1[11], a2 + v4[52], &qword_1EC64B7B0, &qword_1D1E9ACB0);
  sub_1D1741A90(a1[12], a2 + v4[56], &qword_1EC64B7B8, &qword_1D1E9ACB8);
  sub_1D1741A90(a1[13], a2 + v4[60], &qword_1EC64B7C0, &qword_1D1E9ACC0);
  sub_1D1741A90(a1[14], a2 + v4[64], &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A90(a1[15], a2 + v4[68], &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A90(a1[16], a2 + v4[72], &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A90(a1[17], a2 + v4[76], &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A90(a1[18], a2 + v4[80], &qword_1EC64B7E8, &qword_1D1E9ACE8);
  sub_1D1741A90(a1[19], a2 + v4[84], &qword_1EC64B7F0, &qword_1D1E9ACF0);
  sub_1D1741A90(a1[20], a2 + v4[88], &qword_1EC64B7F8, &qword_1D1E9ACF8);
  sub_1D1741A90(a1[21], a2 + v4[92], &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A90(a1[22], a2 + v4[96], &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A90(a1[23], a2 + v4[100], &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A90(a1[24], a2 + v4[104], &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A90(a1[25], a2 + v4[108], &qword_1EC64B820, &qword_1D1E9AD20);
  return sub_1D1741A90(a1[26], a2 + v4[112], &qword_1EC64B828, &qword_1D1E9AD28);
}

uint64_t sub_1D1B5BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B870, &qword_1D1E9AD70);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1D1741C08(*a1, &v15 - v7, &qword_1EC64B768, &qword_1D1E9AC68);
  v9 = v5[14];
  sub_1D1741C08(a1[1], &v8[v9], &qword_1EC64B760, &qword_1D1E9AC60);
  v10 = v5[18];
  sub_1D1741C08(a1[2], &v8[v10], &qword_1EC64B758, &qword_1D1E9AC58);
  v11 = v5[22];
  sub_1D1741C08(a1[3], &v8[v11], &qword_1EC64B750, &qword_1D1E9AC50);
  v12 = v5[26];
  sub_1D1741C08(a1[4], &v8[v12], &qword_1EC64B748, &qword_1D1E9AC48);
  v13 = v5[30];
  sub_1D1741C08(a1[5], &v8[v13], &qword_1EC64B740, &qword_1D1E9AC40);
  sub_1D1741A90(v8, a2, &qword_1EC64B768, &qword_1D1E9AC68);
  sub_1D1741A90(&v8[v9], a2 + v5[14], &qword_1EC64B760, &qword_1D1E9AC60);
  sub_1D1741A90(&v8[v10], a2 + v5[18], &qword_1EC64B758, &qword_1D1E9AC58);
  sub_1D1741A90(&v8[v11], a2 + v5[22], &qword_1EC64B750, &qword_1D1E9AC50);
  sub_1D1741A90(&v8[v12], a2 + v5[26], &qword_1EC64B748, &qword_1D1E9AC48);
  return sub_1D1741A90(&v8[v13], a2 + v5[30], &qword_1EC64B740, &qword_1D1E9AC40);
}

uint64_t sub_1D1B5C1F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B838, &qword_1D1E9AD38);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-1] - v7;
  sub_1D1741C08(*a1, &v21[-1] - v7, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v21[0] = v8;
  v9 = &v8[v5[14]];
  sub_1D1741C08(a1[1], v9, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v21[1] = v9;
  v10 = &v8[v5[18]];
  sub_1D1741C08(a1[2], v10, &qword_1EC64B840, &qword_1D1E9AD40);
  v21[2] = v10;
  v11 = &v8[v5[22]];
  sub_1D1741C08(a1[3], v11, &qword_1EC64B848, &qword_1D1E9AD48);
  v21[3] = v11;
  v12 = &v8[v5[26]];
  sub_1D1741C08(a1[4], v12, &qword_1EC64B850, &qword_1D1E9AD50);
  v21[4] = v12;
  v13 = &v8[v5[30]];
  sub_1D1741C08(a1[5], v13, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v21[5] = v13;
  v14 = &v8[v5[34]];
  sub_1D1741C08(a1[6], v14, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v21[6] = v14;
  v15 = &v8[v5[38]];
  sub_1D1741C08(a1[7], v15, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v21[7] = v15;
  v16 = &v8[v5[42]];
  sub_1D1741C08(a1[8], v16, &qword_1EC64B858, &qword_1D1E9AD58);
  v21[8] = v16;
  v17 = &v8[v5[46]];
  sub_1D1741C08(a1[9], v17, &qword_1EC64B860, &qword_1D1E9AD60);
  v21[9] = v17;
  v18 = &v8[v5[50]];
  sub_1D1741C08(a1[10], v18, &qword_1EC64B868, &qword_1D1E9AD68);
  v21[10] = v18;
  return sub_1D1B5BAA4(v21, a2);
}

uint64_t sub_1D1B5C43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B830, &qword_1D1E9AD30);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1D1741C08(*a1, &v12 - v7, &qword_1EC64B810, &qword_1D1E9AD10);
  v9 = *(v5 + 56);
  sub_1D1741C08(a1[1], &v8[v9], &qword_1EC64B818, &qword_1D1E9AD18);
  v10 = *(v5 + 72);
  sub_1D1741C08(a1[2], &v8[v10], &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A90(v8, a2, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A90(&v8[v9], a2 + *(v5 + 56), &qword_1EC64B818, &qword_1D1E9AD18);
  return sub_1D1741A90(&v8[v10], a2 + *(v5 + 72), &qword_1EC64B820, &qword_1D1E9AD20);
}

uint64_t sub_1D1B5C58C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B778, &qword_1D1E9AC78);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37[-1] - v7;
  sub_1D1741C08(*a1, &v37[-1] - v7, &qword_1EC64B768, &qword_1D1E9AC68);
  v37[0] = v8;
  v9 = &v8[v5[14]];
  sub_1D1741C08(a1[1], v9, &qword_1EC64B760, &qword_1D1E9AC60);
  v37[1] = v9;
  v10 = &v8[v5[18]];
  sub_1D1741C08(a1[2], v10, &qword_1EC64B758, &qword_1D1E9AC58);
  v37[2] = v10;
  v11 = &v8[v5[22]];
  sub_1D1741C08(a1[3], v11, &qword_1EC64B780, &qword_1D1E9AC80);
  v37[3] = v11;
  v12 = &v8[v5[26]];
  sub_1D1741C08(a1[4], v12, &qword_1EC64B748, &qword_1D1E9AC48);
  v37[4] = v12;
  v13 = &v8[v5[30]];
  sub_1D1741C08(a1[5], v13, &qword_1EC64B740, &qword_1D1E9AC40);
  v37[5] = v13;
  v14 = &v8[v5[34]];
  sub_1D1741C08(a1[6], v14, &qword_1EC64B788, &qword_1D1E9AC88);
  v37[6] = v14;
  v15 = &v8[v5[38]];
  sub_1D1741C08(a1[7], v15, &qword_1EC64B790, &qword_1D1E9AC90);
  v37[7] = v15;
  v16 = &v8[v5[42]];
  sub_1D1741C08(a1[8], v16, &qword_1EC64B798, &qword_1D1E9AC98);
  v37[8] = v16;
  v17 = &v8[v5[46]];
  sub_1D1741C08(a1[9], v17, &qword_1EC64B7A0, &qword_1D1E9ACA0);
  v37[9] = v17;
  v18 = &v8[v5[50]];
  sub_1D1741C08(a1[10], v18, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v37[10] = v18;
  v19 = &v8[v5[54]];
  sub_1D1741C08(a1[11], v19, &qword_1EC64B7B0, &qword_1D1E9ACB0);
  v37[11] = v19;
  v20 = &v8[v5[58]];
  sub_1D1741C08(a1[12], v20, &qword_1EC64B7B8, &qword_1D1E9ACB8);
  v37[12] = v20;
  v21 = &v8[v5[62]];
  sub_1D1741C08(a1[13], v21, &qword_1EC64B7C0, &qword_1D1E9ACC0);
  v37[13] = v21;
  v22 = &v8[v5[66]];
  sub_1D1741C08(a1[14], v22, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v37[14] = v22;
  v23 = &v8[v5[70]];
  sub_1D1741C08(a1[15], v23, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v37[15] = v23;
  v24 = &v8[v5[74]];
  sub_1D1741C08(a1[16], v24, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v37[16] = v24;
  v25 = &v8[v5[78]];
  sub_1D1741C08(a1[17], v25, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v37[17] = v25;
  v26 = &v8[v5[82]];
  sub_1D1741C08(a1[18], v26, &qword_1EC64B7E8, &qword_1D1E9ACE8);
  v37[18] = v26;
  v27 = &v8[v5[86]];
  sub_1D1741C08(a1[19], v27, &qword_1EC64B7F0, &qword_1D1E9ACF0);
  v37[19] = v27;
  v28 = &v8[v5[90]];
  sub_1D1741C08(a1[20], v28, &qword_1EC64B7F8, &qword_1D1E9ACF8);
  v37[20] = v28;
  v29 = &v8[v5[94]];
  sub_1D1741C08(a1[21], v29, &qword_1EC64B800, &qword_1D1E9AD00);
  v37[21] = v29;
  v30 = &v8[v5[98]];
  sub_1D1741C08(a1[22], v30, &qword_1EC64B808, &qword_1D1E9AD08);
  v37[22] = v30;
  v31 = &v8[v5[102]];
  sub_1D1741C08(a1[23], v31, &qword_1EC64B810, &qword_1D1E9AD10);
  v37[23] = v31;
  v32 = &v8[v5[106]];
  sub_1D1741C08(a1[24], v32, &qword_1EC64B818, &qword_1D1E9AD18);
  v37[24] = v32;
  v33 = &v8[v5[110]];
  sub_1D1741C08(a1[25], v33, &qword_1EC64B820, &qword_1D1E9AD20);
  v37[25] = v33;
  v34 = &v8[v5[114]];
  sub_1D1741C08(a1[26], v34, &qword_1EC64B828, &qword_1D1E9AD28);
  v37[26] = v34;
  return sub_1D1B5BC44(v37, a2);
}

uint64_t UmbrellaCategoryInformation.climateStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v134 = a2;
  v5 = sub_1D1E66A7C();
  v140 = *(v5 - 8);
  v6 = v140[8];
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B740, &qword_1D1E9AC40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v133 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B748, &qword_1D1E9AC48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v132 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B750, &qword_1D1E9AC50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v130 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B758, &qword_1D1E9AC58);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v128 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v124 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B760, &qword_1D1E9AC60);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v124 - v32;
  v33 = type metadata accessor for StatusItemLocation(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v125 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B768, &qword_1D1E9AC68);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v137 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v135 = &v124 - v40;
  v41 = type metadata accessor for StaticService(0);
  v146 = *(v41 - 8);
  v42 = *(v146 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v145 = &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v142 = &v124 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v139 = &v124 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v124 - v49;
  v51 = type metadata accessor for StaticAccessory(0);
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v3 + 8);
  v57 = *(v3 + 24);
  v58 = MEMORY[0x1E69E7CC0];
  v59 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v151 = a1;
  v124 = sub_1D190104C(v59, sub_1D1B61450, v150, v57);
  v149 = a1;
  v60 = sub_1D1788F9C(sub_1D1B6146C, v148, v56);
  v152[0] = v58;
  v61 = v60[2];
  v144 = v5;
  if (v61)
  {
    v143 = v41;
    v62 = *(v51 + 84);
    v63 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v141 = v60;
    v64 = v60 + v63;
    v65 = *(v52 + 72);
    do
    {
      v66 = sub_1D1B615D8(v64, v55, type metadata accessor for StaticAccessory);
      v67 = *&v55[v62];
      MEMORY[0x1EEE9AC00](v66);
      *(&v124 - 2) = v55;
      v69 = sub_1D17868B8(sub_1D1820ECC, (&v124 - 4), v68);
      sub_1D1B61578(v55, type metadata accessor for StaticAccessory);
      sub_1D17A54D8(v69);
      v64 += v65;
      v61 = (v61 - 1);
    }

    while (v61);

    v70 = v152[0];
    v41 = v143;
    v71 = v144;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
    v71 = v5;
  }

  v72 = *(v70 + 16);
  v73 = v142;
  if (!v72)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v81 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
    v143 = *(v75 + 16);
    if (!v143)
    {
LABEL_33:

      v104 = v140[7];
      v105 = v125;
      v104(v125, 1, 1, v71);

      v107 = v135;
      sub_1D1B34554(v106, v105, v135);
      v104(v105, 1, 1, v71);
      v108 = v136;
      sub_1D1B35B48(v81, v105, v136);
      v109 = v124;

      v111 = v126;
      sub_1D1B37208(v110, v126);

      v113 = v127;
      sub_1D1B53CE8(v112, v127);

      v115 = v129;
      sub_1D1B37BA0(v114, v129);
      v116 = v131;
      sub_1D1B38748(v109, v131);
      v117 = v137;
      sub_1D1741C08(v107, v137, &qword_1EC64B768, &qword_1D1E9AC68);
      v152[0] = v117;
      v118 = v138;
      sub_1D1741C08(v108, v138, &qword_1EC64B760, &qword_1D1E9AC60);
      v152[1] = v118;
      v119 = v128;
      sub_1D1741C08(v111, v128, &qword_1EC64B758, &qword_1D1E9AC58);
      v152[2] = v119;
      v120 = v130;
      sub_1D1741C08(v113, v130, &qword_1EC64B750, &qword_1D1E9AC50);
      v152[3] = v120;
      v121 = v132;
      sub_1D1741C08(v115, v132, &qword_1EC64B748, &qword_1D1E9AC48);
      v152[4] = v121;
      v122 = v133;
      sub_1D1741C08(v116, v133, &qword_1EC64B740, &qword_1D1E9AC40);
      v152[5] = v122;
      sub_1D1B5BFE4(v152, v134);
      sub_1D1741A30(v116, &qword_1EC64B740, &qword_1D1E9AC40);
      sub_1D1741A30(v115, &qword_1EC64B748, &qword_1D1E9AC48);
      sub_1D1741A30(v113, &qword_1EC64B750, &qword_1D1E9AC50);
      sub_1D1741A30(v111, &qword_1EC64B758, &qword_1D1E9AC58);
      sub_1D1741A30(v136, &qword_1EC64B760, &qword_1D1E9AC60);
      sub_1D1741A30(v135, &qword_1EC64B768, &qword_1D1E9AC68);
      sub_1D1741A30(v122, &qword_1EC64B740, &qword_1D1E9AC40);
      sub_1D1741A30(v121, &qword_1EC64B748, &qword_1D1E9AC48);
      sub_1D1741A30(v120, &qword_1EC64B750, &qword_1D1E9AC50);
      sub_1D1741A30(v119, &qword_1EC64B758, &qword_1D1E9AC58);
      sub_1D1741A30(v138, &qword_1EC64B760, &qword_1D1E9AC60);
      return sub_1D1741A30(v137, &qword_1EC64B768, &qword_1D1E9AC68);
    }

    v82 = 0;
    v142 = (v75 + ((*(v146 + 80) + 32) & ~*(v146 + 80)));
    v83 = (v140 + 2);
    v141 = (v140 + 1);
    v84 = v139;
    while (1)
    {
      if (v82 >= *(v75 + 16))
      {
        goto LABEL_35;
      }

      v85 = *(v146 + 72);
      sub_1D1B615D8(&v142[v85 * v82], v84, type metadata accessor for StaticService);
      v86 = *v83;
      v87 = v147;
      (*v83)(v147, v84, v71);
      sub_1D1B615D8(v84, v145, type metadata accessor for StaticService);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v81;
      v89 = sub_1D1742188(v87);
      v91 = v81[2];
      v92 = (v90 & 1) == 0;
      v93 = __OFADD__(v91, v92);
      v94 = v91 + v92;
      if (v93)
      {
        goto LABEL_36;
      }

      v95 = v90;
      if (v81[3] < v94)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v103 = v89;
      sub_1D1735934();
      v89 = v103;
      v81 = v152[0];
      if (v95)
      {
LABEL_20:
        sub_1D1B61488(v145, v81[7] + v89 * v85);
        v71 = v144;
        (*v141)(v147, v144);
        sub_1D1B61578(v84, type metadata accessor for StaticService);
        goto LABEL_21;
      }

LABEL_29:
      v81[(v89 >> 6) + 8] |= 1 << v89;
      v97 = v140;
      v98 = v89;
      v99 = v147;
      v71 = v144;
      v86((v81[6] + v140[9] * v89), v147, v144);
      sub_1D1B61510(v145, v81[7] + v98 * v85, type metadata accessor for StaticService);
      v100 = v97[1];
      v84 = v139;
      v100(v99, v71);
      sub_1D1B61578(v84, type metadata accessor for StaticService);
      v101 = v81[2];
      v93 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v93)
      {
        goto LABEL_37;
      }

      v81[2] = v102;
LABEL_21:
      if (v143 == ++v82)
      {
        goto LABEL_33;
      }
    }

    sub_1D1723194(v94, isUniquelyReferenced_nonNull_native);
    v89 = sub_1D1742188(v147);
    if ((v95 & 1) != (v96 & 1))
    {
      goto LABEL_38;
    }

LABEL_28:
    v81 = v152[0];
    if (v95)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v74 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  v143 = *(v70 + 16);
  while (v74 < *(v70 + 16))
  {
    v76 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v77 = *(v146 + 72);
    sub_1D1B615D8(v70 + v76 + v77 * v74, v50, type metadata accessor for StaticService);
    if (v50[*(v41 + 96)] == 1)
    {
      sub_1D1B61510(v50, v73, type metadata accessor for StaticService);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v75;
      if ((v78 & 1) == 0)
      {
        sub_1D17915E0(0, *(v75 + 16) + 1, 1);
        v73 = v142;
        v75 = v152[0];
      }

      v80 = *(v75 + 16);
      v79 = *(v75 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_1D17915E0(v79 > 1, v80 + 1, 1);
        v73 = v142;
        v75 = v152[0];
      }

      *(v75 + 16) = v80 + 1;
      sub_1D1B61510(v73, v75 + v76 + v80 * v77, type metadata accessor for StaticService);
      v72 = v143;
      v71 = v144;
    }

    else
    {
      sub_1D1B61578(v50, type metadata accessor for StaticService);
    }

    if (v72 == ++v74)
    {
      goto LABEL_18;
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
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void *UmbrellaCategoryInformation.climateStatusGaugeData(stateSnapshot:)(uint64_t a1)
{
  v3 = type metadata accessor for IconTextValueStringDataHolder();
  v76 = *(v3 - 1);
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v6 = *(v72 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = v70 - v11;
  v12 = *(v1 + 16);
  v13 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v80 = a1;
  v75 = sub_1D190104C(v13, sub_1D1B614EC, v79, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B770, &qword_1D1E9AC70);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v71 = swift_allocObject();
  v16 = v71 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v18 = swift_allocObject();
  v73 = xmmword_1D1E739C0;
  *(v18 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v19 = *algn_1EC644B98;
  v20 = qword_1EC644BA0;
  v21 = unk_1EC644BA8;
  v22 = qword_1EC644BB0;
  *(v18 + 32) = qword_1EC644B90;
  *(v18 + 40) = v19;
  *(v18 + 48) = v20;
  *(v18 + 56) = v21;
  *(v18 + 64) = v22;

  v23 = v75;
  v24 = sub_1D1828A0C(v18, 1, 1, 1, v75);

  v81 = 1;
  static ClimateSummarizer._temperatureGaugeData(context:from:)(v24, v16);

  v74 = v16;
  v25 = v16 + v14;
  v70[1] = v17;
  v26 = swift_allocObject();
  *(v26 + 16) = v73;
  v27 = v14;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v28 = *algn_1EC644BE8;
  v29 = qword_1EC644BF0;
  v30 = unk_1EC644BF8;
  v31 = qword_1EC644C00;
  *(v26 + 32) = qword_1EC644BE0;
  *(v26 + 40) = v28;
  *(v26 + 48) = v29;
  *(v26 + 56) = v30;
  *(v26 + 64) = v31;

  v32 = sub_1D1828A0C(v26, 1, 1, 1, v23);

  v33 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v32);

  v34 = *(v33 + 16);
  if (!v34)
  {
    (*(v76 + 56))(v25, 1, 1, v3);

    goto LABEL_15;
  }

  if (v34 > 3)
  {
    v36 = v34 & 0x7FFFFFFFFFFFFFFCLL;
    v38 = v33 + 48;
    v37 = 0.0;
    v39 = v34 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v40 = *v38;
      v37 = v37 + *(v38 - 16) + *(v38 - 8) + *v38 + *(v38 + 8);
      v38 += 32;
      v39 -= 4;
    }

    while (v39);
    v35 = v25;
    if (v34 == v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v35 = v25;
    v36 = 0;
    v37 = 0.0;
  }

  v41 = v34 - v36;
  v42 = (v33 + 8 * v36 + 32);
  do
  {
    v43 = *v42++;
    v37 = v37 + v43;
    --v41;
  }

  while (v41);
LABEL_14:
  v44 = v37 / v34;
  v45 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v47 = v46;
  v48 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v33, 1);
  v50 = v49;

  sub_1D1E66A6C();
  v51 = v35 + v3[5];
  strcpy(v51, "humidity.fill");
  *(v51 + 14) = -4864;
  v52 = (v35 + v3[6]);
  *v52 = v45;
  v52[1] = v47;
  v53 = (v35 + v3[7]);
  *v53 = v48;
  v53[1] = v50;
  v54 = v35 + v3[8];
  *v54 = v44;
  *(v54 + 8) = xmmword_1D1E774F0;
  *(v54 + 24) = 1;
  (*(v76 + 56))(v35, 0, 1, v3);
LABEL_15:
  v55 = v74;
  v56 = swift_allocObject();
  *(v56 + 16) = v73;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v57 = unk_1EC644BC0;
  v58 = qword_1EC644BC8;
  v59 = unk_1EC644BD0;
  v60 = qword_1EC644BD8;
  *(v56 + 32) = qword_1EC644BB8;
  *(v56 + 40) = v57;
  *(v56 + 48) = v58;
  *(v56 + 56) = v59;
  *(v56 + 64) = v60;

  v61 = sub_1D1828A0C(v56, 1, 1, 0, v75);

  static ClimateSummarizer._airQualityGaugeData(from:)(v61, v55 + 2 * v27);

  v62 = (v76 + 48);
  v63 = MEMORY[0x1E69E7CC0];
  v64 = 3;
  v65 = v55;
  v75 = v3;
  do
  {
    v66 = v77;
    sub_1D1741C08(v65, v77, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A90(v66, v10, &qword_1EC644C58, &unk_1D1E77530);
    if ((*v62)(v10, 1, v3) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC644C58, &unk_1D1E77530);
    }

    else
    {
      sub_1D1B61510(v10, v78, type metadata accessor for IconTextValueStringDataHolder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1D177F6FC(0, v63[2] + 1, 1, v63);
      }

      v68 = v63[2];
      v67 = v63[3];
      if (v68 >= v67 >> 1)
      {
        v63 = sub_1D177F6FC(v67 > 1, v68 + 1, 1, v63);
      }

      v63[2] = v68 + 1;
      sub_1D1B61510(v78, v63 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v68, type metadata accessor for IconTextValueStringDataHolder);
      v3 = v75;
    }

    v65 += v27;
    --v64;
  }

  while (v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v63;
}

uint64_t sub_1D1B5DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticAccessory(0);
    v20 = *(v19 - 8);
    sub_1D1B615D8(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticAccessory);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticAccessory(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0CF04(v8, v12);
}

uint64_t sub_1D1B5E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticService(0);
    v20 = *(v19 - 8);
    sub_1D1B615D8(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticService);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticService(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0D124(v8, v12);
}

uint64_t UmbrellaCategoryInformation.climateStatusActivatedStaticAccessories(stateSnapshot:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v162 = &v135 - v5;
  v146 = type metadata accessor for IconTextValueStringDataHolder();
  v144 = *(v146 - 8);
  v6 = *(v144 + 64);
  v7 = MEMORY[0x1EEE9AC00](v146);
  v145 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v135 - v9;
  v170 = type metadata accessor for StaticService(0);
  v10 = *(v170 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v170);
  v158 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v135 = &v135 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v169 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v160 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v135 - v21;
  v23 = sub_1D1E66A7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v143 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v153 = (&v135 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v155 = (&v135 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v164 = &v135 - v36;
  v37 = type metadata accessor for StaticAccessory(0);
  v168 = *(v37 - 8);
  v38 = *(v168 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v151 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v136 = &v135 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v167 = &v135 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v163 = &v135 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v157 = (&v135 - v47);
  v48 = *(v1 + 16);
  v172 = a1;
  v49 = 0;
  v50 = sub_1D1788F9C(sub_1D1B61994, v171, v48);
  v138 = 0;
  v51 = v50[2];
  v156 = v10;
  v159 = v23;
  v154 = v33;
  v161 = v37;
  v152 = v51;
  v137 = v24;
  if (v51)
  {
    v52 = 0;
    v149 = (v24 + 48);
    v141 = (v24 + 32);
    v140 = (v24 + 8);
    v148 = (v10 + 56);
    v53 = MEMORY[0x1E69E7CC0];
    v147 = (v10 + 48);
    v54 = v153;
    v55 = v157;
    v142 = v22;
    v150 = v50;
    while (1)
    {
      if (v52 >= v50[2])
      {
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

        sub_1D1B61578(v23, type metadata accessor for StaticService);

        __break(1u);
        goto LABEL_121;
      }

      v166 = ((*(v168 + 80) + 32) & ~*(v168 + 80));
      v165 = *(v168 + 72);
      sub_1D1B615D8(&v166[v50 + v165 * v52], v55, type metadata accessor for StaticAccessory);
      sub_1D1741C08(v55 + *(v37 + 88), v22, &qword_1EC642590, qword_1D1E71260);
      if ((*v149)(v22, 1, v23) == 1)
      {
        sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        (*v141)(v54, v22, v23);
        v56 = *(v55 + *(v37 + 80));
        if (*(v56 + 16))
        {
          v57 = sub_1D1742188(v54);
          if (v58)
          {
            sub_1D1B615D8(*(v56 + 56) + *(v156 + 72) * v57, v155, type metadata accessor for StaticService);
            (*v140)(v54, v23);
            v59 = 0;
            goto LABEL_14;
          }
        }

        (*v140)(v54, v23);
      }

      v59 = 1;
LABEL_14:
      v60 = v155;
      v61 = v170;
      (*v148)(v155, v59, 1, v170);
      v62 = v60;
      v63 = v164;
      sub_1D1741A90(v62, v164, &qword_1EC6436F0, &qword_1D1E99BC0);
      if ((*v147)(v63, 1, v61) == 1)
      {
        sub_1D1741A30(v63, &qword_1EC6436F0, &qword_1D1E99BC0);
        v49 = v160;
      }

      else
      {
        if (qword_1EE07AB30 != -1)
        {
          swift_once();
        }

        v64 = off_1EE07AB38;
        if (*(off_1EE07AB38 + 2))
        {
          v65 = v164[*(v170 + 104)];
          v66 = *(off_1EE07AB38 + 5);
          sub_1D1E6920C();
          v173 = v65;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v67 = sub_1D1E6926C();
          v68 = -1 << v64[32];
          v69 = v67 & ~v68;
          if ((*&v64[((v69 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v69))
          {
            v70 = ~v68;
            while (1)
            {
              LOBYTE(v174[0]) = *(*(v64 + 6) + v69);
              v173 = v65;
              v71 = ServiceKind.rawValue.getter();
              v73 = v72;
              if (v71 == ServiceKind.rawValue.getter() && v73 == v74)
              {
                break;
              }

              v76 = sub_1D1E6904C();

              if (v76)
              {
                goto LABEL_4;
              }

              v69 = (v69 + 1) & v70;
              if (((*&v64[((v69 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v69) & 1) == 0)
              {
                goto LABEL_27;
              }
            }

LABEL_4:
            sub_1D1B61578(v164, type metadata accessor for StaticService);
            v55 = v157;
            sub_1D1B61578(v157, type metadata accessor for StaticAccessory);
            v49 = v160;
            v23 = v159;
            v33 = v154;
            v37 = v161;
            v22 = v142;
            goto LABEL_5;
          }
        }

LABEL_27:
        sub_1D1B61578(v164, type metadata accessor for StaticService);
        v49 = v160;
        v33 = v154;
        v37 = v161;
        v22 = v142;
      }

      v55 = v157;
      sub_1D1B61510(v157, v163, type metadata accessor for StaticAccessory);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v175 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CEB8(0, *(v53 + 16) + 1, 1);
        v55 = v157;
        v53 = v175;
      }

      v79 = *(v53 + 16);
      v78 = *(v53 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D178CEB8(v78 > 1, v79 + 1, 1);
        v55 = v157;
        v53 = v175;
      }

      *(v53 + 16) = v79 + 1;
      sub_1D1B61510(v163, &v166[v53 + v79 * v165], type metadata accessor for StaticAccessory);
      v23 = v159;
LABEL_5:
      ++v52;
      v54 = v153;
      v50 = v150;
      if (v52 == v152)
      {
        goto LABEL_34;
      }
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
  v49 = v160;
LABEL_34:

  v80 = MEMORY[0x1E69E7CC0];
  v164 = *(v53 + 16);
  if (v164)
  {
    v81 = 0;
    v163 = (v137 + 48);
    v155 = (v137 + 32);
    v153 = (v137 + 8);
    v157 = (v156 + 56);
    v152 = (v156 + 48);
    do
    {
      if (v81 >= *(v53 + 16))
      {
        goto LABEL_115;
      }

      v82 = v167;
      v166 = ((*(v168 + 80) + 32) & ~*(v168 + 80));
      v165 = *(v168 + 72);
      sub_1D1B615D8(&v166[v53 + v165 * v81], v167, type metadata accessor for StaticAccessory);
      v83 = v161;
      sub_1D1741C08(&v82[*(v161 + 22)], v49, &qword_1EC642590, qword_1D1E71260);
      if ((*v163)(v49, 1, v23) == 1)
      {
        sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
        (*v157)(v33, 1, 1, v170);
        goto LABEL_47;
      }

      v84 = v143;
      (*v155)(v143, v49, v23);
      v85 = *&v82[*(v83 + 20)];
      if (*(v85 + 16))
      {

        v86 = sub_1D1742188(v84);
        if (v87)
        {
          sub_1D1B615D8(*(v85 + 56) + *(v156 + 72) * v86, v154, type metadata accessor for StaticService);
          (*v153)(v84, v23);

          v88 = 0;
          goto LABEL_46;
        }
      }

      (*v153)(v84, v23);
      v88 = 1;
LABEL_46:
      v33 = v154;
      v89 = v170;
      (*v157)(v154, v88, 1, v170);
      if ((*v152)(v33, 1, v89) != 1)
      {
        v91 = v33[*(v170 + 104)];
        sub_1D1B61578(v33, type metadata accessor for StaticService);
        v90 = v91;
        goto LABEL_49;
      }

LABEL_47:
      sub_1D1741A30(v33, &qword_1EC6436F0, &qword_1D1E99BC0);
      v90 = 53;
LABEL_49:
      if (sub_1D17C5508(v90, &unk_1F4D65E18))
      {
        sub_1D1B61578(v167, type metadata accessor for StaticAccessory);
      }

      else
      {
        sub_1D1B61510(v167, v151, type metadata accessor for StaticAccessory);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v174[0] = v80;
        if ((v92 & 1) == 0)
        {
          sub_1D178CEB8(0, *(v80 + 2) + 1, 1);
          v80 = v174[0];
        }

        v94 = *(v80 + 2);
        v93 = *(v80 + 3);
        if (v94 >= v93 >> 1)
        {
          sub_1D178CEB8(v93 > 1, v94 + 1, 1);
          v80 = v174[0];
        }

        *(v80 + 2) = v94 + 1;
        sub_1D1B61510(v151, &v166[v80 + v94 * v165], type metadata accessor for StaticAccessory);
        v49 = v160;
        v23 = v159;
      }

      ++v81;
    }

    while (v164 != v81);
  }

  v174[0] = MEMORY[0x1E69E7CC0];
  v95 = *(v80 + 2);
  if (v95)
  {
    v23 = *(v161 + 21);
    v96 = &v80[(*(v168 + 80) + 32) & ~*(v168 + 80)];
    v97 = *(v168 + 72);
    v49 = v138;
    v98 = v136;
    do
    {
      v99 = sub_1D1B615D8(v96, v98, type metadata accessor for StaticAccessory);
      v100 = *(v98 + v23);
      MEMORY[0x1EEE9AC00](v99);
      *(&v135 - 2) = v98;
      v102 = sub_1D17868B8(sub_1D1823318, (&v135 - 4), v101);
      sub_1D1B61578(v98, type metadata accessor for StaticAccessory);
      sub_1D17A54D8(v102);
      v96 += v97;
      --v95;
    }

    while (v95);
  }

  else
  {

    v49 = v138;
  }

  v138 = v49;
  v103 = v174[0];
  v104 = v162;
  v168 = *(v174[0] + 2);
  if (v168)
  {
    v105 = 0;
    v167 = "00-8000-0026BB765291";
    v106 = MEMORY[0x1E69E7CC0];
    v165 = "73-8FBD-0E8978A33403";
    v166 = "17-A590-755E1AAC02AE";
    v164 = "60-AD68-D91053B75F44";
    v163 = "7E-BE63-1D00B1500545";
    v161 = "73-A058-C5E64BC487B2";
    v160 = "CE-986D-63B28F62C9E3";
    while (1)
    {
      if (v105 >= *(v103 + 2))
      {
        goto LABEL_116;
      }

      v107 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v23 = *(v156 + 72);
      v108 = v169;
      sub_1D1B615D8(&v103[v107 + v23 * v105], v169, type metadata accessor for StaticService);
      v109 = *(v108 + *(v170 + 112));
      if (v109 == 53)
      {
        LOBYTE(v109) = *(v169 + *(v170 + 104));
      }

      ++v105;
      LOBYTE(v175) = v109;
      ServiceKind.umbrellaCategory.getter(&v173);
      v110 = v166;
      if (v173 != 6)
      {
        v110 = v165;
      }

      v111 = v164;
      if (v173 != 4)
      {
        v111 = v163;
      }

      if (v173 <= 5u)
      {
        v110 = v111;
      }

      v112 = v161;
      if (v173 != 2)
      {
        v112 = v160;
      }

      v113 = v167;
      if (v173)
      {
        v113 = "13-AA62-01754F256DD5";
      }

      if (v173 <= 1u)
      {
        v112 = v113;
      }

      v114 = v173 <= 3u ? v112 : v110;
      if ((v114 | 0x8000000000000000) == 0x80000001D1EB36A0)
      {
        break;
      }

      v115 = sub_1D1E6904C();

      if (v115)
      {
        goto LABEL_85;
      }

      sub_1D1B61578(v169, type metadata accessor for StaticService);
LABEL_63:
      v104 = v162;
      if (v168 == v105)
      {
        goto LABEL_91;
      }
    }

LABEL_85:
    sub_1D1B61510(v169, v158, type metadata accessor for StaticService);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v174[0] = v106;
    if ((v116 & 1) == 0)
    {
      sub_1D17915E0(0, *(v106 + 2) + 1, 1);
      v106 = v174[0];
    }

    v49 = *(v106 + 2);
    v117 = *(v106 + 3);
    if (v49 >= v117 >> 1)
    {
      sub_1D17915E0(v117 > 1, v49 + 1, 1);
      v106 = v174[0];
    }

    *(v106 + 2) = v49 + 1;
    sub_1D1B61510(v158, &v106[v107 + v49 * v23], type metadata accessor for StaticService);
    goto LABEL_63;
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_91:

  v174[0] = MEMORY[0x1E69E7CC8];
  v118 = *(v106 + 2);
  v49 = v138;
  if (v118)
  {
    v119 = 0;
    v120 = v156;
    v23 = v135;
    while (v119 < *(v106 + 2))
    {
      sub_1D1B615D8(&v106[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119], v23, type metadata accessor for StaticService);
      sub_1D1B5FBAC(v174, v23);
      if (v49)
      {
        goto LABEL_120;
      }

      ++v119;
      sub_1D1B61578(v23, type metadata accessor for StaticService);
      if (v118 == v119)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_117;
  }

LABEL_96:

  v121 = v174[0];
  v122 = *(v174[0] + 2);
  if (v122)
  {
    v123 = sub_1D180446C(*(v174[0] + 2), 0);
    v124 = sub_1D1805BB4(v174, v123 + 32, v122, v121);
    v23 = v174[1];
    swift_bridgeObjectRetain_n();
    sub_1D1716918();
    if (v124 != v122)
    {
      goto LABEL_119;
    }

    v104 = v162;
  }

  else
  {

    v123 = MEMORY[0x1E69E7CC0];
  }

  v174[0] = v123;
  sub_1D1B60900(v174);
  if (v49)
  {
LABEL_121:

    __break(1u);
  }

  else
  {

    v125 = v174[0];
    v126 = *(v174[0] + 2);
    if (v126)
    {
      v127 = 0;
      v128 = (v144 + 48);
      v129 = MEMORY[0x1E69E7CC0];
      while (v127 < *(v125 + 2))
      {
        LOBYTE(v174[0]) = v125[v127 + 32];
        sub_1D1B60088(v174, v121, v104);
        if ((*v128)(v104, 1, v146) == 1)
        {
          sub_1D1741A30(v104, &qword_1EC644C58, &unk_1D1E77530);
        }

        else
        {
          v130 = v104;
          v131 = v139;
          sub_1D1B61510(v130, v139, type metadata accessor for IconTextValueStringDataHolder);
          sub_1D1B61510(v131, v145, type metadata accessor for IconTextValueStringDataHolder);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_1D177F6FC(0, v129[2] + 1, 1, v129);
          }

          v133 = v129[2];
          v132 = v129[3];
          v23 = v133 + 1;
          if (v133 >= v132 >> 1)
          {
            v129 = sub_1D177F6FC(v132 > 1, v133 + 1, 1, v129);
          }

          v129[2] = v23;
          sub_1D1B61510(v145, v129 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v133, type metadata accessor for IconTextValueStringDataHolder);
          v104 = v162;
        }

        if (v126 == ++v127)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_118;
    }

    v129 = MEMORY[0x1E69E7CC0];
LABEL_113:

    return v129;
  }

  return result;
}

uint64_t sub_1D1B5FA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v5 + 16) && (v6 = sub_1D1742188(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticAccessory(0);
    v11 = *(v10 - 8);
    sub_1D1B615D8(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticAccessory);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticAccessory(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1B5FBAC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v51 - v11;
  result = StaticService.isActivated.getter();
  if (result)
  {
    v51[0] = v6;
    v51[1] = v2;
    v14 = *(v5 + 112);
    v15 = *(a2 + v14);
    if (v15 == 53)
    {
      LOBYTE(v15) = *(a2 + *(v5 + 104));
    }

    v16 = 0xD000000000000024;
    LOBYTE(v52) = v15;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2FB0 == v17)
    {
      goto LABEL_6;
    }

    v18 = sub_1D1E6904C();

    if (v18)
    {
      goto LABEL_8;
    }

    v35 = *(a2 + v14);
    if (v35 == 53)
    {
      LOBYTE(v35) = *(a2 + *(v5 + 104));
    }

    LOBYTE(v52) = v35;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB35B0 == v36)
    {
LABEL_6:

LABEL_8:
      sub_1D1B615D8(a2, v12, type metadata accessor for StaticService);
      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *a1;
      v21 = v52;
      v23 = sub_1D171E1AC(16);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        __break(1u);
LABEL_41:
        v21 = sub_1D177D048(0, v21[2] + 1, 1, v21);
        *(v16 + 8 * v23) = v21;
LABEL_17:
        v32 = v21[2];
        v31 = v21[3];
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v21 = sub_1D177D048(v31 > 1, v32 + 1, 1, v21);
          *(v16 + 8 * v23) = v21;
        }

LABEL_19:
        v34 = v51[0];
        v21[2] = v33;
        return sub_1D1B61510(v12, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, type metadata accessor for StaticService);
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *a1 = v21;
          if (v22)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1D173CFF4();
          v21 = v52;
          *a1 = v52;
          if (v27)
          {
LABEL_16:
            v16 = v21[7];
            v21 = *(v16 + 8 * v23);
            v30 = swift_isUniquelyReferenced_nonNull_native();
            *(v16 + 8 * v23) = v21;
            if (v30)
            {
              goto LABEL_17;
            }

            goto LABEL_41;
          }
        }

LABEL_15:
        sub_1D19DD7E4(v23, 16, MEMORY[0x1E69E7CC0], v21);
        goto LABEL_16;
      }

      sub_1D172FBBC(v26, isUniquelyReferenced_nonNull_native);
      v21 = v52;
      v28 = sub_1D171E1AC(16);
      if ((v27 & 1) == (v29 & 1))
      {
        v23 = v28;
        *a1 = v21;
        if (v27)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_48:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }

    v37 = sub_1D1E6904C();

    if (v37)
    {
      goto LABEL_8;
    }

    v38 = *(a2 + v14);
    if (v38 == 53)
    {
      v38 = *(a2 + *(v5 + 104));
    }

    sub_1D1B615D8(a2, v10, type metadata accessor for StaticService);
    v39 = *a1;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a1;
    v21 = v52;
    v42 = sub_1D171E1AC(v38);
    v43 = v21[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
      goto LABEL_45;
    }

    v46 = v41;
    if (v21[3] >= v45)
    {
      if (v40)
      {
        *a1 = v21;
        if (v41)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1D173CFF4();
        v21 = v52;
        *a1 = v52;
        if (v46)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_1D172FBBC(v45, v40);
      v21 = v52;
      v47 = sub_1D171E1AC(v38);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_48;
      }

      v42 = v47;
      *a1 = v21;
      if (v46)
      {
LABEL_36:
        v16 = v21[7];
        v21 = *(v16 + 8 * v42);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 8 * v42) = v21;
        if (v49)
        {
LABEL_37:
          v32 = v21[2];
          v50 = v21[3];
          v33 = v32 + 1;
          if (v32 >= v50 >> 1)
          {
            v21 = sub_1D177D048(v50 > 1, v32 + 1, 1, v21);
            *(v16 + 8 * v42) = v21;
          }

          v12 = v10;
          goto LABEL_19;
        }

LABEL_45:
        v21 = sub_1D177D048(0, v21[2] + 1, 1, v21);
        *(v16 + 8 * v42) = v21;
        goto LABEL_37;
      }
    }

    sub_1D19DD7E4(v42, v38, MEMORY[0x1E69E7CC0], v21);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1D1B60088@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = sub_1D1E66A7C();
  v6 = *(v88 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v72 - v10;
  v11 = type metadata accessor for IconTextValueStringDataHolder();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v72 - v19;
  v20 = type metadata accessor for StaticService(0);
  v91 = *(v20 - 8);
  v21 = *(v91 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v72 - v25;
  if (!*(a2 + 16))
  {
    return (*(v12 + 56))(a3, 1, 1, v11);
  }

  v26 = sub_1D171E1AC(*a1);
  if ((v27 & 1) == 0)
  {
    return (*(v12 + 56))(a3, 1, 1, v11);
  }

  v28 = *(*(a2 + 56) + 8 * v26);
  if (!*(v28 + 16))
  {
    return (*(v12 + 56))(a3, 1, 1, v11);
  }

  v92 = v6;
  v29 = v28 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v30 = v89;
  sub_1D1B615D8(v29, v89, type metadata accessor for StaticService);
  v90 = *(v20 + 104);
  v95[1] = *(v30 + v90);

  v31 = ServiceKind.serviceStatusCountString.getter();
  if (!v32)
  {
    sub_1D1B61578(v30, type metadata accessor for StaticService);

    return (*(v12 + 56))(a3, 1, 1, v11);
  }

  v33 = v32;
  v34 = v31;
  (*(v92 + 56))(v87, 1, 1, v88);
  LOBYTE(v93) = *(v30 + v90);
  v95[0] = 5;
  Icon.init(serviceKind:serviceSubKind:)(&v94, &v93, v95);
  countAndFlagsBits = v94.accessoryControlOnStateIconInfo.name._countAndFlagsBits;
  object = v94.accessoryControlOnStateIconInfo.name._object;

  sub_1D18A98A0(&v94);
  v78 = v28;
  v35 = *(v28 + 16);
  if (v35 == 1)
  {

    v36 = v90;
    LOBYTE(v93) = *(v89 + v90);
    v77 = ServiceKind.localizedDescription.getter();
    v76 = v37;
    v38 = v36;
  }

  else
  {
    static String.hfLocalized(_:)(v34, v33);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E6530];
    *(v40 + 16) = xmmword_1D1E739C0;
    v42 = MEMORY[0x1E69E65A8];
    *(v40 + 56) = v41;
    *(v40 + 64) = v42;
    *(v40 + 32) = v35;
    v77 = sub_1D1E6784C();
    v76 = v43;

    v38 = v90;
  }

  v44 = *(v89 + v38);
  v45 = v86;
  if (v44 == 48)
  {
    v46 = StaticService.ventilationFanSimple.getter();
  }

  else if (v44 == 16)
  {
    v46 = StaticService.fanStringSimple.getter();
  }

  else
  {
    LOBYTE(v93) = 1;
    v95[0] = 0;
    v48 = StaticService.characteristicStateString(context:temperatureScale:)(&v93, v95);
    v47 = v48.value._object;
    v46 = v48.value._countAndFlagsBits;
  }

  v75 = v46;
  v74 = v47;
  v81 = v12;
  v82 = a3;
  if (v35)
  {
    v73 = v11;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v35, 0);
    v49 = *(v91 + 72);
    v50 = v93;
    v51 = (v92 + 16);
    v90 = v92 + 32;
    v91 = v49;
    v52 = v88;
    v53 = v83;
    do
    {
      sub_1D1B615D8(v29, v24, type metadata accessor for StaticService);
      (*v51)(v53, v24, v52);
      sub_1D1B61578(v24, type metadata accessor for StaticService);
      v93 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D178CEFC(v54 > 1, v55 + 1, 1);
        v50 = v93;
      }

      *(v50 + 16) = v55 + 1;
      (*(v92 + 32))(v50 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v55, v53, v52);
      v29 += v91;
      --v35;
    }

    while (v35);

    v11 = v73;
    v45 = v86;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v56 = v87;
  sub_1D1741C08(v87, v45, &qword_1EC642590, qword_1D1E71260);
  v57 = v92;
  v58 = *(v92 + 48);
  v59 = v88;
  v60 = v58(v45, 1, v88);
  v61 = v84;
  if (v60 == 1)
  {
    sub_1D1E66A6C();
    sub_1D1741A30(v56, &qword_1EC642590, qword_1D1E71260);
    sub_1D1B61578(v89, type metadata accessor for StaticService);
    if (v58(v45, 1, v59) != 1)
    {
      sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v56, &qword_1EC642590, qword_1D1E71260);
    sub_1D1B61578(v89, type metadata accessor for StaticService);
    (*(v57 + 32))(v61, v45, v59);
  }

  v62 = v85;
  (*(v57 + 32))(v85, v61, v59);
  v63 = &v62[v11[5]];
  v64 = object;
  *v63 = countAndFlagsBits;
  v63[1] = v64;
  v65 = &v62[v11[6]];
  v66 = v76;
  *v65 = v77;
  v65[1] = v66;
  v67 = &v62[v11[7]];
  v68 = v74;
  *v67 = v75;
  v67[1] = v68;
  v69 = &v62[v11[8]];
  *(v69 + 1) = 0;
  *(v69 + 2) = 0;
  *v69 = v50;
  v69[24] = 2;
  v70 = v62;
  v71 = v82;
  sub_1D1B61510(v70, v82, type metadata accessor for IconTextValueStringDataHolder);
  return (*(v81 + 56))(v71, 0, 1, v11);
}

uint64_t sub_1D1B60900(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D1B6096C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1B6096C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1B60B54(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1B60A64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1B60A64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_5:
    result = *(v5 + v4);
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = sub_1D18E44D0(result, &unk_1F4D65DF0);
      v13 = (v12 & 1) != 0 ? 0 : v11;
      result = sub_1D18E44D0(v10, &unk_1F4D65DF0);
      if (v14)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= result)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      result = *v9;
      *v9 = *(v9 - 1);
      *--v9 = result;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++v4;
        ++v6;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B60B54(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v90 = v6;
      v91 = *(v9 + 2);
      if (v91 >= 2)
      {
        while (*a3)
        {
          v6 = *&v9[16 * v91];
          v92 = *&v9[16 * v91 + 24];
          sub_1D1B611CC((*a3 + v6), (*a3 + *&v9[16 * v91 + 16]), *a3 + v92, v5);
          if (v90)
          {
          }

          if (v92 < v6)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D1E0BE44(v9);
          }

          if (v91 - 2 >= *(v9 + 2))
          {
            goto LABEL_137;
          }

          v93 = &v9[16 * v91];
          *v93 = v6;
          *(v93 + 1) = v92;
          result = sub_1D1E0BDB8(v91 - 1);
          v91 = *(v9 + 2);
          if (v91 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_1D1E0BE44(v9);
    v9 = result;
    goto LABEL_112;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v5 = *a3;
      v12 = *(*a3 + v8);
      v13 = sub_1D18E44D0(*(*a3 + v11), &unk_1F4D65DF0);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      v100 = v15;
      result = sub_1D18E44D0(v12, &unk_1F4D65DF0);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = result;
      }

      v18 = v8 + 2;
      if (v8 + 2 < v7)
      {
        v95 = v8;
        do
        {
          v19 = v18;
          v20 = &v5[v18];
          v21 = *(v20 - 1);
          v22 = sub_1D18E44D0(*v20, &unk_1F4D65DF0);
          if (v23)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          result = sub_1D18E44D0(v21, &unk_1F4D65DF0);
          if (v25)
          {
            if (v100 < v17 == v24 >= 0)
            {
              goto LABEL_20;
            }
          }

          else if (v100 < v17 == v24 >= result)
          {
LABEL_20:
            v18 = v19;
            goto LABEL_22;
          }

          v18 = v19 + 1;
        }

        while (v7 != v19 + 1);
        v18 = v7;
LABEL_22:
        v10 = v95;
      }

      if (v100 >= v17)
      {
        goto LABEL_33;
      }

      if (v18 < v10)
      {
        goto LABEL_140;
      }

      if (v10 >= v18)
      {
LABEL_33:
        v11 = v18;
      }

      else
      {
        v11 = v18;
        v26 = v18 - 1;
        v27 = v10;
        do
        {
          if (v27 != v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v28 = v30[v27];
            v30[v27] = v30[v26];
            v30[v26] = v28;
          }
        }

        while (++v27 < v26--);
      }
    }

    v31 = a3[1];
    v8 = v11;
    if (v11 >= v31)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_139;
    }

    if (v11 - v10 >= a4)
    {
LABEL_42:
      v8 = v11;
LABEL_43:
      if (v8 < v10)
      {
        goto LABEL_138;
      }

      goto LABEL_44;
    }

    v32 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_141;
    }

    if (v32 >= v31)
    {
      v32 = a3[1];
    }

    if (v32 < v10)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v11 == v32)
    {
      goto LABEL_42;
    }

    v94 = v6;
    v96 = v10;
    v5 = *a3;
    v79 = (*a3 + v11);
    v80 = v10 - v11;
    v99 = v32;
LABEL_95:
    v101 = v11;
    v81 = v5[v11];
    v82 = v80;
    v83 = v79;
LABEL_96:
    v84 = *(v83 - 1);
    v85 = sub_1D18E44D0(v81, &unk_1F4D65DF0);
    v87 = (v86 & 1) != 0 ? 0 : v85;
    result = sub_1D18E44D0(v84, &unk_1F4D65DF0);
    if (v88)
    {
      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (v87 >= result)
    {
      goto LABEL_94;
    }

    if (!v5)
    {
      break;
    }

    v81 = *v83;
    *v83 = *(v83 - 1);
    *--v83 = v81;
    if (!__CFADD__(v82++, 1))
    {
      goto LABEL_96;
    }

LABEL_94:
    v11 = v101 + 1;
    ++v79;
    --v80;
    if (v101 + 1 != v99)
    {
      goto LABEL_95;
    }

    v8 = v99;
    v6 = v94;
    v10 = v96;
    if (v99 < v96)
    {
      goto LABEL_138;
    }

LABEL_44:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1D177D070((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v98;
    if (!*v98)
    {
      goto LABEL_148;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_63:
          if (v42)
          {
            goto LABEL_127;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_130;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_134;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_77:
        if (v60)
        {
          goto LABEL_129;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_132;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_84:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = *&v9[16 * v76 + 32];
        v77 = *&v9[16 * v38 + 40];
        sub_1D1B611CC(&v5[*a3], (*a3 + *&v9[16 * v38 + 32]), *a3 + v77, v37);
        if (v6)
        {
        }

        if (v77 < v5)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_124;
        }

        v78 = &v9[16 * v76];
        *(v78 + 4) = v5;
        *(v78 + 5) = v77;
        result = sub_1D1E0BDB8(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_125;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_126;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_128;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_131;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_135;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_110;
    }
  }

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
  return result;
}

uint64_t sub_1D1B611CC(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v33 = v4;
LABEL_30:
      v20 = v6 - 1;
      --v5;
      v21 = v10;
      v22 = v10;
      do
      {
        v23 = *--v22;
        v24 = v20;
        v25 = *v20;
        v26 = sub_1D18E44D0(v23, &unk_1F4D65DF0);
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = sub_1D18E44D0(v25, &unk_1F4D65DF0);
        if (v30)
        {
          if (v28 < 0)
          {
            goto LABEL_43;
          }
        }

        else if (v28 < v29)
        {
LABEL_43:
          v31 = v24;
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v24;
          }

          v4 = v33;
          v10 = v21;
          if (v21 <= v33 || (v6 = v31, v31 <= v7))
          {
            v6 = v31;
            goto LABEL_50;
          }

          goto LABEL_30;
        }

        v20 = v24;
        if ((v5 + 1) < v21 || v5 >= v21)
        {
          *v5 = *v22;
        }

        --v5;
        v21 = v22;
        v4 = v33;
      }

      while (v22 > v33);
      v10 = v22;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = sub_1D18E44D0(*v6, &unk_1F4D65DF0);
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        v15 = sub_1D18E44D0(v11, &unk_1F4D65DF0);
        if (v16)
        {
          if (v14 < 0)
          {
            goto LABEL_16;
          }
        }

        else if (v14 < v15)
        {
LABEL_16:
          v19 = v6 + 1;
          v18 = v6;
          if (v7 >= v6 && v7 < v19)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v17 = v4 + 1;
        v18 = v4;
        v19 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v17)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        *v7 = *v18;
LABEL_21:
        ++v7;
        if (v4 < v10)
        {
          v6 = v19;
          if (v19 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_50:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1D1B61488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B61510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B61578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B615D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B61640(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3670 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1B6175C(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2F50 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1B61878(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  LOBYTE(v12) = *(a1 + *(v2 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3640 == v3)
  {
  }

  else
  {
    v4 = sub_1D1E6904C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v12 = *(a1 + *(v2 + 128));
  v6 = v12;
  v11 = 40;
  v13 = StaticCharacteristicsBag.int(for:)(&v11);
  value = v13.value;
  is_nil = v13.is_nil;
  v12 = v6;
  v11 = -98;
  v14 = StaticCharacteristicsBag.int(for:)(&v11);
  v9 = (value == v14.value) & ~v14.is_nil;
  if (is_nil)
  {
    v9 = v14.is_nil;
  }

  v5 = v9 ^ 1;
  return v5 & 1;
}

uint64_t UmbrellaCategoryInformation.lightStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B878, &qword_1D1E9AD78);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B880, &qword_1D1E9AD80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B888, &qword_1D1E9AD88);
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B790, &qword_1D1E9AC90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B890, &qword_1D1E9AD90);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v58 - v29;
  v31 = type metadata accessor for LightsStatusItem(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B898, &qword_1D1E9AD98);
  v36 = *(*(v65 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v65);
  v66 = &v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v58 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v58 - v42;
  v44 = *(v3 + 24);
  v45 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v73 = v64;
  v46 = sub_1D190104C(v45, sub_1D1B670BC, v72, v44);

  sub_1D1B3AE7C(v47, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1D1741A30(v30, &qword_1EC64B890, &qword_1D1E9AD90);
    sub_1D1B3B878(v46, v14);
    v48 = v61;
    sub_1D1741C08(v14, v61, &qword_1EC64B880, &qword_1D1E9AD80);
    v49 = v60;
    sub_1D1741C08(v48, v60, &qword_1EC64B880, &qword_1D1E9AD80);
    v50 = v49;
    v51 = v63;
    sub_1D1741A90(v50, v63, &qword_1EC64B880, &qword_1D1E9AD80);
    sub_1D1741A30(v14, &qword_1EC64B880, &qword_1D1E9AD80);
    sub_1D1741A30(v48, &qword_1EC64B880, &qword_1D1E9AD80);
    (*(v67 + 56))(v43, 1, 1, v68);
    v52 = *(v65 + 52);
    sub_1D1741A90(v51, &v43[v52], &qword_1EC64B878, &qword_1D1E9AD78);
    (*(v69 + 56))(&v43[v52], 0, 1, v70);
  }

  else
  {

    sub_1D1B670D8(v30, v35, type metadata accessor for LightsStatusItem);
    sub_1D1B67588(v35, v26, type metadata accessor for LightsStatusItem);
    (*(v32 + 56))(v26, 0, 1, v31);
    sub_1D1741C08(v26, v24, &qword_1EC64B790, &qword_1D1E9AC90);
    v53 = v59;
    sub_1D1741C08(v24, v59, &qword_1EC64B790, &qword_1D1E9AC90);
    v54 = v53;
    v55 = v62;
    sub_1D1741A90(v54, v62, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1741A30(v26, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1B67528(v35, type metadata accessor for LightsStatusItem);
    sub_1D1741A30(v24, &qword_1EC64B790, &qword_1D1E9AC90);
    sub_1D1741A90(v55, v43, &qword_1EC64B888, &qword_1D1E9AD88);
    (*(v67 + 56))(v43, 0, 1, v68);
    (*(v69 + 56))(&v43[*(v65 + 52)], 1, 1, v70);
  }

  sub_1D1741C08(v43, v41, &qword_1EC64B898, &qword_1D1E9AD98);
  v56 = v66;
  sub_1D1741C08(v41, v66, &qword_1EC64B898, &qword_1D1E9AD98);
  sub_1D1741A90(v56, v71, &qword_1EC64B898, &qword_1D1E9AD98);
  sub_1D1741A30(v43, &qword_1EC64B898, &qword_1D1E9AD98);
  return sub_1D1741A30(v41, &qword_1EC64B898, &qword_1D1E9AD98);
}

uint64_t UmbrellaCategoryInformation.lightContextMenuLabelsAndActions(stateSnapshot:)(uint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for StateSnapshot(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[3];
  v49 = v1[2];
  v50 = v5;
  v6 = v1[5];
  v51 = v1[4];
  v52 = v6;
  v7 = v1[1];
  v47 = *v1;
  v48 = v7;
  v46 = MEMORY[0x1E69E7CC0];
  v8 = *(&v49 + 1);
  v9 = *(*(&v49 + 1) + 16);
  v10 = &dword_1D1E72F94[27];
  if (!v9)
  {
    v25 = *(&v50 + 1);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v43 = 0x66664F206E727554;
  v44 = 0xE900000000000020;
  v45 = v9;
  v12 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v13 = "erviceTypeCapitalizedPlural";
  if (v9 == 1)
  {
    v13 = "erviceTypeCapitalized";
    v14 = 0xD000000000000020;
  }

  else
  {
    v14 = 0xD000000000000026;
  }

  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String.hfLocalized(_:)(v14, v13 | 0x8000000000000000);
  MEMORY[0x1D3890F70](v15);

  v16 = v43;
  v17 = v44;
  v18 = v41;
  sub_1D1B67588(v42, v4, type metadata accessor for StateSnapshot);
  v19 = (*(v18 + 80) + 112) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v21 = v50;
  v20[3] = v49;
  v20[4] = v21;
  v22 = v52;
  v20[5] = v51;
  v20[6] = v22;
  v23 = v48;
  v20[1] = v47;
  v20[2] = v23;
  sub_1D1B670D8(v4, v20 + v19, type metadata accessor for StateSnapshot);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D1B671CC;
  *(v24 + 24) = v20;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  *(inited + 48) = sub_1D1B676E8;
  *(inited + 56) = v24;
  sub_1D1741914(&v47, &v43);
  sub_1D17A5504(inited);
  v25 = *(&v50 + 1);
  if (*(v8 + 16) <= *(*(&v50 + 1) + 16) >> 3)
  {
    v10 = &dword_1D1E72F94[27];
LABEL_10:
    v43 = v25;

    sub_1D1B646F8(v8);
    v27 = v43;
    v28 = *(v43 + 16);
    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v26 = *(&v50 + 1);

  v27 = sub_1D1B64B1C(v8, v26);
  v10 = dword_1D1E72F94 + 108;
  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_7:

    return v46;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
  v29 = swift_initStackObject();
  *(v29 + 16) = *(v10 + 156);
  v43 = 0x206E4F206E727554;
  v44 = 0xE800000000000000;
  v45 = v28;
  v30 = sub_1D1E68FAC();
  v40[1] = v3;
  MEMORY[0x1D3890F70](v30);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v31 = "erviceTypeCapitalizedPlural";
  if (v28 == 1)
  {
    v31 = "erviceTypeCapitalized";
    v32 = 0xD000000000000020;
  }

  else
  {
    v32 = 0xD000000000000026;
  }

  v33 = static String.hfLocalized(_:)(v32, v31 | 0x8000000000000000);
  MEMORY[0x1D3890F70](v33);

  v34 = v43;
  v35 = v44;
  sub_1D1B67588(v42, v4, type metadata accessor for StateSnapshot);
  v36 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  sub_1D1B670D8(v4, v37 + v36, type metadata accessor for StateSnapshot);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D1B67140;
  *(v38 + 24) = v37;
  *(v29 + 32) = v34;
  *(v29 + 40) = v35;
  *(v29 + 48) = sub_1D1B671A4;
  *(v29 + 56) = v38;
  sub_1D17A5504(v29);
  return v46;
}

uint64_t sub_1D1B62588(_OWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18[-v9];
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D1B67588(a2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for StateSnapshot);
  v12 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = a1[3];
  *(v13 + 64) = a1[2];
  *(v13 + 80) = v14;
  v15 = a1[5];
  *(v13 + 96) = a1[4];
  *(v13 + 112) = v15;
  v16 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 48) = v16;
  sub_1D1B670D8(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for StateSnapshot);
  sub_1D1741914(a1, v18);
  sub_1D17C6EF0(0, 0, v10, &unk_1D1E9ADB0, v13);
}

uint64_t sub_1D1B62778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B6279C, 0, 0);
}

uint64_t sub_1D1B6279C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 40);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AE793C;
  v6 = v0[2];
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v6, v7, v8, 0, 0, &unk_1D1E9ADC0, v3, v9);
}

uint64_t sub_1D1B62894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v4[19] = *(v8 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B62A10, 0, 0);
}

uint64_t sub_1D1B62A10()
{
  v45 = *(v0 + 96);
  v46 = *(v0 + 144);
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = *(v0 + 144) + 32;
  v44 = *(v0 + 80);

  v10 = 0;
  v42 = v8;
  v43 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 160);
    v49 = *(v0 + 168);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v53 = *(v0 + 120);
    v48 = v17;
    v52 = *(v0 + 104);
    v18 = *(v0 + 88);
    v19 = *(v44 + 48) + *(v46 + 72) * (__clz(__rbit64(v7)) | (v10 << 6));
    v47 = v15;
    (*(v46 + 16))();
    v51 = v16;
    sub_1D1E67E3C();
    v20 = sub_1D1E67E7C();
    v50 = *(v20 - 8);
    (*(v50 + 56))(v16, 0, 1, v20);
    sub_1D1B67588(v18, v17, type metadata accessor for StateSnapshot);
    v21 = *(v46 + 32);
    v21(v14, v49, v15);
    v22 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v23 = (v52 + *(v46 + 80) + v22) & ~*(v46 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = (v24 + 16);
    *(v24 + 24) = 0;
    sub_1D1B670D8(v48, v24 + v22, type metadata accessor for StateSnapshot);
    v21(v24 + v23, v14, v47);
    sub_1D1741C08(v51, v53, &unk_1EC6442C0, &qword_1D1E741A0);
    v26 = (*(v50 + 48))(v53, 1, v20);
    v27 = *(v0 + 120);
    if (v26 == 1)
    {
      sub_1D1741A30(*(v0 + 120), &unk_1EC6442C0, &qword_1D1E741A0);
      if (*v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D1E67E6C();
      (*(v50 + 8))(v27, v20);
      if (*v25)
      {
LABEL_13:
        v28 = *(v24 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_1D1E67D4C();
        v31 = v30;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v29 = 0;
    v31 = 0;
LABEL_16:
    v32 = **(v0 + 72);
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_1D1E9ADD0;
    *(v33 + 24) = v24;

    if (v31 | v29)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 128);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v32;
    swift_task_create();

    result = sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = v42;
    v3 = v43;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 160);
  v35 = *(v0 + 168);
  v37 = *(v0 + 120);
  v36 = *(v0 + 128);
  v38 = *(v0 + 112);
  v39 = *(v0 + 80);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1D1B62E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B62F7C, 0, 0);
}

uint64_t sub_1D1B62F7C()
{
  v1 = *(v0 + 160);
  v2 = type metadata accessor for StateSnapshot(0);
  v3 = *(v1 + *(v2 + 60));
  if (*(v3 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 168));
    v5 = *(v0 + 192);
    if (v6)
    {
      v7 = v4;
      v8 = *(v3 + 56);
      v9 = type metadata accessor for StaticService(0);
      v10 = *(v9 - 8);
      sub_1D1B67588(v8 + *(v10 + 72) * v7, v5, type metadata accessor for StaticService);
      (*(v10 + 56))(v5, 0, 1, v9);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v0 + 192);
  }

  v9 = type metadata accessor for StaticService(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
LABEL_6:
  v11 = *(v0 + 184);
  sub_1D1741C08(*(v0 + 192), v11, &qword_1EC6436F0, &qword_1D1E99BC0);
  type metadata accessor for StaticService(0);
  if ((*(*(v9 - 8) + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 176);
    sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v12, &qword_1EC6436F0, &qword_1D1E99BC0);
    (*(*(v2 - 8) + 56))(v13, 1, 1, v2);
    sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 112) = MEMORY[0x1E69E6530];
    *(v0 + 88) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 105;
    sub_1D1741970(v0 + 88, inited + 40);
    v20 = sub_1D18DAC64(inited);
    *(v0 + 200) = v20;
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
    *(v0 + 152) = 2;
    *(v0 + 120) = xmmword_1D1E88490;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    v21 = swift_task_alloc();
    *(v0 + 208) = v21;
    *v21 = v0;
    v21[1] = sub_1D1B6332C;
    v22 = *(v0 + 176);
    v23 = *(v0 + 184);

    return StaticService.set(for:options:context:)(v22, v20, (v0 + 152), (v0 + 120));
  }
}

uint64_t sub_1D1B6332C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v7 = *v0;

  sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));
  sub_1D1B67528(v4, type metadata accessor for StaticService);

  return MEMORY[0x1EEE6DFA0](sub_1D1B634B0, 0, 0);
}

uint64_t sub_1D1B634B0()
{
  sub_1D1741A30(v0[24], &qword_1EC6436F0, &qword_1D1E99BC0);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1B6353C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  sub_1D1E67E3C();
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_1D1B67588(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateSnapshot);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_1D1B670D8(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for StateSnapshot);

  sub_1D1B1DFC0(0, 0, v10, &unk_1D1E9ADE8, v13);

  return sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1B63738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B63880, 0, 0);
}

uint64_t sub_1D1B63880()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 32);
  *(v0 + 264) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 56);

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = *(v0 + 160);
LABEL_10:
      *(v0 + 232) = v5;
      *(v0 + 240) = v7;
      v11 = *(v0 + 216);
      v10 = *(v0 + 224);
      v13 = *(v0 + 200);
      v12 = *(v0 + 208);
      v14 = *(v0 + 168);
      (*(v12 + 16))(v10, *(v8 + 48) + *(v12 + 72) * (__clz(__rbit64(v5)) | (v7 << 6)), v13);
      v15 = type metadata accessor for StateSnapshot(0);
      v16 = *(v14 + *(v15 + 60));
      (*(v12 + 32))(v11, v10, v13);
      v17 = *(v0 + 216);
      if (*(v16 + 16))
      {
        v18 = sub_1D1742188(v17);
        v19 = *(v0 + 216);
        v20 = *(v0 + 192);
        v21 = *(v0 + 200);
        v22 = (*(v0 + 208) + 8);
        if (v23)
        {
          v24 = v18;
          v43 = *(v16 + 56);
          v25 = type metadata accessor for StaticService(0);
          v26 = *(v25 - 8);
          sub_1D1B67588(v43 + *(v26 + 72) * v24, v20, type metadata accessor for StaticService);
          (*v22)(v19, v21);
          (*(v26 + 56))(v20, 0, 1, v25);
        }

        else
        {
          (*v22)(*(v0 + 216), *(v0 + 200));
          v25 = type metadata accessor for StaticService(0);
          (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
        }
      }

      else
      {
        v27 = *(v0 + 192);
        (*(*(v0 + 208) + 8))(v17, *(v0 + 200));
        v25 = type metadata accessor for StaticService(0);
        (*(*(v25 - 8) + 56))(v27, 1, 1, v25);
      }

      v28 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 192), v28, &qword_1EC6436F0, &qword_1D1E99BC0);
      type metadata accessor for StaticService(0);
      if ((*(*(v25 - 8) + 48))(v28, 1, v25) != 1)
      {
        break;
      }

      v29 = *(v0 + 184);
      v30 = *(v0 + 176);
      sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
      sub_1D1741A30(v29, &qword_1EC6436F0, &qword_1D1E99BC0);
      (*(*(v15 - 8) + 56))(v30, 1, 1, v15);
      result = sub_1D1741A30(v30, &unk_1EC649E30, &unk_1D1E91250);
      v7 = *(v0 + 240);
      v5 = (*(v0 + 232) - 1) & *(v0 + 232);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    *(v0 + 112) = MEMORY[0x1E69E6530];
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 105;
    sub_1D1741970(v0 + 88, inited + 40);
    v39 = sub_1D18DAC64(inited);
    *(v0 + 248) = v39;
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
    *(v0 + 152) = 2;
    *(v0 + 120) = xmmword_1D1E88490;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    v40 = swift_task_alloc();
    *(v0 + 256) = v40;
    *v40 = v0;
    v40[1] = sub_1D1B63DEC;
    v41 = *(v0 + 176);
    v42 = *(v0 + 184);

    return StaticService.set(for:options:context:)(v41, v39, (v0 + 152), (v0 + 120));
  }

  else
  {
    while (1)
    {
LABEL_6:
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v0 + 160);
      v5 = *(v8 + 8 * v9 + 56);
      ++v7;
      if (v5)
      {
        v7 = v9;
        goto LABEL_10;
      }
    }

    v31 = *(v0 + 216);
    v32 = *(v0 + 224);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    v36 = *(v0 + 160);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_1D1B63DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v7 = *v0;

  sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));
  sub_1D1B67528(v4, type metadata accessor for StaticService);

  return MEMORY[0x1EEE6DFA0](sub_1D1B63F70, 0, 0);
}

uint64_t sub_1D1B63F70()
{
  for (result = sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0); ; result = sub_1D1741A30(v26, &unk_1EC649E30, &unk_1D1E91250))
  {
    v2 = *(v0 + 240);
    v3 = (*(v0 + 232) - 1) & *(v0 + 232);
    if (!v3)
    {
      break;
    }

    v4 = *(v0 + 160);
LABEL_8:
    *(v0 + 232) = v3;
    *(v0 + 240) = v2;
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 168);
    (*(v8 + 16))(v6, *(v4 + 48) + *(v8 + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v9);
    v11 = type metadata accessor for StateSnapshot(0);
    v12 = *(v10 + *(v11 + 60));
    (*(v8 + 32))(v7, v6, v9);
    v13 = *(v0 + 216);
    if (*(v12 + 16))
    {
      v14 = sub_1D1742188(v13);
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v17 = *(v0 + 200);
      v18 = (*(v0 + 208) + 8);
      if (v19)
      {
        v20 = v14;
        v39 = *(v12 + 56);
        v21 = type metadata accessor for StaticService(0);
        v22 = *(v21 - 8);
        sub_1D1B67588(v39 + *(v22 + 72) * v20, v16, type metadata accessor for StaticService);
        (*v18)(v15, v17);
        (*(v22 + 56))(v16, 0, 1, v21);
      }

      else
      {
        (*v18)(*(v0 + 216), *(v0 + 200));
        v21 = type metadata accessor for StaticService(0);
        (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
      }
    }

    else
    {
      v23 = *(v0 + 192);
      (*(*(v0 + 208) + 8))(v13, *(v0 + 200));
      v21 = type metadata accessor for StaticService(0);
      (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
    }

    v24 = *(v0 + 184);
    sub_1D1741C08(*(v0 + 192), v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    type metadata accessor for StaticService(0);
    if ((*(*(v21 - 8) + 48))(v24, 1, v21) != 1)
    {
      *(v0 + 112) = MEMORY[0x1E69E6530];
      *(v0 + 88) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = 105;
      sub_1D1741970(v0 + 88, inited + 40);
      v35 = sub_1D18DAC64(inited);
      *(v0 + 248) = v35;
      swift_setDeallocating();
      sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
      *(v0 + 152) = 2;
      *(v0 + 120) = xmmword_1D1E88490;
      *(v0 + 136) = 0;
      *(v0 + 144) = 0;
      v36 = swift_task_alloc();
      *(v0 + 256) = v36;
      *v36 = v0;
      v36[1] = sub_1D1B63DEC;
      v37 = *(v0 + 176);
      v38 = *(v0 + 184);

      return StaticService.set(for:options:context:)(v37, v35, (v0 + 152), (v0 + 120));
    }

    v25 = *(v0 + 184);
    v26 = *(v0 + 176);
    sub_1D1741A30(*(v0 + 192), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v25, &qword_1EC6436F0, &qword_1D1E99BC0);
    (*(*(v11 - 8) + 56))(v26, 1, 1, v11);
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v5 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v0 + 160);
    v3 = *(v4 + 8 * v5 + 56);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_8;
    }
  }

  v27 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = *(v0 + 176);
  v32 = *(v0 + 160);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D1B644C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticService(0);
    v20 = *(v19 - 8);
    sub_1D1B67588(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticService);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticService(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0D124(v8, v12);
}

uint64_t sub_1D1B646F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1D1E66A7C();
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

    for (i = 0; v15; result = sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1D1AE04A0(v12, v6);
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

uint64_t sub_1D1B64914(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A0, &qword_1D1E9ADA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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

    for (i = 0; v15; result = sub_1D1741A30(v6, &qword_1EC64B8A0, &qword_1D1E9ADA0))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1D1B67588(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1AE1958(v12, v6);
      sub_1D1B67528(v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
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

uint64_t sub_1D1B64B1C(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v72 - v10);
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v92 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v72 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v87 = (&v72 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v73 = v11;
  v75 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v86 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v94 = (v24 & v21);
  v78 = (63 - v23) >> 6;
  v93 = v13 + 2;
  v83 = (v13 + 6);
  v84 = (v13 + 7);
  v82 = (v13 + 4);
  v89 = (a2 + 56);
  v95 = (v13 + 1);
  v85 = a1;

  v26 = 0;
  v74 = v13;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v94;
    v28 = v26;
    if (v94)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v85;
      v33 = v85[6] + v13[9] * (__clz(__rbit64(v27)) | (v28 << 6));
      v34 = v13[2];
      v35 = v73;
      v34(v73, v33, v12);
      v36 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v78 <= (v26 + 1) ? v26 + 1 : v78;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v78)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v73;
      v32 = v85;
    }

    v80 = *v84;
    v80(v35, v36, 1, v12);
    v96 = v32;
    v97 = v22;
    v98 = v86;
    v99 = v30;
    v100 = v2;
    v79 = *v83;
    if (v79(v35, 1, v12) == 1)
    {
      sub_1D1741A30(v35, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_52;
    }

    v77 = *v82;
    v77(v87, v35, v12);
    v37 = *(a2 + 40);
    v76 = sub_1D174A5FC(qword_1EE07DD78);
    v38 = sub_1D1E676DC();
    v39 = -1 << *(a2 + 32);
    v26 = v38 & ~v39;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v89[v26 >> 6]) != 0)
    {
      break;
    }

    v13 = v74;
    (*v95)(v87, v12);
LABEL_22:
    v26 = v30;
    v94 = v2;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v39;
  v40 = v74[9];
  v90 = v74[2];
  v91 = v40;
  while (1)
  {
    v90(v19, *(a2 + 48) + v91 * v26, v12);
    v41 = sub_1D174A5FC(&qword_1EE07D170);
    v42 = sub_1D1E6775C();
    v94 = *v95;
    v94(v19, v12);
    if (v42)
    {
      break;
    }

    v26 = (v26 + 1) & v88;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v89[v26 >> 6]) == 0)
    {
      v13 = v74;
      v94(v87, v12);
      goto LABEL_22;
    }
  }

  v88 = v41;
  v43 = (v94)(v87, v12);
  v44 = *(a2 + 32);
  v72 = ((1 << v44) + 63) >> 6;
  v25 = 8 * v72;
  v13 = v85;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v73 = &v72;
    MEMORY[0x1EEE9AC00](v43);
    v46 = &v72 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v89, v45);
    v47 = *&v46[8 * v28] & ~v22;
    v48 = *(a2 + 16);
    v87 = v46;
    *&v46[8 * v28] = v47;
    v49 = v48 - 1;
    v26 = v75;
    v50 = i;
    v51 = v78;
LABEL_26:
    v74 = v49;
    while (v2)
    {
      v52 = v30;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v90(v26, v13[6] + (v55 | (v52 << 6)) * v91, v12);
      v56 = 0;
LABEL_39:
      v80(v26, v56, 1, v12);
      v96 = v13;
      v97 = v50;
      v98 = v86;
      v99 = v30;
      v100 = v2;
      if (v79(v26, 1, v12) == 1)
      {
        sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
        a2 = sub_1D19E13B0(v87, v72, v74, a2);
        goto LABEL_52;
      }

      v77(v92, v26, v12);
      v57 = *(a2 + 40);
      v58 = sub_1D1E676DC();
      v59 = a2;
      v60 = -1 << *(a2 + 32);
      v61 = v58 & ~v60;
      v28 = v61 >> 6;
      v22 = 1 << v61;
      if (((1 << v61) & v89[v61 >> 6]) != 0)
      {
        v90(v19, *(v59 + 48) + v61 * v91, v12);
        v62 = sub_1D1E6775C();
        v94(v19, v12);
        if ((v62 & 1) == 0)
        {
          v63 = ~v60;
          do
          {
            v61 = (v61 + 1) & v63;
            v28 = v61 >> 6;
            v22 = 1 << v61;
            if (((1 << v61) & v89[v61 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v59 + 48) + v61 * v91, v12);
            v64 = sub_1D1E6775C();
            v94(v19, v12);
          }

          while ((v64 & 1) == 0);
        }

        v94(v92, v12);
        v65 = v87[v28];
        v87[v28] = v65 & ~v22;
        a2 = v59;
        v13 = v85;
        v26 = v75;
        v50 = i;
        v51 = v78;
        if ((v65 & v22) != 0)
        {
          v49 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v12);
        a2 = v59;
        v13 = v85;
        v26 = v75;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v30 + 1))
    {
      v53 = v30 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v30 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v30;
      if (v2)
      {
        v30 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v68 = v25;

    v87 = a2;
    v69 = v68;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v70 = v87;

      a2 = v70;
      continue;
    }

    break;
  }

  v71 = swift_slowAlloc();
  memcpy(v71, v89, v69);
  a2 = sub_1D1B664B0(v71, v72, v87, v26, &v96);

  MEMORY[0x1D3893640](v71, -1, -1);
LABEL_52:
  sub_1D1716918();
LABEL_54:
  v66 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1D1B65564(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v62[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = a1;
    v62[0] = a1;
    v54 = *(a1 + 16);
    if (v54)
    {
      v4 = (a2 + 56);
      v5 = a1 + 32;

      v6 = 0;
      v59 = v4;
      v56 = v5;
      while (1)
      {
        v7 = *(v6 + v5);
        v58 = (v6 + 1);
        v8 = *(v2 + 40);
        sub_1D1E6920C();
        v57 = v7;
        v60 = v7;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v9 = sub_1D1E6926C();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v4[v11 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v6 = v58;
        v4 = v59;
        v5 = v56;
        if (v58 == v54)
        {
LABEL_124:

          goto LABEL_125;
        }
      }

      v14 = ~v10;
      while (1)
      {
        v15 = "takeSnaphotsWhenBusy";
        switch(*(*(v2 + 48) + v11))
        {
          case 1:
            v16 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 2:
            v16 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 3:
            v16 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 4:
            v16 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 5:
            v16 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 6:
            v16 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 7:
            v16 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 8:
            v16 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 9:
            v16 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xA:
            v16 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xB:
            v16 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xC:
            v16 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xD:
            v16 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xE:
            v16 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0xF:
            v16 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x10:
            v16 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x11:
            v16 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x12:
            v16 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x13:
            v16 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x14:
            v16 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x15:
            v16 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x16:
            v16 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x17:
            v16 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x18:
            v16 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x19:
            v16 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1A:
            v16 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1B:
            v16 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1C:
            v16 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1D:
            v16 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1E:
            v16 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x1F:
            v16 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x20:
            v16 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x21:
            v16 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x22:
            v16 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x23:
            v16 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x24:
            v16 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x25:
            v16 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x26:
            v16 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x27:
            v16 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x28:
            v16 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x29:
            v16 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2A:
            v16 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2B:
            v16 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2C:
            v16 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2D:
            v16 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2E:
            v16 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x2F:
            v16 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x30:
            v16 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x31:
            v16 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x32:
            v16 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x33:
            v16 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_60;
          case 0x34:
            v16 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_60:
            v15 = v16 - 32;
            break;
          default:
            break;
        }

        v17 = v15 | 0x8000000000000000;
        v18 = "takeSnaphotsWhenBusy";
        switch(v57)
        {
          case 1:
            v19 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 2:
            v19 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 3:
            v19 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 4:
            v19 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 5:
            v19 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 6:
            v19 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 7:
            v19 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 8:
            v19 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 9:
            v19 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 10:
            v19 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 11:
            v19 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 12:
            v19 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 13:
            v19 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 14:
            v19 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 15:
            v19 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 16:
            v19 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 17:
            v19 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 18:
            v19 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 19:
            v19 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 20:
            v19 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 21:
            v19 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 22:
            v19 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 23:
            v19 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 24:
            v19 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 25:
            v19 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 26:
            v19 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 27:
            v19 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 28:
            v19 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 29:
            v19 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 30:
            v19 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 31:
            v19 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 32:
            v19 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 33:
            v19 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 34:
            v19 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 35:
            v19 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 36:
            v19 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 37:
            v19 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 38:
            v19 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 39:
            v19 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 40:
            v19 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 41:
            v19 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 42:
            v19 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 43:
            v19 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 44:
            v19 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 45:
            v19 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 46:
            v19 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 47:
            v19 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 48:
            v19 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 49:
            v19 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 50:
            v19 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 51:
            v19 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_114;
          case 52:
            v19 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_114:
            v18 = v19 - 32;
            break;
          default:
            break;
        }

        if (v17 == (v18 | 0x8000000000000000))
        {
          break;
        }

        v20 = sub_1D1E6904C();

        if (v20)
        {
          goto LABEL_121;
        }

        v11 = (v11 + 1) & v14;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if ((v59[v11 >> 6] & (1 << v11)) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_121:
      v22 = v58;
      v62[1] = v58;
      v23 = *(v2 + 32);
      v52 = ((1 << v23) + 63) >> 6;
      v24 = 8 * v52;
      if ((v23 & 0x3Fu) > 0xD)
      {
        goto LABEL_251;
      }

      while (1)
      {
        v53 = &v51;
        MEMORY[0x1EEE9AC00](v21);
        v11 = &v51 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v11, v59, v25);
        v26 = *(v2 + 16);
        v27 = *(v11 + 8 * v12) & ~v13;
        v54 = v11;
        *(v11 + 8 * v12) = v27;
        v57 = v26 - 1;
        v28 = *(v3 + 16);
        if (v22 == v28)
        {
LABEL_123:
          v2 = sub_1D19E2038(v54, v52, v57, v2);
          goto LABEL_124;
        }

        v31 = v22;
        v13 = v59;
        v55 = v3;
        while (v31 < v28)
        {
          v58 = v31;
          v33 = *(v31 + v56);
          v34 = *(v2 + 40);
          sub_1D1E6920C();
          v60 = v33;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v11 = &v61;
          v35 = sub_1D1E6926C();
          v36 = -1 << *(v2 + 32);
          v37 = v35 & ~v36;
          v38 = v37 >> 6;
          v39 = 1 << v37;
          if (((1 << v37) & *(v13 + 8 * (v37 >> 6))) == 0)
          {
            goto LABEL_127;
          }

          v40 = ~v36;
          while (1)
          {
            v41 = "takeSnaphotsWhenBusy";
            switch(*(*(v2 + 48) + v37))
            {
              case 1:
                v42 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 2:
                v42 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 3:
                v42 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 4:
                v42 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 5:
                v42 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 6:
                v42 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 7:
                v42 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 8:
                v42 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 9:
                v42 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xA:
                v42 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xB:
                v42 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xC:
                v42 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xD:
                v42 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xE:
                v42 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0xF:
                v42 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x10:
                v42 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x11:
                v42 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x12:
                v42 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x13:
                v42 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x14:
                v42 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x15:
                v42 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x16:
                v42 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x17:
                v42 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x18:
                v42 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x19:
                v42 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1A:
                v42 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1B:
                v42 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1C:
                v42 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1D:
                v42 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1E:
                v42 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x1F:
                v42 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x20:
                v42 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x21:
                v42 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x22:
                v42 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x23:
                v42 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x24:
                v42 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x25:
                v42 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x26:
                v42 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x27:
                v42 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x28:
                v42 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x29:
                v42 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2A:
                v42 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2B:
                v42 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2C:
                v42 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2D:
                v42 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2E:
                v42 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x2F:
                v42 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x30:
                v42 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x31:
                v42 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x32:
                v42 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x33:
                v42 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_185;
              case 0x34:
                v42 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_185:
                v41 = v42 - 32;
                break;
              default:
                break;
            }

            v11 = v41 | 0x8000000000000000;
            v43 = "takeSnaphotsWhenBusy";
            switch(v33)
            {
              case 1:
                v44 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 2:
                v44 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 3:
                v44 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 4:
                v44 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 5:
                v44 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 6:
                v44 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 7:
                v44 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 8:
                v44 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 9:
                v44 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 10:
                v44 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 11:
                v44 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 12:
                v44 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 13:
                v44 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 14:
                v44 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 15:
                v44 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 16:
                v44 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 17:
                v44 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 18:
                v44 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 19:
                v44 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 20:
                v44 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 21:
                v44 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 22:
                v44 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 23:
                v44 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 24:
                v44 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 25:
                v44 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 26:
                v44 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 27:
                v44 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 28:
                v44 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 29:
                v44 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 30:
                v44 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 31:
                v44 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 32:
                v44 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 33:
                v44 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 34:
                v44 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 35:
                v44 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 36:
                v44 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 37:
                v44 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 38:
                v44 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 39:
                v44 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 40:
                v44 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 41:
                v44 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 42:
                v44 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 43:
                v44 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 44:
                v44 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 45:
                v44 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 46:
                v44 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 47:
                v44 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 48:
                v44 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 49:
                v44 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 50:
                v44 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 51:
                v44 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_239;
              case 52:
                v44 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_239:
                v43 = v44 - 32;
                break;
              default:
                break;
            }

            if (v11 == (v43 | 0x8000000000000000))
            {
              break;
            }

            v12 = sub_1D1E6904C();

            if (v12)
            {
              goto LABEL_245;
            }

            v37 = (v37 + 1) & v40;
            v38 = v37 >> 6;
            v13 = v59;
            v39 = 1 << v37;
            if ((v59[v37 >> 6] & (1 << v37)) == 0)
            {
              v3 = v55;
              goto LABEL_127;
            }
          }

LABEL_245:
          v3 = v55;
          v45 = v54[v38];
          v54[v38] = v45 & ~v39;
          v13 = v59;
          if ((v45 & v39) != 0)
          {
            v32 = v58;
            v46 = v57 - 1;
            if (__OFSUB__(v57, 1))
            {
              goto LABEL_250;
            }

            --v57;
            if (!v46)
            {

              v2 = MEMORY[0x1E69E7CD0];
              goto LABEL_124;
            }
          }

          else
          {
LABEL_127:
            v32 = v58;
          }

          v31 = (v32 + 1);
          v28 = *(v3 + 16);
          if (v31 == v28)
          {
            goto LABEL_123;
          }
        }

        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        v47 = v24;

        v48 = v47;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v22 = v58;
      }

      v49 = swift_slowAlloc();
      memcpy(v49, v59, v48);
      v50 = sub_1D1B6695C(v49, v52, v2, v11, v62);

      MEMORY[0x1D3893640](v49, -1, -1);

      v2 = v50;
    }
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_125:
  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D1B664B0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
          v48 = v64;

          return sub_1D19E13B0(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1D174A5FC(qword_1EE07DD78);
        v38 = sub_1D1E676DC();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1D174A5FC(&qword_1EE07D170);
        v46 = sub_1D1E6775C();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D1B6695C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v25 = result;
  v26 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_1D19E2038(v25, a2, v26, a3);
  }

  else
  {
    v29 = a3 + 56;
    v27 = a5;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_128;
      }

      v10 = *(v7 + v8 + 32);
      a5[1] = v8 + 1;
      v11 = *(a3 + 40);
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v12 = -1 << *(a3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v29 + 8 * (v13 >> 6))) == 0)
      {
        goto LABEL_4;
      }

      v28 = ~v12;
      while (1)
      {
        v16 = "takeSnaphotsWhenBusy";
        switch(*(*(a3 + 48) + v13))
        {
          case 1:
            v17 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 2:
            v17 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 3:
            v17 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 4:
            v17 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 5:
            v17 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 6:
            v17 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 7:
            v17 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 8:
            v17 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 9:
            v17 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xA:
            v17 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xB:
            v17 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xC:
            v17 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xD:
            v17 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xE:
            v17 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0xF:
            v17 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x10:
            v17 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x11:
            v17 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x12:
            v17 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x13:
            v17 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x14:
            v17 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x15:
            v17 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x16:
            v17 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x17:
            v17 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x18:
            v17 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x19:
            v17 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1A:
            v17 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1B:
            v17 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1C:
            v17 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1D:
            v17 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1E:
            v17 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x1F:
            v17 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x20:
            v17 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x21:
            v17 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x22:
            v17 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x23:
            v17 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x24:
            v17 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x25:
            v17 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x26:
            v17 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x27:
            v17 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x28:
            v17 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x29:
            v17 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2A:
            v17 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2B:
            v17 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2C:
            v17 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2D:
            v17 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2E:
            v17 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x2F:
            v17 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x30:
            v17 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x31:
            v17 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x32:
            v17 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x33:
            v17 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_63;
          case 0x34:
            v17 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_63:
            v16 = v17 - 32;
            break;
          default:
            break;
        }

        v18 = v16 | 0x8000000000000000;
        v19 = "takeSnaphotsWhenBusy";
        switch(v10)
        {
          case 1:
            v20 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 2:
            v20 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 3:
            v20 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 4:
            v20 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 5:
            v20 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 6:
            v20 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 7:
            v20 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 8:
            v20 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 9:
            v20 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 10:
            v20 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 11:
            v20 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 12:
            v20 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 13:
            v20 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 14:
            v20 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 15:
            v20 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 16:
            v20 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 17:
            v20 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 18:
            v20 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 19:
            v20 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 20:
            v20 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 21:
            v20 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 22:
            v20 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 23:
            v20 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 24:
            v20 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 25:
            v20 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 26:
            v20 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 27:
            v20 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 28:
            v20 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 29:
            v20 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 30:
            v20 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 31:
            v20 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 32:
            v20 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 33:
            v20 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 34:
            v20 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 35:
            v20 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 36:
            v20 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 37:
            v20 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 38:
            v20 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 39:
            v20 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 40:
            v20 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 41:
            v20 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 42:
            v20 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 43:
            v20 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 44:
            v20 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 45:
            v20 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 46:
            v20 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 47:
            v20 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 48:
            v20 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 49:
            v20 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 50:
            v20 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 51:
            v20 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_117;
          case 52:
            v20 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_117:
            v19 = v20 - 32;
            break;
          default:
            break;
        }

        if (v18 == (v19 | 0x8000000000000000))
        {
          break;
        }

        v21 = sub_1D1E6904C();

        if (v21)
        {
          goto LABEL_123;
        }

        v13 = (v13 + 1) & v28;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if ((*(v29 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_123:
      v22 = v25[v14];
      v25[v14] = v22 & ~v15;
      if ((v22 & v15) != 0)
      {
        a5 = v27;
        v23 = v26 - 1;
        if (__OFSUB__(v26, 1))
        {
          goto LABEL_129;
        }

        --v26;
        if (!v23)
        {
          return MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
LABEL_4:
        a5 = v27;
      }

      v7 = *a5;
      v8 = a5[1];
      v9 = *(*a5 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B670D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B67140()
{
  v1 = *(type metadata accessor for StateSnapshot(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D1B6353C(v2, v3);
}

uint64_t sub_1D1B671A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D1B671CC()
{
  v1 = *(type metadata accessor for StateSnapshot(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 112) & ~*(v1 + 80));

  return sub_1D1B62588((v0 + 16), v2);
}

uint64_t sub_1D1B67230(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 128) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B62778(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1D1B67324(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B62894(a1, a2, v7, v6);
}

uint64_t sub_1D1B673D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B62E9C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1D1B67528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B67588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B675F0(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B63738(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B676EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = sub_1D1E66A7C();
  v6 = *(v98 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v98);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v100 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v83 - v16;
  v90 = type metadata accessor for TilesFilter(0);
  v17 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for IconTextValueStringDataHolder();
  v20 = *(*(v88 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v88);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v83 - v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v95 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v95);
  v94 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v83 - v28;
  v29 = sub_1D1B6DBBC(a1, 37, 127);

  if (*(v29 + 16))
  {
    v83 = v23;
    v84 = v11;
    v85 = v19;
    v86 = a2;
    v87 = a3;
    v101 = v6;
    v102 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v91 = v6 + 8;
    v92 = v6 + 16;
    v97 = v29;

    v36 = 0;
    v37 = v99;
    for (i = v100; v33; i = v100)
    {
      v39 = v36;
      v40 = v101;
      v41 = v97;
LABEL_11:
      v42 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v93;
      v45 = v98;
      (*(v40 + 16))(v93, *(v41 + 48) + *(v40 + 72) * v43, v98);
      v46 = *(v41 + 56);
      v47 = v46 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v43;
      v48 = v95;
      sub_1D1B733D4(v47, v44 + *(v95 + 48), type metadata accessor for StaticService);
      v49 = v94;
      sub_1D1741C08(v44, v94, &qword_1EC642DB0, &unk_1D1E6F360);
      v50 = *(v48 + 48);
      v51 = v96;
      sub_1D1762CB8(v96, v49);
      (*(v101 + 8))(v51, v45);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v49[v50], type metadata accessor for StaticService);
      v37 = v99;
    }

    v40 = v101;
    v41 = v97;
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    v96 = v102;
    v52 = v86;
    v53 = sub_1D1B7145C(v41, v86);
    v55 = v54;

    v56 = v98;
    (*(v40 + 56))(v37, 1, 1, v98);
    v57 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC5D10);
    v97 = v58;
    sub_1D1741C08(v37, i, &qword_1EC642590, qword_1D1E71260);
    v59 = *(v40 + 48);
    if (v59(i, 1, v56) == 1)
    {
      v95 = v57;
      v60 = v55;
      v61 = v53;
      v62 = v52;
      v63 = v37;
      v64 = v84;
      sub_1D1E66A6C();
      v65 = v63;
      v52 = v62;
      v53 = v61;
      v55 = v60;
      v57 = v95;
      sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
      v66 = v59(i, 1, v56);
      v67 = v87;
      v68 = v85;
      v69 = v56;
      if (v66 != 1)
      {
        sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
        v69 = v56;
        v40 = v101;
      }
    }

    else
    {
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
      v64 = v84;
      (*(v40 + 32))(v84, i, v56);
      v67 = v87;
      v68 = v85;
      v69 = v56;
    }

    v72 = v83;
    (*(v40 + 32))(v83, v64, v69);
    v73 = v88;
    v74 = (v72 + *(v88 + 20));
    *v74 = 0x69662E656B6F6D73;
    v74[1] = 0xEA00000000006C6CLL;
    v75 = (v72 + v73[6]);
    v76 = v97;
    *v75 = v57;
    v75[1] = v76;
    v77 = (v72 + v73[7]);
    *v77 = v53;
    v77[1] = v55;
    v78 = v72 + v73[8];
    *v78 = 0;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
    *(v78 + 24) = -1;
    v79 = v72;
    v80 = v89;
    v81 = sub_1D1B7336C(v79, v89, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v81);
    *(&v83 - 32) = 0;
    *(&v83 - 3) = v96;
    *(&v83 - 16) = 37;
    v102 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v52, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v82 = type metadata accessor for SmokeAlarmStatusItem(0);
    *(v67 + v82[6]) = 0;
    *(v67 + v82[7]) = 4;
    *(v67 + v82[8]) = 0;
    sub_1D1B7336C(v80, v67, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v68, v67 + v82[5], type metadata accessor for TilesFilter);
    return (*(*(v82 - 1) + 56))(v67, 0, 1, v82);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v70 = type metadata accessor for SmokeAlarmStatusItem(0);
    v71 = *(*(v70 - 8) + 56);

    return v71(a3, 1, 1, v70);
  }
}

uint64_t sub_1D1B67F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v75 - v17;
  v81 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v78 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v75 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v89 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v89);
  v88 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v75 - v28;
  v29 = sub_1D1B6DBBC(a1, 9, 18);

  if (*(v29 + 16))
  {
    v93 = v6;
    v75 = v20;
    v76 = a3;
    v83 = a2;
    v94 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v91 = v7;
    v92 = v29;
    v84 = v7 + 8;
    v85 = v7 + 16;

    v36 = 0;
    for (i = v16; v33; v16 = i)
    {
      v37 = v36;
      v38 = v92;
      v39 = v93;
LABEL_11:
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v91;
      v43 = v87;
      (*(v91 + 16))(v87, *(v38 + 48) + *(v91 + 72) * v41, v39);
      v44 = *(v38 + 56);
      v45 = v44 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v41;
      v46 = v89;
      sub_1D1B733D4(v45, v43 + *(v89 + 48), type metadata accessor for StaticService);
      v47 = v88;
      sub_1D1741C08(v43, v88, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v46 + 48);
      v49 = v90;
      sub_1D1762CB8(v90, v47);
      (*(v42 + 8))(v49, v93);
      sub_1D1741A30(v43, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v47[v48], type metadata accessor for StaticService);
    }

    v38 = v92;
    v39 = v93;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_11;
      }
    }

    v90 = v94;
    v50 = sub_1D1B71C20(v38, v83);
    v88 = v51;
    v89 = v50;

    v52 = v91;
    v53 = v77;
    (*(v91 + 56))(v77, 1, 1, v39);
    v54 = static String.hfLocalized(_:)(0xD000000000000015, 0x80000001D1EC5CC0);
    v56 = v55;
    sub_1D1741C08(v53, v16, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v52 + 48);
    if (v57(v16, 1, v39) == 1)
    {
      v58 = v16;
      v59 = v82;
      sub_1D1E66A6C();
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v60 = v59;
      if (v57(v58, 1, v39) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v60 = v82;
      (*(v52 + 32))(v82, v16, v39);
    }

    v63 = v79;
    (*(v52 + 32))(v79, v60, v39);
    v64 = v78;
    v65 = (v63 + *(v78 + 20));
    *v65 = 0xD000000000000019;
    v65[1] = 0x80000001D1EBDE40;
    v66 = (v63 + v64[6]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v63 + v64[7]);
    v68 = v88;
    *v67 = v89;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v63, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 0;
    *(&v75 - 3) = v90;
    *(&v75 - 16) = 9;
    v94 = type metadata accessor for StaticService(0);
    v72 = v75;
    sub_1D1E66C8C();

    sub_1D1B70478(v83, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for CarbonDioxideAlarmStatusItem(0);
    v74 = v76;
    *(v76 + v73[6]) = 0;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 0;
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for CarbonDioxideAlarmStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t sub_1D1B687F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v75 - v17;
  v81 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v78 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v75 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v89 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v89);
  v88 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v75 - v28;
  v29 = sub_1D1B6DBBC(a1, 10, 21);

  if (*(v29 + 16))
  {
    v93 = v6;
    v75 = v20;
    v76 = a3;
    v83 = a2;
    v94 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v91 = v7;
    v92 = v29;
    v84 = v7 + 8;
    v85 = v7 + 16;

    v36 = 0;
    for (i = v16; v33; v16 = i)
    {
      v37 = v36;
      v38 = v92;
      v39 = v93;
LABEL_11:
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v91;
      v43 = v87;
      (*(v91 + 16))(v87, *(v38 + 48) + *(v91 + 72) * v41, v39);
      v44 = *(v38 + 56);
      v45 = v44 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v41;
      v46 = v89;
      sub_1D1B733D4(v45, v43 + *(v89 + 48), type metadata accessor for StaticService);
      v47 = v88;
      sub_1D1741C08(v43, v88, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v46 + 48);
      v49 = v90;
      sub_1D1762CB8(v90, v47);
      (*(v42 + 8))(v49, v93);
      sub_1D1741A30(v43, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v47[v48], type metadata accessor for StaticService);
    }

    v38 = v92;
    v39 = v93;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_11;
      }
    }

    v90 = v94;
    v50 = sub_1D1B723E4(v38, v83);
    v88 = v51;
    v89 = v50;

    v52 = v91;
    v53 = v77;
    (*(v91 + 56))(v77, 1, 1, v39);
    v54 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EC5C70);
    v56 = v55;
    sub_1D1741C08(v53, v16, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v52 + 48);
    if (v57(v16, 1, v39) == 1)
    {
      v58 = v16;
      v59 = v82;
      sub_1D1E66A6C();
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v60 = v59;
      if (v57(v58, 1, v39) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v60 = v82;
      (*(v52 + 32))(v82, v16, v39);
    }

    v63 = v79;
    (*(v52 + 32))(v79, v60, v39);
    v64 = v78;
    v65 = (v63 + *(v78 + 20));
    *v65 = 0xD00000000000001ALL;
    v65[1] = 0x80000001D1EBDE20;
    v66 = (v63 + v64[6]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v63 + v64[7]);
    v68 = v88;
    *v67 = v89;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v63, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 0;
    *(&v75 - 3) = v90;
    *(&v75 - 16) = 10;
    v94 = type metadata accessor for StaticService(0);
    v72 = v75;
    sub_1D1E66C8C();

    sub_1D1B70478(v83, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for CarbonMonoxideAlarmStatusItem(0);
    v74 = v76;
    *(v76 + v73[6]) = 0;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 0;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for CarbonMonoxideAlarmStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t sub_1D1B69058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = sub_1D1E66A7C();
  v6 = *(v98 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v80 - v16;
  v17 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v84 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v84);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v80 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v93 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v80 - v28;
  v29 = sub_1D1B6DD3C(a1, 11, sub_1D1B6E3C8, sub_1D1B6E3C8);

  if (*(v29 + 16))
  {
    v80 = v17;
    v81 = v20;
    v82 = a2;
    v83 = a3;
    v99 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v95 = v6;
    v96 = v29;
    v88 = v6 + 8;
    v89 = v6 + 16;

    v36 = 0;
    v90 = v15;
    v37 = v92;
    for (i = v97; v33; i = v97)
    {
      v39 = v36;
      v40 = v96;
LABEL_11:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v95;
      v44 = v91;
      (*(v95 + 16))(v91, v40[6] + *(v95 + 72) * v42, v98);
      v45 = v40[7];
      v46 = type metadata accessor for StaticService(0);
      v47 = v93;
      sub_1D1B733D4(v45 + *(*(v46 - 8) + 72) * v42, v44 + *(v93 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v44, v37, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v47 + 48);
      v49 = v94;
      sub_1D1762CB8(v94, v37);
      (*(v43 + 8))(v49, v98);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v37[v48], type metadata accessor for StaticService);
      v15 = v90;
    }

    v40 = v96;
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    v94 = v99;
    static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC5C40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D1E739C0;
    v51 = v40[2];
    v52 = MEMORY[0x1E69E65A8];
    *(v50 + 56) = MEMORY[0x1E69E6530];
    *(v50 + 64) = v52;
    *(v50 + 32) = v51;
    v53 = sub_1D1E6783C();
    v92 = v54;
    v93 = v53;

    v55 = v95;
    v56 = v98;
    (*(v95 + 56))(i, 1, 1, v98);
    v57 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC5B40);
    v59 = v58;
    sub_1D1741C08(i, v15, &qword_1EC642590, qword_1D1E71260);
    v60 = v15;
    v61 = *(v55 + 48);
    if (v61(v15, 1, v56) == 1)
    {
      v62 = i;
      v63 = v87;
      sub_1D1E66A6C();
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      v64 = v61(v15, 1, v56);
      v65 = v63;
      v66 = v86;
      if (v64 != 1)
      {
        sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v65 = v87;
      (*(v55 + 32))(v87, v60, v56);
      v66 = v86;
    }

    (*(v55 + 32))(v66, v65, v56);
    v69 = v84;
    v70 = (v66 + *(v84 + 20));
    *v70 = 0xD000000000000013;
    v70[1] = 0x80000001D1EB5C00;
    v71 = (v66 + v69[6]);
    *v71 = v57;
    v71[1] = v59;
    v72 = (v66 + v69[7]);
    v73 = v92;
    *v72 = v93;
    v72[1] = v73;
    v74 = v66 + v69[8];
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *(v74 + 24) = -1;
    v75 = v85;
    v76 = sub_1D1B7336C(v66, v85, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v76);
    *(&v80 - 32) = 1;
    *(&v80 - 3) = v94;
    *(&v80 - 16) = 11;
    v99 = type metadata accessor for StaticService(0);
    v77 = v81;
    sub_1D1E66C8C();

    sub_1D1B70478(v82, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v78 = type metadata accessor for ContactSensorStatusItem(0);
    v79 = v83;
    *(v83 + v78[6]) = 2;
    *(v79 + v78[7]) = 4;
    *(v79 + v78[8]) = 4;
    sub_1D1B7336C(v75, v79, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v77, v79 + v78[5], type metadata accessor for TilesFilter);
    return (*(*(v78 - 1) + 56))(v79, 0, 1, v78);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v67 = type metadata accessor for ContactSensorStatusItem(0);
    v68 = *(*(v67 - 8) + 56);

    return v68(a3, 1, 1, v67);
  }
}

uint64_t sub_1D1B69978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = sub_1D1E66A7C();
  v6 = *(v93 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v88 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v75 - v15;
  v16 = type metadata accessor for TilesFilter(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder();
  v20 = *(*(v78 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v75 - v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v24 = *(*(v87 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v75 - v27;
  v28 = sub_1D1B6DD3C(a1, 32, sub_1D1B6E8DC, sub_1D1B6E8DC);

  if (*(v28 + 16))
  {
    v75 = v16;
    v76 = v19;
    v82 = a2;
    v77 = a3;
    v94 = MEMORY[0x1E69E7CD0];
    v29 = v28 + 64;
    v30 = 1 << *(v28 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v28 + 64);
    v33 = (v30 + 63) >> 6;
    v89 = v6;
    v90 = v28;
    v83 = v6 + 8;
    v84 = v6 + 16;

    v35 = 0;
    v36 = v86;
    v38 = v91;
    for (i = v92; v32; i = v92)
    {
      v39 = v35;
      v40 = v90;
LABEL_11:
      v41 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v89;
      v44 = v85;
      (*(v89 + 16))(v85, *(v40 + 48) + *(v89 + 72) * v42, v93);
      v45 = *(v40 + 56);
      v46 = v45 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v42;
      v47 = v87;
      sub_1D1B733D4(v46, v44 + *(v87 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v44, v36, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v47 + 48);
      v49 = v88;
      sub_1D1762CB8(v88, v36);
      (*(v43 + 8))(v49, v93);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v36[v48], type metadata accessor for StaticService);
      v38 = v91;
    }

    v40 = v90;
    while (1)
    {
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v39);
      ++v35;
      if (v32)
      {
        v35 = v39;
        goto LABEL_11;
      }
    }

    v88 = v94;
    v50 = sub_1D1B70C9C(v40, v82);
    v86 = v51;
    v87 = v50;

    v52 = v89;
    v53 = v93;
    (*(v89 + 56))(v38, 1, 1, v93);
    v54 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5AF0);
    v56 = v55;
    sub_1D1741C08(v38, i, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v52 + 48);
    if (v57(i, 1, v53) == 1)
    {
      v58 = i;
      v59 = v81;
      sub_1D1E66A6C();
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
      v60 = v59;
      if (v57(v58, 1, v53) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
      v60 = v81;
      (*(v52 + 32))(v81, i, v53);
    }

    v63 = v79;
    (*(v52 + 32))(v79, v60, v53);
    v64 = v78;
    v65 = (v63 + *(v78 + 20));
    *v65 = 0xD000000000000012;
    v65[1] = 0x80000001D1EC5AD0;
    v66 = (v63 + v64[6]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v63 + v64[7]);
    v68 = v86;
    *v67 = v87;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v63, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 1;
    *(&v75 - 3) = v88;
    *(&v75 - 16) = 32;
    v94 = type metadata accessor for StaticService(0);
    v72 = v76;
    sub_1D1E66C8C();

    sub_1D1B70478(v82, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for MotionSensorStatusItem(0);
    v74 = v77;
    *(v77 + v73[6]) = 2;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 4;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for MotionSensorStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t sub_1D1B6A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = sub_1D1E66A7C();
  v6 = *(v100 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v100);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v85 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v85 - v16;
  v92 = type metadata accessor for TilesFilter(0);
  v17 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for IconTextValueStringDataHolder();
  v20 = *(*(v90 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v90);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v85 - v24;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v97 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v97);
  v96 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v85 - v28;
  v29 = sub_1D1B6DBBC(a1, 33, 89);

  if (*(v29 + 16))
  {
    v85 = v23;
    v86 = v11;
    v87 = v19;
    v88 = a2;
    v89 = a3;
    v103 = v6;
    v104 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v93 = v6 + 8;
    v94 = v6 + 16;
    v99 = v29;

    v36 = 0;
    v37 = v101;
    for (i = v102; v33; i = v102)
    {
      v39 = v36;
      v40 = v103;
      v41 = v99;
LABEL_11:
      v42 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v95;
      v45 = v100;
      (*(v40 + 16))(v95, *(v41 + 48) + *(v40 + 72) * v43, v100);
      v46 = *(v41 + 56);
      v47 = v46 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v43;
      v48 = v97;
      sub_1D1B733D4(v47, v44 + *(v97 + 48), type metadata accessor for StaticService);
      v49 = v96;
      sub_1D1741C08(v44, v96, &qword_1EC642DB0, &unk_1D1E6F360);
      v50 = *(v48 + 48);
      v51 = v98;
      sub_1D1762CB8(v98, v49);
      (*(v103 + 8))(v51, v45);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v49[v50], type metadata accessor for StaticService);
      v37 = v101;
    }

    v40 = v103;
    v41 = v99;
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    v52 = v104;
    v53 = v88;
    v54 = sub_1D1B704D8(v41, v88);
    v56 = v55;

    v57 = v100;
    (*(v40 + 56))(v37, 1, 1, v100);
    v58 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC5A80);
    v98 = v59;
    v99 = v58;
    sub_1D1741C08(v37, i, &qword_1EC642590, qword_1D1E71260);
    v60 = *(v40 + 48);
    if (v60(i, 1, v57) == 1)
    {
      v97 = v56;
      v61 = v54;
      v62 = v52;
      v63 = v53;
      v64 = v37;
      v65 = v86;
      sub_1D1E66A6C();
      v66 = v64;
      v53 = v63;
      v52 = v62;
      v54 = v61;
      v56 = v97;
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v67 = v60(i, 1, v57);
      v68 = v89;
      v69 = v87;
      v70 = v57;
      if (v67 != 1)
      {
        sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
        v70 = v57;
        v40 = v103;
      }
    }

    else
    {
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
      v65 = v86;
      (*(v40 + 32))(v86, i, v57);
      v68 = v89;
      v69 = v87;
      v70 = v57;
    }

    v73 = v85;
    (*(v40 + 32))(v85, v65, v70);
    v74 = v90;
    v75 = (v73 + *(v90 + 20));
    *v75 = 0x772E657275676966;
    v75[1] = 0xEB000000006B6C61;
    v76 = (v73 + v74[6]);
    v77 = v98;
    *v76 = v99;
    v76[1] = v77;
    v78 = (v73 + v74[7]);
    *v78 = v54;
    v78[1] = v56;
    v79 = v73 + v74[8];
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = -1;
    v80 = v73;
    v81 = v91;
    v82 = sub_1D1B7336C(v80, v91, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v82);
    *(&v85 - 32) = 1;
    *(&v85 - 3) = v52;
    *(&v85 - 16) = v83;
    v104 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v84 = type metadata accessor for OccupancySensorStatusItem(0);
    *(v68 + v84[6]) = 2;
    *(v68 + v84[7]) = 4;
    *(v68 + v84[8]) = 4;
    sub_1D1B7336C(v81, v68, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v69, v68 + v84[5], type metadata accessor for TilesFilter);
    return (*(*(v84 - 1) + 56))(v68, 0, 1, v84);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v71 = type metadata accessor for OccupancySensorStatusItem(0);
    v72 = *(*(v71 - 8) + 56);

    return v72(a3, 1, 1, v71);
  }
}

uint64_t sub_1D1B6AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = sub_1D1E66A7C();
  v6 = *(v93 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v75 - v16;
  v17 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v78 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v75 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v88 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v75 - v28;
  v29 = sub_1D1B6DBBC(a1, 26, 74);

  if (*(v29 + 16))
  {
    v75 = v17;
    v76 = v20;
    v82 = a2;
    v77 = a3;
    v94 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v90 = v6;
    v91 = v29;
    v83 = v6 + 8;
    v84 = v6 + 16;

    v36 = 0;
    v85 = v15;
    v37 = v87;
    for (i = v92; v33; i = v92)
    {
      v39 = v36;
      v40 = v91;
LABEL_11:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v90;
      v44 = v86;
      (*(v90 + 16))(v86, *(v40 + 48) + *(v90 + 72) * v42, v93);
      v45 = *(v40 + 56);
      v46 = v45 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v42;
      v47 = v88;
      sub_1D1B733D4(v46, v44 + *(v88 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v44, v37, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v47 + 48);
      v49 = v89;
      sub_1D1762CB8(v89, v37);
      (*(v43 + 8))(v49, v93);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v37[v48], type metadata accessor for StaticService);
      v15 = v85;
    }

    v40 = v91;
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    v89 = v94;
    v50 = sub_1D1B72BA8(v40, v82);
    v87 = v51;
    v88 = v50;

    v52 = v90;
    v53 = v93;
    (*(v90 + 56))(i, 1, 1, v93);
    v54 = static String.hfLocalized(_:)(0xD000000000000016, 0x80000001D1EC5B60);
    v56 = v55;
    sub_1D1741C08(i, v15, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v52 + 48);
    if (v57(v15, 1, v53) == 1)
    {
      v58 = v15;
      v59 = v81;
      sub_1D1E66A6C();
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v60 = v59;
      if (v57(v58, 1, v53) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v60 = v81;
      (*(v52 + 32))(v81, v15, v53);
    }

    v63 = v79;
    (*(v52 + 32))(v79, v60, v53);
    v64 = v78;
    v65 = (v63 + *(v78 + 20));
    *v65 = 0xD000000000000012;
    v65[1] = 0x80000001D1EB5DD0;
    v66 = (v63 + v64[6]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v63 + v64[7]);
    v68 = v87;
    *v67 = v88;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v80;
    v71 = sub_1D1B7336C(v63, v80, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 0;
    *(&v75 - 3) = v89;
    *(&v75 - 16) = 26;
    v94 = type metadata accessor for StaticService(0);
    v72 = v76;
    sub_1D1E66C8C();

    sub_1D1B70478(v82, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for LeakAlarmStatusItem(0);
    v74 = v77;
    *(v77 + v73[6]) = 0;
    *(v74 + v73[7]) = 6;
    *(v74 + v73[8]) = 0;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for LeakAlarmStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t sub_1D1B6B318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = sub_1D1E66A7C();
  v6 = *(v98 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v80 - v16;
  v17 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v84 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v84);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v80 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v93 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v80 - v28;
  v29 = sub_1D1B6DD3C(a1, 11, sub_1D1B6F0B8, sub_1D1B6F0B8);

  if (*(v29 + 16))
  {
    v80 = v17;
    v81 = v20;
    v82 = a2;
    v83 = a3;
    v99 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v95 = v6;
    v96 = v29;
    v88 = v6 + 8;
    v89 = v6 + 16;

    v36 = 0;
    v90 = v15;
    v37 = v92;
    for (i = v97; v33; i = v97)
    {
      v39 = v36;
      v40 = v96;
LABEL_11:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v95;
      v44 = v91;
      (*(v95 + 16))(v91, v40[6] + *(v95 + 72) * v42, v98);
      v45 = v40[7];
      v46 = type metadata accessor for StaticService(0);
      v47 = v93;
      sub_1D1B733D4(v45 + *(*(v46 - 8) + 72) * v42, v44 + *(v93 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v44, v37, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = *(v47 + 48);
      v49 = v94;
      sub_1D1762CB8(v94, v37);
      (*(v43 + 8))(v49, v98);
      sub_1D1741A30(v44, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v37[v48], type metadata accessor for StaticService);
      v15 = v90;
    }

    v40 = v96;
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    v94 = v99;
    static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EC5B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D1E739C0;
    v51 = v40[2];
    v52 = MEMORY[0x1E69E65A8];
    *(v50 + 56) = MEMORY[0x1E69E6530];
    *(v50 + 64) = v52;
    *(v50 + 32) = v51;
    v53 = sub_1D1E6783C();
    v92 = v54;
    v93 = v53;

    v55 = v95;
    v56 = v98;
    (*(v95 + 56))(i, 1, 1, v98);
    v57 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC5B40);
    v59 = v58;
    sub_1D1741C08(i, v15, &qword_1EC642590, qword_1D1E71260);
    v60 = v15;
    v61 = *(v55 + 48);
    if (v61(v15, 1, v56) == 1)
    {
      v62 = i;
      v63 = v87;
      sub_1D1E66A6C();
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      v64 = v61(v15, 1, v56);
      v65 = v63;
      v66 = v86;
      if (v64 != 1)
      {
        sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(i, &qword_1EC642590, qword_1D1E71260);
      v65 = v87;
      (*(v55 + 32))(v87, v60, v56);
      v66 = v86;
    }

    (*(v55 + 32))(v66, v65, v56);
    v69 = v84;
    v70 = (v66 + *(v84 + 20));
    *v70 = 0xD000000000000013;
    v70[1] = 0x80000001D1EB5C00;
    v71 = (v66 + v69[6]);
    *v71 = v57;
    v71[1] = v59;
    v72 = (v66 + v69[7]);
    v73 = v92;
    *v72 = v93;
    v72[1] = v73;
    v74 = v66 + v69[8];
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *(v74 + 24) = -1;
    v75 = v85;
    v76 = sub_1D1B7336C(v66, v85, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v76);
    *(&v80 - 32) = 1;
    *(&v80 - 3) = v94;
    *(&v80 - 16) = 11;
    v99 = type metadata accessor for StaticService(0);
    v77 = v81;
    sub_1D1E66C8C();

    sub_1D1B70478(v82, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v78 = type metadata accessor for IdleContactSensorStatusItem(0);
    v79 = v83;
    *(v83 + v78[6]) = 2;
    *(v79 + v78[7]) = 4;
    *(v79 + v78[8]) = 4;
    sub_1D1B7336C(v75, v79, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v77, v79 + v78[5], type metadata accessor for TilesFilter);
    return (*(*(v78 - 1) + 56))(v79, 0, 1, v78);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v67 = type metadata accessor for IdleContactSensorStatusItem(0);
    v68 = *(*(v67 - 8) + 56);

    return v68(a3, 1, 1, v67);
  }
}

uint64_t sub_1D1B6BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = sub_1D1E66A7C();
  v6 = *(v93 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v75 - v15;
  v16 = type metadata accessor for TilesFilter(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for IconTextValueStringDataHolder();
  v20 = *(*(v80 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v80);
  v81 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v75 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v24 = *(*(v88 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v75 - v27;
  v28 = sub_1D1B6DD3C(a1, 32, sub_1D1B6F5C8, sub_1D1B6F5C8);

  if (*(v28 + 16))
  {
    v75 = v16;
    v76 = v19;
    v77 = a2;
    v78 = a3;
    v94 = MEMORY[0x1E69E7CD0];
    v29 = v28 + 64;
    v30 = 1 << *(v28 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v28 + 64);
    v33 = (v30 + 63) >> 6;
    v90 = v6;
    v91 = v28;
    v84 = v6 + 8;
    v85 = v6 + 16;

    v35 = 0;
    v36 = v87;
    for (i = v92; v32; i = v92)
    {
      v38 = v35;
      v39 = v91;
LABEL_11:
      v40 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v41 = v40 | (v38 << 6);
      v42 = v90;
      v43 = v86;
      (*(v90 + 16))(v86, *(v39 + 48) + *(v90 + 72) * v41, v93);
      v44 = *(v39 + 56);
      v45 = v44 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v41;
      v46 = v88;
      sub_1D1B733D4(v45, v43 + *(v88 + 48), type metadata accessor for StaticService);
      sub_1D1741C08(v43, v36, &qword_1EC642DB0, &unk_1D1E6F360);
      v47 = *(v46 + 48);
      v48 = v89;
      sub_1D1762CB8(v89, v36);
      (*(v42 + 8))(v48, v93);
      sub_1D1741A30(v43, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v36[v47], type metadata accessor for StaticService);
    }

    v39 = v91;
    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      if (v38 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v38);
      ++v35;
      if (v32)
      {
        v35 = v38;
        goto LABEL_11;
      }
    }

    v91 = v94;
    v49 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5AA0);
    v88 = v50;
    v89 = v49;
    v51 = v90;
    v52 = v79;
    v53 = v93;
    (*(v90 + 56))(v79, 1, 1, v93);
    v54 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5AF0);
    v56 = v55;
    sub_1D1741C08(v52, i, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v51 + 48);
    if (v57(i, 1, v53) == 1)
    {
      v58 = i;
      v59 = v83;
      sub_1D1E66A6C();
      sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
      v60 = v59;
      if (v57(v58, 1, v53) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
      v60 = v83;
      (*(v51 + 32))(v83, i, v53);
    }

    v63 = v81;
    (*(v51 + 32))(v81, v60, v53);
    v64 = v80;
    v65 = (v63 + *(v80 + 20));
    *v65 = 0xD000000000000012;
    v65[1] = 0x80000001D1EC5AD0;
    v66 = (v63 + v64[6]);
    *v66 = v54;
    v66[1] = v56;
    v67 = (v63 + v64[7]);
    v68 = v88;
    *v67 = v89;
    v67[1] = v68;
    v69 = v63 + v64[8];
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = -1;
    v70 = v82;
    v71 = sub_1D1B7336C(v63, v82, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v71);
    *(&v75 - 32) = 1;
    *(&v75 - 3) = v91;
    *(&v75 - 16) = 32;
    v94 = type metadata accessor for StaticService(0);
    v72 = v76;
    sub_1D1E66C8C();

    sub_1D1B70478(v77, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for IdleMotionSensorStatusItem(0);
    v74 = v78;
    *(v78 + v73[6]) = 3;
    *(v74 + v73[7]) = 4;
    *(v74 + v73[8]) = 3;
    sub_1D1B7336C(v70, v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v72, v74 + v73[5], type metadata accessor for TilesFilter);
    return (*(*(v73 - 1) + 56))(v74, 0, 1, v73);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v61 = type metadata accessor for IdleMotionSensorStatusItem(0);
    v62 = *(*(v61 - 8) + 56);

    return v62(a3, 1, 1, v61);
  }
}

uint64_t sub_1D1B6C4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = sub_1D1E66A7C();
  v6 = *(v97 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v97);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v82 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v79 - v16;
  v86 = type metadata accessor for TilesFilter(0);
  v18 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for IconTextValueStringDataHolder();
  v21 = *(*(v83 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v83);
  v84 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v79 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v25 = *(*(v93 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v79 - v28;
  v29 = sub_1D1B6DD3C(a1, 33, sub_1D1B6FDD8, sub_1D1B6FDD8);

  if (*(v29 + 16))
  {
    v79 = v20;
    v80 = a2;
    v81 = a3;
    v98 = MEMORY[0x1E69E7CD0];
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v95 = v29;
    v96 = v6;
    v87 = v6 + 8;
    v88 = v6 + 16;

    v36 = 0;
    v89 = v17;
    for (i = v11; v33; v11 = i)
    {
      v37 = v36;
      v38 = v95;
LABEL_11:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = v39 | (v37 << 6);
      v41 = v96;
      v42 = v91;
      (*(v96 + 16))(v91, *(v38 + 48) + *(v96 + 72) * v40, v97);
      v43 = *(v38 + 56);
      v44 = v43 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v40;
      v45 = v93;
      sub_1D1B733D4(v44, v42 + *(v93 + 48), type metadata accessor for StaticService);
      v46 = v92;
      sub_1D1741C08(v42, v92, &qword_1EC642DB0, &unk_1D1E6F360);
      v47 = *(v45 + 48);
      v48 = v94;
      sub_1D1762CB8(v94, v46);
      (*(v41 + 8))(v48, v97);
      sub_1D1741A30(v42, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B70478(&v46[v47], type metadata accessor for StaticService);
      v17 = v89;
    }

    v38 = v95;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_11;
      }
    }

    v49 = v17;
    v50 = v98;
    v51 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5A50);
    v94 = v52;
    v95 = v51;
    v54 = v96;
    v53 = v97;
    (*(v96 + 56))(v49, 1, 1, v97);
    v55 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC5A80);
    v57 = v56;
    v58 = v82;
    sub_1D1741C08(v49, v82, &qword_1EC642590, qword_1D1E71260);
    v59 = *(v54 + 48);
    if (v59(v58, 1, v53) == 1)
    {
      sub_1D1E66A6C();
      sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
      v60 = v59(v58, 1, v53);
      v62 = v80;
      v61 = v81;
      v63 = v53;
      v64 = v79;
      if (v60 != 1)
      {
        v65 = v63;
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
        v63 = v65;
        v11 = i;
      }
    }

    else
    {
      sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
      (*(v54 + 32))(v11, v58, v53);
      v62 = v80;
      v61 = v81;
      v63 = v53;
      v64 = v79;
    }

    v68 = v84;
    (*(v96 + 32))(v84, v11, v63);
    v69 = v83;
    v70 = (v68 + *(v83 + 20));
    *v70 = 0x772E657275676966;
    v70[1] = 0xEB000000006B6C61;
    v71 = (v68 + v69[6]);
    *v71 = v55;
    v71[1] = v57;
    v72 = (v68 + v69[7]);
    v73 = v94;
    *v72 = v95;
    v72[1] = v73;
    v74 = v68 + v69[8];
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *(v74 + 24) = -1;
    v75 = v85;
    v76 = sub_1D1B7336C(v68, v85, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v76);
    *(&v79 - 32) = 1;
    *(&v79 - 3) = v50;
    *(&v79 - 16) = v77;
    v98 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    sub_1D1B70478(v62, type metadata accessor for StatusItemLocation);
    swift_storeEnumTagMultiPayload();
    v78 = type metadata accessor for IdleOccupancySensorStatusItem(0);
    *(v61 + v78[6]) = 3;
    *(v61 + v78[7]) = 4;
    *(v61 + v78[8]) = 4;
    sub_1D1B7336C(v75, v61, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1B7336C(v64, v61 + v78[5], type metadata accessor for TilesFilter);
    return (*(*(v78 - 1) + 56))(v61, 0, 1, v78);
  }

  else
  {
    sub_1D1B70478(a2, type metadata accessor for StatusItemLocation);

    v66 = type metadata accessor for IdleOccupancySensorStatusItem(0);
    v67 = *(*(v66 - 8) + 56);

    return v67(a3, 1, 1, v66);
  }
}

uint64_t UmbrellaCategoryInformation.securityStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v101 = a1;
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B868, &qword_1D1E9AD68);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v101 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B860, &qword_1D1E9AD60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B858, &qword_1D1E9AD58);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D8, &qword_1D1E9ACD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v123 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7D0, &qword_1D1E9ACD0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v122 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v101 - v28;
  v29 = type metadata accessor for StatusItemLocation(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7C8, &qword_1D1E9ACC8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v121 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v112 = &v101 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B850, &qword_1D1E9AD50);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v119 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v101 - v42;
  v113 = &v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B848, &qword_1D1E9AD48);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v117 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v101 - v48;
  v114 = &v101 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B840, &qword_1D1E9AD40);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v115 = &v101 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v101 - v54;
  v116 = &v101 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7A8, &qword_1D1E9ACA8);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v111 = &v101 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v101 - v60;
  v108 = &v101 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B7E0, &qword_1D1E9ACE0);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v110 = &v101 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v101 - v66;
  v109 = &v101 - v66;
  v68 = *(v3 + 24);
  v69 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v126 = v101;
  v70 = sub_1D190104C(v69, sub_1D1B7044C, v125, v68);

  sub_1D1B4468C(v71, v67);

  sub_1D1B55400(v72, v61);

  sub_1D1B56598(v73, v55);

  sub_1D1B57AD4(v74, v49);

  sub_1D1B59184(v75, v43);
  v76 = sub_1D1E66A7C();
  v77 = *(*(v76 - 8) + 56);
  v77(v32, 1, 1, v76);

  v79 = v112;
  sub_1D1B676EC(v78, v32, v112);
  v77(v32, 1, 1, v76);

  v81 = v118;
  sub_1D1B67F90(v80, v32, v118);
  v77(v32, 1, 1, v76);

  v83 = v120;
  sub_1D1B687F4(v82, v32, v120);
  v77(v32, 1, 1, v76);

  v85 = v102;
  sub_1D1B69058(v84, v32, v102);
  v77(v32, 1, 1, v76);

  v87 = v103;
  sub_1D1B69978(v86, v32, v103);
  v77(v32, 1, 1, v76);
  v88 = v104;
  sub_1D1B6A208(v70, v32, v104);
  v89 = v110;
  sub_1D1741C08(v109, v110, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  v127[0] = v89;
  v90 = v111;
  sub_1D1741C08(v108, v111, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  v127[1] = v90;
  v91 = v115;
  sub_1D1741C08(v116, v115, &qword_1EC64B840, &qword_1D1E9AD40);
  v127[2] = v91;
  v92 = v117;
  sub_1D1741C08(v114, v117, &qword_1EC64B848, &qword_1D1E9AD48);
  v127[3] = v92;
  v93 = v119;
  sub_1D1741C08(v113, v119, &qword_1EC64B850, &qword_1D1E9AD50);
  v127[4] = v93;
  v94 = v121;
  sub_1D1741C08(v79, v121, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  v127[5] = v94;
  v95 = v122;
  sub_1D1741C08(v81, v122, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  v127[6] = v95;
  v96 = v123;
  sub_1D1741C08(v83, v123, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  v127[7] = v96;
  v97 = v124;
  sub_1D1741C08(v85, v124, &qword_1EC64B858, &qword_1D1E9AD58);
  v127[8] = v97;
  v98 = v105;
  sub_1D1741C08(v87, v105, &qword_1EC64B860, &qword_1D1E9AD60);
  v127[9] = v98;
  v99 = v106;
  sub_1D1741C08(v88, v106, &qword_1EC64B868, &qword_1D1E9AD68);
  v127[10] = v99;
  sub_1D1B5C1F4(v127, v107);
  sub_1D1741A30(v88, &qword_1EC64B868, &qword_1D1E9AD68);
  sub_1D1741A30(v87, &qword_1EC64B860, &qword_1D1E9AD60);
  sub_1D1741A30(v85, &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A30(v120, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v118, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v112, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v113, &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A30(v114, &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A30(v116, &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A30(v108, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  sub_1D1741A30(v109, &qword_1EC64B7E0, &qword_1D1E9ACE0);
  sub_1D1741A30(v99, &qword_1EC64B868, &qword_1D1E9AD68);
  sub_1D1741A30(v98, &qword_1EC64B860, &qword_1D1E9AD60);
  sub_1D1741A30(v124, &qword_1EC64B858, &qword_1D1E9AD58);
  sub_1D1741A30(v123, &qword_1EC64B7D8, &qword_1D1E9ACD8);
  sub_1D1741A30(v122, &qword_1EC64B7D0, &qword_1D1E9ACD0);
  sub_1D1741A30(v121, &qword_1EC64B7C8, &qword_1D1E9ACC8);
  sub_1D1741A30(v119, &qword_1EC64B850, &qword_1D1E9AD50);
  sub_1D1741A30(v117, &qword_1EC64B848, &qword_1D1E9AD48);
  sub_1D1741A30(v115, &qword_1EC64B840, &qword_1D1E9AD40);
  sub_1D1741A30(v111, &qword_1EC64B7A8, &qword_1D1E9ACA8);
  return sub_1D1741A30(v110, &qword_1EC64B7E0, &qword_1D1E9ACE0);
}

uint64_t sub_1D1B6D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticService(0);
    v20 = *(v19 - 8);
    sub_1D1B733D4(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticService);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticService(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0D124(v8, v12);
}

uint64_t sub_1D1B6DBBC(uint64_t a1, int a2, int a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D1B6DEC0(v10, v8, v6, a2, a3);
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
  v14 = sub_1D1B7032C(v13, v8, v6, a2, a3);
  result = MEMORY[0x1D3893640](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B6DD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v7 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v15 = swift_slowAlloc();
  v16 = sub_1D1B703BC(v15, v9, v7, a2, a4);
  result = MEMORY[0x1D3893640](v15, -1, -1);
  if (!v4)
  {
    result = v16;
  }

LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B6DEC0(unint64_t *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v53 = a5;
  v50 = a2;
  v70 = a4;
  v51 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = *(*(v60 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v67 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v50 - v9;
  v62 = type metadata accessor for StaticService(0);
  v59 = *(v62 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D1E66A7C();
  v12 = *(*(v68 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v68);
  v64 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v16 = 0;
  v61 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v57 = v14 + 16;
  v58 = v14;
  v55 = (v14 + 8);
  v56 = v23;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v63 = (v22 - 1) & v22;
LABEL_12:
    v27 = v24 | (v16 << 6);
    v28 = v61;
    v29 = *(v58 + 16);
    v30 = v64;
    v31 = v68;
    v29(v64, v61[6] + *(v58 + 72) * v27, v68);
    v32 = v28[7];
    v33 = *(v59 + 72);
    v54 = v27;
    v34 = v32 + v33 * v27;
    v35 = v65;
    sub_1D1B733D4(v34, v65, type metadata accessor for StaticService);
    v36 = v66;
    v29(v66, v30, v31);
    v37 = v60;
    v38 = v36 + *(v60 + 48);
    sub_1D1B733D4(v35, v38, type metadata accessor for StaticService);
    v39 = v67;
    sub_1D1741C08(v36, v67, &qword_1EC642DB0, &unk_1D1E6F360);
    v40 = v39 + *(v37 + 48);
    LOBYTE(v39) = *(v40 + *(v62 + 104));
    sub_1D1B70478(v40, type metadata accessor for StaticService);
    v71[2] = v39;
    v71[1] = v70;
    v41 = ServiceKind.rawValue.getter();
    v43 = v42;
    if (v41 == ServiceKind.rawValue.getter() && v43 == v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_1D1E6904C();
    }

    v46 = v55;

    v47 = *v46;
    (*v46)(v67, v68);
    if ((v45 & 1) == 0 || (v69 = *(v38 + *(v62 + 128)), v71[0] = v53, v72 = StaticCharacteristicsBag.int(for:)(v71), v72.is_nil))
    {
      sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v65, type metadata accessor for StaticService);
      result = (v47)(v64, v68);
      v23 = v56;
      v22 = v63;
    }

    else
    {
      value = v72.value;
      sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v65, type metadata accessor for StaticService);
      result = (v47)(v64, v68);
      v23 = v56;
      v22 = v63;
      if (value == 1)
      {
        *(v51 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v51, v50, v52, v61);
        }
      }
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      return sub_1D188B1C8(v51, v50, v52, v61);
    }

    v26 = v18[v16];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v63 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6E3C8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v50 = a2;
  v69 = a4;
  v51 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v59 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v59);
  v66 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v49 - v8;
  v61 = type metadata accessor for StaticService(0);
  v58 = *(v61 - 1);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D1E66A7C();
  v11 = *(*(v67 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v67);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v15 = 0;
  v60 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v56 = v13 + 16;
  v57 = v13;
  v54 = (v13 + 8);
  v55 = v22;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v62 = (v21 - 1) & v21;
LABEL_12:
    v26 = v23 | (v15 << 6);
    v27 = v60;
    v28 = *(v57 + 16);
    v29 = v63;
    v30 = v67;
    v28(v63, v60[6] + *(v57 + 72) * v26, v67);
    v31 = v27[7];
    v32 = *(v58 + 72);
    v53 = v26;
    v33 = v31 + v32 * v26;
    v34 = v64;
    sub_1D1B733D4(v33, v64, type metadata accessor for StaticService);
    v35 = v65;
    v28(v65, v29, v30);
    v36 = v59;
    v37 = v35 + *(v59 + 48);
    sub_1D1B733D4(v34, v37, type metadata accessor for StaticService);
    v38 = v66;
    sub_1D1741C08(v35, v66, &qword_1EC642DB0, &unk_1D1E6F360);
    v39 = v38 + *(v36 + 48);
    LOBYTE(v38) = *(v39 + v61[26]);
    sub_1D1B70478(v39, type metadata accessor for StaticService);
    v70[2] = v38;
    v70[1] = v69;
    v40 = ServiceKind.rawValue.getter();
    v42 = v41;
    if (v40 == ServiceKind.rawValue.getter() && v42 == v43)
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_1D1E6904C();
    }

    v45 = v54;

    v46 = *v45;
    (*v45)(v66, v67);
    if ((v44 & 1) != 0 && (v68 = *(v37 + v61[32]), v70[0] = 28, v71 = StaticCharacteristicsBag.int(for:)(v70), !v71.is_nil) && v71.value == 1)
    {
      v47 = *(v37 + v61[28]);
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v64, type metadata accessor for StaticService);
      result = (v46)(v63, v67);
      v22 = v55;
      v21 = v62;
      if (v47 == 53)
      {
        *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v51, v50, v52, v60);
        }
      }
    }

    else
    {
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v64, type metadata accessor for StaticService);
      result = (v46)(v63, v67);
      v22 = v55;
      v21 = v62;
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1D188B1C8(v51, v50, v52, v60);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v62 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6E8DC(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v67 = a2;
  v87 = a4;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v65 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v10 = *(*(v78 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v78);
  v86 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v65 - v13;
  v82 = type metadata accessor for StaticService(0);
  v77 = *(v82 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E66A7C();
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v80 = v21;
  v81 = a3;
  v23 = *(a3 + 64);
  v71 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v69 = 0;
  v70 = (v24 + 63) >> 6;
  v75 = v19 + 16;
  v76 = v19;
  v74 = (v19 + 8);
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v83 = (v26 - 1) & v26;
LABEL_14:
    v31 = v28 | (v22 << 6);
    v32 = v81;
    v33 = *(v76 + 16);
    v33(v21, v81[6] + *(v76 + 72) * v31, v16);
    v34 = v32[7];
    v35 = *(v77 + 72);
    v73 = v31;
    v36 = v84;
    sub_1D1B733D4(v34 + v35 * v31, v84, type metadata accessor for StaticService);
    v37 = v16;
    v38 = v85;
    v39 = v37;
    (v33)(v85, v21);
    v40 = v78;
    v41 = v38 + *(v78 + 48);
    sub_1D1B733D4(v36, v41, type metadata accessor for StaticService);
    v42 = v86;
    sub_1D1741C08(v38, v86, &qword_1EC642DB0, &unk_1D1E6F360);
    v43 = v42 + *(v40 + 48);
    LOBYTE(v40) = *(v43 + *(v82 + 104));
    sub_1D1B70478(v43, type metadata accessor for StaticService);
    v89 = v40;
    v88 = v87;
    v44 = ServiceKind.rawValue.getter();
    v46 = v45;
    if (v44 == ServiceKind.rawValue.getter() && v46 == v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = sub_1D1E6904C();
    }

    v49 = v79;
    v50 = v74;

    v27 = *v50;
    v16 = v39;
    (*v50)(v86, v39);
    if (v48)
    {
      v51 = v27;
      v52 = *(v41 + *(v82 + 128));
      if (*(v52 + 16) && (v53 = sub_1D171D140(83), (v54 & 1) != 0))
      {
        v55 = v53;
        v66 = *(v52 + 56);
        v56 = type metadata accessor for StaticCharacteristic();
        v57 = *(v56 - 8);
        sub_1D1B733D4(v66 + *(v57 + 72) * v55, v49, type metadata accessor for StaticCharacteristic);
        (*(v57 + 56))(v49, 0, 1, v56);
      }

      else
      {
        v56 = type metadata accessor for StaticCharacteristic();
        (*(*(v56 - 8) + 56))(v49, 1, 1, v56);
      }

      v58 = v49;
      v59 = v72;
      sub_1D1741A90(v58, v72, &qword_1EC643630, &qword_1D1E71D10);
      type metadata accessor for StaticCharacteristic();
      result = (*(*(v56 - 8) + 48))(v59, 1, v56);
      if (result == 1)
      {
        sub_1D1741A30(v59, &qword_1EC643630, &qword_1D1E71D10);
LABEL_5:
        v27 = v51;
        goto LABEL_6;
      }

      v60 = v59 + *(v56 + 24);
      v61 = *v60;
      v62 = *(v60 + 16);
      if (v62 > 2)
      {
        if (v62 > 4)
        {
          if (v62 == 5 || v62 == 6)
          {
            v63 = v61 == 1;
            if (v61 <= 1)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          if (v62 == 3)
          {
            v61 = v61;
          }

          else if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v63 = v61 == 1;
          if (v61 <= 1)
          {
LABEL_39:
            LOBYTE(v61) = v63;
            v21 = v80;
            goto LABEL_43;
          }
        }

        goto LABEL_48;
      }

      v21 = v80;
      if (v62)
      {
        if (v62 == 1)
        {
          v63 = v61 == 1;
          if (v61 <= 1uLL)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v63 = v61 == 1;
          if (v61 <= 1uLL)
          {
            goto LABEL_39;
          }
        }

LABEL_48:
        sub_1D1B70478(v59, type metadata accessor for StaticCharacteristic);
        goto LABEL_5;
      }

LABEL_43:
      sub_1D1B70478(v59, type metadata accessor for StaticCharacteristic);
      sub_1D1741A30(v85, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v84, type metadata accessor for StaticService);
      result = v51(v21, v16);
      v26 = v83;
      if (v61)
      {
        *(v68 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        if (__OFADD__(v69++, 1))
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_6:
      sub_1D1741A30(v85, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v84, type metadata accessor for StaticService);
      v21 = v80;
      result = v27(v80, v16);
      v26 = v83;
    }
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v70)
    {
      return sub_1D188B1C8(v68, v67, v69, v81);
    }

    v30 = *(v71 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v83 = (v30 - 1) & v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1D1B6F0B8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v50 = a2;
  v69 = a4;
  v51 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v59 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v59);
  v66 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v49 - v8;
  v61 = type metadata accessor for StaticService(0);
  v58 = *(v61 - 1);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D1E66A7C();
  v11 = *(*(v67 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v67);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v15 = 0;
  v60 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v56 = v13 + 16;
  v57 = v13;
  v54 = (v13 + 8);
  v55 = v22;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v62 = (v21 - 1) & v21;
LABEL_12:
    v26 = v23 | (v15 << 6);
    v27 = v60;
    v28 = *(v57 + 16);
    v29 = v63;
    v30 = v67;
    v28(v63, v60[6] + *(v57 + 72) * v26, v67);
    v31 = v27[7];
    v32 = *(v58 + 72);
    v53 = v26;
    v33 = v31 + v32 * v26;
    v34 = v64;
    sub_1D1B733D4(v33, v64, type metadata accessor for StaticService);
    v35 = v65;
    v28(v65, v29, v30);
    v36 = v59;
    v37 = v35 + *(v59 + 48);
    sub_1D1B733D4(v34, v37, type metadata accessor for StaticService);
    v38 = v66;
    sub_1D1741C08(v35, v66, &qword_1EC642DB0, &unk_1D1E6F360);
    v39 = v38 + *(v36 + 48);
    LOBYTE(v38) = *(v39 + v61[26]);
    sub_1D1B70478(v39, type metadata accessor for StaticService);
    v70[2] = v38;
    v70[1] = v69;
    v40 = ServiceKind.rawValue.getter();
    v42 = v41;
    if (v40 == ServiceKind.rawValue.getter() && v42 == v43)
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_1D1E6904C();
    }

    v45 = v54;

    v46 = *v45;
    (*v45)(v66, v67);
    if ((v44 & 1) != 0 && ((v68 = *(v37 + v61[32]), v70[0] = 28, v71 = StaticCharacteristicsBag.int(for:)(v70), v71.is_nil) || !v71.value))
    {
      v47 = *(v37 + v61[28]);
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v64, type metadata accessor for StaticService);
      result = (v46)(v63, v67);
      v22 = v55;
      v21 = v62;
      if (v47 == 53)
      {
        *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v51, v50, v52, v60);
        }
      }
    }

    else
    {
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v64, type metadata accessor for StaticService);
      result = (v46)(v63, v67);
      v22 = v55;
      v21 = v62;
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1D188B1C8(v51, v50, v52, v60);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v62 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B6F5C8(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v66 = a2;
  v86 = a4;
  v67 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v66 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v11 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v78);
  v85 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v66 - v14;
  v81 = type metadata accessor for StaticService(0);
  v77 = *(v81 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66A7C();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v79 = a3;
  v24 = *(a3 + 64);
  v70 = a3 + 64;
  v25 = 1 << *(a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v68 = 0;
  v69 = (v25 + 63) >> 6;
  v75 = v20 + 16;
  v76 = v20;
  v80 = (v20 + 8);
  v72 = v9;
  v74 = v22;
  do
  {
    do
    {
      while (1)
      {
        if (!v27)
        {
          v29 = v23;
          while (1)
          {
            v23 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v23 >= v69)
            {
              return sub_1D188B1C8(v67, v66, v68, v79);
            }

            v30 = *(v70 + 8 * v23);
            ++v29;
            if (v30)
            {
              v28 = __clz(__rbit64(v30));
              v82 = (v30 - 1) & v30;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
          return result;
        }

        v28 = __clz(__rbit64(v27));
        v82 = (v27 - 1) & v27;
        v31 = v28 | (v23 << 6);
        v32 = v79;
        v33 = *(v76 + 16);
        v33(v22, v79[6] + *(v76 + 72) * v31, v17);
        v34 = v32[7];
        v35 = *(v77 + 72);
        v73 = v31;
        v36 = v17;
        v37 = v83;
        sub_1D1B733D4(v34 + v35 * v31, v83, type metadata accessor for StaticService);
        v38 = v84;
        v39 = v22;
        v40 = v36;
        v33(v84, v39, v36);
        v41 = v78;
        v42 = v38 + *(v78 + 48);
        sub_1D1B733D4(v37, v42, type metadata accessor for StaticService);
        v43 = v85;
        sub_1D1741C08(v38, v85, &qword_1EC642DB0, &unk_1D1E6F360);
        v44 = v43 + *(v41 + 48);
        LOBYTE(v41) = *(v44 + *(v81 + 104));
        sub_1D1B70478(v44, type metadata accessor for StaticService);
        v88 = v41;
        v87 = v86;
        v45 = ServiceKind.rawValue.getter();
        v47 = v46;
        if (v45 != ServiceKind.rawValue.getter())
        {
          goto LABEL_15;
        }

LABEL_12:
        if (v47 == v48)
        {
          v49 = 1;
        }

        else
        {
LABEL_15:
          v49 = sub_1D1E6904C();
        }

        v50 = *v80;
        v17 = v40;
        (*v80)(v85, v40);
        if (v49)
        {
          break;
        }

        sub_1D1741A30(v84, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v83, type metadata accessor for StaticService);
        v22 = v74;
        result = v50(v74, v17);
        v27 = v82;
      }

      v51 = *(v42 + *(v81 + 128));
      v22 = v74;
      if (*(v51 + 16) && (v52 = sub_1D171D140(83), (v53 & 1) != 0))
      {
        v54 = v52;
        v55 = *(v51 + 56);
        v56 = type metadata accessor for StaticCharacteristic();
        v57 = *(v56 - 8);
        v58 = v55 + *(v57 + 72) * v54;
        v59 = v71;
        sub_1D1B733D4(v58, v71, type metadata accessor for StaticCharacteristic);
        (*(v57 + 56))(v59, 0, 1, v56);
      }

      else
      {
        v56 = type metadata accessor for StaticCharacteristic();
        v59 = v71;
        (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
      }

      v60 = v59;
      v61 = v72;
      sub_1D1741A90(v60, v72, &qword_1EC643630, &qword_1D1E71D10);
      type metadata accessor for StaticCharacteristic();
      result = (*(*(v56 - 8) + 48))(v61, 1, v56);
      if (result == 1)
      {
        sub_1D1741A30(v61, &qword_1EC643630, &qword_1D1E71D10);
LABEL_41:
        sub_1D1741A30(v84, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v83, type metadata accessor for StaticService);
        result = v50(v22, v17);
        v27 = v82;
        break;
      }

      v62 = v61 + *(v56 + 24);
      v63 = *v62;
      v64 = *(v62 + 16);
      if (v64 <= 2)
      {
        if (!v64)
        {
          goto LABEL_37;
        }

        if (v64 == 1)
        {
          v63 = v63;
        }

        else
        {
          v63 = v63;
        }
      }

      else if (v64 > 4)
      {
        if (v64 != 5 && v64 != 6)
        {
LABEL_40:
          sub_1D1B70478(v61, type metadata accessor for StaticCharacteristic);
          goto LABEL_41;
        }

        v63 = v63;
      }

      else if (v64 == 3)
      {
        v63 = v63;
      }

      else if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      if (v63 > 1)
      {
        goto LABEL_40;
      }

      LOBYTE(v63) = v63 == 1;
LABEL_37:
      sub_1D1B70478(v61, type metadata accessor for StaticCharacteristic);
      sub_1D1741A30(v84, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v83, type metadata accessor for StaticService);
      result = v50(v22, v17);
      v27 = v82;
    }

    while ((v63 & 1) != 0);
    *(v67 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
  }

  while (!__OFADD__(v68++, 1));
  __break(1u);
  return sub_1D188B1C8(v67, v66, v68, v79);
}

uint64_t sub_1D1B6FDD8(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v49 = a2;
  v68 = a4;
  v50 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v59 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v59);
  v66 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v48 - v8;
  v61 = type metadata accessor for StaticService(0);
  v58 = *(v61 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E66A7C();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v63 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v60 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v51 = 0;
  v52 = (v20 + 63) >> 6;
  v55 = v14 + 16;
  v56 = v14;
  v57 = result;
  v54 = (v14 + 8);
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v62 = (v22 - 1) & v22;
LABEL_12:
    v26 = v23 | (v16 << 6);
    v27 = v60;
    v28 = *(v56 + 16);
    v29 = v63;
    v28(v63, v60[6] + *(v56 + 72) * v26, v11);
    v30 = v27[7];
    v31 = *(v58 + 72);
    v53 = v26;
    v32 = v11;
    v33 = v64;
    sub_1D1B733D4(v30 + v31 * v26, v64, type metadata accessor for StaticService);
    v34 = v65;
    v28(v65, v29, v32);
    v35 = v59;
    v36 = v34 + *(v59 + 48);
    sub_1D1B733D4(v33, v36, type metadata accessor for StaticService);
    v37 = v66;
    sub_1D1741C08(v34, v66, &qword_1EC642DB0, &unk_1D1E6F360);
    v38 = v37 + *(v35 + 48);
    LOBYTE(v37) = *(v38 + *(v61 + 104));
    sub_1D1B70478(v38, type metadata accessor for StaticService);
    v69[2] = v37;
    v69[1] = v68;
    v39 = ServiceKind.rawValue.getter();
    v41 = v40;
    if (v39 == ServiceKind.rawValue.getter() && v41 == v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = sub_1D1E6904C();
    }

    v44 = v54;

    v45 = *v44;
    v11 = v57;
    (*v44)(v66, v57);
    if (v43)
    {
      v67 = *(v36 + *(v61 + 128));
      v69[0] = 89;
      v70 = StaticCharacteristicsBag.int(for:)(v69);
      if (v70.is_nil)
      {
        sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v64, type metadata accessor for StaticService);
        result = v45(v63, v11);
        v22 = v62;
LABEL_21:
        *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        if (__OFADD__(v51++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v50, v49, v51, v60);
        }
      }

      else
      {
        value = v70.value;
        sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1B70478(v64, type metadata accessor for StaticService);
        result = v45(v63, v11);
        v22 = v62;
        if (!value)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B70478(v64, type metadata accessor for StaticService);
      result = v45(v63, v11);
      v22 = v62;
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v52)
    {
      return sub_1D188B1C8(v50, v49, v51, v60);
    }

    v25 = v18[v16];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v62 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}