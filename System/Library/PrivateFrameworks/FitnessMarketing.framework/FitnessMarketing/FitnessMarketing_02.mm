uint64_t sub_20C605284(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_20C6052D4(uint64_t a1)
{
  sub_20C605430();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    sub_20C64D010();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      type metadata accessor for MarketingActionItem();
      type metadata accessor for MarketingOffer();
      swift_getFunctionTypeMetadata();
      sub_20C64D010();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C605430()
{
  if (!qword_281105B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB8, qword_20C653458);
    sub_20C5E5558(&qword_2811057D0, &qword_27C7CECB8, qword_20C653458);
    v0 = sub_20C64D230();
    if (!v1)
    {
      atomic_store(v0, &qword_281105B28);
    }
  }
}

uint64_t sub_20C6054D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingOffer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C605568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C6055D8()
{
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v2 = type metadata accessor for MarketingButton();
  return sub_20C5FFA94(v2);
}

uint64_t sub_20C60562C@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v31[1] = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECD0, &qword_20C653510);
  v31[0] = *(v32 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v32);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECD8, &qword_20C653518);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECA8, &qword_20C6533D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v31 - v18;
  a2(v17);
  if (a1)
  {
    v37 = a3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    v21 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
    v33 = v20;
    v34 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v23 = sub_20C602C6C();
    sub_20C64DA40();
    (*(v15 + 8))(v19, v14);
    v24 = v31[0];
    v25 = v32;
    (*(v31[0] + 16))(v13, v9, v32);
    swift_storeEnumTagMultiPayload();
    v33 = v14;
    v34 = &type metadata for MarketingPlainButtonStyle;
    v35 = OpaqueTypeConformance2;
    v36 = v23;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v24 + 8))(v9, v25);
  }

  else
  {
    (*(v15 + 16))(v13, v19, v14);
    swift_storeEnumTagMultiPayload();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    v28 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
    v33 = v27;
    v34 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = sub_20C602C6C();
    v33 = v14;
    v34 = &type metadata for MarketingPlainButtonStyle;
    v35 = v29;
    v36 = v30;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_20C605A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC98, &qword_20C6533C8) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC88, &qword_20C653700) + 28);
  sub_20C64D350();
  *v4 = swift_getKeyPath();

  return sub_20C5D63B8(a1, a2);
}

uint64_t sub_20C605AD0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_20C606458, v5);
}

uint64_t sub_20C605B68(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_20C605F40;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_20C605C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingOffer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C605C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v15 = v3[4];
  v16 = v3[5];
  v9 = *(type metadata accessor for MarketingButton() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for MarketingOffer() - 8);
  v13 = v3 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_20C604868(a1, a2, v13, v8, a3);
}

uint64_t sub_20C605DC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingActionItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C605E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v10 = a3;
  v9 = a5;
  return v6(a1, a2, &v10, a4, &v9);
}

uint64_t sub_20C605E7C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for MarketingButton() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_20C60037C(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_20C605F30(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return sub_20C605B68(a1, a2, *(v2 + 48));
}

uint64_t sub_20C605F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  return sub_20C601074(a1);
}

uint64_t sub_20C605FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_20C601D60(a1);
}

uint64_t objectdestroy_6Tm()
{
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = *(v0 + 40);
  v1 = (type metadata accessor for MarketingButton() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_20C5E3044();
  v7 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  v8 = sub_20C64D010();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v1[17];
  type metadata accessor for MarketingActionItem();
  type metadata accessor for MarketingOffer();
  swift_getFunctionTypeMetadata();
  v10 = sub_20C64D010();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  return swift_deallocObject();
}

uint64_t sub_20C606210(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for MarketingButton() - 8);
  return sub_20C600888(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_20C6062DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_20C64DCF0();
}

uint64_t sub_20C6063A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C606418(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  return v6(a1, a2, *a3, a4, *a5);
}

uint64_t sub_20C606448(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_20C605AD0(a1, *(v1 + 48));
}

uint64_t getEnumTagSinglePayload for MarketingRoundButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingRoundButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20C60651C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v112 = a4;
  v113 = a3;
  LODWORD(v119) = a2;
  v120 = a1;
  v118 = a5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDF8, &qword_20C6537B8);
  v5 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v100 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDF0, &qword_20C6537B0);
  v7 = *(*(v117 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v117);
  v104 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v100 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE08, &qword_20C653828);
  v12 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v100 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE10, &qword_20C653830);
  v14 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v16 = &v100 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED90, &qword_20C653748);
  v17 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v110 = &v100 - v18;
  v111 = sub_20C64D880();
  v19 = *(v111 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v111);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v100 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC8, &unk_20C653780);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v100 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDB0, &qword_20C653768);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v100 - v33;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDA8, &qword_20C653760);
  v35 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v107 = &v100 - v36;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDA0, &qword_20C653758);
  v37 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v108 = &v100 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED98, &qword_20C653750);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v42 = MEMORY[0x28223BE20](v41);
  if (v119 >= 2u)
  {
    v84 = v103;
    v85 = v102;
    if (v119 == 3)
    {
      sub_20C64D720();
      KeyPath = swift_getKeyPath();
      v87 = (v85 + *(v27 + 36));
      *v87 = KeyPath;
      v87[1] = 0x3FE6666666666666;
      v88 = swift_getKeyPath();
      v89 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE00, &qword_20C6537C0) + 36);
      *v89 = v88;
      *(v89 + 8) = 1;
      *(v89 + 16) = 0;
      sub_20C64D800();
      sub_20C64D830();
      sub_20C64D870();

      v90 = v111;
      (*(v19 + 104))(v22, *MEMORY[0x277CE0A10], v111);
      v91 = sub_20C64D8A0();

      (*(v19 + 8))(v22, v90);
      v92 = swift_getKeyPath();
      v93 = (v85 + *(v84 + 36));
      *v93 = v92;
      v93[1] = v91;
      sub_20C64DE00();
      v94 = v11;
      v95 = v104;
      sub_20C64D330();
      sub_20C5E5658(v85, v95, &qword_27C7CEDF8, &qword_20C6537B8);
      v96 = (v95 + *(v117 + 36));
      v97 = v126;
      v96[4] = v125;
      v96[5] = v97;
      v96[6] = v127;
      v98 = v122;
      *v96 = v121;
      v96[1] = v98;
      v99 = v124;
      v96[2] = v123;
      v96[3] = v99;
      sub_20C5E5658(v95, v94, &qword_27C7CEDF0, &qword_20C6537B0);
      sub_20C60986C(v94, v116);
      swift_storeEnumTagMultiPayload();
      sub_20C608E80(&qword_281105900, &qword_27C7CED90, &qword_20C653748, sub_20C608F04);
      sub_20C609454();
      sub_20C64D550();
      return sub_20C5DBFC4(v94, &qword_27C7CEDF0, &qword_20C6537B0);
    }
  }

  else
  {
    v101 = v31;
    v102 = v44;
    v103 = v42;
    v104 = &v100 - v43;
    v119 = v16;
    sub_20C64D720();
    v45 = swift_getKeyPath();
    v46 = &v30[*(v27 + 36)];
    *v46 = v45;
    v46[1] = 0x3FE6666666666666;
    v47 = *MEMORY[0x277CDFA10];
    v48 = sub_20C64D2B0();
    (*(*(v48 - 8) + 104))(v26, v47, v48);
    sub_20C6098DC(&qword_281105B08, MEMORY[0x277CDFA28]);
    if (sub_20C64E010())
    {
      sub_20C60936C();
      sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
      sub_20C64DAB0();
      sub_20C5DBFC4(v26, &qword_27C7CE290, &unk_20C655580);
      sub_20C5DBFC4(v30, &qword_27C7CEDC8, &unk_20C653780);
      sub_20C64D800();
      sub_20C64D840();
      sub_20C64D870();

      v49 = v111;
      (*(v19 + 104))(v22, *MEMORY[0x277CE0A10], v111);
      v50 = sub_20C64D8A0();

      (*(v19 + 8))(v22, v49);
      v51 = swift_getKeyPath();
      v52 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC0, &unk_20C655570) + 36)];
      *v52 = v51;
      v52[1] = v50;
      v53 = swift_getKeyPath();
      v54 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDB8, &unk_20C653770) + 36)];
      *v54 = v53;
      *(v54 + 1) = 2;
      v54[16] = 0;
      *&v34[*(v101 + 36)] = sub_20C64DBF0();
      sub_20C64DE00();
      sub_20C64D330();
      v55 = v107;
      sub_20C5E5658(v34, v107, &qword_27C7CEDB0, &qword_20C653768);
      v56 = (v55 + *(v105 + 36));
      v57 = v126;
      v56[4] = v125;
      v56[5] = v57;
      v56[6] = v127;
      v58 = v122;
      *v56 = v121;
      v56[1] = v58;
      v59 = v124;
      v56[2] = v123;
      v56[3] = v59;
      LOBYTE(v53) = sub_20C64D7E0();
      sub_20C64D1A0();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v68 = v55;
      v69 = v108;
      sub_20C5E5658(v68, v108, &qword_27C7CEDA8, &qword_20C653760);
      v70 = v69 + *(v106 + 36);
      *v70 = v53;
      *(v70 + 8) = v61;
      *(v70 + 16) = v63;
      *(v70 + 24) = v65;
      *(v70 + 32) = v67;
      *(v70 + 40) = 0;
      LOBYTE(v53) = sub_20C64D790();
      sub_20C64D1A0();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v79 = v102;
      sub_20C5E5658(v69, v102, &qword_27C7CEDA0, &qword_20C653758);
      v80 = v79 + *(v103 + 36);
      *v80 = v53;
      *(v80 + 8) = v72;
      *(v80 + 16) = v74;
      *(v80 + 24) = v76;
      *(v80 + 32) = v78;
      *(v80 + 40) = 0;
      v81 = v104;
      sub_20C5E5658(v79, v104, &qword_27C7CED98, &qword_20C653750);
      sub_20C5E574C(v81, v119, &qword_27C7CED98, &qword_20C653750);
      swift_storeEnumTagMultiPayload();
      sub_20C608F04();
      v82 = v110;
      sub_20C64D550();
      sub_20C5E574C(v82, v116, &qword_27C7CED90, &qword_20C653748);
      swift_storeEnumTagMultiPayload();
      sub_20C608E80(&qword_281105900, &qword_27C7CED90, &qword_20C653748, sub_20C608F04);
      sub_20C609454();
      sub_20C64D550();
      sub_20C5DBFC4(v82, &qword_27C7CED90, &qword_20C653748);
      return sub_20C5DBFC4(v81, &qword_27C7CED98, &qword_20C653750);
    }

    __break(1u);
  }

  result = sub_20C64E2B0();
  __break(1u);
  return result;
}

uint64_t sub_20C60730C@<X0>(unsigned __int8 a1@<W0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v117 = a3;
  v114 = a2;
  v94 = sub_20C64D490();
  v95 = *(v94 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED70, &qword_20C653720);
  v98 = *(v100 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v93 = &v92 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED68, &qword_20C653718);
  v10 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v99 = &v92 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED60, &qword_20C653710);
  v12 = *(*(v120 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v120);
  v97 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v92 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED78, &qword_20C653728);
  v17 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v92 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED80, &unk_20C653730);
  v19 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v92 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED20, &qword_20C6536C8);
  v21 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v113 = &v92 - v22;
  v110 = sub_20C64D640();
  v106 = *(v110 - 8);
  v23 = *(v106 + 64);
  MEMORY[0x28223BE20](v110);
  v105 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C64D740();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF8, &qword_20C6535C0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED50, &qword_20C6536F8);
  v116 = *(v31 - 8);
  v32 = *(v116 + 64);
  MEMORY[0x28223BE20](v31);
  v115 = &v92 - v33;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED40, &qword_20C6536E8);
  v103 = *(v104 - 8);
  v34 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v35;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED38, &qword_20C6536E0);
  v36 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v108 = &v92 - v37;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED30, &qword_20C6536D8);
  v38 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v109 = &v92 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED28, &qword_20C6536D0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v121 = a4;
  if (a1 < 2u)
  {
    v46 = v117;
    v100 = &v92 - v44;
    v99 = v43;
    v98 = v45;
    sub_20C64D710();
    (*(v26 + 16))(&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v25);
    v47 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v48 = swift_allocObject();
    v49 = (*(v26 + 32))(v48 + v47, v28, v25);
    MEMORY[0x28223BE20](v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED88, &qword_20C653740);
    sub_20C608DC8();
    v50 = v115;
    sub_20C64DD30();
    v51 = v105;
    sub_20C64D630();
    v52 = sub_20C5E5558(&qword_281105848, &qword_27C7CED50, &qword_20C6536F8);
    v53 = sub_20C6098DC(&qword_2811058D0, MEMORY[0x277CDE400]);
    v54 = v102;
    v55 = v31;
    v56 = v110;
    sub_20C64DA40();
    (*(v106 + 8))(v51, v56);
    (*(v116 + 8))(v50, v55);
    sub_20C64DDC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED48, &qword_20C6536F0);
    *&v123 = v55;
    *(&v123 + 1) = v56;
    *&v124 = v52;
    *(&v124 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_20C608A74();
    v57 = v108;
    v58 = v104;
    sub_20C64DBC0();
    (*(v103 + 8))(v54, v58);
    v59 = (v57 + *(v101 + 36));
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED58, &qword_20C653708) + 28);
    v61 = *MEMORY[0x277CDF440];
    v62 = sub_20C64D200();
    (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
    *v59 = swift_getKeyPath();
    sub_20C64DE00();
    sub_20C64D330();
    v63 = v109;
    sub_20C5E5658(v57, v109, &qword_27C7CED38, &qword_20C6536E0);
    v64 = (v63 + *(v107 + 36));
    v65 = v128;
    v64[4] = v127;
    v64[5] = v65;
    v64[6] = v129;
    v66 = v124;
    *v64 = v123;
    v64[1] = v66;
    v67 = v126;
    v64[2] = v125;
    v64[3] = v67;
    v68 = v63;
    v69 = v98;
    sub_20C5E5658(v68, v98, &qword_27C7CED30, &qword_20C6536D8);
    *(v69 + *(v99 + 9)) = 256;
    v70 = v69;
    v71 = &qword_27C7CED28;
    v72 = &qword_20C6536D0;
    v73 = v100;
    sub_20C5E5658(v70, v100, &qword_27C7CED28, &qword_20C6536D0);
    sub_20C5E574C(v73, v112, &qword_27C7CED28, &qword_20C6536D0);
    swift_storeEnumTagMultiPayload();
    sub_20C608768();
    v74 = v113;
    sub_20C64D550();
    sub_20C5E574C(v74, v119, &qword_27C7CED20, &qword_20C6536C8);
    swift_storeEnumTagMultiPayload();
    sub_20C608E80(&qword_281105908, &qword_27C7CED20, &qword_20C6536C8, sub_20C608768);
    sub_20C608BEC();
    sub_20C64D550();
    sub_20C5DBFC4(v74, &qword_27C7CED20, &qword_20C6536C8);
    v75 = v73;
    return sub_20C5DBFC4(v75, v71, v72);
  }

  v76 = v117;
  v113 = v16;
  if (a1 == 3)
  {
    sub_20C64D710();
    (*(v26 + 16))(&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v25);
    v77 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v78 = swift_allocObject();
    v79 = (*(v26 + 32))(v78 + v77, v28, v25);
    MEMORY[0x28223BE20](v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED88, &qword_20C653740);
    sub_20C608DC8();
    v80 = v115;
    sub_20C64DD30();
    v81 = v92;
    sub_20C64D480();
    sub_20C5E5558(&qword_281105848, &qword_27C7CED50, &qword_20C6536F8);
    sub_20C6098DC(&qword_281105998, MEMORY[0x277CDDE40]);
    v82 = v93;
    v83 = v94;
    sub_20C64DA40();
    (*(v95 + 8))(v81, v83);
    (*(v116 + 8))(v80, v31);
    sub_20C64DE00();
    sub_20C64D330();
    v84 = v99;
    (*(v98 + 32))(v99, v82, v100);
    v85 = (v84 + *(v96 + 36));
    v86 = v128;
    v85[4] = v127;
    v85[5] = v86;
    v85[6] = v129;
    v87 = v124;
    *v85 = v123;
    v85[1] = v87;
    v88 = v126;
    v85[2] = v125;
    v85[3] = v88;
    v89 = v97;
    sub_20C5E5658(v84, v97, &qword_27C7CED68, &qword_20C653718);
    *(v89 + *(v120 + 36)) = 256;
    v71 = &qword_27C7CED60;
    v72 = &qword_20C653710;
    v90 = v113;
    sub_20C5E5658(v89, v113, &qword_27C7CED60, &qword_20C653710);
    sub_20C5E574C(v90, v119, &qword_27C7CED60, &qword_20C653710);
    swift_storeEnumTagMultiPayload();
    sub_20C608E80(&qword_281105908, &qword_27C7CED20, &qword_20C6536C8, sub_20C608768);
    sub_20C608BEC();
    sub_20C64D550();
    v75 = v90;
    return sub_20C5DBFC4(v75, v71, v72);
  }

  result = sub_20C64E2B0();
  __break(1u);
  return result;
}

uint64_t sub_20C6083A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED48, &qword_20C6536F0) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC88, &qword_20C653700) + 28);
  sub_20C64D350();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED40, &qword_20C6536E8);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_20C60846C(uint64_t a1)
{
  v3 = sub_20C64D510();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED10, &qword_20C6536B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(v1 + 8);
  sub_20C60730C(*v1, *(v1 + 16), a1, &v14 - v10);
  sub_20C64D500();
  sub_20C60862C();
  sub_20C6098DC(&qword_281105990, MEMORY[0x277CDDF40]);
  sub_20C64DA20();
  (*(v4 + 8))(v7, v3);
  return sub_20C5DBFC4(v11, &qword_27C7CED10, &qword_20C6536B8);
}

unint64_t sub_20C60862C()
{
  result = qword_281105860;
  if (!qword_281105860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED10, &qword_20C6536B8);
    sub_20C6086B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105860);
  }

  return result;
}

unint64_t sub_20C6086B0()
{
  result = qword_281105928;
  if (!qword_281105928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED18, &qword_20C6536C0);
    sub_20C608E80(&qword_281105908, &qword_27C7CED20, &qword_20C6536C8, sub_20C608768);
    sub_20C608BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105928);
  }

  return result;
}

unint64_t sub_20C608768()
{
  result = qword_281105A10;
  if (!qword_281105A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED28, &qword_20C6536D0);
    sub_20C6087F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A10);
  }

  return result;
}

unint64_t sub_20C6087F4()
{
  result = qword_281105A48;
  if (!qword_281105A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED30, &qword_20C6536D8);
    sub_20C608880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A48);
  }

  return result;
}

unint64_t sub_20C608880()
{
  result = qword_281105AA8;
  if (!qword_281105AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED38, &qword_20C6536E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED40, &qword_20C6536E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED48, &qword_20C6536F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED50, &qword_20C6536F8);
    sub_20C64D640();
    sub_20C5E5558(&qword_281105848, &qword_27C7CED50, &qword_20C6536F8);
    sub_20C6098DC(&qword_2811058D0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_20C608A74();
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_2811058B8, &qword_27C7CED58, &qword_20C653708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AA8);
  }

  return result;
}

unint64_t sub_20C608A74()
{
  result = qword_281105AE0;
  if (!qword_281105AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED48, &qword_20C6536F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED50, &qword_20C6536F8);
    sub_20C64D640();
    sub_20C5E5558(&qword_281105848, &qword_27C7CED50, &qword_20C6536F8);
    sub_20C6098DC(&qword_2811058D0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AE0);
  }

  return result;
}

unint64_t sub_20C608BEC()
{
  result = qword_281105A70;
  if (!qword_281105A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED60, &qword_20C653710);
    sub_20C608C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A70);
  }

  return result;
}

unint64_t sub_20C608C78()
{
  result = qword_281105AD8;
  if (!qword_281105AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED68, &qword_20C653718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED50, &qword_20C6536F8);
    sub_20C64D490();
    sub_20C5E5558(&qword_281105848, &qword_27C7CED50, &qword_20C6536F8);
    sub_20C6098DC(&qword_281105998, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AD8);
  }

  return result;
}

unint64_t sub_20C608DC8()
{
  result = qword_281105920;
  if (!qword_281105920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED88, &qword_20C653740);
    sub_20C608E80(&qword_281105900, &qword_27C7CED90, &qword_20C653748, sub_20C608F04);
    sub_20C609454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105920);
  }

  return result;
}

