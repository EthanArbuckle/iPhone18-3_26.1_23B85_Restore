uint64_t sub_24EF55C54@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v1 = sub_24F920AF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v29 = sub_24F91ED78();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F8A8();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_24F91F9B8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_24F91ED68();
  sub_24F920AC8();
  v16 = (*(v2 + 88))(v4, v1);
  if (v16 == *MEMORY[0x277D0D160])
  {
    sub_24F920AD8();
    sub_24F91ED58();
  }

  else if (v16 == *MEMORY[0x277D0D158])
  {
    sub_24F920AD8();
    sub_24F91ED38();
  }

  else if (v16 == *MEMORY[0x277D0D138])
  {
    sub_24F920AD8();
    sub_24F91ECD8();
  }

  else if (v16 == *MEMORY[0x277D0D130])
  {
    sub_24F920AD8();
    sub_24F91ECB8();
  }

  else
  {
    if (v16 == *MEMORY[0x277D0D140])
    {
      v27 = sub_24F920AD8();
      v19 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000001ELL, 0x800000024FA64C80, v27);
      v24 = v28;
      goto LABEL_14;
    }

    if (v16 == *MEMORY[0x277D0D150])
    {
      sub_24F920AD8();
      sub_24F91ED18();
    }

    else if (v16 == *MEMORY[0x277D0D148])
    {
      sub_24F920AD8();
      sub_24F91ECF8();
    }

    else
    {
      (*(v2 + 8))(v4, v1);
    }
  }

  if (qword_27F210C80 != -1)
  {
    swift_once();
  }

  v17 = qword_27F234958;
  v18 = sub_24F91EC98();
  v19 = [v17 stringFromDateComponents_];

  if (v19)
  {
    v20 = sub_24F92B0D8();
    v22 = v21;

    v31 = v20;
    v32 = v22;
    sub_24E600AEC();
    v19 = sub_24F92C558();
    v24 = v23;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

LABEL_14:
  result = (*(v11 + 8))(v13, v29);
  v26 = v30;
  *v30 = v19;
  v26[1] = v24;
  return result;
}

unint64_t ChallengeDefinitionDetail.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v122 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = v118 - v3;
  v4 = sub_24F920A88();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v118[0] = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = v118 - v9;
  v147 = sub_24F920AF8();
  v123 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = sub_24F920B08();
  v137 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F974E30;
  *(inited + 32) = 25705;
  v118[1] = inited + 32;
  *(inited + 40) = 0xE200000000000000;
  v13 = *v1;
  v148 = v1[1];
  v14 = v148;
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v16;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 88) = 0x656C746974;
  *(inited + 96) = 0xE500000000000000;
  v17 = v1[2];
  v18 = v1[3];
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = 0x7470697263736564;
  *(inited + 152) = 0xEB000000006E6F69;
  v19 = v1[4];
  v20 = v1[5];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 184) = v127;
  v21 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
  *(inited + 160) = v19;
  *(inited + 168) = v20;
  v126 = v21;
  *(inited + 192) = v21;
  *(inited + 200) = 0x6B726F77747261;
  *(inited + 208) = 0xE700000000000000;
  v22 = type metadata accessor for ChallengeDefinitionDetail(0);
  v23 = v22[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 248) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v1 + v23, boxed_opaque_existential_1, &qword_27F213FB0);
  *(inited + 256) = 0x7669686372417369;
  *(inited + 264) = 0xEA00000000006465;
  v25 = *(v1 + v22[8]);
  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v27;
  *(inited + 272) = v25;
  strcpy((inited + 312), "isRepeatable");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  v28 = *(v1 + v22[9]);
  *(inited + 352) = v26;
  *(inited + 360) = v27;
  *(inited + 328) = v28;
  *(inited + 368) = 0x656C7552656D6974;
  *(inited + 376) = 0xEF736E6F6974704FLL;

  v29 = v123;

  sub_24EF57304((inited + 384));
  *(inited + 424) = 0xD000000000000014;
  *(inited + 432) = 0x800000024FA64BD0;
  v128 = inited;
  v129 = v22;
  v30 = v22[11];
  v130 = v1;
  v31 = *(v1 + v30);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (!v32)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_16:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580);
    v60 = v128;
    v128[58] = v59;
    v61 = sub_24EE88798();
    v60[55] = v36;
    v60[59] = v61;
    v60[60] = 0xD000000000000013;
    v60[61] = 0x800000024FA64BF0;
    v62 = v130;
    sub_24EF57808(v60 + 62);
    v60[67] = 0xD000000000000020;
    v60[68] = 0x800000024FA64C10;
    v63 = v129;
    v64 = (v62 + v129[14]);
    v65 = *v64;
    v66 = v64[1];
    v67 = v126;
    v60[72] = v127;
    v60[73] = v67;
    v60[69] = v65;
    v60[70] = v66;
    v60[74] = 0x6C62616B63617274;
    v60[75] = 0xE900000000000065;
    v68 = v63[13];
    v60[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
    v60[80] = sub_24EF5B368();
    v69 = __swift_allocate_boxed_opaque_existential_1(v60 + 76);
    sub_24E60169C(v62 + v68, v69, &qword_27F212A00);
    v60[81] = 0xD000000000000013;
    v60[82] = 0x800000024FA64C40;
    v60[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234970);
    v60[87] = sub_24EF5B484();
    v70 = *(v62 + v63[15]);
    if (v70)
    {
      v71 = *(v70 + 16);
      if (v71)
      {
        *&v153 = MEMORY[0x277D84F90];

        sub_24F458B9C(0, v71, 0);
        v72 = v153;
        v143 = *(v137 + 16);
        v73 = v70 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
        v74 = *(v137 + 72);
        v141 = (v123 + 8);
        v142 = v74;
        v140 = (v137 + 8);
        v139 = xmmword_24F93A400;
        v137 += 16;
        do
        {
          v148 = v72;
          v75 = v145;
          v143(v145, v73, v149);
          v76 = swift_allocObject();
          *(v76 + 16) = v139;
          *(v76 + 32) = 1953066613;
          *(v76 + 40) = 0xE400000000000000;
          v77 = v146;
          sub_24F920AC8();
          v78 = sub_24F920AE8();
          v80 = v79;
          (*v141)(v77, v147);
          *(v76 + 72) = MEMORY[0x277D837D0];
          v81 = MEMORY[0x277D22580];
          *(v76 + 48) = v78;
          *(v76 + 56) = v80;
          *(v76 + 80) = v81;
          *(v76 + 88) = 0x65756C6176;
          *(v76 + 96) = 0xE500000000000000;
          v82 = sub_24F920AD8();
          *(v76 + 128) = MEMORY[0x277D83B88];
          *(v76 + 136) = sub_24E65901C();
          *(v76 + 104) = v82;
          v83 = sub_24E607D0C(v76);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v84 = sub_24E80FFAC(v83);

          (*v140)(v75, v149);
          v72 = v148;
          *&v153 = v148;
          v86 = *(v148 + 16);
          v85 = *(v148 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_24F458B9C((v85 > 1), v86 + 1, 1);
            v72 = v153;
          }

          *(v72 + 16) = v86 + 1;
          *(v72 + 8 * v86 + 32) = v84;
          v73 += v142;
          --v71;
        }

        while (v71);
        v60 = v128;
        v128[83] = v72;
      }

      else
      {

        v60[83] = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v60[83] = 0;
    }

    strcpy(v60 + 704, "releaseState");
    *(v60 + 717) = 0;
    *(v60 + 359) = -5120;
    v87 = v126;
    v60[93] = v127;
    v60[94] = v87;
    v88 = v119;
    sub_24E60169C(v130 + v129[17], v119, &qword_27F219030);
    v89 = sub_24F920818();
    v90 = *(v89 - 8);
    if ((*(v90 + 48))(v88, 1, v89) == 1)
    {
      sub_24E601704(v88, &qword_27F219030);
      v91 = 0;
      v92 = 0;
    }

    else
    {
      v91 = sub_24F920808();
      v92 = v93;
      (*(v90 + 8))(v88, v89);
    }

    v94 = v128;
    v128[90] = v91;
    *(v94 + 728) = v92;
    v95 = sub_24E607D0C(v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
    swift_arrayDestroy();
    v96 = sub_24E80FFAC(v95);

    v156 = v96;
    v97 = v120;
    sub_24E60169C(v130 + v129[16], v120, &qword_27F2198F8);
    v99 = v124;
    v98 = v125;
    if ((*(v124 + 48))(v97, 1, v125) == 1)
    {
      sub_24E601704(v97, &qword_27F2198F8);
LABEL_39:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      v117 = v122;
      v122[3] = v116;
      result = sub_24E6060B8();
      v117[4] = result;
      *v117 = v96;
      return result;
    }

    v100 = v121;
    (*(v99 + 32))(v121, v97, v98);
    v101 = v118[0];
    (*(v99 + 16))(v118[0], v100, v98);
    v102 = (*(v99 + 88))(v101, v98);
    if (v102 == *MEMORY[0x277D0D0E8])
    {
      (*(v99 + 96))(v101, v98);
      v103 = *v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD10);
      v104 = swift_initStackObject();
      v149 = xmmword_24F93DE60;
      *(v104 + 16) = xmmword_24F93DE60;
      *(v104 + 32) = 0x646574696D696CLL;
      *(v104 + 40) = 0xE700000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18);
      v105 = swift_allocObject();
      *(v105 + 16) = v149;
      *(v105 + 32) = 0x746E756F63;
      v106 = v105 + 32;
      *(v105 + 40) = 0xE500000000000000;
      *(v105 + 48) = v103;
      v107 = sub_24E60B368(v105);
      swift_setDeallocating();
      sub_24E601704(v106, &qword_27F21BD20);
      swift_deallocClassInstance();
      *(v104 + 48) = v107;
      v108 = sub_24E60B464(v104);
      swift_setDeallocating();
      sub_24E601704(v104 + 32, &qword_27F21BD28);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD30);
      *(&v154 + 1) = v109;
      v110 = sub_24EF5B508();
    }

    else
    {
      if (v102 != *MEMORY[0x277D0D0F0])
      {
        *(&v154 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
        v155 = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
        *&v153 = MEMORY[0x277D84F98];
        (*(v99 + 8))(v101, v98);
        v109 = *(&v154 + 1);
LABEL_36:
        if (v109)
        {
          v151[0] = v153;
          v151[1] = v154;
          v152 = v155;
          v114 = v156;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = v114;
          sub_24E82115C(v151, 0xD000000000000012, 0x800000024FA64C60, isUniquelyReferenced_nonNull_native);
          (*(v124 + 8))(v121, v125);
          v96 = v150;
        }

        else
        {
          sub_24E601704(&v153, &qword_27F234980);
          sub_24E990028(0xD000000000000012, 0x800000024FA64C60, v151);
          sub_24E601704(v151, &qword_27F234980);
          (*(v124 + 8))(v121, v125);
          v96 = v156;
        }

        goto LABEL_39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD50);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_24F93DE60;
      *(v111 + 32) = 0x6574696D696C6E75;
      v112 = v111 + 32;
      v113 = MEMORY[0x277D84F98];
      *(v111 + 40) = 0xE900000000000064;
      *(v111 + 48) = v113;
      v108 = sub_24E60B478(v111);
      swift_setDeallocating();
      sub_24E601704(v112, &qword_27F21BD58);
      swift_deallocClassInstance();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD60);
      *(&v154 + 1) = v109;
      v110 = sub_24EF5B58C();
    }

    v155 = v110;
    *&v153 = v108;
    goto LABEL_36;
  }

  *&v153 = MEMORY[0x277D84F90];
  result = sub_24F458B5C(0, v32, 0);
  v35 = 0;
  v36 = v153;
  v133 = v31 + 32;
  v140 = (v29 + 8);
  v141 = (v137 + 16);
  *&v139 = v137 + 8;
  v138 = xmmword_24F93A400;
  v37 = v137;
  v131 = v32;
  v132 = v31;
  while (v35 < *(v31 + 16))
  {
    v38 = *(v133 + 8 * v35);
    v39 = *(v38 + 16);
    if (v39)
    {
      v135 = v35;
      v136 = v36;
      *&v151[0] = v33;

      v148 = v39;
      sub_24F458B9C(0, v39, 0);
      v40 = *&v151[0];
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v134 = v38;
      v42 = v38 + v41;
      v43 = *(v37 + 72);
      v142 = *(v37 + 16);
      v143 = v43;
      do
      {
        v44 = v145;
        v142(v145, v42, v149);
        v45 = swift_allocObject();
        *(v45 + 16) = v138;
        *(v45 + 32) = 1953066613;
        *(v45 + 40) = 0xE400000000000000;
        v46 = v146;
        sub_24F920AC8();
        v47 = sub_24F920AE8();
        v49 = v48;
        (*v140)(v46, v147);
        *(v45 + 72) = MEMORY[0x277D837D0];
        v50 = MEMORY[0x277D22580];
        *(v45 + 48) = v47;
        *(v45 + 56) = v49;
        *(v45 + 80) = v50;
        *(v45 + 88) = 0x65756C6176;
        *(v45 + 96) = 0xE500000000000000;
        v51 = sub_24F920AD8();
        *(v45 + 128) = MEMORY[0x277D83B88];
        *(v45 + 136) = sub_24E65901C();
        *(v45 + 104) = v51;
        v52 = sub_24E607D0C(v45);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v53 = sub_24E80FFAC(v52);

        (*v139)(v44, v149);
        *&v151[0] = v40;
        v55 = *(v40 + 16);
        v54 = *(v40 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_24F458B9C((v54 > 1), v55 + 1, 1);
          v40 = *&v151[0];
        }

        *(v40 + 16) = v55 + 1;
        *(v40 + 8 * v55 + 32) = v53;
        v42 += v143;
        --v148;
      }

      while (v148);

      v36 = v136;
      v37 = v137;
      v33 = MEMORY[0x277D84F90];
      v32 = v131;
      v31 = v132;
      v35 = v135;
      v56 = v40;
    }

    else
    {
      v56 = v33;
    }

    *&v153 = v36;
    v58 = *(v36 + 16);
    v57 = *(v36 + 24);
    if (v58 >= v57 >> 1)
    {
      v148 = v56;
      result = sub_24F458B5C((v57 > 1), v58 + 1, 1);
      v56 = v148;
      v36 = v153;
    }

    ++v35;
    *(v36 + 16) = v58 + 1;
    *(v36 + 8 * v58 + 32) = v56;
    if (v35 == v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF57304@<X0>(void *a1@<X8>)
{
  v46 = sub_24F920AF8();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F920B08();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for ChallengeDefinitionDetail(0) + 40));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v33 = a1;
    v50 = MEMORY[0x277D84F90];
    result = sub_24F458B5C(0, v10, 0);
    v13 = 0;
    v14 = v50;
    v37 = v9 + 32;
    v44 = v6 + 16;
    v43 = (v3 + 8);
    v42 = (v6 + 8);
    v41 = xmmword_24F93A400;
    v36 = v6;
    v35 = v9;
    v34 = v10;
    while (v13 < *(v9 + 16))
    {
      v15 = *(v37 + 8 * v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        v40 = v13;
        v39 = v14;
        v49 = v11;

        sub_24F458B9C(0, v16, 0);
        v17 = v49;
        v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v38 = v15;
        v19 = v15 + v18;
        v48 = *(v6 + 72);
        v47 = *(v6 + 16);
        do
        {
          v20 = v45;
          v47(v8, v19, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
          inited = swift_initStackObject();
          *(inited + 16) = v41;
          *(inited + 32) = 1953066613;
          *(inited + 40) = 0xE400000000000000;
          sub_24F920AC8();
          v22 = sub_24F920AE8();
          v24 = v23;
          (*v43)(v5, v46);
          *(inited + 72) = MEMORY[0x277D837D0];
          v25 = MEMORY[0x277D22580];
          *(inited + 48) = v22;
          *(inited + 56) = v24;
          *(inited + 80) = v25;
          *(inited + 88) = 0x65756C6176;
          *(inited + 96) = 0xE500000000000000;
          v26 = sub_24F920AD8();
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 136) = sub_24E65901C();
          *(inited + 104) = v26;
          v27 = sub_24E607D0C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
          swift_arrayDestroy();
          v28 = sub_24E80FFAC(v27);

          (*v42)(v8, v20);
          v49 = v17;
          v30 = *(v17 + 16);
          v29 = *(v17 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_24F458B9C((v29 > 1), v30 + 1, 1);
            v17 = v49;
          }

          *(v17 + 16) = v30 + 1;
          *(v17 + 8 * v30 + 32) = v28;
          v19 += v48;
          --v16;
        }

        while (v16);

        v6 = v36;
        v11 = MEMORY[0x277D84F90];
        v9 = v35;
        v10 = v34;
        v14 = v39;
        v13 = v40;
      }

      else
      {
        v17 = v11;
      }

      v50 = v14;
      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      if (v32 >= v31 >> 1)
      {
        v40 = v13;
        result = sub_24F458B5C((v31 > 1), v32 + 1, 1);
        v13 = v40;
        v14 = v50;
      }

      ++v13;
      *(v14 + 16) = v32 + 1;
      *(v14 + 8 * v32 + 32) = v17;
      if (v13 == v10)
      {
        a1 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_16:
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580);
    result = sub_24EE88798();
    a1[4] = result;
    *a1 = v14;
  }

  return result;
}

