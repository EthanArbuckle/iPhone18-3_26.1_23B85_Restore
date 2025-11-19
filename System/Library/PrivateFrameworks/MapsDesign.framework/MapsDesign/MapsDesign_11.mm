uint64_t sub_213EF0800@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = sub_213F4DBC0();
  v30 = *(v29 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_213F4DCA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB88, &qword_213F61D30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB90, &qword_213F61D38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = *(v1 + 48);
  v34[2] = *(v1 + 32);
  v34[3] = v18;
  v35 = *(v1 + 64);
  v19 = *(v1 + 16);
  v34[0] = *v1;
  v34[1] = v19;
  v20 = swift_allocObject();
  v21 = *(v1 + 48);
  *(v20 + 48) = *(v1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v1 + 64);
  v22 = *(v1 + 16);
  *(v20 + 16) = *v1;
  *(v20 + 32) = v22;
  v32 = v34;
  sub_213EF98E0(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB98, &qword_213F61D40);
  sub_213EF9918();
  sub_213F4EB00();
  sub_213F4DC90();
  sub_213DE3AE4(&qword_281182748, &qword_27C8FBB88, &qword_213F61D30);
  sub_213EF7D6C(&qword_281182998, MEMORY[0x277CDE0B8]);
  sub_213F4E3B0();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBB0, &qword_213F61D68) + 36)] = 0;
  v23 = &v17[*(v14 + 36)];
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBB8, &qword_213F61D70) + 40)];
  sub_213F4D510();
  *v23 = 0;
  v25 = v28;
  sub_213F4D570();
  sub_213EF9A5C();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  v26 = v29;
  sub_213F4E410();
  (*(v30 + 8))(v25, v26);
  return sub_213DE36FC(v17, &qword_27C8FBB90, &qword_213F61D38);
}

uint64_t sub_213EF0C94(__int128 *a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = *(a1 + 16);
  v16 = *a1;
  v7 = v16;
  if (v17 == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v8 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213DE36FC(&v16, &qword_27C8FB358, &qword_213F5F4A8);
    (*(v3 + 8))(v6, v2);
    v7 = v14;
  }

  v14 = a1[3];
  v15 = *(a1 + 64);
  v12 = a1[3];
  v13 = *(a1 + 64);
  sub_213EC3260(&v14, v11);
  v7(&v12);

  return sub_213EB8F2C(v12, *(&v12 + 1), v13);
}

uint64_t sub_213EF0E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = a1[3];
  v9 = a1[4];

  v10 = sub_213F4E9F0();
  v11 = a1[5];
  sub_213F4E180();
  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_213F4E190();
  sub_213DE36FC(v7, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7798, &unk_213F61D50) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v17 = *MEMORY[0x277CE1058];
  v18 = sub_213F4EA30();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *a2 = v10;
  a2[1] = KeyPath;
  a2[2] = v13;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBA8, &qword_213F61D48) + 36));
  v20 = v28[1];
  *v19 = v28[0];
  v19[1] = v20;
  v19[2] = v28[2];
  v21 = sub_213F4EEE0();
  v23 = v22;
  v24 = [objc_opt_self() quaternarySystemFillColor];
  v25 = sub_213F4E870();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB98, &qword_213F61D40);
  v27 = (a2 + *(result + 36));
  *v27 = v25;
  v27[1] = v21;
  v27[2] = v23;
  return result;
}

uint64_t sub_213EF10DC@<X0>(uint64_t a1@<X8>)
{
  sub_213F4F280();
  sub_213DBC9EC();
  v2 = sub_213F4E310();
  v4 = v3;
  v6 = v5;
  sub_213F4E8E0();
  v7 = sub_213F4E2B0();
  v9 = v8;
  v11 = v10;
  sub_213DBCA40(v2, v4, v6 & 1);

  sub_213F4E220();
  v12 = sub_213F4E2E0();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_213DBCA40(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_213EF1214@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_213EF10DC(a1);
}

uint64_t sub_213EF121C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_213F4DBC0();
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4D290();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for ActionTrailingAccessory(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBF0, &qword_213F61E50);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBBF8, &qword_213F61E58);
  v21 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC00, &qword_213F61E60);
  v25 = *(v24 - 8);
  v55 = v24;
  v56 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v52 = &v51 - v27;
  sub_213EFA438(v1, &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionTrailingAccessory);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  sub_213EF8E7C(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for ActionTrailingAccessory);
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC08, &qword_213F61E68);
  sub_213EFA000();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182740, &qword_27C8FBBF0, &qword_213F61E50);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v17 + 8))(v20, v16);
  v30 = v51;
  v31 = &v23[*(v51 + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E8, &qword_213F61EA0);
  v33 = &v31[*(v32 + 40)];
  sub_213F4D510();
  sub_213DBBD08(v12);
  sub_213F4D280();
  sub_213F4D270();
  v34 = v54;
  v35 = *(v53 + 8);
  v35(v10, v54);
  v35(v12, v34);
  v36 = *(sub_213F4D470() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_213F4D950();
  (*(*(v38 - 8) + 104))(&v31[v36], v37, v38);
  __asm { FMOV            V0.2D, #14.0 }

  *v31 = _Q0;
  v31[*(v32 + 36)] = 0;
  v44 = v57;
  sub_213F4D570();
  v45 = sub_213EFA2E0();
  v46 = sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  v47 = v52;
  v48 = v58;
  sub_213F4E410();
  (*(v59 + 8))(v44, v48);
  sub_213DE36FC(v23, &qword_27C8FBBF8, &qword_213F61E58);
  strcpy(v62, "ActionButton");
  BYTE5(v62[1]) = 0;
  HIWORD(v62[1]) = -5120;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  v62[0] = v30;
  v62[1] = v48;
  v62[2] = v45;
  v62[3] = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v55;
  sub_213F4E6D0();

  return (*(v56 + 8))(v47, v49);
}

uint64_t sub_213EF18A8(uint64_t a1)
{
  v2 = sub_213F4D7F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionTrailingAccessory(0);
  v8 = a1 + *(v7 + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
  }

  else
  {

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213EB8B1C();
    (*(v3 + 8))(v6, v2);
    v10 = v17;
  }

  v12 = a1 + *(v7 + 36);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17 = *v12;
  v18 = v13;
  v19 = v14;
  sub_213EC4B2C(v17, v13, v14);
  v10(&v17);

  return sub_213EB8F2C(v17, v18, v19);
}

double sub_213EF1A64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v4 = sub_213F4D290();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v47 = sub_213F4CEA0();
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v47);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v51 = sub_213F4DA40();
  v68 = 0;
  sub_213EF1F3C(a1, &v57);
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v69 = v57;
  v70 = v58;
  v79[6] = v63;
  v79[7] = v64;
  v79[8] = v65;
  v79[2] = v59;
  v79[3] = v60;
  v79[4] = v61;
  v79[5] = v62;
  v78 = v66;
  v80 = v66;
  v79[0] = v57;
  v79[1] = v58;
  sub_213DE3164(&v69, &v56, &qword_27C8FBC78, &qword_213F61EA8);
  sub_213DE36FC(v79, &qword_27C8FBC78, &qword_213F61EA8);
  *&v67[103] = v75;
  *&v67[119] = v76;
  *&v67[135] = v77;
  *&v67[39] = v71;
  *&v67[55] = v72;
  *&v67[71] = v73;
  *&v67[87] = v74;
  *&v67[7] = v69;
  v67[151] = v78;
  *&v67[23] = v70;
  v48 = v68;
  v46 = type metadata accessor for ActionTrailingAccessory(0);
  v18 = v52 + *(v46 + 20);
  v19 = v17;
  sub_213EA8894(v17);
  v20 = v15;
  v21 = v47;
  (*(v11 + 104))(v15, *MEMORY[0x277CDF3C0], v47);
  LOBYTE(v15) = sub_213F4CE90();
  v22 = *(v11 + 8);
  v22(v20, v21);
  v22(v19, v21);
  if (v15)
  {
    v23 = sub_213F4E8F0();
  }

  else
  {
    v23 = sub_213F4E8B0();
  }

  v24 = v23;
  v25 = v52;
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v26 = v50;
  v27 = *(v49 + 8);
  v27(v8, v50);
  v27(v10, v26);
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v27(v8, v26);
  v27(v10, v26);
  sub_213F4EEE0();
  v28 = sub_213F4D0C0();
  v29 = MEMORY[0x216052350](v28, 0.5, 0.7, 0.0);
  v30 = (v25 + *(v46 + 32));
  v32 = *v30;
  v31 = v30[1];

  v33 = sub_213F4EEE0();
  v35 = v34;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC08, &qword_213F61E68) + 36);
  sub_213EF2440(v25, v36);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC70, &qword_213F61E98) + 36));
  *v37 = v33;
  v37[1] = v35;
  v38 = *v67;
  *(a2 + 33) = *&v67[16];
  *(a2 + 17) = v38;
  v39 = *&v67[64];
  *(a2 + 97) = *&v67[80];
  *(a2 + 81) = v39;
  v40 = *&v67[32];
  *(a2 + 65) = *&v67[48];
  *(a2 + 49) = v40;
  v41 = *&v67[112];
  *(a2 + 145) = *&v67[128];
  v42 = *&v67[96];
  *(a2 + 129) = v41;
  *(a2 + 113) = v42;
  v43 = v54;
  *(a2 + 184) = v53;
  *a2 = v51;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v48;
  *(a2 + 161) = *&v67[144];
  *(a2 + 176) = v24;
  *(a2 + 200) = v43;
  result = *&v55;
  *(a2 + 216) = v55;
  *(a2 + 232) = v29;
  *(a2 + 240) = v32;
  *(a2 + 248) = v31;
  return result;
}

uint64_t sub_213EF1F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ActionTrailingAccessory(0);
  v15 = (a1 + *(v14 + 28));
  v17 = *v15;
  v16 = v15[1];

  v61 = sub_213F4EA10();
  v18 = *(v14 + 32);
  v56 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  v21 = v19[1];
  sub_213F4E160();
  v22 = sub_213F4E0F0();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v60 = sub_213F4E190();
  sub_213DE36FC(v13, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  if (v21)
  {
    *&v72 = v20;
    *(&v72 + 1) = v21;
    sub_213DBC9EC();

    v24 = sub_213F4E310();
    v53 = v25;
    v54 = v24;
    v27 = v26;
    v52 = v28;
    v51 = swift_getKeyPath();
    sub_213F4E110();
    v23(v13, 1, 1, v22);
    v50 = sub_213F4E190();
    sub_213DE36FC(v13, &qword_27C8F7668, &qword_213F52190);
    v29 = swift_getKeyPath();
    v30 = v27 & 1;
    LOBYTE(v72) = v27 & 1;
    LOBYTE(v65) = 0;
    sub_213F4F040();
    sub_213F4D0F0();
    sub_213F4D100();
    v31 = sub_213F4D110();

    v32 = sub_213F4E040();
    sub_213DBBD08(v9);
    v33 = v55;
    sub_213F4D280();
    sub_213F4D270();
    v34 = *(v57 + 8);
    v35 = v33;
    v36 = v58;
    v34(v35, v58);
    v34(v9, v36);
    sub_213F4CDA0();
    LOBYTE(v72) = 0;
    *&v65 = v54;
    *(&v65 + 1) = v53;
    LOBYTE(v66) = v30;
    *(&v66 + 1) = v52;
    *&v67 = v51;
    *(&v67 + 1) = 1;
    LOBYTE(v68) = 0;
    *(&v68 + 1) = v29;
    *&v69 = v50;
    *(&v69 + 1) = v31;
    LOBYTE(v70) = v32;
    *(&v70 + 1) = v37;
    *&v71[0] = v38;
    *(&v71[0] + 1) = v39;
    *&v71[1] = v40;
    BYTE8(v71[1]) = 0;
    nullsub_1(&v65);
    v76 = v69;
    v77 = v70;
    v78[0] = v71[0];
    *(v78 + 9) = *(v71 + 9);
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v75 = v68;
  }

  else
  {
    sub_213EFA41C(&v72);
  }

  v69 = v76;
  v70 = v77;
  v71[0] = v78[0];
  *(v71 + 9) = *(v78 + 9);
  v65 = v72;
  v66 = v73;
  v41 = v74;
  v67 = v74;
  v68 = v75;
  v42 = v76;
  v63[2] = v74;
  v63[3] = v75;
  v44 = v72;
  v43 = v73;
  v63[0] = v72;
  v63[1] = v73;
  *(v64 + 9) = *(v78 + 9);
  v64[0] = v78[0];
  v45 = v78[0];
  v46 = v77;
  v63[4] = v76;
  v63[5] = v77;
  *(a2 + 72) = v75;
  *(a2 + 56) = v41;
  v47 = v60;
  v48 = KeyPath;
  *a2 = v61;
  *(a2 + 8) = v48;
  *(a2 + 16) = v47;
  *(a2 + 40) = v43;
  *(a2 + 24) = v44;
  *(a2 + 129) = *(v78 + 9);
  *(a2 + 120) = v45;
  *(a2 + 104) = v46;
  *(a2 + 88) = v42;

  sub_213DE3164(v63, &v62, &qword_27C8FBC90, &qword_213F61EC8);
  sub_213DE36FC(&v65, &qword_27C8FBC90, &qword_213F61EC8);
}

double sub_213EF2440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = sub_213F4EF90();
  v74 = *(v76 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_213F4CEA0();
  v64 = *(v62 - 8);
  v5 = *(v64 + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  v11 = sub_213F4D290();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = sub_213F4D470();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  v24 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = &v61 - v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC80, &qword_213F61EB8);
  v26 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v61 - v27;
  sub_213DBBD08(v18);
  sub_213F4D280();
  sub_213F4D270();
  v28 = *(v12 + 8);
  v71 = v16;
  v28(v16, v11);
  v67 = v18;
  v75 = v11;
  v73 = v12 + 8;
  v69 = v28;
  v28(v18, v11);
  v29 = *(v20 + 28);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_213F4D950();
  (*(*(v31 - 8) + 104))(&v23[v29], v30, v31);
  __asm { FMOV            V0.2D, #14.0 }

  v63 = v23;
  *v23 = _Q0;
  v78 = *(type metadata accessor for ActionTrailingAccessory(0) + 20);
  v79 = a1;
  sub_213EA8894(v10);
  v37 = v64;
  v38 = v62;
  v39 = *(v64 + 104);
  v39(v8, *MEMORY[0x277CDF3C0], v62);
  LOBYTE(v30) = sub_213F4CE90();
  v40 = *(v37 + 8);
  v41 = v8;
  v40(v8, v38);
  v42 = v10;
  v43 = v10;
  v44 = v38;
  v40(v43, v38);
  if (v30)
  {
    sub_213F4E8F0();
  }

  else
  {
    sub_213F4E8B0();
  }

  sub_213EA8894(v42);
  LODWORD(v64) = *MEMORY[0x277CDF3D0];
  v45 = v39;
  (v39)(v41);
  sub_213F4CE90();
  v40(v41, v44);
  v40(v42, v44);
  v46 = sub_213F4E900();

  v47 = v68;
  sub_213EF8E7C(v63, v68, MEMORY[0x277CDFC08]);
  *(v47 + *(v65 + 36)) = v46;
  sub_213EA8894(v42);
  v45(v41, v64, v44);
  LOBYTE(v46) = sub_213F4CE90();
  v40(v41, v44);
  v40(v42, v44);
  v48 = v74;
  v49 = MEMORY[0x277CE13B0];
  if ((v46 & 1) == 0)
  {
    v49 = MEMORY[0x277CE13B8];
  }

  v50 = v72;
  v51 = v76;
  (*(v74 + 104))(v72, *v49, v76);
  v52 = v70;
  (*(v48 + 32))(&v70[*(v66 + 36)], v50, v51);
  sub_213DE2B44(v47, v52, &qword_27C8F7D90, &qword_213F61EB0);
  v53 = v67;
  sub_213DBBD08(v67);
  v54 = v71;
  sub_213F4D280();
  sub_213F4D270();
  v55 = v75;
  v56 = v69;
  v69(v54, v75);
  v56(v53, v55);
  sub_213DBBD08(v53);
  sub_213F4D280();
  sub_213F4D270();
  v56(v54, v55);
  v56(v53, v55);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v57 = v77;
  sub_213DE2B44(v52, v77, &qword_27C8FBC80, &qword_213F61EB8);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBC88, &qword_213F61EC0) + 36));
  v59 = v81;
  *v58 = v80;
  v58[1] = v59;
  result = *&v82;
  v58[2] = v82;
  return result;
}

