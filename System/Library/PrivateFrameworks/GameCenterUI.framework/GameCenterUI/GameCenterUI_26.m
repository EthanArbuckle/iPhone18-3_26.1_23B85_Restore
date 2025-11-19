uint64_t sub_24E1F30D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_24E345778();
  OUTLINED_FUNCTION_0_14();
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E77C0);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_24E345EB8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  sub_24E345F58();
  sub_24E345498();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v18 + 8))(v22, v16);
  v31 = [objc_opt_self() shared];
  [v31 setFrameInScreenCoordinates_];

  v32 = *(v3 + 48);
  v44 = *(v3 + 40);
  v45 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  LODWORD(v18) = v43;
  v33 = sub_24E1EFAE8();
  if (v18)
  {
    v33 = v33 * 1.1;
  }

  v40 = v3;
  v41 = a1;
  v42 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E77C8);
  sub_24E1F5794();
  sub_24E346BD8();
  sub_24E345768();
  sub_24DFB4C28(&qword_27F1E7808, &qword_27F1E77C0);
  sub_24E1F60F8(&qword_27F1DF5F0, MEMORY[0x277CDDB18]);
  v34 = v37;
  sub_24E346588();
  (*(v38 + 8))(v9, v34);
  return (*(v12 + 8))(v15, v10);
}

void sub_24E1F347C()
{
  v0 = [objc_opt_self() shared];
  [v0 didTapAccessPoint];
}

uint64_t sub_24E1F34DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E77E0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  *v15 = sub_24E345BF8();
  *(v15 + 1) = 0x4018000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7810);
  sub_24E1F3780(a1, &v15[*(v16 + 44)]);
  sub_24E345488();
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  sub_24E08FBA8(v11);
  sub_24E346E28();
  sub_24E3453D8();
  v17 = &v15[*(v13 + 44)];
  v18 = v30[1];
  *v17 = v30[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v30[2];
  sub_24E346B88();
  v19 = *(v8 + 5);

  sub_24E08FBA8(v8);
  if (v19)
  {
  }

  v20 = v19 != 0;
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 userInterfaceLayoutDirection];

  if (v22 == 1)
  {
    v23 = -a3;
  }

  else
  {
    v23 = a3;
  }

  sub_24E346ED8();
  v25 = v24;
  v27 = v26;
  sub_24E1F5314(v15, a2, &qword_27F1E77E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E77C8);
  v29 = a2 + *(result + 36);
  *v29 = v20;
  *(v29 + 8) = 0x402A000000000000;
  *(v29 + 16) = v23;
  *(v29 + 24) = v23;
  *(v29 + 32) = v25;
  *(v29 + 40) = v27;
  *(v29 + 48) = 0;
  return result;
}

uint64_t sub_24E1F3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7818);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v47 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7820);
  MEMORY[0x28223BE20](v49);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v47 - v9;
  v10 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7828);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7830);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  sub_24E1EFE2C(a1, v18);
  sub_24E1F5904();
  sub_24E346648();
  sub_24DF8C95C(v18, &qword_27F1E7828);
  sub_24E345418();
  MEMORY[0x25303D9B0](*(a1 + 16), 1.0, 0.0);
  v26 = sub_24E345458();

  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78C0) + 36)] = v26;
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  sub_24E08FBA8(v15);
  v27 = v47;
  sub_24E346B88();
  sub_24E08FBA8(v12);
  sub_24E346E28();
  sub_24E3453D8();
  v28 = &v25[*(v20 + 44)];
  v29 = v54;
  *v28 = v53;
  *(v28 + 1) = v29;
  *(v28 + 2) = v55;
  sub_24E1F25BC(a1, v27);
  LOBYTE(v18) = sub_24E346238();
  v30 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v18)
  {
    v30 = sub_24E346228();
  }

  sub_24E3451B8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v27;
  v40 = v48;
  sub_24E1F5314(v39, v48, &qword_27F1E7818);
  v41 = v50;
  v42 = v40 + *(v49 + 36);
  *v42 = v30;
  *(v42 + 8) = v32;
  *(v42 + 16) = v34;
  *(v42 + 24) = v36;
  *(v42 + 32) = v38;
  *(v42 + 40) = 0;
  sub_24E1F5314(v40, v41, &qword_27F1E7820);
  sub_24DFC24D4(v25, v22, &qword_27F1E7830);
  v43 = v51;
  sub_24DFC24D4(v41, v51, &qword_27F1E7820);
  v44 = v52;
  sub_24DFC24D4(v22, v52, &qword_27F1E7830);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78C8);
  sub_24DFC24D4(v43, v44 + *(v45 + 48), &qword_27F1E7820);
  sub_24DF8C95C(v41, &qword_27F1E7820);
  sub_24DF8C95C(v25, &qword_27F1E7830);
  sub_24DF8C95C(v43, &qword_27F1E7820);
  return sub_24DF8C95C(v22, &qword_27F1E7830);
}

void *sub_24E1F3CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessPoint.Model(0);
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_17_32();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_80();
  sub_24E1F5378(v2, v17, v18);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_24E1F50E4(v17, v20 + v19);
  sub_24E1EFBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  sub_24E08FBA8(v11);
  sub_24E346E38();
  sub_24E3453D8();
  v45 = v33;
  v44 = v35;
  v37 = sub_24E1F5718;
  v38 = v20;
  v39 = v32[1];
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  sub_24E1EF6F0(__src);
  sub_24E346B88();
  v21 = *(v8 + 40);

  sub_24E08FBA8(v8);
  if (v21)
  {
  }

  v22 = v21 != 0;
  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 userInterfaceLayoutDirection];

  v25 = sub_24E1EFAE8();
  if (v24 == 1)
  {
    v26 = -v25;
  }

  else
  {
    v26 = v25;
  }

  sub_24E346ED8();
  v28 = v27;
  v30 = v29;

  result = memcpy(a1, __src, 0x68uLL);
  *(a1 + 104) = v22;
  *(a1 + 112) = 0x402A000000000000;
  *(a1 + 120) = v26;
  *(a1 + 128) = v26;
  *(a1 + 136) = v28;
  *(a1 + 144) = v30;
  *(a1 + 152) = 256;
  return result;
}

uint64_t sub_24E1F3FB4@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_17_32();
  v4 = v3;
  v93 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessPoint.Model(0);
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7748) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7750) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v86 = &v80 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7758) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v95 = &v80 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7760) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v89 = &v80 - v23;
  sub_24E1F3CB4(v101);
  v24 = v1;
  v25 = *(v1 + 48);
  LOBYTE(v99[0]) = *(v1 + 40);
  v99[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (LOBYTE(v98[0]))
  {
    v26 = 1.1;
  }

  else
  {
    v26 = 1.0;
  }

  sub_24E346ED8();
  v84 = v27;
  v29 = v28;
  sub_24E1F2D18(v1, v97);
  v30 = sub_24E346E28();
  v32 = v31;
  memcpy(v98, v97, 0xC0uLL);
  v98[24] = v30;
  v98[25] = v32;
  memcpy(v100, v98, sizeof(v100));
  memcpy(v99, v97, 0xC0uLL);
  v99[24] = v30;
  v99[25] = v32;
  sub_24DFC24D4(v98, v96, &qword_27F1E7768);
  sub_24DF8C95C(v99, &qword_27F1E7768);
  v33 = v24 + *(v2 + 56);
  v34 = *(v33 + 2);
  v96[0] = *v33;
  *&v96[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7770);
  sub_24E346B88();
  sub_24E3457F8();
  v35 = sub_24E1EF8A4();
  v36 = sub_24E1EFA1C();
  v85 = *v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  sub_24E08FBA8(v13);
  v82 = sub_24E3461E8();
  sub_24E3451B8();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v101[160] = 0;
  v45 = objc_opt_self();
  v83 = v45;
  v46 = [v45 shared];
  swift_getKeyPath();
  sub_24E3431F8();

  OUTLINED_FUNCTION_4_80();
  v91 = v47;
  v48 = v24;
  sub_24E1F5378(v24, v8, v49);
  v81 = *(v4 + 80);
  v50 = (v81 + 16) & ~v81;
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_14_34(v51);
  memcpy(v17, v101, 0xA0uLL);
  *(v17 + 20) = v26;
  *(v17 + 21) = v26;
  *(v17 + 22) = v84;
  *(v17 + 23) = v29;
  memcpy(v17 + 192, v100, 0xD0uLL);
  memcpy(v17 + 400, v96, 0x70uLL);
  v17[512] = 0;
  *(v17 + 65) = 0;
  *(v17 + 66) = v35;
  *(v17 + 67) = v36;
  v17[544] = v82;
  *(v17 + 69) = v38;
  *(v17 + 70) = v40;
  *(v17 + 71) = v42;
  *(v17 + 72) = v44;
  v17[584] = 0;
  v52 = &v17[*(v14 + 64)];
  *v52 = sub_24E1F5148;
  v52[1] = v46;
  v53 = [v45 shared];
  swift_getKeyPath();
  v54 = v86;
  sub_24E3431F8();

  v92 = v48;
  v55 = v91;
  sub_24E1F5378(v48, v8, v91);
  v80 = v50;
  v56 = swift_allocObject();
  sub_24E1F50E4(v8, v56 + v50);
  sub_24E1F5314(v17, v54, &qword_27F1E7748);
  v57 = (v54 + *(v94 + 64));
  v58 = v54;
  *v57 = sub_24E1F51B4;
  v57[1] = v56;
  v59 = v48;
  v60 = v55;
  sub_24E1F5378(v59, v8, v55);
  v61 = v80;
  v62 = swift_allocObject();
  sub_24E1F50E4(v8, v62 + v61);
  v63 = v58;
  v64 = v95;
  sub_24E1F5314(v63, v95, &qword_27F1E7750);
  v65 = (v64 + *(v88 + 44));
  *v65 = sub_24E1F51CC;
  v65[1] = v62;
  v65[2] = 0;
  v65[3] = 0;
  v66 = OBJC_IVAR____TtC12GameCenterUI11AccessPoint__model;
  v67 = v85;
  swift_beginAccess();
  v68 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E04F8);
  v69 = v89;
  v70 = (v67 + v66);
  sub_24E344E38();
  swift_endAccess();
  sub_24E1F5378(v92, v8, v60);
  v71 = swift_allocObject();
  OUTLINED_FUNCTION_14_34(v71);
  v72 = v69;
  sub_24E1F5314(v95, v69, &qword_27F1E7758);
  v73 = (v69 + *(v68 + 64));
  *v73 = sub_24E1F5228;
  v73[1] = v70;
  v74 = [v83 shared];
  swift_getKeyPath();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7778);
  v76 = v90;
  sub_24E3431F8();

  sub_24E1F5378(v92, v8, v91);
  v77 = swift_allocObject();
  OUTLINED_FUNCTION_14_34(v77);
  result = sub_24E1F5314(v72, v76, &qword_27F1E7760);
  v79 = (v76 + *(v75 + 56));
  *v79 = sub_24E1F5288;
  v79[1] = v74;
  return result;
}

id sub_24E1F481C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_9_52(a1) isActive];
  *v1 = result;
  return result;
}

uint64_t sub_24E1F4860()
{
  v0 = sub_24E1EF7D4();
  MEMORY[0x25303D9B0](v0, 1.0, 0.0);
  sub_24E345558();
}

id sub_24E1F48DC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_9_52(a1) hideCount];
  *v1 = result;
  return result;
}

uint64_t sub_24E1F4920()
{
  v0 = sub_24E1EF7D4();
  MEMORY[0x25303D9B0](v0, 1.0, 0.0);
  sub_24E345558();
}

uint64_t sub_24E1F499C()
{
  v0 = objc_opt_self();
  v1 = [v0 shared];
  v2 = [v1 isActive];

  if (v2)
  {
    v3 = [v0 shared];
    [v3 hideCount];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  return sub_24E346B98();
}

uint64_t sub_24E1F4A90(uint64_t a1)
{
  MEMORY[0x25303D9B0](*(a1 + 16), 1.0, 0.0);
  sub_24E345558();
}

uint64_t sub_24E1F4B70(_BYTE *a1, uint64_t a2)
{
  sub_24E29C460();
  if (!*a1)
  {
    v5 = [objc_opt_self() currentGame];
    v6 = [v5 bundleIdentifier];

    sub_24E347CF8();
    sub_24E29C824();
  }

  v7 = MEMORY[0x25303D9B0](v4, *(a2 + 16), 1.0, 0.0);
  MEMORY[0x28223BE20](v7);
  sub_24E345558();
}

uint64_t sub_24E1F4C8C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7780);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  sub_24E2997D0(a2, v29 - v8);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_24DF8C95C(v9, &qword_27F1E7780);
LABEL_5:
    v11 = type metadata accessor for AccessPointView();
    v15 = (a1 + v11[11]);
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v30) = v16;
    *(&v30 + 1) = v17;
    LOBYTE(v29[0]) = 0;
    goto LABEL_6;
  }

  v10 = *v9;
  sub_24E08FBA8(v9);
  if (v10 != 5)
  {
    goto LABEL_5;
  }

  v11 = type metadata accessor for AccessPointView();
  v12 = (a1 + v11[11]);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v30) = v13;
  *(&v30 + 1) = v14;
  LOBYTE(v29[0]) = 1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  v18 = sub_24E299278(a2, v6);
  sub_24E08FBA8(v6);
  v20 = (v18 & 1) == 0 && (sub_24E346B88(), v19 = *v6, sub_24E08FBA8(v6), v19 == 5) && *a2 == 5;
  v21 = (a1 + v11[10]);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v30) = v22;
  *(&v30 + 1) = v23;
  LOBYTE(v29[0]) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  sub_24E1F5378(a2, v6, type metadata accessor for AccessPoint.Model);
  sub_24E346B98();
  v24 = sub_24E298EA0();
  v25 = (a1 + v11[12]);
  v26 = *(v25 + 2);
  v30 = *v25;
  v31 = v26;
  v29[0] = v24;
  v29[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7770);
  return sub_24E346B98();
}

uint64_t sub_24E1F4F80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() shared];
  v7 = sub_24E08A608();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  v8 = sub_24E298EA0();
  v10 = v9;
  sub_24E08FBA8(v5);
  v11 = (a2 + *(type metadata accessor for AccessPointView() + 48));
  v12 = *(v11 + 2);
  v15 = *v11;
  v16 = v12;
  v14[0] = v8;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7770);
  return sub_24E346B98();
}

uint64_t sub_24E1F50E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1F5148()
{
  v0 = type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_4_5(v0);
  OUTLINED_FUNCTION_6_71();

  return sub_24E1F4860();
}

uint64_t sub_24E1F51CC()
{
  v1 = type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_4_5(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_24E1F4A90(v3);
}

uint64_t sub_24E1F5228()
{
  v0 = type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_4_5(v0);
  v1 = OUTLINED_FUNCTION_6_71();

  return sub_24E1F4B70(v1, v2);
}

uint64_t sub_24E1F52A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_4_5(v2);
  v3 = OUTLINED_FUNCTION_6_71();

  return a2(v3);
}

uint64_t sub_24E1F5314(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return v3;
}

uint64_t sub_24E1F5378(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

unint64_t sub_24E1F5414()
{
  result = qword_27F1E7790;
  if (!qword_27F1E7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7788);
    sub_24E1F54A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7790);
  }

  return result;
}

unint64_t sub_24E1F54A0()
{
  result = qword_27F1E7798;
  if (!qword_27F1E7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E77A0);
    sub_24DFB4C28(&qword_27F1E77A8, &qword_27F1E77B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7798);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for AccessPointView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 36);
  sub_24E08FC04(*(v5 + 8), *(v5 + 16), *(v5 + 24));

  v6 = *(type metadata accessor for AccessPoint.Model(0) + 48);
  v7 = sub_24E3474B8();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E1F5718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessPointView();
  OUTLINED_FUNCTION_4_5(v4);
  return sub_24E1F30D8(a1, a2);
}

unint64_t sub_24E1F5794()
{
  result = qword_27F1E77D0;
  if (!qword_27F1E77D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E77C8);
    sub_24E1F584C();
    sub_24DFB4C28(&qword_27F1E77F8, &qword_27F1E7800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E77D0);
  }

  return result;
}

unint64_t sub_24E1F584C()
{
  result = qword_27F1E77D8;
  if (!qword_27F1E77D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E77E0);
    sub_24DFB4C28(&qword_27F1E77E8, &qword_27F1E77F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E77D8);
  }

  return result;
}

unint64_t sub_24E1F5904()
{
  result = qword_27F1E7838;
  if (!qword_27F1E7838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7828);
    sub_24E1F5988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7838);
  }

  return result;
}

unint64_t sub_24E1F5988()
{
  result = qword_27F1E7840;
  if (!qword_27F1E7840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7848);
    sub_24E1F5A40();
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7840);
  }

  return result;
}

unint64_t sub_24E1F5A40()
{
  result = qword_27F1E7850;
  if (!qword_27F1E7850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7858);
    sub_24E1F5ACC();
    sub_24E1F5BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7850);
  }

  return result;
}

unint64_t sub_24E1F5ACC()
{
  result = qword_27F1E7860;
  if (!qword_27F1E7860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7868);
    sub_24DFB4C28(&qword_27F1E7870, &qword_27F1E7878);
    sub_24DFB4C28(&qword_27F1E7880, &qword_27F1E7888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7860);
  }

  return result;
}

unint64_t sub_24E1F5BAC()
{
  result = qword_27F1E7890;
  if (!qword_27F1E7890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7898);
    sub_24DFB4C28(&qword_27F1E78A0, &qword_27F1E78A8);
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7890);
  }

  return result;
}

uint64_t sub_24E1F5C8C()
{
  OUTLINED_FUNCTION_8_60();
  result = sub_24E345948();
  *v0 = result;
  return result;
}

uint64_t sub_24E1F5CE0()
{
  OUTLINED_FUNCTION_8_60();
  result = sub_24E3459D8();
  *v0 = v2;
  return result;
}

uint64_t sub_24E1F5D30()
{
  OUTLINED_FUNCTION_8_60();
  result = sub_24E345B18();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_24E1F5D90()
{
  result = qword_27F1E7968;
  if (!qword_27F1E7968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7938);
    sub_24E1F5E48();
    sub_24DFB4C28(&qword_27F1E5EE8, &qword_27F1E5EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7968);
  }

  return result;
}

unint64_t sub_24E1F5E48()
{
  result = qword_27F1E7970;
  if (!qword_27F1E7970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7960);
    sub_24E1F5F00();
    sub_24DFB4C28(&qword_27F1E7988, &qword_27F1E7990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7970);
  }

  return result;
}

unint64_t sub_24E1F5F00()
{
  result = qword_27F1E7978;
  if (!qword_27F1E7978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7958);
    sub_24E1F5FB8();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7978);
  }

  return result;
}

unint64_t sub_24E1F5FB8()
{
  result = qword_27F1E7980;
  if (!qword_27F1E7980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7980);
  }

  return result;
}

unint64_t sub_24E1F603C()
{
  result = qword_27F1E79A0;
  if (!qword_27F1E79A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7940);
    sub_24E1F5D90();
    sub_24E1F60F8(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E79A0);
  }

  return result;
}

uint64_t sub_24E1F60F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E1F6140()
{
  result = qword_27F1E79B8;
  if (!qword_27F1E79B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E79B0);
    sub_24E1F61CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E79B8);
  }

  return result;
}

unint64_t sub_24E1F61CC()
{
  result = qword_27F1E79C0;
  if (!qword_27F1E79C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E79C8);
    sub_24DFDCC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E79C0);
  }

  return result;
}

unint64_t sub_24E1F6258()
{
  result = qword_27F1E7A00;
  if (!qword_27F1E7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E79E8);
    sub_24E1F6310();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A00);
  }

  return result;
}

unint64_t sub_24E1F6310()
{
  result = qword_27F1E7A08;
  if (!qword_27F1E7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E79F8);
    sub_24E1F5FB8();
    sub_24DFB4C28(&qword_27F1E5EE8, &qword_27F1E5EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A08);
  }

  return result;
}

uint64_t sub_24E1F63C8(uint64_t a1)
{
  v2 = sub_24E346458();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E345918();
}

