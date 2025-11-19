uint64_t sub_1B819F75C()
{
  if (sub_1B819A26C())
  {
    goto LABEL_5;
  }

  if ((sub_1B81F8E98() & 1) == 0)
  {
    sub_1B81F8948();
LABEL_5:
    sub_1B81F8978();
    goto LABEL_6;
  }

  sub_1B81F8A08();
  sub_1B81F8988();
LABEL_6:
  v0 = sub_1B81F89B8();

  return v0;
}

uint64_t sub_1B819F7BC()
{
  OUTLINED_FUNCTION_24_0();
  if ((*(v0 + 896))())
  {
    *&result = 0.0;
  }

  else
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 orientation];

    LODWORD(v2) = UIDeviceOrientationIsLandscape(v3);
    v4 = [objc_opt_self() mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v6;
    v14 = v8;
    v15 = v10;
    v16 = v12;
    if (v2)
    {
      Height = CGRectGetHeight(*&v13);
    }

    else
    {
      Height = CGRectGetWidth(*&v13);
    }

    *&result = Height + -40.0;
  }

  return result;
}

uint64_t sub_1B819F8F8@<X0>(void *a1@<X8>)
{
  result = sub_1B81F8228();
  *a1 = v3;
  return result;
}

uint64_t sub_1B819F924@<X0>(void *a1@<X8>)
{
  result = sub_1B81F8228();
  *a1 = v3;
  return result;
}

void sub_1B819F950()
{
  OUTLINED_FUNCTION_38();
  v2 = OUTLINED_FUNCTION_81();
  v3 = type metadata accessor for SGBannerViewModel(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_46_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
  v6 = sub_1B81F8D58();
  v7 = MEMORY[0x1E69E7D40];
  if (v15 == 1 && (v8 = *v0, v9 = *((*MEMORY[0x1E69E7D40] & **v0) + 0x230), (v9)(v6) != 5))
  {
    v9();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD0);
    sub_1B81F8D68();
    (*((*v7 & *v8) + 0x238))(5);
    v11 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDD0);
    sub_1B81F8D58();
    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      (*(v10 + 568))();
      sub_1B81F8D68();
    }

    v11 = *v0;
  }

  sub_1B81DD758(v11, v1);
  OUTLINED_FUNCTION_11_2();
  v12 = OUTLINED_FUNCTION_63();
  sub_1B81A1B90(v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);
  sub_1B81F8D68();
  OUTLINED_FUNCTION_0_1();
  sub_1B81A2340();
  OUTLINED_FUNCTION_37();
}

double sub_1B819FC20(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B81FD1B0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 40) = a1;
  type metadata accessor for Key(0);
  sub_1B8189AF0(0, &qword_1EBA7C578);
  OUTLINED_FUNCTION_12_2();
  sub_1B81A1B48(v4, v5);
  v6 = v3;
  v7 = a1;
  v8 = sub_1B81F8F08();
  OUTLINED_FUNCTION_110();
  v9 = sub_1B81F8F58();
  sub_1B81A178C(v8);

  v10 = sub_1B81F8EE8();

  [v9 sizeWithAttributes_];
  v12 = v11;

  return v12;
}

void sub_1B81A00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v29 = OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_68();
  v33 = MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  sub_1B81DF9B4();
  type metadata accessor for BannerUpdateViewModel(0);
  swift_allocObject();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_99();
  sub_1B81DFC88();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_99();
  sub_1B81E022C();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_16_2();
  sub_1B81A1B90(v36, v23, v37);
  sub_1B81A1B90(v24, v22, v21);
  OUTLINED_FUNCTION_53();
  sub_1B81A1B90(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_52();
  sub_1B81A1B90(v41, v42, v21);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFC0);
  sub_1B81A1B90(v22, v28 + *(v43 + 48), v21);
  sub_1B81A1B90(v20, v28 + *(v43 + 64), v21);
  OUTLINED_FUNCTION_20_0();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  OUTLINED_FUNCTION_16_0();
  sub_1B81A2340();
  OUTLINED_FUNCTION_54();
  sub_1B81A2340();
  sub_1B81A2340();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81A02E4@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_68();
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1B81E0468();
  type metadata accessor for BannerUpdateViewModel(0);
  swift_allocObject();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_99();
  sub_1B81E0624();
  swift_allocObject();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_16_2();
  sub_1B81A1B90(v10, v3, v11);
  OUTLINED_FUNCTION_53();
  sub_1B81A1B90(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_63();
  sub_1B81A1B90(v15, v16, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFB8);
  sub_1B81A1B90(v1, a1 + *(v17 + 48), v2);
  v18 = a1 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  OUTLINED_FUNCTION_20_0();
  sub_1B81A2340();
  sub_1B81A2340();
  OUTLINED_FUNCTION_16_0();
  sub_1B81A2340();
  return sub_1B81A2340();
}

void sub_1B81A0494()
{
  OUTLINED_FUNCTION_38();
  v34 = v6;
  v7 = OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v33 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40_0();
  v32 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  v31 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_0();
  v30 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40_0();
  v35 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_100();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40_0();
  v29 = v19;
  OUTLINED_FUNCTION_19();
  v21 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_101();
  sub_1B81E0868();
  type metadata accessor for BannerUpdateViewModel(0);
  swift_allocObject();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  sub_1B81E0BC4();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  sub_1B81E0DA8();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  sub_1B81E0FDC();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  sub_1B81E14C0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  sub_1B81E121C();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_16_2();
  sub_1B81A1B90(v3, v5, v25);
  v38[0] = v5;
  sub_1B81A1B90(v2, v35, v1);
  v38[1] = v35;
  sub_1B81A1B90(v0, v30, v1);
  v38[2] = v30;
  sub_1B81A1B90(v4, v31, v1);
  v38[3] = v31;
  OUTLINED_FUNCTION_116();
  sub_1B81A1B90(v26, v27, v28);
  v38[4] = v32;
  sub_1B81A1B90(v29, v33, v1);
  v36 = 0;
  v37 = 1;
  v38[5] = v33;
  v38[6] = &v36;
  sub_1B819F540(v38, v34);
  OUTLINED_FUNCTION_20_0();
  sub_1B81A2340();
  sub_1B81A2340();
  OUTLINED_FUNCTION_16_0();
  sub_1B81A2340();
  OUTLINED_FUNCTION_54();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  sub_1B81A2340();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81A07FC(uint64_t a1)
{
  v2 = sub_1B81A3404();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1B81A0848(uint64_t a1)
{
  v2 = sub_1B81A3404();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1B81A0894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2;
  v141 = a1;
  v145 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE60);
  OUTLINED_FUNCTION_6_0(v7, &v146);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v127[4] = v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v11);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v131 = v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v133 = v15;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v128 = v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v134 = v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v144 = v21;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CE98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_105();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_119();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v127 - v25;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32();
  v140 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  v32 = v31;
  OUTLINED_FUNCTION_37_0();
  v33 = sub_1B81F8378();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_118();
  if (sub_1B81F8E98())
  {
    if (v6[*(type metadata accessor for BannerViewBackgroundModifier(0) + 28)])
    {
      v35 = 26.0;
    }

    else
    {
      v35 = 38.0;
    }

    v36 = v5;
    v37 = v29;
    v38 = *(v33 + 20);
    v39 = v6;
    v40 = *MEMORY[0x1E697F468];
    sub_1B81F8548();
    OUTLINED_FUNCTION_7_2();
    v42 = v4 + v38;
    v29 = v37;
    v5 = v36;
    v43 = v40;
    v6 = v39;
    (*(v41 + 104))(v42, v43);
    *v4 = v35;
    v4[1] = v35;
    sub_1B81A1B48(&qword_1EDC8A9F8, MEMORY[0x1E697EAF0]);
  }

  else
  {
    sub_1B81A23A4();
  }

  v44 = sub_1B81F8E58();
  v45 = type metadata accessor for BannerViewBackgroundModifier(0);
  OUTLINED_FUNCTION_24_0();
  v47 = (*(v46 + 656))();
  if (!v47)
  {
    OUTLINED_FUNCTION_24_0();
    v60 = (*(v59 + 632))();
    if (v60)
    {
      v61 = v60;
      v133 = v61;
      v62 = sub_1B81F8EB8();
      v64 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
      OUTLINED_FUNCTION_7_2();
      v66 = v134;
      (*(v65 + 16))(v134, v141);
      v67 = &v66[*(v136 + 36)];
      *v67 = v61;
      *(v67 + 1) = v62;
      *(v67 + 2) = v64;
      sub_1B81A37BC(v66, v3, &qword_1EBA7CE88);
      swift_storeEnumTagMultiPayload();
      sub_1B81A2510();
      sub_1B81A25F4();
      OUTLINED_FUNCTION_44();
      sub_1B81F8718();
      sub_1B81A37BC(v26, v5, &qword_1EBA7CEA8);
      OUTLINED_FUNCTION_136();
      swift_storeEnumTagMultiPayload();
      sub_1B81A2484();
      sub_1B81A26D8();
      v68 = v140;
      sub_1B81F8718();
      v69 = OUTLINED_FUNCTION_61();
      sub_1B81A3990(v69, v70);
      OUTLINED_FUNCTION_79();
      sub_1B81A37BC(v71, v72, v73);
      OUTLINED_FUNCTION_111();
      sub_1B81A23F8();
      OUTLINED_FUNCTION_103();
      sub_1B81F8718();

      sub_1B81A3990(v68, &qword_1EBA7CEB0);
      v57 = v66;
      v58 = &qword_1EBA7CE88;
      return sub_1B81A3990(v57, v58);
    }

    if (v6[v45[11]] == 1)
    {
      v74 = v128 + *(v129 + 36);
      sub_1B81F8E68();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEE0);
      *(v74 + *(v75 + 52)) = v44;
      *(v74 + *(v75 + 56)) = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
      OUTLINED_FUNCTION_7_2();
      v76 = OUTLINED_FUNCTION_121();
      v77(v76);
      OUTLINED_FUNCTION_51();
      sub_1B81A37BC(v78, v79, v80);
      swift_storeEnumTagMultiPayload();
      sub_1B81A2764();
      sub_1B81A2848();
      OUTLINED_FUNCTION_123();
      sub_1B81F8718();
      OUTLINED_FUNCTION_78();
      sub_1B81A37BC(v81, v82, v83);
      OUTLINED_FUNCTION_136();
      swift_storeEnumTagMultiPayload();
      sub_1B81A2484();
      sub_1B81A26D8();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_41();
      sub_1B81A3990(v84, v85);
      OUTLINED_FUNCTION_78();
      sub_1B81A37BC(v86, v87, v88);
      OUTLINED_FUNCTION_111();
      sub_1B81A23F8();
      sub_1B81A2510();
      OUTLINED_FUNCTION_103();
      sub_1B81F8718();
    }

    else
    {
      if (v6[v45[10]] != 1)
      {
        sub_1B81872F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
        OUTLINED_FUNCTION_7_2();
        v101 = OUTLINED_FUNCTION_121();
        v102(v101);
        OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_51();
        sub_1B81A37BC(v103, v104, v105);
        swift_storeEnumTagMultiPayload();
        sub_1B81A23F8();
        sub_1B81A2510();
        sub_1B81F8718();
LABEL_22:
        OUTLINED_FUNCTION_53();
        return sub_1B81A3990(v57, v58);
      }

      v89 = *v6 == 1;
      v127[1] = v44;
      if (v89 && *&v6[v45[9]] == 6)
      {
        v90 = [objc_opt_self() effectWithStyle_];
        v91 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        v92 = sub_1B81F8EB8();
        v94 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
        OUTLINED_FUNCTION_7_2();
        v96 = v134;
        (*(v95 + 16))(v134, v141);
        v97 = &v96[*(v136 + 36)];
        *v97 = v91;
        *(v97 + 1) = v92;
        *(v97 + 2) = v94;
        OUTLINED_FUNCTION_51();
        sub_1B81A37BC(v98, v99, v100);
        OUTLINED_FUNCTION_144();
        sub_1B81A25F4();
        sub_1B81A2510();
        OUTLINED_FUNCTION_127();
      }

      else
      {
        sub_1B81872F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
        OUTLINED_FUNCTION_7_2();
        v106 = OUTLINED_FUNCTION_121();
        v107(v106);
        OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_51();
        sub_1B81A37BC(v108, v109, v110);
        OUTLINED_FUNCTION_143();
        sub_1B81A25F4();
        sub_1B81A2510();

        OUTLINED_FUNCTION_127();
      }

      sub_1B81F8718();
      OUTLINED_FUNCTION_53();
      sub_1B81A3990(v111, v112);
      OUTLINED_FUNCTION_51();
      sub_1B81A37BC(v113, v114, v115);
      swift_storeEnumTagMultiPayload();
      sub_1B81A2764();
      sub_1B81A2848();
      sub_1B81F8718();
      OUTLINED_FUNCTION_78();
      sub_1B81A37BC(v116, v117, v118);
      OUTLINED_FUNCTION_136();
      swift_storeEnumTagMultiPayload();
      sub_1B81A2484();
      sub_1B81A26D8();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_41();
      sub_1B81A3990(v119, v120);
      OUTLINED_FUNCTION_78();
      sub_1B81A37BC(v121, v122, v123);
      OUTLINED_FUNCTION_111();
      sub_1B81A23F8();
      sub_1B81A2510();
      OUTLINED_FUNCTION_103();
      sub_1B81F8718();
    }

    OUTLINED_FUNCTION_41();
    sub_1B81A3990(v124, v125);
    goto LABEL_22;
  }

  v134 = v47;
  v48 = sub_1B81F8C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CEC8);
  OUTLINED_FUNCTION_7_2();
  v49 = OUTLINED_FUNCTION_121();
  v50(v49);
  v51 = v32 + *(v29 + 36);
  *v51 = v48;
  *(v51 + 8) = v44;
  *(v51 + 16) = 256;
  sub_1B81A37BC(v32, v3, &qword_1EBA7CEB8);
  swift_storeEnumTagMultiPayload();
  sub_1B81A2510();
  sub_1B81A25F4();

  OUTLINED_FUNCTION_44();
  sub_1B81F8718();
  sub_1B81A37BC(v26, v5, &qword_1EBA7CEA8);
  OUTLINED_FUNCTION_136();
  swift_storeEnumTagMultiPayload();
  sub_1B81A2484();
  sub_1B81A26D8();
  v52 = v140;
  sub_1B81F8718();
  v53 = OUTLINED_FUNCTION_134();
  sub_1B81A3990(v53, v54);
  sub_1B81A37BC(v52, v144, &qword_1EBA7CEB0);
  swift_storeEnumTagMultiPayload();
  sub_1B81A23F8();
  sub_1B81F8718();

  v55 = OUTLINED_FUNCTION_125();
  sub_1B81A3990(v55, v56);
  v57 = v32;
  v58 = &qword_1EBA7CEB8;
  return sub_1B81A3990(v57, v58);
}

uint64_t sub_1B81A16C4()
{
  OUTLINED_FUNCTION_140();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1B81A1714()
{
  OUTLINED_FUNCTION_140();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1B81A1764()
{
  sub_1B81A33B0();
  sub_1B81F86D8();
  __break(1u);
}

uint64_t sub_1B81A178C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFC8);
    v1 = sub_1B81F9358();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v26 = *(*(a1 + 56) + v10);
    v12 = v26;
    sub_1B8189AF0(0, &qword_1EBA7C578);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1B8192514((v27 + 8), v25);
    sub_1B8192514(v25, v27);
    sub_1B81F8F98();
    sub_1B81F93B8();
    sub_1B81F8FD8();
    v15 = sub_1B81F93D8();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v19) = v13;
    result = sub_1B8192514(v27, (*(v1 + 56) + 32 * v19));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B81A1A60()
{
  result = qword_1EBA7CE18;
  if (!qword_1EBA7CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CDE0);
    sub_1B81A3B24(&qword_1EBA7CE20, &unk_1EBA7CDD8);
    sub_1B81A1B48(&qword_1EDC8AC80, type metadata accessor for BannerViewBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CE18);
  }

  return result;
}

uint64_t sub_1B81A1B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B81A1B90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return a2;
}

uint64_t sub_1B81A1BEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return a2;
}

uint64_t sub_1B81A1C44()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
  return OUTLINED_FUNCTION_113();
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SGBannerContainerView(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F8178();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  j__swift_release();
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F89C8();
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  v10 = v3 + v1[13];

  v11 = type metadata accessor for SGBannerViewModel(0);
  v12 = (v10 + *(v11 + 48));

  v13 = *(type metadata accessor for SGBannerIconParams(0) + 72);
  v14 = sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  v16 = *(v15 + 8);
  v16(v12 + v13, v14);

  v17 = *(v11 + 56);
  v18 = type metadata accessor for SGBannerPaddingParams(0);
  v16((v10 + v17 + *(v18 + 80)), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB0);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6BDD0](v22, v21 + v20, v2 | 7);
}

uint64_t sub_1B81A2034()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDB8);
  sub_1B81F8D68();
  return sub_1B819A95C();
}

void sub_1B81A20D8()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_97();

  sub_1B819F950();
}

uint64_t sub_1B81A2158(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_130(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_1B81A3B24(&qword_1EDC8A968, &unk_1EBA7CE50);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B81A21EC()
{
  result = qword_1EBA7CE40;
  if (!qword_1EBA7CE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CDF8);
    sub_1B81A2278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CE40);
  }

  return result;
}

unint64_t sub_1B81A2278()
{
  result = qword_1EBA7CE48;
  if (!qword_1EBA7CE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CDF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CDE0);
    sub_1B81A1A60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CE48);
  }

  return result;
}

uint64_t sub_1B81A2340()
{
  v1 = OUTLINED_FUNCTION_81();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1B81A23A4()
{
  result = qword_1EBA7CEC0;
  if (!qword_1EBA7CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CEC0);
  }

  return result;
}

unint64_t sub_1B81A23F8()
{
  result = qword_1EDC8A9A8;
  if (!qword_1EDC8A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CEB0);
    sub_1B81A2484();
    sub_1B81A26D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9A8);
  }

  return result;
}

unint64_t sub_1B81A2484()
{
  result = qword_1EDC8A9E8;
  if (!qword_1EDC8A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CEA8);
    sub_1B81A2510();
    sub_1B81A25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9E8);
  }

  return result;
}

unint64_t sub_1B81A2510()
{
  result = qword_1EDC8AA88;
  if (!qword_1EDC8AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CEB8);
    sub_1B81A3B24(&qword_1EDC8A970, &unk_1EBA7CEC8);
    sub_1B81A3B24(&qword_1EDC8A960, &unk_1EBA7CED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA88);
  }

  return result;
}

unint64_t sub_1B81A25F4()
{
  result = qword_1EDC8AA78;
  if (!qword_1EDC8AA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CE88);
    sub_1B81A3B24(&qword_1EDC8A970, &unk_1EBA7CEC8);
    sub_1B81A3B24(&qword_1EDC8AE98, &unk_1EBA7CED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA78);
  }

  return result;
}

unint64_t sub_1B81A26D8()
{
  result = qword_1EDC8A9E0;
  if (!qword_1EDC8A9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CE78);
    sub_1B81A2764();
    sub_1B81A2848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9E0);
  }

  return result;
}

unint64_t sub_1B81A2764()
{
  result = qword_1EDC8AA80;
  if (!qword_1EDC8AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CE80);
    sub_1B81A3B24(&qword_1EDC8A970, &unk_1EBA7CEC8);
    sub_1B81A3B24(&qword_1EDC8A958, &unk_1EBA7CEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA80);
  }

  return result;
}