uint64_t sub_213EF2B84@<X0>(uint64_t a1@<X8>)
{
  v764 = a1;
  v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA20, &qword_213F616B0);
  v2 = *(*(v688 - 8) + 64);
  MEMORY[0x28223BE20](v688);
  v690 = (&v654 - v3);
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA28, &qword_213F616B8);
  v4 = *(*(v720 - 8) + 64);
  MEMORY[0x28223BE20](v720);
  v692 = &v654 - v5;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA30, &qword_213F616C0);
  v6 = *(*(v689 - 8) + 64);
  MEMORY[0x28223BE20](v689);
  v658 = &v654 - v7;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA38, &qword_213F616C8);
  v8 = *(*(v696 - 8) + 64);
  MEMORY[0x28223BE20](v696);
  v657 = &v654 - v9;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA40, &qword_213F616D0);
  v10 = *(*(v717 - 8) + 64);
  MEMORY[0x28223BE20](v717);
  v719 = &v654 - v11;
  v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA48, &qword_213F616D8);
  v12 = *(*(v693 - 8) + 64);
  MEMORY[0x28223BE20](v693);
  v694 = &v654 - v13;
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA50, &qword_213F616E0);
  v14 = *(*(v718 - 8) + 64);
  MEMORY[0x28223BE20](v718);
  v695 = &v654 - v15;
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA58, &qword_213F616E8);
  v16 = *(*(v744 - 8) + 64);
  MEMORY[0x28223BE20](v744);
  v721 = &v654 - v17;
  v708 = sub_213F4D390();
  v740 = *(v708 - 8);
  v18 = *(v740 + 64);
  MEMORY[0x28223BE20](v708);
  v716 = &v654 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v739 = type metadata accessor for SelectedTrailingAccessory(0);
  v20 = *(*(v739 - 8) + 64);
  MEMORY[0x28223BE20](v739);
  v738 = (&v654 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA60, &qword_213F616F0);
  v22 = *(*(v683 - 8) + 64);
  MEMORY[0x28223BE20](v683);
  v714 = &v654 - v23;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA68, &qword_213F616F8);
  v24 = *(*(v685 - 8) + 64);
  MEMORY[0x28223BE20](v685);
  v715 = &v654 - v25;
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA70, &qword_213F61700);
  v26 = *(*(v691 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v691);
  v686 = &v654 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v687 = &v654 - v29;
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA78, &qword_213F61708);
  v30 = *(*(v741 - 8) + 64);
  MEMORY[0x28223BE20](v741);
  v743 = &v654 - v31;
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA80, &qword_213F61710);
  v32 = *(*(v697 - 8) + 64);
  MEMORY[0x28223BE20](v697);
  v698 = &v654 - v33;
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA88, &qword_213F61718);
  v34 = *(*(v742 - 8) + 64);
  MEMORY[0x28223BE20](v742);
  v699 = &v654 - v35;
  v763 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA90, &qword_213F61720);
  v36 = *(*(v763 - 8) + 64);
  MEMORY[0x28223BE20](v763);
  v745 = &v654 - v37;
  v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA98, &qword_213F61728);
  v38 = *(*(v724 - 8) + 64);
  MEMORY[0x28223BE20](v724);
  v726 = &v654 - v39;
  v746 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAA0, &qword_213F61730);
  v40 = *(*(v746 - 8) + 64);
  MEMORY[0x28223BE20](v746);
  v727 = &v654 - v41;
  v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAA8, &qword_213F61738);
  v42 = *(*(v722 - 8) + 64);
  MEMORY[0x28223BE20](v722);
  v723 = (&v654 - v43);
  v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAB0, &qword_213F61740);
  v44 = *(*(v725 - 8) + 64);
  MEMORY[0x28223BE20](v725);
  v728 = &v654 - v45;
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAB8, &qword_213F61748);
  v46 = *(*(v703 - 8) + 64);
  MEMORY[0x28223BE20](v703);
  v737 = (&v654 - v47);
  v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAC0, &qword_213F61750);
  v48 = *(*(v729 - 8) + 64);
  MEMORY[0x28223BE20](v729);
  v731 = &v654 - v49;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAC8, &qword_213F61758);
  v50 = *(*(v700 - 8) + 64);
  MEMORY[0x28223BE20](v700);
  v701 = &v654 - v51;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAD0, &qword_213F61760);
  v52 = *(*(v730 - 8) + 64);
  MEMORY[0x28223BE20](v730);
  v702 = &v654 - v53;
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAD8, &qword_213F61768);
  v54 = *(*(v750 - 8) + 64);
  MEMORY[0x28223BE20](v750);
  v732 = &v654 - v55;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAE0, &qword_213F61770);
  v56 = *(*(v675 - 8) + 64);
  MEMORY[0x28223BE20](v675);
  v676 = &v654 - v57;
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAE8, &qword_213F61778);
  v58 = *(*(v713 - 8) + 64);
  MEMORY[0x28223BE20](v713);
  v677 = &v654 - v59;
  v736 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAF0, &qword_213F61780);
  v60 = *(*(v736 - 8) + 64);
  MEMORY[0x28223BE20](v736);
  v735 = &v654 - v61;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBAF8, &qword_213F61788);
  v62 = *(*(v681 - 8) + 64);
  MEMORY[0x28223BE20](v681);
  v680 = &v654 - v63;
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB00, &qword_213F61790);
  v64 = *(*(v707 - 8) + 64);
  MEMORY[0x28223BE20](v707);
  v682 = &v654 - v65;
  v760 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB08, &qword_213F61798);
  v66 = *(*(v760 - 8) + 64);
  MEMORY[0x28223BE20](v760);
  v762 = &v654 - v67;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB10, &qword_213F617A0);
  v68 = *(*(v747 - 8) + 64);
  MEMORY[0x28223BE20](v747);
  v749 = &v654 - v69;
  v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB18, &qword_213F617A8);
  v70 = *(*(v709 - 8) + 64);
  MEMORY[0x28223BE20](v709);
  v711 = &v654 - v71;
  v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB20, &qword_213F617B0);
  v72 = *(*(v704 - 8) + 64);
  MEMORY[0x28223BE20](v704);
  v705 = &v654 - v73;
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB28, &qword_213F617B8);
  v74 = *(*(v710 - 8) + 64);
  MEMORY[0x28223BE20](v710);
  v706 = &v654 - v75;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB30, &qword_213F617C0);
  v76 = *(*(v748 - 8) + 64);
  MEMORY[0x28223BE20](v748);
  v712 = &v654 - v77;
  v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB38, &qword_213F617C8);
  v78 = *(*(v761 - 8) + 64);
  MEMORY[0x28223BE20](v761);
  v751 = &v654 - v79;
  v80 = sub_213F4CB60();
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v752 = &v654 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v754 = sub_213F4F210();
  v753 = *(v754 - 8);
  v83 = *(v753 + 64);
  v84 = MEMORY[0x28223BE20](v754);
  v755 = &v654 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v756 = &v654 - v86;
  v757 = sub_213F4D290();
  v758 = *(v757 - 8);
  v87 = *(v758 + 8);
  v88 = MEMORY[0x28223BE20](v757);
  v90 = &v654 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x28223BE20](v88);
  v93 = &v654 - v92;
  v94 = MEMORY[0x28223BE20](v91);
  v733 = &v654 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v661 = &v654 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v666 = &v654 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v670 = &v654 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v104 = &v654 - v103;
  v105 = MEMORY[0x28223BE20](v102);
  v759 = &v654 - v106;
  MEMORY[0x28223BE20](v105);
  v108 = &v654 - v107;
  v678 = type metadata accessor for ButtonTrailingAccessory(0);
  v109 = *(*(v678 - 8) + 64);
  v110 = MEMORY[0x28223BE20](v678);
  v660 = (&v654 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = MEMORY[0x28223BE20](v110);
  v665 = (&v654 - v113);
  v114 = MEMORY[0x28223BE20](v112);
  v116 = &v654 - v115;
  MEMORY[0x28223BE20](v114);
  v118 = &v654 - v117;
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB40, &qword_213F617D0);
  v119 = *(*(v679 - 8) + 64);
  v120 = MEMORY[0x28223BE20](v679);
  v659 = &v654 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = MEMORY[0x28223BE20](v120);
  v664 = &v654 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v669 = &v654 - v125;
  MEMORY[0x28223BE20](v124);
  v127 = &v654 - v126;
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB48, &qword_213F617D8);
  v128 = *(*(v684 - 8) + 64);
  v129 = MEMORY[0x28223BE20](v684);
  v662 = &v654 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = MEMORY[0x28223BE20](v129);
  v667 = &v654 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v671 = &v654 - v134;
  MEMORY[0x28223BE20](v133);
  v673 = &v654 - v135;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB50, &qword_213F617E0);
  v136 = *(*(v734 - 8) + 64);
  v137 = MEMORY[0x28223BE20](v734);
  v663 = &v654 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x28223BE20](v137);
  v668 = &v654 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v672 = &v654 - v142;
  MEMORY[0x28223BE20](v141);
  v674 = &v654 - v143;
  v144 = type metadata accessor for TrailingAccessory(0);
  v145 = *(v144 + 24);
  v765 = v1;
  v146 = v1 + v145 + *(type metadata accessor for TrailingAccessoryViewModel(0) + 20);
  v148 = *v146;
  v147 = *(v146 + 8);
  v150 = *(v146 + 16);
  v149 = *(v146 + 24);
  v151 = *(v146 + 32);
  v152 = *(v146 + 40);
  if (v152 <= 2)
  {
    v728 = v90;
    v198 = v736;
    v199 = v735;
    v200 = v737;
    v201 = v739;
    v202 = v738;
    if (!v152)
    {
      v656 = v150;
      v746 = v148;
      v229 = v147;
      if (v149)
      {
        v230 = v149;
        v231 = v151;
        v232 = swift_allocObject();
        *(v232 + 16) = v230;
        *(v232 + 24) = v231;
        v233 = sub_213EF8F94;
        v234 = v199;
      }

      else
      {
        v233 = 0;
        v232 = 0;
        v234 = v735;
        v231 = v151;
        v230 = 0;
      }

      v654 = v231;
      v655 = v230;
      *v234 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v361 = (v234 + v198[10]);
      v362 = (v234 + v198[11]);
      v363 = v746;
      *(v234 + v198[9]) = v746;
      v364 = v656;
      *v361 = v229;
      v361[1] = v364;
      *v362 = v233;
      v362[1] = v232;
      sub_213EF8EE4(v363, v229, v364, v230, v231, 0);
      sub_213DD74C4(v230);
      v746 = v229;
      sub_213DD74C4(v229);
      v365 = sub_213F4E0A0();
      sub_213DBBD08(v104);
      v366 = v234;
      v367 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v368 = *(v758 + 1);
      v369 = v367;
      v370 = v757;
      v368(v369, v757);
      v368(v104, v370);
      sub_213F4CDA0();
      v372 = v371;
      v374 = v373;
      v376 = v375;
      v378 = v377;
      v379 = v680;
      sub_213DE3164(v366, v680, &qword_27C8FBAF0, &qword_213F61780);
      v380 = v379 + *(v681 + 36);
      *v380 = v365;
      *(v380 + 8) = v372;
      *(v380 + 16) = v374;
      *(v380 + 24) = v376;
      *(v380 + 32) = v378;
      *(v380 + 40) = 0;
      sub_213DE36FC(v366, &qword_27C8FBAF0, &qword_213F61780);
      v381 = v756;
      sub_213F4F200();
      v382 = v753;
      v383 = v754;
      (*(v753 + 16))(v755, v381, v754);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v384 = qword_281182518;
      sub_213F4CB50();
      v385 = sub_213F4F260();
      v387 = v386;
      (*(v382 + 8))(v381, v383);
      *&v773 = v385;
      *(&v773 + 1) = v387;
      sub_213EF8A68();
      sub_213DBC9EC();
      v205 = v682;
      sub_213F4E5C0();

      sub_213DE36FC(v379, &qword_27C8FBAF8, &qword_213F61788);
      v191 = &qword_27C8FBB00;
      v192 = &qword_213F61790;
      sub_213DE3164(v205, v705, &qword_27C8FBB00, &qword_213F61790);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
      v388 = v706;
      sub_213F4DBA0();
      sub_213DE3164(v388, v711, &qword_27C8FBB28, &qword_213F617B8);
      swift_storeEnumTagMultiPayload();
      sub_213EF8810();
      sub_213EF8B20();
      v389 = v712;
      sub_213F4DBA0();
      sub_213DE36FC(v388, &qword_27C8FBB28, &qword_213F617B8);
      sub_213DE3164(v389, v749, &qword_27C8FBB30, &qword_213F617C0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v291 = v751;
      sub_213F4DBA0();
      sub_213DE36FC(v389, &qword_27C8FBB30, &qword_213F617C0);
      v292 = &qword_27C8FBB38;
      v293 = &qword_213F617C8;
      sub_213DE3164(v291, v762, &qword_27C8FBB38, &qword_213F617C8);
      swift_storeEnumTagMultiPayload();
      sub_213EF86F8();
      sub_213EF8DF0();
      sub_213F4DBA0();
      sub_213DD7558(v746);
      sub_213DD7558(v655);
      goto LABEL_50;
    }

    v203 = v148;
    if (v152 == 1)
    {
      v204 = v147;
      v205 = v737;
      *v200 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v206 = type metadata accessor for OfflineTrailingAccessory(0);
      v207 = v206[5];
      *(v205 + v207) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      *(v205 + v206[6]) = v203;
      *(v205 + v206[7]) = v204;
      LOBYTE(v206) = sub_213F4E0A0();
      sub_213F4CDA0();
      v208 = v205 + *(v703 + 36);
      *v208 = v206;
      *(v208 + 8) = v209;
      *(v208 + 16) = v210;
      *(v208 + 24) = v211;
      *(v208 + 32) = v212;
      *(v208 + 40) = 0;
      v191 = &qword_27C8FBAB8;
      v192 = &qword_213F61748;
      sub_213DE3164(v205, v701, &qword_27C8FBAB8, &qword_213F61748);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8D14();
      v213 = v702;
LABEL_11:
      sub_213F4DBA0();
      sub_213DE3164(v213, v731, &qword_27C8FBAD0, &qword_213F61760);
      swift_storeEnumTagMultiPayload();
      sub_213EF8C5C();
      sub_213EF8454();
      v214 = v732;
      sub_213F4DBA0();
      sub_213DE36FC(v213, &qword_27C8FBAD0, &qword_213F61760);
      v215 = &qword_27C8FBAD8;
      v216 = &qword_213F61768;
      sub_213DE3164(v214, v749, &qword_27C8FBAD8, &qword_213F61768);
LABEL_48:
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v291 = v751;
      sub_213F4DBA0();
      sub_213DE36FC(v214, v215, v216);
      v292 = &qword_27C8FBB38;
      v293 = &qword_213F617C8;
      sub_213DE3164(v291, v762, &qword_27C8FBB38, &qword_213F617C8);
      goto LABEL_49;
    }

    *v202 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v235 = v201;
    v236 = *(v201 + 20);
    *(v202 + v236) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v237 = v202 + *(v235 + 24);
    *v237 = swift_getKeyPath();
    v237[8] = 0;
    *(v202 + *(v235 + 28)) = v203 & 1;
    LOBYTE(v235) = sub_213F4E0A0();
    sub_213DBBD08(v93);
    v238 = v759;
    sub_213F4D280();
    sub_213F4D270();
    v239 = *(v758 + 1);
    v240 = v238;
    v241 = v757;
    v239(v240, v757);
    v758 = v239;
    v239(v93, v241);
    sub_213F4CDA0();
    v243 = v242;
    v245 = v244;
    v247 = v246;
    v249 = v248;
    v250 = v714;
    sub_213EF8E7C(v202, v714, type metadata accessor for SelectedTrailingAccessory);
    v251 = v250 + *(v683 + 36);
    *v251 = v235;
    *(v251 + 8) = v243;
    *(v251 + 16) = v245;
    *(v251 + 24) = v247;
    *(v251 + 32) = v249;
    *(v251 + 40) = 0;
    v252 = sub_213F4E060();
    v253 = *(v144 + 20);
    v254 = v716;
    sub_213EA886C(v716);
    LOBYTE(v250) = sub_213F4D370();
    v255 = *(v740 + 8);
    v256 = v708;
    v740 += 8;
    v255(v254, v708);
    if (v250)
    {
      v257 = v728;
      sub_213DBBD08(v728);
      v258 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v259 = v258;
      v256 = v708;
      v260 = v758;
      v758(v259, v241);
      v260(v257, v241);
    }

    sub_213F4CDA0();
    v262 = v261;
    v264 = v263;
    v266 = v265;
    v268 = v267;
    v269 = v715;
    sub_213DE2B44(v714, v715, &qword_27C8FBA60, &qword_213F616F0);
    v270 = v269 + *(v685 + 36);
    *v270 = v252;
    *(v270 + 8) = v262;
    *(v270 + 16) = v264;
    *(v270 + 24) = v266;
    *(v270 + 32) = v268;
    *(v270 + 40) = 0;
    v271 = sub_213F4E070();
    v272 = v716;
    sub_213EA886C(v716);
    LOBYTE(v269) = sub_213F4D370();
    v255(v272, v256);
    if (v269)
    {
      v273 = v759;
      sub_213DBBD08(v759);
      v274 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v275 = v274;
      v276 = v758;
      v758(v275, v241);
      v276(v273, v241);
    }

    sub_213F4CDA0();
    v278 = v277;
    v280 = v279;
    v282 = v281;
    v284 = v283;
    v285 = v686;
    sub_213DE2B44(v715, v686, &qword_27C8FBA68, &qword_213F616F8);
    v286 = v285 + *(v691 + 36);
    *v286 = v271;
    *(v286 + 8) = v278;
    *(v286 + 16) = v280;
    *(v286 + 24) = v282;
    *(v286 + 32) = v284;
    *(v286 + 40) = 0;
    v191 = &qword_27C8FBA70;
    v192 = &qword_213F61700;
    v205 = v687;
    sub_213DE2B44(v285, v687, &qword_27C8FBA70, &qword_213F61700);
    sub_213DE3164(v205, v694, &qword_27C8FBA70, &qword_213F61700);
    swift_storeEnumTagMultiPayload();
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    v287 = v695;
    goto LABEL_21;
  }

  if (v152 <= 4)
  {
    v153 = v148;
    v154 = v147;
    v155 = v757;
    if (v152 == 3)
    {
      KeyPath = swift_getKeyPath();
      v157 = v723;
      *v723 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v158 = type metadata accessor for ActionTrailingAccessory(0);
      v159 = v158[5];
      *(v157 + v159) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v160 = v157 + v158[6];
      *v160 = swift_getKeyPath();
      *(v160 + 8) = 0;
      *(v160 + 16) = 0;
      v161 = (v157 + v158[7]);
      *v161 = 0xD00000000000002DLL;
      v161[1] = 0x8000000213FA4B20;
      v162 = (v157 + v158[8]);
      *v162 = v153;
      v162[1] = v154;
      v163 = v157 + v158[9];
      *v163 = xmmword_213F613D0;
      *(v163 + 16) = 4;

      v164 = sub_213F4E0A0();
      v165 = v759;
      sub_213DBBD08(v759);
      v166 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v167 = *(v758 + 1);
      v167(v166, v155);
      v167(v165, v155);
      sub_213F4CDA0();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v175 = v174;
      v176 = v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v176 = v164;
      *(v176 + 8) = v169;
      *(v176 + 16) = v171;
      *(v176 + 24) = v173;
      *(v176 + 32) = v175;
      *(v176 + 40) = 0;
      v177 = sub_213F4E0B0();
      sub_213DBBD08(v165);
      sub_213F4D280();
      sub_213F4D270();
      v167(v166, v155);
      v167(v165, v155);
      sub_213F4CDA0();
      v178 = v157 + *(v722 + 36);
      *v178 = v177;
      *(v178 + 8) = v179;
      *(v178 + 16) = v180;
      *(v178 + 24) = v181;
      *(v178 + 32) = v182;
      *(v178 + 40) = 0;
      v183 = v756;
      sub_213F4F200();
      v184 = v753;
      v185 = v754;
      (*(v753 + 16))(v755, v183, v754);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v186 = qword_281182518;
      sub_213F4CB50();
      v187 = sub_213F4F260();
      v189 = v188;
      (*(v184 + 8))(v183, v185);
      *&v773 = v187;
      *(&v773 + 1) = v189;
      sub_213EF8504();
      sub_213DBC9EC();
      v190 = v728;
      sub_213F4E5C0();

      sub_213DE36FC(v157, &qword_27C8FBAA8, &qword_213F61738);
      v191 = &qword_27C8FBAB0;
      v192 = &qword_213F61740;
      sub_213DE3164(v190, v726, &qword_27C8FBAB0, &qword_213F61740);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
      v193 = v727;
      sub_213F4DBA0();
      sub_213DE3164(v193, v731, &qword_27C8FBAA0, &qword_213F61730);
      swift_storeEnumTagMultiPayload();
      sub_213EF8C5C();
      sub_213EF8454();
      v194 = v732;
      sub_213F4DBA0();
      sub_213DE36FC(v193, &qword_27C8FBAA0, &qword_213F61730);
      sub_213DE3164(v194, v749, &qword_27C8FBAD8, &qword_213F61768);
      swift_storeEnumTagMultiPayload();
      sub_213EF8784();
      sub_213EF8BD0();
      v195 = v751;
      sub_213F4DBA0();
      sub_213DE36FC(v194, &qword_27C8FBAD8, &qword_213F61768);
      v196 = &qword_27C8FBB38;
      v197 = &qword_213F617C8;
      sub_213DE3164(v195, v762, &qword_27C8FBB38, &qword_213F617C8);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_213EF86F8();
      sub_213EF8DF0();
      sub_213F4DBA0();
      sub_213DE36FC(v195, v196, v197);
      v228 = v190;
      return sub_213DE36FC(v228, v191, v192);
    }

    v294 = swift_getKeyPath();
    v295 = v723;
    *v723 = v294;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v296 = type metadata accessor for ActionTrailingAccessory(0);
    v297 = v296[5];
    *(v295 + v297) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v298 = v295 + v296[6];
    *v298 = swift_getKeyPath();
    *(v298 + 8) = 0;
    *(v298 + 16) = 0;
    v299 = (v295 + v296[7]);
    *v299 = 0xD000000000000010;
    v299[1] = 0x8000000213FA5CC0;
    v300 = (v295 + v296[8]);
    *v300 = v153;
    v300[1] = v154;
    v301 = v295 + v296[9];
    *v301 = xmmword_213F613C0;
    *(v301 + 16) = 4;

    v302 = sub_213F4E0A0();
    v303 = v759;
    sub_213DBBD08(v759);
    v304 = v733;
    sub_213F4D280();
    sub_213F4D270();
    v305 = *(v758 + 1);
    v305(v304, v155);
    v305(v303, v155);
    sub_213F4CDA0();
    v307 = v306;
    v309 = v308;
    v311 = v310;
    v313 = v312;
    v314 = v295 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
    *v314 = v302;
    *(v314 + 8) = v307;
    *(v314 + 16) = v309;
    *(v314 + 24) = v311;
    *(v314 + 32) = v313;
    *(v314 + 40) = 0;
    v315 = sub_213F4E0B0();
    sub_213DBBD08(v303);
    sub_213F4D280();
    sub_213F4D270();
    v305(v304, v155);
    v305(v303, v155);
    sub_213F4CDA0();
    v316 = v295 + *(v722 + 36);
    *v316 = v315;
    *(v316 + 8) = v317;
    *(v316 + 16) = v318;
    *(v316 + 24) = v319;
    *(v316 + 32) = v320;
    *(v316 + 40) = 0;
    v321 = v756;
    sub_213F4F200();
    v322 = v753;
    v323 = v754;
    (*(v753 + 16))(v755, v321, v754);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v324 = qword_281182518;
    sub_213F4CB50();
    v325 = sub_213F4F260();
    v327 = v326;
    (*(v322 + 8))(v321, v323);
    *&v773 = v325;
    *(&v773 + 1) = v327;
    sub_213EF8504();
    sub_213DBC9EC();
    v190 = v728;
    sub_213F4E5C0();

    sub_213DE36FC(v295, &qword_27C8FBAA8, &qword_213F61738);
    v191 = &qword_27C8FBAB0;
    v192 = &qword_213F61740;
    sub_213DE3164(v190, v726, &qword_27C8FBAB0, &qword_213F61740);
LABEL_26:
    swift_storeEnumTagMultiPayload();
    sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
    v328 = v727;
    sub_213F4DBA0();
    sub_213DE3164(v328, v698, &qword_27C8FBAA0, &qword_213F61730);
    swift_storeEnumTagMultiPayload();
    sub_213EF8454();
    v329 = v699;
    sub_213F4DBA0();
    sub_213DE36FC(v328, &qword_27C8FBAA0, &qword_213F61730);
    sub_213DE3164(v329, v743, &qword_27C8FBA88, &qword_213F61718);
    swift_storeEnumTagMultiPayload();
    sub_213EF83D0();
    sub_213EF866C();
    v195 = v745;
    sub_213F4DBA0();
    sub_213DE36FC(v329, &qword_27C8FBA88, &qword_213F61718);
    v196 = &qword_27C8FBA90;
    v197 = &qword_213F61720;
    sub_213DE3164(v195, v762, &qword_27C8FBA90, &qword_213F61720);
    goto LABEL_27;
  }

  if (v152 != 5)
  {
    v330 = v758;
    if (!(v150 | v147 | v148 | v149 | v151))
    {
      *v118 = swift_getKeyPath();
      *(v118 + 1) = 0;
      v118[16] = 0;
      v390 = v678;
      v391 = *(v678 + 20);
      *&v118[v391] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v392 = &v118[*(v390 + 24)];
      *v392 = 1937075312;
      *(v392 + 1) = 0xE400000000000000;
      v393 = &v118[*(v390 + 28)];
      *v393 = 0;
      *(v393 + 1) = 0;
      v393[16] = 4;
      LOBYTE(v391) = sub_213F4E0A0();
      sub_213DBBD08(v108);
      v394 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v395 = *(v330 + 1);
      v396 = v394;
      v397 = v757;
      v395(v396, v757);
      v395(v108, v397);
      sub_213F4CDA0();
      v399 = v398;
      v401 = v400;
      v403 = v402;
      v405 = v404;
      sub_213EF8E7C(v118, v127, type metadata accessor for ButtonTrailingAccessory);
      v406 = &v127[*(v679 + 36)];
      *v406 = v391;
      *(v406 + 1) = v399;
      *(v406 + 2) = v401;
      *(v406 + 3) = v403;
      *(v406 + 4) = v405;
      v406[40] = 0;
      v407 = [objc_opt_self() systemBlueColor];
      v408 = sub_213F4E870();
      v409 = v673;
      sub_213DE2B44(v127, v673, &qword_27C8FBB40, &qword_213F617D0);
      *(v409 + *(v684 + 36)) = v408;
      v410 = v756;
      sub_213F4F200();
      v411 = v753;
      v412 = v754;
      (*(v753 + 16))(v755, v410, v754);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v413 = qword_281182518;
      sub_213F4CB50();
      v414 = sub_213F4F260();
      v416 = v415;
      (*(v411 + 8))(v410, v412);
      *&v773 = v414;
      *(&v773 + 1) = v416;
      sub_213EF88F4();
      sub_213DBC9EC();
      v205 = v674;
      sub_213F4E5C0();

      sub_213DE36FC(v409, &qword_27C8FBB48, &qword_213F617D8);
      v191 = &qword_27C8FBB50;
      v192 = &qword_213F617E0;
      sub_213DE3164(v205, v705, &qword_27C8FBB50, &qword_213F617E0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
      v417 = v706;
      sub_213F4DBA0();
      v418 = &qword_27C8FBB28;
      v419 = &qword_213F617B8;
      sub_213DE3164(v417, v711, &qword_27C8FBB28, &qword_213F617B8);
      goto LABEL_47;
    }

    v331 = v150 | v147 | v149 | v151;
    if (v148 == 1 && !v331)
    {
      *v116 = swift_getKeyPath();
      *(v116 + 1) = 0;
      v116[16] = 0;
      v332 = v678;
      v333 = *(v678 + 20);
      *&v116[v333] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v334 = &v116[*(v332 + 24)];
      *v334 = 0x7269632E6F666E69;
      *(v334 + 1) = 0xEB00000000656C63;
      v335 = &v116[*(v332 + 28)];
      *v335 = xmmword_213F613B0;
      v335[16] = 4;
      LOBYTE(v333) = sub_213F4E0A0();
      v336 = v670;
      sub_213DBBD08(v670);
      v337 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v338 = *(v330 + 1);
      v339 = v337;
      v340 = v757;
      v338(v339, v757);
      v338(v336, v340);
      sub_213F4CDA0();
      v342 = v341;
      v344 = v343;
      v346 = v345;
      v348 = v347;
      v349 = v669;
      sub_213EF8E7C(v116, v669, type metadata accessor for ButtonTrailingAccessory);
      v350 = v349 + *(v679 + 36);
      *v350 = v333;
      *(v350 + 8) = v342;
      *(v350 + 16) = v344;
      *(v350 + 24) = v346;
      *(v350 + 32) = v348;
      *(v350 + 40) = 0;
      v351 = [objc_opt_self() systemBlueColor];
      v352 = sub_213F4E870();
      v353 = v671;
      sub_213DE2B44(v349, v671, &qword_27C8FBB40, &qword_213F617D0);
      *(v353 + *(v684 + 36)) = v352;
      v354 = v756;
      sub_213F4F200();
      v355 = v753;
      v356 = v754;
      (*(v753 + 16))(v755, v354, v754);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v357 = qword_281182518;
      sub_213F4CB50();
      v358 = sub_213F4F260();
      v360 = v359;
      (*(v355 + 8))(v354, v356);
      *&v773 = v358;
      *(&v773 + 1) = v360;
      sub_213EF88F4();
      sub_213DBC9EC();
      v205 = v672;
      sub_213F4E5C0();

      sub_213DE36FC(v353, &qword_27C8FBB48, &qword_213F617D8);
      v191 = &qword_27C8FBB50;
      v192 = &qword_213F617E0;
      sub_213DE3164(v205, v676, &qword_27C8FBB50, &qword_213F617E0);
LABEL_46:
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      v417 = v677;
      sub_213F4DBA0();
      v418 = &qword_27C8FBAE8;
      v419 = &qword_213F61778;
      sub_213DE3164(v417, v711, &qword_27C8FBAE8, &qword_213F61778);
LABEL_47:
      swift_storeEnumTagMultiPayload();
      sub_213EF8810();
      sub_213EF8B20();
      v214 = v712;
      sub_213F4DBA0();
      sub_213DE36FC(v417, v418, v419);
      v215 = &qword_27C8FBB30;
      v216 = &qword_213F617C0;
      sub_213DE3164(v214, v749, &qword_27C8FBB30, &qword_213F617C0);
      goto LABEL_48;
    }

    v420 = v754;
    if (v148 == 2 && !v331)
    {
      v421 = swift_getKeyPath();
      v422 = v665;
      *v665 = v421;
      *(v422 + 8) = 0;
      *(v422 + 16) = 0;
      v423 = v678;
      v424 = *(v678 + 20);
      *(v422 + v424) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v425 = (v422 + *(v423 + 24));
      *v425 = 7235952;
      v425[1] = 0xE300000000000000;
      v426 = v422 + *(v423 + 28);
      *v426 = xmmword_213F613A0;
      *(v426 + 16) = 4;
      LOBYTE(v424) = sub_213F4E0A0();
      v427 = v666;
      sub_213DBBD08(v666);
      v428 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v429 = *(v330 + 1);
      v430 = v428;
      v431 = v757;
      v429(v430, v757);
      v429(v427, v431);
      sub_213F4CDA0();
      v433 = v432;
      v435 = v434;
      v437 = v436;
      v439 = v438;
      v440 = v664;
      sub_213EF8E7C(v422, v664, type metadata accessor for ButtonTrailingAccessory);
      v441 = v440 + *(v679 + 36);
      *v441 = v424;
      *(v441 + 8) = v433;
      *(v441 + 16) = v435;
      *(v441 + 24) = v437;
      *(v441 + 32) = v439;
      *(v441 + 40) = 0;
      v442 = [objc_opt_self() systemBlueColor];
      v443 = sub_213F4E870();
      v444 = v667;
      sub_213DE2B44(v440, v667, &qword_27C8FBB40, &qword_213F617D0);
      *(v444 + *(v684 + 36)) = v443;
      v445 = v756;
      sub_213F4F200();
      v446 = v753;
      (*(v753 + 16))(v755, v445, v420);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v447 = qword_281182518;
      sub_213F4CB50();
      v448 = sub_213F4F260();
      v450 = v449;
      (*(v446 + 8))(v445, v420);
      *&v773 = v448;
      *(&v773 + 1) = v450;
      sub_213EF88F4();
      sub_213DBC9EC();
      v205 = v668;
      sub_213F4E5C0();

      sub_213DE36FC(v444, &qword_27C8FBB48, &qword_213F617D8);
      v191 = &qword_27C8FBB50;
      v192 = &qword_213F617E0;
      sub_213DE3164(v205, v676, &qword_27C8FBB50, &qword_213F617E0);
      goto LABEL_46;
    }

    v452 = v755;
    v453 = v684;
    if (v148 == 3 && !v331)
    {
      v454 = swift_getKeyPath();
      v455 = v660;
      *v660 = v454;
      *(v455 + 8) = 0;
      *(v455 + 16) = 0;
      v456 = v678;
      v457 = *(v678 + 20);
      *(v455 + v457) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v458 = (v455 + *(v456 + 24));
      *v458 = 0xD000000000000018;
      v458[1] = 0x8000000213FA5CE0;
      v459 = v455 + *(v456 + 28);
      *v459 = xmmword_213F5CBA0;
      *(v459 + 16) = 4;
      LODWORD(v745) = sub_213F4E0A0();
      v460 = v661;
      sub_213DBBD08(v661);
      v461 = v759;
      sub_213F4D280();
      sub_213F4D270();
      v462 = *(v758 + 1);
      v463 = v461;
      v464 = v757;
      v462(v463, v757);
      v465 = v464;
      v466 = v452;
      v467 = v453;
      v462(v460, v465);
      sub_213F4CDA0();
      v469 = v468;
      v471 = v470;
      v473 = v472;
      v475 = v474;
      v476 = v659;
      sub_213EF8E7C(v455, v659, type metadata accessor for ButtonTrailingAccessory);
      v477 = v476 + *(v679 + 36);
      *v477 = v745;
      *(v477 + 8) = v469;
      *(v477 + 16) = v471;
      *(v477 + 24) = v473;
      *(v477 + 32) = v475;
      *(v477 + 40) = 0;
      v478 = [objc_opt_self() secondaryLabelColor];
      v479 = sub_213F4E870();
      v480 = v662;
      sub_213DE2B44(v476, v662, &qword_27C8FBB40, &qword_213F617D0);
      *(v480 + *(v467 + 36)) = v479;
      v481 = v756;
      sub_213F4F200();
      v482 = v753;
      (*(v753 + 16))(v466, v481, v420);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v483 = qword_281182518;
      sub_213F4CB50();
      v484 = sub_213F4F260();
      v486 = v485;
      (*(v482 + 8))(v756, v420);
      *&v773 = v484;
      *(&v773 + 1) = v486;
      sub_213EF88F4();
      sub_213DBC9EC();
      v205 = v663;
      sub_213F4E5C0();

      sub_213DE36FC(v480, &qword_27C8FBB48, &qword_213F617D8);
      v191 = &qword_27C8FBB50;
      v192 = &qword_213F617E0;
      sub_213DE3164(v205, v701, &qword_27C8FBB50, &qword_213F617E0);
      swift_storeEnumTagMultiPayload();
      sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
      sub_213EF8D14();
      v213 = v702;
      goto LABEL_11;
    }

    if (v148 == 4 && !v331)
    {
      v487 = swift_getKeyPath();
      v488 = v723;
      *v723 = v487;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v489 = type metadata accessor for ActionTrailingAccessory(0);
      v490 = v489[5];
      *(v488 + v490) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v491 = v488 + v489[6];
      *v491 = swift_getKeyPath();
      *(v491 + 8) = 0;
      *(v491 + 16) = 0;
      v492 = v488 + v489[7];
      strcpy(v492, "buildings.3d");
      *(v492 + 13) = 0;
      *(v492 + 14) = -5120;
      v493 = (v488 + v489[8]);
      *v493 = 0;
      v493[1] = 0;
      v494 = v488 + v489[9];
      *v494 = xmmword_213F61390;
      *(v494 + 16) = 4;
      LOBYTE(v491) = sub_213F4E0A0();
      v495 = v759;
      sub_213DBBD08(v759);
      v496 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v497 = *(v758 + 1);
      v498 = v756;
      v499 = v757;
      v497(v496, v757);
      v497(v495, v499);
      sub_213F4CDA0();
      v501 = v500;
      v503 = v502;
      v505 = v504;
      v507 = v506;
      v508 = v488 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v508 = v491;
      *(v508 + 8) = v501;
      *(v508 + 16) = v503;
      *(v508 + 24) = v505;
      *(v508 + 32) = v507;
      *(v508 + 40) = 0;
      LOBYTE(v491) = sub_213F4E0B0();
      sub_213DBBD08(v495);
      sub_213F4D280();
      sub_213F4D270();
      v509 = v496;
      v510 = v755;
      v497(v509, v499);
      v511 = v499;
      v512 = v498;
      v513 = v754;
      v497(v495, v511);
      sub_213F4CDA0();
      v514 = v488 + *(v722 + 36);
      *v514 = v491;
      *(v514 + 8) = v515;
      *(v514 + 16) = v516;
      *(v514 + 24) = v517;
      *(v514 + 32) = v518;
      *(v514 + 40) = 0;
      sub_213F4F200();
      v519 = v753;
      (*(v753 + 16))(v510, v512, v513);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v520 = qword_281182518;
      sub_213F4CB50();
      v521 = sub_213F4F260();
      v523 = v522;
      (*(v519 + 8))(v512, v513);
      *&v773 = v521;
      *(&v773 + 1) = v523;
      sub_213EF8504();
      sub_213DBC9EC();
      v190 = v728;
      sub_213F4E5C0();

      sub_213DE36FC(v488, &qword_27C8FBAA8, &qword_213F61738);
      v191 = &qword_27C8FBAB0;
      v192 = &qword_213F61740;
      sub_213DE3164(v190, v726, &qword_27C8FBAB0, &qword_213F61740);
      goto LABEL_7;
    }

    if (v148 == 5 && !v331)
    {
      v524 = swift_getKeyPath();
      v525 = v723;
      *v723 = v524;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v526 = type metadata accessor for ActionTrailingAccessory(0);
      v527 = v526[5];
      *(v525 + v527) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v528 = v525 + v526[6];
      *v528 = swift_getKeyPath();
      *(v528 + 8) = 0;
      *(v528 + 16) = 0;
      v529 = (v525 + v526[7]);
      *v529 = 0x616C75636F6E6962;
      v529[1] = 0xEF6C6C69662E7372;
      v530 = (v525 + v526[8]);
      *v530 = 0;
      v530[1] = 0;
      v531 = v525 + v526[9];
      *v531 = xmmword_213F61380;
      *(v531 + 16) = 4;
      LOBYTE(v528) = sub_213F4E0A0();
      v532 = v759;
      sub_213DBBD08(v759);
      v533 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v534 = *(v758 + 1);
      v535 = v756;
      v536 = v757;
      v534(v533, v757);
      v534(v532, v536);
      sub_213F4CDA0();
      v538 = v537;
      v540 = v539;
      v542 = v541;
      v544 = v543;
      v545 = v525 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v545 = v528;
      *(v545 + 8) = v538;
      *(v545 + 16) = v540;
      *(v545 + 24) = v542;
      *(v545 + 32) = v544;
      *(v545 + 40) = 0;
      LOBYTE(v528) = sub_213F4E0B0();
      sub_213DBBD08(v532);
      sub_213F4D280();
      sub_213F4D270();
      v546 = v533;
      v547 = v755;
      v534(v546, v536);
      v548 = v536;
      v549 = v535;
      v550 = v754;
      v534(v532, v548);
      sub_213F4CDA0();
      v551 = v525 + *(v722 + 36);
      *v551 = v528;
      *(v551 + 8) = v552;
      *(v551 + 16) = v553;
      *(v551 + 24) = v554;
      *(v551 + 32) = v555;
      *(v551 + 40) = 0;
      sub_213F4F200();
      v556 = v753;
      (*(v753 + 16))(v547, v549, v550);
      if (qword_281182510 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_90;
    }

    if (v148 == 6 && !v331)
    {
      v557 = swift_getKeyPath();
      v525 = v723;
      *v723 = v557;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v558 = type metadata accessor for ActionTrailingAccessory(0);
      v559 = v558[5];
      *(v525 + v559) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v560 = v525 + v558[6];
      *v560 = swift_getKeyPath();
      *(v560 + 8) = 0;
      *(v560 + 16) = 0;
      v561 = (v525 + v558[7]);
      *v561 = 0x69662E656E6F6870;
      v561[1] = 0xEA00000000006C6CLL;
      v562 = (v525 + v558[8]);
      *v562 = 0;
      v562[1] = 0;
      v563 = v525 + v558[9];
      *v563 = xmmword_213F61350;
      *(v563 + 16) = 4;
      LOBYTE(v560) = sub_213F4E0A0();
      v564 = v759;
      sub_213DBBD08(v759);
      v565 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v566 = *(v758 + 1);
      v567 = v756;
      v568 = v757;
      v566(v565, v757);
      v566(v564, v568);
      sub_213F4CDA0();
      v570 = v569;
      v572 = v571;
      v574 = v573;
      v576 = v575;
      v577 = v525 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v577 = v560;
      *(v577 + 8) = v570;
      *(v577 + 16) = v572;
      *(v577 + 24) = v574;
      *(v577 + 32) = v576;
      *(v577 + 40) = 0;
      LOBYTE(v560) = sub_213F4E0B0();
      sub_213DBBD08(v564);
      sub_213F4D280();
      sub_213F4D270();
      v566(v565, v568);
      v578 = v568;
      v549 = v567;
      v566(v564, v578);
      sub_213F4CDA0();
      v579 = v525 + *(v722 + 36);
      *v579 = v560;
      *(v579 + 8) = v580;
      *(v579 + 16) = v581;
      *(v579 + 24) = v582;
      *(v579 + 32) = v583;
      *(v579 + 40) = 0;
      sub_213F4F200();
      v556 = v753;
      v584 = v567;
      v550 = v754;
      (*(v753 + 16))(v755, v584, v754);
      if (qword_281182510 == -1)
      {
LABEL_69:
        v585 = qword_281182518;
        sub_213F4CB50();
        v586 = sub_213F4F260();
        v588 = v587;
        (*(v556 + 8))(v549, v550);
        *&v773 = v586;
        *(&v773 + 1) = v588;
        sub_213EF8504();
        sub_213DBC9EC();
        v190 = v728;
        sub_213F4E5C0();

        sub_213DE36FC(v525, &qword_27C8FBAA8, &qword_213F61738);
        v191 = &qword_27C8FBAB0;
        v192 = &qword_213F61740;
        sub_213DE3164(v190, v726, &qword_27C8FBAB0, &qword_213F61740);
        goto LABEL_26;
      }

LABEL_90:
      swift_once();
      goto LABEL_69;
    }

    if (v148 == 7 && !v331)
    {
      v589 = swift_getKeyPath();
      v525 = v723;
      *v723 = v589;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v590 = type metadata accessor for ActionTrailingAccessory(0);
      v591 = v590[5];
      *(v525 + v591) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      v592 = v525 + v590[6];
      *v592 = swift_getKeyPath();
      *(v592 + 8) = 0;
      *(v592 + 16) = 0;
      v593 = (v525 + v590[7]);
      *v593 = 0x662E697261666173;
      v593[1] = 0xEB000000006C6C69;
      v594 = (v525 + v590[8]);
      *v594 = 0;
      v594[1] = 0;
      v595 = v525 + v590[9];
      *v595 = xmmword_213F61370;
      *(v595 + 16) = 4;
      LOBYTE(v592) = sub_213F4E0A0();
      v596 = v759;
      sub_213DBBD08(v759);
      v597 = v733;
      sub_213F4D280();
      sub_213F4D270();
      v598 = *(v758 + 1);
      v599 = v756;
      v600 = v757;
      v598(v597, v757);
      v598(v596, v600);
      sub_213F4CDA0();
      v602 = v601;
      v604 = v603;
      v606 = v605;
      v608 = v607;
      v609 = v525 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB78, &qword_213F61810) + 36);
      *v609 = v592;
      *(v609 + 8) = v602;
      *(v609 + 16) = v604;
      *(v609 + 24) = v606;
      *(v609 + 32) = v608;
      *(v609 + 40) = 0;
      LOBYTE(v592) = sub_213F4E0B0();
      sub_213DBBD08(v596);
      sub_213F4D280();
      sub_213F4D270();
      v598(v597, v600);
      v610 = v600;
      v549 = v599;
      v598(v596, v610);
      sub_213F4CDA0();
      v611 = v525 + *(v722 + 36);
      *v611 = v592;
      *(v611 + 8) = v612;
      *(v611 + 16) = v613;
      *(v611 + 24) = v614;
      *(v611 + 32) = v615;
      *(v611 + 40) = 0;
      sub_213F4F200();
      v556 = v753;
      v616 = v599;
      v550 = v754;
      (*(v753 + 16))(v755, v616, v754);
      if (qword_281182510 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_90;
    }

    if (v148 != 8 || v331)
    {
      v636 = swift_getKeyPath();
      v782 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
      v637 = swift_allocObject();
      *(v637 + 16) = xmmword_213F51DE0;
      v638 = sub_213F4E0B0();
      *(v637 + 32) = v638;
      v639 = sub_213F4E0A0();
      *(v637 + 33) = v639;
      v640 = sub_213F4E090();
      sub_213F4E090();
      v641 = sub_213F4E090();
      v642 = v754;
      v643 = v755;
      if (v641 != v638)
      {
        v640 = sub_213F4E090();
      }

      sub_213F4E090();
      if (sub_213F4E090() != v639)
      {
        v640 = sub_213F4E090();
      }

      sub_213F4CDA0();
      v783 = 0;
      v766 = v636;
      LOBYTE(v767) = 0;
      *(&v767 + 1) = 0x69662E656E6F6870;
      *&v768 = 0xEA00000000006C6CLL;
      *(&v768 + 1) = 0x4034000000000000;
      v769 = xmmword_213F61350;
      LOBYTE(v770) = 4;
      BYTE8(v770) = v640;
      *&v771 = v644;
      *(&v771 + 1) = v645;
      *&v772[0] = v646;
      *(&v772[0] + 1) = v647;
      LOBYTE(v772[1]) = 0;
      v648 = v756;
      sub_213F4F200();
      v649 = v753;
      (*(v753 + 16))(v643, v648, v642);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v650 = qword_281182518;
      sub_213F4CB50();
      v651 = sub_213F4F260();
      v653 = v652;
      (*(v649 + 8))(v756, v642);
      v780 = v651;
      v781 = v653;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB60, &qword_213F617F0);
      sub_213EF7C8C();
      sub_213DBC9EC();
      v205 = v658;
      sub_213F4E5C0();

      v777 = v770;
      v778 = v771;
      v779[0] = v772[0];
      LOBYTE(v779[1]) = v772[1];
      v773 = v766;
      v774 = v767;
      v775 = v768;
      v776 = v769;
      sub_213DE36FC(&v773, &qword_27C8FBB60, &qword_213F617F0);
      v191 = &qword_27C8FBA30;
      v192 = &qword_213F616C0;
      sub_213DE3164(v205, v690, &qword_27C8FBA30, &qword_213F616C0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB58, &qword_213F617E8);
      sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
      sub_213EF7DB4();
      v287 = v692;
      sub_213F4DBA0();
      v288 = &qword_27C8FBA28;
      v289 = &qword_213F616B8;
      sub_213DE3164(v287, v719, &qword_27C8FBA28, &qword_213F616B8);
      goto LABEL_22;
    }

    v617 = v756;
    v618 = swift_getKeyPath();
    LOBYTE(v773) = 0;
    v619 = [objc_opt_self() systemRedColor];
    v620 = sub_213F4E870();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
    v621 = swift_allocObject();
    *(v621 + 16) = xmmword_213F51DE0;
    v622 = sub_213F4E0B0();
    *(v621 + 32) = v622;
    v623 = sub_213F4E0A0();
    *(v621 + 33) = v623;
    v624 = sub_213F4E090();
    sub_213F4E090();
    v625 = sub_213F4E090();
    v626 = v754;
    if (v625 != v622)
    {
      v624 = sub_213F4E090();
    }

    sub_213F4E090();
    if (sub_213F4E090() != v623)
    {
      v624 = sub_213F4E090();
    }

    sub_213F4CDA0();
    v783 = 0;
    v766 = v618;
    LOBYTE(v767) = 0;
    *(&v767 + 1) = 0x73756E696DLL;
    *&v768 = 0xE500000000000000;
    *(&v768 + 1) = 0x4038000000000000;
    v769 = xmmword_213F61360;
    LOBYTE(v770) = 4;
    *(&v770 + 1) = v620;
    LOBYTE(v771) = v624;
    *(&v771 + 1) = v627;
    *&v772[0] = v628;
    *(&v772[0] + 1) = v629;
    *&v772[1] = v630;
    BYTE8(v772[1]) = 0;
    sub_213F4F200();
    v631 = v753;
    (*(v753 + 16))(v755, v617, v626);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v632 = qword_281182518;
    sub_213F4CB50();
    v633 = sub_213F4F260();
    v635 = v634;
    (*(v631 + 8))(v617, v626);
    v780 = v633;
    v781 = v635;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB68, &qword_213F617F8);
    sub_213EF81D4();
    sub_213DBC9EC();
    v205 = v657;
    sub_213F4E5C0();

    v777 = v770;
    v778 = v771;
    v779[0] = v772[0];
    *(v779 + 9) = *(v772 + 9);
    v773 = v766;
    v774 = v767;
    v775 = v768;
    v776 = v769;
    sub_213DE36FC(&v773, &qword_27C8FBB68, &qword_213F617F8);
    v191 = &qword_27C8FBA38;
    v192 = &qword_213F616C8;
    sub_213DE3164(v205, v694, &qword_27C8FBA38, &qword_213F616C8);
    swift_storeEnumTagMultiPayload();
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    v287 = v695;
LABEL_21:
    sub_213F4DBA0();
    v288 = &qword_27C8FBA50;
    v289 = &qword_213F616E0;
    sub_213DE3164(v287, v719, &qword_27C8FBA50, &qword_213F616E0);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_213EF7E94();
    sub_213EF8318();
    v290 = v721;
    sub_213F4DBA0();
    sub_213DE36FC(v287, v288, v289);
    sub_213DE3164(v290, v743, &qword_27C8FBA58, &qword_213F616E8);
    swift_storeEnumTagMultiPayload();
    sub_213EF83D0();
    sub_213EF866C();
    v291 = v745;
    sub_213F4DBA0();
    sub_213DE36FC(v290, &qword_27C8FBA58, &qword_213F616E8);
    v292 = &qword_27C8FBA90;
    v293 = &qword_213F61720;
    sub_213DE3164(v291, v762, &qword_27C8FBA90, &qword_213F61720);
LABEL_49:
    swift_storeEnumTagMultiPayload();
    sub_213EF86F8();
    sub_213EF8DF0();
    sub_213F4DBA0();
LABEL_50:
    sub_213DE36FC(v291, v292, v293);
    v228 = v205;
    return sub_213DE36FC(v228, v191, v192);
  }

  v217 = v147;
  v218 = v148;

  v219 = sub_213F4E0A0();
  sub_213F4CDA0();
  LOBYTE(v773) = 0;
  v220 = v690;
  *v690 = v218;
  v220[1] = v217;
  *(v220 + 16) = v219;
  v220[3] = v221;
  v220[4] = v222;
  v220[5] = v223;
  v220[6] = v224;
  *(v220 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBB58, &qword_213F617E8);
  sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
  sub_213EF7DB4();
  v225 = v692;
  sub_213F4DBA0();
  sub_213DE3164(v225, v719, &qword_27C8FBA28, &qword_213F616B8);
  swift_storeEnumTagMultiPayload();
  sub_213EF7E94();
  sub_213EF8318();
  v226 = v721;
  sub_213F4DBA0();
  sub_213DE36FC(v225, &qword_27C8FBA28, &qword_213F616B8);
  sub_213DE3164(v226, v743, &qword_27C8FBA58, &qword_213F616E8);
  swift_storeEnumTagMultiPayload();
  sub_213EF83D0();
  sub_213EF866C();
  v227 = v745;
  sub_213F4DBA0();
  sub_213DE36FC(v226, &qword_27C8FBA58, &qword_213F616E8);
  v191 = &qword_27C8FBA90;
  v192 = &qword_213F61720;
  sub_213DE3164(v227, v762, &qword_27C8FBA90, &qword_213F61720);
  swift_storeEnumTagMultiPayload();
  sub_213EF86F8();
  sub_213EF8DF0();
  sub_213F4DBA0();
  v228 = v227;
  return sub_213DE36FC(v228, v191, v192);
}