unint64_t sub_24E1F6490()
{
  result = qword_27F1E7A20;
  if (!qword_27F1E7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E79D8);
    sub_24E1F6548();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A20);
  }

  return result;
}

unint64_t sub_24E1F6548()
{
  result = qword_27F1E7A28;
  if (!qword_27F1E7A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7A10);
    sub_24E1F6600();
    sub_24DFB4C28(&qword_27F1E7A40, &qword_27F1E7A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A28);
  }

  return result;
}

unint64_t sub_24E1F6600()
{
  result = qword_27F1E7A30;
  if (!qword_27F1E7A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7A38);
    sub_24DFB4C28(&qword_27F1E7988, &qword_27F1E7990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A30);
  }

  return result;
}

unint64_t sub_24E1F66CC()
{
  result = qword_27F1E7A80;
  if (!qword_27F1E7A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7A78);
    sub_24E1871D4();
    sub_24DFB4C28(&qword_27F1E42D8, &qword_27F1E42E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7A80);
  }

  return result;
}

void OUTLINED_FUNCTION_0_147()
{
  v2 = *(v0 + 32);
  *(v1 - 48) = *(v0 + 24);
  *(v1 - 40) = v2;
}

uint64_t OUTLINED_FUNCTION_14_34(uint64_t a1)
{

  return sub_24E1F50E4(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_15_28()
{

  return sub_24E346B88();
}

uint64_t OUTLINED_FUNCTION_18_33()
{

  return type metadata accessor for AccessPoint.Model(0);
}

id sub_24E1F6884(char a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = a2;
    }

    if (a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    if (a1 == 1)
    {
      return v4;
    }

    a2 = v5;
  }

  return a2;
}

uint64_t sub_24E1F6900()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 120.0;
  if (result)
  {
    v1 = 88.0;
  }

  qword_27F20B160 = *&v1;
  *algn_27F20B168 = v1;
  return result;
}

uint64_t sub_24E1F693C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 9.0;
  if (result)
  {
    v1 = 15.5;
  }

  qword_27F1E7AC0 = *&v1;
  return result;
}

uint64_t sub_24E1F696C()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 0.0;
  if (result)
  {
    v1 = 9.0;
  }

  qword_27F1E7AC8 = *&v1;
  return result;
}

uint64_t sub_24E1F699C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1E7AD0);
  __swift_project_value_buffer(v4, qword_27F1E7AD0);
  GKIsXRUIIdiomShouldUsePadUI();
  if (qword_27F1DE000 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, &unk_27F20BC00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1F6B94()
{
  sub_24DF88A8C(0, &qword_27F1E5FD0);
  v0 = sub_24E3485B8();
  result = sub_24E3485B8();
  qword_27F20B170 = v0;
  *algn_27F20B178 = result;
  qword_27F20B180 = 0;
  return result;
}

id sub_24E1F6C20()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  result = [v0 whiteColor];
  qword_27F20B188 = v2;
  unk_27F20B190 = result;
  qword_27F20B198 = 0;
  return result;
}

char *sub_24E1F6CB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_avatarView;
  type metadata accessor for AvatarView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView] = 0;
  v14 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel;
  if (qword_27F1DDA10 != -1)
  {
    OUTLINED_FUNCTION_8_61();
    swift_once();
  }

  v15 = sub_24E344158();
  v16 = __swift_project_value_buffer(v15, qword_27F1E7A90);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  OUTLINED_FUNCTION_1_22();
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *&v5[v14] = OUTLINED_FUNCTION_0_29();
  v20 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_subtitleLabel;
  if (qword_27F1DDA18 != -1)
  {
    OUTLINED_FUNCTION_7_51();
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_27F1E7AA8);
  v17(v12, v21, v15);
  OUTLINED_FUNCTION_1_22();
  v22 = objc_allocWithZone(v18);
  *&v5[v20] = OUTLINED_FUNCTION_0_29();
  v5[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType] = 2;
  v5[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_state] = 0;
  v23 = type metadata accessor for LargePlayerLockupView();
  v39.receiver = v5;
  v39.super_class = v23;
  v24 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel;
  v26 = *&v24[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel];
  v27 = v24;
  [v26 setTextAlignment_];
  v28 = *&v24[v25];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 labelColor];
  [v30 setTextColor_];

  v32 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_subtitleLabel;
  [*&v27[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_subtitleLabel] setTextAlignment_];
  v33 = *&v27[v32];
  v34 = [v29 secondaryLabelColor];
  [v33 setTextColor_];

  v35 = [*&v27[v32] layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for PlayerCardTheme();
  if (*(__swift_project_value_buffer(v36, qword_27F20BF00) + *(v36 + 56) + 8))
  {
    v37 = sub_24E347CB8();
  }

  else
  {
    v37 = 0;
  }

  [v35 setCompositingFilter_];

  swift_unknownObjectRelease();
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    [*&v24[v25] setNumberOfLines_];
  }

  return v27;
}

void sub_24E1F70D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_avatarView;
  type metadata accessor for AvatarView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView) = 0;
  v6 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel;
  if (qword_27F1DDA10 != -1)
  {
    OUTLINED_FUNCTION_8_61();
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, qword_27F1E7A90);
  v9 = *(*(v7 - 8) + 16);
  v9(v4, v8, v7);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  *(v1 + v6) = OUTLINED_FUNCTION_0_29();
  v12 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_subtitleLabel;
  if (qword_27F1DDA18 != -1)
  {
    OUTLINED_FUNCTION_7_51();
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27F1E7AA8);
  v9(v4, v13, v7);
  OUTLINED_FUNCTION_1_22();
  v14 = objc_allocWithZone(v10);
  *(v1 + v12) = OUTLINED_FUNCTION_0_29();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType) = 2;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_state) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E1F7314(void *a1)
{
  swift_getObjectType();
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView];
  if (v3)
  {
    v4 = v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_state];
    v5 = v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType];
    v6 = v3;
    v7 = sub_24E1F73E0(v5, v4);
    sub_24E0D8E24(v7);
    [v1 addSubview_];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_24E1F73E0(char a1, char a2)
{
  if (qword_27F1DDA20 != -1)
  {
    swift_once();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a2;
  *(v6 + 25) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24E1F93AC;
  *(v7 + 24) = v6;
  v11[4] = sub_24E1F93BC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E1F871C;
  v11[3] = &block_descriptor_74;
  v8 = _Block_copy(v11);

  v9 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_24E1F75B8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView) = a1;
  v2 = a1;
  sub_24E1F7314(v3);
}

id sub_24E1F7618()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    type metadata accessor for ArtworkView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  sub_24E1F75B8(v2);
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_avatarView);

  return [v3 setHidden_];
}

double sub_24E1F76A0()
{
  swift_getObjectType();
  v1 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView);
  v17[3] = sub_24DF88A8C(0, &qword_27F1E1D30);
  v17[4] = MEMORY[0x277D22A58];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_avatarView);
  }

  v17[0] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel);
  v16[3] = type metadata accessor for DynamicTypeLabel();
  v16[4] = MEMORY[0x277D22A68];
  v16[0] = v10;
  v11 = v8;
  v12 = v10;
  sub_24E1F7854(v17, v16, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_24E3445F8();
  v14 = v13;
  (*(v3 + 8))(v7, v1);
  return v14;
}

uint64_t sub_24E1F7854@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v70 = a3;
  v74 = sub_24E344648();
  v4 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E3445E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v71 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E344658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  v13 = *(sub_24E344688() - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v67 = *(v13 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24E36A270;
  v68 = v15;
  v72 = v15 + v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27F1DDA20 != -1)
  {
    swift_once();
  }

  sub_24E3440C8();
  v80 = MEMORY[0x277D839F8];
  v81 = MEMORY[0x277D22A30];
  v78 = 0;
  v79 = 0;
  v76 = 0u;
  v77 = 0u;
  v16 = v10;
  v17 = *(v10 + 104);
  v64 = *MEMORY[0x277D227E8];
  v63 = v10 + 104;
  v62 = v17;
  v17(v12);
  v18 = v7;
  v19 = *(v7 + 104);
  v20 = v12;
  v21 = v71;
  v61 = *MEMORY[0x277D227C8];
  v60 = v19;
  v54 = v7 + 104;
  v19(v71);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v23 = *(v4 + 72);
  v49 = v6;
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v58 = v22;
  v57 = v24 + v23;
  v25 = swift_allocObject();
  v56 = xmmword_24E367D20;
  *(v25 + 16) = xmmword_24E367D20;
  v59 = v24;
  sub_24E344618();
  v75 = v25;
  v26 = sub_24E1F9364(&qword_27F1E5D20, MEMORY[0x277D227D8]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v28 = sub_24DF8A8FC();
  v29 = v73;
  v53 = v27;
  v52 = v28;
  v30 = v74;
  v55 = v26;
  sub_24E3487E8();
  sub_24E344678();
  v51 = *(v4 + 8);
  v51(v29, v30);
  v31 = v21;
  v32 = v20;
  v33 = v49;
  v50 = *(v18 + 8);
  v50(v31, v49);
  v34 = *(v16 + 8);
  v65 = v9;
  v69 = v16 + 8;
  v34(v32, v9);
  sub_24DF8A960(&v76);
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v36 = v66[3];
  v35 = v66[4];
  v37 = __swift_project_boxed_opaque_existential_1(v66, v36);
  v82[3] = v36;
  v82[4] = *(v35 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);
  if (qword_27F1DDA38 != -1)
  {
    swift_once();
  }

  v39 = sub_24E3444F8();
  v40 = __swift_project_value_buffer(v39, qword_27F1E7AD0);
  v80 = v39;
  v81 = MEMORY[0x277D22798];
  v41 = __swift_allocate_boxed_opaque_existential_1(&v79);
  (*(*(v39 - 8) + 16))(v41, v40, v39);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v42 = v65;
  v62(v32, v64, v65);
  v43 = v71;
  v60(v71, v61, v33);
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  sub_24E344618();
  v75 = v44;
  v45 = v73;
  v46 = v74;
  sub_24E3487E8();
  sub_24E344678();
  v51(v45, v46);
  v50(v43, v33);
  v34(v32, v42);
  sub_24DF8A960(&v76);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return sub_24E344668();
}

uint64_t sub_24E1F807C()
{
  swift_getObjectType();
  v1 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v24 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for LargePlayerLockupView();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v14 = OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView;
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_artworkView];
  v26[3] = sub_24DF88A8C(0, &qword_27F1E1D30);
  v26[4] = MEMORY[0x277D22A58];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_avatarView];
  }

  v26[0] = v16;
  v17 = *&v0[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel];
  v25[3] = type metadata accessor for DynamicTypeLabel();
  v25[4] = MEMORY[0x277D22A68];
  v25[0] = v17;
  v18 = v17;
  v19 = v15;
  sub_24E1F7854(v26, v25, v13);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  [v0 bounds];
  [v0 layoutMargins];
  if (qword_27F1DDA30 != -1)
  {
    OUTLINED_FUNCTION_5_87();
  }

  sub_24E344608();
  (*(v3 + 8))(v7, v1);
  v20 = *&v0[v14];
  if (v20)
  {
    v21 = v20;
    [v21 frame];
    Width = CGRectGetWidth(v28);
    sub_24E0D8A24(1, Width * 0.5);
  }

  return (*(v9 + 8))(v13, v24);
}

void sub_24E1F8384(void *a1, uint64_t a2, char a3, char a4)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v7 = [objc_opt_self() _preferredFontForTextStyle_addingSymbolicTraits_];
    if (!v7)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [objc_opt_self() configurationWithFont_];
  }

  else
  {
    if (qword_27F1DDA40 != -1)
    {
      swift_once();
    }

    v10 = sub_24E1F6884(a3, qword_27F20B170, *algn_27F20B178, qword_27F20B180);
    [v10 setFill];
    if (qword_27F1DDA20 != -1)
    {
      swift_once();
    }

    [a1 fillRect_];
    v8 = [objc_opt_self() systemFontOfSize_];
    v9 = [objc_opt_self() configurationWithFont:v8 scale:-1];
  }

  if (!a4)
  {
  }

  sub_24DF88A8C(0, &qword_280BE0110);
  v20 = v9;

  v11 = sub_24DFD29F8();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;

  v13 = [v12 imageWithSymbolConfiguration_];

  if (qword_27F1DDA48 != -1)
  {
    swift_once();
  }

  v14 = sub_24E1F6884(a3, qword_27F20B188, unk_27F20B190, qword_27F20B198);
  v15 = [v13 imageWithTintColor_];

  [v15 size];
  v17 = v16;
  v19 = v18;
  if (qword_27F1DDA20 != -1)
  {
    swift_once();
  }

  [v15 drawInRect_];
}

void sub_24E1F871C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_24E1F8768(uint64_t a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LargePlayerLockupView();
  objc_msgSendSuper2(&v10, sel_traitCollectionDidChange_, a1);
  v4 = [v1 traitCollection];
  v5 = sub_24E3483C8();

  if (!a1 || (result = sub_24E3483C8(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    v8 = sub_24E3483C8();

    [*&v2[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel] setNumberOfLines_];
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    return [*&v2[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_subtitleLabel] setNumberOfLines_];
  }

  return result;
}

id sub_24E1F88D0()
{
  [*&v0[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel] setText_];
  sub_24E1DD390(0, 0);

  return [v0 setNeedsLayout];
}

double sub_24E1F8940(uint64_t a1, void *a2)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v31 = v4;
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  if (qword_27F1DDA20 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27F20B160;
  if (qword_27F1DDA28 != -1)
  {
    swift_once();
  }

  v15 = *&qword_27F1E7AC0;
  if (qword_27F1DDA30 != -1)
  {
    OUTLINED_FUNCTION_5_87();
  }

  v30 = v8;
  v16 = v14 + v15 + *&qword_27F1E7AC8 + v15 + *&qword_27F1E7AC8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20);
  sub_24E347128();

  sub_24DF88A8C(0, &qword_27F1DEE28);
  if (qword_27F1DE000 != -1)
  {
    swift_once();
  }

  v17 = sub_24E344158();
  v18 = __swift_project_value_buffer(v17, &unk_27F20BC00);
  swift_getObjectType();
  v19 = [a2 traitCollection];
  MEMORY[0x25303F0C0](v18, v19);

  sub_24E344398();
  sub_24E3443A8();
  v20 = sub_24E344868();
  swift_allocObject();
  v21 = sub_24E344858();
  v22 = sub_24E344788();
  swift_allocObject();
  v23 = sub_24E344758();
  v34[3] = v22;
  v34[4] = MEMORY[0x277D228B0];
  v34[0] = v23;
  v33[3] = v20;
  v33[4] = MEMORY[0x277D228F0];
  v33[0] = v21;

  sub_24E1F7854(v34, v33, v13);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_24DFC1764();
  sub_24E3440D8();
  v25 = v24;
  swift_unknownObjectRelease();
  if (qword_27F1DDA38 != -1)
  {
    swift_once();
  }

  if (v25 > v16)
  {
    v16 = v25;
  }

  v26 = sub_24E3444F8();
  __swift_project_value_buffer(v26, qword_27F1E7AD0);
  v27 = [a2 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  (*(v31 + 8))(v7, v32);
  (*(v29 + 8))(v13, v30);
  return v16;
}

id sub_24E1F8E08(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B20);
  sub_24E347128();

  if (v15 == 1)
  {
    v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType] = 0;
    sub_24E1F7618();
    v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel];
    v5 = sub_24E347CB8();
    v6 = GKGameCenterUIFrameworkBundle();
    v7 = OUTLINED_FUNCTION_9_53();

    v8 = sub_24E347CF8();
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_48();

    v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_lockupType] = 2;
    sub_24E1F7618();
    v13 = *&v1[OBJC_IVAR____TtC12GameCenterUI21LargePlayerLockupView_titleLabel];
    swift_getKeyPath();
    v4 = v13;
    sub_24E347128();

    v11 = v15;
    v12 = v16;
  }

  sub_24DFA0B40(v11, v12, v4);

  return [v2 setNeedsLayout];
}

id sub_24E1F90D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargePlayerLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for LargePlayerLockupView.LockupType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E1F9278()
{
  result = qword_27F1E7B18;
  if (!qword_27F1E7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7B18);
  }

  return result;
}

uint64_t sub_24E1F9364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_5_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_53()
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return sub_24E347128();
}

uint64_t ActionMetrics.init(domain:eventType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 56) = 1;
  *(inited + 64) = a3;
  *(inited + 72) = a4;
  sub_24E1F959C();
  v10 = sub_24E347C28();
  ScalarDictionary.init(with:)(v10);
  return sub_24E3471D8();
}

unint64_t sub_24E1F959C()
{
  result = qword_27F1E7B30;
  if (!qword_27F1E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7B30);
  }

  return result;
}

uint64_t ActionMetrics.CustomKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24E348B78();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ActionMetrics.CustomKey.rawValue.getter()
{
  v1 = 0x707954746E657665;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_24E1F96DC@<X0>(uint64_t *a1@<X8>)
{
  result = ActionMetrics.CustomKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24E1F9708()
{
  result = qword_27F1E7B38;
  if (!qword_27F1E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7B38);
  }

  return result;
}

_BYTE *_s9CustomKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E1F9870()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDA50 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E7B40);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E7B88 = sub_24E3444F8();
  unk_27F1E7B90 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E7B70);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1F9A54(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  if (qword_27F1DDA58 != -1)
  {
    OUTLINED_FUNCTION_2_94();
    swift_once();
  }

  v14 = sub_24E344158();
  v15 = __swift_project_value_buffer(v14, qword_27F1E7B58);
  (*(*(v14 - 8) + 16))(v13, v15, v14);
  (*(v9 + 104))(v13, *MEMORY[0x277D22618], v7);
  *a2 = sub_24E3444F8();
  *a3 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(a4);
  v18[3] = v7;
  v18[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v9 + 16))(boxed_opaque_existential_1, v13, v7);
  sub_24E344508();
  return (*(v9 + 8))(v13, v7);
}

void sub_24E1F9C38()
{
  qword_27F1E7C00 = MEMORY[0x277D839F8];
  unk_27F1E7C08 = MEMORY[0x277D22A30];
  qword_27F1E7BE8 = 0x4034000000000000;
}

char *sub_24E1F9C60(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_gradientBackground;
  sub_24E045028();
  *&v4[v12] = sub_24E317454(10.0);
  v13 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_headingLabel;
  if (qword_27F1DDA50 != -1)
  {
    OUTLINED_FUNCTION_7_52();
    swift_once();
  }

  v14 = sub_24E344158();
  v15 = __swift_project_value_buffer(v14, qword_27F1E7B40);
  v16 = *(*(v14 - 8) + 16);
  v16(v11, v15, v14);
  OUTLINED_FUNCTION_8_62();
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v18 = OUTLINED_FUNCTION_1_51();
  *&v4[v13] = sub_24E0AEF24(v18, v19, v20, v21, v22, v23);
  v24 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_detailLabel;
  if (qword_27F1DDA58 != -1)
  {
    OUTLINED_FUNCTION_2_94();
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_27F1E7B58);
  v16(v11, v25, v14);
  v26 = OUTLINED_FUNCTION_8_62();
  v27 = objc_allocWithZone(type metadata accessor for EmphasizedLabel(v26));
  OUTLINED_FUNCTION_1_51();
  *&v4[v24] = sub_24E3272CC();
  *&v4[OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_playerViews] = MEMORY[0x277D84F90];
  v28 = type metadata accessor for LeaderboardMovementLockupView();
  v42.receiver = v4;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  [v29 setLayoutMargins_];
  v30 = [v29 layer];
  [v30 addSublayer_];

  v31 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_headingLabel;
  v32 = *&v29[OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_headingLabel];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 whiteColor];
  v36 = [v35 colorWithAlphaComponent_];

  [v34 setTextColor_];
  v37 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_detailLabel;
  v38 = *&v29[OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_detailLabel];
  v39 = [v33 whiteColor];
  [v38 setTextColor_];

  v40 = [*&v29[v31] layer];
  [v40 setCompositingFilter_];

  [v29 addSubview_];
  [v29 addSubview_];

  return v29;
}