unint64_t sub_1B81A2848()
{
  result = qword_1EDC8A9D8;
  if (!qword_1EDC8A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CE68);
    sub_1B81A25F4();
    sub_1B81A2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9D8);
  }

  return result;
}

unint64_t sub_1B81A2940()
{
  result = qword_1EBA7CEE8;
  if (!qword_1EBA7CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CEE8);
  }

  return result;
}

unint64_t sub_1B81A29C8()
{
  result = qword_1EBA7CEF0;
  if (!qword_1EBA7CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CEF0);
  }

  return result;
}

void sub_1B81A2A50()
{
  sub_1B81A2B24();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_57_0();
    sub_1B81A304C(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B81A2B24()
{
  result = qword_1EDC8A8F0;
  if (!qword_1EDC8A8F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC8A8F0);
  }

  return result;
}

void sub_1B81A2B74()
{
  sub_1B81A3354(319, qword_1EDC8AF88, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B81A2C7C()
{
  type metadata accessor for SGBannerContent();
  OUTLINED_FUNCTION_58_0();
  if (!(!v2 & v1))
  {
    sub_1B81A2F28();
    OUTLINED_FUNCTION_58_0();
    if (!(!v2 & v1))
    {
      type metadata accessor for SGSuggestionHostApp(319);
      OUTLINED_FUNCTION_58_0();
      if (!(!v2 & v1))
      {
        sub_1B81A2FB8();
        OUTLINED_FUNCTION_58_0();
        if (!(!v2 & v1))
        {
          sub_1B81A304C(319, &qword_1EDC8AF80, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          OUTLINED_FUNCTION_58_0();
          if (!(!v2 & v1))
          {
            OUTLINED_FUNCTION_57_0();
            sub_1B81A304C(319, v3, v4, MEMORY[0x1E697DCC0]);
            OUTLINED_FUNCTION_58_0();
            if (!(!v2 & v1))
            {
              sub_1B81A30B0(319, qword_1EDC8AAC0, &qword_1EBA7CF10, &unk_1B81FD808, MEMORY[0x1E697DCC0]);
              OUTLINED_FUNCTION_58_0();
              if (!(!v2 & v1))
              {
                sub_1B81A304C(319, &qword_1EBA7CF18, MEMORY[0x1E6980E88], MEMORY[0x1E697DCC0]);
                OUTLINED_FUNCTION_58_0();
                if (!(!v2 & v1))
                {
                  sub_1B81A304C(319, &qword_1EBA7CF20, type metadata accessor for SGBannerViewModel, MEMORY[0x1E6981790]);
                  OUTLINED_FUNCTION_58_0();
                  if (!(!v2 & v1))
                  {
                    OUTLINED_FUNCTION_65_0(v5, &qword_1EBA7CF28, MEMORY[0x1E69E7DE0]);
                    OUTLINED_FUNCTION_58_0();
                    if (!(!v2 & v1))
                    {
                      OUTLINED_FUNCTION_65_0(v6, &qword_1EDC8AF60, MEMORY[0x1E69E6370]);
                      OUTLINED_FUNCTION_58_0();
                      if (!(!v2 & v1))
                      {
                        sub_1B81A30B0(319, &qword_1EBA7CF30, &qword_1EBA7CDC8, &unk_1B81FD328, MEMORY[0x1E6981790]);
                        if (v8 > 0x3F)
                        {
                          return v7;
                        }

                        else
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
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

  return v0;
}

void sub_1B81A2F28()
{
  if (!qword_1EDC8AF40)
  {
    sub_1B8189AF0(255, &qword_1EDC8AF50);
    v0 = sub_1B81F91F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC8AF40);
    }
  }
}

void sub_1B81A2FB8()
{
  if (!qword_1EDC8AF68)
  {
    type metadata accessor for BannerUpdateViewModel(255);
    sub_1B81A1B48(qword_1EDC8B0B0, type metadata accessor for BannerUpdateViewModel);
    v0 = sub_1B81F8278();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC8AF68);
    }
  }
}

void sub_1B81A304C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B81A30B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B81A314C()
{
  sub_1B81F8178();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SGBannerContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIUserInterfaceIdiom();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B81A3218()
{
  result = qword_1EBA7CF38;
  if (!qword_1EBA7CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CF40);
    sub_1B81A3B24(&qword_1EBA7CF48, &unk_1EBA7CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CF38);
  }

  return result;
}

unint64_t sub_1B81A32C8()
{
  result = qword_1EDC8A998;
  if (!qword_1EDC8A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CF58);
    sub_1B81A23F8();
    sub_1B81A2510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A998);
  }

  return result;
}

void sub_1B81A3354(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B81A33B0()
{
  result = qword_1EBA7CF68;
  if (!qword_1EBA7CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CF68);
  }

  return result;
}

unint64_t sub_1B81A3404()
{
  result = qword_1EBA7CF70;
  if (!qword_1EBA7CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7CF70);
  }

  return result;
}

unint64_t sub_1B81A3458()
{
  result = qword_1EBA7D038;
  if (!qword_1EBA7D038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D000);
    sub_1B81A3B24(&qword_1EBA7D040, &unk_1EBA7D008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D038);
  }

  return result;
}

unint64_t sub_1B81A3510()
{
  result = qword_1EBA7D048;
  if (!qword_1EBA7D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CFF0);
    sub_1B81A359C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D048);
  }

  return result;
}

unint64_t sub_1B81A359C()
{
  result = qword_1EBA7D050;
  if (!qword_1EBA7D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D010);
    sub_1B81A3458();
    sub_1B81A3B24(&qword_1EBA7D040, &unk_1EBA7D008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D050);
  }

  return result;
}

uint64_t sub_1B81A3654()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_97();
  return sub_1B819A95C();
}

unint64_t sub_1B81A36A0()
{
  result = qword_1EBA7D068;
  if (!qword_1EBA7D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CFD8);
    sub_1B81A1B48(&qword_1EBA7D070, type metadata accessor for PrimaryActionButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D068);
  }

  return result;
}

uint64_t sub_1B81A375C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_97();

  return sub_1B819D258(v1 + v3, a1);
}

uint64_t sub_1B81A37BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_27(a1, a2, a3);
  OUTLINED_FUNCTION_7_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return v3;
}

uint64_t sub_1B81A3804(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_27(a1, a2, a3);
  OUTLINED_FUNCTION_7_2();
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  return v3;
}

unint64_t sub_1B81A384C()
{
  result = qword_1EDC8AA30;
  if (!qword_1EDC8AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D0A8);
    sub_1B81A38D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA30);
  }

  return result;
}

unint64_t sub_1B81A38D8()
{
  result = qword_1EDC8AA58;
  if (!qword_1EDC8AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D0A0);
    sub_1B81A3B24(&qword_1EDC8A920, &unk_1EBA7D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA58);
  }

  return result;
}

uint64_t sub_1B81A3990(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1B81A39E8()
{
  result = qword_1EDC8AA68;
  if (!qword_1EDC8AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D0F0);
    sub_1B81A3A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA68);
  }

  return result;
}

unint64_t sub_1B81A3A74()
{
  result = qword_1EDC8A930;
  if (!qword_1EDC8A930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D0F8);
    sub_1B81A3B24(&qword_1EDC8A910, &unk_1EBA7D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A930);
  }

  return result;
}

uint64_t sub_1B81A3B24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_130(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B81A3B70()
{
  result = qword_1EDC8A9D0;
  if (!qword_1EDC8A9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D100);
    sub_1B81A39E8();
    sub_1B81A3A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9D0);
  }

  return result;
}

void sub_1B81A3BFC()
{
  type metadata accessor for SGBannerContainerView(0);
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = [v1 suggestionPrimaryAction];
    [v2 execute];

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    v4 = (*(v3 + 728))();
    if (v4)
    {
      v5 = v4;
      [v4 execute];
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDC0);
      sub_1B81F8D58();
      sub_1B81F8D68();
    }
  }
}

unint64_t sub_1B81A3DF0()
{
  result = qword_1EDC8AAB0;
  if (!qword_1EDC8AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D138);
    sub_1B81A1B48(qword_1EDC8AB58, type metadata accessor for TitleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AAB0);
  }

  return result;
}

unint64_t sub_1B81A3EAC()
{
  result = qword_1EDC8AC88;
  if (!qword_1EDC8AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AC88);
  }

  return result;
}

unint64_t sub_1B81A3F00()
{
  result = qword_1EDC8BF90[0];
  if (!qword_1EDC8BF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC8BF90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_0(unint64_t *a1)
{

  return sub_1B81A3B24(a1, v1);
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1B81F8018();
}

void OUTLINED_FUNCTION_65_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981790];

  sub_1B81A3354(319, a2, a3, v4);
}

void OUTLINED_FUNCTION_69()
{

  SGBannerContainerView.init(_:store:updateBannerView:)();
}

void OUTLINED_FUNCTION_70()
{
  v2 = *(v1 - 96);
  *v0 = *(v1 - 104);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_77()
{

  return sub_1B81F8718();
}

void OUTLINED_FUNCTION_83()
{
  v7 = v1 + *(*(v2 - 224) + 36);
  *v7 = v0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1B81F8D58();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return BannerUpdateViewModel.init(updateView:)();
}

void OUTLINED_FUNCTION_99()
{

  SGBannerContainerView.init(_:store:updateBannerView:)();
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_1B81F8718();
}

void OUTLINED_FUNCTION_107()
{
  v4 = v3 + *(v2 + 36);
  *v4 = v0;
  *(v4 + 8) = v1;
  *(v4 + 16) = 256;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_113()
{

  return sub_1B81F8D68();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_140()
{

  return sub_1B81A33B0();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_142()
{
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B81A495C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B81A49BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81A4A18(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B81A4A7C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_suggestionDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

id SGContactSuggestion.__allocating_init(sgContact:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_12();
  return SGContactSuggestion.init(sgContact:)(v2);
}

id SGContactSuggestion.init(sgContact:)(void *a1)
{
  v3 = sub_1B81F8058();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v7 = &v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_kStringKeyLabeledValueFormat];
  *v7 = 0xD00000000000002BLL;
  v7[1] = 0x80000001B82011F0;
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_contactViewController] = 0;
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact] = a1;
  v8 = a1;
  sub_1B8186FE0();

  sub_1B81F8038();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_logger], v6, v3);
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_bannerForVisionDevice] = v10 == 6;
  v11 = type metadata accessor for SGContactSuggestion();
  v14.receiver = v1;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_1B81A4D38()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact);
  if (!OUTLINED_FUNCTION_18_3())
  {
    if (!currentUIContext())
    {
      if ([v1 state] != 1)
      {
        v71 = [v1 contact];
        sub_1B81CCA54(v71, &v95);

        sub_1B81CCD40(v97);
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_13_2(v72, v73, v74, v75, v76, v77, v78, v79, v89, v95);
        v80 = sub_1B81A68D4(v99);
        OUTLINED_FUNCTION_11_3(v80, v81, v82, v83, v84, v85, v86, v87, v94, v95, *(&v95 + 1), v96, v97, v98);
        return OUTLINED_FUNCTION_8_2();
      }

      OUTLINED_FUNCTION_0_2();
      sub_1B81871D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1B81FD1B0;
      v34 = MEMORY[0x1E69E65A8];
      *(v33 + 56) = MEMORY[0x1E69E6530];
      *(v33 + 64) = v34;
      *(v33 + 32) = 1;
      sub_1B81F8F68();
      OUTLINED_FUNCTION_3_4();
      goto LABEL_18;
    }

    v2 = [v1 contact];
    sub_1B81CCA54(v2, &v95);

    v3 = [v1 state];
    v4 = [v1 contact];
    v5 = [v4 name];

    if (v3 == 1)
    {
      if (v5)
      {
        OUTLINED_FUNCTION_14_3();
        sub_1B81871D4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1B81FC7C0;
        OUTLINED_FUNCTION_13_2(v14, v15, v16, v17, v18, v19, v20, v21, v89, v95);
        v22 = MEMORY[0x1E69E6158];
        *(v23 + 56) = MEMORY[0x1E69E6158];
        v24 = sub_1B81A6928();
        OUTLINED_FUNCTION_10_2(v24, v25, v26, v27, v28, v29, v30, v31, v90, v95);
        v32 = [v5 fullName];
LABEL_17:
        v51 = v32;
        v52 = sub_1B81F8F98();
        v54 = v53;

        *(v14 + 96) = v22;
        *(v14 + 104) = v4;
        *(v14 + 72) = v52;
        *(v14 + 80) = v54;
        v55 = sub_1B81A68D4(v99);
        OUTLINED_FUNCTION_11_3(v55, v56, v57, v58, v59, v60, v61, v62, v91, v95, *(&v95 + 1), v96, v97, v98);
        sub_1B81F8F68();
        OUTLINED_FUNCTION_3_4();

LABEL_18:

        return OUTLINED_FUNCTION_8_2();
      }
    }

    else if (v5)
    {
      OUTLINED_FUNCTION_0_2();
      sub_1B81871D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B81FC7C0;
      OUTLINED_FUNCTION_13_2(v14, v35, v36, v37, v38, v39, v40, v41, v89, v95);
      v22 = MEMORY[0x1E69E6158];
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v43 = sub_1B81A6928();
      OUTLINED_FUNCTION_10_2(v43, v44, v45, v46, v47, v48, v49, v50, v92, v95);
      v32 = [v5 fullName];
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_13_2(v6, v7, v8, v9, v10, v11, v12, v13, v89, v95);
    v63 = sub_1B81A68D4(v99);
    OUTLINED_FUNCTION_11_3(v63, v64, v65, v66, v67, v68, v69, v70, v93, v95, *(&v95 + 1), v96, v97, v98);
    return OUTLINED_FUNCTION_8_2();
  }

  if ([v1 state] == 1)
  {
    goto LABEL_3;
  }

  if (OUTLINED_FUNCTION_18_3() == 2)
  {
    OUTLINED_FUNCTION_14_3();
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_18_3() == 1 || OUTLINED_FUNCTION_18_3() == 3)
  {
LABEL_3:
    OUTLINED_FUNCTION_0_2();
LABEL_10:
    sub_1B81871D4();
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_8_2();
}

id sub_1B81A5168()
{
  sub_1B8189AF0(0, &unk_1EBA7D8C0);
  v1 = sub_1B81CBE80();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  return sub_1B81A5204(v1, v3, sub_1B81A697C, v4);
}

id sub_1B81A5204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B81F8F58();

  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B81A52E8;
  v10[3] = &block_descriptor_17;
  v7 = _Block_copy(v10);
  v8 = [swift_getObjCClassFromMetadata() actionWithTitle:v6 handler:v7];

  _Block_release(v7);

  return v8;
}

void sub_1B81A52E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B81A53B4(const char *a1, char a2)
{
  v5 = v2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (v6)
  {
    v7 = v6;
    v8 = *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_contactViewController];
    if (v8)
    {
      v12 = v8;
      v9 = sub_1B81F8028();
      v10 = sub_1B81F91A8();
      if (OUTLINED_FUNCTION_7_3(v10))
      {
        v11 = OUTLINED_FUNCTION_6_1();
        *v11 = 0;
        _os_log_impl(&dword_1B8182000, v9, v10, a1, v11, 2u);
        OUTLINED_FUNCTION_5_1();
      }

      [v5 confirm:a2 & 1 suggestion:*&v5[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact] completion:0];
      [v7 suggestion:v5 actionFinished:1];
      [v7 dismissViewController_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B81A5564(void *a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact];
  v5 = [v4 cnContactIdentifier];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B81FC210;
  *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D200);
  v8 = sub_1B81F90A8();

  aBlock[0] = 0;
  v9 = [a1 unifiedContactWithIdentifier:v6 keysToFetch:v8 error:aBlock];

  if (!v9)
  {
    v13 = aBlock[0];
    OUTLINED_FUNCTION_15_1();
    v14 = sub_1B81F7988();

    swift_willThrow();
LABEL_7:
    v12 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v10 = aBlock[0];
  [v9 mutableCopy];

  sub_1B81F9228();
  swift_unknownObjectRelease();
  sub_1B8189AF0(0, &qword_1EBA7D208);
  v11 = 0;
  if (swift_dynamicCast())
  {
    v12 = v51;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  if (([v4 updatedFields] & 1) != 0 && v12)
  {
    v15 = objc_opt_self();
    v16 = [v4 contact];
    v17 = [v15 contactFromSuggestedContact_];

    v18 = [v17 givenName];
    if (!v18)
    {
      sub_1B81F8F98();
      v18 = sub_1B81F8F58();
    }

    [v12 setGivenName_];

    v19 = [v4 contact];
    v20 = [v15 contactFromSuggestedContact_];

    v21 = [v20 familyName];
    if (!v21)
    {
      sub_1B81F8F98();
      v21 = sub_1B81F8F58();
    }

    [v12 setFamilyName_];

    v11 = v49;
  }

  if (([v4 updatedFields] & 2) != 0)
  {
    v22 = sub_1B81A702C([v4 contact]);
    if (v23)
    {
      v24 = v23;
      if (v12)
      {
        v25 = v22;
        v26 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
        v27 = sub_1B81A67AC(v25, v24, 0);
        if (v11)
        {
          v28 = sub_1B81F8028();
          v29 = sub_1B81F9188();
          if (OUTLINED_FUNCTION_7_3(v29))
          {
            v30 = OUTLINED_FUNCTION_6_1();
            *v30 = 0;
            _os_log_impl(&dword_1B8182000, v28, v29, "SGContactSuggestion: Encountered exception while fetching photo data from photoPath", v30, 2u);
            OUTLINED_FUNCTION_5_1();
          }
        }

        else
        {
          v28 = v27;
          [v12 setImageData_];
        }
      }

      else
      {
      }
    }
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  v32 = v31;
  if (v12)
  {
    [v31 updateContact_];
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 1;
  aBlock[0] = 0;
  v34 = [a1 executeSaveRequest:v32 error:aBlock];
  if (v34)
  {
    v35 = aBlock[0];
  }

  else
  {
    v36 = aBlock[0];
    OUTLINED_FUNCTION_15_1();
    v37 = sub_1B81F7988();

    swift_willThrow();
    v38 = v37;
    v39 = sub_1B81F8028();
    v40 = sub_1B81F91A8();

    if (os_log_type_enabled(v39, v40))
    {
      v50 = v2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v37;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1B8182000, v39, v40, "SGContactSuggestion: error saving contact %@", v41, 0xCu);
      sub_1B81A7248(v42);
      OUTLINED_FUNCTION_4_1();
      v2 = v50;
      OUTLINED_FUNCTION_5_1();
    }

    else
    {
    }

    *(v33 + 16) = 0;
  }

  v45 = swift_allocObject();
  v45[2] = v2;
  v45[3] = v33;
  aBlock[4] = sub_1B81A709C;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B81A5C0C;
  aBlock[3] = &block_descriptor_1;
  v46 = _Block_copy(aBlock);
  v47 = v2;

  [v47 confirm:v34 suggestion:v4 completion:v46];

  _Block_release(v46);
}

void sub_1B81A5C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1B81A5C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact);
  v2 = [v1 contact];
  if (!OUTLINED_FUNCTION_17_3())
  {
    goto LABEL_11;
  }

  if ([v1 state] == 1 || OUTLINED_FUNCTION_17_3() == 2)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_17_3() != 1)
  {
    if (OUTLINED_FUNCTION_17_3() == 3)
    {
      sub_1B81871D4();
      OUTLINED_FUNCTION_3_4();

      return OUTLINED_FUNCTION_8_2();
    }

LABEL_11:
    v7 = [v1 contact];
    sub_1B81CCA54(v7, &v8);

    v9 = v8;
    sub_1B81A68D4(&v9);
    return OUTLINED_FUNCTION_8_2();
  }

  v3 = [v2 name];
  if (!v3)
  {
LABEL_4:

    return OUTLINED_FUNCTION_8_2();
  }

  result = [v2 name];
  if (result)
  {
    v5 = result;
    v6 = [result fullName];

    sub_1B81F8F98();
    OUTLINED_FUNCTION_3_4();

    return OUTLINED_FUNCTION_8_2();
  }

  __break(1u);
  return result;
}

id sub_1B81A5E7C()
{
  sub_1B8189AF0(0, &unk_1EBA7D8C0);
  v1 = [*&v0[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact] contact];
  sub_1B81CB8BC(v1);
  v3 = v2;
  v5 = v4;

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = v0;
  return sub_1B81A5204(v3, v5, sub_1B81A72B0, v6);
}

uint64_t sub_1B81A5F84()
{
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_bannerForVisionDevice))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

