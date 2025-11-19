id MultiPartLabel.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = v0;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v2) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v2];
  v3 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v4 = v1;
  v5 = sub_213F4F220();
  [v4 setAccessibilityIdentifier_];

  [v4 setNumberOfLines_];
  [v4 setPreferredVibrancy_];
  return v4;
}

id MultiPartLabel.updateUIView(_:context:)(void *a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  LOBYTE(v8) = *(v1 + 32);
  v3 = sub_213E665EC();
  [a1 setAttributedText_];

  return [a1 invalidateIntrinsicContentSize];
}

uint64_t MultiPartLabel.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  result = 0;
  if ((a2 & 1) == 0 && (a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v7 = a1;
    [a5 sizeThatFits_];
    if ((~v9 & 0x7FF0000000000000) == 0 || (v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_213E66BB0()
{
  result = qword_27C8F9F98;
  if (!qword_27C8F9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9F98);
  }

  return result;
}

unint64_t sub_213E66C08()
{
  result = qword_281187A10;
  if (!qword_281187A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281187A10);
  }

  return result;
}

id sub_213E66C74(void *a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  LOBYTE(v8) = *(v1 + 32);
  v3 = sub_213E665EC();
  [a1 setAttributedText_];

  return [a1 invalidateIntrinsicContentSize];
}

uint64_t sub_213E66D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E66EB8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E66D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E66EB8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E66DE4()
{
  sub_213E66EB8();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213E66E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_213E66E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E66EB8()
{
  result = qword_281187A18[0];
  if (!qword_281187A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187A18);
  }

  return result;
}

uint64_t sub_213E66F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213E66F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E66F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8F8BC0, &qword_213F563F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NearbyTileViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NearbyTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NearbyTileViewModel.init(id:title:imageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_213DD7500(a5, (a6 + 4));
}

uint64_t sub_213E670A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

__n128 NearbyTile.init(model:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for NearbyTile();
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  result = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = result;
  v12 = (a4 + *(v8 + 24));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_213E6733C@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v2 = *(*(v118 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v118);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v109 = &v102 - v5;
  v117 = sub_213F4D390();
  v116 = *(v117 - 8);
  v6 = *(v116 + 64);
  v7 = MEMORY[0x28223BE20](v117);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v102 - v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v10 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - v11;
  v12 = sub_213F4D290();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v102 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA008, &qword_213F5ACE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v102 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA000, &qword_213F5ACD8);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FF8, &qword_213F5ACD0);
  v29 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v31 = &v102 - v30;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FF0, &unk_213F5ACC0);
  v32 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = &v102 - v33;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA020, &qword_213F5ADF8);
  v107 = *(v108 - 8);
  v34 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v102 - v35;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FE8, &qword_213F5ACB8);
  v36 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v102 - v37;
  sub_213E670A0(v19);
  sub_213F4D280();
  sub_213F4D270();
  v38 = v17;
  v39 = v17;
  v40 = v19;
  v41 = *(v13 + 8);
  v41(v39, v12);
  v119 = v40;
  v124 = v12;
  v123 = v13 + 8;
  v41(v40, v12);
  *v23 = sub_213F4D8A0();
  *(v23 + 1) = 0x4020000000000000;
  v23[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA028, &unk_213F5AE00);
  v43 = v1;
  sub_213E67F20(v1, &v23[*(v42 + 44)]);
  sub_213F4EEF0();
  sub_213F4D4E0();
  sub_213DE2B44(v23, v28, &qword_27C8FA008, &qword_213F5ACE0);
  v44 = &v28[*(v25 + 44)];
  v45 = v133;
  *(v44 + 4) = v132;
  *(v44 + 5) = v45;
  *(v44 + 6) = v134;
  v46 = v129;
  *v44 = v128;
  *(v44 + 1) = v46;
  v47 = v131;
  *(v44 + 2) = v130;
  *(v44 + 3) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  LOBYTE(v13) = sub_213F4E0B0();
  *(inited + 32) = v13;
  v49 = sub_213F4E080();
  *(inited + 33) = v49;
  v50 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v13)
  {
    v50 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v49)
  {
    v50 = sub_213F4E090();
  }

  v51 = v119;
  sub_213E670A0(v119);
  sub_213F4D280();
  sub_213F4D270();
  v52 = v124;
  v41(v38, v124);
  v41(v51, v52);
  sub_213F4CDA0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_213DE2B44(v28, v31, &qword_27C8FA000, &qword_213F5ACD8);
  v61 = &v31[*(v114 + 36)];
  *v61 = v50;
  v62 = v38;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  v63 = sub_213F4E0A0();
  v114 = v43;
  sub_213E670A0(v51);
  sub_213F4D280();
  sub_213F4D270();
  v41(v38, v52);
  v41(v51, v52);
  sub_213F4CDA0();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v121;
  sub_213DE2B44(v31, v121, &qword_27C8F9FF8, &qword_213F5ACD0);
  v73 = v72 + *(v120 + 36);
  *v73 = v63;
  *(v73 + 8) = v65;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v71;
  *(v73 + 40) = 0;
  v74 = v116;
  v75 = *(v116 + 104);
  v76 = v115;
  v77 = v117;
  v75(v115, *MEMORY[0x277CDF9E8], v117);
  v75(v122, *MEMORY[0x277CDF998], v77);
  v78 = v76;
  sub_213E691F4();
  result = sub_213F4F1E0();
  if (result)
  {
    v103 = v62;
    v80 = v74;
    v81 = *(v74 + 32);
    v82 = v109;
    v81(v109, v78, v77);
    v83 = v118;
    v81((v82 + *(v118 + 48)), v122, v77);
    v122 = v41;
    v84 = v111;
    sub_213DE3164(v82, v111, &qword_27C8F9228, &unk_213F5A640);
    v85 = *(v83 + 48);
    v86 = v110;
    v81(v110, v84, v77);
    v87 = v112;
    v88 = *(v80 + 8);
    v88(v84 + v85, v77);
    sub_213DE2B44(v82, v84, &qword_27C8F9228, &unk_213F5A640);
    v81((v86 + *(v87 + 36)), (v84 + *(v118 + 48)), v77);
    v88(v84, v77);
    sub_213E68E0C(&qword_281182DE8, &qword_27C8F9FF0, &unk_213F5ACC0, sub_213E68DDC);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v89 = v106;
    v90 = v121;
    sub_213F4E570();
    sub_213DE36FC(v86, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v90, &qword_27C8F9FF0, &unk_213F5ACC0);
    v91 = v119;
    sub_213E670A0(v119);
    v92 = v103;
    sub_213F4D280();
    sub_213F4D270();
    v93 = v92;
    v94 = v124;
    v95 = v122;
    (v122)(v93, v124);
    v95(v91, v94);
    v125 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v96 = v126;
    v97 = v127;
    v98 = v104;
    (*(v107 + 32))(v104, v89, v108);
    v99 = (v98 + *(v105 + 36));
    *v99 = v96;
    v99[1] = v97;
    v99[2] = 0x403A000000000000;
    v100 = v113;
    sub_213DC8698(v98, v113);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
    v101 = v100 + *(result + 36);
    *v101 = xmmword_213F5AC50;
    *(v101 + 16) = 12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E67F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v74 - v5;
  v6 = sub_213F4E230();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  v17 = type metadata accessor for MapsDesignImage();
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v83 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v85 = &v74 - v27;
  v78 = a1 + *(type metadata accessor for NearbyTile() + 20);
  sub_213DEBAA8(v78 + 32, &v21[v18[10]]);
  v76 = sub_213F4EEE0();
  v75 = v28;
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v29 = v18[7];
  *&v21[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v30 = v18[8];
  *&v21[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v31 = v18[9];
  *&v21[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v32 = &v21[v18[14]];
  v33 = &v21[v18[15]];
  v34 = &v21[v18[16]];
  v86 = 0;
  v87 = 0;
  memset(v88, 0, sizeof(v88));
  sub_213F4EA90();
  v35 = v90;
  v36 = BYTE8(v90);
  v37 = BYTE9(v90);
  v38 = BYTE10(v90);
  v39 = v91;
  *v34 = v89;
  *(v34 + 2) = v35;
  v34[24] = v36;
  v34[25] = v37;
  v34[26] = v38;
  *(v34 + 4) = v39;
  v40 = v18[17];
  v86 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v21[v40] = v89;
  v21[v18[11]] = 1;
  v41 = &v21[v18[12]];
  v42 = v75;
  *v41 = v76;
  v41[1] = v42;
  v21[v18[13]] = 1;
  *v32 = 0;
  *(v32 + 1) = 0;
  *v33 = 0;
  *(v33 + 1) = 0;
  sub_213E670A0(v16);
  sub_213F4D280();
  sub_213F4D270();
  v43 = *(v10 + 8);
  v43(v14, v9);
  v43(v16, v9);
  sub_213E670A0(v16);
  sub_213F4D280();
  sub_213F4D270();
  v43(v14, v9);
  v43(v16, v9);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v44 = v85;
  sub_213DEEFF0(v21, v85);
  v45 = (v44 + *(v23 + 44));
  v46 = v90;
  *v45 = v89;
  v45[1] = v46;
  v45[2] = v91;
  sub_213DEBB74(v21);
  v47 = *(v78 + 24);
  v86 = *(v78 + 16);
  v87 = v47;
  sub_213DBC9EC();

  v48 = sub_213F4E310();
  v50 = v49;
  LOBYTE(v16) = v51;
  v53 = v79;
  v52 = v80;
  v54 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277CE0A68], v81);
  v55 = sub_213F4E0F0();
  v56 = v82;
  (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
  sub_213F4E170();
  sub_213F4E1A0();
  sub_213DE36FC(v56, &qword_27C8F7668, &qword_213F52190);
  (*(v52 + 8))(v53, v54);
  v57 = sub_213F4E2E0();
  v59 = v58;
  LOBYTE(v23) = v60;

  sub_213DBCA40(v48, v50, v16 & 1);

  v61 = [objc_opt_self() labelColor];
  v86 = sub_213F4E870();
  v62 = sub_213F4E2B0();
  v64 = v63;
  LOBYTE(v32) = v65;
  v67 = v66;
  sub_213DBCA40(v57, v59, v23 & 1);

  KeyPath = swift_getKeyPath();
  v69 = v85;
  v70 = v83;
  sub_213DE3164(v85, v83, &qword_27C8F7BE8, &unk_213F52220);
  v71 = v84;
  sub_213DE3164(v70, v84, &qword_27C8F7BE8, &unk_213F52220);
  v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA030, &qword_213F5AED8) + 48);
  *v72 = v62;
  *(v72 + 8) = v64;
  *(v72 + 16) = v32 & 1;
  *(v72 + 24) = v67;
  *(v72 + 32) = KeyPath;
  *(v72 + 40) = 1;
  *(v72 + 48) = 0;
  sub_213DBCA50(v62, v64, v32 & 1);

  sub_213DE36FC(v69, &qword_27C8F7BE8, &unk_213F52220);
  sub_213DBCA40(v62, v64, v32 & 1);

  return sub_213DE36FC(v70, &qword_27C8F7BE8, &unk_213F52220);
}

uint64_t NearbyTile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB8, &qword_213F5ACA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v30 = v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FC0, &qword_213F5ACA8);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FC8, &qword_213F5ACB0);
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v31);
  v17 = v28 - v16;
  v18 = (v1 + *(type metadata accessor for NearbyTile() + 24));
  v19 = *v18;
  if (*v18)
  {
    v20 = v18[1];
    v21 = swift_allocObject();
    v28[3] = v7;
    v28[4] = a1;
    v28[0] = v28;
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    MEMORY[0x28223BE20](v21);
    v28[1] = v3;
    v28[-2] = v1;
    sub_213DD74C4(v19);
    v28[2] = sub_213E68BF4();

    sub_213F4EB00();
    v22 = sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8);
    v23 = sub_213E2EE14();
    sub_213F4E3C0();
    (*(v29 + 8))(v13, v10);
    v24 = v31;
    (*(v14 + 16))(v30, v17, v31);
    swift_storeEnumTagMultiPayload();
    v32 = v10;
    v33 = &type metadata for ScalingTile;
    v34 = v22;
    v35 = v23;
    swift_getOpaqueTypeConformance2();
    sub_213F4DBA0();
    sub_213DD7558(v19);
    return (*(v14 + 8))(v17, v24);
  }

  else
  {
    sub_213E6733C(v6);
    sub_213DC83F0(v6, v30);
    swift_storeEnumTagMultiPayload();
    v26 = sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8);
    v27 = sub_213E2EE14();
    v32 = v10;
    v33 = &type metadata for ScalingTile;
    v34 = v26;
    v35 = v27;
    swift_getOpaqueTypeConformance2();
    sub_213E68BF4();
    sub_213F4DBA0();
    return sub_213DC8460(v6);
  }
}

uint64_t type metadata accessor for NearbyTile()
{
  result = qword_2811883B8;
  if (!qword_2811883B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213E68BF4()
{
  result = qword_27C8F9FD8;
  if (!qword_27C8F9FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FB0, &qword_213F5AC98);
    sub_213E68C80();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9FD8);
  }

  return result;
}

unint64_t sub_213E68C80()
{
  result = qword_27C8F9FE0;
  if (!qword_27C8F9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FE8, &qword_213F5ACB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FF0, &unk_213F5ACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9230, &qword_213F57250);
    sub_213E68E0C(&qword_281182DE8, &qword_27C8F9FF0, &unk_213F5ACC0, sub_213E68DDC);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    swift_getOpaqueTypeConformance2();
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9FE0);
  }

  return result;
}

uint64_t sub_213E68E0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E68E90()
{
  result = qword_2811831D8;
  if (!qword_2811831D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA000, &qword_213F5ACD8);
    sub_213DE3AE4(&qword_2811826E0, &qword_27C8FA008, &qword_213F5ACE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831D8);
  }

  return result;
}

uint64_t sub_213E68F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E68FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E69058()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    sub_213E0C0F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213E690E4()
{
  result = qword_27C8FA010;
  if (!qword_27C8FA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA018, &unk_213F5ADE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9FC0, &qword_213F5ACA8);
    sub_213DE3AE4(&qword_27C8F9FD0, &qword_27C8F9FC0, &qword_213F5ACA8);
    sub_213E2EE14();
    swift_getOpaqueTypeConformance2();
    sub_213E68BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA010);
  }

  return result;
}

unint64_t sub_213E691F4()
{
  result = qword_281183490;
  if (!qword_281183490)
  {
    sub_213F4D390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183490);
  }

  return result;
}

MapsDesign::NoteFieldViewModel::FieldType_optional __swiftcall NoteFieldViewModel.FieldType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_213E69270@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_213E692FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E693F4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213E695D8(v7);
}

uint64_t sub_213E694C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E695D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213E69878(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213E69878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E698C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213E699F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E6929C();
  return sub_213E69B30;
}

void (*sub_213E69C2C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E69B3C();
  return sub_213E69D64;
}

uint64_t sub_213E69DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_3Tm_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213E69F28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_213E6A018(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (sub_213F4F830() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
    sub_213F4CB70();
  }
}

void (*sub_213E6A198(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E69D70();
  return sub_213E6A2D0;
}

uint64_t sub_213E6A33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213E6A400(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E6A4FC(&v4);
}

uint64_t sub_213E6A438@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_213E6A4FC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != 2)
  {
    if (v2 == 2 || ((v5 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB70();
}

void (*sub_213E6A65C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E6A2DC();
  return sub_213E6A794;
}

uint64_t NoteFieldViewModel.__allocating_init(name:namePrompt:note:notePrompt:focusedField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v37 = a8;
  v38 = a4;
  v36 = a3;
  v16 = sub_213F4CB40();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 48);
  v22 = *(v10 + 52);
  v23 = swift_allocObject();
  v24 = *a9;
  sub_213F4CB30();
  (*(v17 + 32))(v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id, v20, v16);
  *(v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField) = 2;
  sub_213F4CBB0();
  v25 = (v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note);
  *v25 = a5;
  v25[1] = a6;
  v26 = (v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name);
  *v26 = a1;
  v26[1] = a2;
  v27 = (v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v29 = v36;
  v28 = v37;
  *v27 = a7;
  v27[1] = v28;
  v30 = (v23 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v31 = v38;
  *v30 = v29;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v33 = *(v23 + v32);
  if (v33 == 2 || v24 == 2)
  {
    if (v33 != 2 || v24 != 2)
    {
      goto LABEL_8;
    }
  }

  else if ((v33 ^ v24))
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v36 - 2) = v23;
    *(&v36 - 8) = v24;
    v39 = v23;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
    sub_213F4CB70();

    return v23;
  }

  *(v23 + v32) = v24;
  return v23;
}

uint64_t NoteFieldViewModel.init(name:namePrompt:note:notePrompt:focusedField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v35 = a8;
  v36 = a4;
  v34 = a3;
  v16 = sub_213F4CB40();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a9;
  sub_213F4CB30();
  (*(v17 + 32))(v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id, v20, v16);
  *(v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField) = 2;
  sub_213F4CBB0();
  v22 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v26 = v34;
  v25 = v35;
  *v24 = a7;
  v24[1] = v25;
  v27 = (v10 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v28 = v36;
  *v27 = v26;
  v27[1] = v28;
  v29 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v30 = *(v10 + v29);
  if (v30 == 2 || v21 == 2)
  {
    if (v30 != 2 || v21 != 2)
    {
      goto LABEL_10;
    }
  }

  else if ((v30 ^ v21))
  {
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v34 - 2) = v10;
    *(&v34 - 8) = v21;
    v37 = v10;
    sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
    sub_213F4CB70();

    return v10;
  }

  *(v10 + v29) = v21;
  return v10;
}

uint64_t NoteFieldViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note + 8);

  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt + 8);

  v7 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  v8 = sub_213F4CBC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t NoteFieldViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt + 8);

  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__note + 8);

  v6 = *(v0 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt + 8);

  v7 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel___observationRegistrar;
  v8 = sub_213F4CBC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E6AEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213E6B0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t NoteFieldView.focusedField.getter()
{
  v1 = (v0 + *(type metadata accessor for NoteFieldView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  return sub_213F4CDC0();
}

uint64_t sub_213E6B248@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NoteFieldView(0) + 24));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  result = sub_213F4CDC0();
  *a2 = v8;
  return result;
}

uint64_t sub_213E6B2CC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for NoteFieldView(0) + 24));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();
}

uint64_t NoteFieldView.focusedField.setter(char *a1)
{
  v2 = *a1;
  v3 = (v1 + *(type metadata accessor for NoteFieldView(0) + 24));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();
}

void (*NoteFieldView.focusedField.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for NoteFieldView(0) + 24));
  v6 = *v5;
  *(v4 + 19) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 48) = v7;
  LOBYTE(v5) = v5[16];
  *(v4 + 20) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDC0();
  return sub_213E6B4A0;
}

void sub_213E6B4A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 20);
  *(*a1 + 24) = *(*a1 + 19);
  v4 = *(v1 + 56);
  *(v1 + 32) = *(v1 + 48);
  *(v1 + 40) = v3;
  *(v1 + 18) = v2;
  sub_213F4CDD0();
  v5 = *(v1 + 32);

  free(v1);
}