void sub_24E1FA008()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_gradientBackground;
  sub_24E045028();
  *(v0 + v4) = sub_24E317454(10.0);
  v5 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_headingLabel;
  if (qword_27F1DDA50 != -1)
  {
    OUTLINED_FUNCTION_7_52();
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F1E7B40);
  v8 = *(*(v6 - 8) + 16);
  v8(v3, v7, v6);
  OUTLINED_FUNCTION_8_62();
  v9 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v10 = OUTLINED_FUNCTION_1_51();
  *(v0 + v5) = sub_24E0AEF24(v10, v11, v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_detailLabel;
  if (qword_27F1DDA58 != -1)
  {
    OUTLINED_FUNCTION_2_94();
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_27F1E7B58);
  v8(v3, v17, v6);
  v18 = OUTLINED_FUNCTION_8_62();
  v19 = objc_allocWithZone(type metadata accessor for EmphasizedLabel(v18));
  OUTLINED_FUNCTION_1_51();
  *(v0 + v16) = sub_24E3272CC();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_playerViews) = MEMORY[0x277D84F90];
  sub_24E348AE8();
  __break(1u);
}

double sub_24E1FA290()
{
  v1 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  [v0 layoutMargins];
  sub_24E348538();
  sub_24E1FA470();
  sub_24E3445F8();
  v9 = v8;
  [v0 layoutMargins];
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v7, v1);
  return v9 + v11 + v13;
}

uint64_t sub_24E1FA470()
{
  v63 = sub_24E344688();
  v0 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_1();
  v74 = v2 - v1;
  v3 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v60 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v72 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  v22 = *(v0 + 72);
  v67 = v0;
  v23 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24E36A270;
  v62 = v23;
  v75 = v24;
  v25 = *(v71 + OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_headingLabel);
  v82 = type metadata accessor for DynamicTypeLabel();
  v83 = MEMORY[0x277D22A58];
  v81 = v25;
  v26 = qword_27F1DDA60;
  v27 = v25;
  if (v26 != -1)
  {
LABEL_29:
    swift_once();
  }

  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  (*(v17 + 104))(v21);
  (*(v11 + 104))(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v77[0] = v28;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  sub_24E344678();
  v29 = *(v5 + 8);
  v5 += 8;
  v29(v9, v3);
  (*(v11 + 8))(v15, v60);
  v70 = v21;
  (*(v17 + 8))(v21, v72);
  sub_24DF8A960(&v78);
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v30 = *(v71 + OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_detailLabel);
  v31 = type metadata accessor for EmphasizedLabel(0);
  v17 = MEMORY[0x277D22A58];
  v82 = v31;
  v83 = MEMORY[0x277D22A58];
  v81 = v30;
  v32 = qword_27F1DDA68;
  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  if (qword_27F1DDA70 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1E7BC0, &v78);
  v11 = v21;
  OUTLINED_FUNCTION_5_88();
  v34();
  v35 = OUTLINED_FUNCTION_4_81();
  v36(v35);
  v37 = OUTLINED_FUNCTION_11_40();
  *(v37 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v77[0] = v37;
  OUTLINED_FUNCTION_6_73();
  sub_24E344678();
  OUTLINED_FUNCTION_10_49();
  v38();
  OUTLINED_FUNCTION_9_54();
  v39();
  OUTLINED_FUNCTION_12_39();
  v40();
  sub_24DF8A960(&v78);
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v64 = OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_playerViews;
  v41 = *(v71 + OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_playerViews);
  v68 = sub_24DFD8654();
  v66 = v41 & 0xC000000000000001;
  v65 = v41 & 0xFFFFFFFFFFFFFF8;
  v61 = (v67 + 32);
  v67 = v41;

  v21 = 0;
  while (v68 != v21)
  {
    if (v66)
    {
      v42 = MEMORY[0x25303F560](v21, v67);
    }

    else
    {
      if (v21 >= *(v65 + 16))
      {
        goto LABEL_27;
      }

      v42 = *(v67 + 8 * v21 + 32);
    }

    v43 = v42;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v44 = *(v71 + v64);
    if (v44 >> 62)
    {
      v45 = sub_24E348878();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v45 - 1;
    if (__OFSUB__(v45, 1))
    {
      goto LABEL_28;
    }

    sub_24DFB648C(v21 != v46);
    if (v21 == v46)
    {
      v48 = MEMORY[0x277D839F8];
      if (qword_27F1DDA78 != -1)
      {
        swift_once();
      }

      sub_24DF89628(&qword_27F1E7BE8, &v81);
      v47 = MEMORY[0x277D22A30];
    }

    else
    {
      v47 = MEMORY[0x277D22A30];
      v83 = MEMORY[0x277D22A30];
      v48 = MEMORY[0x277D839F8];
      v82 = MEMORY[0x277D839F8];
      v81 = 0;
    }

    *(&v79 + 1) = type metadata accessor for LeaderboardPlayerLockupView();
    v80 = v17;
    v77[4] = v47;
    *&v78 = v43;
    v77[3] = v48;
    v77[0] = 0;
    sub_24DF89628(&v81, v76);
    OUTLINED_FUNCTION_5_88();
    v49();
    v50 = OUTLINED_FUNCTION_4_81();
    v51(v50);
    v52 = v15;
    *(OUTLINED_FUNCTION_11_40() + 16) = xmmword_24E367D20;
    v73 = v43;
    sub_24E344618();
    OUTLINED_FUNCTION_6_73();
    sub_24E344678();
    OUTLINED_FUNCTION_10_49();
    v53();
    v5 = v15;
    OUTLINED_FUNCTION_9_54();
    v54();
    OUTLINED_FUNCTION_12_39();
    v55();
    sub_24DF8A960(v76);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v56 = v75;
    v57 = *(v75 + 16);
    if (v57 >= *(v75 + 24) >> 1)
    {
      sub_24E076A38();
      v56 = v58;
    }

    *(v56 + 16) = v57 + 1;
    v75 = v56;
    (*v61)(v56 + v62 + v57 * v69, v74, v63);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    ++v21;
    v15 = v52;
    v11 = v70;
    v17 = MEMORY[0x277D22A58];
  }

  return sub_24E344668();
}

uint64_t sub_24E1FAEC0()
{
  v1 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LeaderboardMovementLockupView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI29LeaderboardMovementLockupView_gradientBackground];
  [v0 bounds];
  [v15 setFrame_];
  sub_24E1FA470();
  [v0 bounds];
  [v0 layoutMargins];
  sub_24E344608();
  (*(v3 + 8))(v7, v1);
  return (*(v10 + 8))(v14, v8);
}

id sub_24E1FB0EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardMovementLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_6_73()
{

  return sub_24E3487E8();
}

uint64_t OUTLINED_FUNCTION_11_40()
{

  return swift_allocObject();
}

uint64_t sub_24E1FB2E4(double a1, double a2, double a3, double a4)
{
  v6 = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = floor(v6 * (1.0 - v7));
  v11 = a1;
  if (v8)
  {
    MaxX = CGRectGetMaxX(*(&a2 - 1));
    v13 = *(v9 + 16);
    if (v13)
    {
      v14 = MaxX - v6;
      v15 = v9 + 32;
      do
      {
        sub_24DF89628(v15, v21);
        v23.origin.x = OUTLINED_FUNCTION_28();
        CGRectGetMinY(v23);
        __swift_project_boxed_opaque_existential_1(v21, v22);
        OUTLINED_FUNCTION_28();
        sub_24E348508();
        sub_24E344088();
        __swift_destroy_boxed_opaque_existential_1(v21);
        v14 = v14 - (v6 - v10);
        v15 += 40;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    MinX = CGRectGetMinX(*(&a2 - 1));
    v17 = *(v9 + 16);
    if (v17)
    {
      v18 = MinX;
      v19 = v9 + 32;
      do
      {
        sub_24DF89628(v19, v21);
        v24.origin.x = OUTLINED_FUNCTION_28();
        CGRectGetMinY(v24);
        __swift_project_boxed_opaque_existential_1(v21, v22);
        OUTLINED_FUNCTION_28();
        sub_24E348508();
        sub_24E344088();
        __swift_destroy_boxed_opaque_existential_1(v21);
        v18 = v10 + v18;
        v19 += 40;
        --v17;
      }

      while (v17);
    }
  }

  OUTLINED_FUNCTION_28();
  return sub_24E343FD8();
}

uint64_t OverlappingLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

unint64_t sub_24E1FB54C()
{
  result = qword_27F1E7C30;
  if (!qword_27F1E7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7C30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OverlappingLayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *static OnboardingLayoutMetrics.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F1DDA80 != -1)
  {
    swift_once();
  }

  return memcpy(a1, xmmword_27F1E7C38, 0x58uLL);
}

void sub_24E1FB6EC()
{
  xmmword_27F1E7C38[0] = xmmword_24E384410;
  unk_27F1E7C48 = xmmword_24E384420;
  xmmword_27F1E7C58 = xmmword_24E384430;
  unk_27F1E7C68 = xmmword_24E384440;
  OUTLINED_FUNCTION_0_148(xmmword_27F1E7C38, xmmword_24E384450);
}

void sub_24E1FB728()
{
  xmmword_27F1E7C90[0] = xmmword_24E384460;
  unk_27F1E7CA0 = xmmword_24E384470;
  xmmword_27F1E7CB0 = xmmword_24E384480;
  unk_27F1E7CC0 = xmmword_24E384490;
  OUTLINED_FUNCTION_0_148(xmmword_27F1E7C90, xmmword_24E3844A0);
}

void *static OnboardingLayoutMetrics.visionPadUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F1DDA88 != -1)
  {
    swift_once();
  }

  return memcpy(a1, xmmword_27F1E7C90, 0x58uLL);
}

uint64_t sub_24E1FB7D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E1FB7F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_24E1FB880(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = v7 + 16 * a1;
    v13 = *(v12 + 32);
    a3(v12 + 48, v11);
    *(v7 + 16) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t sub_24E1FB918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24E25ACD8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_24E130EB0((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_24E1FB9A4()
{
  type metadata accessor for DynamicTypeTextField();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  [v1 setAutocorrectionType_];
  if (*v0)
  {

    v3 = sub_24DFECF6C();

    v4 = [v3 alias];

    v5 = sub_24E347CF8();
    v7 = v6;

    sub_24DFC1DD4(v5, v7, v1, &selRef_setText_);
    v8 = sub_24E347CB8();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v11 = sub_24E347CF8();
    v13 = v12;

    sub_24DFC1DD4(v11, v13, v1, &selRef_setPlaceholder_);
    [v1 setClearButtonMode_];
    v14 = v1;
    sub_24DFD8050(0xD000000000000011, 0x800000024E384570, v14);
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v14 setMaximumContentSizeCategory_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D20);
    sub_24E346008();
    v15 = *&v17[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController];

    [v15 setNickname_];
    return v14;
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E1FD714();
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1FBC60(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController;
  *&v1[v3] = [objc_allocWithZone(GKNicknameController) init];
  *&v1[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_cancellableSubcriber] = 0;
  memcpy(&v1[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent], a1, 0x71uLL);
  sub_24E1FD6DC(a1, v15);
  v14.receiver = v1;
  v14.super_class = _s12GameCenterUI17NicknameTextFieldV11CoordinatorCMa_0();
  v4 = objc_msgSendSuper2(&v14, sel_init);
  v5 = OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController;
  v6 = *&v4[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController];
  v7 = v4;
  [v6 setDelegate_];
  [*&v4[v5] setShouldUseSuggestedNicknameOnDefaultNickname_];
  [*&v4[v5] setShouldShakeTextFieldOnError_];
  [*&v4[v5] startObservingKeyboardEvents];
  v8 = *a1;
  if (*a1)
  {
    v9 = *(v8 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_scrollObservation);
    v10 = v7;

    sub_24E1FD858(v10, v9);

    v15[0] = *(v8 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_willDisplayPlayerProfile);
    *(swift_allocObject() + 16) = v10;
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0240);
    sub_24E1FD904();
    v12 = sub_24E344F38();

    sub_24E1FD968(a1);

    *&v11[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_cancellableSubcriber] = v12;

    return v11;
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E1FD714();
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

void sub_24E1FBE94(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController;
    v4 = [*(a2 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController) nickname];
    v5 = [v4 isFirstResponder];

    if (v5)
    {
      v6 = [*(a2 + v3) nickname];
      [v6 resignFirstResponder];
    }
  }
}

id sub_24E1FBF64()
{
  v1 = *&v0[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_scrollObservation);

    v3 = v0;
    sub_24E1FD784(v3, v2);

    [*&v3[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController] stopObservingKeyboardEvents];
    v5.receiver = v3;
    v5.super_class = _s12GameCenterUI17NicknameTextFieldV11CoordinatorCMa_0();
    return objc_msgSendSuper2(&v5, sel_dealloc);
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E1FD714();

    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

void sub_24E1FC1B8()
{
  v1 = OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController;
  v2 = [*(v0 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController) nickname];
  v3 = [v2 isFirstResponder];

  if (v3)
  {
    v4 = [*(v0 + v1) nickname];
    [v4 resignFirstResponder];
  }
}

uint64_t sub_24E1FC2A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24E342F28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E342EF8();
  a4(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E1FC390()
{
  type metadata accessor for GameCenterSettings();
  v0 = sub_24DFECA04();
  if ((v0 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
    sub_24E346C68();
  }

  return v0 & 1;
}

void sub_24E1FC458()
{
  v5 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v0 = sub_24E347CF8();
  v2 = v1;
  v3 = sub_24E347CF8();
  sub_24E08FD58(v0, v2, v3, v4, v5);
}

void sub_24E1FC534()
{
  v1 = sub_24DFFA658([*(v0 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_nicknameController) nickname]);
  if (v2)
  {
    if (!*(v0 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent))
    {
      type metadata accessor for GameCenterSettings();
      sub_24E1FD714();

      sub_24E345828();
      __break(1u);
      return;
    }

    v3 = v1;
    v4 = v2;

    v5 = sub_24DFECF6C();

    v6 = [v5 alias];

    v7 = sub_24E347CF8();
    v9 = v8;

    if (v3 == v7 && v4 == v9)
    {
    }

    else
    {
      v11 = sub_24E348C08();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v12 = sub_24E347CF8();
    v14 = v13;
    v15 = sub_24E347CF8();
    sub_24E08FD58(v12, v14, v15, v16, v17);
  }
}

uint64_t sub_24E1FC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = &v3[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent];
  v12 = *&v3[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 56];
  v13 = v3[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 64];
  *&v31 = *&v3[OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 48];
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v13;
  LOBYTE(v30[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
  sub_24E346C68();
  if (a2)
  {
    v14 = *(v11 + 4);
    v15 = *(v11 + 5);
    v31 = *(v11 + 1);
    v32 = v14;
    v33 = v15;
    v30[0] = a1;
    v30[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
    sub_24E346C68();
    v16 = *(v11 + 10);
    v17 = v11[88];
    *&v31 = *(v11 + 9);
    *(&v31 + 1) = v16;
    LOBYTE(v32) = v17;
    LOBYTE(v30[0]) = 1;
    return sub_24E346C68();
  }

  else
  {
    v19 = *(v11 + 10);
    v20 = v11[88];
    *&v31 = *(v11 + 9);
    *(&v31 + 1) = v19;
    LOBYTE(v32) = v20;
    LOBYTE(v30[0]) = 0;
    result = sub_24E346C68();
    if (!a3)
    {
      v21 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v22 = sub_24E347CF8();
      v24 = v23;
      v25 = sub_24E347CF8();
      sub_24E08FD58(v22, v24, v25, v26, v21);

      v27 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v4;
      v29 = v4;
      sub_24DFC8700(0, 0, v10, &unk_24E3846C8, v28);
    }
  }

  return result;
}

uint64_t sub_24E1FCAA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E032B70;

  return sub_24E1FCBC8();
}

uint64_t sub_24E1FCBC8()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E1FCC64, 0, 0);
}

uint64_t sub_24E1FCC64()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 32) = [objc_opt_self() local];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24E1FCD1C;

  return GKLocalPlayer.loadAuthenticatedProfileWithProfile(discardingStaleData:)(1);
}

uint64_t sub_24E1FCD1C()
{
  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  v3 = *(*v0 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_24E1FCE30, 0, 0);
}

uint64_t sub_24E1FCE30()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_24E348068();
  v4 = v2;
  v5 = sub_24E348058();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_24DFC8700(0, 0, v1, &unk_24E3846B8, v6);

  OUTLINED_FUNCTION_12_5();

  return v8();
}

uint64_t sub_24E1FCF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E1FCFB8, v6, v5);
}

uint64_t sub_24E1FCFB8()
{
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent))
  {
    v2 = objc_opt_self();

    v3 = [v2 local];
    sub_24DFECFDC();

    OUTLINED_FUNCTION_12_5();

    return v4();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E1FD714();

    return sub_24E345828();
  }
}

uint64_t sub_24E1FD13C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent;
  v6 = *(v2 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 80);
  v7 = *(v2 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 88);
  *__dst = *(v2 + OBJC_IVAR____TtCV12GameCenterUIP33_71E88C93E9376CB5FC37AECD01F72ACD17NicknameTextField11Coordinator_parent + 72);
  *&__dst[8] = v6;
  __dst[16] = v7;
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF720);
  sub_24E346C68();
  if (a2)
  {
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    *__dst = *(v5 + 16);
    *&__dst[16] = v8;
    *&__dst[24] = v9;
    v14 = a1;
    v15 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
    return sub_24E346C68();
  }

  else
  {
    memcpy(__dst, v5, sizeof(__dst));
    sub_24E1FD6DC(__dst, &v14);
    v11 = sub_24E347CB8();
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    v14 = *&__dst[16];
    v15 = *&__dst[24];
    v16 = *&__dst[32];
    v17 = *&__dst[40];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF718);
    sub_24E346C68();
    sub_24E1FD968(__dst);
  }
}

uint64_t sub_24E1FD3BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_24E1FD3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E1FD46C()
{
  objc_allocWithZone(_s12GameCenterUI17NicknameTextFieldV11CoordinatorCMa_0());
  sub_24E1FD6DC(v0, v2);
  return sub_24E1FBC60(v0);
}

uint64_t sub_24E1FD550@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_24E1FD46C();
  *a1 = result;
  return result;
}

uint64_t sub_24E1FD594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1FD998();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E1FD5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1FD998();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E1FD65C()
{
  sub_24E1FD998();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E1FD688()
{
  result = qword_27F1E7D10;
  if (!qword_27F1E7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D10);
  }

  return result;
}

unint64_t sub_24E1FD714()
{
  result = qword_27F1E01A0;
  if (!qword_27F1E01A0)
  {
    type metadata accessor for GameCenterSettings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E01A0);
  }

  return result;
}

uint64_t sub_24E1FD784(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7 != v5)
  {
    if (*v8 == a1)
    {
      swift_beginAccess();
      sub_24E1FB880(v5, sub_24E259FC0, sub_24E130EB4);
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    ++v5;
    v8 += 2;
  }

  return result;
}

id sub_24E1FD858(void *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_24E011230();
  v3 = *(*(a2 + 16) + 16);
  sub_24E124318(v3);
  v4 = *(a2 + 16);
  *(v4 + 16) = v3 + 1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = a1;
  *(v5 + 40) = &off_286124750;
  *(a2 + 16) = v4;
  swift_endAccess();

  return a1;
}

unint64_t sub_24E1FD904()
{
  result = qword_27F1E7D18;
  if (!qword_27F1E7D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D18);
  }

  return result;
}

unint64_t sub_24E1FD998()
{
  result = qword_27F1E7D28;
  if (!qword_27F1E7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D28);
  }

  return result;
}

uint64_t sub_24E1FD9EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E1FCF20(v2, v3, v4, v5);
}

uint64_t sub_24E1FDA8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_21(v1);

  return sub_24E1FCAA8();
}

double AchievementHighlightLayout.measurements(fitting:in:)()
{
  swift_getObjectType();

  return sub_24E1FEB68();
}