Class sub_1B81A5FC4()
{
  sub_1B81A702C([*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact) contact]);
  if (v1)
  {
    sub_1B8189AF0(0, &qword_1EDC8AF10);
    OUTLINED_FUNCTION_12();
    return sub_1B81A605C();
  }

  else
  {

    return SGContactSuggestion.contactImage()().super.isa;
  }
}

id sub_1B81A605C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B81F8F58();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

unint64_t sub_1B81A6114()
{
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_bannerForVisionDevice))
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B81A61A0()
{
  sub_1B8186FD4();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81A6264(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B81F8F58();

  return v5;
}

id sub_1B81A62D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1B81F9348())
    {
      return 0;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  return sub_1B81871D4();
}

uint64_t sub_1B81A6350(unint64_t a1)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_3_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B81FD1B0;
  v3 = sub_1B8189548(a1);
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_8_2();
  sub_1B81F8F68();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81A64C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  sub_1B81F90C8();
  v6 = a1;
  v7 = OUTLINED_FUNCTION_15_1();
  a4(v7);

  v8 = sub_1B81F8F58();

  return v8;
}

id sub_1B81A657C(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_1B81F8F58();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

id sub_1B81A65D4()
{
  ContactSuggestion = getContactSuggestion(*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact));

  return ContactSuggestion;
}

id SGContactSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGContactSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGContactSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B81A67AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B81F8F58();

  v10[0] = 0;
  v6 = [v3 initWithContentsOfFile:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B81F7988();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for SGContactSuggestion()
{
  result = qword_1EDC8BCB0;
  if (!qword_1EDC8BCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B81A6928()
{
  result = qword_1EBA7D180;
  if (!qword_1EBA7D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D180);
  }

  return result;
}

void sub_1B81A697C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 retrieveContactStore];
  v4 = *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact);
  if ([v4 state] == 2 && objc_msgSend(v4, sel_updatedFields) == 3)
  {
    OUTLINED_FUNCTION_2_3();
    (*(v5 + 216))(v3);
  }

  sub_1B81A702C([v4 contact]);
  if (v6)
  {
    OUTLINED_FUNCTION_3_4();
    v7 = [v4 contact];
    v8 = [v2 contactFromSuggestedContact_];

    [v8 mutableCopy];
    sub_1B81F9228();
    swift_unknownObjectRelease();
    sub_1B8189AF0(0, &qword_1EBA7D208);
    swift_dynamicCast();
    v9 = v47;
    v10 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    v11 = OUTLINED_FUNCTION_8_2();
    v13 = sub_1B81A67AC(v11, v12, 0);
    [v47 setImageData_];
  }

  else
  {
    v13 = [v4 contact];
    v9 = [v2 contactFromSuggestedContact_];
  }

  if ([v4 state] == 1)
  {
    if (!v9)
    {
      v31 = sub_1B81F8028();
      v32 = sub_1B81F91A8();
      if (OUTLINED_FUNCTION_7_3(v32))
      {
        *OUTLINED_FUNCTION_6_1() = 0;
        OUTLINED_FUNCTION_1_1();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      goto LABEL_30;
    }

    v14 = [objc_opt_self() viewControllerForUnknownContact_];
    v15 = sub_1B81F8028();
    v16 = sub_1B81F91A8();
    if (OUTLINED_FUNCTION_7_3(v16))
    {
      v17 = OUTLINED_FUNCTION_6_1();
      *v17 = 0;
      _os_log_impl(&dword_1B8182000, v15, v16, "SGContactSuggestion: Viewcontroller for presenting new contact suggestion initialized", v17, 2u);
      OUTLINED_FUNCTION_5_1();
    }

LABEL_18:

    if (v14)
    {
      [v14 setContactStore_];
      [v14 setDelegate_];
      [v14 setModalPresentationStyle_];
      OUTLINED_FUNCTION_2_3();
      v28 = (*(v27 + 128))();
      if (!v28)
      {

        goto LABEL_29;
      }

      [v28 presentViewController_];

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if ([v4 state] != 2)
  {
    OUTLINED_FUNCTION_2_3();
    v30 = (*(v29 + 128))();
    if (v30)
    {
      [v30 suggestion:v1 actionFinished:0];

LABEL_23:
      swift_unknownObjectRelease();
LABEL_29:
      v3 = v9;
LABEL_30:

      return;
    }

LABEL_24:

    goto LABEL_29;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v19 = [v4 cnContactIdentifier];
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B81FC210;
    *(v21 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D200);
    v22 = sub_1B81F90A8();

    v48[0] = 0;
    v23 = [v18 unifiedContactWithIdentifier:v20 keysToFetch:v22 error:v48];

    if (!v23)
    {
      v38 = v48[0];
      OUTLINED_FUNCTION_15_1();
      v39 = sub_1B81F7988();

      swift_willThrow();
      v40 = sub_1B81F8028();
      v41 = sub_1B81F9188();
      if (OUTLINED_FUNCTION_7_3(v41))
      {
        *OUTLINED_FUNCTION_6_1() = 0;
        OUTLINED_FUNCTION_1_1();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v3 = v40;
      goto LABEL_30;
    }

    if (v9)
    {
      v24 = v48[0];
      v14 = [v2 viewControllerForUpdatingContact:v23 additionalContact:v9];
      v15 = sub_1B81F8028();
      v25 = sub_1B81F91A8();
      if (OUTLINED_FUNCTION_7_3(v25))
      {
        v26 = OUTLINED_FUNCTION_6_1();
        *v26 = 0;
        _os_log_impl(&dword_1B8182000, v15, v25, "SGContactSuggestion: Viewcontroller for presenting contact suggestion update initialized", v26, 2u);
        OUTLINED_FUNCTION_5_1();
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B81A702C(void *a1)
{
  v2 = [a1 photoPath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B81F8F98();

  return v3;
}

uint64_t sub_1B81A709C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = a1;
  v6 = sub_1B81F8028();
  v7 = sub_1B81F9188();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    if (a1)
    {
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 4) = v11;
    *v9 = v12;
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_1B81A7248(v9);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_1();
  }

  v18 = swift_beginAccess();
  *(v4 + 16) = 0;
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v18);
  if (result)
  {
    v20 = result;
    swift_beginAccess();
    [v20 suggestion:v3 actionFinished:*(v4 + 16)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B81A7248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B81A72B0()
{
  v1 = *(v0 + 16);
  v2 = sub_1B81F8028();
  v3 = sub_1B81F91A8();
  if (OUTLINED_FUNCTION_7_3(v3))
  {
    *OUTLINED_FUNCTION_6_1() = 0;
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v9 = [v1 confirm:0 suggestion:*(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact) completion:0];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v9);
  if (result)
  {
    [result suggestion:v1 actionFinished:1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B81A73D0()
{
  result = sub_1B81F8058();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x1B8CBBAE0);
}

void OUTLINED_FUNCTION_5_1()
{

  JUMPOUT(0x1B8CBBAE0);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_7_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  *(v10 + 64) = a1;
  *(v10 + 32) = a10;
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, __int128 a14)
{
  a14 = a12;

  return sub_1B81A68D4(&a14);
}

id OUTLINED_FUNCTION_16_3()
{

  return sub_1B81871D4();
}

id OUTLINED_FUNCTION_17_3()
{

  return [v0 (v1 + 296)];
}

id OUTLINED_FUNCTION_18_3()
{

  return [v0 (v1 + 296)];
}

void sub_1B81A7ACC(uint64_t a1@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D390);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v84 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D398);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_105();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73_0();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_119();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v89 = v16;
  v17 = OUTLINED_FUNCTION_37_0();
  v18 = type metadata accessor for IconView(v17);
  v19 = v1 + *(v18 + 20);
  v20 = type metadata accessor for SGBannerViewModel(0);
  v21 = v19;
  v22 = &v19[*(v20 + 48)];
  if (v22[2] == 1)
  {
    v86 = v20;
    v87 = v21;
    *v3 = sub_1B81F8EB8();
    v3[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D420);
    v24 = v1;
    sub_1B81A8340();
    v25 = sub_1B81F8E98();
    v83 = &v83;
    MEMORY[0x1EEE9AC00](v25);
    v91 = v8;
    *(&v83 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D410);
    v90 = v11;
    v84 = v4;
    sub_1B81B5290(&unk_1EDC8A5D8);
    v92 = a1;
    sub_1B81A8E34();
    sub_1B819F21C();
    sub_1B8192D84(v3, &qword_1EBA7D3A0);
    v26 = sub_1B81F8908();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    v27 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D400) + 36));
    *v27 = v26;
    OUTLINED_FUNCTION_10_3(v27);
    v28 = sub_1B81F88E8();
    sub_1B81F8148();
    v29 = (v2 + *(v88 + 36));
    *v29 = v28;
    OUTLINED_FUNCTION_51_1(v29, v30, v31, v32, v33);
    v34 = sub_1B81F8E98();
    MEMORY[0x1EEE9AC00](v34);
    *(&v83 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3F0);
    sub_1B81A8C64();
    sub_1B81A8B4C();
    v35 = v89;
    sub_1B819F21C();
    sub_1B8192D84(v2, &qword_1EBA7D3A8);
    sub_1B81A37BC(v35, v84, &qword_1EBA7D3B0);
    swift_storeEnumTagMultiPayload();
    sub_1B81A8AC0();
    OUTLINED_FUNCTION_37_1();
    sub_1B81A8F78(v36);
LABEL_5:
    sub_1B81F8718();
    OUTLINED_FUNCTION_96();
    sub_1B8192D84(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3B8);
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    OUTLINED_FUNCTION_125_0();
    return;
  }

  if (v22[1] == 1)
  {
    v86 = v20;
    v87 = v21;
    v92 = a1;
    v89 = sub_1B81F8528();
    v90 = v11;
    v100[0] = 1;
    v37 = *(v22 + 6);
    v38 = v1;
    v39 = *v1;
    v40 = *(v22 + 2);
    v41 = *(v1 + *(v18 + 24));
    v42 = v4;
    v44 = *(v22 + 9);
    v43 = *(v22 + 10);
    objc_opt_self();

    v91 = v8;
    v45 = v37;
    v46 = v39;
    v47 = OUTLINED_FUNCTION_52();
    v49 = [v47 v48];
    [v49 scale];
    v51 = v50;

    v94[0] = v89;
    v94[1] = 0;
    LOBYTE(v94[2]) = 1;
    v94[3] = v37;
    v94[4] = v51;
    v94[5] = v46;
    v94[6] = v40;
    LOBYTE(v94[7]) = v41;
    v94[8] = v44;
    v94[9] = v43;
    v52 = sub_1B81F8E98();
    MEMORY[0x1EEE9AC00](v52);
    *(&v83 - 2) = v38;
    v53 = OUTLINED_FUNCTION_85();
    __swift_instantiateConcreteTypeFromMangledNameV2(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3C8);
    OUTLINED_FUNCTION_34_1();
    sub_1B81B5290(v54);
    sub_1B81A87AC();
    sub_1B819F21C();
    memcpy(v96, v94, sizeof(v96));
    OUTLINED_FUNCTION_41();
    sub_1B8192D84(v55, v56);
    memcpy(v97, v101, sizeof(v97));
    LOBYTE(v43) = sub_1B81F8908();
    sub_1B81F8148();
    v88 = v58;
    v89 = v57;
    v86 = v60;
    v87 = v59;
    memcpy(v100, v97, 0x81uLL);
    LOBYTE(v94[0]) = 0;
    LOBYTE(v38) = sub_1B81F88E8();
    sub_1B81F8148();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v101[0] = 0;
    LOBYTE(v49) = sub_1B81F88F8();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    v95 = 0;
    memcpy(v94, v100, 0x88uLL);
    LOBYTE(v94[17]) = v43;
    v94[18] = v89;
    v94[19] = v88;
    v94[20] = v87;
    v94[21] = v86;
    LOBYTE(v94[22]) = 0;
    LOBYTE(v94[23]) = v38;
    v94[24] = v62;
    v94[25] = v64;
    v94[26] = v66;
    v94[27] = v68;
    LOBYTE(v94[28]) = 0;
    *(&v94[28] + 1) = *v99;
    HIDWORD(v94[28]) = *&v99[3];
    LOBYTE(v94[29]) = v49;
    HIDWORD(v94[29]) = *&v98[3];
    *(&v94[29] + 1) = *v98;
    v94[30] = v51;
    v94[31] = v40;
    v94[32] = v5;
    v94[33] = v6;
    LOBYTE(v94[34]) = 0;
    sub_1B8186FA4();

    v69 = OUTLINED_FUNCTION_120_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v69);
    sub_1B81A8864();
    v70 = v84;
    OUTLINED_FUNCTION_85();
    sub_1B81F8B58();

    memcpy(v101, v94, 0x111uLL);
    sub_1B8192D84(v101, &qword_1EBA7D3D0);
    sub_1B81A37BC(v70, v42, &qword_1EBA7D390);
    swift_storeEnumTagMultiPayload();
    sub_1B81A8AC0();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_96();
    sub_1B81A8F78(v71);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3B8);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_125_0();

  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
}

void sub_1B81A8340()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v54 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D820);
  v4 = OUTLINED_FUNCTION_21(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_2();
  v53 = v5 - v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D828);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v52 = v11 - v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v51 - v14;
  v16 = type metadata accessor for IconView(0);
  v17 = v1 + *(v16 + 20);
  v18 = &v17[*(type metadata accessor for SGBannerViewModel(0) + 48)];
  v19 = *(v18 + 6);
  v20 = *v1;
  v21 = *(v18 + 2);
  v22 = *(v1 + *(v16 + 24));
  v24 = *(v18 + 9);
  v23 = *(v18 + 10);
  objc_opt_self();
  OUTLINED_FUNCTION_15_1();

  v25 = v20;
  v26 = v19;
  v27 = OUTLINED_FUNCTION_85();
  v29 = [v27 v28];
  [v29 scale];
  v31 = v30;

  v56[0] = v19;
  v56[1] = v31;
  v56[2] = v25;
  v56[3] = v21;
  LOBYTE(v56[4]) = v22;
  v56[5] = v24;
  v56[6] = v23;
  sub_1B8186FB0();
  sub_1B81B5354();

  sub_1B81F8B58();

  v32 = v56[0];

  v33 = *(v18 + 5);
  v35 = *(v18 + 7);
  v34 = *(v18 + 8);

  v36 = v33;
  v37 = OUTLINED_FUNCTION_85();
  v39 = [v37 v38];
  [v39 scale];
  v41 = v40;

  v55[0] = v33;
  v55[1] = v41;
  v55[2] = v25;
  v55[3] = v21;
  LOBYTE(v55[4]) = v22;
  v55[5] = v35;
  v55[6] = v34;
  *&v55[7] = *(v18 + 24);
  sub_1B8186FBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D830);
  sub_1B81B53A8();
  v42 = v51[1];
  OUTLINED_FUNCTION_133();
  sub_1B81F8B58();

  memcpy(v56, v55, 0x48uLL);
  sub_1B8192D84(v56, &qword_1EBA7D830);
  v43 = v52;
  sub_1B81A37BC(v15, v52, &qword_1EBA7D828);
  sub_1B81A37BC(v42, v53, &qword_1EBA7D820);
  sub_1B81A37BC(v43, v54, &qword_1EBA7D828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D840);
  OUTLINED_FUNCTION_51();
  sub_1B81A37BC(v44, v45, v46);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v47, v48);
  sub_1B8192D84(v15, &qword_1EBA7D828);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v49, v50);
  sub_1B8192D84(v43, &qword_1EBA7D828);
  OUTLINED_FUNCTION_29();
}

uint64_t sub_1B81A8700@<X0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for IconView(0);
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8EB8();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_128_0();
  memcpy(a2, __dst, 0x50uLL);
  v3 = v5[6];
  a2[5] = v5[5];
  a2[6] = v3;
  a2[7] = v5[7];
  return sub_1B81A37BC(__dst, v5, &qword_1EBA7D3C0);
}

unint64_t sub_1B81A87AC()
{
  result = qword_1EDC8A7A0;
  if (!qword_1EDC8A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3C8);
    sub_1B81B5290(&unk_1EDC8A5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7A0);
  }

  return result;
}

unint64_t sub_1B81A8864()
{
  result = qword_1EDC8A728;
  if (!qword_1EDC8A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3D0);
    sub_1B81A88F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A728);
  }

  return result;
}

unint64_t sub_1B81A88F0()
{
  result = qword_1EDC8A778;
  if (!qword_1EDC8A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3D8);
    sub_1B81A897C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A778);
  }

  return result;
}

unint64_t sub_1B81A897C()
{
  result = qword_1EDC8A808;
  if (!qword_1EDC8A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3E0);
    sub_1B81A8A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A808);
  }

  return result;
}

unint64_t sub_1B81A8A08()
{
  result = qword_1EDC8A6A8;
  if (!qword_1EDC8A6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3E8);
    sub_1B81A87AC();
    sub_1B81B5290(&unk_1EDC8A5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6A8);
  }

  return result;
}

unint64_t sub_1B81A8AC0()
{
  result = qword_1EDC8A680;
  if (!qword_1EDC8A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3B0);
    sub_1B81A8B4C();
    sub_1B81A8C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A680);
  }

  return result;
}

unint64_t sub_1B81A8B4C()
{
  result = qword_1EDC8A6F8;
  if (!qword_1EDC8A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3F0);
    sub_1B81A8BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6F8);
  }

  return result;
}

unint64_t sub_1B81A8BD8()
{
  result = qword_1EDC8A720;
  if (!qword_1EDC8A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3F8);
    sub_1B81A8C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A720);
  }

  return result;
}

unint64_t sub_1B81A8C64()
{
  result = qword_1EDC8A770;
  if (!qword_1EDC8A770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3A8);
    sub_1B81A8CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A770);
  }

  return result;
}

unint64_t sub_1B81A8CF0()
{
  result = qword_1EDC8A7F8;
  if (!qword_1EDC8A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D400);
    sub_1B81A8D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7F8);
  }

  return result;
}

unint64_t sub_1B81A8D7C()
{
  result = qword_1EDC8A690;
  if (!qword_1EDC8A690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D408);
    sub_1B81A8E34();
    sub_1B81B5290(&unk_1EDC8A5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A690);
  }

  return result;
}

unint64_t sub_1B81A8E34()
{
  result = qword_1EDC8A738;
  if (!qword_1EDC8A738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D410);
    sub_1B81A8EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A738);
  }

  return result;
}

unint64_t sub_1B81A8EC0()
{
  result = qword_1EDC8A790;
  if (!qword_1EDC8A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D418);
    sub_1B81B5290(&unk_1EDC8A5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A790);
  }

  return result;
}