uint64_t sub_20C608E80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20C608F04()
{
  result = qword_2811059A8;
  if (!qword_2811059A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED98, &qword_20C653750);
    sub_20C608F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059A8);
  }

  return result;
}

unint64_t sub_20C608F90()
{
  result = qword_2811059D0;
  if (!qword_2811059D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDA0, &qword_20C653758);
    sub_20C60901C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059D0);
  }

  return result;
}

unint64_t sub_20C60901C()
{
  result = qword_2811059E8;
  if (!qword_2811059E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDA8, &qword_20C653760);
    sub_20C6090A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059E8);
  }

  return result;
}

unint64_t sub_20C6090A8()
{
  result = qword_281105A18;
  if (!qword_281105A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDB0, &qword_20C653768);
    sub_20C609160();
    sub_20C5E5558(&qword_2811058D8, &qword_27C7CEDE8, &qword_20C6537A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A18);
  }

  return result;
}

unint64_t sub_20C609160()
{
  result = qword_281105A50;
  if (!qword_281105A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDB8, &unk_20C653770);
    sub_20C609218();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A50);
  }

  return result;
}

unint64_t sub_20C609218()
{
  result = qword_281105AB0;
  if (!qword_281105AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDC0, &unk_20C655570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDC8, &unk_20C653780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
    sub_20C60936C();
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_281105898, &qword_27C7CEDD8, &qword_20C655590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AB0);
  }

  return result;
}

unint64_t sub_20C60936C()
{
  result = qword_281105AF8;
  if (!qword_281105AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDC8, &unk_20C653780);
    sub_20C6098DC(&qword_281105880, MEMORY[0x277CDE500]);
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AF8);
  }

  return result;
}

unint64_t sub_20C609454()
{
  result = qword_281105A00;
  if (!qword_281105A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDF0, &qword_20C6537B0);
    sub_20C6094E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A00);
  }

  return result;
}

unint64_t sub_20C6094E0()
{
  result = qword_281105A38;
  if (!qword_281105A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEDF8, &qword_20C6537B8);
    sub_20C609598();
    sub_20C5E5558(&qword_281105898, &qword_27C7CEDD8, &qword_20C655590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A38);
  }

  return result;
}

unint64_t sub_20C609598()
{
  result = qword_281105A78;
  if (!qword_281105A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEE00, &qword_20C6537C0);
    sub_20C60936C();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A78);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_20C64D740();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C6096D8()
{
  v1 = *(sub_20C64D740() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_20C64D730();
}

uint64_t sub_20C60979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_20C60986C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDF0, &qword_20C6537B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6098DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C60993C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_onPop);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60B408;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C609A04(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60B3F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_onPop);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

char *MarketingDynamicViewController.init(bag:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_coordinator;
  v8 = objc_allocWithZone(type metadata accessor for MarketingDynamicViewCoordinator());
  *&v2[v7] = sub_20C60F78C(0, 0, 0, 0, 0, 0);
  v9 = &v2[OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_onPop];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = sub_20C64CED0();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithBag_URL_, a1, v10);

  v12 = *&v11[OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_coordinator];
  v13 = v11;
  [v13 setDelegate_];

  swift_unknownObjectRelease();
  v14 = sub_20C64CF10();
  (*(*(v14 - 8) + 8))(a2, v14);
  return v13;
}

uint64_t sub_20C609F70@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_onPop);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60B408;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C60A010(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60B3F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_onPop);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

id MarketingItemViewController.__allocating_init(serviceType:placement:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_allocWithZone(v5);
  v8 = sub_20C64E040();

  v9 = sub_20C64E040();

  v10 = [v7 initWithServiceType:v8 placement:v9 bag:a5];

  swift_unknownObjectRelease();
  return v10;
}

char *MarketingItemViewController.init(serviceType:placement:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator;
  v10 = objc_allocWithZone(type metadata accessor for MarketingDynamicViewCoordinator());
  *&v5[v9] = sub_20C60F78C(0, 0, 0, 0, 0, 0);
  v11 = &v5[OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_onPop];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = sub_20C64E040();

  v13 = sub_20C64E040();

  v18.receiver = v6;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithServiceType_placement_bag_, v12, v13, a5);

  v15 = *&v14[OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator];
  v16 = v14;
  [v16 setDelegate_];

  swift_unknownObjectRelease();
  return v16;
}

id sub_20C60A3BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C64E040();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *MarketingItemViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator;
  v9 = objc_allocWithZone(type metadata accessor for MarketingDynamicViewCoordinator());
  *&v3[v8] = sub_20C60F78C(0, 0, 0, 0, 0, 0);
  v10 = &v3[OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_onPop];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = sub_20C64E040();
  }

  else
  {
    v11 = 0;
  }

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v11, a3);

  v13 = *&v12[OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator];
  v14 = v12;
  [v14 setDelegate_];

  return v14;
}

void sub_20C60A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = *a4;
  v8 = objc_allocWithZone(type metadata accessor for MarketingDynamicViewCoordinator());
  *(a1 + v7) = sub_20C60F78C(0, 0, 0, 0, 0, 0);
  v9 = (a1 + *a5);
  *v9 = 0;
  v9[1] = 0;
  sub_20C64E2B0();
  __break(1u);
}

id MarketingItemViewController.__allocating_init(marketingItem:bag:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithMarketingItem:a1 bag:a2];

  swift_unknownObjectRelease();
  return v4;
}

id MarketingItemViewController.__allocating_init(serviceType:placement:account:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = objc_allocWithZone(v6);
  v10 = sub_20C64E040();

  v11 = sub_20C64E040();

  v12 = [v9 initWithServiceType:v10 placement:v11 account:a5 bag:a6];

  swift_unknownObjectRelease();
  return v12;
}

id sub_20C60A8D4(uint64_t a1, void *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(v3) *a3];
  swift_unknownObjectRelease();

  return v5;
}

id sub_20C60A99C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_20C64CED0();
  v9 = [v7 *a3];
  swift_unknownObjectRelease();

  v10 = sub_20C64CF10();
  (*(*(v10 - 8) + 8))(a2, v10);
  return v9;
}

void sub_20C60AA98()
{
  v0 = sub_20C64CF10();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_20C64CEF0();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_20C60AB50@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_onPop);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60B3C0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C60ABF0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60B398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_onPop);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

uint64_t sub_20C60ACC4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_20C5D6A4C(v4);
  return v4;
}

uint64_t sub_20C60AD28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_20C5D6A5C(v7);
}

id MarketingWebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

char *MarketingWebViewController.init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_coordinator;
  v10 = type metadata accessor for MarketingWebViewCoordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase];
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_20C5D6A5C(v13);
  v24.receiver = v11;
  v24.super_class = v10;
  *&v4[v9] = objc_msgSendSuper2(&v24, sel_init);
  v15 = &v4[OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_onPop];
  *v15 = 0;
  *(v15 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_initWithBag_account_clientInfo_, a1, a2, a3);
  v17 = OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_coordinator;
  v18 = *&v16[OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_coordinator];
  v19 = v16;
  v20 = v18;
  [v19 setDelegate_];

  swift_unknownObjectRelease();
  v21 = *&v16[v17];

  swift_unknownObjectWeakAssign();
  return v19;
}

void sub_20C60B070(uint64_t a1, void *a2)
{
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_willMoveToParentViewController_, a1);
  v5 = [v2 parentViewController];
  if (v5)
  {

    if (!a1)
    {
      v6 = &v2[*a2];
      swift_beginAccess();
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v6 + 1);

        v7(v9);
        sub_20C5D6A5C(v7);
      }
    }
  }
}

id sub_20C60B19C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C60B1E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = (a1 + *a4);
  v7 = *v6;
  v8 = v6[1];

  return sub_20C5D6A5C(v7);
}

void sub_20C60B2A0()
{
  v1 = OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_coordinator;
  v2 = type metadata accessor for MarketingWebViewCoordinator();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase];
  *v4 = 0;
  v4[1] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_20C5D6A5C(v5);
  v8.receiver = v3;
  v8.super_class = v2;
  *(v0 + v1) = objc_msgSendSuper2(&v8, sel_init);
  v7 = (v0 + OBJC_IVAR____TtC16FitnessMarketing26MarketingWebViewController_onPop);
  *v7 = 0;
  v7[1] = 0;
  sub_20C64E2B0();
  __break(1u);
}

uint64_t sub_20C60B398()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_20C60B3C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_20C60B40C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000019;
    if (v1 != 1)
    {
      v5 = 0xD000000000000011;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6570704177656976;
    }
  }

  else
  {
    v2 = 0xD000000000000024;
    if (v1 != 5)
    {
      v2 = 0xD000000000000025;
    }

    v3 = 0xD000000000000020;
    if (v1 != 3)
    {
      v3 = 0x487373696D736964;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20C60B510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C60DAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C60B544(uint64_t a1)
{
  v2 = sub_20C60C1E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B580(uint64_t a1)
{
  v2 = sub_20C60C1E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B5BC(uint64_t a1)
{
  v2 = sub_20C60C344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B5F8(uint64_t a1)
{
  v2 = sub_20C60C344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B634(uint64_t a1)
{
  v2 = sub_20C60C2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B670(uint64_t a1)
{
  v2 = sub_20C60C2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B6AC(uint64_t a1)
{
  v2 = sub_20C60C440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B6E8(uint64_t a1)
{
  v2 = sub_20C60C440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B724(uint64_t a1)
{
  v2 = sub_20C60C29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B760(uint64_t a1)
{
  v2 = sub_20C60C29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B79C(uint64_t a1)
{
  v2 = sub_20C60C398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B7D8(uint64_t a1)
{
  v2 = sub_20C60C398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B814(uint64_t a1)
{
  v2 = sub_20C60C3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B850(uint64_t a1)
{
  v2 = sub_20C60C3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C60B88C(uint64_t a1)
{
  v2 = sub_20C60C4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C60B8C8(uint64_t a1)
{
  v2 = sub_20C60C4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingButtonAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE48, &qword_20C653960);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE50, &qword_20C653968);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE58, &qword_20C653970);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE60, &qword_20C653978);
  v56 = *(v57 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE68, &qword_20C653980);
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = &v53 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE70, &qword_20C653988);
  v54 = *(v53 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v69 = &v53 - v17;
  v18 = type metadata accessor for MarketingActionItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v68 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE78, &qword_20C653990);
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  v26 = type metadata accessor for MarketingButtonAction();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE80, &qword_20C653998);
  v75 = *(v30 - 8);
  v76 = v30;
  v31 = *(v75 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v53 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C60C1E4();
  v74 = v33;
  sub_20C64E500();
  sub_20C60C238(v73, v29);
  v35 = (*(v19 + 48))(v29, 6, v18);
  if (v35 > 2)
  {
    if (v35 > 4)
    {
      if (v35 == 5)
      {
        v82 = 5;
        sub_20C60C2F0();
        v44 = v61;
        v37 = v76;
        v38 = v74;
        sub_20C64E3B0();
        v46 = v62;
        v45 = v63;
      }

      else
      {
        v83 = 6;
        sub_20C60C29C();
        v44 = v64;
        v37 = v76;
        v38 = v74;
        sub_20C64E3B0();
        v46 = v65;
        v45 = v66;
      }
    }

    else
    {
      if (v35 == 3)
      {
        v80 = 3;
        sub_20C60C398();
        v36 = v55;
        v37 = v76;
        v38 = v74;
        sub_20C64E3B0();
        (*(v56 + 8))(v36, v57);
        return (*(v75 + 8))(v38, v37);
      }

      v81 = 4;
      sub_20C60C344();
      v44 = v58;
      v37 = v76;
      v38 = v74;
      sub_20C64E3B0();
      v46 = v59;
      v45 = v60;
    }

    (*(v46 + 8))(v44, v45);
    return (*(v75 + 8))(v38, v37);
  }

  v73 = v18;
  v39 = v67;
  v40 = v69;
  v41 = v70;
  v42 = v71;
  v43 = v72;
  if (!v35)
  {
    v47 = v68;
    sub_20C60D1E0(v29, v68, type metadata accessor for MarketingActionItem);
    v78 = 1;
    sub_20C60C440();
    v48 = v76;
    v49 = v74;
    sub_20C64E3B0();
    sub_20C605DC4(&qword_27C7CE428);
    v50 = v53;
    sub_20C64E410();
    (*(v54 + 8))(v40, v50);
    sub_20C60C494(v47);
    return (*(v75 + 8))(v49, v48);
  }

  if (v35 == 1)
  {
    v77 = 0;
    sub_20C60C4F0();
    v37 = v76;
    v38 = v74;
    sub_20C64E3B0();
    (*(v39 + 8))(v25, v22);
  }

  else
  {
    v79 = 2;
    sub_20C60C3EC();
    v52 = v41;
    v37 = v76;
    v38 = v74;
    sub_20C64E3B0();
    (*(v42 + 8))(v52, v43);
  }

  return (*(v75 + 8))(v38, v37);
}

uint64_t type metadata accessor for MarketingButtonAction()
{
  result = qword_281106410;
  if (!qword_281106410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C60C1E4()
{
  result = qword_2811064C8;
  if (!qword_2811064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064C8);
  }

  return result;
}

uint64_t sub_20C60C238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingButtonAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C60C29C()
{
  result = qword_27C7CEE88;
  if (!qword_27C7CEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEE88);
  }

  return result;
}

unint64_t sub_20C60C2F0()
{
  result = qword_27C7CEE90;
  if (!qword_27C7CEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEE90);
  }

  return result;
}

unint64_t sub_20C60C344()
{
  result = qword_27C7CEE98;
  if (!qword_27C7CEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEE98);
  }

  return result;
}

unint64_t sub_20C60C398()
{
  result = qword_27C7CEEA0;
  if (!qword_27C7CEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEEA0);
  }

  return result;
}

unint64_t sub_20C60C3EC()
{
  result = qword_27C7CEEA8;
  if (!qword_27C7CEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEEA8);
  }

  return result;
}

unint64_t sub_20C60C440()
{
  result = qword_27C7CEEB0;
  if (!qword_27C7CEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEEB0);
  }

  return result;
}

uint64_t sub_20C60C494(uint64_t a1)
{
  v2 = type metadata accessor for MarketingActionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C60C4F0()
{
  result = qword_2811064B0;
  if (!qword_2811064B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064B0);
  }

  return result;
}

uint64_t MarketingButtonAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEB8, &qword_20C6539A0);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v85 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEC0, &qword_20C6539A8);
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEC8, &qword_20C6539B0);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v84 = &v67 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEED0, &qword_20C6539B8);
  v74 = *(v75 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v83 = &v67 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEED8, &qword_20C6539C0);
  v71 = *(v73 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v82 = &v67 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEE0, &qword_20C6539C8);
  v72 = *(v68 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v68);
  v88 = &v67 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEE8, &qword_20C6539D0);
  v70 = *(v69 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEEF0, &unk_20C6539D8);
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v25 = type metadata accessor for MarketingButtonAction();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_20C60C1E4();
  v34 = v91;
  sub_20C64E4F0();
  if (v34)
  {
    goto LABEL_9;
  }

  v67 = v29;
  v36 = v88;
  v35 = v89;
  v91 = v31;
  v37 = sub_20C64E3A0();
  v38 = (2 * *(v37 + 16)) | 1;
  v92 = v37;
  v93 = v37 + 32;
  v94 = 0;
  v95 = v38;
  v39 = sub_20C5DD124();
  if (v39 == 7 || v94 != v95 >> 1)
  {
    v45 = sub_20C64E290();
    swift_allocError();
    v47 = v46;
    v48 = v24;
    v49 = v21;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
    *v47 = v25;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v87 + 8))(v48, v49);
    swift_unknownObjectRelease();
LABEL_9:
    v51 = v90;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v96 = 1;
        sub_20C60C440();
        sub_20C64E320();
        v53 = v21;
        v54 = type metadata accessor for MarketingActionItem();
        sub_20C605DC4(&qword_27C7CE450);
        v55 = v67;
        v56 = v68;
        sub_20C64E390();
        (*(v72 + 8))(v36, v56);
        (*(v87 + 8))(v24, v53);
        swift_unknownObjectRelease();
        (*(*(v54 - 8) + 56))(v55, 0, 6, v54);
        v44 = v91;
        sub_20C60D1E0(v55, v91, type metadata accessor for MarketingButtonAction);
      }

      else
      {
        v96 = 2;
        sub_20C60C3EC();
        v60 = v82;
        sub_20C64E320();
        (*(v71 + 8))(v60, v73);
        (*(v87 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v64 = type metadata accessor for MarketingActionItem();
        v44 = v91;
        (*(*(v64 - 8) + 56))(v91, 2, 6, v64);
      }
    }

    else
    {
      v96 = 0;
      sub_20C60C4F0();
      sub_20C64E320();
      (*(v70 + 8))(v20, v69);
      (*(v87 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v59 = type metadata accessor for MarketingActionItem();
      v44 = v91;
      (*(*(v59 - 8) + 56))(v91, 1, 6, v59);
    }

    v65 = v90;
    v41 = v86;
  }

  else
  {
    if (v39 > 4u)
    {
      v41 = v86;
      v57 = v87;
      if (v39 == 5)
      {
        v96 = 5;
        sub_20C60C2F0();
        sub_20C64E320();
        (*(v78 + 8))(v35, v79);
        (*(v57 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v58 = type metadata accessor for MarketingActionItem();
        v44 = v91;
        (*(*(v58 - 8) + 56))(v91, 5, 6, v58);
      }

      else
      {
        v96 = 6;
        sub_20C60C29C();
        v63 = v85;
        sub_20C64E320();
        (*(v80 + 8))(v63, v81);
        (*(v57 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v66 = type metadata accessor for MarketingActionItem();
        v44 = v91;
        (*(*(v66 - 8) + 56))(v91, 6, 6, v66);
      }
    }

    else
    {
      v41 = v86;
      v40 = v87;
      if (v39 == 3)
      {
        v96 = 3;
        sub_20C60C398();
        v42 = v83;
        sub_20C64E320();
        (*(v74 + 8))(v42, v75);
        (*(v40 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v43 = type metadata accessor for MarketingActionItem();
        v44 = v91;
        (*(*(v43 - 8) + 56))(v91, 3, 6, v43);
      }

      else
      {
        v96 = 4;
        sub_20C60C344();
        v61 = v84;
        sub_20C64E320();
        (*(v76 + 8))(v61, v77);
        (*(v40 + 8))(v24, v21);
        swift_unknownObjectRelease();
        v62 = type metadata accessor for MarketingActionItem();
        v44 = v91;
        (*(*(v62 - 8) + 56))(v91, 4, 6, v62);
      }
    }

    v65 = v90;
  }

  sub_20C60D1E0(v44, v41, type metadata accessor for MarketingButtonAction);
  v51 = v65;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_20C60D1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C60D2A0()
{
  v0 = type metadata accessor for MarketingActionItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for MarketingButtonAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingButtonAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C60D4BC()
{
  result = qword_27C7CEEF8;
  if (!qword_27C7CEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEEF8);
  }

  return result;
}

unint64_t sub_20C60D514()
{
  result = qword_27C7CEF00;
  if (!qword_27C7CEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEF00);
  }

  return result;
}

unint64_t sub_20C60D56C()
{
  result = qword_2811064A0;
  if (!qword_2811064A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064A0);
  }

  return result;
}

unint64_t sub_20C60D5C4()
{
  result = qword_2811064A8;
  if (!qword_2811064A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064A8);
  }

  return result;
}

unint64_t sub_20C60D61C()
{
  result = qword_2811064D0;
  if (!qword_2811064D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064D0);
  }

  return result;
}

unint64_t sub_20C60D674()
{
  result = qword_2811064D8[0];
  if (!qword_2811064D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811064D8);
  }

  return result;
}

unint64_t sub_20C60D6CC()
{
  result = qword_281106480;
  if (!qword_281106480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106480);
  }

  return result;
}

unint64_t sub_20C60D724()
{
  result = qword_281106488;
  if (!qword_281106488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106488);
  }

  return result;
}

unint64_t sub_20C60D77C()
{
  result = qword_281106470;
  if (!qword_281106470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106470);
  }

  return result;
}

unint64_t sub_20C60D7D4()
{
  result = qword_281106478;
  if (!qword_281106478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106478);
  }

  return result;
}

unint64_t sub_20C60D82C()
{
  result = qword_281106490;
  if (!qword_281106490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106490);
  }

  return result;
}

unint64_t sub_20C60D884()
{
  result = qword_281106498;
  if (!qword_281106498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106498);
  }

  return result;
}