uint64_t AchievementHighlightLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_24E3447C8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v31 = sub_24E344828();
  OUTLINED_FUNCTION_0_14();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v24 = v23 - v22;
  sub_24E1FE1F0(v23 - v22);
  if (*(v2 + 120) == 1)
  {
    OUTLINED_FUNCTION_3_97();
    sub_24E344608();
  }

  else
  {
    v41[3] = v18;
    v41[4] = MEMORY[0x277D22808];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    (*(v20 + 16))(boxed_opaque_existential_1, v24, v18);
    sub_24DF89628(v2, v40);
    v38 = MEMORY[0x277D839F8];
    v39 = MEMORY[0x277D22A30];
    v37 = 0x4024000000000000;
    v26 = *MEMORY[0x277D228C8];
    v29[1] = a1;
    v27 = *(v6 + 104);
    v27(v12, v26, v4);
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33[3] = sub_24E3442F8();
    v33[4] = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v33);
    sub_24E3442E8();
    v27(v9, v26, v4);
    sub_24E344808();
    OUTLINED_FUNCTION_3_97();
    sub_24E3447E8();
    (*(v30 + 8))(v17, v31);
  }

  return (*(v20 + 8))(v24, v18);
}

uint64_t AchievementHighlightLayout.init(metrics:decorationView:titleText:subtitleText:orientation:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a5;
  memcpy((a6 + 128), __src, 0x78uLL);
  sub_24DE56CE8(a2, a6);
  sub_24DE56CE8(a3, a6 + 40);
  result = sub_24DE56CE8(a4, a6 + 80);
  *(a6 + 120) = v10;
  return result;
}

uint64_t AchievementHighlightLayout.Metrics.decorationTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24DE56CE8(a1, v1);
}

uint64_t AchievementHighlightLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24DE56CE8(a1, v1 + 40);
}

uint64_t AchievementHighlightLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24DE56CE8(a1, v1 + 80);
}

uint64_t AchievementHighlightLayout.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

uint64_t sub_24E1FE1F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E21A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v66 - v4;
  v69 = sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v68 = v10 - v9;
  v11 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v97 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v98 = v22 - v21;
  v23 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_1();
  v29 = v28 - v27;
  v30 = *(v2 + 120) == 1;
  v70 = v5;
  v76 = v11;
  if (v30)
  {
    sub_24DF89628(v2 + 168, v106);
  }

  else
  {
    v106[3] = MEMORY[0x277D839F8];
    v106[4] = MEMORY[0x277D22A30];
    v106[0] = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  v74 = *(v7 + 72);
  v31 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24E36A270;
  v75 = v32;
  v96 = v32 + v31;
  v33 = *(v2 + 64);
  v34 = *(v2 + 72);
  v35 = __swift_project_boxed_opaque_existential_1((v2 + 40), v33);
  v67 = v7;
  v36 = v35;
  *(&v104 + 1) = v33;
  v105 = *(v34 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v103);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v36, v33);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v91 = *MEMORY[0x277D227C8];
  v38 = *(v25 + 104);
  v92 = v25 + 104;
  v87 = v38;
  v38(v29);
  v89 = *MEMORY[0x277D227F0];
  v73 = v23;
  v39 = v97;
  v40 = *(v97 + 104);
  v90 = v97 + 104;
  v88 = v40;
  v40(v98);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v85 = *(v13 + 72);
  v94 = v18;
  v41 = *(v13 + 80);
  v95 = v2;
  v42 = swift_allocObject();
  v83 = xmmword_24E367D20;
  *(v42 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v99 = v42;
  v84 = sub_24DF8A8A4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  v81 = sub_24DF8A8FC();
  v43 = v17;
  v44 = v76;
  sub_24E3487E8();
  v71 = v29;
  v45 = v98;
  sub_24E344678();
  v46 = *(v13 + 8);
  v93 = v13 + 8;
  v80 = v46;
  v46(v43, v44);
  v79 = *(v39 + 8);
  v79(v45, v94);
  v47 = *(v25 + 8);
  v72 = v25 + 8;
  v78 = v47;
  v48 = v29;
  v49 = v73;
  v47(v48, v73);
  sub_24DF8A960(&v100);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  v51 = v95[13];
  v50 = v95[14];
  v52 = __swift_project_boxed_opaque_existential_1(v95 + 10, v51);
  *(&v104 + 1) = v51;
  v105 = *(v50 + 8);
  v53 = __swift_allocate_boxed_opaque_existential_1(&v103);
  v54 = v52;
  v55 = v98;
  v56 = v71;
  v57 = v49;
  (*(*(v51 - 8) + 16))(v53, v54, v51);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v87(v56, v91, v49);
  v58 = v94;
  v88(v55, v89, v94);
  v66[1] = v41;
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v59);
  sub_24E344618();
  v99 = v51;
  OUTLINED_FUNCTION_2_95();
  v60 = v95;
  sub_24E344678();
  v80(v43, v44);
  v97 = v39 + 8;
  v79(v55, v58);
  v78(v56, v57);
  sub_24DF8A960(&v100);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  if (*(v60 + 120) == 1)
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v87(v56, v91, v57);
    v88(v55, v89, v58);
    v61 = swift_allocObject();
    OUTLINED_FUNCTION_5_89(v61);
    sub_24E344618();
    *&v100 = v57;
    OUTLINED_FUNCTION_2_95();
    v62 = v68;
    sub_24E344678();
    v80(v43, v44);
    v79(v55, v58);
    v78(v56, v57);
    sub_24DF8A960(&v103);
    v63 = v70;
    (*(v67 + 32))(v70, v62, v69);
    *&v103 = v75;
    if (*(v75 + 16) >= *(v75 + 24) >> 1)
    {
      sub_24E076A38();
      *&v103 = v65;
    }

    sub_24E05EA60(0, 0, 1, v63);
  }

  sub_24E344668();
  return __swift_destroy_boxed_opaque_existential_1(v106);
}

double sub_24E1FEB0C()
{
  swift_getObjectType();

  return sub_24E1FEB68();
}

double sub_24E1FEB68()
{
  v0 = sub_24E3446A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E1FE1F0(v3);
  sub_24E3445F8();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

unint64_t sub_24E1FEC88()
{
  result = qword_27F1E7D30;
  if (!qword_27F1E7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D30);
  }

  return result;
}

unint64_t sub_24E1FECE0()
{
  result = qword_27F1E7D38;
  if (!qword_27F1E7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AchievementHighlightLayout.Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_95()
{

  return sub_24E3487E8();
}

__n128 OUTLINED_FUNCTION_5_89(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  return result;
}

uint64_t sub_24E1FEEA8(uint64_t a1)
{
  sub_24E345CC8();
  OUTLINED_FUNCTION_0_14();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E3458F8();
}

uint64_t sub_24E1FEF64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E345B68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E20025C(v2, &v14 - v9, &qword_27F1E01B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24E345CC8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E1FF164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E345B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ActivityFeedPlatterView();
  sub_24E20025C(v1 + *(v10 + 20), v9, &qword_27F1DF940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24E345658();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 ActivityFeedPlatterView.init(data:actionHandlers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01B8);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ActivityFeedPlatterView();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940);
  swift_storeEnumTagMultiPayload();
  sub_24E18D3EC(a1, a3 + v6[6]);
  v8 = a3 + v6[7];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  result = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 2) = result;
  *(v8 + 3) = v11;
  return result;
}

uint64_t type metadata accessor for ActivityFeedPlatterView()
{
  result = qword_27F1E7D68;
  if (!qword_27F1E7D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ActivityFeedPlatterView.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-1] - v5;
  v7 = type metadata accessor for ActivityFeedPlatterView();
  v8 = *(v7 + 24);
  v9 = type metadata accessor for ActivityFeedLockupView();
  sub_24E200200(v2 + v8, a1 + v9[5], type metadata accessor for ActivityFeedLockupViewModel);
  sub_24E1FF82C(a1 + v9[6]);
  v10 = (v2 + *(v7 + 28));
  v11 = v10[1];
  v41[0] = *v10;
  v41[1] = v11;
  v12 = v10[3];
  v42 = v10[2];
  v43 = v12;
  v44 = v41[0];
  v45 = v11;
  v46 = v42;
  v47 = v12;
  type metadata accessor for ArtworkLoader();
  sub_24E1FF9A8(v41, v40);
  *a1 = sub_24E2002B8();
  v13 = a1 + v9[8];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v9[9];
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
  swift_storeEnumTagMultiPayload();
  v15 = (a1 + v9[7]);
  v16 = v45;
  *v15 = v44;
  v15[1] = v16;
  v17 = v47;
  v15[2] = v46;
  v15[3] = v17;
  sub_24E1FEF64(v6);
  v18 = sub_24E345CC8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  v19 = sub_24E348488();
  static ActivityFeedPlatterView.viewHeight(for:)(v19);

  sub_24E346E28();
  sub_24E3453D8();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D48) + 36));
  v21 = v40[1];
  *v20 = v40[0];
  v20[1] = v21;
  v20[2] = v40[2];
  v22 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v23 = sub_24E346948();
  LOBYTE(v2) = sub_24E3461E8();
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D50) + 36);
  *v24 = v23;
  v24[8] = v2;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D58) + 36);
  v26 = *(sub_24E3457C8() + 20);
  v27 = *MEMORY[0x277CE0118];
  sub_24E345C68();
  OUTLINED_FUNCTION_3_2();
  (*(v28 + 104))(&v25[v26], v27);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0) + 36)] = 256;
  if (qword_27F1DD8C0 != -1)
  {
    swift_once();
  }

  v39 = unk_27F20AF18;
  v34 = qword_27F20AF28;
  v35 = qword_27F20AF10;
  v36 = sub_24E346948();
  v37 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D60) + 36);
  *v37 = v36;
  result = *&v39;
  *(v37 + 8) = v39;
  *(v37 + 3) = v34;
  return result;
}

uint64_t sub_24E1FF82C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E1FF164(v5);
  v6 = sub_24E345638();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27F1DDB20 != -1)
    {
      swift_once();
    }

    v7 = qword_27F1E8B08;
  }

  else
  {
    if (qword_27F1DDB18 != -1)
    {
      swift_once();
    }

    v7 = qword_27F1E8AF0;
  }

  v8 = type metadata accessor for ActivityFeedLockupTheme();
  v9 = __swift_project_value_buffer(v8, v7);
  return sub_24E200200(v9, a1, type metadata accessor for ActivityFeedLockupTheme);
}

double static ActivityFeedPlatterView.viewHeight(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_24E345CC8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = a1;
  sub_24E345CD8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_24E1FFD44(v4);
    return 0.0;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v4, v5);
    v16(v10, v13, v5);
    v17 = (*(v7 + 88))(v10, v5);
    if (v17 == *MEMORY[0x277CE0268])
    {
      return 94.0;
    }

    else if (v17 == *MEMORY[0x277CE0298])
    {
      return 98.0;
    }

    else if (v17 == *MEMORY[0x277CE02A0])
    {
      return 102.0;
    }

    else
    {
      result = 106.0;
      if (v17 != *MEMORY[0x277CE0290])
      {
        if (v17 == *MEMORY[0x277CE0260])
        {
          return 114.0;
        }

        else if (v17 == *MEMORY[0x277CE0270])
        {
          return 120.0;
        }

        else if (v17 == *MEMORY[0x277CE0248])
        {
          return 130.0;
        }

        else if (v17 == *MEMORY[0x277CE0280])
        {
          return 297.0;
        }

        else if (v17 == *MEMORY[0x277CE0278])
        {
          return 325.0;
        }

        else if (v17 == *MEMORY[0x277CE0288])
        {
          return 361.0;
        }

        else if (v17 == *MEMORY[0x277CE0250])
        {
          return 399.0;
        }

        else if (v17 == *MEMORY[0x277CE0258])
        {
          return 427.0;
        }

        else
        {
          v18 = *(v7 + 8);
          v20 = 106.0;
          v18(v10, v5);
          return v20;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24E1FFD44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24E1FFDF0()
{
  sub_24E1FFECC(319, &qword_27F1E0190, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24E1FFECC(319, &qword_27F1DF770, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityFeedLockupViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E1FFECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E1FFF20()
{
  result = qword_27F1E7D78;
  if (!qword_27F1E7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7D60);
    sub_24E1FFFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D78);
  }

  return result;
}

unint64_t sub_24E1FFFAC()
{
  result = qword_27F1E7D80;
  if (!qword_27F1E7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7D58);
    sub_24E200064();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D80);
  }

  return result;
}

unint64_t sub_24E200064()
{
  result = qword_27F1E7D88;
  if (!qword_27F1E7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7D50);
    sub_24E20011C();
    sub_24DFB4C28(&unk_27F1DF810, &qword_27F1DF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D88);
  }

  return result;
}

unint64_t sub_24E20011C()
{
  result = qword_27F1E7D90;
  if (!qword_27F1E7D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7D48);
    sub_24E2001A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7D90);
  }

  return result;
}

unint64_t sub_24E2001A8()
{
  result = qword_27F1E64D0;
  if (!qword_27F1E64D0)
  {
    type metadata accessor for ActivityFeedLockupView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E64D0);
  }

  return result;
}

uint64_t sub_24E200200(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E20025C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E2002B8()
{
  sub_24E20391C(0xD000000000000027, 0x800000024E3AD130, [objc_allocWithZone(MEMORY[0x277CCABD8]) init]);
  v0 = swift_allocObject();
  sub_24E200604();
  return v0;
}

uint64_t sub_24E200340(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24E203620(a4, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v6;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  v13 = v15[1];
  *(v12 + 48) = v15[0];
  *(v12 + 64) = v13;
  *(v12 + 80) = v16;
  *(v12 + 88) = a2;

  sub_24DE56C38(a5);
  sub_24E200A80(a1, a3, a5, a6, sub_24E203690, v12);
}

uint64_t sub_24E200488@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  result = CGSizeMake(*a1, a2, a4, a5);
  *a3 = result;
  return result;
}

uint64_t sub_24E2004D0()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880]([v1 hash]);
  return sub_24E348D68();
}

unint64_t sub_24E20052C(uint64_t a1)
{
  if (a1 < 0)
  {
    sub_24E348998();

    v3 = 0xD000000000000013;
  }

  else
  {
    sub_24E348998();

    v3 = 0xD000000000000019;
  }

  v1 = sub_24E121D4C();
  MEMORY[0x25303E950](v1);

  return v3;
}

void sub_24E200604()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v15 = v2;
  v16 = v3;
  sub_24E348358();
  OUTLINED_FUNCTION_0_14();
  v13 = v5;
  v14 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E348328();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v10 = sub_24E346F08();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_7_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E00);
  v0[4] = sub_24E347C28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E10);
  sub_24E203874();
  v0[5] = sub_24E347C28();
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  sub_24E346EF8();
  sub_24E203980(&qword_27F1E2F50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2F58);
  sub_24E0AB2AC(&unk_27F1E2F60, &qword_27F1E2F58);
  sub_24E3487E8();
  (*(v13 + 104))(v8, *MEMORY[0x277D85260], v14);
  v0[3] = sub_24E348388();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v11 setMaxConcurrentOperationCount_];
  [v11 setUnderlyingQueue_];
  sub_24E20391C(0xD00000000000002FLL, 0x800000024E3AD190, v11);
  sub_24DF88A8C(0, &qword_27F1E7E28);
  v12 = [objc_opt_self() mainQueue];
  v1[2] = sub_24E20095C(v15, v11, v12, v16);
  *(v1 + 48) = 0;
  OUTLINED_FUNCTION_18();
}

id sub_24E20095C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestQueue:a1 accessQueue:a2 notificationQueue:a3 cacheLimit:a4];

  return v7;
}

uint64_t sub_24E2009D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t sub_24E200A4C()
{
  sub_24E2009D4();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_24E200A80(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a3;
  v26 = a5;
  v31 = a4;
  v27 = a2;
  v8 = sub_24E346EE8();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24E346F08();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E346F38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v6 + 24);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D851F0], v14);
  v28 = v18;
  LOBYTE(v18) = sub_24E346F58();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    *(v20 + 24) = a1;
    v22 = v29;
    v21 = v30;
    *(v20 + 32) = v26;
    *(v20 + 40) = v22;
    v23 = v31;
    *(v20 + 48) = v21;
    *(v20 + 56) = v23;
    *(v20 + 64) = v27 & 1;
    aBlock[4] = sub_24E2036A4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_12_2;
    v24 = _Block_copy(aBlock);

    sub_24DE56C38(v21);
    sub_24E346EF8();
    v34 = MEMORY[0x277D84F90];
    sub_24E203980(&qword_27F1DFD00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
    sub_24E0AB2AC(&qword_27F1DFD10, &unk_27F1E1C90);
    sub_24E3487E8();
    MEMORY[0x25303EED0](0, v13, v10, v24);
    _Block_release(v24);
    (*(v33 + 8))(v10, v8);
    (*(v11 + 8))(v13, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E200E60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *(a1 + 16);
  v13 = [v12 cachedResourcesForCacheKey_];
  v14 = swift_unknownObjectRelease();
  if (v13)
  {
    v39 = a3;
    v40 = a5;
    v41 = a6;
    v15 = sub_24E347F08();

    v16 = *(a2 + 32);
    v17 = *(a2 + 40);
    v18 = *(v15 + 16);

    v42 = 0;
    v19 = 0;
    v20 = 1.79769313e308;
    while (1)
    {
      if (v19 == v18)
      {
        aBlock = 0u;
        v47 = 0u;
        v19 = v18;
      }

      else
      {
        if (v19 >= v18)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        sub_24DFB4104(v15 + 32 + 32 * v19, &aBlock);
        if (__OFADD__(v19++, 1))
        {
          goto LABEL_28;
        }
      }

      v50[0] = aBlock;
      v50[1] = v47;
      if (!*(&v47 + 1))
      {
        break;
      }

      sub_24E024710(v50, v45);
      sub_24DFB4104(v45, v43);
      sub_24DF88A8C(0, &qword_280BE0110);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v44 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v45);
      v22 = v44;
      if (v44)
      {
        [v44 size];
        if (v23 == v16 && v24 == v17)
        {

          v34 = v22;
          v35 = [v12 notificationQueue];
          v36 = swift_allocObject();
          v36[2] = v40;
          v36[3] = v41;
          v36[4] = v34;
          v36[5] = a2;
          v48 = sub_24E203708;
          v49 = v36;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v47 = sub_24E00B24C;
          *(&v47 + 1) = &block_descriptor_24_0;
          v37 = _Block_copy(&aBlock);
          v38 = v34;
          sub_24DE56C38(v40);

          [v35 addOperationWithBlock_];
          _Block_release(v37);

          return;
        }

        v26 = vabdd_f64(v23, v16);
        if (vabdd_f64(v23 / v24, v16 / v17) < 0.01 && v26 < v20)
        {

          v20 = v26;
          v42 = v22;
        }

        else
        {
        }
      }
    }

    if (v42 && (a7 & 1) != 0)
    {
      v29 = v42;
      v30 = [v12 notificationQueue];
      v31 = swift_allocObject();
      v31[2] = a5;
      v31[3] = v41;
      v31[4] = v29;
      v31[5] = a2;
      v48 = sub_24E203AEC;
      v49 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v47 = sub_24E00B24C;
      *(&v47 + 1) = &block_descriptor_18_1;
      v32 = _Block_copy(&aBlock);
      sub_24DE56C38(a5);

      v33 = v29;

      [v30 addOperationWithBlock_];
      _Block_release(v32);
    }

    v39(v28);
  }

  else
  {
    a3(v14);
  }
}

uint64_t sub_24E2012B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = *(a4 + 24);
    v7[0] = *(a4 + 16);
    v7[1] = v6;

    v5(a3, 1, v7, 0);
  }

  return result;
}

id sub_24E201324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = sub_24E343288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_24E342E88();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a2, v15);
  if ([objc_opt_self() alwaysSendCacheBuster])
  {
    sub_24E342E68();
    if (__swift_getEnumTagSinglePayload(v12, 1, v5))
    {
      sub_24DF8C95C(v12, &qword_27F1DEFB8);
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(v8, v12, v5);
      sub_24DF8C95C(v12, &qword_27F1DEFB8);
      sub_24E343278();
      (*(v6 + 8))(v8, v5);
      v19 = 0;
    }

    __swift_storeEnumTagSinglePayload(v14, v19, 1, v5);
    sub_24E342E78();
    sub_24E342E28();
  }

  v20 = [objc_allocWithZone(GKImageDataConsumer) initWithSize:*(a1 + 72) == 3 scale:*(a1 + 32) isLayeredImage:{*(a1 + 40), *(a1 + 64)}];
  v21 = objc_allocWithZone(GKImageRequest);
  v22 = v20;
  v23 = v28;

  v24 = sub_24E342E38();
  v25 = [v21 initWithURLRequest:v24 dataConsumer:v22 delegate:v23];

  v26 = v25;
  [v26 setCacheKey_];
  swift_unknownObjectRelease();
  [v26 setRequestKey_];

  (*(v16 + 8))(v18, v15);
  return v26;
}

