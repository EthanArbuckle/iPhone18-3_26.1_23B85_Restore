double sub_20C44C7CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v119 = a3;
  v130 = a2;
  v131 = a4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  v9 = *(*(v118 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v118);
  v124 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v108 - v12;
  v13 = sub_20C4603C0();
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13);
  v110 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C460050();
  v116 = *(v16 - 8);
  v117 = v16;
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v16);
  v114 = v18;
  v115 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DynamicImageAssetView();
  v120 = *(v19 - 8);
  v20 = *(v120 + 64);
  MEMORY[0x28223BE20](v19);
  v121 = v21;
  v122 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ImageAsset();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  MEMORY[0x28223BE20](v22);
  v123 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v109 = *(v127 - 8);
  v32 = *(v109 + 64);
  v33 = MEMORY[0x28223BE20](v127);
  v133 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v132 = &v108 - v35;
  v113 = v19;
  v36 = *(v19 + 28);
  v126 = a1;
  v37 = (a1 + v36);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v37 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v41 = v31;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v42 = v152;
  sub_20C409B04(v31, v29, &qword_27C7BB600, &unk_20C464880);
  if ((*(v128 + 48))(v29, 1, v129) == 1)
  {

    sub_20C40B440(v31, &qword_27C7BB600, &unk_20C464880);
    sub_20C40B440(v29, &qword_27C7BB600, &unk_20C464880);
    v43 = v132;
    swift_storeEnumTagMultiPayload();
    v44 = v130;
    goto LABEL_12;
  }

  v45 = v123;
  sub_20C451170(v29, v123, type metadata accessor for ImageAsset);
  v43 = v132;
  if (*(v42 + 16))
  {
    v46 = sub_20C457F00(v45);
    v44 = v130;
    if (v47)
    {
      v48 = *(*(v42 + 56) + 8 * v46);
      if (*(v48 + 16))
      {
        v49 = *(*(v42 + 56) + 8 * v46);

        v50 = sub_20C457E7C(v44);
        if (v51)
        {
          sub_20C409B04(*(v48 + 56) + *(v109 + 72) * v50, v43, &qword_27C7BAF10, &qword_20C4640D0);

          sub_20C4511D8(v45, type metadata accessor for ImageAsset);
          sub_20C40B440(v41, &qword_27C7BB600, &unk_20C464880);

          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    v44 = v130;
  }

  sub_20C4511D8(v45, type metadata accessor for ImageAsset);
  sub_20C40B440(v41, &qword_27C7BB600, &unk_20C464880);
  swift_storeEnumTagMultiPayload();
LABEL_12:
  sub_20C409B04(v43, v133, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = *(v126 + *(v113 + 32));
      if (v53)
      {
        v54 = v53;
        sub_20C4603A0();
        v56 = v110;
        v55 = v111;
        v57 = v112;
        (*(v111 + 104))(v110, *MEMORY[0x277CE0FE0], v112);
        v58 = sub_20C4603D0();

        (*(v55 + 8))(v56, v57);
        *&v134[0] = v58;
        WORD4(v134[0]) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      else
      {
        sub_20C44AC34(&v138);
        *&v134[0] = v138;
        BYTE8(v134[0]) = BYTE8(v138);
        BYTE9(v134[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      v81 = v138;
      v82 = BYTE8(v138);
      v83 = BYTE9(v138);
      v84 = 256;
      if (!BYTE9(v138))
      {
        v84 = 0;
      }

      v130 = v138;
      *&v134[0] = v138;
      *(&v134[0] + 1) = v84 | BYTE8(v138);
      v134[1] = 0u;
      v135 = 0u;
      LOBYTE(v136) = 1;
      LODWORD(v129) = BYTE8(v138);
      LODWORD(v128) = BYTE9(v138);
      sub_20C417508(v138, BYTE8(v138), SBYTE9(v138));
      sub_20C417508(v81, v82, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      v85 = *(&v138 + 1);
      v86 = v139;
      v87 = v140[0];
      v88 = v140[1];
      LOBYTE(v150[0]) = v140[1];
      LOBYTE(v146) = 0;
      v134[0] = v138;
      v127 = v138;
      v134[1] = v139;
      v135 = v140[0];
      LOBYTE(v136) = v140[1];
      v137 = 0;
      sub_20C417540(v138, *(&v138 + 1), v139, *(&v139 + 1), *&v140[0], *(&v140[0] + 1), v140[1], j__swift_retain, sub_20C41751C, sub_20C417508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      v89 = v130;
      v90 = v129;
      v91 = v128;
      sub_20C41752C(v130, v129, v128);
      sub_20C417540(v127, v85, v86, *(&v86 + 1), v87, *(&v87 + 1), v88, j__swift_release, sub_20C4175F8, sub_20C41752C);
      sub_20C41752C(v89, v90, v91);
      sub_20C40B440(v132, &qword_27C7BAF10, &qword_20C4640D0);
      v141 = v138;
      v142 = v139;
      *v143 = v140[0];
      *&v143[15] = *(v140 + 15);
      v92 = sub_20C45FCC0();
      (*(*(v92 - 8) + 8))(v133, v92);
    }

    else
    {
      v60 = v126;
      sub_20C44AC34(&v138);
      v61 = v138;
      v133 = BYTE8(v138);
      v62 = v122;
      sub_20C4516E4(v60, v122, type metadata accessor for DynamicImageAssetView);
      v63 = v115;
      v64 = v116;
      v65 = v117;
      (*(v116 + 16))(v115, v119, v117);
      v66 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v67 = (v121 + *(v64 + 80) + v66) & ~*(v64 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = a5;
      *(v68 + 24) = a6;
      sub_20C451170(v62, v68 + v66, type metadata accessor for DynamicImageAssetView);
      (*(v64 + 32))(v68 + v67, v63, v65);
      *&v134[0] = v61;
      *(&v134[0] + 1) = v133;
      *&v134[1] = sub_20C45161C;
      *(&v134[1] + 1) = v68;
      v135 = 0uLL;
      LOBYTE(v136) = 0;
      j__swift_retain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      LOBYTE(v150[0]) = v140[1];
      LOBYTE(v146) = 0;
      v134[0] = v138;
      v134[1] = v139;
      v135 = v140[0];
      LOBYTE(v136) = v140[1];
      v137 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      j__swift_release();

      sub_20C40B440(v132, &qword_27C7BAF10, &qword_20C4640D0);
      v141 = v138;
      v142 = v139;
      *v143 = v140[0];
      *&v143[15] = *(v140 + 15);
    }
  }

  else
  {
    v59 = v125;
    sub_20C409BD0(v133, v125, &qword_27C7BAF60, &unk_20C462050);
    sub_20C409B04(v59, v124, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20C44AC34(&v138);
      v145 = BYTE8(v138);
      v144 = 1;
      *&v134[0] = v138;
      BYTE8(v134[0]) = BYTE8(v138);
      HIBYTE(v136) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v138, v134, &qword_27C7BB028, &qword_20C466CE0);
    }

    else
    {
      if (qword_27C7BAC08 != -1)
      {
        swift_once();
      }

      v69 = qword_27C7C40A8;
      v70 = v44[3];
      v140[0] = v44[2];
      v140[1] = v70;
      v140[2] = v44[4];
      v71 = v44[1];
      v138 = *v44;
      v139 = v71;
      v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
      sub_20C40C520(v44, v134);
      v73 = sub_20C45FE40();
      v74 = [v69 objectForKey_];

      if (v74)
      {
        v75 = sub_20C460130();
        v76 = v74;
        sub_20C4603A0();
        v78 = v110;
        v77 = v111;
        v79 = v112;
        (*(v111 + 104))(v110, *MEMORY[0x277CE0FE0], v112);
        v80 = sub_20C4603D0();

        (*(v77 + 8))(v78, v79);
        *&v134[0] = v75;
        *(v134 + 8) = xmmword_20C461E70;
        v135 = 0uLL;
        *(&v134[1] + 1) = v80;
        LOBYTE(v136) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0);
        sub_20C416F80();
        sub_20C460220();
      }

      else
      {
        v93 = v126;
        sub_20C44AC34(&v138);
        v130 = v138;
        v94 = BYTE8(v138);
        v95 = v122;
        sub_20C4516E4(v93, v122, type metadata accessor for DynamicImageAssetView);
        v96 = (*(v120 + 80) + 16) & ~*(v120 + 80);
        v97 = (v121 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
        v98 = swift_allocObject();
        sub_20C451170(v95, v98 + v96, type metadata accessor for DynamicImageAssetView);
        v99 = (v98 + v97);
        v100 = v44[3];
        v99[2] = v44[2];
        v99[3] = v100;
        v99[4] = v44[4];
        v101 = v44[1];
        *v99 = *v44;
        v99[1] = v101;
        v102 = (v98 + ((v97 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v102 = a5;
        v102[1] = a6;
        *&v134[0] = v130;
        *(&v134[0] + 1) = v94;
        *&v134[1] = sub_20C451238;
        *(&v134[1] + 1) = v98;
        v135 = 0uLL;
        LOBYTE(v136) = 1;
        sub_20C40C520(v44, &v138);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0);
        sub_20C416F80();
        sub_20C460220();
      }

      v145 = v140[1];
      v144 = 0;
      v134[0] = v138;
      v134[1] = v139;
      v135 = v140[0];
      v136 = LOBYTE(v140[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v138, v134, &qword_27C7BB028, &qword_20C466CE0);
      sub_20C40B440(v124, &qword_27C7BAF60, &unk_20C462050);
    }

    v146 = v138;
    v147 = v139;
    v148 = v140[0];
    v149 = v140[1];
    v150[0] = v138;
    v150[1] = v139;
    v150[2] = v140[0];
    v151 = v140[1];
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    v134[0] = v146;
    v134[1] = v147;
    v135 = v148;
    v136 = v149;
    v145 = 1;
    v137 = 1;
    sub_20C409B04(&v146, &v138, &qword_27C7BB028, &qword_20C466CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C416EC8();
    sub_20C4171CC();
    sub_20C460220();
    sub_20C40B440(v150, &qword_27C7BB028, &qword_20C466CE0);
    sub_20C40B440(&v146, &qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C40B440(v125, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v43, &qword_27C7BAF10, &qword_20C4640D0);
    v141 = v138;
    v142 = v139;
    *v143 = v140[0];
    *&v143[15] = *(v140 + 15);
    v104 = sub_20C45FC90();
    (*(*(v104 - 8) + 8))(v133 + v103, v104);
  }

  v105 = v142;
  v106 = v131;
  *v131 = v141;
  v106[1] = v105;
  result = *v143;
  v106[2] = *v143;
  *(v106 + 47) = *&v143[15];
  return result;
}

uint64_t sub_20C44DBF0(uint64_t a1, _OWORD *a2, double a3, double a4)
{
  v34 = a2;
  v32 = type metadata accessor for DynamicImageAssetAction();
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ImageAsset();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *(type metadata accessor for DynamicImageAssetView() + 28));
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20C40B440(v12, &qword_27C7BB600, &unk_20C464880);
  }

  v22 = v12;
  v23 = v31;
  sub_20C451170(v22, v31, type metadata accessor for ImageAsset);
  sub_20C460020();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v25 = v33;
  v26 = (v33 + *(v24 + 48));
  v27 = (v33 + *(v24 + 64));
  sub_20C4516E4(v23, v33, type metadata accessor for ImageAsset);
  v28 = v34;
  v29 = v34[3];
  v26[2] = v34[2];
  v26[3] = v29;
  v26[4] = v28[4];
  v30 = v28[1];
  *v26 = *v28;
  v26[1] = v30;
  *v27 = a3;
  v27[1] = a4;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v28, v35);
  sub_20C460440();

  sub_20C4511D8(v25, type metadata accessor for DynamicImageAssetAction);
  return sub_20C4511D8(v23, type metadata accessor for ImageAsset);
}

uint64_t sub_20C44DF50(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_20C460090();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DynamicImageAssetAction();
  v19 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  sub_20C409B04(a4, &v39 - v24, &qword_27C7BAF10, &qword_20C4640D0);
  LODWORD(a4) = swift_getEnumCaseMultiPayload();
  result = sub_20C40B440(v25, &qword_27C7BAF10, &qword_20C4640D0);
  if (a4 == 2)
  {
    v27 = type metadata accessor for DynamicImageAssetView();
    v28 = (a5 + v27[7]);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v28 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    v39 = a6;
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
    sub_20C460020();
    v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
    sub_20C450198(v18);
    LOBYTE(v29) = sub_20C45FD30();
    v33 = a5 + v27[5];
    sub_20C450424(v14);
    v34 = type metadata accessor for DynamicArtworkLayoutEnvironment();
    v35 = &v21[v34[6]];
    sub_20C45FE00();
    v36 = *(a5 + v27[9]);
    v37 = a5 + v27[6];
    sub_20C450424(v14);
    v38 = &v21[v34[8]];
    sub_20C45FE00();
    sub_20C460040();
    *v21 = v29;
    v21[1] = sub_20C45FCE0();
    v21[v34[7]] = v36;
    *v32 = a1;
    v32[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v21, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44E290(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - v10;
  v12 = sub_20C460090();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DynamicImageAssetAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C4606B0();
  if (result)
  {
    v21 = type metadata accessor for DynamicImageAssetView();
    v22 = (a1 + v21[7]);
    v34[0] = a2;
    v23 = a1;
    v24 = *v22;
    v25 = v22[1];
    v26 = *(v22 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    v34[1] = v16;
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
    sub_20C460020();
    v27 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
    sub_20C450198(v15);
    LOBYTE(v26) = sub_20C45FD30();
    v28 = v23 + v21[5];
    sub_20C450424(v11);
    v29 = type metadata accessor for DynamicArtworkLayoutEnvironment();
    v30 = &v19[v29[6]];
    sub_20C45FE00();
    v31 = *(v23 + v21[9]);
    v32 = v23 + v21[6];
    sub_20C450424(v11);
    v33 = &v19[v29[8]];
    sub_20C45FE00();
    sub_20C460040();
    *v19 = v26;
    v19[1] = sub_20C45FCE0();
    v19[v29[7]] = v31;
    *v27 = a3;
    v27[1] = a4;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v19, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44E54C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = type metadata accessor for DynamicImageAssetAction();
  v8 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20C45FDF0();
  v73 = *(v75 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v82 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v80 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v70 = &v68 - v24;
  MEMORY[0x28223BE20](v23);
  v85 = &v68 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v68 - v28;
  v30 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v81 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v68 = &v68 - v35;
  v36 = type metadata accessor for DynamicImageAssetView();
  v37 = *(v36 + 28);
  v72 = a5;
  v38 = (a5 + v37);
  v40 = *v38;
  v39 = v38[1];
  v41 = *(v38 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v43 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  v78 = v39;
  v79 = v40;
  v77 = v41;
  v44 = v30;
  v76 = v42;
  v74 = v43;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    return sub_20C40B440(v29, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  v46 = v68;
  sub_20C451170(v29, v68, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v47 = v72 + *(v36 + 20);
  sub_20C450424(v69);
  v48 = v85;
  sub_20C45FE00();
  v49 = v73;
  v50 = *(v73 + 56);
  v51 = v75;
  v50(v48, 0, 1, v75);
  v52 = v70;
  v50(v70, 1, 1, v51);
  LODWORD(v72) = *v46;
  v53 = v71;
  sub_20C409B04(v48, v71, &qword_27C7BBE48, &unk_20C466C30);
  v54 = *(v49 + 48);
  if (v54(v53, 1, v51) == 1)
  {
    (*(v49 + 16))(v86, &v46[v44[6]], v51);
    v55 = v54(v53, 1, v51);
    v56 = v82;
    if (v55 != 1)
    {
      sub_20C40B440(v53, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v49 + 32))(v86, v53, v51);
    v56 = v82;
  }

  v57 = v46;
  LODWORD(v82) = v46[v44[7]];
  v58 = v52;
  v59 = v80;
  sub_20C409B04(v52, v80, &qword_27C7BBE48, &unk_20C466C30);
  if (v54(v59, 1, v51) == 1)
  {
    v60 = v57;
    (*(v49 + 16))(v56, &v57[v44[8]], v51);
    if (v54(v59, 1, v51) != 1)
    {
      sub_20C40B440(v59, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v60 = v57;
    (*(v49 + 32))(v56, v59, v51);
  }

  v61 = *(v60 + 1);
  sub_20C45FCD0();
  v62 = v81;
  *v81 = v72;
  v63 = sub_20C45FCE0();
  sub_20C40B440(v58, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v85, &qword_27C7BBE48, &unk_20C466C30);
  *(v62 + 1) = v63;
  v64 = *(v49 + 32);
  v64(v62 + v44[6], v86, v51);
  *(v62 + v44[7]) = v82;
  v64(v62 + v44[8], v56, v51);
  sub_20C460020();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v66 = v84;
  v67 = (v84 + *(v65 + 48));
  sub_20C4516E4(v62, v84, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v67 = a1;
  v67[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v66, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v62, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v60, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44ED38(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = type metadata accessor for DynamicImageAssetAction();
  v8 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20C45FDF0();
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v77 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v67 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v85 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v67 - v28;
  v30 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v78 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v67 - v35;
  v67 = type metadata accessor for DynamicImageAssetView();
  v37 = *(v67 + 28);
  v69 = a5;
  v38 = (a5 + v37);
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v43 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  v75 = v40;
  v76 = v39;
  v74 = v41;
  v44 = v30;
  v73 = v42;
  v71 = v43;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    return sub_20C40B440(v29, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  sub_20C451170(v29, v36, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v46 = v70;
  v47 = *(v70 + 56);
  v48 = v84;
  v49 = v72;
  v47(v84, 1, 1, v72);
  v50 = v69 + *(v67 + 24);
  sub_20C450424(v68);
  v51 = v85;
  sub_20C45FE00();
  v47(v51, 0, 1, v49);
  LODWORD(v69) = *v36;
  v52 = v83;
  sub_20C409B04(v48, v83, &qword_27C7BBE48, &unk_20C466C30);
  v53 = *(v46 + 48);
  v54 = v46;
  if (v53(v52, 1, v49) == 1)
  {
    v55 = v79;
    (*(v46 + 16))(v79, &v36[v44[6]], v49);
    v56 = v53(v52, 1, v49);
    v57 = v80;
    if (v56 != 1)
    {
      sub_20C40B440(v83, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v55 = v79;
    (*(v46 + 32))(v79, v52, v49);
    v57 = v80;
  }

  LODWORD(v83) = v36[v44[7]];
  v58 = v77;
  sub_20C409B04(v85, v77, &qword_27C7BBE48, &unk_20C466C30);
  if (v53(v58, 1, v49) == 1)
  {
    (*(v46 + 16))(v57, &v36[v44[8]], v49);
    if (v53(v58, 1, v49) != 1)
    {
      sub_20C40B440(v58, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v46 + 32))(v57, v58, v49);
  }

  v59 = v36;
  v60 = v36[1];
  sub_20C45FCD0();
  v61 = v78;
  *v78 = v69;
  v62 = sub_20C45FCE0();
  sub_20C40B440(v85, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v84, &qword_27C7BBE48, &unk_20C466C30);
  *(v61 + 1) = v62;
  v63 = *(v54 + 32);
  v63(v61 + v44[6], v55, v49);
  *(v61 + v44[7]) = v83;
  v63(v61 + v44[8], v57, v49);
  sub_20C460020();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v65 = v82;
  v66 = (v82 + *(v64 + 48));
  sub_20C4516E4(v61, v82, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v66 = a1;
  v66[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v65, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v61, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v59, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44F520(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = type metadata accessor for DynamicImageAssetAction();
  v8 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20C45FDF0();
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v66 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v68 = &v66 - v22;
  v23 = sub_20C460090();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v66 - v29;
  v31 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v77 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v67 = &v66 - v36;
  v37 = *(type metadata accessor for DynamicImageAssetView() + 28);
  v69 = a5;
  v38 = (a5 + v37);
  v40 = *v38;
  v39 = v38[1];
  v41 = *(v38 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v43 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
  v78 = v40;
  v76 = v39;
  v75 = v41;
  v74 = v42;
  v44 = v31;
  v72 = v43;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    return sub_20C40B440(v30, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  v46 = v67;
  sub_20C451170(v30, v67, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C450198(v26);
  LODWORD(v69) = sub_20C45FD30();
  v47 = v71;
  v48 = *(v71 + 56);
  v49 = v68;
  v50 = v73;
  v48(v68, 1, 1, v73);
  v48(v84, 1, 1, v50);
  v51 = v70;
  sub_20C409B04(v49, v70, &qword_27C7BBE48, &unk_20C466C30);
  v52 = *(v47 + 48);
  if (v52(v51, 1, v50) == 1)
  {
    (*(v47 + 16))(v83, v46 + v44[6], v50);
    v53 = v52(v51, 1, v50);
    v54 = v79;
    if (v53 != 1)
    {
      sub_20C40B440(v51, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v47 + 32))(v83, v51, v50);
    v54 = v79;
  }

  LODWORD(v79) = *(v46 + v44[7]);
  sub_20C409B04(v84, v54, &qword_27C7BBE48, &unk_20C466C30);
  if (v52(v54, 1, v50) == 1)
  {
    v55 = v54;
    v56 = v80;
    (*(v47 + 16))(v80, v46 + v44[8], v50);
    v57 = v52(v55, 1, v50);
    v58 = v56;
    if (v57 != 1)
    {
      sub_20C40B440(v55, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v58 = v80;
    (*(v47 + 32))(v80, v54, v50);
  }

  v59 = *(v46 + 1);
  sub_20C45FCD0();
  v60 = v77;
  *v77 = v69;
  v61 = sub_20C45FCE0();
  sub_20C40B440(v84, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v49, &qword_27C7BBE48, &unk_20C466C30);
  *(v60 + 1) = v61;
  v62 = *(v47 + 32);
  v62(v60 + v44[6], v83, v50);
  *(v60 + v44[7]) = v79;
  v62(v60 + v44[8], v58, v50);
  sub_20C460020();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v64 = v82;
  v65 = (v82 + *(v63 + 48));
  sub_20C4516E4(v60, v82, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v65 = a1;
  v65[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v64, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v60, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v46, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44FCE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicImageAssetAction();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a2;
  v10 = a2[1];
  result = sub_20C4606B0();
  if (result)
  {
    v12 = (a3 + *(type metadata accessor for DynamicImageAssetView() + 28));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90);
    sub_20C460020();
    *v8 = v9;
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v8, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44FE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_20C4516E4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicImageAssetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_20C451170(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DynamicImageAssetView);
  *a2 = sub_20C451750;
  a2[1] = v7;
  return result;
}

uint64_t sub_20C44FF58(uint64_t a1)
{
  v2 = sub_20C460090();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C4600C0();
}

uint64_t sub_20C450020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v11 - v8;
  sub_20C409B04(a1, &v11 - v8, &qword_27C7BBDD0, &qword_20C466B88);
  return a5(v9);
}

uint64_t sub_20C450118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20C44B1DC(a1, v6, a2);
}

uint64_t sub_20C450198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C460120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  sub_20C409B04(v2, &v20 - v11, &qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C460090();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_20C460670();
    v17 = sub_20C4602E0();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_20C43A260(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_20C404000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F2FB570](v19, -1, -1);
      MEMORY[0x20F2FB570](v18, -1, -1);
    }

    sub_20C460110();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20C450424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C460120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v19 - v11);
  sub_20C409B04(v2, &v19 - v11, &qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20C409BD0(v12, a1, &qword_27C7BBDD0, &qword_20C466B88);
  }

  v14 = *v12;
  v15 = sub_20C460670();
  v16 = sub_20C4602E0();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_20C43A260(0xD000000000000020, 0x800000020C4679A0, &v20);
    _os_log_impl(&dword_20C404000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F2FB570](v18, -1, -1);
    MEMORY[0x20F2FB570](v17, -1, -1);
  }

  sub_20C460110();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C4506A0()
{
  result = qword_27C7BBE20;
  if (!qword_27C7BBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE28, &qword_20C466BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0);
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE20);
  }

  return result;
}

uint64_t sub_20C4507FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C450878()
{
  result = qword_27C7BBE30;
  if (!qword_27C7BBE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD0, &qword_20C466B88);
    sub_20C451014(&qword_27C7BBE38, MEMORY[0x277CE0570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE30);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C460240();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }
  }

  else
  {
    v11 = *&v5[v8];
  }

  v12 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C460240();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }
  }

  else
  {
    v15 = *&v5[v12];
  }

  v16 = &v5[v1[7]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  sub_20C414B30();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20C450C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, __n128, __n128))
{
  v6 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9.n128_u64[0] = *v8;
  v10.n128_u64[0] = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C460240();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }
  }

  else
  {
    v11 = *&v5[v8];
  }

  v12 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C460240();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }
  }

  else
  {
    v15 = *&v5[v12];
  }

  v16 = &v5[v1[7]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  sub_20C414B30();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20C450F94(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20C44FCE8(a1, a2, v6);
}

uint64_t sub_20C451014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C45105C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C460050() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_20C44DF50(v11, v12, a1, a2, v2 + v6, v2 + v9);
}

uint64_t sub_20C451170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C4511D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C451238()
{
  v1 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + ((v3 + 87) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_20C44DBF0(v0 + v2, (v0 + v3), v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView();
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v25 = sub_20C460050();
  v4 = *(v25 - 8);
  v5 = *(v4 + 80);
  v24 = *(v4 + 64);
  v3 = (v2 + 32) & ~v2;
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20C460090();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C460240();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v6[v9], 1, v10))
    {
      (*(v11 + 8))(&v6[v9], v10);
    }
  }

  else
  {
    v12 = *&v6[v9];
  }

  v13 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20C460240();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v6[v13], 1, v14))
    {
      (*(v15 + 8))(&v6[v13], v14);
    }
  }

  else
  {
    v16 = *&v6[v13];
  }

  v17 = (((v2 + 32) & ~v2) + v23 + v5) & ~v5;
  v18 = &v6[v1[7]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  sub_20C414B30();

  (*(v4 + 8))(v0 + v17, v25);

  return MEMORY[0x2821FE8E8](v0, v17 + v24, v2 | v5 | 7);
}

uint64_t sub_20C451620()
{
  v1 = *(type metadata accessor for DynamicImageAssetView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20C460050() - 8);
  return sub_20C44E290(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_20C4516E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DynamicPredicateComparisonDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v179 = a1;
  v200 = a3;
  v180 = *(a2 - 8);
  v3 = *(v180 + 64);
  MEMORY[0x28223BE20](a1);
  v181 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5[1];
  v6 = v5[2];
  v186 = v5;
  v8 = v5[3];
  v185 = v9;
  v205 = v9;
  v206 = v7;
  v182 = v7;
  v183 = v6;
  v207 = v6;
  v208 = v8;
  v184 = v8;
  v10 = type metadata accessor for ArtworkPredicateValue();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v187 = &v175 - v12;
  WitnessTable = swift_getWitnessTable();
  v189 = v10;
  v188 = WitnessTable;
  v14 = type metadata accessor for ArtworkPredicateKeyPath();
  v191 = *(v14 - 8);
  v192 = v14;
  v15 = *(v191 + 64);
  MEMORY[0x28223BE20](v14);
  v190 = &v175 - v16;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  v17 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v203 = &v175 - v18;
  v204 = sub_20C45FEF0();
  v19 = *(v204 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v204);
  v23 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v175 - v24;
  v201 = sub_20C45FF00();
  v26 = *(*(v201 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v201);
  v199 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v198 = (&v175 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v197 = (&v175 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v178 = &v175 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v195 = (&v175 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v175 = &v175 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v176 = &v175 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v196 = &v175 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v177 = &v175 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v194 = &v175 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v175 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v175 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v175 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v175 - v56;
  sub_20C45FFB0();
  sub_20C45FED0();
  v193 = v57;
  sub_20C452CB8(v57);
  sub_20C45FFC0();
  sub_20C45FED0();
  sub_20C452CB8(v55);
  LOBYTE(v55) = sub_20C45FEE0();
  v58 = *(v19 + 8);
  v59 = v204;
  v58(v23, v204);
  v58(v25, v59);
  if (v55)
  {
    v60 = sub_20C45FFA0();
    sub_20C45FFB0();
    sub_20C45FFC0();
    v61 = v203;
    v62 = (v203 + *(v202 + 48));
    sub_20C452D14(v52, v203);
    sub_20C452D14(v49, v62);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          LODWORD(v204) = v60;
          v64 = v196;
          sub_20C452D78(v61, v196);
          v65 = sub_20C45FF20();
          v66 = *(v65 - 8);
          v67 = *(v66 + 88);
          v68 = v67(v64, v65);
          v69 = v68;
          if (v68 == *MEMORY[0x277D0A918])
          {
            v70 = swift_getEnumCaseMultiPayload();
            if (v70 != 3)
            {
              if (!v70)
              {
                v71 = v193;
                sub_20C452D78(v62, v193);
                v72 = *v71;
                v73 = v181;
                v74 = v185;
                (*(v180 + 16))(v181, v179, v185);
                v75 = v187;
                v76 = ArtworkPredicateValue.init(value:)(v73, v74, v187);
                MEMORY[0x28223BE20](v76);
                v77 = v186;
                *(&v175 - 2) = v74;
                *(&v175 - 1) = v77;
                KeyPath = swift_getKeyPath();
                v79 = v190;
                ArtworkPredicateKeyPath.init(root:keyPath:)(v75, KeyPath, v189, v190);
                v211 = sub_20C45FE10();
LABEL_26:
                v210 = v204;
                v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
                v116 = v192;
                v117 = swift_getWitnessTable();
                v118 = sub_20C452ED4();
                v205 = v116;
                v206 = v115;
                v207 = v117;
                v208 = v118;
                v119 = MEMORY[0x277D83BA0];
                v209 = MEMORY[0x277D83BA0];
                v120 = type metadata accessor for ArtworkPredicateComparison();
                v121 = v200;
                v200[3] = v120;
                v121[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
                v123 = &v211;
                v124 = boxed_opaque_existential_1;
                v125 = v79;
                v126 = v116;
                v127 = v115;
LABEL_31:
                static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)(v125, v123, v126, v127, v119, v124);
                (*(v191 + 8))(v79, v116);
                goto LABEL_32;
              }

              goto LABEL_66;
            }

            v145 = v176;
            sub_20C452D78(v62, v176);
            if (v67(v145, v65) == v69)
            {
              if (qword_28110B658 != -1)
              {
                swift_once();
              }

              v146 = sub_20C460000();
              __swift_project_value_buffer(v146, qword_28110E2C0);
              v147 = sub_20C45FFE0();
              v148 = sub_20C460660();
              if (os_log_type_enabled(v147, v148))
              {
                v149 = swift_slowAlloc();
                v150 = swift_slowAlloc();
                v205 = v150;
                *v149 = 136315138;
                *(v149 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v205);
                _os_log_impl(&dword_20C404000, v147, v148, "%s", v149, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v150);
                MEMORY[0x20F2FB570](v150, -1, -1);
                MEMORY[0x20F2FB570](v149, -1, -1);
              }

LABEL_64:

              v163 = v200;
              v164 = v181;
              v165 = v185;
              (*(v180 + 16))(v181, v179, v185);
              v166 = v187;
              v167 = ArtworkPredicateValue.init(value:)(v164, v165, v187);
              MEMORY[0x28223BE20](v167);
              v168 = v186;
              *(&v175 - 2) = v165;
              *(&v175 - 1) = v168;
              v169 = swift_getKeyPath();
              v170 = v190;
              ArtworkPredicateKeyPath.init(root:keyPath:)(v166, v169, v189, v190);
              LOBYTE(v211) = v204;
              v171 = v192;
              v172 = swift_getWitnessTable();
              v205 = v171;
              v206 = v171;
              v207 = v172;
              v208 = v172;
              v173 = MEMORY[0x277D83BA0];
              v209 = MEMORY[0x277D83BA0];
              v163[3] = type metadata accessor for ArtworkPredicateComparison();
              v163[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
              v174 = __swift_allocate_boxed_opaque_existential_1(v163);
              static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)(v170, v170, v171, v171, v173, v174);
              (*(v191 + 8))(v170, v171);
              sub_20C452CB8(v62);
              return sub_20C452CB8(v61);
            }

LABEL_65:
            (*(v66 + 8))(v145, v65);
LABEL_66:
            sub_20C452CB8(v62);
            sub_20C452CB8(v61);
            sub_20C43C430();
            swift_allocError();
            v81 = 5;
            goto LABEL_67;
          }

          if (v68 == *MEMORY[0x277D0A910])
          {
            v106 = swift_getEnumCaseMultiPayload();
            if (v106 != 3)
            {
              if (v106 == 1)
              {
                v107 = v193;
                sub_20C452D78(v62, v193);
                v108 = *v107;
                v109 = v181;
                v110 = v185;
                (*(v180 + 16))(v181, v179, v185);
                v111 = v187;
                v112 = ArtworkPredicateValue.init(value:)(v109, v110, v187);
                MEMORY[0x28223BE20](v112);
                v113 = v186;
                *(&v175 - 2) = v110;
                *(&v175 - 1) = v113;
                v114 = swift_getKeyPath();
                v79 = v190;
                ArtworkPredicateKeyPath.init(root:keyPath:)(v111, v114, v189, v190);
                v211 = v108;
                goto LABEL_26;
              }

              goto LABEL_66;
            }

            v145 = v175;
            sub_20C452D78(v62, v175);
            if (v67(v145, v65) == v69)
            {
              if (qword_28110B658 != -1)
              {
                swift_once();
              }

              v159 = sub_20C460000();
              __swift_project_value_buffer(v159, qword_28110E2C0);
              v147 = sub_20C45FFE0();
              v160 = sub_20C460660();
              if (os_log_type_enabled(v147, v160))
              {
                v161 = swift_slowAlloc();
                v162 = swift_slowAlloc();
                v205 = v162;
                *v161 = 136315138;
                *(v161 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v205);
                _os_log_impl(&dword_20C404000, v147, v160, "%s", v161, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v162);
                MEMORY[0x20F2FB570](v162, -1, -1);
                MEMORY[0x20F2FB570](v161, -1, -1);
              }

              goto LABEL_64;
            }

            goto LABEL_65;
          }

LABEL_36:
          (*(v66 + 8))(v64, v65);
          goto LABEL_45;
        }

        v91 = v198;
        sub_20C452D78(v61, v198);
        v92 = v91[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v93 = *v91;
          v94 = *v62;
          v95 = v62[1];
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F0, &qword_20C464A68);
          v97 = v200;
          v200[3] = v96;
          v97[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v98 = swift_allocObject();
          *v97 = v98;
          *(v98 + 16) = v93;
          *(v98 + 24) = v92;
          *(v98 + 32) = v94;
          *(v98 + 40) = v95;
          *(v98 + 48) = v60;
          return sub_20C452CB8(v61);
        }

LABEL_45:
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v151 = v199;
          sub_20C452D78(v62, v199);
          v152 = sub_20C45FF20();
          v153 = *(v152 - 8);
          v154 = (*(v153 + 88))(v151, v152);
          if (v154 == *MEMORY[0x277D0A918] || v154 == *MEMORY[0x277D0A910])
          {
            goto LABEL_66;
          }

          (*(v153 + 8))(v151, v152);
        }

        v155 = swift_getEnumCaseMultiPayload();
        if (v155 < 3)
        {
          goto LABEL_55;
        }

        if (v155 == 3)
        {
          v156 = swift_getEnumCaseMultiPayload();
          if (v156 < 3)
          {
            v62 = v61;
LABEL_55:
            sub_20C452CB8(v62);
            sub_20C43C430();
            swift_allocError();
            v81 = 2;
            goto LABEL_67;
          }

          if (v156 == 3)
          {
            sub_20C43C430();
            swift_allocError();
            *v158 = 10;
            swift_willThrow();
            return sub_20C452DDC(v61);
          }

          v157 = v62;
          v62 = v61;
        }

        else
        {
          v157 = v61;
        }

        sub_20C452CB8(v157);
        goto LABEL_55;
      }

      v88 = v197;
      sub_20C452D78(v61, v197);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_45;
      }

      v89 = *v88;
      v90 = *v62;
LABEL_35:
      sub_20C452CB8(v61);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F8, &qword_20C464A70);
      v144 = v200;
      v200[3] = result;
      v144[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      *v144 = v89;
      v144[1] = v90;
      *(v144 + 16) = v60;
      return result;
    }

    if (EnumCaseMultiPayload)
    {
      v99 = v195;
      sub_20C452D78(v61, v195);
      v89 = *v99;
      v100 = swift_getEnumCaseMultiPayload();
      if (v100 == 1)
      {
        v143 = v193;
        sub_20C452D78(v62, v193);
        v90 = *v143;
        sub_20C452CB8(v62);
        goto LABEL_35;
      }

      if (v100 != 3)
      {
        goto LABEL_45;
      }

      v64 = v178;
      sub_20C452D78(v62, v178);
      v65 = sub_20C45FF20();
      v66 = *(v65 - 8);
      if ((*(v66 + 88))(v64, v65) != *MEMORY[0x277D0A910])
      {
        goto LABEL_36;
      }

      v211 = v89;
      v101 = v181;
      v102 = v185;
      (*(v180 + 16))(v181, v179, v185);
      v103 = v187;
      v104 = ArtworkPredicateValue.init(value:)(v101, v102, v187);
      MEMORY[0x28223BE20](v104);
      v105 = v186;
      *(&v175 - 2) = v102;
      *(&v175 - 1) = v105;
    }

    else
    {
      v82 = v194;
      sub_20C452D78(v61, v194);
      v83 = *v82;
      v84 = swift_getEnumCaseMultiPayload();
      if (v84 != 3)
      {
        if (!v84)
        {
          v85 = v193;
          sub_20C452D78(v62, v193);
          LOBYTE(v85) = *v85;
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB828, &qword_20C464AF8);
          v87 = v200;
          v200[3] = v86;
          v87[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          *v87 = v83;
          *(v87 + 1) = v85;
          *(v87 + 2) = v60;
LABEL_32:
          sub_20C452CB8(v62);
          return sub_20C452CB8(v61);
        }

        goto LABEL_45;
      }

      v128 = v177;
      sub_20C452D78(v62, v177);
      v129 = sub_20C45FF20();
      v130 = *(v129 - 8);
      if ((*(v130 + 88))(v128, v129) != *MEMORY[0x277D0A918])
      {
        (*(v130 + 8))(v128, v129);
        goto LABEL_45;
      }

      v211 = sub_20C45FE10();
      v131 = v181;
      v132 = v185;
      (*(v180 + 16))(v181, v179, v185);
      v103 = v187;
      v133 = ArtworkPredicateValue.init(value:)(v131, v132, v187);
      MEMORY[0x28223BE20](v133);
      v134 = v186;
      *(&v175 - 2) = v132;
      *(&v175 - 1) = v134;
    }

    v135 = swift_getKeyPath();
    v136 = v60;
    v79 = v190;
    ArtworkPredicateKeyPath.init(root:keyPath:)(v103, v135, v189, v190);
    v210 = v136;
    v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
    v138 = sub_20C452ED4();
    v116 = v192;
    v139 = swift_getWitnessTable();
    v205 = v137;
    v206 = v116;
    v207 = v138;
    v208 = v139;
    v119 = MEMORY[0x277D83BA0];
    v209 = MEMORY[0x277D83BA0];
    v140 = type metadata accessor for ArtworkPredicateComparison();
    v141 = v200;
    v200[3] = v140;
    v141[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
    v124 = __swift_allocate_boxed_opaque_existential_1(v141);
    v125 = &v211;
    v123 = v79;
    v126 = v137;
    v127 = v116;
    goto LABEL_31;
  }

  sub_20C43C430();
  swift_allocError();
  v81 = 6;
LABEL_67:
  *v80 = v81;
  return swift_willThrow();
}

uint64_t sub_20C452CB8(uint64_t a1)
{
  v2 = sub_20C45FF00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C452D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FF00();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C452D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FF00();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C452DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C452E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C452E8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

unint64_t sub_20C452ED4()
{
  result = qword_27C7BBE68;
  if (!qword_27C7BBE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE68);
  }

  return result;
}

uint64_t sub_20C452F50(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v2 = sub_20C45FCC0();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C45FC90();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE80, &qword_20C466EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v49 - v26;
  v28 = &v49 + *(v25 + 56) - v26;
  sub_20C409B04(v55, &v49 - v26, &qword_27C7BAF10, &qword_20C4640D0);
  sub_20C409B04(v56, v28, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v15;
    v56 = v9;
    v36 = v11;
    v38 = v53;
    v37 = v54;
    sub_20C409B04(v27, v22, &qword_27C7BAF10, &qword_20C4640D0);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20C409BD0(v28, v35, &qword_27C7BAF60, &unk_20C462050);
      v42 = *(v38 + 32);
      v55 = v36;
      v42(v36, &v22[v39], v37);
      v43 = v56;
      v42(v56, &v28[v39], v37);
      type metadata accessor for ImageAsset();
      sub_20C45A8F0(&qword_28110BC88, type metadata accessor for ImageAsset);
      sub_20C406308();
      sub_20C45AFE0();
      v44 = sub_20C4609A0();
      sub_20C40B440(v22, &qword_27C7BAF60, &unk_20C462050);
      if (v44)
      {
        v45 = v55;
        v33 = sub_20C45FC70();
        v46 = *(v38 + 8);
        v46(v43, v37);
        v46(v45, v37);
        sub_20C40B440(v35, &qword_27C7BAF60, &unk_20C462050);
        goto LABEL_14;
      }

      v48 = *(v38 + 8);
      v48(v43, v37);
      v48(v55, v37);
      sub_20C40B440(v35, &qword_27C7BAF60, &unk_20C462050);
      v40 = &qword_27C7BAF10;
      v41 = &qword_20C4640D0;
      goto LABEL_11;
    }

    (*(v38 + 8))(&v22[v39], v37);
    sub_20C40B440(v22, &qword_27C7BAF60, &unk_20C462050);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20C409B04(v27, v20, &qword_27C7BAF10, &qword_20C4640D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v50;
      v30 = v51;
      v32 = v52;
      (*(v51 + 32))(v50, v28, v52);
      v33 = sub_20C45FCA0();
      v34 = *(v30 + 8);
      v34(v31, v32);
      v34(v20, v32);
LABEL_14:
      sub_20C40B440(v27, &qword_27C7BAF10, &qword_20C4640D0);
      return v33 & 1;
    }

    (*(v51 + 8))(v20, v52);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    v40 = &qword_27C7BBE80;
    v41 = &qword_20C466EB0;
LABEL_11:
    sub_20C40B440(v27, v40, v41);
    v33 = 0;
    return v33 & 1;
  }

  sub_20C40B440(v27, &qword_27C7BAF10, &qword_20C4640D0);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_20C453554(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_20C40B440(a1, &qword_27C7BAFB8, &unk_20C461F90);
    sub_20C4591C0(a2, v8);
    sub_20C40C57C(a2);
    return sub_20C40B440(v8, &qword_27C7BAFB8, &unk_20C461F90);
  }

  else
  {
    sub_20C409BD0(a1, v12, &qword_27C7BAF10, &qword_20C4640D0);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_20C459D30(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_20C40C57C(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_20C453718(uint64_t a1, void *a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v46 = *(v48 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v47 = &v44[-v8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v55 = a1;

  v14 = 0;
  v45 = a2;
  while (v12)
  {
LABEL_11:
    v17 = (*(v55 + 48) + 80 * (__clz(__rbit64(v12)) | (v14 << 6)));
    v50 = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    v53 = v17[3];
    v54 = v18;
    v51 = v20;
    v52 = v19;
    v21 = v47;
    swift_storeEnumTagMultiPayload();
    v22 = v6;
    sub_20C409BD0(v21, v6, &qword_27C7BAF10, &qword_20C4640D0);
    sub_20C40C520(&v50, &v49);
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *a2;
    v25 = v49;
    v27 = sub_20C457E7C(&v50);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v49;
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_20C45A1C0();
        v34 = v49;
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_20C4582F8(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_20C457E7C(&v50);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v27 = v32;
      v34 = v49;
      if (v31)
      {
LABEL_4:
        v15 = v34[7] + *(v46 + 72) * v27;
        v6 = v22;
        sub_20C45AF70(v22, v15);
        sub_20C40C57C(&v50);
        goto LABEL_5;
      }
    }

    v34[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v34[6] + 80 * v27);
    *v35 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v54;
    v35[3] = v53;
    v35[4] = v38;
    v35[1] = v36;
    v35[2] = v37;
    v39 = v34[7] + *(v46 + 72) * v27;
    v6 = v22;
    sub_20C409BD0(v22, v39, &qword_27C7BAF10, &qword_20C4640D0);
    v40 = v34[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_25;
    }

    v34[2] = v42;
LABEL_5:
    v12 &= v12 - 1;
    a2 = v45;
    *v45 = v34;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_20C4608E0();
  __break(1u);
  return result;
}

uint64_t sub_20C453A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20C4608D0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C453B24()
{
  v44 = sub_20C45FC30();
  v43 = *(v44 - 8);
  v0 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v38 - v4;
  v5 = sub_20C45FD00();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for ImageAsset();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C45FCC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C458FD4(v45, v24, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
    v26 = *(v25 + 4);
    v54 = *(v25 + 3);
    v55 = v26;
    v27 = *(v25 + 2);
    v52 = *(v25 + 1);
    v53 = v27;
    v51 = *v25;
    sub_20C45A6B4(v24, v15, type metadata accessor for ImageAsset);
    MEMORY[0x20F2FAEA0](1);
    sub_20C409B04(v15, v11, &qword_27C7BAC10, &qword_20C462070);
    v28 = v41;
    if ((*(v41 + 48))(v11, 1, v5) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v30 = v39;
      (*(v28 + 32))(v39, v11, v5);
      sub_20C460950();
      sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68]);
      sub_20C460460();
      (*(v28 + 8))(v30, v5);
    }

    v31 = v44;
    v32 = v43;
    v33 = &v15[v12[5]];
    v34 = *v33;
    v35 = *(v33 + 1);
    sub_20C4604F0();
    v15[v12[6]];
    sub_20C4604F0();

    v36 = v42;
    sub_20C409B04(&v15[v12[7]], v42, &qword_27C7BAC18, &unk_20C464A00);
    if ((*(v32 + 48))(v36, 1, v31) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v37 = v40;
      (*(v32 + 32))(v40, v36, v31);
      sub_20C460950();
      sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260]);
      sub_20C460460();
      (*(v32 + 8))(v37, v31);
    }

    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    ImageAssetCacheKey.hash(into:)();
    sub_20C40C57C(&v51);
    return sub_20C45903C(v15, type metadata accessor for ImageAsset);
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    MEMORY[0x20F2FAEA0](0);
    sub_20C45A8F0(&qword_28110BE90, MEMORY[0x277CC95F0]);
    sub_20C460460();
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_20C4541D8()
{
  sub_20C460930();
  sub_20C453B24();
  return sub_20C460970();
}

uint64_t sub_20C45421C()
{
  sub_20C460930();
  sub_20C453B24();
  return sub_20C460970();
}

void sub_20C45425C()
{
  qword_28110E2D8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_28110E2D8;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

__n128 ImageAssetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C45FCB0();
  v4 = (a2 + *(type metadata accessor for ImageAssetFeature(0) + 20));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  return result;
}

uint64_t ImageAssetFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20C43A808(sub_20C4544A8, &v5, *a2);
  sub_20C453718(v3, a2);
}

uint64_t sub_20C4543A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_20C45FCC0();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = sub_20C452F50(a2, v8);
  sub_20C40B440(v8, &qword_27C7BAF10, &qword_20C4640D0);
  return a3 & 1;
}

uint64_t ImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char *a4)
{
  v230 = a4;
  v224 = a3;
  v231 = a2;
  v5 = sub_20C45FCC0();
  v220 = *(v5 - 8);
  v221 = v5;
  v6 = *(v220 + 64);
  MEMORY[0x28223BE20](v5);
  v204 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageAssetFeature(0);
  v211 = *(v8 - 8);
  v9 = *(v211 + 64);
  MEMORY[0x28223BE20](v8);
  v212 = v10;
  v213 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  v11 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v207 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v215 = &v200 - v14;
  MEMORY[0x28223BE20](v15);
  v210 = &v200 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4D0, &unk_20C466D60);
  v217 = *(v17 - 8);
  v218 = v17;
  v18 = *(v217 + 64);
  MEMORY[0x28223BE20](v17);
  v208 = &v200 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v219 = &v200 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v223 = &v200 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v26 = *(v25 - 8);
  v226 = v25;
  v227 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v200 - v31;
  MEMORY[0x28223BE20](v33);
  v205 = &v200 - v34;
  MEMORY[0x28223BE20](v35);
  v222 = &v200 - v36;
  v202 = type metadata accessor for ImageAsset();
  v214 = *(v202 - 8);
  v37 = *(v214 + 64);
  MEMORY[0x28223BE20](v202);
  v206 = &v200 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v228 = &v200 - v39;
  MEMORY[0x28223BE20](v40);
  v201 = &v200 - v41;
  MEMORY[0x28223BE20](v42);
  v203 = &v200 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v200 - v45;
  MEMORY[0x28223BE20](v47);
  v209 = &v200 - v48;
  MEMORY[0x28223BE20](v49);
  v225 = &v200 - v50;
  v51 = type metadata accessor for ImageAssetAction();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = (&v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v57 = (&v200 - v56);
  sub_20C458FD4(v230, &v200 - v56, type metadata accessor for ImageAssetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      v82 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
      v83 = v82[4];
      v250[2] = v82[3];
      v250[3] = v83;
      v84 = v82[2];
      v250[0] = v82[1];
      v250[1] = v84;
      v249 = *v82;
      sub_20C45A6B4(v57, v46, type metadata accessor for ImageAsset);
      v85 = *v231;
      if (*(*v231 + 16))
      {
        v86 = sub_20C457E7C(&v249);
        if (v87)
        {
          sub_20C409B04(*(v85 + 56) + *(v227 + 72) * v86, v29, &qword_27C7BAF10, &qword_20C4640D0);
          v88 = v226;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_20C45903C(v46, type metadata accessor for ImageAsset);
            sub_20C40C57C(&v249);
            return sub_20C40B440(v29, &qword_27C7BAF10, &qword_20C4640D0);
          }

          (*(v220 + 8))(v29, v221);
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v89 = sub_20C460000();
          __swift_project_value_buffer(v89, qword_28110E2C0);
          v90 = v203;
          sub_20C458FD4(v46, v203, type metadata accessor for ImageAsset);
          sub_20C40C520(&v249, &v269);
          v91 = sub_20C45FFE0();
          v92 = sub_20C460680();
          sub_20C40C57C(&v249);
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v266[0] = v94;
            *v93 = 141558530;
            *(v93 + 4) = 1752392040;
            *(v93 + 12) = 2080;
            sub_20C458FD4(v90, v201, type metadata accessor for ImageAsset);
            v95 = sub_20C4604E0();
            v97 = v96;
            sub_20C45903C(v90, type metadata accessor for ImageAsset);
            v98 = sub_20C43A260(v95, v97, v266);

            *(v93 + 14) = v98;
            *(v93 + 22) = 2082;
            v271 = v250[1];
            v272 = v250[2];
            v273 = v250[3];
            v269 = v249;
            v270 = v250[0];
            sub_20C40C520(&v249, &v267);
            v99 = sub_20C4604E0();
            v101 = sub_20C43A260(v99, v100, v266);

            *(v93 + 24) = v101;
            _os_log_impl(&dword_20C404000, v91, v92, "Loaded %{mask.hash}s (%{public}s)", v93, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F2FB570](v94, -1, -1);
            MEMORY[0x20F2FB570](v93, -1, -1);
          }

          else
          {

            sub_20C45903C(v90, type metadata accessor for ImageAsset);
          }

          v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
          v198 = v223;
          sub_20C458FD4(v46, v223, type metadata accessor for ImageAsset);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
          swift_storeEnumTagMultiPayload();
          sub_20C45FC80();
          swift_storeEnumTagMultiPayload();
          (*(v227 + 56))(v198, 0, 1, v88);
          sub_20C453554(v198, &v249);
          v80 = type metadata accessor for ImageAsset;
          v81 = v46;
          return sub_20C45903C(v81, v80);
        }
      }

      sub_20C45903C(v46, type metadata accessor for ImageAsset);
      return sub_20C40C57C(&v249);
    }

    v67 = *v57;
    v66 = v57[1];
    *a1 = *v57;
    *(a1 + 8) = v66;
    *(a1 + 16) = 0;
    v68 = type metadata accessor for ImageAssetState();
    v69 = v228;
    sub_20C458FD4(v231 + *(v68 + 20), v228, type metadata accessor for ImageAsset);
    v70 = v229 + *(v8 + 20);
    v71 = *(v70 + 24);
    (*(v70 + 16))(&v267, v69, v67, v66);
    v271 = v268[1];
    v272 = v268[2];
    v273 = v268[3];
    v269 = v267;
    v270 = v268[0];
    v265 = v267;
    v117 = *&v268[0];
    v264 = *(&v268[3] + 1);
    v263 = *(&v268[2] + 8);
    v262 = *(&v268[1] + 8);
    v261 = *(v268 + 8);
    v118 = *(a1 + 24);
    v266[4] = *(a1 + 88);
    v119 = *(a1 + 56);
    v266[3] = *(a1 + 72);
    v266[2] = v119;
    v120 = *(a1 + 40);
    v266[0] = v118;
    v266[1] = v120;
    v260 = *(a1 + 24);
    v121 = v120;
    v122 = *(a1 + 64);
    v256 = *(a1 + 48);
    v257 = v122;
    v258 = *(a1 + 80);
    v259 = *(a1 + 96);
    if (*&v268[0])
    {
      v249 = v267;
      *(v250 + 8) = *(v268 + 8);
      *(&v250[1] + 8) = *(&v268[1] + 8);
      *(&v250[2] + 8) = *(&v268[2] + 8);
      *&v250[0] = *&v268[0];
      *(&v250[3] + 1) = *(&v268[3] + 1);
      v244 = v267;
      v245 = v250[0];
      v246 = v250[1];
      v247 = v250[2];
      v248 = v250[3];
      if (v121)
      {
        v238 = *(a1 + 24);
        v123 = *(a1 + 64);
        *(v239 + 8) = *(a1 + 48);
        *(&v239[1] + 8) = v123;
        *(&v239[2] + 8) = *(a1 + 80);
        *(&v239[3] + 1) = *(a1 + 96);
        *&v239[0] = v121;
        v124 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v244, &v238);
        v240[2] = v239[1];
        v240[3] = v239[2];
        v240[4] = v239[3];
        v240[0] = v238;
        v240[1] = v239[0];
        sub_20C40C520(&v269, v237);
        sub_20C40C520(&v269, v237);
        sub_20C409B04(v266, v237, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v249, v237, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(v240);
        v241[2] = v246;
        v241[3] = v247;
        v241[4] = v248;
        v241[0] = v244;
        v241[1] = v245;
        sub_20C40C57C(v241);
        v242 = v267;
        *(v243 + 8) = *(v268 + 8);
        *(&v243[1] + 8) = *(&v268[1] + 8);
        *(&v243[2] + 8) = *(&v268[2] + 8);
        *&v243[0] = v117;
        *(&v243[3] + 1) = *(&v268[3] + 1);
        sub_20C40B440(&v242, &qword_27C7BAC68, &unk_20C464890);
        if (v124)
        {
          sub_20C40C57C(&v269);
          sub_20C40C57C(&v269);
LABEL_55:
          v81 = v228;
          v80 = type metadata accessor for ImageAsset;
          return sub_20C45903C(v81, v80);
        }

LABEL_46:
        v170 = v228;
        v171 = *(a1 + 40);
        v172 = *(a1 + 72);
        v250[1] = *(a1 + 56);
        v250[2] = v172;
        v250[3] = *(a1 + 88);
        v249 = *(a1 + 24);
        v250[0] = v171;
        sub_20C40B440(&v249, &qword_27C7BAC68, &unk_20C464890);
        *(a1 + 24) = v265;
        *(a1 + 40) = v117;
        v173 = v262;
        *(a1 + 48) = v261;
        *(a1 + 64) = v173;
        *(a1 + 80) = v263;
        *(a1 + 96) = v264;
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v231 = v174[12];
        v175 = v174[16];
        v176 = v174[20];
        v178 = v207;
        v177 = v208;
        v179 = &v208[v174[24]];
        (*(v220 + 16))(v207, v229, v221);
        swift_storeEnumTagMultiPayload();
        sub_20C458FD4(v178, v215, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C45A8F0(&qword_28110B9E0, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C460720();
        sub_20C45903C(v178, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        v180 = *MEMORY[0x277D04400];
        v181 = sub_20C460410();
        (*(*(v181 - 8) + 104))(&v177[v175], v180, v181);
        v182 = *MEMORY[0x277D043E0];
        v183 = sub_20C460400();
        (*(*(v183 - 8) + 104))(&v177[v176], v182, v183);
        v184 = v206;
        sub_20C458FD4(v170, v206, type metadata accessor for ImageAsset);
        v185 = (*(v214 + 80) + 16) & ~*(v214 + 80);
        v186 = (v37 + v185 + 7) & 0xFFFFFFFFFFFFFFF8;
        v187 = swift_allocObject();
        sub_20C45A6B4(v184, v187 + v185, type metadata accessor for ImageAsset);
        v188 = (v187 + v186);
        v189 = v272;
        v188[2] = v271;
        v188[3] = v189;
        v188[4] = v273;
        v190 = v270;
        *v188 = v269;
        v188[1] = v190;
        v191 = (v187 + ((v186 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v191 = v67;
        v191[1] = v66;
        *v179 = &unk_20C466D78;
        *(v179 + 1) = v187;
        sub_20C4605F0();
        v193 = v217;
        v192 = v218;
        (*(v217 + 104))(v177, *MEMORY[0x277D043B0], v218);
        v166 = v224;
        v167 = *v224;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = sub_20C426D20(0, v167[2] + 1, 1, v167);
        }

        v195 = v167[2];
        v194 = v167[3];
        v196 = v228;
        if (v195 >= v194 >> 1)
        {
          v199 = v228;
          v167 = sub_20C426D20(v194 > 1, v195 + 1, 1, v167);
          v196 = v199;
        }

        sub_20C45903C(v196, type metadata accessor for ImageAsset);
        v167[2] = v195 + 1;
        result = (*(v193 + 32))(v167 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v195, v177, v192);
        goto LABEL_51;
      }

      v243[1] = v250[1];
      v243[2] = v250[2];
      v243[3] = v250[3];
      v242 = v249;
      v243[0] = v250[0];
      sub_20C40C520(&v269, v241);
      sub_20C40C520(&v269, v241);
      sub_20C409B04(v266, v241, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v249, v241, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v242);
    }

    else
    {
      if (!v121)
      {
        v249 = v267;
        *(v250 + 8) = *(v268 + 8);
        *(&v250[1] + 8) = *(&v268[1] + 8);
        *(&v250[2] + 8) = *(&v268[2] + 8);
        *&v250[0] = 0;
        *(&v250[3] + 1) = *(&v268[3] + 1);
        sub_20C409B04(v266, &v244, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v249, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_55;
      }

      sub_20C40C520(&v269, &v249);
      sub_20C40C520(&v269, &v249);
      sub_20C409B04(v266, &v249, &qword_27C7BAC68, &unk_20C464890);
    }

    v249 = v267;
    *(v250 + 8) = *(v268 + 8);
    *(&v250[1] + 8) = *(&v268[1] + 8);
    *(&v250[2] + 8) = *(&v268[2] + 8);
    *&v250[0] = v117;
    *(&v250[3] + 1) = *(&v268[3] + 1);
    v250[4] = v260;
    v251 = v121;
    v255 = v259;
    v254 = v258;
    v253 = v257;
    v252 = v256;
    sub_20C40B440(&v249, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v60 = (v57 + *(v59 + 48));
      v61 = v60[4];
      v250[2] = v60[3];
      v250[3] = v61;
      v62 = v60[2];
      v250[0] = v60[1];
      v250[1] = v62;
      v249 = *v60;
      v234 = v62;
      v235 = v250[2];
      v236 = v61;
      v232 = v249;
      v233 = v250[0];
      v63 = (v57 + *(v59 + 64));
      v64 = *v63;
      v65 = v63[1];
      sub_20C45A6B4(v57, v225, type metadata accessor for ImageAsset);
      if ((*(a1 + 16) & 1) == 0 && v64 == *a1 && v65 == *(a1 + 8) || !*(a1 + 40))
      {
        v125 = *(a1 + 40);
        v126 = *(a1 + 72);
        v271 = *(a1 + 56);
        v272 = v126;
        v273 = *(a1 + 88);
        v269 = *(a1 + 24);
        v270 = v125;
        sub_20C40C520(&v249, &v267);
        sub_20C40B440(&v269, &qword_27C7BAC68, &unk_20C464890);
        v127 = v232;
        *(a1 + 40) = v233;
        v128 = v235;
        *(a1 + 56) = v234;
        *(a1 + 72) = v128;
        *(a1 + 88) = v236;
        *(a1 + 24) = v127;
      }

      v129 = *v231;
      v130 = v222;
      if (*(*v231 + 16) && (v131 = sub_20C457E7C(&v249), (v132 & 1) != 0))
      {
        v133 = v205;
        sub_20C409B04(*(v129 + 56) + *(v227 + 72) * v131, v205, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C409BD0(v133, v130, &qword_27C7BAF10, &qword_20C4640D0);
        v134 = v229;
        v135 = v226;
      }

      else
      {
        v135 = v226;
        swift_storeEnumTagMultiPayload();
        v134 = v229;
      }

      if (sub_20C42ED34())
      {
        v136 = v223;
        (*(v220 + 16))(v223, v134, v221);
        swift_storeEnumTagMultiPayload();
        (*(v227 + 56))(v136, 0, 1, v135);
        sub_20C40C520(&v249, &v269);
        sub_20C453554(v136, &v249);
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v138 = v137[12];
        v139 = v137[16];
        v229 = v137[20];
        v140 = v219;
        v230 = &v219[v137[24]];
        v231 = v139;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
        v142 = v210;
        v143 = (v210 + *(v141 + 48));
        v144 = v225;
        sub_20C458FD4(v225, v210, type metadata accessor for ImageAsset);
        v145 = v250[2];
        v143[2] = v250[1];
        v143[3] = v145;
        v143[4] = v250[3];
        v146 = v250[0];
        *v143 = v249;
        v143[1] = v146;
        swift_storeEnumTagMultiPayload();
        sub_20C458FD4(v142, v215, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C40C520(&v249, &v269);
        sub_20C45A8F0(&qword_28110B9E0, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C460720();
        sub_20C45903C(v142, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C4605F0();
        v147 = *MEMORY[0x277D043E0];
        v148 = sub_20C460400();
        (*(*(v148 - 8) + 104))(&v140[v229], v147, v148);
        v149 = v144;
        v150 = v209;
        sub_20C458FD4(v149, v209, type metadata accessor for ImageAsset);
        v151 = v213;
        sub_20C458FD4(v134, v213, type metadata accessor for ImageAssetFeature);
        v152 = (*(v214 + 80) + 16) & ~*(v214 + 80);
        v153 = (v37 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
        v154 = (*(v211 + 80) + v153 + 16) & ~*(v211 + 80);
        v155 = (v212 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
        v156 = swift_allocObject();
        sub_20C45A6B4(v150, v156 + v152, type metadata accessor for ImageAsset);
        v157 = (v156 + v153);
        *v157 = v64;
        v157[1] = v65;
        sub_20C45A6B4(v151, v156 + v154, type metadata accessor for ImageAssetFeature);
        v158 = (v156 + v155);
        v159 = v250[2];
        v158[2] = v250[1];
        v158[3] = v159;
        v158[4] = v250[3];
        v160 = v250[0];
        *v158 = v249;
        v158[1] = v160;
        v161 = v230;
        *v230 = &unk_20C466D88;
        *(v161 + 1) = v156;
        v162 = *MEMORY[0x277D043F8];
        v163 = sub_20C460410();
        (*(*(v163 - 8) + 104))(&v140[v231], v162, v163);
        v165 = v217;
        v164 = v218;
        (*(v217 + 104))(v140, *MEMORY[0x277D043B0], v218);
        v166 = v224;
        v167 = *v224;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = sub_20C426D20(0, v167[2] + 1, 1, v167);
        }

        v169 = v167[2];
        v168 = v167[3];
        if (v169 >= v168 >> 1)
        {
          v167 = sub_20C426D20(v168 > 1, v169 + 1, 1, v167);
        }

        sub_20C40B440(v222, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C45903C(v225, type metadata accessor for ImageAsset);
        v167[2] = v169 + 1;
        result = (*(v165 + 32))(v167 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v169, v219, v164);
LABEL_51:
        *v166 = v167;
        return result;
      }

      sub_20C40C57C(&v249);
      sub_20C40B440(v130, &qword_27C7BAF10, &qword_20C4640D0);
      v80 = type metadata accessor for ImageAsset;
      v81 = v225;
      return sub_20C45903C(v81, v80);
    }

    v102 = *v57;
    v103 = *(v57 + 9);
    v104 = *(v57 + 5);
    v250[2] = *(v57 + 7);
    v250[3] = v103;
    v105 = *(v57 + 1);
    v250[0] = *(v57 + 3);
    v250[1] = v104;
    v249 = v105;
    v106 = *v231;
    if (*(*v231 + 16))
    {
      v107 = sub_20C457E7C(&v249);
      if (v108)
      {
        sub_20C409B04(*(v106 + 56) + *(v227 + 72) * v107, v32, &qword_27C7BAF10, &qword_20C4640D0);
        v109 = v226;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_20C40C57C(&v249);
          return sub_20C40B440(v32, &qword_27C7BAF10, &qword_20C4640D0);
        }

        v110 = v220;
        v111 = v204;
        v112 = v32;
        v113 = v221;
        (*(v220 + 32))(v204, v112, v221);
        if (sub_20C45FCA0())
        {
          v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
          v115 = v223;
          *v223 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
          swift_storeEnumTagMultiPayload();
          sub_20C45FC80();
          swift_storeEnumTagMultiPayload();
          (*(v227 + 56))(v115, 0, 1, v109);
          sub_20C453554(v115, &v249);
          return (*(v110 + 8))(v111, v113);
        }

        (*(v110 + 8))(v111, v113);
      }
    }

    return sub_20C40C57C(&v249);
  }

  v72 = *(v57 + 3);
  v250[1] = *(v57 + 2);
  v250[2] = v72;
  v250[3] = *(v57 + 4);
  v73 = *(v57 + 1);
  v249 = *v57;
  v250[0] = v73;
  v74 = *(v57 + 10);
  v75 = *(v57 + 11);
  v76 = v223;
  v77 = v226;
  swift_storeEnumTagMultiPayload();
  (*(v227 + 56))(v76, 0, 1, v77);
  v78 = v76;
  v79 = v231;
  sub_20C453554(v78, &v249);
  *v54 = v74;
  v54[1] = v75;
  swift_storeEnumTagMultiPayload();
  ImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(a1, v79, v224, v54);
  v80 = type metadata accessor for ImageAssetAction;
  v81 = v54;
  return sub_20C45903C(v81, v80);
}

uint64_t sub_20C455F40(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  *(v6 + 760) = a4;
  *(v6 + 752) = a3;
  *(v6 + 744) = a6;
  *(v6 + 736) = a5;
  *(v6 + 728) = a2;
  *(v6 + 720) = a1;
  v7 = a4[3];
  *(v6 + 224) = a4[2];
  *(v6 + 240) = v7;
  *(v6 + 256) = a4[4];
  v8 = a4[1];
  *(v6 + 192) = *a4;
  *(v6 + 208) = v8;
  v9 = sub_20C4605B0();
  *(v6 + 768) = v9;
  v10 = *(v9 - 8);
  *(v6 + 776) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 784) = swift_task_alloc();
  v12 = type metadata accessor for ImageAssetAction();
  *(v6 + 792) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 800) = swift_task_alloc();
  v14 = type metadata accessor for ImageAsset();
  *(v6 + 808) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  sub_20C4605E0();
  *(v6 + 848) = sub_20C4605D0();
  v17 = sub_20C4605A0();
  *(v6 + 856) = v17;
  *(v6 + 864) = v16;

  return MEMORY[0x2822009F8](sub_20C4560E8, v17, v16);
}

uint64_t sub_20C4560E8()
{
  v32 = v0;
  if (qword_28110B658 != -1)
  {
    swift_once();
  }

  v1 = v0[105];
  v2 = v0[91];
  v3 = sub_20C460000();
  v0[109] = __swift_project_value_buffer(v3, qword_28110E2C0);
  sub_20C458FD4(v2, v1, type metadata accessor for ImageAsset);
  v4 = sub_20C45FFE0();
  v5 = sub_20C460680();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[105];
  if (v6)
  {
    v8 = v0[104];
    v9 = v0[101];
    v10 = v0[93];
    v11 = v0[92];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_20C458FD4(v7, v8, type metadata accessor for ImageAsset);
    v14 = sub_20C4604E0();
    v16 = v15;
    sub_20C45903C(v7, type metadata accessor for ImageAsset);
    v17 = sub_20C43A260(v14, v16, &v31);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v0[86] = v11;
    v0[87] = v10;
    type metadata accessor for CGSize();
    v18 = sub_20C4604E0();
    v20 = sub_20C43A260(v18, v19, &v31);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_20C404000, v4, v5, "Fetching %{mask.hash}s (%{public}s)", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2FB570](v13, -1, -1);
    MEMORY[0x20F2FB570](v12, -1, -1);
  }

  else
  {

    sub_20C45903C(v7, type metadata accessor for ImageAsset);
  }

  v21 = v0[94];
  v22 = (v21 + *(type metadata accessor for ImageAssetFeature(0) + 20));
  v23 = v22[1];
  v30 = (*v22 + **v22);
  v24 = (*v22)[1];
  v25 = swift_task_alloc();
  v0[110] = v25;
  *v25 = v0;
  v25[1] = sub_20C456438;
  v26.n128_u64[0] = v0[93];
  v27.n128_u64[0] = v0[92];
  v28 = v0[91];

  return v30(v28, v27, v26);
}

uint64_t sub_20C456438(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 880);
  v6 = *v2;
  *(v4 + 888) = a1;
  *(v4 + 896) = v1;

  v7 = *(v3 + 864);
  v8 = *(v3 + 856);
  if (v1)
  {
    v9 = sub_20C457398;
  }

  else
  {
    v9 = sub_20C456580;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C456580()
{
  v95 = v0;
  v1 = *(v0 + 896);
  sub_20C460620();
  if (v1)
  {

    *(v0 + 912) = v1;
    v2 = *(v0 + 784);
    v3 = *(v0 + 768);
    *(v0 + 704) = v1;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 872);
    if (v5)
    {
      v7 = *(v0 + 848);
      v8 = *(v0 + 824);
      v9 = *(v0 + 728);

      sub_20C458FD4(v9, v8, type metadata accessor for ImageAsset);
      v10 = sub_20C45FFE0();
      v11 = sub_20C460660();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 832);
        v13 = *(v0 + 824);
        v14 = *(v0 + 808);
        v15 = *(v0 + 744);
        v16 = *(v0 + 736);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v94[0] = v18;
        *v17 = 136315394;
        sub_20C458FD4(v13, v12, type metadata accessor for ImageAsset);
        v19 = sub_20C4604E0();
        v21 = v20;
        sub_20C45903C(v13, type metadata accessor for ImageAsset);
        v22 = sub_20C43A260(v19, v21, v94);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        *(v0 + 672) = v16;
        *(v0 + 680) = v15;
        type metadata accessor for CGSize();
        v23 = sub_20C4604E0();
        v25 = sub_20C43A260(v23, v24, v94);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_20C404000, v10, v11, "Fetching %s for %s cancelled", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v18, -1, -1);
        MEMORY[0x20F2FB570](v17, -1, -1);
      }

      else
      {
        v61 = *(v0 + 824);

        sub_20C45903C(v61, type metadata accessor for ImageAsset);
      }

      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

      v62 = *(v0 + 840);
      v63 = *(v0 + 832);
      v64 = *(v0 + 824);
      v65 = *(v0 + 816);
      v66 = *(v0 + 800);
      v67 = *(v0 + 784);

      v68 = *(v0 + 8);

      return v68();
    }

    v45 = *(v0 + 816);
    v46 = *(v0 + 728);

    sub_20C458FD4(v46, v45, type metadata accessor for ImageAsset);
    v47 = v1;
    v48 = sub_20C45FFE0();
    v49 = sub_20C460660();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 832);
      v51 = *(v0 + 816);
      v52 = *(v0 + 808);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94[0] = v93;
      *v53 = 136446466;
      sub_20C458FD4(v51, v50, type metadata accessor for ImageAsset);
      v55 = sub_20C4604E0();
      v57 = v56;
      sub_20C45903C(v51, type metadata accessor for ImageAsset);
      v58 = sub_20C43A260(v55, v57, v94);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2114;
      v59 = v1;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v60;
      *v54 = v60;
      _os_log_impl(&dword_20C404000, v48, v49, "Unable to fetch %{public}s: %{public}@", v53, 0x16u);
      sub_20C40B440(v54, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x20F2FB570](v93, -1, -1);
      MEMORY[0x20F2FB570](v53, -1, -1);
    }

    else
    {
      v70 = *(v0 + 816);

      sub_20C45903C(v70, type metadata accessor for ImageAsset);
    }

    *(v0 + 712) = v1;
    v71 = v1;
    v72 = swift_dynamicCast();
    v73 = *(v0 + 800);
    v74 = *(v0 + 792);
    v75 = *(v0 + 760);
    if (v72)
    {
      v76 = *(v0 + 103);
      v77 = *(v0 + 192);
      *(v0 + 127) = *(v0 + 208);
      v78 = *(v0 + 240);
      *(v0 + 143) = *(v0 + 224);
      *(v0 + 159) = v78;
      *(v0 + 175) = *(v0 + 256);
      *(v0 + 111) = v77;
      *v73 = v76;
      v79 = *(v0 + 104);
      *(v73 + 17) = *(v0 + 120);
      *(v73 + 1) = v79;
      v80 = *(v0 + 136);
      v81 = *(v0 + 152);
      v82 = *(v0 + 168);
      *(v73 + 80) = *(v0 + 183);
      *(v73 + 65) = v82;
      *(v73 + 49) = v81;
      *(v73 + 33) = v80;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v75, v0 + 352);
      v83 = *(MEMORY[0x277D043C8] + 4);
      v42 = swift_task_alloc();
      *(v0 + 928) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v42 = v0;
      v44 = sub_20C457240;
    }

    else
    {
      v84 = *(v0 + 192);
      *(v0 + 39) = *(v0 + 208);
      v85 = *(v0 + 240);
      *(v0 + 55) = *(v0 + 224);
      *(v0 + 71) = v85;
      *(v0 + 87) = *(v0 + 256);
      *(v0 + 23) = v84;
      *v73 = 0;
      v86 = *(v0 + 16);
      *(v73 + 17) = *(v0 + 32);
      *(v73 + 1) = v86;
      v87 = *(v0 + 48);
      v88 = *(v0 + 64);
      v89 = *(v0 + 80);
      *(v73 + 80) = *(v0 + 95);
      *(v73 + 65) = v89;
      *(v73 + 49) = v88;
      *(v73 + 33) = v87;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v75, v0 + 272);
      v90 = *(MEMORY[0x277D043C8] + 4);
      v42 = swift_task_alloc();
      *(v0 + 920) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v42 = v0;
      v44 = sub_20C457024;
    }
  }

  else
  {
    if (qword_28110B9E8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 888);
    v27 = *(v0 + 800);
    v28 = *(v0 + 792);
    v29 = *(v0 + 760);
    v30 = *(v0 + 728);
    v31 = qword_28110E2D8;
    *(v0 + 432) = *v29;
    v32 = v29[4];
    v34 = v29[1];
    v33 = v29[2];
    *(v0 + 480) = v29[3];
    *(v0 + 496) = v32;
    *(v0 + 448) = v34;
    *(v0 + 464) = v33;
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
    sub_20C40C520(v29, v0 + 512);
    v36 = sub_20C45FE40();
    [v31 setObject:v26 forKey:v36];

    v37 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
    sub_20C458FD4(v30, v27, type metadata accessor for ImageAsset);
    *v37 = *v29;
    v38 = v29[4];
    v40 = v29[1];
    v39 = v29[2];
    v37[3] = v29[3];
    v37[4] = v38;
    v37[1] = v40;
    v37[2] = v39;
    swift_storeEnumTagMultiPayload();
    sub_20C40C520(v29, v0 + 592);
    v41 = *(MEMORY[0x277D043C8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 904) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
    *v42 = v0;
    v44 = sub_20C456E0C;
  }

  v42[1] = v44;
  v91 = *(v0 + 800);
  v92 = *(v0 + 720);

  return MEMORY[0x282159B08](v91, v43);
}

uint64_t sub_20C456E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 800);
  v7 = *v0;

  sub_20C45903C(v3, type metadata accessor for ImageAssetAction);
  v4 = *(v1 + 864);
  v5 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C456F64, v5, v4);
}

uint64_t sub_20C456F64()
{
  v1 = v0[111];
  v2 = v0[106];

  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[100];
  v8 = v0[98];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20C457024()
{
  v1 = *v0;
  v2 = *(*v0 + 920);
  v3 = *(*v0 + 800);
  v7 = *v0;

  sub_20C45903C(v3, type metadata accessor for ImageAssetAction);
  v4 = *(v1 + 864);
  v5 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C45717C, v5, v4);
}

uint64_t sub_20C45717C()
{
  v1 = v0[114];
  v2 = v0[106];

  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[100];
  v8 = v0[98];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20C457240()
{
  v1 = *v0;
  v2 = *(*v0 + 928);
  v3 = *(*v0 + 800);
  v7 = *v0;

  sub_20C45903C(v3, type metadata accessor for ImageAssetAction);
  v4 = *(v1 + 864);
  v5 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C45717C, v5, v4);
}

uint64_t sub_20C457398()
{
  v79 = v0;
  v1 = *(v0 + 896);
  *(v0 + 912) = v1;
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  *(v0 + 704) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 872);
  if (v5)
  {
    v7 = *(v0 + 848);
    v8 = *(v0 + 824);
    v9 = *(v0 + 728);

    sub_20C458FD4(v9, v8, type metadata accessor for ImageAsset);
    v10 = sub_20C45FFE0();
    v11 = sub_20C460660();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 832);
      v13 = *(v0 + 824);
      v14 = *(v0 + 808);
      v15 = *(v0 + 744);
      v16 = *(v0 + 736);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v78 = v18;
      *v17 = 136315394;
      sub_20C458FD4(v13, v12, type metadata accessor for ImageAsset);
      v19 = sub_20C4604E0();
      v21 = v20;
      sub_20C45903C(v13, type metadata accessor for ImageAsset);
      v22 = sub_20C43A260(v19, v21, &v78);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v0 + 672) = v16;
      *(v0 + 680) = v15;
      type metadata accessor for CGSize();
      v23 = sub_20C4604E0();
      v25 = sub_20C43A260(v23, v24, &v78);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_20C404000, v10, v11, "Fetching %s for %s cancelled", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FB570](v18, -1, -1);
      MEMORY[0x20F2FB570](v17, -1, -1);
    }

    else
    {
      v42 = *(v0 + 824);

      sub_20C45903C(v42, type metadata accessor for ImageAsset);
    }

    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

    v43 = *(v0 + 840);
    v44 = *(v0 + 832);
    v45 = *(v0 + 824);
    v46 = *(v0 + 816);
    v47 = *(v0 + 800);
    v48 = *(v0 + 784);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v26 = *(v0 + 816);
    v27 = *(v0 + 728);

    sub_20C458FD4(v27, v26, type metadata accessor for ImageAsset);
    v28 = v1;
    v29 = sub_20C45FFE0();
    v30 = sub_20C460660();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 832);
      v32 = *(v0 + 816);
      v33 = *(v0 + 808);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = v77;
      *v34 = 136446466;
      sub_20C458FD4(v32, v31, type metadata accessor for ImageAsset);
      v36 = sub_20C4604E0();
      v38 = v37;
      sub_20C45903C(v32, type metadata accessor for ImageAsset);
      v39 = sub_20C43A260(v36, v38, &v78);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2114;
      v40 = v1;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v41;
      *v35 = v41;
      _os_log_impl(&dword_20C404000, v29, v30, "Unable to fetch %{public}s: %{public}@", v34, 0x16u);
      sub_20C40B440(v35, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x20F2FB570](v77, -1, -1);
      MEMORY[0x20F2FB570](v34, -1, -1);
    }

    else
    {
      v51 = *(v0 + 816);

      sub_20C45903C(v51, type metadata accessor for ImageAsset);
    }

    *(v0 + 712) = v1;
    v52 = v1;
    v53 = swift_dynamicCast();
    v54 = *(v0 + 800);
    v55 = *(v0 + 792);
    v56 = *(v0 + 760);
    if (v53)
    {
      v57 = *(v0 + 103);
      v58 = *(v0 + 192);
      *(v0 + 127) = *(v0 + 208);
      v59 = *(v0 + 240);
      *(v0 + 143) = *(v0 + 224);
      *(v0 + 159) = v59;
      *(v0 + 175) = *(v0 + 256);
      *(v0 + 111) = v58;
      *v54 = v57;
      v60 = *(v0 + 104);
      *(v54 + 17) = *(v0 + 120);
      *(v54 + 1) = v60;
      v61 = *(v0 + 136);
      v62 = *(v0 + 152);
      v63 = *(v0 + 168);
      *(v54 + 80) = *(v0 + 183);
      *(v54 + 65) = v63;
      *(v54 + 49) = v62;
      *(v54 + 33) = v61;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v56, v0 + 352);
      v64 = *(MEMORY[0x277D043C8] + 4);
      v65 = swift_task_alloc();
      *(v0 + 928) = v65;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v65 = v0;
      v67 = sub_20C457240;
    }

    else
    {
      v68 = *(v0 + 192);
      *(v0 + 39) = *(v0 + 208);
      v69 = *(v0 + 240);
      *(v0 + 55) = *(v0 + 224);
      *(v0 + 71) = v69;
      *(v0 + 87) = *(v0 + 256);
      *(v0 + 23) = v68;
      *v54 = 0;
      v70 = *(v0 + 16);
      *(v54 + 17) = *(v0 + 32);
      *(v54 + 1) = v70;
      v71 = *(v0 + 48);
      v72 = *(v0 + 64);
      v73 = *(v0 + 80);
      *(v54 + 80) = *(v0 + 95);
      *(v54 + 65) = v73;
      *(v54 + 49) = v72;
      *(v54 + 33) = v71;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v56, v0 + 272);
      v74 = *(MEMORY[0x277D043C8] + 4);
      v65 = swift_task_alloc();
      *(v0 + 920) = v65;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v65 = v0;
      v67 = sub_20C457024;
    }

    v65[1] = v67;
    v75 = *(v0 + 800);
    v76 = *(v0 + 720);

    return MEMORY[0x282159B08](v75, v66);
  }
}

uint64_t sub_20C457A90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  v6 = type metadata accessor for ImageAssetAction();
  *(v5 + 136) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v9 = sub_20C4605A0();
  *(v5 + 160) = v9;
  *(v5 + 168) = v8;

  return MEMORY[0x2822009F8](sub_20C457B60, v9, v8);
}

uint64_t sub_20C457B60()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v8 = (v2 + *(v7 + 48));
  v9 = (v2 + *(v7 + 64));
  sub_20C458FD4(v6, v2, type metadata accessor for ImageAsset);
  *v8 = *v5;
  v10 = v5[4];
  v12 = v5[1];
  v11 = v5[2];
  v8[3] = v5[3];
  v8[4] = v10;
  v8[1] = v12;
  v8[2] = v11;
  *v9 = v4;
  v9[1] = v3;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v5, (v0 + 2));
  v13 = *(MEMORY[0x277D043C8] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
  *v14 = v0;
  v14[1] = sub_20C457CB4;
  v16 = v0[18];
  v17 = v0[12];

  return MEMORY[0x282159B08](v16, v15);
}

uint64_t sub_20C457CB4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 144);
  v7 = *v0;

  sub_20C45903C(v3, type metadata accessor for ImageAssetAction);
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C4362C8, v5, v4);
}

uint64_t sub_20C457E10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20C43A808(sub_20C45B034, &v5, *a2);
  sub_20C453718(v3, a2);
}

uint64_t sub_20C457E7C(__int128 *a1)
{
  v3 = *(v1 + 40);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v6 = *a1;
  v7 = a1[1];
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)();
  v4 = sub_20C460970();

  return sub_20C457F6C(a1, v4);
}

unint64_t sub_20C457F00(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20C460930();
  ImageAsset.hash(into:)();
  v4 = sub_20C460970();

  return sub_20C458198(a1, v4);
}

uint64_t sub_20C457F6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v33 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v32 = ~v3;
  v5 = *a1;
  v30 = *(a1 + 16);
  v31 = *(a1 + 8);
  v26 = *(a1 + 40);
  v27 = *(a1 + 32);
  v23 = *(a1 + 64);
  v6 = *(a1 + 56);
  v24 = v6;
  v25 = *(a1 + 48);
  v29 = *(a1 + 24);
  v22 = *(a1 + 72);
  v7 = *(v2 + 48);
  while (1)
  {
    v8 = v7 + 80 * v4;
    if (*v8 != v5)
    {
      goto LABEL_3;
    }

    result = *(v8 + 8);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
    v13 = *(v8 + 48);
    v15 = *(v8 + 56);
    v14 = *(v8 + 64);
    v28 = *(v8 + 72);
    if (result != v31 || *(v8 + 16) != v30)
    {
      result = sub_20C4608D0();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v17 = *(v10 + 16);
    if (v17 != *(v29 + 16))
    {
      goto LABEL_3;
    }

    if (v17 && v10 != v29)
    {
      break;
    }

LABEL_16:
    if (v11 == v27 && v12 == v26 || (sub_20C4608D0()) && (v13 == v25 && v15 == v24 || (sub_20C4608D0()) && v14 == v23 && v28 == v22)
    {
      return v4;
    }

LABEL_3:
    v4 = (v4 + 1) & v32;
    if (((*(v33 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  v19 = (v10 + 40);
  v20 = (v29 + 40);
  while (v17)
  {
    result = *(v19 - 1);
    if (result != *(v20 - 1) || *v19 != *v20)
    {
      result = sub_20C4608D0();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v19 += 2;
    v20 += 2;
    if (!--v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20C458198(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageAsset();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_20C458FD4(*(v2 + 48) + v13 * v11, v9, type metadata accessor for ImageAsset);
      v14 = _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_20C45903C(v9, type metadata accessor for ImageAsset);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_20C4582F8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v56 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v62 = a2;
  v11 = sub_20C4607C0();
  v12 = v11;
  if (*(v9 + 16))
  {
    v56 = v3;
    v13 = 0;
    v14 = *(v9 + 64);
    v58 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v57 = (v15 + 63) >> 6;
    v18 = v11 + 64;
    v59 = v9;
    v60 = v11;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v24 = (v17 - 1) & v17;
LABEL_17:
      v28 = v23 | (v13 << 6);
      v66 = v24;
      if (v62)
      {
        v29 = *(v9 + 56);
        v30 = *(v9 + 48) + 80 * v28;
        v31 = *v30;
        v32 = *(v30 + 8);
        v68 = *(v30 + 16);
        v33 = *(v30 + 32);
        v34 = *(v30 + 40);
        v35 = *(v30 + 48);
        v36 = *(v30 + 56);
        v37 = *(v30 + 64);
        v38 = *(v30 + 72);
        v65 = *(v61 + 72);
        sub_20C409BD0(v29 + v65 * v28, v67, &qword_27C7BAF10, &qword_20C4640D0);
      }

      else
      {
        v39 = (*(v9 + 48) + 80 * v28);
        v41 = v39[1];
        v40 = v39[2];
        v42 = v39[4];
        v73 = v39[3];
        v74 = v42;
        v70 = *v39;
        v71 = v41;
        v72 = v40;
        v43 = *(v9 + 56);
        v65 = *(v61 + 72);
        sub_20C409B04(v43 + v65 * v28, v67, &qword_27C7BAF10, &qword_20C4640D0);
        v38 = *(&v74 + 1);
        v37 = v74;
        v36 = *(&v73 + 1);
        v35 = v73;
        v34 = *(&v72 + 1);
        v33 = v72;
        v32 = *(&v70 + 1);
        v68 = v71;
        v31 = v70;
        sub_20C40C520(&v70, v69);
      }

      v44 = *(v60 + 40);
      *&v70 = v31;
      *(&v70 + 1) = v32;
      v71 = v68;
      v63 = v33;
      *&v72 = v33;
      *(&v72 + 1) = v34;
      v45 = v34;
      v46 = v35;
      *&v73 = v35;
      *(&v73 + 1) = v36;
      v64 = v36;
      *&v74 = v37;
      *(&v74 + 1) = v38;
      v47 = v38;
      v12 = v60;
      sub_20C460930();
      ImageAssetCacheKey.hash(into:)();
      result = sub_20C460970();
      v48 = -1 << *(v12 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v18 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        v20 = v68;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v18 + 8 * v50);
          if (v54 != -1)
          {
            v19 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v49) & ~*(v18 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v20 = v68;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v21 = *(v12 + 48) + 80 * v19;
      *v21 = v31;
      *(v21 + 8) = v32;
      *(v21 + 16) = v20;
      *(v21 + 32) = v63;
      *(v21 + 40) = v45;
      v22 = v64;
      *(v21 + 48) = v46;
      *(v21 + 56) = v22;
      *(v21 + 64) = v37;
      *(v21 + 72) = v47;
      sub_20C409BD0(v67, *(v12 + 56) + v65 * v19, &qword_27C7BAF10, &qword_20C4640D0);
      ++*(v12 + 16);
      v9 = v59;
      v17 = v66;
    }

    v25 = v13;
    result = v58;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v57)
      {
        break;
      }

      v27 = v58[v13];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_36;
    }

    v55 = 1 << *(v9 + 32);
    v3 = v56;
    if (v55 >= 64)
    {
      bzero(v58, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v58 = -1 << v55;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_20C4587FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20C45FC30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v63 - v12;
  v71 = sub_20C45FD00();
  v13 = *(v71 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v63 - v18;
  v19 = type metadata accessor for ImageAsset();
  v76 = *(v19 - 8);
  v77 = v19;
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v24 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE88, &qword_20C466EB8);
  v80 = a2;
  result = sub_20C4607C0();
  v26 = result;
  if (*(v23 + 16))
  {
    v75 = v6;
    v64 = v2;
    v27 = 0;
    v28 = v7;
    v29 = (v23 + 64);
    v30 = 1 << *(v23 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v23 + 64);
    v33 = (v30 + 63) >> 6;
    v73 = (v13 + 48);
    v68 = (v13 + 32);
    v67 = (v13 + 8);
    v72 = (v28 + 48);
    v66 = (v28 + 32);
    v65 = (v28 + 8);
    v34 = result + 64;
    v35 = v71;
    v74 = v23;
    while (v32)
    {
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_17:
      v40 = v37 | (v27 << 6);
      v41 = *(v23 + 48);
      v82 = *(v76 + 72);
      v42 = v41 + v82 * v40;
      if (v80)
      {
        sub_20C45A6B4(v42, v22, type metadata accessor for ImageAsset);
        v81 = *(*(v23 + 56) + 8 * v40);
      }

      else
      {
        sub_20C458FD4(v42, v22, type metadata accessor for ImageAsset);
        v81 = *(*(v23 + 56) + 8 * v40);
      }

      v43 = *(v26 + 40);
      sub_20C460930();
      v44 = v78;
      sub_20C409B04(v22, v78, &qword_27C7BAC10, &qword_20C462070);
      if ((*v73)(v44, 1, v35) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v45 = v69;
        (*v68)(v69, v44, v35);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68]);
        sub_20C460460();
        (*v67)(v45, v35);
      }

      v46 = v77;
      v47 = &v22[*(v77 + 20)];
      v48 = *v47;
      v49 = *(v47 + 1);
      sub_20C4604F0();
      v22[*(v46 + 24)];
      sub_20C4604F0();

      v50 = &v22[*(v46 + 28)];
      v51 = v79;
      sub_20C409B04(v50, v79, &qword_27C7BAC18, &unk_20C464A00);
      v52 = v75;
      if ((*v72)(v51, 1, v75) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v53 = v70;
        (*v66)(v70, v51, v52);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260]);
        sub_20C460460();
        v54 = v53;
        v35 = v71;
        (*v65)(v54, v52);
      }

      v23 = v74;
      result = sub_20C460970();
      v55 = -1 << *(v26 + 32);
      v56 = result & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v34 + 8 * (v56 >> 6))) == 0)
      {
        v58 = 0;
        v59 = (63 - v55) >> 6;
        while (++v57 != v59 || (v58 & 1) == 0)
        {
          v60 = v57 == v59;
          if (v57 == v59)
          {
            v57 = 0;
          }

          v58 |= v60;
          v61 = *(v34 + 8 * v57);
          if (v61 != -1)
          {
            v36 = __clz(__rbit64(~v61)) + (v57 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v36 = __clz(__rbit64((-1 << v56) & ~*(v34 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v34 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      result = sub_20C45A6B4(v22, *(v26 + 48) + v82 * v36, type metadata accessor for ImageAsset);
      *(*(v26 + 56) + 8 * v36) = v81;
      ++*(v26 + 16);
    }

    v38 = v27;
    while (1)
    {
      v27 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v27 >= v33)
      {
        break;
      }

      v39 = v29[v27];
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v32 = (v39 - 1) & v39;
        goto LABEL_17;
      }
    }

    if ((v80 & 1) == 0)
    {

      v3 = v64;
      goto LABEL_42;
    }

    v62 = 1 << *(v23 + 32);
    v3 = v64;
    if (v62 >= 64)
    {
      bzero(v29, ((v62 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v29 = -1 << v62;
    }

    *(v23 + 16) = 0;
  }

LABEL_42:
  *v3 = v26;
  return result;
}

uint64_t sub_20C458FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C45903C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C45909C(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C413D30;

  return sub_20C457A90(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_20C4591C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20C457E7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20C45A1C0();
      v11 = v23;
    }

    v12 = (*(v11 + 48) + 80 * v8);
    v22[0] = *v12;
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[2];
    v22[1] = v12[1];
    v22[2] = v15;
    v22[3] = v13;
    v22[4] = v14;
    sub_20C40C57C(v22);
    v16 = *(v11 + 56);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    v18 = *(v17 - 8);
    sub_20C409BD0(v16 + *(v18 + 72) * v8, a2, &qword_27C7BAF10, &qword_20C4640D0);
    sub_20C459390(v8, v11);
    *v3 = v11;
    return (*(v18 + 56))(a2, 0, 1, v17);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }
}

unint64_t sub_20C459390(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v33 = v4;
    v8 = (sub_20C460700() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 80 * v6);
      v35 = *v10;
      v11 = v10[4];
      v13 = v10[1];
      v12 = v10[2];
      v38 = v10[3];
      v39 = v11;
      v36 = v13;
      v37 = v12;
      sub_20C460930();
      v14 = *&v35;
      if (*&v35 == 0.0)
      {
        v14 = 0.0;
      }

      v15 = *(&v36 + 1);
      MEMORY[0x20F2FAEC0](*&v14);
      sub_20C40C520(&v35, v34);
      sub_20C4604F0();
      MEMORY[0x20F2FAEA0](*(v15 + 16));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;

          sub_20C4604F0();

          v17 += 2;
          --v16;
        }

        while (v16);
      }

      v20 = v39;
      sub_20C4604F0();
      sub_20C4604F0();
      MEMORY[0x20F2FAEA0](v20);
      MEMORY[0x20F2FAEA0](*(&v20 + 1));
      v21 = sub_20C460970();
      result = sub_20C40C57C(&v35);
      v22 = v21 & v7;
      if (v3 >= v8)
      {
        break;
      }

      v23 = v33;
      if (v22 < v8)
      {
        goto LABEL_15;
      }

LABEL_16:
      v24 = *(a2 + 48);
      v25 = (v24 + 80 * v3);
      v26 = (v24 + 80 * v6);
      if (v3 != v6 || v25 >= v26 + 80)
      {
        memmove(v25, v26, 0x50uLL);
      }

      v27 = *(a2 + 56);
      v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0) - 8) + 72);
      v29 = v28 * v3;
      result = v27 + v28 * v3;
      if (v28 * v3 < (v28 * v6) || result >= v27 + v28 * v6 + v28)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v29 == v28 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v23 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v23 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_25;
      }
    }

    v23 = v33;
    if (v22 < v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (v3 < v22)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_25:
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20C45968C(int64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v52 - v10;
  v59 = sub_20C45FD00();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v52 - v16;
  v17 = type metadata accessor for ImageAsset();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v17);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 + 64;
  v24 = -1 << *(a2 + 32);
  v25 = (a1 + 1) & ~v24;
  if ((*(a2 + 64 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v64 = v4;
    v26 = ~v24;
    v27 = sub_20C460700();
    v67 = v26;
    v62 = (v27 + 1) & v26;
    v28 = *(v18 + 72);
    v61 = (v11 + 48);
    v56 = (v11 + 32);
    v55 = (v11 + 8);
    v29 = v28;
    v60 = (v5 + 48);
    v54 = (v5 + 32);
    v53 = (v5 + 8);
    v30 = v59;
    v63 = a2 + 64;
    do
    {
      v31 = v29;
      v32 = v29 * v25;
      sub_20C458FD4(*(a2 + 48) + v29 * v25, v22, type metadata accessor for ImageAsset);
      v33 = *(a2 + 40);
      sub_20C460930();
      v34 = v65;
      sub_20C409B04(v22, v65, &qword_27C7BAC10, &qword_20C462070);
      if ((*v61)(v34, 1, v30) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v35 = v57;
        (*v56)(v57, v34, v30);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68]);
        sub_20C460460();
        (*v55)(v35, v30);
      }

      v36 = &v22[v17[5]];
      v37 = *v36;
      v38 = *(v36 + 1);
      sub_20C4604F0();
      v22[v17[6]];
      sub_20C4604F0();

      v39 = v66;
      sub_20C409B04(&v22[v17[7]], v66, &qword_27C7BAC18, &unk_20C464A00);
      v40 = v64;
      if ((*v60)(v39, 1, v64) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v41 = v58;
        (*v54)(v58, v39, v40);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260]);
        sub_20C460460();
        v42 = v41;
        v30 = v59;
        (*v53)(v42, v40);
      }

      v23 = v63;
      v43 = sub_20C460970();
      result = sub_20C45903C(v22, type metadata accessor for ImageAsset);
      v44 = v43 & v67;
      if (a1 >= v62)
      {
        v29 = v31;
        if (v44 < v62)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v29 = v31;
        if (v44 >= v62)
        {
          goto LABEL_16;
        }
      }

      if (a1 >= v44)
      {
LABEL_16:
        v45 = *(a2 + 48);
        result = v45 + v29 * a1;
        if (v29 * a1 < v32 || result >= v45 + v32 + v29)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v29 * a1 != v32)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v46 = *(a2 + 56);
        v47 = (v46 + 8 * a1);
        v48 = (v46 + 8 * v25);
        if (a1 != v25 || v47 >= v48 + 1)
        {
          *v47 = *v48;
          a1 = v25;
        }
      }

LABEL_4:
      v25 = (v25 + 1) & v67;
    }

    while (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
  }

  *(v23 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v49 = *(a2 + 16);
  v50 = __OFSUB__(v49, 1);
  v51 = v49 - 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v51;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20C459D30(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20C457E7C(a2);
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
      sub_20C45A1C0();
      goto LABEL_7;
    }

    sub_20C4582F8(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_20C457E7C(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C45A038(v10, a2, a1, v16);
      return sub_20C40C520(a2, &v23);
    }

LABEL_15:
    result = sub_20C4608E0();
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
  v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0) - 8) + 72) * v10;

  return sub_20C45AF70(a1, v18);
}

uint64_t sub_20C459E94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageAsset();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20C457F00(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20C45A474();
      goto LABEL_7;
    }

    sub_20C4587FC(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_20C457F00(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C458FD4(a2, v11, type metadata accessor for ImageAsset);
      return sub_20C45A10C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C4608E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_20C45A038(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + 80 * a1);
  v8 = a2[3];
  v7[2] = a2[2];
  v7[3] = v8;
  v7[4] = a2[4];
  v9 = a2[1];
  *v7 = *a2;
  v7[1] = v9;
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  result = sub_20C409BD0(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_27C7BAF10, &qword_20C4640D0);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_20C45A10C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageAsset();
  result = sub_20C45A6B4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageAsset);
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

void *sub_20C45A1C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v34 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v5 = *v0;
  v6 = sub_20C4607B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 80 * v21;
        v23 = (*(v5 + 48) + 80 * v21);
        v25 = v23[1];
        v24 = v23[2];
        v26 = v23[4];
        v42 = v23[3];
        v43 = v26;
        v39 = *v23;
        v40 = v25;
        v41 = v24;
        v27 = *(v36 + 72) * v21;
        v28 = v35;
        sub_20C409B04(*(v5 + 56) + v27, v35, &qword_27C7BAF10, &qword_20C4640D0);
        v29 = v37;
        v30 = (*(v37 + 48) + v22);
        v31 = v40;
        v32 = v41;
        v33 = v43;
        v30[3] = v42;
        v30[4] = v33;
        v30[1] = v31;
        v30[2] = v32;
        *v30 = v39;
        sub_20C409BD0(v28, *(v29 + 56) + v27, &qword_27C7BAF10, &qword_20C4640D0);
        result = sub_20C40C520(&v39, v38);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v34;
        v7 = v37;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_20C45A474()
{
  v1 = v0;
  v2 = type metadata accessor for ImageAsset();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE88, &qword_20C466EB8);
  v6 = *v0;
  v7 = sub_20C4607B0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_20C458FD4(*(v6 + 48) + v22, v5, type metadata accessor for ImageAsset);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_20C45A6B4(v5, *(v8 + 48) + v22, type metadata accessor for ImageAsset);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_20C45A6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C45A71C(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ImageAssetFeature(0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C414268;

  return sub_20C455F40(a1, v1 + v5, v1 + v8, (v1 + v9), v10, v11);
}

uint64_t sub_20C45A8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C45A9F4()
{
  result = sub_20C45FCC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C45AAB0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for ImageAsset();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C45FCC0();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE70, &unk_20C466E90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - v19;
  v22 = &v34 + *(v21 + 56) - v19;
  sub_20C458FD4(a1, &v34 - v19, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  sub_20C458FD4(v37, v22, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C458FD4(v20, v16, type metadata accessor for ImageAssetFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v36;
      (*(v6 + 32))(v9, v22, v36);
      v30 = sub_20C45FCA0();
      v32 = *(v6 + 8);
      v32(v9, v31);
      v32(v16, v31);
      goto LABEL_11;
    }

    (*(v6 + 8))(v16, v36);
    goto LABEL_8;
  }

  sub_20C458FD4(v20, v13, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v24 = *&v13[v23 + 64];
  v48 = *&v13[v23 + 48];
  v49 = v24;
  v25 = *&v13[v23 + 32];
  v46 = *&v13[v23 + 16];
  v47 = v25;
  v45 = *&v13[v23];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C40C57C(&v45);
    sub_20C45903C(v13, type metadata accessor for ImageAsset);
LABEL_8:
    sub_20C40B440(v20, &qword_27C7BBE70, &unk_20C466E90);
    goto LABEL_9;
  }

  v26 = *&v22[v23 + 48];
  v42 = *&v22[v23 + 32];
  v43 = v26;
  v44 = *&v22[v23 + 64];
  v27 = *&v22[v23 + 16];
  v40 = *&v22[v23];
  v41 = v27;
  v28 = v35;
  sub_20C45A6B4(v22, v35, type metadata accessor for ImageAsset);
  v29 = static ImageAsset.== infix(_:_:)(v13, v28);
  sub_20C45903C(v13, type metadata accessor for ImageAsset);
  if (v29)
  {
    v39[2] = v47;
    v39[3] = v48;
    v39[4] = v49;
    v39[0] = v45;
    v39[1] = v46;
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[0] = v40;
    v38[1] = v41;
    v30 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(v39, v38);
    sub_20C45903C(v28, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v40);
    sub_20C40C57C(&v45);
LABEL_11:
    sub_20C45903C(v20, type metadata accessor for ImageAssetFeature.TaskIdentifier);
    return v30 & 1;
  }

  sub_20C45903C(v28, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v45);
  sub_20C40C57C(&v40);
  sub_20C45903C(v20, type metadata accessor for ImageAssetFeature.TaskIdentifier);
LABEL_9:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_20C45AF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C45AFE0()
{
  result = qword_28110B850;
  if (!qword_28110B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B850);
  }

  return result;
}

uint64_t static Monogram.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Monogram() + 20);

  return MEMORY[0x28211C778](a1 + v5, a2 + v5);
}

uint64_t sub_20C45B0B4()
{
  if (*v0)
  {
    result = 0x706D6F43656D616ELL;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_20C45B100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C45B1EC(uint64_t a1)
{
  v2 = sub_20C45B41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C45B228(uint64_t a1)
{
  v2 = sub_20C45B41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Monogram.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE90, &qword_20C466EC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45B41C();
  sub_20C4609C0();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_20C460890();
  if (!v2)
  {
    v13 = *(type metadata accessor for Monogram() + 20);
    v15[14] = 1;
    sub_20C45FC10();
    sub_20C45BBE0(&qword_27C7BBEA0, MEMORY[0x277CC8E50]);
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C45B41C()
{
  result = qword_27C7BBE98;
  if (!qword_27C7BBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE98);
  }

  return result;
}

uint64_t Monogram.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C4604F0();
  v3 = *(type metadata accessor for Monogram() + 20);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50]);
  return sub_20C460460();
}

uint64_t Monogram.hashValue.getter()
{
  sub_20C460930();
  v1 = *v0;
  v2 = v0[1];
  sub_20C4604F0();
  v3 = *(type metadata accessor for Monogram() + 20);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t Monogram.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_20C45FC10();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBEB0, &qword_20C466EC8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Monogram();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45B41C();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_20C460820();
  v13[1] = v17;
  v25 = 1;
  sub_20C45BBE0(&qword_27C7BBEB8, MEMORY[0x277CC8E50]);
  sub_20C460840();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_20C45BAD8(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C45BB3C(v13);
}

uint64_t sub_20C45B900(uint64_t a1)
{
  sub_20C460930();
  v3 = *v1;
  v4 = v1[1];
  sub_20C4604F0();
  v5 = *(a1 + 20);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t sub_20C45B9A8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_20C4604F0();
  v6 = *(a2 + 20);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50]);
  return sub_20C460460();
}

uint64_t sub_20C45BA34(uint64_t a1, uint64_t a2)
{
  sub_20C460930();
  v4 = *v2;
  v5 = v2[1];
  sub_20C4604F0();
  v6 = *(a2 + 20);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t sub_20C45BAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45BB3C(uint64_t a1)
{
  v2 = type metadata accessor for Monogram();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45BBE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C45BC28(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211C778](a1 + v7, a2 + v7);
}

unint64_t sub_20C45BCE8()
{
  result = qword_27C7BBEC0;
  if (!qword_27C7BBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEC0);
  }

  return result;
}

unint64_t sub_20C45BD40()
{
  result = qword_27C7BBEC8;
  if (!qword_27C7BBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEC8);
  }

  return result;
}

unint64_t sub_20C45BD98()
{
  result = qword_27C7BBED0;
  if (!qword_27C7BBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBED0);
  }

  return result;
}

uint64_t DynamicArtworkLayoutEnvironment.init(dynamicTypeSize:horizontalSizeClass:platform:verticalSizeClass:viewWidth:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  a5[1] = sub_20C45FCE0();
  v9 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v10 = v9[6];
  v11 = sub_20C45FDF0();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), &a5[v10], a2, v11);
  a5[v9[7]] = a3;
  v12 = &a5[v9[8]];

  return v14(v12, a4, v11);
}

uint64_t DynamicArtworkLayoutEnvironment.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DynamicArtworkLayoutEnvironment() + 24);
  v4 = sub_20C45FDF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DynamicArtworkLayoutEnvironment.verticalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DynamicArtworkLayoutEnvironment() + 32);
  v4 = sub_20C45FDF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20C45C000(uint64_t a1)
{
  v2 = sub_20C45CBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C45C03C(uint64_t a1)
{
  v2 = sub_20C45CBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicArtworkLayoutEnvironment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBED8, &qword_20C4670B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45CBB0();
  sub_20C4609C0();
  v23 = *v3;
  v22 = 0;
  sub_20C45CC04();
  sub_20C4608B0();
  if (!v2)
  {
    v21 = v3[1];
    v20 = 1;
    sub_20C45CC58();
    sub_20C4608B0();
    v11 = type metadata accessor for DynamicArtworkLayoutEnvironment();
    v12 = v11[6];
    v19 = 2;
    sub_20C45FDF0();
    sub_20C45CF9C(&qword_27C7BBEF8, MEMORY[0x277D09E30]);
    sub_20C4608B0();
    v18 = v3[v11[7]];
    v17 = 3;
    sub_20C442E20();
    sub_20C4608B0();
    v13 = v11[8];
    v16 = 4;
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DynamicArtworkLayoutEnvironment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_20C45FDF0();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBF00, &qword_20C4670B8);
  v34 = *(v37 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = v28 - v10;
  v12 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45CBB0();
  v36 = v11;
  v17 = v38;
  sub_20C4609B0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v8;
  v38 = v12;
  v31 = v5;
  v19 = v34;
  v20 = v35;
  v45 = 0;
  sub_20C45CCAC();
  sub_20C460840();
  *v15 = v46;
  v43 = 1;
  sub_20C45CD00();
  sub_20C460840();
  v30 = v15;
  v15[1] = v44;
  v42 = 2;
  sub_20C45CF9C(&qword_27C7BBF18, MEMORY[0x277D09E30]);
  sub_20C460840();
  v21 = v33 + 32;
  v22 = &v30[*(v38 + 24)];
  v29 = *(v33 + 32);
  v29(v22, v18, v20);
  v40 = 3;
  sub_20C443118();
  sub_20C460840();
  v23 = v20;
  v28[1] = v21;
  v24 = v38;
  v25 = v31;
  v30[*(v38 + 28)] = v41;
  v39 = 4;
  sub_20C460840();
  (*(v19 + 8))(v36, v37);
  v26 = v30;
  v29(&v30[*(v24 + 32)], v25, v23);
  sub_20C45CD54(v26, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C45CDB8(v26);
}

uint64_t DynamicArtworkLayoutEnvironment.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_20C45FD20();
  v3 = v0[1];
  sub_20C45FCD0();
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&v4);
  v5 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v6 = v5[6];
  sub_20C45FDF0();
  sub_20C45CF9C(&qword_27C7BBF20, MEMORY[0x277D09E30]);
  sub_20C460460();
  v1[v5[7]];
  sub_20C4604F0();

  v7 = &v1[v5[8]];
  return sub_20C460460();
}

uint64_t DynamicArtworkLayoutEnvironment.hashValue.getter()
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C45C950()
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C45C994()
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)();
  return sub_20C460970();
}