double sub_213EF7BD0@<D0>(uint64_t a1@<X8>)
{
  sub_213EF2B84(a1);
  sub_213F4EF00();
  sub_213F4D0C0();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBA18, &qword_213F616A8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

unint64_t sub_213EF7C8C()
{
  result = qword_2811833A8;
  if (!qword_2811833A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB60, &qword_213F617F0);
    sub_213EF7D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833A8);
  }

  return result;
}

unint64_t sub_213EF7D18()
{
  result = qword_281183BC0[0];
  if (!qword_281183BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183BC0);
  }

  return result;
}

uint64_t sub_213EF7D6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EF7DB4()
{
  result = qword_2811833B8;
  if (!qword_2811833B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB58, &qword_213F617E8);
    sub_213EF7E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833B8);
  }

  return result;
}

unint64_t sub_213EF7E40()
{
  result = qword_281183D10[0];
  if (!qword_281183D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183D10);
  }

  return result;
}

unint64_t sub_213EF7E94()
{
  result = qword_281182AF0;
  if (!qword_281182AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA50, &qword_213F616E0);
    sub_213EF7F4C();
    sub_213EF8120(&qword_281182EE8, &qword_27C8FBA38, &qword_213F616C8, sub_213EF81D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AF0);
  }

  return result;
}