unint64_t sub_1B81A8F78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_94(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_76(0, v4);
    v2();
    sub_1B81B4AB8(&unk_1EDC8A938);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1B81A901C()
{
  type metadata accessor for IconView(0);
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8EB8();
  OUTLINED_FUNCTION_77_0();
  sub_1B81F8218();
  v0 = OUTLINED_FUNCTION_88();
  sub_1B81A37BC(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D418);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_122_0(v3, v6, v7, v8);
  v4 = sub_1B81F88F8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D410);
  OUTLINED_FUNCTION_52_1();
  *v5 = v4;
  OUTLINED_FUNCTION_10_3(v5);
}

void sub_1B81A9124()
{
  v0 = sub_1B81F88F8();
  type metadata accessor for IconView(0);
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8148();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_88();
  sub_1B81A37BC(v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3F8);
  OUTLINED_FUNCTION_52_1();
  *v12 = v0;
  *(v12 + 8) = v2;
  *(v12 + 16) = v4;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = 0;
  v13 = sub_1B81F88F8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D3F0);
  OUTLINED_FUNCTION_52_1();
  *v14 = v13;
  OUTLINED_FUNCTION_10_3(v14);
}

void sub_1B81A926C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v75 = v2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_32();
  v70 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D430);
  OUTLINED_FUNCTION_1_0();
  v69 = v5;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  v68 = v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D438);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v73 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49();
  v16 = type metadata accessor for BannerIconSGView(0);
  v17 = v0 + *(v16 + 20);
  v18 = &v17[*(type metadata accessor for SGBannerViewModel(0) + 48)];
  if (v18[2] == 1)
  {
    *v0 = sub_1B81F8EB8();
    v0[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D480);
    sub_1B81A9C50();
    v20 = sub_1B81F8908();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D460);
    OUTLINED_FUNCTION_79_0();
    *v21 = v20;
    OUTLINED_FUNCTION_10_3(v21);
    v22 = sub_1B81F8928();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D458);
    OUTLINED_FUNCTION_79_0();
    *v23 = v22;
    OUTLINED_FUNCTION_10_3(v23);
    v24 = sub_1B81F88F8();
    sub_1B81F8148();
    v25 = v0 + *(v14 + 36);
    *v25 = v24;
    OUTLINED_FUNCTION_51_1(v25, v26, v27, v28, v29);
    sub_1B81A37BC(v0, v13, &qword_1EBA7D448);
    swift_storeEnumTagMultiPayload();
    sub_1B81A9874();
    sub_1B81A9A44();
    OUTLINED_FUNCTION_89_0();
    sub_1B81F8718();
    OUTLINED_FUNCTION_41();
LABEL_11:
    sub_1B8192D84(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D450);
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    OUTLINED_FUNCTION_36();
    return;
  }

  v67 = v10;
  if (v18[1] == 1)
  {
    v32 = *(v18 + 11);
    if (v32)
    {
      v33 = v32;
      v66 = v33;
      sub_1B81F8EB8();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_128_0();
      v34 = v82;
      v64 = v83;
      v65 = v81;
      v35 = v84;
      v62 = v86;
      v63 = v85;
      v61 = sub_1B81F8908();
      sub_1B81F8148();
      v79 = v34;
      v78 = v35;
      v77 = 0;
      v76[0] = v33;
      v76[1] = v65;
      LOBYTE(v76[2]) = v34;
      v76[3] = v64;
      LOBYTE(v76[4]) = v35;
      v76[5] = v63;
      v76[6] = v62;
      LOBYTE(v76[7]) = v61;
      v76[8] = v36;
      v76[9] = v37;
      v76[10] = v38;
      v76[11] = v39;
      LOBYTE(v76[12]) = 0;
      v65 = *sub_1B8186FA4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D470);
      sub_1B81A9B38();
      v40 = v70;
      sub_1B81F8B58();

      memcpy(v80, v76, 0x61uLL);
      sub_1B8192D84(v80, &qword_1EBA7D470);
      v41 = *(v1 + *(v16 + 24));
      OUTLINED_FUNCTION_24_0();
      v43 = (*(v42 + 560))();
      sub_1B81A8F78(&unk_1EDC8A3C0);
      v44 = v68;
      sub_1B81D0698(v41, v43, v71);

      sub_1B8192D84(v40, &qword_1EBA7D428);
      v45 = v72;
      v46 = v73;
      (*(v69 + 32))(v73, v44, v72);
      OUTLINED_FUNCTION_83_0();
      v50 = v45;
    }

    else
    {
      v46 = v73;
      OUTLINED_FUNCTION_82();
    }

    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_1B81A37BC(v46, v13, &qword_1EBA7D438);
    swift_storeEnumTagMultiPayload();
    sub_1B81A9874();
    sub_1B81A9A44();
    OUTLINED_FUNCTION_89_0();
    sub_1B81F8718();
    v30 = v46;
    v31 = &qword_1EBA7D438;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D450);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_36();

  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
}

unint64_t sub_1B81A9874()
{
  result = qword_1EDC8A3B0;
  if (!qword_1EDC8A3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D448);
    sub_1B81A9900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3B0);
  }

  return result;
}

unint64_t sub_1B81A9900()
{
  result = qword_1EDC8A3C8;
  if (!qword_1EDC8A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D458);
    sub_1B81A998C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3C8);
  }

  return result;
}

unint64_t sub_1B81A998C()
{
  result = qword_1EDC8A410;
  if (!qword_1EDC8A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D460);
    sub_1B81B5290(&unk_1EDC8A2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A410);
  }

  return result;
}

unint64_t sub_1B81A9A44()
{
  result = qword_1EDC8A2D8;
  if (!qword_1EDC8A2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D428);
    sub_1B81A8F78(&unk_1EDC8A3C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A2D8);
  }

  return result;
}

unint64_t sub_1B81A9B38()
{
  result = qword_1EDC8A400;
  if (!qword_1EDC8A400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D470);
    sub_1B81A9BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A400);
  }

  return result;
}

unint64_t sub_1B81A9BC4()
{
  result = qword_1EDC8A470;
  if (!qword_1EDC8A470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D478);
    sub_1B819101C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A470);
  }

  return result;
}

void sub_1B81A9C50()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v66 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_105();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7E0);
  OUTLINED_FUNCTION_1_0();
  v61 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v65 = v10 - v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v64 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_55_1();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7F0);
  OUTLINED_FUNCTION_1_0();
  v59 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v62 = v18 - v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31();
  v67 = v21;
  v22 = OUTLINED_FUNCTION_37_0();
  v23 = type metadata accessor for BannerIconSGView(v22);
  v24 = v2 + *(v23 + 20);
  v25 = &v24[*(type metadata accessor for SGBannerViewModel(0) + 48)];
  v26 = *(v25 + 11);
  if (v26 && (v27 = *(v25 + 12)) != 0)
  {
    v57 = v26;
    v54 = v27;
    sub_1B81F8EB8();
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_126_0();
    v71[0] = v57;
    v71[1] = v71[9];
    LOBYTE(v71[2]) = v72;
    v71[3] = v73;
    LOBYTE(v71[4]) = v74;
    *&v71[5] = v75;
    sub_1B8186FB0();
    v56 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D478);
    v58 = v0;
    sub_1B81A9BC4();
    sub_1B81F8B58();

    v29 = *(v2 + *(v23 + 24));
    v30 = *((*MEMORY[0x1E69E7D40] & **v2) + 0x230);
    v31 = v30(v28);
    OUTLINED_FUNCTION_41();
    sub_1B81A8F78(v32);
    sub_1B81D0698(v29, v31, v14);
    OUTLINED_FUNCTION_41();
    sub_1B8192D84(v33, v34);
    v55 = v54;
    sub_1B81F8EB8();
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_126_0();
    v70 = v77;
    v69 = v79;
    v68[0] = v55;
    v68[1] = v76;
    LOBYTE(v68[2]) = v77;
    v68[3] = v78;
    LOBYTE(v68[4]) = v79;
    v35 = *(v25 + 24);
    *&v68[5] = v80;
    *&v68[7] = v35;
    sub_1B8186FBC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D800);
    sub_1B81B52C8();
    OUTLINED_FUNCTION_85();
    sub_1B81F8B58();

    memcpy(v71, v68, 0x48uLL);
    v36 = sub_1B8192D84(v71, &qword_1EBA7D800);
    v37 = v30(v36);
    OUTLINED_FUNCTION_41();
    sub_1B81A8F78(v38);
    sub_1B81D0698(v29, v37, v60);
    OUTLINED_FUNCTION_41();
    sub_1B8192D84(v39, v40);
    v41 = *(v59 + 16);
    v41(v62, v67, v63);
    v42 = *(v61 + 16);
    v42(v65, v64, v56);
    v41(v58, v62, v63);
    v43 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D818) + 48);
    v42(v43, v65, v56);

    v44 = *(v61 + 8);
    v44(v64, v56);
    v45 = *(v59 + 8);
    v45(v67, v63);
    v44(v65, v56);
    v45(v62, v63);
    sub_1B81A3804(v58, v66, &qword_1EBA7D7D0);
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v4);
    OUTLINED_FUNCTION_37();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_37();

    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  }
}

uint64_t sub_1B81AA2E4@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  v6 = a3(0);
  OUTLINED_FUNCTION_8_3();
  result = sub_1B81B09F0();
  *(a4 + *(v6 + 24)) = a2;
  return result;
}

uint64_t sub_1B81AA348()
{
  OUTLINED_FUNCTION_129();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1B81AA398()
{
  OUTLINED_FUNCTION_129();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1B81AA3E8()
{
  sub_1B81B4C40();
  sub_1B81F86D8();
  __break(1u);
}

void sub_1B81AA430()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  v3 = type metadata accessor for TitleView(0);
  OUTLINED_FUNCTION_47_1(*(v3 + 36));
  if (OUTLINED_FUNCTION_130_0() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v4 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v6 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_80();

    v4 = OUTLINED_FUNCTION_102();
  }

  v5(v4);
  OUTLINED_FUNCTION_37();
}

void sub_1B81AA5A8()
{
  OUTLINED_FUNCTION_33();
  v58 = v3;
  sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v56 = v5;
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v55 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D488);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D490);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_111_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4A0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4A8) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v48 = v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4B0) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v47 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4B8) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v46 = v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4C0) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v21);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v54 = v23;
  *v1 = sub_1B81F8528();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA90);
  sub_1B81AAC64();
  sub_1B8186F74();
  OUTLINED_FUNCTION_34_1();
  sub_1B81B5290(v24);

  OUTLINED_FUNCTION_126();
  sub_1B81F8B58();

  v25 = OUTLINED_FUNCTION_8_2();
  sub_1B8192D84(v25, v26);
  v27 = sub_1B81F8E98() & 1;
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = 3;
  }

  KeyPath = swift_getKeyPath();
  sub_1B81A3804(v2, v0, &qword_1EBA7D490);
  v30 = v0 + *(v49 + 36);
  *v30 = KeyPath;
  *(v30 + 8) = v28;
  *(v30 + 16) = v27;
  type metadata accessor for TitleView(0);
  OUTLINED_FUNCTION_24_0();
  v32 = (*(v31 + 560))();
  v33 = sub_1B81B0784();
  sub_1B81D05C4(v32, v49, v33);
  sub_1B8192D84(v0, &qword_1EBA7D498);
  v34 = swift_getKeyPath();
  v35 = OUTLINED_FUNCTION_8_2();
  v36(v35);
  v37 = v48 + *(v51 + 44);
  *v37 = v34;
  *(v37 + 8) = 1;
  LODWORD(v34) = sub_1B81F8788();
  sub_1B81A3804(v48, v47, &qword_1EBA7D4A8);
  *(v47 + *(v50 + 44)) = v34;
  v38 = sub_1B81F85D8();
  sub_1B81A3804(v47, v46, &qword_1EBA7D4B0);
  v39 = (v46 + *(v17 + 44));
  *v39 = v38;
  v39[1] = sub_1B81AB0A4;
  v39[2] = 0;
  LOBYTE(v38) = sub_1B81F88E8();
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v40 = OUTLINED_FUNCTION_120_0();
  sub_1B81A3804(v40, v41, &qword_1EBA7D4B8);
  v42 = (v45 + *(v52 + 44));
  *v42 = v38;
  OUTLINED_FUNCTION_10_3(v42);
  LOBYTE(v38) = sub_1B81F8908();
  sub_1B81AA430();
  sub_1B81F85A8();
  (*(v56 + 8))(v55, v57);
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  sub_1B81A3804(v45, v54, &qword_1EBA7D4C0);
  v43 = (v54 + *(v53 + 36));
  *v43 = v38;
  OUTLINED_FUNCTION_10_3(v43);
  LOBYTE(v38) = sub_1B81F8928();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  sub_1B81A3804(v54, v58, &qword_1EBA7D4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4D0);
  OUTLINED_FUNCTION_79_0();
  *v44 = v38;
  OUTLINED_FUNCTION_10_3(v44);
  OUTLINED_FUNCTION_36();
}

void sub_1B81AAC64()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CAF8);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_105();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB08);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  sub_1B81F7908();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  (*(v22 + 16))(v0, v3);
  v23 = sub_1B81F8AE8();
  v59 = v24;
  v60 = v23;
  v26 = v25;
  v28 = v27;
  type metadata accessor for TitleView(0);
  OUTLINED_FUNCTION_24_0();
  v30 = (*(v29 + 872))();
  if (v30)
  {
    v31 = v30;
    v32 = swift_allocObject();
    v57 = v10;
    *(v32 + 16) = v31;
    v33 = v31;
    v54 = v33;
    sub_1B81F8D88();
    v34 = [v33 title];
    sub_1B81F8F98();
    v56 = v5;

    OUTLINED_FUNCTION_58_1(&unk_1EBA7CB18);
    v55 = v20;
    v35 = v26;
    v36 = v58;
    v10 = v57;
    sub_1B81F8B58();

    v5 = v56;
    (*(v8 + 8))(v1, v6);
    v37 = v36;
    v26 = v35;
    v20 = v55;
    sub_1B81A3804(v37, v55, &qword_1EBA7CB00);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v38, 1, v10);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_90();
  sub_1B81A37BC(v39, v40, v41);
  v42 = v59;
  *v5 = v60;
  *(v5 + 8) = v42;
  v43 = v26 & 1;
  *(v5 + 16) = v43;
  *(v5 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CB10);
  OUTLINED_FUNCTION_90();
  sub_1B81A37BC(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_126();
  sub_1B8192C18(v47, v48, v43);

  v49 = OUTLINED_FUNCTION_105_0();
  sub_1B8192D84(v49, v50);
  sub_1B8192D84(v17, &qword_1EBA7CB08);
  v51 = OUTLINED_FUNCTION_126();
  sub_1B8190C24(v51, v52, v43);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81AB0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1B81F7908();
  OUTLINED_FUNCTION_7_2();
  (*(v12 + 32))(a6, a1);
  v13 = type metadata accessor for TitleView(0);
  *(a6 + v13[5]) = a2;
  OUTLINED_FUNCTION_8_3();
  sub_1B81B09F0();
  *(a6 + v13[7]) = a3;
  *(a6 + v13[8]) = a4;
  return sub_1B81A3804(a5, a6 + v13[9], &qword_1EBA7CEF8);
}

void sub_1B81AB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_69_0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28 = v17;
  v29 = v18;
  v27 = v19;
  OUTLINED_FUNCTION_123_0();
  v20 = type metadata accessor for SubtitleView(0);
  v21 = *(v20 + 44);
  *(v10 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  swift_storeEnumTagMultiPayload();
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 6 && (a9 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DBC0);
    sub_1B81B5290(&unk_1EBA7D4D8);
    v24 = sub_1B81F8F28();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C568);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B81FD1B0;
    *(v9 + 32) = v24;
    *(v9 + 40) = v26;
  }

  *v10 = v9;
  *(v10 + 8) = v27 & 1;
  *(v10 + 16) = v28;
  *(v10 + 24) = v29;
  *(v10 + 32) = v16 & 1;
  *(v10 + 33) = v14 & 1;
  *(v10 + 40) = v12;
  OUTLINED_FUNCTION_8_3();
  sub_1B81B09F0();
  *(v10 + *(v20 + 40)) = a9 & 1;
  OUTLINED_FUNCTION_67_0();
}

void sub_1B81AB3A4()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for SubtitleView(v0);
  OUTLINED_FUNCTION_114();
  MEMORY[0x1EEE9AC00](v1);
  swift_getKeyPath();
  sub_1B81B099C();
  swift_allocObject();
  sub_1B81B09F0();

  v2 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4E0);
  sub_1B81B5290(&unk_1EDC8A2B8);
  sub_1B81B0AB8();
  sub_1B81F8E38();
  v3 = sub_1B81F8928();
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D550);
  OUTLINED_FUNCTION_52_1();
  *v4 = v3;
  OUTLINED_FUNCTION_10_3(v4);
  OUTLINED_FUNCTION_36();
}

void sub_1B81AB5B8()
{
  OUTLINED_FUNCTION_38();
  v25 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D528);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v2);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D520);
  OUTLINED_FUNCTION_1_0();
  v29 = v3;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D518);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D508);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v11);
  sub_1B8188DE0();

  v12 = sub_1B81F8AF8();
  v14 = v13;
  v16 = v15 & 1;
  sub_1B819F21C();
  sub_1B8190C24(v12, v14, v16);

  sub_1B8186F80();

  v17 = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  OUTLINED_FUNCTION_96();
  sub_1B81B2BA8(v18);
  sub_1B81F8B58();

  v19 = OUTLINED_FUNCTION_61();
  sub_1B81B5070(v19, v20, v31);
  v21 = *(v25 + 33);
  sub_1B81B1044();
  sub_1B81D0704(v21);
  sub_1B8192D84(v24, &qword_1EBA7D528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7C8);
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_108_0();
  sub_1B819F21C();
  (*(v29 + 8))(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D510);
  sub_1B81B0F3C();
  sub_1B81B0E84();
  sub_1B819F21C();
  sub_1B8192D84(v32, &qword_1EBA7D518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D500);
  sub_1B81B0DF8();
  sub_1B81B0D40();
  OUTLINED_FUNCTION_108_0();
  sub_1B819F21C();
  sub_1B8192D84(v28, &qword_1EBA7D508);
  KeyPath = swift_getKeyPath();
  v23 = v32 + *(v30 + 36);
  *v23 = KeyPath;
  *(v23 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4E8);
  sub_1B81B0BFC();
  sub_1B81B0B44();
  sub_1B819F21C();
  sub_1B8192D84(v32, &qword_1EBA7D4F0);
  OUTLINED_FUNCTION_37();
}

void sub_1B81ABC0C()
{
  OUTLINED_FUNCTION_93();
  KeyPath = swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_16_0();
  sub_1B81A37BC(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D4E8);
  OUTLINED_FUNCTION_79_0();
  *v4 = KeyPath;
  v4[1] = 0x4000000000000000;
}

uint64_t sub_1B81ABC80()
{
  OUTLINED_FUNCTION_117_0();
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0;

  v5 = v0;
  return sub_1B81F8D88();
}