unint64_t sub_24EF57808@<X0>(void *a1@<X8>)
{
  v3 = sub_24F920A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *(v1 + *(type metadata accessor for ChallengeDefinitionDetail(0) + 48));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_24F458B9C(0, v11, 0);
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v44 = v14;
    v15 = (v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v43 = (v13 + 72);
    v42 = (v13 - 8);
    v38 = (v13 + 80);
    v12 = v47;
    v41 = *(v13 + 56);
    v40 = *MEMORY[0x277D0D0E8];
    v37 = *MEMORY[0x277D0D0F0];
    v46 = xmmword_24F93DE60;
    v45 = v13;
    while (1)
    {
      v16 = v44;
      v44(v9, v15, v3);
      v16(v6, v9, v3);
      v17 = (*v43)(v6, v3);
      if (v17 == v40)
      {
        (*v38)(v6, v3);
        v39 = *v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        *(inited + 32) = 0x646574696D696CLL;
        *(inited + 40) = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18);
        v19 = swift_initStackObject();
        *(v19 + 16) = v46;
        v20 = v11;
        v21 = v12;
        v22 = v3;
        v23 = v6;
        v24 = v9;
        *(v19 + 32) = 0x746E756F63;
        v25 = v19 + 32;
        v26 = v39;
        *(v19 + 40) = 0xE500000000000000;
        *(v19 + 48) = v26;
        v39 = sub_24E60B368(v19);
        swift_setDeallocating();
        v27 = v25;
        v9 = v24;
        v6 = v23;
        v3 = v22;
        v12 = v21;
        v11 = v20;
        sub_24E601704(v27, &qword_27F21BD20);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
        *(inited + 80) = sub_24E776EC0();
        *(inited + 48) = v39;
        v28 = sub_24E607D0C(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F212F18);
        v29 = sub_24E80FFAC(v28);
      }

      else
      {
        if (v17 != v37)
        {
          v32 = *v42;
          (*v42)(v9, v3);
          v32(v6, v3);
          v29 = MEMORY[0x277D84F98];
          goto LABEL_9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = 0x6574696D696C6E75;
        *(v30 + 40) = 0xE900000000000064;
        *(v30 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
        *(v30 + 80) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
        *(v30 + 48) = MEMORY[0x277D84F98];
        v31 = sub_24E607D0C(v30);
        swift_setDeallocating();
        sub_24E601704(v30 + 32, &qword_27F212F18);
        v29 = sub_24E80FFAC(v31);
      }

      (*v42)(v9, v3);
LABEL_9:
      v47 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24F458B9C((v33 > 1), v34 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v34 + 1;
      *(v12 + 8 * v34 + 32) = v29;
      v15 += v41;
      if (!--v11)
      {
        a1 = v36;
        break;
      }
    }
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232570);
  result = sub_24EE886F4();
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t sub_24EF57D8C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = 0x7669686372417369;
      break;
    case 5:
      result = 0x7461657065527369;
      break;
    case 6:
      result = 0x656C7552656D6974;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6C62616B63617274;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x53657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EF57F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EF5CA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EF57F9C(uint64_t a1)
{
  v2 = sub_24EF5B630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF57FD8(uint64_t a1)
{
  v2 = sub_24EF5B630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDefinitionDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234988);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24EF5B630();
  v68 = v16;
  v21 = v69;
  sub_24F92D108();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v22 = v13;
  v61 = v7;
  v62 = v10;
  v23 = v66;
  v24 = v67;
  v69 = v17;
  v63 = v19;
  LOBYTE(v72) = 0;
  v25 = v68;
  v26 = sub_24F92CC28();
  v28 = v63;
  *v63 = v26;
  v28[1] = v29;
  LOBYTE(v72) = 1;
  v28[2] = sub_24F92CC28();
  v28[3] = v30;
  LOBYTE(v72) = 2;
  v59 = 0;
  v31 = sub_24F92CBC8();
  v60 = 0;
  v28[4] = v31;
  v28[5] = v32;
  sub_24F9289E8();
  LOBYTE(v72) = 3;
  sub_24EF5B41C(&qword_27F214018, MEMORY[0x277D21C48]);
  v33 = v60;
  sub_24F92CC18();
  v60 = v33;
  if (v33)
  {
    (*(v23 + 8))(v25, v24);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_9;
  }

  v38 = v69;
  sub_24E6009C8(v22, v28 + v69[7], &qword_27F213FB0);
  LOBYTE(v72) = 4;
  v39 = v60;
  v40 = sub_24F92CC38();
  if (v39 || (*(v28 + v38[8]) = v40 & 1, LOBYTE(v72) = 5, v41 = sub_24F92CC38(), v60 = 0, *(v28 + v38[9]) = v41 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234998), v71 = 6, sub_24EF5B684(), v39 = v60, sub_24F92CC68(), v39))
  {
    v60 = v39;
    (*(v23 + 8))(v68, v24);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 1;
    goto LABEL_9;
  }

  *(v28 + v38[10]) = v72;
  v71 = 7;
  sub_24F92CC68();
  v60 = 0;
  *(v28 + v38[11]) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349A8);
  v71 = 8;
  sub_24EF5B708();
  v43 = v68;
  v44 = v60;
  sub_24F92CC68();
  v60 = v44;
  if (v44)
  {
    (*(v23 + 8))(v43, v24);
    v37 = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_9;
  }

  *(v28 + v69[12]) = v72;
  type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  LOBYTE(v72) = 9;
  sub_24EF5B41C(&qword_27F2349B8, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  v45 = v60;
  sub_24F92CC18();
  v60 = v45;
  if (v45)
  {
    (*(v23 + 8))(v68, v67);
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v28 = v63;
LABEL_9:
    v42 = v59;
    __swift_destroy_boxed_opaque_existential_1(v70);

    if (!v42)
    {
    }

    if (v34)
    {
      result = sub_24E601704(v28 + v69[7], &qword_27F213FB0);
      if (v35)
      {
LABEL_13:

        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    else if (v35)
    {
      goto LABEL_13;
    }

    if (!v36)
    {
LABEL_14:
      if (!v37)
      {
        return result;
      }
    }

LABEL_18:

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  sub_24E6009C8(v62, v63 + v69[13], &qword_27F212A00);
  LOBYTE(v72) = 10;
  v46 = v60;
  v47 = sub_24F92CBC8();
  v49 = v46;
  if (v46)
  {
    (*(v23 + 8))(v68, v67);
    v50 = 0;
    v51 = 0;
    v60 = v46;
  }

  else
  {
    v52 = (v63 + v69[14]);
    *v52 = v47;
    v52[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0);
    v71 = 11;
    sub_24EE88870();
    sub_24F92CC18();
    v60 = 0;
    *(v63 + v69[15]) = v72;
    sub_24F920A88();
    LOBYTE(v72) = 12;
    sub_24EF5B41C(&qword_27F2325B8, MEMORY[0x277D0D0F8]);
    v53 = v60;
    sub_24F92CC18();
    v60 = v53;
    if (v53)
    {
      (*(v23 + 8))(v68, v67);
      v51 = 0;
      v50 = 1;
    }

    else
    {
      sub_24E6009C8(v61, v63 + v69[16], &qword_27F2198F8);
      sub_24F920818();
      LOBYTE(v72) = 13;
      sub_24EF5B41C(&qword_27F21E378, MEMORY[0x277D0CF00]);
      v54 = v60;
      sub_24F92CC18();
      v60 = v54;
      if (!v54)
      {
        (*(v23 + 8))(v68, v67);
        v57 = v63;
        sub_24E6009C8(v65, v63 + v69[17], &qword_27F219030);
        sub_24EF5C1F4(v57, v64, type metadata accessor for ChallengeDefinitionDetail);
        __swift_destroy_boxed_opaque_existential_1(v70);
        return sub_24EF5C310(v57, type metadata accessor for ChallengeDefinitionDetail);
      }

      (*(v23 + 8))(v68, v67);
      v50 = 1;
      v51 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v55 = v63;

  v56 = v69;
  sub_24E601704(v55 + v69[7], &qword_27F213FB0);

  result = sub_24E601704(v55 + v56[13], &qword_27F212A00);
  if (v49)
  {
    if (v50)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v50)
    {
LABEL_34:

      if (v51)
      {
        return sub_24E601704(v63 + v69[16], &qword_27F2198F8);
      }

      return result;
    }
  }

  if (v51)
  {
    return sub_24E601704(v63 + v69[16], &qword_27F2198F8);
  }

  return result;
}

void sub_24EF58B84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24EF5929C(v7, v8, a1, v4);
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
    sub_24EF58C8C(0, v2, 1, a1);
  }
}

void sub_24EF58C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = a1;
  v65 = sub_24F920AF8();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v42 - v10;
  v11 = sub_24F920B08();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v43 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v64 = v50 + 16;
    v18 = (v7 + 88);
    v63 = *MEMORY[0x277D0D160];
    v58 = *MEMORY[0x277D0D158];
    v57 = *MEMORY[0x277D0D138];
    v56 = *MEMORY[0x277D0D130];
    v54 = *MEMORY[0x277D0D140];
    v49 = *MEMORY[0x277D0D150];
    v44 = (v7 + 8);
    v19 = (v50 + 8);
    v45 = *MEMORY[0x277D0D148];
    v47 = v17;
    do
    {
      v20 = *(v17 + 8 * a3);
      v21 = a3;
      v48 = a3;
      do
      {
        v52 = v20;
        v53 = v21;
        v51 = v21 - 1;
        v22 = *(v20 + 16);
        v55 = *(v17 + 8 * (v21 - 1));
        if (v22)
        {
          v23 = v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v24 = *(v50 + 72);
          v61 = *(v50 + 16);
          v62 = v24;

          v25 = 0.0;
          while (1)
          {
            v61(v16, v23, v11);
            v29 = v60;
            sub_24F920AC8();
            v30 = (*v18)(v29, v65);
            v27 = 1.0;
            if (v30 != v63)
            {
              if (v30 == v58)
              {
                v26 = 0x404E000000000000;
              }

              else if (v30 == v57)
              {
                v26 = 0x40AC200000000000;
              }

              else if (v30 == v56)
              {
                v26 = 0x40F5180000000000;
              }

              else if (v30 == v54)
              {
                v26 = 0x4122750000000000;
              }

              else if (v30 == v49)
              {
                v26 = 0x4143C68000000000;
              }

              else
              {
                if (v30 != v45)
                {
                  (*v44)(v60, v65);
                  goto LABEL_10;
                }

                v26 = 0x417E133800000000;
              }

              v27 = *&v26;
            }

LABEL_10:
            v28 = sub_24F920AD8();
            (*v19)(v16, v11);
            v25 = v25 + v27 * v28;
            v23 += v62;
            if (!--v22)
            {
              goto LABEL_25;
            }
          }
        }

        v25 = 0.0;
LABEL_25:
        v31 = *(v55 + 16);
        if (v31)
        {
          v32 = v55 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v33 = *(v50 + 72);
          v61 = *(v50 + 16);
          v62 = v33;
          v34 = 0.0;
          v61(v13, v32, v11);
          while (1)
          {
            v38 = v59;
            sub_24F920AC8();
            v39 = (*v18)(v38, v65);
            v36 = 1.0;
            if (v39 != v63)
            {
              if (v39 == v58)
              {
                v35 = 0x404E000000000000;
LABEL_28:
                v36 = *&v35;
                goto LABEL_29;
              }

              if (v39 == v57)
              {
                v35 = 0x40AC200000000000;
                goto LABEL_28;
              }

              if (v39 == v56)
              {
                v35 = 0x40F5180000000000;
                goto LABEL_28;
              }

              if (v39 == v54)
              {
                v35 = 0x4122750000000000;
                goto LABEL_28;
              }

              if (v39 == v49)
              {
                v35 = 0x4143C68000000000;
                goto LABEL_28;
              }

              if (v39 == v45)
              {
                v35 = 0x417E133800000000;
                goto LABEL_28;
              }

              (*v44)(v59, v65);
            }

LABEL_29:
            v37 = sub_24F920AD8();
            (*v19)(v13, v11);
            v34 = v34 + v36 * v37;
            v32 += v62;
            if (!--v31)
            {

              goto LABEL_46;
            }

            v61(v13, v32, v11);
          }
        }

        v34 = 0.0;
LABEL_46:
        v17 = v47;
        v40 = v48;
        if (v25 >= v34)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v20 = *(v47 + 8 * v53);
        v41 = v51;
        *(v47 + 8 * v53) = *(v47 + 8 * v51);
        *(v17 + 8 * v41) = v20;
        v21 = v41;
      }

      while (v41 != v46);
      a3 = v40 + 1;
    }

    while (a3 != v43);
  }
}

void sub_24EF5929C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v140 = a1;
  v170 = sub_24F920AF8();
  v7 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v164 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v163 = &v138 - v10;
  MEMORY[0x28223BE20](v11);
  v156 = &v138 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v138 - v14;
  v15 = sub_24F920B08();
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v142 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v147 = MEMORY[0x277D84F90];
LABEL_169:
    if (*v140)
    {
      v4 = v147;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v143;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_171;
    }

    goto LABEL_208;
  }

  v157 = &v138 - v21;
  v158 = v24;
  v165 = v23;
  v138 = a4;
  v26 = 0;
  v169 = v22 + 16;
  v27 = (v7 + 88);
  v168 = *MEMORY[0x277D0D160];
  v166 = *MEMORY[0x277D0D158];
  v162 = *MEMORY[0x277D0D138];
  v28 = *MEMORY[0x277D0D130];
  v160 = *MEMORY[0x277D0D140];
  v161 = v28;
  v150 = *MEMORY[0x277D0D150];
  v146 = *MEMORY[0x277D0D148];
  v144 = (v7 + 8);
  v151 = v22;
  v29 = (v22 + 8);
  v147 = MEMORY[0x277D84F90];
  v167 = v18;
  while (1)
  {
    v30 = v26 + 1;
    v149 = v26;
    if (v26 + 1 < v25)
    {
      v139 = v25;
      v31 = *(*v142 + 8 * v30);
      v141 = *v142;
      v171 = *(v141 + 8 * v26);
      v172 = v31;

      v32 = v143;
      LODWORD(v152) = sub_24EF5528C(&v172, &v171);
      v143 = v32;
      if (v32)
      {

LABEL_179:

        return;
      }

      v148 = v139 - 1;
      while (v30 != v148)
      {
        v145 = v30 + 1;
        v34 = *(v141 + 8 * (v30 + 1));
        v35 = *(v141 + 8 * v30);
        v36 = *(v34 + 16);
        v154 = v35;
        v153 = v34;
        if (v36)
        {
          v37 = v34 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v159 = *(v151 + 72);
          v38 = *(v151 + 16);

          v39 = 0.0;
          v40 = v157;
          do
          {
            v38(v40, v37, v15);
            v41 = v156;
            sub_24F920AC8();
            v42 = (*v27)(v41, v170);
            v43 = 1.0;
            if (v42 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v42 == v166)
              {
                v43 = 60.0;
              }

              else if (v42 == v162)
              {
                v43 = 3600.0;
              }

              else if (v42 == v161)
              {
                v43 = 86400.0;
              }

              else if (v42 == v160)
              {
                v43 = 604800.0;
              }

              else if (v42 == v150)
              {
                v43 = 2592000.0;
              }

              else if (v42 == v146)
              {
                v43 = 31536000.0;
              }

              else
              {
                (*v144)(v156, v170);
              }
            }

            v40 = v157;
            v4 = sub_24F920AD8();
            (*v29)(v40, v15);
            v39 = v39 + v43 * v4;
            v37 += v159;
            --v36;
          }

          while (v36);
        }

        else
        {

          v39 = 0.0;
        }

        v44 = *(v154 + 16);
        if (v44)
        {
          v45 = v154 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v159 = *(v151 + 72);
          v46 = *(v151 + 16);
          v47 = 0.0;
          v46(v158, v45, v15);
          while (1)
          {
            v49 = v155;
            sub_24F920AC8();
            v50 = (*v27)(v49, v170);
            v51 = 1.0;
            if (v50 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v50 == v166)
              {
                v51 = 60.0;
              }

              else if (v50 == v162)
              {
                v51 = 3600.0;
              }

              else if (v50 == v161)
              {
                v51 = 86400.0;
              }

              else if (v50 == v160)
              {
                v51 = 604800.0;
              }

              else if (v50 == v150)
              {
                v51 = 2592000.0;
              }

              else if (v50 == v146)
              {
                v51 = 31536000.0;
              }

              else
              {
                (*v144)(v155, v170);
              }
            }

            v48 = v158;
            v4 = sub_24F920AD8();
            (*v29)(v48, v15);
            v47 = v47 + v51 * v4;
            v45 += v159;
            if (!--v44)
            {
              break;
            }

            v46(v48, v45, v15);
          }
        }

        else
        {

          v47 = 0.0;
        }

        v33 = v145;
        v30 = v145;
        if (((v152 ^ (v39 >= v47)) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v33 = v139;
LABEL_50:
      v30 = v33;
      if (v152)
      {
        v52 = v149;
        if (v33 < v149)
        {
          goto LABEL_201;
        }

        v53 = v33;
        if (v149 < v33)
        {
          v54 = 8 * v33 - 8;
          v55 = 8 * v149;
          do
          {
            if (v52 != --v53)
            {
              v56 = *v142;
              if (!*v142)
              {
                goto LABEL_205;
              }

              v57 = *(v56 + v55);
              *(v56 + v55) = *(v56 + v54);
              *(v56 + v54) = v57;
            }

            ++v52;
            v54 -= 8;
            v55 += 8;
          }

          while (v52 < v53);
        }
      }
    }

    v58 = v142[1];
    if (v30 >= v58)
    {
      v62 = v30;
      v61 = v149;
      if (v62 < v149)
      {
        goto LABEL_197;
      }

      goto LABEL_69;
    }

    v59 = v30 - v149;
    if (__OFSUB__(v30, v149))
    {
      goto LABEL_198;
    }

    v60 = v30;
    v61 = v149;
    if (v59 >= v138)
    {
LABEL_66:
      v62 = v60;
      if (v60 < v149)
      {
        goto LABEL_197;
      }

      goto LABEL_69;
    }

    if (__OFADD__(v149, v138))
    {
      goto LABEL_199;
    }

    if (v149 + v138 < v58)
    {
      v58 = v149 + v138;
    }

    if (v58 < v149)
    {
      break;
    }

    if (v60 == v58)
    {
      goto LABEL_66;
    }

    v141 = v58;
    v112 = *v142;
    v148 = *v142;
    while (2)
    {
      v113 = *(v112 + 8 * v60);
      v145 = v60;
      do
      {
        v154 = v60;
        v152 = v60 - 1;
        v114 = *(v113 + 16);
        v159 = *(v112 + 8 * (v60 - 1));
        v153 = v113;
        if (v114)
        {
          v115 = v113 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v116 = *(v151 + 72);
          v4 = *(v151 + 16);

          v117 = 0.0;
          do
          {
            (v4)(v18, v115, v15);
            v119 = v164;
            sub_24F920AC8();
            v120 = (*v27)(v119, v170);
            v121 = 1.0;
            if (v120 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v120 == v166)
              {
                v121 = 60.0;
              }

              else if (v120 == v162)
              {
                v121 = 3600.0;
              }

              else if (v120 == v161)
              {
                v121 = 86400.0;
              }

              else if (v120 == v160)
              {
                v121 = 604800.0;
              }

              else if (v120 == v150)
              {
                v121 = 2592000.0;
              }

              else if (v120 == v146)
              {
                v121 = 31536000.0;
              }

              else
              {
                (*v144)(v164, v170);
              }
            }

            v118 = sub_24F920AD8();
            (*v29)(v18, v15);
            v117 = v117 + v121 * v118;
            v115 += v116;
            --v114;
          }

          while (v114);
        }

        else
        {

          v117 = 0.0;
        }

        v122 = *(v159 + 16);
        if (v122)
        {
          v123 = v159 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v4 = *(v151 + 72);
          v124 = *(v151 + 16);
          v125 = 0.0;
          v124(v165, v123, v15);
          while (1)
          {
            v130 = v163;
            sub_24F920AC8();
            v131 = (*v27)(v130, v170);
            v127 = 1.0;
            if (v131 != v168)
            {
              if (v131 == v166)
              {
                v126 = 0x404E000000000000;
LABEL_143:
                v127 = *&v126;
                goto LABEL_144;
              }

              if (v131 == v162)
              {
                v126 = 0x40AC200000000000;
                goto LABEL_143;
              }

              if (v131 == v161)
              {
                v126 = 0x40F5180000000000;
                goto LABEL_143;
              }

              if (v131 == v160)
              {
                v126 = 0x4122750000000000;
                goto LABEL_143;
              }

              if (v131 == v150)
              {
                v126 = 0x4143C68000000000;
                goto LABEL_143;
              }

              if (v131 == v146)
              {
                v126 = 0x417E133800000000;
                goto LABEL_143;
              }

              (*v144)(v163, v170);
            }

LABEL_144:
            v128 = v165;
            v129 = sub_24F920AD8();
            (*v29)(v128, v15);
            v125 = v125 + v127 * v129;
            v123 += v4;
            if (!--v122)
            {

              v18 = v167;
              goto LABEL_161;
            }

            v124(v128, v123, v15);
          }
        }

        v125 = 0.0;
LABEL_161:
        v61 = v149;
        v112 = v148;
        if (v117 >= v125)
        {
          break;
        }

        if (!v148)
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        v113 = *(v148 + 8 * v154);
        v132 = v152;
        *(v148 + 8 * v154) = *(v148 + 8 * v152);
        *(v112 + 8 * v132) = v113;
        v60 = v132;
      }

      while (v132 != v61);
      v60 = v145 + 1;
      if (v145 + 1 != v141)
      {
        continue;
      }

      break;
    }

    v62 = v141;
    if (v141 < v61)
    {
      goto LABEL_197;
    }

LABEL_69:
    v145 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_24E615ED8(0, *(v147 + 2) + 1, 1, v147);
    }

    v64 = *(v147 + 2);
    v63 = *(v147 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v147 = sub_24E615ED8((v63 > 1), v64 + 1, 1, v147);
    }

    v66 = v147;
    *(v147 + 2) = v65;
    v67 = &v66[16 * v64];
    v68 = v145;
    *(v67 + 4) = v61;
    *(v67 + 5) = v68;
    if (!*v140)
    {
      goto LABEL_207;
    }

    if (v64)
    {
      while (1)
      {
        v69 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v70 = *(v147 + 4);
          v71 = *(v147 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_88:
          if (v73)
          {
            goto LABEL_186;
          }

          v86 = &v147[16 * v65];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_189;
          }

          v92 = &v147[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_192;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_193;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v65 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v96 = &v147[16 * v65];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_102:
        if (v91)
        {
          goto LABEL_188;
        }

        v99 = &v147[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_191;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_109:
        v107 = v69 - 1;
        if (v69 - 1 >= v65)
        {
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
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (!*v142)
        {
          goto LABEL_204;
        }

        v108 = *&v147[16 * v107 + 32];
        v4 = *&v147[16 * v69 + 40];
        v109 = v143;
        sub_24EF5A3E0(*v142 + 8 * v108, (*v142 + 8 * *&v147[16 * v69 + 32]), (*v142 + 8 * v4));
        v143 = v109;
        if (v109)
        {
          goto LABEL_179;
        }

        if (v4 < v108)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_24E86164C(v147);
        }

        v110 = v147;
        if (v107 >= *(v147 + 2))
        {
          goto LABEL_183;
        }

        v111 = &v147[16 * v107];
        *(v111 + 4) = v108;
        *(v111 + 5) = v4;
        v173 = v110;
        sub_24E8615C0(v69);
        v147 = v173;
        v65 = *(v173 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v147[16 * v65 + 32];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_184;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_185;
      }

      v81 = &v147[16 * v65];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_187;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_190;
      }

      if (v85 >= v77)
      {
        v103 = &v147[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_194;
        }

        if (v72 < v106)
        {
          v69 = v65 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v25 = v142[1];
    v26 = v145;
    if (v145 >= v25)
    {
      goto LABEL_169;
    }
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  v4 = sub_24E86164C(v4);
LABEL_171:
  v173 = v4;
  v134 = *(v4 + 16);
  if (v134 < 2)
  {
    goto LABEL_179;
  }

  while (*v142)
  {
    v135 = *(v4 + 16 * v134);
    v136 = *(v4 + 16 * (v134 - 1) + 40);
    sub_24EF5A3E0(*v142 + 8 * v135, (*v142 + 8 * *(v4 + 16 * (v134 - 1) + 32)), (*v142 + 8 * v136));
    if (v29)
    {
      goto LABEL_179;
    }

    if (v136 < v135)
    {
      goto LABEL_195;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_24E86164C(v4);
    }

    if (v134 - 2 >= *(v4 + 16))
    {
      goto LABEL_196;
    }

    v137 = (v4 + 16 * v134);
    *v137 = v135;
    v137[1] = v136;
    v173 = v4;
    sub_24E8615C0(v134 - 1);
    v4 = v173;
    v134 = *(v173 + 16);
    if (v134 <= 1)
    {
      goto LABEL_179;
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
}

uint64_t sub_24EF5A3E0(uint64_t a1, char *a2, char *a3)
{
  v110 = sub_24F920AF8();
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v86 - v7;
  MEMORY[0x28223BE20](v8);
  v103 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v86 - v11;
  v12 = sub_24F920B08();
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v86 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = a2;
  v26 = &v86 - v25;
  v27 = a2 - v23;
  v28 = v27 / 8;
  v91 = a3;
  v29 = a3 - v24;
  v30 = a3 - v24 + 7;
  if (a3 - v24 >= 0)
  {
    v30 = a3 - v24;
  }

  v31 = v30 >> 3;
  v99 = v22;
  if (v28 >= v30 >> 3)
  {
    v95 = v23;
    if (v22 != v24 || &v24[8 * v31] <= v22)
    {
      v60 = v24;
      memmove(v22, v24, 8 * v31);
      v24 = v60;
      v22 = v99;
    }

    v59 = v24;
    v100 = &v22[8 * v31];
    if (v29 < 8 || v24 <= v95)
    {
      goto LABEL_115;
    }

    v109 = v98 + 16;
    v61 = (v107 + 88);
    v108 = *MEMORY[0x277D0D160];
    LODWORD(v103) = *MEMORY[0x277D0D158];
    LODWORD(v102) = *MEMORY[0x277D0D138];
    v101 = *MEMORY[0x277D0D130];
    v96 = *MEMORY[0x277D0D140];
    v90 = *MEMORY[0x277D0D150];
    v87 = (v107 + 8);
    v62 = (v98 + 8);
    v88 = *MEMORY[0x277D0D148];
    v63 = v91;
LABEL_64:
    v94 = v59;
    v64 = v59 - 8;
    v65 = v100;
    v89 = v59 - 8;
    while (1)
    {
      v66 = *(v65 - 1);
      v92 = v63;
      v93 = v65 - 8;
      v67 = *(v66 + 2);
      v97 = *v64;
      v91 = v66;
      if (v67)
      {
        v68 = &v66[(*(v98 + 80) + 32) & ~*(v98 + 80)];
        v69 = *(v98 + 72);
        v106 = *(v98 + 16);
        v107 = v69;

        v70 = 0.0;
        while (1)
        {
          v106(v17, v68, v12);
          v74 = v105;
          sub_24F920AC8();
          v75 = (*v61)(v74, v110);
          v72 = 1.0;
          if (v75 != v108)
          {
            if (v75 == v103)
            {
              v71 = 0x404E000000000000;
            }

            else if (v75 == v102)
            {
              v71 = 0x40AC200000000000;
            }

            else if (v75 == v101)
            {
              v71 = 0x40F5180000000000;
            }

            else if (v75 == v96)
            {
              v71 = 0x4122750000000000;
            }

            else if (v75 == v90)
            {
              v71 = 0x4143C68000000000;
            }

            else
            {
              if (v75 != v88)
              {
                (*v87)(v105, v110);
                goto LABEL_70;
              }

              v71 = 0x417E133800000000;
            }

            v72 = *&v71;
          }

LABEL_70:
          v73 = sub_24F920AD8();
          (*v62)(v17, v12);
          v70 = v70 + v72 * v73;
          v68 += v107;
          if (!--v67)
          {
            goto LABEL_85;
          }
        }
      }

      v70 = 0.0;
LABEL_85:
      v76 = *(v97 + 16);
      if (v76)
      {
        break;
      }

      v79 = 0.0;
LABEL_106:
      v65 = v93;
      v63 = v92 - 8;
      v22 = v99;
      v64 = v89;
      if (v70 < v79)
      {
        if (v92 != v94)
        {
          *v63 = *v89;
        }

        if (v100 <= v22 || (v59 = v64, v64 <= v95))
        {
          v59 = v64;
          goto LABEL_115;
        }

        goto LABEL_64;
      }

      if (v92 != v100)
      {
        *v63 = *v93;
      }

      v100 = v65;
      if (v65 <= v22)
      {
        v100 = v65;
        v59 = v94;
        goto LABEL_115;
      }
    }

    v77 = v97 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v78 = *(v98 + 72);
    v106 = *(v98 + 16);
    v107 = v78;
    v79 = 0.0;
    v106(v14, v77, v12);
    while (1)
    {
      v83 = v104;
      sub_24F920AC8();
      v84 = (*v61)(v83, v110);
      v81 = 1.0;
      if (v84 != v108)
      {
        if (v84 == v103)
        {
          v80 = 0x404E000000000000;
LABEL_88:
          v81 = *&v80;
          goto LABEL_89;
        }

        if (v84 == v102)
        {
          v80 = 0x40AC200000000000;
          goto LABEL_88;
        }

        if (v84 == v101)
        {
          v80 = 0x40F5180000000000;
          goto LABEL_88;
        }

        if (v84 == v96)
        {
          v80 = 0x4122750000000000;
          goto LABEL_88;
        }

        if (v84 == v90)
        {
          v80 = 0x4143C68000000000;
          goto LABEL_88;
        }

        if (v84 == v88)
        {
          v80 = 0x417E133800000000;
          goto LABEL_88;
        }

        (*v87)(v104, v110);
      }

LABEL_89:
      v82 = sub_24F920AD8();
      (*v62)(v14, v12);
      v79 = v79 + v81 * v82;
      v77 += v107;
      if (!--v76)
      {

        goto LABEL_106;
      }

      v106(v14, v77, v12);
    }
  }

  v32 = v24;
  v33 = v23;
  if (v22 != v23 || &v23[8 * v28] <= v22)
  {
    memmove(v22, v23, 8 * v28);
    v22 = v99;
  }

  v100 = &v22[8 * v28];
  if (v27 >= 8)
  {
    v34 = v32;
    if (v32 < v91)
    {
      v109 = v98 + 16;
      v35 = (v107 + 88);
      v108 = *MEMORY[0x277D0D160];
      LODWORD(v105) = *MEMORY[0x277D0D158];
      LODWORD(v104) = *MEMORY[0x277D0D138];
      v101 = *MEMORY[0x277D0D130];
      v96 = *MEMORY[0x277D0D140];
      LODWORD(v92) = *MEMORY[0x277D0D150];
      v89 = (v107 + 8);
      v36 = (v98 + 8);
      v90 = *MEMORY[0x277D0D148];
      while (1)
      {
        v94 = v34;
        v95 = v33;
        v37 = *v34;
        v99 = v22;
        v38 = *(v37 + 2);
        v97 = *v22;
        v93 = v37;
        if (v38)
        {
          v39 = &v37[(*(v98 + 80) + 32) & ~*(v98 + 80)];
          v40 = *(v98 + 72);
          v106 = *(v98 + 16);
          v107 = v40;

          v41 = 0.0;
          while (1)
          {
            v106(v26, v39, v12);
            v45 = v103;
            sub_24F920AC8();
            v46 = (*v35)(v45, v110);
            v43 = 1.0;
            if (v46 != v108)
            {
              if (v46 == v105)
              {
                v42 = 0x404E000000000000;
              }

              else if (v46 == v104)
              {
                v42 = 0x40AC200000000000;
              }

              else if (v46 == v101)
              {
                v42 = 0x40F5180000000000;
              }

              else if (v46 == v96)
              {
                v42 = 0x4122750000000000;
              }

              else if (v46 == v92)
              {
                v42 = 0x4143C68000000000;
              }

              else
              {
                if (v46 != v90)
                {
                  (*v89)(v103, v110);
                  goto LABEL_14;
                }

                v42 = 0x417E133800000000;
              }

              v43 = *&v42;
            }

LABEL_14:
            v44 = sub_24F920AD8();
            (*v36)(v26, v12);
            v41 = v41 + v43 * v44;
            v39 += v107;
            if (!--v38)
            {
              goto LABEL_29;
            }
          }
        }

        v41 = 0.0;
LABEL_29:
        v47 = *(v97 + 16);
        if (v47)
        {
          v48 = v97 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v49 = *(v98 + 72);
          v106 = *(v98 + 16);
          v107 = v49;
          v50 = 0.0;
          v106(v20, v48, v12);
          while (1)
          {
            v54 = v102;
            sub_24F920AC8();
            v55 = (*v35)(v54, v110);
            v52 = 1.0;
            if (v55 != v108)
            {
              if (v55 == v105)
              {
                v51 = 0x404E000000000000;
LABEL_32:
                v52 = *&v51;
                goto LABEL_33;
              }

              if (v55 == v104)
              {
                v51 = 0x40AC200000000000;
                goto LABEL_32;
              }

              if (v55 == v101)
              {
                v51 = 0x40F5180000000000;
                goto LABEL_32;
              }

              if (v55 == v96)
              {
                v51 = 0x4122750000000000;
                goto LABEL_32;
              }

              if (v55 == v92)
              {
                v51 = 0x4143C68000000000;
                goto LABEL_32;
              }

              if (v55 == v90)
              {
                v51 = 0x417E133800000000;
                goto LABEL_32;
              }

              (*v89)(v102, v110);
            }

LABEL_33:
            v53 = sub_24F920AD8();
            (*v36)(v20, v12);
            v50 = v50 + v52 * v53;
            v48 += v107;
            if (!--v47)
            {

              goto LABEL_50;
            }

            v106(v20, v48, v12);
          }
        }

        v50 = 0.0;
LABEL_50:
        v56 = v91;
        v22 = v99;
        v34 = v94;
        v57 = v95;
        if (v41 >= v50)
        {
          break;
        }

        v58 = v94;
        v34 = v94 + 8;
        if (v95 != v94)
        {
          goto LABEL_54;
        }

LABEL_55:
        v33 = v57 + 8;
        if (v22 >= v100 || v34 >= v56)
        {
          goto LABEL_57;
        }
      }

      v58 = v99;
      v22 = v99 + 8;
      if (v95 == v99)
      {
        goto LABEL_55;
      }

LABEL_54:
      *v95 = *v58;
      goto LABEL_55;
    }
  }

LABEL_57:
  v59 = v33;
LABEL_115:
  if (v59 != v22 || v59 >= &v22[(v100 - v22 + (v100 - v22 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v59, v22, 8 * ((v100 - v22) / 8));
  }

  return 1;
}

double sub_24EF5B040(uint64_t a1)
{
  v33 = sub_24F920AF8();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F920B08();
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v31 = *(v10 + 56);
    v32 = v11;
    v13 = (v2 + 88);
    v14 = *MEMORY[0x277D0D160];
    v30 = *MEMORY[0x277D0D158];
    v29 = *MEMORY[0x277D0D138];
    v28 = *MEMORY[0x277D0D130];
    v27 = *MEMORY[0x277D0D140];
    v26 = *MEMORY[0x277D0D150];
    v24 = (v2 + 8);
    v15 = (v10 - 8);
    v16 = 0.0;
    v25 = *MEMORY[0x277D0D148];
    while (1)
    {
      v20 = v10;
      v32(v8, v12, v5);
      sub_24F920AC8();
      v21 = (*v13)(v4, v33);
      v18 = 1.0;
      if (v21 != v14)
      {
        if (v21 == v30)
        {
          v17 = 0x404E000000000000;
        }

        else if (v21 == v29)
        {
          v17 = 0x40AC200000000000;
        }

        else if (v21 == v28)
        {
          v17 = 0x40F5180000000000;
        }

        else if (v21 == v27)
        {
          v17 = 0x4122750000000000;
        }

        else if (v21 == v26)
        {
          v17 = 0x4143C68000000000;
        }

        else
        {
          if (v21 != v25)
          {
            (*v24)(v4, v33);
            goto LABEL_5;
          }

          v17 = 0x417E133800000000;
        }

        v18 = *&v17;
      }

LABEL_5:
      v19 = sub_24F920AD8();
      (*v15)(v8, v5);
      v16 = v16 + v18 * v19;
      v12 += v31;
      --v9;
      v10 = v20;
      if (!v9)
      {
        return v16;
      }
    }
  }

  return 0.0;
}

unint64_t sub_24EF5B368()
{
  result = qword_27F234960;
  if (!qword_27F234960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212A00);
    sub_24EF5B41C(&qword_27F234968, type metadata accessor for ChallengeDefinitionDetail.Trackable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234960);
  }

  return result;
}

uint64_t sub_24EF5B41C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF5B484()
{
  result = qword_27F234978;
  if (!qword_27F234978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234970);
    sub_24EE886F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234978);
  }

  return result;
}

unint64_t sub_24EF5B508()
{
  result = qword_27F21BD38;
  if (!qword_27F21BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BD30);
    sub_24E776EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD38);
  }

  return result;
}

unint64_t sub_24EF5B58C()
{
  result = qword_27F21BD68;
  if (!qword_27F21BD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BD60);
    sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD68);
  }

  return result;
}

unint64_t sub_24EF5B630()
{
  result = qword_27F234990;
  if (!qword_27F234990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234990);
  }

  return result;
}