uint64_t NoteFieldView.$focusedField.getter()
{
  v1 = (v0 + *(type metadata accessor for NoteFieldView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  return sub_213F4CDE0();
}

uint64_t NoteFieldView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v1 = type metadata accessor for NoteFieldView(0);
  v2 = *(v1 + 24);
  sub_213E6CE50();
  sub_213F4CE00();
  v3 = *(v1 + 20);
  type metadata accessor for NoteFieldViewModel(0);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  return sub_213F4ED60();
}

uint64_t NoteFieldView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for NoteFieldView(0);
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v31[1] = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA078, &qword_213F5AFC0);
  v31[0] = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  *v18 = sub_213F4DA40();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA080, &qword_213F5AFC8);
  sub_213E6BA80(v1, &v18[*(v19 + 44)]);
  sub_213E6AEE0(v14);
  sub_213F4D280();
  sub_213F4D270();
  v20 = *(v8 + 8);
  v20(v12, v7);
  v20(v14, v7);
  v37 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  sub_213F4EA90();
  v21 = v35;
  v22 = &v18[*(v15 + 36)];
  *v22 = v34;
  *(v22 + 1) = v21;
  *(v22 + 2) = 0x4030000000000000;
  v23 = v2 + *(v4 + 32);
  LOBYTE(v21) = *v23;
  v24 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  LOBYTE(v34) = v21;
  v35 = v24;
  v36 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDC0();
  LOBYTE(v34) = v37;
  sub_213E6CEA4(v2, v6);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  sub_213E6CF08(v6, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
  sub_213E6CFEC();
  sub_213E6D6B8(&qword_27C8FA0B0, sub_213E6D0A4);
  v27 = v33;
  sub_213F4E810();

  sub_213DE36FC(v18, &qword_27C8FA078, &qword_213F5AFC0);
  sub_213E6CEA4(v2, v6);
  v28 = swift_allocObject();
  sub_213E6CF08(v6, v28 + v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA0C0, &qword_213F5AFE8);
  v30 = (v27 + *(result + 36));
  *v30 = sub_213E6D0F8;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

uint64_t sub_213E6BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA110, &qword_213F5B1E0);
  v3 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v159 = &v136 - v4;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA118, &qword_213F5B1E8);
  v162 = *(v163 - 8);
  v5 = *(v162 + 64);
  v6 = MEMORY[0x28223BE20](v163);
  v161 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v160 = &v136 - v8;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA120, &unk_213F5B1F0);
  v155 = *(v156 - 8);
  v9 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v136 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA128, &qword_213F5E020);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v153 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v152 = &v136 - v15;
  v151 = sub_213F4D310();
  v150 = *(v151 - 8);
  v16 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NoteFieldView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v146 = v21;
  v147 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  v170 = *(v22 - 8);
  v23 = *(v170 + 64);
  MEMORY[0x28223BE20](v22);
  v169 = &v136 - v24;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA130, &qword_213F5B200);
  v25 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v167 = &v136 - v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA138, &qword_213F5B208);
  v27 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v29 = &v136 - v28;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA140, &qword_213F5B210);
  v143 = *(v144 - 8);
  v30 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v136 - v31;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA148, &qword_213F5B218);
  v32 = *(v148 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v148);
  v145 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v165 = &v136 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA150, &qword_213F5B220);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v157 = &v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v136 - v41;
  v172 = v18;
  v43 = a1 + *(v18 + 20);
  v166 = v22;
  v168 = v43;
  sub_213F4ED40();
  v45 = *(v177 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt);
  v44 = *(v177 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_namePrompt + 8);

  if (v44)
  {
    v139 = v32;
    v46 = v169;
    v140 = v42;
    v137 = v19;
    v47 = v166;
    sub_213F4ED50();
    swift_getKeyPath();
    sub_213F4ED70();

    (*(v170 + 8))(v46, v47);
    v138 = v11;
    v174 = v45;
    v175 = v44;
    sub_213DBC9EC();
    v48 = v167;
    sub_213F4EFC0();
    v49 = sub_213F4E0D0();
    KeyPath = swift_getKeyPath();
    v51 = (v48 + *(v171 + 36));
    *v51 = KeyPath;
    v51[1] = v49;
    sub_213F4E160();
    sub_213E6D8B0();
    sub_213F4E370();
    sub_213DE36FC(v48, &qword_27C8FA130, &qword_213F5B200);
    LOBYTE(v49) = sub_213F4E040();
    sub_213F4CDA0();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA180, &qword_213F5B268) + 36)];
    *v60 = v49;
    *(v60 + 1) = v53;
    *(v60 + 2) = v55;
    *(v60 + 3) = v57;
    *(v60 + 4) = v59;
    v60[40] = 0;
    LOBYTE(v49) = sub_213F4E0B0();
    sub_213F4CDA0();
    v61 = v141;
    v62 = &v29[*(v141 + 36)];
    *v62 = v49;
    *(v62 + 1) = v63;
    *(v62 + 2) = v64;
    *(v62 + 3) = v65;
    *(v62 + 4) = v66;
    v62[40] = 0;
    v67 = *(v172 + 24);
    v136 = a1;
    v68 = (a1 + v67);
    v69 = *v68;
    v70 = *(v68 + 1);
    LOBYTE(v68) = v68[16];
    LOBYTE(v174) = v69;
    v175 = v70;
    v176 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
    sub_213F4CDE0();
    v174 = v177;
    v175 = v178;
    v176 = v179;
    v173 = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
    v72 = sub_213E6DA4C();
    v73 = sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50);
    v74 = v142;
    sub_213F4E770();

    sub_213DE36FC(v29, &qword_27C8FA138, &qword_213F5B208);
    v75 = v147;
    sub_213E6CEA4(a1, v147);
    v76 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v77 = swift_allocObject();
    sub_213E6CF08(v75, v77 + v76);
    v78 = v149;
    sub_213F4D300();
    v177 = v61;
    v178 = v71;
    v179 = v72;
    v180 = v73;
    swift_getOpaqueTypeConformance2();
    v79 = v165;
    v80 = v144;
    sub_213F4E820();

    (*(v150 + 8))(v78, v151);
    (*(v143 + 8))(v74, v80);
    v81 = v152;
    sub_213F4ECA0();
    LOBYTE(v80) = sub_213F4E040();
    sub_213F4CDA0();
    v82 = v81 + *(v138 + 36);
    *v82 = v80;
    *(v82 + 8) = v83;
    *(v82 + 16) = v84;
    *(v82 + 24) = v85;
    *(v82 + 32) = v86;
    *(v82 + 40) = 0;
    v87 = v139;
    v88 = *(v139 + 16);
    v89 = v145;
    v90 = v79;
    v91 = v148;
    v88(v145, v90, v148);
    v92 = v153;
    sub_213DE3164(v81, v153, &qword_27C8FA128, &qword_213F5E020);
    v93 = v154;
    v88(v154, v89, v91);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA198, &unk_213F5B270);
    sub_213DE3164(v92, &v93[*(v94 + 48)], &qword_27C8FA128, &qword_213F5E020);
    sub_213DE36FC(v81, &qword_27C8FA128, &qword_213F5E020);
    v95 = *(v87 + 8);
    v95(v165, v91);
    sub_213DE36FC(v92, &qword_27C8FA128, &qword_213F5E020);
    v95(v89, v91);
    v96 = v93;
    v97 = v140;
    sub_213DC8A88(v96, v140);
    v98 = 0;
    v99 = v136;
  }

  else
  {
    v98 = 1;
    v99 = a1;
    v97 = v42;
  }

  (*(v155 + 56))(v97, v98, 1, v156);
  v100 = v166;
  sub_213F4ED40();
  v102 = *(v177 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt);
  v101 = *(v177 + OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel_notePrompt + 8);

  v174 = v102;
  v175 = v101;
  v103 = v169;
  sub_213F4ED50();
  swift_getKeyPath();
  sub_213F4ED70();

  (*(v170 + 8))(v103, v100);
  sub_213DBC9EC();
  v104 = v167;
  sub_213F4EFD0();
  v105 = sub_213F4E0D0();
  v106 = swift_getKeyPath();
  v107 = (v104 + *(v171 + 36));
  *v107 = v106;
  v107[1] = v105;
  sub_213E6D8B0();
  v108 = v159;
  sub_213F4E850();
  sub_213DE36FC(v104, &qword_27C8FA130, &qword_213F5B200);
  LOBYTE(v105) = sub_213F4E040();
  sub_213F4CDA0();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA160, &qword_213F5B258) + 36);
  *v117 = v105;
  *(v117 + 8) = v110;
  *(v117 + 16) = v112;
  *(v117 + 24) = v114;
  *(v117 + 32) = v116;
  *(v117 + 40) = 0;
  LOBYTE(v105) = sub_213F4E0B0();
  sub_213F4CDA0();
  v118 = v108 + *(v158 + 36);
  *v118 = v105;
  *(v118 + 8) = v119;
  *(v118 + 16) = v120;
  *(v118 + 24) = v121;
  *(v118 + 32) = v122;
  *(v118 + 40) = 0;
  v123 = v99 + *(v172 + 24);
  v124 = *v123;
  v125 = *(v123 + 8);
  LOBYTE(v123) = *(v123 + 16);
  LOBYTE(v174) = v124;
  v175 = v125;
  v176 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDE0();
  v174 = v177;
  v175 = v178;
  v176 = v179;
  v173 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA090, &qword_213F5AFD8);
  sub_213E6D994();
  sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50);
  v126 = v160;
  sub_213F4E770();

  sub_213DE36FC(v108, &qword_27C8FA110, &qword_213F5B1E0);
  v127 = v157;
  sub_213DC8A18(v97, v157);
  v128 = v162;
  v129 = *(v162 + 16);
  v130 = v161;
  v131 = v163;
  v129(v161, v126, v163);
  v132 = v164;
  sub_213DC8A18(v127, v164);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA178, &qword_213F5B260);
  v129((v132 + *(v133 + 48)), v130, v131);
  v134 = *(v128 + 8);
  v134(v126, v131);
  sub_213DE36FC(v97, &qword_27C8FA150, &qword_213F5B220);
  v134(v130, v131);
  return sub_213DE36FC(v127, &qword_27C8FA150, &qword_213F5B220);
}

uint64_t sub_213E6CA80(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NoteFieldView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();
}

uint64_t sub_213E6CB08(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(type metadata accessor for NoteFieldView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  sub_213F4ED40();
  v4 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  v5 = *(v10 + v4);
  if (v5 == 2 || v2 == 2)
  {
    if (v5 != 2 || v2 != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(v10 + v4) = v2;
  }

  if (((v5 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E6CC90(uint64_t a1)
{
  sub_213E15130(0, &qword_27C8FA108, 0x277D75BB8);
  v2 = [swift_getObjCClassFromMetadata() appearance];
  [v2 setClearButtonMode_];

  v3 = type metadata accessor for NoteFieldView(0);
  v4 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  sub_213F4ED40();
  swift_getKeyPath();
  sub_213E69878(&qword_27C8FA040, type metadata accessor for NoteFieldViewModel);
  sub_213F4CB80();

  v5 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  swift_beginAccess();
  LOBYTE(v5) = *(v11 + v5);

  v6 = (a1 + *(v3 + 24));
  v8 = *v6;
  v9 = *(v6 + 1);
  v10 = v6[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA068, &qword_213F5AF80);
  sub_213F4CDD0();
}

unint64_t sub_213E6CE50()
{
  result = qword_27C8FA070;
  if (!qword_27C8FA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA070);
  }

  return result;
}

uint64_t sub_213E6CEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteFieldView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E6CF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteFieldView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E6CF6C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for NoteFieldView(0) - 8) + 80);

  return sub_213E6CB08(a1, a2);
}

unint64_t sub_213E6CFEC()
{
  result = qword_27C8FA098;
  if (!qword_27C8FA098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA078, &qword_213F5AFC0);
    sub_213DE3AE4(&qword_27C8FA0A0, &qword_27C8FA0A8, &qword_213F5AFE0);
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA098);
  }

  return result;
}

unint64_t sub_213E6D0A4()
{
  result = qword_27C8FA0B8;
  if (!qword_27C8FA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA0B8);
  }

  return result;
}

uint64_t sub_213E6D180()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E6D4B8()
{
  sub_213E6D5B4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E6D5B4(319, &qword_27C8FA0E8, type metadata accessor for NoteFieldViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_213E6D618();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E6D5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213E6D618()
{
  if (!qword_27C8FA0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    sub_213E6D6B8(&qword_27C8FA0F8, sub_213E6CE50);
    v0 = sub_213F4CE10();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8FA0F0);
    }
  }
}

uint64_t sub_213E6D6B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E6D730()
{
  result = qword_27C8FA100;
  if (!qword_27C8FA100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA0C0, &qword_213F5AFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA078, &qword_213F5AFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA090, &qword_213F5AFD8);
    sub_213E6CFEC();
    sub_213E6D6B8(&qword_27C8FA0B0, sub_213E6D0A4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA100);
  }

  return result;
}

uint64_t sub_213E6D854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign18NoteFieldViewModel__focusedField;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_213E6D8B0()
{
  result = qword_27C8FA158;
  if (!qword_27C8FA158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA130, &qword_213F5B200);
    sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA158);
  }

  return result;
}

unint64_t sub_213E6D994()
{
  result = qword_27C8FA168;
  if (!qword_27C8FA168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA110, &qword_213F5B1E0);
    sub_213E6DB04(&qword_27C8FA170, &qword_27C8FA160, &qword_213F5B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA168);
  }

  return result;
}

unint64_t sub_213E6DA4C()
{
  result = qword_27C8FA188;
  if (!qword_27C8FA188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA138, &qword_213F5B208);
    sub_213E6DB04(&qword_27C8FA190, &qword_27C8FA180, &qword_213F5B268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA188);
  }

  return result;
}

uint64_t sub_213E6DB04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA130, &qword_213F5B200);
    sub_213E6D8B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213E6DBC8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoteFieldView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t PhotoFanViewModel.init(identifier:size:firstImageProvider:secondImageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v8;
  sub_213DD7500(a4, a6 + 24);

  return sub_213DD7500(a5, a6 + 64);
}

__n128 PhotoFanView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for PhotoFanView() + 20);
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  *(v4 + 12) = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  result = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = result;
  return result;
}