unint64_t sub_20C60D8DC()
{
  result = qword_281106460;
  if (!qword_281106460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106460);
  }

  return result;
}

unint64_t sub_20C60D934()
{
  result = qword_281106468;
  if (!qword_281106468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106468);
  }

  return result;
}

unint64_t sub_20C60D98C()
{
  result = qword_281106450;
  if (!qword_281106450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106450);
  }

  return result;
}

unint64_t sub_20C60D9E4()
{
  result = qword_281106458;
  if (!qword_281106458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106458);
  }

  return result;
}

unint64_t sub_20C60DA3C()
{
  result = qword_2811064B8;
  if (!qword_2811064B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064B8);
  }

  return result;
}

unint64_t sub_20C60DA94()
{
  result = qword_2811064C0;
  if (!qword_2811064C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811064C0);
  }

  return result;
}

uint64_t sub_20C60DAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020C659F80 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C659FA0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x800000020C659FC0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x487373696D736964 && a2 == 0xEE0066666F646E61 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x800000020C659FF0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000025 && 0x800000020C65A020 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_20C64E430();

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

int *MarketingDynamicView.init(url:account:bag:shouldAnonymizeMetrics:metricsOverlay:onDismiss:onPurchase:onCarrierLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = sub_20C64CF10();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  result = type metadata accessor for MarketingDynamicView();
  *(a9 + result[6]) = a3;
  *(a9 + result[5]) = a2;
  *(a9 + result[7]) = a4;
  *(a9 + result[8]) = a5;
  v22 = (a9 + result[9]);
  *v22 = a6;
  v22[1] = a7;
  v23 = (a9 + result[10]);
  *v23 = a8;
  v23[1] = a10;
  v24 = (a9 + result[11]);
  *v24 = a11;
  v24[1] = a12;
  return result;
}

uint64_t type metadata accessor for MarketingDynamicView()
{
  result = qword_27C7CEF20;
  if (!qword_27C7CEF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *MarketingDynamicView.makeUIViewController(context:)()
{
  v1 = type metadata accessor for MarketingDynamicView();
  v2 = *(v0 + v1[6]);
  v3 = objc_allocWithZone(type metadata accessor for MarketingDynamicViewController());
  v4 = sub_20C64CED0();
  v5 = [v3 initWithBag:v2 URL:v4];

  v6 = *(v0 + v1[5]);
  v7 = v5;
  [v7 setAccount_];
  [v7 setAnonymousMetrics_];
  v8 = *(v0 + v1[8]);
  if (v8)
  {
    sub_20C60E194(v8);
    v9 = sub_20C64DFE0();
  }

  else
  {
    v9 = 0;
  }

  [v7 setMetricsOverlay_];

  v10 = sub_20C64E040();
  [v7 setMediaClientIdentifier_];

  v11 = [objc_opt_self() currentProcess];
  v12 = sub_20C64E040();
  [v11 setTreatmentNamespace_];

  [v7 setClientInfo_];
  v13 = OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_coordinator;
  v14 = *&v7[OBJC_IVAR____TtC16FitnessMarketing30MarketingDynamicViewController_coordinator];
  v15 = (v0 + v1[10]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v14[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onPurchase];
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = v16;
  v18[1] = v17;
  v21 = v14;
  sub_20C5D6A4C(v16);
  sub_20C5D6A5C(v19);

  v22 = *&v7[v13];
  v23 = (v0 + v1[11]);
  v24 = *v23;
  v25 = v23[1];
  v26 = &v22[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onCarrierLink];
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = v24;
  v26[1] = v25;
  v29 = v22;
  sub_20C5D6A4C(v24);
  sub_20C5D6A5C(v27);

  v30 = *&v7[v13];
  v31 = (v0 + v1[9]);
  v32 = *v31;
  v33 = v31[1];
  v34 = &v30[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onDismiss];
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  *v34 = v32;
  v34[1] = v33;
  v37 = v30;
  sub_20C5D6A4C(v32);
  sub_20C5D6A5C(v35);

  return v7;
}

uint64_t sub_20C60E194(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CEF70, &unk_20C654260);
    v2 = sub_20C64E300();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20C5DFF60(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_20C5EC6F4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_20C5EC6F4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_20C5EC6F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_20C64E210();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_20C5EC6F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20C60E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C60E8C0(&qword_27C7CEF68);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20C60E56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C60E8C0(&qword_27C7CEF68);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20C60E5EC()
{
  sub_20C60E8C0(&qword_27C7CEF68);
  sub_20C64D6B0();
  __break(1u);
}

void sub_20C60E658()
{
  sub_20C64CF10();
  if (v0 <= 0x3F)
  {
    sub_20C60E764();
    if (v1 <= 0x3F)
    {
      sub_20C60E808();
      if (v2 <= 0x3F)
      {
        sub_20C60E86C(319, &qword_27C7CF120, &qword_27C7CEF50, &qword_20C650FC8);
        if (v3 <= 0x3F)
        {
          sub_20C60E86C(319, &qword_27C7CEF58, &qword_27C7CEF60, &unk_20C654250);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C60E764()
{
  if (!qword_27C7CEF30)
  {
    sub_20C60E7BC();
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7CEF30);
    }
  }
}

unint64_t sub_20C60E7BC()
{
  result = qword_27C7CF0B0;
  if (!qword_27C7CF0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7CF0B0);
  }

  return result;
}

unint64_t sub_20C60E808()
{
  result = qword_27C7CEF40;
  if (!qword_27C7CEF40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C7CEF40);
  }

  return result;
}

void sub_20C60E86C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20C64E1F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20C60E8C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingDynamicView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BubbleTipModelWrapper.__allocating_init(identifier:baseModel:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = 0;
  v8 = OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier;
  v9 = sub_20C64CF70();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = a2;
  return v7;
}

uint64_t BubbleTipModelWrapper.init(identifier:baseModel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = 0;
  v5 = OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier;
  v6 = sub_20C64CF70();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = a2;
  return v2;
}

uint64_t BubbleTipModelWrapper.deinit()
{
  v1 = OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier;
  v2 = sub_20C64CF70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);

  return v0;
}

uint64_t BubbleTipModelWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier;
  v2 = sub_20C64CF70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_20C60EB6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_20C64CF50();
}

uint64_t type metadata accessor for BubbleTipModelWrapper()
{
  result = qword_27C7CEFE0;
  if (!qword_27C7CEFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C60EBDC()
{
  result = sub_20C64CF70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_20C60ECD4()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281109B60 = result;
  return result;
}

uint64_t sub_20C60ED2C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onDismiss);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60FB14;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C60EDCC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60FB18;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onDismiss);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

uint64_t sub_20C60EF34@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onPurchase);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60FAB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C60EFD4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60FAAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onPurchase);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

uint64_t sub_20C60F13C@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onCarrierLink);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60FA78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C60F1DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60FA38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onCarrierLink);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C5D6A5C(v8);
}

uint64_t sub_20C60F2C4(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_20C60F34C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id MarketingDynamicViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MarketingDynamicViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C60F654(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(void, uint64_t), void (*a8)(void, uint64_t))
{
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a5;
  sub_20C60F8A8(a4, a5, a6, a7, a8);
}

id sub_20C60F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = &v6[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onDismiss];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v6[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onPurchase];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v6[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onCarrierLink];
  *v15 = 0;
  v15[1] = 0;
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;
  swift_beginAccess();
  *v14 = a3;
  v14[1] = a4;
  swift_beginAccess();
  *v15 = a5;
  v15[1] = a6;
  sub_20C5D6A4C(a1);
  sub_20C5D6A4C(a3);
  sub_20C5D6A4C(a5);
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_20C60F8A8(void *a1, void *a2, void *a3, void (*a4)(void, uint64_t), void (*a5)(void, uint64_t))
{
  v8 = v5 + *a3;
  if (a1)
  {
    v10 = v5 + *a3;
    swift_beginAccess();
    v11 = *v8;
    if (*v8)
    {
      v12 = *(v8 + 8);
      v13 = a1;
      a4(v11, v12);
      v11(a1, 0);
      a5(v11, v12);
    }
  }

  else
  {
    v15 = v5 + *a3;
    swift_beginAccess();
    v16 = *v8;
    if (*v8)
    {
      v17 = *(v8 + 8);
      if (a2)
      {
        v18 = a2;
      }

      else
      {
        sub_20C60FAC0();
        v18 = swift_allocError();
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 2;
      }

      a4(v16, v17);
      v20 = a2;
      v16(v18, 1);
      a5(v16, v17);
    }
  }
}

uint64_t sub_20C60FA38(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_20C60FA78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

unint64_t sub_20C60FAC0()
{
  result = qword_27C7CF070;
  if (!qword_27C7CF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF070);
  }

  return result;
}

int *MarketingWebView.init(url:account:bag:metricsOverlay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CF10();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for MarketingWebView();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for MarketingWebView()
{
  result = qword_27C7CF098;
  if (!qword_27C7CF098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MarketingWebView.makeUIViewController(context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  v5 = sub_20C64CF10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = [objc_opt_self() currentProcess];
  v12 = sub_20C64E040();
  [v11 setTreatmentNamespace_];

  v13 = type metadata accessor for MarketingWebView();
  v14 = *(v0 + v13[6]);
  v15 = *(v0 + v13[5]);
  v16 = objc_allocWithZone(type metadata accessor for MarketingWebViewController());
  v29 = v11;
  v17 = [v16 initWithBag:v14 account:v15 clientInfo:v11];
  v18 = *(v0 + v13[7]);
  v19 = v17;
  if (v18)
  {
    v18 = sub_20C64DFE0();
  }

  [v17 setMetricsOverlay_];

  sub_20C5F2F50(v4);
  v20 = *(v6 + 48);
  if (v20(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v10, v0, v5);
    if (v20(v4, 1, v5) != 1)
    {
      sub_20C610008(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
  }

  v21 = sub_20C64CED0();
  v22 = [v17 loadURL_];

  v23 = v28;
  (*(v6 + 16))(v28, v10, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v23, v5);
  aBlock[4] = sub_20C610384;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C610404;
  aBlock[3] = &block_descriptor;
  v26 = _Block_copy(aBlock);

  [v22 addFinishBlock_];
  _Block_release(v26);

  (*(v6 + 8))(v10, v5);
  return v17;
}

uint64_t sub_20C610008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20C610070(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_20C64CF10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    if (qword_27C7CDF78 != -1)
    {
      swift_once();
    }

    v11 = sub_20C64D160();
    __swift_project_value_buffer(v11, qword_27C7DD450);
    (*(v6 + 16))(v9, a3, v5);
    v12 = a2;
    v13 = sub_20C64D140();
    v14 = sub_20C64E190();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 141558530;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2080;
      sub_20C6107A4(&qword_27C7CF138, MEMORY[0x277CC9260]);
      v17 = sub_20C64E420();
      v19 = v18;
      (*(v6 + 8))(v9, v5);
      v20 = sub_20C6340C4(v17, v19, &v26);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2082;
      v25 = a2;
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CF140, &qword_20C654458);
      v22 = sub_20C64E060();
      v24 = sub_20C6340C4(v22, v23, &v26);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_20C5D2000, v13, v14, "Failed to load %{mask.hash}s: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F301F10](v16, -1, -1);
      MEMORY[0x20F301F10](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_20C610384(uint64_t a1, void *a2)
{
  v5 = *(sub_20C64CF10() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_20C610070(a1, a2, v6);
}

void sub_20C610404(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20C6104E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C6107A4(&qword_27C7CF130, type metadata accessor for MarketingWebView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20C610578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C6107A4(&qword_27C7CF130, type metadata accessor for MarketingWebView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20C61060C()
{
  sub_20C6107A4(&qword_27C7CF130, type metadata accessor for MarketingWebView);
  sub_20C64D6B0();
  __break(1u);
}

void sub_20C61068C()
{
  sub_20C64CF10();
  if (v0 <= 0x3F)
  {
    sub_20C60E764();
    if (v1 <= 0x3F)
    {
      sub_20C60E808();
      if (v2 <= 0x3F)
      {
        sub_20C610740();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C610740()
{
  if (!qword_27C7CF120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEF50, &qword_20C650FC8);
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7CF120);
    }
  }
}

uint64_t sub_20C6107A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C610818@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_20C64D5F0();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_20C64D610();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_20C64D620();
  sub_20C64D600();
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF158, &qword_20C6544E0) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

uint64_t sub_20C610AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_20C64D470();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF150, &qword_20C6544D8);
  return sub_20C610818((a1 + *(v4 + 44)));
}

unint64_t sub_20C610B08()
{
  result = qword_281105818;
  if (!qword_281105818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF160, &qword_20C6544E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105818);
  }

  return result;
}

uint64_t sub_20C610B6C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_20C64DE40();
}

uint64_t sub_20C610D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v100 = a6;
  v101 = a7;
  v98 = a4;
  v99 = a5;
  v96 = a2;
  v97 = a3;
  v93 = a1;
  v104 = a9;
  v102 = sub_20C64D320();
  v11 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v103 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C64D700();
  v105 = *(a8 + 24);
  v13 = v105;
  v88 = sub_20C64D2E0();
  v94 = *(v88 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v88);
  v82 = v71 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v106 = sub_20C64D2E0();
  v95 = *(v106 - 8);
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v106);
  v87 = v71 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v136 = a10;
  v75 = a10;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v18 = sub_20C64D2E0();
  v92 = a8;
  v107 = *(a8 + 16);
  *&v19 = v107;
  *(&v19 + 1) = v13;
  v109 = *(a8 + 32);
  v137 = v109;
  v136 = v19;
  type metadata accessor for MarketingInlineView.FocusedButton();
  v20 = sub_20C64E1F0();
  v136 = a10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v149 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v22 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v146 = WitnessTable;
  v147 = v22;
  v23 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  *&v136 = v18;
  *(&v136 + 1) = v20;
  *&v137 = v23;
  *(&v137 + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  v25 = sub_20C64D2E0();
  v143 = swift_getWitnessTable();
  v144 = MEMORY[0x277CDF918];
  v73 = v25;
  v74 = swift_getWitnessTable();
  v78 = sub_20C64D340();
  v77 = sub_20C64D2E0();
  v80 = *(v77 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  v72 = v71 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v81 = sub_20C64D2E0();
  v84 = *(v81 - 8);
  v28 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = v71 - v29;
  v85 = sub_20C64D2E0();
  v90 = *(v85 - 8);
  v30 = *(v90 + 64);
  MEMORY[0x28223BE20](v85);
  v79 = v71 - v31;
  v89 = sub_20C64D2E0();
  v91 = *(v89 - 8);
  v32 = *(v91 + 64);
  v33 = MEMORY[0x28223BE20](v89);
  v83 = v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v86 = v71 - v35;
  v36 = v82;
  v37 = v105;
  sub_20C64DAF0();
  v93 = sub_20C64DDD0();
  v71[1] = v38;
  v122 = v107;
  v123 = v37;
  v125 = v109;
  v39 = v75;
  v126 = *(&v75 + 1);
  v124 = v75;
  v40 = v108;
  v127 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF188, &qword_20C654528);
  v41 = sub_20C614C94(&qword_281105888, MEMORY[0x277CDE470]);
  v141 = *(&v109 + 1);
  v142 = v41;
  v42 = v88;
  v43 = swift_getWitnessTable();
  sub_20C611B88();
  v44 = v87;
  sub_20C64DB70();
  (*(v94 + 8))(v36, v42);
  sub_20C64DE10();
  v110 = v107;
  v111 = v105;
  v112 = v39;
  v113 = v109;
  v114 = *(&v39 + 1);
  v115 = v96;
  v116 = v97;
  v117 = v40;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v45 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
  v139 = v43;
  v140 = v45;
  v46 = v106;
  v47 = swift_getWitnessTable();
  v48 = v72;
  sub_20C64DB70();
  (*(v95 + 8))(v44, v46);
  v49 = v92;
  sub_20C62E988(v92);
  swift_getKeyPath();
  sub_20C64DF30();

  v50 = v138;
  v51 = *(v102 + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_20C64D4A0();
  v54 = v103;
  (*(*(v53 - 8) + 104))(&v103[v51], v52, v53);
  *v54 = v50;
  v54[1] = v50;
  v55 = swift_getWitnessTable();
  v134 = v47;
  v135 = v55;
  v56 = v77;
  v57 = swift_getWitnessTable();
  sub_20C614C94(&qword_2811059A0, MEMORY[0x277CDFC08]);
  v58 = v76;
  sub_20C64DBD0();
  sub_20C614724(v54);
  (*(v80 + 8))(v48, v56);
  sub_20C62E988(v49);
  swift_getKeyPath();
  sub_20C64DF30();

  v59 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  v132 = v57;
  v133 = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_20C64DA30();
  (*(v84 + 8))(v58, v60);
  sub_20C64D790();
  sub_20C62E988(v49);
  swift_getKeyPath();
  sub_20C64DF30();

  v130 = v61;
  v131 = MEMORY[0x277CE01B0];
  v63 = v85;
  v64 = swift_getWitnessTable();
  v65 = v83;
  sub_20C64DB80();
  (*(v90 + 8))(v62, v63);
  v128 = v64;
  v129 = MEMORY[0x277CDF918];
  v66 = v89;
  v67 = swift_getWitnessTable();
  v68 = v86;
  sub_20C606460(v65, v66, v67);
  v69 = *(v91 + 8);
  v69(v65, v66);
  sub_20C606460(v68, v66, v67);
  return (v69)(v68, v66);
}

double sub_20C61197C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v13 = a3;
  *(&v13 + 1) = a4;
  v6 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v6);
  swift_getKeyPath();
  sub_20C64DF30();

  if (v12 != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF238, &unk_20C654690);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C6544F0;
    sub_20C64DC10();
    sub_20C64DC20();

    *(v7 + 32) = sub_20C64DDA0();
    *(v7 + 40) = v8;
    sub_20C64DC10();
    sub_20C64DC20();

    *(v7 + 48) = sub_20C64DDA0();
    *(v7 + 56) = v9;
    sub_20C64DC00();
    *(v7 + 64) = sub_20C64DDA0();
    *(v7 + 72) = v10;
    sub_20C64DE70();
    sub_20C64DE80();
    sub_20C64DDB0();
    sub_20C64D2A0();
  }

  sub_20C611C14();
  sub_20C64D550();
  result = *&v12;
  *a5 = v12;
  *(a5 + 16) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = v15;
  return result;
}

double sub_20C611B74@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[7];
  v4 = v1[8];
  return sub_20C61197C(v1[2], v1[3], v1[5], v1[6], a1);
}

unint64_t sub_20C611B88()
{
  result = qword_27C7CF190;
  if (!qword_27C7CF190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF188, &qword_20C654528);
    sub_20C611C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF190);
  }

  return result;
}

unint64_t sub_20C611C14()
{
  result = qword_281105B10;
  if (!qword_281105B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B10);
  }

  return result;
}

uint64_t sub_20C611C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a8;
  v54 = a6;
  v55 = a7;
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v56 = a9;
  v47 = a13;
  v46 = a12;
  v44 = a10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v42 = a11;
  v43 = a14;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v14 = sub_20C64D2E0();
  type metadata accessor for MarketingInlineView.FocusedButton();
  v15 = sub_20C64E1F0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = MEMORY[0x277CDF918];
  v48 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v78 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v16 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v72 = v14;
  v73 = v15;
  v74 = v16;
  v75 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  v37 = swift_getWitnessTable();
  v17 = sub_20C64DD60();
  v40 = *(v17 - 8);
  v18 = *(v40 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = sub_20C64D2E0();
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v38 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v39 = &v37 - v25;
  sub_20C64D4E0();
  v27 = v44;
  v26 = v45;
  v57 = v45;
  v58 = v44;
  v29 = v46;
  v28 = v47;
  v59 = v42;
  v60 = v46;
  v61 = v47;
  v62 = v43;
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  sub_20C64DD50();
  sub_20C64D790();
  v72 = v26;
  v73 = v27;
  v74 = v29;
  v75 = v28;
  v30 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v30);
  swift_getKeyPath();
  sub_20C64DF30();

  v31 = swift_getWitnessTable();
  v32 = v38;
  sub_20C64DB80();
  (*(v40 + 8))(v20, v17);
  v70 = v31;
  v71 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = v39;
  sub_20C606460(v32, v21, v33);
  v35 = *(v41 + 8);
  v35(v32, v21);
  sub_20C606460(v34, v21, v33);
  return (v35)(v34, v21);
}