unint64_t sub_213EF7F4C()
{
  result = qword_281182EF8;
  if (!qword_281182EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA70, &qword_213F61700);
    sub_213EF7FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EF8);
  }

  return result;
}

unint64_t sub_213EF7FD8()
{
  result = qword_2811830C8;
  if (!qword_2811830C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA68, &qword_213F616F8);
    sub_213EF8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830C8);
  }

  return result;
}

unint64_t sub_213EF8064()
{
  result = qword_2811833C8;
  if (!qword_2811833C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA60, &qword_213F616F0);
    sub_213EF7D6C(qword_2811842F8, type metadata accessor for SelectedTrailingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833C8);
  }

  return result;
}

uint64_t sub_213EF8120(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213EF7D6C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213EF81D4()
{
  result = qword_2811830B0;
  if (!qword_2811830B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB68, &qword_213F617F8);
    sub_213EF8260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830B0);
  }

  return result;
}

unint64_t sub_213EF8260()
{
  result = qword_2811833A0;
  if (!qword_2811833A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB70, &unk_213F61800);
    sub_213EF7D18();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833A0);
  }

  return result;
}

unint64_t sub_213EF8318()
{
  result = qword_281182B20;
  if (!qword_281182B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA28, &qword_213F616B8);
    sub_213EF8120(&qword_2811830B8, &qword_27C8FBA30, &qword_213F616C0, sub_213EF7C8C);
    sub_213EF7DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B20);
  }

  return result;
}

unint64_t sub_213EF83D0()
{
  result = qword_281182A38;
  if (!qword_281182A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA88, &qword_213F61718);
    sub_213EF8454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A38);
  }

  return result;
}

unint64_t sub_213EF8454()
{
  result = qword_281182B10;
  if (!qword_281182B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAA0, &qword_213F61730);
    sub_213EF8120(&qword_281182F18, &qword_27C8FBAB0, &qword_213F61740, sub_213EF8504);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B10);
  }

  return result;
}

unint64_t sub_213EF8504()
{
  result = qword_2811830E8;
  if (!qword_2811830E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAA8, &qword_213F61738);
    sub_213EF8590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830E8);
  }

  return result;
}

unint64_t sub_213EF8590()
{
  result = qword_2811833F0;
  if (!qword_2811833F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB78, &qword_213F61810);
    sub_213EF7D6C(qword_281184D80, type metadata accessor for ActionTrailingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833F0);
  }

  return result;
}

unint64_t sub_213EF866C()
{
  result = qword_281182A20;
  if (!qword_281182A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA58, &qword_213F616E8);
    sub_213EF7E94();
    sub_213EF8318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A20);
  }

  return result;
}

unint64_t sub_213EF86F8()
{
  result = qword_2811829D0;
  if (!qword_2811829D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB38, &qword_213F617C8);
    sub_213EF8784();
    sub_213EF8BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829D0);
  }

  return result;
}

unint64_t sub_213EF8784()
{
  result = qword_281182A30;
  if (!qword_281182A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB30, &qword_213F617C0);
    sub_213EF8810();
    sub_213EF8B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A30);
  }

  return result;
}

unint64_t sub_213EF8810()
{
  result = qword_281182B08;
  if (!qword_281182B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB28, &qword_213F617B8);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    sub_213EF8120(&qword_2811830F0, &qword_27C8FBB00, &qword_213F61790, sub_213EF8A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B08);
  }

  return result;
}

unint64_t sub_213EF88F4()
{
  result = qword_2811830E0;
  if (!qword_2811830E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB48, &qword_213F617D8);
    sub_213EF89AC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830E0);
  }

  return result;
}

unint64_t sub_213EF89AC()
{
  result = qword_2811833E8;
  if (!qword_2811833E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB40, &qword_213F617D0);
    sub_213EF7D6C(qword_281184CD8, type metadata accessor for ButtonTrailingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833E8);
  }

  return result;
}

unint64_t sub_213EF8A68()
{
  result = qword_2811833F8;
  if (!qword_2811833F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAF8, &qword_213F61788);
    sub_213DE3AE4(qword_2811852A0, &qword_27C8FBAF0, &qword_213F61780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833F8);
  }

  return result;
}

unint64_t sub_213EF8B20()
{
  result = qword_281182AF8;
  if (!qword_281182AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAE8, &qword_213F61778);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AF8);
  }

  return result;
}

unint64_t sub_213EF8BD0()
{
  result = qword_281182A28;
  if (!qword_281182A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAD8, &qword_213F61768);
    sub_213EF8C5C();
    sub_213EF8454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A28);
  }

  return result;
}

unint64_t sub_213EF8C5C()
{
  result = qword_281182B00;
  if (!qword_281182B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAD0, &qword_213F61760);
    sub_213EF8120(&qword_281182F10, &qword_27C8FBB50, &qword_213F617E0, sub_213EF88F4);
    sub_213EF8D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B00);
  }

  return result;
}

unint64_t sub_213EF8D14()
{
  result = qword_2811833D0;
  if (!qword_2811833D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBAB8, &qword_213F61748);
    sub_213EF7D6C(&qword_281184600, type metadata accessor for OfflineTrailingAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811833D0);
  }

  return result;
}

unint64_t sub_213EF8DF0()
{
  result = qword_2811829D8;
  if (!qword_2811829D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA90, &qword_213F61720);
    sub_213EF83D0();
    sub_213EF866C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829D8);
  }

  return result;
}

uint64_t sub_213EF8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213EF8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 3u)
  {
    if (a6 == 4 || a6 == 5)
    {

      goto LABEL_6;
    }
  }

  else if (a6)
  {
    if (a6 == 3)
    {

LABEL_6:
    }
  }

  else
  {

    sub_213DD74C4(a2);

    sub_213DD74C4(a4);
  }
}

uint64_t sub_213EF8F94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_213EF900C()
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_213EF950C(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EF9108(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213EF9184()
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_213EF955C(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213EF950C(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213EF92F0()
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EF93C4()
{
  sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213EF950C(319, &qword_2811824F0, &type metadata for CellAction, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_213EF955C(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EF950C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213EF955C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_213EF95E8()
{
  sub_213EF955C(319, &qword_2811834F0, &qword_27C8FB0B0, &unk_213F5EFA0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213EF9108(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213EF96CC()
{
  result = qword_281183370;
  if (!qword_281183370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBA18, &qword_213F616A8);
    sub_213EF9758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183370);
  }

  return result;
}

unint64_t sub_213EF9758()
{
  result = qword_2811829B8;
  if (!qword_2811829B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB80, &qword_213F61AF8);
    sub_213EF86F8();
    sub_213EF8DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829B8);
  }

  return result;
}

unint64_t sub_213EF9918()
{
  result = qword_27C8FBBA0;
  if (!qword_27C8FBBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB98, &qword_213F61D40);
    sub_213EF99D0();
    sub_213DE3AE4(&qword_281182BE8, &qword_27C8FB618, &qword_213F61D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBBA0);
  }

  return result;
}

unint64_t sub_213EF99D0()
{
  result = qword_281182E10;
  if (!qword_281182E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
    sub_213DE2C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E10);
  }

  return result;
}

unint64_t sub_213EF9A5C()
{
  result = qword_281183010;
  if (!qword_281183010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB90, &qword_213F61D38);
    sub_213EF9B14();
    sub_213DE3AE4(&qword_2811828C8, &qword_27C8FBBB8, &qword_213F61D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183010);
  }

  return result;
}

unint64_t sub_213EF9B14()
{
  result = qword_2811832D0;
  if (!qword_2811832D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBB0, &qword_213F61D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBB88, &qword_213F61D30);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182748, &qword_27C8FBB88, &qword_213F61D30);
    sub_213EF7D6C(&qword_281182998, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832D0);
  }

  return result;
}

unint64_t sub_213EF9C8C()
{
  result = qword_281182CA0;
  if (!qword_281182CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBE8, &qword_213F61E08);
    sub_213EF9D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CA0);
  }

  return result;
}

unint64_t sub_213EF9D18()
{
  result = qword_281182CF0;
  if (!qword_281182CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBE0, &qword_213F61E00);
    sub_213EF9DD0();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CF0);
  }

  return result;
}

unint64_t sub_213EF9DD0()
{
  result = qword_281182D50;
  if (!qword_281182D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBD8, &qword_213F61DF8);
    sub_213EF9E88();
    sub_213DE3AE4(&qword_281182870, &qword_27C8F8F28, &qword_213F61E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D50);
  }

  return result;
}

unint64_t sub_213EF9E88()
{
  result = qword_281182E18;
  if (!qword_281182E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBD0, &qword_213F61DF0);
    sub_213DE2C14();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E18);
  }

  return result;
}

unint64_t sub_213EF9F40()
{
  result = qword_281182C88;
  if (!qword_281182C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBC0, &qword_213F61DE0);
    sub_213EF9C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C88);
  }

  return result;
}

unint64_t sub_213EFA000()
{
  result = qword_27C8FBC10;
  if (!qword_27C8FBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC08, &qword_213F61E68);
    sub_213EFA0B8();
    sub_213DE3AE4(&qword_27C8FBC68, &qword_27C8FBC70, &qword_213F61E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC10);
  }

  return result;
}

unint64_t sub_213EFA0B8()
{
  result = qword_27C8FBC18;
  if (!qword_27C8FBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC20, &qword_213F61E70);
    sub_213EFA170();
    sub_213DE3AE4(&qword_27C8FBC58, &qword_27C8FBC60, &qword_213F61E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC18);
  }

  return result;
}

unint64_t sub_213EFA170()
{
  result = qword_27C8FBC28;
  if (!qword_27C8FBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC30, &qword_213F61E78);
    sub_213EFA1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC28);
  }

  return result;
}

unint64_t sub_213EFA1FC()
{
  result = qword_27C8FBC38;
  if (!qword_27C8FBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC40, &qword_213F61E80);
    sub_213DE3AE4(&qword_27C8FBC48, &qword_27C8FBC50, &qword_213F61E88);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBC38);
  }

  return result;
}

unint64_t sub_213EFA2E0()
{
  result = qword_2811832B0;
  if (!qword_2811832B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF8, &qword_213F61E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF0, &qword_213F61E50);
    sub_213DE3AE4(&qword_281182740, &qword_27C8FBBF0, &qword_213F61E50);
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_2811828D8, &qword_27C8F93E8, &qword_213F61EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832B0);
  }

  return result;
}

double sub_213EFA41C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_213EFA438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EFA4CC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_213EFA550()
{
  result = qword_27C8FBCB0;
  if (!qword_27C8FBCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCA8, &qword_213F61F10);
    sub_213EFA5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCB0);
  }

  return result;
}

unint64_t sub_213EFA5DC()
{
  result = qword_27C8FBCB8;
  if (!qword_27C8FBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCC0, &qword_213F61F18);
    sub_213EFA694();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCB8);
  }

  return result;
}

unint64_t sub_213EFA694()
{
  result = qword_27C8FBCC8;
  if (!qword_27C8FBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCD0, &qword_213F61F20);
    sub_213DE3AE4(&qword_281182850, &qword_27C8F76B0, &qword_213F518C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBCC8);
  }

  return result;
}

unint64_t sub_213EFA74C()
{
  result = qword_281183018;
  if (!qword_281183018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCA0, &qword_213F61F08);
    sub_213EFA804();
    sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183018);
  }

  return result;
}

unint64_t sub_213EFA804()
{
  result = qword_2811832D8;
  if (!qword_2811832D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCD8, &qword_213F61F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBC98, &qword_213F61F00);
    sub_213F4D450();
    sub_213DE3AE4(&qword_281182750, &qword_27C8FBC98, &qword_213F61F00);
    sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832D8);
  }

  return result;
}

uint64_t sub_213EFA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MoreTrailingAccessory() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_213EEB0F4(a1, v8, v5, v6, a2);
}

uint64_t objectdestroy_116Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MoreTrailingAccessory();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v3[9]);

  v10 = (v6 + v3[10]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v6 + v3[11]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return swift_deallocObject();
}

uint64_t sub_213EFAB6C(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for MoreTrailingAccessory();
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = v1 + *(result + 48) + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  if (*v8)
  {
    v9 = *(v8 + 8);
    return (*v8)(a1 & 1);
  }

  return result;
}

double sub_213EFABF8@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_213EED5D0(a1);
}

uint64_t sub_213EFAC04(uint64_t a1)
{
  v2 = sub_213F4D460();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MoreTrailingAccessory();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v3[9]);

  v10 = (v6 + v3[10]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v6 + v3[11]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return swift_deallocObject();
}

uint64_t sub_213EFAE08(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for MoreTrailingAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v7, v8, v4, v5);
}

unint64_t sub_213EFAEE4()
{
  result = qword_281182AD0;
  if (!qword_281182AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD40, &qword_213F61FC8);
    sub_213EF9C8C();
    sub_213EF9F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AD0);
  }

  return result;
}

unint64_t sub_213EFAF70()
{
  result = qword_2811832A8;
  if (!qword_2811832A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD48, &qword_213F61FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBF8, &qword_213F61E58);
    sub_213F4DBC0();
    sub_213EFA2E0();
    sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_213EF7D6C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832A8);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverE0Rd__lFQOyAA15ModifiedContentVyAHyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAHyAHyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAN5ScaleOGGAA12_FrameLayoutVGAA011_BackgroundT0VyAHyAA6CircleVAA011_ForegroundmT0VyAA5ColorVGGGGG_AA010BorderlessoM0VQo_AA01_k5ShapeT0VyAA9RectangleVGGAA01_k9ShapeKindT0VyA4_GG_AA09HighlightiE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_213F4DBC0();
  a4();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_213EFB16C()
{
  result = qword_281182DD0;
  if (!qword_281182DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCF8, &qword_213F61F80);
    sub_213EFB1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DD0);
  }

  return result;
}

unint64_t sub_213EFB1F8()
{
  result = qword_281182F38;
  if (!qword_281182F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCF0, &qword_213F61F78);
    sub_213EFB284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F38);
  }

  return result;
}

unint64_t sub_213EFB284()
{
  result = qword_281183158;
  if (!qword_281183158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBCE8, &qword_213F61F70);
    sub_213DE3AE4(&qword_281182658, &qword_27C8FBD50, &qword_213F61FD8);
    sub_213DE3AE4(&qword_281182C38, &qword_27C8FBD58, &qword_213F61FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183158);
  }

  return result;
}

uint64_t View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)()
{
  sub_213F4EEE0();
  type metadata accessor for Platter();
  sub_213EFC648(qword_281183890, type metadata accessor for Platter);
  return sub_213F4E350();
}

uint64_t sub_213EFB448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for Platter();
  sub_213DE3164(v1 + *(v12 + 28), v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213EFB650@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for Platter();
  sub_213DE3164(v1 + *(v12 + 32), v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t Platter.init(isCarPlay:isHighlighted:isFocused:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Platter();
  v9 = *(v8 + 28);
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 32);
  *&a4[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_213EFB91C()
{
  v1 = sub_213F4CEA0();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  if (*(v0 + 2) == 1)
  {
    v12 = [objc_opt_self() _carSystemFocusColor];

    return sub_213F4E870();
  }

  else
  {
    v14 = (v9 + 104);
    v15 = (v9 + 8);
    if (*(v0 + 1) == 1)
    {
      sub_213EFB448(&v23 - v10);
      (*v14)(v8, *MEMORY[0x277CDF3C0], v1);
      v16 = sub_213F4CE90();
      v17 = *v15;
      (*v15)(v8, v1);
      if (v16)
      {
        v24 = sub_213F4E8F0();
        sub_213ECDD7C();
        sub_213F4E950();
        v18 = sub_213F4E900();
      }

      else
      {
        v22 = [objc_opt_self() systemFillColor];
        v18 = sub_213F4E870();
      }

      v21 = v11;
    }

    else
    {
      sub_213EFB448(v5);
      (*v14)(v8, *MEMORY[0x277CDF3C0], v1);
      v19 = sub_213F4CE90();
      v17 = *v15;
      (*v15)(v8, v1);
      v20 = sub_213F4E8F0();
      v18 = v20;
      if (v19)
      {
        v24 = v20;
        sub_213ECDD7C();
        sub_213F4E950();
        v18 = sub_213F4E900();
      }

      v21 = v5;
    }

    v17(v21, v1);
    return v18;
  }
}

uint64_t sub_213EFBC00@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDB0, &qword_213F620D8);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v4 = &v40 - v3;
  v41 = sub_213F4D290();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v41);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_213F4D470();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD80, &qword_213F62058);
  v19 = *(*(v42 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v42);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v25 = (v5 + 8);
  if (*(v1 + 1) == 1)
  {
    sub_213EFB650(v14);
    sub_213F4D280();
    v26 = sub_213F4D270();
    v27 = *v25;
    v28 = v12;
    v29 = v41;
    (*v25)(v28, v41);
    v27(v14, v29);
    if (v26)
    {
      v30 = 14.0;
    }

    else
    {
      v30 = 26.0;
    }

    v31 = *(v15 + 20);
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_213F4D950();
    (*(*(v33 - 8) + 104))(v18 + v31, v32, v33);
    *v18 = v30;
    v18[1] = v30;
    sub_213DEEF8C(v18, v22);
    sub_213EFCA50(v22, v24);
    sub_213DE3164(v24, v4, &qword_27C8FBD80, &qword_213F62058);
    swift_storeEnumTagMultiPayload();
    sub_213EFC71C();
    sub_213EFC804();
    sub_213F4DBA0();
    return sub_213DE36FC(v24, &qword_27C8FBD80, &qword_213F62058);
  }

  else
  {
    sub_213EFB650(v9);
    sub_213F4D280();
    v35 = sub_213F4D270();
    v36 = *v25;
    v37 = v41;
    (*v25)(v12, v41);
    v36(v9, v37);
    if (v35)
    {
      v38 = 14.0;
    }

    else
    {
      v38 = 26.0;
    }

    v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v39 = v47;
    *v4 = v46;
    *(v4 + 1) = v39;
    *(v4 + 2) = v38;
    *(v4 + 3) = v38;
    *(v4 + 4) = v38;
    *(v4 + 5) = v38;
    swift_storeEnumTagMultiPayload();
    sub_213EFC71C();
    sub_213EFC804();
    return sub_213F4DBA0();
  }
}

uint64_t Platter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD60, &qword_213F62048);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v5 = v34 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD68, &qword_213F62050);
  v6 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v37 = v34 - v7;
  v8 = sub_213F4D290();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = sub_213F4D470();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  v20 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v22 = v34 - v21;
  if (*v1 == 1)
  {
    sub_213EFB650(v15);
    sub_213F4D280();
    v23 = sub_213F4D270();
    v34[1] = a1;
    v24 = *(v9 + 8);
    v24(v13, v8);
    v24(v15, v8);
    if (v23)
    {
      v25 = 14.0;
    }

    else
    {
      v25 = 26.0;
    }

    v26 = *(v16 + 20);
    v27 = *MEMORY[0x277CE0118];
    v28 = sub_213F4D950();
    (*(*(v28 - 8) + 104))(v19 + v26, v27, v28);
    *v19 = v25;
    v19[1] = v25;
    v29 = sub_213EFB91C();
    sub_213DEEF8C(v19, v22);
    *&v22[*(v35 + 36)] = v29;
    v30 = &qword_27C8F7D90;
    v31 = &qword_213F61EB0;
    sub_213DE3164(v22, v37, &qword_27C8F7D90, &qword_213F61EB0);
    swift_storeEnumTagMultiPayload();
    sub_213EFC560();
    sub_213EFC690();
    sub_213F4DBA0();
    v32 = v22;
  }

  else
  {
    sub_213EFBC00(v5);
    v30 = &qword_27C8FBD60;
    v31 = &qword_213F62048;
    sub_213DE3164(v5, v37, &qword_27C8FBD60, &qword_213F62048);
    swift_storeEnumTagMultiPayload();
    sub_213EFC560();
    sub_213EFC690();
    sub_213F4DBA0();
    v32 = v5;
  }

  return sub_213DE36FC(v32, v30, v31);
}