uint64_t PhotoFanSize.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213E6DDB8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA268, &qword_213F5B588);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v7;
  v8 = sub_213F4F180();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_213F4F170();
  v32 = *(v34 - 8);
  v13 = *(v32 + 64);
  v14 = MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;

  v18 = sub_213E6E1C4(a1, a2);
  v20 = v19;
  sub_213E71360(&qword_27C8FA270, MEMORY[0x277CC5540]);
  sub_213F4F160();
  sub_213E712B8(v18, v20);
  sub_213E710D8(v18, v20);
  v21 = v35;
  sub_213E7130C(v18, v20);
  sub_213F4F150();
  v22 = v20;
  v23 = v32;
  sub_213E7130C(v18, v22);
  (*(v9 + 8))(v12, v8);
  v24 = v34;
  v25 = *(v23 + 16);
  v25(v21, v17, v34);
  *(v21 + *(v5 + 44)) = 8;
  v25(v33, v21, v24);
  sub_213E71360(&qword_27C8FA278, MEMORY[0x277CC5290]);
  sub_213F4F3B0();
  result = v36;
  v27 = *(v36 + 16);
  if (v37 == v27)
  {
    goto LABEL_10;
  }

  if (v37 < v27)
  {
    v28 = v36 + 32;
    if (v37 + 1 != v27 && v37 + 2 != v27 && v37 + 3 != v27 && v37 + 4 != v27 && v37 + 5 != v27 && v37 + 6 != v27)
    {
      v29 = *(v28 + v37 + 6) | ((*(v28 + v37 + 5) | ((*(v28 + v37 + 4) | ((*(v28 + v37 + 3) | ((*(v28 + v37 + 2) | ((*(v28 + v37 + 1) | (*(v36 + 32 + v37) << 8)) << 8)) << 8)) << 8)) << 8)) << 8);
      if (v37 + 7 != v27)
      {
        v30 = *(v28 + v37 + 7);

        goto LABEL_11;
      }
    }

LABEL_10:

LABEL_11:
    sub_213DE36FC(v21, &qword_27C8FA268, &qword_213F5B588);
    return (*(v23 + 8))(v17, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_213E6E1C4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA280, &qword_213F5B590);
  if (swift_dynamicCast())
  {
    sub_213DD7500(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_213F4C990();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_213DE36FC(__src, &qword_27C8FA288, &unk_213F5B598);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_213F4F750();
  }

  sub_213E70AB8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_213E71590(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_213E70B80(sub_213E71630);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_213F4CAC0();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_213F38BD0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_213F4F320();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_213F4F350();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_213F4F750();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_213F38BD0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_213F4F330();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_213F4CAD0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_213F4CAD0();
    sub_213E71698(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_213E71698(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_213E712B8(*&__src[0], *(&__src[0] + 1));

  sub_213E7130C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t PhotoFanView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_213F4EEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1A0, &qword_213F5B2D8);
  return sub_213E6E730(v1, a1 + *(v4 + 44));
}

uint64_t sub_213E6E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a1;
  v304 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1B8, &qword_213F5B438);
  v4 = *(v3 - 8);
  v293 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v292 = &v264 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1C0, &qword_213F5B440);
  v8 = *(v7 - 8);
  v296 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v294 = &v264 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1C8, &qword_213F5B448);
  v12 = *(v11 - 8);
  v297 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v295 = &v264 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1D0, &qword_213F5B450);
  v16 = *(v15 - 8);
  v301 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v298 = &v264 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1D8, &qword_213F5B458);
  v20 = *(v19 - 8);
  v302 = v19 - 8;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8);
  v303 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v299 = &v264 - v25;
  MEMORY[0x28223BE20](v24);
  v300 = &v264 - v26;
  v27 = sub_213F4D470();
  v28 = *(v27 - 8);
  v309 = v27 - 8;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v290 = &v264 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v273 = &v264 - v32;
  v33 = type metadata accessor for MapsDesignImage();
  v34 = (v33 - 8);
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v264 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v264 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v42 = *(v41 - 8);
  v306 = v41 - 8;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8);
  v288 = &v264 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v264 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AB8, &unk_213F55BD0);
  v49 = *(v48 - 8);
  v307 = v48 - 8;
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8);
  v289 = &v264 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v266 = &v264 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1E0, &qword_213F5B460);
  v55 = *(v54 - 8);
  v268 = v54 - 8;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v267 = &v264 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1E8, &qword_213F5B468);
  v59 = *(v58 - 8);
  v278 = v58 - 8;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v275 = &v264 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1F0, &qword_213F5B470);
  v63 = *(v62 - 8);
  v280 = v62 - 8;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v276 = &v264 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1F8, &qword_213F5B478);
  v67 = *(v66 - 8);
  v284 = v66 - 8;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v282 = &v264 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA200, &qword_213F5B480);
  v71 = *(v70 - 8);
  *&v286 = v70 - 8;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v285 = &v264 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA208, &qword_213F5B488);
  v75 = *(v74 - 8);
  v287 = v74 - 8;
  v76 = *(v75 + 64);
  v77 = MEMORY[0x28223BE20](v74 - 8);
  v291 = &v264 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x28223BE20](v77);
  v283 = &v264 - v80;
  MEMORY[0x28223BE20](v79);
  v308 = &v264 - v81;
  v82 = a1 + *(type metadata accessor for PhotoFanView() + 20);
  sub_213DEBAA8(v82 + 24, &v40[v34[10]]);
  v83 = sub_213F4EEE0();
  v85 = v84;
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v86 = v34[7];
  *&v40[v86] = swift_getKeyPath();
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v87 = v34[8];
  *&v40[v87] = swift_getKeyPath();
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v88 = v34[9];
  *&v40[v88] = swift_getKeyPath();
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v89 = &v40[v34[14]];
  v90 = &v40[v34[15]];
  v91 = &v40[v34[16]];
  v313 = 0uLL;
  *(&v314 + 7) = 0;
  *&v314 = 0;
  sub_213F4EA90();
  v92 = v317;
  v93 = BYTE8(v317);
  v94 = BYTE9(v317);
  v95 = BYTE10(v317);
  v96 = v318;
  *v91 = v316;
  *(v91 + 2) = v92;
  v91[24] = v93;
  v91[25] = v94;
  v91[26] = v95;
  *(v91 + 4) = v96;
  v97 = v34[17];
  *&v313 = 0;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v40[v97] = v316;
  v40[v34[11]] = 1;
  v98 = &v40[v34[12]];
  *v98 = v83;
  v98[1] = v85;
  v40[v34[13]] = 1;
  *v89 = 0;
  *(v89 + 1) = 0;
  *v90 = 0;
  *(v90 + 1) = 0;
  v100 = *v82;
  v99 = *(v82 + 8);
  sub_213E6DDB8(*v82, v99);
  if (v101 <= 0.5)
  {
    v102 = &unk_213F5B608;
  }

  else
  {
    v102 = &unk_213F5B628;
  }

  v103 = v102[*(v82 + 16)];
  sub_213E6DDB8(v100, v99);
  v104 = *(v82 + 16);
  v265 = v82;
  if (v105 <= 0.5)
  {
    v106 = &unk_213F5B608;
  }

  else
  {
    v106 = &unk_213F5B628;
  }

  v107 = v106[v104];
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DEEFF0(v40, v47);
  v108 = &v47[*(v306 + 44)];
  v109 = v47;
  v110 = v314;
  *v108 = v313;
  *(v108 + 1) = v110;
  *(v108 + 2) = v315;
  sub_213DEBB74(v40);
  sub_213E6DDB8(v100, v99);
  v111 = &unk_213F5B5C8;
  if (v112 > 0.5)
  {
    v111 = &unk_213F5B5A8;
  }

  v113 = v111[*(v82 + 16)];
  v114 = *(v309 + 28);
  v271 = *MEMORY[0x277CE0118];
  v115 = v271;
  v270 = sub_213F4D950();
  v116 = *(v270 - 8);
  v269 = *(v116 + 104);
  v272 = v116 + 104;
  v117 = v273;
  v269(&v273[v114], v115, v270);
  *v117 = v113;
  v117[1] = v113;
  v118 = v266;
  v119 = &v266[*(v307 + 44)];
  sub_213DEEF8C(v117, v119);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *(v119 + *(v273 + 9)) = 256;
  sub_213DE2B44(v109, v118, &qword_27C8F7BE8, &unk_213F52220);
  v120 = sub_213F4EEE0();
  v122 = v121;
  v123 = v267;
  v124 = &v267[*(v268 + 44)];
  *v124 = sub_213F4EEE0();
  v124[1] = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA210, &qword_213F5B530);
  sub_213E6FB7C(v305, v124 + *(v126 + 44));
  v127 = (v124 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA218, &qword_213F5B538) + 36));
  *v127 = v120;
  v127[1] = v122;
  sub_213DE2B44(v118, v123, &qword_27C8F8AB8, &unk_213F55BD0);
  sub_213E6DDB8(v100, v99);
  v129 = v128;
  sub_213E6DDB8(v100, v99);
  v131 = 10.0;
  if (v129 > 0.5)
  {
    v131 = 4.0;
  }

  v132 = -18.0;
  if (v129 > 0.5)
  {
    v132 = -6.0;
  }

  v133 = (v132 - v130 * v131) * 0.0174532925;
  sub_213F4F040();
  v135 = v134;
  v137 = v136;
  v138 = v275;
  sub_213DE2B44(v123, v275, &qword_27C8FA1E0, &qword_213F5B460);
  v139 = v138 + *(v278 + 44);
  *v139 = v133;
  *(v139 + 8) = v135;
  *(v139 + 16) = v137;
  v140 = sub_213F4E080();
  v141 = v265;
  v142 = qword_213F5B5E8[*(v265 + 16)];
  sub_213F4CDA0();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v151 = v138;
  v152 = v276;
  sub_213DE2B44(v151, v276, &qword_27C8FA1E8, &qword_213F5B468);
  v153 = v152 + *(v280 + 44);
  *v153 = v140;
  *(v153 + 8) = v144;
  *(v153 + 16) = v146;
  *(v153 + 24) = v148;
  *(v153 + 32) = v150;
  *(v153 + 40) = 0;
  v154 = sub_213F4E060();
  sub_213E6DDB8(v100, v99);
  v155 = qword_213F5B668[*(v141 + 16)];
  sub_213F4CDA0();
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v164 = v282;
  sub_213DE2B44(v152, v282, &qword_27C8FA1F0, &qword_213F5B470);
  v165 = v164 + *(v284 + 44);
  *v165 = v154;
  *(v165 + 8) = v157;
  *(v165 + 16) = v159;
  *(v165 + 24) = v161;
  *(v165 + 32) = v163;
  *(v165 + 40) = 0;
  sub_213F4E8C0();
  *(v141 + 16);
  v166 = sub_213F4E900();

  v167 = v285;
  sub_213DE2B44(v164, v285, &qword_27C8FA1F8, &qword_213F5B478);
  v168 = v167 + *(v286 + 44);
  *v168 = v166;
  v286 = xmmword_213F5B280;
  *(v168 + 8) = xmmword_213F5B280;
  *(v168 + 24) = 0x4008000000000000;
  sub_213E6DDB8(v100, v99);
  if (v169 <= 0.5)
  {
    v170 = -1.0;
  }

  else
  {
    v170 = 1.0;
  }

  v171 = v167;
  v172 = v283;
  sub_213DE2B44(v171, v283, &qword_27C8FA200, &qword_213F5B480);
  *(v172 + *(v287 + 44)) = v170;
  sub_213DE2B44(v172, v308, &qword_27C8FA208, &qword_213F5B488);
  sub_213DEBAA8(v141 + 64, &v38[v34[10]]);
  v173 = sub_213F4EEE0();
  v175 = v174;
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v176 = v34[7];
  *&v38[v176] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v177 = v34[8];
  *&v38[v177] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v178 = v34[9];
  *&v38[v178] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v179 = &v38[v34[14]];
  v180 = &v38[v34[15]];
  v181 = &v38[v34[16]];
  memset(v312, 0, sizeof(v312));
  v311 = 0;
  v310 = 0;
  sub_213F4EA90();
  v182 = v317;
  v183 = WORD4(v317);
  v184 = BYTE10(v317);
  v185 = v318;
  *v181 = v316;
  *(v181 + 2) = v182;
  *(v181 + 12) = v183;
  v181[26] = v184;
  *(v181 + 4) = v185;
  v186 = v34[17];
  v310 = 0;
  sub_213F4EA90();
  *&v38[v186] = v316;
  v38[v34[11]] = 1;
  v187 = &v38[v34[12]];
  *v187 = v173;
  v187[1] = v175;
  v38[v34[13]] = 1;
  *v179 = 0;
  *(v179 + 1) = 0;
  *v180 = 0;
  *(v180 + 1) = 0;
  sub_213E6DDB8(v100, v99);
  if (v188 <= 0.5)
  {
    v189 = &unk_213F5B628;
  }

  else
  {
    v189 = &unk_213F5B608;
  }

  v190 = v189[*(v141 + 16)];
  sub_213E6DDB8(v100, v99);
  if (v191 <= 0.5)
  {
    v192 = &unk_213F5B628;
  }

  else
  {
    v192 = &unk_213F5B608;
  }

  v193 = v192[*(v141 + 16)];
  sub_213F4EEE0();
  sub_213F4D0C0();
  v194 = v288;
  sub_213DEEFF0(v38, v288);
  v195 = (v194 + *(v306 + 44));
  v196 = v317;
  *v195 = v316;
  v195[1] = v196;
  v195[2] = v318;
  sub_213DEBB74(v38);
  sub_213E6DDB8(v100, v99);
  v197 = &unk_213F5B6C8;
  if (v198 > 0.5)
  {
    v197 = &unk_213F5B6A8;
  }

  v199 = v197[*(v141 + 16)];
  v200 = v290;
  v269(&v290[*(v309 + 28)], v271, v270);
  *v200 = v199;
  v200[1] = v199;
  v201 = v200;
  v202 = v289;
  v203 = &v289[*(v307 + 44)];
  sub_213DEEF8C(v201, v203);
  v204 = (v203 + *(v273 + 9));
  *v204 = 0;
  v204[1] = 1;
  v205 = v202;
  sub_213DE2B44(v194, v202, &qword_27C8F7BE8, &unk_213F52220);
  v206 = sub_213F4EEE0();
  v208 = v207;
  v209 = v292;
  v210 = &v292[*(v293 + 44)];
  *v210 = sub_213F4EEE0();
  v210[1] = v211;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA220, &qword_213F5B540);
  sub_213E701C8(v305, v210 + *(v212 + 44));
  v213 = (v210 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA228, &qword_213F5B548) + 36));
  *v213 = v206;
  v213[1] = v208;
  sub_213DE2B44(v205, v209, &qword_27C8F8AB8, &unk_213F55BD0);
  sub_213E6DDB8(v100, v99);
  v215 = v214;
  sub_213E6DDB8(v100, v99);
  v217 = v216 * 4.0 + 6.0;
  v218 = v216 * -5.0 + 18.0;
  if (v215 <= 0.5)
  {
    v218 = v217;
  }

  v219 = v218 * 0.0174532925;
  sub_213F4F040();
  v221 = v220;
  v223 = v222;
  v224 = v294;
  sub_213DE2B44(v209, v294, &qword_27C8FA1B8, &qword_213F5B438);
  v225 = v224 + *(v296 + 44);
  *v225 = v219;
  *(v225 + 8) = v221;
  *(v225 + 16) = v223;
  v226 = sub_213F4E080();
  v227 = qword_213F5B648[*(v141 + 16)];
  sub_213F4CDA0();
  v229 = v228;
  v231 = v230;
  v233 = v232;
  v235 = v234;
  v236 = v224;
  v237 = v295;
  sub_213DE2B44(v236, v295, &qword_27C8FA1C0, &qword_213F5B440);
  v238 = v237 + *(v297 + 44);
  *v238 = v226;
  *(v238 + 8) = v229;
  *(v238 + 16) = v231;
  *(v238 + 24) = v233;
  *(v238 + 32) = v235;
  *(v238 + 40) = 0;
  v239 = sub_213F4E060();
  sub_213E6DDB8(v100, v99);
  v241 = v240 > 0.75 || v240 < 0.25;
  v242 = &unk_213F5B688;
  if (!v241)
  {
    v242 = qword_213F5B668;
  }

  v243 = v242[*(v141 + 16)];
  sub_213F4CDA0();
  v245 = v244;
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v252 = v298;
  sub_213DE2B44(v237, v298, &qword_27C8FA1C8, &qword_213F5B448);
  v253 = v252 + *(v301 + 44);
  *v253 = v239;
  *(v253 + 8) = v245;
  *(v253 + 16) = v247;
  *(v253 + 24) = v249;
  *(v253 + 32) = v251;
  *(v253 + 40) = 0;
  sub_213F4E8C0();
  *(v141 + 16);
  v254 = sub_213F4E900();

  v255 = v299;
  sub_213DE2B44(v252, v299, &qword_27C8FA1D0, &qword_213F5B450);
  v256 = v255 + *(v302 + 44);
  *v256 = v254;
  *(v256 + 8) = v286;
  *(v256 + 24) = 0x4008000000000000;
  v257 = v300;
  sub_213DE2B44(v255, v300, &qword_27C8FA1D8, &qword_213F5B458);
  v258 = v308;
  v259 = v291;
  sub_213DE3164(v308, v291, &qword_27C8FA208, &qword_213F5B488);
  v260 = v303;
  sub_213DE3164(v257, v303, &qword_27C8FA1D8, &qword_213F5B458);
  v261 = v304;
  sub_213DE3164(v259, v304, &qword_27C8FA208, &qword_213F5B488);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA230, &qword_213F5B550);
  sub_213DE3164(v260, v261 + *(v262 + 48), &qword_27C8FA1D8, &qword_213F5B458);
  sub_213DE36FC(v257, &qword_27C8FA1D8, &qword_213F5B458);
  sub_213DE36FC(v258, &qword_27C8FA208, &qword_213F5B488);
  sub_213DE36FC(v260, &qword_27C8FA1D8, &qword_213F5B458);
  return sub_213DE36FC(v259, &qword_27C8FA208, &qword_213F5B488);
}

uint64_t sub_213E6FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_213F4CF30();
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4D470();
  v9 = *(*(v8 - 8) + 64);
  v10 = v8 - 8;
  v72 = v8 - 8;
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v76 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA240, &qword_213F5B560);
  v16 = *(*(v15 - 8) + 64);
  v17 = v15 - 8;
  v18 = MEMORY[0x28223BE20](v15 - 8);
  v80 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v79 = v64 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v77 = v64 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v78 = v64 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v64 - v27;
  MEMORY[0x28223BE20](v26);
  v75 = v64 - v29;
  v30 = a1 + *(type metadata accessor for PhotoFanView() + 20);
  v31 = *v30;
  v73 = *(v30 + 8);
  v74 = v31;
  sub_213E6DDB8(v31, v73);
  v32 = &unk_213F5B6C8;
  if (v33 <= 0.5)
  {
    v32 = &unk_213F5B6A8;
  }

  v34 = v32[*(v30 + 16)];
  v35 = *(v10 + 28);
  v70 = *MEMORY[0x277CE0118];
  v36 = v70;
  v65 = sub_213F4D950();
  v37 = *(v65 - 8);
  v69 = *(v37 + 104);
  v71 = v37 + 104;
  v69(&v14[v35], v36, v65);
  *v14 = v34;
  *(v14 + 1) = v34;
  v38 = sub_213F4E8D0();
  sub_213F4E8C0();
  sub_213F4E900();

  sub_213F4CF20();

  v39 = v17;
  v40 = &v28[*(v17 + 60)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA248, &qword_213F5B568);
  v41 = v40 + *(v68 + 36);
  sub_213F4CF10();
  v42 = *(v83 + 8);
  v83 += 8;
  v67 = v42;
  v43 = v7;
  v42(v7, v82);
  *v40 = v38;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA250, &qword_213F5B570);
  v44 = *(v66 + 36);
  v45 = *MEMORY[0x277CE13F8];
  v46 = sub_213F4EF90();
  v47 = *(v46 - 8);
  v64[0] = *(v47 + 104);
  v64[1] = v47 + 104;
  (v64[0])(v40 + v44, v45, v46);
  sub_213DEEF8C(v14, v28);
  v48 = v39;
  *&v28[*(v39 + 64)] = 256;
  v49 = v75;
  sub_213DE2B44(v28, v75, &qword_27C8FA240, &qword_213F5B560);
  sub_213E6DDB8(v74, v73);
  v50 = &unk_213F5B6C8;
  if (v51 <= 0.5)
  {
    v50 = &unk_213F5B6A8;
  }

  v52 = v50[*(v30 + 16)];
  v53 = v76;
  v69(&v76[*(v72 + 28)], v70, v65);
  *v53 = v52;
  v53[1] = v52;
  v54 = sub_213F4E8D0();
  sub_213F4E8F0();
  sub_213F4E900();

  sub_213F4CF20();

  v55 = v77;
  v56 = &v77[*(v48 + 60)];
  v57 = v56 + *(v68 + 36);
  sub_213F4CF10();
  v67(v43, v82);
  *v56 = v54;
  (v64[0])(v56 + *(v66 + 36), *MEMORY[0x277CE13B8], v46);
  sub_213DEEF8C(v53, v55);
  *(v55 + *(v48 + 64)) = 256;
  v58 = v78;
  sub_213DE2B44(v55, v78, &qword_27C8FA240, &qword_213F5B560);
  v59 = v79;
  sub_213DE3164(v49, v79, &qword_27C8FA240, &qword_213F5B560);
  v60 = v80;
  sub_213DE3164(v58, v80, &qword_27C8FA240, &qword_213F5B560);
  v61 = v81;
  sub_213DE3164(v59, v81, &qword_27C8FA240, &qword_213F5B560);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA260, &qword_213F5B580);
  sub_213DE3164(v60, v61 + *(v62 + 48), &qword_27C8FA240, &qword_213F5B560);
  sub_213DE36FC(v58, &qword_27C8FA240, &qword_213F5B560);
  sub_213DE36FC(v49, &qword_27C8FA240, &qword_213F5B560);
  sub_213DE36FC(v60, &qword_27C8FA240, &qword_213F5B560);
  return sub_213DE36FC(v59, &qword_27C8FA240, &qword_213F5B560);
}

uint64_t sub_213E701C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA238, &qword_213F5B558);
  v4 = *(v3 - 8);
  v78 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v79 = &v65 - v10;
  v11 = sub_213F4CF30();
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_213F4D470();
  v17 = *(*(v16 - 8) + 64);
  v18 = v16 - 8;
  v71 = v16 - 8;
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v75 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA240, &qword_213F5B560);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v76 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v65 - v29;
  MEMORY[0x28223BE20](v28);
  v74 = &v65 - v31;
  v32 = a1 + *(type metadata accessor for PhotoFanView() + 20);
  v33 = *v32;
  v72 = *(v32 + 8);
  v73 = v33;
  sub_213E6DDB8(v33, v72);
  v34 = &unk_213F5B6A8;
  if (v35 <= 0.5)
  {
    v34 = &unk_213F5B6C8;
  }

  v36 = v34[*(v32 + 16)];
  v37 = *(v18 + 28);
  v69 = *MEMORY[0x277CE0118];
  v38 = v69;
  v39 = sub_213F4D950();
  v40 = *(v39 - 8);
  v68 = *(v40 + 104);
  v70 = v40 + 104;
  v68(&v22[v37], v38, v39);
  *v22 = v36;
  *(v22 + 1) = v36;
  v41 = sub_213F4E8D0();
  sub_213F4E8C0();
  sub_213F4E900();

  sub_213F4CF20();

  v42 = &v30[*(v24 + 60)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA248, &qword_213F5B568);
  v43 = v42 + *(v67 + 36);
  sub_213F4CF10();
  v44 = *(v83 + 8);
  v83 += 8;
  v66 = v44;
  v44(v15, v82);
  *v42 = v41;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA250, &qword_213F5B570) + 36);
  v46 = *MEMORY[0x277CE13F8];
  v47 = sub_213F4EF90();
  (*(*(v47 - 8) + 104))(v42 + v45, v46, v47);
  sub_213DEEF8C(v22, v30);
  *&v30[*(v24 + 64)] = 256;
  v48 = v74;
  sub_213DE2B44(v30, v74, &qword_27C8FA240, &qword_213F5B560);
  sub_213E6DDB8(v73, v72);
  v49 = &unk_213F5B6A8;
  if (v50 <= 0.5)
  {
    v49 = &unk_213F5B6C8;
  }

  v51 = v49[*(v32 + 16)];
  v52 = v75;
  v68(&v75[*(v71 + 28)], v69, v39);
  *v52 = v51;
  v52[1] = v51;
  v53 = sub_213F4E8D0();
  sub_213F4E8F0();
  sub_213F4E900();

  sub_213F4CF20();

  v55 = v77;
  v54 = v78;
  v56 = &v77[*(v78 + 60)];
  v57 = v56 + *(v67 + 36);
  sub_213F4CF10();
  v66(v15, v82);
  *v56 = v53;
  sub_213DEEF8C(v52, v55);
  *(v55 + *(v54 + 64)) = 256;
  v58 = v55;
  v59 = v79;
  sub_213DE2B44(v58, v79, &qword_27C8FA238, &qword_213F5B558);
  v60 = v76;
  sub_213DE3164(v48, v76, &qword_27C8FA240, &qword_213F5B560);
  v61 = v80;
  sub_213DE3164(v59, v80, &qword_27C8FA238, &qword_213F5B558);
  v62 = v81;
  sub_213DE3164(v60, v81, &qword_27C8FA240, &qword_213F5B560);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA258, &qword_213F5B578);
  sub_213DE3164(v61, v62 + *(v63 + 48), &qword_27C8FA238, &qword_213F5B558);
  sub_213DE36FC(v59, &qword_27C8FA238, &qword_213F5B558);
  sub_213DE36FC(v48, &qword_27C8FA240, &qword_213F5B560);
  sub_213DE36FC(v61, &qword_27C8FA238, &qword_213F5B558);
  return sub_213DE36FC(v60, &qword_27C8FA240, &qword_213F5B560);
}

uint64_t sub_213E707EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_213F4EEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA1A0, &qword_213F5B2D8);
  return sub_213E6E730(v1, a1 + *(v4 + 44));
}

uint64_t type metadata accessor for PhotoFanView()
{
  result = qword_281187FF8;
  if (!qword_281187FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213E70888()
{
  result = qword_27C8FA1A8;
  if (!qword_27C8FA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA1A8);
  }

  return result;
}

uint64_t sub_213E70908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E70950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E709E0()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_213E70A54()
{
  result = qword_281182650;
  if (!qword_281182650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA1B0, &qword_213F5B430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182650);
  }

  return result;
}