uint64_t sub_20C6121C0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v163 = a7;
  v164 = a6;
  v179 = a5;
  v148 = a4;
  v190 = a3;
  v147 = a2;
  v146 = a1;
  v176 = a9;
  v180 = a10;
  v172 = *(a11 - 8);
  v14 = *(v172 + 64);
  MEMORY[0x28223BE20](a1);
  v154 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a11;
  v195 = a13;
  v186 = a11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v173 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v173 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v158 = &KeyPath - v17;
  v18 = sub_20C64D2E0();
  v174 = *(v18 - 8);
  v19 = *(v174 + 64);
  MEMORY[0x28223BE20](v18);
  v169 = &KeyPath - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v162 = v18;
  v21 = sub_20C64D2E0();
  v175 = *(v21 - 8);
  v22 = *(v175 + 64);
  MEMORY[0x28223BE20](v21);
  v171 = &KeyPath - v23;
  v194 = a8;
  v195 = a10;
  v196 = a12;
  type metadata accessor for MarketingInlineView.FocusedButton();
  v24 = sub_20C64E1F0();
  v194 = a11;
  v195 = a13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v193[5] = OpaqueTypeConformance2;
  v193[6] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v157 = WitnessTable;
  v26 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v193[3] = WitnessTable;
  v193[4] = v26;
  v159 = v21;
  v27 = swift_getWitnessTable();
  v161 = v27;
  v193[2] = swift_getWitnessTable();
  v156 = v24;
  v160 = swift_getWitnessTable();
  v194 = v21;
  v195 = v24;
  *&v196 = v27;
  *(&v196 + 1) = v160;
  v165 = MEMORY[0x277CDEEB0];
  v167 = swift_getOpaqueTypeMetadata2();
  v166 = *(v167 - 8);
  v28 = *(v166 + 64);
  v29 = MEMORY[0x28223BE20](v167);
  v168 = &KeyPath - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v152 = &KeyPath - v32;
  MEMORY[0x28223BE20](v31);
  v155 = &KeyPath - v33;
  v184 = sub_20C64D2D0();
  v145 = *(v184 - 8);
  v34 = *(v145 + 64);
  v35 = MEMORY[0x28223BE20](v184);
  v150 = &KeyPath - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v183 = &KeyPath - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v182 = &KeyPath - v40;
  MEMORY[0x28223BE20](v39);
  v144 = &KeyPath - v41;
  v42 = a8;
  v43 = v180;
  v194 = a8;
  v195 = v180;
  v196 = a12;
  v178 = *(&a12 + 1);
  v189 = type metadata accessor for MarketingInlineView();
  v44 = *(v189 - 8);
  v185 = *(v44 + 64);
  MEMORY[0x28223BE20](v189);
  v46 = &KeyPath - v45;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1A0, &qword_20C654550);
  v47 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v49 = &KeyPath - v48;
  v140 = (&KeyPath - v48);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1A8, &qword_20C654558);
  v142 = *(v143 - 8);
  v50 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v181 = &KeyPath - v51;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF170, &qword_20C654518);
  v52 = *(*(v188 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v188);
  v149 = &KeyPath - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v134 = &KeyPath - v56;
  MEMORY[0x28223BE20](v55);
  v187 = &KeyPath - v57;
  v177 = a13;
  v136 = a12;
  v58 = v190;
  v137 = v42;
  v59 = v186;
  sub_20C6132A8(v146, v147, v190, v148, v179, v42, v43, v49, a12);
  LODWORD(v179) = sub_20C64D760();
  v148 = sub_20C64DE10();
  v147 = v60;
  v61 = *(v44 + 16);
  v138 = v44 + 16;
  v139 = v61;
  v130 = v46;
  v62 = v189;
  v61(v46, v58, v189);
  v135 = *(v44 + 80);
  v63 = (v135 + 64) & ~v135;
  v131 = v63;
  v64 = swift_allocObject();
  *(v64 + 2) = v42;
  *(v64 + 3) = v43;
  *(v64 + 4) = v59;
  *(v64 + 5) = a12;
  v65 = v177;
  *(v64 + 6) = v178;
  *(v64 + 7) = v65;
  v66 = *(v44 + 32);
  v132 = v44 + 32;
  v133 = v66;
  v66(&v64[v63], v46, v62);
  sub_20C6147E8();
  v67 = v140;
  sub_20C64DB10();

  sub_20C5DBFC4(v67, &qword_27C7CF1A0, &qword_20C654550);
  KeyPath = swift_getKeyPath();
  v68 = v182;
  sub_20C62EB1C(v182);
  v69 = *MEMORY[0x277CDFA88];
  v70 = v145;
  v72 = v145 + 104;
  v71 = *(v145 + 104);
  v73 = v183;
  LODWORD(v141) = *MEMORY[0x277CDFA88];
  v74 = v184;
  (v71)(v183, v141, v184);
  v146 = v72;
  v140 = v71;
  LOBYTE(v46) = sub_20C64D2C0();
  v75 = *(v70 + 8);
  v179 = v70 + 8;
  v76 = v73;
  v77 = v75;
  v147 = v75;
  v75(v76, v74);
  v77(v68, v74);
  v78 = *MEMORY[0x277CDFA90];
  LODWORD(v148) = *MEMORY[0x277CDFA90];
  if (v46)
  {
    v79 = v69;
  }

  else
  {
    v79 = v78;
  }

  v80 = v144;
  v81 = v74;
  (v71)(v144, v79, v74);
  v82 = v134;
  v83 = &v134[*(v188 + 36)];
  (*(v70 + 32))(v83 + *(v151 + 28), v80, v81);
  *v83 = KeyPath;
  (*(v142 + 32))(v82, v181, v143);
  v84 = sub_20C5E5658(v82, v187, &qword_27C7CF170, &qword_20C654518);
  v85 = v154;
  v164(v84);
  sub_20C64D760();
  sub_20C64DE10();
  v86 = v130;
  v87 = v189;
  v139(v130, v58, v189);
  v88 = v131;
  v89 = swift_allocObject();
  v90 = v180;
  v89[2] = v137;
  v89[3] = v90;
  v91 = v186;
  v92 = v136;
  v89[4] = v186;
  v89[5] = v92;
  v93 = v177;
  v89[6] = v178;
  v89[7] = v93;
  v94 = v89 + v88;
  v95 = v87;
  v133(v94, v86, v87);
  v96 = v158;
  sub_20C64DB10();

  (*(v172 + 8))(v85, v91);
  sub_20C64D7B0();
  sub_20C62E988(v95);
  swift_getKeyPath();
  sub_20C64DF30();

  v97 = v169;
  v98 = OpaqueTypeMetadata2;
  sub_20C64DB80();
  (*(v173 + 8))(v96, v98);
  swift_getKeyPath();
  v99 = v182;
  sub_20C62EB1C(v182);
  v101 = v183;
  v100 = v184;
  v102 = v141;
  v103 = v140;
  v140(v183, v141, v184);
  LOBYTE(v83) = sub_20C64D2C0();
  v104 = v101;
  v105 = v147;
  v147(v104, v100);
  v105(v99, v100);
  v106 = v105;
  if (v83)
  {
    v107 = v102;
  }

  else
  {
    v107 = v148;
  }

  v108 = v150;
  v109 = v100;
  v103(v150, v107, v100);
  v110 = v171;
  v111 = v162;
  sub_20C64DA50();

  v106(v108, v109);
  (*(v174 + 8))(v97, v111);
  v194 = sub_20C62EB20(v189);
  v195 = v112;
  LOBYTE(v196) = v113;
  LOBYTE(v193[0]) = 0;
  v114 = swift_checkMetadataState();
  v115 = v152;
  v116 = v159;
  v117 = v161;
  v118 = v160;
  sub_20C64DB60();

  (*(v175 + 8))(v110, v116);
  v194 = v116;
  v195 = v114;
  *&v196 = v117;
  *(&v196 + 1) = v118;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v155;
  v121 = v167;
  sub_20C606460(v115, v167, v119);
  v122 = v166;
  v123 = *(v166 + 8);
  v123(v115, v121);
  v124 = v187;
  v125 = v149;
  sub_20C5E574C(v187, v149, &qword_27C7CF170, &qword_20C654518);
  v194 = v125;
  v126 = *(v122 + 16);
  v127 = v168;
  v126(v168, v120, v121);
  v195 = v127;
  v193[0] = v188;
  v193[1] = v121;
  v191 = sub_20C614BA0();
  v192 = v119;
  sub_20C610B6C(&v194, 2uLL, v193);
  v123(v120, v121);
  sub_20C5DBFC4(v124, &qword_27C7CF170, &qword_20C654518);
  v123(v127, v121);
  return sub_20C5DBFC4(v125, &qword_27C7CF170, &qword_20C654518);
}

uint64_t sub_20C6132A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, __int128 a9)
{
  *(&v190 + 1) = a7;
  *&v190 = a6;
  v193 = a3;
  v172 = a1;
  v175 = a8;
  v189 = a9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E0, &qword_20C6545B8);
  v12 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v167 = &v154 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E8, &qword_20C6545C0);
  v174 = *(v177 - 8);
  v14 = *(v174 + 64);
  v15 = MEMORY[0x28223BE20](v177);
  v166 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v165 = &v154 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1F0, &qword_20C6570E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v176 = &v154 - v23;
  v188 = sub_20C64D880();
  v184 = *(v188 - 8);
  v24 = *(v184 + 64);
  MEMORY[0x28223BE20](v188);
  v187 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v26 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v28 = &v154 - v27;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1F8, &qword_20C6545C8);
  v185 = *(v186 - 8);
  v29 = *(v185 + 64);
  v30 = MEMORY[0x28223BE20](v186);
  v178 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v191 = &v154 - v32;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60);
  v33 = *(*(v181 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v181);
  v160 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v154 - v36;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0);
  v38 = *(*(v180 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v180);
  v161 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v154 - v41;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF210, &qword_20C6545D8);
  v43 = *(*(v182 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v182);
  v162 = &v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v168 = &v154 - v46;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF218, &qword_20C6545E0);
  v47 = *(*(v183 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v183);
  v163 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v171 = &v154 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF220, &qword_20C6545E8);
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v170 = &v154 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v169 = &v154 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF228, &qword_20C6545F0);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v173 = &v154 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v61 = MEMORY[0x277CDFA10];
  v192 = &v154 - v62;
  if (a2)
  {
    v156 = v52;
    v157 = v51;
    v158 = a4;
    v159 = v22;
    *&v202 = v172;
    *(&v202 + 1) = a2;
    sub_20C602C18();

    v63 = sub_20C64D970();
    v65 = v64;
    *&v202 = v63;
    *(&v202 + 1) = v64;
    v67 = v66 & 1;
    LOBYTE(v203) = v66 & 1;
    *(&v203 + 1) = v68;
    v69 = *v61;
    v70 = sub_20C64D2B0();
    (*(*(v70 - 8) + 104))(v28, v69, v70);
    sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28]);
    result = sub_20C64E010();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    sub_20C64DAB0();
    sub_20C614CDC(v28);
    sub_20C5E56C0(v63, v65, v67);

    v202 = v190;
    v203 = v189;
    v72 = type metadata accessor for MarketingInlineView();
    sub_20C62E988(v72);
    swift_getKeyPath();
    sub_20C64DF30();

    v73 = (v184 + 104);
    v74 = (v184 + 8);
    v155 = a5;
    if (v202 == 3)
    {
      sub_20C64D860();
    }

    else
    {
      sub_20C64D820();
    }

    sub_20C64D830();
    sub_20C64D870();

    v75 = v187;
    v76 = v188;
    (*v73)(v187, *MEMORY[0x277CE0A10], v188);
    v77 = sub_20C64D8A0();

    (*v74)(v75, v76);
    KeyPath = swift_getKeyPath();
    (*(v185 + 32))(v37, v191, v186);
    v79 = &v37[*(v181 + 36)];
    *v79 = KeyPath;
    v79[1] = v77;
    LODWORD(v77) = sub_20C64D5A0();
    sub_20C5E5658(v37, v42, &qword_27C7CF200, &unk_20C655C60);
    *&v42[*(v180 + 36)] = v77;
    sub_20C62E988(v72);
    swift_getKeyPath();
    sub_20C64DF30();

    v80 = v206;
    v81 = swift_getKeyPath();
    v82 = v168;
    sub_20C5E5658(v42, v168, &qword_27C7CF208, &qword_20C6545D0);
    v83 = v82 + *(v182 + 36);
    *v83 = v81;
    *(v83 + 8) = v80;
    *(v83 + 16) = 0;
    sub_20C64DE10();
    sub_20C64D330();
    v84 = v82;
    v85 = v171;
    sub_20C5E5658(v84, v171, &qword_27C7CF210, &qword_20C6545D8);
    v86 = (v85 + *(v183 + 36));
    v87 = v200;
    v86[4] = v199;
    v86[5] = v87;
    v86[6] = v201;
    v88 = v196;
    *v86 = v195;
    v86[1] = v88;
    v89 = v198;
    v86[2] = v197;
    v86[3] = v89;
    sub_20C62E988(v72);
    swift_getKeyPath();
    sub_20C64DF30();

    if (v202 == 3)
    {
      v90 = 1.0;
    }

    else
    {
      v90 = 0.77;
    }

    v91 = swift_getKeyPath();
    v92 = v170;
    sub_20C5E5658(v85, v170, &qword_27C7CF218, &qword_20C6545E0);
    v93 = v157;
    v94 = v92 + *(v157 + 36);
    *v94 = v91;
    *(v94 + 8) = v90;
    v95 = v92;
    v96 = v169;
    sub_20C5E5658(v95, v169, &qword_27C7CF220, &qword_20C6545E8);
    v97 = v96;
    v98 = v192;
    sub_20C5E5658(v97, v192, &qword_27C7CF220, &qword_20C6545E8);
    (*(v156 + 56))(v98, 0, 1, v93);
    v22 = v159;
    a5 = v155;
    a4 = v158;
  }

  else
  {
    (*(v52 + 56))();
  }

  v99 = MEMORY[0x277CDFA10];
  if (!a5)
  {
    v111 = 1;
    v112 = v177;
    v113 = v176;
LABEL_21:
    (*(v174 + 56))(v113, v111, 1, v112);
    v150 = v192;
    v151 = v173;
    sub_20C5E574C(v192, v173, &qword_27C7CF228, &qword_20C6545F0);
    sub_20C5E574C(v113, v22, &qword_27C7CF1F0, &qword_20C6570E0);
    v152 = v175;
    sub_20C5E574C(v151, v175, &qword_27C7CF228, &qword_20C6545F0);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF230, &qword_20C6545F8);
    sub_20C5E574C(v22, v152 + *(v153 + 48), &qword_27C7CF1F0, &qword_20C6570E0);
    sub_20C5DBFC4(v113, &qword_27C7CF1F0, &qword_20C6570E0);
    sub_20C5DBFC4(v150, &qword_27C7CF228, &qword_20C6545F0);
    sub_20C5DBFC4(v22, &qword_27C7CF1F0, &qword_20C6570E0);
    return sub_20C5DBFC4(v151, &qword_27C7CF228, &qword_20C6545F0);
  }

  *&v202 = a4;
  *(&v202 + 1) = a5;
  sub_20C602C18();

  v100 = sub_20C64D970();
  v102 = v101;
  *&v202 = v100;
  *(&v202 + 1) = v101;
  v104 = v103 & 1;
  LOBYTE(v203) = v103 & 1;
  *(&v203 + 1) = v105;
  v106 = *v99;
  v107 = sub_20C64D2B0();
  (*(*(v107 - 8) + 104))(v28, v106, v107);
  sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28]);
  result = sub_20C64E010();
  if (result)
  {
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    sub_20C64DAB0();
    sub_20C614CDC(v28);
    sub_20C5E56C0(v100, v102, v104);

    v202 = v190;
    v203 = v189;
    v108 = type metadata accessor for MarketingInlineView();
    sub_20C62E988(v108);
    swift_getKeyPath();
    sub_20C64DF30();

    v109 = (v184 + 104);
    v110 = (v184 + 8);
    if (v202 == 3)
    {
      sub_20C64D890();
    }

    else
    {
      sub_20C64D7F0();
    }

    v112 = v177;
    v113 = v176;
    v114 = v187;
    v115 = v188;
    (*v109)(v187, *MEMORY[0x277CE0A10], v188);
    v116 = sub_20C64D8A0();

    (*v110)(v114, v115);
    v117 = swift_getKeyPath();
    v118 = v160;
    (*(v185 + 32))(v160, v178, v186);
    v119 = &v118[*(v181 + 36)];
    *v119 = v117;
    v119[1] = v116;
    LODWORD(v117) = sub_20C64D5C0();
    v120 = v118;
    v121 = v161;
    sub_20C5E5658(v120, v161, &qword_27C7CF200, &unk_20C655C60);
    *(v121 + *(v180 + 36)) = v117;
    sub_20C62E988(v108);
    swift_getKeyPath();
    sub_20C64DF30();

    v122 = *(&v206 + 1);
    v123 = swift_getKeyPath();
    v124 = v121;
    v125 = v162;
    sub_20C5E5658(v124, v162, &qword_27C7CF208, &qword_20C6545D0);
    v126 = v125 + *(v182 + 36);
    *v126 = v123;
    *(v126 + 8) = v122;
    *(v126 + 16) = 0;
    sub_20C64DE10();
    sub_20C64D330();
    v127 = v163;
    sub_20C5E5658(v125, v163, &qword_27C7CF210, &qword_20C6545D8);
    v128 = (v127 + *(v183 + 36));
    v129 = v205;
    v130 = v207;
    v131 = v208;
    v128[4] = v206;
    v128[5] = v130;
    v128[6] = v131;
    v132 = v203;
    v133 = v204;
    *v128 = v202;
    v128[1] = v132;
    v128[2] = v133;
    v128[3] = v129;
    LOBYTE(v122) = sub_20C64D7B0();
    sub_20C62E988(v108);
    swift_getKeyPath();
    sub_20C64DF30();

    sub_20C64D1A0();
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v142 = v167;
    sub_20C5E5658(v127, v167, &qword_27C7CF218, &qword_20C6545E0);
    v143 = v142 + *(v164 + 36);
    *v143 = v122;
    *(v143 + 8) = v135;
    *(v143 + 16) = v137;
    *(v143 + 24) = v139;
    *(v143 + 32) = v141;
    *(v143 + 40) = 0;
    sub_20C62E988(v108);
    swift_getKeyPath();
    sub_20C64DF30();

    if (v194 == 3)
    {
      v144 = 1.0;
    }

    else
    {
      v144 = 0.8;
    }

    v145 = swift_getKeyPath();
    v146 = v166;
    sub_20C5E5658(v142, v166, &qword_27C7CF1E0, &qword_20C6545B8);
    v147 = v146 + *(v112 + 36);
    *v147 = v145;
    *(v147 + 8) = v144;
    v148 = v146;
    v149 = v165;
    sub_20C5E5658(v148, v165, &qword_27C7CF1E8, &qword_20C6545C0);
    sub_20C5E5658(v149, v113, &qword_27C7CF1E8, &qword_20C6545C0);
    v111 = 0;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20C61468C()
{
  v0 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v0);
  swift_getKeyPath();
  sub_20C64DF30();
}

uint64_t sub_20C614724(uint64_t a1)
{
  v2 = sub_20C64D320();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C6147E8()
{
  result = qword_27C7CF1C0;
  if (!qword_27C7CF1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1A0, &qword_20C654550);
    sub_20C5E5558(&qword_27C7CF1C8, &qword_27C7CF1D0, &qword_20C654560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF1C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 40);
  v1 = type metadata accessor for MarketingInlineView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C64D2D0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[13]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_20C5E3044();
  v11 = *&v4[v1[14] + 8];

  v12 = *&v4[v1[15] + 8];

  v13 = v1[16];
  swift_getFunctionTypeMetadata1();
  v14 = sub_20C64D010();
  (*(*(v14 - 8) + 8))(&v4[v13], v14);
  v15 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  v16 = sub_20C64D010();
  (*(*(v16 - 8) + 8))(&v4[v15], v16);
  return swift_deallocObject();
}

uint64_t sub_20C614AE0()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(*(type metadata accessor for MarketingInlineView() - 8) + 80);
  return sub_20C61468C();
}

unint64_t sub_20C614BA0()
{
  result = qword_27C7CF1D8;
  if (!qword_27C7CF1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1A0, &qword_20C654550);
    sub_20C6147E8();
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF1D8);
  }

  return result;
}

