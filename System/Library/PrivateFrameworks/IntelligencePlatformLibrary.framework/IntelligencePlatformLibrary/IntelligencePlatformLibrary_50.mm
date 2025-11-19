uint64_t sub_1937D9034(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0);
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43760, &qword_19399CB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1937DB508(0, v7, 0);
    v8 = v17;
    v9 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_193448850();
      swift_dynamicCast();
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1937DB508(v11 > 1, v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v14 = *(v5 + 72);
      sub_1937DB9F0();
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t sub_1937D926C()
{
  result = qword_1EAE43688;
  if (!qword_1EAE43688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE43680, &qword_19399C8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43688);
  }

  return result;
}

unint64_t sub_1937D92E8()
{
  result = qword_1EAE43690;
  if (!qword_1EAE43690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3A9E8, &qword_19394F800);
    sub_1934DF3E8(&qword_1EAE3A848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43690);
  }

  return result;
}

unint64_t sub_1937D9388()
{
  result = qword_1EAE43698;
  if (!qword_1EAE43698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43698);
  }

  return result;
}

unint64_t sub_1937D93DC()
{
  result = qword_1EAE436A0;
  if (!qword_1EAE436A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436A0);
  }

  return result;
}

unint64_t sub_1937D9430()
{
  result = qword_1EAE436A8;
  if (!qword_1EAE436A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436A8);
  }

  return result;
}

unint64_t sub_1937D9484()
{
  result = qword_1EAE436B0;
  if (!qword_1EAE436B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436B0);
  }

  return result;
}

unint64_t sub_1937D94D8()
{
  result = qword_1EAE436B8;
  if (!qword_1EAE436B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436B8);
  }

  return result;
}

unint64_t sub_1937D952C()
{
  result = qword_1EAE436C0;
  if (!qword_1EAE436C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436C0);
  }

  return result;
}

uint64_t MomentsNotifications.hash(into:)(uint64_t a1)
{
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0);
  v3 = OUTLINED_FUNCTION_0(v134);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v120 - v12;
  v136 = sub_19393BE00();
  v14 = OUTLINED_FUNCTION_0(v136);
  v125 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_289();
  v130 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_6();
  v124 = v21 - v22;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49();
  v123 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49();
  v122 = v26;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_49();
  v121 = v28;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_49();
  v120 = v30;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49();
  v133 = v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v120 - v34;
  v126 = type metadata accessor for MomentsNotifications(0);
  v127 = v1;
  v36 = (v1 + v126[7]);
  v37 = v36[1];
  v135 = a1;
  if (v37)
  {
    v38 = *v36;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  v39 = v126[8];
  sub_193448850();
  v40 = v136;
  OUTLINED_FUNCTION_6_3(v35, 1, v136);
  if (v41)
  {
    sub_19393CAD0();
  }

  else
  {
    v42 = v125;
    (*(v125 + 32))(v130, v35, v40);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v43);
    OUTLINED_FUNCTION_66_25();
    v44 = *(v42 + 8);
    v45 = OUTLINED_FUNCTION_5_7();
    v46(v45);
  }

  if (*(v127 + v126[9]) != 2)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  if (*(v127 + v126[10]) != 2)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  if (*(v127 + v126[11]) != 2)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  v47 = *(v127 + v126[12]);
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = *(v134 + 64);
    v50 = v47 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v128 = (v125 + 8);
    v129 = (v125 + 32);
    v131 = *(v5 + 72);
    v132 = v49;
    v51 = &qword_19399D3C0;
    do
    {
      v52 = v51;
      sub_193448850();
      v53 = *v13;
      v54 = v13[8];
      v55 = *(v13 + 2);
      v56 = v13[24];
      v57 = *(v134 + 64);
      *v10 = *v13;
      *(v10 + 8) = v54;
      *(v10 + 16) = v55;
      *(v10 + 24) = v56;
      sub_1937DB9F0();
      if (v54 == 1)
      {
        sub_19393CAD0();
        if (!v56)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_19393CAD0();
        if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v58 = v53;
        }

        else
        {
          v58 = 0;
        }

        MEMORY[0x193B18060](v58);
        if (!v56)
        {
LABEL_22:
          OUTLINED_FUNCTION_293();
          if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v59 = v55;
          }

          else
          {
            v59 = 0;
          }

          MEMORY[0x193B18060](v59);
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_302();
LABEL_26:
      v60 = v133;
      sub_193448850();
      v40 = v136;
      OUTLINED_FUNCTION_6_3(v60, 1, v136);
      if (v41)
      {
        OUTLINED_FUNCTION_302();
      }

      else
      {
        (*v129)(v130, v60, v40);
        OUTLINED_FUNCTION_293();
        OUTLINED_FUNCTION_0_106();
        sub_1934DF3E8(&qword_1EAE3B978);
        OUTLINED_FUNCTION_66_25();
        v61 = *v128;
        v62 = OUTLINED_FUNCTION_5_7();
        v63(v62);
      }

      v51 = v52;
      sub_19344E6DC(v10, &qword_1EAE43660, v52);
      v50 += v131;
      --v48;
    }

    while (v48);
  }

  v65 = v126;
  v64 = v127;
  v66 = (v127 + v126[13]);
  if (*(v66 + 8) == 1)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v67 = *v66;
    OUTLINED_FUNCTION_293();
    if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    MEMORY[0x193B18060](v68);
  }

  v70 = v124;
  v69 = v125;
  v71 = v122;
  v72 = v123;
  v73 = v65[14];
  v74 = v120;
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v74, 1, v40);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v75 = OUTLINED_FUNCTION_16_43();
    v76(v75, v74, v40);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v77);
    OUTLINED_FUNCTION_35_36();
    sub_19393C540();
    v78 = OUTLINED_FUNCTION_33_29();
    v79(v78);
  }

  v80 = v65[15];
  v81 = v121;
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v81, 1, v40);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v82 = OUTLINED_FUNCTION_16_43();
    v83(v82, v81, v40);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v84);
    OUTLINED_FUNCTION_35_36();
    sub_19393C540();
    v85 = OUTLINED_FUNCTION_33_29();
    v86(v85);
  }

  OUTLINED_FUNCTION_13_58(v65[16]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v87);
    sub_1937DA240();
    OUTLINED_FUNCTION_53_28();
  }

  v88 = v65[17];
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v71, 1, v40);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v89 = OUTLINED_FUNCTION_16_43();
    v90(v89, v71, v40);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v91);
    OUTLINED_FUNCTION_35_36();
    sub_19393C540();
    v92 = OUTLINED_FUNCTION_33_29();
    v93(v92);
  }

  OUTLINED_FUNCTION_21_49(v65[18]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_36_28(v65[19]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v94);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_36_28(v65[20]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v95);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_36_28(v65[21]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v96);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  v97 = v65[22];
  sub_193448850();
  v98 = v136;
  OUTLINED_FUNCTION_6_3(v72, 1, v136);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v71 = v130;
    (*(v69 + 32))(v130, v72, v98);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v99);
    sub_19393C540();
    (*(v69 + 8))(v71, v98);
  }

  OUTLINED_FUNCTION_36_28(v65[23]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v100);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_36_28(v65[24]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v101);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_36_28(v65[25]);
  if (v71)
  {
    OUTLINED_FUNCTION_27_33(v102);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  v103 = v136;
  OUTLINED_FUNCTION_21_49(v65[26]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[27]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[28]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[29]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[30]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[31]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[32]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[33]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_13_58(v65[34]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v104);
    sub_1937DA294();
    OUTLINED_FUNCTION_53_28();
  }

  v105 = v65[35];
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v70, 1, v103);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v106 = OUTLINED_FUNCTION_16_43();
    v107(v106, v70, v103);
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_0_106();
    sub_1934DF3E8(v108);
    OUTLINED_FUNCTION_35_36();
    sub_19393C540();
    (*(v69 + 8))(v98, v103);
  }

  OUTLINED_FUNCTION_21_49(v65[36]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_13_58(v65[37]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v109);
    sub_1937DA2E8();
    OUTLINED_FUNCTION_53_28();
  }

  OUTLINED_FUNCTION_36_28(v65[38]);
  if (v103)
  {
    OUTLINED_FUNCTION_27_33(v110);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_13_58(v65[39]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v111);
    sub_1937DA33C();
    OUTLINED_FUNCTION_53_28();
  }

  v112 = (v64 + v65[40]);
  if (*(v112 + 8) == 1)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    v113 = *v112;
    OUTLINED_FUNCTION_293();
    if ((v113 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    MEMORY[0x193B18060](v114);
  }

  OUTLINED_FUNCTION_36_28(v65[41]);
  if (v103)
  {
    OUTLINED_FUNCTION_27_33(v115);
    OUTLINED_FUNCTION_26_36();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_13_58(v65[42]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v116);
    sub_1937DA390();
    OUTLINED_FUNCTION_53_28();
  }

  OUTLINED_FUNCTION_21_49(v65[43]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[44]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_13_58(v65[45]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v117);
    sub_1937DA3E4();
    OUTLINED_FUNCTION_53_28();
  }

  OUTLINED_FUNCTION_13_58(v65[46]);
  if (v41)
  {
    OUTLINED_FUNCTION_302();
  }

  else
  {
    OUTLINED_FUNCTION_7_53(v118);
    sub_1937DA438();
    OUTLINED_FUNCTION_53_28();
  }

  OUTLINED_FUNCTION_21_49(v65[47]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_21_49(v65[48]);
  if (!v41)
  {
    OUTLINED_FUNCTION_293();
  }

  return sub_19393CAD0();
}

unint64_t sub_1937DA240()
{
  result = qword_1EAE436C8;
  if (!qword_1EAE436C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436C8);
  }

  return result;
}

unint64_t sub_1937DA294()
{
  result = qword_1EAE436D0;
  if (!qword_1EAE436D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436D0);
  }

  return result;
}

unint64_t sub_1937DA2E8()
{
  result = qword_1EAE436D8;
  if (!qword_1EAE436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436D8);
  }

  return result;
}

unint64_t sub_1937DA33C()
{
  result = qword_1EAE436E0;
  if (!qword_1EAE436E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436E0);
  }

  return result;
}

unint64_t sub_1937DA390()
{
  result = qword_1EAE436E8;
  if (!qword_1EAE436E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436E8);
  }

  return result;
}

unint64_t sub_1937DA3E4()
{
  result = qword_1EAE436F0;
  if (!qword_1EAE436F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436F0);
  }

  return result;
}

unint64_t sub_1937DA438()
{
  result = qword_1EAE436F8;
  if (!qword_1EAE436F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE436F8);
  }

  return result;
}

void MomentsNotifications.SchedulingState.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsNotifications.SchedulingState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x7472616D53;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737543;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710863;
  }
}

void MomentsNotifications.SchedulingState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 6710863 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x7472616D53 && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6D6F74737543 && v0 == 0xE600000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t sub_1937DA668()
{
  OUTLINED_FUNCTION_91_0();
  v4 = OUTLINED_FUNCTION_51(0, 1, v3, MEMORY[0x1E69E7CC0]);
  v5 = OUTLINED_FUNCTION_105_1(v4);
  if (!(!v11 & v10))
  {
    v28 = OUTLINED_FUNCTION_51((v9 > 1), v0, v7, v8);
    v5 = OUTLINED_FUNCTION_17_2(v28);
  }

  OUTLINED_FUNCTION_95_2(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v29 = OUTLINED_FUNCTION_51((v16 > 1), v1, v14, v15);
    v12 = OUTLINED_FUNCTION_17_2(v29);
  }

  OUTLINED_FUNCTION_92_2(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v19 = OUTLINED_FUNCTION_51((v23 > 1), v0, v21, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_126_5(v19, v20, v21, v22);
  v26 = *(v25 + 3);
  if (v2 + 4 > (v26 >> 1))
  {
    v25 = OUTLINED_FUNCTION_51((v26 > 1), v2 + 4, v24, v25);
  }

  *(v25 + 2) = v2 + 4;
  return OUTLINED_FUNCTION_38_1(v25, &v25[16 * v0]);
}

uint64_t MomentsNotifications.ScheduledDeliverySetting.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x64656C6261736944;
  if (*v0 != 1)
  {
    v1 = 0x64656C62616E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F70707553746F4ELL;
  }
}

void MomentsNotifications.ScheduledDeliverySetting.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6F70707553746F4ELL && v0 == 0xEC00000064657472;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x64656C6261736944 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x64656C62616E45 && v0 == 0xE700000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

void MomentsNotifications.EventType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static MomentsNotifications.EventType.allCases.getter()
{
  v4 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43748, &qword_19399CB28);
  v5 = OUTLINED_FUNCTION_16_0(v4);
  if (!(!v11 & v10))
  {
    v40 = OUTLINED_FUNCTION_39(v9);
    v44 = OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE43748, &qword_19399CB28);
    v5 = OUTLINED_FUNCTION_17_2(v44);
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v45 = OUTLINED_FUNCTION_39(v16);
    v49 = OUTLINED_FUNCTION_85(v45, v46, v47, v48, &qword_1EAE43748, &qword_19399CB28);
    v12 = OUTLINED_FUNCTION_17_2(v49);
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v50 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v50, v2, 1, v51, &qword_1EAE43748, &qword_19399CB28);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v52 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v52, v53, v54, v55, &qword_1EAE43748, &qword_19399CB28);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v56 = OUTLINED_FUNCTION_39(v30);
    v29 = OUTLINED_FUNCTION_85(v56, v57, v58, v59, &qword_1EAE43748, &qword_19399CB28);
  }

  *(v29 + 2) = v1;
  OUTLINED_FUNCTION_4(v29, &v29[16 * v0]);
  v33 = v3 + 6;
  if (v3 + 6 > (v32 >> 1))
  {
    v60 = OUTLINED_FUNCTION_39(v32);
    v31 = OUTLINED_FUNCTION_84_2(v60, v61, v62, v63, &qword_1EAE43748, &qword_19399CB28);
  }

  *(v31 + 2) = v33;
  OUTLINED_FUNCTION_4(v31, &v31[16 * v1]);
  v36 = v3 + 7;
  if (v3 + 7 > (v35 >> 1))
  {
    v64 = OUTLINED_FUNCTION_39(v35);
    v34 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE43748, &qword_19399CB28);
  }

  *(v34 + 2) = v36;
  OUTLINED_FUNCTION_4(v34, &v34[16 * v33]);
  if (v3 + 8 > (v38 >> 1))
  {
    v68 = OUTLINED_FUNCTION_39(v38);
    v37 = OUTLINED_FUNCTION_84_2(v68, v69, v70, v71, &qword_1EAE43748, &qword_19399CB28);
  }

  *(v37 + 2) = v3 + 8;
  return OUTLINED_FUNCTION_38_1(v37, &v37[16 * v36]);
}

uint64_t MomentsNotifications.EventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x646575657551;
  switch(*v0)
  {
    case 1:
      result = 0x6465756575716544;
      break;
    case 2:
      result = 0x65726576696C6544;
      break;
    case 3:
      v2 = 1953722192;
      goto LABEL_10;
    case 4:
      result = 0x657373696D736944;
      break;
    case 5:
      v2 = 1886413140;
LABEL_10:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      break;
    case 6:
      result = OUTLINED_FUNCTION_56_21();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsNotifications.EventType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x646575657551 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x6465756575716544 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x65726576696C6544 && v0 == 0xE900000000000064;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 0x646574736F50 && v0 == 0xE600000000000000;
          if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v4 = 3;
          }

          else
          {
            v9 = v1 == 0x657373696D736944 && v0 == 0xE900000000000064;
            if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v4 = 4;
            }

            else
            {
              v10 = v1 == 0x646570706154 && v0 == 0xE600000000000000;
              if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v4 = 5;
              }

              else if (v1 == OUTLINED_FUNCTION_56_21() && v0 == v11)
              {

                v4 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_0_9();
                OUTLINED_FUNCTION_89();
                v4 = 6;
                if ((v1 & 1) == 0)
                {
                  v4 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

void MomentsNotifications.DeviceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static MomentsNotifications.DeviceType.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43740, &qword_19399CB20);
  v4 = OUTLINED_FUNCTION_16_0(v3);
  if (!(!v10 & v9))
  {
    v32 = OUTLINED_FUNCTION_39(v8);
    v36 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE43740, &qword_19399CB20);
    v4 = OUTLINED_FUNCTION_17_2(v36);
  }

  OUTLINED_FUNCTION_13_6(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v37 = OUTLINED_FUNCTION_39(v15);
    v41 = OUTLINED_FUNCTION_85(v37, v38, v39, v40, &qword_1EAE43740, &qword_19399CB20);
    v11 = OUTLINED_FUNCTION_17_2(v41);
  }

  OUTLINED_FUNCTION_8_5(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v42 = OUTLINED_FUNCTION_39(v22);
    v18 = sub_1934B0FCC(v42, v2, 1, v43, &qword_1EAE43740, &qword_19399CB20);
    v21 = v18;
  }

  OUTLINED_FUNCTION_9_7(v18, v19, v20, v21);
  if (!(v16 ^ v17 | v10))
  {
    v44 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_84_2(v44, v45, v46, v47, &qword_1EAE43740, &qword_19399CB20);
    v26 = v23;
  }

  OUTLINED_FUNCTION_3_7(v23, v24, v25, v26);
  if (!(v16 ^ v17 | v10))
  {
    v48 = OUTLINED_FUNCTION_39(v29);
    v28 = OUTLINED_FUNCTION_85(v48, v49, v50, v51, &qword_1EAE43740, &qword_19399CB20);
  }

  *(v28 + 2) = v1;
  v30 = &v28[16 * v0];
  *(v30 + 4) = 3;
  v30[40] = v2;
  return v28;
}

uint64_t MomentsNotifications.DeviceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x656E6F685049;
  switch(*v0)
  {
    case 1:
      result = 1684099145;
      break;
    case 2:
      result = 6512973;
      break;
    case 3:
      result = 0x6E6F69736956;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsNotifications.DeviceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x656E6F685049 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 1684099145 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 6512973 && v0 == 0xE300000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6E6F69736956 && v0 == 0xE600000000000000)
        {

          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

void MomentsNotifications.ContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsNotifications.ContentType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t MomentsNotifications.ContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6574697257;
  }

  else
  {
    result = 0x6974736567677553;
  }

  *v0;
  return result;
}

void MomentsNotifications.ContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6974736567677553 ? (v4 = v0 == 0xEA00000000006E6FLL) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6574697257 && v0 == 0xE500000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t sub_1937DB318()
{
  OUTLINED_FUNCTION_91_0();
  v3 = OUTLINED_FUNCTION_51(0, 1, v2, MEMORY[0x1E69E7CC0]);
  v4 = OUTLINED_FUNCTION_105_1(v3);
  if (!(!v10 & v9))
  {
    v25 = OUTLINED_FUNCTION_51((v8 > 1), v0, v6, v7);
    v4 = OUTLINED_FUNCTION_17_2(v25);
  }

  OUTLINED_FUNCTION_95_2(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v26 = OUTLINED_FUNCTION_51((v15 > 1), v1, v13, v14);
    v11 = OUTLINED_FUNCTION_17_2(v26);
  }

  OUTLINED_FUNCTION_92_2(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v18 = OUTLINED_FUNCTION_51((v22 > 1), v0, v20, v21);
    v21 = v18;
  }

  OUTLINED_FUNCTION_126_5(v18, v19, v20, v21);
  return v23;
}

uint64_t MomentsNotifications.FireDateSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6B6361626C6C6146;
  }

  else
  {
    result = 0x6574636964657250;
  }

  *v0;
  return result;
}

void MomentsNotifications.FireDateSource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6574636964657250 ? (v4 = v0 == 0xE900000000000064) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6B6361626C6C6146 && v0 == 0xE800000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

size_t sub_1937DB508(size_t a1, int64_t a2, char a3)
{
  result = sub_1937DB528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1937DB528(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43768, &qword_19399CB48);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43760, &qword_19399CB40) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43760, &qword_19399CB40) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1937DB6F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1937DB6F4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43760, &qword_19399CB40), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43760, &qword_19399CB40);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_1937DB7E4()
{
  result = qword_1EAE43700;
  if (!qword_1EAE43700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43700);
  }

  return result;
}

unint64_t sub_1937DB83C()
{
  result = qword_1EAE43708;
  if (!qword_1EAE43708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43708);
  }

  return result;
}

unint64_t sub_1937DB894()
{
  result = qword_1EAE43710;
  if (!qword_1EAE43710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43710);
  }

  return result;
}

unint64_t sub_1937DB8EC()
{
  result = qword_1EAE43718;
  if (!qword_1EAE43718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43718);
  }

  return result;
}

unint64_t sub_1937DB944()
{
  result = qword_1EAE43720;
  if (!qword_1EAE43720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43720);
  }

  return result;
}

unint64_t sub_1937DB99C()
{
  result = qword_1EAE43728;
  if (!qword_1EAE43728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43728);
  }

  return result;
}

uint64_t sub_1937DB9F0()
{
  OUTLINED_FUNCTION_91_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_54_21()
{
  v3 = *(v1 - 144) + v0;

  return sub_193448850();
}

uint64_t OUTLINED_FUNCTION_66_25()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_67_15()
{

  return sub_193448850();
}

void sub_1937DBAF0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEADF88);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v133 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v133, xmmword_19399CB50);
  *v0 = 1;
  OUTLINED_FUNCTION_63("reporterIdentification");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_0_0(v10, "reporterWritingDate");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v13 = "isSignificantLocationEnabled";
  *(v13 + 1) = 28;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_45_2(3 * v5);
  *v16 = 4;
  *v15 = "isSystemNotificationsEnabled";
  v15[1] = 28;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_0_0(v18, "isAppNotificationsEnabled");
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_0_0(v21, "predictionTuple");
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_96_1();
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_0_0(v24, "maxAvailabilityProbability");
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_45_2(7 * v5);
  *v28 = 8;
  v29 = OUTLINED_FUNCTION_0_0(v27, "maxAvailabilityProbabilityDate");
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_3_1(&v0[v5]);
  *v31 = 9;
  v32 = OUTLINED_FUNCTION_0_0(v30, "proposedFireDate");
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v34 = 10;
  v35 = OUTLINED_FUNCTION_28_4(v33, 22);
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_96_1();
  *v37 = 11;
  v38 = OUTLINED_FUNCTION_0_0(v36, "realTimeCheckHandlerRetryDate");
  (v9)(v38);
  v39 = OUTLINED_FUNCTION_96_1();
  *v40 = 12;
  v41 = OUTLINED_FUNCTION_0_0(v39, "realTimeCheckHandlerFailure");
  (v9)(v41);
  v42 = OUTLINED_FUNCTION_105_0();
  *v43 = 13;
  v44 = OUTLINED_FUNCTION_0_0(v42, "realTimeCheckHandlerErrorDescription");
  (v9)(v44);
  v45 = OUTLINED_FUNCTION_96_1();
  *v46 = 14;
  v47 = OUTLINED_FUNCTION_28_4(v45, 29);
  (v9)(v47);
  v48 = OUTLINED_FUNCTION_105_0();
  *v49 = 15;
  v50 = OUTLINED_FUNCTION_0_0(v48, "realTimeAlarmErrorDomain");
  (v9)(v50);
  v51 = OUTLINED_FUNCTION_45_2(15 * v5);
  *v52 = 16;
  *v51 = "fireAlarmDate";
  v51[1] = 13;
  v53 = OUTLINED_FUNCTION_1_3(v51);
  (v9)(v53);
  v54 = OUTLINED_FUNCTION_3_1(&v0[2 * v5]);
  *v55 = 17;
  v56 = OUTLINED_FUNCTION_28_4(v54, 30);
  (v9)(v56);
  v57 = OUTLINED_FUNCTION_45_2(17 * v5);
  *v58 = 18;
  v59 = OUTLINED_FUNCTION_0_0(v57, "fireTimerAlarmErrorCode");
  (v9)(v59);
  v60 = OUTLINED_FUNCTION_96_1();
  *v61 = 19;
  v62 = OUTLINED_FUNCTION_28_4(v60, 25);
  (v9)(v62);
  v63 = OUTLINED_FUNCTION_96_1();
  *v64 = 20;
  *v63 = "realTimeCheckRejected";
  v63[1] = 21;
  v65 = OUTLINED_FUNCTION_1_3(v63);
  (v9)(v65);
  v66 = OUTLINED_FUNCTION_105_0();
  *v67 = 21;
  *v66 = "realTimeCheckIsTraveling";
  v66[1] = 24;
  v68 = OUTLINED_FUNCTION_1_3(v66);
  (v9)(v68);
  v69 = OUTLINED_FUNCTION_105_0();
  *v70 = 22;
  v71 = OUTLINED_FUNCTION_28_4(v69, 28);
  (v9)(v71);
  v72 = OUTLINED_FUNCTION_3_1(v0 + 22 * v5);
  *v73 = 23;
  *v72 = "realTimeCheckIsInVisit";
  v72[1] = v74;
  v75 = OUTLINED_FUNCTION_1_3(v72);
  (v9)(v75);
  v76 = OUTLINED_FUNCTION_105_0();
  *v77 = 24;
  v78 = OUTLINED_FUNCTION_0_0(v76, "realTimeCheckIsInWorkoutHealthKit");
  (v9)(v78);
  v79 = OUTLINED_FUNCTION_96_1();
  *v80 = 25;
  v81 = OUTLINED_FUNCTION_28_4(v79, 30);
  (v9)(v81);
  v82 = OUTLINED_FUNCTION_3_1(v0 + 25 * v5);
  *v83 = 26;
  *v82 = "realTimeCheckIsJournaling";
  v82[1] = v84;
  v85 = OUTLINED_FUNCTION_1_3(v82);
  (v9)(v85);
  v86 = OUTLINED_FUNCTION_105_0();
  *v87 = 27;
  v88 = OUTLINED_FUNCTION_28_4(v86, 21);
  (v9)(v88);
  v89 = OUTLINED_FUNCTION_105_0();
  *v90 = 31;
  *v89 = "eventType";
  v89[1] = 9;
  v91 = OUTLINED_FUNCTION_1_3(v89);
  (v9)(v91);
  v92 = OUTLINED_FUNCTION_3_29(28);
  *v93 = 32;
  *v92 = "eventTime";
  v92[1] = 9;
  v94 = OUTLINED_FUNCTION_1_3(v92);
  (v9)(v94);
  v95 = OUTLINED_FUNCTION_3_29(29);
  *v96 = 30;
  v97 = OUTLINED_FUNCTION_28_4(v95, 17);
  (v9)(v97);
  v98 = OUTLINED_FUNCTION_96_1();
  *v99 = 33;
  v100 = OUTLINED_FUNCTION_28_4(v98, 11);
  (v9)(v100);
  v101 = OUTLINED_FUNCTION_45_2(31 * v5);
  *v102 = 34;
  v103 = OUTLINED_FUNCTION_28_4(v101, 20);
  (v9)(v103);
  v104 = OUTLINED_FUNCTION_3_1(&v0[4 * v5]);
  *v105 = 35;
  *v104 = "bundleInterfaceType";
  v104[1] = 19;
  v106 = OUTLINED_FUNCTION_1_3(v104);
  (v9)(v106);
  v107 = OUTLINED_FUNCTION_45_2(33 * v5);
  *v108 = 36;
  *v107 = "bundleGoodnessScore";
  v107[1] = 19;
  v109 = OUTLINED_FUNCTION_1_3(v107);
  (v9)(v109);
  v110 = OUTLINED_FUNCTION_3_29(34);
  *v111 = 37;
  v112 = OUTLINED_FUNCTION_28_4(v110, 8);
  (v9)(v112);
  v113 = OUTLINED_FUNCTION_3_29(35);
  *v114 = 38;
  v115 = OUTLINED_FUNCTION_28_4(v113, 10);
  (v9)(v115);
  v116 = OUTLINED_FUNCTION_96_1();
  *v117 = 39;
  *v116 = "isDevicePrimary";
  v116[1] = 15;
  v118 = OUTLINED_FUNCTION_1_3(v116);
  (v9)(v118);
  v119 = OUTLINED_FUNCTION_105_0();
  *v120 = 40;
  *v119 = "journalingAppFirstParty";
  v119[1] = 23;
  v121 = OUTLINED_FUNCTION_1_3(v119);
  (v9)(v121);
  v122 = OUTLINED_FUNCTION_3_29(38);
  *v123 = 41;
  *v122 = "schedulingState";
  v122[1] = 15;
  v124 = OUTLINED_FUNCTION_1_3(v122);
  (v9)(v124);
  v125 = OUTLINED_FUNCTION_3_29(39);
  *v126 = 42;
  *v125 = "scheduleDeliverySetting";
  v125[1] = 23;
  v127 = OUTLINED_FUNCTION_1_3(v125);
  (v9)(v127);
  v128 = OUTLINED_FUNCTION_3_29(40);
  *v129 = 43;
  v130 = OUTLINED_FUNCTION_28_4(v128, 19);
  (v9)(v130);
  v131 = OUTLINED_FUNCTION_3_29(41);
  *v132 = 44;
  *v131 = "isDNUGated";
  *(v131 + 8) = 10;
  *(v131 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937DC32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0);
  v33 = OUTLINED_FUNCTION_0(v32);
  v103 = v34;
  v104 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v98 = &v88 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  v102 = &v88 - v43;
  v44 = type metadata accessor for MomentsNotifications.Prediction(0);
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_289();
  v101 = v50;
  while (1)
  {
    v51 = sub_19393C0E0();
    if (v24 || (v52 & 1) != 0)
    {
      break;
    }

    switch(v51)
    {
      case 1:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 28);
        goto LABEL_43;
      case 2:
        v60 = *(type metadata accessor for MomentsNotifications(0) + 32);
        goto LABEL_54;
      case 3:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 36);
        goto LABEL_58;
      case 4:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 40);
        goto LABEL_58;
      case 5:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 44);
        goto LABEL_58;
      case 6:
        a10 = MEMORY[0x1E69E7CC0];
        sub_193498238(&a10);
        v61 = a10;
        v62 = *(a10 + 16);
        if (v62)
        {
          v93 = v31;
          v94 = v29;
          v95 = 0;
          v96 = v27;
          v92 = v44;
          v100 = *(v44 + 24);
          v63 = *(type metadata accessor for MomentsNotifications(0) + 48);
          v97 = v25;
          v89 = v63;
          v90 = v61;
          v64 = *(v25 + v63);
          v65 = v61 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v91 = v47;
          v99 = *(v47 + 72);
          v66 = v98;
          do
          {
            v105 = v62;
            v67 = v101;
            sub_1937DCA1C(v65, v101);
            v68 = *v67;
            v69 = *(v67 + 8);
            v70 = *(v67 + 16);
            v71 = v64;
            v72 = *(v67 + 24);
            v73 = v102;
            sub_1934487B4(v67 + v100, v102, &qword_1EAE3A9E8, &qword_19394F800);
            sub_1937D76B4(v67);
            v74 = *(v104 + 64);
            *v66 = v68;
            *(v66 + 8) = v69;
            *(v66 + 16) = v70;
            *(v66 + 24) = v72;
            v64 = v71;
            sub_1937DEC24(v73, v66 + v74, &qword_1EAE3A9E8, &qword_19394F800);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_1937DEB2C(0, *(v71 + 16) + 1, 1, v71);
            }

            v76 = *(v64 + 16);
            v75 = *(v64 + 24);
            v77 = v105;
            if (v76 >= v75 >> 1)
            {
              v64 = sub_1937DEB2C(v75 > 1, v76 + 1, 1, v64);
            }

            *(v64 + 16) = v76 + 1;
            OUTLINED_FUNCTION_54_22();
            sub_1937DEC24(v66, v78 + v79 * v76, &qword_1EAE43660, &qword_19399D3C0);
            v65 += v99;
            v62 = v77 - 1;
          }

          while (v62);

          v27 = v96;
          v25 = v97;
          *(v97 + v89) = v64;
          v29 = v94;
          v24 = v95;
          v44 = v92;
          v31 = v93;
          v47 = v91;
        }

        else
        {
        }

        continue;
      case 7:
        v56 = *(type metadata accessor for MomentsNotifications(0) + 52);
        goto LABEL_41;
      case 8:
        v59 = *(type metadata accessor for MomentsNotifications(0) + 56);
        goto LABEL_54;
      case 9:
        v81 = *(type metadata accessor for MomentsNotifications(0) + 60);
        goto LABEL_54;
      case 10:
        v57 = *(type metadata accessor for MomentsNotifications(0) + 64);
        goto LABEL_56;
      case 11:
        v80 = *(type metadata accessor for MomentsNotifications(0) + 68);
        goto LABEL_54;
      case 12:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 72);
        goto LABEL_58;
      case 13:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 76);
        goto LABEL_43;
      case 14:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 80);
        goto LABEL_43;
      case 15:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 84);
        goto LABEL_43;
      case 16:
        v58 = *(type metadata accessor for MomentsNotifications(0) + 88);
        goto LABEL_54;
      case 17:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 92);
        goto LABEL_43;
      case 18:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 96);
        goto LABEL_43;
      case 19:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 100);
        goto LABEL_43;
      case 20:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 104);
        goto LABEL_58;
      case 21:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 108);
        goto LABEL_58;
      case 22:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 112);
        goto LABEL_58;
      case 23:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 116);
        goto LABEL_58;
      case 24:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 120);
        goto LABEL_58;
      case 25:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 124);
        goto LABEL_58;
      case 26:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 128);
        goto LABEL_58;
      case 27:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 132);
        goto LABEL_58;
      case 30:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 144);
        goto LABEL_58;
      case 31:
        v85 = *(type metadata accessor for MomentsNotifications(0) + 136);
        goto LABEL_56;
      case 32:
        v86 = *(type metadata accessor for MomentsNotifications(0) + 140);
LABEL_54:
        sub_1934976E4();
        goto LABEL_59;
      case 33:
        v82 = *(type metadata accessor for MomentsNotifications(0) + 148);
        goto LABEL_56;
      case 34:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 152);
        goto LABEL_43;
      case 35:
        v83 = *(type metadata accessor for MomentsNotifications(0) + 156);
        goto LABEL_56;
      case 36:
        v56 = *(type metadata accessor for MomentsNotifications(0) + 160);