uint64_t sub_213E70AB8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_213E714D8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_213F4C980();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_213F4C930();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_213F4CAB0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_213E70B80(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_213E7130C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_213E7130C(v6, v5);
    *v3 = xmmword_213F5B290;
    sub_213E7130C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_213F4C940() && __OFSUB__(v6, sub_213F4C970()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_213F4C980();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_213F4C920();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_213E71024(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_213E7130C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_213F5B290;
    sub_213E7130C(0, 0xC000000000000000);
    sub_213F4CAA0();
    result = sub_213E71024(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_213E70F24@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_213E714D8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_213E716AC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_213E71728(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_213E70FB8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_213E71024(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_213F4C940();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_213F4C970();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_213F4C960();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_213E710D8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_213F4F180();
      sub_213E71360(&qword_27C8FA270, MEMORY[0x277CC5540]);
      result = sub_213F4F140();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_213E713A8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213E712B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_213E7130C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_213E71360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E713A8(uint64_t a1, uint64_t a2)
{
  result = sub_213F4C940();
  if (!result || (result = sub_213F4C970(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_213F4C960();
      sub_213F4F180();
      sub_213E71360(&qword_27C8FA270, MEMORY[0x277CC5540]);
      return sub_213F4F140();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213E71488@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_213F4F720();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213E714D8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213E71590(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_213F4C980();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_213F4C950();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_213F4CAB0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_213E71630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_213E70FB8(sub_213E717AC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_213E71698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_213E7130C(a1, a2);
  }

  return a1;
}

uint64_t sub_213E716AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_213F4C980();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_213F4C930();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_213F4CAB0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_213E71728(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_213F4C980();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_213F4C930();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PinnedTileViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PinnedTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PinnedTileViewModel.title.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PinnedTileViewModel.subtitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PinnedTileViewModel.init(id:imageProvider:isSymbolImage:title:subtitle:isSuggestion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_213DD7500(a3, a9 + 16);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t sub_213E71940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D7F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_213DE3164(v2 + *(a1 + 40), &v18 - v12, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_213F4CEA0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_213F4F520();
    v17 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_213E71B58()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_213E71B88()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PinnedTile.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PinnedTile();
  v11 = *(v10 + 40);
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v13 = (a5 + *(v10 + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

double sub_213E71CAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_213F4DA40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2C8, &unk_213F5B8C0);
  sub_213E71D64(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
  sub_213F4EED0();
  sub_213F4D0C0();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA290, &qword_213F5B738) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_213E71D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v161 = a2;
  v162 = a3;
  v157 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  v152 = *(v5 - 8);
  v153 = v5;
  v6 = *(v152 + 64);
  MEMORY[0x28223BE20](v5);
  v146 = &v139 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2D0, &qword_213F5B8D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v156 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v154 = &v139 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2D8, &qword_213F5B8D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v155 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v159 = &v139 - v17;
  v18 = type metadata accessor for MapsDesignImage();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2E0, &qword_213F5B8E0);
  v22 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v139 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2E8, &qword_213F5B8E8);
  v24 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v26 = &v139 - v25;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2F0, &qword_213F5B8F0);
  v27 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v139 - v28;
  v29 = sub_213F4CEA0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v139 - v35;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2F8, &qword_213F5B8F8);
  v37 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v39 = &v139 - v38;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA300, &qword_213F5B900);
  v40 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v141 = &v139 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA308, &qword_213F5B908);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v151 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v158 = &v139 - v46;
  v47 = *(v162 + 48);
  v160 = a1;
  v144 = v47;
  v145 = v162 + 48;
  if ((v47)(v161))
  {
    sub_213F4E8B0();
    v48 = type metadata accessor for PinnedTile();
    sub_213E71940(v48, v36);
    (*(v30 + 104))(v34, *MEMORY[0x277CDF3D0], v29);
    sub_213F4CE90();
    v49 = *(v30 + 8);
    v49(v34, v29);
    v49(v36, v29);
    v50 = sub_213F4E900();

    sub_213F4E8C0();
    v51 = sub_213F4E900();

    v52 = sub_213F4EEE0();
    v54 = v53;
    v55 = &v39[*(v140 + 36)];
    sub_213E72D20(v161, v162, v55);
    v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA318, &qword_213F5B9B8) + 36));
    *v56 = v52;
    v56[1] = v54;
    *v39 = v50;
    *(v39 + 1) = v51;
    *(v39 + 1) = xmmword_213F5B6F0;
    *(v39 + 4) = 0x4010000000000000;
    sub_213E74088();
    v57 = v141;
    sub_213F4E6D0();
    sub_213DE36FC(v39, &qword_27C8FA2F8, &qword_213F5B8F8);
    v58 = &qword_27C8FA300;
    v59 = &qword_213F5B900;
    sub_213DE3164(v57, v149, &qword_27C8FA300, &qword_213F5B900);
    swift_storeEnumTagMultiPayload();
    sub_213E73FCC();
    sub_213E74238();
    sub_213F4DBA0();
    v60 = v57;
  }

  else
  {
    v61 = &v21[v18[8]];
    (*(v162 + 16))(v161);
    v62 = sub_213F4EEE0();
    v63 = v26;
    v65 = v64;
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v66 = v18[5];
    *&v21[v66] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v67 = v18[6];
    *&v21[v67] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v68 = v18[7];
    *&v21[v68] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v69 = &v21[v18[12]];
    v70 = &v21[v18[13]];
    v71 = &v21[v18[14]];
    v163 = 0uLL;
    *(&v164 + 7) = 0;
    *&v164 = 0;
    sub_213F4EA90();
    v72 = v177;
    v73 = BYTE8(v177);
    v74 = BYTE9(v177);
    v75 = BYTE10(v177);
    v76 = v178;
    *v71 = v176;
    *(v71 + 2) = v72;
    v71[24] = v73;
    v71[25] = v74;
    v71[26] = v75;
    *(v71 + 4) = v76;
    v77 = v18[15];
    *&v163 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v21[v77] = v176;
    v21[v18[9]] = 1;
    v78 = &v21[v18[10]];
    *v78 = v62;
    v78[1] = v65;
    v21[v18[11]] = 1;
    *v69 = sub_213E72FEC;
    v69[1] = 0;
    *v70 = 0;
    *(v70 + 1) = 0;
    v79 = v142;
    sub_213DEEFF0(v21, v142);
    v80 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
    *v80 = 0x3FF0000000000000;
    *(v80 + 8) = 0;
    sub_213DEBB74(v21);
    sub_213F4E8C0();
    v81 = sub_213F4E900();

    v82 = v79 + *(v143 + 36);
    *v82 = v81;
    *(v82 + 8) = xmmword_213F5B6F0;
    *(v82 + 24) = 0x4010000000000000;
    sub_213E7416C(&qword_281183128, &qword_27C8FA2E0, &qword_213F5B8E0, sub_213DFDFD0);
    sub_213F4E6D0();
    sub_213DE36FC(v79, &qword_27C8FA2E0, &qword_213F5B8E0);
    v58 = &qword_27C8FA2E8;
    v59 = &qword_213F5B8E8;
    sub_213DE3164(v63, v149, &qword_27C8FA2E8, &qword_213F5B8E8);
    swift_storeEnumTagMultiPayload();
    sub_213E73FCC();
    sub_213E74238();
    sub_213F4DBA0();
    v60 = v63;
  }

  sub_213DE36FC(v60, v58, v59);
  *&v176 = (*(v162 + 32))(v161);
  *(&v176 + 1) = v83;
  v150 = sub_213DBC9EC();
  v84 = sub_213F4E310();
  v86 = v85;
  v88 = v87;
  LODWORD(v176) = sub_213F4DD90();
  v89 = sub_213F4E2B0();
  v91 = v90;
  v93 = v92;
  sub_213DBCA40(v84, v86, v88 & 1);

  sub_213F4E210();
  sub_213F4E160();
  sub_213F4E1D0();

  v94 = sub_213F4E2E0();
  v96 = v95;
  v98 = v97;
  v100 = v99;

  sub_213DBCA40(v89, v91, v93 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v91) = sub_213F4E060();
  sub_213F4CDA0();
  v175 = v98 & 1;
  v173 = 0;
  v170 = 0;
  *&v176 = v94;
  *(&v176 + 1) = v96;
  LOBYTE(v177) = v98 & 1;
  *(&v177 + 1) = *v174;
  DWORD1(v177) = *&v174[3];
  *(&v177 + 1) = v100;
  *&v178 = KeyPath;
  v102 = 1;
  *(&v178 + 1) = 1;
  LOBYTE(v179) = 0;
  DWORD1(v179) = *&v172[3];
  *(&v179 + 1) = *v172;
  BYTE8(v179) = v91;
  HIDWORD(v179) = *&v171[3];
  *(&v179 + 9) = *v171;
  *&v180 = v103;
  *(&v180 + 1) = v104;
  *&v181 = v105;
  *(&v181 + 1) = v106;
  v182 = 0;
  v167 = v180;
  v168 = v181;
  v169 = 0;
  v163 = v176;
  v164 = v177;
  v165 = v178;
  v166 = v179;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8978, &qword_213F5B9F0);
  sub_213E0C240();
  sub_213F4E6D0();
  sub_213DE36FC(&v176, &qword_27C8F8978, &qword_213F5B9F0);
  v107 = (*(v162 + 40))(v161);
  if (v108)
  {
    *&v163 = v107;
    *(&v163 + 1) = v108;
    v109 = sub_213F4E310();
    v111 = v110;
    v113 = v112;
    if (v144(v161, v162))
    {
      v114 = sub_213F4E8B0();
    }

    else
    {
      v116 = [objc_opt_self() secondaryLabelColor];
      v114 = sub_213F4E870();
    }

    *&v163 = v114;
    v117 = sub_213F4E2B0();
    v119 = v118;
    v121 = v120;
    sub_213DBCA40(v109, v111, v113 & 1);

    sub_213F4E210();
    sub_213F4E170();
    sub_213F4E1D0();

    v122 = sub_213F4E2E0();
    v124 = v123;
    v126 = v125;
    v128 = v127;

    sub_213DBCA40(v117, v119, v121 & 1);

    v129 = swift_getKeyPath();
    *&v163 = v122;
    *(&v163 + 1) = v124;
    LOBYTE(v164) = v126 & 1;
    *(&v164 + 1) = v128;
    *&v165 = v129;
    *(&v165 + 1) = 1;
    LOBYTE(v166) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
    sub_213E0C270();
    v130 = v146;
    sub_213F4E6D0();
    sub_213DBCA40(v122, v124, v126 & 1);

    v115 = v154;
    sub_213E74320(v130, v154);
    v102 = 0;
  }

  else
  {
    v115 = v154;
  }

  (*(v152 + 56))(v115, v102, 1, v153);
  v131 = v158;
  v132 = v151;
  sub_213DE3164(v158, v151, &qword_27C8FA308, &qword_213F5B908);
  v133 = v159;
  v134 = v155;
  sub_213DE3164(v159, v155, &qword_27C8FA2D8, &qword_213F5B8D8);
  v135 = v156;
  sub_213DE3164(v115, v156, &qword_27C8FA2D0, &qword_213F5B8D0);
  v136 = v157;
  sub_213DE3164(v132, v157, &qword_27C8FA308, &qword_213F5B908);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA320, &qword_213F5B9F8);
  sub_213DE3164(v134, v136 + *(v137 + 48), &qword_27C8FA2D8, &qword_213F5B8D8);
  sub_213DE3164(v135, v136 + *(v137 + 64), &qword_27C8FA2D0, &qword_213F5B8D0);
  sub_213DE36FC(v115, &qword_27C8FA2D0, &qword_213F5B8D0);
  sub_213DE36FC(v133, &qword_27C8FA2D8, &qword_213F5B8D8);
  sub_213DE36FC(v131, &qword_27C8FA308, &qword_213F5B908);
  sub_213DE36FC(v135, &qword_27C8FA2D0, &qword_213F5B8D0);
  sub_213DE36FC(v134, &qword_27C8FA2D8, &qword_213F5B8D8);
  return sub_213DE36FC(v132, &qword_27C8FA308, &qword_213F5B908);
}

uint64_t sub_213E72D20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for MapsDesignImage();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v9[v6[10]];
  (*(a2 + 16))(a1, a2);
  v11 = *(a2 + 24);
  v34 = v11(a1, a2);
  v12 = sub_213F4EEE0();
  v32 = v13;
  v33 = v12;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v14 = v6[7];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v15 = v6[8];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v16 = v6[9];
  *&v9[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v17 = &v9[v6[14]];
  v18 = &v9[v6[15]];
  v19 = &v9[v6[16]];
  v36 = 0;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  sub_213F4EA90();
  v20 = v40;
  v21 = v41;
  v22 = v42;
  v23 = v43;
  v24 = v44;
  *v19 = v39;
  *(v19 + 2) = v20;
  v19[24] = v21;
  v19[25] = v22;
  v19[26] = v23;
  *(v19 + 4) = v24;
  v25 = v6[17];
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v9[v25] = v39;
  v9[v6[11]] = 0;
  v26 = &v9[v6[12]];
  v27 = v32;
  *v26 = v33;
  *(v26 + 1) = v27;
  v9[v6[13]] = (v34 & 1) == 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  *v18 = 0;
  *(v18 + 1) = 0;
  if (v11(a1, a2))
  {
    v28 = sub_213F4E8B0();
  }

  else
  {
    v28 = sub_213F4E910();
  }

  v29 = v28;
  v30 = v35;
  sub_213DEEFF0(v9, v35);
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA328, &qword_213F5BA00) + 36)) = v29;
  return sub_213DEBB74(v9);
}

uint64_t sub_213E72FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DD90();
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA330, &qword_213F5BA08);
  result = sub_213DE3AE4(&qword_27C8FA338, &qword_27C8FA330, &qword_213F5BA08);
  *(a1 + 32) = result;
  *a1 = v2;
  *(a1 + 4) = 1036831949;
  *(a1 + 8) = 256;
  return result;
}

uint64_t PinnedTile.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA290, &qword_213F5B738);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA298, &qword_213F5B740);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2A0, &qword_213F5B748);
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA2A8, &qword_213F5B750);
  v16 = *(v40 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v40);
  v19 = v33 - v18;
  v20 = a1;
  v21 = v3;
  v22 = (v3 + *(a1 + 36));
  v23 = *v22;
  if (*v22)
  {
    v24 = v22[1];
    v25 = swift_allocObject();
    v33[2] = v5;
    v34 = v11;
    v33[1] = v33;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v35 = v24;
    MEMORY[0x28223BE20](v25);
    *&v33[-4] = *(v20 + 16);
    v33[-2] = v21;
    sub_213DD74C4(v23);
    sub_213E7355C();

    sub_213F4EB00();
    v26 = sub_213DE3AE4(&qword_281182780, &qword_27C8FA2A0, &qword_213F5B748);
    v27 = sub_213E2EE14();
    v28 = v37;
    sub_213F4E3C0();
    (*(v36 + 8))(v15, v28);
    v29 = v40;
    (*(v16 + 16))(v34, v19, v40);
    swift_storeEnumTagMultiPayload();
    v41 = v28;
    v42 = &type metadata for ScalingTile;
    v43 = v26;
    v44 = v27;
    swift_getOpaqueTypeConformance2();
    sub_213F4DBA0();
    sub_213DD7558(v23);
    return (*(v16 + 8))(v19, v29);
  }

  else
  {
    sub_213E71CAC(a1, v8);
    sub_213DE3164(v8, v11, &qword_27C8FA290, &qword_213F5B738);
    swift_storeEnumTagMultiPayload();
    v31 = sub_213DE3AE4(&qword_281182780, &qword_27C8FA2A0, &qword_213F5B748);
    v32 = sub_213E2EE14();
    v41 = v37;
    v42 = &type metadata for ScalingTile;
    v43 = v31;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    sub_213E7355C();
    sub_213F4DBA0();
    return sub_213DE36FC(v8, &qword_27C8FA290, &qword_213F5B738);
  }
}

unint64_t sub_213E7355C()
{
  result = qword_281183198;
  if (!qword_281183198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA290, &qword_213F5B738);
    sub_213DE3AE4(&qword_281182680, &qword_27C8FA2B0, &qword_213F5B758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183198);
  }

  return result;
}

double sub_213E73614@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for PinnedTile();
  return sub_213E71CAC(v6, a1);
}

unint64_t sub_213E7364C(uint64_t a1)
{
  result = sub_213E73674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213E73674()
{
  result = qword_27C8FA2B8;
  if (!qword_27C8FA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA2B8);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213E737A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E737E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E7385C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_213E0C0F8();
    if (v3 <= 0x3F)
    {
      sub_213DE59D4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213E738FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_213F4CEA0() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 < 0x7FFFFFFE)
      {
        v20 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        if ((v20 + 1) >= 2)
        {
          return v20;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v6 + 48);

        return v19(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_213E73B6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_213F4CEA0() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFE)
  {
    v23 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      v23[1] = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else
  {
    v22 = *(v24 + 56);

    v22(a1, a2, v9, v7);
  }
}

unint64_t sub_213E73E68()
{
  result = qword_281182AC0;
  if (!qword_281182AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA2C0, &qword_213F5B8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA2A0, &qword_213F5B748);
    sub_213DE3AE4(&qword_281182780, &qword_27C8FA2A0, &qword_213F5B748);
    sub_213E2EE14();
    swift_getOpaqueTypeConformance2();
    sub_213E7355C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AC0);
  }

  return result;
}

unint64_t sub_213E73F78()
{
  result = qword_281184258[0];
  if (!qword_281184258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184258);
  }

  return result;
}

unint64_t sub_213E73FCC()
{
  result = qword_281182D48;
  if (!qword_281182D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA300, &qword_213F5B900);
    sub_213E74088();
    sub_213E741F0(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D48);
  }

  return result;
}

unint64_t sub_213E74088()
{
  result = qword_281182E08;
  if (!qword_281182E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA2F8, &qword_213F5B8F8);
    sub_213E7416C(&qword_281182FA0, &qword_27C8FA310, &qword_213F5B9B0, sub_213DE333C);
    sub_213DE3AE4(&qword_281182C60, &qword_27C8FA318, &qword_213F5B9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E08);
  }

  return result;
}

uint64_t sub_213E7416C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213E73F78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213E741F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213E74238()
{
  result = qword_281182F28;
  if (!qword_281182F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA2E8, &qword_213F5B8E8);
    sub_213E7416C(&qword_281183128, &qword_27C8FA2E0, &qword_213F5B8E0, sub_213DFDFD0);
    sub_213E741F0(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F28);
  }

  return result;
}

uint64_t sub_213E74320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PlaceCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PlaceCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  sub_213E74628(v2, v15);
  v6 = swift_allocObject();
  v7 = v15[1];
  *(v6 + 16) = v15[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v15[2];
  *(v6 + 64) = v16;
  sub_213DEBAA8(v2, a1 + 32);
  sub_213DD74C4(v4);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9 & 1;
  sub_213F4EA90();
  v10 = *(&v15[0] + 1);
  *(a1 + 104) = v15[0];
  *(a1 + 112) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA340, &qword_213F5BEC0);
  v12 = *(v11 + 56);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v13 = *(v11 + 60);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E74660;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_213E7454C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(a1, a2 + v4[8]);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *(a2 + v4[7]) = 3;
  return result;
}

unint64_t sub_213E74698()
{
  result = qword_281188570;
  if (!qword_281188570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA340, &qword_213F5BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188570);
  }

  return result;
}

double ProfileCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 1;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 9.53376652e-307;
  *v7 = xmmword_213F5BBB0;
  v7[16] = 2;
  return result;
}

double sub_213E74810@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 1;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 9.53376652e-307;
  *v7 = xmmword_213F5BBB0;
  v7[16] = 2;
  return result;
}

uint64_t PublisherCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PublisherCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  sub_213E74C10(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  *(v6 + 16) = v16[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v16[2];
  *(v6 + 64) = v17;
  sub_213DEBAA8(v2, a1 + 32);
  sub_213DD74C4(v4);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9 & 1;
  sub_213F4EA90();
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94F0, &qword_213F57EB0);
  v11 = *(v10 + 56);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 60);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E74C48;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

double sub_213E74B04@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(a1, a2 + v4[8]);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a2 + v4[7]) = 8;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9500, &unk_213F58050) + 36);
  result = 3.17059653e180;
  *v7 = xmmword_213F5BCD0;
  v7[16] = 2;
  return result;
}

uint64_t RecentSearchCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_213F4E230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for RecentSearchCell();
  v14 = v13[5];
  v17[1] = 0x4020000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A68], v8);
  sub_213DE15D0();
  sub_213F4CFE0();
  result = sub_213DD7500(a1, a4 + v13[6]);
  v16 = (a4 + v13[7]);
  *v16 = a2;
  v16[1] = a3;
  return result;
}

double RecentSearchCell.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecentSearchCell();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v1 + *(v5 + 36));
  v9 = *v8;
  v10 = v8[1];
  sub_213E75168(v2, &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_213E751CC(&v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  sub_213DEBAA8(v2 + *(v5 + 32), a1 + 32);
  sub_213DD74C4(v9);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14 & 1;
  v21[15] = 0;
  sub_213F4EA90();
  v15 = v22;
  *(a1 + 104) = v21[16];
  *(a1 + 112) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA340, &qword_213F5BEC0);
  v17 = *(v16 + 56);
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v18 = *(v16 + 60);
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = sub_213E75230;
  *(a1 + 24) = v12;
  *(a1 + 72) = 0;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA348, &qword_213F5BF38) + 36);
  result = 1.26137555e180;
  *v19 = xmmword_213F5BE80;
  *(v19 + 16) = 2;
  return result;
}

uint64_t sub_213E75030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for RecentSearchCell() + 24);
  v5 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(a1 + v4, a2 + v5[8]);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  *(a2 + v5[7]) = 2;
  return result;
}