void sub_1B81ABD48()
{
  OUTLINED_FUNCTION_33();
  v36 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D558) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D560) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D568) - 8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v31 = v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_55_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v35 = v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D580);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_0();
  *v7 = sub_1B81F8528();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D588);
  sub_1B81AC178();
  sub_1B81F8A08();
  sub_1B81F8988();
  v17 = sub_1B81F89B8();

  KeyPath = swift_getKeyPath();
  v19 = &v7[*(v4 + 44)];
  *v19 = KeyPath;
  v19[1] = v17;
  LOBYTE(v17) = sub_1B81F8938();
  v20 = v31;
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  sub_1B81A3804(v7, v1, &qword_1EBA7D558);
  v21 = (v1 + *(v8 + 44));
  *v21 = v17;
  OUTLINED_FUNCTION_10_3(v21);
  LOBYTE(v17) = sub_1B81F88C8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  sub_1B81A3804(v1, v20, &qword_1EBA7D560);
  v22 = (v20 + *(v10 + 44));
  *v22 = v17;
  OUTLINED_FUNCTION_10_3(v22);
  if (qword_1EDC8B648 != -1)
  {
    OUTLINED_FUNCTION_53_1();
  }

  v23 = qword_1EDC8D0F8;
  v24 = sub_1B81F8C88();
  v25 = sub_1B81F88D8();
  sub_1B81A3804(v20, v2, &qword_1EBA7D568);
  v26 = v2 + *(v34 + 36);
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = v35;
  sub_1B81A3804(v2, v35, &qword_1EBA7D570);
  *(v27 + *(v33 + 36)) = v23;
  v28 = v0 + *(v32 + 36);
  v29 = *MEMORY[0x1E697F468];
  sub_1B81F8548();
  OUTLINED_FUNCTION_7_2();
  (*(v30 + 104))(v28, v29);
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D590) + 36)) = 256;
  sub_1B81A3804(v27, v0, &qword_1EBA7D578);
  sub_1B81A3804(v0, v36, &qword_1EBA7D580);

  OUTLINED_FUNCTION_36();
}

void sub_1B81AC178()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  OUTLINED_FUNCTION_46();
  v31 = sub_1B81F87D8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_73_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30[-v13];
  sub_1B81F87E8();
  sub_1B81F8EB8();
  v15 = v3 & 1;
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_60_1();
  sub_1B81F8398();
  (*(v5 + 32))(v12, v1, v31);
  memcpy(&v12[*(v7 + 36)], v32, 0x70uLL);
  OUTLINED_FUNCTION_90();
  sub_1B81A3804(v16, v17, v18);
  OUTLINED_FUNCTION_90();
  sub_1B81A37BC(v19, v20, v21);
  *v0 = 0;
  *(v0 + 8) = v3 & 1;
  v22 = (v3 & 1) == 0;
  *(v0 + 9) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7C0);
  OUTLINED_FUNCTION_90();
  sub_1B81A37BC(v24, v25, v26);
  v27 = v0 + *(v23 + 64);
  *v27 = 0;
  *(v27 + 8) = v15;
  *(v27 + 9) = v22;
  sub_1B8192D84(v14, &qword_1EBA7D7B8);
  v28 = OUTLINED_FUNCTION_105_0();
  sub_1B8192D84(v28, v29);
  OUTLINED_FUNCTION_37();
}

void sub_1B81AC408()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  v3 = type metadata accessor for PrimaryActionButtonView(0);
  OUTLINED_FUNCTION_47_1(*(v3 + 52));
  if (OUTLINED_FUNCTION_130_0() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v4 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v6 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_80();

    v4 = OUTLINED_FUNCTION_102();
  }

  v5(v4);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81AC580@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B81AC5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v21 = type metadata accessor for PrimaryActionButtonView(0);
  v22 = v21[13];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = 0;
  *(a9 + 48) = a4;
  result = sub_1B81A3804(a11, a9 + v21[10], &qword_1EBA7CFD0);
  v24 = a9 + v21[11];
  *v24 = a7;
  *(v24 + 8) = a8;
  *(v24 + 16) = a10;
  v25 = a9 + v21[12];
  *v25 = a12;
  *(v25 + 8) = a13;
  *(v25 + 16) = a14;
  return result;
}

void sub_1B81AC70C()
{
  OUTLINED_FUNCTION_39();
  v1 = type metadata accessor for SGBannerPaddingParams(0);
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_111_0();
  type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_33_0();
  v4 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_73_0();
  (*(v6 + 104))(v0, *MEMORY[0x1E697F668], v4);
  v8 = OUTLINED_FUNCTION_44();
  v10 = sub_1B819906C(v8, v9);
  (*(v6 + 8))(v0, v4);
  if (v10 && (sub_1B81F8E98() & 1) == 0 || (sub_1B81F8E98() & 1) != 0 && (OUTLINED_FUNCTION_24_0(), (*(v11 + 560))() != 5) && (sub_1B81F85A8() & 1) != 0)
  {
    sub_1B8186CF8();
  }

  type metadata accessor for PrimaryActionButtonView(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  MEMORY[0x1B8CBABF0](v12);
  sub_1B81B099C();
  OUTLINED_FUNCTION_5_2();
  sub_1B81B12F0();
  sub_1B81B12F0();
  OUTLINED_FUNCTION_29();
}

double sub_1B81AC94C()
{
  sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_33_0();
  if ((sub_1B81F8E98() & 1) == 0)
  {
    return 0.0;
  }

  sub_1B81AC408();
  v1 = sub_1B81F85A8();
  v2 = OUTLINED_FUNCTION_63();
  v3(v2);
  if ((v1 & 1) == 0)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_24_0();
  v5 = (*(v4 + 560))();
  result = 2.0;
  if (v5 == 5)
  {
    return 0.0;
  }

  return result;
}

void sub_1B81ACA64()
{
  OUTLINED_FUNCTION_33();
  v91 = v1;
  v90 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v89 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v5 - v4);
  v6 = type metadata accessor for SGBannerPaddingParams(0);
  v7 = OUTLINED_FUNCTION_21(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v9 - v8);
  v83 = type metadata accessor for SGBannerViewModel(0) - 8;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_28(v11 - v10);
  v12 = type metadata accessor for PrimaryActionButtonView(0);
  v13 = *(v12 - 8);
  v93 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v14;
  v16 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D598);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v18);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v20);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v22);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v24);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v26);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5C0);
  OUTLINED_FUNCTION_1_0();
  v88 = v27;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v29);
  v81 = type metadata accessor for PrimaryActionButtonView;
  sub_1B81B099C();
  v30 = *(v13 + 80);
  v82 = v15;
  v80 = v30;
  swift_allocObject();
  v79 = type metadata accessor for PrimaryActionButtonView;
  sub_1B81B09F0();
  v96 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5C8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7CA00);
  v32 = sub_1B819218C();
  v98 = v31;
  v99 = v32;
  OUTLINED_FUNCTION_81_0();
  v33 = v70[1];
  sub_1B81F8D88();
  v77 = v16;
  sub_1B81B099C();
  v78 = (v30 + 16) & ~v30;
  v34 = swift_allocObject();
  sub_1B81B09F0();
  v35 = sub_1B81F8EB8();
  v36 = (v33 + *(v71 + 36));
  *v36 = sub_1B81B543C;
  v36[1] = 0;
  v36[2] = sub_1B81B189C;
  v36[3] = v34;
  v36[4] = v35;
  v36[5] = v37;
  sub_1B81F8E98();
  v95 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5D0);
  sub_1B81B1940();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5E8);
  v39 = sub_1B81B1A24();
  v98 = v38;
  v99 = v39;
  OUTLINED_FUNCTION_81_0();
  v40 = v72;
  sub_1B819F21C();
  sub_1B8192D84(v33, &qword_1EBA7D598);
  sub_1B81F8E98();
  v94 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5F0);
  sub_1B81B1AE4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5F8);
  v42 = sub_1B81B1BAC();
  v43 = sub_1B81B1C64();
  v98 = v41;
  v99 = &type metadata for SolariumActionButtonStyle;
  v100 = v42;
  v101 = v43;
  OUTLINED_FUNCTION_81_0();
  v44 = v73;
  sub_1B819F21C();
  sub_1B8192D84(v40, &qword_1EBA7D5A0);
  sub_1B8186F98();
  sub_1B81B1CB8();

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_61();
  sub_1B81F8B58();

  sub_1B8192D84(v44, &qword_1EBA7D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D608);
  sub_1B81A8F78(&unk_1EDC8A818);
  sub_1B81B1D9C();
  v45 = v92;
  sub_1B819F21C();
  sub_1B8192D84(v42, &qword_1EBA7D5B0);
  LODWORD(v75) = sub_1B81F8928();
  v76 = *(v93 + 48);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x1B8CBABF0]();
  sub_1B81B099C();
  sub_1B81B12F0();
  sub_1B81B12F0();
  sub_1B81AC94C();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v47 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D618) + 36));
  *v47 = v75;
  OUTLINED_FUNCTION_10_3(v47);
  LOBYTE(v45) = sub_1B81F8908();
  MEMORY[0x1B8CBABF0](v46);
  OUTLINED_FUNCTION_41();
  sub_1B81B099C();
  OUTLINED_FUNCTION_126();
  sub_1B81B12F0();
  sub_1B81B12F0();
  sub_1B81AC94C();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D620);
  v49 = v92;
  v50 = (v92 + *(v48 + 36));
  *v50 = v45;
  OUTLINED_FUNCTION_10_3(v50);
  LOBYTE(v46) = sub_1B81F88F8();
  v51 = v86;
  sub_1B81AC408();
  sub_1B81AC70C();
  (*(v89 + 8))(v51, v90);
  sub_1B81F8148();
  v52 = v84;
  v53 = (v49 + *(v84 + 36));
  *v53 = v46;
  OUTLINED_FUNCTION_51_1(v53, v54, v55, v56, v57);
  OUTLINED_FUNCTION_49_1();
  v98 = v58;
  v99 = v59;
  LOBYTE(v100) = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D960);
  sub_1B81F8E08();
  sub_1B81B099C();
  swift_allocObject();
  sub_1B81B09F0();
  v62 = sub_1B81B1F40();
  v69 = sub_1B81B219C();
  v63 = v85;
  v64 = v92;
  sub_1B81F8BD8();

  sub_1B8192D84(v64, &qword_1EBA7D5B8);
  OUTLINED_FUNCTION_49_1();
  v98 = v65;
  v99 = v66;
  LOBYTE(v100) = v67;
  MEMORY[0x1B8CBABF0](v97, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D630);
  v98 = v52;
  v99 = &type metadata for SGSuggestionTableControllerRepresentable;
  v100 = v62;
  v101 = v69;
  OUTLINED_FUNCTION_81_0();
  sub_1B81B21F0();
  v68 = v87;
  sub_1B819F21C();
  (*(v88 + 8))(v63, v68);
  OUTLINED_FUNCTION_36();
}

void sub_1B81AD670()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for SGBannerViewModel(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73_0();
  v9 = (v1 + *(v8 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F0) + 28);
  v11 = *MEMORY[0x1E697DC08];
  sub_1B81F8188();
  OUTLINED_FUNCTION_7_2();
  (*(v12 + 104))(v9 + v10, v11);
  *v9 = swift_getKeyPath();
  sub_1B81A37BC(v3, v1, &qword_1EBA7D598);
  type metadata accessor for PrimaryActionButtonView(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);
  MEMORY[0x1B8CBABF0](v13);
  v14 = *(v0 + 6);
  OUTLINED_FUNCTION_5_2();
  sub_1B81B12F0();
  sub_1B81B1A24();
  sub_1B81D06D4(v14);
  sub_1B8192D84(v1, &qword_1EBA7D5E8);
  OUTLINED_FUNCTION_37();
}

void sub_1B81AD818()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  OUTLINED_FUNCTION_46();
  v3 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_73_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  v11 = &v14[*(v8 + 36) - v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D600);
  sub_1B81F83A8();
  *v11 = swift_getKeyPath();
  sub_1B81A37BC(v2, v10, &qword_1EBA7D5A0);
  OUTLINED_FUNCTION_24_0();
  if ((*(v12 + 560))() == 5)
  {
    v13 = 1;
  }

  else
  {
    sub_1B81AC408();
    v13 = sub_1B81F85A8();
    (*(v5 + 8))(v0, v3);
  }

  v14[15] = v13 & 1;
  sub_1B81B1BAC();
  sub_1B81B1C64();
  sub_1B81F8B38();
  sub_1B8192D84(v10, &qword_1EBA7D5F8);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81ADA28()
{
  OUTLINED_FUNCTION_93();
  KeyPath = swift_getKeyPath();
  v2 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D608) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D610);
  sub_1B81F8E88();
  OUTLINED_FUNCTION_82();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v2 = KeyPath;
  v7 = OUTLINED_FUNCTION_16_0();
  return sub_1B81A37BC(v7, v8, v9);
}

uint64_t sub_1B81ADAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B81A37BC(a1, &v5 - v3, &qword_1EBA7D7B0);
  return sub_1B81F8488();
}

void *sub_1B81ADB9C@<X0>(uint64_t a1@<X8>)
{
  sub_1B8186D34();
  sub_1B81F8EB8();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_60_1();
  sub_1B81F8398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D5C0);
  OUTLINED_FUNCTION_7_2();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D630);
  return memcpy((a1 + *(v4 + 36)), __src, 0x70uLL);
}

uint64_t sub_1B81ADCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for CloseButtonView(0);
  OUTLINED_FUNCTION_8_3();
  result = sub_1B81B09F0();
  *(a4 + *(v6 + 28)) = a3;
  return result;
}

void sub_1B81ADD10()
{
  OUTLINED_FUNCTION_33();
  v65 = v3;
  sub_1B81F87C8();
  OUTLINED_FUNCTION_1_0();
  v66 = v5;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v64 = v7 - v6;
  OUTLINED_FUNCTION_37_0();
  v60 = sub_1B81F8578();
  OUTLINED_FUNCTION_1_0();
  v58 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_73_0();
  type metadata accessor for CloseButtonView(0);
  OUTLINED_FUNCTION_114();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v62 = v13;
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_111_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D648);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_2();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v50 - v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31();
  v56 = v26;
  sub_1B81AE2C8();
  OUTLINED_FUNCTION_12_3();
  v63 = v27;
  v52 = v1;
  v55 = v14;
  sub_1B81B099C();
  v61 = *(v11 + 80);
  v57 = (v61 + 16) & ~v61;
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  v59 = v29;
  sub_1B81B09F0();
  v30 = sub_1B81F8EB8();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D650);
  OUTLINED_FUNCTION_52_1();
  *v33 = sub_1B81AE980;
  v33[1] = 0;
  v33[2] = sub_1B81B22F4;
  v33[3] = v28;
  v33[4] = v30;
  v33[5] = v32;
  LOBYTE(v28) = sub_1B81F88E8();
  type metadata accessor for SGBannerViewModel(0);
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D658);
  OUTLINED_FUNCTION_52_1();
  *v34 = v28;
  OUTLINED_FUNCTION_10_3(v34);
  LOBYTE(v28) = sub_1B81F88F8();
  sub_1B81F8148();
  v35 = (v0 + *(v51 + 36));
  *v35 = v28;
  OUTLINED_FUNCTION_51_1(v35, v36, v37, v38, v39);
  sub_1B81F8568();
  sub_1B81B238C();
  sub_1B81F8BA8();
  v40 = *(v58 + 8);
  v41 = v60;
  v40(v2, v60);
  sub_1B8192D84(v0, &qword_1EBA7D640);
  sub_1B81F8558();
  sub_1B81F82F8();
  v40(v2, v41);
  sub_1B8192D84(v19, &qword_1EBA7D648);
  sub_1B8186F8C();

  v42 = v54;
  OUTLINED_FUNCTION_133();
  sub_1B81F82C8();

  sub_1B8192D84(v23, &qword_1EBA7D648);
  v68 = sub_1B81871D4();
  v69 = v43;
  sub_1B8188DE0();
  sub_1B81F8AF8();
  sub_1B81F82D8();
  v44 = OUTLINED_FUNCTION_133();
  sub_1B8190C24(v44, v45, v46);

  sub_1B8192D84(v42, &qword_1EBA7D648);
  sub_1B81B099C();
  swift_allocObject();
  sub_1B81B09F0();
  v47 = v64;
  sub_1B81F87B8();
  sub_1B81F82E8();

  (*(v66 + 8))(v47, v67);
  v48 = OUTLINED_FUNCTION_44();
  sub_1B8192D84(v48, v49);
  OUTLINED_FUNCTION_36();
}