void sub_24E2016EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v11 = sub_24E342E88();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E3433A8();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_24E343288();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v49 - v21;
  if (!sub_24E121B78())
  {
    v22 = [*(a2 + 16) notificationQueue];
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a1;
    v63 = sub_24E203728;
    v64 = v25;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v24 = &block_descriptor_30_1;
    goto LABEL_5;
  }

  v54 = a3;
  sub_24E121240();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_24DF8C95C(v16, &qword_27F1DEFB8);
    v22 = [*(a2 + 16) notificationQueue];
    v23 = swift_allocObject();
    a3 = v54;
    v23[2] = v54;
    v23[3] = a4;
    v23[4] = a1;
    v63 = sub_24E20377C;
    v64 = v23;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v24 = &block_descriptor_36;
LABEL_5:
    *&v62 = sub_24E00B24C;
    *(&v62 + 1) = v24;
    v26 = _Block_copy(&aBlock);
    sub_24DE56C38(a3);

    [v22 addOperationWithBlock_];
    _Block_release(v26);

    return;
  }

  (*(v18 + 32))(v56, v16, v17);
  v49 = a1;
  v27 = sub_24E1217A8();
  v28 = v54;
  v29 = a2;
  v30 = v27;
  if (v54)
  {
    sub_24E203620(a5, &v58);
    if (*(&v59 + 1))
    {
      aBlock = v58;
      v62 = v59;
      v63 = v60;
    }

    else
    {

      sub_24E343398();
      sub_24E203980(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
      sub_24E348918();
      if (*(&v59 + 1))
      {
        sub_24DF8C95C(&v58, &qword_27F1DF680);
      }
    }

    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = a4;
    swift_beginAccess();
    sub_24DE56C38(v28);
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v57 = v29[4];
    sub_24E058DD8(v30, sub_24E203788, v31, &aBlock);
    v29[4] = v57;
    swift_endAccess();
    swift_beginAccess();
    v32 = v29[5];
    v33 = *(v32 + 16);
    swift_unknownObjectRetain();
    if (v33 && (v34 = sub_24E26B0F8(v30), (v35 & 1) != 0) && (v36 = *(*(v32 + 56) + 24 * v34), , , v36))
    {

      swift_endAccess();
      sub_24E20378C(v36);
      sub_24DF8BD34(&aBlock, &v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E07768C();
        v36 = v47;
      }

      v37 = *(v36 + 16);
      if (v37 >= *(v36 + 24) >> 1)
      {
        sub_24E07768C();
        v36 = v48;
      }

      *(v36 + 16) = v37 + 1;
      v38 = v36 + 40 * v37;
      v39 = v58;
      v40 = v59;
      *(v38 + 64) = v60;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v57 = v29[5];
    }

    else
    {
      sub_24E20378C(0);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2480);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24E367D20;
      sub_24DF8BD34(&aBlock, v41 + 32);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v57 = v29[5];
    }

    sub_24E058CA4();
    v29[5] = v57;
    swift_unknownObjectRelease();
    swift_endAccess();
    sub_24DE73FA0(v54);
    sub_24DF8BE60(&aBlock);
  }

  v42 = v29[2];
  v43 = v55;
  if ([v42 setReason:v55 forRequestWithKey:v30])
  {
    (*(v18 + 8))(v56, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = v56;
    (*(v18 + 16))(v50, v56, v17);
    v45 = v51;
    sub_24E342E58();
    v46 = sub_24E201324(v49, v45, v30);
    (*(v52 + 8))(v45, v53);
    [v42 loadResourceWithRequest:v46 reason:v43];
    swift_unknownObjectRelease();

    (*(v18 + 8))(v44, v17);
  }
}

void sub_24E201F4C(void (*a1)(void, void, void *, void *), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a3 | 0x8000000000000000;
    sub_24E2037CC();
    v7[0] = 0;
    v7[1] = 0;
    v5 = swift_allocError();
    *v6 = v4;

    a1(0, 0, v7, v5);
  }
}

void sub_24E201FE8(void (*a1)(void, void, void *, void *), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_24E2037CC();
    v7[0] = 0;
    v7[1] = 0;
    v5 = swift_allocError();
    *v6 = a3;

    a1(0, 0, v7, v5);
  }
}

void sub_24E202078(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24E346F38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_24E346F58();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = [a1 requestKey];
    swift_beginAccess();
    sub_24E203474(v15, &aBlock);
    swift_endAccess();
    if (aBlock)
    {
      v43 = a2;
      v44 = a3;
      v40 = v47;
      v41 = v46;
      v16 = *(aBlock + 16);
      v42 = v15;
      if (v16)
      {
        v17 = aBlock + 32;
        v18 = MEMORY[0x277D84F90];
        do
        {
          sub_24DF8BD34(v17, &aBlock);
          swift_beginAccess();
          v19 = *(v4 + 32);
          if (*(v19 + 16) && (v20 = sub_24E26AE00(), (v21 & 1) != 0))
          {
            v22 = *(v19 + 56) + 24 * v20;
            v23 = *v22;
            v24 = *(v22 + 8);
            v25 = *(v22 + 16);
            v26 = swift_allocObject();
            *(v26 + 16) = v24;
            *(v26 + 24) = v25;
            swift_endAccess();
            swift_unknownObjectRetain();

            LOBYTE(v24) = [v23 isEqual_];
            swift_unknownObjectRelease();
            sub_24DF8BE60(&aBlock);
            swift_unknownObjectRelease();
            if (v24)
            {
              v27 = swift_allocObject();
              *(v27 + 16) = sub_24E203838;
              *(v27 + 24) = v26;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_24E07860C();
                v18 = v30;
              }

              v28 = *(v18 + 16);
              if (v28 >= *(v18 + 24) >> 1)
              {
                sub_24E07860C();
                v18 = v31;
              }

              *(v18 + 16) = v28 + 1;
              v29 = v18 + 16 * v28;
              *(v29 + 32) = sub_24E203ACC;
              *(v29 + 40) = v27;
            }

            else
            {
            }
          }

          else
          {
            swift_endAccess();
            sub_24DF8BE60(&aBlock);
          }

          v17 += 40;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v32 = [*(v4 + 16) notificationQueue];
      v33 = swift_allocObject();
      v35 = v43;
      v34 = v44;
      v33[2] = v18;
      v33[3] = v35;
      v36 = v40;
      v33[4] = v41;
      v33[5] = v36;
      v33[6] = v34;
      v49 = sub_24E203828;
      v50 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_24E00B24C;
      v48 = &block_descriptor_51_0;
      v37 = _Block_copy(&aBlock);
      v38 = v35;
      v39 = v34;

      [v32 addOperationWithBlock_];
      _Block_release(v37);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E2024C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, char *, uint64_t, uint64_t *))
{
  v8 = a1;
  v7 = a2;
  v6 = a4;
  return a5(&v8, &v7, a3, &v6);
}

uint64_t sub_24E202508(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v10 = result + 40;
    do
    {
      v11 = *(v10 - 8);
      v15[0] = a3;
      v15[1] = a4;
      v14 = a2;
      v13 = 0;
      v12 = a5;

      v11(&v14, &v13, v15, &v12);

      v10 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_24E20262C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v12 = v2;
  v13 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
  sub_24E347018();
  *(swift_allocObject() + 16) = xmmword_24E369E30;
  sub_24E346FB8();
  v10 = [v3 urlRequest];
  v16 = sub_24E342E88();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_24E342E48();

  sub_24E346FE8();
  sub_24DF8C95C(v15, &qword_27F1E0370);
  sub_24E346FB8();
  swift_getErrorValue();
  v16 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1);
  sub_24E346FE8();
  sub_24DF8C95C(v15, &qword_27F1E0370);
  (*(v5 + 104))(v9, *MEMORY[0x277D21DE8], v13);
  sub_24E0EF428();

  (*(v5 + 8))(v9, v13);
  sub_24E202078(v12, 0, v1);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_24E2029A0()
{
  result = qword_27F1E7DF8;
  if (!qword_27F1E7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7DF8);
  }

  return result;
}

void sub_24E2029F4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v5 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v24 = sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  sub_24DF8BD34(v4, v26);
  v18 = swift_allocObject();
  v19 = v26[1];
  *(v18 + 24) = v26[0];
  *(v18 + 16) = v0;
  *(v18 + 40) = v19;
  *(v18 + 56) = v27;
  *(v18 + 64) = v2;
  v25[4] = sub_24E202DC4;
  v25[5] = v18;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_0_139();
  v25[2] = v20;
  v25[3] = &block_descriptor_75;
  v21 = _Block_copy(v25);

  sub_24E346EF8();
  OUTLINED_FUNCTION_4_82();
  sub_24E203980(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24E0AB2AC(&qword_27F1DFD10, &unk_27F1E1C90);
  OUTLINED_FUNCTION_7_53();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v17, v11, v21);
  _Block_release(v21);
  (*(v7 + 8))(v11, v5);
  (*(v13 + 8))(v17, v24);

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E202C7C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v5 = sub_24E26AE00();
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EB0);
  sub_24E348AB8();
  sub_24DF8BE60(*(v10 + 48) + 40 * v7);
  v8 = *(*(v10 + 56) + 24 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E00);
  sub_24E348AD8();
  *(a1 + 32) = v10;
  swift_endAccess();

  if (a3)
  {
    [*(a1 + 16) setReason:1 forRequestWithKey:v8];
  }

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24E202DEC()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v21 = sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v0;
  v22[4] = sub_24E203820;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_0_139();
  v22[2] = v17;
  v22[3] = &block_descriptor_45_0;
  v18 = _Block_copy(v22);

  sub_24E346EF8();
  OUTLINED_FUNCTION_4_82();
  sub_24E203980(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
  sub_24E0AB2AC(&qword_27F1DFD10, &unk_27F1E1C90);
  OUTLINED_FUNCTION_7_53();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v15, v9, v18);
  _Block_release(v18);
  (*(v5 + 8))(v9, v3);
  (*(v11 + 8))(v15, v21);

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E203050(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C98();

  v7 = sub_24E343F78();
  v8 = sub_24E348238();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = a2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_24E121D4C();
    v14 = sub_24E1C2BE0(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24DE53000, v7, v8, "Discarding in-memory cache entries for %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x253040EE0](v11, -1, -1);
    v15 = v10;
    a2 = v17;
    MEMORY[0x253040EE0](v15, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  [*(a2 + 16) removeResourcesForCacheKey_];
  return swift_unknownObjectRelease();
}

uint64_t sub_24E203240()
{
  OUTLINED_FUNCTION_6_74();
  sub_24E26AE00();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_2_96();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC20);
  OUTLINED_FUNCTION_5_90();
  sub_24DF8BE60(*(v5 + 48) + 40 * v1);
  v3 = *(*(v5 + 56) + 8 * v1);
  type metadata accessor for AppStoreContentPlatterView();
  sub_24E348AD8();
  *v0 = v5;
  return v3;
}

uint64_t sub_24E2032F4()
{
  OUTLINED_FUNCTION_6_74();
  sub_24E26AEE8();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_2_96();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F58);
  OUTLINED_FUNCTION_5_90();
  v3 = *(*(v5 + 56) + 24 * v1);
  sub_24E0B6830();
  sub_24E348AD8();
  *v0 = v5;
  return v3;
}

uint64_t sub_24E2033B0()
{
  OUTLINED_FUNCTION_6_74();
  sub_24E26AE3C();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_2_96();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EC0);
  OUTLINED_FUNCTION_5_90();

  v3 = *(*(v5 + 56) + 8 * v1);
  sub_24DF88A8C(0, &qword_280BE0110);
  sub_24E348AD8();
  *v0 = v5;
  return v3;
}

unint64_t sub_24E203474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E26B0F8(a1);
  if (v5)
  {
    v6 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1EA0);
    sub_24E348AB8();
    swift_unknownObjectRelease();
    v7 = *(v10 + 56) + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 16);
    *a2 = v8;
    *(a2 + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E10);
    sub_24E203874();
    result = sub_24E348AD8();
    *v2 = v10;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_24E203574()
{
  OUTLINED_FUNCTION_6_74();
  sub_24E26B168(v2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_2_96();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F20);
  OUTLINED_FUNCTION_5_90();
  v4 = *(*(v6 + 56) + 16 * v1);
  sub_24E2038C8();
  sub_24E348AD8();
  *v0 = v6;
  return v4;
}

uint64_t sub_24E203620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_14Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_26Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24E20378C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24E2037CC()
{
  result = qword_27F1E7E08;
  if (!qword_27F1E7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7E08);
  }

  return result;
}

unint64_t sub_24E203874()
{
  result = qword_27F1E7E18;
  if (!qword_27F1E7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7E18);
  }

  return result;
}

unint64_t sub_24E2038C8()
{
  result = qword_27F1E7E20;
  if (!qword_27F1E7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7E20);
  }

  return result;
}

void sub_24E20391C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setName_];
}

uint64_t sub_24E203980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2039D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24E203A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_90()
{

  return sub_24E348AB8();
}

uint64_t OUTLINED_FUNCTION_10_50()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t type metadata accessor for InviteFriendsFlowAction()
{
  result = qword_27F1E7E30;
  if (!qword_27F1E7E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E203BE8()
{
  result = sub_24E347208();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E203C54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E347208();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E203CBC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_refApp);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_refApp + 8);
  if (!v4 || (v5 = *v3, v7[3] = MEMORY[0x277D837D0], v7[0] = v5, v7[1] = v4, __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24)), , sub_24E3475A8(), result = __swift_destroy_boxed_opaque_existential_1(v7), !v2))
  {
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_24E203D84()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_category;
  v2 = sub_24E3479F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for GKRefAppFieldsProvider()
{
  result = qword_27F1E7E40;
  if (!qword_27F1E7E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E203E88()
{
  result = sub_24E3479F8();
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

uint64_t sub_24E203F20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI22GKRefAppFieldsProvider_category;
  v5 = sub_24E3479F8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t GameLayerAchievementsPresenter.__allocating_init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_98();
  v10 = swift_allocObject();
  GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t GameLayerAchievementsPresenter.__allocating_init()()
{
  OUTLINED_FUNCTION_3_98();
  v0 = swift_allocObject();
  GameLayerAchievementsPresenter.init(gameRecord:)(0);
  return v0;
}

uint64_t sub_24E2040A0()
{
  switch(*v0)
  {
    case 1:
      sub_24DF90C4C();
      result = sub_24E348728();
      break;
    case 2:
      sub_24DF90C4C();
      result = sub_24E348708();
      break;
    case 3:
      v2 = sub_24E347CB8();
      v3 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();

      v5 = sub_24E347CF8();
      result = v5;
      break;
    default:
      sub_24DF90C4C();
      result = sub_24E3486F8();
      break;
  }

  return result;
}

uint64_t _s12GameCenterUI27AchievementsListHeaderStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

uint64_t GameLayerAchievementsPresenter.__allocating_init(gameRecord:)(void *a1)
{
  OUTLINED_FUNCTION_3_98();
  v2 = swift_allocObject();
  GameLayerAchievementsPresenter.init(gameRecord:)(a1);
  return v2;
}

uint64_t GameLayerAchievementsPresenter.init(gameRecord:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_17_33();
  *(v2 + 72) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v5;
  OUTLINED_FUNCTION_6_75();
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v8;
  OUTLINED_FUNCTION_0_149();
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v11;
  OUTLINED_FUNCTION_2_97();
  *(inited + 112) = v12;
  *(inited + 120) = v13;
  *(v2 + 80) = sub_24E347C28();
  *(v2 + 88) = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v14 = *(v2 + 56);
  *(v2 + 56) = a1;
  v15 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_1_30();
  *(v2 + 104) = sub_24E346F88();
  *(v2 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E50);
  OUTLINED_FUNCTION_1_30();
  *(v2 + 96) = sub_24E346F88();
  *(v2 + 16) = 4;
  *(v2 + 24) = MEMORY[0x277D84FA0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8A0);
  OUTLINED_FUNCTION_1_30();
  v16 = sub_24E346F88();

  *(v2 + 112) = v16;
  return v2;
}

uint64_t GameLayerAchievementsPresenter.__allocating_init(gameRecord:entryPoint:achievementIdsToHighlight:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_98();
  v6 = swift_allocObject();
  GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:)(a1, a2, a3);
  return v6;
}

uint64_t GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 33685504;
  *(v4 + 56) = 0;
  *(v4 + 72) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v9;
  OUTLINED_FUNCTION_6_75();
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v12;
  OUTLINED_FUNCTION_0_149();
  *(inited + 80) = v13;
  *(inited + 88) = v14;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v15;
  OUTLINED_FUNCTION_2_97();
  *(inited + 112) = v16;
  *(inited + 120) = v17;
  *(v4 + 80) = sub_24E347C28();
  *(v4 + 88) = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v18 = *(v4 + 56);
  *(v4 + 56) = a1;
  v19 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_1_30();
  *(v4 + 104) = sub_24E346F88();
  *(v4 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E50);
  OUTLINED_FUNCTION_1_30();
  result = sub_24E346F88();
  v21 = 0;
  *(v4 + 96) = result;
  if (v7 == 5)
  {
    v22 = 4;
  }

  else
  {
    v22 = v7;
  }

  *(v4 + 16) = v22;
  v29 = MEMORY[0x277D84FA0];
  v23 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v23 == v21)
    {

      *(v4 + 24) = v29;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8A0);
      OUTLINED_FUNCTION_1_30();
      v27 = sub_24E346F88();

      *(v4 + 112) = v27;
      return v4;
    }

    if (v21 >= *(a3 + 16))
    {
      break;
    }

    ++v21;
    v26 = *(i - 1);
    v25 = *i;

    sub_24E1C33C4(&v28, v26, v25);
  }

  __break(1u);
  return result;
}

uint64_t GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a2;
  OUTLINED_FUNCTION_17_33();
  *(v6 + 72) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v12;
  OUTLINED_FUNCTION_6_75();
  *(inited + 48) = v14;
  *(inited + 56) = v13;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v15;
  OUTLINED_FUNCTION_0_149();
  *(inited + 80) = v16;
  *(inited + 88) = v17;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v18;
  OUTLINED_FUNCTION_2_97();
  *(inited + 112) = v19;
  *(inited + 120) = v20;
  *(v6 + 80) = sub_24E347C28();
  *(v6 + 88) = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v21 = *(v6 + 56);
  *(v6 + 56) = a1;
  v22 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_1_30();
  *(v6 + 104) = sub_24E346F88();
  *(v6 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E50);
  OUTLINED_FUNCTION_1_30();
  result = sub_24E346F88();
  v24 = 0;
  *(v6 + 96) = result;
  if (v10 == 5)
  {
    v25 = 4;
  }

  else
  {
    v25 = v10;
  }

  *(v6 + 16) = v25;
  v33 = MEMORY[0x277D84FA0];
  v26 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v26 == v24)
    {

      *(v6 + 24) = v33;
      *(v6 + 32) = a4;
      *(v6 + 40) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8A0);
      OUTLINED_FUNCTION_1_30();
      v30 = sub_24E346F88();

      *(v6 + 112) = v30;
      return v6;
    }

    if (v24 >= *(a3 + 16))
    {
      break;
    }

    ++v24;
    v29 = *(i - 1);
    v28 = *i;

    sub_24E1C33C4(&v32, v29, v28);
  }

  __break(1u);
  return result;
}