uint64_t type metadata accessor for RecentSearchCell()
{
  result = qword_281186598;
  if (!qword_281186598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213E75168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentSearchCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E751CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentSearchCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E75230@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E75030(v4, a1);
}

void sub_213E752E4()
{
  sub_213E75398();
  if (v0 <= 0x3F)
  {
    sub_213DE2338();
    if (v1 <= 0x3F)
    {
      sub_213E753F0();
      if (v2 <= 0x3F)
      {
        sub_213E0C0F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213E75398()
{
  if (!qword_281183518)
  {
    sub_213F4D390();
    v0 = sub_213F4CEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_281183518);
    }
  }
}

unint64_t sub_213E753F0()
{
  result = qword_281186340[0];
  if (!qword_281186340[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281186340);
  }

  return result;
}

unint64_t sub_213E75454()
{
  result = qword_281183470;
  if (!qword_281183470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA348, &qword_213F5BF38);
    sub_213E74698();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183470);
  }

  return result;
}

uint64_t RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, unsigned __int8 a9)
{
  v36 = a4;
  v37 = a6;
  v33 = a1;
  v34 = a2;
  v35 = a9;
  v14 = sub_213F4CA70();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_213F4CA10();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v9;

  sub_213F4CA60();
  sub_213F4CA20();
  v22 = type metadata accessor for RichTextViewModel(0);
  (*(v17 + 16))(a7 + v22[5], v20, v16);
  v23 = v21 == 0;
  v24 = sub_213E75D60(v21, v33);
  v26 = v25;
  sub_213F4CB30();
  (*(v17 + 8))(v20, v16);
  v27 = (a7 + v22[7]);
  v28 = v22[8];
  *(a7 + v22[6]) = v23;
  *v27 = v24;
  v27[1] = v26;
  *(a7 + v28) = a3;
  v29 = v37;
  *(a7 + v22[9]) = v36;
  *(a7 + v22[10]) = a5;
  v30 = a7 + v22[11];
  *v30 = v29;
  *(v30 + 8) = v35 & 1;
  *(a7 + v22[12]) = a8;
}

uint64_t sub_213E75708(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA458, &qword_213F5C540);
  v12 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v14 = (&v21 - v13);
  v15 = *(a7 + 16);
  sub_213DBCA50(v11, v10, v9 & 1);

  v22 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = *(type metadata accessor for RichTextViewModel(0) - 8);
    v18 = a7 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v17 + 72);
    while (1)
    {
      v19 = *(v23 + 48);
      *v14 = v16;
      sub_213E803AC(v18, v14 + v19, type metadata accessor for RichTextViewModel);
      v24(&v25, &v29, v14);
      if (v7)
      {
        break;
      }

      ++v16;
      sub_213DE36FC(v14, &qword_27C8FA458, &qword_213F5C540);
      sub_213DBCA40(v11, v10, v9 & 1);

      v11 = v25;
      v10 = v26;
      v9 = v27;
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v18 += v21;
      if (v22 == v16)
      {
        return v11;
      }
    }

    sub_213DE36FC(v14, &qword_27C8FA458, &qword_213F5C540);
    sub_213DBCA40(v11, v10, v9 & 1);
  }

  return v11;
}

uint64_t RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, double a9@<D0>)
{
  v17 = *v9;
  v18 = type metadata accessor for RichTextViewModel(0);
  v19 = v18[5];
  v20 = sub_213F4CA10();
  (*(*(v20 - 8) + 16))(a8 + v19, a1, v20);
  LOBYTE(v19) = v17 == 0;
  v21 = sub_213E75D60(v17, a2);
  v23 = v22;
  sub_213F4CB30();
  v24 = (a8 + v18[7]);
  v25 = v18[8];
  *(a8 + v18[6]) = v19;
  *v24 = v21;
  v24[1] = v23;
  *(a8 + v25) = a3;
  *(a8 + v18[9]) = a4;
  *(a8 + v18[10]) = a5;
  v26 = a8 + v18[11];
  *v26 = a6;
  *(v26 + 8) = a7 & 1;
  *(a8 + v18[12]) = a9;
}

uint64_t RichTextViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RichTextViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t RichTextType.axIDString.getter()
{
  result = 0x656C746954;
  switch(*v0)
  {
    case 1:
      result = 1701734732;
      break;
    case 2:
      result = 0x6D6F74737543;
      break;
    case 3:
      result = 0x676E654C656B6948;
      break;
    case 4:
      result = 0x65637341656B6948;
      break;
    case 5:
      result = 0x63736544656B6948;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 9:
      result = 0x6574615272657355;
      break;
    case 0xA:
      result = 0x746F685072657355;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x65636E6174736944;
      break;
    case 0xD:
      result = 0x6563697250;
      break;
    case 0xE:
      result = 0x79726F6765746143;
      break;
    case 0xF:
      result = 0x7372756F48;
      break;
    case 0x10:
      result = 0x73736572646441;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_213E75D60(unsigned __int8 a1, uint64_t a2)
{
  result = 0;
  if (a1 > 7u)
  {
    if (a1 > 0xAu)
    {
      return result;
    }

    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
      v6 = 0x662E6172656D6163;
      v7 = a1 == 9;
LABEL_13:
      if (v7)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }

    return 0xD000000000000012;
  }

  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      v5 = 0xD000000000000010;
      v6 = 0xD000000000000012;
      v7 = a1 == 4;
      goto LABEL_13;
    }

    if (a1 != 6)
    {
      return 0x6C69662E72617473;
    }

    return 0xD000000000000012;
  }

  if (a1 >= 2u)
  {
    if (a1 == 2)
    {

      return a2;
    }

    else
    {
      return 0x696E752E65736162;
    }
  }

  return result;
}

uint64_t RichTextType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

unint64_t sub_213E75F9C()
{
  result = qword_27C8FA350;
  if (!qword_27C8FA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA350);
  }

  return result;
}