LABEL_41:
        OUTLINED_FUNCTION_33_30(v56);
        sub_19393C1E0();
        goto LABEL_59;
      case 37:
        v53 = *(type metadata accessor for MomentsNotifications(0) + 164);
LABEL_43:
        OUTLINED_FUNCTION_33_30(v53);
        sub_19393C200();
        goto LABEL_59;
      case 38:
        v55 = *(type metadata accessor for MomentsNotifications(0) + 168);
        goto LABEL_56;
      case 39:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 172);
        goto LABEL_58;
      case 40:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 176);
        goto LABEL_58;
      case 41:
        v87 = *(type metadata accessor for MomentsNotifications(0) + 180);
        goto LABEL_56;
      case 42:
        v84 = *(type metadata accessor for MomentsNotifications(0) + 184);
LABEL_56:
        sub_1934982A8();
        goto LABEL_59;
      case 43:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 188);
        goto LABEL_58;
      case 44:
        v54 = *(type metadata accessor for MomentsNotifications(0) + 192);
LABEL_58:
        OUTLINED_FUNCTION_33_30(v54);
        sub_19393C0F0();
LABEL_59:
        v24 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937DCA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentsNotifications.Prediction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1937DCA80()
{
  v2 = v1;
  v3 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_16_4(v3[7]);
  if (v5)
  {
    v6 = *v4;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    sub_1937DD054();
    if (!v1)
    {
      OUTLINED_FUNCTION_117_0(v3[9]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[10]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[11]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_79();
      sub_1937DD174();
      v8 = (v0 + v3[13]);
      if ((v8[1] & 1) == 0)
      {
        v9 = *v8;
        sub_19393C3B0();
      }

      OUTLINED_FUNCTION_79();
      sub_1937DD544();
      OUTLINED_FUNCTION_79();
      sub_1937DD664();
      OUTLINED_FUNCTION_238(v3[16]);
      if ((v11 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v10);
        OUTLINED_FUNCTION_32_6(v64, 10, v12, &type metadata for MomentsNotifications.FireDateSource, v13, &off_1F07F3760);
      }

      OUTLINED_FUNCTION_79();
      sub_1937DD784();
      OUTLINED_FUNCTION_117_0(v3[18]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_16_4(v3[19]);
      if (v15)
      {
        v16 = *v14;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[20]);
      if (v18)
      {
        v19 = *v17;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[21]);
      if (v21)
      {
        v22 = *v20;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_79();
      sub_1937DD8A4();
      OUTLINED_FUNCTION_16_4(v3[23]);
      if (v24)
      {
        v25 = *v23;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[24]);
      if (v27)
      {
        v28 = *v26;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_16_4(v3[25]);
      if (v30)
      {
        v31 = *v29;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_117_0(v3[26]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[27]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[28]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[29]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[30]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[31]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[32]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[33]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_238(v3[34]);
      if ((v33 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v32);
        OUTLINED_FUNCTION_32_6(v64, 31, v34, &type metadata for MomentsNotifications.EventType, v35, &off_1F07F36E8);
      }

      OUTLINED_FUNCTION_79();
      sub_1937DD9C4();
      OUTLINED_FUNCTION_117_0(v3[36]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_238(v3[37]);
      if ((v37 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v36);
        OUTLINED_FUNCTION_32_6(v64, 33, v38, &type metadata for MomentsNotifications.ContentType, v39, &off_1F07F3738);
      }

      OUTLINED_FUNCTION_16_4(v3[38]);
      if (v41)
      {
        v42 = *v40;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_238(v3[39]);
      if ((v44 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v43);
        OUTLINED_FUNCTION_32_6(v64, 35, v45, &type metadata for MomentsEventData.BundleInterfaceType, v46, &off_1F07F0A38);
      }

      v47 = (v0 + v3[40]);
      if ((v47[1] & 1) == 0)
      {
        v48 = *v47;
        sub_19393C3B0();
      }

      OUTLINED_FUNCTION_16_4(v3[41]);
      if (v50)
      {
        v51 = *v49;
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_238(v3[42]);
      if ((v53 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v52);
        OUTLINED_FUNCTION_32_6(v64, 38, v54, &type metadata for MomentsNotifications.DeviceType, v55, &off_1F07F3710);
      }

      OUTLINED_FUNCTION_117_0(v3[43]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[44]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_238(v3[45]);
      if ((v57 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v56);
        OUTLINED_FUNCTION_32_6(v64, 41, v58, &type metadata for MomentsNotifications.SchedulingState, v59, &off_1F07F3698);
      }

      OUTLINED_FUNCTION_238(v3[46]);
      if ((v61 & 1) == 0)
      {
        OUTLINED_FUNCTION_147(v60);
        OUTLINED_FUNCTION_32_6(v64, 42, v62, &type metadata for MomentsNotifications.ScheduledDeliverySetting, v63, &off_1F07F36C0);
      }

      OUTLINED_FUNCTION_117_0(v3[47]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }

      OUTLINED_FUNCTION_117_0(v3[48]);
      if (!v7)
      {
        OUTLINED_FUNCTION_26_37();
      }
    }
  }
}

void sub_1937DD054()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 32));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 2);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DD174()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v34 - v13;
  v14 = type metadata accessor for MomentsNotifications.Prediction(0);
  v15 = OUTLINED_FUNCTION_0(v14);
  v40 = v16;
  v41 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_289();
  v20 = v19;
  v21 = *(v9 + *(type metadata accessor for MomentsNotifications(0) + 48));
  v22 = *(v21 + 16);
  if (v22)
  {
    v35 = v5;
    v36 = v3;
    v37 = v7;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1937DEF3C(0, v22, 0);
    v23 = v44;
    v24 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v38 = *(v10 + 72);
    do
    {
      v42 = v22;
      v25 = v23;
      v26 = v1;
      v27 = v39;
      v28 = sub_1934487B4(v24, v39, &qword_1EAE43660, &qword_19399D3C0);
      MEMORY[0x1EEE9AC00](v28);
      *(&v34 - 2) = v27;
      v29 = v26;
      v23 = v25;
      static Buildable.with(_:)(sub_1937DEF5C, v41, &off_1F07F37B8, v20);
      v43 = v29;
      sub_19344E6DC(v27, &qword_1EAE43660, &qword_19399D3C0);
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1937DEF3C(v30 > 1, v31 + 1, 1);
        v23 = v25;
      }

      *(v23 + 16) = v31 + 1;
      OUTLINED_FUNCTION_54_22();
      sub_1937DEF88(v20, v32 + v33 * v31);
      v24 += v38;
      v1 = v43;
      v22 = v42 - 1;
    }

    while (v42 != 1);
    sub_193451CFC(v23, 6, v35, v41, v36, &off_1F07F3788);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937DD430(uint64_t a1)
{
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  v3 = *(*v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  OUTLINED_FUNCTION_50_23();
  v7 = v6[8];
  v8 = v2[18];
  *a1 = *v6;
  *(a1 + 8) = v7;
  sub_19344E6DC(&v6[v8], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_50_23();
  v9 = v6[24];
  v10 = v2[18];
  *(a1 + 16) = *(v6 + 2);
  *(a1 + 24) = v9;
  sub_19344E6DC(&v6[v10], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_50_23();
  v11 = v2[18];
  v12 = type metadata accessor for MomentsNotifications.Prediction(0);
  return sub_193681EC4(&v6[v11], a1 + *(v12 + 24));
}

void sub_1937DD544()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 56));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 8);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DD664()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 60));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 9);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DD784()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 68));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 11);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DD8A4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 88));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 16);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DD9C4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 140));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 32);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1937DDB48()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEADFA0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBC0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SchedulingStateUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v0 + v5));
  *v11 = "Off";
  *(v11 + 1) = 3;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "Smart");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v5);
  *v17 = 3;
  *v16 = "Custom";
  *(v16 + 8) = 6;
  *(v16 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937DDD18()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEADFB8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v0 + dword_1EAEADFF0;
  *(v4 + v0) = 0;
  *v5 = "ScheduledDeliverySettingUnknown";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_17_8((v4 + v0 + v3));
  *v10 = "NotSupported";
  *(v10 + 1) = 12;
  v10[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v11 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v12 = 2;
  *v11 = "Disabled";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v13 = OUTLINED_FUNCTION_9_4((v4 + v0 + 3 * v3));
  *v13 = "Enabled";
  *(v13 + 1) = 7;
  v13[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937DDF08()
{
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEADFD0);
  __swift_project_value_buffer(v1, qword_1EAEADFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v29 = OUTLINED_FUNCTION_156();
  *(v29 + 16) = xmmword_1939526B0;
  v5 = v29 + v1;
  *(v29 + v1) = 0;
  OUTLINED_FUNCTION_63("EventTypeUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_17_8((v5 + v4));
  *v10 = "Queued";
  *(v10 + 1) = 6;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v5 + 2 * v4);
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_0_0(v12, "Dequeued");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v5 + 3 * v4));
  *v15 = "Delivered";
  *(v15 + 1) = 9;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v5 + 4 * v4);
  *v18 = 4;
  *v17 = "Posted";
  v17[1] = 6;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v5 + 5 * v4);
  *v21 = 5;
  *v20 = "Dismissed";
  v20[1] = 9;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v9)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v5 + 6 * v4);
  *v24 = 6;
  *v23 = "Tapped";
  v23[1] = 6;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v9)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v5 + 7 * v4);
  *v27 = 7;
  *v26 = "Overwritten";
  *(v26 + 8) = 11;
  *(v26 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1937DE1D0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEADFE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("DeviceTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v12 = OUTLINED_FUNCTION_0_0(v11, "IPhone");
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  *v13 = "IPad";
  v13[1] = 4;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v5);
  *v17 = 3;
  v18 = OUTLINED_FUNCTION_0_0(v16, "Mac");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v20 = 4;
  *v19 = "Vision";
  *(v19 + 8) = 6;
  *(v19 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937DE3CC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE000);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("ContentTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v13 = OUTLINED_FUNCTION_48(v12, "Suggestion");
  v10(v13);
  v14 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v15 = v1;
  v16 = OUTLINED_FUNCTION_48(v14, "Write");
  v10(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937DE55C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE018);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("FireDateSourceUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_17_8((v0 + v5));
  v13 = OUTLINED_FUNCTION_48(v12, "Predicted");
  v10(v13);
  v14 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v15 = v1;
  v16 = OUTLINED_FUNCTION_48(v14, "Fallback");
  v10(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937DE6EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE030);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("vailabilityProbability");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v13 = v1;
  v14 = OUTLINED_FUNCTION_48(v12, "locationFilterProbability");
  v10(v14);
  v15 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v16 = OUTLINED_FUNCTION_48(v15, "predictionDate");
  v10(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937DE854()
{
  v1 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      v4 = *(type metadata accessor for MomentsNotifications.Prediction(0) + 24);
      sub_1934976E4();
LABEL_9:
      v1 = 0;
    }

    else if (result == 2 || result == 1)
    {
      sub_19393C1E0();
      goto LABEL_9;
    }
  }
}

void sub_1937DE920()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    sub_19393C3B0();
  }

  if (!v1)
  {
    if ((v0[3] & 1) == 0)
    {
      v3 = v0[2];
      sub_19393C3B0();
    }

    sub_1937DE9A8();
  }
}

void sub_1937DE9A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = type metadata accessor for MomentsNotifications.Prediction(v14);
  OUTLINED_FUNCTION_25_39(*(v15 + 24));
  OUTLINED_FUNCTION_64_1();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_243();
    v18(v17);
    OUTLINED_FUNCTION_22_1(v0, 3);
    v19 = OUTLINED_FUNCTION_78();
    v20(v19);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

size_t sub_1937DEB2C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1937DEC74(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1937DED7C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1937DEC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

size_t sub_1937DEC74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43798, &qword_19399CBE8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1937DED7C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_1937DEE68(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for MomentsNotifications.Prediction(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for MomentsNotifications.Prediction(0);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

size_t sub_1937DEF3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1937DEFEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1937DEF88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentsNotifications.Prediction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1937DEFEC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43790, &qword_19399CBE0);
  v10 = *(type metadata accessor for MomentsNotifications.Prediction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MomentsNotifications.Prediction(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1937DEE68(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t MomentsNotifications.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t MomentsNotifications.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t MomentsNotifications.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t MomentsNotifications.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t MomentsNotifications.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.reporterIdentification.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.reporterIdentification.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.reporterIdentification.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.reporterWritingDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 32));
}

uint64_t MomentsNotifications.reporterWritingDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 32));
}

uint64_t MomentsNotifications.reporterWritingDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isSignificantLocationEnabled.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t MomentsNotifications.isSignificantLocationEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isSystemNotificationsEnabled.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t MomentsNotifications.isSystemNotificationsEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isAppNotificationsEnabled.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t MomentsNotifications.isAppNotificationsEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.predictionTuple.getter()
{
  v1 = *(v0 + *(type metadata accessor for MomentsNotifications(0) + 48));
}

uint64_t MomentsNotifications.predictionTuple.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for MomentsNotifications(v2) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MomentsNotifications.predictionTuple.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.maxAvailabilityProbability.getter()
{
  v1 = (v0 + *(type metadata accessor for MomentsNotifications(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MomentsNotifications.maxAvailabilityProbability.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.maxAvailabilityProbabilityDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 56));
}

uint64_t MomentsNotifications.maxAvailabilityProbabilityDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 56));
}

uint64_t MomentsNotifications.maxAvailabilityProbabilityDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.proposedFireDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 60));
}

uint64_t MomentsNotifications.proposedFireDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 60));
}

uint64_t MomentsNotifications.proposedFireDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.proposedFireDateSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 64));
}

uint64_t MomentsNotifications.proposedFireDateSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckHandlerRetryDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 68));
}

uint64_t MomentsNotifications.realTimeCheckHandlerRetryDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 68));
}

uint64_t MomentsNotifications.realTimeCheckHandlerRetryDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckHandlerFailure.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckHandlerFailure.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorDescription.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 76));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorDescription.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorDescription.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 76);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorCode.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 80));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorCode.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 80));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckHandlerErrorCode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 80);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeAlarmErrorDomain.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 84));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.realTimeAlarmErrorDomain.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 84));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeAlarmErrorDomain.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 84);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.fireAlarmDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 88));
}

uint64_t MomentsNotifications.fireAlarmDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 88));
}

uint64_t MomentsNotifications.fireAlarmDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 88);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDescription.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 92));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDescription.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 92));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDescription.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 92);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorCode.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 96));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorCode.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 96));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.fireTimerAlarmErrorCode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 96);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDomain.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 100));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDomain.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 100));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.fireTimerAlarmErrorDomain.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 100);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckRejected.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 104)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckRejected.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 104);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsTraveling.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 108)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsTraveling.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 108);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsPlaceEligible.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 112)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsPlaceEligible.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 112);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsInVisit.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsInVisit.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 116);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsInWorkoutHealthKit.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 120)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsInWorkoutHealthKit.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 120);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsInWorkoutMotion.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 124)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsInWorkoutMotion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 124);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsJournaling.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 128)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsJournaling.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 128);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.realTimeCheckIsAtHome.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 132)) = v0;
  return result;
}

uint64_t MomentsNotifications.realTimeCheckIsAtHome.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 132);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.eventType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 136));
}

uint64_t MomentsNotifications.eventType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 136);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.eventTime.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 140));
}

uint64_t MomentsNotifications.eventTime.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 140));
}

uint64_t MomentsNotifications.eventTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 140);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.AttemptSuccessful.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 144)) = v0;
  return result;
}

uint64_t MomentsNotifications.AttemptSuccessful.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 144);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.contentType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 148));
}

uint64_t MomentsNotifications.contentType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 148);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.suggestionIdentifier.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 152));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.suggestionIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 152));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.suggestionIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 152);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.bundleInterfaceType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 156));
}

uint64_t MomentsNotifications.bundleInterfaceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 156);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.bundleGoodnessScore.getter()
{
  v1 = (v0 + *(type metadata accessor for MomentsNotifications(0) + 160));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MomentsNotifications.bundleGoodnessScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 160);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.deviceId.getter()
{
  v0 = type metadata accessor for MomentsNotifications(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 164));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t MomentsNotifications.deviceId.setter()
{
  v3 = OUTLINED_FUNCTION_11_54();
  result = OUTLINED_FUNCTION_201(*(v3 + 164));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MomentsNotifications.deviceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 164);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.deviceType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 168));
}

uint64_t MomentsNotifications.deviceType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 168);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isDevicePrimary.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 172)) = v0;
  return result;
}

uint64_t MomentsNotifications.isDevicePrimary.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 172);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.journalingAppFirstParty.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 176)) = v0;
  return result;
}

uint64_t MomentsNotifications.journalingAppFirstParty.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 176);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.schedulingState.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 180));
}

uint64_t MomentsNotifications.schedulingState.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 180);
  return OUTLINED_FUNCTION_1_4();
}

void MomentsNotifications.scheduleDeliverySetting.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for MomentsNotifications(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 184));
}

uint64_t MomentsNotifications.scheduleDeliverySetting.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 184);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isOnDefaultSchedule.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 188)) = v0;
  return result;
}

uint64_t MomentsNotifications.isOnDefaultSchedule.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 188);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t MomentsNotifications.isDNUGated.setter()
{
  result = OUTLINED_FUNCTION_18_46();
  *(v1 + *(result + 192)) = v0;
  return result;
}

uint64_t MomentsNotifications.isDNUGated.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for MomentsNotifications(v0) + 192);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1937E0D00@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.SchedulingState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E0D28@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.SchedulingState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E0D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937E0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937E0F88@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.ScheduledDeliverySetting.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E0FB0@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.ScheduledDeliverySetting.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E10A0@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.EventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E10C8@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.EventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E11B8@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E11E0@<X0>(char **a1@<X8>)
{
  result = static MomentsNotifications.DeviceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E12D0@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E12F8@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.ContentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E13E8@<X0>(uint64_t *a1@<X8>)
{
  result = MomentsNotifications.FireDateSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E1410@<X0>(uint64_t *a1@<X8>)
{
  result = static MomentsNotifications.FireDateSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E1518()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MomentsNotifications.Prediction(v1) + 24);
  sub_19393BE00();
  v3 = OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL sub_1937E159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v22 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v35 = v7;
  v24 = *(type metadata accessor for MomentsNotifications.Prediction(0) + 24);
  v25 = *(v16 + 48);
  sub_193448804(a1 + v24, v21, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(a2 + v24, &v21[v25], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v21);
  if (v26)
  {
    OUTLINED_FUNCTION_31(&v21[v25]);
    if (v26)
    {
      sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
      return 1;
    }

LABEL_21:
    sub_19344E6DC(v21, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_193448804(v21, v15, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v21[v25]);
  if (v26)
  {
    (*(v35 + 8))(v15, v4);
    goto LABEL_21;
  }

  v28 = v35;
  (*(v35 + 32))(v11, &v21[v25], v4);
  OUTLINED_FUNCTION_14_58();
  sub_1937E1AE4(v29, v30);
  v31 = sub_19393C550();
  v32 = *(v28 + 8);
  v33 = OUTLINED_FUNCTION_13_0();
  v32(v33);
  (v32)(v15, v4);
  sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
  return (v31 & 1) != 0;
}

uint64_t sub_1937E18C8()
{
  v1 = sub_19393BE00();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v13 = *v0;
    sub_19393CAD0();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x193B18060](v14);
  }

  if (*(v0 + 24) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v15 = v0[2];
    sub_19393CAD0();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x193B18060](v16);
  }

  v17 = type metadata accessor for MomentsNotifications.Prediction(0);
  sub_193448804(v0 + *(v17 + 24), v12, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v8, v12, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_14_58();
  sub_1937E1AE4(v19, v20);
  sub_19393C540();
  return (*(v4 + 8))(v8, v1);
}

uint64_t sub_1937E1AE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1937E1B90(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1937E1BF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1937E1E30()
{
  sub_19349D140();
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_1937E217C(319, &qword_1ED5082B8, &qword_1EAE3AA08, &qword_193951470, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1937E217C(319, &qword_1EAE43810, &qword_1EAE43660, &qword_19399D3C0, MEMORY[0x1E69E62F8]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED506690);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_19349D1FC(319, &qword_1EAE43818);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1EAE43820);
    if (v13 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, &qword_1EAE43828);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE43550);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1EAE43830);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE43838);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              sub_19349D1FC(319, &qword_1EAE43840);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
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

  return v0;
}

void sub_1937E217C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1937E2268()
{
  sub_19349D1FC(319, &qword_1ED506690);
  if (v0 <= 0x3F)
  {
    sub_19349D140();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s9ShortcutsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s8UseModelOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937E2470()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512448);
  v5 = __swift_project_value_buffer(v4, qword_1ED512448);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.Shortcuts.UseModel.Safety.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_69 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512448);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43848, &qword_19399D4C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.Shortcuts.UseModel.Safety.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E2880(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E28C8(void (*a1)(void))
{
  result = sub_1937E2880(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E28F8(uint64_t a1)
{
  result = sub_1937E2920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E2920()
{
  result = qword_1EAE3A980;
  if (!qword_1EAE3A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A980);
  }

  return result;
}

_BYTE *_s6SafetyOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShortcutsSafety.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ShortcutsSafety();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937E2C28(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43850, &qword_19399D530);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43850, &qword_19399D530);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937E2C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsSafety();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ShortcutsSafety.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43850, &qword_19399D530);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937E2DCC(v10, a1);
  }

  return result;
}

uint64_t sub_1937E2DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsSafety();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ShortcutsSafety.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937E665C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937E2DCC(v14, v40);
      v33 = type metadata accessor for ShortcutsSafety();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t ShortcutsSafety.serialize()()
{
  v1 = type metadata accessor for ShortcutsSafety();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43850, &qword_19399D530);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1937E2C28(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE43850, &qword_19399D530);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE43850, &qword_19399D530);
  return v15;
}

id static ShortcutsSafety.columns.getter()
{
  v164 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_5_75(0x6E6F69746361, 0xE600000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  v30 = OUTLINED_FUNCTION_17_43();
  result = OUTLINED_FUNCTION_5_75(v30, 0xEB00000000656372);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v156);
  OUTLINED_FUNCTION_5_10(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v48);
  v49 = OUTLINED_FUNCTION_12_56();
  result = OUTLINED_FUNCTION_5_75(v49, 0xE800000000000000);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v50 = swift_initStackObject();
  v58 = OUTLINED_FUNCTION_2_4(v50, v51, v52, v53, v54, v55, v56, v57, v157);
  OUTLINED_FUNCTION_5_10(v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v67 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v67);
  v68 = OUTLINED_FUNCTION_14_2();
  result = OUTLINED_FUNCTION_5_75(v68, 0xEC00000065707954);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v69 = swift_initStackObject();
  v77 = OUTLINED_FUNCTION_2_4(v69, v70, v71, v72, v73, v74, v75, v76, v158);
  OUTLINED_FUNCTION_5_10(v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v86);
  v87 = OUTLINED_FUNCTION_18_47();
  result = OUTLINED_FUNCTION_5_75(v87, 0xEA00000000006570);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v88 = swift_initStackObject();
  v96 = OUTLINED_FUNCTION_2_4(v88, v89, v90, v91, v92, v93, v94, v95, v159);
  OUTLINED_FUNCTION_5_10(v96, v97, v98, v99, v100, v101, v102, v103, v104);
  v105 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v105);
  v106 = OUTLINED_FUNCTION_15_6();
  result = OUTLINED_FUNCTION_3_5(v106, 0xEC000000656C6163);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v107 = swift_initStackObject();
  v115 = OUTLINED_FUNCTION_2_4(v107, v108, v109, v110, v111, v112, v113, v114, v160);
  OUTLINED_FUNCTION_5_10(v115, v116, v117, v118, v119, v120, v121, v122, v123);
  v124 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v124);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  v125 = swift_initStackObject();
  v133 = OUTLINED_FUNCTION_2_4(v125, v126, v127, v128, v129, v130, v131, v132, v161);
  OUTLINED_FUNCTION_5_10(v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v142 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v142);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_32_19();
  result = OUTLINED_FUNCTION_3_5(v143, v144);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v145 = swift_initStackObject();
  v153 = OUTLINED_FUNCTION_2_4(v145, v146, v147, v148, v149, v150, v151, v152, v162);
  *(v153 + 16) = v163;
  *(v153 + 32) = sub_19393C850();
  v154 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v155 = OUTLINED_FUNCTION_12_3();
  result = sub_19343D150(v155 | 0x7265566C00000000, 0xEC0000006E6F6973, 2, 0, v153, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v164;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1937E3628(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1(*(v8 + 28));
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  v12 = a1 == OUTLINED_FUNCTION_17_43() && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v13 = type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1(*(v13 + 32));
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = a1 == OUTLINED_FUNCTION_12_56() && a2 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v16 = type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1(*(v16 + 36));
    if (v17)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v19 = a1 == OUTLINED_FUNCTION_14_2() && a2 == v18;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1(*(v20 + 40));
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v23 = a1 == OUTLINED_FUNCTION_18_47() && a2 == v22;
  if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v24 = type metadata accessor for ShortcutsSafety();
    OUTLINED_FUNCTION_58_1(*(v24 + 44));
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_147(v9);
LABEL_9:
    sub_1934948FC();
    return;
  }

  v27 = a1 == OUTLINED_FUNCTION_15_6() && a2 == v26;
  if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v28 = *(type metadata accessor for ShortcutsSafety() + 48);
LABEL_44:
    if (!*(v3 + v28 + 8))
    {
      goto LABEL_7;
    }

    v37 = *(v3 + v28);
    goto LABEL_9;
  }

  v29 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v28 = *(type metadata accessor for ShortcutsSafety() + 52);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_32_19();
  v31 = a1 == (OUTLINED_FUNCTION_12_3() | 0x6564496C00000000) && a2 == v30;
  if (v31 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v28 = *(type metadata accessor for ShortcutsSafety() + 56);
    goto LABEL_44;
  }

  v33 = a1 == (OUTLINED_FUNCTION_12_3() | 0x7265566C00000000) && a2 == v32;
  if (v33 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v28 = *(type metadata accessor for ShortcutsSafety() + 60);
    goto LABEL_44;
  }

  sub_19349AB64();
  swift_allocError();
  v35 = v34;
  *v34 = a1;
  v34[1] = a2;
  v34[5] = type metadata accessor for ShortcutsSafety();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
  sub_1937E2C28(v3, boxed_opaque_existential_1Tm);
  *(v35 + 48) = 1;
  swift_willThrow();
}

uint64_t ShortcutsSafety.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ShortcutsSafety();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[11];
  OUTLINED_FUNCTION_131(v9);
  v15 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937E665C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v12 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v12);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  return result;
}

BOOL static ShortcutsSafety.== infix(_:_:)()
{
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_25_3(v0[7]);
  if (v2)
  {
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937E3E94();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[8]);
  if (v5)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937E3E40();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[9]);
  if (v8)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937E3DEC();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[10]);
  if (v11)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937E3D98();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[11]);
  if (v14)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v15)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937E3D44();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  v16 = v0[12];
  OUTLINED_FUNCTION_3();
  if (v19)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v18);
    v22 = v22 && v20 == v21;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v23 = v0[13];
  OUTLINED_FUNCTION_3();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v25);
    v29 = v22 && v27 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v30 = v0[14];
  OUTLINED_FUNCTION_3();
  if (v33)
  {
    if (!v31)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v32);
    v36 = v22 && v34 == v35;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v37 = v0[15];
  OUTLINED_FUNCTION_3();
  if (v40)
  {
    if (!v38)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v39);
    v43 = v22 && v41 == v42;
    return v43 || (sub_19393CA30() & 1) != 0;
  }

  return !v38;
}

unint64_t sub_1937E3D44()
{
  result = qword_1EAE43860;
  if (!qword_1EAE43860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43860);
  }

  return result;
}

unint64_t sub_1937E3D98()
{
  result = qword_1EAE43868;
  if (!qword_1EAE43868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43868);
  }

  return result;
}

unint64_t sub_1937E3DEC()
{
  result = qword_1EAE43870;
  if (!qword_1EAE43870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43870);
  }

  return result;
}

unint64_t sub_1937E3E40()
{
  result = qword_1EAE43878;
  if (!qword_1EAE43878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43878);
  }

  return result;
}

unint64_t sub_1937E3E94()
{
  result = qword_1EAE43880;
  if (!qword_1EAE43880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43880);
  }

  return result;
}

uint64_t ShortcutsSafety.hash(into:)()
{
  v1 = type metadata accessor for ShortcutsSafety();
  v2 = v0 + v1[7];
  if (*(v2 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v2);
    sub_1937E40B0();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[8]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v3);
    sub_1937E4104();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[9]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v5);
    sub_1937E4158();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[10]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v6);
    sub_1937E41AC();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[11]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v7);
    sub_1937E4200();
    OUTLINED_FUNCTION_133_1();
  }

  v8 = (v0 + v1[12]);
  if (v8[1])
  {
    v9 = *v8;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v10 = (v0 + v1[13]);
  if (v10[1])
  {
    v11 = *v10;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v12 = (v0 + v1[14]);
  if (v12[1])
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v0 + v1[15]);
  if (!v14[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v15 = *v14;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

unint64_t sub_1937E40B0()
{
  result = qword_1EAE43888;
  if (!qword_1EAE43888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43888);
  }

  return result;
}

unint64_t sub_1937E4104()
{
  result = qword_1EAE43890;
  if (!qword_1EAE43890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43890);
  }

  return result;
}

unint64_t sub_1937E4158()
{
  result = qword_1EAE43898;
  if (!qword_1EAE43898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43898);
  }

  return result;
}

unint64_t sub_1937E41AC()
{
  result = qword_1EAE438A0;
  if (!qword_1EAE438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438A0);
  }

  return result;
}

unint64_t sub_1937E4200()
{
  result = qword_1EAE438A8;
  if (!qword_1EAE438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438A8);
  }

  return result;
}

void ShortcutsSafety.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.Action.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v39 = OUTLINED_FUNCTION_39(v12);
    v43 = OUTLINED_FUNCTION_84_2(v39, v40, v41, v42, &qword_1EAE438F8, &qword_19399D760);
    v8 = OUTLINED_FUNCTION_17_2(v43);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v44 = OUTLINED_FUNCTION_39(v19);
    v48 = OUTLINED_FUNCTION_85(v44, v45, v46, v47, &qword_1EAE438F8, &qword_19399D760);
    v15 = OUTLINED_FUNCTION_17_2(v48);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    v49 = OUTLINED_FUNCTION_39(v26);
    v22 = sub_1934B0FCC(v49, v0, 1, v50, &qword_1EAE438F8, &qword_19399D760);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v51 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v51, v52, v53, v54, &qword_1EAE438F8, &qword_19399D760);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v55 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v55, v56, v57, v58, &qword_1EAE438F8, &qword_19399D760);
    v35 = v32;
  }

  OUTLINED_FUNCTION_20_29(v32, v33, v34, v35);
  return v37;
}

uint64_t ShortcutsSafety.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6552797465666153;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_29_34();
      break;
    case 2:
      result = OUTLINED_FUNCTION_27_34();
      break;
    case 3:
      result = 0x73736563637553;
      break;
    default:
      return result;
  }

  return result;
}

void ShortcutsSafety.Action.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6552797465666153 ? (v4 = v0 == 0xEC0000007463656ALL) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_29_34() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v9 = v1 == OUTLINED_FUNCTION_27_34() && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else if (v1 == 0x73736563637553 && v0 == 0xE700000000000000)
      {

        v5 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_0_9();

        v5 = 3;
        if ((v11 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void ShortcutsSafety.ErrorSource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.ErrorSource.allCases.getter()
{
  v3 = OUTLINED_FUNCTION_95_0();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_16_0(v9);
  if (!(!v16 & v15))
  {
    v42 = OUTLINED_FUNCTION_39(v14);
    v46 = OUTLINED_FUNCTION_84_2(v42, v43, v44, v45, &qword_1EAE438F0, &qword_19399D758);
    v10 = OUTLINED_FUNCTION_17_2(v46);
  }

  OUTLINED_FUNCTION_13_6(v10, v11, v12, v13);
  if (v22 != v23)
  {
    v47 = OUTLINED_FUNCTION_39(v21);
    v51 = OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE438F0, &qword_19399D758);
    v17 = OUTLINED_FUNCTION_17_2(v51);
  }

  OUTLINED_FUNCTION_8_5(v17, v18, v19, v20);
  if (v22 != v23)
  {
    v52 = OUTLINED_FUNCTION_39(v28);
    v24 = sub_1934B0FCC(v52, v1, 1, v53, &qword_1EAE438F0, &qword_19399D758);
    v27 = v24;
  }

  OUTLINED_FUNCTION_9_7(v24, v25, v26, v27);
  if (!(v22 ^ v23 | v16))
  {
    v54 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_84_2(v54, v55, v56, v57, &qword_1EAE438F0, &qword_19399D758);
    v32 = v29;
  }

  OUTLINED_FUNCTION_3_7(v29, v30, v31, v32);
  if (!(v22 ^ v23 | v16))
  {
    v58 = OUTLINED_FUNCTION_39(v38);
    v34 = OUTLINED_FUNCTION_85(v58, v59, v60, v61, &qword_1EAE438F0, &qword_19399D758);
    v37 = v34;
  }

  OUTLINED_FUNCTION_20_29(v34, v35, v36, v37);
  v40 = *(v39 + 3);
  if (v2 + 6 > (v40 >> 1))
  {
    v62 = OUTLINED_FUNCTION_39(v40);
    v39 = OUTLINED_FUNCTION_84_2(v62, v63, v64, v65, &qword_1EAE438F0, &qword_19399D758);
  }

  *(v39 + 2) = v2 + 6;
  return OUTLINED_FUNCTION_38_1(v39, &v39[16 * v0]);
}

uint64_t ShortcutsSafety.ErrorSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6441797465666153;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656469727265764FLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

void ShortcutsSafety.ErrorSource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0xD000000000000012 ? (v4 = 0x8000000193A3F7F0 == v0) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0xD000000000000013 && 0x8000000193A3F7D0 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0x6441797465666153 && v0 == 0xED00007265747061;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000013 && 0x8000000193A3F7B0 == v0;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else if (v1 == 0x656469727265764FLL && v0 == 0xE900000000000073)
        {

          v5 = 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_0_9();

          v5 = 4;
          if ((v10 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t ShortcutsSafety.Modality.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x49646E4174786554;
  }

  else
  {
    result = 0x796C6E4F74786554;
  }

  *v0;
  return result;
}

void ShortcutsSafety.Modality.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x796C6E4F74786554 ? (v4 = v0 == 0xE800000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x49646E4174786554 && v0 == 0xEC0000006567616DLL)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void ShortcutsSafety.InstanceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ShortcutsSafety.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_1937E4BA4(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_95_0();
  v9 = sub_1934B0FCC(v4, v5, v6, v7, a1, a2);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v19 = OUTLINED_FUNCTION_51((v10 > 1), v11 + 1, v8, v9);
    OUTLINED_FUNCTION_17_2(v19);
  }

  *(v9 + 2) = v13;
  v14 = &v9[16 * v11];
  *(v14 + 4) = 0;
  v14[40] = 0;
  v15 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    v20 = OUTLINED_FUNCTION_51((v10 > 1), v11 + 2, v8, v9);
    OUTLINED_FUNCTION_17_2(v20);
  }

  *(v9 + 2) = v15;
  v16 = &v9[16 * v13];
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (v12 < (v11 + 3))
  {
    v9 = OUTLINED_FUNCTION_51((v10 > 1), v11 + 3, v8, v9);
  }

  *(v9 + 2) = v11 + 3;
  v17 = &v9[16 * v15];
  *(v17 + 4) = 1;
  v17[40] = 1;
  return v9;
}

uint64_t ShortcutsSafety.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x65736E6F70736552;
  }

  else
  {
    result = 0x74706D6F7250;
  }

  *v0;
  return result;
}