uint64_t sub_213EFC440@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Platter();
  v9 = *(v8 + 28);
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 32);
  *&a4[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t type metadata accessor for Platter()
{
  result = qword_281183880;
  if (!qword_281183880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213EFC560()
{
  result = qword_281183358;
  if (!qword_281183358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7D90, &qword_213F61EB0);
    sub_213EFC648(&qword_281182C68, MEMORY[0x277CDFC08]);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183358);
  }

  return result;
}

uint64_t sub_213EFC648(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EFC690()
{
  result = qword_27C8FBD70;
  if (!qword_27C8FBD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD60, &qword_213F62048);
    sub_213EFC71C();
    sub_213EFC804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD70);
  }

  return result;
}

unint64_t sub_213EFC71C()
{
  result = qword_27C8FBD78;
  if (!qword_27C8FBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBD80, &qword_213F62058);
    sub_213EFC648(&qword_281182C68, MEMORY[0x277CDFC08]);
    sub_213DE3AE4(&qword_27C8FBD88, &qword_27C8FBD90, &qword_213F62060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD78);
  }

  return result;
}

unint64_t sub_213EFC804()
{
  result = qword_27C8FBD98;
  if (!qword_27C8FBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBD98);
  }

  return result;
}

void sub_213EFC89C()
{
  sub_213EFC970(319, &qword_281183528, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_213EFC970(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213EFC970(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213EFC9C4()
{
  result = qword_27C8FBDA0;
  if (!qword_27C8FBDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDA8, &qword_213F620D0);
    sub_213EFC560();
    sub_213EFC690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBDA0);
  }

  return result;
}

uint64_t sub_213EFCA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBD80, &qword_213F62058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudioPickerViewModel.init(options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for AudioPickerViewModel(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

int *AudioPickerViewModel.AudioOption.init(name:symbol:axID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t static AudioPickerViewModel.AudioOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AudioPickerViewModel.AudioOption(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_213F4F830();
}

uint64_t sub_213EFCC28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
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

uint64_t sub_213EFCE28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AudioPickerView(0);
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D3B0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213EFD030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_213F4F830();
  }
}

double AudioPickerView.init(model:currentAudioOption:audioTypeChangeHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for AudioPickerView(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + v10[9]);
  sub_213F4EA90();
  *v12 = v18;
  v13 = a5 + v10[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDB8, &unk_213F62160);
  sub_213F4EA90();
  *v13 = v18;
  v13[8] = BYTE8(v18);
  *(v13 + 2) = v19;
  v14 = a5 + v10[11];
  sub_213F4EA90();
  *v14 = v18;
  *(v14 + 1) = *(&v18 + 1);
  *(a5 + v10[12]) = 0x400C000000000000;
  sub_213F01974(a1, a5 + v10[6], type metadata accessor for AudioPickerViewModel);
  v15 = (a5 + v10[7]);
  *v15 = a3;
  v15[1] = a4;

  sub_213F00F80(a2, a1);
  v16 = v10[8];
  sub_213F4EA90();

  sub_213F01384(a2, type metadata accessor for AudioPickerViewModel.AudioOption);
  sub_213F01384(a1, type metadata accessor for AudioPickerViewModel);
  result = *&v18;
  *(a5 + v16) = v18;
  return result;
}

uint64_t sub_213EFD2B0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioPickerView(0);
  v10 = (v2 + v9[8]);
  v12 = v10[1];
  v20 = *v10;
  v11 = v20;
  v21 = v12;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAB0();
  v13 = v2 + v9[6];
  v14 = *(v13 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v20 = v11;
  v21 = v12;
  result = sub_213F4EAA0();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(v14 + 16))
  {
    sub_213F01974(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v8, type metadata accessor for AudioPickerViewModel.AudioOption);
    v16 = v2 + v9[7];
    v17 = *(v16 + 8);
    (*v16)(v8);
    return sub_213F01384(v8, type metadata accessor for AudioPickerViewModel.AudioOption);
  }

  __break(1u);
  return result;
}

uint64_t AudioPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDC0, &qword_213F62170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  *v10 = sub_213F4DA40();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDC8, &qword_213F62178);
  sub_213EFD708(v1, &v10[*(v11 + 44)]);
  v12 = *MEMORY[0x277CDFA00];
  v13 = sub_213F4D390();
  (*(*(v13 - 8) + 104))(v6, v12, v13);
  sub_213F02440(&qword_281183488, MEMORY[0x277CDFA28]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213DE3AE4(&qword_27C8FBDD0, &qword_27C8FBDC0, &qword_213F62170);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    sub_213F4E570();
    sub_213DE36FC(v6, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v10, &qword_27C8FBDC0, &qword_213F62170);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBDD8, &qword_213F62180);
    v15 = a1 + *(result + 36);
    *v15 = xmmword_213F620E0;
    *(v15 + 16) = 16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213EFD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE30, &qword_213F62248);
  v4 = *(v3 - 8);
  v83 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v10 = type metadata accessor for AudioPickerView(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = v14;
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE38, &qword_213F62250);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v82 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v75 = sub_213F4EEE0();
  v74 = v23;
  v81 = type metadata accessor for AudioPickerView;
  sub_213F01974(a1, v15, type metadata accessor for AudioPickerView);
  v79 = *(v12 + 80);
  v24 = (v79 + 16) & ~v79;
  v77 = v24;
  v25 = swift_allocObject();
  v78 = type metadata accessor for AudioPickerView;
  sub_213F01BB8(v15, v25 + v24, type metadata accessor for AudioPickerView);
  v73 = sub_213F4E0B0();
  sub_213F4CDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v91 = 0;
  v72 = sub_213F4E040();
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v88) = 0;
  v42 = sub_213F4EEE0();
  v44 = v43;
  v45 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE40, &unk_213F62258) + 36)];
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_213F4D950();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v48 = [objc_opt_self() tertiarySystemFillColor];
  v49 = sub_213F4E870();
  *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0) + 36)] = v49;
  v50 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE48, &qword_213F62268) + 36)];
  *v50 = v42;
  v50[1] = v44;
  v51 = v74;
  *v22 = v75;
  *(v22 + 1) = v51;
  *(v22 + 2) = sub_213F019DC;
  *(v22 + 3) = v25;
  v22[32] = v73;
  *(v22 + 9) = *&v94[3];
  *(v22 + 33) = *v94;
  *(v22 + 5) = v27;
  *(v22 + 6) = v29;
  *(v22 + 7) = v31;
  *(v22 + 8) = v33;
  v22[72] = 0;
  *(v22 + 19) = *&v93[3];
  *(v22 + 73) = *v93;
  v22[80] = v72;
  *(v22 + 21) = *&v92[3];
  *(v22 + 81) = *v92;
  *(v22 + 11) = v35;
  *(v22 + 12) = v37;
  *(v22 + 13) = v39;
  *(v22 + 14) = v41;
  v22[120] = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  v52 = &v22[*(v17 + 44)];
  v53 = v89;
  *v52 = v88;
  *(v52 + 1) = v53;
  *(v52 + 2) = v90;
  v54 = sub_213F4D890();
  v55 = v76;
  v56 = *(v76 + *(v11 + 56));
  *v9 = v54;
  *(v9 + 1) = v56;
  v9[16] = 0;
  LODWORD(v45) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE50, &unk_213F62270) + 44);
  v57 = v55 + *(v11 + 32);
  v58 = *(*(v57 + *(type metadata accessor for AudioPickerViewModel(0) + 20)) + 16);
  v86 = 0;
  v87 = v58;
  swift_getKeyPath();
  sub_213F01974(v55, v15, v81);
  v59 = v77;
  v60 = swift_allocObject();
  sub_213F01BB8(v15, v60 + v59, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE58, &qword_213F622A0);
  sub_213E800BC();
  sub_213F01CFC(&qword_27C8FBE60, &qword_27C8FBE58, &qword_213F622A0, sub_213F01A74);
  sub_213F4ECC0();
  LOBYTE(v57) = sub_213F4E040();
  sub_213F4CDA0();
  v61 = &v9[*(v83 + 44)];
  *v61 = v57;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  v66 = v82;
  sub_213DD2C48(v22, v82);
  v67 = v84;
  sub_213DE3164(v9, v84, &qword_27C8FBE30, &qword_213F62248);
  v68 = v85;
  sub_213DD2C48(v66, v85);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE98, &qword_213F622C0);
  sub_213DE3164(v67, v68 + *(v69 + 48), &qword_27C8FBE30, &qword_213F62248);
  sub_213DE36FC(v9, &qword_27C8FBE30, &qword_213F62248);
  sub_213DE36FC(v22, &qword_27C8FBE38, &qword_213F62250);
  sub_213DE36FC(v67, &qword_27C8FBE30, &qword_213F62248);
  return sub_213DE36FC(v66, &qword_27C8FBE38, &qword_213F62250);
}

uint64_t sub_213EFDDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v200 = a1;
  v195 = a3;
  v184 = sub_213F4D160();
  v181 = *(v184 - 8);
  v4 = *(v181 + 64);
  MEMORY[0x28223BE20](v184);
  v177 = v5;
  v178 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_213F4DBD0();
  v6 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_213F4CEE0();
  v183 = *(v185 - 8);
  v8 = *(v183 + 64);
  MEMORY[0x28223BE20](v185);
  v179 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA8, &qword_213F62330);
  v188 = *(v190 - 8);
  v10 = *(v188 + 64);
  MEMORY[0x28223BE20](v190);
  v186 = &v154 - v11;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEB0, &qword_213F62338);
  v193 = *(v194 - 8);
  v12 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v191 = &v154 - v13;
  v170 = type metadata accessor for AudioPickerView(0);
  v172 = *(v170 - 1);
  v14 = *(v172 + 64);
  MEMORY[0x28223BE20](v170);
  v171 = v15;
  v175 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEB8, &qword_213F62340);
  v16 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v197 = (&v154 - v17);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEC0, &qword_213F62348);
  v189 = *(v192 - 8);
  v18 = *(v189 + 64);
  v19 = MEMORY[0x28223BE20](v192);
  v187 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v182 = &v154 - v21;
  v22 = sub_213F4CEA0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v154 - v28;
  v30 = sub_213F4EC90();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v159 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v154 - v34;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v36 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v158 = &v154 - v37;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A30, &qword_213F62350);
  v38 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v160 = &v154 - v39;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEC8, &qword_213F62358);
  v40 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v162 = &v154 - v41;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBED0, &qword_213F62360);
  v42 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v164 = &v154 - v43;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBED8, &qword_213F62368);
  v44 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  KeyPath = &v154 - v45;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEE0, &qword_213F62370);
  v46 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v169 = &v154 - v47;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEE8, &qword_213F62378);
  v48 = *(*(v168 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v168);
  v173 = &v154 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v165 = &v154 - v52;
  MEMORY[0x28223BE20](v51);
  v199 = &v154 - v53;
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_213F4D950();
  v56 = *(*(v55 - 8) + 104);
  v57 = v35;
  v155 = v54;
  v154 = v56;
  v56(v35, v54, v55);
  v58 = a2;
  sub_213EFCC28(v29);
  (*(v23 + 104))(v27, *MEMORY[0x277CDF3C0], v22);
  LOBYTE(a2) = sub_213F4CE90();
  v59 = *(v23 + 8);
  v59(v27, v22);
  v59(v29, v22);
  if (a2)
  {
    v60 = [objc_opt_self() systemFillColor];
    v61 = sub_213F4E870();
  }

  else
  {
    v61 = sub_213F4E8F0();
  }

  v62 = v61;
  v63 = v158;
  sub_213F01BB8(v57, v158, MEMORY[0x277CE1260]);
  *(v63 + *(v196 + 36)) = v62;
  sub_213F4D140();
  v65 = v64;
  v66 = v170;
  v67 = v58 + *(v170 + 6);
  v198 = v58;
  v196 = *(v67 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v68 = *(v58 + v66[12]);
  v69 = (v65 - (*(v196 + 16) + -1.0) * v68) / *(v196 + 16);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v70 = v160;
  sub_213DE2B44(v63, v160, &qword_27C8F7A28, &qword_213F529B0);
  v71 = (v70 + *(v157 + 36));
  v72 = v205;
  *v71 = v204;
  v71[1] = v72;
  v71[2] = v206;
  v158 = sub_213F4EEE0();
  v74 = v73;
  v75 = v162;
  v76 = &v162[*(v156 + 36)];
  v77 = v159;
  v154(v159, v155, v55);
  v78 = sub_213F4DD90();
  sub_213F4CF60();
  sub_213F01974(v77, v76, MEMORY[0x277CE1260]);
  v79 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEF0, &qword_213F62380) + 36);
  v80 = v208;
  *v79 = v207;
  *(v79 + 16) = v80;
  *(v79 + 32) = v209;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEF8, &qword_213F62388);
  v82 = (v76 + *(v81 + 52));
  *v82 = v78;
  v82[1] = 1025758986;
  *(v76 + *(v81 + 56)) = 256;
  v83 = sub_213F4EEE0();
  v85 = v84;
  sub_213F01384(v77, MEMORY[0x277CE1260]);
  v86 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF00, &qword_213F62390) + 36));
  *v86 = v83;
  v86[1] = v85;
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF08, &qword_213F62398) + 36);
  v88 = *MEMORY[0x277CE13D8];
  v89 = sub_213F4EF90();
  (*(*(v89 - 8) + 104))(v76 + v87, v88, v89);
  v90 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF10, &unk_213F623A0) + 36));
  *v90 = v158;
  v90[1] = v74;
  sub_213DE2B44(v70, v75, &qword_27C8F7A30, &qword_213F62350);
  v91 = v198;
  v92 = (v198 + v66[11]);
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v202) = *v92;
  v203 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v201)
  {
    v95 = 0.98;
  }

  else
  {
    v95 = 1.0;
  }

  sub_213F4F040();
  v97 = v96;
  v99 = v98;
  v100 = v164;
  sub_213DE2B44(v75, v164, &qword_27C8FBEC8, &qword_213F62358);
  v101 = v100 + *(v161 + 36);
  *v101 = v95;
  *(v101 + 8) = v95;
  *(v101 + 16) = v97;
  *(v101 + 24) = v99;
  sub_213F4D140();
  v103 = (v91 + v66[8]);
  v104 = v91;
  v106 = v103[1];
  v107 = (v102 - v68 * (*(v196 + 16) + -1.0)) / *(v196 + 16);
  v202 = *v103;
  v105 = v202;
  v203 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v108 = v107 * v201;
  v202 = v105;
  v203 = v106;
  sub_213F4EAA0();
  v109 = v108 + v68 * v201;
  v110 = KeyPath;
  sub_213DE2B44(v100, KeyPath, &qword_27C8FBED0, &qword_213F62360);
  v111 = v110 + *(v163 + 36);
  *v111 = v109;
  *(v111 + 8) = 0;
  v112 = sub_213F4EF20();
  v202 = v105;
  v203 = v106;
  sub_213F4EAA0();
  v113 = v201;
  v114 = v169;
  v115 = sub_213DE2B44(v110, v169, &qword_27C8FBED8, &qword_213F62368);
  v116 = (v114 + *(v166 + 36));
  *v116 = v112;
  v116[1] = v113;
  v117 = MEMORY[0x216052350](v115, 0.5, 0.7, 0.0);
  LOBYTE(v202) = v93;
  v203 = v94;
  sub_213F4EAA0();
  v118 = v201;
  v119 = v165;
  sub_213DE2B44(v114, v165, &qword_27C8FBEE0, &qword_213F62370);
  v120 = v119 + *(v168 + 36);
  *v120 = v117;
  *(v120 + 8) = v118;
  sub_213DE2B44(v119, v199, &qword_27C8FBEE8, &qword_213F62378);
  v121 = sub_213F4D8A0();
  v122 = v197;
  *v197 = v121;
  *(v122 + 1) = v68;
  *(v122 + 16) = 0;
  v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF18, &qword_213F623B0) + 44);
  v123 = *(v196 + 16);
  v202 = 0;
  v203 = v123;
  KeyPath = swift_getKeyPath();
  v124 = v175;
  v170 = type metadata accessor for AudioPickerView;
  sub_213F01974(v104, v175, type metadata accessor for AudioPickerView);
  v125 = *(v172 + 80);
  v126 = v171 + ((v125 + 16) & ~v125);
  v127 = (v125 + 16) & ~v125;
  v172 = v127;
  v196 = v125 | 7;
  v169 = v126;
  v128 = swift_allocObject();
  v171 = type metadata accessor for AudioPickerView;
  sub_213F01BB8(v124, v128 + v127, type metadata accessor for AudioPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF20, &qword_213F623B8);
  sub_213E800BC();
  sub_213F01CFC(&qword_27C8FBF28, &qword_27C8FBF20, &qword_213F623B8, sub_213F01CCC);
  sub_213F4ECC0();
  sub_213F4DDE0();
  v129 = v179;
  sub_213F4CEB0();
  sub_213F01974(v198, v124, type metadata accessor for AudioPickerView);
  v130 = v181;
  v131 = v178;
  v132 = v184;
  (*(v181 + 16))(v178, v200, v184);
  v133 = &v126[*(v130 + 80)] & ~*(v130 + 80);
  v134 = swift_allocObject();
  v135 = v172;
  v136 = v171;
  sub_213F01BB8(v124, v134 + v172, v171);
  (*(v130 + 32))(v134 + v133, v131, v132);
  sub_213F02440(&qword_27C8FBFA8, MEMORY[0x277CDD730]);
  sub_213F02440(&qword_27C8FBFB0, MEMORY[0x277CDD708]);
  v137 = v186;
  v138 = v185;
  sub_213F4ED00();

  (*(v183 + 8))(v129, v138);
  sub_213F01974(v198, v124, v170);
  v139 = swift_allocObject();
  sub_213F01BB8(v124, v139 + v135, v136);
  sub_213DE3AE4(&qword_27C8FBFB8, &qword_27C8FBEA8, &qword_213F62330);
  v140 = v191;
  v141 = v190;
  sub_213F4ECF0();

  (*(v188 + 8))(v137, v141);
  sub_213F4CF00();
  sub_213DE3AE4(&qword_27C8FBFC0, &qword_27C8FBEB8, &qword_213F62340);
  sub_213DE3AE4(&qword_27C8FBFC8, &qword_27C8FBEB0, &qword_213F62338);
  v142 = v182;
  v143 = v194;
  v144 = v197;
  sub_213F4E790();
  (*(v193 + 8))(v140, v143);
  sub_213DE36FC(v144, &qword_27C8FBEB8, &qword_213F62340);
  v145 = v173;
  sub_213DE3164(v199, v173, &qword_27C8FBEE8, &qword_213F62378);
  v146 = v189;
  v147 = *(v189 + 16);
  v148 = v187;
  v149 = v192;
  v147(v187, v142, v192);
  v150 = v195;
  sub_213DE3164(v145, v195, &qword_27C8FBEE8, &qword_213F62378);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD0, &qword_213F62400);
  v147((v150 + *(v151 + 48)), v148, v149);
  v152 = *(v146 + 8);
  v152(v142, v149);
  sub_213DE36FC(v199, &qword_27C8FBEE8, &qword_213F62378);
  v152(v148, v149);
  return sub_213DE36FC(v145, &qword_27C8FBEE8, &qword_213F62378);
}