unint64_t sub_24EF5B684()
{
  result = qword_27F2349A0;
  if (!qword_27F2349A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234998);
    sub_24EE88870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2349A0);
  }

  return result;
}

unint64_t sub_24EF5B708()
{
  result = qword_27F2349B0;
  if (!qword_27F2349B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2349A8);
    sub_24EF5B41C(&qword_27F2325B8, MEMORY[0x277D0D0F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2349B0);
  }

  return result;
}

uint64_t sub_24EF5B7D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

uint64_t sub_24EF5B9C8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[17];

  return v16(v17, a2, a2, v15);
}

void sub_24EF5BBAC()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24EF5BE0C(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24EF5BE70(319, &qword_27F2349D0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24EF5BE0C(319, &qword_27F2349D8, MEMORY[0x277D0D0F8], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24EF5BE0C(319, &qword_27F2349E0, type metadata accessor for ChallengeDefinitionDetail.Trackable, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24EF5BE70(319, &qword_27F2349E8, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24EF5BE0C(319, &qword_27F2349F0, MEMORY[0x277D0D0F8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24EF5BE0C(319, &qword_27F21E390, MEMORY[0x277D0CF00], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_24EF5BE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EF5BE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24EF5BEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349F8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EF5BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_24EF5BFEC(uint64_t a1)
{
  sub_24EF5C0A4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for Leaderboard(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_24EF5C0A4()
{
  if (!qword_27F234A10)
  {
    v0 = type metadata accessor for Leaderboard(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F234A10);
    }
  }
}

unint64_t sub_24EF5C0F0()
{
  result = qword_27F234A18;
  if (!qword_27F234A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A18);
  }

  return result;
}

unint64_t sub_24EF5C148()
{
  result = qword_27F234A20;
  if (!qword_27F234A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A20);
  }

  return result;
}

unint64_t sub_24EF5C1A0()
{
  result = qword_27F234A28;
  if (!qword_27F234A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A28);
  }

  return result;
}

uint64_t sub_24EF5C1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF5C25C()
{
  result = qword_27F234A38;
  if (!qword_27F234A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2307E8);
    sub_24EF5B41C(&qword_27F21B450, type metadata accessor for Leaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A38);
  }

  return result;
}

uint64_t sub_24EF5C310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24EF5C370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v48 - v6);
  v8 = sub_24F920A88();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v54 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v15;
  if (!*(a1 + 16))
  {
    v18 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v16 = sub_24E76D644(0x626179616C706572, 0xEA0000000000656CLL);
  if (v17)
  {
    v18 = *(*(a1 + 56) + 8 * v16);

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v19 = sub_24E76D644(0x6C7065722D6E6F6ELL, 0xEE00656C62617961);
  if (v20)
  {
    v55 = *(*(a1 + 56) + 8 * v19);

    goto LABEL_10;
  }

LABEL_9:
  v55 = MEMORY[0x277D84F90];
LABEL_10:

  v22 = *(v18 + 16);
  v52 = v4;
  v53 = v22;
  if (v22)
  {
    v23 = 0;
    v24 = (v56 + 48);
    v25 = (v56 + 32);
    v26 = (v18 + 40);
    v57 = MEMORY[0x277D84F90];
    while (v23 < *(v18 + 16))
    {
      v27 = v18;
      v28 = *(v26 - 1);
      v29 = *v26;

      sub_24EF54554(v28, v29, v7);

      if ((*v24)(v7, 1, v8) == 1)
      {
        result = sub_24E601704(v7, &qword_27F2198F8);
      }

      else
      {
        v30 = *v25;
        v31 = v50;
        (*v25)(v50, v7, v8);
        v30(v54, v31, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_24E61852C(0, v57[2] + 1, 1, v57);
        }

        v33 = v57[2];
        v32 = v57[3];
        if (v33 >= v32 >> 1)
        {
          v57 = sub_24E61852C(v32 > 1, v33 + 1, 1, v57);
        }

        v34 = v56;
        v35 = v57;
        v57[2] = v33 + 1;
        result = (v30)(v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v54, v8);
        v4 = v52;
      }

      ++v23;
      v26 += 2;
      v18 = v27;
      if (v53 == v23)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
LABEL_22:

    result = v55;
    v36 = v55[2];
    if (!v36)
    {
LABEL_33:

      return v57;
    }

    v37 = 0;
    v38 = (v56 + 48);
    v39 = (v56 + 32);
    v40 = v55 + 5;
    v41 = MEMORY[0x277D84F90];
    while (v37 < result[2])
    {
      v43 = *(v40 - 1);
      v42 = *v40;

      sub_24EF54554(v43, v42, v4);

      if ((*v38)(v4, 1, v8) == 1)
      {
        sub_24E601704(v4, &qword_27F2198F8);
      }

      else
      {
        v44 = *v39;
        v45 = v49;
        (*v39)(v49, v4, v8);
        v44(v51, v45, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_24E61852C(0, *(v41 + 2) + 1, 1, v41);
        }

        v47 = *(v41 + 2);
        v46 = *(v41 + 3);
        if (v47 >= v46 >> 1)
        {
          v41 = sub_24E61852C(v46 > 1, v47 + 1, 1, v41);
        }

        *(v41 + 2) = v47 + 1;
        v44(&v41[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v47], v51, v8);
        v4 = v52;
      }

      ++v37;
      v40 += 2;
      result = v55;
      if (v36 == v37)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF5C904(uint64_t a1)
{
  v2 = sub_24F920A88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D0D0E8])
  {
    (*(v3 + 96))(v6, v2);
    return _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000025, 0x800000024FA64CA0, *v6);
  }

  else if (v7 == *MEMORY[0x277D0D0F0])
  {
    v9._countAndFlagsBits = 0xD000000000000027;
    v9._object = 0x800000024FA64CD0;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_24EF5CA94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669686372417369 && a2 == 0xEA00000000006465 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xEC000000656C6261 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xEF736E6F6974704FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA64BD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA64BF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C62616B63617274 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FA64C10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA64C40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA64C60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x53657361656C6572 && a2 == 0xEC00000065746174)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_24EF5CF0C()
{
  result = qword_27F234A50;
  if (!qword_27F234A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A50);
  }

  return result;
}

unint64_t sub_24EF5CF60()
{
  result = qword_27F234A58;
  if (!qword_27F234A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A58);
  }

  return result;
}

uint64_t sub_24EF5CFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF5D040()
{
  result = qword_27F234A78;
  if (!qword_27F234A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A78);
  }

  return result;
}

unint64_t sub_24EF5D098()
{
  result = qword_27F234A80;
  if (!qword_27F234A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A80);
  }

  return result;
}

unint64_t sub_24EF5D0F0()
{
  result = qword_27F234A88;
  if (!qword_27F234A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A88);
  }

  return result;
}

unint64_t sub_24EF5D148()
{
  result = qword_27F234A90;
  if (!qword_27F234A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A90);
  }

  return result;
}

unint64_t sub_24EF5D1A0()
{
  result = qword_27F234A98;
  if (!qword_27F234A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A98);
  }

  return result;
}