void sub_213E76018()
{
  sub_213F4CB40();
  if (v0 <= 0x3F)
  {
    sub_213F4CA10();
    if (v1 <= 0x3F)
    {
      sub_213E80638(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213E80638(319, &qword_281182808, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_213E80688(319, &qword_2811824E0, &qword_27C8FA358, &qword_213F5C108);
          if (v4 <= 0x3F)
          {
            sub_213E80688(319, &qword_281182460, &qword_27C8FA360, &qword_213F5C110);
            if (v5 <= 0x3F)
            {
              sub_213E80638(319, &qword_281182458, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
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

uint64_t getEnumTagSinglePayload for RichTextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RichTextType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_213E76358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_213E763D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550);
  v38 = *(v0 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = &v38 - v2;
  v47 = sub_213F4C9E0();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4C9C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - v11;
  v12 = sub_213F4C9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA470, &qword_213F5C558);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  sub_213F4CA00();
  (*(v13 + 16))(v21, v16, v12);
  v22 = *(v18 + 44);
  sub_213E802DC(&qword_281188838, MEMORY[0x277CC8C08]);
  sub_213F4F490();
  (*(v13 + 8))(v16, v12);
  v45 += 8;
  v42 = (v6 + 32);
  v43 = (v6 + 16);
  v41 = (v6 + 8);
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v46;
    sub_213F4F4C0();
    sub_213E802DC(&qword_281188840, MEMORY[0x277CC8BF8]);
    v24 = v47;
    v25 = sub_213F4F1F0();
    (*v45)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = sub_213F4F4E0();
    v27 = v44;
    (*v43)(v44);
    v26(v48, 0);
    sub_213F4F4D0();
    (*v42)(v10, v27, v5);
    sub_213E81354();
    sub_213F4C9D0();
    if (!v48[0])
    {
      goto LABEL_2;
    }

    sub_213F4C9D0();
    v28 = v48[0];
    sub_213F4E920();
    if (v28)
    {
      v29 = sub_213F4E890();

      if (v29)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    sub_213F4C9D0();
    v30 = v48[0];
    v31 = [objc_opt_self() secondaryLabelColor];
    sub_213F4E870();
    if (!v30)
    {

      goto LABEL_13;
    }

    v32 = sub_213F4E890();

    if (v32)
    {
LABEL_2:
      (*v41)(v10, v5);
    }

    else
    {
LABEL_13:
      sub_213F4C9B0();
      v33 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_213F1E3F8(0, v33[2] + 1, 1, v33);
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        v33 = sub_213F1E3F8(v34 > 1, v35 + 1, 1, v33);
      }

      (*v41)(v10, v5);
      v33[2] = v35 + 1;
      v36 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = v33;
      sub_213DE2B44(v39, v33 + v36 + *(v38 + 72) * v35, &qword_27C8FA468, &qword_213F5C550);
    }
  }

  sub_213DE36FC(v21, &qword_27C8FA470, &qword_213F5C558);
  return v40;
}

uint64_t sub_213E76A54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    *a3 = sub_213F4EEE0();
    a3[1] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA520, &qword_213F5C5F8);
    sub_213E76B30(a2 + 40 * v3 + 32, v3, a2, a3 + *(v7 + 44));
    sub_213F4EEE0();
    sub_213F4D0C0();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA500, &qword_213F5C5E0);
    v8 = (a3 + *(result + 36));
    *v8 = v9;
    v8[1] = v10;
    v8[2] = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_213E76B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v64 = a2;
  v68 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA528, &qword_213F5C600);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA530, &qword_213F5C608);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = type metadata accessor for MapsDesignImage();
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BF0, &unk_213F52380);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  sub_213DEBAA8(a1, &v18[v15[10]]);
  v30 = sub_213F4EEE0();
  v62 = v31;
  v63 = v30;
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v32 = v15[7];
  *&v18[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v33 = v15[8];
  *&v18[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v34 = v15[9];
  *&v18[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v35 = &v18[v15[14]];
  v36 = &v18[v15[15]];
  v37 = &v18[v15[16]];
  v69 = 0;
  v70 = 0;
  memset(v71, 0, sizeof(v71));
  sub_213F4EA90();
  v38 = v73;
  v39 = BYTE8(v73);
  v40 = BYTE9(v73);
  v41 = BYTE10(v73);
  v42 = v74;
  *v37 = v72;
  *(v37 + 2) = v38;
  v37[24] = v39;
  v37[25] = v40;
  v37[26] = v41;
  *(v37 + 4) = v42;
  v43 = v15[17];
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v18[v43] = v72;
  v44 = 1;
  v18[v15[11]] = 1;
  v45 = &v18[v15[12]];
  v46 = v62;
  *v45 = v63;
  *(v45 + 1) = v46;
  v18[v15[13]] = 1;
  *v35 = 0;
  *(v35 + 1) = 0;
  *v36 = 0;
  *(v36 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213E803AC(v18, v22, type metadata accessor for MapsDesignImage);
  v47 = &v22[*(v19 + 36)];
  v48 = v73;
  *v47 = v72;
  *(v47 + 1) = v48;
  *(v47 + 2) = v74;
  sub_213E816D4(v18, type metadata accessor for MapsDesignImage);
  sub_213DEB968();
  sub_213F4E6D0();
  sub_213DE36FC(v22, &qword_27C8F7BE8, &unk_213F52220);
  if (v64 > 1)
  {
    v49 = v66;
  }

  else
  {
    v49 = v66;
    if (*(v61 + 16) - 1 > v64)
    {
      v50 = sub_213F4E8F0();
      v51 = *(v49 + 36);
      v52 = *MEMORY[0x277CE13C0];
      v53 = sub_213F4EF90();
      v54 = v60;
      (*(*(v53 - 8) + 104))(&v60[v51], v52, v53);
      *v54 = v50;
      *(v54 + 8) = xmmword_213F5C020;
      sub_213DE2B44(v54, v13, &qword_27C8FA528, &qword_213F5C600);
      v44 = 0;
    }
  }

  (*(v65 + 56))(v13, v44, 1, v49);
  sub_213DE3164(v29, v27, &qword_27C8F7BF0, &unk_213F52380);
  v55 = v67;
  sub_213DE3164(v13, v67, &qword_27C8FA530, &qword_213F5C608);
  v56 = v68;
  sub_213DE3164(v27, v68, &qword_27C8F7BF0, &unk_213F52380);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA538, &qword_213F5C670);
  sub_213DE3164(v55, v56 + *(v57 + 48), &qword_27C8FA530, &qword_213F5C608);
  sub_213DE36FC(v13, &qword_27C8FA530, &qword_213F5C608);
  sub_213DE36FC(v29, &qword_27C8F7BF0, &unk_213F52380);
  sub_213DE36FC(v55, &qword_27C8FA530, &qword_213F5C608);
  return sub_213DE36FC(v27, &qword_27C8F7BF0, &unk_213F52380);
}

uint64_t sub_213E77180(uint64_t a1)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RichTextView(0);
  sub_213DE3164(v1 + v8[10], &v24, &qword_27C8F9318, &qword_213F57710);
  if (v25)
  {
    sub_213DD7500(&v24, v26);
    v9 = v1 + v8[7];
    v10 = *v9;
    if (*(v9 + 8) == 1)
    {
      if (v10)
      {
LABEL_13:
        if (a1)
        {

          sub_213F4E920();
          v19 = sub_213F4E890();

          if (v19)
          {
LABEL_20:
            __swift_destroy_boxed_opaque_existential_1(v26);
            return a1;
          }
        }

LABEL_16:
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_0(v26, v27);
        if ((*(v21 + 96))(v20, v21))
        {
          v22 = sub_213F4E910();
        }

        else
        {
          v22 = sub_213F4E920();
        }

        a1 = v22;
        goto LABEL_20;
      }
    }

    else
    {

      sub_213F4F520();
      v11 = sub_213F4E000();
      sub_213F4CC10();

      sub_213F4D7E0();
      swift_getAtKeyPath();
      sub_213E053BC(v10, 0);
      (*(v4 + 8))(v7, v3);
      if (v24)
      {
        goto LABEL_13;
      }
    }

    v12 = v1 + v8[8];
    v13 = *v12;
    if (*(v12 + 8) == 1)
    {
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {

      sub_213F4F520();
      v18 = sub_213F4E000();
      sub_213F4CC10();

      sub_213F4D7E0();
      swift_getAtKeyPath();
      sub_213E053BC(v13, 0);
      (*(v4 + 8))(v7, v3);
      if (v24 == 1)
      {
        goto LABEL_13;
      }
    }

    if (a1)
    {
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_0(v26, v27);
      v16 = *(v15 + 96);

      if ((v16(v14, v15) & 1) == 0)
      {
        v17 = sub_213F4E920();

        a1 = v17;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  sub_213DE36FC(&v24, &qword_27C8F9318, &qword_213F57710);
  return sub_213F4E910();
}

uint64_t sub_213E774E0()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for RichTextViewModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RichTextView(0);
  sub_213DE3164(v0 + *(v14 + 40), &v55, &qword_27C8F9318, &qword_213F57710);
  if (v56)
  {
    v49 = v6;
    v50 = v8;
    v51 = v2;
    v52 = v1;
    sub_213DD7500(&v55, v57);
    v53 = v14;
    v54 = v0;
    v15 = *(v0 + *(v14 + 44));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = &v13[*(v9 + 44)];
      v18 = v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v19 = *(v10 + 72);
      v20 = MEMORY[0x277D84F90];
      do
      {
        sub_213E803AC(v18, v13, type metadata accessor for RichTextViewModel);
        v21 = *v17;
        v22 = v17[8];
        sub_213E816D4(v13, type metadata accessor for RichTextViewModel);
        if ((v22 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_213F1E5E8(0, *(v20 + 2) + 1, 1, v20);
          }

          v24 = *(v20 + 2);
          v23 = *(v20 + 3);
          if (v24 >= v23 >> 1)
          {
            v20 = sub_213F1E5E8((v23 > 1), v24 + 1, 1, v20);
          }

          *(v20 + 2) = v24 + 1;
          *&v20[8 * v24 + 32] = v21;
        }

        v18 += v19;
        --v16;
      }

      while (v16);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v26 = *(v20 + 2);
    if (v26)
    {
      v25 = *(v20 + 4);
      v27 = v26 - 1;
      if (v26 != 1)
      {
        if (v26 < 5)
        {
          v28 = 1;
          goto LABEL_28;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v38 = vdupq_n_s64(v25);
        v39 = (v20 + 56);
        v40 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        v41 = v38;
        do
        {
          v38 = vbslq_s8(vcgtq_s64(v38, v39[-1]), v38, v39[-1]);
          v41 = vbslq_s8(vcgtq_s64(v41, *v39), v41, *v39);
          v39 += 2;
          v40 -= 4;
        }

        while (v40);
        v42 = vbslq_s8(vcgtq_s64(v38, v41), v38, v41);
        v43 = vextq_s8(v42, v42, 8uLL).u64[0];
        v25 = vbsl_s8(vcgtd_s64(v42.i64[0], v43), *v42.i8, v43);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_28:
          v44 = v26 - v28;
          v45 = &v20[8 * v28 + 32];
          do
          {
            v47 = *v45++;
            v46 = v47;
            if (v25 <= v47)
            {
              v25 = v46;
            }

            --v44;
          }

          while (v44);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v57);
      return v25;
    }

    v29 = *(v54 + *(v53 + 36)) - 3;
    v30 = v58;
    v31 = v59;
    __swift_project_boxed_opaque_existential_0(v57, v58);
    if (v29 >= 2)
    {
      if (ListCellProviding.hasTwoLinesOfText.getter(v30, v31))
      {
        goto LABEL_19;
      }
    }

    else if (ListCellProviding.hasOneLineOfText.getter(v30, v31))
    {
LABEL_19:
      v25 = 2;
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v25;
    }

    v32 = v50;
    sub_213EA886C(v50);
    v34 = v51;
    v33 = v52;
    v35 = v49;
    (*(v51 + 104))(v49, *MEMORY[0x277CDFA00], v52);
    sub_213E802DC(&qword_281183490, MEMORY[0x277CDFA28]);
    v36 = sub_213F4F1D0();
    v37 = *(v34 + 8);
    v37(v35, v33);
    v37(v32, v33);
    if (v36)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_24;
  }

  sub_213DE36FC(&v55, &qword_27C8F9318, &qword_213F57710);
  return 1;
}

uint64_t sub_213E77990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_213E779D4()
{
  v1 = sub_213F4D390();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - v5;
  v6 = type metadata accessor for RichTextViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + *(type metadata accessor for RichTextView(0) + 44));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = &v10[*(v6 + 44)];
    v14 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_213E803AC(v14, v10, type metadata accessor for RichTextViewModel);
      v17 = *v13;
      v18 = v13[8];
      sub_213E816D4(v10, type metadata accessor for RichTextViewModel);
      if ((v18 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_213F1E5E8(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_213F1E5E8((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        *&v16[8 * v20 + 32] = v17;
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = *(v16 + 2);
  if (v21)
  {
    v22 = *(v16 + 4);
    v23 = v21 - 1;
    if (v21 != 1)
    {
      if (v21 < 5)
      {
        v24 = 1;
        goto LABEL_21;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v31 = vdupq_n_s64(v22);
      v32 = (v16 + 56);
      v33 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v34 = v31;
      do
      {
        v31 = vbslq_s8(vcgtq_s64(v31, v32[-1]), v31, v32[-1]);
        v34 = vbslq_s8(vcgtq_s64(v34, *v32), v34, *v32);
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      v35 = vbslq_s8(vcgtq_s64(v31, v34), v31, v34);
      v36 = vextq_s8(v35, v35, 8uLL).u64[0];
      v22 = vbsl_s8(vcgtd_s64(v35.i64[0], v36), *v35.i8, v36);
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_21:
        v37 = v21 - v24;
        v38 = &v16[8 * v24 + 32];
        do
        {
          v40 = *v38++;
          v39 = v40;
          if (v22 <= v40)
          {
            v22 = v39;
          }

          --v37;
        }

        while (v37);
      }
    }

    return v22;
  }

  v25 = v42;
  sub_213EA886C(v42);
  v27 = v43;
  v26 = v44;
  v28 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDFA00], v45);
  sub_213E802DC(&qword_281183490, MEMORY[0x277CDFA28]);
  v29 = sub_213F4F1D0();
  v30 = *(v26 + 8);
  v30(v27, v28);
  v30(v25, v28);
  if (v29)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_213E77DB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v336 = a3;
  v283 = a4;
  v6 = sub_213F4D910();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v302 = &v278 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_213F4D3B0();
  v281 = *(v282 - 8);
  v9 = *(v281 + 64);
  v10 = MEMORY[0x28223BE20](v282);
  v280 = &v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v279 = &v278 - v12;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v13 = *(*(v324 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v324);
  v309 = (&v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v308 = &v278 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v307 = (&v278 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v301 = (&v278 - v21);
  MEMORY[0x28223BE20](v20);
  v300 = (&v278 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA460, &qword_213F5C548);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v312 = &v278 - v25;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550);
  v289 = *(v335 - 1);
  v26 = *(v289 + 64);
  v27 = MEMORY[0x28223BE20](v335);
  v322 = &v278 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v321 = &v278 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v333 = &v278 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v326 = &v278 - v34;
  MEMORY[0x28223BE20](v33);
  v323 = (&v278 - v35);
  v328 = sub_213F4D290();
  v288 = *(v328 - 8);
  v329 = v288;
  v36 = *(v288 + 64);
  v37 = MEMORY[0x28223BE20](v328);
  v306 = &v278 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v305 = &v278 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v304 = &v278 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v299 = &v278 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v298 = &v278 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v291 = &v278 - v48;
  MEMORY[0x28223BE20](v47);
  v327 = &v278 - v49;
  v317 = sub_213F4CA10();
  v293 = *(v317 - 8);
  v50 = *(v293 + 64);
  v51 = MEMORY[0x28223BE20](v317);
  v316 = &v278 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v337 = &v278 - v53;
  v331 = sub_213F4D7F0();
  v294 = *(v331 - 8);
  v54 = *(v294 + 64);
  MEMORY[0x28223BE20](v331);
  v330 = &v278 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA458, &qword_213F5C540);
  v57 = v56 - 8;
  v58 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v60 = (&v278 - v59);
  v61 = type metadata accessor for RichTextViewModel(0);
  v62 = *(*(v61 - 1) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v278 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1[1];
  v284 = *a1;
  v285 = v65;
  v286 = *(a1 + 16);
  v287 = a1[3];
  sub_213DE3164(a2, v60, &qword_27C8FA458, &qword_213F5C540);
  v66 = *v60;
  sub_213E80344(v60 + *(v57 + 56), v64, type metadata accessor for RichTextViewModel);
  v67 = v61[5];
  v290 = sub_213E763D8();
  v68 = v64[v61[6]];
  v292 = v61;
  v69 = v61[8];
  v303 = v64;
  v70 = *&v64[v69];
  v278 = v66;
  v311 = v70;
  if (v68 == 1)
  {
    v71 = v336;
    v72 = sub_213E77180(v70);
LABEL_13:
    v295 = v72;
    goto LABEL_14;
  }

  v73 = type metadata accessor for RichTextView(0);
  v71 = v336;
  v74 = v336 + *(v73 + 28);
  v75 = *v74;
  if (*(v74 + 8) == 1)
  {
    if (v75)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_213F4F520();
    v76 = sub_213F4E000();
    sub_213F4CC10();

    v77 = v330;
    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v75, 0);
    (*(v294 + 8))(v77, v331);
    if (v338[0])
    {
      goto LABEL_12;
    }
  }

  v78 = v71 + *(v73 + 32);
  v79 = *v78;
  if (*(v78 + 8) == 1)
  {
    if ((v79 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v72 = sub_213F4E920();
    goto LABEL_13;
  }

  sub_213F4F520();
  v80 = sub_213F4E000();
  sub_213F4CC10();

  v81 = v330;
  sub_213F4D7E0();
  swift_getAtKeyPath();
  sub_213E053BC(v79, 0);
  (*(v294 + 8))(v81, v331);
  if (LOBYTE(v338[0]) == 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v311)
  {

    goto LABEL_13;
  }

  v295 = sub_213F4E920();
  v311 = 0;
LABEL_14:
  v82 = *(v293 + 16);
  v315 = v293 + 16;
  v314 = v82;
  v82(v337, &v303[v67], v317);
  v83 = type metadata accessor for RichTextView(0);
  v84 = v71 + *(v83 + 20);
  v85 = v327;
  sub_213DBBD08(v327);
  v86 = v291;
  sub_213F4D280();
  v87 = sub_213F4D270();
  v88 = v329 + 8;
  v89 = *(v329 + 8);
  v90 = v86;
  v91 = v328;
  v89(v90, v328);
  v329 = v88;
  v325 = v89;
  v89(v85, v91);
  if (v68)
  {
    v92 = v312;
    if (v87)
    {
      sub_213F4E1E0();
    }

    else if (*(v71 + *(v83 + 52)))
    {
      sub_213F4E1B0();
    }

    else
    {
      sub_213F4E0D0();
    }
  }

  else
  {
    v92 = v312;
    if (v87)
    {
      sub_213F4E1F0();
    }

    else if (*(v71 + *(v83 + 52)))
    {
      sub_213F4E0D0();
    }

    else
    {
      sub_213F4E0C0();
    }

    if (*(v71 + *(v83 + 52)))
    {
      sub_213F4E160();
      goto LABEL_28;
    }
  }

  sub_213F4E170();
LABEL_28:
  v93 = sub_213F4E1D0();

  v338[0] = v93;
  v318 = sub_213E81300();
  sub_213F4CA30();
  v94 = *&v303[v292[10]];
  v334 = v83;
  LODWORD(v332) = v68;
  if (!v94)
  {
    v128 = *(v83 + 20);
    v129 = v327;
    sub_213DBBD08(v327);
    v130 = v291;
    sub_213F4D280();
    v131 = sub_213F4D270();
    v132 = v130;
    v133 = v328;
    v134 = v325;
    v325(v132, v328);
    v134(v129, v133);
    if (v68)
    {
      if (v131)
      {
        sub_213F4E1E0();
      }

      else if (*(v71 + *(v83 + 52)))
      {
        sub_213F4E1B0();
      }

      else
      {
        sub_213F4E0D0();
      }

      v135 = v327;
      sub_213DBBD08(v327);
      v136 = v291;
      sub_213F4D280();
      v137 = sub_213F4D270();
      v138 = v136;
      v139 = v328;
      v140 = v325;
      v325(v138, v328);
      v140(v135, v139);
      if ((v137 & 1) == 0 && (*(v71 + *(v83 + 52)) & 1) == 0)
      {
        sub_213F4E180();
LABEL_75:
        v141 = sub_213F4E1D0();

        v338[0] = v141;
        sub_213F4CA30();
        goto LABEL_76;
      }
    }

    else
    {
      if (v131)
      {
        sub_213F4E1F0();
      }

      else if (*(v71 + *(v83 + 52)))
      {
        sub_213F4E0D0();
      }

      else
      {
        sub_213F4E0C0();
      }

      if ((*(v71 + *(v83 + 52)) & 1) == 0)
      {
        sub_213F4E170();
        goto LABEL_75;
      }
    }

    sub_213F4E160();
    goto LABEL_75;
  }

  if (v94 >> 62)
  {
    v277 = v94;
    result = sub_213F4F7E0();
    v94 = v277;
    if (result)
    {
      goto LABEL_31;
    }

LABEL_76:
    sub_213F4E920();
    v142 = sub_213F4E890();

    v143 = v334;
    if ((v142 & 1) == 0)
    {
      v338[0] = v295;
      sub_213E81354();

      sub_213F4CA30();
      if ((v332 & 1) == 0)
      {
        v144 = v71 + v143[5];
        v145 = v327;
        sub_213DBBD08(v327);
        v146 = v291;
        sub_213F4D280();
        v147 = sub_213F4D270();
        v148 = v146;
        v149 = v328;
        v150 = v325;
        v325(v148, v328);
        v150(v145, v149);
        if (v147)
        {
          sub_213F4E1F0();
        }

        else if (*(v71 + v143[13]))
        {
          sub_213F4E0D0();
        }

        else
        {
          sub_213F4E0C0();
        }

        sub_213F4E160();
        v151 = sub_213F4E1D0();

        v338[0] = v151;
        sub_213F4CA30();
      }
    }

    v152 = v290[2];
    if (v152)
    {
      v153 = v71 + v143[7];
      v154 = v290 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
      v326 = *v153;
      LODWORD(v320) = *(v153 + 8);
      v319 = *(v289 + 72);
      v323 = (v294 + 8);
      v313 = (v288 + 32);
      v312 = v311;
      v155 = v333;
      while (1)
      {
        sub_213DE3164(v154, v155, &qword_27C8FA468, &qword_213F5C550);
        if (v320)
        {
          if ((v326 & 1) == 0)
          {
            goto LABEL_97;
          }

          sub_213DE3164(v155, v321, &qword_27C8FA468, &qword_213F5C550);
          if ((v332 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v160 = v326;

          sub_213F4F520();
          v161 = sub_213F4E000();
          sub_213F4CC10();

          v162 = v330;
          sub_213F4D7E0();
          swift_getAtKeyPath();
          sub_213E053BC(v160, 0);
          v163 = *v323;
          v164 = v162;
          v155 = v333;
          (*v323)(v164, v331);
          if ((v338[0] & 1) == 0)
          {
LABEL_97:
            sub_213DE3164(v155, v322, &qword_27C8FA468, &qword_213F5C550);
            v168 = v334[5];
            if (v332)
            {
              v169 = v307;
              sub_213DE3164(v336 + v168, v307, &qword_27C8F7B68, &qword_213F53770);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v170 = v304;
                v171 = v328;
                (*v313)(v304, v169, v328);
                v172 = v308;
              }

              else
              {
                v178 = *v169;
                sub_213F4F520();
                v179 = sub_213F4E000();
                sub_213F4CC10();

                v180 = v330;
                sub_213F4D7E0();
                v170 = v304;
                swift_getAtKeyPath();

                (*v323)(v180, v331);
                v172 = v308;
                v171 = v328;
              }

              v181 = v327;
              sub_213F4D280();
              v182 = sub_213F4D270();
              v183 = v325;
              v325(v181, v171);
              v183(v170, v171);
              if (v182)
              {
                sub_213F4E1E0();
              }

              else if (*(v336 + v334[13]))
              {
                sub_213F4E1B0();
              }

              else
              {
                sub_213F4E0D0();
              }

              v192 = v336;
              sub_213DE3164(v336 + v168, v172, &qword_27C8F7B68, &qword_213F53770);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v193 = v305;
                v194 = v328;
                (*v313)(v305, v172, v328);
              }

              else
              {
                v195 = *v172;
                sub_213F4F520();
                v196 = sub_213F4E000();
                sub_213F4CC10();

                v192 = v336;
                v197 = v330;
                sub_213F4D7E0();
                v193 = v305;
                swift_getAtKeyPath();

                (*v323)(v197, v331);
                v194 = v328;
              }

              v198 = v327;
              sub_213F4D280();
              v199 = sub_213F4D270();
              v200 = v325;
              v325(v198, v194);
              v200(v193, v194);
              if (v199)
              {
                sub_213F4E160();
                v71 = v192;
LABEL_125:
                v201 = sub_213F4E1D0();

                sub_213DE3AE4(&qword_281182450, &qword_27C8FA468, &qword_213F5C550);
                v158 = v322;
                v202 = sub_213F4CA40();
                v339 = v201;
                sub_213F4CA90();
                v202(v338, 0);
                goto LABEL_88;
              }

              v71 = v192;
              if ((*(v192 + v334[13]) & 1) == 0)
              {
                sub_213F4E180();
                goto LABEL_125;
              }
            }

            else
            {
              v173 = v336 + v168;
              v174 = v336;
              v175 = v309;
              sub_213DE3164(v173, v309, &qword_27C8F7B68, &qword_213F53770);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v176 = v306;
                v177 = v328;
                (*v313)(v306, v175, v328);
              }

              else
              {
                v184 = *v175;
                sub_213F4F520();
                v185 = sub_213F4E000();
                sub_213F4CC10();

                v186 = v330;
                sub_213F4D7E0();
                v176 = v306;
                swift_getAtKeyPath();

                (*v323)(v186, v331);
                v177 = v328;
              }

              v187 = v327;
              sub_213F4D280();
              v188 = sub_213F4D270();
              v189 = v325;
              v325(v187, v177);
              v189(v176, v177);
              if (v188)
              {
                sub_213F4E1F0();
                v71 = v174;
              }

              else
              {
                v71 = v174;
                if (*(v174 + v334[13]))
                {
                  sub_213F4E0D0();
                }

                else
                {
                  sub_213F4E0C0();
                }
              }
            }

            sub_213F4E160();
            goto LABEL_125;
          }

          sub_213DE3164(v155, v321, &qword_27C8FA468, &qword_213F5C550);
          if (!v332)
          {
            v165 = v326;

            sub_213F4F520();
            v166 = sub_213F4E000();
            sub_213F4CC10();

            v167 = v330;
            sub_213F4D7E0();
            swift_getAtKeyPath();
            sub_213E053BC(v165, 0);
            v163(v167, v331);
            if ((v338[0] & 1) == 0)
            {
              v190 = v71 + v334[8];
              v191 = *v190;
              if (*(v190 + 8) == 1)
              {
                if ((v191 & 1) == 0)
                {
                  goto LABEL_127;
                }
              }

              else
              {

                sub_213F4F520();
                v203 = sub_213F4E000();
                sub_213F4CC10();

                v204 = v330;
                sub_213F4D7E0();
                swift_getAtKeyPath();
                sub_213E053BC(v191, 0);
                (*v323)(v204, v331);
                if (LOBYTE(v338[0]) != 1)
                {
LABEL_127:
                  v157 = v312;
                  if (v312)
                  {
                  }

                  else
                  {
                    v157 = sub_213F4E920();
                    v312 = 0;
                  }

                  goto LABEL_87;
                }
              }
            }

LABEL_96:
            v157 = sub_213F4E920();
            goto LABEL_87;
          }
        }

        v156 = v311;
        v157 = sub_213E77180(v311);
        v312 = v156;
LABEL_87:
        sub_213DE3AE4(&qword_281182450, &qword_27C8FA468, &qword_213F5C550);
        v158 = v321;
        v159 = sub_213F4CA40();
        v339 = v157;
        sub_213E81354();
        sub_213F4CA90();
        v159(v338, 0);
LABEL_88:
        sub_213DE36FC(v158, &qword_27C8FA468, &qword_213F5C550);
        v155 = v333;
        sub_213DE36FC(v333, &qword_27C8FA468, &qword_213F5C550);
        v154 += v319;
        if (!--v152)
        {

          v311 = v312;
          v143 = v334;
          goto LABEL_132;
        }
      }
    }

LABEL_132:
    v314(v316, v337, v317);
    v205 = sub_213F4E300();
    v326 = v206;
    v208 = v207;
    v327 = v209;
    v210 = v71 + v143[6];
    v211 = v279;
    sub_213EA8464(v279);
    v212 = v281;
    v213 = v280;
    v214 = v282;
    (*(v281 + 104))(v280, *MEMORY[0x277CDFA90], v282);
    v215 = sub_213F4D3A0();
    v216 = *(v212 + 8);
    v216(v213, v214);
    v216(v211, v214);
    v217 = &v303[v292[7]];
    v218 = *(v217 + 1);
    LODWORD(v328) = v215;
    v325 = v205;
    LODWORD(v324) = v208;
    if (v218)
    {
      v219 = v71;
      v220 = *v217;

      sub_213F4EA10();
      v221 = sub_213F4E320();
      v223 = v222;
      v225 = v224;
      v323 = v226;
      v338[0] = 41154;
      v338[1] = 0xA200000000000000;
      sub_213DBC9EC();
      v227 = sub_213F4E310();
      v229 = v228;
      LOBYTE(v220) = v230;
      sub_213F4D900();
      sub_213F4D8F0();
      sub_213F4D8C0();
      sub_213F4D8F0();
      sub_213F4D8C0();
      sub_213F4D8F0();
      sub_213F4D8C0();
      sub_213F4D8F0();
      sub_213F4D930();
      v335 = sub_213F4E2F0();
      v333 = v233;
      LODWORD(v329) = v234;
      v332 = v235;
      sub_213DBCA40(v227, v229, v220 & 1);

      sub_213DBCA40(v221, v223, v225 & 1);

      v71 = v219;
    }

    else
    {
      v231 = v326;
      sub_213DBCA50(v205, v326, v208 & 1);

      v335 = v205;
      v333 = v231;
      LODWORD(v329) = v208;
      v332 = v232;
    }

    v236 = v71;
    sub_213F4D900();
    sub_213F4D8F0();
    sub_213F4D8C0();
    sub_213F4D8F0();
    sub_213F4D930();
    v237 = sub_213F4E2F0();
    v239 = v238;
    v241 = v240;
    v242 = v236 + v334[7];
    v243 = *v242;
    if (*(v242 + 8) == 1)
    {
      if (v243)
      {
        goto LABEL_145;
      }
    }

    else
    {

      sub_213F4F520();
      v244 = sub_213F4E000();
      sub_213F4CC10();

      v245 = v330;
      sub_213F4D7E0();
      swift_getAtKeyPath();
      sub_213E053BC(v243, 0);
      (*(v294 + 8))(v245, v331);
      if (v338[0])
      {
        goto LABEL_145;
      }
    }

    v246 = v236 + v334[8];
    v247 = *v246;
    if (*(v246 + 8) == 1)
    {
      if (v247)
      {
        goto LABEL_145;
      }
    }

    else
    {

      sub_213F4F520();
      v248 = sub_213F4E000();
      sub_213F4CC10();

      v249 = v330;
      sub_213F4D7E0();
      swift_getAtKeyPath();
      sub_213E053BC(v247, 0);
      (*(v294 + 8))(v249, v331);
      if (LOBYTE(v338[0]) == 1)
      {
        goto LABEL_145;
      }
    }

    v250 = v311;
    if (v311)
    {

      goto LABEL_146;
    }

LABEL_145:
    v250 = sub_213F4E920();
LABEL_146:
    v338[0] = v250;
    v323 = sub_213F4E2B0();
    v322 = v251;
    LODWORD(v331) = v252;
    v330 = v253;
    sub_213DBCA40(v237, v239, v241 & 1);

    sub_213F4D900();
    sub_213F4D8F0();
    sub_213F4D8E0();
    sub_213F4D8F0();
    sub_213F4D930();
    v254 = sub_213F4E2F0();
    v256 = v255;
    v258 = v257;
    v259 = [objc_opt_self() secondaryLabelColor];
    v338[0] = sub_213F4E870();
    v260 = sub_213F4E2B0();
    v262 = v261;
    v264 = v263;
    sub_213DBCA40(v254, v256, v258 & 1);

    v265 = *(v336 + v334[12]) == 1;
    v321 = v260;
    LODWORD(v320) = v264;
    if (v265 && v278)
    {
      sub_213F4D900();
      sub_213F4D8F0();
      sub_213F4D8C0();
      sub_213F4D8F0();
      v266 = v262;
    }

    else
    {
      v266 = v262;
      sub_213F4D900();
      sub_213F4D8F0();
    }

    sub_213F4D8C0();
    sub_213F4D8F0();
    v267 = v323;
    v268 = v322;
    sub_213F4D8C0();
    sub_213F4D8F0();
    sub_213F4D930();
    v269 = sub_213F4E2F0();
    v271 = v270;
    v273 = v272;
    v275 = v274;
    sub_213DBCA40(v321, v266, v320 & 1);

    sub_213DBCA40(v267, v268, v331 & 1);

    sub_213DBCA40(v335, v333, v329 & 1);

    sub_213DBCA40(v325, v326, v324 & 1);

    (*(v293 + 8))(v337, v317);
    result = sub_213E816D4(v303, type metadata accessor for RichTextViewModel);
    v276 = v283;
    *v283 = v269;
    v276[1] = v271;
    *(v276 + 16) = v273 & 1;
    v276[3] = v275;
    return result;
  }

  result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_76;
  }

LABEL_31:
  if (result >= 1)
  {
    v96 = 0;
    v313 = (v94 & 0xC000000000000001);
    v97 = (v289 + 48);
    v297 = (v294 + 8);
    v296 = (v288 + 32);
    v98 = &off_278174000;
    v319 = v94;
    v320 = result;
    v310 = (v289 + 48);
    while (1)
    {
      v100 = v313 ? MEMORY[0x216052B30](v96) : *(v94 + 8 * v96 + 32);
      v101 = v100;
      [v100 v98[472]];
      v314(v316, v337, v317);
      sub_213E802DC(&qword_281188828, MEMORY[0x277CC8C40]);
      sub_213F4F4F0();
      if ((*v97)(v92, 1, v335) != 1)
      {
        break;
      }

      sub_213DE36FC(v92, &qword_27C8FA460, &qword_213F5C548);
      v99 = v320;
LABEL_34:
      ++v96;
      v71 = v336;
      v94 = v319;
      if (v99 == v96)
      {
        goto LABEL_76;
      }
    }

    v102 = v323;
    sub_213DE2B44(v92, v323, &qword_27C8FA468, &qword_213F5C550);
    sub_213DE3164(v102, v326, &qword_27C8FA468, &qword_213F5C550);
    v103 = v334[5];
    if (v332)
    {
      v104 = v336;
      v105 = v300;
      sub_213DE3164(v336 + v103, v300, &qword_27C8F7B68, &qword_213F53770);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v106 = v298;
        v107 = v328;
        (*v296)(v298, v105, v328);
      }

      else
      {
        v113 = *v105;
        sub_213F4F520();
        v114 = sub_213F4E000();
        v104 = v336;
        sub_213F4CC10();

        v115 = v330;
        sub_213F4D7E0();
        v106 = v298;
        swift_getAtKeyPath();

        (*v297)(v115, v331);
        v107 = v328;
      }

      v116 = v327;
      sub_213F4D280();
      v117 = sub_213F4D270();
      v118 = v325;
      v325(v116, v107);
      v118(v106, v107);
      if (v117)
      {
        sub_213F4E1E0();
LABEL_50:
        v92 = v312;
LABEL_56:
        sub_213F4E180();
        v125 = sub_213F4E1D0();

        sub_213DE3AE4(&qword_281182450, &qword_27C8FA468, &qword_213F5C550);
        v126 = v326;
        v127 = sub_213F4CA40();
        v339 = v125;
        sub_213F4CA90();
        v127(v338, 0);

        sub_213DE36FC(v126, &qword_27C8FA468, &qword_213F5C550);
        sub_213DE36FC(v323, &qword_27C8FA468, &qword_213F5C550);
        v99 = v320;
        v97 = v310;
        v98 = &off_278174000;
        goto LABEL_34;
      }

      v92 = v312;
      if (*(v104 + v334[13]) == 1)
      {
        sub_213F4E1B0();
        goto LABEL_56;
      }
    }

    else
    {
      v108 = v336;
      v109 = v301;
      sub_213DE3164(v336 + v103, v301, &qword_27C8F7B68, &qword_213F53770);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v111 = v299;
      if (EnumCaseMultiPayload == 1)
      {
        v112 = v328;
        (*v296)(v299, v109, v328);
      }

      else
      {
        v119 = *v109;
        sub_213F4F520();
        v120 = sub_213F4E000();
        sub_213F4CC10();

        v108 = v336;
        v121 = v330;
        sub_213F4D7E0();
        swift_getAtKeyPath();

        (*v297)(v121, v331);
        v112 = v328;
      }

      v122 = v327;
      sub_213F4D280();
      v123 = sub_213F4D270();
      v124 = v325;
      v325(v122, v112);
      v124(v111, v112);
      if (v123)
      {
        sub_213F4E1F0();
        goto LABEL_50;
      }

      v92 = v312;
      if (*(v108 + v334[13]) != 1)
      {
        sub_213F4E0C0();
        goto LABEL_56;
      }
    }

    sub_213F4E0D0();
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_213E7A7CC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v126) = a1;
  v119 = sub_213F4D290();
  v118 = *(v119 - 8);
  v4 = *(v118 + 64);
  v5 = MEMORY[0x28223BE20](v119);
  v117 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = &v113 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA408, &unk_213F5CF70);
  v8 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v123 = &v113 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA410, &qword_213F5C4B0);
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v113 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA418, &qword_213F5C4B8);
  v12 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v113 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA420, &unk_213F5C4C0);
  v14 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v127 = &v113 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA478, &qword_213F5C560);
  v16 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v130 = &v113 - v17;
  v18 = type metadata accessor for RichTextView(0);
  v114 = *(v18 - 1);
  v19 = *(v114 + 64);
  MEMORY[0x28223BE20](v18);
  v113 = v20;
  v115 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA450, &qword_213F5C4D8);
  v21 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v113 - v22;
  v24 = sub_213F4D910();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = type metadata accessor for RichTextViewModel(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  result = MEMORY[0x28223BE20](v26);
  v31 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = v18[11];
  v132 = a2;
  v133 = v2;
  v34 = *(v2 + v33);
  v35 = *(v34 + 16);
  while (1)
  {
    if (v35 == v32)
    {
      sub_213F4D920();
      v112 = 256;
      v62 = sub_213F4E2F0();
      v64 = v63;
      v66 = v65;
      v67 = MEMORY[0x28223BE20](v62);
      v68 = v133;
      v111 = v133;
      v72 = sub_213E75708(v67, v70, v69 & 1, v71, sub_213E82594, (&v113 - 4), v34);
      v74 = v73;
      v76 = v75;
      v115 = v77;
      sub_213DBCA40(v62, v64, v66 & 1);

      v78 = v68 + v18[5];
      v79 = v116;
      sub_213DBBD08(v116);
      v80 = v117;
      sub_213F4D280();
      LOBYTE(v78) = sub_213F4D270();
      v81 = *(v118 + 8);
      v82 = v80;
      v83 = v119;
      v81(v82, v119);
      v81(v79, v83);
      if (v78)
      {
        sub_213F4E1F0();
        v84 = v120;
      }

      else
      {
        v84 = v120;
        if (*(v68 + v18[13]))
        {
          sub_213F4E0D0();
        }

        else
        {
          sub_213F4E0C0();
        }
      }

      v85 = sub_213F4E2E0();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      sub_213DBCA40(v72, v74, v76 & 1);

      v92 = v123;
      v93 = &v123[*(v84 + 36)];
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
      v95 = *MEMORY[0x277CE1050];
      v96 = sub_213F4EA30();
      (*(*(v96 - 8) + 104))(v93 + v94, v95, v96);
      *v93 = swift_getKeyPath();
      *v92 = v85;
      *(v92 + 1) = v87;
      v92[16] = v89 & 1;
      *(v92 + 3) = v91;
      if (v126)
      {
        v97 = 0;
        v98 = 1;
      }

      else
      {
        v98 = sub_213E779D4();
        v97 = v99;
      }

      v100 = v130;
      v101 = v127;
      v102 = v125;
      KeyPath = swift_getKeyPath();
      v104 = v92;
      v105 = v122;
      sub_213DE2B44(v104, v122, &qword_27C8FA408, &unk_213F5CF70);
      v106 = v105 + *(v121 + 36);
      *v106 = KeyPath;
      *(v106 + 8) = v98;
      *(v106 + 16) = v97 & 1;
      v107 = swift_getKeyPath();
      v108 = v105;
      v109 = v124;
      sub_213DE2B44(v108, v124, &qword_27C8FA410, &qword_213F5C4B0);
      v110 = v109 + *(v102 + 36);
      *v110 = v107;
      *(v110 + 8) = 0;
      v134 = 0x7478655468636952;
      v135 = 0xE800000000000000;
      MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
      sub_213E80EF4();
      sub_213F4E6D0();

      sub_213DE36FC(v109, &qword_27C8FA418, &qword_213F5C4B8);
      sub_213DE3164(v101, v100, &qword_27C8FA420, &unk_213F5C4C0);
      swift_storeEnumTagMultiPayload();
      sub_213DE3AE4(&qword_27C8FA448, &qword_27C8FA450, &qword_213F5C4D8);
      sub_213E824DC(&qword_281182DB8, &qword_27C8FA420, &unk_213F5C4C0, sub_213E80EF4);
      sub_213F4DBA0();
      v59 = v101;
      v60 = &qword_27C8FA420;
      v61 = &unk_213F5C4C0;
      return sub_213DE36FC(v59, v60, v61);
    }

    if (v32 >= *(v34 + 16))
    {
      break;
    }

    sub_213E803AC(v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v32++, v31, type metadata accessor for RichTextViewModel);
    v36 = *&v31[*(v26 + 48)];
    result = sub_213E816D4(v31, type metadata accessor for RichTextViewModel);
    if (v36 != 0.0)
    {
      sub_213F4D900();
      sub_213F4D8F0();
      v134 = 47042;
      v135 = 0xA200000000000000;
      sub_213DBC9EC();
      v37 = sub_213F4E310();
      v39 = v38;
      v41 = v40;
      sub_213F4D8C0();
      sub_213DBCA40(v37, v39, v41 & 1);

      sub_213F4D8F0();
      sub_213F4D8E0();
      sub_213F4D8F0();
      sub_213F4D930();
      v112 = 256;
      v111 = 0;
      v42 = sub_213F4E2F0();
      v44 = v43;
      v46 = v45;
      v47 = [objc_opt_self() secondaryLabelColor];
      v134 = sub_213F4E870();
      v48 = sub_213F4E2B0();
      v50 = v49;
      LODWORD(v123) = v51;
      v124 = v52;
      sub_213DBCA40(v42, v44, v46 & 1);

      *v23 = sub_213F4D8A0();
      *(v23 + 1) = 0;
      v23[16] = 0;
      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA480, &qword_213F5C568) + 44);
      v134 = v34;
      swift_getKeyPath();
      v53 = v115;
      sub_213E803AC(v133, v115, type metadata accessor for RichTextView);
      v54 = (*(v114 + 80) + 16) & ~*(v114 + 80);
      v55 = (v113 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      sub_213E80344(v53, v56 + v54, type metadata accessor for RichTextView);
      v57 = v56 + v55;
      v125 = v50;
      v126 = v48;
      *v57 = v48;
      *(v57 + 8) = v50;
      LOBYTE(v55) = v123 & 1;
      *(v57 + 16) = v123 & 1;
      *(v57 + 24) = v124;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_213E813A8;
      *(v58 + 24) = v56;

      sub_213DBCA50(v48, v50, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA488, &qword_213F5C590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA490, &qword_213F5C598);
      sub_213E814D8();
      v111 = sub_213DE3AE4(&qword_27C8FA4B0, &qword_27C8FA490, &qword_213F5C598);
      sub_213F4ECC0();
      sub_213DE3164(v23, v130, &qword_27C8FA450, &qword_213F5C4D8);
      swift_storeEnumTagMultiPayload();
      sub_213DE3AE4(&qword_27C8FA448, &qword_27C8FA450, &qword_213F5C4D8);
      sub_213E824DC(&qword_281182DB8, &qword_27C8FA420, &unk_213F5C4C0, sub_213E80EF4);
      sub_213F4DBA0();
      sub_213DBCA40(v126, v125, v55);

      v59 = v23;
      v60 = &qword_27C8FA450;
      v61 = &qword_213F5C4D8;
      return sub_213DE36FC(v59, v60, v61);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213E7B524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v105 = a5;
  v106 = a7;
  v103 = a6;
  v104 = a4;
  v122 = a1;
  v126 = a8;
  v10 = sub_213F4D290();
  v11 = *(v10 - 8);
  v129 = v10;
  v130 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v128 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v127 = v102 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA408, &unk_213F5CF70);
  v16 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = v102 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA410, &qword_213F5C4B0);
  v18 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v116 = v102 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA418, &qword_213F5C4B8);
  v20 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v119 = v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA420, &unk_213F5C4C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = v102 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4B8, &qword_213F5C5A8);
  v25 = *(*(v117 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v117);
  v125 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v113 = v102 - v29;
  MEMORY[0x28223BE20](v28);
  v124 = v102 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v31 = type metadata accessor for RichTextViewModel(0);
  v32 = *(*(v31 - 8) + 72);
  v33 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_213F55C80;
  v121 = a2;
  sub_213E803AC(a2, v34 + v33, type metadata accessor for RichTextViewModel);
  sub_213F4D920();
  v35 = sub_213F4E2F0();
  v37 = v36;
  v39 = v38;
  v131[2] = a3;
  v41 = sub_213E75708(v35, v36, v38 & 1, v40, sub_213E82594, v131, v34);
  v42 = a3;
  v107 = v43;
  v108 = v41;
  v45 = v44;
  v109 = v46;
  sub_213DBCA40(v35, v37, v39 & 1);

  swift_setDeallocating();
  v47 = *(v34 + 16);
  v111 = v31;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v48 = type metadata accessor for RichTextView(0);
  v102[1] = *(v48 + 20);
  v49 = v127;
  sub_213DBBD08(v127);
  v50 = v128;
  sub_213F4D280();
  v51 = v49;
  LOBYTE(v34) = sub_213F4D270();
  v52 = v130 + 8;
  v53 = *(v130 + 8);
  v54 = v50;
  v55 = v129;
  v53(v54, v129);
  v130 = v52;
  v102[0] = v53;
  v53(v51, v55);
  v123 = v42;
  v110 = v48;
  if (v34)
  {
    sub_213F4E1F0();
  }

  else if (*(v42 + *(v48 + 52)))
  {
    sub_213F4E0D0();
  }

  else
  {
    sub_213F4E0C0();
  }

  v57 = v107;
  v56 = v108;
  v58 = sub_213F4E2E0();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_213DBCA40(v56, v57, v45 & 1);

  v65 = v115;
  v66 = &v115[*(v112 + 36)];
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v68 = *MEMORY[0x277CE1050];
  v69 = sub_213F4EA30();
  (*(*(v69 - 8) + 104))(v66 + v67, v68, v69);
  *v66 = swift_getKeyPath();
  *v65 = v58;
  *(v65 + 8) = v60;
  *(v65 + 16) = v62 & 1;
  *(v65 + 24) = v64;
  KeyPath = swift_getKeyPath();
  v71 = v116;
  sub_213DE2B44(v65, v116, &qword_27C8FA408, &unk_213F5CF70);
  v72 = v71 + *(v114 + 36);
  *v72 = KeyPath;
  *(v72 + 8) = 1;
  *(v72 + 16) = 0;
  v73 = swift_getKeyPath();
  v74 = v119;
  sub_213DE2B44(v71, v119, &qword_27C8FA410, &qword_213F5C4B0);
  v75 = v74 + *(v120 + 36);
  *v75 = v73;
  *(v75 + 8) = 0;
  *&v141 = 0x7478655468636952;
  *(&v141 + 1) = 0xE800000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  sub_213E80EF4();
  v76 = v118;
  sub_213F4E6D0();

  sub_213DE36FC(v74, &qword_27C8FA418, &qword_213F5C4B8);
  v77 = *(v121 + *(v111 + 48));
  v78 = v113;
  sub_213DE2B44(v76, v113, &qword_27C8FA420, &unk_213F5C4C0);
  *(v78 + *(v117 + 36)) = v77;
  v79 = v124;
  sub_213DE2B44(v78, v124, &qword_27C8FA4B8, &qword_213F5C5A8);
  v80 = v110;
  v81 = v123;
  if (*(*(v123 + *(v110 + 44)) + 16) - 1 == v122)
  {
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
  }

  else
  {
    v82 = v127;
    sub_213DBBD08(v127);
    v83 = v128;
    sub_213F4D280();
    v84 = sub_213F4D270();
    v85 = v83;
    v86 = v129;
    v87 = v102[0];
    (v102[0])(v85, v129);
    v87(v82, v86);
    if (v84)
    {
      sub_213F4E1F0();
    }

    else if (*(v81 + *(v80 + 52)))
    {
      sub_213F4E0D0();
    }

    else
    {
      sub_213F4E0C0();
    }

    v88 = sub_213F4E2E0();
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v95 = swift_getKeyPath();
    v92 &= 1u;
    LOBYTE(v140[0]) = v92;
    LOBYTE(v136) = 0;
    sub_213DBCA50(v88, v90, v92);
    *&v141 = v88;
    *(&v141 + 1) = v90;
    LOBYTE(v142) = v92;
    *(&v142 + 1) = v94;
    *&v143 = v95;
    *(&v143 + 1) = 1;
    LOBYTE(v144) = 0;
    *(&v144 + 1) = 0x4024000000000000;
  }

  v96 = v125;
  sub_213DE3164(v79, v125, &qword_27C8FA4B8, &qword_213F5C5A8);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v97 = v126;
  sub_213DE3164(v96, v126, &qword_27C8FA4B8, &qword_213F5C5A8);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C8, &qword_213F5C5B8) + 48));
  v136 = v132;
  v137 = v133;
  v138 = v134;
  v139 = v135;
  sub_213DE3164(&v136, v140, &qword_27C8FA4D0, &qword_213F5C5C0);
  sub_213DE36FC(&v141, &qword_27C8FA4D0, &qword_213F5C5C0);
  v99 = v137;
  *v98 = v136;
  v98[1] = v99;
  v100 = v139;
  v98[2] = v138;
  v98[3] = v100;
  sub_213DE36FC(v79, &qword_27C8FA4B8, &qword_213F5C5A8);
  v140[0] = v132;
  v140[1] = v133;
  v140[2] = v134;
  v140[3] = v135;
  sub_213DE36FC(v140, &qword_27C8FA4D0, &qword_213F5C5C0);
  return sub_213DE36FC(v96, &qword_27C8FA4B8, &qword_213F5C5A8);
}