uint64_t sub_20C614C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C614CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioLanguageEngagementSheetContentMargins.overriding(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>)
{
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if ((a2 & 1) == 0)
  {
    v10 = *&result;
  }

  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  if ((a6 & 1) == 0)
  {
    v12 = a5;
  }

  *a9 = v10;
  a9[1] = v11;
  if (a8)
  {
    v14 = v13;
  }

  else
  {
    v14 = a7;
  }

  a9[2] = v12;
  a9[3] = v14;
  return result;
}

BOOL static MarketingOfferTemplateItemCount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_20C614DC4()
{
  if (*v0)
  {
    result = 0x6574696D696C6E75;
  }

  else
  {
    result = 0x6465786966;
  }

  *v0;
  return result;
}

uint64_t sub_20C614E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C614EE0(uint64_t a1)
{
  v2 = sub_20C615348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C614F1C(uint64_t a1)
{
  v2 = sub_20C615348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C614F58(uint64_t a1)
{
  v2 = sub_20C6153F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C614F94(uint64_t a1)
{
  v2 = sub_20C6153F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C614FD0(uint64_t a1)
{
  v2 = sub_20C61539C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C61500C(uint64_t a1)
{
  v2 = sub_20C61539C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateItemCount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF240, &qword_20C6546A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = v19 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF248, &qword_20C6546A8);
  v20 = *(v22 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF250, &qword_20C6546B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v19[1] = *v1;
  v14 = *(v1 + 8);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C615348();
  sub_20C64E500();
  if (v14)
  {
    v26 = 1;
    sub_20C61539C();
    v16 = v21;
    sub_20C64E3B0();
    (*(v23 + 8))(v16, v24);
  }

  else
  {
    v25 = 0;
    sub_20C6153F0();
    sub_20C64E3B0();
    v18 = v22;
    sub_20C64E400();
    (*(v20 + 8))(v8, v18);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_20C615348()
{
  result = qword_27C7CF258;
  if (!qword_27C7CF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF258);
  }

  return result;
}

unint64_t sub_20C61539C()
{
  result = qword_27C7CF260;
  if (!qword_27C7CF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF260);
  }

  return result;
}

unint64_t sub_20C6153F0()
{
  result = qword_27C7CF268;
  if (!qword_27C7CF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF268);
  }

  return result;
}

uint64_t MarketingOfferTemplateItemCount.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF270, &qword_20C6546B8);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF278, &qword_20C6546C0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF280, &unk_20C6546C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C615348();
  v19 = v41;
  sub_20C64E4F0();
  if (!v19)
  {
    v20 = v11;
    v36 = v8;
    v41 = v13;
    v21 = v39;
    v22 = v40;
    v23 = sub_20C64E3A0();
    v24 = (2 * *(v23 + 16)) | 1;
    v43 = v23;
    v44 = v23 + 32;
    v45 = 0;
    v46 = v24;
    v25 = sub_20C5DDAF0();
    if (v25 == 2 || v45 != v46 >> 1)
    {
      v27 = sub_20C64E290();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v29 = &type metadata for MarketingOfferTemplateItemCount;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = v25;
      if (v25)
      {
        v48 = 1;
        sub_20C61539C();
        sub_20C64E320();
        v26 = v41;
        (*(v21 + 8))(v7, v38);
        (*(v26 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v33 = 0;
      }

      else
      {
        v48 = 0;
        sub_20C6153F0();
        sub_20C64E320();
        v32 = v41;
        v34 = v36;
        v33 = sub_20C64E380();
        (*(v37 + 8))(v20, v34);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
      }

      *v22 = v33;
      *(v22 + 8) = v47 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t MarketingOfferTemplateItemCount.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F301800](0);
  }

  return MEMORY[0x20F301800](v1);
}

uint64_t MarketingOfferTemplateItemCount.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x20F301800](0);
  }

  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C6159F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x20F301800](0);
  }

  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C615A54()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F301800](0);
  }

  return MEMORY[0x20F301800](v1);
}

uint64_t sub_20C615A9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x20F301800](0);
  }

  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C615B00()
{
  result = qword_27C7CF288;
  if (!qword_27C7CF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF288);
  }

  return result;
}

uint64_t sub_20C615B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferTemplateItemCount(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MarketingOfferTemplateItemCount(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20C615BCC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C615BE8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_20C615C4C()
{
  result = qword_27C7CF290;
  if (!qword_27C7CF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF290);
  }

  return result;
}

unint64_t sub_20C615CA4()
{
  result = qword_27C7CF298;
  if (!qword_27C7CF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF298);
  }

  return result;
}

unint64_t sub_20C615CFC()
{
  result = qword_27C7CF2A0;
  if (!qword_27C7CF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2A0);
  }

  return result;
}

unint64_t sub_20C615D54()
{
  result = qword_27C7CF2A8;
  if (!qword_27C7CF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2A8);
  }

  return result;
}

unint64_t sub_20C615DAC()
{
  result = qword_27C7CF2B0;
  if (!qword_27C7CF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2B0);
  }

  return result;
}

unint64_t sub_20C615E04()
{
  result = qword_27C7CF2B8;
  if (!qword_27C7CF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2B8);
  }

  return result;
}

unint64_t sub_20C615E5C()
{
  result = qword_27C7CF2C0;
  if (!qword_27C7CF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2C0);
  }

  return result;
}

unint64_t sub_20C615EB4()
{
  result = qword_27C7CF2C8;
  if (!qword_27C7CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2C8);
  }

  return result;
}

uint64_t sub_20C615F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C615FB0(uint64_t a1)
{
  v2 = sub_20C616278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C615FEC(uint64_t a1)
{
  v2 = sub_20C616278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C616028(uint64_t a1)
{
  v2 = sub_20C6162CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C616064(uint64_t a1)
{
  v2 = sub_20C6162CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateParserType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2D0, &qword_20C654AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2D8, &qword_20C654AC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C616278();
  sub_20C64E500();
  sub_20C6162CC();
  sub_20C64E3B0();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_20C616278()
{
  result = qword_27C7CF2E0;
  if (!qword_27C7CF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2E0);
  }

  return result;
}

unint64_t sub_20C6162CC()
{
  result = qword_27C7CF2E8;
  if (!qword_27C7CF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF2E8);
  }

  return result;
}

uint64_t MarketingOfferTemplateParserType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2F0, &qword_20C654AD0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2F8, &unk_20C654AD8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C616278();
  sub_20C64E4F0();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_20C64E3A0();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_20C5DD18C() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_20C64E290();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
    *v19 = &type metadata for MarketingOfferTemplateParserType;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_20C6162CC();
  sub_20C64E320();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_20C616684(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2D0, &qword_20C654AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF2D8, &qword_20C654AC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C616278();
  sub_20C64E500();
  sub_20C6162CC();
  sub_20C64E3B0();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t MarketingOfferTemplateParserType.hashValue.getter()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

unint64_t sub_20C6168CC()
{
  result = qword_27C7CF300;
  if (!qword_27C7CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF300);
  }

  return result;
}

unint64_t sub_20C616954()
{
  result = qword_27C7CF308;
  if (!qword_27C7CF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF308);
  }

  return result;
}

unint64_t sub_20C6169AC()
{
  result = qword_27C7CF310;
  if (!qword_27C7CF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF310);
  }

  return result;
}

unint64_t sub_20C616A04()
{
  result = qword_27C7CF318;
  if (!qword_27C7CF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF318);
  }

  return result;
}

unint64_t sub_20C616A5C()
{
  result = qword_27C7CF320;
  if (!qword_27C7CF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF320);
  }

  return result;
}

unint64_t sub_20C616AB4()
{
  result = qword_27C7CF328;
  if (!qword_27C7CF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF328);
  }

  return result;
}

uint64_t MarketingPlacement.offerHint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

FitnessMarketing::MarketingPlacement __swiftcall MarketingPlacement.init(placement:offerHint:)(FitnessMarketing::MarketingOfferPlacement placement, Swift::String_optional offerHint)
{
  *v2 = placement;
  *(v2 + 8) = offerHint;
  result.offerHint = offerHint;
  result.placement = placement;
  return result;
}

uint64_t sub_20C616B4C()
{
  if (*v0)
  {
    return 0x6E6948726566666FLL;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_20C616B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6948726566666FLL && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C616C68(uint64_t a1)
{
  v2 = sub_20C616E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C616CA4(uint64_t a1)
{
  v2 = sub_20C616E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingPlacement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF330, &qword_20C654DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C616E84();
  sub_20C64E500();
  v16 = v9;
  v15 = 0;
  sub_20C616ED8();
  sub_20C64E410();
  if (!v2)
  {
    v14 = 1;
    sub_20C64E3C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C616E84()
{
  result = qword_27C7CF338;
  if (!qword_27C7CF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF338);
  }

  return result;
}

unint64_t sub_20C616ED8()
{
  result = qword_27C7CF340;
  if (!qword_27C7CF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF340);
  }

  return result;
}

uint64_t MarketingPlacement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF348, &qword_20C654DB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C616E84();
  sub_20C64E4F0();
  if (!v2)
  {
    v18 = 0;
    sub_20C6170EC();
    sub_20C64E390();
    v11 = v19;
    v17 = 1;
    v13 = sub_20C64E340();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C6170EC()
{
  result = qword_27C7CF350;
  if (!qword_27C7CF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF350);
  }

  return result;
}

uint64_t MarketingPlacement.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MarketingOfferPlacement.rawValue.getter(*v0);
  sub_20C64E090();

  if (!v2)
  {
    return sub_20C64E4C0();
  }

  sub_20C64E4C0();

  return sub_20C64E090();
}

uint64_t MarketingPlacement.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v3);
  sub_20C64E090();

  sub_20C64E4C0();
  if (v2)
  {
    sub_20C64E090();
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C6172AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v3);
  sub_20C64E090();

  sub_20C64E4C0();
  if (v2)
  {
    sub_20C64E090();
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C617348()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MarketingOfferPlacement.rawValue.getter(*v0);
  sub_20C64E090();

  if (!v2)
  {
    return sub_20C64E4C0();
  }

  sub_20C64E4C0();

  return sub_20C64E090();
}

uint64_t sub_20C6173E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v3);
  sub_20C64E090();

  sub_20C64E4C0();
  if (v2)
  {
    sub_20C64E090();
  }

  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *a2;
  v7 = MarketingOfferPlacement.rawValue.getter(*a1);
  v9 = v8;
  if (v7 == MarketingOfferPlacement.rawValue.getter(v6) && v9 == v10)
  {

    if (v2)
    {
      return v4 && (v3 == v5 && v2 == v4 || (sub_20C64E430() & 1) != 0);
    }
  }

  else
  {
    v12 = sub_20C64E430();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2)
    {
      return v4 && (v3 == v5 && v2 == v4 || (sub_20C64E430() & 1) != 0);
    }
  }

  return !v4;
}

uint64_t sub_20C617574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20C6175D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_20C617638()
{
  result = qword_27C7CF358;
  if (!qword_27C7CF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF358);
  }

  return result;
}

unint64_t sub_20C617690()
{
  result = qword_27C7CF360;
  if (!qword_27C7CF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF360);
  }

  return result;
}

unint64_t sub_20C6176E8()
{
  result = qword_27C7CF368;
  if (!qword_27C7CF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF368);
  }

  return result;
}