unint64_t sub_24EF5D1F8()
{
  result = qword_27F234AA0;
  if (!qword_27F234AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AA0);
  }

  return result;
}

uint64_t sub_24EF5D250()
{
  swift_getKeyPath();
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24EF5D2F0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EF5D400@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  return sub_24E798408(v5 + v3, a1);
}

uint64_t sub_24EF5D4C8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  sub_24EF5E20C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24EF5D534()
{
  v1 = v0;
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LeaderboardEntry();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  swift_getKeyPath();
  v21 = v0;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  sub_24E798408(v1 + v12, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_24E798478(v11);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    sub_24EF5E300(v11, v8, type metadata accessor for LeaderboardEntry);
    sub_24E798478(v11);
    sub_24EF5E300(&v8[*(v5 + 20)], v4, type metadata accessor for Player);
    sub_24EF5E368(v8, type metadata accessor for LeaderboardEntry);
    v14 = *v4;
    v15 = v4[1];

    sub_24EF5E368(v4, type metadata accessor for Player);
    v13 = sub_24F92B098();
  }

  v16 = [objc_opt_self() availableForPlayerID_];

  if ((v16 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for LocalPlayerProvider();
    sub_24F928F28();
    v17 = v20[4];
    swift_getKeyPath();
    v20[1] = v17;
    sub_24EF5E2B8(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
    sub_24F91FD88();

    v18 = (v17 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
    swift_beginAccess();
    v14 = *v18;

    return v14;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  return v14;
}

uint64_t sub_24EF5D8D4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EF5D9F4(uint64_t result)
{
  if (*(result + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
    sub_24F91FD78();
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_24EF5DB0C()
{
  v1 = type metadata accessor for LeaderboardEntry();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24EF5D534();
  v7 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager_visibilityTracker);
  swift_getKeyPath();
  v17[1] = v8;
  sub_24EF5E2B8(&qword_27F217F20, type metadata accessor for LeaderboardEntriesVisibilityTracker);
  sub_24F91FD88();

  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v9 + 16);

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (v10 == v12)
    {
      goto LABEL_11;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    sub_24EF5E300(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, type metadata accessor for LeaderboardEntry);
    v14 = &v4[*(v1 + 20)];
    if (*v14 == v5 && *(v14 + 1) == v7)
    {
      sub_24EF5E368(v4, type metadata accessor for LeaderboardEntry);
LABEL_11:

      return v10 != v13;
    }

    ++v12;
    v16 = sub_24F92CE08();
    result = sub_24EF5E368(v4, type metadata accessor for LeaderboardEntry);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF5DD4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v8 - 2) = v0;
    *(&v8 - 8) = 0;
    v9 = v0;
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
    sub_24F91FD78();
  }

  else
  {
    *(v0 + 16) = 0;
  }

  v5 = type metadata accessor for LeaderboardEntry();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_getKeyPath();
  MEMORY[0x28223BE20](v6);
  *(&v8 - 2) = v0;
  *(&v8 - 1) = v3;
  v9 = v0;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager);
  sub_24F91FD78();

  return sub_24E798478(v3);
}

uint64_t sub_24EF5DFAC()
{
  sub_24E798478(v0 + OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry);

  v1 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesStickyPlayerManager()
{
  result = qword_27F234AC8;
  if (!qword_27F234AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF5E0CC()
{
  sub_24EF5E1B4();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EF5E1B4()
{
  if (!qword_27F234AD8)
  {
    type metadata accessor for LeaderboardEntry();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F234AD8);
    }
  }
}

uint64_t sub_24EF5E20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF5E2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF5E300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF5E368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SegmentedSearchResultsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SegmentedSearchResultsPage.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *SegmentedSearchResultsPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v37 = a2;
  v34 = *v4;
  v35 = v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = a1;
  sub_24F928398();
  v15 = v6;
  v16 = v37;
  (*(v7 + 16))(v9, v37, v15);
  sub_24EF5E7EC();
  v17 = v35;
  v18 = sub_24F92B678();
  v19 = (v11 + 8);
  if (v17)
  {
    (*(v7 + 8))(v16, v15);
    (*v19)(v36, v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v7;
    v34 = v15;
    v4[4] = v18;
    v21 = v36;
    sub_24F928398();
    v35 = sub_24F928348();
    v23 = v22;
    v24 = *v19;
    (*v19)(v13, v10);
    if (v23)
    {
      (*(v20 + 8))(v37, v34);
      v24(v21, v10);
    }

    else
    {
      v33 = v4;
      v25 = v4[4];
      if (v25[2])
      {
        v26 = v25[4];
        v31 = v25[5];
        v32 = v26;
        v23 = v25[9];
        v35 = v25[8];
        v30 = v10;
        v27 = *(v20 + 8);

        v27(v37, v34);
        v24(v36, v30);
      }

      else
      {
        (*(v20 + 8))(v37, v34);
        v24(v36, v10);
        v35 = 0;
        v23 = 0;
      }

      v4 = v33;
    }

    v4[2] = v35;
    v4[3] = v23;
  }

  return v4;
}

unint64_t sub_24EF5E7EC()
{
  result = qword_27F234AE8;
  if (!qword_27F234AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AE8);
  }

  return result;
}

uint64_t SegmentedSearchResultsPage.selectedSegmentId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SegmentedSearchResultsPage.deinit()
{

  return v0;
}

uint64_t SegmentedSearchResultsPage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EF5E8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SegmentedSearchResultsPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF5E9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00);
  result = swift_allocObject();
  *(result + 16) = sub_24EF5E9FC;
  *(result + 24) = 0;
  qword_27F39D0A8 = result;
  return result;
}

void sub_24EF5E9FC(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
LABEL_6:

LABEL_16:
    v21 = 2.0;
    goto LABEL_17;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {
    goto LABEL_14;
  }

  v22 = sub_24F92CE08();

  if (v22)
  {
LABEL_19:

    v21 = 3.0;
    goto LABEL_17;
  }

  v23 = sub_24F92B0D8();
  v25 = v24;
  if (v23 == sub_24F92B0D8() && v25 == v26)
  {
    goto LABEL_14;
  }

  v27 = sub_24F92CE08();

  if (v27)
  {
    goto LABEL_19;
  }

  v28 = sub_24F92B0D8();
  v30 = v29;
  if (v28 == sub_24F92B0D8() && v30 == v31)
  {
LABEL_14:

    v21 = 3.0;
    goto LABEL_17;
  }

  v32 = sub_24F92CE08();

  v21 = 1.0;
  if (v32)
  {
    v21 = 3.0;
  }

LABEL_17:
  *a2 = v21;
}

__n128 LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 208);
  v13 = (a7 + 200);
  v13[12] = *(a1 + 192);
  v13[13] = v12;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v14;
  v15 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v15;
  v16 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v16;
  v17 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v17;
  v18 = *(a1 + 16);
  *(a7 + 200) = *a1;
  *(a7 + 216) = v18;
  v19 = *(a1 + 48);
  *(a7 + 232) = *(a1 + 32);
  *(a7 + 440) = *(a1 + 240);
  *(a7 + 248) = v19;
  sub_24E612C80(a2, a7);
  v20 = *(a3 + 16);
  *(a7 + 40) = *a3;
  *(a7 + 56) = v20;
  *(a7 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a7 + 80);
  sub_24E612C80(a5, a7 + 120);
  result = *a6;
  v22 = *(a6 + 16);
  *(a7 + 160) = *a6;
  *(a7 + 176) = v22;
  *(a7 + 192) = *(a6 + 32);
  return result;
}

uint64_t LargeLockupLayout.Metrics.init(headingSpace:titleSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:bottomSpace:isTextHorizontallyCentered:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  sub_24E612C80(a5, a8 + 160);
  result = sub_24E612C80(a6, a8 + 200);
  *(a8 + 240) = a7;
  return result;
}