uint64_t sub_213E7BED4@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3E0, &qword_213F5C480);
  v2 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v124 = &v110 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3E8, &qword_213F5C488);
  v4 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v112 = (&v110 - v5);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3F0, &qword_213F5C490);
  v6 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v110 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3F8, &qword_213F5C498);
  v8 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v110 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA400, &unk_213F5C4A0);
  v10 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v110 - v11;
  v117 = sub_213F4D290();
  v116 = *(v117 - 8);
  v12 = *(v116 + 64);
  v13 = MEMORY[0x28223BE20](v117);
  v115 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v114 = &v110 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA408, &unk_213F5CF70);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v120 = &v110 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA410, &qword_213F5C4B0);
  v18 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v110 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA418, &qword_213F5C4B8);
  v20 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v110 - v21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA420, &unk_213F5C4C0);
  v22 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v110 - v23;
  v24 = type metadata accessor for RichTextViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v111 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v110 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v110 - v32;
  result = type metadata accessor for RichTextView(0);
  v35 = result;
  v36 = 0;
  v37 = *(result + 44);
  v135 = v1;
  v38 = *(v1 + v37);
  v39 = *(v38 + 16);
  while (1)
  {
    if (v39 == v36)
    {
      goto LABEL_8;
    }

    if (v36 >= *(v38 + 16))
    {
      break;
    }

    sub_213E803AC(v38 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v36++, v33, type metadata accessor for RichTextViewModel);
    v40 = v33[*(v24 + 24)];
    result = sub_213E816D4(v33, type metadata accessor for RichTextViewModel);
    if (v40 == 1)
    {
      sub_213DE3164(v135 + v35[10], v136, &qword_27C8F9318, &qword_213F57710);
      v41 = v137;
      result = sub_213DE36FC(v136, &qword_27C8F9318, &qword_213F57710);
      if (v41)
      {
        sub_213F4D920();
        v109 = 256;
        v42 = sub_213F4E2F0();
        v44 = v43;
        v46 = v45;
        v47 = MEMORY[0x28223BE20](v42);
        v48 = v135;
        v108 = v135;
        v52 = sub_213E75708(v47, v50, v49 & 1, v51, sub_213E812E4, (&v110 - 4), v38);
        v54 = v53;
        v56 = v55;
        v124 = v57;
        sub_213DBCA40(v42, v44, v46 & 1);

        v58 = v48 + v35[5];
        v59 = v114;
        sub_213DBBD08(v114);
        v60 = v115;
        sub_213F4D280();
        LOBYTE(v58) = sub_213F4D270();
        v61 = *(v116 + 8);
        v62 = v60;
        v63 = v117;
        v61(v62, v117);
        v61(v59, v63);
        if (v58)
        {
          sub_213F4E1E0();
          v64 = v113;
        }

        else
        {
          v64 = v113;
          if (*(v48 + v35[13]))
          {
            sub_213F4E1B0();
          }

          else
          {
            sub_213F4E0D0();
          }
        }

        v86 = sub_213F4E2E0();
        v88 = v87;
        v90 = v89;
        v92 = v91;

        sub_213DBCA40(v52, v54, v56 & 1);

        v93 = v120;
        v94 = &v120[*(v64 + 36)];
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
        v96 = *MEMORY[0x277CE1050];
        v97 = sub_213F4EA30();
        (*(*(v97 - 8) + 104))(v94 + v95, v96, v97);
        *v94 = swift_getKeyPath();
        *v93 = v86;
        *(v93 + 1) = v88;
        v93[16] = v90 & 1;
        *(v93 + 3) = v92;
        v98 = sub_213E774E0();
        LOBYTE(v96) = v99;
        KeyPath = swift_getKeyPath();
        v101 = v93;
        v102 = v119;
        sub_213DE2B44(v101, v119, &qword_27C8FA408, &unk_213F5CF70);
        v103 = v102 + *(v118 + 36);
        *v103 = KeyPath;
        *(v103 + 8) = v98;
        *(v103 + 16) = v96 & 1;
        v104 = swift_getKeyPath();
        v105 = v121;
        sub_213DE2B44(v102, v121, &qword_27C8FA410, &qword_213F5C4B0);
        v106 = v105 + *(v122 + 36);
        *v106 = v104;
        *(v106 + 8) = 0;
        sub_213E80EF4();
        v80 = v123;
        sub_213F4E6D0();
        sub_213DE36FC(v105, &qword_27C8FA418, &qword_213F5C4B8);
        v82 = &qword_27C8FA420;
        v83 = &unk_213F5C4C0;
        sub_213DE3164(v80, v127, &qword_27C8FA420, &unk_213F5C4C0);
        swift_storeEnumTagMultiPayload();
        sub_213E824DC(&qword_281182DB8, &qword_27C8FA420, &unk_213F5C4C0, sub_213E80EF4);
LABEL_30:
        sub_213DE3AE4(&qword_27C8FA430, &qword_27C8FA3E8, &qword_213F5C488);
        v107 = v128;
        sub_213F4DBA0();
        sub_213DE3164(v107, v132, &qword_27C8FA400, &unk_213F5C4A0);
        swift_storeEnumTagMultiPayload();
        sub_213E8111C();
        sub_213E81200();
        sub_213F4DBA0();
        sub_213DE36FC(v107, &qword_27C8FA400, &unk_213F5C4A0);
        v85 = v80;
      }

      else
      {
LABEL_8:
        v65 = 0;
        v66 = *(v38 + 16);
        while (v66 != v65)
        {
          if (v65 >= *(v38 + 16))
          {
            goto LABEL_33;
          }

          v67 = (*(v25 + 80) + 32) & ~*(v25 + 80);
          v68 = *(v25 + 72);
          sub_213E803AC(v38 + v67 + v68 * v65++, v31, type metadata accessor for RichTextViewModel);
          v69 = *&v31[*(v24 + 36)];

          result = sub_213E816D4(v31, type metadata accessor for RichTextViewModel);
          if (v69)
          {

            v70 = *(v38 + 16);
            if (v70)
            {
              v71 = *(v24 + 36);
              v72 = v38 + v67;
              v73 = MEMORY[0x277D84F90];
              v74 = v111;
              do
              {
                sub_213E803AC(v72, v74, type metadata accessor for RichTextViewModel);
                v75 = *(v74 + v71);

                sub_213E816D4(v74, type metadata accessor for RichTextViewModel);
                if (v75)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v73 = sub_213F1E6EC(0, v73[2] + 1, 1, v73);
                  }

                  v77 = v73[2];
                  v76 = v73[3];
                  if (v77 >= v76 >> 1)
                  {
                    v73 = sub_213F1E6EC((v76 > 1), v77 + 1, 1, v73);
                  }

                  v73[2] = v77 + 1;
                  v73[v77 + 4] = v75;
                }

                v72 += v68;
                --v70;
              }

              while (v70);
            }

            else
            {
              v73 = MEMORY[0x277D84F90];
            }

            if (v73[2])
            {
              v78 = v73[4];

              v79 = sub_213F4D8A0();
              v80 = v112;
              *v112 = v79;
              *(v80 + 8) = 0x4010000000000000;
              *(v80 + 16) = 0;
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA428, &qword_213F5C4D0);
              sub_213E7CC10(v135, v78, v80 + *(v81 + 44));

              v82 = &qword_27C8FA3E8;
              v83 = &qword_213F5C488;
              sub_213DE3164(v80, v127, &qword_27C8FA3E8, &qword_213F5C488);
              swift_storeEnumTagMultiPayload();
              sub_213E824DC(&qword_281182DB8, &qword_27C8FA420, &unk_213F5C4C0, sub_213E80EF4);
              goto LABEL_30;
            }

            break;
          }
        }

        v84 = v124;
        sub_213E7A7CC(0, v124);
        v82 = &qword_27C8FA3E0;
        v83 = &qword_213F5C480;
        sub_213DE3164(v84, v132, &qword_27C8FA3E0, &qword_213F5C480);
        swift_storeEnumTagMultiPayload();
        sub_213E8111C();
        sub_213E81200();
        sub_213F4DBA0();
        v85 = v84;
      }

      return sub_213DE36FC(v85, v82, v83);
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_213E7CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3E0, &qword_213F5C480);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4D8, &qword_213F5C5C8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  *v17 = sub_213F4D860();
  *(v17 + 1) = 0xC014000000000000;
  v17[16] = 0;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4E0, &qword_213F5C5D0) + 44);
  v19 = *(a2 + 16);
  if (v19 >= 3)
  {
    v19 = 3;
  }

  v25 = 0;
  v26 = v19;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4E8, &qword_213F5C5D8);
  sub_213E800BC();
  sub_213E81590();
  sub_213F4ECC0();
  sub_213E7A7CC(1, v10);
  sub_213DE3164(v17, v15, &qword_27C8FA4D8, &qword_213F5C5C8);
  sub_213DE3164(v10, v8, &qword_27C8FA3E0, &qword_213F5C480);
  v20 = v24;
  sub_213DE3164(v15, v24, &qword_27C8FA4D8, &qword_213F5C5C8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA518, &qword_213F5C5F0);
  sub_213DE3164(v8, v20 + *(v21 + 48), &qword_27C8FA3E0, &qword_213F5C480);
  sub_213DE36FC(v10, &qword_27C8FA3E0, &qword_213F5C480);
  sub_213DE36FC(v17, &qword_27C8FA4D8, &qword_213F5C5C8);
  sub_213DE36FC(v8, &qword_27C8FA3E0, &qword_213F5C480);
  return sub_213DE36FC(v15, &qword_27C8FA4D8, &qword_213F5C5C8);
}