uint64_t sub_20C61773C()
{
  sub_20C5F9334(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_20C61779C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = [a1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE948, &unk_20C655040);
  v12 = sub_20C64DFF0();

  if (!*(v12 + 16) || (v13 = sub_20C5DFFBC(0x7475626972747461, 0xEA00000000007365), (v14 & 1) == 0))
  {

    goto LABEL_7;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_unknownObjectRetain();

  v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v20 = type metadata accessor for MarketingOffer();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  v16 = v44;
  v17 = [a1 itemActions];
  if (v17)
  {
    v18 = v17;
    sub_20C5F94D4(0, &qword_281105768, 0x277CEE530);
    v19 = sub_20C64E110();
  }

  else
  {
    v19 = 0;
  }

  v43 = sub_20C617BAC(v19);

  sub_20C6181FC(v16, 0x666C656853706F74, 0xE800000000000000, a1, v10);

  v22 = [a1 itemID];
  if (v22)
  {
    v23 = v22;
    v42 = sub_20C64E050();
    v25 = v24;
  }

  else
  {
    v42 = 0;
    v25 = 0;
  }

  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = sub_20C64E050();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [a1 subtitle];
  if (v31)
  {
    v32 = v31;
    v33 = sub_20C64E050();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  sub_20C5E6BD0(v10, v8);
  v36 = type metadata accessor for MarketingOffer();
  v37 = (a2 + v36[6]);
  *v37 = v42;
  v37[1] = v25;
  v38 = (a2 + v36[8]);
  *v38 = v28;
  v38[1] = v30;
  v39 = (a2 + v36[7]);
  *v39 = v33;
  v39[1] = v35;
  *a2 = v43;
  sub_20C5E6BD0(v8, a2 + v36[5]);
  v40 = v36[9];
  sub_20C5F94D4(0, &qword_281105770, 0x277CEE528);
  v41 = a1;
  sub_20C64D0D0();
  sub_20C5DBFC4(v8, &qword_27C7CE3F8, &unk_20C650590);
  sub_20C5DBFC4(v10, &qword_27C7CE3F8, &unk_20C650590);
  return (*(*(v36 - 1) + 56))(a2, 0, 1, v36);
}

void *sub_20C617BAC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF80, &qword_20C64F150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v55 - v4;
  v64 = type metadata accessor for MarketingAction();
  v5 = *(v64 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE638, &unk_20C651280);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for MarketingActionItem();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - v19;
  if (a1)
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_36;
    }

    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v21;
    if (v21)
    {
      while (1)
      {
        v75 = sub_20C6186D4(v21);
        v22 = 0;
        v73 = a1 & 0xC000000000000001;
        v71 = (v68 + 56);
        v61 = v5 + 6;
        v23 = MEMORY[0x277D84F90];
        v70 = (v68 + 48);
        v55 = v14;
        v56 = a1;
        v72 = v20;
        v62 = v18;
        while (1)
        {
          if (v73)
          {
            v24 = MEMORY[0x20F3015C0](v22, a1);
          }

          else
          {
            if (v22 >= *(v20 + 16))
            {
              goto LABEL_35;
            }

            v24 = *(a1 + 8 * v22 + 32);
          }

          v5 = v24;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v22 >= *(v75 + 2))
          {
            v33 = 1;
          }

          else
          {
            v69 = v75[v22 + 32];
            v26 = v24;
            v27 = [v26 callToActionLabel];
            if (v27)
            {
              v28 = v27;
              v66 = sub_20C64E050();
              v30 = v29;

              v31 = v26;
              v32 = v65;
              sub_20C5FCD30(v31, v65);
              if ((*v61)(v32, 1, v64) == 1)
              {

                sub_20C5DBFC4(v32, &qword_27C7CDF80, &qword_20C64F150);
                v33 = 1;
              }

              else
              {
                v58 = v30;
                v34 = v57;
                sub_20C618968(v32, v57, type metadata accessor for MarketingAction);
                v35 = [v31 offerID];
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_20C64E050();
                  v59 = v38;
                  v60 = v37;
                }

                else
                {
                  v59 = 0;
                  v60 = 0;
                }

                sub_20C5DFB04(v34, v63);
                v39 = [v31 disclaimerText];
                v40 = v34;
                if (v39)
                {
                  v41 = v39;
                  v42 = sub_20C64E050();
                  v44 = v43;

                  sub_20C5DFB68(v40);
                }

                else
                {
                  sub_20C5DFB68(v34);

                  v42 = 0;
                  v44 = 0;
                }

                v45 = v55;
                a1 = v56;
                v46 = &v13[v55[5]];
                v47 = v59;
                *v46 = v60;
                *(v46 + 1) = v47;
                sub_20C618968(v63, v13, type metadata accessor for MarketingAction);
                v33 = 0;
                v48 = &v13[v45[6]];
                *v48 = v42;
                v48[1] = v44;
                v14 = v45;
                v13[v45[7]] = v69;
                v49 = &v13[v45[8]];
                v50 = v58;
                *v49 = v66;
                v49[1] = v50;
              }

              v18 = v62;
            }

            else
            {

              v33 = 1;
            }

            v20 = v72;
          }

          (*v71)(v13, v33, 1, v14);

          if ((*v70)(v13, 1, v14) == 1)
          {
            sub_20C5DBFC4(v13, &qword_27C7CE638, &unk_20C651280);
          }

          else
          {
            v51 = v67;
            sub_20C618968(v13, v67, type metadata accessor for MarketingActionItem);
            sub_20C618968(v51, v18, type metadata accessor for MarketingActionItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_20C5F8560(0, v23[2] + 1, 1, v23);
            }

            v53 = v23[2];
            v52 = v23[3];
            v5 = (v53 + 1);
            if (v53 >= v52 >> 1)
            {
              v23 = sub_20C5F8560(v52 > 1, v53 + 1, 1, v23);
            }

            v23[2] = v5;
            sub_20C618968(v18, v23 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v53, type metadata accessor for MarketingActionItem);
            v20 = v72;
          }

          ++v22;
          if (v25 == v74)
          {

            return v23;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v74 = sub_20C64E2C0();
        if (!v74)
        {
          break;
        }

        v21 = sub_20C64E2C0();
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20C6181FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41[-v12];
  v14 = sub_20C64CF10();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v19 = sub_20C5DFFBC(0xD000000000000010, 0x800000020C65A250);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_20C5DFF60(*(a1 + 56) + 32 * v19, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = v40;
  if (!*(v40 + 16))
  {
    goto LABEL_12;
  }

  v22 = sub_20C5DFFBC(a2, a3);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_20C5DFF60(*(v21 + 56) + 32 * v22, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = v40;
  if (!*(v40 + 16) || (v25 = sub_20C5DFFBC(7107189, 0xE300000000000000), (v26 & 1) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_20C5DFF60(*(v24 + 56) + 32 * v25, v41);

  if (swift_dynamicCast())
  {
    sub_20C64CF00();

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v36 = *(v15 + 32);
      v36(v18, v13, v14);
      sub_20C64D020();
      v37 = sub_20C64D030();
      (*(*(v37 - 8) + 56))(a5, 0, 1, v37);
      v38 = type metadata accessor for MarketingArtwork();
      v39 = *(v38 + 20);
      v36((a5 + v39), v18, v14);
      (*(v15 + 56))(a5 + v39, 0, 1, v14);
      return (*(*(v38 - 8) + 56))(a5, 0, 1, v38);
    }

    sub_20C5DBFC4(v13, &qword_27C7CF080, &qword_20C654360);
  }

LABEL_13:
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v27 = sub_20C64D160();
  __swift_project_value_buffer(v27, qword_27C7DD450);
  v28 = a4;
  v29 = sub_20C64D140();
  v30 = sub_20C64E1B0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_20C5D2000, v29, v30, "Failed to fetch marketing artwork for offer: %@", v31, 0xCu);
    sub_20C5DBFC4(v32, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v32, -1, -1);
    MEMORY[0x20F301F10](v31, -1, -1);
  }

  v34 = type metadata accessor for MarketingArtwork();
  return (*(*(v34 - 8) + 56))(a5, 1, 1, v34);
}

char *sub_20C6186D4(uint64_t a1)
{
  if (*(v1 + 24))
  {

    v4 = *(result + 2);
    if (v4)
    {
LABEL_3:
      v5 = result + 48;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v12 = *(v6 + 16);
        if (a1 > v12)
        {
          v13 = *(v5 - 1);
          if (*v5)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (a1 - v12 >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = a1 - v12;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }

          if (v14)
          {
            v7 = *(v5 - 16);
            v8 = *v5 & 0x80;
            v9 = sub_20C64E120();
            *(v9 + 16) = v14;
            memset((v9 + 32), v8 | v7, v14);
          }

          else
          {
            v9 = MEMORY[0x277D84F90];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF370, &qword_20C655028);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C64FE00;
          *(inited + 32) = v6;
          *(inited + 40) = v9;
          v6 = sub_20C6189D0(inited);
          swift_setDeallocating();
          v11 = *(inited + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF378, &qword_20C655030);
          result = swift_arrayDestroy();
        }

        v5 += 24;
        if (!--v4)
        {

          return v6;
        }
      }
    }
  }

  else
  {
    if (*(v1 + 16) == 3)
    {
      result = &unk_28237C740;
    }

    else
    {
      result = &unk_28237C778;
    }

    v4 = *(result + 2);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20C618884@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_20C5F9328(v2, v3);
}

uint64_t sub_20C618898(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *(a1 + 8);
  *(result + 16) = *a1;
  *(result + 24) = v3;
  return result;
}

void (*sub_20C6188E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F3015C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20C618960;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C618968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C6189D0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF380, &qword_20C655038);
          v16 = swift_allocObject();
          v17 = 2 * _swift_stdlib_malloc_size(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    *(v5 + 2) = v25;
    return v5;
  }

LABEL_33:
  __break(1u);
  return result;
}

void AudioLanguageEngagementSheetContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_20C618BE4()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C618C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C619568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C618C7C(uint64_t a1)
{
  v2 = sub_20C618F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C618CB8(uint64_t a1)
{
  v2 = sub_20C618F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF390, &qword_20C655050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C618F10();
  sub_20C64E500();
  v16 = v10;
  HIBYTE(v15) = 0;
  sub_20C5EB44C();
  sub_20C64E410();
  if (!v2)
  {
    v16 = v9;
    HIBYTE(v15) = 1;
    sub_20C64E410();
    v16 = v12;
    HIBYTE(v15) = 2;
    sub_20C64E410();
    v16 = v11;
    HIBYTE(v15) = 3;
    sub_20C64E410();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20C618F10()
{
  result = qword_27C7CF398;
  if (!qword_27C7CF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF398);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetContentMargins.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF3A0, &qword_20C655058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C618F10();
  sub_20C64E4F0();
  if (!v2)
  {
    HIBYTE(v16) = 0;
    sub_20C5EB4A0();
    sub_20C64E390();
    v11 = v17;
    HIBYTE(v16) = 1;
    sub_20C64E390();
    v12 = v17;
    HIBYTE(v16) = 2;
    sub_20C64E390();
    v14 = v17;
    HIBYTE(v16) = 3;
    sub_20C64E390();
    (*(v6 + 8))(v9, v5);
    v15 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AudioLanguageEngagementSheetContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F301820](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x20F301820](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F301820](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x20F301820](*&v7);
}

uint64_t AudioLanguageEngagementSheetContentMargins.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_20C64E4A0();
  AudioLanguageEngagementSheetContentMargins.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C6192C4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_20C64E4A0();
  AudioLanguageEngagementSheetContentMargins.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C619314()
{
  v2 = *v0;
  v3 = v0[1];
  sub_20C64E4A0();
  AudioLanguageEngagementSheetContentMargins.hash(into:)();
  return sub_20C64E4E0();
}

unint64_t sub_20C6193A0()
{
  result = qword_27C7CF3A8;
  if (!qword_27C7CF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3A8);
  }

  return result;
}

uint64_t sub_20C6193F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C619414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_20C619464()
{
  result = qword_27C7CF3B0;
  if (!qword_27C7CF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3B0);
  }

  return result;
}

unint64_t sub_20C6194BC()
{
  result = qword_27C7CF3B8;
  if (!qword_27C7CF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3B8);
  }

  return result;
}

unint64_t sub_20C619514()
{
  result = qword_27C7CF3C0;
  if (!qword_27C7CF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3C0);
  }

  return result;
}

uint64_t sub_20C619568(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t BubbleTipRequestWrapper.__allocating_init(identifier:request:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier;
  v9 = sub_20C64CF70();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request) = a2;
  return v7;
}

uint64_t BubbleTipRequestWrapper.init(identifier:request:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier;
  v6 = sub_20C64CF70();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request) = a2;
  return v2;
}

uint64_t BubbleTipRequestWrapper.deinit()
{
  v1 = OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier;
  v2 = sub_20C64CF70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BubbleTipRequestWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier;
  v2 = sub_20C64CF70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_20C61990C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_20C64CF50();
}

uint64_t type metadata accessor for BubbleTipRequestWrapper()
{
  result = qword_27C7CF3C8;
  if (!qword_27C7CF3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C61997C()
{
  result = sub_20C64CF70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 MarketingItemView.init(placement:account:bag:shouldAnonymizeMetrics:metricsOverlay:onDismiss:onPurchase:onCarrierLink:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12)
{
  a9[1].n128_u8[8] = *a1;
  result = *(a1 + 8);
  a9[2] = result;
  a9->n128_u64[0] = a2;
  a9->n128_u64[1] = a3;
  a9[3].n128_u8[0] = a4;
  a9[1].n128_u64[0] = a5;
  a9[4].n128_u64[1] = a6;
  a9[5].n128_u64[0] = a7;
  a9[5].n128_u64[1] = a8;
  a9[6].n128_u64[0] = a10;
  a9[3].n128_u64[1] = a11;
  a9[4].n128_u64[0] = a12;
  return result;
}

char *MarketingItemView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v0 + 48);
  v36 = v0[8];
  v37 = v0[7];
  v38 = v0[10];
  v39 = v0[9];
  v34 = v0[12];
  v35 = v0[11];
  MarketingOfferPlacement.rawValue.getter(*(v0 + 24));
  v7 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
  v8 = sub_20C64E040();
  v9 = sub_20C64E040();

  v10 = [v7 initWithServiceType:v8 placement:v9 bag:v2];

  v11 = v10;
  [v11 setAccount_];
  v12 = v11;
  if (v4)
  {
    v4 = sub_20C64E040();
  }

  [v11 setOfferHints_];

  [v11 setAnonymousMetrics_];
  if (v3)
  {
    sub_20C60E194(v3);
    v13 = sub_20C64DFE0();
  }

  else
  {
    v13 = 0;
  }

  [v11 setMetricsOverlay_];

  v14 = sub_20C64E040();
  [v11 setMediaClientIdentifier_];

  v15 = [objc_opt_self() currentProcess];
  v16 = sub_20C64E040();
  [v15 setTreatmentNamespace_];

  [v11 setClientInfo_];
  v17 = OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator;
  v18 = *&v11[OBJC_IVAR____TtC16FitnessMarketing27MarketingItemViewController_coordinator];
  v19 = &v18[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onPurchase];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = v35;
  v19[1] = v34;
  v22 = v18;
  sub_20C5D6A4C(v35);
  sub_20C5D6A5C(v20);

  v23 = *&v11[v17];
  v24 = &v23[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onCarrierLink];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  *v24 = v37;
  v24[1] = v36;
  v27 = v23;
  sub_20C5D6A4C(v37);
  sub_20C5D6A5C(v25);

  v28 = *&v11[v17];
  v29 = &v28[OBJC_IVAR____TtC16FitnessMarketing31MarketingDynamicViewCoordinator_onDismiss];
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  *v29 = v39;
  v29[1] = v38;
  v32 = v28;
  sub_20C5D6A4C(v39);
  sub_20C5D6A5C(v30);

  return v11;
}

unint64_t sub_20C619DFC()
{
  result = qword_27C7CF3E0;
  if (!qword_27C7CF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3E0);
  }

  return result;
}

uint64_t sub_20C619E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C61A020();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20C619EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C61A020();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20C619F1C()
{
  sub_20C61A020();
  sub_20C64D6B0();
  __break(1u);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C619F70(uint64_t a1, int a2)
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

uint64_t sub_20C619FB8(uint64_t result, int a2, int a3)
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

unint64_t sub_20C61A020()
{
  result = qword_27C7CF3E8;
  if (!qword_27C7CF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF3E8);
  }

  return result;
}

uint64_t sub_20C61A0A8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  LODWORD(v108) = a1;
  v101 = a2;
  v107 = sub_20C64D510();
  v94 = *(v107 - 8);
  v2 = *(v94 + 8);
  MEMORY[0x28223BE20](v107);
  v93 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF460, &qword_20C6555A8);
  v4 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v88 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF458, &qword_20C6555A0);
  v6 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF450, &qword_20C655598);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v92 = &v88 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF468, &qword_20C6555B0);
  v95 = *(v106 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v106);
  v13 = &v88 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF470, &qword_20C6555B8);
  v14 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v104 = &v88 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF478, &qword_20C6555C0);
  v16 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v88 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF438, &qword_20C655558);
  v18 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v99 = &v88 - v19;
  v100 = sub_20C64D880();
  v20 = *(v100 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v100);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC8, &unk_20C653780);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - v30;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF440, &qword_20C655560);
  v32 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v34 = &v88 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF480, &qword_20C6555C8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v40 = &v88 - v39;
  v41 = v108;
  v105 = v8;
  if (v108 < 2u)
  {
    v94 = v40;
    v95 = v38;
    v108 = v37;
    sub_20C64D720();
    KeyPath = swift_getKeyPath();
    v43 = &v31[*(v28 + 36)];
    *v43 = KeyPath;
    v43[1] = 0x3FE6666666666666;
    v44 = *MEMORY[0x277CDFA10];
    v45 = sub_20C64D2B0();
    (*(*(v45 - 8) + 104))(v27, v44, v45);
    sub_20C61C320(&qword_281105B08, MEMORY[0x277CDFA28]);
    if (sub_20C64E010())
    {
      sub_20C60936C();
      sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
      sub_20C64DAB0();
      sub_20C5DBFC4(v27, &qword_27C7CE290, &unk_20C655580);
      sub_20C5DBFC4(v31, &qword_27C7CEDC8, &unk_20C653780);
      sub_20C64D8C0();
      sub_20C64D830();
      sub_20C64D870();

      v46 = v100;
      (*(v20 + 104))(v23, *MEMORY[0x277CE0A10], v100);
      v47 = sub_20C64D8A0();

      (*(v20 + 8))(v23, v46);
      v48 = swift_getKeyPath();
      v49 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC0, &unk_20C655570) + 36)];
      *v49 = v48;
      v49[1] = v47;
      v50 = sub_20C64DC10();
      *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF448, &qword_20C655568) + 36)] = v50;
      v51 = swift_getKeyPath();
      v52 = v96;
      v53 = &v34[*(v96 + 36)];
      *v53 = v51;
      *(v53 + 1) = 1;
      v53[16] = 0;
      *&v113 = 0x4000000000000000;
      v54 = sub_20C61BB28();
      v55 = sub_20C61BC98();
      v56 = v94;
      sub_20C64DA20();
      sub_20C5DBFC4(v34, &qword_27C7CF440, &qword_20C655560);
      v57 = v95;
      v58 = v108;
      (*(v95 + 16))(v98, v56, v108);
      swift_storeEnumTagMultiPayload();
      *&v113 = v52;
      *(&v113 + 1) = &type metadata for ReversedTitleIconLabelStyle;
      *&v114 = v54;
      *(&v114 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      v59 = v99;
      sub_20C64D550();
      sub_20C5E574C(v59, v104, &qword_27C7CF438, &qword_20C655558);
      swift_storeEnumTagMultiPayload();
      sub_20C61BA44();
      v60 = sub_20C61BCEC();
      v61 = sub_20C61C320(&qword_281105990, MEMORY[0x277CDDF40]);
      *&v113 = v105;
      *(&v113 + 1) = v107;
      *&v114 = v60;
      *(&v114 + 1) = v61;
      swift_getOpaqueTypeConformance2();
      sub_20C64D550();
      sub_20C5DBFC4(v59, &qword_27C7CF438, &qword_20C655558);
      return (*(v57 + 8))(v56, v58);
    }

    __break(1u);
    goto LABEL_8;
  }

  v63 = v91;
  v64 = v89;
  v65 = v90;
  v66 = v88;
  v108 = v13;
  if (v41 != 3)
  {
LABEL_8:
    result = sub_20C64E2B0();
    __break(1u);
    return result;
  }

  sub_20C64D720();
  v67 = swift_getKeyPath();
  v68 = (v65 + *(v28 + 36));
  *v68 = v67;
  v68[1] = 0x3FE6666666666666;
  sub_20C64D800();
  sub_20C64D830();
  sub_20C64D870();

  v69 = v100;
  (*(v20 + 104))(v23, *MEMORY[0x277CE0A10], v100);
  v70 = sub_20C64D8A0();

  (*(v20 + 8))(v23, v69);
  v71 = swift_getKeyPath();
  v72 = (v65 + *(v63 + 36));
  *v72 = v71;
  v72[1] = v70;
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v65, v66, &qword_27C7CF460, &qword_20C6555A8);
  v73 = (v66 + *(v64 + 36));
  v74 = v118;
  v73[4] = v117;
  v73[5] = v74;
  v73[6] = v119;
  v75 = v114;
  *v73 = v113;
  v73[1] = v75;
  v76 = v116;
  v73[2] = v115;
  v73[3] = v76;
  v77 = swift_getKeyPath();
  v78 = v92;
  sub_20C5E5658(v66, v92, &qword_27C7CF458, &qword_20C6555A0);
  v79 = v105;
  v80 = v78 + *(v105 + 36);
  *v80 = v77;
  *(v80 + 8) = 1;
  *(v80 + 16) = 0;
  v81 = v93;
  sub_20C64D500();
  v82 = sub_20C61BCEC();
  v83 = sub_20C61C320(&qword_281105990, MEMORY[0x277CDDF40]);
  v84 = v107;
  v85 = v108;
  sub_20C64DA20();
  (*(v94 + 1))(v81, v84);
  sub_20C5DBFC4(v78, &qword_27C7CF450, &qword_20C655598);
  v86 = v95;
  v87 = v106;
  (*(v95 + 16))(v104, v85, v106);
  swift_storeEnumTagMultiPayload();
  sub_20C61BA44();
  v109 = v79;
  v110 = v84;
  v111 = v82;
  v112 = v83;
  swift_getOpaqueTypeConformance2();
  sub_20C64D550();
  return (*(v86 + 8))(v85, v87);
}

uint64_t sub_20C61AE1C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v83 = a3;
  v71 = sub_20C64D490();
  v72 = *(v71 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF3F0, &qword_20C655508);
  v67 = *(v69 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = &v63 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF3F8, &qword_20C655510);
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v63 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF400, &qword_20C655518);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v63 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF408, &qword_20C655520);
  v12 = *(*(v79 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v79);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF410, &qword_20C655528);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v63 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF418, &qword_20C655530);
  v20 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v76 = &v63 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF420, &unk_20C655538);
  v22 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v63 - v23;
  v24 = sub_20C64D740();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF8, &qword_20C6535C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF428, &qword_20C655548);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v63 - v31;
  if (a1 < 2u)
  {
    v33 = v78;
    sub_20C64D710();
    (*(v25 + 16))(&v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v24);
    v34 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v35 = swift_allocObject();
    v36 = (*(v25 + 32))(v35 + v34, &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    MEMORY[0x28223BE20](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF430, &qword_20C655550);
    sub_20C61B924();
    sub_20C64DD30();
    LOBYTE(v34) = sub_20C64D7B0();
    sub_20C64D1A0();
    v37 = &v32[*(v29 + 36)];
    *v37 = v34;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_20C5E574C(v32, v76, &qword_27C7CF428, &qword_20C655548);
    swift_storeEnumTagMultiPayload();
    sub_20C61BF74();
    v42 = v77;
    sub_20C64D550();
    sub_20C5E574C(v42, v80, &qword_27C7CF420, &unk_20C655538);
    swift_storeEnumTagMultiPayload();
    sub_20C61BEE8();
    sub_20C61C02C();
    sub_20C64D550();
    sub_20C5DBFC4(v42, &qword_27C7CF420, &unk_20C655538);
    v43 = v32;
    v44 = &qword_27C7CF428;
    v45 = &qword_20C655548;
    return sub_20C5DBFC4(v43, v44, v45);
  }

  v76 = v15;
  v46 = v78;
  v77 = v17;
  if (a1 == 3)
  {
    sub_20C64D710();
    (*(v25 + 16))(&v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v24);
    v47 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v48 = swift_allocObject();
    v49 = (*(v25 + 32))(v48 + v47, &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    MEMORY[0x28223BE20](v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF430, &qword_20C655550);
    sub_20C61B924();
    v50 = v64;
    sub_20C64DD30();
    v51 = v65;
    sub_20C64D480();
    sub_20C5E5558(&qword_281105840, &qword_27C7CF3F0, &qword_20C655508);
    sub_20C61C320(&qword_281105998, MEMORY[0x277CDDE40]);
    v52 = v68;
    v53 = v69;
    v54 = v71;
    sub_20C64DA40();
    (*(v72 + 8))(v51, v54);
    (*(v67 + 8))(v50, v53);
    sub_20C64DE00();
    sub_20C64D330();
    v55 = v70;
    (*(v73 + 32))(v70, v52, v74);
    v56 = (v55 + *(v66 + 36));
    v57 = v89;
    v56[4] = v88;
    v56[5] = v57;
    v56[6] = v90;
    v58 = v85;
    *v56 = v84;
    v56[1] = v58;
    v59 = v87;
    v56[2] = v86;
    v56[3] = v59;
    v60 = v76;
    sub_20C5E5658(v55, v76, &qword_27C7CF400, &qword_20C655518);
    *(v60 + *(v79 + 36)) = 256;
    v61 = v77;
    sub_20C5E5658(v60, v77, &qword_27C7CF408, &qword_20C655520);
    sub_20C5E574C(v61, v80, &qword_27C7CF408, &qword_20C655520);
    swift_storeEnumTagMultiPayload();
    sub_20C61BEE8();
    sub_20C61C02C();
    sub_20C64D550();
    v43 = v61;
    v44 = &qword_27C7CF408;
    v45 = &qword_20C655520;
    return sub_20C5DBFC4(v43, v44, v45);
  }

  result = sub_20C64E2B0();
  __break(1u);
  return result;
}

unint64_t sub_20C61B924()
{
  result = qword_281105918;
  if (!qword_281105918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF430, &qword_20C655550);
    sub_20C61BA44();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF450, &qword_20C655598);
    sub_20C64D510();
    sub_20C61BCEC();
    sub_20C61C320(&qword_281105990, MEMORY[0x277CDDF40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105918);
  }

  return result;
}

unint64_t sub_20C61BA44()
{
  result = qword_2811058F8;
  if (!qword_2811058F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF438, &qword_20C655558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF440, &qword_20C655560);
    sub_20C61BB28();
    sub_20C61BC98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811058F8);
  }

  return result;
}

unint64_t sub_20C61BB28()
{
  result = qword_281105A20;
  if (!qword_281105A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF440, &qword_20C655560);
    sub_20C61BBE0();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A20);
  }

  return result;
}

unint64_t sub_20C61BBE0()
{
  result = qword_281105A58;
  if (!qword_281105A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF448, &qword_20C655568);
    sub_20C609218();
    sub_20C5E5558(&qword_2811058D8, &qword_27C7CEDE8, &qword_20C6537A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A58);
  }

  return result;
}

unint64_t sub_20C61BC98()
{
  result = qword_281105C18[0];
  if (!qword_281105C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281105C18);
  }

  return result;
}

unint64_t sub_20C61BCEC()
{
  result = qword_281105A08;
  if (!qword_281105A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF450, &qword_20C655598);
    sub_20C61BDA4();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A08);
  }

  return result;
}

unint64_t sub_20C61BDA4()
{
  result = qword_281105A40;
  if (!qword_281105A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF458, &qword_20C6555A0);
    sub_20C61BE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A40);
  }

  return result;
}

unint64_t sub_20C61BE30()
{
  result = qword_281105A80;
  if (!qword_281105A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF460, &qword_20C6555A8);
    sub_20C60936C();
    sub_20C5E5558(&qword_281105898, &qword_27C7CEDD8, &qword_20C655590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A80);
  }

  return result;
}

unint64_t sub_20C61BEE8()
{
  result = qword_281105910;
  if (!qword_281105910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF420, &unk_20C655538);
    sub_20C61BF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105910);
  }

  return result;
}

unint64_t sub_20C61BF74()
{
  result = qword_281105A90;
  if (!qword_281105A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF428, &qword_20C655548);
    sub_20C5E5558(&qword_281105840, &qword_27C7CF3F0, &qword_20C655508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A90);
  }

  return result;
}

unint64_t sub_20C61C02C()
{
  result = qword_281105A68;
  if (!qword_281105A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF408, &qword_20C655520);
    sub_20C61C0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A68);
  }

  return result;
}

unint64_t sub_20C61C0B8()
{
  result = qword_281105AD0;
  if (!qword_281105AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF400, &qword_20C655518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF3F0, &qword_20C655508);
    sub_20C64D490();
    sub_20C5E5558(&qword_281105840, &qword_27C7CF3F0, &qword_20C655508);
    sub_20C61C320(&qword_281105998, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AD0);
  }

  return result;
}

uint64_t sub_20C61C210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C64D410();
  *a1 = result;
  return result;
}

uint64_t sub_20C61C23C(uint64_t *a1)
{
  v1 = *a1;

  return sub_20C64D420();
}

uint64_t sub_20C61C268@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C64D430();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C61C29C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20C64D440();
}

uint64_t sub_20C61C2CC@<X0>(void *a1@<X8>)
{
  result = sub_20C64D3D0();
  *a1 = v3;
  return result;
}

uint64_t sub_20C61C320(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C61C368()
{
  result = qword_281105868;
  if (!qword_281105868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF488, &qword_20C655660);
    sub_20C61C3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105868);
  }

  return result;
}