uint64_t LargeLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v23 = a2;
  v3 = sub_24F9227B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F9227C8();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_24F9225A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(v2, v27);
  sub_24F922318();
  v17 = sub_24F922348();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  sub_24F922598();
  sub_24EF5F370(v21, v27);
  v26[3] = v13;
  v26[4] = MEMORY[0x277D22740];
  v26[5] = MEMORY[0x277D22748];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(v14 + 16))(boxed_opaque_existential_1, v16, v13);
  sub_24E8F997C(v27, v25);
  (*(v4 + 104))(v6, *MEMORY[0x277D22820], v3);
  v24[3] = sub_24F922418();
  v24[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24F922408();
  sub_24F9227A8();
  sub_24F922798();
  (*(v7 + 8))(v9, v22);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_24EF5F370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F922868();
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_24F9227F8();
  v98 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_24F922848();
  v10 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v86 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v84[-v13];
  MEMORY[0x28223BE20](v14);
  v99 = &v84[-v15];
  MEMORY[0x28223BE20](v16);
  v89 = &v84[-v17];
  v18 = sub_24F92CDB8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v84[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_24F922838();
  v23 = MEMORY[0x28223BE20](v22);
  v95 = v25;
  v26 = *(v25 + 104);
  v103 = &v84[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v27;
  v26(v23);
  if (qword_27F210C88 != -1)
  {
    swift_once();
  }

  v111[0] = qword_27F39D0A8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v21);
  v29 = v28;
  (*(v19 + 8))(v21, v18);

  sub_24E90E558((v2 + 5), v111);
  v30 = v112;
  if (!v112)
  {
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v111, v112);
  v31 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if ((v31 & 1) == 0)
  {
    sub_24E90E558((v2 + 5), v111);
    v30 = v112;
    if (v112)
    {
      __swift_project_boxed_opaque_existential_1(v111, v112);
      v30 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(v111);
      goto LABEL_9;
    }

LABEL_8:
    sub_24E90ED10(v111);
    goto LABEL_9;
  }

  v30 = 0;
LABEL_9:
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  if (sub_24F922238())
  {
    v93 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
    v93 = sub_24F9221E8();
  }

  sub_24E90E558((v2 + 20), v111);
  v32 = v112;
  if (!v112)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(v111, v112);
  v33 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v33)
  {
    v32 = 0;
    goto LABEL_18;
  }

  sub_24E90E558((v3 + 20), v111);
  v32 = v112;
  if (v112)
  {
    __swift_project_boxed_opaque_existential_1(v111, v112);
    v32 = sub_24F9221E8();
    __swift_destroy_boxed_opaque_existential_1(v111);
  }

  else
  {
LABEL_17:
    sub_24E90ED10(v111);
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v29 < 9.22337204e18)
  {
    v85 = v32;
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
    sub_24F922478();
    sub_24E90E558((v3 + 20), v111);
    if (v112)
    {
      __swift_project_boxed_opaque_existential_1(v111, v112);
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    else
    {
      sub_24E90ED10(v111);
    }

    sub_24E90E558((v3 + 5), &v108);
    v34 = MEMORY[0x277D84F90];
    v92 = a2;
    v91 = v8;
    v90 = v6;
    if (v109)
    {
      sub_24E612C80(&v108, v111);
      if (v30)
      {
        v35 = v112;
        v36 = v113;
        v37 = __swift_project_boxed_opaque_existential_1(v111, v112);
        v109 = v35;
        v110 = *(v36 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
        (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v37, v35);
        *&v105 = v34;
        sub_24E8EF510();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
        sub_24E8EF568();
        v39 = v100;
        v40 = v101;
        sub_24F92C6A8();
        sub_24F922818();
        (*(v98 + 8))(v39, v40);
        __swift_destroy_boxed_opaque_existential_1(&v108);
        v32 = sub_24E6179D8(0, 1, 1, v34);
        v42 = *(v32 + 2);
        v41 = *(v32 + 3);
        if (v42 >= v41 >> 1)
        {
          v32 = sub_24E6179D8(v41 > 1, v42 + 1, 1, v32);
        }

        *(v32 + 2) = v42 + 1;
        (*(v10 + 32))(&v32[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v42], v89, v102);
        __swift_destroy_boxed_opaque_existential_1(v111);
        v43 = 35;
LABEL_33:
        sub_24E615E00(&v3[v43], v111);
        v44 = v3[13];
        v45 = v3[14];
        v46 = __swift_project_boxed_opaque_existential_1(v3 + 10, v44);
        v109 = v44;
        v110 = *(v45 + 8);
        v47 = __swift_allocate_boxed_opaque_existential_1(&v108);
        (*(*(v44 - 8) + 16))(v47, v46, v44);
        *&v105 = v34;
        v48 = sub_24E8EF510();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
        v50 = sub_24E8EF568();
        v51 = v100;
        v88 = v49;
        v87 = v50;
        v52 = v101;
        v89 = v48;
        sub_24F92C6A8();
        sub_24F922818();
        v8 = *(v98 + 8);
        (v8)(v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v108);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_34;
        }

        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    else
    {
      sub_24E90ED10(&v108);
      if (v30)
      {
        v32 = MEMORY[0x277D84F90];
        v43 = 35;
        goto LABEL_33;
      }
    }

    v32 = MEMORY[0x277D84F90];
    v43 = 30;
    goto LABEL_33;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v32 = sub_24E6179D8(0, *(v32 + 2) + 1, 1, v32);
LABEL_34:
  v54 = *(v32 + 2);
  v53 = *(v32 + 3);
  if (v54 >= v53 >> 1)
  {
    v32 = sub_24E6179D8(v53 > 1, v54 + 1, 1, v32);
  }

  *(v32 + 2) = v54 + 1;
  v55 = v10 + 32;
  v56 = *(v10 + 32);
  v57 = (*(v55 + 48) + 32) & ~*(v55 + 48);
  v58 = *(v55 + 40);
  v59 = v99;
  v99 = v55;
  v56(&v32[v57 + v58 * v54], v59, v102);
  if (v93)
  {
    v61 = v3[18];
    v60 = v3[19];
    v62 = __swift_project_boxed_opaque_existential_1(v3 + 15, v61);
    v109 = v61;
    v110 = *(v60 + 8);
    v63 = __swift_allocate_boxed_opaque_existential_1(&v108);
    (*(*(v61 - 8) + 16))(v63, v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_24F93DE60;
    sub_24F9227E8();
    *&v105 = v64;
    v65 = v100;
    v66 = v101;
    sub_24F92C6A8();
    sub_24F922818();
    (v8)(v65, v66);
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    if (v68 >= v67 >> 1)
    {
      v32 = sub_24E6179D8(v67 > 1, v68 + 1, 1, v32);
    }

    *(v32 + 2) = v68 + 1;
    v56(&v32[v57 + v68 * v58], v94, v102);
  }

  sub_24E90E558((v3 + 20), &v105);
  if (!v106)
  {
    sub_24E90ED10(&v105);
LABEL_47:
    v77 = v92;
    v78 = v91;
    v79 = v96;
    v80 = v95;
    goto LABEL_48;
  }

  sub_24E612C80(&v105, &v108);
  if ((v85 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v108);
    goto LABEL_47;
  }

  v70 = v109;
  v69 = v110;
  v71 = __swift_project_boxed_opaque_existential_1(&v108, v109);
  v106 = v70;
  v107 = *(v69 + 8);
  v72 = __swift_allocate_boxed_opaque_existential_1(&v105);
  (*(*(v70 - 8) + 16))(v72, v71, v70);
  v104 = MEMORY[0x277D84F90];
  v73 = v100;
  v74 = v101;
  sub_24F92C6A8();
  sub_24F922818();
  (v8)(v73, v74);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  v76 = *(v32 + 2);
  v75 = *(v32 + 3);
  if (v76 >= v75 >> 1)
  {
    v32 = sub_24E6179D8(v75 > 1, v76 + 1, 1, v32);
  }

  v77 = v92;
  v78 = v91;
  v79 = v96;
  v80 = v95;
  *(v32 + 2) = v76 + 1;
  v56(&v32[v57 + v76 * v58], v86, v102);
  __swift_destroy_boxed_opaque_existential_1(&v108);
LABEL_48:
  (*(v97 + 104))(v78, *MEMORY[0x277D22868], v90);
  v109 = sub_24F922418();
  v110 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v108);
  sub_24F922408();
  v81 = sub_24F922888();
  v82 = MEMORY[0x277D22878];
  v77[3] = v81;
  v77[4] = v82;
  v77[5] = MEMORY[0x277D22880];
  __swift_allocate_boxed_opaque_existential_1(v77);
  sub_24F922878();
  __swift_destroy_boxed_opaque_existential_1(v111);
  return (*(v80 + 8))(v103, v79);
}

uint64_t sub_24EF60178(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EF60750();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit17LargeLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922618();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210C88 != -1)
  {
    swift_once();
  }

  v27[0] = qword_27F39D0A8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a2, v16);
  (*(v14 + 8))(v16, v13);

  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85048];
  *(v17 + 16) = xmmword_24F942000;
  v27[3] = v18;
  v27[4] = MEMORY[0x277D225F8];
  *v27 = a3;
  v19 = sub_24F9229A8();
  v20 = MEMORY[0x277D228E0];
  *(v17 + 56) = v19;
  *(v17 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1, v27);
  *(v17 + 96) = v19;
  *(v17 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v27);
  *(v17 + 136) = v19;
  *(v17 + 144) = v20;
  __swift_allocate_boxed_opaque_existential_1((v17 + 112));
  sub_24F9229B8();
  sub_24E615E00(a1 + 120, v27);
  *(v17 + 176) = v19;
  *(v17 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_1((v17 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 200, v27);
  *(v17 + 216) = v19;
  *(v17 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_1((v17 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v22 = v21;
  (*(v25 + 8))(v12, v26);
  return v22;
}

unint64_t sub_24EF605D8()
{
  result = qword_27F234AF0;
  if (!qword_27F234AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AF0);
  }

  return result;
}

uint64_t sub_24EF60634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 441))
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

uint64_t sub_24EF6067C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 440) = 0;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 441) = 1;
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

    *(result + 441) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EF60750()
{
  result = qword_27F234AF8;
  if (!qword_27F234AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AF8);
  }

  return result;
}

uint64_t sub_24EF607F8@<X0>(uint64_t a1@<X8>)
{
  if (!sub_24F921C08())
  {
    sub_24F926C98();
  }

  result = sub_24F924E28();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_24EF6088C()
{
  result = qword_27F234B08;
  if (!qword_27F234B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F234B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234B08);
  }

  return result;
}

double sub_24EF60910@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v5 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838);
  v6 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v7 = *(*(v6 - 1) + 72);
  v8 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v46 = v8;
  v42 = v9;
  v10 = v9 + v8;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D340;

  v44 = a2;
  v12 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9234D8();
  v14 = __swift_project_value_buffer(v13, qword_27F39D348);
  *v10 = 0x4053000000000000;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_24F9B4920;
  *(v10 + 32) = v12;
  v41 = v14;
  v15 = *(*(v13 - 8) + 16);
  v15(v10 + v6[9]);
  *(v10 + v6[10]) = 0x4050000000000000;
  v16 = (v10 + v6[11]);
  __asm { FMOV            V1.2D, #6.0 }

  v49 = _Q1;
  *v16 = xmmword_24F9B4930;
  v16[1] = _Q1;
  v22 = qword_27F210DB8;
  v43 = v11;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39D360;
  v24 = qword_27F210DC0;
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F39D368;
  v26 = qword_27F210DC8;
  swift_retain_n();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v10 + v7;
  v40 = __swift_project_value_buffer(v13, qword_27F39D370);
  *v27 = 0x4050800000000000;
  *(v27 + 8) = v23;
  *(v27 + 16) = xmmword_24F9B4940;
  *(v27 + 32) = v25;
  v28 = v15;
  v39 = v13;
  (v15)(v10 + v7 + v6[9], v40, v13);
  *(v27 + v6[10]) = 0x404B000000000000;
  v29 = (v10 + v7 + v6[11]);
  *v29 = xmmword_24F9B4930;
  v29[1] = v49;
  *(v5 + 40) = v42;
  *(v5 + 48) = xmmword_24F9B4950;
  *(v5 + 64) = 0x4028000000000000;
  *(v5 + 72) = 3;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24F9479A0;
  v30 = v45 + v46;

  v31 = sub_24EFED180(v44 & 1);
  *v30 = 0x4050000000000000;
  *(v30 + 8) = v43;
  *(v30 + 16) = xmmword_24F9B4960;
  *(v30 + 32) = v31;
  v28(v45 + v46 + v6[9], v41, v13);
  *(v30 + v6[10]) = 0x404A000000000000;
  v32 = (v45 + v46 + v6[11]);
  *v32 = xmmword_24F9B4930;
  v32[1] = v49;
  v33 = v45 + v46 + v7;
  *v33 = 0x404C000000000000;
  *(v33 + 8) = v23;
  *(v33 + 16) = xmmword_24F9B4970;
  *(v33 + 32) = v25;
  v28(v33 + v6[9], v40, v39);
  *(v33 + v6[10]) = 0x4046000000000000;
  v34 = (v33 + v6[11]);
  *v34 = xmmword_24F9B4930;
  v34[1] = v49;
  v35 = v45 + v46 + 2 * v7;
  *v35 = 0x404C000000000000;
  *(v35 + 8) = v23;
  *(v35 + 16) = xmmword_24F9B4970;
  *(v35 + 32) = v25;
  v28(v35 + v6[9], v40, v39);
  *(v35 + v6[10]) = 0x4046000000000000;
  v36 = (v35 + v6[11]);
  *v36 = xmmword_24F9B4930;
  v36[1] = v49;
  *(v5 + 80) = v45;
  *(v5 + 88) = xmmword_24F9B4980;
  *(v5 + 104) = 0x4028000000000000;
  v37 = sub_24E60E620(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840);
  swift_arrayDestroy();
  *a3 = v37;
  *(a3 + 8) = 3;
  *(a3 + 16) = 1;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v50;
  *(a3 + 22) = v51;
  *(a3 + 24) = xmmword_24F9B4990;
  result = 24.0;
  *(a3 + 40) = xmmword_24F9B49A0;
  *(a3 + 56) = 0;
  return result;
}

void sub_24EF60F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    if (a1)
    {
      v8 = v7;
      type metadata accessor for PlaybackCoordinator();
      sub_24F928FD8();
      v9 = a1;
      sub_24F92A758();
      v10 = v9;
      a5(v9, v8);
    }
  }
}

void sub_24EF61014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    if (a1)
    {
      v10 = v9;
      type metadata accessor for PlaybackCoordinator();
      sub_24F928FD8();
      v11 = a1;
      sub_24F92A758();
      v12 = v11;
      a7(v11, v10);
    }
  }
}

uint64_t Conditional<>.value(in:rounded:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v12 = a1;
  (*(*v10 + 104))(&v13, &v12, v7);
  (*(v6 + 16))(v9, a2, v5);
  result = (*(v6 + 88))(v9, v5);
  if (result != *MEMORY[0x277D84678] && result != *MEMORY[0x277D84670] && result != *MEMORY[0x277D84680] && result != *MEMORY[0x277D84688] && result != *MEMORY[0x277D84660] && result != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_24EF61388()
{
  if (*(v0 + 16))
  {

    sub_24F92C888();
    MEMORY[0x253050C20](0x79747265706F7270, 0xEA0000000000203ALL);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F234B58);
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA64ED0);
    v1 = sub_24F92BA38();
    MEMORY[0x253050C20](v1);

    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA64EF0);
    v2 = sub_24F92BA38();
    MEMORY[0x253050C20](v2);

    MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_24F922118();
    sub_24F92CA38();
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0x746E6174736E6F63, 0xEA0000000000203ALL);
    v3 = sub_24F92BA38();
    MEMORY[0x253050C20](v3);

    MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_24F922118();
    sub_24F92CA38();
  }

  return 0;
}

double sub_24EF615C8(void *a1)
{
  if (*(v1 + 16))
  {
    v10[0] = a1;

    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
  }

  v3 = qword_27F234B20;
  v4 = [a1 traitCollection];
  v5 = sub_24F922118();
  v10[3] = v5;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v5);
  sub_24F91FE48();
  v8 = v7;

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_24EF616F4()
{

  v1 = qword_27F234B20;
  v2 = sub_24F922118();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24EF61764()
{

  v1 = qword_27F234B20;
  v2 = sub_24F922118();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_24EF61848(uint64_t a1)
{
  sub_24F92C888();

  v3 = (*(*a1 + 96))(v2);
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0xD000000000000029;
}

void Conditional<>.languageAwareOutsets(compatibleWith:)()
{
  if (**v0 == &off_281C7E878)
  {

    v1 = sub_24F922108();
    sub_24F92C278();
  }
}

double sub_24EF61A28(uint64_t a1)
{
  v2 = *v1;
  v5 = a1;
  v3 = *(*v2 + 104);

  v3(&v6, &v5);

  return v6;
}

void sub_24EF61A9C()
{
  if (**v0 == &off_281C7E878)
  {

    v1 = sub_24F922108();
    sub_24F92C278();
  }
}

uint64_t sub_24EF61B70()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v4[0];
}

id sub_24EF61C18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

uint64_t sub_24EF61C54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF78();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for DimensionExpression()
{
  result = qword_27F234B40;
  if (!qword_27F234B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF61CDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for DimensionExpression();
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  v10 = qword_27F234B20;
  v11 = sub_24F922118();
  result = (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  *a2 = v9;
  return result;
}

uint64_t sub_24EF61D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_24F922118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + v14 + 8) & ~v12;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v17 = *(v11 + 32);
  v17(v16 + v13, a1, v10);
  *(v16 + v14) = a5;
  v17(v16 + v15, a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00);
  result = swift_allocObject();
  *(result + 16) = sub_24EF6211C;
  *(result + 24) = v16;
  *a3 = result;
  return result;
}

uint64_t sub_24EF61F14@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [*a1 traitCollection];
  if (sub_24F92BF78())
  {
    v8 = sub_24F922118();
    v16 = v8;
    v17 = MEMORY[0x277D22628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  }

  else
  {
    v10 = sub_24F922118();
    v16 = v10;
    v17 = MEMORY[0x277D22628];
    v11 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v10 - 8) + 16))(v11, a3, v10);
  }

  sub_24F91FE48();
  v13 = v12;

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a4 = v13;
  return result;
}