void ShortcutsSafety.InstanceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x74706D6F7250 ? (v4 = v0 == 0xE600000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x65736E6F70736552 && v0 == 0xE800000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void ShortcutsSafety.OutputType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static ShortcutsSafety.OutputType.allCases.getter()
{
  v3 = OUTLINED_FUNCTION_95_0();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_16_0(v9);
  if (!(!v16 & v15))
  {
    v48 = OUTLINED_FUNCTION_39(v14);
    v52 = OUTLINED_FUNCTION_84_2(v48, v49, v50, v51, &qword_1EAE438D8, &qword_19399D740);
    v10 = OUTLINED_FUNCTION_17_2(v52);
  }

  OUTLINED_FUNCTION_13_6(v10, v11, v12, v13);
  if (v22 != v23)
  {
    v53 = OUTLINED_FUNCTION_39(v21);
    v57 = OUTLINED_FUNCTION_85(v53, v54, v55, v56, &qword_1EAE438D8, &qword_19399D740);
    v17 = OUTLINED_FUNCTION_17_2(v57);
  }

  OUTLINED_FUNCTION_8_5(v17, v18, v19, v20);
  if (v22 != v23)
  {
    v58 = OUTLINED_FUNCTION_39(v28);
    v24 = sub_1934B0FCC(v58, v1, 1, v59, &qword_1EAE438D8, &qword_19399D740);
    v27 = v24;
  }

  OUTLINED_FUNCTION_9_7(v24, v25, v26, v27);
  if (!(v22 ^ v23 | v16))
  {
    v60 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_84_2(v60, v61, v62, v63, &qword_1EAE438D8, &qword_19399D740);
    v32 = v29;
  }

  OUTLINED_FUNCTION_3_7(v29, v30, v31, v32);
  if (!(v22 ^ v23 | v16))
  {
    v64 = OUTLINED_FUNCTION_39(v38);
    v34 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE438D8, &qword_19399D740);
    v37 = v34;
  }

  OUTLINED_FUNCTION_20_29(v34, v35, v36, v37);
  v40 = *(v39 + 3);
  v41 = v2 + 6;
  if (v2 + 6 > (v40 >> 1))
  {
    v68 = OUTLINED_FUNCTION_39(v40);
    v39 = OUTLINED_FUNCTION_84_2(v68, v69, v70, v71, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v39 + 2) = v41;
  v42 = &v39[16 * v0];
  *(v42 + 4) = 4;
  v42[40] = v1;
  v43 = *(v39 + 3);
  v44 = v2 + 7;
  if (v2 + 7 > (v43 >> 1))
  {
    v72 = OUTLINED_FUNCTION_39(v43);
    v39 = OUTLINED_FUNCTION_85(v72, v73, v74, v75, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v39 + 2) = v44;
  v45 = &v39[16 * v41];
  *(v45 + 4) = 5;
  v45[40] = v1;
  v46 = *(v39 + 3);
  if (v2 + 8 > (v46 >> 1))
  {
    v76 = OUTLINED_FUNCTION_39(v46);
    v39 = OUTLINED_FUNCTION_84_2(v76, v77, v78, v79, &qword_1EAE438D8, &qword_19399D740);
  }

  *(v39 + 2) = v2 + 8;
  return OUTLINED_FUNCTION_38_1(v39, &v39[16 * v44]);
}

uint64_t ShortcutsSafety.OutputType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1954047316;
  switch(*v0)
  {
    case 1:
      result = 1819242306;
      break;
    case 2:
      result = 0x616E6F6974636944;
      break;
    case 3:
      result = 1953720652;
      break;
    case 4:
      result = 0x7265626D754ELL;
      break;
    case 5:
      result = 1702125892;
      break;
    case 6:
      result = 0x797469746E45;
      break;
    default:
      return result;
  }

  return result;
}

void ShortcutsSafety.OutputType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 1954047316 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 1819242306 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0x616E6F6974636944 && v0 == 0xEA00000000007972;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v8 = v1 == 1953720652 && v0 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v9 = v1 == 0x7265626D754ELL && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v10 = v1 == 1702125892 && v0 == 0xE400000000000000;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else if (v1 == 0x797469746E45 && v0 == 0xE600000000000000)
            {

              v5 = 6;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_0_9();

              v5 = 6;
              if ((v12 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

unint64_t sub_1937E5310()
{
  result = qword_1EAE438B0;
  if (!qword_1EAE438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438B0);
  }

  return result;
}

unint64_t sub_1937E5368()
{
  result = qword_1EAE438B8;
  if (!qword_1EAE438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438B8);
  }

  return result;
}

unint64_t sub_1937E53C0()
{
  result = qword_1EAE438C0;
  if (!qword_1EAE438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438C0);
  }

  return result;
}

unint64_t sub_1937E5418()
{
  result = qword_1EAE438C8;
  if (!qword_1EAE438C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438C8);
  }

  return result;
}

unint64_t sub_1937E5470()
{
  result = qword_1EAE438D0;
  if (!qword_1EAE438D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE438D0);
  }

  return result;
}

void sub_1937E54D4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE048);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_193951270;
  v5 = v4 + v0 + dword_1EAEAE080;
  *(v4 + v0) = 1;
  *v5 = "action";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 2;
  *v10 = "errorSource";
  v10[1] = 11;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  OUTLINED_FUNCTION_39_7(v13);
  *v14 = "modality";
  v14[1] = 8;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v4 + v0 + 3 * v3);
  *v17 = 4;
  *v16 = "instanceType";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v4 + v0 + 4 * v3);
  *v20 = 5;
  *v19 = "outputType";
  v19[1] = 10;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  *v23 = 6;
  *v22 = "systemLocale";
  v22[1] = 12;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v4 + v0 + 6 * v3);
  *v26 = 7;
  *v25 = "region";
  v25[1] = v27;
  v28 = OUTLINED_FUNCTION_1_3(v25);
  (v9)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v4 + v0 + 7 * v3);
  *v30 = 8;
  *v29 = "modelIdentifier";
  v29[1] = 15;
  v31 = OUTLINED_FUNCTION_1_3(v29);
  (v9)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v4 + v0 + 8 * v3);
  *v33 = 9;
  *v32 = "modelVersion";
  *(v32 + 8) = 12;
  *(v32 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E5798()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v4 + 28));
        goto LABEL_11;
      case 2:
        v9 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v9 + 32));
        goto LABEL_11;
      case 3:
        v6 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v6 + 36));
        goto LABEL_11;
      case 4:
        v7 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v7 + 40));
        goto LABEL_11;
      case 5:
        v5 = type metadata accessor for ShortcutsSafety();
        OUTLINED_FUNCTION_160(*(v5 + 44));
LABEL_11:
        sub_1934982A8();
        goto LABEL_16;
      case 6:
        v10 = *(type metadata accessor for ShortcutsSafety() + 48);
        goto LABEL_15;
      case 7:
        v11 = *(type metadata accessor for ShortcutsSafety() + 52);
        goto LABEL_15;
      case 8:
        v8 = *(type metadata accessor for ShortcutsSafety() + 56);
        goto LABEL_15;
      case 9:
        v12 = *(type metadata accessor for ShortcutsSafety() + 60);
LABEL_15:
        sub_19393C200();
LABEL_16:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1937E596C()
{
  v1 = v0;
  v2 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_238(v2[7]);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_147(v3);
    OUTLINED_FUNCTION_32_6(v35, 1, v5, &type metadata for ShortcutsSafety.Action, v6, &off_1F07F3DB0);
    v1 = v0;
  }

  if (!v1)
  {
    OUTLINED_FUNCTION_238(v2[8]);
    if ((v8 & 1) != 0 || (OUTLINED_FUNCTION_147(v7), OUTLINED_FUNCTION_32_6(v35, 2, v9, &type metadata for ShortcutsSafety.ErrorSource, v10, &off_1F07F3DD8), !v0))
    {
      OUTLINED_FUNCTION_238(v2[9]);
      if ((v12 & 1) != 0 || (OUTLINED_FUNCTION_147(v11), OUTLINED_FUNCTION_32_6(v35, 3, v13, &type metadata for ShortcutsSafety.Modality, v14, &off_1F07F3E00), !v0))
      {
        OUTLINED_FUNCTION_238(v2[10]);
        if ((v16 & 1) != 0 || (OUTLINED_FUNCTION_147(v15), OUTLINED_FUNCTION_32_6(v35, 4, v17, &type metadata for ShortcutsSafety.InstanceType, v18, &off_1F07F3E28), !v0))
        {
          OUTLINED_FUNCTION_238(v2[11]);
          if ((v20 & 1) != 0 || (OUTLINED_FUNCTION_147(v19), OUTLINED_FUNCTION_32_6(v35, 5, v21, &type metadata for ShortcutsSafety.OutputType, v22, &off_1F07F3E50), !v0))
          {
            OUTLINED_FUNCTION_16_4(v2[12]);
            if (!v24 || (v25 = *v23, OUTLINED_FUNCTION_2_7(), !v0))
            {
              OUTLINED_FUNCTION_16_4(v2[13]);
              if (!v27 || (v28 = *v26, OUTLINED_FUNCTION_2_7(), !v0))
              {
                OUTLINED_FUNCTION_16_4(v2[14]);
                if (!v30 || (v31 = *v29, OUTLINED_FUNCTION_2_7(), !v0))
                {
                  OUTLINED_FUNCTION_16_4(v2[15]);
                  if (v33)
                  {
                    v34 = *v32;
                    OUTLINED_FUNCTION_2_7();
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

uint64_t sub_1937E5B48()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE43900;

  return v0;
}

void sub_1937E5BE4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE060);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBD0);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "SafetyReject";
  *(v11 + 1) = 12;
  v12 = OUTLINED_FUNCTION_56_0(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "OtherReject";
  v13[1] = 11;
  v15 = OUTLINED_FUNCTION_56_0(v13);
  (v10)(v15);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  OUTLINED_FUNCTION_39_7(v16);
  *v17 = "HandleWithCare";
  v17[1] = 14;
  v18 = OUTLINED_FUNCTION_56_0(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 4;
  *v19 = "Success";
  *(v19 + 8) = 7;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E5DF4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE078);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_1939526E0);
  *v0 = "ErrorSourceUnknown";
  *(v0 + 8) = 18;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "InputTextSanitizer";
  *(v11 + 1) = 18;
  v12 = OUTLINED_FUNCTION_56_0(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "InputPixelSanitizer";
  v13[1] = 19;
  v15 = OUTLINED_FUNCTION_56_0(v13);
  (v10)(v15);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  OUTLINED_FUNCTION_39_7(v16);
  *v17 = "SafetyAdapter";
  v17[1] = 13;
  v18 = OUTLINED_FUNCTION_56_0(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 4;
  *v19 = "OutputTextSanitizer";
  v19[1] = 19;
  v21 = OUTLINED_FUNCTION_56_0(v19);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v23 = 5;
  *v22 = "Overrides";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E6034()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE090);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v6, xmmword_19394FBB0);
  *v0 = "ModalityUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "TextOnly";
  *(v11 + 1) = 8;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 2;
  *v12 = "TextAndImage";
  *(v12 + 8) = 12;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937E61DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v6, xmmword_19394FBB0);
  *v0 = "InstanceTypeUnknown";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "InstanceTypePrompt";
  *(v11 + 1) = 18;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 2;
  *v12 = "InstanceTypeResponse";
  *(v12 + 8) = 20;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937E6384()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0C0);
  __swift_project_value_buffer(v2, qword_1EAEAE0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v24 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v24, xmmword_1939526B0);
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v10 = "Text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v12 = 2;
  *v11 = "Bool";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  OUTLINED_FUNCTION_39_7(v13);
  *v14 = "Dictionary";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v16 = 4;
  *v15 = "List";
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v18 = 5;
  *v17 = "Number";
  *(v17 + 8) = 6;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v19 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v20 = 6;
  *v19 = "Date";
  *(v19 + 8) = 4;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v21 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v22 = 7;
  *v21 = "Entity";
  *(v21 + 8) = 6;
  *(v21 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

uint64_t ShortcutsSafety.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ShortcutsSafety();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for ShortcutsSafety()
{
  result = qword_1EAE461C0;
  if (!qword_1EAE461C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsSafety.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ShortcutsSafety();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void ShortcutsSafety.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void ShortcutsSafety.errorSource.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void ShortcutsSafety.modality.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void ShortcutsSafety.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

void ShortcutsSafety.outputType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

uint64_t ShortcutsSafety.systemLocale.getter()
{
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.systemLocale.setter()
{
  v3 = OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.region.getter()
{
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.region.setter()
{
  v3 = OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.modelIdentifier.getter()
{
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.modelIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsSafety.modelVersion.getter()
{
  v0 = type metadata accessor for ShortcutsSafety();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t ShortcutsSafety.modelVersion.setter()
{
  v3 = OUTLINED_FUNCTION_11_55();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1937E6DB4@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.Action.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E6DDC@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.Action.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E6E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937E6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937E703C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.ErrorSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7064@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.ErrorSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7154@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.Modality.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E717C@<X0>(char **a1@<X8>)
{
  result = static ShortcutsSafety.Modality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E726C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937E7294@<X0>(char **a1@<X8>)
{
  result = static ShortcutsSafety.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E7384@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsSafety.OutputType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937E73AC@<X0>(uint64_t *a1@<X8>)
{
  result = static ShortcutsSafety.OutputType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutsSafety.hashValue.getter()
{
  sub_19393CAB0();
  ShortcutsSafety.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937E74DC()
{
  sub_19393CAB0();
  ShortcutsSafety.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937E7620()
{
  result = qword_1EAE43960;
  if (!qword_1EAE43960)
  {
    type metadata accessor for ShortcutsSafety();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43960);
  }

  return result;
}

void sub_1937E76A4()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE3A968);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A970);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A960);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE3A918);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1EAE3A920);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED508290);
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

uint64_t sub_1937E7898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5124A8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5124A8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_70 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5124A8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43968, &qword_19399DDE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E7CA8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E7CF0(void (*a1)(void))
{
  result = sub_1937E7CA8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E7D20(uint64_t a1)
{
  result = sub_1937E7D48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E7D48()
{
  result = qword_1ED5028A0;
  if (!qword_1ED5028A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028A0);
  }

  return result;
}

_BYTE *_s16SafetyGuardrailsOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937E7E90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512508);
  v5 = __swift_project_value_buffer(v4, qword_1ED512508);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.SafetyOverrides.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_71 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512508);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43970, &qword_19399DE68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.SafetyOverrides.attribute(_:)(void (*a1)(void))
{
  result = sub_1937E82A0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E82E8(void (*a1)(void))
{
  result = sub_1937E82A0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937E8318(uint64_t a1)
{
  result = sub_1937E8340();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937E8340()
{
  result = qword_1EAE3A9C8;
  if (!qword_1EAE3A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9C8);
  }

  return result;
}

_BYTE *_s15SafetyOverridesOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceSafetyGuardrails.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937E8648(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43978, &qword_19399DEE0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43978, &qword_19399DEE0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937E8648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyGuardrails.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43978, &qword_19399DEE0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937E87EC(v10, a1);
  }

  return result;
}

uint64_t sub_1937E87EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyGuardrails.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937EA318() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937E87EC(v14, v40);
      v33 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceSafetyGuardrails.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43978, &qword_19399DEE0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1937E8648(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE43978, &qword_19399DEE0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE43978, &qword_19399DEE0);
  return v15;
}

id static AppleIntelligenceSafetyGuardrails.columns.getter()
{
  v76 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14520);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_2_4(inited, v12, v13, v14, v15, v16, v17, v18, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v19[2].n128_u64[0] = sub_19393C850();
  v28 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v29 = OUTLINED_FUNCTION_11_56();
  result = OUTLINED_FUNCTION_3_5(v29, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v30 = swift_initStackObject();
  v38 = OUTLINED_FUNCTION_2_4(v30, v31, v32, v33, v34, v35, v36, v37, v74);
  OUTLINED_FUNCTION_2_13(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v38[2].n128_u64[0] = sub_19393C850();
  v47 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v48, v49, v50, v51, v38, 4, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v75);
  OUTLINED_FUNCTION_2_13(v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v60[2].n128_u64[0] = sub_19393C850();
  v69 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v70, v71, v72, v73, v60, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v76;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_1937E8F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v9 = result[7];
    goto LABEL_7;
  }

  v11 = a1 == OUTLINED_FUNCTION_11_56() && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v9 = result[8];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      v19 = *(v3 + v9);
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v12 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v13 = v3 + result[9];
    if (*(v13 + 9))
    {
LABEL_22:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

LABEL_30:
    OUTLINED_FUNCTION_147(v13);
    return sub_1934948FC();
  }

  v15 = a1 == OUTLINED_FUNCTION_14_2() && a2 == v14;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
    v13 = v3 + result[10];
    if (*(v13 + 9))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17 + 2);
  sub_1937E8648(v3, boxed_opaque_existential_1Tm);
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceSafetyGuardrails.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  OUTLINED_FUNCTION_131(v8);
  *a1 = *sub_1937EA318();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t static AppleIntelligenceSafetyGuardrails.== infix(_:_:)()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v1 = v0[7];
  OUTLINED_FUNCTION_3();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = v0[8];
  OUTLINED_FUNCTION_3();
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = *v10 == *v11 && v8 == v9;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    OUTLINED_FUNCTION_25_3(v0[9]);
    if (v14)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v15)
      {
        return 0;
      }

      sub_1937E93E8();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_25_3(v0[10]);
    if (v17)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v18)
      {
        return 0;
      }

      sub_1937E9394();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  return 0;
}

unint64_t sub_1937E9394()
{
  result = qword_1EAE43980;
  if (!qword_1EAE43980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43980);
  }

  return result;
}

unint64_t sub_1937E93E8()
{
  result = qword_1EAE43988;
  if (!qword_1EAE43988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43988);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.hash(into:)()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v4 = (v0 + v1[8]);
  if (v4[1])
  {
    v5 = *v4;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v6 = v0 + v1[9];
  if (*(v6 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v6);
    sub_1937E956C();
    sub_19393C540();
  }

  v7 = v0 + v1[10];
  if (*(v7 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_10(v7);
  sub_1937E95C0();
  return sub_19393C540();
}

unint64_t sub_1937E956C()
{
  result = qword_1EAE43990;
  if (!qword_1EAE43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43990);
  }

  return result;
}

unint64_t sub_1937E95C0()
{
  result = qword_1EAE43998;
  if (!qword_1EAE43998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43998);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x7463656A6552;
  }

  else
  {
    result = 1701208403;
  }

  *v0;
  return result;
}

void AppleIntelligenceSafetyGuardrails.Action.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 1701208403 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x7463656A6552 && v0 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_1937E97B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    v5 = *(v4 + 3);
    v7 = v5 >> 1;
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v6 + 3;
  v12 = &v4[16 * v10];
  *(v12 + 4) = 1;
  v12[40] = 1;
  return v4;
}

uint64_t AppleIntelligenceSafetyGuardrails.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x65736E6F70736552;
  }

  else
  {
    result = 0x74706D6F7250;
  }

  *v0;
  return result;
}

void AppleIntelligenceSafetyGuardrails.InstanceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x74706D6F7250 ? (v4 = v0 == 0xE600000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x65736E6F70736552 && v0 == 0xE800000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_1937E99E8()
{
  result = qword_1EAE439A0;
  if (!qword_1EAE439A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439A0);
  }

  return result;
}

unint64_t sub_1937E9A40()
{
  result = qword_1EAE439A8;
  if (!qword_1EAE439A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439A8);
  }

  return result;
}

void sub_1937E9A9C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE0D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5 + dword_1EAEAE110;
  *(v6 + v5) = 1;
  *v7 = "useCaseIdentifier";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  *v13 = 2;
  *v12 = "assetVersion";
  *(v12 + 8) = 12;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v15 = 3;
  *v14 = "action";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v16 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v17 = 4;
  *v16 = "instanceType";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937E9C88()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 28);
        goto LABEL_10;
      case 2:
        v8 = *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 32);
LABEL_10:
        sub_19393C200();
        goto LABEL_11;
      case 3:
        v6 = v0 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 36);
        goto LABEL_8;
      case 4:
        v7 = v0 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 40);
LABEL_8:
        sub_1934982A8();
LABEL_11:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937E9DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  v8 = result;
  v9 = (v3 + *(result + 28));
  if (v9[1])
  {
    v10 = *v9;
    result = sub_19393C3C0();
  }

  if (!v4)
  {
    v11 = (v3 + v8[8]);
    if (v11[1])
    {
      v12 = *v11;
      result = sub_19393C3C0();
    }

    v13 = v3 + v8[9];
    if ((*(v13 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v13);
      result = sub_193447324(v15, 3, a2, &type metadata for AppleIntelligenceSafetyGuardrails.Action, a3, &off_1F07F4338);
    }

    v14 = v3 + v8[10];
    if ((*(v14 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147(v14);
      return sub_193447324(v15, 4, a2, &type metadata for AppleIntelligenceSafetyGuardrails.InstanceType, a3, &off_1F07F4360);
    }
  }

  return result;
}

uint64_t sub_1937E9F0C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE439C0;

  return v0;
}

void sub_1937E9FA8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE0F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v6, xmmword_19394FBB0);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "Safe";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "Reject";
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937EA160()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE108);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_60_0(v6, xmmword_19394FBB0);
  *v0 = "InstanceTypeUnknown";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "InstanceTypePrompt";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "InstanceTypeResponse";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceSafetyGuardrails.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceSafetyGuardrails()
{
  result = qword_1ED508450;
  if (!qword_1ED508450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceSafetyGuardrails.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyGuardrails.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.assetVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyGuardrails.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppleIntelligenceSafetyGuardrails() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void AppleIntelligenceSafetyGuardrails.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void AppleIntelligenceSafetyGuardrails.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyGuardrails();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

uint64_t sub_1937EA7A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyGuardrails.Action.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EA7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static AppleIntelligenceSafetyGuardrails.Action.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937EA82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937EA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937EAA40@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyGuardrails.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EAA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static AppleIntelligenceSafetyGuardrails.InstanceType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t AppleIntelligenceSafetyGuardrails.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyGuardrails.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937EABA8()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyGuardrails.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937EAC50()
{
  result = qword_1EAE439F0;
  if (!qword_1EAE439F0)
  {
    type metadata accessor for AppleIntelligenceSafetyGuardrails();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE439F0);
  }

  return result;
}

void sub_1937EACD4()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED5028A8);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5028B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceSafetyOverrides.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937EAFDC(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE439F8, &qword_19399E310);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE439F8, &qword_19399E310);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937EAFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyOverrides.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE439F8, &qword_19399E310);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937EB180(v10, a1);
  }

  return result;
}

uint64_t sub_1937EB180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppleIntelligenceSafetyOverrides.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937ED250() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937EB180(v14, v40);
      v33 = type metadata accessor for AppleIntelligenceSafetyOverrides();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceSafetyOverrides.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE439F8, &qword_19399E310);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1937EAFDC(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE439F8, &qword_19399E310);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE439F8, &qword_19399E310);
  return v15;
}

id static AppleIntelligenceSafetyOverrides.columns.getter()
{
  v109 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A14520);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  v30 = OUTLINED_FUNCTION_15_6();
  result = OUTLINED_FUNCTION_3_5(v30, 0xEC000000656C6163);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v104);
  OUTLINED_FUNCTION_5_10(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v48);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v49 = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v105);
  OUTLINED_FUNCTION_5_10(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v66);
  v67 = OUTLINED_FUNCTION_11_56();
  result = OUTLINED_FUNCTION_3_5(v67, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v68 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_2_4(v68, v69, v70, v71, v72, v73, v74, v75, v106);
  OUTLINED_FUNCTION_5_10(v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v85);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v86, v87, v88, v89, v0, 4, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v90 = swift_initStackObject();
  v98 = OUTLINED_FUNCTION_2_4(v90, v91, v92, v93, v94, v95, v96, v97, v107);
  *(v98 + 16) = v108;
  *(v98 + 32) = sub_19393C850();
  v99 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v100, v101, v102, v103, v98, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v109;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_1937EB918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[7];
    goto LABEL_7;
  }

  v11 = a1 == OUTLINED_FUNCTION_15_6() && a2 == v10;
  if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[8];
    goto LABEL_7;
  }

  v12 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[9];
    goto LABEL_7;
  }

  v14 = a1 == OUTLINED_FUNCTION_11_56() && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v9 = result[10];
LABEL_7:
    if (*(v3 + v9 + 8))
    {
      v22 = *(v3 + v9);
      return sub_1934948FC();
    }

    goto LABEL_34;
  }

  v15 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v16 = v3 + result[11];
    if (*(v16 + 9))
    {
LABEL_34:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

LABEL_42:
    OUTLINED_FUNCTION_147(v16);
    return sub_1934948FC();
  }

  v18 = a1 == OUTLINED_FUNCTION_14_2() && a2 == v17;
  if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AppleIntelligenceSafetyOverrides();
    v16 = v3 + result[12];
    if (*(v16 + 9))
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v20 = v19;
  *v19 = a1;
  v19[1] = a2;
  v19[5] = type metadata accessor for AppleIntelligenceSafetyOverrides();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20 + 2);
  sub_1937EAFDC(v3, boxed_opaque_existential_1Tm);
  *(v20 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceSafetyOverrides.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v9);
  v10 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v10);
  *a1 = *sub_1937ED250();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v10 = 0;
  *(v10 + 8) = 256;
  return result;
}

uint64_t static AppleIntelligenceSafetyOverrides.== infix(_:_:)()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v1 = v0[7];
  OUTLINED_FUNCTION_3();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v8 = v0[8];
  OUTLINED_FUNCTION_3();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v10);
    v14 = v7 && v12 == v13;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v0[9];
  OUTLINED_FUNCTION_3();
  if (v18)
  {
    if (!v16)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v17);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = v0[10];
  OUTLINED_FUNCTION_3();
  if (v25)
  {
    if (!v23)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v24);
    v28 = v7 && v26 == v27;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    OUTLINED_FUNCTION_25_3(v0[11]);
    if (v30)
    {
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v31)
      {
        return 0;
      }

      sub_1937EBEF0();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_25_3(v0[12]);
    if (v33)
    {
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      if (v34)
      {
        return 0;
      }

      sub_1937EBE9C();
      if ((sub_19393C550() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v23)
  {
    goto LABEL_37;
  }

  return 0;
}

unint64_t sub_1937EBE9C()
{
  result = qword_1EAE43A00;
  if (!qword_1EAE43A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A00);
  }

  return result;
}

unint64_t sub_1937EBEF0()
{
  result = qword_1EAE43A08;
  if (!qword_1EAE43A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A08);
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.hash(into:)()
{
  v1 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    OUTLINED_FUNCTION_7_1(v2);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v3 = (v0 + v1[8]);
  if (v3[1])
  {
    OUTLINED_FUNCTION_7_1(v3);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v4 = (v0 + v1[9]);
  if (v4[1])
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v5 = (v0 + v1[10]);
  if (v5[1])
  {
    OUTLINED_FUNCTION_7_1(v5);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v6 = v0 + v1[11];
  if (*(v6 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v6);
    sub_1937EC084();
    sub_19393C540();
  }

  v7 = v0 + v1[12];
  if (*(v7 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_3_10(v7);
  sub_1937EC0D8();
  return sub_19393C540();
}

unint64_t sub_1937EC084()
{
  result = qword_1EAE43A10;
  if (!qword_1EAE43A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A10);
  }

  return result;
}

unint64_t sub_1937EC0D8()
{
  result = qword_1EAE43A18;
  if (!qword_1EAE43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A18);
  }

  return result;
}

void AppleIntelligenceSafetyOverrides.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static AppleIntelligenceSafetyOverrides.Action.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43A38, &qword_19399E420);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v20 = OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE43A38, &qword_19399E420);
    OUTLINED_FUNCTION_17_2(v20);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v21 = OUTLINED_FUNCTION_39(v1);
    v23 = sub_1934B0FCC(v21, v2 + 2, 1, v22, &qword_1EAE43A38, &qword_19399E420);
    OUTLINED_FUNCTION_17_2(v23);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v24 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v24, v2 + 3, 1, v25, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v26 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v30 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_1934B0FCC(v30, v2 + 5, 1, v31, &qword_1EAE43A38, &qword_19399E420);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceSafetyOverrides.Action.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701208403;
  switch(*v0)
  {
    case 1:
      result = 0x7463656A6552;
      break;
    case 2:
      result = 0x65766F6D6552;
      break;
    case 3:
      result = 0x6563616C706552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.Action.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 1701208403 && v1 == 0xE400000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x7463656A6552 && v1 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  v10 = v2 == 0x65766F6D6552 && v1 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v7 = 1;
    v6 = 2;
  }

  else if (v2 == 0x6563616C706552 && v1 == 0xE700000000000000)
  {

    v7 = 1;
    v6 = 3;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v6 = 3;
    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AppleIntelligenceSafetyOverrides.InstanceType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static AppleIntelligenceSafetyOverrides.InstanceType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43A30, &qword_19399E418);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    v14 = OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE43A30, &qword_19399E418);
    OUTLINED_FUNCTION_17_2(v14);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v17 = sub_1934B0FCC(v15, v2 + 2, 1, v16, &qword_1EAE43A30, &qword_19399E418);
    OUTLINED_FUNCTION_17_2(v17);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, &qword_1EAE43A30, &qword_19399E418);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x65736E6F70736552;
  }

  else
  {
    result = 0x74706D6F7250;
  }

  *v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.InstanceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 0x74706D6F7250 && v1 == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x65736E6F70736552 || v1 != 0xE800000000000000)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_1937EC7E0()
{
  result = qword_1EAE43A20;
  if (!qword_1EAE43A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A20);
  }

  return result;
}

unint64_t sub_1937EC838()
{
  result = qword_1EAE43A28;
  if (!qword_1EAE43A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A28);
  }

  return result;
}

void sub_1937EC88C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE120);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "useCaseIdentifier";
  *(v0 + 8) = 17;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 2;
  *v13 = "systemLocale";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v17 = 3;
  *v16 = "region";
  v16[1] = 6;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v20 = 4;
  *v19 = "assetVersion";
  v19[1] = 12;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v23 = 5;
  *v22 = "action";
  v22[1] = 6;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v26 = 6;
  *v25 = "instanceType";
  *(v25 + 8) = 12;
  *(v25 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937ECACC()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 28);
        goto LABEL_10;
      case 2:
        v9 = *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 32);
        goto LABEL_10;
      case 3:
        v7 = *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 36);
        goto LABEL_10;
      case 4:
        v8 = *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 40);
LABEL_10:
        sub_19393C200();
        goto LABEL_13;
      case 5:
        v6 = v0 + *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 44);
        goto LABEL_12;
      case 6:
        v10 = v0 + *(type metadata accessor for AppleIntelligenceSafetyOverrides() + 48);
LABEL_12:
        sub_1934982A8();