uint64_t GameLayerAchievementsPresenter.pageTitle.getter()
{
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_15_29();
      goto LABEL_5;
    case 3:
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_13_45();
LABEL_5:
      v1 = OUTLINED_FUNCTION_12_40();

      if (v1)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    default:

LABEL_6:
      v2 = *(v0 + 56);
      if (v2)
      {
        v3 = v2;
        v4 = [v3 name];
        v5 = sub_24E347CF8();
      }

      else
      {
LABEL_8:
        v6 = sub_24E347CB8();
        v7 = GKGameCenterUIFrameworkBundle();
        v4 = GKGetLocalizedStringFromTableInBundle();

        v5 = sub_24E347CF8();
      }

      return v5;
  }
}

uint64_t GameLayerAchievementsPresenter.pageSubtitle.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [v1 player];
    if (v2)
    {
      v3 = v2;
      if (([v2 isLocalPlayer] & 1) == 0)
      {
        v6 = [v3 alias];
        v4 = sub_24E347CF8();

        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_24E204AF4()
{
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_15_29();
      goto LABEL_5;
    case 3:
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_13_45();
LABEL_5:
      v2 = OUTLINED_FUNCTION_12_40();

      result = v2 & 1;
      break;
    default:

      result = 1;
      break;
  }

  return result;
}

uint64_t GameLayerAchievementsPresenter.combinedAchievementsGrid.setter(char a1)
{
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + 48) = a1;
  return result;
}

uint64_t GameLayerAchievementsPresenter.highlightCompletedAchievements.setter(char a1)
{
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + 49) = a1;
  return result;
}

uint64_t GameLayerAchievementsPresenter.listHeaderStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_28();
  *a1 = *(v1 + 50);
  return result;
}

uint64_t GameLayerAchievementsPresenter.listHeaderStyle.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + 50) = v2;
  return result;
}

uint64_t GameLayerAchievementsPresenter.sectionHeaderStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_28();
  *a1 = *(v1 + 51);
  return result;
}

uint64_t GameLayerAchievementsPresenter.sectionHeaderStyle.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + 51) = v2;
  return result;
}

void sub_24E204E58(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 64) == 1)
  {
    sub_24E343C88();
    v10 = a1;
    v11 = sub_24E343F78();
    v12 = sub_24E348238();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v35 = a2;
      v14 = v13;
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v14 = 136315138;
      v15 = [v10 bundleIdentifier];
      v16 = sub_24E347CF8();
      v34 = a1;
      v17 = v16;
      v19 = v18;

      v20 = sub_24E1C2BE0(v17, v19, &aBlock);

      *(v14 + 4) = v20;
      a1 = v34;
      _os_log_impl(&dword_24DE53000, v11, v12, "fetchAchievements for ('%s') called while isUpdating=true", v14, 0xCu);
      v21 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x253040EE0](v21, -1, -1);
      v22 = v14;
      a2 = v35;
      MEMORY[0x253040EE0](v22, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  *(v3 + 64) = 1;
  *(v3 + 72) = MEMORY[0x277D84F90];

  _s12GameCenterUI0A26LayerAchievementsPresenterC15reapplySnapshotyyF_0();
  swift_beginAccess();
  v37 = 0;
  v38 = 0;
  aBlock = 1;

  sub_24E346F78();

  v23 = [objc_opt_self() proxyForLocalPlayer];
  v24 = [v23 gameStatServicePrivate];

  v25 = [a1 gameDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24E369990;
  *(v26 + 32) = [a2 internal];
  sub_24DF88A8C(0, &qword_27F1E3D40);
  v27 = sub_24E347EE8();

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = a2;
  v40 = sub_24E20B768;
  v41 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_24E208D98;
  v39 = &block_descriptor_76;
  v30 = _Block_copy(&aBlock);
  v31 = a2;

  [v24 loadAchievementsForGameWithProfileFetchOptions:v25 players:v27 includeUnreported:1 includeHidden:1 profileFetchOptions:1 withCompletionHandler:v30];
  _Block_release(v30);
  swift_unknownObjectRelease();
}

uint64_t GameLayerAchievementsPresenter.isUpdating.setter(char a1)
{
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + 64) = a1;
  return result;
}

uint64_t _s12GameCenterUI0A26LayerAchievementsPresenterC15reapplySnapshotyyF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E80);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v30 - v7;
  v46 = type metadata accessor for GameLayerSection();
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA870);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  sub_24E135560(&qword_27F1E7E88, &unk_27F1EA190);
  sub_24E135560(&qword_27F1E0E88, &unk_27F1E1C00);
  v35 = v14;
  sub_24E344B98();
  v16 = *(v1 + 72);
  v45 = *(v16 + 16);
  if (v45)
  {
    v31 = v12;
    v32 = v1;
    v17 = v42;
    v43 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v38 = v15;
    v37 = v15 - 8;

    v19 = 0;
    v36 = xmmword_24E367D20;
    v20 = v41;
    v34 = v2;
    v33 = v11;
    v44 = result;
    while (v19 < *(result + 16))
    {
      sub_24E20B788(v43 + *(v17 + 72) * v19, v20, type metadata accessor for GameLayerSection);
      v21 = *(v20 + *(v46 + 24));
      if (*(v21 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E90);
        *(swift_allocObject() + 16) = v36;
        sub_24E20B788(v20, v39, type metadata accessor for GameLayerSection);
        sub_24E20B8A0(&qword_27F1E7E98, 255, type metadata accessor for GameLayerSection);
        sub_24E347178();
        sub_24E344B18();

        v22 = *(v21 + 16);
        if (v22)
        {
          v47 = MEMORY[0x277D84F90];
          sub_24E12F7F8(0, v22, 0);
          v23 = v47;
          v24 = v21 + 32;
          v25 = v34;
          do
          {
            sub_24DF89628(v24, v51);
            sub_24DF89628(v51, v50);
            sub_24E347168();
            __swift_destroy_boxed_opaque_existential_1(v51);
            v47 = v23;
            v27 = *(v23 + 16);
            v26 = *(v23 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_24E12F7F8(v26 > 1, v27 + 1, 1);
              v25 = v34;
              v23 = v47;
            }

            *(v23 + 16) = v27 + 1;
            (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v5, v25);
            v24 += 40;
            --v22;
          }

          while (v22);
          v11 = v33;
        }

        v28 = v40;
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v38);
        sub_24E344AD8();

        sub_24E20B8E8(v28);
        v20 = v41;
        v17 = v42;
      }

      ++v19;
      sub_24E20B7E8(v20, type metadata accessor for GameLayerSection);
      result = v44;
      if (v19 == v45)
      {

        v1 = v32;
        v12 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    swift_beginAccess();
    *(v1 + 64) = 0;
    swift_beginAccess();
    v48 = 0;
    v49 = 0;
    v47 = 2;

    sub_24E346F78();

    v29 = v35;
    sub_24E346F78();
    return (*(v12 + 8))(v29, v11);
  }

  return result;
}

uint64_t sub_24E2059C4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_24E347458();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3_14();
  v31 = v4;
  v5 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v22 = sub_24E347C28();
  sub_24E0A7788(v22);

  if (a1)
  {
    sub_24E3479B8();
    v23 = sub_24E347068();
    sub_24E1C3144();
    (*(v7 + 8))(v11, v5);
    v23(v33, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740);
  v29 = *(*(sub_24E3470B8() - 8) + 72);
  v24 = swift_allocObject();
  v27 = xmmword_24E36A270;
  *(v24 + 16) = xmmword_24E36A270;
  (*(v14 + 16))(v18, v21, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748);
  sub_24E347108();
  v28 = v12;
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3470F8();
  sub_24E1AD060();
  sub_24E3470A8();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v25 = sub_24E347058();
  __swift_project_value_buffer(v25, qword_27F20AE00);
  sub_24E347028();
  *(swift_allocObject() + 16) = v27;
  sub_24E3470E8();
  sub_24E3470D8();
  sub_24E1AD060();
  sub_24E3470A8();
  sub_24E335A58(*(v30 + 80));
  sub_24E347448();
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E3470C8();
  return (*(v14 + 8))(v21, v28);
}

uint64_t GameLayerAchievementsPresenter.onUpdatePhaseChange.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5_68();
  *(v1 + 104) = a1;
}

Swift::Void __swiftcall GameLayerAchievementsPresenter.viewDidLoad()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 player];
    sub_24E204E58(v2, v3);
  }
}

char *sub_24E205F94(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AchievementDetailsAction();
  MEMORY[0x28223BE20](v7);
  v9 = (&v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24E347458();
  MEMORY[0x28223BE20](v10 - 8);
  v130 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_24E347088();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E347208();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_24E343F88();
  v135 = *(v136 - 1);
  MEMORY[0x28223BE20](v136);
  v133 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v119 - v19;
  MEMORY[0x28223BE20](v20);
  v134 = (&v119 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v23 = Strong;
  v119 = v16;
  v120 = v14;
  v121 = v13;
  v122 = v7;
  v123 = v9;
  v24 = [a4 referenceKey];
  v25 = sub_24E347CF8();
  v27 = v26;

  v28 = sub_24E12CBE4(v25, v27, a1);

  if (!v28)
  {

LABEL_12:
    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    if (v35)
    {
      v36 = v35;
      swift_beginAccess();
      *(v36 + 64) = 0;
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();

      v142 = 0;
      v143 = 0;
      v141 = a2;
      v38 = a2;
      sub_24E346F78();

      return sub_24E024148(v141, v142);
    }

    return result;
  }

  v29 = sub_24DFD8654();
  v126 = v23;
  if (v29)
  {
    v30 = v29;
    v144 = MEMORY[0x277D84F90];
    sub_24E348A68();
    if (v30 < 0)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v31 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x25303F560](v31, v28);
      }

      else
      {
        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v139 = sub_24DF88A8C(0, &qword_27F1E7E78);
      v138 = v33;
      v34 = objc_allocWithZone(MEMORY[0x277D0BFB0]);
      sub_24E209A04(&v138);
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    while (v30 != v31);

    v7 = v144;
    v23 = v126;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v9 = &selRef_applyTextStyle_;
  v131 = sub_24DFD8654();
  if (v131)
  {
    sub_24DFFA844(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) == 0)
    {
      v39 = *(v7 + 32);
      goto LABEL_20;
    }

LABEL_102:
    v39 = MEMORY[0x25303F560](0, v7);
LABEL_20:
    v40 = v39;
    v41 = [v39 internal];

    v42 = [v41 gameHint];
    if (v42)
    {
      v43 = [v42 v9[133]];

      v125 = sub_24E347CF8();
      v42 = v44;
    }

    else
    {
      v125 = 0;
    }

    goto LABEL_24;
  }

  v125 = 0;
  v42 = 0;
LABEL_24:
  v45 = v23[7];
  if (v45)
  {
    v46 = [v45 v9[133]];
    v124 = sub_24E347CF8();
    v48 = v47;
  }

  else
  {
    v124 = 0;
    v48 = 0;
  }

  v49 = v134;
  sub_24E343C88();

  v50 = sub_24E343F78();
  v51 = sub_24E348238();

  v52 = os_log_type_enabled(v50, v51);
  *&v137 = v7;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v138 = v54;
    *v53 = 136315394;
    if (v42)
    {
      v55 = v125;
    }

    else
    {
      v55 = 7104878;
    }

    if (v42)
    {
      v56 = v42;
    }

    else
    {
      v56 = 0xE300000000000000;
    }

    v57 = sub_24E1C2BE0(v55, v56, &v138);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    if (v48)
    {
      v58 = v124;
    }

    else
    {
      v58 = 7104878;
    }

    if (v48)
    {
      v59 = v48;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v23 = v126;

    v60 = sub_24E1C2BE0(v58, v59, &v138);
    v7 = v137;

    *(v53 + 14) = v60;
    _os_log_impl(&dword_24DE53000, v50, v51, "fetchAchievements: Achievements fetched fetchedGame=(%s) selectedGame=(%s)", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253040EE0](v54, -1, -1);
    MEMORY[0x253040EE0](v53, -1, -1);

    v61 = *(v135 + 8);
    (v61)(v134, v136);
  }

  else
  {

    v61 = *(v135 + 8);
    (v61)(v49, v136);
  }

  v62 = v133;
  v63 = v132;
  if (!v42)
  {
    sub_24E343C88();

    v65 = sub_24E343F78();
    v66 = sub_24E348238();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v138 = v134;
      *v67 = 136315138;
      v68 = sub_24DF88A8C(0, &qword_27F1E26D8);
      v69 = MEMORY[0x25303EA80](v7, v68);
      v71 = sub_24E1C2BE0(v69, v70, &v138);
      v7 = v137;

      *(v67 + 4) = v71;
      _os_log_impl(&dword_24DE53000, v65, v66, "fetchAchievements: fetchedGame=nil, fetchedAchievements=%s", v67, 0xCu);
      v72 = v134;
      __swift_destroy_boxed_opaque_existential_1(v134);
      v73 = v72;
      v62 = v133;
      MEMORY[0x253040EE0](v73, -1, -1);
      MEMORY[0x253040EE0](v67, -1, -1);

      v74 = v132;
    }

    else
    {

      v74 = v63;
    }

    (v61)(v74, v136);
    if (!v48)
    {
      goto LABEL_67;
    }

LABEL_54:
    sub_24E343C88();

    v75 = sub_24E343F78();
    v76 = sub_24E348238();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v138 = v78;
      *v77 = 136315394;
      v134 = v61;
      if (v42)
      {
        v79 = v125;
      }

      else
      {
        v79 = 7104878;
      }

      if (!v42)
      {
        v42 = 0xE300000000000000;
      }

      v80 = sub_24E1C2BE0(v79, v42, &v138);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2080;
      if (v48)
      {
        v81 = v124;
      }

      else
      {
        v81 = 7104878;
      }

      if (v48)
      {
        v82 = v48;
      }

      else
      {
        v82 = 0xE300000000000000;
      }

      v23 = v126;
      v83 = sub_24E1C2BE0(v81, v82, &v138);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_24DE53000, v75, v76, "fetchAchievements: Ignoring the fetched achievements due to a mismatch between fetchedGame=(%s) and selectedGame=(%s)", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253040EE0](v78, -1, -1);
      MEMORY[0x253040EE0](v77, -1, -1);

      (v134)(v133, v136);
    }

    else
    {

      (v61)(v62, v136);
    }

    v7 = v137;
    goto LABEL_70;
  }

  if (!v48)
  {
    goto LABEL_54;
  }

  v64 = v125 == v124 && v42 == v48;
  if (!v64 && (sub_24E348C08() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_67:
  sub_24E206F94(v7);
LABEL_70:
  v139 = &type metadata for GKFeatureFlags;
  v140 = sub_24DFA0CB4();
  LOBYTE(v138) = 4;
  v84 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v138);
  if ((v84 & 1) == 0 || (v9 = v23[4], (v85 = v23[5]) == 0))
  {
  }

  v136 = v23 + 4;
  v86 = v7 & 0xC000000000000001;
  v87 = v7 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if (v131 == i)
    {
    }

    if (v86)
    {
      v89 = MEMORY[0x25303F560](i, v7);
    }

    else
    {
      if (i >= *(v87 + 16))
      {
        goto LABEL_100;
      }

      v89 = *(v7 + 8 * i + 32);
    }

    v90 = v89;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v91 = sub_24E252A34(v89);
    if (!v92)
    {
      goto LABEL_84;
    }

    if (v91 == v9 && v92 == v85)
    {
      break;
    }

    v94 = sub_24E348C08();

    if (v94)
    {
      goto LABEL_93;
    }

LABEL_84:
    v95 = [v90 groupIdentifier];
    v96 = sub_24E347CF8();
    v98 = v97;

    if (v96 == v9 && v85 == v98)
    {
      break;
    }

    v100 = sub_24E348C08();

    if (v100)
    {
      goto LABEL_93;
    }

    v7 = v137;
  }

LABEL_93:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v137 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v102 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v102;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v103 = sub_24E347C28();
  v104 = v123;
  v105 = v122;
  v106 = v120;
  v107 = v119;
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v108 = sub_24E347058();
  v109 = __swift_project_value_buffer(v108, qword_27F20AE00);
  v110 = v127;
  MEMORY[0x25303DB90](v9, v85, 0x6E6F74747562, 0xE600000000000000, v103, v109);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v111 = v128;
  v112 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = v137;
  v114 = v129;
  (*(v111 + 16))(v113 + v112, v110, v129);
  sub_24E347448();
  sub_24E3471D8();
  (*(v111 + 8))(v110, v114);
  v115 = v90;
  v116 = sub_24E204AF4();
  v117 = v121;
  (*(v106 + 16))(v104 + *(v105 + 24), v107, v121);
  *v104 = v115;
  *(v104 + 8) = v116;
  sub_24E346F78();

  sub_24E20B7E8(v104, type metadata accessor for AchievementDetailsAction);
  (*(v106 + 8))(v107, v117);
  v118 = v136;
  *v136 = 0;
  v118[1] = 0;
}