uint64_t sub_24EF62054()
{
  v1 = sub_24F922118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (v4 + ((*(v2 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_24EF6211C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_24F922118() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = v2 + ((v6 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);

  return sub_24EF61F14(a1, v2 + v7, v8, a2);
}

uint64_t Conditional<>.init(roundedCornersConstant:nonRoundedCornersConstant:source:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  type metadata accessor for DimensionExpression();
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = 0;
  if (HasRoundedCorners)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  *(v9 + 24) = v11;
  *(v9 + 32) = v11;
  v12 = qword_27F234B20;
  v13 = sub_24F922118();
  result = (*(*(v13 - 8) + 32))(v10 + v12, a1, v13);
  *a2 = v10;
  return result;
}

uint64_t Conditional<>.init(whenOneOf:useConstant:otherwiseUse:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  Main = JUScreenClassGetMain();
  v11 = sub_24F4D4420(Main, a1);

  type metadata accessor for DimensionExpression();
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = 0;
  if (v11)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  *(v12 + 24) = v14;
  *(v12 + 32) = v14;
  v15 = qword_27F234B20;
  v16 = sub_24F922118();
  result = (*(*(v16 - 8) + 32))(v13 + v15, a2, v16);
  *a3 = v13;
  return result;
}

uint64_t Conditional<>.anyDimension.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for AnyDimensionWrapper;
  a1[4] = sub_24EF623A8();
  *a1 = v3;
}

unint64_t sub_24EF623A8()
{
  result = qword_27F234B30;
  if (!qword_27F234B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234B30);
  }

  return result;
}

uint64_t sub_24EF623FC()
{
  result = sub_24F922118();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall String.isValid(expansionFor:)(Swift::String_optional expansionFor)
{
  if (!expansionFor.value._object)
  {
    return 0;
  }

  object = expansionFor.value._object;
  countAndFlagsBits = expansionFor.value._countAndFlagsBits;
  v5 = HIBYTE(expansionFor.value._object) & 0xF;
  if ((expansionFor.value._object & 0x2000000000000000) == 0)
  {
    v5 = expansionFor.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v1;
    v7 = v2;
    sub_24F92B198();
    sub_24F92B198();
    v8 = sub_24F92B358();

    if ((v8 & 1) == 0 || countAndFlagsBits == v6 && v7 == object)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = sub_24F92CE08() ^ 1;
    }
  }

  return v5 & 1;
}

Swift::Bool __swiftcall String.isValid(trailingExtensionFor:)(Swift::String trailingExtensionFor)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_24F92B198();
  sub_24F92B198();
  v4 = sub_24F92B368();

  return v4 & 1;
}

uint64_t sub_24EF62658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_24F92B198();
  v6 = sub_24F92B198();
  LOBYTE(a5) = a5(v6);

  return a5 & 1;
}

uint64_t static String.trailingExtension(expanding:into:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  sub_24F92B198();
  sub_24F92B198();
  v9 = sub_24F92B358();

  if ((v9 & 1) == 0 || a1 == a3 && a4 == a2)
  {
    return 0;
  }

  if (sub_24F92CE08())
  {
    return 0;
  }

  v11 = sub_24F92B228();
  v12 = sub_24EF62944(v11, a3, a4);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x253050B50](v12, v14, v16, v18);

  return v19;
}

uint64_t static String.prefixText(undoingExpansionOf:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && (sub_24F92B198(), sub_24F92B198(), v6 = sub_24F92B368(), , , (v6 & 1) != 0))
  {
    v7 = sub_24F92B228();

    v8 = sub_24EF629F4(v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x253050B50](v8, v10, v12, v14);
  }

  else
  {
LABEL_7:
  }

  return a1;
}

unint64_t sub_24EF62944(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24F92B258();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24F92B3D8();
}

uint64_t sub_24EF629F4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24F92B258();

    return sub_24F92B3D8();
  }

  return result;
}

uint64_t sub_24EF62AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922028();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v10 = sub_24F92A9E8();
  v11 = (a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
  aBlock = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v66 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    v60 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
    sub_24F928FD8();
    v59 = a2;
    sub_24F92A758();
    v15 = v66;
    ObjectType = swift_getObjectType();
    v17 = v11[1];
    v71[0] = *v11;
    v71[1] = v17;
    v18 = *(v15 + 56);

    v19 = v18(v71, ObjectType, v15);
    v21 = v20;
    swift_unknownObjectRelease();

    v22 = swift_getObjectType();
    v23 = *(v21 + 24);
    v58 = v19;
    v24 = v23(v22, v21);
    v25 = "RootActionRunner[ASDAppQuery]:handleOpenAppAction";
    v61 = v10;
    v57 = a1;
    if (v24)
    {
      v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps);
      if (v26)
      {
        v25 = "RootActionRunner[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v27 = 58;
      }

      else
      {
        v27 = 49;
      }
    }

    else
    {
      v26 = 0;
      v27 = 49;
    }

    v52 = v27;
    v53 = v25;
    sub_24F929778();
    sub_24F929768();
    v31 = v64;
    sub_24F921FF8();
    sub_24F92C058();
    v32 = sub_24F929768();
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24F941C80;
    *(v33 + 32) = v14;
    sub_24E69A5C4(0, &qword_27F22BD50);
    v55 = v14;
    v34 = sub_24F92B588();

    v35 = objc_opt_self();
    v36 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v54 = v26 & 1;
    if ((v26 & 1) == 0)
    {
      v36 = &selRef_queryForStoreItemIDs_;
    }

    v56 = [v35 *v36];

    v38 = v62;
    v37 = v63;
    (*(v63 + 16))(v62, v31, v6);
    v39 = (*(v37 + 80) + 41) & ~*(v37 + 80);
    v40 = v39 + v7;
    v41 = (v39 + v7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v52;
    v46 = v53;
    *(v44 + 16) = v60;
    *(v44 + 24) = v46;
    *(v44 + 32) = v45;
    *(v44 + 40) = 2;
    (*(v37 + 32))(v44 + v39, v38, v6);
    *(v44 + v40) = v54;
    *(v44 + v41 + 8) = v57;
    *(v44 + v42) = v59;
    v10 = v61;
    *(v44 + v43) = v61;
    v47 = v55;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;
    v69 = sub_24EF64BAC;
    v70 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24EC312A0;
    v68 = &block_descriptor_94;
    v48 = _Block_copy(&aBlock);
    v49 = v47;

    v50 = v56;
    [v56 executeQueryWithResultHandler_];
    _Block_release(v48);

    swift_unknownObjectRelease();
    (*(v63 + 8))(v64, v6);
  }

  else
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    __swift_project_value_buffer(v28, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v29 = swift_allocError();
    *v30 = 0;
    sub_24F92A9A8();
  }

  return v10;
}

void sub_24EF63154(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v80 = a8;
  LODWORD(v78) = a7;
  v81 = a12;
  v76 = a11;
  v82 = a10;
  v77 = a9;
  v73 = sub_24F91F6B8();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v69 - v15;
  v16 = sub_24F928AD8();
  v79 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  sub_24F92C048();
  sub_24F929778();
  v24 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x253052270](0, a1);
        v25 = v80;
LABEL_7:
        if (*(v25 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination))
        {
          if (qword_27F2105C8 != -1)
          {
            swift_once();
          }

          v27 = sub_24F92AAE8();
          __swift_project_value_buffer(v27, qword_27F22D7E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F9479A0;
          sub_24F9283A8();
          *(&v84 + 1) = sub_24E69A5C4(0, &qword_27F22BD50);
          *&aBlock = v76;
          v28 = v76;
          sub_24F9283B8();
          sub_24E601704(&aBlock, &qword_27F2129B0);
          sub_24F9283A8();
          sub_24F92A5A8();
        }

        else
        {
          v29 = [v26 bundleID];
          v30 = sub_24F92B0D8();
          v32 = v31;

          sub_24F928A98();
          v33 = sub_24EA200BC(MEMORY[0x277D84F90]);
          v34 = type metadata accessor for ArcadeLaunchAttributionAction();
          swift_allocObject();
          v35 = ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(v30, v32, v33, v23);
          *(&v84 + 1) = v34;
          v85 = sub_24EF64D3C(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction);
          *&aBlock = v35;
          v36 = v81;
          type metadata accessor for OpenAppActionImplementation();

          swift_getWitnessTable();
          v37 = v77;
          sub_24F1489C4(&aBlock);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v38 = objc_opt_self();
          v39 = swift_allocObject();
          v39[2] = v36;
          v39[3] = v25;
          v40 = v82;
          v39[4] = v37;
          v39[5] = v40;
          v85 = sub_24EF64CF0;
          v86 = v39;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v84 = sub_24EF64614;
          *(&v84 + 1) = &block_descriptor_6_5;
          v41 = _Block_copy(&aBlock);

          [v38 launchApp:v26 withResultHandler:v41];

          _Block_release(v41);
        }

        return;
      }

      v25 = v80;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((v78 & 1) == 0)
  {
    if (qword_27F2105C8 == -1)
    {
LABEL_17:
      v55 = sub_24F92AAE8();
      __swift_project_value_buffer(v55, qword_27F22D7E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F9283A8();
      *(&v84 + 1) = sub_24E69A5C4(0, &qword_27F22BD50);
      *&aBlock = v76;
      v56 = v76;
      sub_24F9283B8();
      sub_24E601704(&aBlock, &qword_27F2129B0);
      sub_24F9283A8();
      sub_24F92A5A8();

      type metadata accessor for OpenAppActionImplementation.ImplementationError();
      swift_getWitnessTable();
      v57 = swift_allocError();
      *v58 = 1;
      sub_24F92A9A8();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  v42 = v80[3];
  v78 = v80[2];
  v76 = v42;
  v44 = *(v80 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v43 = *(v80 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
  v45 = *(v80 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination);
  v70 = v80[5];
  v46 = *(v79 + 16);
  v46(v20, v80 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16);
  v47 = type metadata accessor for OpenAppAction();
  v48 = swift_allocObject();
  v49 = (v48 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  *v49 = v44;
  v49[1] = v43;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v45;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = 0;
  v85 = 0;
  aBlock = 0u;
  v84 = 0u;
  v50 = v74;
  v46(v74, v20, v16);
  v51 = sub_24F929608();
  v52 = v75;
  (*(*(v51 - 8) + 56))(v75, 1, 1, v51);
  v53 = (v48 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v53 = 0u;
  v53[1] = 0u;
  sub_24E65E064(&aBlock, &v89);
  if (*(&v90 + 1))
  {
    v92 = v89;
    v93 = v90;
    v94 = v91;
    v54 = v76;
  }

  else
  {
    v54 = v76;

    v59 = v71;
    sub_24F91F6A8();
    v60 = sub_24F91F668();
    v62 = v61;
    (*(v72 + 8))(v59, v73);
    v87 = v60;
    v88 = v62;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830);
  }

  sub_24E601704(&aBlock, &qword_27F235830);
  v63 = v79;
  (*(v79 + 8))(v20, v16);
  v64 = v48 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v65 = v93;
  *v64 = v92;
  *(v64 + 1) = v65;
  *(v64 + 4) = v94;
  sub_24E65E0D4(v52, v48 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v48[2] = v78;
  v48[3] = v54;
  v66 = v70;
  v48[4] = 0;
  v48[5] = v66;
  (*(v63 + 32))(v48 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v50, v16);
  *(&v84 + 1) = v47;
  v85 = sub_24EF64D3C(qword_27F222880, type metadata accessor for OpenAppAction);
  *&aBlock = v48;
  type metadata accessor for OpenAppActionImplementation();

  swift_getWitnessTable();
  sub_24F1489C4(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v67 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  v68 = sub_24F92BEF8();
  *(&v84 + 1) = v67;
  v85 = MEMORY[0x277D225C0];
  *&aBlock = v68;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

uint64_t sub_24EF63DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24EF63ECC(a1, a2, a3, a5);
  v5 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  v6 = sub_24F92BEF8();
  v8[3] = v5;
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v6;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_24EF63ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v6 = sub_24F928AE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    __swift_project_value_buffer(v28, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v30 = *(v32 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    v29 = *(v32 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
    v37 = &type metadata for AdamId;
    aBlock = v30;
    v35 = v29;

    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    v27 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v19 = v16;
    sub_24E69A5C4(0, &qword_27F222300);
    v20 = sub_24F92BEF8();
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    *(v21 + 24) = a3;
    v38 = sub_24EF64D34;
    v39 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_24EAF8248;
    v37 = &block_descriptor_14_0;
    v22 = _Block_copy(&aBlock);

    sub_24F927DA8();
    aBlock = MEMORY[0x277D84F90];
    sub_24EF64D3C(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v18, v13, v22);
    _Block_release(v22);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v18, v19);
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F92AAE8();
    __swift_project_value_buffer(v23, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v25 = *(v32 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    v24 = *(v32 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
    v37 = &type metadata for AdamId;
    aBlock = v25;
    v35 = v24;

    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
    type metadata accessor for OpenAppActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    v27 = 2;
LABEL_9:
    *v26 = v27;
    return sub_24F92A978();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
  return sub_24F92A988();
}

uint64_t sub_24EF64614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24EF64668(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_24F9289E8();
  MEMORY[0x28223BE20](v2 - 8);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v30[1] = v30 - v5;
  v7 = sub_24F928AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v30[2] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A638();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A618();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17._countAndFlagsBits = 0x4F2E6E6F69746341;
  v17._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_24F92A608();
  sub_24F928A98();
  v19 = sub_24F92A628();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20._object = 0x800000024FA65060;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedString(_:comment:)(v20, v21);
  v22._countAndFlagsBits = 0xD000000000000021;
  v22._object = 0x800000024FA65080;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  localizedString(_:comment:)(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24F93DE60;
  (*(v14 + 16))(v25 + v24, v16, v13);
  sub_24F9289D8();
  sub_24F92A5E8();
  v26 = v31;
  *(&v37 + 1) = v31;
  v38 = MEMORY[0x277D223B8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  v28 = v32;
  (*(v32 + 16))(boxed_opaque_existential_1, v12, v26);
  type metadata accessor for OpenAppActionImplementation();
  swift_getWitnessTable();
  sub_24F1489C4(&v36);

  (*(v28 + 8))(v12, v26);
  (*(v14 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_24EF64AD8()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (((((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EF64BAC(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_24F922028() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  sub_24EF63154(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EF64CA8()
{

  return swift_deallocObject();
}

uint64_t sub_24EF64CFC()
{

  return swift_deallocObject();
}

uint64_t sub_24EF64D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF64DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EF64F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AchievementsByGameAccessoryView()
{
  result = qword_27F234C68;
  if (!qword_27F234C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF6509C()
{
  sub_24EF651A8(319, &qword_27F234C78, type metadata accessor for AchievementsByGameOptionProvider, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_24E600550();
    if (v1 <= 0x3F)
    {
      sub_24EF651A8(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EF651A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EF65228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v73 = sub_24F929888();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F927768();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AchievementsByGameAccessoryView();
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C80);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v59 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C88);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C90);
  MEMORY[0x28223BE20](v67);
  v13 = &v59 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C98);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA0);
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v59 - v16;
  sub_24EF696B8(v2, &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v81 = *(v6 + 80);
  v82 = v7;
  v18 = swift_allocObject();
  v71 = v17;
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EF69720(v78, v18 + v17);
  v84 = v2;
  v79 = v2;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8);
  v20 = sub_24EF69804();
  v86 = v19;
  v87 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F234CE8, &qword_27F234CB0);
  v21 = v11;
  sub_24F925AA8();
  sub_24F927758();
  sub_24E602068(&qword_27F234CF0, &qword_27F234C80);
  v22 = v62;
  sub_24F926BA8();
  v23 = v5;
  v24 = v60;
  v25 = v61;
  (*(v64 + 8))(v23, v65);
  (*(v63 + 8))(v9, v22);
  v89 = MEMORY[0x277CE1120];
  v90 = sub_24E63E454();
  sub_24EF69A2C(&v86, v13);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D00);
  (*(v24 + 16))(&v13[v26[9]], v21, v25);
  v27 = &v13[v26[10]];
  *v27 = sub_24F923398() & 1;
  *(v27 + 1) = v28;
  v27[16] = v29 & 1;
  v30 = &v13[v26[11]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v31 = qword_27F24E488;
  v32 = sub_24F923398();
  v34 = v33;
  v36 = v35;
  v37 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D08) + 36)];
  *v37 = v31;
  v37[8] = v32 & 1;
  *(v37 + 2) = v34;
  v37[24] = v36 & 1;
  LOBYTE(v31) = sub_24F923398();
  v39 = v38;
  LOBYTE(v34) = v40;
  sub_24E601704(&v86, &qword_27F234CF8);
  (*(v24 + 8))(v21, v25);
  v41 = v67;
  v42 = &v13[*(v67 + 36)];
  *v42 = v31 & 1;
  *(v42 + 1) = v39;
  v42[16] = v34 & 1;
  v43 = v66;
  sub_24F9297E8();
  v44 = sub_24EF69AA4();
  v45 = v69;
  sub_24F925EE8();
  (*(v72 + 8))(v43, v73);
  sub_24E601704(v13, &qword_27F234C90);
  v73 = *(v68 + 20);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  v46 = v79;
  sub_24F927358();
  v47 = v86;
  swift_getKeyPath();
  v86 = v47;
  v68 = sub_24EF6A110(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider);
  sub_24F91FD88();

  LOBYTE(v39) = *(v47 + 24);

  v85 = v39;
  v48 = v78;
  sub_24EF696B8(v46, v78);
  v49 = v71;
  v50 = swift_allocObject();
  sub_24EF69720(v48, v50 + v49);
  v86 = v41;
  v87 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_24EC3D7A4();
  v53 = v74;
  v54 = v75;
  sub_24F926AB8();

  (*(v70 + 8))(v45, v54);
  sub_24F927358();
  v55 = v86;
  swift_getKeyPath();
  v86 = v55;
  sub_24F91FD88();

  LOBYTE(v39) = *(v55 + 25);

  v85 = v39;
  sub_24EF696B8(v46, v48);
  v56 = swift_allocObject();
  sub_24EF69720(v48, v56 + v49);
  v86 = v54;
  v87 = &type metadata for AchievementsByGameSortOption;
  v88 = OpaqueTypeConformance2;
  v89 = v52;
  swift_getOpaqueTypeConformance2();
  sub_24EC3D82C();
  v57 = v77;
  sub_24F926AB8();

  return (*(v76 + 8))(v53, v57);
}

uint64_t sub_24EF65D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AchievementsByGameAccessoryView();
  sub_24EF69E54(a2 + *(v11 + 24), &v20);
  if (v23 == 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v24, v12);
      *(&v21 + 1) = sub_24F9284A8();
      v22 = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_24EF6602C(boxed_opaque_existential_1);
      sub_24F76973C(v6);
      sub_24F9218A8();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      return __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v19 = v7;
    v16 = v4;
    v17 = v15;
    sub_24F921FD8();

    v4 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v19);
    v12 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v24, &unk_27F212740);
}

uint64_t sub_24EF6602C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24F9294C8();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929458();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928698();
  v33 = *(v34 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v14 = sub_24F929448();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6449746567726174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v17;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v17;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();

  v22 = v31;
  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v22;
  v26 = v22;
  v27 = v34;
  (*(v9 + 16))(v24 + v23, v25, v34);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v9 + 8))(v26, v27);
  return sub_24F928498();
}

uint64_t sub_24EF6656C@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D28);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D30);
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_24EF66814(&v25 - v13);
  sub_24EF66C70(v7);
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D38) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_24EF66814@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_24F9249D8();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DB8);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  if (qword_27F211598 != -1)
  {
    swift_once();
  }

  v31 = qword_27F39EBF8;
  v32 = unk_27F39EC00;
  type metadata accessor for AchievementsByGameAccessoryView();

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v4 + 8))(v6, v3);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DC0);
  sub_24EF6A158();
  sub_24EF6A1AC();
  sub_24E600AEC();
  sub_24F927098();
  v14 = sub_24E602068(&qword_27F234DE0, &qword_27F234DB0);
  sub_24F926968();
  (*(v8 + 8))(v10, v7);
  v15 = v21;
  sub_24F9249C8();
  v28 = v7;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  v17 = v24;
  sub_24F9261F8();
  (*(v23 + 8))(v15, v17);
  return (*(v19 + 8))(v13, v16);
}

uint64_t sub_24EF66C70@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_24F923F98();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D40);
  MEMORY[0x28223BE20](v20);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D48);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  type metadata accessor for AchievementsByGameAccessoryView();
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v8 + 8))(v10, v7);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  sub_24EF68C88(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D50);
  sub_24E602068(&qword_27F234D58, &qword_27F234D40);
  sub_24EF69EE4();
  sub_24EF69F38();
  sub_24F927088();
  v15 = v19;
  sub_24F923F88();
  sub_24E602068(&qword_27F234D80, &qword_27F234D48);
  v16 = v21;
  sub_24F9261F8();
  (*(v22 + 8))(v15, v16);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24EF67034@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_24F9248C8();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &KeyPath - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &KeyPath - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0);
  MEMORY[0x28223BE20](v6);
  v8 = (&KeyPath - v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CD0);
  MEMORY[0x28223BE20](v34);
  v10 = &KeyPath - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB8);
  MEMORY[0x28223BE20](v35);
  v12 = &KeyPath - v11;
  v33 = sub_24F926DF8();
  v32 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for AchievementsByGameAccessoryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  sub_24F927358();
  v13 = sub_24EC3CF50();

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    sub_24F924CF8();
    v14 = 0;
  }

  v15 = sub_24F924D08();
  (*(*(v15 - 8) + 56))(v5, v14, 1, v15);
  v16 = swift_getKeyPath();
  v17 = (v8 + *(v6 + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0);
  sub_24E6009C8(v5, v17 + *(v18 + 28), &qword_27F214410);
  *v17 = v16;
  v20 = KeyPath;
  v19 = v32;
  *v8 = v33;
  v8[1] = v20;
  v8[2] = v19;
  sub_24F927358();
  v21 = sub_24EC3CF50();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    v22 = sub_24F926D18();
  }

  v23 = swift_getKeyPath();
  sub_24E6009C8(v8, v10, &qword_27F234CE0);
  v24 = &v10[*(v34 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_24F927358();
  v25 = sub_24EC3CF50();

  if (v25)
  {
    v26 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v26 = 0;
  }

  v27 = swift_getKeyPath();
  sub_24E6009C8(v10, v12, &qword_27F234CD0);
  v28 = &v12[*(v35 + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = v36;
  sub_24F9248B8();
  sub_24EF69804();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v38 + 8))(v29, v39);
  return sub_24E601704(v12, &qword_27F234CB8);
}

uint64_t sub_24EF674B8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v22 = sub_24F921B58();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(type metadata accessor for AchievementsByGameAccessoryView() + 24);
  v21 = a3;
  sub_24EF69E54(a3 + v13, &v23);
  if (v26 != 1)
  {
    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v27, &unk_27F212740);
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v27, &unk_27F212740);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v27, v14);
  v15 = v12 == 0;
  if (v12)
  {
    v16 = 0x614E794274726F53;
  }

  else
  {
    v16 = 0xD000000000000014;
  }

  if (v15)
  {
    v17 = 0x800000024FA650B0;
  }

  else
  {
    v17 = 0xEA0000000000656DLL;
  }

  *(&v24 + 1) = sub_24F9284A8();
  v25 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_24EF677C4(v16, v17, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v5 + 8))(v7, v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24EF677C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v33 = a2;
  v32 = a1;
  v40 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24F928698();
  v37 = *(v38 - 8);
  v11 = v37;
  MEMORY[0x28223BE20](v38);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928AD8();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[1];
  v35 = *v4;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v18 = sub_24F929448();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = 0x6449746567726174;
  v22 = v32;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v22;
  *(inited + 104) = v33;
  *(inited + 120) = v21;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v21;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v21;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x7463656C6573;
  *(inited + 200) = 0xE600000000000000;

  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v23 = sub_24F92A2C8();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v33 = xmmword_24F93DE60;
  *(v26 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v26);
  swift_setDeallocating();
  (*(v24 + 8))(v26 + v25, v23);
  swift_deallocClassInstance();

  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = v38;
  (*(v11 + 16))(v28 + v27, v13, v38);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v11 + 8))(v13, v29);
  return sub_24F928498();
}