uint64_t _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *a1;
  if ((sub_20C45FD10() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = a1[1];
  v7 = a2[1];
  sub_20C45FCD0();
  v9 = v8;
  sub_20C45FCD0();
  if (v9 != v10)
  {
    goto LABEL_11;
  }

  v11 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v12 = v11[6];
  sub_20C45FDF0();
  sub_20C45CF9C(&qword_27C7BBF48, MEMORY[0x277D09E30]);
  sub_20C460520();
  sub_20C460520();
  if (v19 == v17 && v20 == v18)
  {
  }

  else
  {
    v13 = sub_20C4608D0();

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v15 = 0;
      return v15 & 1;
    }
  }

  if ((sub_20C441194(a1[v11[7]], a2[v11[7]]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = v11[8];
  sub_20C460520();
  sub_20C460520();
  if (v19 == v17 && v20 == v18)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C4608D0();
  }

  return v15 & 1;
}

unint64_t sub_20C45CBB0()
{
  result = qword_27C7BBEE0;
  if (!qword_27C7BBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEE0);
  }

  return result;
}

unint64_t sub_20C45CC04()
{
  result = qword_27C7BBEE8;
  if (!qword_27C7BBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEE8);
  }

  return result;
}

unint64_t sub_20C45CC58()
{
  result = qword_27C7BBEF0;
  if (!qword_27C7BBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEF0);
  }

  return result;
}