uint64_t sub_213EFF324@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a3;
  v5 = sub_213F4D9E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioPickerView(0);
  v153 = *(v10 - 8);
  v11 = *(v153 + 64);
  MEMORY[0x28223BE20](v10);
  v154 = v12;
  v156 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_213F4CE70();
  v158 = *(v160 - 8);
  v13 = *(v158 + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF58, &qword_213F623D8);
  v162 = *(v163 - 8);
  v15 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v159 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v126 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFE0, &qword_213F62410);
  v141 = *(v142 - 8);
  v21 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = &v126 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF98, &qword_213F623F8);
  v23 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v165 = &v126 - v24;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF90, &qword_213F623F0);
  v25 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v27 = &v126 - v26;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF80, &qword_213F623E8);
  v28 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v126 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF70, &qword_213F623E0);
  v30 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v126 - v31;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF50, &qword_213F623D0);
  v32 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v148 = &v126 - v33;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFE8, &qword_213F62418);
  v150 = *(v151 - 8);
  v34 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v126 - v35;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF48, &qword_213F623C8);
  v36 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v155 = &v126 - v37;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF38, &qword_213F623C0);
  v38 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v161 = &v126 - v39;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBF20, &qword_213F623B8);
  v40 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v138 = &v126 - v41;
  v42 = *a1;
  v43 = v10;
  v44 = *(v10 + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v46 = *(a2 + v44 + *(result + 20));
  if (v42 >= *(v46 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47 = a2;
  v132 = v9;
  v133 = v6;
  v134 = v5;
  v48 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v130 = v46;
  v51 = v46 + v50 + *(v49 + 72) * v42;
  v127 = v48;
  v52 = *(v48 + 24);
  v126 = v51;
  v53 = (v51 + v52);
  v54 = *v53;
  v55 = v53[1];

  v56 = sub_213F4E9F0();
  v129 = v43;
  v57 = (v47 + *(v43 + 32));
  v167 = *v57;
  v128 = v27;
  v58 = v57[1];
  *&v174 = v167;
  *(&v174 + 1) = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v131 = v47;
  v60 = v171;
  v61 = objc_opt_self();
  v62 = &selRef_labelColor;
  v166 = v42;
  if (v42 != v60)
  {
    v62 = &selRef_secondaryLabelColor;
  }

  v63 = [v61 *v62];
  v64 = sub_213F4E870();
  v65 = sub_213F4E0F0();
  (*(*(v65 - 8) + 56))(v20, 1, 1, v65);
  v66 = sub_213F4E190();
  sub_213DE36FC(v20, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  *&v174 = v56;
  *(&v174 + 1) = v64;
  *&v175 = KeyPath;
  *(&v175 + 1) = v66;
  sub_213F4E160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9938, &unk_213F59410);
  sub_213E5096C();
  v68 = v140;
  sub_213F4E370();

  sub_213F4EEE0();
  sub_213F4D0C0();
  v69 = v165;
  (*(v141 + 32))(v165, v68, v142);
  v70 = (v69 + *(v139 + 36));
  v71 = v172;
  *v70 = v171;
  v70[1] = v71;
  v70[2] = v173;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v72 = v128;
  sub_213DE2B44(v69, v128, &qword_27C8FBF98, &qword_213F623F8);
  v73 = (v72 + *(v164 + 36));
  v74 = v179;
  v73[4] = v178;
  v73[5] = v74;
  v73[6] = v180;
  v75 = v175;
  *v73 = v174;
  v73[1] = v75;
  v76 = v177;
  v73[2] = v176;
  v73[3] = v76;
  v77 = sub_213F4EF80();
  v169 = v167;
  v165 = v58;
  v170 = v58;
  v164 = v59;
  sub_213F4EAA0();
  v78 = v168;
  v79 = v72;
  v80 = v144;
  sub_213DE2B44(v79, v144, &qword_27C8FBF90, &qword_213F623F0);
  v81 = (v80 + *(v145 + 36));
  *v81 = v77;
  v81[1] = v78;
  v82 = v131;
  v83 = v146;
  sub_213DE2B44(v80, v146, &qword_27C8FBF80, &qword_213F623E8);
  *(v83 + *(v143 + 36)) = 0;
  v84 = v82 + *(v129 + 44);
  v85 = *v84;
  v86 = *(v84 + 8);
  LOBYTE(v169) = v85;
  v145 = v86;
  v170 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v168 == 1 && (v169 = v167, v170 = v165, sub_213F4EAA0(), v168 == v166))
  {
    v87 = 0.98;
  }

  else
  {
    v87 = 1.0;
  }

  sub_213F4F040();
  v89 = v88;
  v91 = v90;
  v92 = v148;
  sub_213DE2B44(v83, v148, &qword_27C8FBF70, &qword_213F623E0);
  v93 = (v92 + *(v147 + 36));
  *v93 = v87;
  v93[1] = v87;
  *(v93 + 2) = v89;
  *(v93 + 3) = v91;
  v94 = v157;
  sub_213F4CE60();
  v95 = v156;
  sub_213F01974(v82, v156, type metadata accessor for AudioPickerView);
  v96 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v97 = (v154 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  sub_213F01BB8(v95, v98 + v96, type metadata accessor for AudioPickerView);
  v99 = v166;
  *(v98 + v97) = v166;
  v100 = v159;
  v101 = v160;
  sub_213F4ECF0();

  (*(v158 + 8))(v94, v101);
  sub_213F4CF00();
  sub_213F01F04();
  sub_213DE3AE4(&qword_27C8FBFA0, &qword_27C8FBF58, &qword_213F623D8);
  v102 = v149;
  v103 = v163;
  sub_213F4E630();
  (*(v162 + 8))(v100, v103);
  v104 = v92;
  v105 = v99;
  v106 = sub_213DE36FC(v104, &qword_27C8FBF50, &qword_213F623D0);
  v107 = MEMORY[0x216052350](v106, 0.5, 0.7, 0.0);
  LOBYTE(v169) = v85;
  v170 = v145;
  sub_213F4EAA0();
  LOBYTE(v96) = v168;
  v108 = v155;
  (*(v150 + 32))(v155, v102, v151);
  v109 = v108 + *(v152 + 36);
  *v109 = v107;
  *(v109 + 8) = v96;
  v169 = v167;
  v170 = v165;
  sub_213F4EAA0();
  if (v99 == v168)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFF0, &qword_213F62450);
    v110 = v133;
    v111 = *(v133 + 72);
    v112 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_213F51DE0;
    sub_213F4D9B0();
    sub_213F4D9C0();
    v169 = v113;
    sub_213F02440(&qword_27C8FBFF8, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC000, &qword_213F62458);
    sub_213DE3AE4(&qword_27C8FC008, &qword_27C8FC000, &qword_213F62458);
    v114 = v132;
    v115 = v134;
    sub_213F4F6F0();
  }

  else
  {
    v114 = v132;
    sub_213F4D9C0();
    v115 = v134;
    v110 = v133;
  }

  v116 = v161;
  sub_213F01DB0();
  sub_213F4E6A0();
  (*(v110 + 8))(v114, v115);
  result = sub_213DE36FC(v108, &qword_27C8FBF48, &qword_213F623C8);
  v117 = v130;
  if (v105 >= *(v130 + 16))
  {
    goto LABEL_17;
  }

  v118 = v127;
  v119 = v126;
  v120 = (v126 + *(v127 + 28));
  v121 = v120[1];
  v169 = *v120;
  v170 = v121;

  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  sub_213F01CCC();
  v122 = v138;
  sub_213F4E6D0();

  result = sub_213DE36FC(v116, &qword_27C8FBF38, &qword_213F623C0);
  if (v105 < *(v117 + 16))
  {
    v123 = (v119 + *(v118 + 20));
    v125 = *v123;
    v124 = v123[1];
    v169 = v125;
    v170 = v124;
    sub_213DBC9EC();
    sub_213F4D3D0();
    return sub_213DE36FC(v122, &qword_27C8FBF20, &qword_213F623B8);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_213F004CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v4 = sub_213F4D3B0();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  sub_213F4CEC0();
  v12 = v11;
  v13 = type metadata accessor for AudioPickerView(0);
  v14 = (a2 + v13[9]);
  v15 = *v14;
  v16 = v14[1];
  *&v43 = v15;
  v37[0] = v16;
  *(&v43 + 1) = v16;
  v41 = v12;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  v17 = (a2 + v13[11]);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v43) = v18;
  *(&v43 + 1) = v19;
  LOBYTE(v41) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAB0();
  v20 = (a2 + v13[10]);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = v20[2];
  *&v43 = *v20;
  BYTE8(v43) = v22;
  v44 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD8, &qword_213F62408);
  sub_213F4EAA0();
  if (v42 == 1)
  {
    sub_213F4CED0();
    *&v43 = v21;
    BYTE8(v43) = v22;
    v44 = v23;
    v41 = v24;
    v42 = 0;
    sub_213F4EAB0();
  }

  *&v43 = v21;
  BYTE8(v43) = v22;
  v44 = v23;
  result = sub_213F4EAA0();
  if ((v42 & 1) == 0)
  {
    v26 = v41;
    sub_213F4D140();
    v27 = a2 + v13[6];
    v29 = v28 / *(*(v27 + *(type metadata accessor for AudioPickerViewModel(0) + 20)) + 16);
    sub_213EFCE28(v10);
    v31 = v38;
    v30 = v39;
    (*(v38 + 104))(v8, *MEMORY[0x277CDFA90], v39);
    LOBYTE(v27) = sub_213F4D3A0();
    v32 = *(v31 + 8);
    v32(v8, v30);
    v32(v10, v30);
    if (v27)
    {
      sub_213F4D140();
      v34 = v33 - v26;
      *&v43 = v15;
      *(&v43 + 1) = v37[0];
      sub_213F4EAA0();
      v35 = v34 - v41;
    }

    else
    {
      *&v43 = v15;
      *(&v43 + 1) = v37[0];
      sub_213F4EAA0();
      v35 = v26 + v41;
    }

    v36 = floor(v35 / v29);
    v43 = *(a2 + v13[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
    result = sub_213F4EAA0();
    if (v36 != *&v41)
    {
      MEMORY[0x28223BE20](result);
      v37[-2] = a2;
      *&v37[-1] = v36;
      sub_213F4EF60();
      sub_213F4D210();
    }
  }

  return result;
}

uint64_t sub_213F008A4(uint64_t result, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v3 = type metadata accessor for AudioPickerView(0);
  v4 = v2 + *(v3 + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  v5 = *(*(v4 + *(result + 20)) + 16);
  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFSUB__(v5, 1))
  {
    v6 = *(v2 + *(v3 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
    return sub_213F4EAB0();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_213F009D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioPickerView(0);
  v8 = *(a2 + v3[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  sub_213EFD2B0(v7);
  v4 = a2 + v3[10];
  *&v8 = *v4;
  BYTE8(v8) = *(v4 + 8);
  v9 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBFD8, &qword_213F62408);
  sub_213F4EAB0();
  v5 = a2 + v3[11];
  LOBYTE(v8) = *v5;
  *(&v8 + 1) = *(v5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213F00ADC(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for AudioPickerView(0);
  v5 = *(v4 + 24);
  result = type metadata accessor for AudioPickerViewModel(0);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(a2 + v5 + *(result + 20));
  if (v3 >= *(v7 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v42 = v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v3;
  v43 = v8;
  v9 = (v42 + *(v8 + 20));
  v10 = v3;
  v45 = v3;
  v11 = v9[1];
  v50 = *v9;
  v51 = v11;
  sub_213DBC9EC();

  v12 = sub_213F4E310();
  v14 = v13;
  v16 = v15;
  v17 = (a2 + *(v4 + 32));
  v44 = v17[1];
  v50 = *v17;
  v51 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBEA0, &qword_213F622C8);
  sub_213F4EAA0();
  v46 = v7;
  v18 = objc_opt_self();
  v19 = &selRef_labelColor;
  if (v10 != v49)
  {
    v19 = &selRef_secondaryLabelColor;
  }

  v20 = [v18 *v19];
  sub_213F4E870();
  v21 = sub_213F4E2B0();
  v23 = v22;
  v25 = v24;
  sub_213DBCA40(v12, v14, v16 & 1);

  sub_213F4E0C0();
  v26 = sub_213F4E2E0();
  v28 = v27;
  v30 = v29;

  sub_213DBCA40(v21, v23, v25 & 1);

  sub_213F4E160();
  v31 = sub_213F4E2A0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_213DBCA40(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v68 = v35 & 1;
  v67 = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  *(&v69[6] + 7) = *&v69[21];
  *(&v69[8] + 7) = *&v69[23];
  *(&v69[10] + 7) = *&v69[25];
  *(&v69[12] + 7) = v70;
  *(v69 + 7) = *&v69[15];
  *(&v69[2] + 7) = *&v69[17];
  *(&v69[4] + 7) = *&v69[19];
  v40 = sub_213F4EF80();
  result = sub_213F4EAA0();
  v63 = *&v69[8];
  v64 = *&v69[10];
  *v65 = *&v69[12];
  v59 = *v69;
  v60 = *&v69[2];
  v61 = *&v69[4];
  v50 = v31;
  v51 = v33;
  v52 = v35 & 1;
  v53 = v37;
  v54 = KeyPath;
  v55 = 1;
  v56 = 0;
  v57 = v39;
  v58 = 1;
  v62 = *&v69[6];
  *&v65[15] = *(&v70 + 1);
  v66 = v40;
  if (v45 < *(v46 + 16))
  {
    v41 = (v42 + *(v43 + 28));
    v47 = *v41;
    v48 = v41[1];

    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE70, &qword_213F622A8);
    sub_213F01A74();
    sub_213F4E6D0();
    sub_213DE36FC(&v50, &qword_27C8FBE70, &qword_213F622A8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_213F00F80(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v37 = type metadata accessor for AudioPickerViewModel.AudioOption(0);
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC010, &qword_213F62460);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = (&v33 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC018, &qword_213F62468);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v33 - v15);
  v17 = 0;
  v36 = *(a2 + *(type metadata accessor for AudioPickerViewModel(0) + 20));
  v18 = *(v36 + 16);
  v19 = (v7 + 56);
  v20 = (v7 + 48);
  while (1)
  {
    if (v17 == v18)
    {
      v21 = 1;
      v17 = v18;
      goto LABEL_7;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v36 + 16))
    {
      goto LABEL_17;
    }

    v22 = v34;
    v23 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v17;
    v24 = *(v6 + 48);
    *v34 = v17;
    sub_213F01974(v23, v22 + v24, type metadata accessor for AudioPickerViewModel.AudioOption);
    sub_213DE2B44(v22, v14, &qword_27C8FC010, &qword_213F62460);
    v21 = 0;
    ++v17;
LABEL_7:
    (*v19)(v14, v21, 1, v6);
    sub_213DE2B44(v14, v16, &qword_27C8FC018, &qword_213F62468);
    if ((*v20)(v16, 1, v6) == 1)
    {
      goto LABEL_18;
    }

    v25 = *v16;
    sub_213F01BB8(v16 + *(v6 + 48), v5, type metadata accessor for AudioPickerViewModel.AudioOption);
    v26 = *(v37 + 20);
    v27 = *&v5[v26];
    v28 = *&v5[v26 + 8];
    v29 = (v38 + v26);
    if (v27 == *v29 && v28 == v29[1])
    {
      sub_213F01384(v5, type metadata accessor for AudioPickerViewModel.AudioOption);
      return v25;
    }

    v31 = sub_213F4F830();
    sub_213F01384(v5, type metadata accessor for AudioPickerViewModel.AudioOption);
    if (v31)
    {
      return v25;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_213F4F710();
  MEMORY[0x216052710](0xD000000000000021, 0x8000000213FA5D70);
  sub_213F4F7B0();
  result = sub_213F4F7C0();
  __break(1u);
  return result;
}

uint64_t sub_213F01384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213F01428()
{
  sub_213F4CB40();
  if (v0 <= 0x3F)
  {
    sub_213F01750(319, &qword_27C8FBDF0, type metadata accessor for AudioPickerViewModel.AudioOption, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213F01504()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213F015A4()
{
  sub_213F01750(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F01750(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AudioPickerViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_213DE22E8();
        if (v3 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_27C8FBE18);
          if (v4 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_27C8F7660);
            if (v5 <= 0x3F)
            {
              sub_213F017B4();
              if (v6 <= 0x3F)
              {
                sub_213E61EBC(319, &qword_2811827B0);
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

void sub_213F01750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213F017B4()
{
  if (!qword_27C8FBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDB8, &unk_213F62160);
    v0 = sub_213F4EAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8FBE20);
    }
  }
}

unint64_t sub_213F01818()
{
  result = qword_27C8FBE28;
  if (!qword_27C8FBE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDD8, &qword_213F62180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBDC0, &qword_213F62170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_27C8FBDD0, &qword_27C8FBDC0, &qword_213F62170);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE28);
  }

  return result;
}

uint64_t sub_213F01974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F019DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AudioPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213EFDDD8(a1, v6, a2);
}

unint64_t sub_213F01A74()
{
  result = qword_27C8FBE68;
  if (!qword_27C8FBE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBE70, &qword_213F622A8);
    sub_213F01B2C();
    sub_213DE3AE4(&qword_27C8FBE88, &qword_27C8FBE90, &qword_213F622B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE68);
  }

  return result;
}

unint64_t sub_213F01B2C()
{
  result = qword_27C8FBE78;
  if (!qword_27C8FBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBE80, &qword_213F622B0);
    sub_213E50DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBE78);
  }

  return result;
}

uint64_t sub_213F01BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F01C38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioPickerView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_213F01CFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213F02440(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213F01DB0()
{
  result = qword_27C8FBF40;
  if (!qword_27C8FBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF48, &qword_213F623C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF50, &qword_213F623D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF58, &qword_213F623D8);
    sub_213F01F04();
    sub_213DE3AE4(&qword_27C8FBFA0, &qword_27C8FBF58, &qword_213F623D8);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF40);
  }

  return result;
}

unint64_t sub_213F01F04()
{
  result = qword_27C8FBF60;
  if (!qword_27C8FBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF50, &qword_213F623D0);
    sub_213F01F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF60);
  }

  return result;
}

unint64_t sub_213F01F90()
{
  result = qword_27C8FBF68;
  if (!qword_27C8FBF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF70, &qword_213F623E0);
    sub_213F02048();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF68);
  }

  return result;
}

unint64_t sub_213F02048()
{
  result = qword_27C8FBF78;
  if (!qword_27C8FBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF80, &qword_213F623E8);
    sub_213F02100();
    sub_213DE3AE4(&qword_27C8FBE88, &qword_27C8FBE90, &qword_213F622B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF78);
  }

  return result;
}

unint64_t sub_213F02100()
{
  result = qword_27C8FBF88;
  if (!qword_27C8FBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF90, &qword_213F623F0);
    sub_213F0218C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FBF88);
  }

  return result;
}

unint64_t sub_213F0218C()
{
  result = qword_281183300;
  if (!qword_281183300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBF98, &qword_213F623F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9938, &unk_213F59410);
    sub_213E5096C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183300);
  }

  return result;
}

uint64_t sub_213F02254(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPickerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_213F4D160() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_213F004CC(a1, v1 + v4, v7);
}

uint64_t sub_213F02328(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213F009D8(a1, v4);
}

uint64_t sub_213F02440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NavigationCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  a4[5] = 0;
  a4[6] = a2;
  a4[7] = a3;
  return result;
}

double NavigationCell.init(model:tapHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t NavigationCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v2 + 56);
  sub_213F02B34(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  v6[1] = v16[0];
  v6[2] = v7;
  v8 = v16[3];
  v6[3] = v16[2];
  v6[4] = v8;
  sub_213DE3164(v2, a1 + 32, &qword_27C8F9318, &qword_213F57710);
  sub_213DD74C4(v4);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10 & 1;
  sub_213F4EA90();
  v11 = *(&v16[0] + 1);
  *(a1 + 104) = v16[0];
  *(a1 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC020, &qword_213F62490);
  v13 = *(v12 + 56);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 60);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213F02B6C;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_213F02660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9500, &unk_213F58050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC028, &qword_213F625D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC030, &qword_213F625E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = (&v30 - v15);
  v17 = *(v14 + 40);
  if (v17)
  {
    *v16 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for SharedTripCell(0);
    v19 = v18[5];
    *(v16 + v19) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v20 = v16 + v18[6];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v21 = v18[8];
    *&v31 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC040, &qword_213F62678);
    sub_213F4EA90();
    *(v16 + v21) = *v33;
    *(v16 + v18[9]) = 0x3FF8000000000000;
    *(v16 + v18[7]) = v17;
    v22 = v16 + *(v12 + 36);
    *v22 = xmmword_213F62470;
    v22[16] = 2;
    sub_213DE3164(v16, v11, &qword_27C8FC030, &qword_213F625E0);
    swift_storeEnumTagMultiPayload();
    sub_213F02CC8();
    sub_213E82DE4();
    sub_213F4DBA0();
    sub_213DE36FC(v16, &qword_27C8FC030, &qword_213F625E0);
  }

  else
  {
    sub_213DE3164(v14, &v31, &qword_27C8F9318, &qword_213F57710);
    if (!v32)
    {
      sub_213DE36FC(&v31, &qword_27C8F9318, &qword_213F57710);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC038, &qword_213F625E8);
      return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
    }

    sub_213DD7500(&v31, v33);
    v23 = type metadata accessor for ListCell(0);
    sub_213DEBAA8(v33, v7 + v23[8]);
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v24 = v23[5];
    *(v7 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v25 = v7 + v23[6];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    *(v7 + v23[7]) = 9;
    v26 = v7 + *(v4 + 36);
    *v26 = xmmword_213F62480;
    v26[16] = 2;
    sub_213DE3164(v7, v11, &qword_27C8F9500, &unk_213F58050);
    swift_storeEnumTagMultiPayload();
    sub_213F02CC8();
    sub_213E82DE4();
    sub_213F4DBA0();
    sub_213DE36FC(v7, &qword_27C8F9500, &unk_213F58050);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC038, &qword_213F625E8);
  return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
}

uint64_t sub_213F02B94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213F02BF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213F02C64()
{
  result = qword_281188580[0];
  if (!qword_281188580[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC020, &qword_213F62490);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281188580);
  }

  return result;
}

unint64_t sub_213F02CC8()
{
  result = qword_281183430;
  if (!qword_281183430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC030, &qword_213F625E0);
    sub_213F02D84(qword_281186D18, type metadata accessor for SharedTripCell);
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183430);
  }

  return result;
}

uint64_t sub_213F02D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213F02DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_213F02F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F03014@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F0312C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
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
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213F033CC(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_213F03438(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F02EA4();
  return sub_213F03570;
}

uint64_t sub_213F035DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213F036A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213F03790(v4);
}

uint64_t sub_213F036D0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_213F03790(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v5 = *(v1 + v4);
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);

  sub_213F4CB80();

  swift_beginAccess();
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();
  if (v7 == *(a1 + 16) && v6 == *(a1 + 24))
  {
  }

  else
  {
    v9 = sub_213F4F830();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
      sub_213F4CB70();
    }
  }

  v12 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_213F039FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_213F03A6C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0357C();
  return sub_213F03BA4;
}

uint64_t sub_213F03C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_213F03CF4()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_213F03DC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = v5[1], (sub_213F4F830() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4CB70();
  }
}

void (*sub_213F03F24(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F03BB0();
  return sub_213F0405C;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.__allocating_init(sharedTripCell:footer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  *(v9 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell) = a1;
  v10 = (v9 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  *v10 = a2;
  v10[1] = a3;
  return v9;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.init(sharedTripCell:footer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_213F4CB40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id, v11, v7);
  sub_213F4CBB0();
  *(v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell) = a1;
  v12 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  *v12 = a2;
  v12[1] = a3;
  return v3;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer + 8);

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NavigationTray.AccessoryWaldoViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer + 8);

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F043C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F04520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F04630@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F04728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
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
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

void (*sub_213F049C8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F044C0();
  return sub_213F04B00;
}

uint64_t sub_213F04B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t keypath_set_7Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213F04C98()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_213F04D68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = v5[1], (sub_213F4F830() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB70();
  }
}

void (*sub_213F04EC8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F04B0C();
  return sub_213F05000;
}

uint64_t sub_213F0506C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_213F05138(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213F05248(v2, v3);
}

uint64_t sub_213F05178()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_213F05248(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F053B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_213F0542C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0500C();
  return sub_213F05564;
}

uint64_t NavigationTray.AccessoryItemViewModel.__allocating_init(title:shortTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_213F4CB40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v17 = swift_allocObject();
  sub_213F4CB30();
  (*(v11 + 32))(v17 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id, v14, v10);
  v18 = (v17 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  *v18 = 0;
  v18[1] = 0;
  sub_213F4CBB0();
  v19 = (v17 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  *v19 = a1;
  v19[1] = a2;
  sub_213F05248(a3, a4);
  return v17;
}

uint64_t NavigationTray.AccessoryItemViewModel.init(title:shortTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_213F4CB40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id, v13, v9);
  v14 = (v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
  *v14 = 0;
  v14[1] = 0;
  sub_213F4CBB0();
  v15 = (v4 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  *v15 = a1;
  v15[1] = a2;
  sub_213F05248(a3, a4);
  return v4;
}

uint64_t NavigationTray.AccessoryItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle + 8);

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NavigationTray.AccessoryItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle + 8);

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F059B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t NavigationTray.AccessoriesViewModel.SharedTripState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F05B94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F05CA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_213F4CB40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = *a2;
  return a5(v11);
}

uint64_t sub_213F05D78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F05E70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213F033CC(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
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
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213F06110(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  v11 = *a3;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v11, v10, v6);
  return swift_endAccess();
}

void (*sub_213F06234(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F05B34();
  return sub_213F0636C;
}

void (*sub_213F06440(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06378();
  return sub_213F06578;
}

void (*sub_213F0664C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06584();
  return sub_213F06784;
}

uint64_t sub_213F067F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213F068B4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F069B0(&v4);
}

uint64_t sub_213F068EC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_213F069B0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F06ADC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06790();
  return sub_213F06C14;
}

uint64_t sub_213F06C94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_213F06D80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F06E50(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_213F06F28()
{
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F06FF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

void (*sub_213F0705C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F06C20();
  return sub_213F07194;
}

double sub_213F07200@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_213F072EC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_213F073A8(double a1)
{
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F074DC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F071A0();
  return sub_213F07614;
}

uint64_t NavigationTray.AccessoriesViewModel.__allocating_init(evAccessory:sharedTripAccessory:sharedTripAccessoryState:sharedTripWaldo:expansionProgress:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  LOBYTE(a3) = *a3;
  sub_213F4CB30();
  v14 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  v15 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  v16 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  sub_213F4CBB0();
  *(v13 + v14) = a1;
  *(v13 + v15) = a2;
  *(v13 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState) = a3;
  *(v13 + v16) = a4;
  *(v13 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress) = a5;
  return v13;
}

uint64_t NavigationTray.AccessoriesViewModel.init(evAccessory:sharedTripAccessory:sharedTripAccessoryState:sharedTripWaldo:expansionProgress:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double a5)
{
  v11 = sub_213F4CB40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  sub_213F4CB30();
  (*(v12 + 32))(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id, v15, v11);
  v16 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory) = 0;
  v17 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory) = 0;
  v18 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo) = 0;
  sub_213F4CBB0();
  v19 = *(v5 + v16);

  *(v5 + v16) = a1;
  v20 = *(v5 + v17);

  *(v5 + v17) = a2;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState) = a3;
  v21 = *(v5 + v18);

  *(v5 + v18) = a4;
  *(v5 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress) = a5;
  return v5;
}