uint64_t sub_24EF67D24(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_24F921B58();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = type metadata accessor for AchievementsByGameAccessoryView();
  sub_24EF69E54(a3 + *(v13 + 24), &v27);
  if (v30 != 1)
  {
    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v31, &unk_27F212740);
  }

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v14 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    return sub_24E601704(&v31, &unk_27F212740);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v31, v14);
  v15 = 7105601;
  v16 = 0xE500000000000000;
  v17 = 0x534F63616DLL;
  v18 = 0xE400000000000000;
  v19 = 1397716596;
  if (v12 != 3)
  {
    v19 = 0x534F6E6F69736976;
    v18 = 0xE800000000000000;
  }

  if (v12 != 2)
  {
    v17 = v19;
    v16 = v18;
  }

  if (v12)
  {
    v15 = 5459817;
  }

  if (v12 <= 1)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v12 <= 1)
  {
    v21 = 0xE300000000000000;
  }

  else
  {
    v21 = v16;
  }

  *(&v28 + 1) = sub_24F9284A8();
  v29 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  sub_24EF677C4(v20, v21, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v25 + 8))(v7, v26);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_24EF68050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DE8);
  sub_24E602068(&qword_27F234DF0, &qword_27F22BF70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DD8);
  sub_24EF6A158();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24EF6A2AC();
  return sub_24F927238();
}

uint64_t sub_24EF681C0(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = *a1;
  if (v6 == 1)
  {
    if (qword_27F211618 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39ECF8;
  }

  else
  {
    if (qword_27F211628 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39ED18;
  }

  v8 = *v7;

  v16 = v8;
  v17 = v9;
  sub_24E600AEC();
  *v5 = sub_24F925E18();
  *(v5 + 1) = v10;
  v5[16] = v11 & 1;
  *(v5 + 3) = v12;
  v5[32] = v6;
  v5[33] = 1;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9248C8();
  __swift_project_value_buffer(v13, qword_27F39F078);
  v14 = sub_24EF6A158();
  v16 = MEMORY[0x277CE0BD8];
  v17 = &type metadata for AchievementsByGameSortOption;
  v18 = MEMORY[0x277CE0BC8];
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EF683FC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DA0);
  sub_24E602068(&qword_27F234DA8, &qword_27F22BF88);
  sub_24EF69EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D78);
  sub_24F9251E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  swift_getOpaqueTypeConformance2();
  sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EF6863C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9251E8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D78);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D70);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = *a1;
  v44 = a2;
  v40 = v19;
  v41 = v18;
  if (v17 <= 1)
  {
    if (v17)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v28 = qword_27F39ED48;

      v45 = v28;
      v46 = v29;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v22 = qword_27F39ED38;

      v45 = v22;
      v46 = v23;
    }
  }

  else if (v17 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v24 = qword_27F39ED58;

    v45 = v24;
    v46 = v25;
  }

  else if (v17 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39ED68;

    v45 = v20;
    v46 = v21;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v26 = qword_27F39ED78;

    v45 = v26;
    v46 = v27;
  }

  sub_24E600AEC();
  sub_24F926EB8();
  (*(v8 + 32))(v13, v10, v7);
  v30 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B68) + 36)];
  *v30 = v17;
  v30[1] = 1;
  sub_24F9251D8();
  v31 = sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v32 = sub_24EF69EE4();
  v45 = v7;
  v46 = &type metadata for AchievementsPlatformFilterOption;
  v47 = v31;
  v48 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0]);
  v35 = v43;
  sub_24F9260E8();
  (*(v42 + 8))(v6, v35);
  (*(v39 + 8))(v13, v11);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v36 = sub_24F9248C8();
  __swift_project_value_buffer(v36, qword_27F39F078);
  v45 = v11;
  v46 = v35;
  v47 = OpaqueTypeConformance2;
  v48 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v41;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v40 + 8))(v16, v37);
}

uint64_t sub_24EF68C88@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B820);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = v64 - v6;
  v7 = sub_24F9251E8();
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D88);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D90);
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x28223BE20](v17);
  v69 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = v64 - v20;
  if (qword_27F211630 != -1)
  {
    swift_once();
  }

  v78 = qword_27F39ED28;
  v79 = unk_27F39ED30;
  v21 = *(type metadata accessor for AchievementsByGameAccessoryView() + 20);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  v68 = a1;
  v64[2] = v21;
  v64[1] = v22;
  sub_24F927358();
  v23 = v82;
  swift_getKeyPath();
  v82 = v23;
  sub_24EF6A110(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider);
  sub_24F91FD88();

  v64[0] = sub_24E600AEC();
  sub_24F926EB8();
  sub_24F9251D8();
  v24 = sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v25 = sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0]);
  sub_24F9260E8();
  (*(v65 + 8))(v9, v7);
  (*(v11 + 8))(v13, v10);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v26 = sub_24F9248C8();
  v27 = __swift_project_value_buffer(v26, qword_27F39F078);
  v78 = v10;
  v79 = v7;
  v80 = v24;
  v81 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v67;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v66 + 8))(v16, v28);
  sub_24F927358();
  v29 = v78;
  swift_getKeyPath();
  v78 = v29;
  sub_24F91FD88();

  v30 = *(v29 + 25);

  v65 = v27;
  if (v30 <= 1)
  {
    if (v30)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v31 = &qword_27F39ED48;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v31 = &qword_27F39ED38;
    }
  }

  else if (v30 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED58;
  }

  else if (v30 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED68;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED78;
  }

  v32 = *v31;

  v78 = v32;
  v79 = v33;
  v34 = sub_24F925E18();
  v36 = v35;
  v38 = v37;
  sub_24F925898();
  v39 = sub_24F925C98();
  v41 = v40;
  v43 = v42;

  sub_24E600B40(v34, v36, v38 & 1);

  sub_24F926D18();
  v44 = sub_24F925C48();
  v46 = v45;
  LOBYTE(v36) = v47;
  v49 = v48;

  sub_24E600B40(v39, v41, v43 & 1);

  v78 = v44;
  v79 = v46;
  LOBYTE(v80) = v36 & 1;
  v81 = v49;
  v50 = v76;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E600B40(v44, v46, v36 & 1);

  v51 = v69;
  v52 = v70;
  v53 = *(v70 + 16);
  v54 = v71;
  v53(v69, v77, v71);
  v55 = v74;
  v68 = *(v74 + 16);
  v56 = v72;
  v57 = v50;
  v58 = v75;
  v68(v72, v57, v75);
  v59 = v73;
  v53(v73, v51, v54);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D98);
  v68(&v59[*(v60 + 48)], v56, v58);
  v61 = *(v55 + 8);
  v61(v76, v58);
  v62 = *(v52 + 8);
  v62(v77, v54);
  v61(v56, v58);
  return (v62)(v51, v54);
}

uint64_t sub_24EF696B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsByGameAccessoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF69720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsByGameAccessoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF69784(uint64_t a1)
{
  v3 = *(type metadata accessor for AchievementsByGameAccessoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EF65D5C(a1, v4);
}

unint64_t sub_24EF69804()
{
  result = qword_27F234CC0;
  if (!qword_27F234CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8);
    sub_24EF698BC();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CC0);
  }

  return result;
}

unint64_t sub_24EF698BC()
{
  result = qword_27F234CC8;
  if (!qword_27F234CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CD0);
    sub_24EF69974();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CC8);
  }

  return result;
}

unint64_t sub_24EF69974()
{
  result = qword_27F234CD8;
  if (!qword_27F234CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CE0);
    sub_24E60156C();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CD8);
  }

  return result;
}

uint64_t sub_24EF69A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF69AA4()
{
  result = qword_27F234D10;
  if (!qword_27F234D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C90);
    sub_24EF69B30();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D10);
  }

  return result;
}

unint64_t sub_24EF69B30()
{
  result = qword_27F234D18;
  if (!qword_27F234D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D08);
    sub_24E602068(&qword_27F234D20, &qword_27F234D00);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D18);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{
  v1 = type metadata accessor for AchievementsByGameAccessoryView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[6];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF69DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AchievementsByGameAccessoryView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EF69E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF69EE4()
{
  result = qword_27F234D60;
  if (!qword_27F234D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D60);
  }

  return result;
}

unint64_t sub_24EF69F38()
{
  result = qword_27F234D68;
  if (!qword_27F234D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D78);
    sub_24F9251E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    sub_24EF69EE4();
    swift_getOpaqueTypeConformance2();
    sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D68);
  }

  return result;
}

uint64_t sub_24EF6A110(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EF6A158()
{
  result = qword_27F234DC8;
  if (!qword_27F234DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DC8);
  }

  return result;
}

unint64_t sub_24EF6A1AC()
{
  result = qword_27F234DD0;
  if (!qword_27F234DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DD8);
    sub_24EF6A158();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DD0);
  }

  return result;
}

unint64_t sub_24EF6A2AC()
{
  result = qword_27F234DF8;
  if (!qword_27F234DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DF8);
  }

  return result;
}

uint64_t sub_24EF6A300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C90);
  sub_24EF69AA4();
  swift_getOpaqueTypeConformance2();
  sub_24EC3D7A4();
  swift_getOpaqueTypeConformance2();
  sub_24EC3D82C();
  return swift_getOpaqueTypeConformance2();
}

void sub_24EF6A41C(void **a1)
{
  v2 = *(type metadata accessor for ActivityDefinitionDetail() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E861890(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EF6A85C(v5);
  *a1 = v3;
}

uint64_t sub_24EF6A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v6 = swift_task_alloc();
  v4[15] = v6;
  *v6 = v4;
  v6[1] = sub_24EF6A588;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24EF6A588()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E64E9E8;
  }

  else
  {
    v2 = sub_24EF6A69C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6A69C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_24E83FD08;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = MEMORY[0x277D84F90];

  return MEMORY[0x282164978](v6, v4, v7, v5, v1, v2);
}

uint64_t sub_24EF6A790(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_24E67D244;

  return (sub_24EF6B9C0)(v5, v6, v7, a3);
}

void sub_24EF6A85C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ActivityDefinitionDetail();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityDefinitionDetail() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EF6AB9C(v8, v9, a1, v4);
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
    sub_24EF6A988(0, v2, 1, a1);
  }
}