LABEL_13:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1937ECC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_16_4(v8[7]);
  if (v10)
  {
    v11 = *v9;
    OUTLINED_FUNCTION_2_7();
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4(v8[8]);
    if (!v13 || (v14 = *v12, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_16_4(v8[9]);
      if (!v16 || (v17 = *v15, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4(v8[10]);
        if (!v19 || (v20 = *v18, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
        {
          v21 = v3 + v8[11];
          if ((*(v21 + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(v21), sub_193447324(v23, 5, a2, &type metadata for AppleIntelligenceSafetyOverrides.Action, a3, &off_1F07F4578), !v5))
          {
            v22 = v3 + v8[12];
            if ((*(v22 + 9) & 1) == 0)
            {
              OUTLINED_FUNCTION_147(v22);
              sub_193447324(v23, 6, a2, &type metadata for AppleIntelligenceSafetyOverrides.InstanceType, a3, &off_1F07F45A0);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1937ECD90()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE43A40;

  return v0;
}

void sub_1937ECE2C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE138);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 1;
  *v13 = "ActionSafe";
  v13[1] = 10;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v17 = 2;
  *v16 = "ActionReject";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v20 = 3;
  *v19 = "ActionRemove";
  v19[1] = 12;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v23 = 4;
  *v22 = "ActionReplace";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937ED060()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE150);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEAE188;
  *v7 = 0;
  *v8 = "InstanceTypeUnknown";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 1;
  *v13 = "InstanceTypePrompt";
  *(v13 + 8) = 18;
  *(v13 + 16) = 2;
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 2;
  *v15 = "InstanceTypeResponse";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceSafetyOverrides.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceSafetyOverrides()
{
  result = qword_1EAE464E0;
  if (!qword_1EAE464E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceSafetyOverrides.useCaseIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.useCaseIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.systemLocale.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.systemLocale.setter()
{
  v3 = OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.region.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.region.setter()
{
  v3 = OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.assetVersion.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceSafetyOverrides.assetVersion.setter()
{
  v3 = OUTLINED_FUNCTION_4_76();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void AppleIntelligenceSafetyOverrides.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

void AppleIntelligenceSafetyOverrides.instanceType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceSafetyOverrides();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

uint64_t sub_1937ED7E0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyOverrides.Action.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937ED808@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceSafetyOverrides.Action.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937ED864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937ED96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937EDA78@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceSafetyOverrides.InstanceType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937EDAA0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceSafetyOverrides.InstanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t AppleIntelligenceSafetyOverrides.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyOverrides.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937EDBE0()
{
  sub_19393CAB0();
  AppleIntelligenceSafetyOverrides.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937EDC88()
{
  result = qword_1EAE43A70;
  if (!qword_1EAE43A70)
  {
    type metadata accessor for AppleIntelligenceSafetyOverrides();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A70);
  }

  return result;
}

void sub_1937EDD0C()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A9D0);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A9A8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s24SensitiveContentAnalysisOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937EDF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512568);
  v5 = __swift_project_value_buffer(v4, qword_1ED512568);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.MediaAnalysis.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_72 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512568);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A78, &qword_19399E780);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.MediaAnalysis.attribute(_:)(void (*a1)(void))
{
  result = sub_1937EE308(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE350(void (*a1)(void))
{
  result = sub_1937EE308(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE380(uint64_t a1)
{
  result = sub_1937EE3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937EE3A8()
{
  result = qword_1EAE43A80;
  if (!qword_1EAE43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A80);
  }

  return result;
}

_BYTE *_s13MediaAnalysisOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937EE4F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5125C8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5125C8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.UIInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_73 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5125C8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A88, &qword_19399E7F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.UIInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_1937EE8F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE93C(void (*a1)(void))
{
  result = sub_1937EE8F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937EE96C(uint64_t a1)
{
  result = sub_1937EE994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937EE994()
{
  result = qword_1EAE43A90;
  if (!qword_1EAE43A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43A90);
  }

  return result;
}

_BYTE *_s13UIInteractionOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisMediaAnalysis.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937EEC9C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43A98, &qword_19399E870);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43A98, &qword_19399E870);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937EEC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43A98, &qword_19399E870);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937EEE40(v10, a1);
  }

  return result;
}

uint64_t sub_1937EEE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937F1A14() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937EEE40(v14, v40);
      v33 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisMediaAnalysis.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43A98, &qword_19399E870);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1937EEC9C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE43A98, &qword_19399E870);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE43A98, &qword_19399E870);
  return v15;
}

id static SensitiveContentAnalysisMediaAnalysis.columns.getter()
{
  v148 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v10, v11, v12, v13, v0, 2, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_57(result);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_1_78(inited, v16, v17, v18, v19, v20, v21, v22, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v23[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v33, v34, v35, v36, v23, 4, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_57(result);
  v37 = swift_initStackObject();
  v45 = OUTLINED_FUNCTION_1_78(v37, v38, v39, v40, v41, v42, v43, v44, v143);
  OUTLINED_FUNCTION_2_13(v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v45[2].n128_u64[0] = sub_19393C850();
  v54 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_57();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v55, v56, v57, v58, v45, 4, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_57(result);
  v59 = swift_initStackObject();
  v67 = OUTLINED_FUNCTION_1_78(v59, v60, v61, v62, v63, v64, v65, v66, v144);
  OUTLINED_FUNCTION_5_10(v67, v68, v69, v70, v71, v72, v73, v74, v75);
  *(v37 + 32) = sub_19393C850();
  v76 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v77, v78);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v79 = swift_initStackObject();
  v87 = OUTLINED_FUNCTION_1_78(v79, v80, v81, v82, v83, v84, v85, v86, v145);
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95);
  *(v37 + 32) = sub_19393C850();
  v96 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_14_0();
  result = OUTLINED_FUNCTION_3_5(v97, v98);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v99 = swift_initStackObject();
  v107 = OUTLINED_FUNCTION_1_78(v99, v100, v101, v102, v103, v104, v105, v106, v146);
  OUTLINED_FUNCTION_5_10(v107, v108, v109, v110, v111, v112, v113, v114, v115);
  *(v37 + 32) = sub_19393C850();
  v116 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v117, v118, v119, v120, v37, 4, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v121 = swift_initStackObject();
  v129 = OUTLINED_FUNCTION_1_78(v121, v122, v123, v124, v125, v126, v127, v128, v147);
  OUTLINED_FUNCTION_2_13(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v129[2].n128_u64[0] = sub_19393C850();
  v138 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v139, v140, v141, v142, v129, 2, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v148;
  }

LABEL_15:
  __break(1u);
  return result;
}

int *sub_1937EF66C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 != OUTLINED_FUNCTION_42_1() || v6 != 0xEB00000000657079)
  {
    v3 = v6;
    if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      v10 = a1 == OUTLINED_FUNCTION_16_3() && v3 == 0xE800000000000000;
      if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v11 = v2 + result[8];
        if (*(v11 + 9))
        {
          goto LABEL_15;
        }

        goto LABEL_44;
      }

      v12 = a1 == OUTLINED_FUNCTION_12_57() && v3 == 0xEB00000000657669;
      if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v11 = v2 + result[9];
        if (*(v11 + 9))
        {
          goto LABEL_15;
        }

        goto LABEL_44;
      }

      OUTLINED_FUNCTION_18_5();
      v14 = a1 == OUTLINED_FUNCTION_20_50() && v3 == v13;
      if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v15 = result[10];
      }

      else
      {
        OUTLINED_FUNCTION_14_0();
        v17 = a1 == OUTLINED_FUNCTION_15_15() && v3 == v16;
        if (!v17 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_11();
          v19 = a1 == OUTLINED_FUNCTION_22_5() && v3 == v18;
          if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            goto LABEL_47;
          }

          result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
          v11 = v2 + result[12];
          if (*(v11 + 9))
          {
LABEL_15:
            *a2 = 0u;
            a2[1] = 0u;
            return result;
          }

LABEL_44:
          OUTLINED_FUNCTION_147(v11);
          return sub_1934948FC();
        }

        result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
        v15 = result[11];
      }

      if (*(v2 + v15 + 8))
      {
        v25 = *(v2 + v15);
        return sub_1934948FC();
      }

      goto LABEL_15;
    }
  }

  v8 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 28));
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    return sub_1934948FC();
  }

  __break(1u);
LABEL_47:
  v20 = a1 == 0x736D726168 && v3 == 0xE500000000000000;
  if (!v20 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
LABEL_55:
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v23 = v22;
    *v22 = a1;
    v22[1] = v3;
    v22[5] = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
    sub_1937EEC9C(v2, boxed_opaque_existential_1Tm);
    *(v23 + 48) = 1;
    swift_willThrow();
  }

  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v21 = *(v2 + result[13]);
  if (v21 >= 0xFFFFFFFF80000000)
  {
    if (v21 <= 0x7FFFFFFF)
    {
      return sub_1934948FC();
    }

    __break(1u);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

unint64_t sub_1937EF944()
{
  result = qword_1EAE43AA8;
  if (!qword_1EAE43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AA8);
  }

  return result;
}

unint64_t sub_1937EF998()
{
  result = qword_1EAE43AC0;
  if (!qword_1EAE43AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AC0);
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[9];
  OUTLINED_FUNCTION_131(v6);
  v11 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[12];
  j__OUTLINED_FUNCTION_131(v8);
  *a1 = *sub_1937F1A14();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_1937EF944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AB0, &qword_19399E878);
  sub_1937EFC3C(&qword_1EAE43AB8, &qword_1EAE43AB0, &qword_19399E878);
  sub_19393C8A0();

  *(a1 + v2[7]) = v12;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v11 = 0;
  v11[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  sub_1937EF998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AC8, &qword_19399E880);
  sub_1937EFC3C(&qword_1EAE43AD0, &qword_1EAE43AC8, &qword_19399E880);
  result = sub_19393C8A0();
  *(a1 + v2[13]) = v12;
  return result;
}

uint64_t sub_1937EFC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t static SensitiveContentAnalysisMediaAnalysis.== infix(_:_:)()
{
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_23_6(v0[7]);
  sub_1937EFE30();
  if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_25_3(v0[8]);
  if (v2)
  {
    if ((v1 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937EFF80();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[9]);
  if (v5)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v6)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937EFF2C();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v7 = v0[10];
  OUTLINED_FUNCTION_3();
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_36;
    }

    v12 = *v10 == *v11 && v8 == v9;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v9)
  {
    goto LABEL_36;
  }

  v13 = v0[11];
  OUTLINED_FUNCTION_3();
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_36:
    v22 = 0;
    return v22 & 1;
  }

  if (!v15)
  {
    goto LABEL_36;
  }

  v18 = *v16 == *v17 && v14 == v15;
  if (!v18 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  OUTLINED_FUNCTION_25_3(v0[12]);
  if (v20)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v21)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937EFED8();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_23_6(v0[13]);
  sub_1937EFE84();
  v22 = OUTLINED_FUNCTION_25_4();
  return v22 & 1;
}

unint64_t sub_1937EFE30()
{
  result = qword_1EAE43AD8;
  if (!qword_1EAE43AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AD8);
  }

  return result;
}

unint64_t sub_1937EFE84()
{
  result = qword_1EAE43AE0;
  if (!qword_1EAE43AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AE0);
  }

  return result;
}

unint64_t sub_1937EFED8()
{
  result = qword_1EAE43AE8;
  if (!qword_1EAE43AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AE8);
  }

  return result;
}

unint64_t sub_1937EFF2C()
{
  result = qword_1EAE43AF0;
  if (!qword_1EAE43AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AF0);
  }

  return result;
}

unint64_t sub_1937EFF80()
{
  result = qword_1EAE43AF8;
  if (!qword_1EAE43AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43AF8);
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  MEMORY[0x193B18030](*(v0 + v1[7]));
  OUTLINED_FUNCTION_100(v1[8]);
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v2);
    sub_1937F0148();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_100(v1[9]);
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v4);
    sub_1937F019C();
    sub_19393C540();
  }

  v5 = (v0 + v1[10]);
  if (v5[1])
  {
    v6 = *v5;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v7 = (v0 + v1[11]);
  if (v7[1])
  {
    v8 = *v7;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100(v1[12]);
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v9);
    sub_1937F01F0();
    sub_19393C540();
  }

  return MEMORY[0x193B18030](*(v0 + v1[13]));
}

unint64_t sub_1937F0148()
{
  result = qword_1EAE43B00;
  if (!qword_1EAE43B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B00);
  }

  return result;
}

unint64_t sub_1937F019C()
{
  result = qword_1EAE43B08;
  if (!qword_1EAE43B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B08);
  }

  return result;
}

unint64_t sub_1937F01F0()
{
  result = qword_1EAE43B10;
  if (!qword_1EAE43B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B10);
  }

  return result;
}

void SensitiveContentAnalysisMediaAnalysis.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisMediaAnalysis.SubContentType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B40, &qword_19399E9F0);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v19 = OUTLINED_FUNCTION_39(v4);
    v23 = OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE43B40, &qword_19399E9F0);
    OUTLINED_FUNCTION_17_2(v23);
  }

  *(v3 + 2) = v7;
  v8 = &v3[16 * v5];
  *(v8 + 4) = 0;
  v8[40] = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v24 = OUTLINED_FUNCTION_39(v4);
    v28 = OUTLINED_FUNCTION_85(v24, v25, v26, v27, &qword_1EAE43B40, &qword_19399E9F0);
    OUTLINED_FUNCTION_17_2(v28);
  }

  *(v3 + 2) = v9;
  v10 = &v3[16 * v7];
  *(v10 + 4) = 0;
  v10[40] = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v29 = OUTLINED_FUNCTION_39(v4);
    v3 = sub_1934B0FCC(v29, v5 + 3, 1, v30, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v11;
  v12 = &v3[16 * v9];
  *(v12 + 4) = 1;
  v12[40] = 1;
  v13 = *(v3 + 3);
  v14 = v5 + 4;
  if ((v5 + 4) > (v13 >> 1))
  {
    v31 = OUTLINED_FUNCTION_39(v13);
    v3 = OUTLINED_FUNCTION_84_2(v31, v32, v33, v34, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v14;
  v15 = &v3[16 * v11];
  *(v15 + 4) = 2;
  v15[40] = 1;
  v16 = *(v3 + 3);
  if ((v5 + 5) > (v16 >> 1))
  {
    v35 = OUTLINED_FUNCTION_39(v16);
    v3 = OUTLINED_FUNCTION_85(v35, v36, v37, v38, &qword_1EAE43B40, &qword_19399E9F0);
  }

  *(v3 + 2) = v5 + 5;
  v17 = &v3[16 * v14];
  *(v17 + 4) = 3;
  v17[40] = 1;
  return v3;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisMediaAnalysis.SubContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x72656B63697453 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_17_3() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v9 = v1 == OUTLINED_FUNCTION_18_6() && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
      {

        v5 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_22_7();

        v5 = 3;
        if ((v11 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void SensitiveContentAnalysisMediaAnalysis.AgeGroup.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisMediaAnalysis.AgeGroup.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B38, &qword_19399E9E8);
  v6 = OUTLINED_FUNCTION_17_27(v5);
  if (!(!v12 & v11))
  {
    v29 = OUTLINED_FUNCTION_39(v10);
    v33 = OUTLINED_FUNCTION_84_2(v29, v30, v31, v32, &qword_1EAE43B38, &qword_19399E9E8);
    v6 = OUTLINED_FUNCTION_17_2(v33);
  }

  OUTLINED_FUNCTION_15_5(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v34 = OUTLINED_FUNCTION_39(v17);
    v38 = OUTLINED_FUNCTION_85(v34, v35, v36, v37, &qword_1EAE43B38, &qword_19399E9E8);
    v13 = OUTLINED_FUNCTION_17_2(v38);
  }

  OUTLINED_FUNCTION_10_36(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v39 = OUTLINED_FUNCTION_39(v24);
    v20 = OUTLINED_FUNCTION_84_2(v39, v40, v41, v42, &qword_1EAE43B38, &qword_19399E9E8);
    v23 = v20;
  }

  OUTLINED_FUNCTION_20_27(v20, v21, v22, v23);
  v26 = *(v25 + 3);
  if (v4 + 4 > (v26 >> 1))
  {
    v43 = OUTLINED_FUNCTION_39(v26);
    v25 = OUTLINED_FUNCTION_85(v43, v44, v45, v46, &qword_1EAE43B38, &qword_19399E9E8);
  }

  *(v25 + 2) = v4 + 4;
  v27 = &v25[16 * v3];
  *(v27 + 4) = 2;
  v27[40] = 1;
  return v25;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisMediaAnalysis.AgeGroup.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x33317265646E55 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
    {

      v5 = 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_9();

      v5 = 2;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void SensitiveContentAnalysisMediaAnalysis.IsSensitive.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisMediaAnalysis.IsSensitive.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static SensitiveContentAnalysisMediaAnalysis.IsSensitive.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE43B30, &qword_19399E9E0);
  v4 = OUTLINED_FUNCTION_17_27(v3);
  if (!(!v10 & v9))
  {
    v25 = OUTLINED_FUNCTION_39(v8);
    v29 = OUTLINED_FUNCTION_84_2(v25, v26, v27, v28, &qword_1EAE43B30, &qword_19399E9E0);
    v4 = OUTLINED_FUNCTION_17_2(v29);
  }

  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v30 = OUTLINED_FUNCTION_39(v15);
    v34 = OUTLINED_FUNCTION_85(v30, v31, v32, v33, &qword_1EAE43B30, &qword_19399E9E0);
    v11 = OUTLINED_FUNCTION_17_2(v34);
  }

  OUTLINED_FUNCTION_10_36(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v35 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE43B30, &qword_19399E9E0);
    v21 = v18;
  }

  OUTLINED_FUNCTION_20_27(v18, v19, v20, v21);
  return v23;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.IsSensitive.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 28494;
  }

  else
  {
    result = 7562585;
  }

  *v0;
  return result;
}

void SensitiveContentAnalysisMediaAnalysis.IsSensitive.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 7562585 ? (v4 = v0 == 0xE300000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 28494 && v0 == 0xE200000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

unint64_t sub_1937F0B04()
{
  result = qword_1EAE43B18;
  if (!qword_1EAE43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B18);
  }

  return result;
}

unint64_t sub_1937F0B5C()
{
  result = qword_1EAE43B20;
  if (!qword_1EAE43B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B20);
  }

  return result;
}

unint64_t sub_1937F0BB4()
{
  result = qword_1EAE43B28;
  if (!qword_1EAE43B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B28);
  }

  return result;
}

void sub_1937F0C0C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE168);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v0 + dword_1EAEAE1A0;
  *(v4 + v0) = 1;
  *v5 = "contentType";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 2;
  OUTLINED_FUNCTION_36_5(v10, "ageGroup");
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v13 = 3;
  *v12 = "isSensitive";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v4 + v0 + 3 * v3);
  *v15 = 4;
  OUTLINED_FUNCTION_36_5(v14, "clientBundleID");
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v4 + v0 + 4 * v3);
  *v17 = 5;
  OUTLINED_FUNCTION_36_5(v16, "trackingVersion");
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  *v19 = 6;
  *v18 = "subContentType";
  *(v18 + 8) = 14;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v20 = OUTLINED_FUNCTION_3_1(v4 + v0 + 6 * v3);
  *v21 = 7;
  *v20 = "harms";
  *(v20 + 8) = 5;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F0E7C()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisMediaAnalysis.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 28)) = v10;
        continue;
      case 2:
        v8 = v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 32);
        goto LABEL_12;
      case 3:
        v6 = v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 36);
        goto LABEL_12;
      case 4:
        v7 = *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 40);
        goto LABEL_9;
      case 5:
        v5 = *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 44);
LABEL_9:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_13;
      case 6:
        v9 = v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 48);
LABEL_12:
        sub_1934982A8();
LABEL_13:
        v2 = 0;
        break;
      case 7:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisMediaAnalysis.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 52)) = v10;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937F1064()
{
  v2 = v1;
  v19 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  v3 = *(v0 + v19[7]);
  v20[0] = v3;
  sub_1937EF944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AB0, &qword_19399E878);
  sub_1937EFC3C(&qword_1EAE43AB8, &qword_1EAE43AB0, &qword_19399E878);
  sub_19393C8A0();
  v21 = v22;
  sub_1937EFE30();
  result = OUTLINED_FUNCTION_19_55();
  if (result)
  {
    if (v1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_19393C350();
  if (v1)
  {
    return result;
  }

LABEL_7:
  v5 = v0 + v19[8];
  if ((*(v5 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_80(v5);
    OUTLINED_FUNCTION_15_55(v20, 2, v6, &type metadata for SensitiveContentAnalysisMediaAnalysis.AgeGroup, v7, &off_1F07F4990);
    v2 = v1;
  }

  v8 = v0 + v19[9];
  if ((*(v8 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_80(v8);
    OUTLINED_FUNCTION_15_55(v20, 3, v9, &type metadata for SensitiveContentAnalysisMediaAnalysis.IsSensitive, v10, &off_1F07F49B8);
    v2 = v1;
  }

  v11 = (v0 + v19[10]);
  if (!v11[1] || (v12 = *v11, v1 = v2, result = sub_19393C3C0(), !v2))
  {
    v13 = (v0 + v19[11]);
    if (!v13[1] || (v14 = *v13, v1 = v2, result = sub_19393C3C0(), !v2))
    {
      v15 = v0 + v19[12];
      if ((*(v15 + 9) & 1) != 0 || (OUTLINED_FUNCTION_2_80(v15), result = OUTLINED_FUNCTION_15_55(v20, 6, v16, &type metadata for SensitiveContentAnalysisMediaAnalysis.SubContentType, v17, &off_1F07F4968), !v1))
      {
        v18 = *(v0 + v19[13]);
        v20[0] = v18;
        v21 = MEMORY[0x1E69E7CC0];
        sub_1937EF998();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43AC8, &qword_19399E880);
        sub_1937EFC3C(&qword_1EAE43AD0, &qword_1EAE43AC8, &qword_19399E880);
        sub_19393C8A0();
        v21 = v22;
        sub_1937EFE84();
        result = OUTLINED_FUNCTION_19_55();
        if ((result & 1) == 0)
        {
          if (v18 >= 0xFFFFFFFF80000000)
          {
            if (v18 <= 0x7FFFFFFF)
            {
              return sub_19393C350();
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1937F1388()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE43B48;

  return v0;
}

void sub_1937F1424()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE180);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBD0);
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "SubContentTypeSticker";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "SubContentTypeBackgroundImage";
  *(v13 + 8) = 29;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v16 = 3;
  *v15 = "SubContentTypeInlineSticker";
  *(v15 + 8) = 27;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v18 = 4;
  *v17 = "SubContentTypeTapBack";
  *(v17 + 8) = 21;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F1648()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE198);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBC0);
  *v0 = "AgeGroupUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "AgeGroupUnder13";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  *v13 = "AgeGroupOver13";
  *(v13 + 8) = 14;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v16 = 3;
  *v15 = "AgeGroupAdult";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F1838()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE1B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEAE1E8;
  *v7 = 0;
  *v8 = "IsSensitiveUnknown";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 1;
  v15 = OUTLINED_FUNCTION_36_5(v13, "IsSensitiveYes");
  (v12)(v15, v9, v10);
  v16 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v17 = 2;
  *v16 = "IsSensitiveNo";
  *(v16 + 8) = 13;
  *(v16 + 16) = 2;
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisMediaAnalysis()
{
  result = qword_1EAEA3330;
  if (!qword_1EAEA3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t SensitiveContentAnalysisMediaAnalysis.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *(v1 + *(result + 28)) = v2;
  return result;
}

void SensitiveContentAnalysisMediaAnalysis.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void SensitiveContentAnalysisMediaAnalysis.isSensitive.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

uint64_t SensitiveContentAnalysisMediaAnalysis.clientBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.clientBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.trackingVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisMediaAnalysis.trackingVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisMediaAnalysis() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SensitiveContentAnalysisMediaAnalysis.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

uint64_t SensitiveContentAnalysisMediaAnalysis.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_1937F209C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_1937F2104(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_19347278C(a1);
}

void sub_1937F2110(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_193472794(a1);
}

void sub_1937F211C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_19347279C(a1);
}

void sub_1937F2158(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_19347282C(a1);
}

IntelligencePlatformLibrary::SensitiveContentAnalysisMediaAnalysis::ContentType sub_1937F21B0@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisMediaAnalysis.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1937F21F0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937F22A4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937F22CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937F2328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937F2430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937F24C4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937F24EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937F25E0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisMediaAnalysis.IsSensitive.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937F2608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisMediaAnalysis.IsSensitive.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t SensitiveContentAnalysisMediaAnalysis.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisMediaAnalysis.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937F273C()
{
  sub_19393CAB0();
  SensitiveContentAnalysisMediaAnalysis.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1937F277C()
{
  result = qword_1EAE43B58;
  if (!qword_1EAE43B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B58);
  }

  return result;
}

unint64_t sub_1937F27DC()
{
  result = qword_1EAE43B60;
  if (!qword_1EAE43B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B60);
  }

  return result;
}

unint64_t sub_1937F28D0()
{
  result = qword_1EAE43B98;
  if (!qword_1EAE43B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43B98);
  }

  return result;
}

unint64_t sub_1937F2930()
{
  result = qword_1EAE43BA0;
  if (!qword_1EAE43BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BA0);
  }

  return result;
}

unint64_t sub_1937F2988()
{
  result = qword_1EAE43BA8;
  if (!qword_1EAE43BA8)
  {
    type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BA8);
  }

  return result;
}

void sub_1937F2A0C()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1EAE43BB0);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE43BB8);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508290);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE43BC0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SensitiveContentAnalysisMediaAnalysis.ContentType(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisUIInteraction.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937F2E04(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43BC8, &qword_19399F198);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43BC8, &qword_19399F198);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937F2E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisUIInteraction.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43BC8, &qword_19399F198);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937F2FA8(v10, a1);
  }

  return result;
}

uint64_t sub_1937F2FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisUIInteraction.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937F947C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937F2FA8(v14, v40);
      v33 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisUIInteraction.serialize()()
{
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BC8, &qword_19399F198);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = OUTLINED_FUNCTION_185();
  sub_1937F2E04(v13, v14);
  sub_1934470C8(v6, v0, v12);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v15, &qword_1EAE43BC8, &qword_19399F198);
  v16 = sub_19393C290();
  sub_19344E6DC(v12, &qword_1EAE43BC8, &qword_19399F198);
  return v16;
}

id static SensitiveContentAnalysisUIInteraction.columns.getter()
{
  v331 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_32_23();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v11, v12, v13, v14, v15);
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v35, v36, v37, v38, v39);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v40 = swift_initStackObject();
  v48 = OUTLINED_FUNCTION_2_4(v40, v41, v42, v43, v44, v45, v46, v47, v317);
  OUTLINED_FUNCTION_5_10(v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v57);
  OUTLINED_FUNCTION_24_49();
  OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v58, v59, v60, v61, v62);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_69_3(result);
  v63 = swift_initStackObject();
  v71 = OUTLINED_FUNCTION_2_4(v63, v64, v65, v66, v67, v68, v69, v70, v318);
  OUTLINED_FUNCTION_5_10(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v80);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v81, v82, v83, v84, v85);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_69_3(result);
  v86 = swift_initStackObject();
  v94 = OUTLINED_FUNCTION_2_4(v86, v87, v88, v89, v90, v91, v92, v93, v319);
  OUTLINED_FUNCTION_5_10(v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v103 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v103);
  OUTLINED_FUNCTION_19_56(25441);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v104, v105, v106, v107, v108);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_69_3(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v320);
  OUTLINED_FUNCTION_5_10(v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v126);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v127, v128, v129, v130, v131, 2, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_69_3(result);
  v132 = swift_initStackObject();
  v140 = OUTLINED_FUNCTION_2_4(v132, v133, v134, v135, v136, v137, v138, v139, v321);
  OUTLINED_FUNCTION_5_10(v140, v141, v142, v143, v144, v145, v146, v147, v148);
  v149 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v149);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v150, v151);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_69_3(result);
  v152 = swift_initStackObject();
  v160 = OUTLINED_FUNCTION_2_4(v152, v153, v154, v155, v156, v157, v158, v159, v322);
  OUTLINED_FUNCTION_5_10(v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v169 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v169);
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_14_0();
  result = OUTLINED_FUNCTION_3_5(v170, v171);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_69_3(result);
  v172 = swift_initStackObject();
  v180 = OUTLINED_FUNCTION_2_4(v172, v173, v174, v175, v176, v177, v178, v179, v323);
  OUTLINED_FUNCTION_5_10(v180, v181, v182, v183, v184, v185, v186, v187, v188);
  v189 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v189);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v190, v191, v192, v193, v194, 2, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_69_3(result);
  v195 = swift_initStackObject();
  v203 = OUTLINED_FUNCTION_2_4(v195, v196, v197, v198, v199, v200, v201, v202, v324);
  OUTLINED_FUNCTION_5_10(v203, v204, v205, v206, v207, v208, v209, v210, v211);
  v212 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v212);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v213, v214, v215, v216, v217);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_69_3(result);
  v218 = swift_initStackObject();
  v226 = OUTLINED_FUNCTION_2_4(v218, v219, v220, v221, v222, v223, v224, v225, v325);
  OUTLINED_FUNCTION_5_10(v226, v227, v228, v229, v230, v231, v232, v233, v234);
  v235 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v235);
  OUTLINED_FUNCTION_19_56(28783);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v236, v237, v238, v239, v240, 2, 0);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_69_3(result);
  v241 = swift_initStackObject();
  v249 = OUTLINED_FUNCTION_2_4(v241, v242, v243, v244, v245, v246, v247, v248, v326);
  OUTLINED_FUNCTION_5_10(v249, v250, v251, v252, v253, v254, v255, v256, v257);
  v258 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v258);
  OUTLINED_FUNCTION_20_51();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v259, v260, v261, v262, v263);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_69_3(result);
  v264 = swift_initStackObject();
  v272 = OUTLINED_FUNCTION_2_4(v264, v265, v266, v267, v268, v269, v270, v271, v327);
  OUTLINED_FUNCTION_5_10(v272, v273, v274, v275, v276, v277, v278, v279, v280);
  v281 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v281);
  OUTLINED_FUNCTION_16_46();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v282, v283, v284, v285, v286);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_69_3(result);
  v287 = swift_initStackObject();
  v295 = OUTLINED_FUNCTION_2_4(v287, v288, v289, v290, v291, v292, v293, v294, v328);
  OUTLINED_FUNCTION_5_10(v295, v296, v297, v298, v299, v300, v301, v302, v303);
  v304 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v304);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_69_3(result);
  v305 = swift_initStackObject();
  v313 = OUTLINED_FUNCTION_2_4(v305, v306, v307, v308, v309, v310, v311, v312, v329);
  *(v313 + 16) = v330;
  *(v313 + 32) = sub_19393C850();
  v314 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_30_31();
  result = sub_19343D150(v315, v316, 0, 0, v313, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v331;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1937F39BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_32_23();
  v8 = a1 == OUTLINED_FUNCTION_34_36() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v9 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1(*(v9 + 28));
    if (v11)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  v12 = a1 == OUTLINED_FUNCTION_16_3() && a2 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v13 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1(*(v13 + 32));
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v16 = a1 == OUTLINED_FUNCTION_24_49() && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v17 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1(*(v17 + 36));
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v19 = a1 == 0x6E6565726373 && a2 == 0xE600000000000000;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1(*(v20 + 40));
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v22 = a1 == OUTLINED_FUNCTION_19_56(25441) && a2 == 0xE600000000000000;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_58_1(*(v23 + 44));
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v26 = a1 == OUTLINED_FUNCTION_42_1() && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v27 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_12_59(*(v27 + 48));
    if (v29 == v30)
    {
      if (v28 <= 0x7FFFFFFF)
      {
        goto LABEL_9;
      }

      goto LABEL_84;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v47 = a1 == OUTLINED_FUNCTION_20_51() && a2 == v46;
    if (v47 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v48 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 72);
      goto LABEL_91;
    }

    v51 = a1 == OUTLINED_FUNCTION_16_46() && a2 == v50;
    if (v51 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v48 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 76);
LABEL_91:
      OUTLINED_FUNCTION_58_1(v48);
      if (v49)
      {
        goto LABEL_7;
      }

LABEL_8:
      OUTLINED_FUNCTION_147(v10);
LABEL_9:
      sub_1934948FC();
      return;
    }

    v52 = a1 == 1752457584 && a2 == 0xE400000000000000;
    if (v52 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v60 = *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 80));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C20, &qword_19399F1B8);
      goto LABEL_9;
    }

    goto LABEL_106;
  }

  OUTLINED_FUNCTION_18_5();
  v32 = a1 == OUTLINED_FUNCTION_20_50() && a2 == v31;
  if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 52);
LABEL_52:
    if (!*(v3 + v33 + 8))
    {
      goto LABEL_7;
    }

    v59 = *(v3 + v33);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_0();
  v35 = a1 == OUTLINED_FUNCTION_15_15() && a2 == v34;
  if (v35 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 56);
    goto LABEL_52;
  }

  v36 = a1 == 0x736D726168 && a2 == 0xE500000000000000;
  if (!v36 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
LABEL_68:
    OUTLINED_FUNCTION_19_11();
    v40 = a1 == OUTLINED_FUNCTION_22_5() && a2 == v39;
    if (v40 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v41 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
      OUTLINED_FUNCTION_58_1(*(v41 + 64));
      if (v42)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v43 = a1 == (OUTLINED_FUNCTION_19_56(28783) & 0xFFFFFFFFFFFFLL | 0x73000000000000) && a2 == 0xE700000000000000;
    if (!v43 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      goto LABEL_85;
    }

    v44 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
    OUTLINED_FUNCTION_12_59(*(v44 + 68));
    if (v29 != v30)
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v45 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_83;
  }

  v37 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_12_59(*(v37 + 60));
  if (v29 == v30)
  {
    if (v38 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_68;
  }

  __break(1u);
LABEL_106:
  v53 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v53 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 84);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_30_31();
  v55 = a1 == OUTLINED_FUNCTION_31_5() && a2 == v54;
  if (v55 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (*(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 88)) == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_120:
  sub_19349AB64();
  swift_allocError();
  v57 = v56;
  *v56 = a1;
  v56[1] = a2;
  v56[5] = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v57 + 2);
  sub_1937F2E04(v3, boxed_opaque_existential_1Tm);
  *(v57 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_1937F3EF4()
{
  result = qword_1EAE43BD8;
  if (!qword_1EAE43BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BD8);
  }

  return result;
}

unint64_t sub_1937F3F48()
{
  result = qword_1EAE43BF0;
  if (!qword_1EAE43BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43BF0);
  }

  return result;
}