unint64_t sub_20C45CCAC()
{
  result = qword_27C7BBF08;
  if (!qword_27C7BBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF08);
  }

  return result;
}

unint64_t sub_20C45CD00()
{
  result = qword_27C7BBF10;
  if (!qword_27C7BBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF10);
  }

  return result;
}

uint64_t sub_20C45CD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45CDB8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C45CE98()
{
  result = qword_27C7BBF30;
  if (!qword_27C7BBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF30);
  }

  return result;
}

unint64_t sub_20C45CEF0()
{
  result = qword_27C7BBF38;
  if (!qword_27C7BBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF38);
  }

  return result;
}

unint64_t sub_20C45CF48()
{
  result = qword_27C7BBF40;
  if (!qword_27C7BBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF40);
  }

  return result;
}

uint64_t sub_20C45CF9C(unint64_t *a1, void (*a2)(uint64_t))
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

void *DynamicPredicateEqualityDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v346 = a1;
  v357 = a4;
  v6 = a3[1];
  v5 = a3[2];
  v351 = a3;
  v7 = a3[3];
  v361 = a2;
  v362 = v6;
  v347 = v6;
  v348 = v5;
  v349 = v7;
  v363 = v5;
  v364 = v7;
  v8 = type metadata accessor for ArtworkPredicateValue();
  WitnessTable = swift_getWitnessTable();
  v324 = type metadata accessor for ArtworkPredicateKeyPath();
  v323 = *(v324 - 8);
  v10 = *(v323 + 64);
  MEMORY[0x28223BE20](v324);
  v322 = &v316 - v11;
  v332 = type metadata accessor for ArtworkPredicateKeyPath();
  v331 = *(v332 - 8);
  v12 = *(v331 + 64);
  v13 = MEMORY[0x28223BE20](v332);
  v330 = &v316 - v14;
  v350 = a2;
  v344 = *(a2 - 8);
  v15 = *(v344 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v345 = &v316 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v352 = &v316 - v19;
  v353 = v8;
  v354 = WitnessTable;
  v335 = type metadata accessor for ArtworkPredicateKeyPath();
  v334 = *(v335 - 8);
  v20 = *(v334 + 64);
  MEMORY[0x28223BE20](v335);
  v333 = &v316 - v21;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  v22 = *(*(v359 - 8) + 64);
  MEMORY[0x28223BE20](v359);
  v360 = &v316 - v23;
  v368 = sub_20C45FEB0();
  v24 = *(v368 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v368);
  v28 = &v316 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v316 - v29;
  v358 = sub_20C45FEC0();
  v31 = *(*(v358 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v358);
  v355 = &v316 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v329 = &v316 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v342 = (&v316 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v343 = (&v316 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v328 = &v316 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v341 = &v316 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v340 = (&v316 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v327 = &v316 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v338 = (&v316 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v326 = &v316 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v337 = (&v316 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v317 = &v316 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v319 = &v316 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v318 = &v316 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v320 = &v316 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v321 = &v316 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v339 = &v316 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v325 = &v316 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v336 = &v316 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v72 = &v316 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v316 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v316 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v316 - v79;
  sub_20C45FF70();
  sub_20C45FE90();
  v356 = v80;
  sub_20C45F7EC(v80);
  sub_20C45FF80();
  sub_20C45FE90();
  sub_20C45F7EC(v78);
  LOBYTE(v8) = sub_20C45FEA0();
  v81 = *(v24 + 8);
  v82 = v368;
  v81(v28, v368);
  v81(v30, v82);
  if (v8)
  {
    sub_20C45FF70();
    sub_20C45FF80();
    v83 = v360;
    v84 = (v360 + *(v359 + 48));
    sub_20C45F848(v75, v360);
    sub_20C45F848(v72, v84);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v86 = v336;
          sub_20C45F8AC(v83, v336);
          v87 = *v86;
          v88 = swift_getEnumCaseMultiPayload();
          if (v88 != 4)
          {
            if (!v88)
            {
              v89 = v356;
              sub_20C45F8AC(v84, v356);
              LOBYTE(v89) = *v89;
              v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A8, &qword_20C464C08);
              v91 = v357;
              v357[3] = v90;
              v91[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
              *v91 = v87;
              *(v91 + 1) = v89;
LABEL_58:
              sub_20C45F7EC(v84);
              return sub_20C45F7EC(v83);
            }

            goto LABEL_61;
          }

          v172 = v325;
          sub_20C45F8AC(v84, v325);
          v173 = sub_20C45FF10();
          v174 = *(v173 - 8);
          if ((*(v174 + 88))(v172, v173) == *MEMORY[0x277D0A8F0])
          {
            v366 = sub_20C45FE10();
            v175 = v345;
            v176 = v350;
            (*(v344 + 16))(v345, v346, v350);
            v132 = v352;
            v177 = ArtworkPredicateValue.init(value:)(v175, v176, v352);
            MEMORY[0x28223BE20](v177);
            v178 = v351;
            *(&v316 - 2) = v176;
            *(&v316 - 1) = v178;
            goto LABEL_42;
          }

          (*(v174 + 8))(v172, v173);
LABEL_61:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_68;
          }

          v236 = v355;
          sub_20C45F8AC(v84, v355);
          v237 = sub_20C45FF10();
          v238 = *(v237 - 8);
          v239 = (*(v238 + 88))(v236, v237);
          if (v239 != *MEMORY[0x277D0A8F0] && v239 != *MEMORY[0x277D0A8E8] && v239 != *MEMORY[0x277D0A900] && v239 != *MEMORY[0x277D0A908] && v239 != *MEMORY[0x277D0A8F8])
          {
            (*(v238 + 8))(v236, v237);
LABEL_68:
            v240 = 1 << swift_getEnumCaseMultiPayload();
            if ((v240 & 0x2B) == 0)
            {
              if ((v240 & 0xC4) != 0)
              {
                v241 = v83;
              }

              else
              {
                v242 = 1 << swift_getEnumCaseMultiPayload();
                if ((v242 & 0x2B) != 0)
                {
                  v84 = v83;
                  goto LABEL_72;
                }

                if ((v242 & 0xC4) == 0)
                {
                  sub_20C43C430();
                  swift_allocError();
                  *v295 = 10;
                  swift_willThrow();
                  return sub_20C45F910(v83);
                }

                v241 = v84;
                v84 = v83;
              }

              sub_20C45F7EC(v241);
            }

LABEL_72:
            sub_20C45F7EC(v84);
            sub_20C43C430();
            swift_allocError();
            v93 = 2;
            goto LABEL_114;
          }

LABEL_113:
          sub_20C45F7EC(v84);
          sub_20C45F7EC(v83);
          sub_20C43C430();
          swift_allocError();
          v93 = 7;
          goto LABEL_114;
        }

        v124 = v337;
        sub_20C45F8AC(v83, v337);
        v125 = *v124;
        v126 = swift_getEnumCaseMultiPayload();
        if (v126 != 1)
        {
          if (v126 != 4)
          {
            goto LABEL_61;
          }

          v127 = v326;
          sub_20C45F8AC(v84, v326);
          v128 = sub_20C45FF10();
          v129 = *(v128 - 8);
          if ((*(v129 + 88))(v127, v128) == *MEMORY[0x277D0A8E8])
          {
            v366 = v125;
            v130 = v345;
            v131 = v350;
            (*(v344 + 16))(v345, v346, v350);
            v132 = v352;
            v133 = ArtworkPredicateValue.init(value:)(v130, v131, v352);
            MEMORY[0x28223BE20](v133);
            v134 = v351;
            *(&v316 - 2) = v131;
            *(&v316 - 1) = v134;
LABEL_42:
            KeyPath = swift_getKeyPath();
            v159 = v333;
            ArtworkPredicateKeyPath.init(root:keyPath:)(v132, KeyPath, v353, v333);
            v180 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
            v181 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
            v161 = v335;
            v182 = swift_getWitnessTable();
            v361 = v180;
            v362 = v161;
            v363 = v181;
            v364 = v182;
            v365 = MEMORY[0x277D83BA8];
            v183 = type metadata accessor for ArtworkPredicateEquality();
            v184 = v357;
            v357[3] = v183;
            v184[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v184);
            v169 = &v366;
            v167 = v159;
            v170 = v180;
            v171 = v161;
LABEL_43:
            static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v169, v167, v170, v171, boxed_opaque_existential_1);
            v185 = &v365;
LABEL_57:
            (*(*(v185 - 32) + 8))(v159, v161);
            goto LABEL_58;
          }

LABEL_49:
          (*(v129 + 8))(v127, v128);
          goto LABEL_61;
        }

        v186 = v356;
        sub_20C45F8AC(v84, v356);
        v142 = *v186;
        sub_20C45F7EC(v84);
LABEL_45:
        sub_20C45F7EC(v83);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB868, &qword_20C464B98);
        v187 = v357;
        v357[3] = result;
        v187[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        *v187 = v125;
        v187[1] = v142;
        return result;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v141 = v340;
        sub_20C45F8AC(v83, v340);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_61;
        }

        v125 = *v141;
        v142 = *v84;
        goto LABEL_45;
      }

      v114 = v338;
      sub_20C45F8AC(v83, v338);
      v116 = *v114;
      v115 = v114[1];
      v117 = swift_getEnumCaseMultiPayload();
      if (v117 != 2)
      {
        if (v117 == 4)
        {
          v118 = v327;
          sub_20C45F8AC(v84, v327);
          v119 = sub_20C45FF10();
          v120 = *(v119 - 8);
          if ((*(v120 + 88))(v118, v119) == *MEMORY[0x277D0A900])
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v121 = v343;
        sub_20C45F8AC(v83, v343);
        v115 = v121[1];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_35;
        }

        v116 = *v121;
        v122 = *v84;
        v123 = v84[1];
LABEL_34:
        sub_20C45F7EC(v83);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB848, &qword_20C464B48);
        v147 = v357;
        v357[3] = v146;
        v147[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        result = swift_allocObject();
        *v147 = result;
        result[2] = v116;
        result[3] = v115;
        result[4] = v122;
        result[5] = v123;
        return result;
      }

      v143 = v342;
      sub_20C45F8AC(v83, v342);
      v116 = *v143;
      v115 = v143[1];
      v144 = swift_getEnumCaseMultiPayload();
      if (v144 == 4)
      {
        v118 = v329;
        sub_20C45F8AC(v84, v329);
        v119 = sub_20C45FF10();
        v120 = *(v119 - 8);
        if ((*(v120 + 88))(v118, v119) == *MEMORY[0x277D0A8F8])
        {
LABEL_51:
          v366 = v116;
          v367 = v115;
          v205 = v345;
          v206 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v207 = v352;
          v208 = ArtworkPredicateValue.init(value:)(v205, v206, v352);
          MEMORY[0x28223BE20](v208);
          v209 = v351;
          *(&v316 - 2) = v206;
          *(&v316 - 1) = v209;
          v210 = swift_getKeyPath();
          v211 = v330;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v207, v210, v353, v330);
          v212 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF50, &qword_20C467308);
          v213 = sub_20C45FA50(&qword_27C7BBF58, &qword_27C7BBF50, &qword_20C467308);
          v214 = v332;
          v215 = swift_getWitnessTable();
          v361 = v212;
          v362 = v214;
          v363 = v213;
          v364 = v215;
          v365 = MEMORY[0x277D837F8];
          v216 = type metadata accessor for ArtworkPredicateEquality();
          v217 = v357;
          v357[3] = v216;
          v217[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v218 = __swift_allocate_boxed_opaque_existential_1(v217);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(&v366, v211, v212, v214, v218);
          (*(v331 + 8))(v211, v214);

          goto LABEL_58;
        }

LABEL_52:

        (*(v120 + 8))(v118, v119);
        goto LABEL_61;
      }

      if (v144 != 7)
      {
LABEL_35:

        goto LABEL_61;
      }

LABEL_33:
      v145 = v356;
      sub_20C45F8AC(v84, v356);
      v122 = *v145;
      v123 = v145[1];
      sub_20C45F7EC(v84);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v94 = v339;
      sub_20C45F8AC(v83, v339);
      v95 = sub_20C45FF10();
      v96 = *(v95 - 8);
      v97 = *(v96 + 88);
      v98 = v97(v94, v95);
      if (v98 == *MEMORY[0x277D0A8F0])
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v99 = *v84;
          v100 = v345;
          v101 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v102 = v352;
          v103 = ArtworkPredicateValue.init(value:)(v100, v101, v352);
          MEMORY[0x28223BE20](v103);
          v104 = v351;
          *(&v316 - 2) = v101;
          *(&v316 - 1) = v104;
          v105 = swift_getKeyPath();
          v106 = v333;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v102, v105, v353, v333);
          v366 = sub_20C45FE10();
          v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
          v108 = v335;
          v109 = swift_getWitnessTable();
          v110 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
          v361 = v108;
          v362 = v107;
          v363 = v109;
          v364 = v110;
          v365 = MEMORY[0x277D83BA8];
          v111 = type metadata accessor for ArtworkPredicateEquality();
          v112 = v357;
          v357[3] = v111;
          v112[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v113 = __swift_allocate_boxed_opaque_existential_1(v112);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v106, &v366, v108, v107, v113);
          (*(v334 + 8))(v106, v108);
          return sub_20C45F7EC(v83);
        }

        goto LABEL_113;
      }

      if (v98 == *MEMORY[0x277D0A8E8])
      {
        v149 = v98;
        v150 = swift_getEnumCaseMultiPayload();
        if (v150 != 4)
        {
          if (v150 != 1)
          {
            goto LABEL_113;
          }

          v151 = v356;
          sub_20C45F8AC(v84, v356);
          v152 = *v151;
          v153 = v345;
          v154 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v155 = v352;
          v156 = ArtworkPredicateValue.init(value:)(v153, v154, v352);
          MEMORY[0x28223BE20](v156);
          v157 = v351;
          *(&v316 - 2) = v154;
          *(&v316 - 1) = v157;
          v158 = swift_getKeyPath();
          v159 = v333;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v155, v158, v353, v333);
          v366 = v152;
          v160 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
          v161 = v335;
          v162 = swift_getWitnessTable();
          v163 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
          v361 = v161;
          v362 = v160;
          v363 = v162;
          v364 = v163;
          v365 = MEMORY[0x277D83BA8];
          v164 = type metadata accessor for ArtworkPredicateEquality();
          v165 = v357;
          v357[3] = v164;
          v165[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v166 = __swift_allocate_boxed_opaque_existential_1(v165);
          v167 = &v366;
          boxed_opaque_existential_1 = v166;
          v169 = v159;
          v170 = v161;
          v171 = v160;
          goto LABEL_43;
        }

        v259 = v321;
        sub_20C45F8AC(v84, v321);
        if (v97(v259, v95) == v149)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v260 = sub_20C460000();
          __swift_project_value_buffer(v260, qword_28110E2C0);
          v261 = sub_20C45FFE0();
          v262 = sub_20C460660();
          if (os_log_type_enabled(v261, v262))
          {
            v263 = swift_slowAlloc();
            v264 = swift_slowAlloc();
            v361 = v264;
            *v263 = 136315138;
            *(v263 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v361);
            _os_log_impl(&dword_20C404000, v261, v262, "%s", v263, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v264);
            MEMORY[0x20F2FB570](v264, -1, -1);
            MEMORY[0x20F2FB570](v263, -1, -1);
          }

          v265 = v345;
          v266 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v267 = v352;
          v268 = ArtworkPredicateValue.init(value:)(v265, v266, v352);
          MEMORY[0x28223BE20](v268);
          v269 = v351;
          *(&v316 - 2) = v266;
          *(&v316 - 1) = v269;
          v270 = swift_getKeyPath();
          v271 = v333;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v267, v270, v353, v333);
          v272 = v335;
          v273 = swift_getWitnessTable();
          v361 = v272;
          v362 = v272;
          v363 = v273;
          v364 = v273;
          v365 = MEMORY[0x277D83BA8];
          v274 = type metadata accessor for ArtworkPredicateEquality();
          v275 = v357;
          v357[3] = v274;
          v275[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v276 = __swift_allocate_boxed_opaque_existential_1(v275);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v271, v271, v272, v272, v276);
          v277 = &v365;
          goto LABEL_105;
        }