void sub_24EF6A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for ActivityDefinitionDetail();
  MEMORY[0x28223BE20](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24EF6D508(v22, v16);
      sub_24EF6D508(v19, v12);
      if (*(v16 + 4) == *(v12 + 4) && *(v16 + 5) == *(v12 + 5))
      {
        sub_24EF6D56C(v12);
        sub_24EF6D56C(v16);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24F92CE08();
      sub_24EF6D56C(v12);
      sub_24EF6D56C(v16);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_24EF1EB34(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EF1EB34(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24EF6AB9C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v137 = type metadata accessor for ActivityDefinitionDetail();
  v131 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v127 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  MEMORY[0x28223BE20](v18);
  v135 = &v117 - v19;
  MEMORY[0x28223BE20](v20);
  v134 = &v117 - v21;
  MEMORY[0x28223BE20](v22);
  v123 = &v117 - v23;
  MEMORY[0x28223BE20](v24);
  v122 = &v117 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_24EF6B4D4(*a3 + *(v131 + 72) * v28, *a3 + *(v131 + 72) * *&v113[16 * v112 + 16], *a3 + *(v131 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_24E86164C(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_24E8615C0(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_24E86164C(v28);
    goto LABEL_112;
  }

  v118 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v132 = a3;
  v128 = v14;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v129 = v26;
      v31 = *a3;
      v32 = *(v131 + 72);
      v33 = v27 + 1;
      v34 = v122;
      sub_24EF6D508(v31 + v32 * v30, v122);
      v133 = v32;
      v35 = v31 + v32 * v29;
      v36 = v123;
      sub_24EF6D508(v35, v123);
      v37 = *(v34 + 32) == *(v36 + 32) && *(v34 + 40) == *(v36 + 40);
      v120 = v6;
      if (v37)
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_24F92CE08();
      }

      v119 = v28;
      sub_24EF6D56C(v123);
      sub_24EF6D56C(v122);
      v121 = v29;
      v38 = v29 + 2;
      v39 = v133 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v133 * v33;
      a3 = v31 + v133 * v33;
      do
      {
        v6 = v38;
        v44 = v41;
        v28 = v42;
        v5 = v39;
        if (v38 >= v129)
        {
          break;
        }

        v45 = v38;
        v46 = v134;
        sub_24EF6D508(v40, v134);
        v47 = v135;
        sub_24EF6D508(a3, v135);
        v48 = *(v46 + 32) == *(v47 + 32) && *(v46 + 40) == *(v47 + 40);
        v43 = v48 ? 0 : sub_24F92CE08();
        v6 = v45;
        sub_24EF6D56C(v135);
        sub_24EF6D56C(v134);
        v38 = v45 + 1;
        v40 += v133;
        a3 += v133;
        v41 = v44 + 1;
        v42 = v28 + v133;
        v39 = v5 + v133;
        v14 = v128;
      }

      while (((v130 ^ v43) & 1) == 0);
      if (v130)
      {
        if (v6 < v121)
        {
          goto LABEL_139;
        }

        if (v121 >= v6)
        {
          v30 = v6;
          v28 = v119;
          v6 = v120;
          a3 = v132;
          v29 = v121;
          goto LABEL_36;
        }

        v49 = v121 * v133;
        v50 = v121;
        do
        {
          if (v50 != v44)
          {
            v52 = *v132;
            if (!*v132)
            {
              goto LABEL_145;
            }

            v130 = v52 + v49;
            sub_24EF1EB34(v52 + v49, v127);
            if (v49 < v28 || v130 >= v52 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_24EF1EB34(v127, v52 + v28);
          }

          ++v50;
          v28 -= v133;
          v5 -= v133;
          v49 += v133;
        }

        while (v50 < v44--);
      }

      v30 = v6;
      v28 = v119;
      v6 = v120;
      a3 = v132;
      v29 = v121;
    }

LABEL_36:
    v53 = *(a3 + 8);
    v133 = v30;
    if (v30 < v53)
    {
      v80 = __OFSUB__(v30, v29);
      v54 = v30 - v29;
      if (v80)
      {
        goto LABEL_138;
      }

      if (v54 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v133 < v29)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24E615ED8(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v28 = sub_24E615ED8((v65 > 1), v66 + 1, 1, v28);
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    v69 = v133;
    *(v68 + 32) = v29;
    *(v68 + 40) = v69;
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v28 + 32);
          v71 = *(v28 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_126;
          }

          v86 = (v28 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_129;
          }

          v92 = (v28 + 32 + 16 * a3);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_133;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v96 = (v28 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_93:
        if (v91)
        {
          goto LABEL_128;
        }

        v99 = v28 + 16 * a3;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_131;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_100:
        v107 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v132)
        {
          goto LABEL_144;
        }

        v108 = v28;
        v109 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v107);
        v110 = *(v109 + 16 * a3 + 8);
        sub_24EF6B4D4(*v132 + *(v131 + 72) * v28, *v132 + *(v131 + 72) * *(v109 + 16 * a3), *v132 + *(v131 + 72) * v110, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v110 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24E86164C(v108);
        }

        if (v107 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v111 = &v108[16 * v107];
        *(v111 + 4) = v28;
        *(v111 + 5) = v110;
        v138 = v108;
        sub_24E8615C0(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v28 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_124;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_125;
      }

      v81 = (v28 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_127;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_130;
      }

      if (v85 >= v77)
      {
        v103 = (v28 + 32 + 16 * a3);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v132;
    v27 = v133;
    v26 = v132[1];
    if (v133 >= v26)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v29, v118))
  {
    goto LABEL_140;
  }

  if (v29 + v118 >= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v29 + v118;
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v133 == v55)
  {
    goto LABEL_59;
  }

  v119 = v28;
  v120 = v6;
  v56 = *a3;
  v57 = *(v131 + 72);
  v58 = *a3 + v57 * (v133 - 1);
  v59 = -v57;
  v121 = v29;
  a3 = v29 - v133;
  v125 = v57;
  v126 = v55;
  v60 = v56 + v133 * v57;
LABEL_48:
  v5 = v60;
  v129 = a3;
  v130 = v58;
  while (1)
  {
    sub_24EF6D508(v5, v17);
    sub_24EF6D508(v58, v14);
    if (*(v17 + 4) == *(v14 + 4) && *(v17 + 5) == *(v14 + 5))
    {
      sub_24EF6D56C(v14);
      sub_24EF6D56C(v17);
LABEL_47:
      v58 = v130 + v125;
      a3 = v129 - 1;
      v60 += v125;
      if (++v133 == v126)
      {
        v133 = v126;
        v28 = v119;
        v6 = v120;
        v29 = v121;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_24F92CE08();
    sub_24EF6D56C(v14);
    sub_24EF6D56C(v17);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v56)
    {
      break;
    }

    v63 = v136;
    sub_24EF1EB34(v5, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_24EF1EB34(v63, v58);
    v58 += v59;
    v5 += v59;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

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
}

void sub_24EF6B4D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for ActivityDefinitionDetail();
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v52 = a1;
  v51 = a4;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v18;
      v32 = a4 + v23;
      do
      {
        v43 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v45 = v33;
        v46 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v52 = v33;
            v30 = v43;
            goto LABEL_69;
          }

          v35 = a3;
          v44 = v30;
          v36 = v31;
          v37 = v32 + v31;
          v38 = v32 + v31;
          v39 = v47;
          sub_24EF6D508(v38, v47);
          v40 = v48;
          sub_24EF6D508(v34, v48);
          v41 = *(v39 + 32) == *(v40 + 32) && *(v39 + 40) == *(v40 + 40);
          v42 = v41 ? 0 : sub_24F92CE08();
          a3 = v35 + v36;
          sub_24EF6D56C(v48);
          sub_24EF6D56C(v47);
          if (v42)
          {
            break;
          }

          v30 = v37;
          if (v35 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v37;
            v34 = v46;
          }

          else
          {
            v34 = v46;
            if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v37;
            }
          }

          v32 = v30;
          v31 = v36;
          v33 = v45;
          if (v37 <= a4)
          {
            v52 = v45;
            goto LABEL_69;
          }
        }

        if (v35 < v45 || a3 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v36;
        }

        else
        {
          a2 = v46;
          v31 = v36;
          if (v35 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v32 > a4);
    }

    v52 = a2;
LABEL_69:
    v50 = v30;
  }

  else
  {
    v21 = a2;
    v22 = v20 * v18;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v50 = a4 + v22;
    if (v22 >= 1 && v21 < a3)
    {
      v26 = v21;
      while (1)
      {
        v27 = v26;
        sub_24EF6D508(v26, v16);
        sub_24EF6D508(a4, v13);
        if (*(v16 + 4) == *(v13 + 4) && *(v16 + 5) == *(v13 + 5))
        {
          break;
        }

        v29 = sub_24F92CE08();
        sub_24EF6D56C(v13);
        sub_24EF6D56C(v16);
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v27 || a1 >= v27 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v27 + v18;
LABEL_39:
        a1 += v18;
        v52 = a1;
        if (a4 >= v24 || v26 >= a3)
        {
          goto LABEL_70;
        }
      }

      sub_24EF6D56C(v13);
      sub_24EF6D56C(v16);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = a4 + v18;
      a4 += v18;
      v26 = v27;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_24F8FB140(&v52, &v51, &v50);
}

uint64_t sub_24EF6B9C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = a4;
  *(v4 + 448) = a3;
  *(v4 + 176) = a1;
  v5 = sub_24F9204D8();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = *(type metadata accessor for ActivityDefinitionDetail() - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00) - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  *(v4 + 280) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E08);
  *(v4 + 288) = v6;
  *(v4 + 296) = *(v6 - 8);
  *(v4 + 304) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  *(v4 + 312) = v7;
  v8 = *(v7 - 8);
  *(v4 + 320) = v8;
  *(v4 + 328) = *(v8 + 64);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF6BC84, 0, 0);
}

uint64_t sub_24EF6BC84()
{
  v1 = *(v0 + 448);

  sub_24F920EF8();
  if (v1 == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
    v3 = swift_task_alloc();
    *(v0 + 352) = v3;
    *v3 = v0;
    v3[1] = sub_24EF6BF5C;

    return MEMORY[0x28217F228](v0 + 136, v2, v2);
  }

  else
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 320);
    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 192);
    v10 = sub_24F921038();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    (*(v6 + 16))(v5, v4, v7);
    v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v6 + 32))(v12 + v11, v5, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E10);
    sub_24EF6D3E0(&qword_27F234E18);
    sub_24EF6D3E0(&qword_27F234E20);
    sub_24F920A28();
    v13 = swift_task_alloc();
    *(v0 + 384) = v13;
    *v13 = v0;
    v13[1] = sub_24EF6C57C;
    v14 = *(v0 + 288);

    return MEMORY[0x282164EA8](v14);
  }
}

uint64_t sub_24EF6BF5C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_24EF6C26C;
  }

  else
  {
    v2 = sub_24EF6C070;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C070()
{
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_24EF6C158;
  v4 = v0[43];

  return MEMORY[0x282164988](v4, v1, v2);
}

uint64_t sub_24EF6C158()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24EF6CF00;
  }

  else
  {
    v2 = sub_24EF6C36C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C26C()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6C36C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[24];
  v7 = sub_24F921038();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E10);
  sub_24EF6D3E0(&qword_27F234E18);
  sub_24EF6D3E0(&qword_27F234E20);
  sub_24F920A28();
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_24EF6C57C;
  v11 = v0[36];

  return MEMORY[0x282164EA8](v11);
}

uint64_t sub_24EF6C57C(uint64_t a1)
{
  v3 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    (*(v3[37] + 8))(v3[38], v3[36]);

    return MEMORY[0x2822009F8](sub_24EF6D008, 0, 0);
  }

  else
  {
    (*(v3[37] + 8))(v3[38], v3[36]);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
    v5 = swift_task_alloc();
    v3[51] = v5;
    *v5 = v3;
    v5[1] = sub_24EF6C750;

    return MEMORY[0x28217F228](v3 + 7, v4, v4);
  }
}

uint64_t sub_24EF6C750()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_24EF6CA90;
  }

  else
  {
    v2 = sub_24EF6C86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C86C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_24EF6C954;
  v4 = v0[49];

  return MEMORY[0x282164998](v4, v1, v2);
}

uint64_t sub_24EF6C954(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_24EF6D108;
  }

  else
  {
    v4 = sub_24EF6CB90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EF6CA90()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6CB90()
{
  v39 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v36 = v0[29];
    v4 = v0[26];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = (v4 + 48);
    v32 = (v4 + 16);
    v33 = (v4 + 32);
    v31 = (v4 + 8);
    v8 = MEMORY[0x277D84F90];
    v34 = (v4 + 48);
    v35 = v6;
    do
    {
      v10 = v0[33];
      v9 = v0[34];
      v11 = v0[25];
      sub_24EF6D430(v5, v9);
      sub_24EF6D430(v9, v10);
      v12 = (*v7)(v10, 1, v11);
      v14 = v0[33];
      v13 = v0[34];
      if (v12 == 1)
      {
        sub_24EF6D4A0(v0[34]);
        sub_24EF6D4A0(v14);
      }

      else
      {
        v37 = v0[31];
        v15 = v8;
        v16 = v0[30];
        v18 = v0[27];
        v17 = v0[28];
        v19 = v0[25];
        (*v33)(v17, v14, v19);
        (*v32)(v18, v17, v19);
        ActivityDefinitionDetail.init(def:)(v18, v16);
        (*v31)(v17, v19);
        sub_24EF6D4A0(v13);
        v20 = v16;
        v8 = v15;
        sub_24EF1EB34(v20, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E619900(0, v15[2] + 1, 1, v15);
        }

        v22 = v8[2];
        v21 = v8[3];
        v7 = v34;
        v6 = v35;
        if (v22 >= v21 >> 1)
        {
          v8 = sub_24E619900(v21 > 1, v22 + 1, 1, v8);
        }

        v23 = v0[31];
        v8[2] = v22 + 1;
        sub_24EF1EB34(v23, v8 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v22);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v24 = v0[55];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v38 = v8;

  sub_24EF6A41C(&v38);
  if (v24)
  {
  }

  else
  {
    v26 = v0[43];
    v28 = v0[39];
    v27 = v0[40];

    (*(v27 + 8))(v26, v28);
    v29 = v38;

    v30 = v0[1];

    return v30(v29);
  }
}

uint64_t sub_24EF6CF00()
{
  (*(v0[40] + 8))(v0[43], v0[39]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D008()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D108()
{
  (*(v0[40] + 8))(v0[43], v0[39]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EF6D2E0(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24EF6A4C4(a1, a2, v8, v2 + v7);
}

uint64_t sub_24EF6D3E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EF6D430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF6D4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF6D508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDefinitionDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF6D56C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDefinitionDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF6D5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24EF6D610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF6D66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF6DA74();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38);
  v17 = 0;
  sub_24EF6DAC8();
  sub_24F92CC68();
  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E48);
  v17 = 1;
  sub_24EF6DB2C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v11;
  sub_24EF6DC6C(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EF6DCA4(v14);
}

uint64_t sub_24EF6D8A8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E65746E69;
  }
}

uint64_t sub_24EF6D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA650F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EF6D9C4(uint64_t a1)
{
  v2 = sub_24EF6DA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF6DA00(uint64_t a1)
{
  v2 = sub_24EF6DA74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EF6DA74()
{
  result = qword_27F234E30;
  if (!qword_27F234E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E30);
  }

  return result;
}

unint64_t sub_24EF6DAC8()
{
  result = qword_27F234E40;
  if (!qword_27F234E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E40);
  }

  return result;
}

unint64_t sub_24EF6DB2C()
{
  result = qword_27F234E50;
  if (!qword_27F234E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E48);
    sub_24EF6DBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E50);
  }

  return result;
}

unint64_t sub_24EF6DBB0()
{
  result = qword_27F234E58;
  if (!qword_27F234E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E58);
  }

  return result;
}

uint64_t sub_24EF6DC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EF6DCE8()
{
  result = qword_27F234E60;
  if (!qword_27F234E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E60);
  }

  return result;
}

unint64_t sub_24EF6DD40()
{
  result = qword_27F234E68;
  if (!qword_27F234E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E68);
  }

  return result;
}

unint64_t sub_24EF6DD98()
{
  result = qword_27F234E70;
  if (!qword_27F234E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E70);
  }

  return result;
}

unint64_t InstallPageOfferMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24EF6DE00@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static InAppPurchaseInstallPagePresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_27F234E78 = a1;
}

void sub_24EF6DE60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  sub_24EF70FCC();
  v4 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_24EF6DECC();
}

void sub_24EF6DECC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v4 = *(v2 + 40);

    v4(0, v11, sel_offerButtonTapped, ObjectType, v2);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 8);
    v6 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v7 = *(v5 + 40);

    v7(1, v11, sel_didAcceptPreInstallOffer, v6, v5);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 8);
    v9 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v10 = *(v8 + 40);

    v10(2, v11, sel_didAcceptPreInstallOffer, v9, v8);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_24EF6E910();
    if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
    {
      sub_24EF6EDA8();
    }
  }
}

uint64_t sub_24EF6E148(uint64_t a1, uint64_t a2)
{
  sub_24EF70FCC();
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_24EF6DECC();
  return swift_unknownObjectRelease();
}

void (*sub_24EF6E1BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EF6E25C;
}

void sub_24EF6E25C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_24EF70FCC();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_24EF6DECC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24EF70FCC();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_24EF6DECC();
  }

  swift_unknownObjectRelease();

  free(v2);
}

uint64_t InAppPurchaseInstallPagePresenter.__allocating_init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + v11) = a2;

  v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9 + v15, a3, v16);
  v18 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_24EC8415C(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage();
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v24 = sub_24EF71098();
    v25 = a2;
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v25;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = v24;
  swift_beginAccess();

  sub_24EA095A4(v27, v21 + 40);
  swift_endAccess();
  sub_24EC832DC();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_24E601704(v27, &qword_27F224F98);
  return v21;
}