unint64_t sub_1937F3F9C()
{
  result = qword_1EAE43C08;
  if (!qword_1EAE43C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C08);
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[9];
  j__OUTLINED_FUNCTION_131(v7);
  v8 = a1 + v2[10];
  j__OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v9);
  v15 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v10);
  v19 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v19);
  v17 = a1 + v2[19];
  j__OUTLINED_FUNCTION_131(v17);
  v18 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = v2[22];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_1937F947C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1937F3EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BE0, &qword_19399F1A0);
  sub_1937EFC3C(&qword_1EAE43BE8, &qword_1EAE43BE0, &qword_19399F1A0);
  OUTLINED_FUNCTION_41_26();

  *(a1 + v2[12]) = v20;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  sub_1937F3F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BF8, &qword_19399F1A8);
  sub_1937EFC3C(&qword_1EAE43C00, &qword_1EAE43BF8, &qword_19399F1A8);
  OUTLINED_FUNCTION_41_26();
  *(a1 + v2[15]) = v20;
  *v10 = 0;
  *(v10 + 8) = 256;
  sub_1937F3F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C10, &qword_19399F1B0);
  sub_1937EFC3C(&qword_1EAE43C18, &qword_1EAE43C10, &qword_19399F1B0);
  sub_19393C8A0();

  *(a1 + v2[17]) = v20;
  *v19 = 0;
  *(v19 + 8) = 256;
  *v17 = 0;
  *(v17 + 8) = 256;
  *(a1 + v2[20]) = v12;
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v16) = 2;
  return result;
}

BOOL static SensitiveContentAnalysisUIInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_25_3(v4[7]);
  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6FE4();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v4[8]);
  if (v9)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6F90();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v4[9]);
  if (v12)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6F3C();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v4[10]);
  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v16)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6EE8();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v4[11]);
  if (v18)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6E94();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6(v4[12]);
  sub_1937F467C();
  if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[13];
  OUTLINED_FUNCTION_3();
  if (v23)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v22);
    v26 = v26 && v24 == v25;
    if (!v26 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v27 = v4[14];
  OUTLINED_FUNCTION_3();
  if (v30)
  {
    if (!v28)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v29);
    v33 = v26 && v31 == v32;
    if (!v33 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_6(v4[15]);
  sub_1937F46D0();
  if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3(v4[16]);
  if (v35)
  {
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6E40();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6(v4[17]);
  sub_1937F4724();
  if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3(v4[18]);
  if (v38)
  {
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v39)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6DEC();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v4[19]);
  if (v41)
  {
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937F6DEC();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1937F6D10(*(a1 + v4[20]), *(a2 + v4[20])) & 1) == 0)
  {
    return 0;
  }

  v43 = v4[21];
  OUTLINED_FUNCTION_3();
  if (v46)
  {
    if (!v44)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v45);
    v49 = v26 && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v50 = v4[22];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 2)
  {
    return v52 == 2;
  }

  return v52 != 2 && ((v51 ^ v52) & 1) == 0;
}

unint64_t sub_1937F467C()
{
  result = qword_1EAE43C28;
  if (!qword_1EAE43C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C28);
  }

  return result;
}

unint64_t sub_1937F46D0()
{
  result = qword_1EAE43C30;
  if (!qword_1EAE43C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C30);
  }

  return result;
}

unint64_t sub_1937F4724()
{
  result = qword_1EAE43C38;
  if (!qword_1EAE43C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C38);
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v4 = v1 + v3[7];
  if (*(v4 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v4);
    sub_1937F7038();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v3[8]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v5);
    sub_1937F708C();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v3[9]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v7);
    sub_1937F70E0();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v3[10]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v8);
    sub_1937F7134();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v3[11]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v9);
    sub_1937F7188();
    OUTLINED_FUNCTION_133_1();
  }

  MEMORY[0x193B18030](*(v1 + v3[12]));
  v10 = (v1 + v3[13]);
  if (v10[1])
  {
    v11 = *v10;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v12 = (v1 + v3[14]);
  if (v12[1])
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v1 + v3[15]));
  OUTLINED_FUNCTION_100(v3[16]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v14);
    sub_1937F71DC();
    OUTLINED_FUNCTION_133_1();
  }

  MEMORY[0x193B18030](*(v1 + v3[17]));
  OUTLINED_FUNCTION_100(v3[18]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v15);
    sub_1937F7230();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v3[19]);
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v16);
    sub_1937F7230();
    OUTLINED_FUNCTION_133_1();
  }

  sub_1937F7284(a1, *(v1 + v3[20]));
  v17 = (v1 + v3[21]);
  if (v17[1])
  {
    v18 = *v17;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v3[22]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

void SensitiveContentAnalysisUIInteraction.InteractionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.InteractionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1886152008;
  if (*v0 != 1)
  {
    v1 = 0x6552724F646E6553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952540739;
  }
}

void SensitiveContentAnalysisUIInteraction.InteractionType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1952540739 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 1886152008 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6552724F646E6553 && v0 == 0xED00006576696563)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_1937F4BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v16 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2(v16);
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v17 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2(v17);
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v6 + 4;
  return OUTLINED_FUNCTION_38_1(v4, &v4[16 * v12]);
}

uint64_t SensitiveContentAnalysisUIInteraction.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisUIInteraction.AgeGroup.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t SensitiveContentAnalysisUIInteraction.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisUIInteraction.EventDirection.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_20_0() && v0 == v8)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisUIInteraction.Screen.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19399F4B0[result];
  }

  return result;
}

uint64_t static SensitiveContentAnalysisUIInteraction.Screen.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v9 = v6;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v23 = OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE43D00, &qword_19399F490);
    v6 = OUTLINED_FUNCTION_17_2(v23);
  }

  *(v9 + 16) = v13;
  v14 = v9 + 16 * v11;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  if (v12 < (v11 + 2))
  {
    v24 = OUTLINED_FUNCTION_39(v10);
    v28 = OUTLINED_FUNCTION_85(v24, v25, v26, v27, &qword_1EAE43D00, &qword_19399F490);
    v6 = OUTLINED_FUNCTION_17_2(v28);
  }

  *(v9 + 16) = v11 + 2;
  v15 = v9 + 16 * v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  if (v12 < (v11 + 3))
  {
    v29 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_84_2(v29, v30, v31, v32, &qword_1EAE43D00, &qword_19399F490);
    v9 = v6;
  }

  OUTLINED_FUNCTION_50(v6, v7, v8, v9);
  *(v16 + 32) = 1;
  *(v16 + 40) = 1;
  return v17;
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E65767265746E49;
  *v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.Screen.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (!v4 && (OUTLINED_FUNCTION_22_7() & 1) == 0)
  {
    v8 = v2 == 0x6E65767265746E49 && v1 == 0xED0000316E6F6974;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {
      goto LABEL_12;
    }

    v9 = v2 == 0x6E65767265746E49 && v1 == 0xED0000326E6F6974;
    if (!v9 && (OUTLINED_FUNCTION_0_9() & 1) == 0)
    {
      v10 = v2 == 0x316E6565726353 && v1 == 0xE700000000000000;
      if (v10 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {
LABEL_12:

        v6 = 0;
LABEL_13:
        v7 = 1;
        goto LABEL_14;
      }

      if (v2 != 0x326E6565726353 || v1 != 0xE700000000000000)
      {
        v7 = OUTLINED_FUNCTION_22_7();

        v6 = v7 & 1;
        goto LABEL_14;
      }
    }

    v6 = 1;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void SensitiveContentAnalysisUIInteraction.Action.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisUIInteraction.Action.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19399F4D0[result];
  }

  return result;
}

uint64_t static SensitiveContentAnalysisUIInteraction.Action.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  v8 = sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_16_0(v8);
  if (!(!v15 & v14))
  {
    v174 = OUTLINED_FUNCTION_39(v13);
    v178 = OUTLINED_FUNCTION_84_2(v174, v175, v176, v177, &qword_1EAE43CF8, &qword_19399F488);
    v9 = OUTLINED_FUNCTION_17_2(v178);
  }

  OUTLINED_FUNCTION_13_6(v9, v10, v11, v12);
  if (v21 != v22)
  {
    v179 = OUTLINED_FUNCTION_39(v20);
    v183 = OUTLINED_FUNCTION_85(v179, v180, v181, v182, &qword_1EAE43CF8, &qword_19399F488);
    v16 = OUTLINED_FUNCTION_17_2(v183);
  }

  OUTLINED_FUNCTION_8_5(v16, v17, v18, v19);
  if (v21 != v22)
  {
    v184 = OUTLINED_FUNCTION_39(v27);
    v23 = sub_1934B0FCC(v184, v0, 1, v185, &qword_1EAE43CF8, &qword_19399F488);
    v26 = v23;
  }

  OUTLINED_FUNCTION_9_7(v23, v24, v25, v26);
  if (!(v21 ^ v22 | v15))
  {
    v186 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_84_2(v186, v187, v188, v189, &qword_1EAE43CF8, &qword_19399F488);
    v31 = v28;
  }

  OUTLINED_FUNCTION_3_7(v28, v29, v30, v31);
  if (!(v21 ^ v22 | v15))
  {
    v190 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v190, v191, v192, v193, &qword_1EAE43CF8, &qword_19399F488);
    v36 = v33;
  }

  OUTLINED_FUNCTION_47_5(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4(v38, v39);
  if (v1 + 6 > (v44 >> 1))
  {
    v194 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_84_2(v194, v195, v196, v197, &qword_1EAE43CF8, &qword_19399F488);
    v43 = v40;
  }

  OUTLINED_FUNCTION_50(v40, v41, v42, v43);
  OUTLINED_FUNCTION_4(v45, v46);
  if (v1 + 7 > (v51 >> 1))
  {
    v198 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_85(v198, v199, v200, v201, &qword_1EAE43CF8, &qword_19399F488);
    v50 = v47;
  }

  OUTLINED_FUNCTION_47_5(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52, v53);
  if (v1 + 8 > (v58 >> 1))
  {
    v202 = OUTLINED_FUNCTION_39(v58);
    v54 = OUTLINED_FUNCTION_84_2(v202, v203, v204, v205, &qword_1EAE43CF8, &qword_19399F488);
    v57 = v54;
  }

  OUTLINED_FUNCTION_50(v54, v55, v56, v57);
  OUTLINED_FUNCTION_4(v59, v60);
  if (v1 + 9 > (v65 >> 1))
  {
    v206 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v206, v207, v208, v209, &qword_1EAE43CF8, &qword_19399F488);
    v64 = v61;
  }

  OUTLINED_FUNCTION_47_5(v61, v62, v63, v64);
  OUTLINED_FUNCTION_4(v66, v67);
  if (v1 + 10 > (v72 >> 1))
  {
    v210 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v210, v211, v212, v213, &qword_1EAE43CF8, &qword_19399F488);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73, v74);
  if (v1 + 11 > (v79 >> 1))
  {
    v214 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_85(v214, v215, v216, v217, &qword_1EAE43CF8, &qword_19399F488);
    v78 = v75;
  }

  OUTLINED_FUNCTION_47_5(v75, v76, v77, v78);
  OUTLINED_FUNCTION_4(v80, v81);
  if (v1 + 12 > (v86 >> 1))
  {
    v218 = OUTLINED_FUNCTION_39(v86);
    v82 = OUTLINED_FUNCTION_84_2(v218, v219, v220, v221, &qword_1EAE43CF8, &qword_19399F488);
    v85 = v82;
  }

  OUTLINED_FUNCTION_50(v82, v83, v84, v85);
  OUTLINED_FUNCTION_4(v87, v88);
  if (v1 + 13 > (v93 >> 1))
  {
    v222 = OUTLINED_FUNCTION_39(v93);
    v89 = OUTLINED_FUNCTION_85(v222, v223, v224, v225, &qword_1EAE43CF8, &qword_19399F488);
    v92 = v89;
  }

  OUTLINED_FUNCTION_47_5(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94, v95);
  if (v1 + 14 > (v100 >> 1))
  {
    v226 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v226, v227, v228, v229, &qword_1EAE43CF8, &qword_19399F488);
    v99 = v96;
  }

  OUTLINED_FUNCTION_50(v96, v97, v98, v99);
  OUTLINED_FUNCTION_4(v101, v102);
  if (v1 + 15 > (v107 >> 1))
  {
    v230 = OUTLINED_FUNCTION_39(v107);
    v103 = OUTLINED_FUNCTION_85(v230, v231, v232, v233, &qword_1EAE43CF8, &qword_19399F488);
    v106 = v103;
  }

  OUTLINED_FUNCTION_47_5(v103, v104, v105, v106);
  OUTLINED_FUNCTION_4(v108, v109);
  if (v1 + 16 > (v114 >> 1))
  {
    v234 = OUTLINED_FUNCTION_39(v114);
    v110 = OUTLINED_FUNCTION_84_2(v234, v235, v236, v237, &qword_1EAE43CF8, &qword_19399F488);
    v113 = v110;
  }

  OUTLINED_FUNCTION_50(v110, v111, v112, v113);
  OUTLINED_FUNCTION_4(v115, v116);
  if (v1 + 17 > (v121 >> 1))
  {
    v238 = OUTLINED_FUNCTION_39(v121);
    v117 = OUTLINED_FUNCTION_85(v238, v239, v240, v241, &qword_1EAE43CF8, &qword_19399F488);
    v120 = v117;
  }

  OUTLINED_FUNCTION_47_5(v117, v118, v119, v120);
  OUTLINED_FUNCTION_4(v122, v123);
  if (v1 + 18 > (v128 >> 1))
  {
    v242 = OUTLINED_FUNCTION_39(v128);
    v124 = OUTLINED_FUNCTION_84_2(v242, v243, v244, v245, &qword_1EAE43CF8, &qword_19399F488);
    v127 = v124;
  }

  OUTLINED_FUNCTION_50(v124, v125, v126, v127);
  OUTLINED_FUNCTION_4(v129, v130);
  if (v1 + 19 > (v135 >> 1))
  {
    v246 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v246, v247, v248, v249, &qword_1EAE43CF8, &qword_19399F488);
    v134 = v131;
  }

  OUTLINED_FUNCTION_47_5(v131, v132, v133, v134);
  OUTLINED_FUNCTION_4(v136, v137);
  if (v1 + 20 > (v142 >> 1))
  {
    v250 = OUTLINED_FUNCTION_39(v142);
    v138 = OUTLINED_FUNCTION_84_2(v250, v251, v252, v253, &qword_1EAE43CF8, &qword_19399F488);
    v141 = v138;
  }

  OUTLINED_FUNCTION_50(v138, v139, v140, v141);
  OUTLINED_FUNCTION_4(v143, v144);
  if (v1 + 21 > (v149 >> 1))
  {
    v254 = OUTLINED_FUNCTION_39(v149);
    v145 = OUTLINED_FUNCTION_85(v254, v255, v256, v257, &qword_1EAE43CF8, &qword_19399F488);
    v148 = v145;
  }

  OUTLINED_FUNCTION_47_5(v145, v146, v147, v148);
  OUTLINED_FUNCTION_4(v150, v151);
  if (v1 + 22 > (v156 >> 1))
  {
    v258 = OUTLINED_FUNCTION_39(v156);
    v152 = OUTLINED_FUNCTION_84_2(v258, v259, v260, v261, &qword_1EAE43CF8, &qword_19399F488);
    v155 = v152;
  }

  OUTLINED_FUNCTION_50(v152, v153, v154, v155);
  OUTLINED_FUNCTION_4(v157, v158);
  if (v1 + 23 > (v163 >> 1))
  {
    v262 = OUTLINED_FUNCTION_39(v163);
    v159 = OUTLINED_FUNCTION_85(v262, v263, v264, v265, &qword_1EAE43CF8, &qword_19399F488);
    v162 = v159;
  }

  OUTLINED_FUNCTION_47_5(v159, v160, v161, v162);
  OUTLINED_FUNCTION_4(v164, v165);
  if (v1 + 24 > (v170 >> 1))
  {
    v266 = OUTLINED_FUNCTION_39(v170);
    v166 = OUTLINED_FUNCTION_84_2(v266, v267, v268, v269, &qword_1EAE43CF8, &qword_19399F488);
    v169 = v166;
  }

  OUTLINED_FUNCTION_50(v166, v167, v168, v169);
  return OUTLINED_FUNCTION_38_1(v171, v172);
}

void SensitiveContentAnalysisUIInteraction.Action.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 6:
        OUTLINED_FUNCTION_12_60();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_46_28();
        break;
      case 0x13:
        OUTLINED_FUNCTION_45_5();
        break;
      case 0x14:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void SensitiveContentAnalysisUIInteraction.Action.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
    goto LABEL_13;
  }

  v5 = v1 == 0x6C65636E6143 && v0 == 0xE600000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
LABEL_12:

    v4 = 0;
    goto LABEL_13;
  }

  v6 = v1 == 0x657275536D49 && v0 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 1;
    goto LABEL_13;
  }

  v7 = v1 == 0x737361707942 && v0 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
LABEL_25:

    OUTLINED_FUNCTION_55_0();
    goto LABEL_13;
  }

  v8 = v1 == 1684366664 && v0 == 0xE400000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
LABEL_31:

    OUTLINED_FUNCTION_59();
    goto LABEL_13;
  }

  v9 = v1 == 0x536567617373654DLL && v0 == 0xEE00656E6F656D6FLL;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
    goto LABEL_37;
  }

  v10 = v1 == 0x646E6553746E6F44 && v0 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 5;
    goto LABEL_13;
  }

  v12 = v1 == OUTLINED_FUNCTION_12_60() && v0 == v11;
  if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 6;
    goto LABEL_13;
  }

  v13 = v1 == 0x6F7247657661654CLL && v0 == 0xEA00000000007075;
  if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 7;
    goto LABEL_13;
  }

  v14 = v1 == 0x6E6F436B636F6C42 && v0 == 0xEC00000074636174;
  if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 8;
    goto LABEL_13;
  }

  v15 = v1 == 0x6E6F436B636F6C42 && v0 == 0xED00007374636174;
  if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 9;
    goto LABEL_13;
  }

  v17 = v1 == (OUTLINED_FUNCTION_46_28() & 0xFFFFFFFFFFFFLL | 0x6F54000000000000) && v0 == v16;
  if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 10;
    goto LABEL_13;
  }

  v18 = v1 == 0xD000000000000013 && 0x8000000193A3FC80 == v0;
  if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 11;
    goto LABEL_13;
  }

  v19 = v1 == 0x746E6F43776F6853 && v0 == 0xEB00000000746E65;
  if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 12;
    goto LABEL_13;
  }

  v20 = v1 == 0x746E6F4365646948 && v0 == 0xEB00000000746E65;
  if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 13;
    goto LABEL_13;
  }

  v21 = v1 == 0x6154646C65696853 && v0 == 0xE900000000000070;
  if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 14;
    goto LABEL_13;
  }

  v22 = v1 == 0x706154756E654DLL && v0 == 0xE700000000000000;
  if (v22 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    v4 = 15;
    goto LABEL_13;
  }

  v24 = v1 == OUTLINED_FUNCTION_20_0() && v0 == v23;
  if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 16;
    goto LABEL_13;
  }

  v25 = v1 == 0x6143656D75736552 && v0 == 0xEA00000000006C6CLL;
  if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 17;
    goto LABEL_13;
  }

  v26 = v1 == 0x6C6C6143646E45 && v0 == 0xE700000000000000;
  if (v26 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    v4 = 18;
    goto LABEL_13;
  }

  v28 = v1 == OUTLINED_FUNCTION_45_5() && v0 == v27;
  if (v28 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 19;
    goto LABEL_13;
  }

  v29 = v1 == 0xD000000000000011 && 0x8000000193A3FC60 == v0;
  if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 20;
    goto LABEL_13;
  }

  v30 = v1 == 0xD00000000000001CLL && 0x8000000193A3FC40 == v0;
  if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 21;
    goto LABEL_13;
  }

  v31 = v1 == 0x74496574656C6544 && v0 == 0xEA00000000006D65;
  if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v4 = 22;
    goto LABEL_13;
  }

  v33 = v1 == (OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000) && v0 == v32;
  if (v33 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
    goto LABEL_12;
  }

  v34 = v1 == (OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6956000000000000) && v0 == 0xEA00000000007765;
  if (v34 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
    goto LABEL_25;
  }

  v36 = v1 == (OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x6F44000000000000) && v0 == v35;
  if (v36 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v1 == 0xD000000000000013 && 0x8000000193A3FCA0 == v0)
  {
LABEL_37:

    v4 = 4;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_89();
  v4 = 4;
  if ((v1 & 1) == 0)
  {
    v4 = 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisUIInteraction.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *sub_1937F6330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v20 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2(v20);
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v21 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2(v21);
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  v15 = v6 + 4;
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v15;
  v16 = &v4[16 * v12];
  *(v16 + 4) = 2;
  v16[40] = 1;
  v17 = *(v4 + 3);
  if ((v6 + 5) > (v17 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v17 > 1), v6 + 5, v3, v4);
  }

  *(v4 + 2) = v6 + 5;
  v18 = &v4[16 * v15];
  *(v18 + 4) = 3;
  v18[40] = 1;
  return v4;
}

uint64_t SensitiveContentAnalysisUIInteraction.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisUIInteraction.SubContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_17_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_18_6() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisUIInteraction.Step.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisUIInteraction.Step.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  v8 = sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_16_0(v8);
  if (!(!v15 & v14))
  {
    v83 = OUTLINED_FUNCTION_39(v13);
    v87 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE43CE8, &qword_19399F478);
    v9 = OUTLINED_FUNCTION_17_2(v87);
  }

  OUTLINED_FUNCTION_13_6(v9, v10, v11, v12);
  if (v21 != v22)
  {
    v88 = OUTLINED_FUNCTION_39(v20);
    v92 = OUTLINED_FUNCTION_85(v88, v89, v90, v91, &qword_1EAE43CE8, &qword_19399F478);
    v16 = OUTLINED_FUNCTION_17_2(v92);
  }

  OUTLINED_FUNCTION_8_5(v16, v17, v18, v19);
  if (v21 != v22)
  {
    v93 = OUTLINED_FUNCTION_39(v27);
    v23 = sub_1934B0FCC(v93, v0, 1, v94, &qword_1EAE43CE8, &qword_19399F478);
    v26 = v23;
  }

  OUTLINED_FUNCTION_9_7(v23, v24, v25, v26);
  if (!(v21 ^ v22 | v15))
  {
    v95 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_84_2(v95, v96, v97, v98, &qword_1EAE43CE8, &qword_19399F478);
    v31 = v28;
  }

  OUTLINED_FUNCTION_3_7(v28, v29, v30, v31);
  if (!(v21 ^ v22 | v15))
  {
    v99 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v99, v100, v101, v102, &qword_1EAE43CE8, &qword_19399F478);
    v36 = v33;
  }

  OUTLINED_FUNCTION_47_5(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4(v38, v39);
  if (v1 + 6 > (v44 >> 1))
  {
    v103 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_84_2(v103, v104, v105, v106, &qword_1EAE43CE8, &qword_19399F478);
    v43 = v40;
  }

  OUTLINED_FUNCTION_50(v40, v41, v42, v43);
  OUTLINED_FUNCTION_4(v45, v46);
  if (v1 + 7 > (v51 >> 1))
  {
    v107 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_85(v107, v108, v109, v110, &qword_1EAE43CE8, &qword_19399F478);
    v50 = v47;
  }

  OUTLINED_FUNCTION_47_5(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52, v53);
  if (v1 + 8 > (v58 >> 1))
  {
    v111 = OUTLINED_FUNCTION_39(v58);
    v54 = OUTLINED_FUNCTION_84_2(v111, v112, v113, v114, &qword_1EAE43CE8, &qword_19399F478);
    v57 = v54;
  }

  OUTLINED_FUNCTION_50(v54, v55, v56, v57);
  OUTLINED_FUNCTION_4(v59, v60);
  if (v1 + 9 > (v65 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE43CE8, &qword_19399F478);
    v64 = v61;
  }

  OUTLINED_FUNCTION_47_5(v61, v62, v63, v64);
  OUTLINED_FUNCTION_4(v66, v67);
  if (v1 + 10 > (v72 >> 1))
  {
    v119 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v119, v120, v121, v122, &qword_1EAE43CE8, &qword_19399F478);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73, v74);
  if (v1 + 11 > (v79 >> 1))
  {
    v123 = OUTLINED_FUNCTION_39(v79);
    v75 = OUTLINED_FUNCTION_85(v123, v124, v125, v126, &qword_1EAE43CE8, &qword_19399F478);
    v78 = v75;
  }

  OUTLINED_FUNCTION_47_5(v75, v76, v77, v78);
  *(v80 + 32) = 9;
  *(v80 + 40) = v0;
  return v81;
}

void SensitiveContentAnalysisUIInteraction.Step.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_44_26();
        break;
      case 2:
        OUTLINED_FUNCTION_28_35();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_37_33();
        break;
      case 7:
        OUTLINED_FUNCTION_12_60();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void SensitiveContentAnalysisUIInteraction.Step.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6974634172657355 && v0 == 0xEA00000000006E6FLL;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_44_26() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == (OUTLINED_FUNCTION_28_35() & 0xFFFFFFFFFFFFLL | 0x654D000000000000) && v0 == 0xEA0000000000756ELL;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x646C65696853 && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0xD000000000000013 && 0x8000000193A3FD00 == v0;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v4 = 4;
            }

            else
            {
              v11 = v1 == 0xD000000000000013 && 0x8000000193A3FCE0 == v0;
              if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v4 = 5;
              }

              else
              {
                v13 = v1 == OUTLINED_FUNCTION_37_33() && v0 == v12;
                if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v4 = 6;
                }

                else
                {
                  v15 = v1 == OUTLINED_FUNCTION_12_60() && v0 == v14;
                  if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v4 = 7;
                  }

                  else
                  {
                    v16 = v1 == 0xD000000000000012 && 0x8000000193A3FCC0 == v0;
                    if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v4 = 8;
                    }

                    else if (v1 == 7366996 && v0 == 0xE300000000000000)
                    {

                      v4 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9();
                      OUTLINED_FUNCTION_89();
                      v4 = 9;
                      if ((v1 & 1) == 0)
                      {
                        v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_1937F6D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      sub_1937F6DEC();
      v5 = (a1 + 40);
      v6 = (a2 + 40);
      do
      {
        v11 = *(v5 - 1);
        v12 = *v5;
        v9 = *(v6 - 1);
        v10 = *v6;
        v7 = sub_19393C550();
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 16;
        v6 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1937F6DEC()
{
  result = qword_1EAE43C40;
  if (!qword_1EAE43C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C40);
  }

  return result;
}

unint64_t sub_1937F6E40()
{
  result = qword_1EAE43C48;
  if (!qword_1EAE43C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C48);
  }

  return result;
}

unint64_t sub_1937F6E94()
{
  result = qword_1EAE43C50;
  if (!qword_1EAE43C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C50);
  }

  return result;
}

unint64_t sub_1937F6EE8()
{
  result = qword_1EAE43C58;
  if (!qword_1EAE43C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C58);
  }

  return result;
}

unint64_t sub_1937F6F3C()
{
  result = qword_1EAE43C60;
  if (!qword_1EAE43C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C60);
  }

  return result;
}

unint64_t sub_1937F6F90()
{
  result = qword_1EAE43C68;
  if (!qword_1EAE43C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C68);
  }

  return result;
}

unint64_t sub_1937F6FE4()
{
  result = qword_1EAE43C70;
  if (!qword_1EAE43C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C70);
  }

  return result;
}

unint64_t sub_1937F7038()
{
  result = qword_1EAE43C78;
  if (!qword_1EAE43C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C78);
  }

  return result;
}

unint64_t sub_1937F708C()
{
  result = qword_1EAE43C80;
  if (!qword_1EAE43C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C80);
  }

  return result;
}

unint64_t sub_1937F70E0()
{
  result = qword_1EAE43C88;
  if (!qword_1EAE43C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C88);
  }

  return result;
}

unint64_t sub_1937F7134()
{
  result = qword_1EAE43C90;
  if (!qword_1EAE43C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C90);
  }

  return result;
}

unint64_t sub_1937F7188()
{
  result = qword_1EAE43C98;
  if (!qword_1EAE43C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43C98);
  }

  return result;
}

unint64_t sub_1937F71DC()
{
  result = qword_1EAE43CA0;
  if (!qword_1EAE43CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CA0);
  }

  return result;
}

unint64_t sub_1937F7230()
{
  result = qword_1EAE43CA8;
  if (!qword_1EAE43CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CA8);
  }

  return result;
}

uint64_t sub_1937F7284(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_1937F7230();
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      result = sub_19393C540();
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1937F7318()
{
  result = qword_1EAE43CB0;
  if (!qword_1EAE43CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CB0);
  }

  return result;
}

unint64_t sub_1937F7370()
{
  result = qword_1EAE43CB8;
  if (!qword_1EAE43CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CB8);
  }

  return result;
}

unint64_t sub_1937F73C8()
{
  result = qword_1EAE43CC0;
  if (!qword_1EAE43CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CC0);
  }

  return result;
}

unint64_t sub_1937F7420()
{
  result = qword_1EAE43CC8;
  if (!qword_1EAE43CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CC8);
  }

  return result;
}

unint64_t sub_1937F7478()
{
  result = qword_1EAE43CD0;
  if (!qword_1EAE43CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CD0);
  }

  return result;
}

unint64_t sub_1937F74D0()
{
  result = qword_1EAE43CD8;
  if (!qword_1EAE43CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CD8);
  }

  return result;
}

unint64_t sub_1937F7528()
{
  result = qword_1EAE43CE0;
  if (!qword_1EAE43CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43CE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_26()
{

  return sub_19393C8A0();
}

uint64_t sub_1937F75B8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE1C8);
  __swift_project_value_buffer(v2, qword_1EAEAE1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v54 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v54, xmmword_193952750);
  *v1 = 1;
  *v0 = "interactionType";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  *v10 = "ageGroup";
  v10[1] = 8;
  v12 = OUTLINED_FUNCTION_5_76(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v13 = "eventDirection";
  *(v13 + 1) = 14;
  v14 = OUTLINED_FUNCTION_5_76(v13);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v5);
  *v16 = 4;
  *v15 = "screen";
  v15[1] = 6;
  v17 = OUTLINED_FUNCTION_5_76(v15);
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v19 = 5;
  *v18 = "action";
  v18[1] = 6;
  v20 = OUTLINED_FUNCTION_5_76(v18);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "contentType";
  v21[1] = 11;
  v23 = OUTLINED_FUNCTION_5_76(v21);
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v25 = 7;
  *v24 = "clientBundleID";
  v24[1] = 14;
  v26 = OUTLINED_FUNCTION_5_76(v24);
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v5);
  *v28 = 8;
  *v27 = "trackingVersion";
  v27[1] = 15;
  v29 = OUTLINED_FUNCTION_5_76(v27);
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v31 = 9;
  *v30 = "harms";
  v30[1] = 5;
  v32 = OUTLINED_FUNCTION_5_76(v30);
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v5);
  *v34 = 10;
  *v33 = "subContentType";
  v33[1] = 14;
  v35 = OUTLINED_FUNCTION_5_76(v33);
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v37 = 11;
  *v36 = "options";
  v36[1] = 7;
  v38 = OUTLINED_FUNCTION_5_76(v36);
  (v9)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v40 = 12;
  *v39 = "currentStep";
  v39[1] = 11;
  v41 = OUTLINED_FUNCTION_5_76(v39);
  (v9)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v1 + 12 * v5);
  *v43 = 13;
  *v42 = "previousStep";
  v42[1] = 12;
  v44 = OUTLINED_FUNCTION_5_76(v42);
  (v9)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v1 + 13 * v5);
  *v46 = 14;
  *v45 = "path";
  v45[1] = 4;
  v47 = OUTLINED_FUNCTION_5_76(v45);
  (v9)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v1 + 14 * v5);
  *v49 = 15;
  *v48 = "region";
  v48[1] = 6;
  v50 = OUTLINED_FUNCTION_5_76(v48);
  (v9)(v50);
  v51 = OUTLINED_FUNCTION_44(15 * v5);
  *v52 = 16;
  *v51 = "userOptedToShow";
  *(v51 + 8) = 15;
  *(v51 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1937F79D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v9 + 28));
        goto LABEL_17;
      case 2:
        v18 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v18 + 32));
        goto LABEL_17;
      case 3:
        v14 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v14 + 36));
        goto LABEL_17;
      case 4:
        v16 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v16 + 40));
        goto LABEL_17;
      case 5:
        v12 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v12 + 44));
        goto LABEL_17;
      case 6:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.ContentType.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 48)) = v23;
        continue;
      case 7:
        v22 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 52);
        goto LABEL_21;
      case 8:
        v17 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 56);
        goto LABEL_21;
      case 9:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.Harms.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 60)) = v23;
        continue;
      case 10:
        v13 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        OUTLINED_FUNCTION_160(*(v13 + 64));
        goto LABEL_17;
      case 11:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v5 = 0;
        SensitiveContentAnalysisUIInteraction.Options.init(rawValue:)(0);
        *(v3 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 68)) = v23;
        continue;
      case 12:
        v11 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 72);
        goto LABEL_10;
      case 13:
        v11 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 76);
LABEL_10:
        OUTLINED_FUNCTION_160(v11);
LABEL_17:
        sub_1934982A8();
        goto LABEL_22;
      case 14:
        v19 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
        v20 = OUTLINED_FUNCTION_160(*(v19 + 80));
        sub_1934984D4(v20, v21, &type metadata for SensitiveContentAnalysisUIInteraction.Step, a3, &off_1F07F4E50);
        goto LABEL_22;
      case 15:
        v10 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 84);