uint64_t sub_24E206F94(uint64_t a1)
{
  v3 = v1;
  v261 = *v1;
  v258 = sub_24E3433A8();
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v255 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v256 = &v241 - v7;
  v259 = type metadata accessor for TitleWithHighlights();
  MEMORY[0x28223BE20](v259);
  v250 = &v241 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v254 = &v241 - v10;
  MEMORY[0x28223BE20](v11);
  v249 = &v241 - v12;
  v266 = type metadata accessor for GameLayerSection();
  v263 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v244 = &v241 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v243 = &v241 - v15;
  MEMORY[0x28223BE20](v16);
  v253 = &v241 - v17;
  MEMORY[0x28223BE20](v18);
  v252 = &v241 - v19;
  MEMORY[0x28223BE20](v20);
  v248 = &v241 - v21;
  MEMORY[0x28223BE20](v22);
  v251 = &v241 - v23;
  MEMORY[0x28223BE20](v24);
  v246 = &v241 - v25;
  MEMORY[0x28223BE20](v26);
  v245 = &v241 - v27;
  MEMORY[0x28223BE20](v28);
  v242 = &v241 - v29;
  MEMORY[0x28223BE20](v30);
  v247 = &v241 - v31;
  MEMORY[0x28223BE20](v32);
  v260 = &v241 - v33;
  v274 = type metadata accessor for Achievement();
  v276 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v35 = &v241 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v269 = &v241 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v241 - v39;
  MEMORY[0x28223BE20](v41);
  v268 = &v241 - v42;
  v283 = MEMORY[0x277D84F90];
  v43 = sub_24DFD8654();
  v44 = 0;
  v45 = a1 & 0xC000000000000001;
  v277 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v43 != v44)
  {
    if (v45)
    {
      v46 = MEMORY[0x25303F560](v44, a1);
    }

    else
    {
      if (v44 >= *(v277 + 16))
      {
        goto LABEL_102;
      }

      v46 = *(a1 + 8 * v44 + 32);
    }

    v2 = v46;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
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
LABEL_110:
      sub_24E078798();
      v107 = v235;
LABEL_80:
      *(v107 + 16) = v1;
      sub_24E20B840(v2, v107 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v44, type metadata accessor for GameLayerSection);
      goto LABEL_100;
    }

    if ([v46 isCompleted])
    {
      v1 = &v283;
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    else
    {
    }

    ++v44;
  }

  v283 = sub_24E0834B0(v47);
  v44 = 0;
  sub_24E209A70(&v283, sub_24E20A568, sub_24E209CF0);

  v1 = v283;
  v48 = sub_24DFD8654();
  v275 = v3;
  v267 = a1;
  v272 = a1 & 0xC000000000000001;
  v2 = v274;
  v265 = v43;
  v264 = v35;
  v262 = 0;
  if (v48)
  {
    v49 = v48;
    v273 = v1;
    v280 = MEMORY[0x277D84F90];
    v1 = &v280;
    sub_24E12F8D8(0, v48 & ~(v48 >> 63), 0);
    if (v49 < 0)
    {
      goto LABEL_107;
    }

    v271 = v49;
    v50 = v280;
    v1 = v273;
    v270 = v273 & 0xC000000000000001;
    swift_beginAccess();
    v51 = 0;
    v52 = v268;
    do
    {
      if (v270)
      {
        v53 = MEMORY[0x25303F560](v51, v1);
      }

      else
      {
        v53 = v1[v51 + 4];
      }

      v54 = v53;
      v55 = sub_24E204AF4();
      sub_24E152638(v55, v40);
      if (*(v3 + 49) == 1)
      {

        v40[*(v2 + 44)] = 1;
      }

      else
      {
        v56 = sub_24E252A34(v54);
        if (v57)
        {
          v58 = v50;
          v59 = sub_24E00D4BC(v56, v57, v3[3]);

          v60 = v59;
          v50 = v58;
          v52 = v268;
          v2 = v274;
          v40[*(v274 + 44)] = v60;
        }

        v61 = *(v2 + 44);
        if (v40[v61])
        {
          v62 = 1;
        }

        else
        {
          v63 = v275[3];
          v64 = v50;
          v65 = [v54 groupIdentifier];
          v66 = sub_24E347CF8();
          v68 = v67;

          v50 = v64;
          a1 = v267;
          v52 = v268;
          v62 = sub_24E00D4BC(v66, v68, v63);
        }

        v40[v61] = v62;
        v3 = v275;
      }

      sub_24E20B840(v40, v52, type metadata accessor for Achievement);
      v280 = v50;
      v44 = *(v50 + 16);
      v69 = *(v50 + 24);
      v1 = v273;
      if (v44 >= v69 >> 1)
      {
        sub_24E12F8D8(v69 > 1, v44 + 1, 1);
        v1 = v273;
        v50 = v280;
      }

      ++v51;
      *(v50 + 16) = v44 + 1;
      sub_24E20B840(v52, v50 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v44, type metadata accessor for Achievement);
      v2 = v274;
    }

    while (v271 != v51);

    v35 = v264;
    v43 = v265;
    v45 = v272;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v70 = 0;
  v280 = MEMORY[0x277D84F90];
  while (v43 != v70)
  {
    if (v45)
    {
      v71 = MEMORY[0x25303F560](v70, a1);
    }

    else
    {
      if (v70 >= *(v277 + 16))
      {
        goto LABEL_104;
      }

      v71 = *(a1 + 8 * v70 + 32);
    }

    v2 = v71;
    if (__OFADD__(v70, 1))
    {
      goto LABEL_103;
    }

    if (([v71 isCompleted] & 1) != 0 || (objc_msgSend(v2, sel_percentComplete), v72 <= 0.0))
    {
    }

    else
    {
      v1 = &v280;
      sub_24E348A48();
      v44 = *(v280 + 16);
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    ++v70;
  }

  v280 = sub_24E0834B0(v73);
  v44 = v262;
  sub_24E209A70(&v280, sub_24E209F08, sub_24E209BFC);
  if (!v44)
  {

    v74 = v280;
    v75 = sub_24DFD8654();
    v274 = v50;
    if (v75)
    {
      v2 = v75;
      v280 = MEMORY[0x277D84F90];
      v1 = &v280;
      sub_24E12F8D8(0, v75 & ~(v75 >> 63), 0);
      if (v2 < 0)
      {
        goto LABEL_108;
      }

      v76 = 0;
      v44 = v280;
      do
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x25303F560](v76, v74);
        }

        else
        {
          v77 = *(v74 + 8 * v76 + 32);
        }

        v78 = v77;
        v79 = v269;
        v80 = sub_24E204AF4();
        v1 = v78;
        sub_24E152638(v80, v79);

        v280 = v44;
        v82 = *(v44 + 16);
        v81 = *(v44 + 24);
        if (v82 >= v81 >> 1)
        {
          v1 = &v280;
          sub_24E12F8D8(v81 > 1, v82 + 1, 1);
          v44 = v280;
        }

        ++v76;
        *(v44 + 16) = v82 + 1;
        sub_24E20B840(v79, v44 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v82, type metadata accessor for Achievement);
        v45 = v272;
      }

      while (v2 != v76);

      v3 = v275;
      v35 = v264;
      v43 = v265;
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v83 = 0;
    v280 = MEMORY[0x277D84F90];
    while (v43 != v83)
    {
      if (v45)
      {
        v84 = MEMORY[0x25303F560](v83, a1);
      }

      else
      {
        if (v83 >= *(v277 + 16))
        {
          goto LABEL_106;
        }

        v84 = *(a1 + 8 * v83 + 32);
      }

      v2 = v84;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_105;
      }

      if (([v84 isCompleted] & 1) != 0 || (objc_msgSend(v2, sel_percentComplete), v85 != 0.0))
      {
      }

      else
      {
        v1 = &v280;
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      ++v83;
    }

    v2 = v280;
    v86 = sub_24DFD8654();
    if (v86)
    {
      v87 = v86;
      v280 = MEMORY[0x277D84F90];
      v1 = &v280;
      sub_24E12F8D8(0, v86 & ~(v86 >> 63), 0);
      if (v87 < 0)
      {
        goto LABEL_109;
      }

      v88 = 0;
      v89 = v280;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v90 = MEMORY[0x25303F560](v88, v2);
        }

        else
        {
          v90 = *(v2 + 8 * v88 + 32);
        }

        v91 = v90;
        v92 = sub_24E204AF4();
        sub_24E152638(v92, v35);

        v280 = v89;
        v93 = v35;
        v95 = *(v89 + 16);
        v94 = *(v89 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_24E12F8D8(v94 > 1, v95 + 1, 1);
          v89 = v280;
        }

        ++v88;
        *(v89 + 16) = v95 + 1;
        sub_24E20B840(v93, v89 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v95, type metadata accessor for Achievement);
        v35 = v93;
      }

      while (v87 != v88);

      v3 = v275;
    }

    else
    {

      v89 = MEMORY[0x277D84F90];
    }

    v96 = MEMORY[0x277D84F90];
    v282 = MEMORY[0x277D84F90];

    sub_24E26C748(v97);

    sub_24E26C748(v98);
    v281 = v96;
    swift_beginAccess();
    v99 = v274;
    if (*(v3 + 48) == 1)
    {

      v279 = v99;
      sub_24E26C748(v44);
      sub_24E26C748(v89);
      v100 = sub_24E3474B8();
      v2 = v260;
      __swift_storeEnumTagSinglePayload(v260, 1, 1, v100);
      sub_24E07A324();
      v102 = v101;

      v103 = v266;
      v104 = v2 + *(v266 + 28);
      *(v104 + 24) = &type metadata for GameLayerLockedAchievementsLayoutBuilder;
      *(v104 + 32) = &off_286115098;
      v105 = (v2 + *(v103 + 20));
      *v105 = 0;
      v105[1] = 0xE000000000000000;
      *(v2 + *(v103 + 24)) = v102;
      sub_24E078798();
      v107 = v106;
      v44 = *(v106 + 16);
      v1 = (v44 + 1);
      if (v44 >= *(v106 + 24) >> 1)
      {
        goto LABEL_110;
      }

      goto LABEL_80;
    }

    v108 = *(v99 + 16);
    v109 = sub_24DFD8654();
    v110 = sub_24E208F3C(v108, v109);
    swift_beginAccess();
    switch(*(v3 + 50))
    {
      case 1:

        v187 = sub_24E347CB8();
        v188 = GKGameCenterUIFrameworkBundle();
        v189 = GKGetLocalizedStringFromTableInBundle();

        v190 = sub_24E347CF8();
        v192 = v191;

        v193 = v249;
        *(v249 + 72) = 0;
        *(v193 + 56) = 0u;
        *(v193 + 40) = 0u;
        v194 = v259;
        v195 = *(v259 + 24);
        v196 = sub_24E3474B8();
        __swift_storeEnumTagSinglePayload(v193 + v195, 1, 1, v196);
        v197 = (v193 + *(v194 + 28));
        *v197 = v190;
        v197[1] = v192;
        *(v193 + *(v194 + 32)) = 0;
        v198 = v256;
        sub_24E343398();
        v199 = v257;
        v200 = v258;
        (*(v257 + 16))(v255, v198, v258);
        sub_24E20B8A0(&qword_27F1DE1B0, 255, MEMORY[0x277CC95F0]);
        sub_24E348918();
        (*(v199 + 8))(v198, v200);
        v201 = v247;
        __swift_storeEnumTagSinglePayload(v247, 1, 1, v196);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
        v202 = swift_allocObject();
        *(v202 + 16) = xmmword_24E367D20;
        *(v202 + 56) = v194;
        *(v202 + 64) = sub_24E20B8A0(&qword_27F1E0898, 255, type metadata accessor for TitleWithHighlights);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v202 + 32));
        sub_24E20B788(v193, boxed_opaque_existential_1, type metadata accessor for TitleWithHighlights);
        v204 = v266;
        v205 = v201 + *(v266 + 28);
        *(v205 + 24) = &type metadata for GameLayerTitleLayoutBuilder;
        *(v205 + 32) = &off_286125EF0;
        v206 = (v201 + *(v204 + 20));
        *v206 = 0;
        v206[1] = 0xE000000000000000;
        *(v201 + *(v204 + 24)) = v202;
        v133 = v242;
        sub_24E20B788(v201, v242, type metadata accessor for GameLayerSection);
        sub_24E078798();
        v135 = v207;
        v136 = *(v207 + 16);
        v137 = v136 + 1;
        if (v136 >= *(v207 + 24) >> 1)
        {
          sub_24E078798();
          v135 = v240;
        }

        sub_24E20B7E8(v249, type metadata accessor for TitleWithHighlights);
        v138 = v247;
        goto LABEL_97;
      case 2:
        v139 = sub_24E3474B8();
        v140 = v245;
        __swift_storeEnumTagSinglePayload(v245, 1, 1, v139);
        sub_24E07A46C();
        v142 = v141;

        v143 = v266;
        v144 = v140 + *(v266 + 28);
        *(v144 + 24) = &type metadata for GameLayerHighlightsLayoutBuilder;
        *(v144 + 32) = &off_286125C50;
        v145 = (v140 + *(v143 + 20));
        *v145 = 0;
        v145[1] = 0xE000000000000000;
        *(v140 + *(v143 + 24)) = v142;
        sub_24E20B788(v140, v246, type metadata accessor for GameLayerSection);
        sub_24E078798();
        v135 = v146;
        v147 = *(v146 + 16);
        if (v147 >= *(v146 + 24) >> 1)
        {
          sub_24E078798();
          v135 = v237;
        }

        sub_24E20B7E8(v245, type metadata accessor for GameLayerSection);
        *(v135 + 16) = v147 + 1;
        v112 = (*(v263 + 80) + 32) & ~*(v263 + 80);
        v111 = *(v263 + 72);
        v148 = v135 + v112 + v111 * v147;
        v149 = v246;
        goto LABEL_98;
      case 3:
        v150 = sub_24E347CB8();
        v151 = GKGameCenterUIFrameworkBundle();
        v152 = GKGetLocalizedStringFromTableInBundle();

        v153 = sub_24E347CF8();
        v155 = v154;

        v156 = v254;
        *(v254 + 72) = 0;
        *(v156 + 56) = 0u;
        *(v156 + 40) = 0u;
        v157 = v259;
        v158 = *(v259 + 24);
        v159 = sub_24E3474B8();
        __swift_storeEnumTagSinglePayload(v156 + v158, 1, 1, v159);
        v160 = (v156 + *(v157 + 28));
        *v160 = v153;
        v160[1] = v155;
        *(v156 + *(v157 + 32)) = 0;
        v161 = v256;
        sub_24E343398();
        v162 = v257;
        v163 = v258;
        (*(v257 + 16))(v255, v161, v258);
        sub_24E20B8A0(&qword_27F1DE1B0, 255, MEMORY[0x277CC95F0]);
        sub_24E348918();
        (*(v162 + 8))(v161, v163);
        v164 = v251;
        __swift_storeEnumTagSinglePayload(v251, 1, 1, v159);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_24E367D20;
        *(v165 + 56) = v157;
        *(v165 + 64) = sub_24E20B8A0(&qword_27F1E0898, 255, type metadata accessor for TitleWithHighlights);
        v166 = __swift_allocate_boxed_opaque_existential_1((v165 + 32));
        sub_24E20B788(v156, v166, type metadata accessor for TitleWithHighlights);
        v167 = v266;
        v168 = v164 + *(v266 + 28);
        *(v168 + 24) = &type metadata for GameLayerTitleLayoutBuilder;
        *(v168 + 32) = &off_286125EF0;
        v169 = (v164 + *(v167 + 20));
        *v169 = 0;
        v169[1] = 0xE000000000000000;
        *(v164 + *(v167 + 24)) = v165;
        sub_24E20B788(v164, v248, type metadata accessor for GameLayerSection);
        sub_24E078798();
        v171 = v170;
        v172 = *(v170 + 16);
        if (v172 >= *(v170 + 24) >> 1)
        {
          sub_24E078798();
          v171 = v238;
        }

        v173 = v263;
        *(v171 + 16) = v172 + 1;
        v112 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v111 = *(v173 + 72);
        sub_24E20B840(v248, v171 + v112 + v111 * v172, type metadata accessor for GameLayerSection);
        v174 = v252;
        __swift_storeEnumTagSinglePayload(v252, 1, 1, v159);
        v175 = sub_24E347CB8();
        v176 = GKGameCenterUIFrameworkBundle();
        v177 = GKGetLocalizedStringFromTableInBundle();

        v178 = sub_24E347CF8();
        v180 = v179;

        sub_24E07A46C();
        v182 = v181;

        v183 = v266;
        v184 = v174 + *(v266 + 28);
        *(v184 + 24) = &type metadata for GameLayerHighlightsLayoutBuilder;
        *(v184 + 32) = &off_286125C50;
        v185 = (v174 + *(v183 + 20));
        *v185 = v178;
        v185[1] = v180;
        *(v174 + *(v183 + 24)) = v182;
        sub_24E20B788(v174, v253, type metadata accessor for GameLayerSection);
        v186 = *(v171 + 16);
        if (v186 >= *(v171 + 24) >> 1)
        {
          sub_24E078798();
          v171 = v239;
        }

        sub_24E20B7E8(v254, type metadata accessor for TitleWithHighlights);
        sub_24E20B7E8(v252, type metadata accessor for GameLayerSection);
        sub_24E20B7E8(v251, type metadata accessor for GameLayerSection);
        *(v171 + 16) = v186 + 1;
        sub_24E20B840(v253, v171 + v112 + v186 * v111, type metadata accessor for GameLayerSection);
        v281 = v171;
        break;
      case 4:
        v113 = sub_24E347CB8();
        v114 = GKGameCenterUIFrameworkBundle();
        v115 = GKGetLocalizedStringFromTableInBundle();

        v116 = sub_24E347CF8();
        v118 = v117;

        v119 = v250;
        *(v250 + 72) = 0;
        *(v119 + 56) = 0u;
        *(v119 + 40) = 0u;
        v120 = v259;
        v121 = *(v259 + 24);
        v122 = sub_24E3474B8();
        __swift_storeEnumTagSinglePayload(v119 + v121, 1, 1, v122);
        v123 = (v119 + *(v120 + 28));
        *v123 = v116;
        v123[1] = v118;
        *(v119 + *(v120 + 32)) = v110;
        v124 = v256;
        sub_24E343398();
        v125 = v257;
        v126 = v258;
        (*(v257 + 16))(v255, v124, v258);
        sub_24E20B8A0(&qword_27F1DE1B0, 255, MEMORY[0x277CC95F0]);
        sub_24E348918();
        (*(v125 + 8))(v124, v126);
        v127 = v243;
        __swift_storeEnumTagSinglePayload(v243, 1, 1, v122);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_24E367D20;
        *(v128 + 56) = v120;
        *(v128 + 64) = sub_24E20B8A0(&qword_27F1E0898, 255, type metadata accessor for TitleWithHighlights);
        v129 = __swift_allocate_boxed_opaque_existential_1((v128 + 32));
        sub_24E20B788(v119, v129, type metadata accessor for TitleWithHighlights);
        v130 = v266;
        v131 = v127 + *(v266 + 28);
        *(v131 + 24) = &type metadata for GameLayerTitleLayoutBuilder;
        *(v131 + 32) = &off_286125EF0;
        v132 = (v127 + *(v130 + 20));
        *v132 = 0;
        v132[1] = 0xE000000000000000;
        *(v127 + *(v130 + 24)) = v128;
        v133 = v244;
        sub_24E20B788(v127, v244, type metadata accessor for GameLayerSection);
        sub_24E078798();
        v135 = v134;
        v136 = *(v134 + 16);
        v137 = v136 + 1;
        if (v136 >= *(v134 + 24) >> 1)
        {
          sub_24E078798();
          v135 = v236;
        }

        sub_24E20B7E8(v250, type metadata accessor for TitleWithHighlights);
        v138 = v127;
LABEL_97:
        sub_24E20B7E8(v138, type metadata accessor for GameLayerSection);
        *(v135 + 16) = v137;
        v112 = (*(v263 + 80) + 32) & ~*(v263 + 80);
        v111 = *(v263 + 72);
        v148 = v135 + v112 + v111 * v136;
        v149 = v133;
LABEL_98:
        sub_24E20B840(v149, v148, type metadata accessor for GameLayerSection);
        v281 = v135;
        break;
      default:

        v111 = *(v263 + 72);
        v112 = (*(v263 + 80) + 32) & ~*(v263 + 80);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25E8);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_24E36A270;
    v209 = v208 + v112;
    v210 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v208 + v112, 1, 1, v210);
    v211 = v275;
    swift_beginAccess();
    v278 = *(v211 + 51);
    v212 = sub_24E347CB8();
    v213 = GKGameCenterUIFrameworkBundle();
    v214 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    v215 = sub_24E2040A0();
    v217 = v216;

    sub_24E07A324();
    v219 = v218;

    v220 = v266;
    v221 = v209 + *(v266 + 28);
    *(v221 + 24) = &type metadata for GameLayerCompletedAchievementsLayoutBuilder;
    *(v221 + 32) = &off_286114B60;
    v222 = (v209 + v220[5]);
    *v222 = v215;
    v222[1] = v217;
    *(v209 + v220[6]) = v219;
    v223 = v209 + v111;
    v3 = v211;
    __swift_storeEnumTagSinglePayload(v223, 1, 1, v210);
    v278 = *(v211 + 51);
    v224 = sub_24E347CB8();
    v225 = GKGameCenterUIFrameworkBundle();
    v226 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    v227 = sub_24E2040A0();
    v229 = v228;

    sub_24E07A324();
    v231 = v230;

    v232 = v223 + v220[7];
    *(v232 + 24) = &type metadata for GameLayerLockedAchievementsLayoutBuilder;
    *(v232 + 32) = &off_286115098;
    v233 = (v223 + v220[5]);
    *v233 = v227;
    v233[1] = v229;
    *(v223 + v220[6]) = v231;
    sub_24E26C774(v208);
    v107 = v281;
LABEL_100:
    v3[9] = v107;

    return _s12GameCenterUI0A26LayerAchievementsPresenterC15reapplySnapshotyyF_0();
  }

  __break(1u);
  return result;
}

void sub_24E208D98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E70);
  v5 = sub_24E347C08();

  v6 = a3;
  v4(v5, v6);
}