void sub_1B81AE2C8()
{
  OUTLINED_FUNCTION_38();
  v41 = v1;
  v47 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D688);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_105();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D798);
  OUTLINED_FUNCTION_1_0();
  v40 = v6;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  v39 = v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v44 = v10;
  v11 = OUTLINED_FUNCTION_37_0();
  v12 = type metadata accessor for CloseButtonView.CircleButtonStyle(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_111_0();
  type metadata accessor for CloseButtonView(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_119();
  if (sub_1B81F8E98())
  {
    OUTLINED_FUNCTION_12_3();
    v18 = v41;
    sub_1B81B099C();
    swift_allocObject();
    OUTLINED_FUNCTION_11_4();
    v19 = sub_1B81B09F0();
    MEMORY[0x1EEE9AC00](v19);
    *(&v38 - 2) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7A8);
    sub_1B81B4FB8();
    sub_1B81F8D88();
    v20 = (v1 + *(v15 + 36));
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F0) + 28);
    v22 = *MEMORY[0x1E697DC28];
    sub_1B81F8188();
    OUTLINED_FUNCTION_7_2();
    (*(v23 + 104))(v20 + v21, v22);
    *v20 = swift_getKeyPath();
    v24 = sub_1B81F8CA8();
    *(v0 + *(v12 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
    swift_storeEnumTagMultiPayload();
    *v0 = v24;
    v48 = 0x4018000000000000;
    sub_1B81B47EC();
    sub_1B81F81B8();
    sub_1B81B2760();
    sub_1B81B2844();
    OUTLINED_FUNCTION_61();
    sub_1B81F8B38();
    sub_1B81B12F0();
    sub_1B8192D84(v1, &qword_1EBA7D670);
    *(v2 + *(v42 + 36)) = sub_1B81F87A8();
    OUTLINED_FUNCTION_51();
    sub_1B81A37BC(v25, v26, v27);
    swift_storeEnumTagMultiPayload();
    sub_1B81B262C();
    v28 = sub_1B81B289C();
    v48 = v45;
    v49 = v28;
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_52();
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B8192D84(v29, v30);
  }

  else
  {

    OUTLINED_FUNCTION_16_0();
    v31 = sub_1B81F8CF8();
    v32 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D690) + 36));
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D698) + 28);
    v34 = *MEMORY[0x1E69816E0];
    sub_1B81F8D28();
    OUTLINED_FUNCTION_7_2();
    (*(v35 + 104))(v32 + v33, v34);
    *v32 = swift_getKeyPath();
    *v3 = v31;
    v36 = v45;
    *(v3 + *(v45 + 36)) = sub_1B81F8798();
    OUTLINED_FUNCTION_12_3();
    sub_1B81B099C();
    swift_allocObject();
    OUTLINED_FUNCTION_11_4();
    sub_1B81B09F0();
    v37 = sub_1B81B289C();
    sub_1B81F8B48();

    sub_1B8192D84(v3, &qword_1EBA7D688);
    (*(v40 + 16))(v44, v39, v46);
    swift_storeEnumTagMultiPayload();
    sub_1B81B262C();
    v48 = v36;
    v49 = v37;
    OUTLINED_FUNCTION_44_0();
    sub_1B81F8718();
    (*(v40 + 8))(v39, v46);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81AE984@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B81F8C68();
  result = sub_1B81F8228();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_1B81AE9C4()
{
  OUTLINED_FUNCTION_30();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0))();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 suggestionDismissAction];
      if (v4)
      {
        v11 = v4;
        [v4 execute];
        swift_unknownObjectRelease();
LABEL_8:

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_21_0();
  v6 = (*(v5 + 752))();
  if (v6)
  {
    v11 = v6;
    [v6 execute];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_21_0();
  if ((*(v7 + 704))())
  {
    OUTLINED_FUNCTION_21_0();
    v9 = (*(v8 + 488))();
    if (v9)
    {
      v10 = v9;
      if ([v9 respondsToSelector_] && (objc_msgSend(v10, sel_respondsToSelector_, sel_suggestionBatchDismissal) & 1) != 0)
      {
        [v10 suggestionBatchDismissal];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {

    [v0 dismissAllSuggestions];
  }
}

void sub_1B81AEBEC()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_46();
  sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_0();
  v3 = type metadata accessor for CloseButtonView.CircleButtonStyle(0);
  OUTLINED_FUNCTION_47_1(*(v3 + 20));
  if (OUTLINED_FUNCTION_130_0() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_7_2();
    v4 = OUTLINED_FUNCTION_61();
  }

  else
  {
    sub_1B81F9198();
    v6 = sub_1B81F88B8();
    OUTLINED_FUNCTION_61_0();

    sub_1B81F84E8();
    OUTLINED_FUNCTION_80();

    v4 = OUTLINED_FUNCTION_102();
  }

  v5(v4);
  OUTLINED_FUNCTION_37();
}

void sub_1B81AED64()
{
  OUTLINED_FUNCTION_33();
  v49 = v0;
  v3 = v2;
  v46[1] = v4;
  v46[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_32();
  v56 = v6;
  OUTLINED_FUNCTION_37_0();
  v51 = sub_1B81F85B8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - v14;
  sub_1B81F87D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_65();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D760);
  v46[2] = v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_55_1();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D768);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32();
  v57 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D770);
  OUTLINED_FUNCTION_21(v21);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v50 = v23;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v53 = v25;
  sub_1B81F87E8();
  v55 = v3;
  if (sub_1B81F87F8())
  {
    v26 = 0.75;
  }

  else
  {
    v26 = 1.0;
  }

  OUTLINED_FUNCTION_41();
  v29(v27, v28);
  *(v1 + *(v17 + 36)) = v26;
  sub_1B81AEBEC();
  v48 = *MEMORY[0x1E697F668];
  v47 = *(v8 + 104);
  v30 = v51;
  v47(v12);
  sub_1B819906C(v15, v12);
  v31 = *(v8 + 8);
  v31(v12, v30);
  v31(v15, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D780);
  sub_1B81B4858();
  sub_1B81B4914();
  sub_1B819F21C();
  sub_1B8192D84(v1, &qword_1EBA7D760);
  sub_1B81AEBEC();
  (v47)(v12, v48, v30);
  sub_1B81AF408(v15, v12);
  v31(v12, v30);
  v31(v15, v30);
  v32 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D788);
  sub_1B81B49A0();
  sub_1B81B4A2C();
  v33 = v57;
  sub_1B819F21C();
  sub_1B8192D84(v33, &qword_1EBA7D768);
  v34 = sub_1B81F8EB8();
  v36 = v35;
  if (qword_1EDC8B638 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  sub_1B81F87F8();
  v37 = sub_1B81F8C88();
  v38 = v53;
  sub_1B81A3804(v32, v53, &qword_1EBA7D770);
  v39 = v38 + *(v54 + 36);
  *v39 = v37;
  *(v39 + 8) = 256;
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  v40 = *MEMORY[0x1E697E6D0];
  v41 = sub_1B81F82B8();
  OUTLINED_FUNCTION_2();
  (*(v42 + 104))(v56, v40, v41);
  sub_1B81B4AB8(&unk_1EDC8A828);
  if (sub_1B81F8F48())
  {
    sub_1B81B4AFC();
    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_41();
    sub_1B81B5290(v43);
    OUTLINED_FUNCTION_120_0();
    sub_1B81F8B78();
    OUTLINED_FUNCTION_41();
    sub_1B8192D84(v44, v45);
    sub_1B8192D84(v38, &qword_1EBA7D778);
    OUTLINED_FUNCTION_36();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B81AF384()
{
  OUTLINED_FUNCTION_93();
  v0 = sub_1B81F88D8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_16_0();
  sub_1B81A37BC(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D780);
  OUTLINED_FUNCTION_79_0();
  *v4 = v0;
  OUTLINED_FUNCTION_10_3(v4);
}

BOOL sub_1B81AF408(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1B81F85B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x1E697F658];
  if (v12 != *MEMORY[0x1E697F658])
  {
    if (v12 == *MEMORY[0x1E697F690])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F698])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x1E697F660])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x1E697F630])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x1E697F670])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x1E697F668])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x1E697F678])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x1E697F640])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x1E697F690])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x1E697F698])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F680])
    {
      if (v15 == *MEMORY[0x1E697F650])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F660])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F630])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F670])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F668])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F678])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F640])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F648])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

double sub_1B81AF820()
{
  OUTLINED_FUNCTION_93();
  sub_1B81F85C8();
  sub_1B81F8528();
  sub_1B81F8218();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1B81A37BC(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D788);
  OUTLINED_FUNCTION_79_0();
  *&result = OUTLINED_FUNCTION_122_0(v3, v5, v6, v7).n128_u64[0];
  return result;
}

uint64_t *sub_1B81AF8B0()
{
  if (qword_1EDC8B638 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  return &qword_1EDC8D0E8;
}

void sub_1B81AF8F8()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6A8);
  OUTLINED_FUNCTION_1_0();
  v58 = v4;
  v59 = v3;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v6);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_28(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_105();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6C8);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_0();
  v13 = sub_1B81F8D08();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_119();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_55_1();
  if (*(v0 + 48))
  {

    sub_1B81F8CF8();
    (*(v15 + 104))(v2, *MEMORY[0x1E6981630], v13);
    OUTLINED_FUNCTION_118_0();
    sub_1B81F8D38();

    (*(v15 + 8))(v2, v13);
    sub_1B81F85E8();
    sub_1B81F85F8();
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_63();
    sub_1B81F8D18();

    sub_1B8192D84(v1, &qword_1EBA7D6C8);
    sub_1B81F8C78();
    sub_1B81F8C48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6F8);
    sub_1B81B2E20();
    sub_1B81F8B98();

    OUTLINED_FUNCTION_51();
    sub_1B81A37BC(v22, v23, v24);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_53();
    sub_1B81A8F78(v25);
    OUTLINED_FUNCTION_40_1();
    sub_1B81A8F78(v26);
    sub_1B81F8718();
    OUTLINED_FUNCTION_53();
    sub_1B8192D84(v27, v28);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6D8);
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    OUTLINED_FUNCTION_29();
    return;
  }

  if (*v0)
  {
    v29 = v0;
    v30 = *v0;
    *&v60 = sub_1B81F8CE8();
    if ((sub_1B81F8E98() & 1) == 0 || ([v30 size], v31 = *(v29 + 24), v31 >= v32) && (objc_msgSend(v30, sel_size), v31 >= v33))
    {
      sub_1B81F8E98();
    }

    sub_1B819F21C();

    sub_1B81F8E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6E8);
    sub_1B81B2BA8(&unk_1EDC8A330);
    sub_1B81B2C00();
    sub_1B819F21C();

    v54 = *(v29 + 32);
    OUTLINED_FUNCTION_24_0();
    v35 = (*(v34 + 560))();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6F0);
    sub_1B81B2CAC();
    sub_1B81D0698(v54, v35, v36);
    OUTLINED_FUNCTION_120_0();
    j__swift_release();
    sub_1B81F8EB8();
    OUTLINED_FUNCTION_77_0();
    sub_1B81F8218();
    (*(v58 + 32))(v56, v55, v59);
    v37 = (v56 + *(v57 + 36));
    *v37 = v60;
    v37[1] = v61;
    v37[2] = v62;
    sub_1B81B2D58();
    sub_1B81F8B98();
    sub_1B8192D84(v56, &qword_1EBA7D6B0);
    OUTLINED_FUNCTION_51();
    sub_1B81A37BC(v38, v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_1();
    sub_1B81A8F78(v41);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_53();
    sub_1B81A8F78(v42);
    sub_1B81F8718();

    OUTLINED_FUNCTION_53();
    sub_1B8192D84(v43, v44);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D6D8);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_29();

  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
}

uint64_t sub_1B81B0110()
{
  OUTLINED_FUNCTION_93();
  sub_1B81F8D08();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_33_0();
  v2 = OUTLINED_FUNCTION_86_0();
  v3(v2);
  OUTLINED_FUNCTION_118_0();
  v4 = sub_1B81F8D38();
  v5 = OUTLINED_FUNCTION_63();
  result = v6(v5);
  *v0 = v4;
  return result;
}

uint64_t sub_1B81B01F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
}

void *sub_1B81B0230()
{
  if (qword_1EDC8B640 != -1)
  {
    swift_once();
  }

  return &unk_1EDC8D0F0;
}

void *sub_1B81B02A8()
{
  if (qword_1EDC8B350 != -1)
  {
    swift_once();
  }

  return &unk_1EDC8D0C0;
}

uint64_t sub_1B81B0320()
{
  OUTLINED_FUNCTION_117_0();
  v2 = [objc_opt_self() *v1];
  result = sub_1B81F8C38();
  *v0 = result;
  return result;
}

void *sub_1B81B0364()
{
  if (qword_1EDC8BF70 != -1)
  {
    swift_once();
  }

  return &unk_1EDC8D0C8;
}

void *sub_1B81B03D4()
{
  if (qword_1EDC8B358 != -1)
  {
    swift_once();
  }

  return &unk_1EDC8D0D0;
}

void *sub_1B81B0444()
{
  if (qword_1EDC8BF80 != -1)
  {
    swift_once();
  }

  return &unk_1EDC8D100;
}

uint64_t sub_1B81B04B4()
{
  OUTLINED_FUNCTION_117_0();
  sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_33_0();
  v1();
  v3 = OUTLINED_FUNCTION_86_0();
  v4(v3);
  OUTLINED_FUNCTION_105_0();
  sub_1B81F89E8();

  v5 = OUTLINED_FUNCTION_63();
  v6(v5);
  v7 = sub_1B81F8968();

  *v0 = v7;
  return result;
}

void *sub_1B81B05B4()
{
  if (qword_1EDC8B658 != -1)
  {
    swift_once();
  }

  return &unk_1EBA7F598;
}

uint64_t sub_1B81B0604()
{
  OUTLINED_FUNCTION_117_0();
  sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_33_0();
  v1();
  v3 = OUTLINED_FUNCTION_86_0();
  v4(v3);
  OUTLINED_FUNCTION_105_0();
  v5 = sub_1B81F89E8();

  v6 = OUTLINED_FUNCTION_63();
  result = v7(v6);
  *v0 = v5;
  return result;
}

uint64_t sub_1B81B06F0()
{
  sub_1B81F8A08();
  sub_1B81F8988();
  v0 = sub_1B81F89B8();

  qword_1EBA7F5A0 = v0;
  return result;
}

uint64_t *sub_1B81B0734()
{
  if (qword_1EDC8B668 != -1)
  {
    swift_once();
  }

  return &qword_1EBA7F5A0;
}

unint64_t sub_1B81B0784()
{
  result = qword_1EDC8AA38;
  if (!qword_1EDC8AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D498);
    sub_1B81B083C();
    sub_1B81B5290(&qword_1EDC8AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA38);
  }

  return result;
}

unint64_t sub_1B81B083C()
{
  result = qword_1EDC8AA60;
  if (!qword_1EDC8AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D490);
    sub_1B81B5290(&unk_1EDC8A928);
    sub_1B81B4AB8(&unk_1EDC8A938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA60);
  }

  return result;
}

uint64_t sub_1B81B0924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B81F8448();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B81B099C()
{
  OUTLINED_FUNCTION_30();
  v1(0);
  OUTLINED_FUNCTION_7_2();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  return v0;
}

uint64_t sub_1B81B09F0()
{
  OUTLINED_FUNCTION_30();
  v1(0);
  OUTLINED_FUNCTION_7_2();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  return v0;
}

void sub_1B81B0A44()
{
  OUTLINED_FUNCTION_123_0();
  v0 = type metadata accessor for SubtitleView(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_97();

  sub_1B81AB5B8();
}

unint64_t sub_1B81B0AB8()
{
  result = qword_1EDC8A360;
  if (!qword_1EDC8A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4E0);
    sub_1B81B0B44();
    sub_1B81B0BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A360);
  }

  return result;
}

unint64_t sub_1B81B0B44()
{
  result = qword_1EDC8A3F8;
  if (!qword_1EDC8A3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4E8);
    sub_1B81B0BFC();
    sub_1B81B5290(&unk_1EDC8A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3F8);
  }

  return result;
}

unint64_t sub_1B81B0BFC()
{
  result = qword_1EDC8A448;
  if (!qword_1EDC8A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4F0);
    sub_1B81B0CB4();
    sub_1B81B5290(&unk_1EDC8AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A448);
  }

  return result;
}

unint64_t sub_1B81B0CB4()
{
  result = qword_1EDC8A388;
  if (!qword_1EDC8A388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4F8);
    sub_1B81B0D40();
    sub_1B81B0DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A388);
  }

  return result;
}

unint64_t sub_1B81B0D40()
{
  result = qword_1EDC8A450;
  if (!qword_1EDC8A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D500);
    sub_1B81B0DF8();
    sub_1B81B5290(&unk_1EDC8A950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A450);
  }

  return result;
}

unint64_t sub_1B81B0DF8()
{
  result = qword_1EDC8A398;
  if (!qword_1EDC8A398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D508);
    sub_1B81B0E84();
    sub_1B81B0F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A398);
  }

  return result;
}

unint64_t sub_1B81B0E84()
{
  result = qword_1EDC8A460;
  if (!qword_1EDC8A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D510);
    sub_1B81B0F3C();
    sub_1B81B5290(&unk_1EDC8AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A460);
  }

  return result;
}

unint64_t sub_1B81B0F3C()
{
  result = qword_1EDC8A340;
  if (!qword_1EDC8A340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D528);
    sub_1B81B1044();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A340);
  }

  return result;
}

unint64_t sub_1B81B1044()
{
  result = qword_1EDC8A468;
  if (!qword_1EDC8A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D528);
    sub_1B81B2BA8(&unk_1EDC8A348);
    sub_1B81B4AB8(&unk_1EDC8A938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A468);
  }

  return result;
}

void sub_1B81B1120()
{
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v3 = [v1 suggestionPrimaryAction];
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    v3 = (*(v2 + 728))();
  }

  [v3 execute];
}

void sub_1B81B120C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  sub_1B8188DE0();
  OUTLINED_FUNCTION_15_1();

  sub_1B81F8AF8();
  sub_1B81F8A08();
  OUTLINED_FUNCTION_96();
  v2 = sub_1B81F8AD8();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = OUTLINED_FUNCTION_8_2();
  sub_1B8190C24(v9, v10, v11);

  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v6 & 1;
  *(v1 + 24) = v8;
  OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1B81B12F0()
{
  v1 = OUTLINED_FUNCTION_81();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1B81B1344()
{
  type metadata accessor for PrimaryActionButtonView(0);
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v4 = [v1 suggestionPrimaryAction];
    swift_unknownObjectRelease();
    v2 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_21_0();
    v2 = (*(v3 + 728))();
    if (!v2)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D960);
      MEMORY[0x1B8CBABF0](&v6);
      sub_1B81F8DF8();

      return;
    }

    v4 = v2;
  }

  [v2 execute];
}

uint64_t sub_1B81B151C()
{
  v1 = *(v0 + 16);
  sub_1B8188DE0();
  OUTLINED_FUNCTION_15_1();

  v2 = sub_1B81F8AF8();
  v4 = v3;
  v6 = v5;
  sub_1B81F8AD8();
  v8 = v7;
  sub_1B8190C24(v2, v4, v6 & 1);

  swift_getKeyPath();
  v9 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA00);
  sub_1B819218C();
  sub_1B81D062C(v9);
  v10 = OUTLINED_FUNCTION_52();
  sub_1B8190C24(v10, v11, v8 & 1);
}

uint64_t objectdestroy_20Tm()
{
  OUTLINED_FUNCTION_69_0();
  type metadata accessor for PrimaryActionButtonView(0);
  OUTLINED_FUNCTION_57_1();
  v29 = *(v4 + 64);
  v30 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v31 = v1;
  v5 = v1 + v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CFD0);

  v6 = type metadata accessor for SGBannerViewModel(0);
  OUTLINED_FUNCTION_127_0(v6);

  v7 = *(type metadata accessor for SGBannerIconParams(0) + 72);
  v8 = sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);

  v11 = type metadata accessor for SGBannerPaddingParams(0);
  v12 = OUTLINED_FUNCTION_107_0(v11);
  (v10)(v12);

  v13 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F85B8();
    OUTLINED_FUNCTION_2();
    v15 = (*(v14 + 8))(v5 + v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_112_0(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31);
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1B81B189C()
{
  v0 = OUTLINED_FUNCTION_81();
  v1 = type metadata accessor for PrimaryActionButtonView(v0);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_24_0();
  return (*(v2 + 520))();
}

unint64_t sub_1B81B1940()
{
  result = qword_1EDC8A7B0;
  if (!qword_1EDC8A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D598);
    sub_1B81B5290(&unk_1EDC8A5F0);
    sub_1B81B5290(&unk_1EDC8A6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7B0);
  }

  return result;
}

unint64_t sub_1B81B1A24()
{
  result = qword_1EDC8A748;
  if (!qword_1EDC8A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5E8);
    sub_1B81B1940();
    sub_1B81B5290(&unk_1EDC8A620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A748);
  }

  return result;
}

unint64_t sub_1B81B1AE4()
{
  result = qword_1EDC8A678;
  if (!qword_1EDC8A678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5E8);
    sub_1B81B1A24();
    swift_getOpaqueTypeConformance2();
    sub_1B81B1940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A678);
  }

  return result;
}

unint64_t sub_1B81B1BAC()
{
  result = qword_1EDC8A820;
  if (!qword_1EDC8A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5F8);
    sub_1B81B1AE4();
    sub_1B81B5290(&unk_1EDC8A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A820);
  }

  return result;
}

unint64_t sub_1B81B1C64()
{
  result = qword_1EDC8A850;
  if (!qword_1EDC8A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A850);
  }

  return result;
}

unint64_t sub_1B81B1CB8()
{
  result = qword_1EDC8A670;
  if (!qword_1EDC8A670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5F8);
    sub_1B81B1BAC();
    sub_1B81B1C64();
    swift_getOpaqueTypeConformance2();
    sub_1B81B1AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A670);
  }

  return result;
}

unint64_t sub_1B81B1D9C()
{
  result = qword_1EDC8A788;
  if (!qword_1EDC8A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D608);
    sub_1B81A8F78(&unk_1EDC8A818);
    sub_1B81B5290(&unk_1EDC8A608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A788);
  }

  return result;
}

uint64_t sub_1B81B1E80()
{
  v1 = OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for PrimaryActionButtonView(v1);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_97();
  v4 = v0 + v3;
  OUTLINED_FUNCTION_49_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D960);
  sub_1B81F8E08();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_8_2();
  sub_1B81BC300();
  return OUTLINED_FUNCTION_121_0(v6, v7, v8, v9);
}

unint64_t sub_1B81B1F40()
{
  result = qword_1EDC8A718;
  if (!qword_1EDC8A718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5B8);
    sub_1B81B1FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A718);
  }

  return result;
}

unint64_t sub_1B81B1FCC()
{
  result = qword_1EDC8A768;
  if (!qword_1EDC8A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D620);
    sub_1B81B2058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A768);
  }

  return result;
}