LABEL_21:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_22;
      case 16:
        v15 = *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 88);
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
LABEL_22:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937F7CF0()
{
  v2 = v1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  v4 = result;
  v5 = v0 + *(result + 28);
  if ((*(v5 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107(v5);
    OUTLINED_FUNCTION_23_3();
    result = sub_193447324(v6, v7, v8, v9, v10, v11);
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_24_50(v4[8]);
    if ((v13 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v12), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v14, v15, v16, v17, v18, v19), !v1))
    {
      OUTLINED_FUNCTION_24_50(v4[9]);
      if ((v21 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v20), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v22, v23, v24, v25, v26, v27), !v1))
      {
        OUTLINED_FUNCTION_24_50(v4[10]);
        if ((v29 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v28), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v30, v31, v32, v33, v34, v35), !v1))
        {
          OUTLINED_FUNCTION_24_50(v4[11]);
          if ((v37 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v36), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v38, v39, v40, v41, v42, v43), !v1))
          {
            v44 = *(v0 + v4[12]);
            sub_1937F3EF4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BE0, &qword_19399F1A0);
            sub_1937EFC3C(&qword_1EAE43BE8, &qword_1EAE43BE0, &qword_19399F1A0);
            sub_19393C8A0();
            sub_1937F467C();
            result = OUTLINED_FUNCTION_25_40();
            if (result)
            {
              goto LABEL_17;
            }

            if (v44 < 0xFFFFFFFF80000000)
            {
              __break(1u);
            }

            else if (v44 <= 0x7FFFFFFF)
            {
              OUTLINED_FUNCTION_11_2();
              result = OUTLINED_FUNCTION_37_34();
              if (v1)
              {
                return result;
              }

LABEL_17:
              v45 = (v0 + v4[13]);
              if (v45[1])
              {
                v46 = *v45;
                OUTLINED_FUNCTION_11_2();
                result = sub_19393C3C0();
                if (v1)
                {
                  return result;
                }
              }

              v47 = (v0 + v4[14]);
              if (v47[1])
              {
                v48 = *v47;
                OUTLINED_FUNCTION_11_2();
                result = sub_19393C3C0();
                if (v1)
                {
                  return result;
                }
              }

              v49 = *(v0 + v4[15]);
              sub_1937F3F48();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43BF8, &qword_19399F1A8);
              sub_1937EFC3C(&qword_1EAE43C00, &qword_1EAE43BF8, &qword_19399F1A8);
              OUTLINED_FUNCTION_38_34();
              sub_1937F46D0();
              result = OUTLINED_FUNCTION_25_40();
              if (result)
              {
LABEL_25:
                OUTLINED_FUNCTION_24_50(v4[16]);
                if ((v51 & 1) == 0)
                {
                  OUTLINED_FUNCTION_0_107(v50);
                  OUTLINED_FUNCTION_23_3();
                  result = sub_193447324(v52, v53, v54, v55, v56, v57);
                  if (v1)
                  {
                    return result;
                  }
                }

                v58 = *(v0 + v4[17]);
                sub_1937F3F9C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43C10, &qword_19399F1B0);
                sub_1937EFC3C(&qword_1EAE43C18, &qword_1EAE43C10, &qword_19399F1B0);
                OUTLINED_FUNCTION_38_34();
                sub_1937F4724();
                result = OUTLINED_FUNCTION_25_40();
                if (result)
                {
                  goto LABEL_31;
                }

                if (v58 >= 0xFFFFFFFF80000000)
                {
                  if (v58 <= 0x7FFFFFFF)
                  {
                    OUTLINED_FUNCTION_11_2();
                    result = OUTLINED_FUNCTION_37_34();
                    if (v1)
                    {
                      return result;
                    }

LABEL_31:
                    OUTLINED_FUNCTION_24_50(v4[18]);
                    if ((v60 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v59), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v61, v62, v63, v64, v65, v66), !v1))
                    {
                      OUTLINED_FUNCTION_24_50(v4[19]);
                      if ((v68 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v67), OUTLINED_FUNCTION_23_3(), result = sub_193447324(v69, v70, v71, v72, v73, v74), !v1))
                      {
                        result = *(v0 + v4[20]);
                        if (!*(result + 16) || (OUTLINED_FUNCTION_23_3(), result = sub_193498B44(v75, v76, v77, v78, v79, v80), !v1))
                        {
                          v81 = (v0 + v4[21]);
                          if (!v81[1] || (v82 = *v81, OUTLINED_FUNCTION_11_2(), result = sub_19393C3C0(), !v1))
                          {
                            if (*(v0 + v4[22]) != 2)
                            {
                              OUTLINED_FUNCTION_11_2();
                              return sub_19393C2E0();
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }

LABEL_46:
                  __break(1u);
                  return result;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              if (v49 >= 0xFFFFFFFF80000000)
              {
                if (v49 <= 0x7FFFFFFF)
                {
                  OUTLINED_FUNCTION_11_2();
                  result = OUTLINED_FUNCTION_37_34();
                  if (v1)
                  {
                    return result;
                  }

                  goto LABEL_25;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_43;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1937F8250()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE43D20;

  return v0;
}

void sub_1937F82EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE1E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("InteractionTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "InteractionTypeChat";
  *(v11 + 1) = 19;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = v0;
  *v12 = "InteractionTypeHelp";
  *(v12 + 8) = 19;
  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v14 = "InteractionTypeSendOrReceive";
  *(v14 + 1) = 28;
  v14[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F84C0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE1F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "AgeGroupUnder13";
  *(v11 + 1) = 15;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = v0;
  *v12 = "AgeGroupOver13";
  *(v12 + 8) = 14;
  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v14 = "AgeGroupAdult";
  *(v14 + 1) = 13;
  v14[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8698()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE210);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "EventDirectionSend";
  *(v11 + 1) = 18;
  v11[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = v0;
  *v12 = "EventDirectionReceive";
  *(v12 + 8) = 21;
  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v14 = "EventDirectionUnknownOrNotApplicable";
  *(v14 + 1) = 36;
  v14[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  *v15 = "EventDirectionTryingToCall";
  *(v15 + 1) = 26;
  v15[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F88A0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE228);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEAE260;
  *v7 = 0;
  *v8 = "ScreenUnknown";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_17_8((v7 + v3));
  *v12 = "ScreenIntervention1";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v11();
  v13 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v14 = 2;
  *v13 = "ScreenIntervention2";
  *(v13 + 8) = 19;
  *(v13 + 16) = 2;
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8A7C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE240);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v65 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v65, xmmword_19397F900);
  *v0 = "ActionUnknown";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v10 = "ActionCancel";
  *(v10 + 1) = 12;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 2;
  *v12 = "ActionImSure";
  v12[1] = 12;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v15 = "ActionBypass";
  *(v15 + 1) = 12;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  *v17 = "ActionHeed";
  *(v17 + 1) = 10;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_0_0(v19, "ActionMessageSomeone");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_14_4(6);
  v23 = OUTLINED_FUNCTION_0_0(v22, "ActionDontSend");
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_45_2(7 * v5);
  *v25 = 7;
  *v24 = "ActionWaysToGetHelp";
  v24[1] = 19;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v28 = 8;
  v29 = OUTLINED_FUNCTION_0_0(v27, "ActionLeaveGroup");
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v31 = 9;
  v32 = OUTLINED_FUNCTION_0_0(v30, "ActionBlockContact");
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v34 = 10;
  *v33 = "ActionBlockContacts";
  v33[1] = 19;
  v35 = OUTLINED_FUNCTION_1_3(v33);
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_14_4(11);
  *v36 = "ActionReportToApple";
  *(v36 + 1) = 19;
  v37 = OUTLINED_FUNCTION_1_3(v36);
  (v9)(v37);
  v38 = OUTLINED_FUNCTION_32_10();
  v39 = OUTLINED_FUNCTION_0_0(v38, "ActionReportToAuthorities");
  (v9)(v39);
  v40 = OUTLINED_FUNCTION_32_10();
  *v40 = "ActionShowContent";
  *(v40 + 1) = 17;
  v41 = OUTLINED_FUNCTION_1_3(v40);
  (v9)(v41);
  v42 = OUTLINED_FUNCTION_32_10();
  *v42 = "ActionHideContent";
  *(v42 + 1) = 17;
  v43 = OUTLINED_FUNCTION_1_3(v42);
  (v9)(v43);
  v44 = OUTLINED_FUNCTION_45_2(15 * v5);
  *v45 = 15;
  v46 = OUTLINED_FUNCTION_0_0(v44, "ActionShieldTap");
  (v9)(v46);
  v47 = OUTLINED_FUNCTION_3_1(v1 + 16 * v5);
  *v48 = 16;
  *v47 = "ActionMenuTap";
  v47[1] = 13;
  v49 = OUTLINED_FUNCTION_1_3(v47);
  (v9)(v49);
  v50 = OUTLINED_FUNCTION_45_2(17 * v5);
  *v51 = 17;
  *v50 = "ActionTryingToCall";
  v50[1] = 18;
  v52 = OUTLINED_FUNCTION_1_3(v50);
  (v9)(v52);
  v53 = OUTLINED_FUNCTION_32_10();
  *v53 = "ActionResumeCall";
  *(v53 + 1) = 16;
  v54 = OUTLINED_FUNCTION_1_3(v53);
  (v9)(v54);
  v55 = OUTLINED_FUNCTION_32_10();
  *v55 = "ActionEndCall";
  *(v55 + 1) = 13;
  v56 = OUTLINED_FUNCTION_1_3(v55);
  (v9)(v56);
  v57 = OUTLINED_FUNCTION_32_10();
  *v57 = "ActionUnsubscribe";
  *(v57 + 1) = 17;
  v58 = OUTLINED_FUNCTION_1_3(v57);
  (v9)(v58);
  v59 = OUTLINED_FUNCTION_14_4(21);
  *v59 = "ActionSystemUIDismissal";
  *(v59 + 1) = 23;
  v60 = OUTLINED_FUNCTION_1_3(v59);
  (v9)(v60);
  v61 = OUTLINED_FUNCTION_14_4(22);
  v62 = OUTLINED_FUNCTION_0_0(v61, "ActionSuccessfulScreenTimePasscode");
  (v9)(v62);
  v63 = OUTLINED_FUNCTION_3_1(v1 + 23 * v5);
  *v64 = 23;
  *v63 = "ActionDeleteItem";
  *(v63 + 8) = 16;
  *(v63 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1937F8F80()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAE258);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "SubContentTypeSticker";
  *(v11 + 1) = 21;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 2;
  *v12 = "SubContentTypeBackgroundImage";
  *(v12 + 8) = 29;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v14 = "SubContentTypeInlineSticker";
  *(v14 + 1) = 27;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  *v15 = "SubContentTypeTapBack";
  *(v15 + 1) = 21;
  v15[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937F918C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE270);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v6, xmmword_1939526F0);
  *v0 = "StepUnknown";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_17_8((v1 + v5));
  *v11 = "StepUserAction";
  *(v11 + 1) = 14;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  v15 = OUTLINED_FUNCTION_0_0(v13, "StepContextMenu");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v16 = "StepActionMenu";
  *(v16 + 1) = 14;
  v17 = OUTLINED_FUNCTION_1_3(v16);
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v19 = OUTLINED_FUNCTION_0_0(v18, "StepShield");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v5);
  *v21 = 5;
  *v20 = "StepInterventionScreen1";
  v20[1] = 23;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_14_4(6);
  *v23 = "StepInterventionScreen2";
  *(v23 + 1) = 23;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_45_2(7 * v5);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_0_0(v25, "StepSensitiveBadge");
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v29 = 8;
  v30 = OUTLINED_FUNCTION_0_0(v28, "StepWaysToGetHelp");
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_45_2(9 * v5);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_0_0(v31, "StepScreenTimePasscode");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_32_10();
  *v34 = "StepTip";
  *(v34 + 1) = 7;
  v34[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisUIInteraction.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisUIInteraction()
{
  result = qword_1EAEA5100;
  if (!qword_1EAEA5100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisUIInteraction.interactionType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisUIInteraction.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

void SensitiveContentAnalysisUIInteraction.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

void SensitiveContentAnalysisUIInteraction.screen.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 40));
}

void SensitiveContentAnalysisUIInteraction.action.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

uint64_t SensitiveContentAnalysisUIInteraction.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.clientBundleID.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.clientBundleID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 52));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.trackingVersion.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.trackingVersion.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 56));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 60)) = v2;
  return result;
}

void SensitiveContentAnalysisUIInteraction.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 64));
}

uint64_t SensitiveContentAnalysisUIInteraction.options.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 68)) = v2;
  return result;
}

void SensitiveContentAnalysisUIInteraction.currentStep.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 72));
}

void SensitiveContentAnalysisUIInteraction.previousStep.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 76));
}

uint64_t SensitiveContentAnalysisUIInteraction.path.getter()
{
  v1 = *(v0 + *(type metadata accessor for SensitiveContentAnalysisUIInteraction() + 80));
}

uint64_t SensitiveContentAnalysisUIInteraction.path.setter()
{
  v2 = *(OUTLINED_FUNCTION_13_61() + 80);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.region.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 84));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisUIInteraction.region.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_20_52() + 84));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.userOptedToShow.setter(char a1)
{
  result = type metadata accessor for SensitiveContentAnalysisUIInteraction();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_1937FA020@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.InteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.InteractionType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937FA1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1937FA2A8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA3C0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937FA3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA4D8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Screen.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA500@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Screen.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA5F0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Action.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA618@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Action.allCases.getter();
  *a1 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisUIInteraction::ContentType sub_1937FA740@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisUIInteraction.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1937FA780@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA7B0@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937FA7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1937FA8C8@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisUIInteraction.Step.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FA8F0@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisUIInteraction.Step.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SensitiveContentAnalysisUIInteraction.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisUIInteraction.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937FAA58()
{
  sub_19393CAB0();
  SensitiveContentAnalysisUIInteraction.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_1937FAB9C()
{
  result = qword_1EAE43D80;
  if (!qword_1EAE43D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43D80);
  }

  return result;
}

unint64_t sub_1937FABFC()
{
  result = qword_1EAE43D88;
  if (!qword_1EAE43D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43D88);
  }

  return result;
}

unint64_t sub_1937FAC88()
{
  result = qword_1EAE43DA0;
  if (!qword_1EAE43DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DA0);
  }

  return result;
}

unint64_t sub_1937FACE8()
{
  result = qword_1EAE43DA8;
  if (!qword_1EAE43DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DA8);
  }

  return result;
}

unint64_t sub_1937FAD74()
{
  result = qword_1EAE43DB8;
  if (!qword_1EAE43DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DB8);
  }

  return result;
}

unint64_t sub_1937FADD4()
{
  result = qword_1EAE43DC0;
  if (!qword_1EAE43DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DC0);
  }

  return result;
}

unint64_t sub_1937FAE2C()
{
  result = qword_1EAE43DC8;
  if (!qword_1EAE43DC8)
  {
    type metadata accessor for SensitiveContentAnalysisUIInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43DC8);
  }

  return result;
}

uint64_t sub_1937FAEB0()
{
  sub_19349D140();
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      OUTLINED_FUNCTION_0_108(v3, &qword_1EAE43DD0, &type metadata for SensitiveContentAnalysisUIInteraction.InteractionType);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_0_108(v4, &qword_1EAE43DD8, &type metadata for SensitiveContentAnalysisUIInteraction.AgeGroup);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          OUTLINED_FUNCTION_0_108(v5, &qword_1EAE43DE0, &type metadata for SensitiveContentAnalysisUIInteraction.EventDirection);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            OUTLINED_FUNCTION_0_108(v6, &qword_1EAE43DE8, &type metadata for SensitiveContentAnalysisUIInteraction.Screen);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              OUTLINED_FUNCTION_0_108(v7, &qword_1EAE43DF0, &type metadata for SensitiveContentAnalysisUIInteraction.Action);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                OUTLINED_FUNCTION_0_108(v8, &qword_1ED508290, MEMORY[0x1E69E6158]);
                OUTLINED_FUNCTION_4_0();
                if (!(!v2 & v1))
                {
                  OUTLINED_FUNCTION_0_108(v9, &qword_1EAE43DF8, &type metadata for SensitiveContentAnalysisUIInteraction.SubContentType);
                  if (v11 > 0x3F)
                  {
                    return v10;
                  }

                  OUTLINED_FUNCTION_0_108(v10, &qword_1EAE43E00, &type metadata for SensitiveContentAnalysisUIInteraction.Step);
                  if (v12 > 0x3F)
                  {
                    return v10;
                  }

                  sub_1937FB100(319, &qword_1EAE43E08, &type metadata for SensitiveContentAnalysisUIInteraction.Step, MEMORY[0x1E69E62F8]);
                  if (v13 > 0x3F)
                  {
                    return v10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_108(v10, &qword_1ED506698, MEMORY[0x1E69E6370]);
                    OUTLINED_FUNCTION_4_0();
                    if (!(!v2 & v1))
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

  return v0;
}

void sub_1937FB100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1937FB244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512628);
  v5 = __swift_project_value_buffer(v4, qword_1ED512628);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_74 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512628);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E10, &qword_1939A03E0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow.attribute(_:)(void (*a1)(void))
{
  result = sub_1937FB654(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FB69C(void (*a1)(void))
{
  result = sub_1937FB654(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FB6CC(uint64_t a1)
{
  result = sub_1937FB6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937FB6F4()
{
  result = qword_1EAE3A940;
  if (!qword_1EAE3A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A940);
  }

  return result;
}

_BYTE *_s22ContentInteractionFlowOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1937FB83C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512688);
  v5 = __swift_project_value_buffer(v4, qword_1ED512688);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.SensitiveContentAnalysis.ResourcesInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_75 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512688);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E18, &qword_1939A0470);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.SensitiveContentAnalysis.ResourcesInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_1937FBC4C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FBC94(void (*a1)(void))
{
  result = sub_1937FBC4C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937FBCC4(uint64_t a1)
{
  result = sub_1937FBCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937FBCEC()
{
  result = qword_1EAE3A930;
  if (!qword_1EAE3A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A930);
  }

  return result;
}

_BYTE *_s20ResourcesInteractionOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisContentInteractionFlow.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1937FBFF4(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43E20, &qword_1939A04F8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43E20, &qword_1939A04F8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1937FBFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43E20, &qword_1939A04F8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1937FC198(v10, a1);
  }

  return result;
}

uint64_t sub_1937FC198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1937FF6A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1937FC198(v14, v40);
      v33 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E20, &qword_1939A04F8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1937FBFF4(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE43E20, &qword_1939A04F8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE43E20, &qword_1939A04F8);
  return v15;
}

id static SensitiveContentAnalysisContentInteractionFlow.columns.getter()
{
  v170 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v11, v12, v13, v14, v15);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v35, v36, v37, v38, v39);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v40 = swift_initStackObject();
  v48 = OUTLINED_FUNCTION_2_4(v40, v41, v42, v43, v44, v45, v46, v47, v163);
  OUTLINED_FUNCTION_5_10(v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v57);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v58, v59, v60, v61, v62, 2, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v63 = swift_initStackObject();
  v71 = OUTLINED_FUNCTION_2_4(v63, v64, v65, v66, v67, v68, v69, v70, v164);
  OUTLINED_FUNCTION_5_10(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v80);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = sub_19343D150(v81, v82, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_3(result);
  v83 = swift_initStackObject();
  v91 = OUTLINED_FUNCTION_2_4(v83, v84, v85, v86, v87, v88, v89, v90, v165);
  OUTLINED_FUNCTION_5_10(v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v100 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v100);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v101, v102, v103, v104, v105, 2, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_69_3(result);
  v106 = swift_initStackObject();
  v114 = OUTLINED_FUNCTION_2_4(v106, v107, v108, v109, v110, v111, v112, v113, v166);
  OUTLINED_FUNCTION_5_10(v114, v115, v116, v117, v118, v119, v120, v121, v122);
  v123 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v123);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v124, v125, v126, v127, v128);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  v129 = swift_initStackObject();
  v137 = OUTLINED_FUNCTION_2_4(v129, v130, v131, v132, v133, v134, v135, v136, v167);
  OUTLINED_FUNCTION_5_10(v137, v138, v139, v140, v141, v142, v143, v144, v145);
  v146 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v146);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v147, v148, v149, v150, v151);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v152 = swift_initStackObject();
  v160 = OUTLINED_FUNCTION_2_4(v152, v153, v154, v155, v156, v157, v158, v159, v168);
  *(v160 + 16) = v169;
  *(v160 + 32) = sub_19393C850();
  v161 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v162 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v162 | 0x44497400000000, 0xE700000000000000, 2, 0, v160, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v170;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1937FC9D4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = a1 == OUTLINED_FUNCTION_16_3() && v5 == 0xE800000000000000;
  if (v6 || (v7 = v5, (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v8 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    OUTLINED_FUNCTION_58_1(*(v8 + 28));
    if (v10)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v12 = a1 == (OUTLINED_FUNCTION_16_5() | 0x7269447400000000) && v7 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v13 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    OUTLINED_FUNCTION_58_1(*(v13 + 32));
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v16 = a1 == OUTLINED_FUNCTION_42_1() && v7 == v15;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v17 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 36));
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_18_5();
  v19 = a1 == OUTLINED_FUNCTION_20_50() && v7 == v18;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40);
    goto LABEL_31;
  }

  v21 = a1 == 0x736D726168 && v7 == 0xE500000000000000;
  if (!v21 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_19_11();
    v24 = a1 == OUTLINED_FUNCTION_22_5() && v7 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v25 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      OUTLINED_FUNCTION_58_1(*(v25 + 48));
      if (v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v27 = a1 == 0x6574617473 && v7 == 0xE500000000000000;
      if (!v27 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        v30 = a1 == (OUTLINED_FUNCTION_16_5() | 0x44497400000000) && v7 == 0xE700000000000000;
        if (!v30 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
LABEL_63:
          sub_19349AB64();
          swift_allocError();
          v32 = v31;
          *v31 = a1;
          v31[1] = v7;
          v31[5] = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32 + 2);
          sub_1937FBFF4(v2, boxed_opaque_existential_1Tm);
          *(v32 + 48) = 1;
          swift_willThrow();

          return;
        }

        v20 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56);
LABEL_31:
        if (!*(v2 + v20 + 8))
        {
          goto LABEL_7;
        }

        v34 = *(v2 + v20);
        goto LABEL_9;
      }

      v28 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
      OUTLINED_FUNCTION_58_1(*(v28 + 52));
      if (v29)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    OUTLINED_FUNCTION_147(v9);
LABEL_9:
    sub_1934948FC();
    return;
  }

  v22 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 44));
  if (v22 >= 0xFFFFFFFF80000000)
  {
    if (v22 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_41;
  }

  __break(1u);
}

unint64_t sub_1937FCCF8()
{
  result = qword_1EAE43E30;
  if (!qword_1EAE43E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E30);
  }

  return result;
}

unint64_t sub_1937FCD4C()
{
  result = qword_1EAE43E48;
  if (!qword_1EAE43E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E48);
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v8);
  v9 = a1 + v2[13];
  j__OUTLINED_FUNCTION_131(v9);
  v12 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1937FF6A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  sub_1937FCCF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E38, &qword_1939A0500);
  sub_1937EFC3C(&qword_1EAE43E40, &qword_1EAE43E38, &qword_1939A0500);
  sub_19393C8A0();

  *(a1 + v2[9]) = v13;
  *v7 = 0;
  v7[1] = 0;
  sub_1937FCD4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E50, &qword_1939A0508);
  sub_1937EFC3C(&qword_1EAE43E58, &qword_1EAE43E50, &qword_1939A0508);
  sub_19393C8A0();

  *(a1 + v2[11]) = v13;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v9 = 0;
  *(v9 + 8) = 256;
  *v12 = 0;
  v12[1] = 0;
  return result;
}

BOOL static SensitiveContentAnalysisContentInteractionFlow.== infix(_:_:)()
{
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_25_3(v0[7]);
  if (v2)
  {
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937FD380();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[8]);
  if (v5)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1937FD32C();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6(v0[9]);
  sub_1937FD1DC();
  if (OUTLINED_FUNCTION_25_4())
  {
    v7 = v0[10];
    OUTLINED_FUNCTION_3();
    if (v8)
    {
      if (!v9)
      {
        return 0;
      }

      v12 = *v10 == *v11 && v8 == v9;
      if (!v12 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_23_6(v0[11]);
    sub_1937FD230();
    if (OUTLINED_FUNCTION_25_4())
    {
      OUTLINED_FUNCTION_25_3(v0[12]);
      if (v14)
      {
        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v15)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_1937FD2D8();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3(v0[13]);
      if (v17)
      {
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v18)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_1937FD284();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      v19 = v0[14];
      OUTLINED_FUNCTION_3();
      if (v20)
      {
        if (!v21)
        {
          return 0;
        }

        v24 = *v22 == *v23 && v20 == v21;
        return v24 || (sub_19393CA30() & 1) != 0;
      }

      if (!v21)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1937FD1DC()
{
  result = qword_1EAE43E60;
  if (!qword_1EAE43E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E60);
  }

  return result;
}

unint64_t sub_1937FD230()
{
  result = qword_1EAE43E68;
  if (!qword_1EAE43E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E68);
  }

  return result;
}

unint64_t sub_1937FD284()
{
  result = qword_1EAE43E70;
  if (!qword_1EAE43E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E70);
  }

  return result;
}

unint64_t sub_1937FD2D8()
{
  result = qword_1EAE43E78;
  if (!qword_1EAE43E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E78);
  }

  return result;
}

unint64_t sub_1937FD32C()
{
  result = qword_1EAE43E80;
  if (!qword_1EAE43E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E80);
  }

  return result;
}

unint64_t sub_1937FD380()
{
  result = qword_1EAE43E88;
  if (!qword_1EAE43E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E88);
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v2 = v0 + v1[7];
  if (*(v2 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v2);
    sub_1937FD564();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[8]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v3);
    sub_1937FD5B8();
    OUTLINED_FUNCTION_133_1();
  }

  MEMORY[0x193B18030](*(v0 + v1[9]));
  v5 = (v0 + v1[10]);
  if (v5[1])
  {
    v6 = *v5;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v0 + v1[11]));
  OUTLINED_FUNCTION_100(v1[12]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v7);
    sub_1937FD60C();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[13]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v8);
    sub_1937FD660();
    OUTLINED_FUNCTION_133_1();
  }

  v9 = (v0 + v1[14]);
  if (!v9[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v10 = *v9;
  sub_19393CAD0();
  return sub_19393C640();
}

unint64_t sub_1937FD564()
{
  result = qword_1EAE43E90;
  if (!qword_1EAE43E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E90);
  }

  return result;
}

unint64_t sub_1937FD5B8()
{
  result = qword_1EAE43E98;
  if (!qword_1EAE43E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43E98);
  }

  return result;
}

unint64_t sub_1937FD60C()
{
  result = qword_1EAE43EA0;
  if (!qword_1EAE43EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EA0);
  }

  return result;
}

unint64_t sub_1937FD660()
{
  result = qword_1EAE43EA8;
  if (!qword_1EAE43EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EA8);
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.AgeGroup.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.AgeGroup.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43EE8, &qword_1939A06D8);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v16 = OUTLINED_FUNCTION_39(v4);
    v20 = OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE43EE8, &qword_1939A06D8);
    v0 = OUTLINED_FUNCTION_17_2(v20);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v21 = OUTLINED_FUNCTION_39(v4);
    v25 = OUTLINED_FUNCTION_85(v21, v22, v23, v24, &qword_1EAE43EE8, &qword_1939A06D8);
    v0 = OUTLINED_FUNCTION_17_2(v25);
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v26 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE43EE8, &qword_1939A06D8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 3;
  v11 = v3 + 16 * v9;
  *(v11 + 32) = 1;
  *(v11 + 40) = 1;
  v12 = *(v3 + 24);
  if ((v5 + 4) > (v12 >> 1))
  {
    v30 = OUTLINED_FUNCTION_39(v12);
    v0 = OUTLINED_FUNCTION_85(v30, v31, v32, v33, &qword_1EAE43EE8, &qword_1939A06D8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  *(v13 + 32) = 2;
  *(v13 + 40) = 1;
  return v14;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisContentInteractionFlow.AgeGroup.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t SensitiveContentAnalysisContentInteractionFlow.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.EventDirection.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_20_0() && v0 == v8)
        {

          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisContentInteractionFlow.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.SubContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_17_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_18_6() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisContentInteractionFlow.FlowState.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static SensitiveContentAnalysisContentInteractionFlow.FlowState.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE43ED0, &qword_1939A06C0);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v37 = OUTLINED_FUNCTION_39(v4);
    v41 = OUTLINED_FUNCTION_84_2(v37, v38, v39, v40, &qword_1EAE43ED0, &qword_1939A06C0);
    v0 = OUTLINED_FUNCTION_17_2(v41);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v42 = OUTLINED_FUNCTION_39(v4);
    v46 = OUTLINED_FUNCTION_85(v42, v43, v44, v45, &qword_1EAE43ED0, &qword_1939A06C0);
    v0 = OUTLINED_FUNCTION_17_2(v46);
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v47 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v47, v5 + 3, 1, v48, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v49 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v49, v50, v51, v52, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v53 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v53, v54, v55, v56, &qword_1EAE43ED0, &qword_1939A06C0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16, v17);
  if ((v5 + 6) > (v19 >> 1))
  {
    v57 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE43ED0, &qword_1939A06C0);
  }

  *(v18 + 2) = v5 + 6;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v5 + 80]);
  if ((v5 + 7) > (v24 >> 1))
  {
    v61 = OUTLINED_FUNCTION_39(v24);
    v20 = OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE43ED0, &qword_1939A06C0);
    v23 = v20;
  }

  OUTLINED_FUNCTION_47_5(v20, v21, v22, v23);
  OUTLINED_FUNCTION_4(v25, v26);
  if ((v5 + 8) > (v28 >> 1))
  {
    v65 = OUTLINED_FUNCTION_39(v28);
    v27 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE43ED0, &qword_1939A06C0);
  }

  *(v27 + 2) = v5 + 8;
  OUTLINED_FUNCTION_4(v27, &v27[16 * v5 + 112]);
  if ((v5 + 9) > (v33 >> 1))
  {
    v69 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE43ED0, &qword_1939A06C0);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  *(v34 + 32) = 7;
  *(v34 + 40) = 1;
  return v35;
}

unint64_t SensitiveContentAnalysisContentInteractionFlow.FlowState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x646572756373624FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_22_42();
      break;
    case 2:
      result = OUTLINED_FUNCTION_16_47();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.FlowState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x646572756373624FLL && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_22_42() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_16_47() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0xD000000000000013 && 0x8000000193A40380 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v4 = 3;
          }

          else
          {
            v11 = v1 == 0xD000000000000015 && 0x8000000193A40360 == v0;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v4 = 4;
            }

            else
            {
              v12 = v1 == 0xD000000000000012 && 0x8000000193A40340 == v0;
              if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v4 = 5;
              }

              else
              {
                v13 = v1 == 0xD000000000000017 && 0x8000000193A40320 == v0;
                if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v4 = 6;
                }

                else if (v1 == 0xD000000000000014 && 0x8000000193A40300 == v0)
                {

                  v4 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t sub_1937FE42C()
{
  result = qword_1EAE43EB0;
  if (!qword_1EAE43EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EB0);
  }

  return result;
}

unint64_t sub_1937FE484()
{
  result = qword_1EAE43EB8;
  if (!qword_1EAE43EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EB8);
  }

  return result;
}

unint64_t sub_1937FE4DC()
{
  result = qword_1EAE43EC0;
  if (!qword_1EAE43EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EC0);
  }

  return result;
}

unint64_t sub_1937FE534()
{
  result = qword_1EAE43EC8;
  if (!qword_1EAE43EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43EC8);
  }

  return result;
}

uint64_t sub_1937FE598()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE288);
  __swift_project_value_buffer(v2, qword_1EAEAE288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v25, xmmword_1939526B0);
  *v1 = 1;
  *v0 = "ageGroup";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  *v10 = "eventDirection";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 3;
  *v12 = "contentType";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v14);
  *v15 = "clientBundleID";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v17 = 5;
  *v16 = "harms";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = OUTLINED_FUNCTION_44(5 * v5);
  *v19 = 6;
  *v18 = "subContentType";
  *(v18 + 8) = 14;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v20 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v21 = 7;
  *v20 = "state";
  *(v20 + 8) = 5;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v22 = OUTLINED_FUNCTION_44(7 * v5);
  *v23 = 8;
  *v22 = "eventID";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

void sub_1937FE858()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v5 + 28));
        goto LABEL_14;
      case 2:
        v8 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v8 + 32));
        goto LABEL_14;
      case 3:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisContentInteractionFlow.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 36)) = v11;
        continue;
      case 4:
        v6 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40);
        goto LABEL_10;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisContentInteractionFlow.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 44)) = v11;
        continue;
      case 6:
        v9 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v9 + 48));
        goto LABEL_14;
      case 7:
        v10 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
        OUTLINED_FUNCTION_160(*(v10 + 52));
LABEL_14:
        sub_1934982A8();
        goto LABEL_15;
      case 8:
        v7 = *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56);