uint64_t sub_213E7CF0C()
{
  v1 = sub_213F4D390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TitleTextView(0);
  v10 = *(v0 + *(v9 + 28)) - 3;
  v11 = (v0 + *(v9 + 24));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_0(v11, v12);
  if (v10 > 1)
  {
    if (ListCellProviding.hasTwoLinesOfText.getter(v12, v13))
    {
      return 2;
    }
  }

  else if (ListCellProviding.hasOneLineOfText.getter(v12, v13))
  {
    return 2;
  }

  sub_213EA886C(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CDFA00], v1);
  sub_213E802DC(&qword_281183490, MEMORY[0x277CDFA28]);
  v15 = sub_213F4F1D0();
  v16 = *(v2 + 8);
  v16(v6, v1);
  v16(v8, v1);
  if (v15)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_213E7D0F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9770, &unk_213F5C6C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v108 - v5;
  v6 = MEMORY[0x277D84F90];
  if (!a2)
  {
    return v6;
  }

  v7 = sub_213F4F270();
  v9 = v8;
  v10 = sub_213F4F270();
  v12 = v11;
  v130 = v6;
  v127 = 32;
  v128 = 0xE100000000000000;
  MEMORY[0x28223BE20](v10);
  v106 = &v127;

  v121 = v10;
  v123 = v12;
  v13 = v12;
  v14 = 0;
  v16 = sub_213E7FC5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_213E822D4, (&v108 - 4), v10, v13, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v119 = 0;
    v120 = v9;
    *&v124 = v7;
    v127 = v6;
    sub_213EA90E8(0, v17, 0);
    v18 = v127;
    v19 = (v16 + 56);
    do
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;

      v24 = MEMORY[0x216052690](v20, v21, v22, v23);
      v26 = v25;

      v127 = v18;
      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_213EA90E8((v27 > 1), v28 + 1, 1);
        v18 = v127;
      }

      *(v18 + 2) = v28 + 1;
      v29 = &v18[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      v19 += 4;
      --v17;
    }

    while (v17);

    v7 = v124;
    v14 = v119;
    v9 = v120;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v127 = 32;
  v128 = 0xE100000000000000;
  MEMORY[0x28223BE20](v30);
  v106 = &v127;
  v31 = sub_213E7FC5C(0x7FFFFFFFFFFFFFFFLL, 1, sub_213E825B0, (&v108 - 4), v7, v9, &v108);
  v112 = v14;
  v32 = *(v31 + 16);
  if (v32)
  {
    v127 = v6;
    sub_213EA90E8(0, v32, 0);
    v33 = v127;
    v34 = (v31 + 56);
    do
    {
      v35 = *(v34 - 3);
      v36 = *(v34 - 2);
      v37 = *(v34 - 1);
      v38 = *v34;

      v39 = MEMORY[0x216052690](v35, v36, v37, v38);
      v41 = v40;

      v127 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_213EA90E8((v42 > 1), v43 + 1, 1);
        v33 = v127;
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v34 += 4;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v116 = *(v33 + 16);
  if (!v116)
  {
LABEL_70:

    sub_213E7DA88(&v130);

    v98 = *(v130 + 2);
    if (v98)
    {
      v99 = v130 + 32;
      v6 = MEMORY[0x277D84F90];
      v100 = 15;
      do
      {
        v101 = *v99;
        if (*v99 >> 14 >= v100 >> 14)
        {
          v124 = *v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_213F1E820(0, *(v6 + 2) + 1, 1, v6);
          }

          v103 = *(v6 + 2);
          v102 = *(v6 + 3);
          v104 = v124;
          if (v103 >= v102 >> 1)
          {
            v105 = sub_213F1E820((v102 > 1), v103 + 1, 1, v6);
            v104 = v124;
            v6 = v105;
          }

          *(v6 + 2) = v103 + 1;
          *&v6[16 * v103 + 32] = v104;
          v100 = *(&v104 + 1);
        }

        v99 += 16;
        --v98;
      }

      while (v98);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    return v6;
  }

  v46 = 0;
  v111 = MEMORY[0x277D84F90];
  v113 = v33;
  v114 = v33 + 32;
  v47 = v18;
  while (v46 < *(v33 + 16))
  {
    v48 = *(v47 + 2);
    if (v48)
    {
      v120 = v18;
      v118 = v46;
      v49 = (v114 + 16 * v46);
      v50 = *v49;
      v51 = v49[1];

      v52 = 0;
      v53 = 0;
      *&v124 = -v48;
      v54 = v47 + 40;
      v18 = v47;
      v115 = v47 + 40;
      while (1)
      {
        v119 = v18;
        while (1)
        {
          LODWORD(v117) = v52;
          v55 = &v54[16 * v53++];
          while (1)
          {
            if ((v53 - 1) >= *(v47 + 2))
            {
              __break(1u);
              goto LABEL_83;
            }

            v57 = *(v55 - 1);
            v56 = *v55;

            if (sub_213F4F370())
            {
              v127 = v121;
              v128 = v123;
              v125 = v57;
              v126 = v56;
              v58 = sub_213F4CB60();
              v59 = v50;
              v60 = v122;
              (*(*(v58 - 8) + 56))(v122, 1, 1, v58);
              v106 = sub_213DBC9EC();
              v107 = v106;
              v61 = sub_213F4F6D0();
              v63 = v62;
              v64 = v60;
              v50 = v59;
              sub_213DE36FC(v64, &qword_27C8F9770, &unk_213F5C6C0);
              if ((v63 & 1) == 0)
              {
                break;
              }
            }

            ++v53;
            v55 += 2;
            if (v124 + v53 == 1)
            {
              goto LABEL_18;
            }
          }

          v65 = v124 + v53;
          if ((v117 & 1) == 0)
          {
            break;
          }

          v52 = 1;
          v54 = v115;
          if (!v65)
          {
LABEL_18:

            v47 = v119;
            v18 = v120;
LABEL_19:
            v33 = v113;
            v46 = v118;
            goto LABEL_20;
          }
        }

        sub_213F4F2D0();
        sub_213F4F2D0();
        result = sub_213F4F300();
        if (result >> 14 < v61 >> 14)
        {
          goto LABEL_85;
        }

        v66 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v111 = sub_213F1E820(0, *(v111 + 2) + 1, 1, v111);
        }

        v69 = *(v111 + 2);
        v68 = *(v111 + 3);
        v70 = v69 + 1;
        if (v69 >= v68 >> 1)
        {
          v119 = v69 + 1;
          v97 = sub_213F1E820((v68 > 1), v69 + 1, 1, v111);
          v70 = v119;
          v111 = v97;
        }

        v71 = v111;
        *(v111 + 2) = v70;
        v72 = &v71[16 * v69];
        *(v72 + 4) = v61;
        *(v72 + 5) = v66;
        v130 = v71;
        v73 = v120;
        v74 = v112;
        result = sub_213E822F0(v120, v57, v56);
        v112 = v74;
        if (v75)
        {
          v76 = *(v73 + 2);
          result = v76;
        }

        else
        {
          v76 = result + 1;
          if (__OFADD__(result, 1))
          {
            goto LABEL_91;
          }

          v77 = *(v120 + 2);
          if (v76 != v77)
          {
            v85 = 16 * result;
            while (v76 < v77)
            {
              v86 = *&v120[v85 + 48];
              v87 = *&v120[v85 + 56];
              if (v86 != v57 || v87 != v56)
              {
                v117 = v76;
                v119 = result;
                v110 = v86;
                if (sub_213F4F830())
                {
                  result = v119;
                  v76 = v117;
                }

                else
                {
                  result = v119;
                  v76 = v117;
                  if (v117 != v119)
                  {
                    if (v119 >= v77)
                    {
                      goto LABEL_89;
                    }

                    v89 = &v120[16 * v119 + 32];
                    v90 = *(v89 + 1);
                    v108 = *v89;
                    v91 = v90;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v120 = sub_213E13FCC(v120);
                    }

                    v92 = v120;
                    v93 = &v120[16 * v119];
                    v94 = *(v93 + 5);
                    *(v93 + 4) = v110;
                    *(v93 + 5) = v87;

                    if (v117 >= *(v92 + 2))
                    {
                      goto LABEL_90;
                    }

                    v95 = &v92[v85];
                    v96 = *&v92[v85 + 56];
                    *(v95 + 6) = v108;
                    *(v95 + 7) = v91;

                    v50 = v59;
                    result = v119;
                    v76 = v117;
                  }

                  ++result;
                }
              }

              ++v76;
              v77 = *(v120 + 2);
              v85 += 16;
              if (v76 == v77)
              {
                goto LABEL_42;
              }
            }

            goto LABEL_84;
          }

LABEL_42:
          if (v76 < result)
          {
            goto LABEL_86;
          }

          if (result < 0)
          {
            goto LABEL_87;
          }
        }

        v78 = result;
        if (__OFADD__(v76, result - v76))
        {
          goto LABEL_88;
        }

        v79 = result;
        v80 = v76;
        v18 = v120;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v129 = v18;
        if ((v81 & 1) != 0 && v78 <= *(v18 + 3) >> 1)
        {
          v82 = v80;
        }

        else
        {
          if (v80 <= v78)
          {
            v83 = v78;
          }

          else
          {
            v83 = v80;
          }

          v84 = sub_213F1E924(v81, v83, 1, v18);
          v82 = v80;
          v18 = v84;
          v129 = v84;
          v120 = v84;
        }

        sub_213E82390(v79, v82, 0);

        v52 = 1;
        v54 = v115;
        if (!v109)
        {

          v47 = v18;
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    if (++v46 == v116)
    {
      goto LABEL_70;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_213E7DA88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_213E13FB8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_213F4F810();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9778, &unk_213F58930);
      v7 = sub_213F4F410();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_213E819B0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_213E7DBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D910();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = v96 - v8;
  v9 = type metadata accessor for TitleTextView(0);
  v10 = (v1 + *(v9 + 24));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0(v10, v11);
  v14 = (*(v12 + 40))(v11, v12);
  if (!v13)
  {
    sub_213F4D920();
    result = sub_213F4E2F0();
    v27 = result;
    v28 = v64;
    v29 = v65;
    v30 = v66;
LABEL_19:
    *a1 = v27;
    *(a1 + 8) = v28;
    *(a1 + 16) = v29 & 1;
    *(a1 + 24) = v30;
    return result;
  }

  v98 = v9;
  v99 = v1;
  v100 = v7;
  v15 = v10[3];
  v16 = v10[4];
  v104 = v13;
  __swift_project_boxed_opaque_existential_0(v10, v15);
  v17 = *(v16 + 56);
  v18 = v16;
  v19 = v104;
  v20 = v17(v15, v18);
  v22 = sub_213E7D0F0(v20, v21);

  sub_213F4D920();
  v23 = sub_213F4E2F0();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = *(v22 + 16);
  v101 = v31;
  if (!v31)
  {

    v63 = 15;
LABEL_9:
    v67 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v67 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v63 >> 14 >= 4 * v67)
    {
    }

    else
    {
      sub_213F4D900();
      sub_213F4D8F0();
      sub_213F4D8C0();
      sub_213F4D8F0();
      v68 = sub_213E7E398(v63, v14, v19);
      v70 = v69;
      v72 = v71;
      v74 = v73;

      v118 = v68;
      v119 = v70;
      v120 = v72;
      v121 = v74;
      sub_213E8195C();
      v75 = sub_213F4E310();
      v77 = v76;
      LOBYTE(v74) = v78;
      sub_213F4D8C0();
      sub_213DBCA40(v75, v77, v74 & 1);

      sub_213F4D8F0();
      sub_213F4D930();
      v79 = sub_213F4E2F0();
      v81 = v80;
      LOBYTE(v77) = v82;
      v84 = v83;
      sub_213DBCA40(v27, v28, v29 & 1);

      v27 = v79;
      v28 = v81;
      v29 = v77;
      v30 = v84;
    }

    if (!v101)
    {
      sub_213F4D900();
      sub_213F4D8F0();
      if (*(v99 + *(v98 + 32)) == 1)
      {
        sub_213F4E160();
      }

      else
      {
        sub_213F4E180();
      }

      v85 = sub_213F4E2A0();
      v87 = v86;
      v89 = v88;
      sub_213F4D8C0();
      sub_213DBCA40(v85, v87, v89 & 1);

      sub_213F4D8F0();
      sub_213F4D930();
      v90 = sub_213F4E2F0();
      v92 = v91;
      LOBYTE(v87) = v93;
      v95 = v94;
      sub_213DBCA40(v27, v28, v29 & 1);

      v27 = v90;
      v28 = v92;
      v29 = v87;
      v30 = v95;
    }

    goto LABEL_19;
  }

  v102 = v14;
  v114 = v25;
  v116 = v23;
  v117 = v24;
  v115 = v26;
  v97 = a1;
  v96[1] = v22;
  v32 = (v22 + 40);
  result = 15;
  v34 = v31;
  while (*(v32 - 1) >> 14 >= result >> 14)
  {
    v35 = *v32;
    v111 = v32 + 2;
    v112 = v35;
    v113 = v34;
    v118 = sub_213F4F3A0();
    v119 = v36;
    v120 = v37;
    v121 = v38;
    sub_213E8195C();
    v110 = sub_213F4E310();
    v109 = v39;
    v107 = v40;
    v108 = v41;
    v118 = sub_213F4F3A0();
    v119 = v42;
    v120 = v43;
    v121 = v44;
    v45 = sub_213F4E310();
    v47 = v46;
    v49 = v48;
    sub_213F4E180();
    v50 = sub_213F4E2A0();
    v106 = v51;
    v105 = v52;
    sub_213DBCA40(v45, v47, v49 & 1);

    sub_213F4D900();
    sub_213F4D8F0();
    sub_213F4D8C0();
    sub_213F4D8F0();
    v53 = v110;
    v54 = v109;
    sub_213F4D8C0();
    sub_213F4D8F0();
    v55 = v50;
    v56 = v106;
    sub_213F4D8C0();
    sub_213F4D8F0();
    sub_213F4D930();
    v57 = sub_213F4E2F0();
    v59 = v58;
    v61 = v60;
    v30 = v62;
    sub_213DBCA40(v55, v56, v105 & 1);

    sub_213DBCA40(v53, v54, v107 & 1);

    v63 = v112;
    sub_213DBCA40(v116, v117, v114 & 1);

    v32 = v111;
    result = v63;
    v116 = v57;
    v117 = v59;
    v114 = v61;
    v115 = v30;
    v34 = v113 - 1;
    if (v113 == 1)
    {

      v27 = v57;
      v28 = v59;
      v29 = v61;
      a1 = v97;
      v14 = v102;
      v19 = v104;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_213E7E398(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_213F4F3A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_213E7E3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  sub_213E7DBE4(&v35);
  v11 = *(&v35 + 1);
  v28 = v35;
  v12 = v36;
  v29 = *(&v36 + 1);
  v13 = type metadata accessor for TitleTextView(0);
  v14 = v1 + v13[5];
  sub_213DBBD08(v10);
  sub_213F4D280();
  LOBYTE(v14) = sub_213F4D270();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v14)
  {
    v16 = sub_213F4E1E0();
  }

  else if (*(v2 + v13[8]))
  {
    v16 = sub_213F4E1B0();
  }

  else
  {
    v16 = sub_213F4E0D0();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = (v2 + v13[6]);
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_0(v19, v20);
  if ((*(v21 + 96))(v20, v21))
  {
    v22 = sub_213F4DD90();
  }

  else
  {
    v22 = sub_213F4DDB0();
  }

  v23 = v22;
  v24 = sub_213E7CF0C();
  v25 = swift_getKeyPath();
  v41 = v12;
  v39 = 0;
  *&v35 = v28;
  *(&v35 + 1) = v11;
  LOBYTE(v36) = v12;
  *(&v36 + 1) = *v40;
  DWORD1(v36) = *&v40[3];
  *(&v36 + 1) = v29;
  *&v37 = KeyPath;
  *(&v37 + 1) = v17;
  *v38 = v23;
  *&v38[8] = v25;
  *&v38[16] = v24;
  v38[24] = 0;
  v33 = v37;
  v34[0] = *v38;
  *(v34 + 9) = *&v38[9];
  v32 = v36;
  v31 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA540, &qword_213F5C6A8);
  sub_213E81734();
  sub_213F4E6D0();
  return sub_213DE36FC(&v35, &qword_27C8FA540, &qword_213F5C6A8);
}