unint64_t sub_20C61C3EC()
{
  result = qword_281105930;
  if (!qword_281105930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF490, &qword_20C655668);
    sub_20C61BEE8();
    sub_20C61C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105930);
  }

  return result;
}

FitnessMarketing::AudioLanguageEngagementSheetAcknowledgment::State_optional __swiftcall AudioLanguageEngagementSheetAcknowledgment.State.init(rawValue:)(Swift::Int rawValue)
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

void *sub_20C61C4AC@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_20C61C5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C61C648(uint64_t a1)
{
  v2 = sub_20C61C80C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C61C684(uint64_t a1)
{
  v2 = sub_20C61C80C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF498, &qword_20C655670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C61C80C();
  sub_20C64E500();
  v12 = v8;
  sub_20C61C860();
  sub_20C64E410();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C61C80C()
{
  result = qword_27C7CF4A0;
  if (!qword_27C7CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4A0);
  }

  return result;
}

unint64_t sub_20C61C860()
{
  result = qword_27C7CF4A8;
  if (!qword_27C7CF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4A8);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF4B0, &qword_20C655678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C61C80C();
  sub_20C64E4F0();
  if (!v2)
  {
    sub_20C61CA20();
    sub_20C64E390();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C61CA20()
{
  result = qword_27C7CF4B8;
  if (!qword_27C7CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4B8);
  }

  return result;
}

unint64_t sub_20C61CAC0()
{
  result = qword_27C7CF4C0;
  if (!qword_27C7CF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF4C8, &qword_20C6556E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4C0);
  }

  return result;
}

unint64_t sub_20C61CB28()
{
  result = qword_27C7CF4D0;
  if (!qword_27C7CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4D0);
  }

  return result;
}

unint64_t sub_20C61CBB0()
{
  result = qword_27C7CF4D8;
  if (!qword_27C7CF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4D8);
  }

  return result;
}

unint64_t sub_20C61CC08()
{
  result = qword_27C7CF4E0;
  if (!qword_27C7CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4E0);
  }

  return result;
}

unint64_t sub_20C61CC60()
{
  result = qword_27C7CF4E8;
  if (!qword_27C7CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4E8);
  }

  return result;
}

unint64_t sub_20C61CCB4()
{
  result = qword_27C7CF4F0;
  if (!qword_27C7CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF4F0);
  }

  return result;
}

uint64_t sub_20C61CD08@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a3;
  v41 = a2;
  v42 = a1;
  v45 = a6;
  v8 = sub_20C602C6C();
  v54 = a4;
  v55 = &type metadata for MarketingPlainButtonStyle;
  v56 = a5;
  v57 = v8;
  swift_getOpaqueTypeMetadata2();
  v38 = sub_20C64D560();
  v9 = sub_20C64DCA0();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v32 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v12 = sub_20C64D2E0();
  v54 = a4;
  v55 = &type metadata for MarketingPlainButtonStyle;
  v56 = a5;
  v57 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = a5;
  v64 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v62 = WitnessTable;
  v14 = swift_getWitnessTable();
  v15 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
  v60 = v14;
  v61 = v15;
  v34 = v12;
  v16 = swift_getWitnessTable();
  v54 = v9;
  v55 = MEMORY[0x277CE1350];
  v56 = v12;
  v57 = v14;
  v17 = MEMORY[0x277CE1340];
  v58 = MEMORY[0x277CE1340];
  v59 = v16;
  v33 = v16;
  v35 = MEMORY[0x277CE0E68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v36 + 64);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  v25 = *v40;
  v48 = a4;
  v49 = a5;
  v50 = v25;
  v51 = v41;
  v52 = v43;
  v53 = v42;
  v26 = v39;
  sub_20C64DC90();
  sub_20C64DDC0();
  v46 = a4;
  v47 = a5;
  v27 = swift_checkMetadataState();
  v28 = MEMORY[0x277CE1350];
  sub_20C64DBC0();
  (*(v44 + 8))(v26, v9);
  v54 = v9;
  v55 = v28;
  v56 = v27;
  v57 = v14;
  v58 = v17;
  v59 = v33;
  v29 = swift_getOpaqueTypeConformance2();
  sub_20C606460(v22, OpaqueTypeMetadata2, v29);
  v30 = *(v36 + 8);
  v30(v22, OpaqueTypeMetadata2);
  sub_20C606460(v24, OpaqueTypeMetadata2, v29);
  return (v30)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_20C61D1AC@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v41 = a3;
  v42 = a2;
  v45 = a7;
  v49 = a5;
  v50 = &type metadata for MarketingPlainButtonStyle;
  v51 = a6;
  v52 = sub_20C602C6C();
  v46 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v40 + 64);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38[-v16];
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v38[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v38[-v23];
  v25 = sub_20C64D560();
  v43 = *(v25 - 8);
  v44 = v25;
  v26 = *(v43 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v38[-v28];
  v42(v27);
  if (a1)
  {
    LOBYTE(v49) = v39;
    v30 = v46;
    sub_20C64DA40();
    (*(v18 + 8))(v24, a5);
    v49 = a5;
    v50 = &type metadata for MarketingPlainButtonStyle;
    v51 = a6;
    v52 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_20C606460(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v32 = *(v40 + 8);
    v32(v14, OpaqueTypeMetadata2);
    sub_20C606460(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_20C62E890(v14, a5, OpaqueTypeMetadata2);
    v32(v14, OpaqueTypeMetadata2);
    v32(v17, OpaqueTypeMetadata2);
  }

  else
  {
    sub_20C606460(v22, a5, a6);
    v33 = *(v18 + 8);
    v33(v22, a5);
    sub_20C606460(v24, a5, a6);
    v49 = a5;
    v50 = &type metadata for MarketingPlainButtonStyle;
    v51 = a6;
    v52 = v46;
    swift_getOpaqueTypeConformance2();
    sub_20C62E798(v22, a5);
    v33(v22, a5);
    v33(v24, a5);
  }

  v49 = a5;
  v50 = &type metadata for MarketingPlainButtonStyle;
  v51 = a6;
  v52 = v46;
  v34 = swift_getOpaqueTypeConformance2();
  v47 = a6;
  v48 = v34;
  v35 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_20C606460(v29, v35, WitnessTable);
  return (*(v43 + 8))(v29, v35);
}

uint64_t sub_20C61D654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v29 = a1;
  v30 = a4;
  v6 = sub_20C64D360();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C602C6C();
  v36 = a2;
  v37 = &type metadata for MarketingPlainButtonStyle;
  v38 = a3;
  v39 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v11 = sub_20C64D2E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_20C64D350();
  v36 = a2;
  v19 = v26;
  v37 = &type metadata for MarketingPlainButtonStyle;
  v38 = v26;
  v39 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v19;
  v35 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  sub_20C64DAD0();
  (*(v27 + 8))(v9, v28);
  v22 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
  v31 = v21;
  v32 = v22;
  v23 = swift_getWitnessTable();
  sub_20C606460(v16, v11, v23);
  v24 = *(v12 + 8);
  v24(v16, v11);
  sub_20C606460(v18, v11, v23);
  return (v24)(v18, v11);
}

uint64_t sub_20C61D98C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v347 = a5;
  OpaqueTypeConformance2 = a4;
  LODWORD(v339) = a3;
  v330 = a2;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5B8, &qword_20C655B08);
  v8 = *(*(v303 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v303);
  v308 = &v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v321 = &v293 - v11;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5C0, &unk_20C655B10);
  v12 = *(*(v317 - 8) + 64);
  MEMORY[0x28223BE20](v317);
  v318 = &v293 - v13;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF530, &qword_20C6559E0);
  v14 = *(*(v326 - 8) + 64);
  MEMORY[0x28223BE20](v326);
  v319 = &v293 - v15;
  v300 = sub_20C64D880();
  v299 = *(v300 - 8);
  v16 = *(v299 + 64);
  MEMORY[0x28223BE20](v300);
  v298 = &v293 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v18 = *(*(v297 - 8) + 64);
  MEMORY[0x28223BE20](v297);
  v306 = &v293 - v19;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5C8, &qword_20C655B20);
  v20 = *(*(v301 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v301);
  v23 = (&v293 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v302 = &v293 - v24;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5D0, &qword_20C655B28);
  v25 = *(*(v324 - 8) + 64);
  MEMORY[0x28223BE20](v324);
  v325 = &v293 - v26;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF540, &qword_20C6559F0);
  v27 = *(*(v316 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v316);
  v320 = (&v293 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v307 = &v293 - v30;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF538, &qword_20C6559E8);
  v31 = *(*(v315 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v315);
  v322 = (&v293 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v35 = &v293 - v34;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5D8, &qword_20C655B30);
  v36 = *(*(v336 - 8) + 64);
  MEMORY[0x28223BE20](v336);
  v337 = &v293 - v37;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF568, &qword_20C655A18);
  v311 = *(v343 - 8);
  v38 = *(v311 + 64);
  MEMORY[0x28223BE20](v343);
  v310 = &v293 - v39;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5E0, &qword_20C655B38);
  v313 = *(v346 - 8);
  v40 = *(v313 + 64);
  MEMORY[0x28223BE20](v346);
  v312 = &v293 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5E8, &qword_20C655B40);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v345 = &v293 - v44;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF560, &qword_20C655A10);
  v45 = *(v342 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v342);
  v48 = &v293 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF550, &qword_20C655A00);
  v328 = *(v49 - 8);
  v50 = *(v328 + 64);
  MEMORY[0x28223BE20](v49);
  v327 = &v293 - v51;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F0, &qword_20C655B48);
  v329 = *(v344 - 8);
  v52 = *(v329 + 64);
  MEMORY[0x28223BE20](v344);
  v331 = &v293 - v53;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF548, &qword_20C6559F8);
  v54 = *(*(v335 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v335);
  v305 = &v293 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v293 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v314 = &v293 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v304 = &v293 - v63;
  MEMORY[0x28223BE20](v62);
  v65 = &v293 - v64;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF528, &qword_20C6559D8);
  v66 = *(*(v334 - 8) + 64);
  MEMORY[0x28223BE20](v334);
  v323 = &v293 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF4F8, &qword_20C6559A0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v333 = &v293 - v70;
  v71 = type metadata accessor for MarketingActionItem();
  v72 = (a1 + *(v71 + 24));
  v73 = v72[1];
  v332 = a6;
  v340 = v42;
  v341 = v49;
  if (!v73)
  {
    v326 = v65;
    if (*(a1 + *(v71 + 28)) < 0)
    {
      v117 = *(v330 + 3);
      v118 = v330[32];
      v119 = swift_allocObject();
      *(v119 + 16) = OpaqueTypeConformance2;
      v120 = v347;
      *(v119 + 24) = v347;
      MEMORY[0x28223BE20](v120);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
      sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
      sub_20C64DD40();
      LOBYTE(v348) = v339;
      v349 = v117;
      LOBYTE(v350) = v118;
      v121 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
      v122 = sub_20C621C60();
      v123 = v310;
      v124 = v342;
      sub_20C64DA40();
      (*(v45 + 8))(v48, v124);
      sub_20C64DDC0();
      v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF570, &qword_20C655A20);
      v348 = v124;
      v349 = &type metadata for MarketingRoundButtonStyle;
      v350 = v121;
      v351 = v122;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v290 = sub_20C621CB4();
      v125 = v312;
      v126 = v343;
      sub_20C64DBC0();
      (*(v311 + 8))(v123, v126);
      v127 = v313;
      v128 = v346;
      (*(v313 + 16))(v345, v125, v346);
      swift_storeEnumTagMultiPayload();
      v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
      v130 = sub_20C602C6C();
      v348 = v124;
      v349 = &type metadata for MarketingPlainButtonStyle;
      v350 = v121;
      v351 = v130;
      v131 = swift_getOpaqueTypeConformance2();
      v132 = sub_20C621B24();
      v348 = v341;
      v133 = MEMORY[0x277CE1350];
      v349 = MEMORY[0x277CE1350];
      v350 = v129;
      v351 = v131;
      v134 = MEMORY[0x277CE1340];
      v352 = MEMORY[0x277CE1340];
      v353 = v132;
      swift_getOpaqueTypeConformance2();
      v348 = v126;
      v349 = v133;
      v350 = v339;
      v351 = OpaqueTypeConformance2;
      v352 = v134;
      v353 = v290;
      swift_getOpaqueTypeConformance2();
      v110 = v326;
      sub_20C64D550();
      (*(v127 + 8))(v125, v128);
    }

    else
    {
      v94 = swift_allocObject();
      *(v94 + 16) = OpaqueTypeConformance2;
      v95 = v347;
      *(v94 + 24) = v347;
      MEMORY[0x28223BE20](v95);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
      sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
      sub_20C64DD40();
      LOBYTE(v348) = v339;
      v96 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
      v97 = sub_20C602C6C();
      v98 = v327;
      v99 = v342;
      v339 = v96;
      sub_20C64DA40();
      (*(v45 + 8))(v48, v99);
      sub_20C64DDC0();
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF558, &qword_20C655A08);
      v348 = v99;
      v349 = &type metadata for MarketingPlainButtonStyle;
      v350 = v96;
      v351 = v97;
      OpaqueTypeConformance2 = MEMORY[0x277CDE668];
      v101 = swift_getOpaqueTypeConformance2();
      v289 = sub_20C621B24();
      v102 = v331;
      v103 = v341;
      sub_20C64DBC0();
      (*(v328 + 8))(v98, v103);
      v104 = v329;
      v105 = v344;
      (*(v329 + 16))(v345, v102, v344);
      swift_storeEnumTagMultiPayload();
      v348 = v103;
      v349 = MEMORY[0x277CE1350];
      v350 = v100;
      v351 = v101;
      v352 = MEMORY[0x277CE1340];
      v353 = v289;
      swift_getOpaqueTypeConformance2();
      v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
      v107 = sub_20C621C60();
      v348 = v99;
      v349 = &type metadata for MarketingRoundButtonStyle;
      v350 = v339;
      v351 = v107;
      v108 = swift_getOpaqueTypeConformance2();
      v109 = sub_20C621CB4();
      v348 = v343;
      v349 = MEMORY[0x277CE1350];
      v350 = v106;
      v351 = v108;
      v352 = MEMORY[0x277CE1340];
      v353 = v109;
      swift_getOpaqueTypeConformance2();
      v110 = v326;
      sub_20C64D550();
      (*(v104 + 8))(v331, v105);
    }

    v135 = &qword_27C7CF548;
    v136 = &qword_20C6559F8;
    sub_20C5E574C(v110, v337, &qword_27C7CF548, &qword_20C6559F8);
    swift_storeEnumTagMultiPayload();
    sub_20C6217FC();
    sub_20C62190C();
    v137 = v333;
    sub_20C64D550();
    v138 = v110;
    goto LABEL_33;
  }

  v309 = v45;
  v296 = v59;
  v74 = *v72;
  v75 = *(v71 + 28);
  v76 = *(a1 + v75);
  if ((v76 & 0x7F) != 0)
  {
    if ((v76 & 0x7F) == 1)
    {
      if (v76 < 0)
      {
        v139 = *(v330 + 3);
        v140 = v330[32];
        v141 = swift_allocObject();
        *(v141 + 16) = OpaqueTypeConformance2;
        v142 = v347;
        *(v141 + 24) = v347;
        MEMORY[0x28223BE20](v142);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
        sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
        sub_20C64DD40();
        LOBYTE(v348) = v339;
        v349 = v139;
        LOBYTE(v350) = v140;
        v143 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
        v144 = sub_20C621C60();
        v145 = v310;
        v146 = v342;
        sub_20C64DA40();
        (*(v309 + 8))(v48, v146);
        sub_20C64DDC0();
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF570, &qword_20C655A20);
        v348 = v146;
        v349 = &type metadata for MarketingRoundButtonStyle;
        v350 = v143;
        v351 = v144;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v339 = sub_20C621CB4();
        v148 = v312;
        v149 = v343;
        sub_20C64DBC0();
        (*(v311 + 8))(v145, v149);
        v150 = v313;
        v151 = v346;
        (*(v313 + 16))(v345, v148, v346);
        swift_storeEnumTagMultiPayload();
        v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
        v153 = sub_20C602C6C();
        v348 = v146;
        v349 = &type metadata for MarketingPlainButtonStyle;
        v350 = v143;
        v351 = v153;
        v154 = swift_getOpaqueTypeConformance2();
        v155 = sub_20C621B24();
        v348 = v341;
        v156 = MEMORY[0x277CE1350];
        v349 = MEMORY[0x277CE1350];
        v350 = v152;
        v351 = v154;
        v157 = MEMORY[0x277CE1340];
        v352 = MEMORY[0x277CE1340];
        v353 = v155;
        swift_getOpaqueTypeConformance2();
        v348 = v149;
        v349 = v156;
        v350 = v147;
        v351 = OpaqueTypeConformance2;
        v352 = v157;
        v353 = v339;
        swift_getOpaqueTypeConformance2();
        v93 = v304;
        sub_20C64D550();
        (*(v150 + 8))(v148, v151);
      }

      else
      {
        v77 = swift_allocObject();
        *(v77 + 16) = OpaqueTypeConformance2;
        v78 = v347;
        *(v77 + 24) = v347;
        MEMORY[0x28223BE20](v78);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
        sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
        sub_20C64DD40();
        LOBYTE(v348) = v339;
        v79 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
        v80 = sub_20C602C6C();
        v81 = v327;
        v82 = v342;
        v339 = v79;
        sub_20C64DA40();
        (*(v309 + 8))(v48, v82);
        sub_20C64DDC0();
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF558, &qword_20C655A08);
        v348 = v82;
        v349 = &type metadata for MarketingPlainButtonStyle;
        v350 = v79;
        v351 = v80;
        OpaqueTypeConformance2 = MEMORY[0x277CDE668];
        v84 = swift_getOpaqueTypeConformance2();
        v288 = sub_20C621B24();
        v85 = v331;
        v86 = v341;
        sub_20C64DBC0();
        (*(v328 + 8))(v81, v86);
        v87 = v329;
        v88 = v344;
        (*(v329 + 16))(v345, v85, v344);
        swift_storeEnumTagMultiPayload();
        v348 = v86;
        v349 = MEMORY[0x277CE1350];
        v350 = v83;
        v351 = v84;
        v352 = MEMORY[0x277CE1340];
        v353 = v288;
        swift_getOpaqueTypeConformance2();
        v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
        v90 = sub_20C621C60();
        v348 = v82;
        v349 = &type metadata for MarketingRoundButtonStyle;
        v350 = v339;
        v351 = v90;
        v91 = swift_getOpaqueTypeConformance2();
        v92 = sub_20C621CB4();
        v348 = v343;
        v349 = MEMORY[0x277CE1350];
        v350 = v89;
        v351 = v91;
        v352 = MEMORY[0x277CE1340];
        v353 = v92;
        swift_getOpaqueTypeConformance2();
        v93 = v304;
        sub_20C64D550();
        (*(v87 + 8))(v85, v88);
      }

      v158 = &qword_27C7CF548;
      v159 = &qword_20C6559F8;
      sub_20C5E574C(v93, v325, &qword_27C7CF548, &qword_20C6559F8);
      swift_storeEnumTagMultiPayload();
      sub_20C62182C();
      sub_20C62190C();
      v160 = v323;
      sub_20C64D550();
      v161 = v93;
      goto LABEL_32;
    }

    v114 = v330;
    if (*v330)
    {
      v115 = v73;
      if (*v330 == 1)
      {
        v116 = sub_20C64D4D0();
      }

      else
      {
        v116 = sub_20C64D4F0();
      }
    }

    else
    {
      v115 = v73;
      v116 = sub_20C64D4E0();
    }

    v229 = *(v114 + 2);
    v230 = v320;
    *v320 = v116;
    v230[1] = v229;
    *(v230 + 16) = 0;
    v231 = v321;
    v232 = v339;
    sub_20C62090C(v339, v74, v115, v321);
    KeyPath = swift_getKeyPath();
    v234 = (v231 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF600, &qword_20C655B88) + 36));
    *v234 = KeyPath;
    v234[1] = 0x3FE6666666666666;
    v235 = *(v114 + 1);
    v236 = swift_getKeyPath();
    v237 = v231 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF608, &qword_20C655BC0) + 36);
    *v237 = v236;
    *(v237 + 8) = v235;
    *(v237 + 16) = 0;
    *(v231 + *(v303 + 36)) = 256;
    if (*(a1 + v75) < 0)
    {
      v259 = *(v114 + 3);
      v260 = v114[32];
      v261 = swift_allocObject();
      *(v261 + 16) = OpaqueTypeConformance2;
      v262 = v347;
      *(v261 + 24) = v347;
      MEMORY[0x28223BE20](v262);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
      sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
      sub_20C64DD40();
      LOBYTE(v348) = v232;
      v349 = v259;
      LOBYTE(v350) = v260;
      v263 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
      v264 = sub_20C621C60();
      v265 = v310;
      v266 = v342;
      sub_20C64DA40();
      (*(v309 + 8))(v48, v266);
      sub_20C64DDC0();
      v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF570, &qword_20C655A20);
      v348 = v266;
      v349 = &type metadata for MarketingRoundButtonStyle;
      v350 = v263;
      v351 = v264;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v292 = sub_20C621CB4();
      v267 = v312;
      v268 = v343;
      sub_20C64DBC0();
      (*(v311 + 8))(v265, v268);
      v269 = v313;
      v270 = v346;
      (*(v313 + 16))(v345, v267, v346);
      swift_storeEnumTagMultiPayload();
      v271 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
      v272 = sub_20C602C6C();
      v348 = v266;
      v349 = &type metadata for MarketingPlainButtonStyle;
      v350 = v263;
      v351 = v272;
      v273 = swift_getOpaqueTypeConformance2();
      v274 = sub_20C621B24();
      v348 = v341;
      v275 = MEMORY[0x277CE1350];
      v349 = MEMORY[0x277CE1350];
      v350 = v271;
      v351 = v273;
      v276 = MEMORY[0x277CE1340];
      v352 = MEMORY[0x277CE1340];
      v353 = v274;
      swift_getOpaqueTypeConformance2();
      v348 = v268;
      v349 = v275;
      v350 = v339;
      v351 = OpaqueTypeConformance2;
      v352 = v276;
      v353 = v292;
      swift_getOpaqueTypeConformance2();
      v277 = v305;
      sub_20C64D550();
      v278 = v270;
      v258 = v277;
      (*(v269 + 8))(v267, v278);
    }

    else
    {
      v238 = swift_allocObject();
      *(v238 + 16) = OpaqueTypeConformance2;
      v239 = v347;
      *(v238 + 24) = v347;
      MEMORY[0x28223BE20](v239);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
      sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
      sub_20C64DD40();
      LOBYTE(v348) = v232;
      v240 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
      v241 = sub_20C602C6C();
      v242 = v327;
      v243 = v342;
      OpaqueTypeConformance2 = v240;
      sub_20C64DA40();
      (*(v309 + 8))(v48, v243);
      sub_20C64DDC0();
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF558, &qword_20C655A08);
      v348 = v243;
      v349 = &type metadata for MarketingPlainButtonStyle;
      v350 = v240;
      v351 = v241;
      v339 = MEMORY[0x277CDE668];
      v245 = swift_getOpaqueTypeConformance2();
      v246 = sub_20C621B24();
      v247 = MEMORY[0x277CE1340];
      v248 = v331;
      v249 = v341;
      sub_20C64DBC0();
      (*(v328 + 8))(v242, v249);
      v250 = v329;
      v251 = v248;
      v252 = v344;
      (*(v329 + 16))(v345, v251, v344);
      swift_storeEnumTagMultiPayload();
      v348 = v249;
      v349 = MEMORY[0x277CE1350];
      v350 = v244;
      v351 = v245;
      v352 = v247;
      v253 = v247;
      v353 = v246;
      swift_getOpaqueTypeConformance2();
      v254 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
      v255 = sub_20C621C60();
      v348 = v243;
      v349 = &type metadata for MarketingRoundButtonStyle;
      v350 = OpaqueTypeConformance2;
      v351 = v255;
      v256 = swift_getOpaqueTypeConformance2();
      v257 = sub_20C621CB4();
      v348 = v343;
      v349 = MEMORY[0x277CE1350];
      v350 = v254;
      v351 = v256;
      v352 = v253;
      v353 = v257;
      swift_getOpaqueTypeConformance2();
      v258 = v305;
      sub_20C64D550();
      (*(v250 + 8))(v331, v252);
    }

    v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF610, &qword_20C655BC8);
    v280 = v320;
    v281 = v320 + *(v279 + 44);
    v282 = v321;
    v283 = v308;
    sub_20C5E574C(v321, v308, &qword_27C7CF5B8, &qword_20C655B08);
    v284 = v296;
    sub_20C5E574C(v258, v296, &qword_27C7CF548, &qword_20C6559F8);
    sub_20C5E574C(v283, v281, &qword_27C7CF5B8, &qword_20C655B08);
    v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF618, &qword_20C655BD0);
    sub_20C5E574C(v284, v281 + *(v285 + 48), &qword_27C7CF548, &qword_20C6559F8);
    sub_20C5DBFC4(v258, &qword_27C7CF548, &qword_20C6559F8);
    sub_20C5DBFC4(v282, &qword_27C7CF5B8, &qword_20C655B08);
    sub_20C5DBFC4(v284, &qword_27C7CF548, &qword_20C6559F8);
    sub_20C5DBFC4(v283, &qword_27C7CF5B8, &qword_20C655B08);
    v158 = &qword_27C7CF540;
    v159 = &qword_20C6559F0;
    v286 = v280;
    v228 = v307;
    sub_20C5E5658(v286, v307, &qword_27C7CF540, &qword_20C6559F0);
    sub_20C5E574C(v228, v318, &qword_27C7CF540, &qword_20C6559F0);
    swift_storeEnumTagMultiPayload();
    sub_20C5E5558(&qword_281105808, &qword_27C7CF538, &qword_20C6559E8);