LABEL_10:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
LABEL_15:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1937FEA58()
{
  v2 = v1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  v4 = result;
  v5 = v0 + *(result + 28);
  if ((*(v5 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107(v5);
    result = OUTLINED_FUNCTION_11_59(v23, 1, v6, &type metadata for SensitiveContentAnalysisContentInteractionFlow.AgeGroup, v7, &off_1F07F55D8);
    v2 = v1;
  }

  if (!v2)
  {
    v8 = v0 + v4[8];
    if ((*(v8 + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(v8), result = OUTLINED_FUNCTION_11_59(v23, 2, v9, &type metadata for SensitiveContentAnalysisContentInteractionFlow.EventDirection, v10, &off_1F07F5600), !v1))
    {
      v11 = *(v0 + v4[9]);
      v23[0] = v11;
      sub_1937FCCF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E38, &qword_1939A0500);
      sub_1937EFC3C(&qword_1EAE43E40, &qword_1EAE43E38, &qword_1939A0500);
      sub_19393C8A0();
      sub_1937FD1DC();
      result = OUTLINED_FUNCTION_25_40();
      if (result)
      {
        goto LABEL_11;
      }

      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v11 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_2();
        result = sub_19393C350();
        if (v1)
        {
          return result;
        }

LABEL_11:
        v12 = (v0 + v4[10]);
        if (v12[1])
        {
          v13 = *v12;
          OUTLINED_FUNCTION_11_2();
          result = sub_19393C3C0();
          if (v1)
          {
            return result;
          }
        }

        v14 = *(v0 + v4[11]);
        v23[0] = v14;
        sub_1937FCD4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43E50, &qword_1939A0508);
        sub_1937EFC3C(&qword_1EAE43E58, &qword_1EAE43E50, &qword_1939A0508);
        sub_19393C8A0();
        sub_1937FD230();
        result = OUTLINED_FUNCTION_25_40();
        if (result)
        {
          goto LABEL_17;
        }

        if (v14 >= 0xFFFFFFFF80000000)
        {
          if (v14 <= 0x7FFFFFFF)
          {
            OUTLINED_FUNCTION_11_2();
            result = sub_19393C350();
            if (v1)
            {
              return result;
            }

LABEL_17:
            v15 = v0 + v4[12];
            if ((*(v15 + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(v15), result = OUTLINED_FUNCTION_11_59(v23, 6, v16, &type metadata for SensitiveContentAnalysisContentInteractionFlow.SubContentType, v17, &off_1F07F5628), !v1))
            {
              v18 = v0 + v4[13];
              if ((*(v18 + 9) & 1) != 0 || (OUTLINED_FUNCTION_0_107(v18), result = OUTLINED_FUNCTION_11_59(v23, 7, v19, &type metadata for SensitiveContentAnalysisContentInteractionFlow.FlowState, v20, &off_1F07F5650), !v1))
              {
                v21 = (v0 + v4[14]);
                if (v21[1])
                {
                  v22 = *v21;
                  OUTLINED_FUNCTION_11_2();
                  return sub_19393C3C0();
                }
              }
            }

            return result;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_1937FEDB4()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE43EF0;

  return v0;
}

void sub_1937FEE50()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBC0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_34_12();
  *v11 = "AgeGroupUnder13";
  *(v11 + 8) = 15;
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_25(v12, "AgeGroupOver13");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_1_6();
  *v15 = "AgeGroupAdult";
  *(v15 + 1) = 13;
  v15[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF01C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_34_12();
  v12 = OUTLINED_FUNCTION_25(v11, "EventDirectionSend");
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = v0;
  *v13 = "EventDirectionReceive";
  *(v13 + 8) = 21;
  *(v13 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  v15 = OUTLINED_FUNCTION_1_6();
  v16 = OUTLINED_FUNCTION_25(v15, "EventDirectionUnknownOrNotApplicable");
  (v10)(v16);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v17);
  *v18 = "EventDirectionTryingToCall";
  *(v18 + 8) = 26;
  *(v18 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF208()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_34_12();
  *v11 = "SubContentTypeSticker";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v13 = 2;
  *v12 = "SubContentTypeBackgroundImage";
  *(v12 + 8) = 29;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v14 = OUTLINED_FUNCTION_1_6();
  *v14 = "SubContentTypeInlineSticker";
  *(v14 + 1) = 27;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v15);
  *v16 = "SubContentTypeTapBack";
  *(v16 + 8) = 21;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937FF408()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE2E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_27_2(v6, xmmword_193951270);
  *v1 = 0;
  OUTLINED_FUNCTION_102("FlowStateUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_34_12();
  v12 = OUTLINED_FUNCTION_25(v11, "FlowStateObscured");
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_25(v13, "FlowStateHeededShield");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_1_6();
  v17 = OUTLINED_FUNCTION_25(v16, "FlowStateBypassedShield");
  (v10)(v17);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v18);
  v20 = OUTLINED_FUNCTION_25(v19, "FlowStateCanceledFirstScreen");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_25(v21, "FlowStateDismissedSecondScreen");
  (v10)(v23);
  v24 = (v1 + 6 * v5);
  v25 = v24 + dword_1EAEAE320;
  *v24 = 6;
  v26 = OUTLINED_FUNCTION_25(v25, "FlowStateHeededSecondScreen");
  (v10)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v5);
  *v28 = 7;
  v29 = OUTLINED_FUNCTION_25(v27, "FlowStateBypassedWithoutPasscode");
  (v10)(v29);
  v30 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v31 = 8;
  *v30 = "FlowStateBypassedWithPasscode";
  *(v30 + 8) = 29;
  *(v30 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisContentInteractionFlow()
{
  result = qword_1EAE461B0;
  if (!qword_1EAE461B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisContentInteractionFlow.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisContentInteractionFlow.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.clientBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.clientBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  *(v1 + *(result + 44)) = v2;
  return result;
}

void SensitiveContentAnalysisContentInteractionFlow.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

void SensitiveContentAnalysisContentInteractionFlow.state.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
  OUTLINED_FUNCTION_37_0(*(v0 + 52));
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SensitiveContentAnalysisContentInteractionFlow() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1937FFD9C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FFDC4@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.AgeGroup.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1937FFE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1937FFF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193800024@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisContentInteractionFlow::ContentType sub_193800174@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisContentInteractionFlow.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1938001B4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1938001E4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1938002FC@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisContentInteractionFlow.FlowState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193800324@<X0>(uint64_t *a1@<X8>)
{
  result = static SensitiveContentAnalysisContentInteractionFlow.FlowState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SensitiveContentAnalysisContentInteractionFlow.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisContentInteractionFlow.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193800454()
{
  sub_19393CAB0();
  SensitiveContentAnalysisContentInteractionFlow.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1938004FC()
{
  result = qword_1EAE43F20;
  if (!qword_1EAE43F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F20);
  }

  return result;
}

unint64_t sub_19380055C()
{
  result = qword_1EAE43F28;
  if (!qword_1EAE43F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F28);
  }

  return result;
}

unint64_t sub_1938005E8()
{
  result = qword_1EAE43F40;
  if (!qword_1EAE43F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F40);
  }

  return result;
}

unint64_t sub_193800648()
{
  result = qword_1EAE43F48;
  if (!qword_1EAE43F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F48);
  }

  return result;
}

unint64_t sub_1938006D4()
{
  result = qword_1EAE43F60;
  if (!qword_1EAE43F60)
  {
    type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F60);
  }

  return result;
}

uint64_t sub_193800758()
{
  sub_19349D140();
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      sub_19349D1FC(319, &qword_1EAE3A958);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE3A8F8);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1ED508290);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE3A908);
            if (v4 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A900);
            if (v5 > 0x3F)
            {
              return v3;
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

  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SensitiveContentAnalysisResourcesInteraction.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_193800B30(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE43F68, &qword_1939A0FA8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE43F68, &qword_1939A0FA8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_193800B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisResourcesInteraction.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE43F68, &qword_1939A0FA8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193800CD4(v10, a1);
  }

  return result;
}

uint64_t sub_193800CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SensitiveContentAnalysisResourcesInteraction.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1938052A4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_193800CD4(v14, v40);
      v33 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t SensitiveContentAnalysisResourcesInteraction.serialize()()
{
  v1 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F68, &qword_1939A0FA8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193800B30(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE43F68, &qword_1939A0FA8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE43F68, &qword_1939A0FA8);
  return v15;
}

id static SensitiveContentAnalysisResourcesInteraction.columns.getter()
{
  v213 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_16_3();
  result = OUTLINED_FUNCTION_5_75(v11, 0xE800000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v30);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_41();
  result = OUTLINED_FUNCTION_5_75(v31, v32);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v204);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v50);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v51, v52, v53, v54, v0, 2, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v55 = swift_initStackObject();
  v63 = OUTLINED_FUNCTION_2_4(v55, v56, v57, v58, v59, v60, v61, v62, v205);
  OUTLINED_FUNCTION_5_10(v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v72);
  OUTLINED_FUNCTION_20_50();
  OUTLINED_FUNCTION_18_5();
  result = OUTLINED_FUNCTION_3_5(v73, v74);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v75 = swift_initStackObject();
  v83 = OUTLINED_FUNCTION_2_4(v75, v76, v77, v78, v79, v80, v81, v82, v206);
  OUTLINED_FUNCTION_5_10(v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v92 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v92);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v93, v94, v95, v96, v0, 2, 0);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v97 = swift_initStackObject();
  v105 = OUTLINED_FUNCTION_2_4(v97, v98, v99, v100, v101, v102, v103, v104, v207);
  OUTLINED_FUNCTION_5_10(v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v114 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v114);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_11();
  result = OUTLINED_FUNCTION_5_75(v115, v116);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v208;
  v117 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v126);
  result = OUTLINED_FUNCTION_5_75(0xD000000000000011, 0x8000000193A40550);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v127 = swift_initStackObject();
  v135 = OUTLINED_FUNCTION_2_4(v127, v128, v129, v130, v131, v132, v133, v134, v208);
  OUTLINED_FUNCTION_5_10(v135, v136, v137, v138, v139, v140, v141, v142, v143);
  v144 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v144);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_30_31();
  result = OUTLINED_FUNCTION_5_75(v145, v146);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v147 = swift_initStackObject();
  v155 = OUTLINED_FUNCTION_2_4(v147, v148, v149, v150, v151, v152, v153, v154, v209);
  OUTLINED_FUNCTION_5_10(v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v164 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v164);
  result = OUTLINED_FUNCTION_5_75(0x6E696769726FLL, 0xE600000000000000);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v165 = swift_initStackObject();
  v173 = OUTLINED_FUNCTION_2_4(v165, v166, v167, v168, v169, v170, v171, v172, v210);
  OUTLINED_FUNCTION_5_10(v173, v174, v175, v176, v177, v178, v179, v180, v181);
  v182 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v182);
  result = OUTLINED_FUNCTION_3_5(0x6E6F69676572, 0xE600000000000000);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v211;
  v183 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v183, v184, v185, v186, v187, v188, v189, v190, v191);
  v192 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v192);
  result = OUTLINED_FUNCTION_5_75(0xD000000000000014, 0x8000000193A40570);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v193 = swift_initStackObject();
  v201 = OUTLINED_FUNCTION_2_4(v193, v194, v195, v196, v197, v198, v199, v200, v211);
  *(v201 + 16) = v212;
  *(v201 + 32) = sub_19393C850();
  v202 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v203 = OUTLINED_FUNCTION_16_5();
  result = sub_19343D150(v203 | 0x44497400000000, 0xE700000000000000, 2, 0, v201, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v213;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_193801630(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = a1 == OUTLINED_FUNCTION_16_3() && v6 == 0xE800000000000000;
  if (v7 || (v8 = v6, (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    v9 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1(*(v9 + 28));
    if (v11)
    {
LABEL_7:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_41();
  v13 = a1 == (OUTLINED_FUNCTION_16_5() | 0x7269447400000000) && v8 == v12;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v14 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1(*(v14 + 32));
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v17 = a1 == OUTLINED_FUNCTION_42_1() && v8 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v18 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 36));
    if (v18 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v18 <= 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18_5();
    v20 = a1 == OUTLINED_FUNCTION_20_50() && v8 == v19;
    if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v21 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 40);
LABEL_31:
      if (!*(v2 + v21 + 8))
      {
        goto LABEL_7;
      }

      v46 = *(v2 + v21);
      goto LABEL_9;
    }

    v22 = a1 == 0x736D726168 && v8 == 0xE500000000000000;
    if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v23 = *(v2 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 44));
      if (v23 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_78;
      }

      if (v23 <= 0x7FFFFFFF)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    OUTLINED_FUNCTION_19_11();
    v25 = a1 == OUTLINED_FUNCTION_22_5() && v8 == v24;
    if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v26 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1(*(v26 + 48));
      if (v27)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v3 = 0xD000000000000011;
    v28 = a1 == 0xD000000000000011 && 0x8000000193A40550 == v8;
    if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v29 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1(*(v29 + 52));
      if (v30)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_30_31();
    v32 = a1 == OUTLINED_FUNCTION_31_5() && v8 == v31;
    if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v33 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
      OUTLINED_FUNCTION_58_1(*(v33 + 56));
      if (v34)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v35 = a1 == 0x6E696769726FLL && v8 == 0xE600000000000000;
  if (v35 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v36 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1(*(v36 + 60));
    if (v37)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v38 = a1 == 0x6E6F69676572 && v8 == 0xE600000000000000;
  if (v38 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v21 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 64);
    goto LABEL_31;
  }

LABEL_78:
  v39 = a1 == v3 + 3 && 0x8000000193A40570 == v8;
  if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v40 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    OUTLINED_FUNCTION_58_1(*(v40 + 68));
    if (v41)
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_147(v10);
LABEL_9:
    sub_1934948FC();
    return;
  }

  v42 = a1 == (OUTLINED_FUNCTION_16_5() | 0x44497400000000) && v8 == 0xE700000000000000;
  if (v42 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v21 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 72);
    goto LABEL_31;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v44 = v43;
  *v43 = a1;
  v43[1] = v8;
  v43[5] = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44 + 2);
  sub_193800B30(v2, boxed_opaque_existential_1Tm);
  *(v44 + 48) = 1;
  swift_willThrow();
}

unint64_t sub_193801A74()
{
  result = qword_1EAE43F78;
  if (!qword_1EAE43F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F78);
  }

  return result;
}

unint64_t sub_193801AC8()
{
  result = qword_1EAE43F90;
  if (!qword_1EAE43F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43F90);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = a1 + v2[7];
  j__OUTLINED_FUNCTION_131(v5);
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v11 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v16);
  v15 = a1 + v2[13];
  j__OUTLINED_FUNCTION_131(v15);
  v14 = a1 + v2[14];
  j__OUTLINED_FUNCTION_131(v14);
  v7 = a1 + v2[15];
  j__OUTLINED_FUNCTION_131(v7);
  v13 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v8 = a1 + v2[17];
  j__OUTLINED_FUNCTION_131(v8);
  v12 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1938052A4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v6 = 0;
  *(v6 + 8) = 256;
  sub_193801A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F80, &qword_1939A0FB0);
  sub_1937EFC3C(&qword_1EAE43F88, &qword_1EAE43F80, &qword_1939A0FB0);
  sub_19393C8A0();

  *(a1 + v2[9]) = v17;
  *v11 = 0;
  v11[1] = 0;
  sub_193801AC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F98, &qword_1939A0FB8);
  sub_1937EFC3C(&qword_1EAE43FA0, &qword_1EAE43F98, &qword_1939A0FB8);
  sub_19393C8A0();

  *(a1 + v2[11]) = v17;
  *v16 = 0;
  *(v16 + 8) = 256;
  *v15 = 0;
  *(v15 + 8) = 256;
  *v14 = 0;
  *(v14 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *v13 = 0;
  v13[1] = 0;
  *v8 = 0;
  *(v8 + 8) = 256;
  *v12 = 0;
  v12[1] = 0;
  return result;
}

BOOL static SensitiveContentAnalysisResourcesInteraction.== infix(_:_:)()
{
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_25_3(v0[7]);
  if (v2)
  {
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_193802334();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v0[8]);
  if (v5)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    if (v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_14_9();
    sub_1938022E0();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_23_6(v0[9]);
  sub_193802094();
  if (OUTLINED_FUNCTION_25_4())
  {
    v7 = v0[10];
    OUTLINED_FUNCTION_3();
    if (v10)
    {
      if (!v8)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v9);
      v13 = v13 && v11 == v12;
      if (!v13 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_23_6(v0[11]);
    sub_1938020E8();
    if (OUTLINED_FUNCTION_25_4())
    {
      OUTLINED_FUNCTION_25_3(v0[12]);
      if (v15)
      {
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v16)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_19380228C();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3(v0[13]);
      if (v18)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v19)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_193802238();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3(v0[14]);
      if (v21)
      {
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v22)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_1938021E4();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_25_3(v0[15]);
      if (v24)
      {
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v25)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_193802190();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      v26 = v0[16];
      OUTLINED_FUNCTION_3();
      if (v29)
      {
        if (!v27)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v28);
        v32 = v13 && v30 == v31;
        if (!v32 && (sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }

      OUTLINED_FUNCTION_25_3(v0[17]);
      if (v34)
      {
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        if (v35)
        {
          return 0;
        }

        OUTLINED_FUNCTION_14_9();
        sub_19380213C();
        if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
        {
          return 0;
        }
      }

      v36 = v0[18];
      OUTLINED_FUNCTION_3();
      if (v39)
      {
        if (!v37)
        {
          return 0;
        }

        OUTLINED_FUNCTION_5(v38);
        v42 = v13 && v40 == v41;
        return v42 || (sub_19393CA30() & 1) != 0;
      }

      if (!v37)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_193802094()
{
  result = qword_1EAE43FA8;
  if (!qword_1EAE43FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FA8);
  }

  return result;
}

unint64_t sub_1938020E8()
{
  result = qword_1EAE43FB0;
  if (!qword_1EAE43FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FB0);
  }

  return result;
}

unint64_t sub_19380213C()
{
  result = qword_1EAE43FB8;
  if (!qword_1EAE43FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FB8);
  }

  return result;
}

unint64_t sub_193802190()
{
  result = qword_1EAE43FC0;
  if (!qword_1EAE43FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FC0);
  }

  return result;
}

unint64_t sub_1938021E4()
{
  result = qword_1EAE43FC8;
  if (!qword_1EAE43FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FC8);
  }

  return result;
}

unint64_t sub_193802238()
{
  result = qword_1EAE43FD0;
  if (!qword_1EAE43FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FD0);
  }

  return result;
}

unint64_t sub_19380228C()
{
  result = qword_1EAE43FD8;
  if (!qword_1EAE43FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FD8);
  }

  return result;
}

unint64_t sub_1938022E0()
{
  result = qword_1EAE43FE0;
  if (!qword_1EAE43FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FE0);
  }

  return result;
}

unint64_t sub_193802334()
{
  result = qword_1EAE43FE8;
  if (!qword_1EAE43FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FE8);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.hash(into:)()
{
  v1 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  v2 = v0 + v1[7];
  if (*(v2 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v2);
    sub_1938025D4();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[8]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v3);
    sub_193802628();
    OUTLINED_FUNCTION_133_1();
  }

  MEMORY[0x193B18030](*(v0 + v1[9]));
  v5 = (v0 + v1[10]);
  if (v5[1])
  {
    v6 = *v5;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  MEMORY[0x193B18030](*(v0 + v1[11]));
  OUTLINED_FUNCTION_100(v1[12]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v7);
    sub_19380267C();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[13]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v8);
    sub_1938026D0();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[14]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v9);
    sub_193802724();
    OUTLINED_FUNCTION_133_1();
  }

  OUTLINED_FUNCTION_100(v1[15]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v10);
    sub_193802778();
    OUTLINED_FUNCTION_133_1();
  }

  v11 = (v0 + v1[16]);
  if (v11[1])
  {
    v12 = *v11;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_100(v1[17]);
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v13);
    sub_1938027CC();
    OUTLINED_FUNCTION_133_1();
  }

  v14 = (v0 + v1[18]);
  if (!v14[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v15 = *v14;
  sub_19393CAD0();
  return sub_19393C640();
}

unint64_t sub_1938025D4()
{
  result = qword_1EAE43FF0;
  if (!qword_1EAE43FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FF0);
  }

  return result;
}

unint64_t sub_193802628()
{
  result = qword_1EAE43FF8;
  if (!qword_1EAE43FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43FF8);
  }

  return result;
}

unint64_t sub_19380267C()
{
  result = qword_1EAE44000;
  if (!qword_1EAE44000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44000);
  }

  return result;
}

unint64_t sub_1938026D0()
{
  result = qword_1EAE44008;
  if (!qword_1EAE44008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44008);
  }

  return result;
}

unint64_t sub_193802724()
{
  result = qword_1EAE44010;
  if (!qword_1EAE44010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44010);
  }

  return result;
}

unint64_t sub_193802778()
{
  result = qword_1EAE44018;
  if (!qword_1EAE44018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44018);
  }

  return result;
}

unint64_t sub_1938027CC()
{
  result = qword_1EAE44020;
  if (!qword_1EAE44020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44020);
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.AgeGroup.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x33317265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x746C756441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x33317265646E55;
  }
}

void SensitiveContentAnalysisResourcesInteraction.AgeGroup.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x33317265646E55 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x33317265764FLL && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x746C756441 && v0 == 0xE500000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t SensitiveContentAnalysisResourcesInteraction.EventDirection.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1684956499;
  switch(*v0)
  {
    case 1:
      result = 0x65766965636552;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_0();
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.EventDirection.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1684956499 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x65766965636552 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0xD000000000000016 && 0x8000000193A3FC20 == v0;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_20_0() && v0 == v8)
        {

          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisResourcesInteraction.SubContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t SensitiveContentAnalysisResourcesInteraction.SubContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656B63697453;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_17_3();
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_6();
      break;
    case 3:
      result = 0x6B636142706154;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.SubContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x72656B63697453 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_17_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_18_6() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6B636142706154 && v0 == 0xE700000000000000)
        {

          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisResourcesInteraction.RequestedResource.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static SensitiveContentAnalysisResourcesInteraction.RequestedResource.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44078, &qword_1939A1290);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v28 = OUTLINED_FUNCTION_39(v1);
    v32 = OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE44078, &qword_1939A1290);
    OUTLINED_FUNCTION_17_2(v32);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v33 = OUTLINED_FUNCTION_39(v1);
    v37 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, &qword_1EAE44078, &qword_1939A1290);
    OUTLINED_FUNCTION_17_2(v37);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v38 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v38, v2 + 3, 1, v39, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v40 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v44 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v44, v45, v46, v47, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(v0, &v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v48 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v48, v49, v50, v51, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(v15, &v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v52 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v52, v53, v54, v55, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v56 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v56, v57, v58, v59, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(v21, &v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v60 = OUTLINED_FUNCTION_39(v25);
    v24 = OUTLINED_FUNCTION_85(v60, v61, v62, v63, &qword_1EAE44078, &qword_1939A1290);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.RequestedResource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6F736552776F6853;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_30_32();
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_60();
      break;
    case 3:
      result = OUTLINED_FUNCTION_24_51();
      break;
    case 4:
      result = OUTLINED_FUNCTION_45_5();
      break;
    case 5:
      v2 = 2003789907;
      goto LABEL_10;
    case 6:
      result = OUTLINED_FUNCTION_23_47();
      break;
    case 7:
      v2 = 1701079368;
LABEL_10:
      result = v2 | 0x746E6F4300000000;
      break;
    default:
      return result;
  }

  return result;
}

void SensitiveContentAnalysisResourcesInteraction.RequestedResource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6F736552776F6853 && v0 == 0xED00007365637275;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_30_32() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_12_60() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_24_51() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v4 = 3;
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_45_5() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v4 = 4;
            }

            else
            {
              v14 = v1 == 0x746E6F43776F6853 && v0 == 0xEB00000000746E65;
              if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v4 = 5;
              }

              else
              {
                v16 = v1 == OUTLINED_FUNCTION_23_47() && v0 == v15;
                if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v4 = 6;
                }

                else if (v1 == 0x746E6F4365646948 && v0 == 0xEB00000000746E65)
                {

                  v4 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *sub_193803434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v17 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2(v17);
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v18 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2(v18);
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  v12 = v6 + 3;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v12;
  v13 = &v4[16 * v10];
  *(v13 + 4) = 1;
  v13[40] = 1;
  v14 = *(v4 + 3);
  if ((v6 + 4) > (v14 >> 1))
  {
    v4 = OUTLINED_FUNCTION_51((v14 > 1), v6 + 4, v3, v4);
  }

  *(v4 + 2) = v6 + 4;
  v15 = &v4[16 * v12];
  *(v15 + 4) = 2;
  v15[40] = 1;
  return v4;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 28494;
  if (*v0 != 1)
  {
    v1 = 0x696C707041746F4ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562585;
  }
}

uint64_t SensitiveContentAnalysisResourcesInteraction.Origin.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6C6172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6E65767265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void SensitiveContentAnalysisResourcesInteraction.Origin.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0xD000000000000019 && 0x8000000193A40590 == v0;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x6C6172656E6547 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6E65767265746E49 && v0 == 0xEC0000006E6F6974)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void _s27IntelligencePlatformLibrary44SensitiveContentAnalysisResourcesInteractionV15UserOptedToShowOyAESgSScfC_0()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 7562585 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 28494 && v0 == 0xE200000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x696C707041746F4ELL && v0 == 0xED0000656C626163)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        v4 = 2;
        if ((v1 & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

unint64_t sub_1938038B8()
{
  result = qword_1EAE44028;
  if (!qword_1EAE44028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44028);
  }

  return result;
}

unint64_t sub_193803910()
{
  result = qword_1EAE44030;
  if (!qword_1EAE44030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44030);
  }

  return result;
}

unint64_t sub_193803968()
{
  result = qword_1EAE44038;
  if (!qword_1EAE44038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44038);
  }

  return result;
}

unint64_t sub_1938039C0()
{
  result = qword_1EAE44040;
  if (!qword_1EAE44040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44040);
  }

  return result;
}

unint64_t sub_193803A18()
{
  result = qword_1EAE44048;
  if (!qword_1EAE44048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44048);
  }

  return result;
}

unint64_t sub_193803A70()
{
  result = qword_1EAE44050;
  if (!qword_1EAE44050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44050);
  }

  return result;
}

unint64_t sub_193803AC8()
{
  result = qword_1EAE44058;
  if (!qword_1EAE44058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44058);
  }

  return result;
}

void sub_193803B54()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE300);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v41 = OUTLINED_FUNCTION_156();
  *(v41 + 16) = xmmword_1939526C0;
  v4 = v41 + v0 + dword_1EAEAE338;
  *(v41 + v0) = 1;
  *v4 = "ageGroup";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v41 + v0 + v3);
  *v11 = 2;
  *v10 = "eventDirection";
  v10[1] = 14;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v8)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v41 + v0 + 2 * v3));
  v14 = OUTLINED_FUNCTION_5_4(v13, "contentType");
  (v8)(v14);
  OUTLINED_FUNCTION_44(3 * v3);
  OUTLINED_FUNCTION_34_8(v15);
  *v16 = "clientBundleID";
  v16[1] = 14;
  v17 = OUTLINED_FUNCTION_41(v16);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v41 + v0 + 4 * v3);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_5_4(v18, "harms");
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v3);
  *v22 = 6;
  *v21 = "subContentType";
  v21[1] = 14;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v41 + v0 + 6 * v3);
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_5_4(v24, "requestedResource");
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v3);
  *v28 = 8;
  v29 = OUTLINED_FUNCTION_5_4(v27, "userOptedToShow");
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v41 + v0 + 8 * v3);
  *v31 = 9;
  *v30 = "origin";
  v30[1] = 6;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v3);
  *v34 = 10;
  *v33 = "region";
  v33[1] = 6;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v41 + v0 + 10 * v3);
  *v37 = 11;
  v38 = OUTLINED_FUNCTION_5_4(v36, "reportToAppleVisible");
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v41 + v0 + 11 * v3);
  *v40 = 12;
  *v39 = "eventID";
  *(v39 + 8) = 7;
  *(v39 + 16) = 2;
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193803E74()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v5 + 28));
        goto LABEL_18;
      case 2:
        v10 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v10 + 32));
        goto LABEL_18;
      case 3:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisResourcesInteraction.ContentType.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 36)) = v15;
        continue;
      case 4:
        v8 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 40);
        goto LABEL_11;
      case 5:
        OUTLINED_FUNCTION_113();
        sub_19393C180();
        v2 = 0;
        SensitiveContentAnalysisResourcesInteraction.Harms.init(rawValue:)(0);
        *(v0 + *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 44)) = v15;
        continue;
      case 6:
        v11 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v11 + 48));
        goto LABEL_18;
      case 7:
        v12 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v12 + 52));
        goto LABEL_18;
      case 8:
        v9 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v9 + 56));
        goto LABEL_18;
      case 9:
        v14 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v14 + 60));
        goto LABEL_18;
      case 10:
        v7 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 64);
        goto LABEL_11;
      case 11:
        v13 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
        OUTLINED_FUNCTION_160(*(v13 + 68));
LABEL_18:
        sub_1934982A8();
        goto LABEL_19;
      case 12:
        v6 = *(type metadata accessor for SensitiveContentAnalysisResourcesInteraction() + 72);
LABEL_11:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
LABEL_19:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1938040FC()
{
  v2 = v1;
  v3 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_24_50(v3[7]);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107(v4);
    OUTLINED_FUNCTION_32_6(v40, 1, v6, &type metadata for SensitiveContentAnalysisResourcesInteraction.AgeGroup, v7, &off_1F07F5A88);
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_24_50(v3[8]);
    if ((v9 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v8), OUTLINED_FUNCTION_32_6(v40, 2, v10, &type metadata for SensitiveContentAnalysisResourcesInteraction.EventDirection, v11, &off_1F07F5AB0), !v1))
    {
      v12 = *(v0 + v3[9]);
      v40[0] = v12;
      sub_193801A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F80, &qword_1939A0FB0);
      sub_1937EFC3C(&qword_1EAE43F88, &qword_1EAE43F80, &qword_1939A0FB0);
      sub_19393C8A0();
      sub_193802094();
      if (OUTLINED_FUNCTION_25_40())
      {
        goto LABEL_11;
      }

      if (v12 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v12 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_38_35();
        if (v1)
        {
          return;
        }

LABEL_11:
        v13 = (v0 + v3[10]);
        if (v13[1])
        {
          v14 = *v13;
          OUTLINED_FUNCTION_2_7();
          if (v1)
          {
            return;
          }
        }

        v15 = *(v0 + v3[11]);
        v40[0] = v15;
        sub_193801AC8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43F98, &qword_1939A0FB8);
        sub_1937EFC3C(&qword_1EAE43FA0, &qword_1EAE43F98, &qword_1939A0FB8);
        sub_19393C8A0();
        sub_1938020E8();
        if (OUTLINED_FUNCTION_25_40())
        {
          goto LABEL_17;
        }

        if (v15 >= 0xFFFFFFFF80000000)
        {
          if (v15 <= 0x7FFFFFFF)
          {
            OUTLINED_FUNCTION_38_35();
            if (v1)
            {
              return;
            }

LABEL_17:
            OUTLINED_FUNCTION_24_50(v3[12]);
            if ((v17 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v16), OUTLINED_FUNCTION_32_6(v40, 6, v18, &type metadata for SensitiveContentAnalysisResourcesInteraction.SubContentType, v19, &off_1F07F5AD8), !v1))
            {
              OUTLINED_FUNCTION_24_50(v3[13]);
              if ((v21 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v20), OUTLINED_FUNCTION_32_6(v40, 7, v22, &type metadata for SensitiveContentAnalysisResourcesInteraction.RequestedResource, v23, &off_1F07F5B00), !v1))
              {
                OUTLINED_FUNCTION_24_50(v3[14]);
                if ((v25 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v24), OUTLINED_FUNCTION_32_6(v40, 8, v26, &type metadata for SensitiveContentAnalysisResourcesInteraction.UserOptedToShow, v27, &off_1F07F5B28), !v1))
                {
                  OUTLINED_FUNCTION_24_50(v3[15]);
                  if ((v29 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v28), OUTLINED_FUNCTION_32_6(v40, 9, v30, &type metadata for SensitiveContentAnalysisResourcesInteraction.Origin, v31, &off_1F07F5B50), !v1))
                  {
                    v32 = (v0 + v3[16]);
                    if (!v32[1] || (v33 = *v32, OUTLINED_FUNCTION_2_7(), !v1))
                    {
                      OUTLINED_FUNCTION_24_50(v3[17]);
                      if ((v35 & 1) != 0 || (OUTLINED_FUNCTION_0_107(v34), OUTLINED_FUNCTION_32_6(v40, 11, v36, &type metadata for SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility, v37, &off_1F07F5B78), !v1))
                      {
                        v38 = (v0 + v3[18]);
                        if (v38[1])
                        {
                          v39 = *v38;
                          OUTLINED_FUNCTION_2_7();
                        }
                      }
                    }
                  }
                }
              }
            }

            return;
          }

LABEL_34:
          __break(1u);
          return;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_33;
    }
  }
}

uint64_t sub_1938044DC()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE44098;

  return v0;
}