BOOL sub_213F07858()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v2 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v5 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  return *(v1 + v5) == 0;
}

BOOL sub_213F079D8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v2 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
  swift_beginAccess();
  return *(v1 + v3) != 0;
}

BOOL sub_213F07B04()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  return *(v3 + v1) != 0;
}

uint64_t NavigationTray.AccessoriesViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory);

  v5 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo);

  v6 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t NavigationTray.AccessoriesViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory);

  v5 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo);

  v6 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F07DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F07E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_213DBBD08(&v17 - v10);
  sub_213F4D280();
  v12 = sub_213F4D270();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  if (v12)
  {
    sub_213F4E170();
  }

  else
  {
    sub_213F4E160();
  }

  v14 = sub_213F4E0F0();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_213F4E190();
  sub_213DE36FC(v3, &qword_27C8F7668, &qword_213F52190);
  return v15;
}

double sub_213F0808C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = sub_213F4D290();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = _s14AccessoryWaldoVMa(0);
  v26 = *(v11 - 8);
  v12 = &v26 - ((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(MEMORY[0x28223BE20](v11 - 8) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  sub_213F4ED40();
  v14 = v31;
  swift_getKeyPath();
  v31 = v14;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v15 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__sharedTripCell;
  swift_beginAccess();
  v16 = *(v14 + v15);

  sub_213F0E66C(v2, v12, _s14AccessoryWaldoVMa);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_213F0E598(v12, v18 + v17, _s14AccessoryWaldoVMa);
  sub_213DBBD08(v10);
  sub_213F4D280();
  LOBYTE(v17) = sub_213F4D270();
  v19 = *(v4 + 8);
  v20 = v8;
  v21 = v27;
  v19(v20, v27);
  v19(v10, v21);
  if (v17)
  {
    v22 = 14.0;
  }

  else
  {
    v22 = 26.0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  sub_213F4EA90();
  v23 = v29;
  v24 = v30;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = v16;
  *(a1 + 48) = sub_213F0E600;
  *(a1 + 56) = v18;
  *(a1 + 64) = v23;
  *(a1 + 72) = v24;
  *(a1 + 80) = v22;
  return result;
}

uint64_t sub_213F083D8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = &v57 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC148, &qword_213F62E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC150, &qword_213F62E38);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v57 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC158, &qword_213F62E40);
  v22 = *(v21 - 8);
  v59 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v58 = &v57 - v24;
  sub_213DBBD08(v12);
  sub_213F4D280();
  v25 = sub_213F4D270();
  v26 = *(v2 + 8);
  v26(v10, v1);
  v26(v12, v1);
  if (v25)
  {
    v27 = 0x4010000000000000;
  }

  else
  {
    v27 = 0x4024000000000000;
  }

  *v16 = sub_213F4DA40();
  *(v16 + 1) = v27;
  v16[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC160, &qword_213F62E48);
  sub_213F088E0(&v16[*(v28 + 44)]);
  sub_213F4F040();
  sub_213F4D0F0();
  sub_213F4D100();
  sub_213F4D110();

  sub_213F4D0E0();
  sub_213F4D110();

  MEMORY[0x216052350](v29, 0.5, 1.0, 0.0);
  v30 = sub_213F4D120();

  v31 = v57;
  sub_213DE2B44(v16, v57, &qword_27C8FC148, &qword_213F62E30);
  *(v31 + *(v18 + 44)) = v30;
  v32 = sub_213F4E060();
  v33 = v60;
  sub_213DBBD08(v60);
  sub_213F4D280();
  sub_213F4D270();
  v26(v10, v1);
  v26(v33, v1);
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v58;
  sub_213DE2B44(v31, v58, &qword_27C8FC150, &qword_213F62E38);
  v43 = v42 + *(v59 + 44);
  *v43 = v32;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  v44 = sub_213F4E070();
  v45 = v61;
  sub_213DBBD08(v61);
  sub_213F4D280();
  sub_213F4D270();
  v26(v10, v1);
  v26(v45, v1);
  sub_213F4CDA0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v62;
  sub_213DE2B44(v42, v62, &qword_27C8FC158, &qword_213F62E40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC168, &unk_213F62E50);
  v56 = v54 + *(result + 36);
  *v56 = v44;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  return result;
}

uint64_t sub_213F088E0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  sub_213F0808C(v42);
  v7 = *(_s14AccessoryWaldoVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  sub_213F4ED40();
  v8 = v36;
  swift_getKeyPath();
  v36 = v8;
  sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
  sub_213F4CB80();

  v9 = (v8 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray23AccessoryWaldoViewModel__footer);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];

  v36 = v10;
  v37 = v11;
  sub_213DBC9EC();
  v12 = sub_213F4E310();
  v14 = v13;
  v16 = v15;
  LODWORD(v36) = sub_213F4DDB0();
  v17 = sub_213F4E2B0();
  v19 = v18;
  v21 = v20;
  sub_213DBCA40(v12, v14, v16 & 1);

  sub_213F07E9C();
  v22 = sub_213F4E2E0();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_213DBCA40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v22;
  v37 = v24;
  v38 = v26 & 1;
  v39 = v28;
  v40 = KeyPath;
  v41 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v22, v24, v26 & 1);

  sub_213DE3164(v42, &v36, &qword_27C8FC170, &qword_213F62E90);
  v30 = v34;
  sub_213DE3164(v6, v34, &qword_27C8F9640, &qword_213F584C8);
  v31 = v35;
  sub_213DE3164(&v36, v35, &qword_27C8FC170, &qword_213F62E90);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC178, &qword_213F62E98);
  sub_213DE3164(v30, v31 + *(v32 + 48), &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v6, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v42, &qword_27C8FC170, &qword_213F62E90);
  sub_213DE36FC(v30, &qword_27C8F9640, &qword_213F584C8);
  return sub_213DE36FC(&v36, &qword_27C8FC170, &qword_213F62E90);
}

uint64_t sub_213F08D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_213DBBD08(&v17 - v10);
  sub_213F4D280();
  v12 = sub_213F4D270();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  if (v12)
  {
    sub_213F4E160();
  }

  else
  {
    sub_213F4E180();
  }

  v14 = sub_213F4E0F0();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_213F4E190();
  sub_213DE36FC(v3, &qword_27C8F7668, &qword_213F52190);
  return v15;
}

uint64_t sub_213F08F04()
{
  v1 = sub_213F4D910();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  v3 = _s13AccessoryItemVMa(0);
  v4 = (v0 + v3[7]);
  v5 = *v4;
  v6 = v4[1];

  sub_213F4EA10();
  sub_213F4D8D0();

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D930();
  v7 = sub_213F4E2F0();
  v9 = v8;
  v11 = v10;
  v12 = (v0 + v3[11]);
  v18 = *v12;
  v19 = *(v12 + 1);
  v20 = v12[16];
  sub_213DBCA50(v7, v8, v10 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v17 == 1)
  {
    v13 = [objc_opt_self() _carSystemFocusLabelColor];
    sub_213F4E870();
  }

  else
  {
    v14 = *(v0 + v3[9]);
  }

  v15 = sub_213F4E2B0();
  sub_213DBCA40(v7, v9, v11 & 1);

  sub_213DBCA40(v7, v9, v11 & 1);

  return v15;
}

uint64_t sub_213F0916C()
{
  v1 = v0;
  v2 = _s13AccessoryItemVMa(0);
  v3 = v2[5];
  if (*(v0 + v2[6]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB80();

    v4 = (v25 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__shortTitle);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];

    if (v5)
    {
      goto LABEL_6;
    }

    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F4CB80();

    v7 = (v20 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
    sub_213F4ED40();
    swift_getKeyPath();
    sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
    sub_213F4CB80();

    v7 = (v25 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray22AccessoryItemViewModel__title);
  }

  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];

LABEL_6:
  sub_213DBC9EC();
  v10 = sub_213F4E310();
  v12 = v11;
  v14 = v13;
  v15 = (v1 + v2[11]);
  v22 = *v15;
  v23 = *(v15 + 1);
  v24 = v15[16];
  sub_213DBCA50(v10, v11, v13 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v21 == 1)
  {
    v16 = [objc_opt_self() _carSystemFocusLabelColor];
    sub_213F4E870();
  }

  else
  {
    v17 = *(v1 + v2[8]);
  }

  v18 = sub_213F4E2B0();
  sub_213DBCA40(v10, v12, v14 & 1);

  sub_213DBCA40(v10, v12, v14 & 1);

  return v18;
}

uint64_t sub_213F094F8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_213F08F04();
  v16 = v15;
  v31 = v14;
  v32 = v15;
  v18 = v17 & 1;
  v33 = v17 & 1;
  v34 = v19;
  sub_213F4E6D0();
  sub_213DBCA40(v14, v16, v18);

  v20 = sub_213F0916C();
  v22 = v21;
  v31 = v20;
  v32 = v21;
  v24 = v23 & 1;
  v33 = v23 & 1;
  v34 = v25;
  sub_213F4E6D0();
  sub_213DBCA40(v20, v22, v24);

  sub_213DE3164(v13, v8, &qword_27C8F7760, &unk_213F51950);
  sub_213DE3164(v11, v5, &qword_27C8F7760, &unk_213F51950);
  v26 = v30;
  sub_213DE3164(v8, v30, &qword_27C8F7760, &unk_213F51950);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC140, &qword_213F62E28);
  sub_213DE3164(v5, v26 + *(v27 + 48), &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v11, &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v13, &qword_27C8F7760, &unk_213F51950);
  sub_213DE36FC(v5, &qword_27C8F7760, &unk_213F51950);
  return sub_213DE36FC(v8, &qword_27C8F7760, &unk_213F51950);
}

uint64_t sub_213F09790@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v50 = sub_213F4D290();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0B0, &qword_213F62D38);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0B8, &qword_213F62D40);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v49 = &v49 - v19;
  *v15 = sub_213F4D8A0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0C0, &qword_213F62D48);
  sub_213F09BA8(v1, &v15[*(v20 + 44)]);
  sub_213F4F040();
  sub_213F4D0F0();
  sub_213F4D100();
  sub_213F4D110();

  sub_213F4D0E0();
  sub_213F4D110();

  MEMORY[0x216052350](v21, 0.5, 1.0, 0.0);
  v22 = sub_213F4D120();

  *&v15[*(v12 + 44)] = v22;
  v23 = sub_213F4E060();
  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v24 = *(v2 + 8);
  v25 = v50;
  v24(v8, v50);
  v24(v10, v25);
  sub_213F4CDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v49;
  sub_213DE2B44(v15, v49, &qword_27C8FC0B0, &qword_213F62D38);
  v35 = v34 + *(v17 + 44);
  *v35 = v23;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  v36 = sub_213F4E070();
  v37 = v51;
  sub_213DBBD08(v51);
  sub_213F4D280();
  sub_213F4D270();
  v24(v8, v25);
  v24(v37, v25);
  sub_213F4CDA0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v52;
  sub_213DE2B44(v34, v52, &qword_27C8FC0B8, &qword_213F62D40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0C8, &qword_213F62D50);
  v48 = v46 + *(result + 36);
  *v48 = v36;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_213F09BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0D0, &qword_213F62D58);
  v92 = *(v101 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v101);
  v91 = &v82 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0D8, &qword_213F62D60);
  v5 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v7 = &v82 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0E0, &qword_213F62D68);
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v82 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0E8, &qword_213F62D70);
  v10 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v82 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0F0, &qword_213F62D78);
  v95 = *(v100 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v100);
  v94 = &v82 - v13;
  v14 = sub_213F4D290();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0F8, &qword_213F62D80);
  v22 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v99 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC100, &qword_213F62D88);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC108, &qword_213F62D90);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - v30;
  v32 = _s13AccessoryItemVMa(0);
  v33 = (a1 + *(v32 + 40));
  v96 = *v33;
  if (v96)
  {
    v83 = v32;
    v85 = v24;
    v86 = v27;
    v87 = v7;
    v84 = v33[1];

    v34 = a1;
    sub_213DBBD08(v21);
    sub_213F4D280();
    v35 = sub_213F4D270();
    v36 = *(v15 + 8);
    v36(v19, v14);
    v36(v21, v14);
    if (v35)
    {
      *v31 = sub_213F4D8A0();
      *(v31 + 1) = 0;
      v31[16] = 0;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
      sub_213F094F8(&v31[*(v37 + 44)]);
      v38 = sub_213F08D04();
      KeyPath = swift_getKeyPath();
      v40 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36)];
      *v40 = KeyPath;
      v40[1] = v38;
      v41 = swift_getKeyPath();
      v42 = v28;
      v43 = &v31[*(v28 + 36)];
      *v43 = v41;
      *(v43 + 1) = 1;
      v43[16] = 0;
      v44 = sub_213F0E380();
      v45 = v88;
      v82 = v42;
      sub_213F4E840();
      sub_213DE36FC(v31, &qword_27C8FC108, &qword_213F62D90);
      v46 = v34 + *(v83 + 44);
      v47 = *v46;
      v48 = *(v46 + 8);
      LOBYTE(v46) = *(v46 + 16);
      LOBYTE(v104) = v47;
      v105 = v48;
      LOBYTE(v106) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
      sub_213F4CDE0();
      v104 = v42;
      v105 = v44;
      swift_getOpaqueTypeConformance2();
      v49 = v93;
      v50 = v90;
      sub_213F4E780();

      (*(v89 + 8))(v45, v50);
      v51 = sub_213F4EEE0();
      v53 = v52;
      v54 = v97;
      v55 = v49 + *(v97 + 36);
      sub_213F0A6E8(v34, v55);
      v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC128, &qword_213F62E10) + 36));
      *v56 = v51;
      v56[1] = v53;
      v57 = swift_allocObject();
      v58 = v96;
      v59 = v84;
      *(v57 + 16) = v96;
      *(v57 + 24) = v59;
      v104 = sub_213F0E55C;
      v105 = v57;
      v60 = sub_213F0E248();
      v61 = sub_213DE295C();

      v62 = v94;
      sub_213F4E7A0();

      sub_213DE36FC(v49, &qword_27C8FC0E8, &qword_213F62D70);
      v63 = v95;
      v64 = v100;
      (*(v95 + 16))(v87, v62, v100);
      swift_storeEnumTagMultiPayload();
      v104 = v54;
      v105 = &type metadata for CarGestureRepresentable;
      v106 = v60;
      v107 = v61;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58);
      v65 = v99;
      sub_213F4DBA0();
      v66 = v62;
      v67 = v58;
      (*(v63 + 8))(v66, v64);
    }

    else
    {
      v75 = swift_allocObject();
      v67 = v96;
      v76 = v84;
      *(v75 + 16) = v96;
      *(v75 + 24) = v76;
      MEMORY[0x28223BE20](v75);
      *(&v82 - 2) = a1;
      sub_213F0E380();

      v77 = v91;
      sub_213F4EB00();
      v78 = v92;
      v79 = v101;
      (*(v92 + 16))(v87, v77, v101);
      swift_storeEnumTagMultiPayload();
      v80 = sub_213F0E248();
      v81 = sub_213DE295C();
      v104 = v97;
      v105 = &type metadata for CarGestureRepresentable;
      v106 = v80;
      v107 = v81;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58);
      v65 = v99;
      sub_213F4DBA0();
      (*(v78 + 8))(v77, v79);
    }

    sub_213DD38DC(v65, v86);
    swift_storeEnumTagMultiPayload();
    sub_213F0E138();
    sub_213F0E380();
    sub_213F4DBA0();
    sub_213DD7558(v67);
    return sub_213DE36FC(v65, &qword_27C8FC0F8, &qword_213F62D80);
  }

  else
  {
    *v31 = sub_213F4D8A0();
    *(v31 + 1) = 0;
    v31[16] = 0;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
    sub_213F094F8(&v31[*(v68 + 44)]);
    v69 = sub_213F08D04();
    v70 = swift_getKeyPath();
    v71 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36)];
    *v71 = v70;
    v71[1] = v69;
    v72 = swift_getKeyPath();
    v73 = &v31[*(v28 + 36)];
    *v73 = v72;
    *(v73 + 1) = 1;
    v73[16] = 0;
    sub_213DE3164(v31, v27, &qword_27C8FC108, &qword_213F62D90);
    swift_storeEnumTagMultiPayload();
    sub_213F0E138();
    sub_213F0E380();
    sub_213F4DBA0();
    return sub_213DE36FC(v31, &qword_27C8FC108, &qword_213F62D90);
  }
}

uint64_t sub_213F0A6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4EC90();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC130, &qword_213F62E18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43[-v14];
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  v18 = (a1 + *(_s13AccessoryItemVMa(0) + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v43[8] = v19;
  v44 = v20;
  v45 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  if (v43[7] == 1)
  {
    v21 = [objc_opt_self() _carSystemFocusColor];
    v22 = sub_213F4E870();
  }

  else
  {
    v22 = sub_213F4E8D0();
  }

  v23 = v22;
  sub_213F0E598(v7, v11, MEMORY[0x277CE1260]);
  *&v11[*(v8 + 36)] = v23;
  LOBYTE(v23) = sub_213F4E040();
  sub_213F4CDA0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_213DE2B44(v11, v15, &qword_27C8F7A28, &qword_213F529B0);
  v32 = &v15[*(v12 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v23) = sub_213F4E0B0();
  sub_213F4CDA0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_213DE2B44(v15, a2, &qword_27C8FC130, &qword_213F62E18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC138, &qword_213F62E20);
  v42 = a2 + *(result + 36);
  *v42 = v23;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  return result;
}

uint64_t sub_213F0A9D8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4D8A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC110, &qword_213F62D98);
  sub_213F094F8(a1 + *(v2 + 44));
  v3 = sub_213F08D04();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC118, &qword_213F62DD0) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  v6 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC108, &qword_213F62D90);
  v8 = a1 + *(result + 36);
  *v8 = v6;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  return result;
}

uint64_t NavigationTray.Accessories.AccessoryButtonType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F0AB30@<X0>(uint64_t a1@<X8>)
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