LABEL_112:
        (*(v96 + 8))(v259, v95);
        goto LABEL_113;
      }

      if (v98 == *MEMORY[0x277D0A900])
      {
        v219 = v98;
        v220 = swift_getEnumCaseMultiPayload();
        if (v220 != 4)
        {
          if (v220 != 2)
          {
            goto LABEL_113;
          }

          goto LABEL_56;
        }

        v259 = v320;
        sub_20C45F8AC(v84, v320);
        if (v97(v259, v95) != v219)
        {
          goto LABEL_112;
        }

        if (qword_28110B658 != -1)
        {
          swift_once();
        }

        v280 = sub_20C460000();
        __swift_project_value_buffer(v280, qword_28110E2C0);
        v281 = sub_20C45FFE0();
        v282 = sub_20C460660();
        if (os_log_type_enabled(v281, v282))
        {
          v283 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          v361 = v284;
          *v283 = 136315138;
          *(v283 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v361);
          _os_log_impl(&dword_20C404000, v281, v282, "%s", v283, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v284);
          MEMORY[0x20F2FB570](v284, -1, -1);
          MEMORY[0x20F2FB570](v283, -1, -1);
        }

        goto LABEL_96;
      }

      if (v98 != *MEMORY[0x277D0A908])
      {
        if (v98 != *MEMORY[0x277D0A8F8])
        {
          (*(v96 + 8))(v94, v95);
          goto LABEL_61;
        }

        v278 = v98;
        v279 = swift_getEnumCaseMultiPayload();
        if (v279 != 4)
        {
          if (v279 != 7)
          {
            goto LABEL_113;
          }

LABEL_56:
          v221 = v356;
          sub_20C45F8AC(v84, v356);
          v222 = *v221;
          v223 = v221[1];
          v224 = v345;
          v225 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v226 = v352;
          v227 = ArtworkPredicateValue.init(value:)(v224, v225, v352);
          MEMORY[0x28223BE20](v227);
          v228 = v351;
          *(&v316 - 2) = v225;
          *(&v316 - 1) = v228;
          v229 = swift_getKeyPath();
          v159 = v330;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v226, v229, v353, v330);
          v366 = v222;
          v367 = v223;
          v230 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF50, &qword_20C467308);
          v161 = v332;
          v231 = swift_getWitnessTable();
          v232 = sub_20C45FA50(&qword_27C7BBF58, &qword_27C7BBF50, &qword_20C467308);
          v361 = v161;
          v362 = v230;
          v363 = v231;
          v364 = v232;
          v365 = MEMORY[0x277D837F8];
          v233 = type metadata accessor for ArtworkPredicateEquality();
          v234 = v357;
          v357[3] = v233;
          v234[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v235 = __swift_allocate_boxed_opaque_existential_1(v234);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v159, &v366, v161, v230, v235);

          v185 = &v362;
          goto LABEL_57;
        }

        v259 = v317;
        sub_20C45F8AC(v84, v317);
        if (v97(v259, v95) != v278)
        {
          goto LABEL_112;
        }

        if (qword_28110B658 != -1)
        {
          swift_once();
        }

        v312 = sub_20C460000();
        __swift_project_value_buffer(v312, qword_28110E2C0);
        v281 = sub_20C45FFE0();
        v313 = sub_20C460660();
        if (os_log_type_enabled(v281, v313))
        {
          v314 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          v361 = v315;
          *v314 = 136315138;
          *(v314 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v361);
          _os_log_impl(&dword_20C404000, v281, v313, "%s", v314, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v315);
          MEMORY[0x20F2FB570](v315, -1, -1);
          MEMORY[0x20F2FB570](v314, -1, -1);
        }