id sub_24E208E54()
{
  sub_24DF88A8C(0, &qword_280BE0110);
  result = sub_24E1A5748(0xD00000000000002FLL, 0x800000024E39F6E0, 0);
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() labelColor];
    v3 = [objc_opt_self() configurationWithHierarchicalColor_];

    v4 = [v1 imageWithSymbolConfiguration_];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E208F3C(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v96 = a1;
  v102 = type metadata accessor for AchievementHighlight();
  v2 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_3_14();
  v93 = v3;
  v101 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v103 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v100 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v99 = v87 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E25F0);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v92 = *(v2 + 72);
  v11 = swift_allocObject();
  v88 = xmmword_24E367D20;
  *(v11 + 16) = xmmword_24E367D20;
  v94 = v11;
  v91 = v10;
  v12 = v11 + v10;
  v13 = sub_24E347CB8();
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();

  v95 = sub_24E347CF8();
  v87[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24E36A270;
  v17 = sub_24E348178();
  v18 = objc_opt_self();
  v19 = [v18 localizedStringFromNumber:v17 numberStyle:1];
  v20 = sub_24E347CF8();
  v22 = v21;

  v23 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v24 = sub_24DF95A7C();
  *(v16 + 64) = v24;
  *(v16 + 32) = v20;
  *(v16 + 40) = v22;
  v25 = sub_24E348178();
  v26 = [v18 localizedStringFromNumber:v25 numberStyle:1];
  v27 = sub_24E347CF8();
  v29 = v28;

  *(v16 + 96) = v23;
  *(v16 + 104) = v24;
  *(v16 + 72) = v27;
  *(v16 + 80) = v29;
  v30 = sub_24E347D18();
  v32 = v31;

  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = OUTLINED_FUNCTION_1_113();

  v36 = sub_24E347CF8();
  v38 = v37;

  v39 = sub_24E208E54();
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  v40 = v102;
  v41 = *(v102 + 24);
  v42 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v12 + v41, 1, 1, v42);
  v43 = (v12 + v40[7]);
  *v43 = v30;
  v43[1] = v32;
  v44 = (v12 + v40[8]);
  *v44 = v36;
  v44[1] = v38;
  v45 = v12 + v40[9];
  *v45 = v39;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  v46 = v39;
  v47 = v99;
  sub_24E343398();
  v48 = v103;
  v49 = *(v103 + 16);
  v50 = v101;
  v49(v100, v47, v101);
  v51 = sub_24E20B8A0(&qword_27F1DE1B0, 255, MEMORY[0x277CC95F0]);
  sub_24E348918();

  v52 = *(v48 + 8);
  v103 = v48 + 8;
  result = v52(v47, v50);
  v97 = v42;
  v95 = v49;
  v89 = v52;
  v90 = v51;
  if (!v96)
  {
    goto LABEL_9;
  }

  if (v96 == v98 || (v96 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v57 = OUTLINED_FUNCTION_18_34();
    v58 = GKGameCenterUIFrameworkBundle();
    v59 = OUTLINED_FUNCTION_1_113();

    sub_24E347CF8();
    OUTLINED_FUNCTION_14_35();

    goto LABEL_11;
  }

  if (v96 < 3)
  {
LABEL_13:
    if (v96 >= v98)
    {
      return v94;
    }

    v81 = sub_24E347CB8();
    v82 = GKGameCenterUIFrameworkBundle();
    v83 = OUTLINED_FUNCTION_1_113();

    sub_24E347CF8();
    v51 = v84;

    v85 = swift_allocObject();
    *(v85 + 16) = v88;
    v86 = MEMORY[0x277D83C10];
    *(v85 + 56) = MEMORY[0x277D83B88];
    *(v85 + 64) = v86;
    *(v85 + 32) = 1;
    sub_24E347D18();
    OUTLINED_FUNCTION_14_35();

LABEL_11:
    v60 = sub_24E347CB8();
    v61 = GKGameCenterUIFrameworkBundle();
    v62 = OUTLINED_FUNCTION_1_113();

    v63 = sub_24E347CF8();
    v65 = v64;

    v66 = sub_24E347CB8();
    v67 = GKGameCenterUIFrameworkBundle();
    v68 = OUTLINED_FUNCTION_1_113();

    v69 = sub_24E347CF8();
    v71 = v70;

    v72 = v93;
    *(v93 + 72) = 0;
    *(v72 + 56) = 0u;
    *(v72 + 40) = 0u;
    v73 = v102;
    __swift_storeEnumTagSinglePayload(v72 + *(v102 + 24), 1, 1, v97);
    v74 = (v72 + v73[7]);
    *v74 = v12;
    v74[1] = v42;
    v75 = (v72 + v73[8]);
    *v75 = v63;
    v75[1] = v65;
    v76 = v72 + v73[9];
    *v76 = v69;
    *(v76 + 8) = v71;
    *(v76 + 16) = 1;
    v77 = v99;
    sub_24E343398();
    v78 = v101;
    v95(v100, v77, v101);
    sub_24E348918();
    v89(v77, v78);
    sub_24E0786D0();
    v80 = v79;
    *(v79 + 16) = 2;
    sub_24E20B840(v72, v79 + v91 + v92, type metadata accessor for AchievementHighlight);
    return v80;
  }

  if (!__OFSUB__(v98, 1))
  {
    if (v98 - 1 > v96)
    {
LABEL_9:
      v54 = sub_24E347CB8();
      v55 = GKGameCenterUIFrameworkBundle();
      v56 = OUTLINED_FUNCTION_1_113();

      sub_24E347CF8();
      OUTLINED_FUNCTION_14_35();

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t GameLayerAchievementsPresenter.deinit()
{

  return v0;
}

uint64_t GameLayerAchievementsPresenter.__deallocating_deinit()
{
  GameLayerAchievementsPresenter.deinit();
  v0 = OUTLINED_FUNCTION_3_98();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_24E209A04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithInternalRepresentation_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_24E209A70(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E08452C(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_24E209B04(v10, a2, a3);
  return sub_24E348A58();
}

uint64_t sub_24E209B04(uint64_t a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = *(a1 + 8);
  result = sub_24E348B98();
  if (result < v7)
  {
    v9 = result;
    a3 = sub_24E15530C(v7 / 2);
    v11[0] = v10;
    v11[1] = v7 / 2;
    result = a2(v11, v12, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return (a3)(0, v7, 1, a1);
  }

  return result;
}

void sub_24E209BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 percentComplete];
        v15 = v14;
        [v13 percentComplete];
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E209CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_24E343368();
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v32 = v14;
      v33 = a3;
      v16 = *(v36 + 8 * a3);
      v31 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 lastReportedDate];
        sub_24E343328();

        v22 = [v20 lastReportedDate];
        v23 = v34;
        sub_24E343328();

        LOBYTE(v22) = sub_24E3432F8();
        v24 = *v13;
        v25 = v23;
        v26 = v35;
        (*v13)(v25, v35);
        v24(v12, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v27 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v27;
        v14 -= 8;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v33 + 1;
      v14 = v32 + 8;
      v15 = v31 - 1;
      if (v33 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E209F08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_93:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v113;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v99 = v6;
        v6 += 16 * v98;
        v100 = *v6;
        v101 = &v97[2 * v98];
        v102 = *(v101 + 1);
        sub_24E20AE24((*a3 + 8 * *v6), (*a3 + 8 * *v101), (*a3 + 8 * v102), v111);
        if (v5)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_119;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_120;
        }

        *v6 = v100;
        *(v6 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_121;
        }

        v98 = *v97 - 1;
        sub_24E081A34(v101 + 16, v103, v101);
        *v97 = v98;
        v6 = v99;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_24E081A20(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &selRef_local;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v105 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[312]];
      v16 = v15;
      [v14 v7[312]];
      v18 = v17;

      v108 = v9;
      v19 = v9 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v21 = *(v12 - 1);
        v6 = *v12;
        v22 = v21;
        [v6 v7[312]];
        v24 = v23;
        [v22 v7[312]];
        v26 = v25;

        ++v12;
        v19 = v20 + 1;
        if (v18 < v16 == v26 >= v24)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v18 >= v16)
      {
        v6 = v105;
        v8 = v108;
      }

      else
      {
        v8 = v108;
        if (v5 < v108)
        {
          goto LABEL_125;
        }

        if (v108 >= v5)
        {
          v6 = v105;
        }

        else
        {
          if (v4 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v4;
          }

          v28 = 8 * v27 - 8;
          v29 = v5;
          v30 = v108;
          v6 = v105;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E076FA4(0, *(v6 + 2) + 1, 1, v6);
      v6 = v95;
    }

    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      sub_24E076FA4(v50 > 1, v51 + 1, 1, v6);
      v6 = v96;
    }

    *(v6 + 2) = v52;
    v53 = v6 + 32;
    v54 = &v6[16 * v51 + 32];
    *v54 = v8;
    *(v54 + 1) = v5;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v51)
    {
      v110 = v5;
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v6[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v6 + 4);
          v59 = *(v6 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_60:
          if (v61)
          {
            goto LABEL_110;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_118;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v52 < 2)
        {
          goto LABEL_112;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_75:
        if (v76)
        {
          goto LABEL_115;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_117;
        }

        if (v83 < v75)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v55 - 1 >= v52)
        {
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
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_121:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = v55;
        v90 = &v53[16 * v55];
        v91 = *(v90 + 1);
        sub_24E20AE24((*a3 + 8 * *v87), (*a3 + 8 * *v90), (*a3 + 8 * v91), v111);
        if (v113)
        {
          goto LABEL_103;
        }

        if (v91 < v88)
        {
          goto LABEL_105;
        }

        v5 = v53;
        v92 = v7;
        v93 = v6;
        v6 = *(v6 + 2);
        if (v89 > v6)
        {
          goto LABEL_106;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v6)
        {
          goto LABEL_107;
        }

        v52 = (v6 - 1);
        sub_24E081A34(v90 + 16, &v6[-v89 - 1], v90);
        *(v93 + 2) = v6 - 1;
        v94 = v6 > 2;
        v6 = v93;
        v7 = v92;
        v53 = v5;
        v5 = v110;
        if (!v94)
        {
          goto LABEL_89;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v34)
  {
    goto LABEL_39;
  }

  v106 = v6;
  v35 = *a3;
  v36 = *a3 + 8 * v5 - 8;
  v109 = v8;
  v111 = v34;
  v37 = v8 - v5;
LABEL_32:
  v38 = *(v35 + 8 * v5);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    [v42 v7[312]];
    v45 = v44;
    [v43 v7[312]];
    v47 = v46;

    if (v47 >= v45)
    {
LABEL_37:
      ++v5;
      v36 += 8;
      --v37;
      if (v5 == v111)
      {
        v5 = v111;
        v6 = v106;
        v8 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v48 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v48;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_24E20A568(char **a1, uint64_t a2, char **a3, char *a4)
{
  v123 = a1;
  v135 = sub_24E343368();
  MEMORY[0x28223BE20](v135);
  v134 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v119 - v9;
  v128 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_92:
    v135 = *v123;
    if (!v135)
    {
      goto LABEL_136;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v110 = v129;
      v111 = a4;
LABEL_95:
      v113 = v111 + 16;
      v112 = *(v111 + 2);
      while (1)
      {
        if (v112 < 2)
        {

          v129 = v110;
          return;
        }

        if (!*v128)
        {
          goto LABEL_133;
        }

        a4 = v111;
        v114 = &v111[16 * v112];
        v115 = *v114;
        v116 = &v113[2 * v112];
        v117 = *(v116 + 1);
        sub_24E20B05C(&(*v128)[8 * *v114], &(*v128)[8 * *v116], &(*v128)[8 * v117], v135);
        if (v110)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if (v112 - 2 >= *v113)
        {
          goto LABEL_122;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v118 = *v113 - v112;
        if (*v113 < v112)
        {
          goto LABEL_123;
        }

        v112 = *v113 - 1;
        sub_24E081A34(v116 + 16, v118, v116);
        *v113 = v112;
        v111 = a4;
      }

      v129 = v110;
LABEL_105:

      return;
    }

LABEL_130:
    v110 = v129;
    v111 = sub_24E081A20(a4);
    goto LABEL_95;
  }

  v121 = a4;
  v130 = 0;
  v132 = (v8 + 8);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v130++;
    v124 = v12;
    if (v12 + 1 < v10)
    {
      v122 = v11;
      v13 = *v128;
      v127 = v10;
      v14 = *&v13[8 * v130];
      v15 = v12;
      v16 = &v13[8 * v12];
      v120 = 8 * v12;
      v18 = *v16;
      v17 = v16 + 2;
      v19 = v14;
      v20 = v18;
      v21 = [v19 lastReportedDate];
      v22 = v133;
      sub_24E343328();

      v23 = [v20 lastReportedDate];
      v24 = v134;
      sub_24E343328();

      LODWORD(v126) = sub_24E3432F8();
      v25 = *v132;
      v26 = v24;
      a4 = v135;
      (*v132)(v26, v135);
      v125 = v25;
      (v25)(v22, a4);

      v27 = v127;
      v28 = (v15 + 2);
      while (1)
      {
        v29 = v28;
        if (v130 + 1 >= v27)
        {
          break;
        }

        v30 = v130 + 1;
        v32 = *(v17 - 1);
        v31 = *v17;
        v131 = v29;
        v33 = v31;
        v34 = v32;
        v35 = [v33 lastReportedDate];
        v130 = v30;
        v36 = v133;
        sub_24E343328();

        v37 = [v34 lastReportedDate];
        v38 = v134;
        sub_24E343328();

        LODWORD(v37) = sub_24E3432F8() & 1;
        v39 = v38;
        a4 = v135;
        v40 = v125;
        (v125)(v39, v135);
        (v40)(v36, a4);

        v29 = v131;
        ++v17;
        v28 = v131 + 1;
        v27 = v127;
        if ((v126 & 1) != v37)
        {
          goto LABEL_9;
        }
      }

      v130 = v27;
LABEL_9:
      if (v126)
      {
        v12 = v124;
        if (v130 < v124)
        {
          goto LABEL_127;
        }

        if (v124 >= v130)
        {
          v11 = v122;
        }

        else
        {
          if (v27 >= v29)
          {
            v41 = v29;
          }

          else
          {
            v41 = v27;
          }

          v42 = 8 * v41 - 8;
          v43 = v130;
          v44 = v124;
          v11 = v122;
          v45 = v120;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v128;
              if (!*v128)
              {
                goto LABEL_134;
              }

              v47 = *&v46[v45];
              *&v46[v45] = *&v46[v42];
              *&v46[v42] = v47;
            }

            ++v44;
            v42 -= 8;
            v45 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        v11 = v122;
        v12 = v124;
      }
    }

    v48 = v128[1];
    if (v130 < v48)
    {
      if (__OFSUB__(v130, v12))
      {
        goto LABEL_126;
      }

      if (v130 - v12 < v121)
      {
        break;
      }
    }

LABEL_39:
    if (v130 < v12)
    {
      goto LABEL_125;
    }

    a4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = a4;
    }

    else
    {
      sub_24E076FA4(0, *(a4 + 2) + 1, 1, a4);
      v11 = v108;
    }

    v65 = *(v11 + 2);
    v64 = *(v11 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      sub_24E076FA4(v64 > 1, v65 + 1, 1, v11);
      v11 = v109;
    }

    *(v11 + 2) = v66;
    v67 = v11 + 32;
    v68 = &v11[16 * v65 + 32];
    v69 = v130;
    *v68 = v124;
    *(v68 + 1) = v69;
    v131 = *v123;
    if (!v131)
    {
      goto LABEL_135;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v67[2 * v66 - 2];
        v72 = &v11[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v11 + 4);
          v74 = *(v11 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_59:
          if (v76)
          {
            goto LABEL_112;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_115;
          }

          v92 = v71[1];
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_120;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v66 < 2)
        {
          goto LABEL_114;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_74:
        if (v91)
        {
          goto LABEL_117;
        }

        v97 = *v71;
        v96 = v71[1];
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_119;
        }

        if (v98 < v90)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v70 - 1 >= v66)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_121:
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
          goto LABEL_129;
        }

        if (!*v128)
        {
          goto LABEL_132;
        }

        a4 = v11;
        v102 = &v67[2 * v70 - 2];
        v103 = *v102;
        v104 = &v67[2 * v70];
        v105 = *(v104 + 1);
        v106 = v129;
        sub_24E20B05C(&(*v128)[8 * *v102], &(*v128)[8 * *v104], &(*v128)[8 * v105], v131);
        v129 = v106;
        if (v106)
        {
          goto LABEL_105;
        }

        if (v105 < v103)
        {
          goto LABEL_107;
        }

        v107 = *(a4 + 2);
        if (v70 > v107)
        {
          goto LABEL_108;
        }

        *v102 = v103;
        v102[1] = v105;
        if (v70 >= v107)
        {
          goto LABEL_109;
        }

        v66 = v107 - 1;
        sub_24E081A34(v104 + 16, v107 - 1 - v70, &v67[2 * v70]);
        v11 = a4;
        *(a4 + 2) = v107 - 1;
        if (v107 <= 2)
        {
          goto LABEL_88;
        }
      }

      v77 = &v67[2 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_110;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_111;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_113;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_116;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = v71[1];
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_124;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v128[1];
    if (v130 >= v10)
    {
      goto LABEL_92;
    }
  }

  v49 = &v121[v12];
  if (__OFADD__(v12, v121))
  {
    goto LABEL_128;
  }

  if (v49 >= v48)
  {
    v49 = v128[1];
  }

  if (v49 < v12)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v130 == v49)
  {
    goto LABEL_39;
  }

  v122 = v11;
  v131 = *v128;
  v50 = &v131[8 * v130 - 8];
  v51 = v12 - v130;
  v125 = v49;
LABEL_32:
  v52 = *&v131[8 * v130];
  v126 = v51;
  v127 = v50;
  while (1)
  {
    v53 = *v50;
    v54 = v52;
    v55 = v53;
    v56 = [v54 lastReportedDate];
    v57 = v133;
    sub_24E343328();

    v58 = [v55 lastReportedDate];
    v59 = v134;
    sub_24E343328();

    LOBYTE(v58) = sub_24E3432F8();
    a4 = *v132;
    v60 = v59;
    v61 = v135;
    (*v132)(v60, v135);
    (a4)(v57, v61);

    if ((v58 & 1) == 0)
    {
LABEL_37:
      v50 = (v127 + 8);
      v51 = v126 - 1;
      if (++v130 == v125)
      {
        v130 = v125;
        v11 = v122;
        v12 = v124;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v131)
    {
      break;
    }

    v62 = *v50;
    v52 = *(v50 + 1);
    *v50 = v52;
    *(v50 + 1) = v62;
    v50 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_24E20AE24(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 percentComplete];
      v17 = v16;
      [v15 percentComplete];
      v19 = v18;

      if (v19 >= v17)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_24E130EB0(a2, (a3 - a2) / 8, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 percentComplete];
    v30 = v29;
    [v28 percentComplete];
    v32 = v31;

    v33 = v5 + 1;
    if (v32 < v30)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_24E20B05C(char *a1, id *a2, id *a3, char *a4)
{
  v56 = sub_24E343368();
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v48 - v10;
  v11 = (a2 - a1) / 8;
  v53 = (v12 + 8);
  v13 = a3 - a2;
  if (v11 < v13)
  {
    sub_24E130EB0(a1, (a2 - a1) / 8, a4);
    v14 = &a4[8 * v11];
    v51 = v14;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v14 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v57 = a1;
      v16 = *a4;
      v17 = *a2;
      v18 = v16;
      v19 = [v17 lastReportedDate];
      v20 = v54;
      sub_24E343328();

      v21 = [v18 lastReportedDate];
      v22 = v55;
      sub_24E343328();

      LOBYTE(v21) = sub_24E3432F8();
      v23 = a4;
      v24 = *v53;
      v25 = v22;
      v26 = v56;
      (*v53)(v25, v56);
      v24(v20, v26);

      if ((v21 & 1) == 0)
      {
        break;
      }

      v27 = a2;
      v28 = v57;
      if (v57 != a2++)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v28 + 8;
      v14 = v51;
    }

    v27 = a4;
    a4 += 8;
    v28 = v57;
    if (v57 == v23)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v28 = *v27;
    goto LABEL_13;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v14 = &a4[8 * v13];
  v57 = a1;
  v49 = a4;
  v30 = v53;
LABEL_15:
  v31 = a2 - 1;
  --a3;
  v50 = a2 - 1;
  v51 = a2;
  while (v14 > a4 && a2 > a1)
  {
    v33 = *v31;
    v34 = *(v14 - 1);
    i = v34;
    v35 = v33;
    v36 = [v34 lastReportedDate];
    v37 = v54;
    sub_24E343328();

    v38 = [v35 lastReportedDate];
    v39 = v55;
    sub_24E343328();

    LOBYTE(v38) = sub_24E3432F8();
    v40 = *v30;
    v41 = v39;
    v42 = v56;
    (*v30)(v41, v56);
    v40(v37, v42);

    v43 = (a3 + 1);
    if (v38)
    {
      v44 = v50;
      a2 = v50;
      a4 = v49;
      a1 = v57;
      if (v43 != v51)
      {
        *a3 = *v50;
        a2 = v44;
      }

      goto LABEL_15;
    }

    if (v14 != v43)
    {
      *a3 = *(v14 - 1);
    }

    --a3;
    v14 -= 8;
    a4 = v49;
    v31 = v50;
    a2 = v51;
    a1 = v57;
  }

LABEL_28:
  v45 = (v14 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v45])
  {
    memmove(a2, a4, 8 * v45);
  }

  return 1;
}