uint64_t NavigationTray.Accessories.init(model:tapHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for NavigationTray.Accessories(0);
  v7 = *(v6 + 20);
  type metadata accessor for NavigationTray.AccessoriesViewModel(0);
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  result = sub_213F4ED60();
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t sub_213F0AE18()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_213F0AB30(&v13 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  sub_213F0AB30(v7);
  sub_213F4D280();
  sub_213F4D270();
  v8(v5, v0);
  v8(v7, v0);
  LODWORD(v0) = *(type metadata accessor for NavigationTray.Accessories(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  sub_213F4ED40();
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v10 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  v11 = *(v9 + v10);
}

uint64_t sub_213F0B064()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_213F0AB30(&v13 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  sub_213F0AB30(v7);
  sub_213F4D280();
  sub_213F4D270();
  v8(v5, v0);
  v8(v7, v0);
  LODWORD(v0) = *(type metadata accessor for NavigationTray.Accessories(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  sub_213F4ED40();
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v10 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  swift_beginAccess();
  v11 = *(v9 + v10);
}

uint64_t NavigationTray.Accessories.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC058, &qword_213F628E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC060, &qword_213F628E8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v62 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC068, &qword_213F628F0);
  v22 = *(v21 - 8);
  v65 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v63 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC070, &qword_213F628F8);
  v26 = *(v25 - 8);
  v66 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v64 = &v61 - v28;
  sub_213F0AB30(v12);
  sub_213F4D280();
  v29 = sub_213F4D270();
  v30 = *(v3 + 8);
  v30(v10, v2);
  v30(v12, v2);
  if (v29)
  {
    v31 = 0x4030000000000000;
  }

  else
  {
    v31 = 0x4040000000000000;
  }

  *v16 = sub_213F4D8A0();
  *(v16 + 1) = v31;
  v16[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC078, &qword_213F62900);
  sub_213F0B780(v1, &v16[*(v32 + 44)]);
  v33 = sub_213F4E040();
  sub_213F0AB30(v10);
  sub_213F4D280();
  sub_213F4D270();
  v30(v7, v2);
  v30(v10, v2);
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v16;
  v43 = v62;
  sub_213DE2B44(v42, v62, &qword_27C8FC058, &qword_213F628E0);
  v44 = v43 + *(v18 + 44);
  *v44 = v33;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  sub_213F4EED0();
  sub_213F4D4E0();
  v45 = v43;
  v46 = v63;
  sub_213DE2B44(v45, v63, &qword_27C8FC060, &qword_213F628E8);
  v47 = (v46 + *(v65 + 44));
  v48 = v73;
  v47[4] = v72;
  v47[5] = v48;
  v47[6] = v74;
  v49 = v69;
  *v47 = v68;
  v47[1] = v49;
  v50 = v71;
  v47[2] = v70;
  v47[3] = v50;
  sub_213F0AE18();
  v52 = v51;
  v53 = v46;
  v54 = v64;
  sub_213DE2B44(v53, v64, &qword_27C8FC068, &qword_213F628F0);
  *(v54 + *(v66 + 44)) = v52;
  sub_213F0B064();
  v56 = v55;
  v57 = v54;
  v58 = v67;
  sub_213DE2B44(v57, v67, &qword_27C8FC070, &qword_213F628F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC080, &qword_213F62908);
  v60 = v58 + *(result + 36);
  *v60 = v56;
  *(v60 + 8) = 0;
  return result;
}

uint64_t sub_213F0B780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC180, &qword_213F62EA0);
  v3 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v178 = &v154 - v4;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC188, &qword_213F62EA8);
  v5 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v154 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC190, &qword_213F62EB0);
  v174 = *(v175 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v169 = &v154 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC198, &qword_213F62EB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v176 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v177 = &v154 - v13;
  v179 = _s13AccessoryItemVMa(0);
  v14 = *(*(v179 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v179);
  v162 = (&v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v161 = (&v154 - v18);
  MEMORY[0x28223BE20](v17);
  v168 = (&v154 - v19);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1A0, &qword_213F62EC0);
  v172 = *(v183 - 8);
  v20 = *(v172 + 64);
  v21 = MEMORY[0x28223BE20](v183);
  v158 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = &v154 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v157 = &v154 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v160 = &v154 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v167 = &v154 - v30;
  MEMORY[0x28223BE20](v29);
  v166 = &v154 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1A8, &qword_213F62EC8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v173 = &v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v184 = &v154 - v36;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1B0, &qword_213F62ED0);
  v37 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v187 = &v154 - v38;
  v39 = type metadata accessor for NavigationTray.Accessories(0);
  v40 = v39 - 8;
  v180 = *(v39 - 8);
  v41 = *(v180 + 64);
  MEMORY[0x28223BE20](v39);
  v181 = v42;
  v182 = &v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1B8, &qword_213F62ED8);
  v43 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v45 = (&v154 - v44);
  v46 = *(v40 + 28);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  v48 = a1;
  sub_213F4ED40();
  v49 = v195;
  swift_getKeyPath();
  v195 = v49;
  v50 = sub_213F033CC(&qword_281187368, type metadata accessor for NavigationTray.AccessoriesViewModel);
  sub_213F4CB80();

  v51 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  v52 = *(v49 + v51);

  if (!v52)
  {
    goto LABEL_4;
  }

  sub_213F4ED40();
  v53 = v194;
  swift_getKeyPath();
  v194 = v53;
  sub_213F4CB80();

  v54 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripWaldo;
  swift_beginAccess();
  v55 = *(v53 + v54);

  if (v55)
  {

    sub_213F4ED40();
    v56 = v194;
    swift_getKeyPath();
    v194 = v56;
    sub_213F4CB80();

    v57 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
    swift_beginAccess();
    v58 = *(v56 + v57);

    v59 = v182;
    sub_213F0E66C(v48, v182, type metadata accessor for NavigationTray.Accessories);
    v60 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v61 = swift_allocObject();
    sub_213F0E598(v59, v61 + v60, type metadata accessor for NavigationTray.Accessories);
    *v45 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v62 = _s14AccessoryWaldoVMa(0);
    v63 = v45 + v62[8];
    *v63 = sub_213F4CDF0() & 1;
    *(v63 + 1) = v64;
    v63[16] = v65 & 1;
    v66 = v62[5];
    type metadata accessor for NavigationTray.AccessoryWaldoViewModel(0);
    sub_213F033CC(&qword_27C8FC048, type metadata accessor for NavigationTray.AccessoryWaldoViewModel);
    sub_213F4ED60();
    *(v45 + v62[6]) = v58;
    v67 = (v45 + v62[7]);
    *v67 = sub_213F0EA08;
    v67[1] = v61;
    v68 = v45 + *(v185 + 36);
    *v68 = xmmword_213F62680;
    v68[16] = 16;
    v69 = &qword_213F62ED8;
    sub_213DE3164(v45, v187, &qword_27C8FC1B8, &qword_213F62ED8);
    swift_storeEnumTagMultiPayload();
    sub_213DBEE50();
    sub_213DE3AE4(&qword_281182580, &qword_27C8FC180, &qword_213F62EA0);
    sub_213F4DBA0();

    v70 = v45;
    v71 = &qword_27C8FC1B8;
  }

  else
  {
LABEL_4:
    v72 = v48;
    sub_213F4ED40();
    v73 = v194;
    swift_getKeyPath();
    v194 = v73;
    sub_213F4CB80();

    v74 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
    swift_beginAccess();
    v75 = *(v73 + v74);

    v165 = v50;
    v164 = v46;
    v163 = v47;
    if (v75)
    {
      v156 = v48;
      sub_213F4ED40();
      v76 = v193;
      swift_getKeyPath();
      v193 = v76;
      sub_213F4CB80();

      v77 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
      swift_beginAccess();
      if (*(v76 + v77))
      {
        swift_getKeyPath();
        v193 = v76;
        sub_213F4CB80();

        v78 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
        swift_beginAccess();
        v79 = *(v76 + v78) != 0;
      }

      else
      {
        v79 = 0;
      }

      v83 = sub_213F4E920();
      v155 = sub_213F4E8E0();
      KeyPath = swift_getKeyPath();
      v85 = v168;
      *v168 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v86 = v179;
      v87 = v179[6];
      v88 = (v85 + v179[10]);
      v89 = v85 + v179[11];

      *v89 = sub_213F4CDF0() & 1;
      *(v89 + 8) = v90;
      *(v89 + 16) = v91 & 1;
      v92 = v86[5];
      type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
      sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
      sub_213F4ED60();
      *(v85 + v87) = v79;
      v93 = (v85 + v86[7]);
      *v93 = 0x6C69662E746C6F62;
      v93[1] = 0xE90000000000006CLL;
      *(v85 + v86[8]) = v83;
      *(v85 + v86[9]) = v155;
      *v88 = 0;
      v88[1] = 0;

      v94 = v167;
      sub_213F0E66C(v85, v167, _s13AccessoryItemVMa);
      v82 = v183;
      v95 = v94 + *(v183 + 36);
      *v95 = xmmword_213F62690;
      *(v95 + 16) = 16;
      sub_213F0E6DC(v85);
      v96 = v94;
      v97 = v166;
      sub_213DE2B44(v96, v166, &qword_27C8FC1A0, &qword_213F62EC0);
      v81 = v184;
      sub_213DE2B44(v97, v184, &qword_27C8FC1A0, &qword_213F62EC0);
      v80 = 0;
      v72 = v156;
    }

    else
    {
      v80 = 1;
      v81 = v184;
      v82 = v183;
    }

    v98 = 1;
    (*(v172 + 56))(v81, v80, 1, v82);
    sub_213F4ED40();
    v99 = v193;
    swift_getKeyPath();
    v193 = v99;
    sub_213F4CB80();

    v100 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
    swift_beginAccess();
    v101 = *(v99 + v100);

    if (v101)
    {
      sub_213F4ED40();
      v102 = v192;
      swift_getKeyPath();
      v192 = v102;
      sub_213F4CB80();

      v103 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
      swift_beginAccess();
      LOBYTE(v103) = *(v102 + v103);

      if (v103)
      {
        sub_213F4ED40();
        v104 = v191;
        swift_getKeyPath();
        v191 = v104;
        sub_213F4CB80();

        v105 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
        swift_beginAccess();
        if (*(v104 + v105))
        {
          swift_getKeyPath();
          v190 = v104;
          sub_213F4CB80();

          v106 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
          swift_beginAccess();
          LODWORD(v172) = *(v104 + v106) != 0;
        }

        else
        {
          LODWORD(v172) = 0;
        }

        v168 = 0x8000000213FA5F20;
        v111 = sub_213F4E8B0();
        v112 = sub_213F4E8B0();
        v113 = v182;
        sub_213F0E66C(v72, v182, type metadata accessor for NavigationTray.Accessories);
        v114 = (*(v180 + 80) + 16) & ~*(v180 + 80);
        v115 = swift_allocObject();
        sub_213F0E598(v113, v115 + v114, type metadata accessor for NavigationTray.Accessories);
        v116 = swift_getKeyPath();
        v117 = v162;
        *v162 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
        swift_storeEnumTagMultiPayload();
        v118 = v179;
        v119 = v179[6];
        v120 = (v117 + v179[10]);
        v121 = v117 + v179[11];

        *v121 = sub_213F4CDF0() & 1;
        *(v121 + 8) = v122;
        *(v121 + 16) = v123 & 1;
        v124 = v118[5];
        type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
        sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
        sub_213F4ED60();
        *(v117 + v119) = v172;
        v125 = (v117 + v118[7]);
        v126 = v168;
        *v125 = 0xD00000000000001ALL;
        v125[1] = v126;
        *(v117 + v118[8]) = v111;
        *(v117 + v118[9]) = v112;
        *v120 = sub_213F0E6D4;
        v120[1] = v115;
        v127 = v158;
        sub_213F0E66C(v117, v158, _s13AccessoryItemVMa);
        v128 = v127 + *(v183 + 36);
        *v128 = 0xD00000000000001ALL;
        *(v128 + 8) = 0x8000000213FA5F40;
        *(v128 + 16) = 16;
        sub_213F0E6DC(v117);
        v129 = v159;
        sub_213DE2B44(v127, v159, &qword_27C8FC1A0, &qword_213F62EC0);
      }

      else
      {
        sub_213F4ED40();
        v108 = v191;
        swift_getKeyPath();
        v191 = v108;
        sub_213F4CB80();

        v109 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__evAccessory;
        swift_beginAccess();
        if (*(v108 + v109))
        {
          swift_getKeyPath();
          v190 = v108;
          sub_213F4CB80();

          v110 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessory;
          swift_beginAccess();
          LODWORD(v172) = *(v108 + v110) != 0;
        }

        else
        {
          LODWORD(v172) = 0;
        }

        v168 = 0x8000000213FA5F60;
        v130 = sub_213F4E8B0();
        v131 = sub_213F4E8B0();
        v132 = v182;
        sub_213F0E66C(v72, v182, type metadata accessor for NavigationTray.Accessories);
        v133 = (*(v180 + 80) + 16) & ~*(v180 + 80);
        v134 = swift_allocObject();
        sub_213F0E598(v132, v134 + v133, type metadata accessor for NavigationTray.Accessories);
        v135 = swift_getKeyPath();
        v136 = v161;
        *v161 = v135;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
        swift_storeEnumTagMultiPayload();
        v137 = v179;
        v138 = v179[6];
        v139 = (v136 + v179[10]);
        v140 = v136 + v179[11];

        *v140 = sub_213F4CDF0() & 1;
        *(v140 + 8) = v141;
        *(v140 + 16) = v142 & 1;
        v143 = v137[5];
        type metadata accessor for NavigationTray.AccessoryItemViewModel(0);
        sub_213F033CC(&qword_2811870F8, type metadata accessor for NavigationTray.AccessoryItemViewModel);
        sub_213F4ED60();
        *(v136 + v138) = v172;
        v144 = (v136 + v137[7]);
        v145 = v168;
        *v144 = 0xD000000000000016;
        v144[1] = v145;
        *(v136 + v137[8]) = v130;
        *(v136 + v137[9]) = v131;
        *v139 = sub_213F0E968;
        v139[1] = v134;
        v146 = v157;
        sub_213F0E66C(v136, v157, _s13AccessoryItemVMa);
        v147 = v146 + *(v183 + 36);
        *v147 = 0xD00000000000001DLL;
        *(v147 + 8) = 0x8000000213FA5F80;
        *(v147 + 16) = 16;
        sub_213F0E6DC(v136);
        v129 = v160;
        sub_213DE2B44(v146, v160, &qword_27C8FC1A0, &qword_213F62EC0);
      }

      sub_213DE3164(v129, v170, &qword_27C8FC1A0, &qword_213F62EC0);
      swift_storeEnumTagMultiPayload();
      sub_213F0E738();
      v148 = v169;
      sub_213F4DBA0();

      sub_213DE36FC(v129, &qword_27C8FC1A0, &qword_213F62EC0);
      v107 = v177;
      sub_213DE2B44(v148, v177, &qword_27C8FC190, &qword_213F62EB0);
      v98 = 0;
      v81 = v184;
    }

    else
    {
      v107 = v177;
    }

    (*(v174 + 56))(v107, v98, 1, v175);
    v69 = &qword_213F62EC8;
    v149 = v173;
    sub_213DE3164(v81, v173, &qword_27C8FC1A8, &qword_213F62EC8);
    v150 = v176;
    sub_213DE3164(v107, v176, &qword_27C8FC198, &qword_213F62EB8);
    v151 = v178;
    sub_213DE3164(v149, v178, &qword_27C8FC1A8, &qword_213F62EC8);
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1C0, &qword_213F62EE0);
    sub_213DE3164(v150, v151 + *(v152 + 48), &qword_27C8FC198, &qword_213F62EB8);
    sub_213DE36FC(v150, &qword_27C8FC198, &qword_213F62EB8);
    sub_213DE36FC(v149, &qword_27C8FC1A8, &qword_213F62EC8);
    sub_213DE3164(v151, v187, &qword_27C8FC180, &qword_213F62EA0);
    swift_storeEnumTagMultiPayload();
    sub_213DBEE50();
    sub_213DE3AE4(&qword_281182580, &qword_27C8FC180, &qword_213F62EA0);
    sub_213F4DBA0();
    sub_213DE36FC(v151, &qword_27C8FC180, &qword_213F62EA0);
    sub_213DE36FC(v107, &qword_27C8FC198, &qword_213F62EB8);
    v70 = v81;
    v71 = &qword_27C8FC1A8;
  }

  return sub_213DE36FC(v70, v71, v69);
}

uint64_t sub_213F0D004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__sharedTripAccessoryState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_213F0D084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray20AccessoriesViewModel__expansionProgress;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_213F0D10C()
{
  result = qword_27C8FC088;
  if (!qword_27C8FC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC088);
  }

  return result;
}

unint64_t sub_213F0D164()
{
  result = qword_27C8FC090;
  if (!qword_27C8FC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC090);
  }

  return result;
}

uint64_t sub_213F0D380()
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

uint64_t sub_213F0D5D8()
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

void sub_213F0DA98()
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825E0, type metadata accessor for NavigationTray.AccessoriesViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_213DE22E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213F0DB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213F0DC08()
{
  result = qword_281182D40;
  if (!qword_281182D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC080, &qword_213F62908);
    sub_213F0DC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D40);
  }

  return result;
}

unint64_t sub_213F0DC94()
{
  result = qword_281182E00;
  if (!qword_281182E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC070, &qword_213F628F8);
    sub_213F0DD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E00);
  }

  return result;
}

unint64_t sub_213F0DD20()
{
  result = qword_281182F98;
  if (!qword_281182F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC068, &qword_213F628F0);
    sub_213F0DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F98);
  }

  return result;
}

unint64_t sub_213F0DDAC()
{
  result = qword_2811831F8;
  if (!qword_2811831F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC060, &qword_213F628E8);
    sub_213DE3AE4(&qword_281182710, &qword_27C8FC058, &qword_213F628E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831F8);
  }

  return result;
}

void sub_213F0DE64()
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825D8, type metadata accessor for NavigationTray.AccessoryItemViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_213E0C0F8();
      if (v2 <= 0x3F)
      {
        sub_213DE2394();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213F0DFE4()
{
  sub_213F0DB94(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F0DB94(319, &qword_2811825D0, type metadata accessor for NavigationTray.AccessoryWaldoViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_213DE22E8();
      if (v2 <= 0x3F)
      {
        sub_213DE2394();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_213F0E138()
{
  result = qword_281182AA8;
  if (!qword_281182AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0F8, &qword_213F62D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E8, &qword_213F62D70);
    sub_213F0E248();
    sub_213DE295C();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182768, &qword_27C8FC0D0, &qword_213F62D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AA8);
  }

  return result;
}

unint64_t sub_213F0E248()
{
  result = qword_281183278;
  if (!qword_281183278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E8, &qword_213F62D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0E0, &qword_213F62D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC108, &qword_213F62D90);
    sub_213F0E380();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182BC8, &qword_27C8FC128, &qword_213F62E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183278);
  }

  return result;
}

unint64_t sub_213F0E380()
{
  result = qword_281182F70;
  if (!qword_281182F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC108, &qword_213F62D90);
    sub_213F0E438();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F70);
  }

  return result;
}

unint64_t sub_213F0E438()
{
  result = qword_2811831C8;
  if (!qword_2811831C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC118, &qword_213F62DD0);
    sub_213DE3AE4(&qword_2811826D0, &qword_27C8FC120, &qword_213F62E08);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831C8);
  }

  return result;
}

uint64_t sub_213F0E51C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 0;
  return v1(&v4);
}

uint64_t sub_213F0E55C(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_213F0E598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F0E600()
{
  v1 = _s14AccessoryWaldoVMa(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_213F0E66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F0E6DC(uint64_t a1)
{
  v2 = _s13AccessoryItemVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F0E738()
{
  result = qword_281183440;
  if (!qword_281183440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1A0, &qword_213F62EC0);
    sub_213F033CC(qword_281187970, _s13AccessoryItemVMa);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183440);
  }

  return result;
}

uint64_t objectdestroy_158Tm()
{
  v1 = type metadata accessor for NavigationTray.Accessories(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v1 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  v9 = *&v4[*(v1 + 24) + 8];

  return swift_deallocObject();
}

uint64_t sub_213F0E970(char *a1, char a2)
{
  v5 = type metadata accessor for NavigationTray.Accessories(0);
  v6 = *a1;
  v7 = v2 + *(v5 + 24) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));
  v8 = *v7;
  v9 = *(v7 + 8);
  v12 = a2;
  v11 = v6;
  return v8(&v12, &v11);
}

uint64_t sub_213F0EA08()
{
  v1 = type metadata accessor for NavigationTray.Accessories(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *v2;
  v4 = *(v2 + 8);
  v7 = 2;
  v6 = 0;
  return v3(&v7, &v6);
}

unint64_t sub_213F0EA90()
{
  result = qword_281182DF8;
  if (!qword_281182DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0C8, &qword_213F62D50);
    sub_213F0EB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DF8);
  }

  return result;
}

unint64_t sub_213F0EB1C()
{
  result = qword_281182F90;
  if (!qword_281182F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0B8, &qword_213F62D40);
    sub_213F0EBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F90);
  }

  return result;
}

unint64_t sub_213F0EBA8()
{
  result = qword_2811831F0;
  if (!qword_2811831F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC0B0, &qword_213F62D38);
    sub_213DE3AE4(&qword_281182700, &qword_27C8FC1C8, &qword_213F62EE8);
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831F0);
  }

  return result;
}

unint64_t sub_213F0EC8C()
{
  result = qword_27C8FC1D0;
  if (!qword_27C8FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC168, &unk_213F62E50);
    sub_213F0ED18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1D0);
  }

  return result;
}

unint64_t sub_213F0ED18()
{
  result = qword_27C8FC1D8;
  if (!qword_27C8FC1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC158, &qword_213F62E40);
    sub_213F0EDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1D8);
  }

  return result;
}

unint64_t sub_213F0EDA4()
{
  result = qword_27C8FC1E0;
  if (!qword_27C8FC1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC150, &qword_213F62E38);
    sub_213DE3AE4(&qword_27C8FC1E8, &qword_27C8FC148, &qword_213F62E30);
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC1E0);
  }

  return result;
}

uint64_t NavigationTray.MetricSection.__allocating_init(unit:value:unitAccessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  sub_213F4CB30();
  sub_213F4CBB0();
  v16 = (v15 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  *v16 = a1;
  v16[1] = a2;
  v17 = (v15 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v15 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  *v18 = a5;
  v18[1] = a6;
  return v15;
}

uint64_t NavigationTray.MetricsViewModel.__allocating_init(state:eta:time:distance:disableAnimations:navigationTrayHasAccessories:expansionProgress:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, double a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_213F4CBB0();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 49) = a6;
  *(v17 + 56) = a7;
  return v17;
}

double sub_213F0F024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F16F2C();
  v4 = type metadata accessor for ShimmeringView();
  v5 = (a1 + *(v4 + 44));
  v8 = *v5;
  *&v10 = *(v5 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC350, &unk_213F636E0);
  sub_213F4EAA0();
  v6 = (a1 + *(v4 + 48));
  v9 = *v6;
  *&v10 = *(v6 + 2);
  sub_213F4EAA0();
  sub_213F4D2C0();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_213F0F11C()
{
  sub_213F4EF30();
  sub_213F4EF10();

  sub_213F4D210();
}

uint64_t sub_213F0F1C0(uint64_t a1)
{
  sub_213F4F060();
  v2 = type metadata accessor for ShimmeringView();
  v3 = (a1 + *(v2 + 44));
  v6 = *v3;
  v8 = *(v3 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC350, &unk_213F636E0);
  sub_213F4EAB0();
  v4 = (a1 + *(v2 + 48));
  v9 = *(v4 + 2);
  v7 = *v4;
  return sub_213F4EAB0();
}

uint64_t sub_213F0F304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F0F3FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213F0F5C0(v7);
}

uint64_t sub_213F0F4C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F0F5C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213DBBCC0(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
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
    sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213F0F860(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213F0F97C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0F2A4();
  return sub_213F0FAB4;
}

void (*sub_213F0FB88(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FAC0();
  return sub_213F0FCC0;
}

uint64_t keypath_set_14Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

void (*sub_213F0FDDC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FCCC();
  return sub_213F0FF14;
}

uint64_t sub_213F0FF94@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_213F10090(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_213F10180(uint64_t a1, uint64_t a2, void *a3)
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
    sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
    sub_213F4CB70();
  }
}

void (*sub_213F102D8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F0FF20();
  return sub_213F10410;
}

uint64_t NavigationTray.MetricSection.init(unit:value:unitAccessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_213F4CB40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v14 + 32))(v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id, v17, v13);
  sub_213F4CBB0();
  v18 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  *v18 = a1;
  v18[1] = a2;
  v19 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  *v19 = a3;
  v19[1] = a4;
  v20 = (v6 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  *v20 = a5;
  v20[1] = a6;
  return v6;
}

uint64_t NavigationTray.MetricSection.deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel + 8);

  v6 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_213F10638@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t NavigationTray.MetricsViewModel.MetricsViewState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F107B8()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = 4281413;
  if (*(v0 + 16) != 1)
  {
    v1 = 0x6E6974756F726552;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0x676E6964616F4CLL;
  }
}

uint64_t sub_213F108BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_213F10978(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F10A6C(&v4);
}