LABEL_96:

        v285 = v345;
        v286 = v350;
        (*(v344 + 16))(v345, v346, v350);
        v287 = v352;
        v288 = ArtworkPredicateValue.init(value:)(v285, v286, v352);
        MEMORY[0x28223BE20](v288);
        v289 = v351;
        *(&v316 - 2) = v286;
        *(&v316 - 1) = v289;
        v290 = swift_getKeyPath();
        v271 = v330;
        ArtworkPredicateKeyPath.init(root:keyPath:)(v287, v290, v353, v330);
        v272 = v332;
        v291 = swift_getWitnessTable();
        v361 = v272;
        v362 = v272;
        v363 = v291;
        v364 = v291;
        v365 = MEMORY[0x277D837F8];
        v292 = type metadata accessor for ArtworkPredicateEquality();
        v293 = v357;
        v357[3] = v292;
        v293[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        v294 = __swift_allocate_boxed_opaque_existential_1(v293);
        static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v271, v271, v272, v272, v294);
        v277 = &v362;
LABEL_105:
        (*(*(v277 - 32) + 8))(v271, v272);
        goto LABEL_58;
      }

      v243 = v98;
      v244 = swift_getEnumCaseMultiPayload();
      if (v244 == 4)
      {
        v259 = v319;
        sub_20C45F8AC(v84, v319);
        if (v97(v259, v95) == v243)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v296 = sub_20C460000();
          __swift_project_value_buffer(v296, qword_28110E2C0);
          v297 = sub_20C45FFE0();
          v298 = sub_20C460660();
          if (os_log_type_enabled(v297, v298))
          {
            v299 = swift_slowAlloc();
            v300 = swift_slowAlloc();
            v361 = v300;
            *v299 = 136315138;
            *(v299 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v361);
            _os_log_impl(&dword_20C404000, v297, v298, "%s", v299, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v300);
            MEMORY[0x20F2FB570](v300, -1, -1);
            MEMORY[0x20F2FB570](v299, -1, -1);
          }

          v301 = v345;
          v302 = v350;
          (*(v344 + 16))(v345, v346, v350);
          v303 = v352;
          v304 = ArtworkPredicateValue.init(value:)(v301, v302, v352);
          MEMORY[0x28223BE20](v304);
          v305 = v351;
          *(&v316 - 2) = v302;
          *(&v316 - 1) = v305;
          v306 = swift_getKeyPath();
          v271 = v322;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v303, v306, v353, v322);
          v272 = v324;
          v307 = swift_getWitnessTable();
          v308 = sub_20C42E524();
          v361 = v272;
          v362 = v272;
          v363 = v307;
          v364 = v307;
          v365 = v308;
          v309 = type metadata accessor for ArtworkPredicateEquality();
          v310 = v357;
          v357[3] = v309;
          v310[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v311 = __swift_allocate_boxed_opaque_existential_1(v310);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v271, v271, v272, v272, v311);
          v277 = &v355;
          goto LABEL_105;
        }

        goto LABEL_112;
      }

      if (v244 != 5)
      {
        goto LABEL_113;
      }

      v245 = v318;
      sub_20C45F8AC(v84, v318);
      LOBYTE(v245) = *v245;
      v246 = v345;
      v247 = v350;
      (*(v344 + 16))(v345, v346, v350);
      v248 = v352;
      v249 = ArtworkPredicateValue.init(value:)(v246, v247, v352);
      MEMORY[0x28223BE20](v249);
      v250 = v351;
      *(&v316 - 2) = v247;
      *(&v316 - 1) = v250;
      v251 = swift_getKeyPath();
      v159 = v322;
      ArtworkPredicateKeyPath.init(root:keyPath:)(v248, v251, v353, v322);
      LOBYTE(v366) = v245;
      v252 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF60, &qword_20C467340);
      v161 = v324;
      v253 = swift_getWitnessTable();
      v254 = sub_20C45FA50(&qword_27C7BBF68, &qword_27C7BBF60, &qword_20C467340);
      v255 = sub_20C42E524();
      v361 = v161;
      v362 = v252;
      v363 = v253;
      v364 = v254;
      v365 = v255;
      v256 = type metadata accessor for ArtworkPredicateEquality();
      v257 = v357;
      v357[3] = v256;
      v257[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v258 = __swift_allocate_boxed_opaque_existential_1(v257);
      v202 = &v366;
      v200 = v258;
      v201 = v159;
      v203 = v161;
      v204 = v252;
    }

    else
    {
      v135 = v341;
      sub_20C45F8AC(v83, v341);
      v136 = *v135;
      v137 = swift_getEnumCaseMultiPayload();
      if (v137 != 4)
      {
        if (v137 == 5)
        {
          v138 = v356;
          sub_20C45F8AC(v84, v356);
          LOBYTE(v138) = *v138;
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB860, &qword_20C464B90);
          v140 = v357;
          v357[3] = v139;
          v140[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v140 = v136;
          *(v140 + 1) = v138;
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      v127 = v328;
      sub_20C45F8AC(v84, v328);
      v128 = sub_20C45FF10();
      v129 = *(v128 - 8);
      if ((*(v129 + 88))(v127, v128) != *MEMORY[0x277D0A908])
      {
        goto LABEL_49;
      }

      LOBYTE(v366) = v136;
      v188 = v345;
      v189 = v350;
      (*(v344 + 16))(v345, v346, v350);
      v190 = v352;
      v191 = ArtworkPredicateValue.init(value:)(v188, v189, v352);
      MEMORY[0x28223BE20](v191);
      v192 = v351;
      *(&v316 - 2) = v189;
      *(&v316 - 1) = v192;
      v193 = swift_getKeyPath();
      v159 = v322;
      ArtworkPredicateKeyPath.init(root:keyPath:)(v190, v193, v353, v322);
      v194 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF60, &qword_20C467340);
      v195 = sub_20C45FA50(&qword_27C7BBF68, &qword_27C7BBF60, &qword_20C467340);
      v161 = v324;
      v196 = swift_getWitnessTable();
      v197 = sub_20C42E524();
      v361 = v194;
      v362 = v161;
      v363 = v195;
      v364 = v196;
      v365 = v197;
      v198 = type metadata accessor for ArtworkPredicateEquality();
      v199 = v357;
      v357[3] = v198;
      v199[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v200 = __swift_allocate_boxed_opaque_existential_1(v199);
      v201 = &v366;
      v202 = v159;
      v203 = v194;
      v204 = v161;
    }

    static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v201, v202, v203, v204, v200);
    v185 = &v355;
    goto LABEL_57;
  }

  sub_20C43C430();
  swift_allocError();
  v93 = 8;
LABEL_114:
  *v92 = v93;
  return swift_willThrow();
}

uint64_t sub_20C45F7EC(uint64_t a1)
{
  v2 = sub_20C45FEC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FEC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FEC0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45F910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45F978@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_20C45F9C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C45FA08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_20C45FA50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C45FB48()
{
  result = qword_27C7BBF70;
  if (!qword_27C7BBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF70);
  }

  return result;
}