unint64_t sub_1B81B2058()
{
  result = qword_1EDC8A7F0;
  if (!qword_1EDC8A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D618);
    sub_1B81B20E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7F0);
  }

  return result;
}

unint64_t sub_1B81B20E4()
{
  result = qword_1EDC8A688;
  if (!qword_1EDC8A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D628);
    sub_1B81B1D9C();
    sub_1B81A8F78(&unk_1EDC8A818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A688);
  }

  return result;
}

unint64_t sub_1B81B219C()
{
  result = qword_1EDC8A840;
  if (!qword_1EDC8A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A840);
  }

  return result;
}

unint64_t sub_1B81B21F0()
{
  result = qword_1EBA7D638;
  if (!qword_1EBA7D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5B8);
    sub_1B81B1F40();
    sub_1B81B219C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D638);
  }

  return result;
}

uint64_t sub_1B81B22F4()
{
  v0 = OUTLINED_FUNCTION_81();
  v1 = type metadata accessor for CloseButtonView(v0);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_24_0();
  return (*(v2 + 544))();
}

unint64_t sub_1B81B238C()
{
  result = qword_1EDC8A730;
  if (!qword_1EDC8A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D640);
    sub_1B81B2418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A730);
  }

  return result;
}

unint64_t sub_1B81B2418()
{
  result = qword_1EDC8A780;
  if (!qword_1EDC8A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D658);
    sub_1B81B24A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A780);
  }

  return result;
}

unint64_t sub_1B81B24A4()
{
  result = qword_1EDC8A810;
  if (!qword_1EDC8A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D650);
    sub_1B81B255C();
    sub_1B81B5290(&unk_1EDC8A6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A810);
  }

  return result;
}

unint64_t sub_1B81B255C()
{
  result = qword_1EDC8A6B0;
  if (!qword_1EDC8A6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D660);
    sub_1B81B262C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D688);
    sub_1B81B289C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6B0);
  }

  return result;
}

unint64_t sub_1B81B262C()
{
  result = qword_1EDC8A7C0;
  if (!qword_1EDC8A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D670);
    type metadata accessor for CloseButtonView.CircleButtonStyle(255);
    sub_1B81B2760();
    sub_1B81B2844();
    swift_getOpaqueTypeConformance2();
    sub_1B81B5290(&unk_1EDC8AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7C0);
  }

  return result;
}

unint64_t sub_1B81B2760()
{
  result = qword_1EDC8A7A8;
  if (!qword_1EDC8A7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D670);
    sub_1B81B5290(&unk_1EDC8A600);
    sub_1B81B5290(&unk_1EDC8A620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7A8);
  }

  return result;
}

unint64_t sub_1B81B2844()
{
  result = qword_1EDC8BDD8[0];
  if (!qword_1EDC8BDD8[0])
  {
    type metadata accessor for CloseButtonView.CircleButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC8BDD8);
  }

  return result;
}

unint64_t sub_1B81B289C()
{
  result = qword_1EDC8A758;
  if (!qword_1EDC8A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D688);
    sub_1B81B2954();
    sub_1B81B5290(&unk_1EDC8AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A758);
  }

  return result;
}

unint64_t sub_1B81B2954()
{
  result = qword_1EDC8A7B8;
  if (!qword_1EDC8A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D690);
    sub_1B81B5290(&unk_1EDC8A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7B8);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  type metadata accessor for CloseButtonView(0);
  OUTLINED_FUNCTION_57_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v16 = *(v5 + 64);

  v6 = v1 + v4 + *(v0 + 32);

  v7 = type metadata accessor for SGBannerViewModel(0);
  v8 = (v6 + *(v7 + 48));

  v9 = *(type metadata accessor for SGBannerIconParams(0) + 72);
  v10 = sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  v12 = *(v11 + 8);
  v12(v8 + v9, v10);

  v13 = *(v7 + 56);
  v14 = type metadata accessor for SGBannerPaddingParams(0);
  v12((v6 + v13 + *(v14 + 80)), v10);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v16, v3 | 7);
}

unint64_t sub_1B81B2BA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_94(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_76(0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B81B2C00()
{
  result = qword_1EDC8A458;
  if (!qword_1EDC8A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6E8);
    sub_1B81B2BA8(&unk_1EDC8A330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A458);
  }

  return result;
}

unint64_t sub_1B81B2CAC()
{
  result = qword_1EDC8A390;
  if (!qword_1EDC8A390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6F0);
    sub_1B81B2C00();
    sub_1B81B2BA8(&unk_1EDC8A330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A390);
  }

  return result;
}

unint64_t sub_1B81B2D58()
{
  result = qword_1EDC8A420;
  if (!qword_1EDC8A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6F0);
    sub_1B81B2CAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A420);
  }

  return result;
}

unint64_t sub_1B81B2E20()
{
  result = qword_1EDC8A418;
  if (!qword_1EDC8A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6F8);
    sub_1B81B5290(&unk_1EDC8A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A418);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_29_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_58(*v0);
  }

  OUTLINED_FUNCTION_84();
  type metadata accessor for SGBannerViewModel(0);
  v4 = OUTLINED_FUNCTION_46_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_128();
  if (v1)
  {
    OUTLINED_FUNCTION_119_0();
  }

  else
  {
    v2 = v0;
    type metadata accessor for SGBannerViewModel(0);
    v3 = OUTLINED_FUNCTION_104(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B81B30DC()
{
  result = type metadata accessor for SGBannerContent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SGBannerViewModel(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_102_0();
    }
  }

  return result;
}

void sub_1B81B3194()
{
  sub_1B81F7908();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SGBannerContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SGBannerViewModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_6_2();
        sub_1B81B3784(319, v3, v4, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_20_1();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_102_0();
        }
      }
    }
  }
}

void sub_1B81B3294()
{
  sub_1B81B37E8(319, &qword_1EDC8A908, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SGBannerContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SGBannerViewModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_6_2();
        sub_1B81B3784(319, v3, v4, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_20_1();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_102_0();
        }
      }
    }
  }
}

uint64_t sub_1B81B3394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B81B33D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SolariumActionButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SolariumActionButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1B81B35C0()
{
  type metadata accessor for SGBannerContent();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_38_0();
    sub_1B81B3784(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B81B3784(319, &qword_1EBA7D708, type metadata accessor for SGBannerViewModel, MEMORY[0x1E6981948]);
      if (v4 <= 0x3F)
      {
        sub_1B81B37E8(319, &qword_1EDC8A918, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_6_2();
          sub_1B81B3784(319, v6, v7, MEMORY[0x1E697DCC0]);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_20_1();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_102_0();
          }
        }
      }
    }
  }
}

unint64_t sub_1B81B3740()
{
  result = qword_1EDC8AF50;
  if (!qword_1EDC8AF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC8AF50);
  }

  return result;
}

void sub_1B81B3784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B81B37E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B81B3860()
{
  type metadata accessor for SGBannerContent();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_38_0();
    sub_1B81B3784(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for SGBannerViewModel(319);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_20_1();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_102_0();
      }
    }
  }
}

uint64_t sub_1B81B3918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B81B3958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B81B39B4()
{
  result = qword_1EDC8A658;
  if (!qword_1EDC8A658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D3B8);
    sub_1B81A8AC0();
    sub_1B81A8F78(&unk_1EDC8A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A658);
  }

  return result;
}

unint64_t sub_1B81B3A6C()
{
  result = qword_1EDC8A350;
  if (!qword_1EDC8A350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D718);
    sub_1B81B3AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A350);
  }

  return result;
}

unint64_t sub_1B81B3AF0()
{
  result = qword_1EDC8A358;
  if (!qword_1EDC8A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D450);
    sub_1B81A9874();
    sub_1B81A9A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A358);
  }

  return result;
}

unint64_t sub_1B81B3B7C()
{
  result = qword_1EDC8AA00;
  if (!qword_1EDC8AA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4D0);
    sub_1B81B3C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA00);
  }

  return result;
}

unint64_t sub_1B81B3C08()
{
  result = qword_1EDC8AA08;
  if (!qword_1EDC8AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4C8);
    sub_1B81B3C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA08);
  }

  return result;
}

unint64_t sub_1B81B3C94()
{
  result = qword_1EDC8AA10;
  if (!qword_1EDC8AA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4C0);
    sub_1B81B3D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA10);
  }

  return result;
}

unint64_t sub_1B81B3D20()
{
  result = qword_1EDC8AA18;
  if (!qword_1EDC8AA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4B8);
    sub_1B81B3DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA18);
  }

  return result;
}

unint64_t sub_1B81B3DAC()
{
  result = qword_1EDC8AA40;
  if (!qword_1EDC8AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4B0);
    sub_1B81B3E64();
    sub_1B81B5290(&unk_1EDC8AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA40);
  }

  return result;
}

unint64_t sub_1B81B3E64()
{
  result = qword_1EDC8AA70;
  if (!qword_1EDC8AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D498);
    sub_1B81B0784();
    swift_getOpaqueTypeConformance2();
    sub_1B81B5290(&unk_1EDC8AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA70);
  }

  return result;
}

unint64_t sub_1B81B3F58()
{
  result = qword_1EDC8A408;
  if (!qword_1EDC8A408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D550);
    sub_1B81B3FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A408);
  }

  return result;
}

unint64_t sub_1B81B3FE4()
{
  result = qword_1EDC8A2C0;
  if (!qword_1EDC8A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D720);
    sub_1B81B0AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A2C0);
  }

  return result;
}

unint64_t sub_1B81B4068()
{
  result = qword_1EDC8A6E0;
  if (!qword_1EDC8A6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D580);
    sub_1B81B4120();
    sub_1B81B5290(&unk_1EDC8AAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6E0);
  }

  return result;
}

unint64_t sub_1B81B4120()
{
  result = qword_1EDC8A6E8;
  if (!qword_1EDC8A6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D578);
    sub_1B81B41D8();
    sub_1B81B5290(&unk_1EDC8A950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6E8);
  }

  return result;
}

unint64_t sub_1B81B41D8()
{
  result = qword_1EDC8A6F0;
  if (!qword_1EDC8A6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D570);
    sub_1B81B4290();
    sub_1B81B5290(&qword_1EDC8A630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6F0);
  }

  return result;
}

unint64_t sub_1B81B4290()
{
  result = qword_1EDC8A710;
  if (!qword_1EDC8A710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D568);
    sub_1B81B431C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A710);
  }

  return result;
}

unint64_t sub_1B81B431C()
{
  result = qword_1EDC8A740;
  if (!qword_1EDC8A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D560);
    sub_1B81B43A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A740);
  }

  return result;
}

unint64_t sub_1B81B43A8()
{
  result = qword_1EDC8A798;
  if (!qword_1EDC8A798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D558);
    sub_1B81B5290(&unk_1EDC8A5E0);
    sub_1B81B5290(&unk_1EDC8AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A798);
  }

  return result;
}

unint64_t sub_1B81B448C()
{
  result = qword_1EBA7D738;
  if (!qword_1EBA7D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D740);
    sub_1B81B21F0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D5B8);
    sub_1B81B1F40();
    sub_1B81B219C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D738);
  }

  return result;
}

unint64_t sub_1B81B4570(uint64_t a1)
{
  result = OUTLINED_FUNCTION_94(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_76(0, v4);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B81B45DC()
{
  result = qword_1EDC8A370;
  if (!qword_1EDC8A370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D6D8);
    sub_1B81A8F78(&unk_1EDC8A3D0);
    sub_1B81A8F78(&unk_1EDC8A3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A370);
  }

  return result;
}

void sub_1B81B46E8()
{
  OUTLINED_FUNCTION_6_2();
  sub_1B81B3784(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1B81B4790();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_102_0();
    }
  }
}

void sub_1B81B4790()
{
  if (!qword_1EDC8A830)
  {
    sub_1B81B47EC();
    v0 = sub_1B81F81C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC8A830);
    }
  }
}

unint64_t sub_1B81B47EC()
{
  result = qword_1EDC8A5D0;
  if (!qword_1EDC8A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A5D0);
  }

  return result;
}

unint64_t sub_1B81B4858()
{
  result = qword_1EDC8A7D0;
  if (!qword_1EDC8A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D760);
    sub_1B81B4AB8(&unk_1EDC8A638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7D0);
  }

  return result;
}

unint64_t sub_1B81B4914()
{
  result = qword_1EDC8A760;
  if (!qword_1EDC8A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D780);
    sub_1B81B4858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A760);
  }

  return result;
}

unint64_t sub_1B81B49A0()
{
  result = qword_1EDC8A698;
  if (!qword_1EDC8A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D768);
    sub_1B81B4914();
    sub_1B81B4858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A698);
  }

  return result;
}

unint64_t sub_1B81B4A2C()
{
  result = qword_1EDC8A800;
  if (!qword_1EDC8A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D788);
    sub_1B81B49A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A800);
  }

  return result;
}

unint64_t sub_1B81B4AB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_94(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B81B4AFC()
{
  result = qword_1EDC8A7E8;
  if (!qword_1EDC8A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D778);
    sub_1B81B4BB4();
    sub_1B81B5290(&unk_1EDC8A6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7E8);
  }

  return result;
}

unint64_t sub_1B81B4BB4()
{
  result = qword_1EDC8A6A0;
  if (!qword_1EDC8A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D770);
    sub_1B81B4A2C();
    sub_1B81B49A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6A0);
  }

  return result;
}

unint64_t sub_1B81B4C40()
{
  result = qword_1EDC8A498;
  if (!qword_1EDC8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A498);
  }

  return result;
}

uint64_t sub_1B81B4C94@<X0>(void *a1@<X8>)
{
  result = sub_1B81F83E8();
  *a1 = v3;
  return result;
}

uint64_t sub_1B81B4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  return a6(v6);
}

void sub_1B81B4E3C()
{
  v0 = type metadata accessor for CloseButtonView(0);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_97();
  sub_1B81AE9C4();
}

void sub_1B81B4E90(uint64_t *a1@<X8>)
{
  type metadata accessor for CloseButtonView(0);

  OUTLINED_FUNCTION_8_2();
  v2 = sub_1B81F8CF8();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D690) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D698) + 28);
  v5 = *MEMORY[0x1E69816C8];
  sub_1B81F8D28();
  OUTLINED_FUNCTION_7_2();
  (*(v6 + 104))(v3 + v4, v5);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  sub_1B81F8A08();
  sub_1B81F8988();
  sub_1B81F89B8();
  OUTLINED_FUNCTION_15_1();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D7A8);
  OUTLINED_FUNCTION_52_1();
  *v8 = KeyPath;
  v8[1] = v5;
}

unint64_t sub_1B81B4FB8()
{
  result = qword_1EDC8A750;
  if (!qword_1EDC8A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D7A8);
    sub_1B81B2954();
    sub_1B81B5290(&unk_1EDC8AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A750);
  }

  return result;
}

uint64_t sub_1B81B5070(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B8190C24(a1, a2, a3 & 1);
}

uint64_t sub_1B81B50AC()
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_24_0();
  v1 = (*(v0 + 560))();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D520);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D528);
  sub_1B81B1044();
  OUTLINED_FUNCTION_43_0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_1B81D05F8(v1, v2, OpaqueTypeConformance2);
}

void sub_1B81B5188()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B81F8A58();
    KeyPath = swift_getKeyPath();
    v5 = OUTLINED_FUNCTION_88();
    sub_1B81A37BC(v5, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D510);
    OUTLINED_FUNCTION_52_1();
    *v8 = KeyPath;
    v8[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B81B5214(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 24);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B81F8C38();
    v6 = OUTLINED_FUNCTION_88();
    sub_1B81A37BC(v6, v7, v8);
    *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D500) + 36)) = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B81B5290(uint64_t a1)
{
  result = OUTLINED_FUNCTION_94(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_76(0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B81B52C8()
{
  result = qword_1EBA7D808;
  if (!qword_1EBA7D808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D800);
    sub_1B81A9BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D808);
  }

  return result;
}

unint64_t sub_1B81B5354()
{
  result = qword_1EDC8ADB0[0];
  if (!qword_1EDC8ADB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC8ADB0);
  }

  return result;
}

unint64_t sub_1B81B53A8()
{
  result = qword_1EBA7D838;
  if (!qword_1EBA7D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D830);
    sub_1B81B5354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7D838);
  }

  return result;
}

void OUTLINED_FUNCTION_10_3(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_47_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1B81A37BC(v1 + a1, v2, v3);
}

void OUTLINED_FUNCTION_51_1(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return sub_1B81B5290(a1);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

__n128 OUTLINED_FUNCTION_122_0@<Q0>(_OWORD *a1@<X8>, __int128 a2, __int128 a3, __n128 a4)
{
  *a1 = a2;
  a1[1] = a3;
  result = a4;
  a1[2] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return sub_1B81F8218();
}

void OUTLINED_FUNCTION_127_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48) + 40);
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_1B81F8218();
}

unint64_t OUTLINED_FUNCTION_129()
{

  return sub_1B81B4C40();
}

uint64_t OUTLINED_FUNCTION_130_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1B81B5ABC()
{
  OUTLINED_FUNCTION_3_2();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B81B5B0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81B5B68(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B81B5BCC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_suggestionDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_115();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

uint64_t sub_1B81B5C48()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_state;
  OUTLINED_FUNCTION_2_1();
  return *(v0 + v1);
}

uint64_t sub_1B81B5C7C(int a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_state;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B81B5D08()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderHelpers;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B81B5D4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderHelpers;
  OUTLINED_FUNCTION_3_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B81B5DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderBundleURL;
  OUTLINED_FUNCTION_3_0();
  return sub_1B81B5E2C(v1 + v3, a1);
}

uint64_t sub_1B81B5E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81B5E9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderBundleURL;
  OUTLINED_FUNCTION_115();
  sub_1B81B5EF4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B81B5EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81B5FE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderDictionary;
  OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
}

uint64_t sub_1B81B607C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_logger;
  OUTLINED_FUNCTION_3_0();
  sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1B81B60F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_logger;
  OUTLINED_FUNCTION_115();
  sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id sub_1B81B61BC()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_realtimeOrderSuggestion;
  OUTLINED_FUNCTION_2_1();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B81B6200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_realtimeOrderSuggestion;
  OUTLINED_FUNCTION_3_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B81B6294()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();

  return sub_1B81B8574(v1);
}