LABEL_31:
    sub_20C5E5558(&qword_281105810, &qword_27C7CF540, &qword_20C6559F0);
    v287 = v319;
    sub_20C64D550();
    sub_20C5E574C(v287, v325, &qword_27C7CF530, &qword_20C6559E0);
    swift_storeEnumTagMultiPayload();
    sub_20C62182C();
    sub_20C62190C();
    v160 = v323;
    sub_20C64D550();
    sub_20C5DBFC4(v287, &qword_27C7CF530, &qword_20C6559E0);
    v161 = v228;
LABEL_32:
    sub_20C5DBFC4(v161, v158, v159);
    v137 = v333;
    v135 = &qword_27C7CF528;
    v136 = &qword_20C6559D8;
    sub_20C5E574C(v160, v337, &qword_27C7CF528, &qword_20C6559D8);
    swift_storeEnumTagMultiPayload();
    sub_20C6217FC();
    sub_20C62190C();
    sub_20C64D550();
    v138 = v160;
LABEL_33:
    sub_20C5DBFC4(v138, v135, v136);
    sub_20C5E5658(v137, v332, &qword_27C7CF4F8, &qword_20C6559A0);
  }

  v111 = v330;
  v112 = *v330;
  v295 = v73;
  v294 = v74;
  if (v112)
  {
    if (v112 == 1)
    {
      v113 = sub_20C64D4D0();
    }

    else
    {
      v113 = sub_20C64D4F0();
    }
  }

  else
  {
    v113 = sub_20C64D4E0();
  }

  v162 = v309;
  v320 = v23;
  v321 = v35;
  v163 = *(v111 + 2);
  v164 = v322;
  *v322 = v113;
  v164[1] = v163;
  *(v164 + 16) = 0;
  if (*(a1 + v75) < 0)
  {
    v181 = *(v111 + 3);
    v182 = v111[32];
    v183 = swift_allocObject();
    *(v183 + 16) = OpaqueTypeConformance2;
    v184 = v347;
    *(v183 + 24) = v347;
    MEMORY[0x28223BE20](v184);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
    sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
    sub_20C64DD40();
    LOBYTE(v348) = v339;
    v349 = v181;
    LOBYTE(v350) = v182;
    v185 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
    v186 = sub_20C621C60();
    v187 = v310;
    v188 = v342;
    sub_20C64DA40();
    (*(v162 + 8))(v48, v188);
    sub_20C64DDC0();
    OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF570, &qword_20C655A20);
    v348 = v188;
    v349 = &type metadata for MarketingRoundButtonStyle;
    v350 = v185;
    v351 = v186;
    v331 = swift_getOpaqueTypeConformance2();
    v339 = sub_20C621CB4();
    v189 = v312;
    v190 = v343;
    sub_20C64DBC0();
    (*(v311 + 8))(v187, v190);
    v191 = v313;
    v192 = v346;
    (*(v313 + 16))(v345, v189, v346);
    swift_storeEnumTagMultiPayload();
    v193 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
    v194 = sub_20C602C6C();
    v348 = v188;
    v349 = &type metadata for MarketingPlainButtonStyle;
    v350 = v185;
    v351 = v194;
    v195 = swift_getOpaqueTypeConformance2();
    v196 = sub_20C621B24();
    v348 = v341;
    v197 = MEMORY[0x277CE1350];
    v349 = MEMORY[0x277CE1350];
    v350 = v193;
    v351 = v195;
    v198 = MEMORY[0x277CE1340];
    v352 = MEMORY[0x277CE1340];
    v353 = v196;
    swift_getOpaqueTypeConformance2();
    v348 = v190;
    v349 = v197;
    v350 = OpaqueTypeConformance2;
    v351 = v331;
    v352 = v198;
    v353 = v339;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    (*(v191 + 8))(v189, v192);
  }

  else
  {
    v165 = swift_allocObject();
    *(v165 + 16) = OpaqueTypeConformance2;
    v166 = v347;
    *(v165 + 24) = v347;
    MEMORY[0x28223BE20](v166);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5F8, &qword_20C655B50);
    sub_20C5E5558(&qword_281105858, &qword_27C7CF5F8, &qword_20C655B50);
    sub_20C64DD40();
    LOBYTE(v348) = v339;
    v167 = sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
    v168 = sub_20C602C6C();
    v169 = v327;
    v170 = v342;
    v339 = v167;
    sub_20C64DA40();
    (*(v162 + 8))(v48, v170);
    sub_20C64DDC0();
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF558, &qword_20C655A08);
    v348 = v170;
    v349 = &type metadata for MarketingPlainButtonStyle;
    v350 = v167;
    v351 = v168;
    OpaqueTypeConformance2 = MEMORY[0x277CDE668];
    v172 = swift_getOpaqueTypeConformance2();
    v291 = sub_20C621B24();
    v173 = v331;
    v174 = v341;
    sub_20C64DBC0();
    (*(v328 + 8))(v169, v174);
    v175 = v329;
    v176 = v344;
    (*(v329 + 16))(v345, v173, v344);
    swift_storeEnumTagMultiPayload();
    v348 = v174;
    v349 = MEMORY[0x277CE1350];
    v350 = v171;
    v351 = v172;
    v352 = MEMORY[0x277CE1340];
    v353 = v291;
    swift_getOpaqueTypeConformance2();
    v177 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
    v178 = sub_20C621C60();
    v348 = v170;
    v349 = &type metadata for MarketingRoundButtonStyle;
    v350 = v339;
    v351 = v178;
    v179 = swift_getOpaqueTypeConformance2();
    v180 = sub_20C621CB4();
    v348 = v343;
    v349 = MEMORY[0x277CE1350];
    v350 = v177;
    v351 = v179;
    v352 = MEMORY[0x277CE1340];
    v353 = v180;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    (*(v175 + 8))(v173, v176);
  }

  v199 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF620, &qword_20C655BD8) + 44);
  v348 = v294;
  v349 = v295;
  sub_20C602C18();

  v200 = sub_20C64D970();
  v202 = v201;
  v204 = v203;
  v206 = v205;
  v207 = swift_getKeyPath();
  v348 = v200;
  v349 = v202;
  v208 = v204 & 1;
  LOBYTE(v350) = v204 & 1;
  v346 = v206;
  v351 = v206;
  v352 = v207;
  v353 = 0x3FE6666666666666;
  v209 = *MEMORY[0x277CDFA10];
  v210 = sub_20C64D2B0();
  v211 = v306;
  (*(*(v210 - 8) + 104))(v306, v209, v210);
  sub_20C6228F0();
  result = sub_20C64E010();
  if (result)
  {
    v213 = v322 + v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF628, &unk_20C655BE0);
    sub_20C622948();
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    v214 = v302;
    sub_20C64DAB0();
    sub_20C614CDC(v211);
    sub_20C5E56C0(v200, v202, v208);

    sub_20C64D890();
    sub_20C64D830();
    sub_20C64D870();

    v215 = v299;
    v216 = v298;
    v217 = v300;
    (*(v299 + 104))(v298, *MEMORY[0x277CE0A10], v300);
    v218 = sub_20C64D8A0();

    (*(v215 + 8))(v216, v217);
    v219 = swift_getKeyPath();
    v220 = (v214 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF630, &qword_20C655C20) + 36));
    *v220 = v219;
    v220[1] = v218;
    LODWORD(v218) = sub_20C64D5C0();
    *(v214 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF638, &qword_20C655C28) + 36)) = v218;
    v221 = *(v330 + 1);
    v222 = swift_getKeyPath();
    v223 = v214 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF640, &qword_20C655C30) + 36);
    *v223 = v222;
    *(v223 + 8) = v221;
    *(v223 + 16) = 0;
    *(v214 + *(v301 + 36)) = 256;
    v224 = v314;
    v225 = v296;
    sub_20C5E574C(v314, v296, &qword_27C7CF548, &qword_20C6559F8);
    v226 = v320;
    sub_20C5E574C(v214, v320, &qword_27C7CF5C8, &qword_20C655B20);
    sub_20C5E574C(v225, v213, &qword_27C7CF548, &qword_20C6559F8);
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF648, &qword_20C655C38);
    sub_20C5E574C(v226, v213 + *(v227 + 48), &qword_27C7CF5C8, &qword_20C655B20);
    sub_20C5DBFC4(v214, &qword_27C7CF5C8, &qword_20C655B20);
    sub_20C5DBFC4(v224, &qword_27C7CF548, &qword_20C6559F8);
    sub_20C5DBFC4(v226, &qword_27C7CF5C8, &qword_20C655B20);
    sub_20C5DBFC4(v225, &qword_27C7CF548, &qword_20C6559F8);
    v158 = &qword_27C7CF538;
    v159 = &qword_20C6559E8;
    v228 = v321;
    sub_20C5E5658(v322, v321, &qword_27C7CF538, &qword_20C6559E8);
    sub_20C5E574C(v228, v318, &qword_27C7CF538, &qword_20C6559E8);
    swift_storeEnumTagMultiPayload();
    sub_20C5E5558(&qword_281105808, &qword_27C7CF538, &qword_20C6559E8);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C62090C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF650, &qword_20C655C40);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = (v62 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF658, &qword_20C655C48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v62 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF660, &unk_20C655C50);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v15 = v62 - v14;
  v16 = sub_20C64D880();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v62 - v27;
  if (a1 < 2u)
  {
    v62[0] = v26;
    v62[1] = v9;
    v63 = v12;
    v64 = v15;
    v71 = a2;
    v72 = a3;
    sub_20C602C18();

    v29 = sub_20C64D970();
    v31 = v30;
    v71 = v29;
    v72 = v30;
    v33 = v32 & 1;
    v73 = v32 & 1;
    v74 = v34;
    v35 = *MEMORY[0x277CDFA10];
    v36 = sub_20C64D2B0();
    (*(*(v36 - 8) + 104))(v23, v35, v36);
    sub_20C6228F0();
    if (sub_20C64E010())
    {
      sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
      sub_20C64DAB0();
      sub_20C614CDC(v23);
      sub_20C5E56C0(v29, v31, v33);

      sub_20C64D890();
      sub_20C64D830();
      sub_20C64D870();

      v38 = v65;
      v37 = v66;
      (*(v65 + 104))(v19, *MEMORY[0x277CE0A10], v66);
      v39 = sub_20C64D8A0();

      (*(v38 + 8))(v19, v37);
      KeyPath = swift_getKeyPath();
      v41 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60) + 36)];
      *v41 = KeyPath;
      v41[1] = v39;
      *&v28[*(v62[0] + 36)] = sub_20C64D5C0();
      sub_20C5E574C(v28, v63, &qword_27C7CF208, &qword_20C6545D0);
      swift_storeEnumTagMultiPayload();
      sub_20C622A8C();
      v42 = v64;
      sub_20C64D550();
      sub_20C5E574C(v42, v69, &qword_27C7CF660, &unk_20C655C50);
      swift_storeEnumTagMultiPayload();
      sub_20C622A00();
      sub_20C64D550();
      sub_20C5DBFC4(v42, &qword_27C7CF660, &unk_20C655C50);
      return sub_20C5DBFC4(v28, &qword_27C7CF208, &qword_20C6545D0);
    }

    __break(1u);
    goto LABEL_8;
  }

  if (a1 != 3)
  {
LABEL_8:
    result = sub_20C64E2B0();
    __break(1u);
    return result;
  }

  v71 = a2;
  v72 = a3;
  sub_20C602C18();

  v44 = sub_20C64D970();
  v46 = v45;
  v48 = v47;
  sub_20C64D8B0();
  sub_20C64D830();
  sub_20C64D870();

  v50 = v65;
  v49 = v66;
  (*(v65 + 104))(v19, *MEMORY[0x277CE0A10], v66);
  sub_20C64D8A0();

  (*(v50 + 8))(v19, v49);
  v51 = sub_20C64D950();
  v53 = v52;
  LOBYTE(v50) = v54;

  sub_20C5E56C0(v44, v46, v48 & 1);

  LODWORD(v71) = sub_20C64D5B0();
  v55 = sub_20C64D940();
  v57 = v56;
  LOBYTE(v46) = v58;
  v60 = v59;
  sub_20C5E56C0(v51, v53, v50 & 1);

  v61 = v69;
  *v69 = v55;
  v61[1] = v57;
  *(v61 + 16) = v46 & 1;
  v61[3] = v60;
  swift_storeEnumTagMultiPayload();
  sub_20C622A00();
  return sub_20C64D550();
}

uint64_t MarketingButtonStyle.actionItemViewBuilder(item:index:layout:platform:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  v44 = a4;
  v45 = a1;
  LODWORD(v46) = a3;
  v50 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF4F8, &qword_20C6559A0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF500, &qword_20C6559A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF508, &qword_20C6559B0);
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF510, &qword_20C6559B8);
  v43 = *(v48 - 8);
  v21 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF518, &qword_20C6559C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v47 = &v41 - v26;
  v27 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v27;
  v58 = *(a2 + 32);
  if (*v7)
  {

    sub_20C61D98C(v45, v57, v46, v44, a5, v12);
    sub_20C5E574C(v12, v16, &qword_27C7CF4F8, &qword_20C6559A0);
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF520, &unk_20C6559C8);
    v29 = sub_20C5E5558(&qword_281105830, &qword_27C7CF508, &qword_20C6559B0);
    v30 = sub_20C621694();
    v51 = v17;
    v52 = MEMORY[0x277CE1350];
    v53 = v28;
    v54 = v29;
    v55 = MEMORY[0x277CE1340];
    v56 = v30;
    swift_getOpaqueTypeConformance2();
    sub_20C621778(&qword_281105938, &qword_27C7CF4F8, &qword_20C6559A0, sub_20C6217FC);
    v31 = v47;
    sub_20C64D550();
    sub_20C5DBFC4(v12, &qword_27C7CF4F8, &qword_20C6559A0);
  }

  else
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v44;
    *(v32 + 24) = a5;
    MEMORY[0x28223BE20](v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF578, &qword_20C655A28);
    v46 = v13;
    sub_20C5E5558(&qword_27C7CF580, &qword_27C7CF578, &qword_20C655A28);
    sub_20C64DD40();
    sub_20C64DDC0();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF520, &unk_20C6559C8);
    v34 = sub_20C5E5558(&qword_281105830, &qword_27C7CF508, &qword_20C6559B0);
    v35 = sub_20C621694();
    v36 = MEMORY[0x277CE1350];
    v37 = MEMORY[0x277CE1340];
    sub_20C64DBC0();
    (*(v42 + 8))(v20, v17);
    v38 = v43;
    v39 = v48;
    (*(v43 + 16))(v16, v23, v48);
    swift_storeEnumTagMultiPayload();
    v51 = v17;
    v52 = v36;
    v53 = v33;
    v54 = v34;
    v55 = v37;
    v56 = v35;
    swift_getOpaqueTypeConformance2();
    sub_20C621778(&qword_281105938, &qword_27C7CF4F8, &qword_20C6559A0, sub_20C6217FC);
    v31 = v47;
    sub_20C64D550();
    (*(v38 + 8))(v23, v39);
  }

  return sub_20C5E5658(v31, v50, &qword_27C7CF518, &qword_20C6559C0);
}