void sub_193804578()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAE318);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("AgeGroupUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_34_12();
  *v10 = "AgeGroupUnder13";
  v10[1] = 15;
  v11 = OUTLINED_FUNCTION_56_0(v10);
  v8(v11);
  v12 = OUTLINED_FUNCTION_69();
  v13 = OUTLINED_FUNCTION_25(v12, "AgeGroupOver13");
  v8(v13);
  v14 = OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_25(v14, "AgeGroupAdult");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19380471C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAE330);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_19394FBD0);
  OUTLINED_FUNCTION_102("EventDirectionUnknown");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_34_12();
  v12 = OUTLINED_FUNCTION_25(v11, "EventDirectionSend");
  v9(v12);
  v13 = OUTLINED_FUNCTION_69();
  *v13 = "EventDirectionReceive";
  *(v13 + 1) = 21;
  v14 = OUTLINED_FUNCTION_56_0(v13);
  v9(v14);
  v15 = OUTLINED_FUNCTION_1_6();
  v16 = OUTLINED_FUNCTION_25(v15, "EventDirectionUnknownOrNotApplicable");
  v9(v16);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  OUTLINED_FUNCTION_34_8(v17);
  v19 = OUTLINED_FUNCTION_25(v18, "EventDirectionTryingToCall");
  v9(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1938048F0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE348);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v6, xmmword_19394FBD0);
  *v0 = "SubContentTypeUnknown";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_50_1();
  (v10)(v11);
  v12 = OUTLINED_FUNCTION_34_12();
  *v12 = "SubContentTypeSticker";
  v12[1] = 21;
  v13 = OUTLINED_FUNCTION_41(v12);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_5_4(v14, "SubContentTypeBackgroundImage");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_1_6();
  v18 = OUTLINED_FUNCTION_5_4(v17, "SubContentTypeInlineSticker");
  (v10)(v18);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v19);
  *v20 = "SubContentTypeTapBack";
  *(v20 + 8) = 21;
  *(v20 + 16) = 2;
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804ADC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE360);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_193951270;
  v5 = v4 + v0 + dword_1EAEAE398;
  *(v4 + v0) = 0;
  *v5 = "RequestedResourceUnknown";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v12 = 1;
  *v11 = "RequestedResourceShowResources";
  v11[1] = 30;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v9)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v15 = 2;
  *v14 = "RequestedResourceBlockContact";
  v14[1] = 29;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v4 + v0 + 3 * v3));
  *v17 = "RequestedResourceWaysToGetHelp";
  *(v17 + 1) = 30;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v9)(v18);
  OUTLINED_FUNCTION_3_1(v4 + v0 + 4 * v3);
  OUTLINED_FUNCTION_34_8(v19);
  *v20 = "RequestedResourceMessageSomeone";
  v20[1] = 31;
  v21 = OUTLINED_FUNCTION_1_3(v20);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  *v23 = 5;
  *v22 = "RequestedResourceUnsubscribe";
  v22[1] = 28;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = (v4 + v0 + 6 * v3);
  v26 = (v25 + dword_1EAEAE398);
  *v25 = 6;
  *v26 = "RequestedResourceShowContent";
  v26[1] = 28;
  v27 = OUTLINED_FUNCTION_1_3(v26);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v4 + v0 + 7 * v3);
  *v29 = 7;
  *v28 = "RequestedResourceReportToApple";
  v28[1] = 30;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v4 + v0 + 8 * v3);
  *v32 = 8;
  *v31 = "RequestedResourceHideContent";
  *(v31 + 8) = 28;
  *(v31 + 16) = 2;
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804DC0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE378);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("UserOptedToShowUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_34_12();
  v11 = OUTLINED_FUNCTION_25(v10, "UserOptedToShowYes");
  v8(v11);
  v12 = OUTLINED_FUNCTION_69();
  v13 = OUTLINED_FUNCTION_25(v12, "UserOptedToShowNo");
  v8(v13);
  v14 = OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_25(v14, "UserOptedToShowNotApplicable");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193804F60()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAE390);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("OriginUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_34_12();
  v11 = OUTLINED_FUNCTION_25(v10, "OriginAttachedToSpecificContent");
  v8(v11);
  v12 = OUTLINED_FUNCTION_69();
  *v12 = "OriginGeneral";
  *(v12 + 1) = 13;
  v13 = OUTLINED_FUNCTION_56_0(v12);
  v8(v13);
  v14 = OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_25(v14, "OriginIntervention");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193805104()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE3A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_43_2(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("ReportToAppleVisibilityUnknown");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_50_1();
  v8(v9);
  v10 = OUTLINED_FUNCTION_34_12();
  v11 = OUTLINED_FUNCTION_25(v10, "ReportToAppleVisibilityYes");
  v8(v11);
  v12 = OUTLINED_FUNCTION_69();
  v13 = OUTLINED_FUNCTION_25(v12, "ReportToAppleVisibilityNo");
  v8(v13);
  v14 = OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_25(v14, "ReportToAppleVisibilityNotApplicable");
  v8(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for SensitiveContentAnalysisResourcesInteraction()
{
  result = qword_1EAE45DA0;
  if (!qword_1EAE45DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

void SensitiveContentAnalysisResourcesInteraction.ageGroup.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 28));
}

void SensitiveContentAnalysisResourcesInteraction.eventDirection.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 32));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.contentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.contentType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.clientBundleID.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.clientBundleID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.harms.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.harms.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  *(v1 + *(result + 44)) = v2;
  return result;
}

void SensitiveContentAnalysisResourcesInteraction.subContentType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

void SensitiveContentAnalysisResourcesInteraction.requestedResource.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 52));
}

void SensitiveContentAnalysisResourcesInteraction.userOptedToShow.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 56));
}

void SensitiveContentAnalysisResourcesInteraction.origin.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 60));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.region.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 64));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.region.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 64));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void SensitiveContentAnalysisResourcesInteraction.reportToAppleVisible.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_37_0(*(v0 + 68));
}

uint64_t SensitiveContentAnalysisResourcesInteraction.eventID.getter()
{
  v0 = type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 72));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t SensitiveContentAnalysisResourcesInteraction.eventID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_19_57() + 72));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_193805BDC@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.AgeGroup.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193805C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.AgeGroup.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193805C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193805D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193805E64@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.EventDirection.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193805E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.EventDirection.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

IntelligencePlatformLibrary::SensitiveContentAnalysisResourcesInteraction::ContentType sub_193805FB4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SensitiveContentAnalysisResourcesInteraction.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_193805FF4@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193806024@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.SubContentType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.SubContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19380613C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.RequestedResource.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193806164@<X0>(char **a1@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.RequestedResource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193806254@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.UserOptedToShow.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19380636C@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193806394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.Origin.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193806484@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1938064AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static SensitiveContentAnalysisResourcesInteraction.ReportToAppleVisibility.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t SensitiveContentAnalysisResourcesInteraction.hashValue.getter()
{
  sub_19393CAB0();
  SensitiveContentAnalysisResourcesInteraction.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1938065DC()
{
  sub_19393CAB0();
  SensitiveContentAnalysisResourcesInteraction.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193806684()
{
  result = qword_1EAE440C8;
  if (!qword_1EAE440C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440C8);
  }

  return result;
}

unint64_t sub_1938066E4()
{
  result = qword_1EAE440D0;
  if (!qword_1EAE440D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440D0);
  }

  return result;
}

unint64_t sub_193806770()
{
  result = qword_1EAE440E8;
  if (!qword_1EAE440E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440E8);
  }

  return result;
}

unint64_t sub_1938067D0()
{
  result = qword_1EAE440F0;
  if (!qword_1EAE440F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE440F0);
  }

  return result;
}

unint64_t sub_1938068F8()
{
  result = qword_1EAE44138;
  if (!qword_1EAE44138)
  {
    type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44138);
  }

  return result;
}

uint64_t sub_19380697C()
{
  sub_19349D140();
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    OUTLINED_FUNCTION_4_0();
    if (!(!v2 & v1))
    {
      sub_19349D1FC(319, &qword_1EAE3A8C8);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        sub_19349D1FC(319, &qword_1EAE3A8E8);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          sub_19349D1FC(319, &qword_1ED508290);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_19349D1FC(319, &qword_1EAE3A8F0);
            if (v4 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A910);
            if (v5 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8E0);
            if (v6 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8D0);
            if (v7 > 0x3F)
            {
              return v3;
            }

            sub_19349D1FC(319, &qword_1EAE3A8D8);
            if (v8 > 0x3F)
            {
              return v3;
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

  return v0;
}

uint64_t sub_193806C3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5126E8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5126E8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_76 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5126E8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44140, &qword_1939A1EE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework.attribute(_:)(void (*a1)(void))
{
  result = sub_19380704C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193807094(void (*a1)(void))
{
  result = sub_19380704C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1938070C4(uint64_t a1)
{
  result = sub_1938070EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1938070EC()
{
  result = qword_1EAE3A998;
  if (!qword_1EAE3A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A998);
  }

  return result;
}

_BYTE *_s21UnifiedAssetFrameworkOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()()
{
  v1 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  sub_1938073D4(v0, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  sub_193807438();
  v23 = sub_19393C250();
  v25 = v24;
  (*(v4 + 8))(v9, v1);
  sub_19344E6DC(v22, &qword_1EAE44148, &qword_1939A1F68);
  v26 = v23;
  v27 = v25;
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t sub_1938073D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193807438()
{
  result = qword_1EAE44150;
  if (!qword_1EAE44150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE44148, &qword_1939A1F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44150);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  sub_193807438();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_81();
    return sub_193807CD0(v10, a1, v12);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_6();
  v14 = sub_19393C0C0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  if (*sub_193809C8C() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v17 + 16))(v22, v24, v14);
    sub_193450688(a1, a2);
    sub_193807438();
    v25 = v42;
    sub_19393C280();
    if (v25)
    {
      return (*(v17 + 8))(v24, v14);
    }

    else
    {
      (*(v17 + 8))(v24, v14);
      OUTLINED_FUNCTION_2_81();
      v28 = v37;
      sub_193807CD0(v6, v37, v29);
      v30 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE44148, &qword_1939A1F68);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1938073D4(v0, v7);
  sub_1934470C8(v7, v1, v13);
  sub_193807438();
  v14 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE44148, &qword_1939A1F68);
  return v14;
}

int *sub_193807A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v18 || (sub_19393CA30() & 1) != 0)
  {
    v19 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
    sub_19375F0BC(v3 + *(v19 + 28), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE425B0, &qword_193993040);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_193807CD0(v4, v17, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
    sub_193494798(v11, &off_1F07EDD08, a3);
    return sub_19375F18C(v17);
  }

  else
  {
    v21 = a1 == 0xD000000000000026 && 0x8000000193A408D0 == a2;
    if (v21 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      v22 = v3 + result[8];
      if (*(v22 + 26))
      {
        goto LABEL_8;
      }

      v26 = *v22;
      v27 = *(v22 + 8) & 0x1FF;
      v28 = *(v22 + 16);
      v29 = *(v22 + 24) & 0x1FF;
      return sub_193494798(&type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState, &off_1F07F61E8, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v24 = v23;
      *v23 = a1;
      v23[1] = a2;
      v23[5] = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24 + 2);
      sub_1938073D4(v3, boxed_opaque_existential_1Tm);
      *(v24 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_193807CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193807D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x64616F6C6E776F64;
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 9);
  v11 = a1 == 0x64616F6C6E776F64 && a2 == 0xEE00737574617453;
  if (v11 || (v12 = v3[2], v18 = *(v3 + 24), v13 = *(v3 + 25), result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  v14 = a1 == 0xD000000000000012 && 0x8000000193A40900 == a2;
  if (v14 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v13)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState;
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 16) = v8;
  *(v17 + 24) = v9;
  *(v17 + 25) = v10;
  *(v17 + 32) = v12;
  *(v17 + 40) = v18;
  *(v17 + 41) = v13;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193760F9C();
  v6 = a1 + v2[8];
  sub_193761094(v6);
  *a1 = *sub_193809C8C();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE425B0, &qword_193993040);
  v8 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v6 + 26) = 1;
  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B8, &qword_1939930B0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v20 = *(v19 + 28);
  v21 = *(v15 + 56);
  sub_19375F0BC(a1 + v20, v18);
  sub_19375F0BC(a2 + v20, &v18[v21]);
  OUTLINED_FUNCTION_31(v18);
  if (!v22)
  {
    sub_19375F0BC(v18, v13);
    OUTLINED_FUNCTION_31(&v18[v21]);
    if (!v22)
    {
      sub_19375F934(&v18[v21], v9);
      sub_19375FB68(&qword_1EAE42570);
      v24 = sub_19393C550();
      sub_19375F18C(v9);
      sub_19375F18C(v13);
      sub_19344E6DC(v18, &qword_1EAE425B0, &qword_193993040);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_19375F18C(v13);
LABEL_9:
    sub_19344E6DC(v18, &qword_1EAE425B8, &qword_1939930B0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v18[v21]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v18, &qword_1EAE425B0, &qword_193993040);
LABEL_13:
  v25 = *(v19 + 32);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 26);
  v28 = (a2 + v25);
  v29 = *(v28 + 26);
  if (v27)
  {
    if (*(v28 + 26))
    {
      return 1;
    }
  }

  else
  {
    v31 = *v28;
    v30 = v28[1];
    v32 = v28[2];
    v33 = *(v28 + 12);
    v34 = *(v26 + 12);
    v35 = *(v26 + 2);
    v40 = *v26;
    v41 = v35;
    v42 = v34;
    v43 = 0;
    if ((v29 & 1) == 0)
    {
      v36 = v31;
      v37 = v30 & 0x1FF;
      v38 = v32;
      v39 = v33 & 0x1FF;
      sub_19380831C();
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_19380831C()
{
  result = qword_1EAE44158;
  if (!qword_1EAE44158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44158);
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  sub_19375F0BC(v1 + *(v12 + 28), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19375F934(v11, v7);
    sub_19393CAD0();
    sub_19375FB68(&qword_1EAE425C8);
    sub_19393C540();
    sub_19375F18C(v7);
  }

  v13 = (v1 + *(v12 + 32));
  if (*(v13 + 26) == 1)
  {
    return sub_19393CAD0();
  }

  v15 = *(v13 + 12);
  v17 = v13[1];
  v16 = v13[2];
  v18 = *v13;
  v19 = v17 & 0x1FF;
  v20 = v16;
  v21 = v15 & 0x1FF;
  sub_19393CAD0();
  sub_19380854C();
  return sub_19393C540();
}

unint64_t sub_19380854C()
{
  result = qword_1EAE44160;
  if (!qword_1EAE44160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44160);
  }

  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44180, &qword_1939A2088);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v28 = OUTLINED_FUNCTION_39(v1);
    v32 = OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE44180, &qword_1939A2088);
    OUTLINED_FUNCTION_17_2(v32);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v33 = OUTLINED_FUNCTION_39(v1);
    v37 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, &qword_1EAE44180, &qword_1939A2088);
    OUTLINED_FUNCTION_17_2(v37);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v38 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v38, v2 + 3, 1, v39, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v40 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v44 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v44, v45, v46, v47, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(v0, &v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v48 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v48, v49, v50, v51, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(v15, &v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v52 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v52, v53, v54, v55, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v17]);
  v23 = v2 + 8;
  if ((v2 + 8) > (v22 >> 1))
  {
    v56 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v56, v57, v58, v59, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v21 + 2) = v23;
  OUTLINED_FUNCTION_4(v21, &v21[16 * v20]);
  if ((v2 + 9) > (v25 >> 1))
  {
    v60 = OUTLINED_FUNCTION_39(v25);
    v24 = OUTLINED_FUNCTION_85(v60, v61, v62, v63, &qword_1EAE44180, &qword_1939A2088);
  }

  *(v24 + 2) = v2 + 9;
  v26 = &v24[16 * v23];
  *(v26 + 4) = 7;
  v26[40] = 1;
  return v24;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_60();
      result = v5 - 3;
      break;
    case 2:
      OUTLINED_FUNCTION_11_60();
      result = v3 + 1;
      break;
    case 3:
      OUTLINED_FUNCTION_11_60();
      result = v4 - 6;
      break;
    case 4:
      OUTLINED_FUNCTION_11_60();
      result = v2 - 4;
      break;
    case 5:
      OUTLINED_FUNCTION_11_60();
      result = v6 - 9;
      break;
    case 6:
      OUTLINED_FUNCTION_11_60();
      result = v7 - 2;
      break;
    case 7:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD00000000000002BLL;
      break;
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0xD00000000000002BLL && 0x8000000193A40A70 == v1;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0xD000000000000028 && 0x8000000193A40A40 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  v10 = v2 == 0xD00000000000002CLL && 0x8000000193A40A10 == v1;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v11 = v2 == 0xD000000000000025 && 0x8000000193A409E0 == v1;
    if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v7 = 1;
      v6 = 3;
    }

    else
    {
      v12 = v2 == 0xD000000000000027 && 0x8000000193A409B0 == v1;
      if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v7 = 1;
        v6 = 4;
      }

      else
      {
        v13 = v2 == 0xD000000000000022 && 0x8000000193A40980 == v1;
        if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v7 = 1;
          v6 = 5;
        }

        else
        {
          v14 = v2 == 0xD000000000000029 && 0x8000000193A40950 == v1;
          if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v7 = 1;
            v6 = 6;
          }

          else if (v2 == 0xD00000000000002BLL && 0x8000000193A40920 == v1)
          {

            v7 = 1;
            v6 = 7;
          }

          else
          {
            v7 = OUTLINED_FUNCTION_0_9();

            v6 = 7;
            if ((v7 & 1) == 0)
            {
              v6 = 0;
            }
          }
        }
      }
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE44178, &qword_1939A2080);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    v14 = OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE44178, &qword_1939A2080);
    OUTLINED_FUNCTION_17_2(v14);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v19 = OUTLINED_FUNCTION_85(v15, v16, v17, v18, &qword_1EAE44178, &qword_1939A2080);
    OUTLINED_FUNCTION_17_2(v19);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v20, v21, v22, v23, &qword_1EAE44178, &qword_1939A2080);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x7263736275736E55;
  }

  else
  {
    result = 0x6269726373627553;
  }

  *v0;
  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 0x6269726373627553 && v1 == 0xEA00000000006465;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x7263736275736E55 || v1 != 0xEC00000064656269)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193808F20()
{
  result = qword_1EAE44168;
  if (!qword_1EAE44168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44168);
  }

  return result;
}

unint64_t sub_193808F78()
{
  result = qword_1EAE44170;
  if (!qword_1EAE44170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE44170);
  }

  return result;
}

void sub_193808FCC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE3C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("event");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_48(v11, "unifiedAssetFrameworkSubscriptionState");
  (v10)(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19380911C()
{
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v5 = v0 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32);
LABEL_7:
      sub_193498018();
    }

    else if (v2 == 1)
    {
      v4 = *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 28);
      type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
      goto LABEL_7;
    }
  }
}

void sub_193809210()
{
  sub_1938092E4(v0);
  if (!v1)
  {
    v2 = v0 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32);
    if ((*(v2 + 26) & 1) == 0)
    {
      v3 = *v2;
      v4 = *(v2 + 8) & 0x1FF;
      v5 = *(v2 + 16);
      v6 = *(v2 + 24) & 0x1FF;
      sub_193447600();
    }
  }
}

uint64_t sub_1938092E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  sub_19375F0BC(a1 + *(v12 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_193760D5C(v5);
  }

  sub_19375F934(v5, v11);
  sub_193447600();
  return sub_19375F18C(v11);
}

void sub_1938094A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE3D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("downloadStatus");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_48(v11, "subscriptionStatus");
  (v10)(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1938095F0()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2 || v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1938096AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  if ((*(v3 + 9) & 1) == 0)
  {
    v10 = *(v3 + 8);
    v12 = *v3;
    v13 = v10 & 1;
    result = sub_193447324(&v12, 1, a2, &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus, a3, &off_1F07F6258);
  }

  if (!v4 && (v9 & 1) == 0)
  {
    v12 = v7;
    v13 = v8 & 1;
    return sub_193447324(&v12, 2, a2, &type metadata for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus, a3, &off_1F07F6280);
  }

  return result;
}

void sub_1938097E4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAE3F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_193951270;
  v7 = v6 + v5 + MEMORY[0x1EAEAE428];
  *(v6 + v5) = 0;
  *v7 = "DownloadStatusUnknown";
  *(v7 + 8) = 21;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  *v13 = 1;
  *v12 = "UAFSubscriptionDownloadStatusNotDownloading";
  *(v12 + 8) = 43;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_0_0(v14, "UAFSubscriptionDownloadStatusDownloading");
  (v11)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_0_0(v17, "UAFSubscriptionDownloadStatusDownloadStalled");
  (v11)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v6 + v5 + 4 * v3);
  *v21 = 4;
  v22 = OUTLINED_FUNCTION_0_0(v20, "UAFSubscriptionDownloadStatusComplete");
  (v11)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v6 + v5 + 5 * v3);
  *v24 = 5;
  v25 = OUTLINED_FUNCTION_0_0(v23, "UAFSubscriptionDownloadStatusOutOfSpace");
  (v11)(v25);
  v26 = (v6 + v5 + 6 * v3);
  v27 = v26 + MEMORY[0x1EAEAE428];
  *v26 = 6;
  v28 = OUTLINED_FUNCTION_0_0(v27, "UAFSubscriptionDownloadStatusError");
  (v11)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v6 + v5 + 7 * v3);
  *v30 = 7;
  v31 = OUTLINED_FUNCTION_0_0(v29, "UAFSubscriptionDownloadStatusNetworkError");
  (v11)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v6 + v5 + 8 * v3);
  *v33 = 8;
  *v32 = "UAFSubscriptionDownloadStatusDowngradeError";
  *(v32 + 8) = 43;
  *(v32 + 16) = 2;
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193809ADC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAE408);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SubscriptionStatusUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = 1;
  *v11 = "Subscribed";
  *(v11 + 8) = 10;
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_48(v13, "Unsubscribed");
  (v10)(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog()
{
  result = qword_1EAE46350;
  if (!qword_1EAE46350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  return sub_1934488AC(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

__n128 AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32));
  v3 = v2[1].n128_u64[0];
  v4 = v2[1].n128_u16[4];
  v5 = v2[1].n128_u8[10];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u64[0] = v3;
  v0[1].n128_u16[4] = v4;
  v0[1].n128_u8[10] = v5;
  return result;
}

__n128 AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = a1[1].n128_u8[10];
  v5 = (v1 + *(type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog() + 32));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u16[4] = v3;
  v5[1].n128_u8[10] = v4;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

void AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t sub_19380A0C8@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380A0F0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19380A14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19380A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19380A348@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19380A370@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 9);
  v6 = a2[2];
  v7 = *(a2 + 24);
  v8 = *(a2 + 25);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v14 = *a1;
    v15 = a1[1] & 1;
    v12 = *a2;
    v13 = a2[1] & 1;
    v9 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    if (v9 != AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter())
    {
      return 0;
    }

LABEL_6:
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      v10 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
      if (v10 != AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter())
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 9))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  if (*(v0 + 9) == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
LABEL_3:
      sub_19393CAD0();
      v4 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
      return MEMORY[0x193B18030](v4);
    }
  }

  else
  {
    v6 = *(v0 + 8);
    v7 = *v0;
    sub_19393CAD0();
    v8 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v8);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.hashValue.getter()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v3 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_19380A6D8()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v3 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus.rawValue.getter();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingUnifiedAssetFrameworkLog.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19380A7DC()
{
  sub_19393CAB0();
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19380A84C()
{
  result = qword_1EAE441B8;
  if (!qword_1EAE441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441B8);
  }

  return result;
}

unint64_t sub_19380A8D4()
{
  result = qword_1EAE441D0;
  if (!qword_1EAE441D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441D0);
  }

  return result;
}

unint64_t sub_19380A930()
{
  result = qword_1EAE441D8;
  if (!qword_1EAE441D8)
  {
    type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE441D8);
  }

  return result;
}

void sub_19380A9B4()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_19380AAB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19380AAB0()
{
  if (!qword_1EAE3A9A0)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAE3A9A0);
    }
  }
}

uint64_t CCAssistantSchemaTypeDecode(uint64_t result)
{
  if (result >= 0x2F)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCAssistantSchemaTypeAsString(uint64_t a1)
{
  if (a1 >= 0x2F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E6B68[a1];
  }

  return v2;
}

_BYTE *CCAssistantSchemaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCAssistantSchemaTypeFromString_sortedStrings, 0x2EuLL, 8uLL, &__block_literal_global);
  if (result)
  {
    return *(&CCAssistantSchemaTypeFromString_sortedEnums + (((result - CCAssistantSchemaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeDeviceTypeDecode(uint64_t result)
{
  if (result >= 0x2E)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7430[a1];
  }

  return v2;
}

_BYTE *CCHomeEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeEntityTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_3434);
  if (result)
  {
    return *(&CCHomeEntityTypeFromString_sortedEnums + (((result - CCHomeEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeEntityTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 0x2E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7478[a1];
  }

  return v2;
}

_BYTE *CCHomeDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeDeviceTypeFromString_sortedStrings, 0x2DuLL, 8uLL, &__block_literal_global_165);
  if (result)
  {
    return *(&CCHomeDeviceTypeFromString_sortedEnums + (((result - CCHomeDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCMediaEntityTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCMediaEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7748[a1];
  }

  return v2;
}

_BYTE *CCMediaEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCMediaEntityTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_3867);
  if (result)
  {
    return *(&CCMediaEntityTypeFromString_sortedEnums + (((result - CCMediaEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCPhotosPetTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCPhotosPetTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7898[a1];
  }

  return v2;
}

_BYTE *CCPhotosPetTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCPhotosPetTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_3976);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCPhotosPetTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCRadioStationSignalTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCRadioStationSignalTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7928[a1];
  }

  return v2;
}

_BYTE *CCRadioStationSignalTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCRadioStationSignalTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_4229);
  if (result)
  {
    return *(&CCRadioStationSignalTypeFromString_sortedEnums + (((result - CCRadioStationSignalTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSignificantLocationSubPremiseTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCSignificantLocationSubPremiseTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E79B8[a1];
  }

  return v2;
}

_BYTE *CCSignificantLocationSubPremiseTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCSignificantLocationSubPremiseTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_4466);
  if (result)
  {
    return *(&CCSignificantLocationSubPremiseTypeFromString_sortedEnums + (((result - CCSignificantLocationSubPremiseTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSiriCompanionContextAudioSubscriptionStatusDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCSiriCompanionContextAudioSubscriptionStatusAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7C30[a1];
  }

  return v2;
}

_BYTE *CCSiriCompanionContextAudioSubscriptionStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_5431);
  if (result)
  {
    return *(&CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedEnums + (((result - CCSiriCompanionContextAudioSubscriptionStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCSiriCompanionContextAudioMediaCategoryAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7C50[a1];
  }

  return v2;
}

_BYTE *CCSiriCompanionContextAudioMediaCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, CCSiriCompanionContextAudioMediaCategoryFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_30);
  if (result)
  {
    return *(&CCSiriCompanionContextAudioMediaCategoryFromString_sortedEnums + (((result - CCSiriCompanionContextAudioMediaCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCSiriCompanionContextAudioMediaCategoryDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCHomeServiceAreaTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7D28[a1];
  }

  return v2;
}

_BYTE *CCHomeServiceAreaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCHomeServiceAreaTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_5812);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCHomeServiceAreaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCHomeServiceAreaTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCAppIntentsExtractedEntityTypeAsString(uint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E7E30[a1];
  }

  return v2;
}

_BYTE *CCAppIntentsExtractedEntityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCAppIntentsExtractedEntityTypeFromString_sortedStrings, 0xCuLL, 8uLL, &__block_literal_global_6333);
  if (result)
  {
    return *(&CCAppIntentsExtractedEntityTypeFromString_sortedEnums + (((result - CCAppIntentsExtractedEntityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCAppIntentsExtractedEntityTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceOrderEmailShippingInformationStatusDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletExtractedOrderContentExtractedEmailOrderContentTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletPaymentsCommerceOrderEmailEmailTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCWalletExtractedOrderContentOrderStatusDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8560[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_6718);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedEnums + (((result - CCWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletPaymentsCommerceOrderEmailShippingInformationStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8560[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_33);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedEnums + (((result - CCWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletPaymentsCommerceOrderEmailEmailTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E85B0[a1];
  }

  return v2;
}

_BYTE *CCWalletPaymentsCommerceOrderEmailEmailTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_59);
  if (result)
  {
    return *(&CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedEnums + (((result - CCWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletExtractedOrderContentExtractedEmailOrderContentTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E85F8[a1];
  }

  return v2;
}

_BYTE *CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_67);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCWalletExtractedOrderContentExtractedEmailOrderContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCWalletExtractedOrderContentOrderStatusAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8610[a1];
  }

  return v2;
}

_BYTE *CCWalletExtractedOrderContentOrderStatusFromString(const void *a1)
{
  result = bsearch_b(a1, CCWalletExtractedOrderContentOrderStatusFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_72);
  if (result)
  {
    return *(&CCWalletExtractedOrderContentOrderStatusFromString_sortedEnums + (((result - CCWalletExtractedOrderContentOrderStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextDateExpressibleAsDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRestrictionContextPersonReachableAsDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolCompoundPredicateOperatorTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolQuerySortOrderDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierDecode(uint64_t result)
{
  if (result >= 0x1C)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeDecode(uint64_t result)
{
  if (result >= 0x17)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypedValuePrimitiveValueDecimalSignDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolContainerDefinitionOriginDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolContainerDefinitionTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimePlatformDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolRuntimeRequirementDeviceStateDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolTypeDefinitionVersion1EnumerationKindDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolCoercionDefinitionCoercionDirectionDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyleDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1FlagDecode(uint64_t result)
{
  if ((result - 4) > 0x3C || ((1 << (result - 4)) & 0x1000000010001011) == 0)
  {
    if (result == 128)
    {
      v1 = 128;
    }

    else
    {
      v1 = 0;
    }

    if (result >= 3)
    {
      return v1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t CCToolKitToolAppDefinitionOriginDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1AuthenticationPolicyDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolDefinitionVersion1ToolTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolInvocationOptionsInterfaceIdiomDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t CCToolKitToolToolInvocationOptionsInteractionModeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolNullValueAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolRuntimePlatformAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8F10[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRuntimePlatformFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRuntimePlatformFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_30_7059);
  if (result)
  {
    return *(&CCToolKitToolRuntimePlatformFromString_sortedEnums + (((result - CCToolKitToolRuntimePlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeAsString(uint64_t a1)
{
  if (a1 >= 0x17)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E8F58[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedStrings, 0x16uLL, 8uLL, &__block_literal_global_98);
  if (result)
  {
    return *(&CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedEnums + (((result - CCToolKitToolTypeIdentifierPrimitiveMeasurementUnitTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypeDefinitionVersion1EntityRuntimeFlagsAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"TransientAppEntity";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t CCToolKitToolTypeDefinitionVersion1EntityRuntimeFlagsDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolTypeDefinitionVersion1EnumerationKindAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9010[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_114);
  if (result)
  {
    return *(&CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedEnums + (((result - CCToolKitToolTypeDefinitionVersion1EnumerationKindFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueDecimalSignAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9030[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_122);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueDecimalSignFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9048[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_148);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePaymentMethodTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9090[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_156);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePlacemarkTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E90A8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_164);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValuePersonHandleTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierAsString(uint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E90C0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedStrings, 0x1BuLL, 8uLL, &__block_literal_global_247);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendarIdentifierFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91A0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_261);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionTypeFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarMatchingPolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91C8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_269);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleCalendarRepeatedTimePolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E91E0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_292);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleLocaleWeekdayFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9220[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_312);
  if (result)
  {
    return *(&CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedEnums + (((result - CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleFrequencyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9258[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_320);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithAutocorrectionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9270[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_352);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithKeyboardTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E92D0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_363);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextTextTypedWithCapitalizationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextPersonReachableAsAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E92F0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextPersonReachableAsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_374);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextPersonReachableAsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRestrictionContextDateExpressibleAsAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9318[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRestrictionContextDateExpressibleAsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_385);
  if (result)
  {
    return *(&CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedEnums + (((result - CCToolKitToolRestrictionContextDateExpressibleAsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolCompoundPredicateOperatorTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9338[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolCompoundPredicateOperatorTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolCompoundPredicateOperatorTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_393);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolCompoundPredicateOperatorTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolQuerySortOrderAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9350[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolQuerySortOrderFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolQuerySortOrderFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_401);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolQuerySortOrderFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9368[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_424);
  if (result)
  {
    return *(&CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedEnums + (((result - CCToolKitToolRuntimeRequirementDeviceCapabilityDeviceCapabilityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolRuntimeRequirementDeviceStateAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Unlocked";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E93A8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_437);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolToolDefinitionVersion1ParameterParameterFlagsDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIconStyleAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Tinted";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolToolDefinitionVersion1ToolTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E93C0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1ToolTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_456);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1ToolTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolDefinitionVersion1FlagAsString(uint64_t a1)
{
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"IsDiscontinued";

        return v2;
      }

      if (a1 == 4)
      {
        v2 = @"IsUndiscoverable";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"Unknown";

        return v2;
      }

      if (a1 == 1)
      {
        v2 = @"OpensAppWhenRun";

        return v2;
      }
    }

LABEL_40:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 <= 31)
  {
    if (a1 == 8)
    {
      v2 = @"DoesNotImplementPerform";

      return v2;
    }

    if (a1 == 16)
    {
      v2 = @"ShowsOpenWhenRun";

      return v2;
    }

    goto LABEL_40;
  }

  switch(a1)
  {
    case 0x20:
      v2 = @"OutputHasSnippet";

      break;
    case 0x40:
      v2 = @"OutputProvidesDialog";

      break;
    case 0x80:
      v2 = @"IsHomeResidentCompatible";

      return v2;
    default:
      goto LABEL_40;
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1FlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1FlagFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_482);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1FlagFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1FlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolDefinitionVersion1VisibilityFlagAsString(uint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    v2 = off_1E73E93E8[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_493);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1VisibilityFlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolToolDefinitionVersion1VisibilityFlagDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1939A29F4[a1];
  }
}

__CFString *CCToolKitToolToolDefinitionVersion1AuthenticationPolicyAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9410[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_504);
  if (result)
  {
    return *(&CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedEnums + (((result - CCToolKitToolToolDefinitionVersion1AuthenticationPolicyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolAppDefinitionOriginAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9430[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolAppDefinitionOriginFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolAppDefinitionOriginFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_512);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolAppDefinitionOriginFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolContainerDefinitionOriginAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9430[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolContainerDefinitionOriginFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolContainerDefinitionOriginFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_514);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionOriginFromString_sortedEnums + (((result - CCToolKitToolContainerDefinitionOriginFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolContainerDefinitionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9448[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolContainerDefinitionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolContainerDefinitionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_528);
  if (result)
  {
    return *(&CCToolKitToolContainerDefinitionTypeFromString_sortedEnums + (((result - CCToolKitToolContainerDefinitionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E9470[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_536);
  if (result)
  {
    return *(&CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedEnums + (((result - CCToolKitToolDisplayRepresentationDisplayValueDisplayValueEnumFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolCoercionDefinitionCoercionDirectionAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Export";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *CCToolKitToolTriggerDefinitionVersion1FlagAsString(uint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    v2 = off_1E73E9488[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *CCToolKitToolTriggerDefinitionVersion1FlagFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_552);
  if (result)
  {
    return *(&CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedEnums + (((result - CCToolKitToolTriggerDefinitionVersion1FlagFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t CCToolKitToolTriggerDefinitionVersion1FlagDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1939A29F4[a1];
  }
}

__CFString *CCToolKitToolToolInvocationOptionsInteractionModeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E94B0[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolInvocationOptionsInteractionModeFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_566);
  if (result)
  {
    return *(&CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedEnums + (((result - CCToolKitToolToolInvocationOptionsInteractionModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *CCToolKitToolToolInvocationOptionsInterfaceIdiomAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E73E94D8[a1];
  }

  return v2;
}

_BYTE *CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString(const void *a1)
{
  result = bsearch_b(a1, CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_583);
  if (result)
  {
    return *(&CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedEnums + (((result - CCToolKitToolToolInvocationOptionsInterfaceIdiomFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}