void SGWalletOrderSuggestion.init(realtimeWalletOrder:)(void *a1)
{
  v2 = v1;
  v87 = *MEMORY[0x1E69E9840];
  v81 = sub_1B81F7998();
  OUTLINED_FUNCTION_1_0();
  v80 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_14_2();
  v77 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v70[-v11];
  v12 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_2();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70[-v20];
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderBundleURL;
  v23 = sub_1B81F79D8();
  v76 = v22;
  v75 = v23;
  __swift_storeEnumTagSinglePayload(&v2[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderDictionary;
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderDictionary] = 0;
  v25 = [a1 state];
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_state] = v25;
  sub_1B8186FE0();

  sub_1B81F8038();
  v26 = OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_logger;
  v82 = v14;
  (*(v14 + 32))(&v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_logger], v21, v12);
  v27 = objc_opt_self();
  v28 = [a1 walletOrderDictData];
  v29 = sub_1B81F79F8();
  v31 = v30;

  v32 = sub_1B81F79E8();
  sub_1B81B85E4(v29, v31);
  *&v86[0] = 0;
  v33 = [v27 JSONObjectWithData:v32 options:0 error:v86];

  if (v33)
  {
    v34 = *&v86[0];
    sub_1B81F9228();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D880);
    if (swift_dynamicCast())
    {
      v35 = v84;
      swift_beginAccess();
      *&v2[v24] = v35;
    }
  }

  else
  {
    v36 = *&v86[0];
    v37 = sub_1B81F7988();

    swift_willThrow();
    swift_beginAccess();
    (*(v82 + 16))(v18, &v2[v26], v12);
    v38 = v37;
    v39 = sub_1B81F8028();
    v40 = sub_1B81F9188();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v86[0] = v74;
      *v41 = 136315394;
      type metadata accessor for SGWalletOrderSuggestion();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = NSStringFromClass(ObjCClassFromMetadata);
      v72 = v39;
      v44 = a1;
      v45 = v43;
      v46 = sub_1B81F8F98();
      v71 = v40;
      v47 = v46;
      v49 = v48;

      a1 = v44;
      v50 = sub_1B81B7ED8(v47, v49, v86);

      *(v41 + 4) = v50;
      *(v41 + 12) = 2112;
      v51 = v37;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v52;
      v53 = v73;
      *v73 = v52;
      v54 = v72;
      _os_log_impl(&dword_1B8182000, v72, v71, "%s - Encountered Error while resolving orderDictionary: %@", v41, 0x16u);
      sub_1B8192D84(v53, &unk_1EBA7D190);
      MEMORY[0x1B8CBBAE0](v53, -1, -1);
      v55 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1B8CBBAE0](v55, -1, -1);
      MEMORY[0x1B8CBBAE0](v41, -1, -1);
    }

    else
    {
    }

    (*(v82 + 8))(v18, v12);
  }

  swift_beginAccess();
  v56 = *&v2[v24];
  if (v56)
  {

    sub_1B81B6B34(0x68746150656C6966, 0xE800000000000000, v56, &v84);
    if (!v85)
    {
      __break(1u);
      return;
    }

    sub_1B8192514(&v84, v86);
    swift_dynamicCast();
    v57 = v75;
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v75);
    (*(v80 + 104))(v79, *MEMORY[0x1E6968F70], v81);
    v58 = v78;
    OUTLINED_FUNCTION_12_4();
    sub_1B81F79C8();
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
    v59 = v76;
    OUTLINED_FUNCTION_115();
    sub_1B81B5EF4(v58, &v2[v59]);
    swift_endAccess();
  }

  sub_1B8189AF0(0, &unk_1EBA7D870);
  v60 = [a1 walletOrderData];
  v61 = sub_1B81F79F8();
  v63 = v62;

  v64 = sub_1B81B6B98(v61, v63);
  if (!v64)
  {
    __break(1u);
  }

  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_orderHelpers] = v64;
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_realtimeOrderSuggestion] = a1;
  v65 = objc_opt_self();
  v66 = a1;
  v67 = [v65 currentDevice];
  v68 = [v67 userInterfaceIdiom];

  v2[OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_bannerForVisionDevice] = v68 == 6;
  v69 = type metadata accessor for SGWalletOrderSuggestion();
  v83.receiver = v2;
  v83.super_class = v69;
  objc_msgSendSuper2(&v83, sel_init);
}

double sub_1B81B6B34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B81B8448(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B8189A2C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1B81B6B98(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B81F79E8();
  v6 = [v4 initWithOrderData_];

  sub_1B81B85E4(a1, a2);
  return v6;
}

uint64_t sub_1B81B6C70()
{
  if (currentUIContext())
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);

    return v1();
  }

  else
  {
    sub_1B81871D4();
    OUTLINED_FUNCTION_7_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
    v3 = OUTLINED_FUNCTION_15_2();
    *(v3 + 16) = xmmword_1B81FD1B0;
    v4 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = MEMORY[0x1E69E6530];
    *(v3 + 64) = v4;
    *(v3 + 32) = 1;
    OUTLINED_FUNCTION_16_0();
    v5 = sub_1B81F8F68();

    return v5;
  }
}

uint64_t sub_1B81B6DEC()
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))();
  if (v2)
  {
    OUTLINED_FUNCTION_7_4();
    sub_1B81871D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
    v3 = OUTLINED_FUNCTION_15_2();
    *(v3 + 16) = xmmword_1B81FD1B0;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1B81A6928();
    *(v3 + 32) = v0;
    *(v3 + 40) = v1;
    sub_1B81F8F68();
    OUTLINED_FUNCTION_7_4();
  }

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81B6F6C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = [v1 attributedSubtitle];

  return v2;
}

id sub_1B81B7024()
{
  sub_1B8189AF0(0, &unk_1EBA7D8C0);
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  v3 = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1B81A5204(v1, v3, sub_1B81B86D4, v4);
}

uint64_t sub_1B81B714C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_1B81F79D8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1B8192D84(v3, &qword_1EBA7D868);
  }

  v13 = (*(v6 + 32))(v10, v3, v4);
  v14 = (*((*v11 & *v0) + 0xC0))(v13);
  v15 = sub_1B81F79A8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1B81B8D38;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B81B73E0;
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);

  [v14 saveOrderForURL:v15 completion:v17];
  _Block_release(v17);

  return (*(v6 + 8))(v10, v4);
}

void sub_1B81B73E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1B81B7458()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B81F79D8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_2();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v9);
  v13 = [v12 orderDeepLink];

  if (v13)
  {
    sub_1B81F79B8();

    (*(v3 + 32))(v11, v7, v1);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v15 = result;
      v16 = sub_1B81F79A8();
      v22[0] = 0;
      v17 = [v15 openURL:v16 configuration:0 error:v22];

      if (v17)
      {
        v18 = v22[0];
      }

      else
      {
        v19 = v22[0];
        v20 = sub_1B81F7988();

        swift_willThrow();
      }

      return (*(v3 + 8))(v11, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return sub_1B81B714C();
  }

  return result;
}

uint64_t sub_1B81B76D0()
{
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI23SGWalletOrderSuggestion_bannerForVisionDevice))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B81B7710()
{
  sub_1B8186FC8();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81B7758()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = [v1 walletLogo];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() spotlightIconImageWithBundleIdentifier_];

  return v4;
}

id sub_1B81B7888(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B81F8F58();

  return v5;
}

id sub_1B81B78F8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    return sub_1B81871D4();
  }

  result = sub_1B81F9348();
  if (result)
  {
    return sub_1B81871D4();
  }

  return result;
}

uint64_t sub_1B81B7970(unint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
  v2 = OUTLINED_FUNCTION_15_2();
  *(v2 + 16) = xmmword_1B81FD1B0;
  v3 = sub_1B8189548(a1);
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_12_4();
  sub_1B81F8F68();
  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81B7AD8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v6 = sub_1B81F90C8();
  v7 = a1;
  a4(v6);

  v8 = sub_1B81F8F58();

  return v8;
}

uint64_t sub_1B81B7B80()
{
  currentUIContext();
  switch((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
      OUTLINED_FUNCTION_13_3();
      sub_1B81871D4();
      OUTLINED_FUNCTION_7_4();

      break;
    default:
      return OUTLINED_FUNCTION_16_0();
  }

  return OUTLINED_FUNCTION_16_0();
}

id SGWalletOrderSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGWalletOrderSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGWalletOrderSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B81B7ED8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B81B7F9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B8189A2C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B81B7F9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B81B809C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B81F92C8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B81B809C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B81B80E8(a1, a2);
  sub_1B81B8200(&unk_1F3010AD8);
  return v3;
}

uint64_t sub_1B81B80E8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B81F9028())
  {
    result = sub_1B81B82E4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B81F9268();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B81F92C8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B81B8200(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B81B8354(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B81B82E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D8A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B81B8354(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D8A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1B81B8448(uint64_t a1, uint64_t a2)
{
  sub_1B81F93B8();
  sub_1B81F8FD8();
  v4 = sub_1B81F93D8();

  return sub_1B81B84C0(a1, a2, v4);
}

unint64_t sub_1B81B84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B81F9388() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B81B8574(void *a1)
{
  v2 = [a1 merchantName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B81F8F98();

  return v3;
}

uint64_t sub_1B81B85E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for SGWalletOrderSuggestion()
{
  result = qword_1EDC8B4F0;
  if (!qword_1EDC8B4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1B81B86D4()
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8))();
    if (v2 >= 2 && (v2 - 3 < 2 || v2 == 2))
    {
      sub_1B81B7458();
    }

    else
    {
      sub_1B81B714C();
    }
  }
}

void sub_1B81B8778()
{
  sub_1B81B8C90();
  if (v0 <= 0x3F)
  {
    sub_1B81F8058();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B81B8C90()
{
  if (!qword_1EBA7D888)
  {
    sub_1B81F79D8();
    v0 = sub_1B81F91F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA7D888);
    }
  }
}

void type metadata accessor for SGRealtimeWalletOrderState()
{
  if (!qword_1EBA7D890)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA7D890);
    }
  }
}

void sub_1B81B8D38(int a1)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((a1 - 1) <= 1)
    {
      v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
      if (v4)
      {
        [v4 suggestionWasUpdated_];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_14_4()
{

  return sub_1B81871D4();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_allocObject();
}

id SGRealtimeWalletOrderExtractionSuggestion.__allocating_init(extraction:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_12();
  return SGRealtimeWalletOrderExtractionSuggestion.init(extraction:)(v2);
}

id SGRealtimeWalletOrderExtractionSuggestion.init(extraction:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_helper;
  *&v1[v3] = [objc_allocWithZone(SGExtractedOrderSuggestion) init];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_realtimeOrderExtraction] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionSuggestion();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B81B8F88()
{
  result = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_helper) walletLogo];
  if (!result)
  {
    v2 = [objc_opt_self() spotlightIconImageWithBundleIdentifier_];

    return v2;
  }

  return result;
}

uint64_t sub_1B81B9090(unint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B81FD1B0;
  v3 = sub_1B8189548(a1);
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_12_4();
  sub_1B81F8F68();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81B9200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v6 = sub_1B81F90C8();
  v7 = a1;
  a4(v6);

  v8 = sub_1B81F8F58();

  return v8;
}

uint64_t sub_1B81B92A8()
{
  sub_1B81871D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B81FD1B0;
  v1 = MEMORY[0x1E69E65A8];
  *(v0 + 56) = MEMORY[0x1E69E6530];
  *(v0 + 64) = v1;
  *(v0 + 32) = 1;
  OUTLINED_FUNCTION_16_0();
  v2 = sub_1B81F8F68();

  return v2;
}

id sub_1B81B9380(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B81F8F58();

  return v5;
}

id sub_1B81B93F0()
{
  result = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_helper) walletLogo];
  if (!result)
  {
    return [objc_opt_self() spotlightIconImageWithBundleIdentifier_];
  }

  return result;
}

uint64_t sub_1B81B960C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B81B966C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81B96C8(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B81B972C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_suggestionDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

id sub_1B81B97F0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  if (v2)
  {
    v3 = [v2 suggestionsUIContext];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  sub_1B8189AF0(0, &unk_1EBA7D8C0);
  v4 = (*((*v1 & **(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_realtimeOrderExtraction)) + 0xC0))();
  v6 = v5;
  OUTLINED_FUNCTION_55();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v3;
  return sub_1B81A5204(v4, v6, sub_1B81B9A34, v8);
}

uint64_t sub_1B81B9938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = sub_1B81F9138();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_1B81F9118();

  v9 = sub_1B81F9108();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  sub_1B81BA0F0(0, 0, v7, &unk_1B81FEAA0, v10);
}

uint64_t sub_1B81B9A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  OUTLINED_FUNCTION_21(v6);
  v5[17] = swift_task_alloc();
  v7 = sub_1B81F79D8();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  sub_1B81F9118();
  v5[21] = sub_1B81F9108();
  OUTLINED_FUNCTION_12();
  v9 = sub_1B81F90F8();

  return MEMORY[0x1EEE6DFA0](sub_1B81B9B94, v9, v8);
}

id sub_1B81B9B94()
{
  OUTLINED_FUNCTION_13_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_17;
  }

  v2 = Strong;
  v4 = v0[17];
  v3 = v0[18];
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_realtimeOrderExtraction;
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(Strong + OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_realtimeOrderExtraction)) + 0xA0))();
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v7 = v0[17];

    v8 = sub_1B81BBD7C(v7, &qword_1EBA7D868);
    v9 = (*((*v6 & *v2) + 0xB8))(v8);
    if (v9)
    {
      v10 = v9;
      v40 = v0[16];
      OUTLINED_FUNCTION_55();
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      v13 = *((*v6 & **(v2 + v5)) + 0xA8);
      v39 = *(v2 + OBJC_IVAR____TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion_helper);
      v13();
      v14 = sub_1B81F8F58();

      v16 = *v6;
      v17 = v11;
      v18 = v10;
      (*((v16 & **(v2 + v5)) + 0xB0))(v15);
      v19 = sub_1B81F8F58();

      OUTLINED_FUNCTION_55();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v17;
      *(v21 + 24) = v20;
      v0[6] = sub_1B81BC0EC;
      v0[7] = v21;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1B81BA078;
      v0[5] = &block_descriptor_37;
      v22 = _Block_copy(v0 + 2);

      v23 = [v39 makePreviewControllerWithMessageID:v14 orderNumber:v19 completion:v22];
      _Block_release(v22);

      if (v40 == 1 && v23)
      {
        [v23 setModalPresentationStyle_];
      }

      swift_beginAccess();
      v24 = *v12;
      *v12 = v23;
      v25 = v23;

      if (v23)
      {
        v26 = v25;
        [v18 presentViewController_];

        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;

  v29 = sub_1B81F79A8();
  v0[14] = 0;
  v30 = [v28 openURL:v29 configuration:0 error:v0 + 14];

  v31 = v0[14];
  if (v30)
  {
    v32 = v31;

    v2 = v30;
  }

  else
  {
    v33 = v31;
    v34 = sub_1B81F7988();

    swift_willThrow();
  }

  v36 = v0[19];
  v35 = v0[20];
  v37 = v0[18];

  (*(v36 + 8))(v35, v37);
LABEL_17:

  OUTLINED_FUNCTION_11_5();

  return v38();
}

void sub_1B81BA078(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B81BA0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1B81BBD0C(a3, v24 - v10);
  v12 = sub_1B81F9138();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B81BBD7C(v11, &qword_1EBA7D958);
  }

  else
  {
    sub_1B81F9128();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B81F90F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B81F8FB8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1B81BBD7C(a3, &qword_1EBA7D958);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B81BBD7C(a3, &qword_1EBA7D958);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_1B81BA408()
{
  if (!SGIsInternalDevice())
  {
    return 0;
  }

  sub_1B8189AF0(0, &unk_1EBA7D8C0);
  OUTLINED_FUNCTION_55();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1B81A5204(0x64615220656C6946, 0xEA00000000007261, sub_1B81BA5B0, v0);
}

uint64_t sub_1B81BA4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = sub_1B81F9138();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1B81F9118();
  OUTLINED_FUNCTION_12();

  v7 = sub_1B81F9108();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1B81BA0F0(0, 0, v5, &unk_1B81FEA78, v8);
}

uint64_t sub_1B81BA5B8()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 40) = v1;
  sub_1B81F9118();
  *(v0 + 48) = sub_1B81F9108();
  OUTLINED_FUNCTION_12();
  v3 = sub_1B81F90F8();

  return MEMORY[0x1EEE6DFA0](sub_1B81BA648, v3, v2);
}

uint64_t sub_1B81BA648()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_13_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B81BA714(1);
  }

  OUTLINED_FUNCTION_11_5();

  return v2();
}

id sub_1B81BA714(int a1)
{
  v56 = a1;
  v60[2] = *MEMORY[0x1E69E9840];
  v58 = sub_1B81F78B8();
  OUTLINED_FUNCTION_1_0();
  v55 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v54 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v48 - v7;
  v59 = sub_1B81F79D8();
  OUTLINED_FUNCTION_1_0();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v52 = v11 - v10;
  v51 = sub_1B81F7878();
  v12 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6();
  v49 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D940);
  OUTLINED_FUNCTION_21(v15);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  sub_1B81F78A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D948);
  v19 = *(v12 + 72);
  v50 = v12;
  v20 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B81FE9A0;
  sub_1B81F7868();
  sub_1B81F7868();
  sub_1B81F7868();
  sub_1B81F7868();
  sub_1B81F7868();
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_1B81F9298();
  MEMORY[0x1B8CBAE10](0xD0000000000000FBLL, 0x80000001B8201A40);
  OUTLINED_FUNCTION_7_5();
  v23 = (*(v22 + 184))();
  MEMORY[0x1B8CBAE10](v23);

  MEMORY[0x1B8CBAE10](0x4E20726564724F0ALL, 0xEF203A7265626D75);
  OUTLINED_FUNCTION_7_5();
  v25 = (*(v24 + 176))();
  MEMORY[0x1B8CBAE10](v25);

  MEMORY[0x1B8CBAE10](0x1000000000000282, 0x80000001B8201B40);
  sub_1B81F7868();

  sub_1B81F7868();
  sub_1B81F7868();
  sub_1B81F7868();
  sub_1B81F7868();
  if ((v56 & 1) != 0 && (OUTLINED_FUNCTION_7_5(), v27 = (*(v26 + 168))(), sub_1B81BAFD0(v27, v28), v30 = v29, , v30))
  {
    v31 = v49;
    sub_1B81F7868();

    v33 = *(v21 + 16);
    v32 = *(v21 + 24);
    v34 = v57;
    if (v33 >= v32 >> 1)
    {
      v21 = sub_1B81BB9C4(v32 > 1, v33 + 1, 1, v21);
    }

    *(v21 + 16) = v33 + 1;
    (*(v50 + 32))(v21 + v20 + v33 * v19, v31, v51);
  }

  else
  {
    v34 = v57;
  }

  v35 = v58;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v58);
  v37 = v59;
  if (!EnumTagSinglePayload)
  {

    sub_1B81F7888();
  }

  if (__swift_getEnumTagSinglePayload(v18, 1, v35))
  {
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v37);
LABEL_12:

    sub_1B81BBD7C(v34, &qword_1EBA7D868);
    return sub_1B81BBD7C(v18, &qword_1EBA7D940);
  }

  v38 = v54;
  v39 = v55;
  (*(v55 + 16))(v54, v18, v35);
  sub_1B81F7898();
  (*(v39 + 8))(v38, v35);
  if (__swift_getEnumTagSinglePayload(v34, 1, v37) == 1)
  {
    goto LABEL_12;
  }

  v41 = OUTLINED_FUNCTION_12_4();
  v42(v41);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v43 = result;

    v44 = sub_1B81F79A8();
    v60[0] = 0;
    v45 = [v43 openURL:v44 configuration:0 error:v60];

    v46 = v60[0];
    if (v45)
    {
    }

    else
    {
      OUTLINED_FUNCTION_12();
      v47 = sub_1B81F7988();

      swift_willThrow();
    }

    (*(v53 + 8))(v52, v37);
    return sub_1B81BBD7C(v18, &qword_1EBA7D940);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B81BAFD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  sub_1B81F8048();

  v11 = sub_1B81F8028();
  v12 = sub_1B81F91A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B81B7ED8(a1, a2, &v20);
    _os_log_impl(&dword_1B8182000, v11, v12, "SGRealtimeWalletOrderExtractionSuggestion, writeEMLtoDisk: identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CBBAE0](v14, -1, -1);
    MEMORY[0x1B8CBBAE0](v13, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1B8189AF0(0, &qword_1EBA7D938);
  OUTLINED_FUNCTION_12();

  v15 = sub_1B81BB1FC();
  v16 = sub_1B81F8F58();
  v17 = [v15 writeEMLtoDiskForMessageWithIdentifier_];

  if (v17)
  {
    v18 = sub_1B81F8F98();
  }

  else
  {

    return 0;
  }

  return v18;
}