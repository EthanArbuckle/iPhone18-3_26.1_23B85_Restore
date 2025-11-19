uint64_t sub_213DF4B44(__int128 *a1)
{
  v1 = a1[9];
  v2 = a1[7];
  v35 = a1[8];
  v36 = v1;
  v3 = a1[9];
  v37 = a1[10];
  v4 = a1[5];
  v5 = a1[3];
  v31 = a1[4];
  v32 = v4;
  v6 = a1[7];
  v33 = a1[6];
  v34 = v6;
  v7 = a1[1];
  v28[0] = *a1;
  v28[1] = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v29 = a1[2];
  v30 = v8;
  v24 = v35;
  v25 = v3;
  v26 = a1[10];
  v12 = a1[5];
  v11 = a1[6];
  v20 = v31;
  v21 = v12;
  v22 = v11;
  v23 = v2;
  v16 = v10;
  v17 = v9;
  v13 = *(a1 + 12);
  v14 = *(a1 + 13);
  v38 = *(a1 + 176);
  v27 = *(a1 + 176);
  v18 = v29;
  v19 = v5;
  sub_213DF73EC(v28, v39);
  v13(&v16);
  v39[8] = v24;
  v39[9] = v25;
  v39[10] = v26;
  v40 = v27;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v22;
  v39[7] = v23;
  v39[0] = v16;
  v39[1] = v17;
  v39[2] = v18;
  v39[3] = v19;
  return sub_213DF7424(v39);
}

uint64_t sub_213DF4C3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8000, &qword_213F52C00);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v53 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7FF8, &qword_213F52BF8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7FF0, &qword_213F52BF0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7FE8, &qword_213F52BE8);
  v24 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v26 = &v53 - v25;
  *v13 = sub_213F4D8A0();
  v13[1] = a3;
  *(v13 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8058, &qword_213F52C60);
  sub_213DF5180(a1, v13 + *(v27 + 44));
  v28 = sub_213F4E0F0();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = sub_213F4E190();
  sub_213DE36FC(v8, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v31 = (v13 + *(v10 + 44));
  *v31 = KeyPath;
  v31[1] = v29;
  LOBYTE(v10) = sub_213F4E040();
  a1[3];
  sub_213F4CDA0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_213DE2B44(v13, v18, &qword_27C8F8000, &qword_213F52C00);
  v40 = &v18[*(v15 + 44)];
  *v40 = v10;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DE2B44(v18, v23, &qword_27C8F7FF8, &qword_213F52BF8);
  v41 = &v23[*(v20 + 44)];
  v42 = v57;
  *v41 = v56;
  *(v41 + 1) = v42;
  *(v41 + 2) = v58;
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v23, v26, &qword_27C8F7FF0, &qword_213F52BF0);
  v43 = &v26[*(v54 + 36)];
  v44 = v64;
  *(v43 + 4) = v63;
  *(v43 + 5) = v44;
  *(v43 + 6) = v65;
  v45 = v60;
  *v43 = v59;
  *(v43 + 1) = v45;
  v46 = v62;
  *(v43 + 2) = v61;
  *(v43 + 3) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7FE0, &qword_213F52BE0);
  v48 = v55;
  v49 = v55 + *(v47 + 36);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_213F4D950();
  (*(*(v51 - 8) + 104))(v49, v50, v51);
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B8, &qword_213F518C8) + 36)) = 0;
  return sub_213DE2B44(v26, v48, &qword_27C8F7FE8, &qword_213F52BE8);
}

uint64_t sub_213DF5180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8060, &qword_213F52C98);
  v3 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v101 = &v83 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8068, &qword_213F52CA0);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v83 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8070, &qword_213F52CA8);
  v102 = *(v104 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v91 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8078, &unk_213F52CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v105 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v14);
  v97 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7768, &qword_213F52CC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v103 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  v23 = sub_213F4EA00();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8080, &qword_213F52CC8);
  v28 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8088, &qword_213F52CD0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v94 = &v83 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8090, &qword_213F52CD8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v100 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = a1;
  v40 = a1[1];
  v108 = &v83 - v38;
  if (v40)
  {
    v89 = v22;
    v41 = v23;
    v42 = v39;
    v43 = *v39;
    v85 = v40;
    v86 = v43;

    sub_213F4E9F0();
    v44 = *MEMORY[0x277CE0FE0];
    v45 = *(v24 + 104);
    v39 = v42;
    v88 = v30;
    v46 = *(v42 + 2);
    v83 = *(v42 + 3);
    v84 = v46;
    v45(v27, v44, v41);
    v47 = sub_213F4EA40();
    v87 = v31;
    v48 = v47;

    (*(v24 + 8))(v27, v41);
    sub_213F4EEE0();
    sub_213F4D0C0();
    LOBYTE(v120) = 1;
    *&v117[6] = v124;
    *&v117[22] = v125;
    *&v117[38] = v126;
    v49 = sub_213F4E050();
    *(v122 + 2) = *v117;
    *(&v122[1] + 2) = *&v117[16];
    v118 = 0;
    v120 = v48;
    v121 = 0;
    LOWORD(v122[0]) = 1;
    *(&v122[2] + 2) = *&v117[32];
    *&v122[3] = *&v117[46];
    BYTE8(v122[3]) = v49;
    *(&v122[3] + 9) = *v119;
    HIDWORD(v122[3]) = *&v119[3];
    v122[5] = v83;
    v122[4] = v84;
    v123 = 0;
    v113 = v122[3];
    v114 = v84;
    v115 = v83;
    v116 = 0;
    v109 = v48;
    v110 = v122[0];
    v22 = v89;
    v111 = v122[1];
    v112 = v122[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80A0, &qword_213F52CF0);
    sub_213DF7154();
    v50 = v95;
    sub_213F4E6D0();
    v51 = sub_213DE36FC(&v120, &qword_27C8F80A0, &qword_213F52CF0);
    MEMORY[0x28223BE20](v51);
    v52 = v85;
    *(&v83 - 2) = v86;
    *(&v83 - 1) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80A8, &unk_213F52CF8);
    sub_213DF71E8();
    sub_213DF72A4();
    v53 = v94;
    sub_213F4E6F0();
    sub_213DE36FC(v50, &qword_27C8F8080, &qword_213F52CC8);
    v55 = v87;
    v54 = v88;
    v56 = v108;
    (*(v87 + 32))(v108, v53, v88);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = v39[3];
    if (v57)
    {
LABEL_3:
      v120 = v39[2];
      v121 = v57;
      sub_213DBC9EC();

      v58 = sub_213F4E310();
      v60 = v59;
      v120 = v58;
      v121 = v59;
      v62 = v61 & 1;
      LOBYTE(v122[0]) = v61 & 1;
      *(&v122[0] + 1) = v63;
      v64 = v97;
      sub_213F4E6D0();
      sub_213DBCA40(v58, v60, v62);

      sub_213DF70E4(v64, v22);
      v65 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    (*(v31 + 56))(&v83 - v38, 1, 1, v30);
    v57 = a1[3];
    if (v57)
    {
      goto LABEL_3;
    }
  }

  v65 = 1;
LABEL_6:
  v66 = 1;
  (*(v98 + 56))(v22, v65, 1, v99);
  if (*(v39 + 144) == 1)
  {
    v67 = sub_213F4E9F0();
    v68 = sub_213F4E1F0();
    KeyPath = swift_getKeyPath();
    v120 = v67;
    v121 = KeyPath;
    *&v122[0] = v68;
    sub_213F4E110();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F77C0, &qword_213F519B0);
    sub_213DE2CCC();
    v70 = v101;
    sub_213F4E370();

    *(v70 + *(v90 + 36)) = xmmword_213F52A70;
    if (v39[10])
    {
      sub_213F4E8F0();
      v71 = sub_213F4E900();
    }

    else
    {
      v71 = sub_213F4E920();
    }

    v72 = v92;
    sub_213DE2B44(v101, v92, &qword_27C8F8060, &qword_213F52C98);
    *(v72 + *(v93 + 36)) = v71;
    v120 = 0x6E6F7276656843;
    v121 = 0xE700000000000000;
    MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
    sub_213DF67FC(&qword_281183038, &qword_27C8F8068, &qword_213F52CA0, sub_213DF701C);
    v73 = v91;
    sub_213F4E6D0();

    sub_213DE36FC(v72, &qword_27C8F8068, &qword_213F52CA0);
    sub_213DE2B44(v73, v107, &qword_27C8F8070, &qword_213F52CA8);
    v66 = 0;
  }

  v74 = v107;
  (*(v102 + 56))(v107, v66, 1, v104);
  v75 = v108;
  v76 = v100;
  sub_213DE3164(v108, v100, &qword_27C8F8090, &qword_213F52CD8);
  v77 = v103;
  sub_213DE3164(v22, v103, &qword_27C8F7768, &qword_213F52CC0);
  v78 = v105;
  sub_213DE3164(v74, v105, &qword_27C8F8078, &unk_213F52CB0);
  v79 = v22;
  v80 = v106;
  sub_213DE3164(v76, v106, &qword_27C8F8090, &qword_213F52CD8);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8098, &unk_213F52CE0);
  sub_213DE3164(v77, v80 + *(v81 + 48), &qword_27C8F7768, &qword_213F52CC0);
  sub_213DE3164(v78, v80 + *(v81 + 64), &qword_27C8F8078, &unk_213F52CB0);
  sub_213DE36FC(v74, &qword_27C8F8078, &unk_213F52CB0);
  sub_213DE36FC(v79, &qword_27C8F7768, &qword_213F52CC0);
  sub_213DE36FC(v75, &qword_27C8F8090, &qword_213F52CD8);
  sub_213DE36FC(v78, &qword_27C8F8078, &unk_213F52CB0);
  sub_213DE36FC(v77, &qword_27C8F7768, &qword_213F52CC0);
  return sub_213DE36FC(v76, &qword_27C8F8090, &qword_213F52CD8);
}

uint64_t sub_213DF5D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80B0, &qword_213F52D08);
  v5 = *(*(v28[0] - 8) + 64);
  MEMORY[0x28223BE20](v28[0]);
  v7 = (v28 - v6);
  v8 = sub_213F4CB60();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_213F4F210();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7770, &qword_213F51960);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v28 - v20;
  if (a1 == v22 && a2 == 0xE90000000000006BLL || (sub_213F4F830() & 1) != 0)
  {

    v28[5] = sub_213F4E9F0();
    sub_213F4F200();
    (*(v11 + 16))(v15, v17, v10);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v23 = qword_281182518;
    sub_213F4CB50();
    v24 = sub_213F4F260();
    v26 = v25;
    (*(v11 + 8))(v17, v10);
    v28[2] = v24;
    v28[3] = v26;
    sub_213DBC9EC();
    sub_213F4E5C0();

    sub_213DE3164(v21, v7, &qword_27C8F7770, &qword_213F51960);
    swift_storeEnumTagMultiPayload();
    sub_213DF7330();
    sub_213F4DBA0();
    return sub_213DE36FC(v21, &qword_27C8F7770, &qword_213F51960);
  }

  else
  {

    *v7 = sub_213F4E9F0();
    swift_storeEnumTagMultiPayload();
    sub_213DF7330();
    return sub_213F4DBA0();
  }
}

uint64_t sub_213DF618C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DF61F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DF6254()
{
  v1 = *(type metadata accessor for CardButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_213DF4B44(v2);
}

uint64_t sub_213DF62B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_213DF4C3C(*(v1 + 24), a1, *(v1 + 16));
}

unint64_t sub_213DF62C8()
{
  result = qword_281182CE8;
  if (!qword_281182CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FE0, &qword_213F52BE0);
    sub_213DF6380();
    sub_213DE3AE4(&qword_281182980, &qword_27C8F76B8, &qword_213F518C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CE8);
  }

  return result;
}

unint64_t sub_213DF6380()
{
  result = qword_281182D38;
  if (!qword_281182D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FE8, &qword_213F52BE8);
    sub_213DF640C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D38);
  }

  return result;
}

unint64_t sub_213DF640C()
{
  result = qword_281182DF0;
  if (!qword_281182DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FF0, &qword_213F52BF0);
    sub_213DF6498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DF0);
  }

  return result;
}

unint64_t sub_213DF6498()
{
  result = qword_281182F88;
  if (!qword_281182F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FF8, &qword_213F52BF8);
    sub_213DF6524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F88);
  }

  return result;
}

unint64_t sub_213DF6524()
{
  result = qword_2811831E0;
  if (!qword_2811831E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8000, &qword_213F52C00);
    sub_213DE3AE4(&qword_2811826E8, &qword_27C8F8008, &qword_213F52C08);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831E0);
  }

  return result;
}

uint64_t sub_213DF6608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213F4D790();
  *a1 = result & 1;
  return result;
}

unint64_t sub_213DF668C()
{
  result = qword_281182FA8;
  if (!qword_281182FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7F90, &qword_213F52B88);
    sub_213DF6718();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FA8);
  }

  return result;
}

unint64_t sub_213DF6718()
{
  result = qword_281183210;
  if (!qword_281183210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7F88, &qword_213F52B80);
    sub_213DE3AE4(&qword_281182738, &qword_27C8F8010, &qword_213F52C40);
    sub_213DE3AE4(&qword_281182830, &qword_27C8F8018, &unk_213F52C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183210);
  }

  return result;
}

uint64_t sub_213DF67FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213DF68AC()
{
  result = qword_281182E70;
  if (!qword_281182E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FB0, &qword_213F52BA8);
    sub_213DF6938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E70);
  }

  return result;
}

unint64_t sub_213DF6938()
{
  result = qword_281183008;
  if (!qword_281183008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FA8, &qword_213F52BA0);
    sub_213DF69C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183008);
  }

  return result;
}

unint64_t sub_213DF69C4()
{
  result = qword_2811832C8;
  if (!qword_2811832C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FA0, &qword_213F52B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7F90, &qword_213F52B88);
    sub_213F4DCA0();
    sub_213DF668C();
    sub_213DF6E28(&qword_281182998, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182980, &qword_27C8F76B8, &qword_213F518C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832C8);
  }

  return result;
}

unint64_t sub_213DF6B08()
{
  result = qword_27C8F8028;
  if (!qword_27C8F8028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FC0, &qword_213F52BB8);
    sub_213DF67FC(&qword_27C8F8020, &qword_27C8F7FB8, &qword_213F52BB0, sub_213DF68AC);
    sub_213DF6E28(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8028);
  }

  return result;
}

unint64_t sub_213DF6BF0()
{
  result = qword_27C8F8038;
  if (!qword_27C8F8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD0, &qword_213F52BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FC0, &qword_213F52BB8);
    sub_213DF6B08();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_2811828C0, &qword_27C8F8030, &qword_213F52C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8038);
  }

  return result;
}

unint64_t sub_213DF6CE4()
{
  result = qword_27C8F8040;
  if (!qword_27C8F8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7F68, &qword_213F52B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD0, &qword_213F52BC8);
    sub_213F4DBC0();
    sub_213DF6BF0();
    sub_213DF6E28(&qword_2811829B0, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_27C8F8048, &qword_27C8F7730, &qword_213F51920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8040);
  }

  return result;
}

uint64_t sub_213DF6E28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213DF6E70()
{
  result = qword_27C8F8050;
  if (!qword_27C8F8050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7F70, &qword_213F52B68);
    sub_213DF6CE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD8, &unk_213F52BD0);
    sub_213F4EC90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD0, &qword_213F52BC8);
    sub_213F4DBC0();
    sub_213DF6BF0();
    sub_213DF6E28(&qword_2811829B0, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_213DF6E28(&qword_27C8F7E10, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8050);
  }

  return result;
}

unint64_t sub_213DF701C()
{
  result = qword_281183308;
  if (!qword_281183308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8060, &qword_213F52C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F77C0, &qword_213F519B0);
    sub_213DE2CCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183308);
  }

  return result;
}

uint64_t sub_213DF70E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7760, &unk_213F51950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213DF7154()
{
  result = qword_281182E48;
  if (!qword_281182E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F80A0, &qword_213F52CF0);
    sub_213DEE7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E48);
  }

  return result;
}

unint64_t sub_213DF71E8()
{
  result = qword_281182D88;
  if (!qword_281182D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8080, &qword_213F52CC8);
    sub_213DF7154();
    sub_213DF6E28(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D88);
  }

  return result;
}

unint64_t sub_213DF72A4()
{
  result = qword_281182B30;
  if (!qword_281182B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F80A8, &unk_213F52CF8);
    sub_213DF7330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B30);
  }

  return result;
}

unint64_t sub_213DF7330()
{
  result = qword_281183220;
  if (!qword_281183220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7770, &qword_213F51960);
    sub_213DF6E28(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183220);
  }

  return result;
}

unint64_t sub_213DF7454()
{
  result = qword_27C8F80B8;
  if (!qword_27C8F80B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F80C0, &qword_213F52D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD8, &unk_213F52BD0);
    sub_213F4DE10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7FD0, &qword_213F52BC8);
    sub_213F4DBC0();
    sub_213DF6BF0();
    sub_213DF6E28(&qword_2811829B0, MEMORY[0x277CDDFF8]);
    swift_getOpaqueTypeConformance2();
    sub_213DF6E28(&qword_281182920, MEMORY[0x277CE0638]);
    swift_getOpaqueTypeConformance2();
    sub_213DF6E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F80B8);
  }

  return result;
}

MapsDesign::CardHeaderExpansionState_optional __swiftcall CardHeaderExpansionState.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.0)
  {
    *v1 = 0;
  }

  else
  {
    if (rawValue == 2.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (rawValue == 1.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

uint64_t sub_213DF769C(char a1)
{
  sub_213F4F880();
  if (*&dbl_213F53710[a1])
  {
    v2 = dbl_213F53710[a1];
  }

  else
  {
    v2 = 0.0;
  }

  MEMORY[0x216052CB0](*&v2);
  return sub_213F4F8C0();
}

uint64_t sub_213DF76F8()
{
  if (*&dbl_213F53710[*v0])
  {
    v1 = dbl_213F53710[*v0];
  }

  else
  {
    v1 = 0.0;
  }

  return MEMORY[0x216052CB0](*&v1);
}

uint64_t sub_213DF7740(uint64_t a1, char a2)
{
  sub_213F4F880();
  if (*&dbl_213F53710[a2])
  {
    v3 = dbl_213F53710[a2];
  }

  else
  {
    v3 = 0.0;
  }

  MEMORY[0x216052CB0](*&v3);
  return sub_213F4F8C0();
}

double sub_213DF77A0@<D0>(double *a1@<X8>)
{
  result = dbl_213F53710[*v1];
  *a1 = result;
  return result;
}

uint64_t CardHeaderSize.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

__n128 CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *(a3 + 16);
  v16 = *(a6 + 16);
  v17 = a10[1].n128_u8[0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v15;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = *a6;
  *(a9 + 72) = v16;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  result = *a10;
  *(a9 + 96) = *a10;
  *(a9 + 112) = v17;
  *(a9 + 144) = a12;
  *(a9 + 152) = a13;
  *(a9 + 120) = a11;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15;
  return result;
}

uint64_t sub_213DF789C()
{
  v1 = v0;
  v2 = sub_213F4E230();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  if ((*(v1 + 176) & 1) == 0)
  {
    v13 = *(v1 + 168);
    v14 = type metadata accessor for CardHeaderText();
    v15 = v14[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    sub_213F4CFF0();
    v16 = *(v1 + 120);
    sub_213F4DA40();
    if (sub_213F4DA30())
    {
      v17 = v14[10];
    }

    else
    {
      v20 = v14[8];
    }

    sub_213F4CFF0();
    goto LABEL_12;
  }

  if ((*(v1 + 160) & 1) == 0)
  {
    v12 = MEMORY[0x277CE0A90];
    goto LABEL_8;
  }

  v11 = *(v1 + 120);
  sub_213F4DA40();
  if ((sub_213F4DA30() & 1) == 0)
  {
    v21 = *(type metadata accessor for CardHeaderText() + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    sub_213F4CFF0();
LABEL_12:
    sub_213F4E110();
    v22 = sub_213F4E0F0();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v19 = sub_213F4E190();
    sub_213DE36FC(v10, &qword_27C8F7668, &qword_213F52190);
    return v19;
  }

  v12 = MEMORY[0x277CE0A70];
LABEL_8:
  (*(v3 + 104))(v6, *v12, v2);
  v18 = sub_213F4E0F0();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_213F4E110();
  v19 = sub_213F4E1A0();
  sub_213DE36FC(v10, &qword_27C8F7668, &qword_213F52190);
  (*(v3 + 8))(v6, v2);
  return v19;
}

uint64_t CardHeaderText.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4D8A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80C8, &qword_213F52D40) + 44);
  *v3 = *(v1 + 120);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80D0, &qword_213F52D48);
  return sub_213DF7C7C(v1, v3 + *(v4 + 44));
}

uint64_t sub_213DF7C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80F8, &qword_213F53528);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v118 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8100, &qword_213F53530);
  v7 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v137 = &v118 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8108, &qword_213F53538);
  v9 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v118 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8110, &qword_213F53540);
  v11 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v118 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8118, &qword_213F53548);
  v13 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v132 = &v118 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8120, &qword_213F53550);
  v15 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v129 = &v118 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8128, &qword_213F53558);
  v151 = *(v17 - 8);
  v152 = v17;
  v18 = *(v151 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v126 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v118 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8130, &qword_213F53560);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v153 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v118 - v26;
  *(&v145 + 1) = sub_213F4D450();
  v123 = *(*(&v145 + 1) - 8);
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](*(&v145 + 1));
  v121 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8138, &qword_213F53568);
  v120 = *(v145 - 8);
  v30 = *(v120 + 64);
  MEMORY[0x28223BE20](v145);
  v119 = &v118 - v31;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8140, &qword_213F53570);
  v124 = *(v146 - 8);
  v32 = *(v124 + 64);
  MEMORY[0x28223BE20](v146);
  v122 = &v118 - v33;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8148, &qword_213F53578);
  v34 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v144 = &v118 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8150, &qword_213F53580);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v148 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v147 = &v118 - v40;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8158, &qword_213F53588);
  v41 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v156 = &v118 - v42;
  v43 = *(a1 + 8);
  *&v167 = *a1;
  *(&v167 + 1) = v43;
  sub_213DBC9EC();

  v44 = sub_213F4E310();
  v140 = v45;
  v141 = v44;
  v47 = v46;
  v142 = v48;
  v49 = *(a1 + 120);
  sub_213F4DA40();
  v50 = sub_213F4DA30();
  v150 = v6;
  v125 = v49;
  if (v50)
  {
    v51 = 1;
LABEL_8:
    LODWORD(v139) = v51;
    goto LABEL_9;
  }

  sub_213F4DA50();
  if ((sub_213F4DA30() & 1) == 0)
  {
    sub_213F4DA60();
    if (sub_213F4DA30())
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    goto LABEL_8;
  }

  LODWORD(v139) = 0;
LABEL_9:
  KeyPath = swift_getKeyPath();
  v138 = sub_213DF789C();
  v53 = swift_getKeyPath();
  v54 = v47 & 1;
  v175 = v47 & 1;
  v55 = *(a1 + 176);
  v149 = v27;
  if ((v55 & 1) != 0 || (v56 = *(a1 + 168), v56 >= 0.0) && v56 < 0.75)
  {
    LOBYTE(v57) = 0;
    v58 = 1;
  }

  else
  {
    v57 = v56 <= 2.0 && v56 >= 0.75;
    v58 = !v57;
  }

  v59 = swift_getKeyPath();
  v176 = v57;
  v60 = a1;
  v61 = *(a1 + 177);
  if (*(a1 + 177))
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  if (*(a1 + 177))
  {
    v63 = 0.0;
  }

  else
  {
    v63 = 8.0;
  }

  if (*(a1 + 177))
  {
    v64 = 0.0;
  }

  else
  {
    v64 = 4.0;
  }

  *(a1 + 177);
  v65 = sub_213F4EF70();
  *&v167 = v141;
  *(&v167 + 1) = v140;
  LOBYTE(v168) = v54;
  *(&v168 + 1) = v180[0];
  DWORD1(v168) = *(v180 + 3);
  *(&v168 + 1) = v142;
  *&v169 = KeyPath;
  BYTE8(v169) = v139;
  *(&v169 + 9) = *v179;
  HIDWORD(v169) = *&v179[3];
  *&v170 = v53;
  *(&v170 + 1) = v138;
  *&v171 = v59;
  *(&v171 + 1) = v58;
  LOBYTE(v172) = v57;
  *(&v172 + 1) = *v178;
  DWORD1(v172) = *&v178[3];
  *(&v172 + 1) = v62;
  *&v173 = 0;
  *(&v173 + 1) = v63;
  *v174 = v64;
  BYTE8(v174[0]) = 0;
  HIDWORD(v174[0]) = *&v177[3];
  *(v174 + 9) = *v177;
  *&v174[1] = v65;
  LODWORD(v142) = v61;
  BYTE8(v174[1]) = v61;
  v66 = *(a1 + 32);
  v67 = v66 == 255;
  if (v66 == 255)
  {
    LOBYTE(v66) = 17;
  }

  v165 = v173;
  v166[0] = v174[0];
  *(v166 + 9) = *(v174 + 9);
  v161 = v169;
  v162 = v170;
  v163 = v171;
  v164 = v172;
  v159 = v167;
  v160 = v168;
  v68 = vdup_n_s32(v67);
  v69.i64[0] = v68.u32[0];
  v69.i64[1] = v68.u32[1];
  v157 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v69, 0x3FuLL)), xmmword_213F52D30, *(a1 + 16));
  v158 = v66;
  sub_213DD76C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8160, &qword_213F53620);
  sub_213DF9FFC();
  v70 = v156;
  v71 = v60;
  sub_213F4E6D0();
  sub_213DE36FC(&v167, &qword_27C8F8160, &qword_213F53620);

  v72 = *(v60 + 144);
  if (v72)
  {
    v73 = *(v60 + 152);
    v74 = swift_allocObject();
    *(v74 + 16) = v72;
    *(v74 + 24) = v73;
    MEMORY[0x28223BE20](v74);
    *(&v118 - 2) = v70;
    v140 = v73;
    sub_213DD74C4(v72);
    v139 = sub_213DFA560(&qword_27C8F81F8, &qword_27C8F8158, &qword_213F53588, sub_213DF9FFC);

    v141 = v60;
    v75 = v119;
    sub_213F4EB00();
    v76 = v121;
    sub_213F4D440();
    v77 = sub_213DE3AE4(&qword_27C8F81F0, &qword_27C8F8138, &qword_213F53568);
    v78 = sub_213DFA614(&qword_281182C78, MEMORY[0x277CDDB18]);
    v79 = v122;
    v80 = v145;
    sub_213F4E3B0();
    (*(v123 + 8))(v76, *(&v80 + 1));
    (*(v120 + 8))(v75, v80);
    v81 = v124;
    v82 = v146;
    (*(v124 + 16))(v144, v79, v146);
    swift_storeEnumTagMultiPayload();
    v159 = v80;
    *&v160 = v77;
    *(&v160 + 1) = v78;
    swift_getOpaqueTypeConformance2();
    v83 = v147;
    v71 = v141;
    sub_213F4DBA0();
    sub_213DD7558(v72);
    (*(v81 + 8))(v79, v82);
  }

  else
  {
    sub_213DE3164(v70, v144, &qword_27C8F8158, &qword_213F53588);
    swift_storeEnumTagMultiPayload();
    v84 = sub_213DE3AE4(&qword_27C8F81F0, &qword_27C8F8138, &qword_213F53568);
    v85 = sub_213DFA614(&qword_281182C78, MEMORY[0x277CDDB18]);
    v159 = v145;
    *&v160 = v84;
    *(&v160 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_213DFA560(&qword_27C8F81F8, &qword_27C8F8158, &qword_213F53588, sub_213DF9FFC);
    v83 = v147;
    sub_213F4DBA0();
  }

  v87 = v149;
  v86 = v150;
  if (*(v71 + 48) || *(v71 + 88))
  {
    sub_213F4E210();
    sub_213F4E180();
    v88 = sub_213F4E1D0();

    *v86 = sub_213F4D8A0();
    *(v86 + 8) = 0;
    *(v86 + 16) = 0;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8208, &qword_213F53688);
    sub_213DF8D2C(v71, v86 + *(v89 + 44));
    sub_213F4DA40();
    if (sub_213F4DA30())
    {
      v90 = 1;
    }

    else
    {
      sub_213F4DA50();
      if (sub_213F4DA30())
      {
        v90 = 0;
      }

      else
      {
        sub_213F4DA60();
        if (sub_213F4DA30())
        {
          v90 = 2;
        }

        else
        {
          v90 = 1;
        }
      }
    }

    v91 = swift_getKeyPath();
    v92 = v86;
    v93 = v137;
    sub_213DE2B44(v92, v137, &qword_27C8F80F8, &qword_213F53528);
    v94 = v93 + *(v136 + 36);
    *v94 = v91;
    *(v94 + 8) = v90;
    v95 = swift_getKeyPath();
    v96 = v134;
    sub_213DE2B44(v93, v134, &qword_27C8F8100, &qword_213F53530);
    v97 = (v96 + *(v135 + 36));
    *v97 = v95;
    v97[1] = v88;
    v98 = v131;
    sub_213DE2B44(v96, v131, &qword_27C8F8108, &qword_213F53538);
    *(v98 + *(v133 + 36)) = v62;
    v99 = v98;
    v100 = v132;
    sub_213DE2B44(v99, v132, &qword_27C8F8110, &qword_213F53540);
    v101 = v142;
    v102 = 12.0;
    if (v142)
    {
      v102 = 0.0;
    }

    v103 = v129;
    v104 = v100 + *(v130 + 36);
    *v104 = 0;
    *(v104 + 8) = v102;
    sub_213DE2B44(v100, v103, &qword_27C8F8118, &qword_213F53548);
    v105 = v103 + *(v128 + 36);
    *v105 = v64;
    *(v105 + 8) = 0;
    v106 = sub_213F4EF70();
    v107 = v126;
    sub_213DE2B44(v103, v126, &qword_27C8F8120, &qword_213F53550);
    v108 = v152;
    v109 = v107 + *(v152 + 36);
    *v109 = v106;
    *(v109 + 8) = v101;
    v110 = v107;
    v111 = v127;
    sub_213DE2B44(v110, v127, &qword_27C8F8128, &qword_213F53558);
    sub_213DE2B44(v111, v87, &qword_27C8F8128, &qword_213F53558);
    v112 = 0;
  }

  else
  {
    v112 = 1;
    v108 = v152;
  }

  (*(v151 + 56))(v87, v112, 1, v108);
  v113 = v148;
  sub_213DC1A48(v83, v148);
  v114 = v153;
  sub_213DE3164(v87, v153, &qword_27C8F8130, &qword_213F53560);
  v115 = v154;
  sub_213DC1A48(v113, v154);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8200, &qword_213F53680);
  sub_213DE3164(v114, v115 + *(v116 + 48), &qword_27C8F8130, &qword_213F53560);
  sub_213DE36FC(v87, &qword_27C8F8130, &qword_213F53560);
  sub_213DC1AB8(v83);
  sub_213DE36FC(v114, &qword_27C8F8130, &qword_213F53560);
  sub_213DC1AB8(v113);
  return sub_213DE36FC(v156, &qword_27C8F8158, &qword_213F53588);
}

unint64_t sub_213DF8C64()
{
  result = qword_27C8F80D8;
  if (!qword_27C8F80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F80D8);
  }

  return result;
}

unint64_t sub_213DF8CBC()
{
  result = qword_27C8F80E0;
  if (!qword_27C8F80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F80E0);
  }

  return result;
}

uint64_t sub_213DF8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8210, &qword_213F53690);
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v5 = &v77 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8218, &qword_213F53698);
  v6 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8220, &qword_213F536A0);
  v95 = *(v8 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v8);
  v88 = &v77 - v10;
  v11 = type metadata accessor for CardHeaderText();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = v13;
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8228, &qword_213F536A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v87 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8230, &qword_213F536B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v94 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v77 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8238, &qword_213F536B8);
  v23 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v25 = &v77 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8240, &qword_213F536C0);
  v26 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8248, &qword_213F536C8);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v82 = &v77 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8250, &qword_213F536D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v92 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = *(a1 + 48);
  v98 = &v77 - v38;
  v97 = v8;
  if (v37)
  {
    v77 = v30;
    v78 = v29;
    v79 = v14;
    v80 = v15;
    v81 = v5;
    *&v104 = *(a1 + 40);
    *(&v104 + 1) = v37;
    sub_213DBC9EC();

    v39 = sub_213F4E310();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = sub_213F4DDB0();
    if (*(a1 + 88))
    {
      v47 = 0;
      v48 = 1;
    }

    else
    {
      v54 = *(a1 + 120);
      sub_213F4DA40();
      v55 = sub_213F4DA30();
      v47 = v55;
      v48 = ~v55 & 1;
    }

    KeyPath = swift_getKeyPath();
    v108 = v43 & 1;
    v107 = v47 & 1;
    *&v104 = v39;
    *(&v104 + 1) = v41;
    LOBYTE(v105) = v43 & 1;
    *(&v105 + 1) = v45;
    *v106 = v46;
    *&v106[8] = KeyPath;
    *&v106[16] = v48;
    v106[24] = v47 & 1;
    v57 = *(a1 + 72);
    v101 = v104;
    v102 = v105;
    *v103 = *v106;
    *&v103[9] = *&v106[9];
    if (v57 == 255)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8298, &qword_213F536F8);
      sub_213DFA984();
      sub_213F4E6D0();
    }

    else
    {
      v99 = *(a1 + 56);
      v100 = v57;
      sub_213DD76C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8298, &qword_213F536F8);
      sub_213DFA984();
      sub_213F4E6D0();
    }

    v8 = v97;
    v50 = v95;
    v49 = v81;
    v58 = v78;
    sub_213DE3164(v28, v25, &qword_27C8F8240, &qword_213F536C0);
    swift_storeEnumTagMultiPayload();
    sub_213DFA560(&qword_27C8F82C0, &qword_27C8F8240, &qword_213F536C0, sub_213DFA984);
    v59 = v82;
    sub_213F4DBA0();
    sub_213DE36FC(&v104, &qword_27C8F8298, &qword_213F536F8);
    sub_213DE36FC(v28, &qword_27C8F8240, &qword_213F536C0);
    v60 = v98;
    sub_213DE2B44(v59, v98, &qword_27C8F8248, &qword_213F536C8);
    (*(v77 + 56))(v60, 0, 1, v58);
    v15 = v80;
    v14 = v79;
    v51 = *(a1 + 88);
    if (v51)
    {
      goto LABEL_11;
    }

LABEL_5:
    v52 = 1;
    v53 = v93;
    goto LABEL_15;
  }

  (*(v30 + 56))();
  v49 = v5;
  v50 = v95;
  v51 = *(a1 + 88);
  if (!v51)
  {
    goto LABEL_5;
  }

LABEL_11:
  v61 = *(a1 + 80);
  sub_213DFA6B4(a1, v14);
  v62 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v63 = swift_allocObject();
  v64 = sub_213DFA718(v14, v63 + v62);
  MEMORY[0x28223BE20](v64);
  *(&v77 - 2) = v61;
  *(&v77 - 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8260, &qword_213F536E0);
  sub_213DFA7E8();
  v65 = v87;
  sub_213F4EB00();
  v66 = sub_213F4DD90();
  v67 = (v65 + *(v15 + 36));
  *v67 = v66;
  v67[1] = 1061997773;
  v68 = *(a1 + 112);
  if (v68 == 255)
  {
    *&v104 = 0xD000000000000013;
    *(&v104 + 1) = 0x8000000213FA4E40;
    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  }

  else
  {
    v104 = *(a1 + 96);
    LOBYTE(v105) = v68;
    sub_213DD76C0();
  }

  sub_213DFA8A0();
  v69 = v89;
  sub_213F4E6D0();

  v8 = v97;
  sub_213DE3164(v69, v49, &qword_27C8F8218, &qword_213F53698);
  swift_storeEnumTagMultiPayload();
  sub_213DFA560(&qword_27C8F8290, &qword_27C8F8218, &qword_213F53698, sub_213DFA8A0);
  v70 = v88;
  sub_213F4DBA0();
  sub_213DE36FC(v69, &qword_27C8F8218, &qword_213F53698);
  sub_213DE36FC(v65, &qword_27C8F8228, &qword_213F536A8);
  v53 = v93;
  sub_213DE2B44(v70, v93, &qword_27C8F8220, &qword_213F536A0);
  v52 = 0;
LABEL_15:
  (*(v50 + 56))(v53, v52, 1, v8);
  v71 = v98;
  v72 = v92;
  sub_213DE3164(v98, v92, &qword_27C8F8250, &qword_213F536D0);
  v73 = v94;
  sub_213DE3164(v53, v94, &qword_27C8F8230, &qword_213F536B0);
  v74 = v96;
  sub_213DE3164(v72, v96, &qword_27C8F8250, &qword_213F536D0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8258, &qword_213F536D8);
  sub_213DE3164(v73, v74 + *(v75 + 48), &qword_27C8F8230, &qword_213F536B0);
  sub_213DE36FC(v53, &qword_27C8F8230, &qword_213F536B0);
  sub_213DE36FC(v71, &qword_27C8F8250, &qword_213F536D0);
  sub_213DE36FC(v73, &qword_27C8F8230, &qword_213F536B0);
  return sub_213DE36FC(v72, &qword_27C8F8250, &qword_213F536D0);
}

uint64_t sub_213DF98D4@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_213F4D910();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4E9F0();
  v7 = sub_213F4E320();
  v9 = v8;
  v11 = v10;
  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_213F4E190();
  sub_213DE36FC(v4, &qword_27C8F7668, &qword_213F52190);
  v13 = sub_213F4E2E0();
  v15 = v14;
  LOBYTE(v4) = v16;

  sub_213DBCA40(v7, v9, v11 & 1);

  sub_213F4D8C0();
  sub_213DBCA40(v13, v15, v4 & 1);

  sub_213F4D8F0();
  sub_213F4D930();
  v17 = sub_213F4E2F0();
  v19 = v18;
  LOBYTE(v13) = v20;
  v22 = v21;
  result = swift_getKeyPath();
  v24 = v25;
  *v25 = v17;
  v24[1] = v19;
  *(v24 + 16) = v13 & 1;
  v24[3] = v22;
  v24[4] = result;
  v24[5] = 1;
  *(v24 + 48) = 0;
  return result;
}

uint64_t sub_213DF9B98@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4D8A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80C8, &qword_213F52D40) + 44);
  *v3 = *(v1 + 120);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80D0, &qword_213F52D48);
  return sub_213DF7C7C(v1, v3 + *(v4 + 44));
}

uint64_t getEnumTagSinglePayload for CardHeaderExpansionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CardHeaderExpansionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign0aB19AccessibilityStringOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0x11)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_213DF9DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_213DF9E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CardHeaderText()
{
  result = qword_281187C10;
  if (!qword_281187C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213DF9F00()
{
  sub_213DF9FAC();
  if (v0 <= 0x3F)
  {
    sub_213DEEDC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213DF9FAC()
{
  if (!qword_281183560)
  {
    v0 = sub_213F4F6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_281183560);
    }
  }
}

unint64_t sub_213DF9FFC()
{
  result = qword_27C8F8168;
  if (!qword_27C8F8168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8160, &qword_213F53620);
    sub_213DFA0B4();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8168);
  }

  return result;
}

unint64_t sub_213DFA0B4()
{
  result = qword_27C8F8170;
  if (!qword_27C8F8170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8178, &qword_213F53628);
    sub_213DFA140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8170);
  }

  return result;
}

unint64_t sub_213DFA140()
{
  result = qword_27C8F8180;
  if (!qword_27C8F8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8188, &qword_213F53630);
    sub_213DFA1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8180);
  }

  return result;
}

unint64_t sub_213DFA1CC()
{
  result = qword_27C8F8190;
  if (!qword_27C8F8190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8198, &qword_213F53638);
    sub_213DFA258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8190);
  }

  return result;
}

unint64_t sub_213DFA258()
{
  result = qword_27C8F81A0;
  if (!qword_27C8F81A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81A8, &qword_213F53640);
    sub_213DFA310();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81A0);
  }

  return result;
}

unint64_t sub_213DFA310()
{
  result = qword_27C8F81B0;
  if (!qword_27C8F81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81B8, &qword_213F53648);
    sub_213DFA3C8();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81B0);
  }

  return result;
}

unint64_t sub_213DFA3C8()
{
  result = qword_27C8F81C0;
  if (!qword_27C8F81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81C8, &qword_213F53650);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81C0);
  }

  return result;
}

unint64_t sub_213DFA480()
{
  result = qword_27C8F81D0;
  if (!qword_27C8F81D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81D8, &qword_213F53658);
    sub_213DFA50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81D0);
  }

  return result;
}

unint64_t sub_213DFA50C()
{
  result = qword_27C8F81E0;
  if (!qword_27C8F81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81E0);
  }

  return result;
}

uint64_t sub_213DFA560(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213DFA614(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213DFA614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213DFA65C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_213DFA6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardHeaderText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DFA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardHeaderText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DFA77C()
{
  v1 = *(type metadata accessor for CardHeaderText() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 136);
  return (*(v2 + 128))();
}

uint64_t sub_213DFA7E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213DF98D4(a1);
}

unint64_t sub_213DFA7E8()
{
  result = qword_27C8F8268;
  if (!qword_27C8F8268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8260, &qword_213F536E0);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8268);
  }

  return result;
}

unint64_t sub_213DFA8A0()
{
  result = qword_27C8F8270;
  if (!qword_27C8F8270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8228, &qword_213F536A8);
    sub_213DE3AE4(&qword_27C8F8278, &qword_27C8F8280, &qword_213F536E8);
    sub_213DE3AE4(&qword_281182900, &qword_27C8F8288, &qword_213F536F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8270);
  }

  return result;
}

unint64_t sub_213DFA984()
{
  result = qword_27C8F82A0;
  if (!qword_27C8F82A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8298, &qword_213F536F8);
    sub_213DFAA3C();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82A0);
  }

  return result;
}

unint64_t sub_213DFAA3C()
{
  result = qword_27C8F82A8;
  if (!qword_27C8F82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82B0, &unk_213F53700);
    sub_213DFA480();
    sub_213DE3AE4(&qword_2811828F8, &qword_27C8F82B8, &qword_213F5EBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82A8);
  }

  return result;
}

uint64_t CoverPhotoCardOrnamentViewModel.__allocating_init(imageProvider:placeholderColor:editing:)(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_213DFDB0C(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t CoverPhotoCardOrnamentViewModel.init(imageProvider:placeholderColor:editing:)(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_213DFDA60(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t CoverPhotoCardOrnamentViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10MapsDesign31CoverPhotoCardOrnamentViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CoverPhotoCardOrnamentViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10MapsDesign31CoverPhotoCardOrnamentViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213DFADD0@<X0>(uint64_t a1@<X8>)
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

uint64_t CoverPhotoCardOrnament.init(viewModel:expansionProgress:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CoverPhotoCardOrnament(0);
  v7 = a2 + v6[7];
  result = sub_213F4EA90();
  *v7 = v9;
  *(v7 + 1) = v10;
  *(a2 + v6[5]) = a1;
  *(a2 + v6[6]) = a3;
  return result;
}

double sub_213DFB090()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_213DFADD0(&v16 - v7);
  sub_213F4D280();
  sub_213F4D270();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  v10 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v10 >= 0.0 && v10 < 0.95)
  {
    v14 = v10 * 72.0;
    v15 = 0.0;
    return v14 + v15;
  }

  result = 0.0;
  if (v10 >= 0.95 && v10 <= 2.0)
  {
    v14 = (v10 + -1.0) * 88.0;
    v15 = 72.0;
    return v14 + v15;
  }

  return result;
}

double sub_213DFB214()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_213DFADD0(&v16 - v7);
  sub_213F4D280();
  sub_213F4D270();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  v10 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v10 >= 0.0 && v10 < 0.95)
  {
    v14 = v10 * 16.0;
    v15 = 0.0;
    return v14 + v15;
  }

  result = 0.0;
  if (v10 >= 0.95 && v10 <= 2.0)
  {
    v14 = (v10 + -1.0) * 10.0;
    v15 = 16.0;
    return v14 + v15;
  }

  return result;
}

double sub_213DFB38C()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_213DFADD0(&v16 - v7);
  sub_213F4D280();
  sub_213F4D270();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  v10 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v10 >= 0.0 && v10 < 0.95)
  {
    v14 = v10 * 24.0;
    v15 = 0.0;
    return v14 + v15;
  }

  result = 0.0;
  if (v10 >= 0.95 && v10 <= 2.0)
  {
    v14 = (v10 + -1.0) * 12.0;
    v15 = 24.0;
    return v14 + v15;
  }

  return result;
}

double sub_213DFB504()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_213DFADD0(&v17 - v7);
  sub_213F4D280();
  sub_213F4D270();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v9(v8, v1);
  v10 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v10 >= 0.0 && v10 < 0.95)
  {
    v16 = v10 * 4.0;
    v15 = 0.0;
    return v16 + v15;
  }

  result = 0.0;
  if (v10 >= 0.95 && v10 <= 2.0)
  {
    v14 = v10 + -1.0;
    v15 = 4.0;
    v16 = v14 * 4.0;
    return v16 + v15;
  }

  return result;
}

uint64_t CoverPhotoCardOrnament.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82D0, &qword_213F53778);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v24 - v3);
  v5 = type metadata accessor for CoverPhotoCardOrnament(0);
  v6 = *(*(v0 + *(v5 + 20)) + 56);
  if (v6)
  {
    v7 = *(*(v0 + *(v5 + 20)) + 56);
  }

  else
  {
    v7 = [objc_opt_self() systemBackgroundColor];
    v6 = 0;
  }

  v8 = v6;
  *v4 = sub_213F4EEC0();
  v4[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82D8, &qword_213F53780);
  sub_213DFB90C(v0, v7, v4 + *(v10 + 44));
  v11 = sub_213DFB214();
  v12 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82E0, &qword_213F53788) + 36));
  v13 = type metadata accessor for ClipShadowModifier();
  v14 = v13[5];
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_213F4D950();
  (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
  sub_213F4E8C0();
  v17 = sub_213F4E900();

  *v12 = v11;
  *(v12 + v13[6]) = v17;
  *(v12 + v13[7]) = 6.0;
  *(v12 + v13[8]) = 0.0;
  *(v12 + v13[9]) = 2.0;
  v18 = sub_213F4EEE0();
  v20 = v19;
  v21 = v4 + *(v1 + 36);
  sub_213DFC75C(v0, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82E8, &qword_213F53790) + 36));
  *v22 = v18;
  v22[1] = v20;
  v24[0] = 0x6F68507265766F43;
  v24[1] = 0xEA00000000006F74;
  MEMORY[0x216052710](0x6567616D49, 0xE500000000000000);
  sub_213DFDC34();
  sub_213F4E6D0();

  return sub_213DC1CFC(v4);
}

uint64_t sub_213DFB90C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a3;
  v5 = sub_213F4EA00();
  v118 = *(v5 - 8);
  v119 = v5;
  v6 = *(v118 + 64);
  MEMORY[0x28223BE20](v5);
  v117 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8460, &unk_213F53C68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v116 - v10;
  v11 = type metadata accessor for CoverPhotoCardOrnament(0);
  v12 = v11 - 8;
  v120 = *(v11 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapsDesignImage();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v21 = *(v20 - 8);
  v122 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v116 - v23;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8468, &qword_213F53C78);
  v24 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v130 = &v116 - v25;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8470, &qword_213F53C80);
  v26 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v116 - v27;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8478, &qword_213F53C88);
  v28 = *(*(v126 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v126);
  v131 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v125 = &v116 - v32;
  MEMORY[0x28223BE20](v31);
  v133 = &v116 - v33;
  v34 = *(v12 + 28);
  v121 = a1;
  v35 = *(a1 + v34);
  v36 = v16[10];
  v124 = v35;
  sub_213DEBAA8(v35 + 16, &v19[v36]);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  sub_213DFE7E8(a1, v14, type metadata accessor for CoverPhotoCardOrnament);
  v38 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v39 = swift_allocObject();
  sub_213DFE8B8(v14, v39 + v38);
  v40 = a2;
  v41 = sub_213F4EEE0();
  v120 = v42;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v43 = v16[7];
  *&v19[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v44 = v16[8];
  *&v19[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v45 = v16[9];
  *&v19[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v46 = &v19[v16[14]];
  v47 = &v19[v16[15]];
  v48 = &v19[v16[16]];
  v147 = 0uLL;
  *(&v148 + 7) = 0;
  *&v148 = 0;
  sub_213F4EA90();
  v49 = v160;
  v50 = BYTE8(v160);
  v51 = BYTE9(v160);
  v52 = BYTE10(v160);
  v53 = v161;
  *v48 = v159;
  *(v48 + 2) = v49;
  v48[24] = v50;
  v48[25] = v51;
  v48[26] = v52;
  *(v48 + 4) = v53;
  v54 = v16[17];
  *&v147 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v19[v54] = v159;
  v19[v16[11]] = 1;
  v55 = &v19[v16[12]];
  v56 = v120;
  *v55 = v41;
  v55[1] = v56;
  v19[v16[13]] = 1;
  *v46 = sub_213DFE8B0;
  v46[1] = v37;
  *v47 = sub_213DFE91C;
  v47[1] = v39;
  v57 = v123;
  v58 = v121;
  sub_213DFB090();
  sub_213DFB090();
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DFE7E8(v19, v57, type metadata accessor for MapsDesignImage);
  v59 = (v57 + *(v122 + 44));
  v60 = v172;
  *v59 = v171;
  v59[1] = v60;
  v59[2] = v173;
  sub_213DFE850(v19, type metadata accessor for MapsDesignImage);
  v61 = *(v58 + *(v12 + 32));
  v62 = v61 < 0.95 && v61 >= 0.0;
  if (v62)
  {
    v63 = v57;
    v64 = v130;
    sub_213DE2B44(v63, v130, &qword_27C8F7BE8, &unk_213F52220);
    *(v64 + *(v128 + 36)) = v61 + 0.0;
    v65 = 8.0 - v61 * 8.0;
  }

  else
  {
    v66 = v61 >= 0.95;
    v67 = v61 <= 2.0;
    v68 = (v61 + -1.0) * 0.0;
    v69 = v57;
    v64 = v130;
    sub_213DE2B44(v69, v130, &qword_27C8F7BE8, &unk_213F52220);
    if (v66 && v67)
    {
      v70 = v68 + 1.0;
    }

    else
    {
      v70 = 0.0;
    }

    *(v64 + *(v128 + 36)) = v70;
    if (v66 && v67)
    {
      v65 = v68 + 0.0;
    }

    else
    {
      v65 = 8.0;
    }
  }

  v71 = v127;
  sub_213DE2B44(v64, v127, &qword_27C8F8468, &qword_213F53C78);
  v72 = v71 + *(v129 + 36);
  *v72 = v65;
  *(v72 + 8) = 0;
  v73 = v71;
  v74 = v125;
  sub_213DE2B44(v73, v125, &qword_27C8F8470, &qword_213F53C80);
  *(v74 + *(v126 + 36)) = 0x3FF0000000000000;
  sub_213DE2B44(v74, v133, &qword_27C8F8478, &qword_213F53C88);
  if (*(v124 + 64) == 1)
  {
    sub_213F4E9F0();
    v75 = v116;
    sub_213F4DA80();
    v76 = sub_213F4DA90();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    sub_213F4EA20();

    sub_213DE36FC(v75, &qword_27C8F8460, &unk_213F53C68);
    v78 = v117;
    v77 = v118;
    v79 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277CE0FE0], v119);
    v80 = 0.0;
    v130 = sub_213F4EA40();

    (*(v77 + 8))(v78, v79);
    sub_213DFB38C();
    sub_213DFB38C();
    sub_213F4EEE0();
    sub_213F4D0C0();
    v81 = v175;
    v128 = v176;
    v129 = v174;
    v82 = v177;
    v126 = v179;
    v127 = v178;
    v83 = sub_213F4E8F0();
    v84 = [objc_opt_self() systemBlueColor];
    v85 = sub_213F4E870();
    LOBYTE(v159) = v81;
    LOBYTE(v147) = v82;
    sub_213F4E8C0();
    v86 = sub_213F4E900();

    sub_213DFB504();
    v87 = sub_213F4E050();
    sub_213F4CDA0();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    LOBYTE(v146[0]) = 0;
    if (v62)
    {
      v80 = v61 + 0.0;
    }

    else if (v61 >= 0.95 && v61 <= 2.0)
    {
      v80 = (v61 + -1.0) * 0.0 + 1.0;
    }

    if (v62)
    {
      v96 = 8.0 - v61 * 8.0;
    }

    else
    {
      v96 = 8.0;
      if (v61 >= 0.95 && v61 <= 2.0)
      {
        v96 = (v61 + -1.0) * 0.0 + 0.0;
      }
    }

    sub_213F4F010();
    sub_213F4D0F0();
    sub_213F4D100();
    sub_213F4D110();

    sub_213F4D0E0();
    sub_213F4D110();

    MEMORY[0x216052350](v97, 0.5, 0.7, 0.0);
    v98 = sub_213F4D120();

    *&v147 = v130;
    *(&v147 + 1) = v129;
    LOBYTE(v148) = v81;
    *(&v148 + 1) = v128;
    LOBYTE(v149) = v82;
    *(&v149 + 1) = v127;
    *&v150 = v126;
    *(&v150 + 1) = v83;
    *&v151 = v85;
    *(&v151 + 1) = v86;
    v152 = 0x4040000000000000uLL;
    *&v153 = 0;
    *(&v153 + 1) = 0x4000000000000000;
    LOBYTE(v154) = v87;
    *(&v154 + 1) = v89;
    *&v155 = v91;
    *(&v155 + 1) = v93;
    *&v156 = v95;
    BYTE8(v156) = 0;
    *&v157 = v80;
    *(&v157 + 1) = v96;
    LOBYTE(v158) = 0;
    *(&v158 + 1) = v98;
    nullsub_1(&v147);
    v167 = v155;
    v168 = v156;
    v169 = v157;
    v170 = v158;
    v163 = v151;
    v164 = v152;
    v165 = v153;
    v166 = v154;
    v159 = v147;
    v160 = v148;
    v161 = v149;
    v162 = v150;
  }

  else
  {
    sub_213DFE97C(&v159);
  }

  v99 = v133;
  v100 = v131;
  sub_213DE3164(v133, v131, &qword_27C8F8478, &qword_213F53C88);
  v142 = v167;
  v143 = v168;
  v144 = v169;
  v145 = v170;
  v138 = v163;
  v139 = v164;
  v140 = v165;
  v141 = v166;
  v134 = v159;
  v135 = v160;
  v136 = v161;
  v137 = v162;
  v101 = v132;
  sub_213DE3164(v100, v132, &qword_27C8F8478, &qword_213F53C88);
  v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8480, &qword_213F53C90) + 48);
  v103 = v143;
  v146[8] = v142;
  v146[9] = v143;
  v104 = v144;
  v105 = v145;
  v146[10] = v144;
  v146[11] = v145;
  v106 = v138;
  v107 = v139;
  v146[4] = v138;
  v146[5] = v139;
  v108 = v140;
  v109 = v141;
  v146[6] = v140;
  v146[7] = v141;
  v110 = v134;
  v111 = v135;
  v146[0] = v134;
  v146[1] = v135;
  v112 = v136;
  v113 = v137;
  v146[2] = v136;
  v146[3] = v137;
  v114 = (v101 + v102);
  v114[8] = v142;
  v114[9] = v103;
  v114[10] = v104;
  v114[11] = v105;
  v114[4] = v106;
  v114[5] = v107;
  v114[6] = v108;
  v114[7] = v109;
  *v114 = v110;
  v114[1] = v111;
  v114[2] = v112;
  v114[3] = v113;
  sub_213DE3164(v146, &v147, &qword_27C8F8488, &qword_213F53C98);
  sub_213DE36FC(v99, &qword_27C8F8478, &qword_213F53C88);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v147 = v134;
  v148 = v135;
  v149 = v136;
  v150 = v137;
  sub_213DE36FC(&v147, &qword_27C8F8488, &qword_213F53C98);
  return sub_213DE36FC(v100, &qword_27C8F8478, &qword_213F53C88);
}

uint64_t sub_213DFC65C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_213F4E870();
  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8490, &unk_213F53CA0);
  result = sub_213DE3AE4(&qword_27C8F8498, &qword_27C8F8490, &unk_213F53CA0);
  *(a2 + 32) = result;
  *a2 = v4;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_213DFC6E8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213DFC75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D470();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-v11];
  v13 = (a1 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 28));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v34) = v14;
  *(&v34 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v33[7])
  {
    v16 = 1;
  }

  else
  {
    v17 = sub_213DFB214();
    v18 = *(v4 + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_213F4D950();
    (*(*(v20 - 8) + 104))(v7 + v18, v19, v20);
    *v7 = v17;
    v7[1] = v17;
    sub_213F4E8C0();
    v21 = sub_213F4E900();

    sub_213F4CF60();
    v22 = MEMORY[0x277CDFC08];
    sub_213DFE7E8(v7, v12, MEMORY[0x277CDFC08]);
    v23 = *&v34 * 0.5;
    v24 = &v12[*(v8 + 68)];
    sub_213DFE7E8(v7, v24, v22);
    *(v24 + *(sub_213F4D460() + 20)) = v23;
    v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
    v26 = v35;
    *v25 = v34;
    *(v25 + 16) = v26;
    *(v25 + 32) = v36;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
    *(v24 + *(v27 + 52)) = v21;
    *(v24 + *(v27 + 56)) = 256;
    v28 = sub_213F4EEE0();
    v30 = v29;
    sub_213DFE850(v7, MEMORY[0x277CDFC08]);
    v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
    *v31 = v28;
    v31[1] = v30;
    sub_213DC1F6C(v12, a2);
    v16 = 0;
  }

  return (*(v9 + 56))(a2, v16, 1, v8);
}

__n128 PhotoFanCardOrnamentViewModel.init(leadingImageProvider:trailingImageProvider:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_213DD7500(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

__n128 PhotoFanCardOrnament.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_213DFCAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = type metadata accessor for MapsDesignImage();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v13[v10[10]]);
  v14 = sub_213F4EEE0();
  v16 = v15;
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v17 = v10[7];
  *&v13[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v18 = v10[8];
  *&v13[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v19 = v10[9];
  *&v13[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v20 = &v13[v10[14]];
  v21 = &v13[v10[15]];
  v22 = &v13[v10[16]];
  v64 = 0uLL;
  *(&v65 + 7) = 0;
  *&v65 = 0;
  sub_213F4EA90();
  v23 = v62;
  v24 = BYTE8(v62);
  v25 = BYTE9(v62);
  v26 = BYTE10(v62);
  v27 = v63;
  *v22 = v61;
  *(v22 + 2) = v23;
  v22[24] = v24;
  v22[25] = v25;
  v22[26] = v26;
  *(v22 + 4) = v27;
  v28 = v10[17];
  *&v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v13[v28] = v61;
  v13[v10[11]] = 1;
  v29 = &v13[v10[12]];
  *v29 = v14;
  v29[1] = v16;
  v13[v10[13]] = 1;
  *v20 = 0;
  *(v20 + 1) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_213DFE7E8(v13, a2, type metadata accessor for MapsDesignImage);
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v30 = 0x3FF0000000000000;
  *(v30 + 8) = 0;
  sub_213DFE850(v13, type metadata accessor for MapsDesignImage);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8358, &qword_213F537C8) + 36));
  v32 = v62;
  *v31 = v61;
  v31[1] = v32;
  v31[2] = v63;
  v33 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8348, &qword_213F537C0) + 36));
  v34 = sub_213F4D470();
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_213F4D950();
  v38 = *(*(v37 - 8) + 104);
  v38(&v33[v35], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  v59 = _Q0;
  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v44 = sub_213F4EEE0();
  v60 = v45;
  v46 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0) + 36);
  v38(&v8[*(v34 + 20)], v36, v37);
  *v8 = v59;
  *&v8[*(v5 + 60)] = sub_213F4E8D0();
  *&v8[*(v5 + 64)] = 256;
  v47 = sub_213F4E8F0();
  sub_213F4CF60();
  sub_213DFE7E8(v8, v46, MEMORY[0x277CDFC08]);
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8418, &qword_213F53C20) + 36);
  v49 = v65;
  *v48 = v64;
  *(v48 + 16) = v49;
  *(v48 + 32) = v66;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8420, &qword_213F53C28);
  *(v46 + *(v50 + 52)) = v47;
  *(v46 + *(v50 + 56)) = 256;
  v51 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8428, &qword_213F53C30) + 36);
  sub_213DE3164(v8, v51, &qword_27C8F8410, &qword_213F644F0);
  v52 = sub_213F4EEE0();
  v54 = v53;
  sub_213DE36FC(v8, &qword_27C8F8410, &qword_213F644F0);
  v55 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
  *v55 = v52;
  v55[1] = v54;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8378, &qword_213F537E0);
  v57 = (v46 + *(result + 36));
  v58 = v60;
  *v57 = v44;
  v57[1] = v58;
  return result;
}

uint64_t PhotoFanCardOrnament.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8320, &qword_213F537A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8328, &unk_213F537B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v34 - v14);
  sub_213DE3164(v2 + 40, &v35, &qword_27C8F7AB8, &qword_213F522C0);
  if (*(&v36 + 1))
  {
    sub_213DD7500(&v35, v41);
    *v15 = sub_213F4EEE0();
    v15[1] = v16;
    v17 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8380, &qword_213F537E8) + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8388, &qword_213F537F0);
    v18 = swift_allocObject();
    v34[2] = v4;
    v19 = v18;
    *(v18 + 16) = xmmword_213F51DE0;
    *(v18 + 32) = -1;
    sub_213DEBAA8(v2, v18 + 40);
    *(v19 + 80) = 1;
    sub_213DEBAA8(v41, v19 + 88);
    v40 = v19;
    swift_getKeyPath();
    sub_213DFE08C(v2, &v35);
    v20 = swift_allocObject();
    v21 = v38;
    v20[3] = v37;
    v20[4] = v21;
    v20[5] = v39;
    v22 = v36;
    v20[1] = v35;
    v20[2] = v22;
    v34[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8390, &qword_213F53818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8398, &qword_213F53820);
    v34[0] = a1;
    sub_213DE3AE4(&qword_27C8F83A0, &qword_27C8F8390, &qword_213F53818);
    sub_213DFE0CC();
    sub_213F4ECC0();
    v23 = sub_213F4E070();
    sub_213F4CDA0();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F83C0, &qword_213F53830) + 36)];
    *v32 = v23;
    *(v32 + 1) = v25;
    *(v32 + 2) = v27;
    *(v32 + 3) = v29;
    *(v32 + 4) = v31;
    v32[40] = 0;
    sub_213DE3164(v15, v11, &qword_27C8F8328, &unk_213F537B0);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0);
    sub_213DFDDD4();
    sub_213F4DBA0();
    sub_213DE36FC(v15, &qword_27C8F8328, &unk_213F537B0);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_213DE36FC(&v35, &qword_27C8F7AB8, &qword_213F522C0);
    sub_213DFCAE8(v2, v7);
    sub_213DE3164(v7, v11, &qword_27C8F8318, &qword_213F537A0);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0);
    sub_213DFDDD4();
    sub_213F4DBA0();
    return sub_213DE36FC(v7, &qword_27C8F8318, &qword_213F537A0);
  }
}

uint64_t sub_213DFD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_213DE3164(a1, &v16, &qword_27C8F8408, &unk_213F53C10);
  v8 = v16;
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = sub_213DFCAE8(a1 + 8, v7);
  if ((v8 * 14) >> 64 == (14 * v8) >> 63)
  {
    sub_213DE3164(v7, a2, &qword_27C8F8318, &qword_213F537A0);
    v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F83B8, &qword_213F53828) + 36));
    *v10 = (14 * v8);
    v10[1] = (2 * v8);
    sub_213F4F040();
    v12 = v11;
    v14 = v13;
    sub_213DE36FC(v7, &qword_27C8F8318, &qword_213F537A0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8398, &qword_213F53820);
    v15 = a2 + *(result + 36);
    *v15 = v8 * 15.0 * 0.0174532925;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 BusinessPhotoCardOrnament.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t BusinessPhotoCardOrnament.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapsDesignImage();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DFE1E4(v2, v45);
  sub_213DD7500(v45, &v8[v5[10]]);
  v9 = sub_213F4EEE0();
  v11 = v10;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v12 = v5[7];
  *&v8[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v13 = v5[8];
  *&v8[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v14 = v5[9];
  *&v8[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v15 = &v8[v5[14]];
  v16 = &v8[v5[15]];
  v17 = &v8[v5[16]];
  memset(v38, 0, 27);
  sub_213F4EA90();
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v22 = v44;
  *v17 = v39;
  *(v17 + 2) = v18;
  v17[24] = v19;
  v17[25] = v20;
  v17[26] = v21;
  *(v17 + 4) = v22;
  v23 = v5[17];
  v38[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v8[v23] = v39;
  v8[v5[11]] = 1;
  v24 = &v8[v5[12]];
  *v24 = v9;
  v24[1] = v11;
  v8[v5[13]] = 1;
  *v15 = 0;
  *(v15 + 1) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_213DFE7E8(v8, a1, type metadata accessor for MapsDesignImage);
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v25 = 0x3FF0000000000000;
  *(v25 + 8) = 0;
  sub_213DFE850(v8, type metadata accessor for MapsDesignImage);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8358, &qword_213F537C8) + 36));
  v27 = v45[1];
  *v26 = v45[0];
  v26[1] = v27;
  v26[2] = v45[2];
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8348, &qword_213F537C0) + 36));
  v29 = *(sub_213F4D470() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_213F4D950();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #10.0 }

  *v28 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *&v28[*(result + 36)] = 256;
  return result;
}

uint64_t sub_213DFDA60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_213F4CBB0();
  sub_213DD7500(&v13, a4 + 16);
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_213DFDB0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoverPhotoCardOrnamentViewModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return sub_213DFDA60(v14, a2, a3, v18, a5, a6);
}

unint64_t sub_213DFDC34()
{
  result = qword_27C8F82F0;
  if (!qword_27C8F82F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82D0, &qword_213F53778);
    sub_213DFDCEC();
    sub_213DE3AE4(&qword_27C8F8310, &qword_27C8F82E8, &qword_213F53790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82F0);
  }

  return result;
}

unint64_t sub_213DFDCEC()
{
  result = qword_27C8F82F8;
  if (!qword_27C8F82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82E0, &qword_213F53788);
    sub_213DE3AE4(&qword_27C8F8300, &qword_27C8F8308, &qword_213F53798);
    sub_213DFE6E8(&qword_281185AD8, type metadata accessor for ClipShadowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82F8);
  }

  return result;
}

unint64_t sub_213DFDDD4()
{
  result = qword_27C8F8338;
  if (!qword_27C8F8338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8318, &qword_213F537A0);
    sub_213DFDE8C();
    sub_213DE3AE4(&qword_27C8F8370, &qword_27C8F8378, &qword_213F537E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8338);
  }

  return result;
}

unint64_t sub_213DFDE8C()
{
  result = qword_27C8F8340;
  if (!qword_27C8F8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8348, &qword_213F537C0);
    sub_213DFDF44();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8340);
  }

  return result;
}

unint64_t sub_213DFDF44()
{
  result = qword_27C8F8350;
  if (!qword_27C8F8350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8358, &qword_213F537C8);
    sub_213DFDFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8350);
  }

  return result;
}

unint64_t sub_213DFDFD0()
{
  result = qword_281183478;
  if (!qword_281183478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8360, &unk_213F537D0);
    sub_213DFE6E8(&qword_2811887E8, type metadata accessor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183478);
  }

  return result;
}

unint64_t sub_213DFE0CC()
{
  result = qword_27C8F83A8;
  if (!qword_27C8F83A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8398, &qword_213F53820);
    sub_213DFE158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83A8);
  }

  return result;
}

unint64_t sub_213DFE158()
{
  result = qword_27C8F83B0;
  if (!qword_27C8F83B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F83B8, &qword_213F53828);
    sub_213DFDDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83B0);
  }

  return result;
}

uint64_t sub_213DFE298()
{
  result = sub_213F4CBC0();
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

void sub_213DFE39C()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CoverPhotoCardOrnamentViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_213DFE440();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213DFE440()
{
  if (!qword_2811827B0)
  {
    v0 = sub_213F4EAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811827B0);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_213DFE4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_213DFE504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213DFE58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_213DFE5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213DFE62C()
{
  result = qword_27C8F83E8;
  if (!qword_27C8F83E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F83F0, &qword_213F53C00);
    sub_213DFDC34();
    sub_213DFE6E8(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83E8);
  }

  return result;
}

uint64_t sub_213DFE6E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213DFE730()
{
  result = qword_27C8F83F8;
  if (!qword_27C8F83F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8400, &qword_213F53C08);
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0);
    sub_213DFDDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83F8);
  }

  return result;
}

uint64_t sub_213DFE7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213DFE850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213DFE8B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverPhotoCardOrnament(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DFE91C()
{
  v1 = *(type metadata accessor for CoverPhotoCardOrnament(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213DFC6E8(v2);
}

double sub_213DFE97C(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_213DFEA10()
{
  v0 = sub_213F4DBE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D140();
  v6 = v5;
  sub_213F4DDF0();
  sub_213F4D150();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  MinY = CGRectGetMinY(v25);
  if (MinY < 0.0)
  {
    MinY = 0.0;
  }

  v16 = (v6 + MinY) / v6;
  sub_213F4F030();
  v18 = v17;
  v20 = v19;
  v21 = sub_213F4D580();
  v22 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0]);
  return MEMORY[0x2160504B0](v21, v22, v16, v16, v18, v20);
}

uint64_t CenteredCardHeaderBackgroundImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

__n128 CenteredCardHeaderContentViewModel.init(textViewModel:size:backgroundImageProvider:backgroundImageStyle:editing:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a1[7];
  *(a6 + 96) = a1[6];
  *(a6 + 112) = v6;
  v7 = a1[9];
  *(a6 + 128) = a1[8];
  *(a6 + 144) = v7;
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  v9 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  result = *a3;
  v12 = *(a3 + 16);
  *(a6 + 168) = *a3;
  v13 = *a4;
  *(a6 + 160) = *a2;
  *(a6 + 184) = v12;
  *(a6 + 200) = *(a3 + 32);
  *(a6 + 208) = v13;
  *(a6 + 209) = a5;
  return result;
}

uint64_t sub_213DFECA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70[1] = a1;
  v75 = a2;
  v74 = sub_213F4D290();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  v3 = MEMORY[0x28223BE20](v74);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v70 - v10;
  v12 = sub_213F4E230();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8558, &qword_213F54538);
  v18 = *(v17 - 8);
  v71 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8560, &qword_213F54540);
  v23 = *(v22 - 8);
  v72 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = v70 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8568, &qword_213F54548);
  sub_213DE3AE4(&qword_27C8F8570, &qword_27C8F8568, &qword_213F54548);
  sub_213F4E850();
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A70], v12);
  v26 = sub_213F4E0F0();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_213F4E110();
  v27 = sub_213F4E1A0();
  sub_213DE36FC(v11, &qword_27C8F7668, &qword_213F52190);
  (*(v13 + 8))(v16, v12);
  KeyPath = swift_getKeyPath();
  v29 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8578, &qword_213F54580) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8580, &qword_213F545B8) + 36)];
  *v31 = v30;
  v31[8] = 1;
  LOBYTE(v30) = sub_213F4E0B0();
  sub_213F4CDA0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8588, &qword_213F545C0) + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v30) = sub_213F4E040();
  sub_213DBBD08(v7);
  sub_213F4D280();
  sub_213F4D270();
  v41 = *(v73 + 8);
  v42 = v74;
  v41(v5, v74);
  v41(v7, v42);
  sub_213F4CDA0();
  v43 = &v21[*(v71 + 44)];
  *v43 = v30;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_213DBBD08(v7);
  sub_213F4D280();
  sub_213F4D270();
  v41(v5, v42);
  v41(v7, v42);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v48 = v76;
  sub_213DE2B44(v21, v76, &qword_27C8F8558, &qword_213F54538);
  v49 = (v48 + *(v72 + 44));
  v50 = v82;
  v49[4] = v81;
  v49[5] = v50;
  v49[6] = v83;
  v51 = v78;
  *v49 = v77;
  v49[1] = v51;
  v52 = v80;
  v49[2] = v79;
  v49[3] = v52;
  v53 = sub_213F4EEE0();
  v55 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8590, &qword_213F545C8);
  v57 = v75;
  v58 = (v75 + *(v56 + 36));
  sub_213DBBD08(v7);
  sub_213F4D280();
  sub_213F4D270();
  v41(v5, v42);
  v41(v7, v42);
  v59 = *(sub_213F4D470() + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_213F4D950();
  (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
  __asm { FMOV            V0.2D, #26.0 }

  *v58 = _Q0;
  LODWORD(v60) = sub_213F4DDA0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8598, &qword_213F545D0);
  *&v58[*(v67 + 52)] = v60;
  *&v58[*(v67 + 56)] = 256;
  v68 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85A0, &qword_213F545D8) + 36)];
  *v68 = v53;
  v68[1] = v55;
  return sub_213DE2B44(v76, v57, &qword_27C8F8560, &qword_213F54540);
}

uint64_t sub_213DFF394@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_213DFF594(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87A8, &qword_213F547C0);
  MEMORY[0x216052020](&v8, v6);
  return v8;
}

uint64_t sub_213DFF5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 44));
  v6 = *v4;
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87A8, &qword_213F547C0);
  return sub_213F4EC30();
}

double sub_213DFF658(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  MEMORY[0x216052020](v7, v5);
  return *v7;
}

double sub_213DFF6B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  MEMORY[0x216052020](v7, v5);
  return *v7;
}

uint64_t sub_213DFF718(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 68));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  return sub_213F4CDD0();
}

uint64_t sub_213DFF784(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDE0();
  return v4;
}

uint64_t CenteredCardHeaderContent.init(viewModel:expansionProgress:editableTitle:leadingButtonsWidthBinding:trailingButtonsWidthBinding:ornamentViewVisibilityRange:submitHandler:ornamentViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v50 = *a15;
  v51 = *a14;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for CenteredCardHeaderContent();
  v28 = a9 + v27[17];
  *v28 = sub_213F4CDF0() & 1;
  *(v28 + 1) = v29;
  v28[16] = v30 & 1;
  sub_213E04588(a1, a9 + v27[9]);
  *(a9 + v27[10]) = a10;
  if (a3)
  {
    v31 = a5;
    v32 = a4;
    v33 = a3;
    v34 = a2;
  }

  else
  {
    sub_213F4EC70();
    v34 = v52;
    v33 = v53;
    v32 = v54;
    v31 = v55;
  }

  v35 = a12;
  v36 = (a9 + v27[11]);
  *v36 = v34;
  v36[1] = v33;
  v36[2] = v32;
  v36[3] = v31;
  sub_213E045C0(a2, a3);
  if (a7)
  {
    v38 = a6;
    v37 = a8;
  }

  else
  {
    sub_213F4EC70();
    v38 = v52;
    a7 = v53;
    v37 = v54;
  }

  v39 = (a9 + v27[12]);
  *v39 = v38;
  v39[1] = a7;
  v39[2] = v37;
  if (a12)
  {
    v40 = a1;
    sub_213E0460C(a2, a3);
    result = sub_213E0465C(v40);
  }

  else
  {
    sub_213F4EC70();
    sub_213E0460C(a2, a3);
    result = sub_213E0465C(a1);
    a11 = v52;
    v35 = v53;
    a13 = v54;
  }

  v44 = (a9 + v27[13]);
  *v44 = a11;
  v44[1] = v35;
  v44[2] = a13;
  v45 = a9 + v27[14];
  *v45 = v51;
  v45[1] = v50;
  v46 = (a9 + v27[15]);
  *v46 = a18;
  v46[1] = a19;
  v47 = (a9 + v27[16]);
  *v47 = a16;
  v47[1] = a17;
  return result;
}

void sub_213DFFA80(uint64_t a1)
{
  sub_213DFF658(a1);
  sub_213DFF6B8(a1);
  *(v1 + *(a1 + 40));
}

double sub_213DFFB18(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_213DFF394(&v18 - v9);
  sub_213F4D280();
  sub_213F4D270();
  v11 = *(v4 + 8);
  v11(v8, v3);
  v11(v10, v3);
  v12 = *(v1 + *(a1 + 40));
  if (v12 >= 0.0 && v12 < 1.0)
  {
    v16 = v12 * 12.0;
    v17 = 0.0;
    return round(v16 + v17);
  }

  result = 0.0;
  if (v12 >= 1.0 && v12 <= 2.0)
  {
    v16 = (v12 + -1.0) * 4.0;
    v17 = 12.0;
    return round(v16 + v17);
  }

  return result;
}

double sub_213DFFC90(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = v1 + *(a1 + 36);
  if (*(v11 + 208) == 1)
  {
    sub_213DFF394(&v20 - v9);
    sub_213F4D280();
    sub_213F4D270();
    v12 = *(v4 + 8);
    v12(v8, v3);
    v12(v10, v3);
    v13 = 20.0;
    if (!*(v11 + 208))
    {
      v13 = 16.0;
    }

    v14 = 32.0;
  }

  else
  {
    v13 = 16.0;
    v14 = 116.0;
  }

  v15 = *(v1 + *(a1 + 40));
  if (v15 >= 0.0 && v15 < 1.0)
  {
    v19 = v13 * v15 + 0.0;
    return round(v19);
  }

  result = 0.0;
  if (v15 >= 1.0 && v15 <= 2.0)
  {
    v19 = v13 + (v14 - v13) * (v15 + -1.0);
    return round(v19);
  }

  return result;
}

double sub_213DFFE40(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_213DFF394(&v18 - v9);
  sub_213F4D280();
  sub_213F4D270();
  v11 = *(v4 + 8);
  v11(v8, v3);
  v11(v10, v3);
  v12 = *(v1 + *(a1 + 40));
  if (v12 >= 0.0 && v12 < 1.0)
  {
    v16 = v12 * 16.0;
    v17 = 0.0;
    return round(v16 + v17);
  }

  result = 0.0;
  if (v12 >= 1.0 && v12 <= 2.0)
  {
    v16 = (v12 + -1.0) * 0.0;
    v17 = 16.0;
    return round(v16 + v17);
  }

  return result;
}

double sub_213DFFFB8(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_213DFF394(&v18 - v9);
  sub_213F4D280();
  sub_213F4D270();
  v11 = *(v4 + 8);
  v11(v8, v3);
  v11(v10, v3);
  v12 = *(v1 + *(a1 + 40));
  if (v12 >= 0.0 && v12 < 1.0)
  {
    v16 = v12 * 80.0;
    v17 = 0.0;
    return round(v16 + v17);
  }

  result = 0.0;
  if (v12 >= 1.0 && v12 <= 2.0)
  {
    v16 = (v12 + -1.0) * 160.0;
    v17 = 80.0;
    return round(v16 + v17);
  }

  return result;
}

uint64_t CenteredCardHeaderContent.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A0, &qword_213F53D28);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A8, &qword_213F53D30);
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v4 = sub_213F4EBE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = sub_213F4D400();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_213F4EED0();
  v17 = *(v24 + 24);
  v27 = v3;
  v28 = v17;
  v29 = v25;
  sub_213F4EBD0();
  v32 = xmmword_213F53CB0;
  v33 = 15;
  WitnessTable = swift_getWitnessTable();
  View.mapsDesignAXContainer(withID:)(&v32, v4, WitnessTable);
  sub_213DD9350(v32, *(&v32 + 1), v33);
  (*(v5 + 8))(v8, v4);
  v19 = sub_213DD9674();
  v30 = WitnessTable;
  v31 = v19;
  swift_getWitnessTable();
  v20 = v10[2];
  v20(v16, v14, v9);
  v21 = v10[1];
  v21(v14, v9);
  v20(v26, v16, v9);
  return (v21)(v16, v9);
}

uint64_t sub_213E0054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v135 = a1;
  v133 = a4;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A8, &qword_213F53D30);
  swift_getTupleTypeMetadata2();
  v120 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_213F4EBC0();
  v123 = *(v6 - 8);
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v6);
  v117 = &v100 - v8;
  v124 = v9;
  v10 = sub_213F4D400();
  v126 = *(v10 - 8);
  v11 = *(v126 + 64);
  MEMORY[0x28223BE20](v10);
  v121 = &v100 - v12;
  v127 = v13;
  v14 = sub_213F4D400();
  v128 = *(v14 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v14);
  v125 = &v100 - v16;
  v129 = v17;
  v118 = sub_213F4D400();
  v132 = *(v118 - 8);
  v18 = *(v132 + 64);
  v19 = MEMORY[0x28223BE20](v118);
  v122 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v131 = &v100 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85A8, &qword_213F545E0);
  v22 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v24 = &v100 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85B0, &qword_213F545E8);
  v107 = *(v25 - 8);
  v26 = *(v107 + 64);
  MEMORY[0x28223BE20](v25);
  v106 = &v100 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85B8, &qword_213F545F0);
  v28 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v100 - v29;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85C0, &qword_213F545F8);
  v30 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v32 = &v100 - v31;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85C8, &qword_213F54600);
  v105 = *(v111 - 8);
  v33 = *(v105 + 64);
  MEMORY[0x28223BE20](v111);
  v35 = &v100 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85D0, &unk_213F54608);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v110 = &v100 - v39;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F84A0, &qword_213F53D28);
  v40 = *(*(v116 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v116);
  v115 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v100 - v43;
  v130 = a2;
  v114 = a3;
  v45 = type metadata accessor for CenteredCardHeaderContent();
  v46 = v135 + *(v45 + 36);
  sub_213DE3164(v46 + 168, &v149, &qword_27C8F7AB8, &qword_213F522C0);
  v134 = v44;
  if (*(&v150 + 1))
  {
    v104 = v36;
    v103 = v25;
    sub_213DD7500(&v149, v148);
    v47 = *(v46 + 208);
    v102 = v37;
    if (v47)
    {
      v48 = v135;
      sub_213E01AA0(v148, v24);
      sub_213DFFFB8(v45);
      sub_213F4EEE0();
      sub_213F4D0C0();
      v49 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8668, &qword_213F54658) + 36)];
      v50 = v151;
      *(v49 + 1) = v150;
      *(v49 + 2) = v50;
      *v49 = v149;
      v51 = *(v48 + *(v45 + 40));
      if (v51 < 0.0 || v51 >= 1.0)
      {
        v58 = 0.0;
        if (v51 < 1.0 || v51 > 2.0)
        {
          goto LABEL_14;
        }

        v52 = -1.0;
      }

      else
      {
        v52 = 0.0;
        v51 = v51 * 0.0;
      }

      v58 = round(v51 + v52);
LABEL_14:
      v59 = v113;
      *&v24[*(v113 + 36)] = v58;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85E8, &qword_213F54618);
      v61 = sub_213E05000();
      v105 = v61;
      v62 = sub_213F4D580();
      v63 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0]);
      v136 = v62;
      v137 = v63;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v65 = v106;
      MEMORY[0x2160518A0](sub_213DFEA10, 0, v59, v60, v61, OpaqueTypeConformance2);
      sub_213DE36FC(v24, &qword_27C8F85A8, &qword_213F545E0);
      v66 = v107;
      v67 = v103;
      (*(v107 + 16))(v112, v65, v103);
      swift_storeEnumTagMultiPayload();
      v68 = sub_213E04D2C();
      v136 = v108;
      v137 = v60;
      v138 = v68;
      v139 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v136 = v59;
      v137 = v60;
      v138 = v105;
      v139 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v69 = v110;
      sub_213F4DBA0();
      (*(v66 + 8))(v65, v67);
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1(v148);
      v54 = v134;
      sub_213DE2B44(v69, v134, &qword_27C8F85D0, &unk_213F54608);
      v53 = (*(v102 + 56))(v54, 0, 1, v104);
      goto LABEL_21;
    }

    v55 = v135;
    sub_213DFFFB8(v45);
    sub_213E015D4(v148, v45, v32);
    v56 = *(v55 + *(v45 + 40));
    v101 = v45;
    if (v56 < 0.0 || v56 >= 1.0)
    {
      v70 = 0.0;
      if (v56 < 1.0 || v56 > 2.0)
      {
        goto LABEL_19;
      }

      v57 = -1.0;
    }

    else
    {
      v57 = 0.0;
      v56 = v56 * 0.0;
    }

    v70 = round(v56 + v57);
LABEL_19:
    v71 = v108;
    *&v32[*(v108 + 36)] = v70;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85E8, &qword_213F54618);
    v73 = sub_213E04D2C();
    v74 = sub_213F4D580();
    v75 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0]);
    *&v149 = v74;
    *(&v149 + 1) = v75;
    v76 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2160518A0](sub_213DFEA10, 0, v71, v72, v73, v76);
    sub_213DE36FC(v32, &qword_27C8F85C0, &qword_213F545F8);
    v77 = v105;
    v78 = v111;
    (*(v105 + 16))(v112, v35, v111);
    swift_storeEnumTagMultiPayload();
    *&v149 = v71;
    *(&v149 + 1) = v72;
    *&v150 = v73;
    *(&v150 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    v79 = sub_213E05000();
    *&v149 = v113;
    *(&v149 + 1) = v72;
    *&v150 = v79;
    *(&v150 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    v69 = v110;
    sub_213F4DBA0();
    (*(v77 + 8))(v35, v78);
    v45 = v101;
    goto LABEL_20;
  }

  sub_213DE36FC(&v149, &qword_27C8F7AB8, &qword_213F522C0);
  v53 = (*(v37 + 56))(v44, 1, 1, v36);
  v54 = v44;
LABEL_21:
  MEMORY[0x28223BE20](v53);
  v80 = v114;
  *(&v100 - 4) = v130;
  *(&v100 - 3) = v80;
  *(&v100 - 2) = v135;
  sub_213F4DA40();
  v81 = v117;
  sub_213F4EBB0();
  sub_213F4E060();
  sub_213DFFC90(v45);
  v82 = v124;
  v83 = swift_getWitnessTable();
  v84 = v121;
  sub_213F4E7D0();
  (*(v123 + 8))(v81, v82);
  sub_213F4E040();
  v85 = MEMORY[0x277CDF918];
  v146 = v83;
  v147 = MEMORY[0x277CDF918];
  v86 = v127;
  v87 = swift_getWitnessTable();
  v88 = v125;
  sub_213F4E7D0();
  (*(v126 + 8))(v84, v86);
  sub_213F4E070();
  sub_213DFFE40(v45);
  v144 = v87;
  v145 = v85;
  v89 = v129;
  v90 = swift_getWitnessTable();
  v91 = v122;
  sub_213F4E7D0();
  (*(v128 + 8))(v88, v89);
  v142 = v90;
  v143 = v85;
  v92 = v118;
  v135 = swift_getWitnessTable();
  v93 = v132;
  v94 = *(v132 + 16);
  v95 = v131;
  v94(v131, v91, v92);
  v96 = *(v93 + 8);
  v96(v91, v92);
  v97 = v54;
  v98 = v115;
  sub_213DE3164(v97, v115, &qword_27C8F84A0, &qword_213F53D28);
  v148[0] = v98;
  v94(v91, v95, v92);
  v148[1] = v91;
  v136 = v116;
  v137 = v92;
  v140 = sub_213E053E0(&qword_27C8F85D8, &qword_27C8F84A0, &qword_213F53D28, sub_213E04B98);
  v141 = v135;
  sub_213E95270(v148, 2uLL, &v136);
  v96(v95, v92);
  sub_213DE36FC(v134, &qword_27C8F84A0, &qword_213F53D28);
  v96(v91, v92);
  return sub_213DE36FC(v98, &qword_27C8F84A0, &qword_213F53D28);
}

__n128 sub_213E015D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = type metadata accessor for MapsDesignImage();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v9[v6[10]]);
  v10 = sub_213F4EEE0();
  v12 = v11;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v13 = v6[7];
  *&v9[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v14 = v6[8];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v15 = v6[9];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v16 = &v9[v6[14]];
  v17 = &v9[v6[15]];
  v18 = &v9[v6[16]];
  v63 = 0uLL;
  *(&v64 + 7) = 0;
  *&v64 = 0;
  sub_213F4EA90();
  v19 = v73;
  v20 = BYTE8(v73);
  v21 = BYTE9(v73);
  v22 = BYTE10(v73);
  v23 = v74;
  *v18 = v72;
  *(v18 + 2) = v19;
  v18[24] = v20;
  v18[25] = v21;
  v18[26] = v22;
  *(v18 + 4) = v23;
  v24 = v6[17];
  *&v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v9[v24] = v72;
  v9[v6[11]] = 1;
  v25 = &v9[v6[12]];
  *v25 = v10;
  v25[1] = v12;
  v9[v6[13]] = 1;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DEEFF0(v9, a3);
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v27 = v61;
  *v26 = v60;
  v26[1] = v27;
  v26[2] = v62;
  sub_213E05D2C(v9, type metadata accessor for MapsDesignImage);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8620, &unk_213F54630) + 36)) = 0;
  v28 = sub_213F4EEE0();
  v30 = v29;
  v31 = *(v48 + 16);
  v32 = *(v48 + 24);
  sub_213E0430C(&v52);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  *&v70 = v59;
  *(&v70 + 1) = v28;
  v71 = v30;
  v33 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8610, &qword_213F54628) + 36);
  v34 = v70;
  *(v33 + 96) = v69;
  *(v33 + 112) = v34;
  *(v33 + 128) = v71;
  v35 = v66;
  *(v33 + 32) = v65;
  *(v33 + 48) = v35;
  v36 = v68;
  *(v33 + 64) = v67;
  *(v33 + 80) = v36;
  v37 = v64;
  *v33 = v63;
  *(v33 + 16) = v37;
  v76 = v56;
  v77 = v57;
  v78 = v58;
  v72 = v52;
  v73 = v53;
  v74 = v54;
  v75 = v55;
  v79 = v59;
  v80 = v28;
  v81 = v30;
  sub_213DE3164(&v63, &v49, &qword_27C8F8640, &qword_213F54648);
  sub_213DE36FC(&v72, &qword_27C8F8640, &qword_213F54648);
  v38 = sub_213F4EEE0();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_213F53CC0;
  sub_213F4E8F0();
  *(v41 + 32) = sub_213F4EDB0();
  *(v41 + 40) = v42;
  sub_213F4E8F0();
  *(v41 + 48) = sub_213F4EDB0();
  *(v41 + 56) = v43;
  sub_213F4E8D0();
  *(v41 + 64) = sub_213F4EDB0();
  *(v41 + 72) = v44;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v45 = v49;
  v46 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8600, &qword_213F54620) + 36);
  *v46 = v38;
  *(v46 + 8) = v40;
  *(v46 + 16) = v45;
  result = v50;
  *(v46 + 40) = v51;
  *(v46 + 24) = result;
  return result;
}

__n128 sub_213E01AA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsDesignImage();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v8[v5[10]]);
  v9 = sub_213F4EEE0();
  v11 = v10;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v12 = v5[7];
  *&v8[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v13 = v5[8];
  *&v8[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v14 = v5[9];
  *&v8[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v15 = &v8[v5[14]];
  v16 = &v8[v5[15]];
  v17 = &v8[v5[16]];
  memset(v40, 0, 27);
  sub_213F4EA90();
  v18 = *&v41[16];
  v19 = v42;
  v20 = BYTE1(v42);
  v21 = BYTE2(v42);
  v22 = *(&v42 + 1);
  *v17 = *v41;
  *(v17 + 2) = v18;
  v17[24] = v19;
  v17[25] = v20;
  v17[26] = v21;
  *(v17 + 4) = v22;
  v23 = v5[17];
  v40[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v8[v23] = *v41;
  v8[v5[11]] = 1;
  v24 = &v8[v5[12]];
  *v24 = v9;
  v24[1] = v11;
  v8[v5[13]] = 1;
  *v15 = 0;
  *(v15 + 1) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_213F4F040();
  v26 = v25;
  v28 = v27;
  sub_213DEEFF0(v8, a2);
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86A8, &qword_213F54678) + 36);
  *v29 = xmmword_213F53CD0;
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  sub_213E05D2C(v8, type metadata accessor for MapsDesignImage);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8698, &qword_213F54670) + 36)) = 0x3FE70A3D70A3D70ALL;
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8688, &qword_213F54668) + 36);
  *v30 = 0x4049000000000000;
  *(v30 + 8) = 0;
  v31 = sub_213F4EEE0();
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_213F51DE0;
  sub_213F4E8F0();
  *(v34 + 32) = sub_213F4EDB0();
  *(v34 + 40) = v35;
  sub_213F4E8D0();
  *(v34 + 48) = sub_213F4EDB0();
  *(v34 + 56) = v36;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v37 = *v41;
  v38 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8678, &qword_213F54660) + 36);
  *v38 = v31;
  *(v38 + 8) = v33;
  *(v38 + 16) = v37;
  result = *&v41[8];
  *(v38 + 40) = v42;
  *(v38 + 24) = result;
  return result;
}

uint64_t sub_213E01E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v312 = a1;
  v301 = a4;
  v6 = sub_213F4E230();
  v243 = *(v6 - 8);
  v244 = v6;
  v7 = *(v243 + 64);
  MEMORY[0x28223BE20](v6);
  v242 = &v232 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86C0, &qword_213F54728);
  v9 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v246 = (&v232 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86C8, &qword_213F54730);
  v237 = *(v11 - 8);
  v238 = v11;
  v12 = *(v237 + 64);
  MEMORY[0x28223BE20](v11);
  v251 = &v232 - v13;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86D0, &qword_213F54738);
  v14 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v236 = &v232 - v15;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86D8, &qword_213F54740);
  v16 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v240 = &v232 - v17;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86E0, &qword_213F54748);
  v18 = *(*(v295 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v295);
  v239 = &v232 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v241 = &v232 - v21;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86E8, &qword_213F54750);
  v22 = *(*(v293 - 8) + 64);
  MEMORY[0x28223BE20](v293);
  v294 = &v232 - v23;
  v24 = sub_213F4DC60();
  v284 = *(v24 - 8);
  v285 = v24;
  v25 = *(v284 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v282 = &v232 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v283 = &v232 - v28;
  v290 = sub_213F4DC80();
  v287 = *(v290 - 8);
  v29 = *(v287 + 64);
  MEMORY[0x28223BE20](v290);
  v286 = &v232 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86F0, &qword_213F54758);
  v291 = *(v31 - 8);
  v292 = v31;
  v32 = *(v291 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v288 = &v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v289 = &v232 - v35;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v36 = *(*(v280 - 8) + 64);
  MEMORY[0x28223BE20](v280);
  v296 = &v232 - v37;
  v38 = sub_213F4CF80();
  v278 = *(v38 - 8);
  v279 = v38;
  v39 = *(v278 + 64);
  MEMORY[0x28223BE20](v38);
  v277 = &v232 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for CapsuleTextFieldStyle();
  v41 = *(*(v276 - 8) + 64);
  MEMORY[0x28223BE20](v276);
  v273 = (&v232 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v306 = a3;
  v43 = type metadata accessor for CenteredCardHeaderContent();
  v264 = *(v43 - 8);
  v304 = *(v264 + 64);
  MEMORY[0x28223BE20](v43);
  v263 = &v232 - v44;
  v45 = sub_213F4CB60();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v261 = &v232 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_213F4F210();
  v260 = *(v262 - 8);
  v48 = *(v260 + 64);
  v49 = MEMORY[0x28223BE20](v262);
  v258 = &v232 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v259 = &v232 - v51;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86F8, &qword_213F54768);
  v266 = *(v268 - 8);
  v52 = *(v266 + 64);
  MEMORY[0x28223BE20](v268);
  v265 = &v232 - v53;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8700, &qword_213F54770);
  v269 = *(v271 - 8);
  v54 = *(v269 + 64);
  MEMORY[0x28223BE20](v271);
  v267 = &v232 - v55;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8708, &qword_213F54778);
  v272 = *(v274 - 8);
  v56 = *(v272 + 64);
  MEMORY[0x28223BE20](v274);
  v270 = &v232 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8710, &qword_213F54780);
  v248 = *(v58 - 8);
  v249 = v58;
  v59 = *(v248 + 64);
  MEMORY[0x28223BE20](v58);
  v275 = &v232 - v60;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8718, &qword_213F54788);
  v61 = *(*(v281 - 8) + 64);
  MEMORY[0x28223BE20](v281);
  v250 = &v232 - v62;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F84A8, &qword_213F53D30);
  v63 = *(*(v298 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v298);
  v300 = &v232 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v299 = &v232 - v66;
  swift_getTupleTypeMetadata3();
  v67 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v253 = v67;
  v68 = sub_213F4EB40();
  v256 = *(v68 - 8);
  v69 = *(v256 + 64);
  MEMORY[0x28223BE20](v68);
  v254 = &v232 - v70;
  v310 = v71;
  v72 = sub_213F4D400();
  v303 = *(v72 - 8);
  v73 = *(v303 + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v257 = &v232 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v255 = &v232 - v76;
  v77 = sub_213F4F6B0();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  v80 = MEMORY[0x28223BE20](v77);
  v82 = &v232 - v81;
  v83 = *(a2 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v302 = &v232 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_213F4F6B0();
  v307 = *(v308 - 8);
  v86 = *(v307 + 64);
  v87 = MEMORY[0x28223BE20](v308);
  v89 = &v232 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v87);
  v309 = &v232 - v91;
  v311 = v43;
  v92 = v312 + *(v43 + 60);
  v93 = *(v92 + 8);
  (*v92)(v90);
  v94 = (*(v83 + 48))(v82, 1, a2);
  v95 = MEMORY[0x277CDF918];
  v305 = a2;
  if (v94 == 1)
  {
    (*(v78 + 8))(v82, v77);
    (*(v303 + 56))(v89, 1, 1, v72);
    v342 = swift_getWitnessTable();
    v343 = v95;
    swift_getWitnessTable();
    sub_213F43E1C(v89, v309);
    v96 = v307;
    v97 = v308;
    (*(v307 + 8))(v89, v308);
  }

  else
  {
    v233 = v83;
    v98 = (*(v83 + 32))();
    MEMORY[0x28223BE20](v98);
    sub_213F4D8A0();
    v99 = v254;
    sub_213F4EB30();
    sub_213F4E070();
    sub_213DFFB18(v311);
    v100 = v310;
    v101 = swift_getWitnessTable();
    v102 = v257;
    sub_213F4E7D0();
    (*(v256 + 8))(v99, v100);
    v313 = v101;
    v314 = v95;
    v256 = swift_getWitnessTable();
    v103 = v303;
    v104 = *(v303 + 16);
    v105 = v255;
    v104(v255, v102, v72);
    v106 = *(v103 + 8);
    v106(v102, v72);
    v104(v102, v105, v72);
    v106(v105, v72);
    (*(v103 + 32))(v89, v102, v72);
    (*(v103 + 56))(v89, 0, 1, v72);
    sub_213F43E1C(v89, v309);
    v96 = v307;
    v97 = v308;
    (*(v307 + 8))(v89, v308);
    (*(v233 + 8))(v302, v305);
  }

  v107 = (v312 + *(v311 + 36));
  v108 = *(v107 + 209);
  v109 = v312;
  v297 = v89;
  if (v108 == 1)
  {
    v110 = v312;
    v247 = v72;
    v111 = v259;
    sub_213F4F200();
    v112 = v260;
    v113 = v262;
    (*(v260 + 16))(v258, v111, v262);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v114 = qword_281182518;
    sub_213F4CB50();
    v115 = sub_213F4F260();
    v117 = v116;
    (*(v112 + 8))(v111, v113);
    *&v322 = v115;
    *(&v322 + 1) = v117;
    v119 = v263;
    v118 = v264;
    v303 = *(v264 + 16);
    v120 = v311;
    (v303)(v263, v110, v311);
    v302 = sub_213F4F460();
    v121 = sub_213F4F450();
    v122 = (*(v118 + 80) + 48) & ~*(v118 + 80);
    v123 = swift_allocObject();
    v124 = MEMORY[0x277D85700];
    v123[2] = v121;
    v123[3] = v124;
    v125 = v306;
    v123[4] = v305;
    v123[5] = v125;
    v264 = *(v118 + 32);
    (v264)(v123 + v122, v119, v120);
    (v303)(v119, v110, v120);
    v126 = sub_213F4F450();
    v127 = swift_allocObject();
    v127[2] = v126;
    v128 = v305;
    v127[3] = MEMORY[0x277D85700];
    v127[4] = v128;
    v127[5] = v306;
    v129 = v119;
    v130 = v120;
    (v264)(v127 + v122, v129, v120);
    sub_213F4EC50();
    sub_213DBC9EC();
    v131 = v265;
    sub_213F4EFD0();
    KeyPath = swift_getKeyPath();
    v133 = v273;
    *v273 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v134 = sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768);
    v135 = sub_213E05BDC(&qword_27C8F8758, type metadata accessor for CapsuleTextFieldStyle);
    v137 = v267;
    v136 = v268;
    v138 = v276;
    sub_213F4E550();
    sub_213E05D2C(v133, type metadata accessor for CapsuleTextFieldStyle);
    (*(v266 + 8))(v131, v136);
    v139 = v277;
    sub_213F4CF70();
    *&v332 = v136;
    *(&v332 + 1) = v138;
    *&v333 = v134;
    *(&v333 + 1) = v135;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v142 = v270;
    v141 = v271;
    sub_213F4E430();
    (*(v278 + 8))(v139, v279);
    (*(v269 + 8))(v137, v141);
    sub_213DFF784(v130);
    *&v332 = v141;
    *(&v332 + 1) = OpaqueTypeConformance2;
    v143 = swift_getOpaqueTypeConformance2();
    v144 = v274;
    v145 = v275;
    sub_213F4E780();

    (*(v272 + 8))(v142, v144);
    v146 = *MEMORY[0x277CDFA00];
    v147 = sub_213F4D390();
    v148 = v296;
    (*(*(v147 - 8) + 104))(v296, v146, v147);
    sub_213E05BDC(&qword_281183488, MEMORY[0x277CDFA28]);
    result = sub_213F4F1F0();
    if (result)
    {
      *&v332 = v144;
      *(&v332 + 1) = v143;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
      v150 = v249;
      v151 = v250;
      sub_213F4E570();
      sub_213DE36FC(v148, &qword_27C8F75C0, &qword_213F54760);
      (*(v248 + 8))(v145, v150);
      *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8748, &qword_213F54798) + 36)) = 0x4000000000000000;
      v152 = v283;
      sub_213F4DC50();
      v154 = v284;
      v153 = v285;
      (*(v284 + 16))(v282, v152, v285);
      v155 = v286;
      sub_213F4DC70();
      (*(v154 + 8))(v152, v153);
      sub_213F4EF80();
      v156 = sub_213E05BDC(&qword_27C8F87A0, MEMORY[0x277CE0418]);
      v158 = v289;
      v157 = v290;
      sub_213F4CE80();

      (*(v287 + 8))(v155, v157);
      v160 = v291;
      v159 = v292;
      (*(v291 + 16))(v288, v158, v292);
      *&v332 = v157;
      *(&v332 + 1) = v156;
      swift_getOpaqueTypeConformance2();
      v161 = sub_213F4D130();
      (*(v160 + 8))(v158, v159);
      *(v151 + *(v281 + 36)) = v161;
      v162 = &qword_27C8F8718;
      v163 = &qword_213F54788;
      sub_213DE3164(v151, v294, &qword_27C8F8718, &qword_213F54788);
      swift_storeEnumTagMultiPayload();
      sub_213E054E8();
      sub_213E0582C();
      v164 = v299;
      sub_213F4DBA0();
      v165 = v151;
LABEL_17:
      sub_213DE36FC(v165, v162, v163);
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8720, &qword_213F54790);
      (*(*(v227 - 8) + 56))(v164, 0, 1, v227);
      v97 = v308;
      v96 = v307;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    v166 = v311;
    v167 = v107[7];
    v168 = v107[5];
    v328 = v107[6];
    v329 = v167;
    v169 = v107[7];
    v170 = v107[9];
    v330 = v107[8];
    v331 = v170;
    v171 = v107[3];
    v172 = v107[1];
    v324 = v107[2];
    v325 = v171;
    v173 = v107[3];
    v174 = v107[5];
    v326 = v107[4];
    v327 = v174;
    v175 = v107[1];
    v322 = *v107;
    v323 = v175;
    v338 = v328;
    v339 = v169;
    v176 = v107[9];
    v340 = v330;
    v341 = v176;
    v334 = v324;
    v335 = v173;
    v336 = v326;
    v337 = v168;
    v332 = v322;
    v333 = v172;
    if (sub_213E053C8(&v332) == 1)
    {
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8720, &qword_213F54790);
      v164 = v299;
      (*(*(v177 - 8) + 56))(v299, 1, 1, v177);
LABEL_18:
      v228 = v297;
      v229 = v309;
      (*(v96 + 16))(v297, v309, v97);
      *&v332 = v228;
      v230 = v300;
      sub_213DE3164(v164, v300, &qword_27C8F84A8, &qword_213F53D30);
      *(&v332 + 1) = v230;
      *&v322 = v97;
      *(&v322 + 1) = v298;
      v320 = swift_getWitnessTable();
      v321 = MEMORY[0x277CDF918];
      v319 = swift_getWitnessTable();
      *&v318[0] = swift_getWitnessTable();
      *(&v318[0] + 1) = sub_213E053E0(&qword_27C8F8728, &qword_27C8F84A8, &qword_213F53D30, sub_213E0545C);
      sub_213E95270(&v332, 2uLL, &v322);
      sub_213DE36FC(v164, &qword_27C8F84A8, &qword_213F53D30);
      v231 = *(v96 + 8);
      v231(v229, v97);
      sub_213DE36FC(v230, &qword_27C8F84A8, &qword_213F53D30);
      return (v231)(v228, v97);
    }

    v247 = v72;
    v178 = *(v107 + 160);
    v179 = *(v109 + *(v166 + 40));
    v180 = v333;
    v181 = v246;
    *v246 = v332;
    *(v181 + 16) = v180;
    v182 = v339;
    *(v181 + 96) = v338;
    *(v181 + 112) = v182;
    v183 = v341;
    *(v181 + 128) = v340;
    *(v181 + 144) = v183;
    v184 = v335;
    *(v181 + 32) = v334;
    *(v181 + 48) = v184;
    v185 = v337;
    *(v181 + 64) = v336;
    *(v181 + 80) = v185;
    *(v181 + 160) = v178;
    *(v181 + 168) = v179;
    *(v181 + 176) = 256;
    v186 = type metadata accessor for CardHeaderText();
    v187 = v186[8];
    v315 = 0x403E000000000000;
    LODWORD(v306) = *MEMORY[0x277CE0A70];
    v188 = v242;
    v189 = *(v243 + 104);
    v190 = v244;
    v189(v242);
    v318[6] = v328;
    v318[7] = v329;
    v318[8] = v330;
    v318[9] = v331;
    v318[2] = v324;
    v318[3] = v325;
    v318[4] = v326;
    v318[5] = v327;
    v318[0] = v322;
    v318[1] = v323;
    sub_213DE3164(&v322, v317, &qword_27C8F8798, &unk_213F547B0);
    sub_213E05B80(v318, v317);
    sub_213DEC3D4();
    sub_213F4CFE0();
    v191 = v186[9];
    *&v317[0] = 0x4034000000000000;
    (v189)(v188, *MEMORY[0x277CE0A90], v190);
    sub_213F4CFE0();
    v192 = v186[10];
    *&v317[0] = 0x403C000000000000;
    v193 = v190;
    v194 = v311;
    (v189)(v188, v306, v193);
    v195 = v312;
    sub_213F4CFE0();
    v196 = sub_213F4E040();
    sub_213DFFA80(v194);
    sub_213F4CDA0();
    v197 = v181 + *(v245 + 36);
    *v197 = v196;
    *(v197 + 8) = v198;
    *(v197 + 16) = v199;
    *(v197 + 24) = v200;
    *(v197 + 32) = v201;
    *(v197 + 40) = 0;
    v202 = *MEMORY[0x277CDFA00];
    v203 = sub_213F4D390();
    v204 = v296;
    (*(*(v203 - 8) + 104))(v296, v202, v203);
    sub_213E05BDC(&qword_281183488, MEMORY[0x277CDFA28]);
    result = sub_213F4F1F0();
    if (result)
    {
      sub_213E05AC4();
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
      sub_213F4E570();
      sub_213DE36FC(v204, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v181, &qword_27C8F86C0, &qword_213F54728);
      v205 = *(v195 + *(v194 + 40));
      if (v205 < 0.0 || v205 >= 1.0)
      {
        v207 = v294;
        v206 = v295;
        v208 = v238;
      }

      else
      {
        v207 = v294;
        v206 = v295;
        v208 = v238;
      }

      sub_213F4EEE0();
      sub_213F4D4E0();
      v209 = v236;
      (*(v237 + 32))(v236, v251, v208);
      v210 = (v209 + *(v234 + 36));
      v211 = v317[5];
      v210[4] = v317[4];
      v210[5] = v211;
      v210[6] = v317[6];
      v212 = v317[1];
      *v210 = v317[0];
      v210[1] = v212;
      v213 = v317[3];
      v210[2] = v317[2];
      v210[3] = v213;
      v214 = v240;
      sub_213DE2B44(v209, v240, &qword_27C8F86D0, &qword_213F54738);
      *(v214 + *(v235 + 36)) = 0x3FF0000000000000;
      v215 = v283;
      sub_213F4DC50();
      v217 = v284;
      v216 = v285;
      (*(v284 + 16))(v282, v215, v285);
      v218 = v286;
      sub_213F4DC70();
      (*(v217 + 8))(v215, v216);
      sub_213F4EF80();
      v219 = sub_213E05BDC(&qword_27C8F87A0, MEMORY[0x277CE0418]);
      v221 = v289;
      v220 = v290;
      sub_213F4CE80();

      (*(v287 + 8))(v218, v220);
      v223 = v291;
      v222 = v292;
      (*(v291 + 16))(v288, v221, v292);
      v315 = v220;
      v316 = v219;
      swift_getOpaqueTypeConformance2();
      v224 = sub_213F4D130();
      (*(v223 + 8))(v221, v222);
      v225 = v239;
      sub_213DE2B44(v214, v239, &qword_27C8F86D8, &qword_213F54740);
      *(v225 + *(v206 + 36)) = v224;
      v162 = &qword_27C8F86E0;
      v163 = &qword_213F54748;
      v226 = v241;
      sub_213DE2B44(v225, v241, &qword_27C8F86E0, &qword_213F54748);
      sub_213DE3164(v226, v207, &qword_27C8F86E0, &qword_213F54748);
      swift_storeEnumTagMultiPayload();
      sub_213E054E8();
      sub_213E0582C();
      v164 = v299;
      sub_213F4DBA0();
      sub_213DE36FC(&v322, &qword_27C8F8798, &unk_213F547B0);
      v165 = v226;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213E04090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = v5[2];
  v12(v15 - v10);
  v19 = 0;
  v20 = 1;
  v21[0] = &v19;
  (v12)(v9, v11, a2);
  v17 = 0;
  v18 = 1;
  v21[1] = v9;
  v21[2] = &v17;
  v16[0] = MEMORY[0x277CE1180];
  v16[1] = a2;
  v16[2] = MEMORY[0x277CE1180];
  v15[1] = MEMORY[0x277CE1170];
  v15[2] = a3;
  v15[3] = MEMORY[0x277CE1170];
  sub_213E95270(v21, 3uLL, v16);
  v13 = v5[1];
  v13(v11, a2);
  return (v13)(v9, a2);
}

uint64_t sub_213E0422C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = a1[1];
  v16[0] = 10;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  sub_213E05D98(sub_213E05E9C, v15, v6, v7);
  v9 = v8;
  v10 = type metadata accessor for CenteredCardHeaderContent();
  if (v9)
  {

    return sub_213DFF5F4(v6, v7, v10);
  }

  else
  {
    v12 = sub_213DFF718(0, v10);
    v13 = a5 + *(v10 + 64);
    v14 = *(v13 + 8);
    return (*v13)(v12);
  }
}

double sub_213E0430C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DA40();
  v15 = 0;
  sub_213E04460(&v9);
  v18 = v11;
  v19 = v12;
  v20[0] = v13[0];
  *(v20 + 9) = *(v13 + 9);
  v16 = v9;
  v17 = v10;
  *(v22 + 9) = *(v13 + 9);
  v21[2] = v11;
  v21[3] = v12;
  v22[0] = v13[0];
  v21[0] = v9;
  v21[1] = v10;
  sub_213DE3164(&v16, &v8, &qword_27C8F86B8, &qword_213F54720);
  sub_213DE36FC(v21, &qword_27C8F86B8, &qword_213F54720);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20[0];
  *&v14[80] = *(v20 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  v4 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v4;
  result = *&v14[16];
  v6 = *v14;
  *(a1 + 33) = *&v14[16];
  v7 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_213E04460@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CenteredCardHeaderContent();
  sub_213DFFC90(v2);
  sub_213F4EEE0();
  sub_213F4D0C0();
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x4034000000000000;
  *(a1 + 88) = 1;
  sub_213E053B0(KeyPath, 0);

  return sub_213E053BC(KeyPath, 0);
}

uint64_t sub_213E045C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_213E0460C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_213E0469C()
{
  result = qword_27C8F84B0[0];
  if (!qword_27C8F84B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8F84B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign23CardHeaderTextViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy210_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_213E047A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 210))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_213E047FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 210) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 210) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_213E048A0()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    sub_213E049E4(319, &qword_27C8F8538);
    if (v1 <= 0x3F)
    {
      sub_213E049E4(319, &qword_281182630);
      if (v2 <= 0x3F)
      {
        sub_213E04A30();
        if (v3 <= 0x3F)
        {
          sub_213DE22E8();
          if (v4 <= 0x3F)
          {
            sub_213DE2394();
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

void sub_213E049E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_213F4EC80();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_213E04A30()
{
  if (!qword_27C8F8540)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8F8540);
    }
  }
}

uint64_t type metadata accessor for CapsuleTextFieldStyle()
{
  result = qword_27C8F8548;
  if (!qword_27C8F8548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213E04B04()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_213E04B98()
{
  result = qword_27C8F85E0;
  if (!qword_27C8F85E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85D0, &unk_213F54608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85C0, &qword_213F545F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85E8, &qword_213F54618);
    sub_213E04D2C();
    sub_213F4D580();
    sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85A8, &qword_213F545E0);
    sub_213E05000();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85E0);
  }

  return result;
}

unint64_t sub_213E04D2C()
{
  result = qword_27C8F85F0;
  if (!qword_27C8F85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85C0, &qword_213F545F8);
    sub_213E04DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85F0);
  }

  return result;
}

unint64_t sub_213E04DB8()
{
  result = qword_27C8F85F8;
  if (!qword_27C8F85F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8600, &qword_213F54620);
    sub_213E04E70();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85F8);
  }

  return result;
}

unint64_t sub_213E04E70()
{
  result = qword_27C8F8608;
  if (!qword_27C8F8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8610, &qword_213F54628);
    sub_213E04F28();
    sub_213DE3AE4(&qword_27C8F8638, &qword_27C8F8640, &qword_213F54648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8608);
  }

  return result;
}

unint64_t sub_213E04F28()
{
  result = qword_27C8F8618;
  if (!qword_27C8F8618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8620, &unk_213F54630);
    sub_213E05308(&qword_27C8F7C10, &qword_27C8F7BE8, &unk_213F52220);
    sub_213DE3AE4(&qword_27C8F8628, &qword_27C8F8630, &qword_213F54640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8618);
  }

  return result;
}

unint64_t sub_213E05000()
{
  result = qword_27C8F8658;
  if (!qword_27C8F8658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85A8, &qword_213F545E0);
    sub_213E0508C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8658);
  }

  return result;
}

unint64_t sub_213E0508C()
{
  result = qword_27C8F8660;
  if (!qword_27C8F8660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8668, &qword_213F54658);
    sub_213E05118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8660);
  }

  return result;
}

unint64_t sub_213E05118()
{
  result = qword_27C8F8670;
  if (!qword_27C8F8670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8678, &qword_213F54660);
    sub_213E051D0();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8670);
  }

  return result;
}

unint64_t sub_213E051D0()
{
  result = qword_27C8F8680;
  if (!qword_27C8F8680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8688, &qword_213F54668);
    sub_213E0525C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8680);
  }

  return result;
}

unint64_t sub_213E0525C()
{
  result = qword_27C8F8690;
  if (!qword_27C8F8690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8698, &qword_213F54670);
    sub_213E05308(&qword_27C8F86A0, &qword_27C8F86A8, &qword_213F54678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8690);
  }

  return result;
}

uint64_t sub_213E05308(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_213E05BDC(&qword_2811887E8, type metadata accessor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213E053B0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213E053BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213E053C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213E053E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E0545C()
{
  result = qword_27C8F8730;
  if (!qword_27C8F8730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8720, &qword_213F54790);
    sub_213E054E8();
    sub_213E0582C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8730);
  }

  return result;
}

unint64_t sub_213E054E8()
{
  result = qword_27C8F8738;
  if (!qword_27C8F8738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8718, &qword_213F54788);
    sub_213E055A0();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8738);
  }

  return result;
}

unint64_t sub_213E055A0()
{
  result = qword_27C8F8740;
  if (!qword_27C8F8740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8748, &qword_213F54798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8710, &qword_213F54780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8708, &qword_213F54778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8700, &qword_213F54770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86F8, &qword_213F54768);
    type metadata accessor for CapsuleTextFieldStyle();
    sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768);
    sub_213E05BDC(&qword_27C8F8758, type metadata accessor for CapsuleTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8740);
  }

  return result;
}

unint64_t sub_213E0582C()
{
  result = qword_27C8F8778;
  if (!qword_27C8F8778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86E0, &qword_213F54748);
    sub_213E058E4();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8778);
  }

  return result;
}

unint64_t sub_213E058E4()
{
  result = qword_27C8F8780;
  if (!qword_27C8F8780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86D8, &qword_213F54740);
    sub_213E0599C();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8780);
  }

  return result;
}

unint64_t sub_213E0599C()
{
  result = qword_27C8F8788;
  if (!qword_27C8F8788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86D0, &qword_213F54738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86C0, &qword_213F54728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213E05AC4();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8788);
  }

  return result;
}

unint64_t sub_213E05AC4()
{
  result = qword_27C8F8790;
  if (!qword_27C8F8790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86C0, &qword_213F54728);
    sub_213E05BDC(qword_281187C20, type metadata accessor for CardHeaderText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8790);
  }

  return result;
}

uint64_t sub_213E05BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E05C24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for CenteredCardHeaderContent();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80));
  result = sub_213DFF594(v5);
  *a1 = result;
  a1[1] = v8;
  return result;
}

uint64_t sub_213E05C8C(uint64_t *a1, uint64_t a2)
{
  v5 = v2[4];
  v6 = v2[5];
  v7 = *(type metadata accessor for CenteredCardHeaderContent() - 8);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_213E0422C(a1, a2, v8, v9, v10);
}

uint64_t sub_213E05D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E05D98(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_213F4F2F0();
    v13[0] = sub_213F4F390();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_213E05E9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_213F4F830() & 1;
  }
}

unint64_t sub_213E05EF4()
{
  result = qword_27C8F87B8;
  if (!qword_27C8F87B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8590, &qword_213F545C8);
    sub_213E05FAC();
    sub_213DE3AE4(&qword_27C8F87E8, &qword_27C8F85A0, &qword_213F545D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87B8);
  }

  return result;
}

unint64_t sub_213E05FAC()
{
  result = qword_27C8F87C0;
  if (!qword_27C8F87C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8560, &qword_213F54540);
    sub_213E06038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87C0);
  }

  return result;
}

unint64_t sub_213E06038()
{
  result = qword_27C8F87C8;
  if (!qword_27C8F87C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8558, &qword_213F54538);
    sub_213E060C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87C8);
  }

  return result;
}

unint64_t sub_213E060C4()
{
  result = qword_27C8F87D0;
  if (!qword_27C8F87D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8588, &qword_213F545C0);
    sub_213E06150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87D0);
  }

  return result;
}

unint64_t sub_213E06150()
{
  result = qword_27C8F87D8;
  if (!qword_27C8F87D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8580, &qword_213F545B8);
    sub_213E06208();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87D8);
  }

  return result;
}

unint64_t sub_213E06208()
{
  result = qword_27C8F87E0;
  if (!qword_27C8F87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8578, &qword_213F54580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8568, &qword_213F54548);
    sub_213DE3AE4(&qword_27C8F8570, &qword_27C8F8568, &qword_213F54548);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87E0);
  }

  return result;
}

__n128 CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v7;
  v8 = *(a1 + 144);
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = v8;
  v9 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v9;
  v10 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v12;
  *(a6 + 160) = a2;
  *(a6 + 168) = a3;
  *(a6 + 176) = a4;
  *(a6 + 184) = v6;
  return result;
}

uint64_t CenteredCardHeaderNavigation.body.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  sub_213E06670();
  return sub_213F4DD40();
}

uint64_t sub_213E0657C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8830, &qword_213F554E8);
  sub_213E067D0(a1, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8808, &qword_213F547D8) + 36);
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x8000000213FA4F00;
  v6[16] = 11;
  LOBYTE(a1) = sub_213F4E040();
  sub_213F4CDA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  v16 = a2 + *(result + 36);
  *v16 = a1;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

unint64_t sub_213E06670()
{
  result = qword_27C8F87F8;
  if (!qword_27C8F87F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F87F0, &qword_213F547D0);
    sub_213E066FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87F8);
  }

  return result;
}

unint64_t sub_213E066FC()
{
  result = qword_27C8F8800;
  if (!qword_27C8F8800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8808, &qword_213F547D8);
    sub_213DE3AE4(&qword_27C8F8810, &qword_27C8F8818, &qword_213F547E0);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8800);
  }

  return result;
}

uint64_t sub_213E067D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8838, &qword_213F554F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v116 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8840, &qword_213F554F8);
  v7 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v122 = &v116 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8848, &qword_213F55500);
  v9 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v124 = &v116 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8850, &qword_213F55508);
  v11 = *(*(v123 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v123);
  v127 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v116 - v15;
  MEMORY[0x28223BE20](v14);
  v126 = &v116 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8858, &qword_213F55510);
  v116 = *(v117 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v19 = &v116 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8860, &qword_213F55518);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v125 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v116 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8868, &qword_213F55520);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8870, &qword_213F55528);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v118 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v116 - v35;
  v37 = a1[22];
  if (*(a1[21] + 16))
  {
    *v30 = sub_213F4D8A0();
    *(v30 + 1) = 0;
    v30[16] = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8898, &qword_213F55550);
    v39 = a1;
    sub_213E070F8(a1, &v30[*(v38 + 44)]);
    v40 = v25;
    v41 = sub_213F4E060();
    sub_213F4CDA0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A0, &qword_213F55558) + 36)];
    *v50 = v41;
    *(v50 + 1) = v43;
    *(v50 + 2) = v45;
    *(v50 + 3) = v47;
    *(v50 + 4) = v49;
    v50[40] = 0;
    v51 = sub_213F4E070();
    sub_213F4CDA0();
    v52 = &v30[*(v26 + 36)];
    *v52 = v51;
    v25 = v40;
    *(v52 + 1) = v53;
    *(v52 + 2) = v54;
    *(v52 + 3) = v55;
    *(v52 + 4) = v56;
    v52[40] = 0;
    sub_213DE2B44(v30, v36, &qword_27C8F8868, &qword_213F55520);
    (*(v27 + 56))(v36, 0, 1, v26);
  }

  else
  {
    v39 = a1;
    (*(v27 + 56))(&v116 - v35, 1, 1, v26);
  }

  if (*(v37 + 16))
  {
    *v19 = sub_213F4D8A0();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8888, &qword_213F55540);
    v58 = v39;
    sub_213E07594(v39, &v19[*(v57 + 44)]);
    v59 = sub_213F4E060();
    sub_213F4CDA0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8890, &qword_213F55548) + 36)];
    *v68 = v59;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    v69 = sub_213F4E070();
    sub_213F4CDA0();
    v70 = v117;
    v71 = &v19[*(v117 + 36)];
    *v71 = v69;
    *(v71 + 1) = v72;
    *(v71 + 2) = v73;
    *(v71 + 3) = v74;
    *(v71 + 4) = v75;
    v71[40] = 0;
    sub_213DE2B44(v19, v25, &qword_27C8F8858, &qword_213F55510);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v58 = v39;
    v70 = v117;
  }

  (*(v116 + 56))(v25, v76, 1, v70);
  *v6 = sub_213F4D8A0();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8878, &qword_213F55530);
  sub_213E0790C(v58, &v6[*(v77 + 44)]);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v78 = v122;
  sub_213DE2B44(v6, v122, &qword_27C8F8838, &qword_213F554F0);
  v79 = (v78 + *(v119 + 36));
  v80 = v134;
  v79[4] = v133;
  v79[5] = v80;
  v79[6] = v135;
  v81 = v130;
  *v79 = v129;
  v79[1] = v81;
  v82 = v132;
  v79[2] = v131;
  v79[3] = v82;
  v83 = sub_213F4E060();
  sub_213F4CDA0();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v78;
  v93 = v124;
  sub_213DE2B44(v92, v124, &qword_27C8F8840, &qword_213F554F8);
  v94 = v93 + *(v120 + 36);
  *v94 = v83;
  *(v94 + 8) = v85;
  *(v94 + 16) = v87;
  *(v94 + 24) = v89;
  *(v94 + 32) = v91;
  *(v94 + 40) = 0;
  v95 = sub_213F4E070();
  sub_213F4CDA0();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v93;
  v105 = v121;
  sub_213DE2B44(v104, v121, &qword_27C8F8848, &qword_213F55500);
  v106 = v105 + *(v123 + 36);
  *v106 = v95;
  *(v106 + 8) = v97;
  *(v106 + 16) = v99;
  *(v106 + 24) = v101;
  *(v106 + 32) = v103;
  *(v106 + 40) = 0;
  v107 = v25;
  v108 = v126;
  sub_213DE2B44(v105, v126, &qword_27C8F8850, &qword_213F55508);
  v109 = v118;
  sub_213DE3164(v36, v118, &qword_27C8F8870, &qword_213F55528);
  v110 = v36;
  v111 = v125;
  sub_213DE3164(v107, v125, &qword_27C8F8860, &qword_213F55518);
  v112 = v127;
  sub_213DC264C(v108, v127);
  v113 = v128;
  sub_213DE3164(v109, v128, &qword_27C8F8870, &qword_213F55528);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8880, &qword_213F55538);
  sub_213DE3164(v111, v113 + *(v114 + 48), &qword_27C8F8860, &qword_213F55518);
  sub_213DC264C(v112, v113 + *(v114 + 64));
  sub_213DC26BC(v108);
  sub_213DE36FC(v107, &qword_27C8F8860, &qword_213F55518);
  sub_213DE36FC(v110, &qword_27C8F8870, &qword_213F55528);
  sub_213DC26BC(v112);
  sub_213DE36FC(v111, &qword_27C8F8860, &qword_213F55518);
  return sub_213DE36FC(v109, &qword_27C8F8870, &qword_213F55528);
}

uint64_t sub_213E070F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A8, &qword_213F55560);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  *v10 = sub_213F4D8A0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568) + 44);
  v21[0] = sub_213EA9CC0(a1[21]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton();
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590);
  sub_213E081A4(qword_2811886A8, type metadata accessor for CardButton);
  sub_213F4ECC0();
  v12 = swift_allocObject();
  v13 = v19;
  memcpy((v12 + 16), v19, 0x110uLL);
  v14 = &v10[*(v4 + 44)];
  *v14 = sub_213E08248;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_213E0815C;
  *(v14 + 3) = v12;
  sub_213DE3164(v10, v8, &qword_27C8F88A8, &qword_213F55560);
  v15 = v20;
  sub_213DE3164(v8, v20, &qword_27C8F88A8, &qword_213F55560);
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88C0, &qword_213F55598) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_213E08164(v13, v21);
  sub_213DE36FC(v10, &qword_27C8F88A8, &qword_213F55560);
  return sub_213DE36FC(v8, &qword_27C8F88A8, &qword_213F55560);
}

uint64_t sub_213E073BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 152);
  v17[8] = *(a1 + 136);
  v17[9] = v4;
  v17[10] = *(a1 + 168);
  v18 = *(a1 + 184);
  v5 = *(a1 + 88);
  v17[4] = *(a1 + 72);
  v17[5] = v5;
  v6 = *(a1 + 120);
  v17[6] = *(a1 + 104);
  v17[7] = v6;
  v7 = *(a1 + 24);
  v17[0] = *(a1 + 8);
  v17[1] = v7;
  v8 = *(a1 + 56);
  v17[2] = *(a1 + 40);
  v17[3] = v8;
  v9 = *(type metadata accessor for CardButton() + 24);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = *(a1 + 152);
  *(a2 + 128) = *(a1 + 136);
  *(a2 + 144) = v10;
  *(a2 + 160) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 184);
  v11 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v11;
  v12 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v12;
  v13 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v13;
  v14 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v14;
  *(a2 + 177) = 1;
  return sub_213DF73EC(v17, v16);
}

uint64_t sub_213E074E0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 240);
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  v5 = *(a2 + 240);
  sub_213F4EAA0();
  v6 = *(a2 + 192);
  v7 = *(a2 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  return sub_213F4EC30();
}

uint64_t sub_213E07594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A8, &qword_213F55560);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  *v10 = sub_213F4D8A0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568) + 44);
  v22[0] = sub_213EA9CC0(a1[22]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton();
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590);
  sub_213E081A4(qword_2811886A8, type metadata accessor for CardButton);
  sub_213F4ECC0();
  v12 = swift_allocObject();
  v13 = v20;
  memcpy((v12 + 16), v20, 0x110uLL);
  v14 = &v10[*(v4 + 44)];
  *v14 = sub_213E08248;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_213E0819C;
  *(v14 + 3) = v12;
  sub_213DE3164(v10, v8, &qword_27C8F88A8, &qword_213F55560);
  v15 = v21;
  *v21 = 0;
  *(v15 + 8) = 1;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88C8, &unk_213F555E8);
  sub_213DE3164(v8, v16 + *(v17 + 48), &qword_27C8F88A8, &qword_213F55560);
  sub_213E08164(v13, v22);
  sub_213DE36FC(v10, &qword_27C8F88A8, &qword_213F55560);
  return sub_213DE36FC(v8, &qword_27C8F88A8, &qword_213F55560);
}

uint64_t sub_213E07858(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 256);
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  v5 = *(a2 + 256);
  sub_213F4EAA0();
  v6 = *(a2 + 216);
  v7 = *(a2 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  return sub_213F4EC30();
}

uint64_t sub_213E0790C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v55 - v4;
  v62 = sub_213F4E230();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v62);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CardHeaderText();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D0, &qword_213F555F8);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v55 - v17;
  v65[0] = *(a1 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  v18 = *v64;
  v65[0] = *(a1 + 256);
  sub_213F4EAA0();
  v19 = *(a1 + 112);
  v20 = *(a1 + 80);
  v70 = *(a1 + 96);
  v71 = v19;
  v21 = *(a1 + 112);
  v22 = *(a1 + 144);
  v72 = *(a1 + 128);
  v23 = v72;
  v73 = v22;
  v24 = *(a1 + 48);
  v26 = *(a1 + 16);
  v66 = *(a1 + 32);
  v25 = v66;
  v67 = v24;
  v27 = *(a1 + 48);
  v28 = *(a1 + 80);
  v68 = *(a1 + 64);
  v29 = v68;
  v69 = v28;
  v30 = *(a1 + 16);
  v65[0] = *a1;
  v31 = v65[0];
  v65[1] = v30;
  *(v12 + 6) = v70;
  *(v12 + 7) = v21;
  v32 = *(a1 + 144);
  *(v12 + 8) = v23;
  *(v12 + 9) = v32;
  *(v12 + 2) = v25;
  *(v12 + 3) = v27;
  *(v12 + 4) = v29;
  *(v12 + 5) = v20;
  v33 = *v64;
  v34 = *(a1 + 160);
  v35 = *(a1 + 184);
  *v12 = v31;
  *(v12 + 1) = v26;
  v12[160] = v35 & 1;
  *(v12 + 21) = 0;
  v12[176] = 1;
  v12[177] = v34;
  v36 = v9[8];
  v64[20] = 0x403E000000000000;
  v37 = *MEMORY[0x277CE0A70];
  v38 = *(v5 + 104);
  v39 = v62;
  v38(v8, v37, v62);
  sub_213E05B80(v65, v64);
  sub_213DEC3D4();
  sub_213F4CFE0();
  v40 = v9[9];
  v64[0] = 0x4034000000000000;
  v38(v8, *MEMORY[0x277CE0A90], v39);
  sub_213F4CFE0();
  v55 = v9;
  v41 = v9[10];
  v64[0] = 0x403C000000000000;
  v38(v8, v37, v39);
  v42 = v63;
  sub_213F4CFE0();
  v43 = *MEMORY[0x277CDFA00];
  v44 = sub_213F4D390();
  (*(*(v44 - 8) + 104))(v42, v43, v44);
  sub_213E081A4(&qword_281183488, MEMORY[0x277CDFA28]);
  result = sub_213F4F1F0();
  if (result)
  {
    if (v18 <= v33)
    {
      v18 = v33;
    }

    sub_213E081A4(qword_281187C20, type metadata accessor for CardHeaderText);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    v46 = v56;
    sub_213F4E570();
    sub_213DE36FC(v42, &qword_27C8F75C0, &qword_213F54760);
    sub_213E081EC(v12);
    v48 = v57;
    v47 = v58;
    v49 = *(v58 + 16);
    v50 = v59;
    v49(v57, v46, v59);
    v51 = v61;
    *v61 = v18;
    *(v51 + 8) = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D8, &qword_213F55600);
    v49(v51 + *(v52 + 48), v48, v50);
    v53 = (v51 + *(v52 + 64));
    *v53 = v18;
    *(v53 + 8) = 0;
    v54 = *(v47 + 8);
    v54(v46, v50);
    return (v54)(v48, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E07EE0()
{
  memcpy(__dst, v0, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  sub_213E06670();
  return sub_213F4DD40();
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_213E07FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_213E07FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E08080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_213E080C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E081A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E081EC(uint64_t a1)
{
  v2 = type metadata accessor for CardHeaderText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E08254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 152);
  v17[8] = *(a1 + 136);
  v17[9] = v4;
  v17[10] = *(a1 + 168);
  v18 = *(a1 + 184);
  v5 = *(a1 + 88);
  v17[4] = *(a1 + 72);
  v17[5] = v5;
  v6 = *(a1 + 120);
  v17[6] = *(a1 + 104);
  v17[7] = v6;
  v7 = *(a1 + 24);
  v17[0] = *(a1 + 8);
  v17[1] = v7;
  v8 = *(a1 + 56);
  v17[2] = *(a1 + 40);
  v17[3] = v8;
  v9 = *(type metadata accessor for CardButton() + 24);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = *(a1 + 152);
  *(a2 + 128) = *(a1 + 136);
  *(a2 + 144) = v10;
  *(a2 + 160) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 184);
  v11 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v11;
  v12 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v12;
  v13 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v13;
  v14 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v14;
  *(a2 + 177) = 1;
  return sub_213DF73EC(v17, v16);
}

__n128 LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a3 + 16);
  v15 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v14;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = v15;
  result = *a12;
  v17 = *(a12 + 16);
  v18 = *(a12 + 32);
  *(a9 + 96) = *a12;
  *(a9 + 112) = v17;
  *(a9 + 128) = v18;
  *(a9 + 136) = a13;
  *(a9 + 144) = a14;
  return result;
}

uint64_t Badge.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_213F4E230();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12[1] = 0x4024000000000000;
  (*(v9 + 104))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0AA8]);
  sub_213DE15D0();
  sub_213F4CFE0();
  result = type metadata accessor for Badge(0);
  v11 = (a3 + *(result + 20));
  *v11 = a1;
  v11[1] = a2;
  return result;
}

uint64_t Badge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = (v1 + *(type metadata accessor for Badge(0) + 20));
  v8 = v7[1];
  v58 = *v7;
  v59 = v8;
  sub_213DBC9EC();

  v9 = sub_213F4E310();
  v11 = v10;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  sub_213F4E180();
  v14 = *MEMORY[0x277CE09A0];
  v15 = sub_213F4E0F0();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_213F4E190();
  sub_213DE36FC(v6, &qword_27C8F7668, &qword_213F52190);
  v17 = sub_213F4E2E0();
  v19 = v18;
  LOBYTE(v15) = v20;

  sub_213DBCA40(v9, v11, v13 & 1);

  v58 = sub_213F4E8F0();
  v21 = sub_213F4E2B0();
  v56 = v23;
  v57 = v22;
  LOBYTE(v9) = v24;
  sub_213DBCA40(v17, v19, v15 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v8) = sub_213F4E0B0();
  sub_213F4CDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v16) = v9 & 1;
  v62 = v9 & 1;
  v61 = 0;
  v60 = 0;
  LOBYTE(v9) = sub_213F4E040();
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v58) = 0;
  v42 = sub_213F4EEE0();
  v44 = v43;
  v45 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88E0, &qword_213F55660) + 36);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_213F4D950();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v48 = [objc_opt_self() tertiaryLabelColor];
  v49 = sub_213F4E870();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88E8, &qword_213F55668);
  *(v45 + *(v50 + 52)) = v49;
  *(v45 + *(v50 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F0, &qword_213F55670);
  v52 = (v45 + *(result + 36));
  *v52 = v42;
  v52[1] = v44;
  v53 = v56;
  v54 = v57;
  *a1 = v21;
  *(a1 + 8) = v54;
  *(a1 + 16) = v16;
  *(a1 + 24) = v53;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v8;
  *(a1 + 64) = v27;
  *(a1 + 72) = v29;
  *(a1 + 80) = v31;
  *(a1 + 88) = v33;
  *(a1 + 96) = 0;
  *(a1 + 104) = v9;
  *(a1 + 112) = v35;
  *(a1 + 120) = v37;
  *(a1 + 128) = v39;
  *(a1 + 136) = v41;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_213E088F0@<X0>(uint64_t a1@<X8>)
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

__n128 LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LeadingCardHeader(0);
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 112);
  *(v9 + 6) = *(a1 + 96);
  *(v9 + 7) = v10;
  *(v9 + 8) = *(a1 + 128);
  *(v9 + 18) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v11;
  v12 = *(a1 + 80);
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 5) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v14;
  v15 = (a4 + *(v8 + 24));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t sub_213E08BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v3 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v212 = &v189 - v4;
  v5 = sub_213F4E230();
  v209 = *(v5 - 8);
  v210 = v5;
  v6 = *(v209 + 64);
  MEMORY[0x28223BE20](v5);
  v208 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for CardHeaderText();
  v8 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v211 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D0, &qword_213F555F8);
  v200 = *(v10 - 8);
  v201 = v10;
  v11 = *(v200 + 64);
  MEMORY[0x28223BE20](v10);
  v199 = &v189 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A58, &qword_213F55B40);
  v13 = *(*(v197 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v197);
  v204 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v198 = &v189 - v17;
  MEMORY[0x28223BE20](v16);
  v203 = &v189 - v18;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A60, &qword_213F55B48);
  v19 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v192 = (&v189 - v20);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A68, &qword_213F55B50);
  v21 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v195 = &v189 - v22;
  v216 = sub_213F4D470();
  v23 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v193 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_213F4D290();
  v206 = *(v215 - 8);
  v25 = *(v206 + 64);
  v26 = MEMORY[0x28223BE20](v215);
  v28 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v189 - v29;
  v31 = type metadata accessor for LeadingCardHeader(0);
  v191 = *(v31 - 8);
  v32 = *(v191 + 64);
  MEMORY[0x28223BE20](v31);
  v33 = type metadata accessor for MapsDesignImage();
  v34 = *(*(v33 - 1) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A70, &qword_213F55B58);
  v37 = *(*(v214 - 8) + 64);
  MEMORY[0x28223BE20](v214);
  v219 = &v189 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A78, &qword_213F55B60);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v196 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v189 - v43;
  v207 = v31;
  v45 = (a1 + *(v31 + 20));
  sub_213DE3164((v45 + 12), &v222, &qword_27C8F7AB8, &qword_213F522C0);
  v217 = v44;
  v218 = v45;
  if (*(&v223 + 1))
  {
    sub_213DD7500(&v222, &v230);
    sub_213DEBAA8(&v230, &v36[v33[8]]);
    v220 = a1;
    sub_213E0C840(a1, &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeadingCardHeader);
    v46 = (*(v191 + 80) + 16) & ~*(v191 + 80);
    v47 = swift_allocObject();
    sub_213E0C8A8(&v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for LeadingCardHeader);
    v48 = sub_213F4EEE0();
    v192 = v49;
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v50 = v33[5];
    *&v36[v50] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v51 = v33[6];
    *&v36[v51] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v52 = v33[7];
    *&v36[v52] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v53 = &v36[v33[12]];
    v54 = &v36[v33[13]];
    v55 = &v36[v33[14]];
    v239 = 0uLL;
    *(&v240 + 7) = 0;
    *&v240 = 0;
    sub_213F4EA90();
    v56 = v223;
    v57 = BYTE8(v223);
    v58 = BYTE9(v223);
    v59 = BYTE10(v223);
    v60 = v224;
    *v55 = v222;
    *(v55 + 2) = v56;
    v55[24] = v57;
    v55[25] = v58;
    v55[26] = v59;
    *(v55 + 4) = v60;
    v61 = v33[15];
    *&v239 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v36[v61] = v222;
    v36[v33[9]] = 1;
    v62 = &v36[v33[10]];
    v63 = v192;
    *v62 = v48;
    v62[1] = v63;
    v36[v33[11]] = 1;
    *v53 = sub_213E0C910;
    v53[1] = v47;
    *v54 = 0;
    *(v54 + 1) = 0;
    sub_213E088F0(v30);
    sub_213F4D280();
    sub_213F4D270();
    v64 = *(v206 + 8);
    v65 = v215;
    v64(v28, v215);
    v64(v30, v65);
    sub_213E088F0(v30);
    sub_213F4D280();
    sub_213F4D270();
    v64(v28, v65);
    v64(v30, v65);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v66 = v219;
    sub_213E0C840(v36, v219, type metadata accessor for MapsDesignImage);
    v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
    v68 = v240;
    *v67 = v239;
    v67[1] = v68;
    v67[2] = v241;
    sub_213E0C980(v36, type metadata accessor for MapsDesignImage);
    sub_213E088F0(v30);
    sub_213F4D280();
    sub_213F4D270();
    v190 = v64;
    v64(v28, v65);
    v64(v30, v65);
    v69 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AB8, &unk_213F55BD0) + 36));
    v70 = *(v216 + 20);
    v71 = *MEMORY[0x277CE0118];
    v72 = sub_213F4D950();
    v73 = *(*(v72 - 8) + 104);
    v74 = v69 + v70;
    v75 = v71;
    v73(v74, v71, v72);
    __asm { FMOV            V0.2D, #10.0 }

    v189 = _Q0;
    *v69 = _Q0;
    *(v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
    v206 = sub_213F4EEE0();
    v191 = v219 + *(v214 + 36);
    v192 = v81;
    sub_213E088F0(v30);
    sub_213F4D280();
    sub_213F4D270();
    v82 = v28;
    v83 = v215;
    v84 = v190;
    v190(v82, v215);
    v84(v30, v83);
    v85 = v193;
    v73(&v193[*(v216 + 20)], v75, v72);
    *v85 = v189;
    sub_213F4E8C0();
    v86 = sub_213F4E900();

    sub_213F4CF60();
    v87 = MEMORY[0x277CDFC08];
    v88 = v191;
    sub_213E0C840(v85, v191, MEMORY[0x277CDFC08]);
    v89 = *&v242 * 0.5;
    v90 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
    sub_213E0C840(v85, v90, v87);
    *(v90 + *(sub_213F4D460() + 20)) = v89;
    v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
    v92 = v243;
    *v91 = v242;
    *(v91 + 16) = v92;
    *(v91 + 32) = v244;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
    *(v90 + *(v93 + 52)) = v86;
    *(v90 + *(v93 + 56)) = 256;
    v94 = sub_213F4EEE0();
    v96 = v95;
    sub_213E0C980(v85, MEMORY[0x277CDFC08]);
    v97 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
    *v97 = v94;
    v97[1] = v96;
    v98 = (v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
    v99 = v192;
    *v98 = v206;
    v98[1] = v99;
    v100 = v219;
    sub_213DE3164(v219, v195, &qword_27C8F8A70, &qword_213F55B58);
    swift_storeEnumTagMultiPayload();
    sub_213E0C4A4();
    sub_213E0C614();
    v101 = v217;
    v45 = v218;
    sub_213F4DBA0();
    sub_213DE36FC(v100, &qword_27C8F8A70, &qword_213F55B58);
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    a1 = v220;
  }

  else
  {
    v103 = v192;
    v104 = v206;
    v105 = v215;
    sub_213DE36FC(&v222, &qword_27C8F7AB8, &qword_213F522C0);
    v106 = v45[17];
    if (v106)
    {
      *v103 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      *(v103 + *(type metadata accessor for ImageComposerView(0) + 20)) = v106;

      sub_213E088F0(v30);
      sub_213F4D280();
      sub_213F4D270();
      v107 = *(v104 + 8);
      v107(v28, v105);
      v107(v30, v105);
      v220 = a1;
      sub_213E088F0(v30);
      sub_213F4D280();
      sub_213F4D270();
      v107(v28, v105);
      v107(v30, v105);
      sub_213F4EEE0();
      sub_213F4D0C0();
      v108 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A90, &qword_213F55BB0) + 36));
      v109 = v240;
      *v108 = v239;
      v108[1] = v109;
      v108[2] = v241;
      sub_213E088F0(v30);
      sub_213F4D280();
      sub_213F4D270();
      v190 = v107;
      v107(v28, v105);
      v107(v30, v105);
      v110 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A98, &qword_213F55BB8) + 36));
      v111 = *(v216 + 20);
      v112 = *MEMORY[0x277CE0118];
      v113 = sub_213F4D950();
      v114 = *(*(v113 - 8) + 104);
      v115 = v110 + v111;
      v116 = v113;
      v114(v115, v112);
      __asm { FMOV            V0.2D, #10.0 }

      v189 = _Q0;
      *v110 = _Q0;
      *(v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
      v219 = sub_213F4EEE0();
      v206 = v118;
      v191 = v192 + *(v213 + 36);
      v119 = v220;
      sub_213E088F0(v30);
      sub_213F4D280();
      sub_213F4D270();
      v120 = v28;
      v121 = v190;
      v190(v120, v105);
      v121(v30, v105);
      v122 = v193;
      v123 = v112;
      a1 = v119;
      (v114)(&v193[*(v216 + 20)], v123, v116);
      *v122 = v189;
      sub_213F4E8C0();
      v124 = sub_213F4E900();

      sub_213F4CF60();
      v125 = MEMORY[0x277CDFC08];
      v126 = v191;
      sub_213E0C840(v122, v191, MEMORY[0x277CDFC08]);
      v127 = *&v242 * 0.5;
      v128 = v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
      sub_213E0C840(v122, v128, v125);
      *(v128 + *(sub_213F4D460() + 20)) = v127;
      v129 = v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
      v130 = v243;
      *v129 = v242;
      *(v129 + 16) = v130;
      *(v129 + 32) = v244;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
      *(v128 + *(v131 + 52)) = v124;
      *(v128 + *(v131 + 56)) = 256;
      v132 = sub_213F4EEE0();
      v134 = v133;
      sub_213E0C980(v122, MEMORY[0x277CDFC08]);
      v135 = (v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
      *v135 = v132;
      v135[1] = v134;
      v136 = (v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
      v137 = v206;
      *v136 = v219;
      v136[1] = v137;
      v138 = v192;
      sub_213DE3164(v192, v195, &qword_27C8F8A60, &qword_213F55B48);
      swift_storeEnumTagMultiPayload();
      sub_213E0C4A4();
      sub_213E0C614();
      v139 = v217;
      v45 = v218;
      sub_213F4DBA0();
      sub_213DE36FC(v138, &qword_27C8F8A60, &qword_213F55B48);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
      (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
    }

    else
    {
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
      (*(*(v141 - 8) + 56))(v44, 1, 1, v141);
    }
  }

  v219 = *v45;
  v142 = v45;
  v143 = v45[1];
  v144 = v142[2];
  v145 = v142[3];
  v146 = *(v142 + 32);
  v147 = v142[6];
  v148 = v142[7];
  v149 = v142[8];
  v215 = v142[5];
  v216 = v148;

  sub_213E0C42C(v144, v145, v146);

  v214 = sub_213F4DA50();
  v150 = (a1 + *(v207 + 24));
  v152 = *v150;
  v151 = v150[1];
  v220 = v151;
  if (v152)
  {
    v153 = v151;
    v154 = swift_allocObject();
    *(v154 + 16) = v152;
    *(v154 + 24) = v153;
    v155 = sub_213E0C49C;
  }

  else
  {
    v155 = nullsub_1;
    v154 = 0;
  }

  v156 = swift_allocObject();
  *(v156 + 16) = v155;
  *(v156 + 24) = v154;
  *&v230 = v219;
  *(&v230 + 1) = v143;
  *&v231 = v144;
  *(&v231 + 1) = v145;
  LOBYTE(v232) = v146;
  *(&v232 + 1) = v215;
  *&v233[0] = v147;
  *(v233 + 8) = xmmword_213F55610;
  BYTE8(v233[1]) = 17;
  *&v234 = v216;
  *(&v234 + 1) = v149;
  v235 = xmmword_213F55620;
  LOBYTE(v236) = 17;
  *(&v236 + 1) = v214;
  *&v237 = sub_213E0C440;
  *(&v237 + 1) = v156;
  v238 = 0uLL;
  v157 = *(v218 + 88);
  v158 = v236;
  v159 = v211;
  *(v211 + 6) = xmmword_213F55620;
  *(v159 + 112) = v158;
  v160 = v231;
  *v159 = v230;
  *(v159 + 16) = v160;
  v161 = v232;
  v162 = v233[0];
  v163 = v234;
  *(v159 + 64) = v233[1];
  *(v159 + 80) = v163;
  *(v159 + 32) = v161;
  *(v159 + 48) = v162;
  v164 = v238;
  *(v159 + 128) = v237;
  *(v159 + 144) = v164;
  *(v159 + 160) = v157;
  *(v159 + 168) = 0;
  *(v159 + 176) = 257;
  v165 = v221;
  v166 = *(v221 + 32);
  v229 = 0x403E000000000000;
  v167 = *MEMORY[0x277CE0A70];
  v168 = v208;
  v169 = *(v209 + 104);
  v170 = v210;
  v169(v208, v167, v210);
  sub_213DD74C4(v152);
  sub_213E05B80(&v230, &v222);
  sub_213DEC3D4();
  sub_213F4CFE0();
  v171 = *(v165 + 36);
  *&v222 = 0x4034000000000000;
  v169(v168, *MEMORY[0x277CE0A90], v170);
  sub_213F4CFE0();
  v172 = *(v165 + 40);
  *&v222 = 0x403C000000000000;
  v169(v168, v167, v170);
  sub_213F4CFE0();
  v173 = *MEMORY[0x277CDFA00];
  v174 = sub_213F4D390();
  v175 = v212;
  (*(*(v174 - 8) + 104))(v212, v173, v174);
  sub_213E0C328(&qword_281183488, MEMORY[0x277CDFA28]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213E0C328(qword_281187C20, type metadata accessor for CardHeaderText);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    v177 = v199;
    sub_213F4E570();
    sub_213DE36FC(v175, &qword_27C8F75C0, &qword_213F54760);
    sub_213E0C980(v159, type metadata accessor for CardHeaderText);
    sub_213F4EEE0();
    sub_213F4D4E0();
    v178 = v198;
    (*(v200 + 32))(v198, v177, v201);
    v179 = (v178 + *(v197 + 36));
    v180 = v227;
    v179[4] = v226;
    v179[5] = v180;
    v179[6] = v228;
    v181 = v223;
    *v179 = v222;
    v179[1] = v181;
    v182 = v225;
    v179[2] = v224;
    v179[3] = v182;
    v183 = v203;
    sub_213DE2B44(v178, v203, &qword_27C8F8A58, &qword_213F55B40);
    v184 = v217;
    v185 = v196;
    sub_213DE3164(v217, v196, &qword_27C8F8A78, &qword_213F55B60);
    v186 = v204;
    sub_213DE3164(v183, v204, &qword_27C8F8A58, &qword_213F55B40);
    v187 = v205;
    sub_213DE3164(v185, v205, &qword_27C8F8A78, &qword_213F55B60);
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A88, &qword_213F55B70);
    sub_213DE3164(v186, v187 + *(v188 + 48), &qword_27C8F8A58, &qword_213F55B40);
    sub_213E0C448(&v230);
    sub_213DE36FC(v183, &qword_27C8F8A58, &qword_213F55B40);
    sub_213DE36FC(v184, &qword_27C8F8A78, &qword_213F55B60);
    sub_213DE36FC(v186, &qword_27C8F8A58, &qword_213F55B40);
    return sub_213DE36FC(v185, &qword_27C8F8A78, &qword_213F55B60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E0A3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for LeadingCardHeader(0) + 20) + 136);
  if (v3)
  {
    v4 = type metadata accessor for ImageComposerView(0);
    v10 = v4;
    v11 = sub_213E0C328(&qword_27C8F8AE0, type metadata accessor for ImageComposerView);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
    *boxed_opaque_existential_1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    *(boxed_opaque_existential_1 + *(v4 + 20)) = v3;
  }

  else
  {
    v6 = [objc_opt_self() tertiarySystemFillColor];
    v7 = sub_213F4E870();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
    v11 = sub_213E0C9E0();
    *&v9 = v7;
  }

  sub_213DD7500(&v9, a2);
}

uint64_t sub_213E0A4EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v64 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v57 - v4;
  v5 = sub_213F4E230();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Badge(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A28, &qword_213F55B20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A30, &qword_213F55B28);
  v18 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A38, &unk_213F55B30);
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v21);
  v59 = &v57 - v23;
  v24 = v2 + *(type metadata accessor for LeadingCardHeader(0) + 20);
  v25 = *(v24 + 80);
  if (v25)
  {
    v58 = v21;
    v26 = *(v24 + 72);
    v66 = 0x4024000000000000;
    (*(v6 + 104))(v9, *MEMORY[0x277CE0AA8], v5);
    sub_213DE15D0();

    sub_213F4CFE0();
    v27 = &v13[*(v10 + 20)];
    *v27 = v26;
    *(v27 + 1) = v25;
    v28 = sub_213F4E060();
    sub_213F4CDA0();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_213E0C8A8(v13, v17, type metadata accessor for Badge);
    v37 = &v17[*(v14 + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = sub_213F4E080();
    sub_213F4CDA0();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_213DE2B44(v17, v20, &qword_27C8F8A28, &qword_213F55B20);
    v47 = &v20[*(v62 + 36)];
    *v47 = v38;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    v48 = *MEMORY[0x277CDFA00];
    v49 = sub_213F4D390();
    v50 = v63;
    (*(*(v49 - 8) + 104))(v63, v48, v49);
    sub_213E0C328(&qword_281183488, MEMORY[0x277CDFA28]);
    result = sub_213F4F1F0();
    if (result)
    {
      sub_213E0BB90(&qword_27C8F8A40, &qword_27C8F8A30, &qword_213F55B28, sub_213E0C370);
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
      v52 = v59;
      sub_213F4E570();
      sub_213DE36FC(v50, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v20, &qword_27C8F8A30, &qword_213F55B28);
      v53 = v64;
      v54 = v58;
      (*(v65 + 32))(v64, v52, v58);
      return (*(v65 + 56))(v53, 0, 1, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v55 = v64;
    v56 = *(v65 + 56);

    return v56(v55, 1, 1, v21);
  }

  return result;
}

uint64_t LeadingCardHeader.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0);
  sub_213E0BAA8();
  return sub_213F4DD40();
}

double sub_213E0AB50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8950, &qword_213F556D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v65 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8940, &qword_213F556D0);
  v7 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v9 = &v65 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8930, &qword_213F556C8);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v12 = &v65 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8920, &qword_213F556C0);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v65 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8910, &qword_213F556B8);
  v16 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v18 = &v65 - v17;
  *v6 = sub_213F4D890();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89A0, &unk_213F55A58);
  sub_213E0AF84(a1, &v6[*(v19 + 44)]);
  v20 = sub_213F4E080();
  v21 = a1 + *(type metadata accessor for LeadingCardHeader(0) + 20);
  sub_213DE3164(v21 + 96, v70, &qword_27C8F7AB8, &qword_213F522C0);
  v22 = v71;
  sub_213DE36FC(v70, &qword_27C8F7AB8, &qword_213F522C0);
  if (!v22)
  {
    *(v21 + 136);
  }

  sub_213F4CDA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_213DE2B44(v6, v9, &qword_27C8F8950, &qword_213F556D8);
  v31 = &v9[*(v65 + 36)];
  *v31 = v20;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_213F4E0A0();
  sub_213F4CDA0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_213DE2B44(v9, v12, &qword_27C8F8940, &qword_213F556D0);
  v41 = &v12[*(v66 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_213F4E060();
  sub_213F4CDA0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_213DE2B44(v12, v15, &qword_27C8F8930, &qword_213F556C8);
  v51 = &v15[*(v67 + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = sub_213F4E070();
  sub_213F4CDA0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_213DE2B44(v15, v18, &qword_27C8F8920, &qword_213F556C0);
  v61 = &v18[*(v68 + 36)];
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  v62 = v69;
  sub_213DE2B44(v18, v69, &qword_27C8F8910, &qword_213F556B8);
  v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0) + 36);
  *&result = 1685217603;
  *v63 = xmmword_213F53CB0;
  *(v63 + 16) = 15;
  return result;
}

uint64_t sub_213E0AF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89A8, &qword_213F55A68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89B0, &qword_213F55A70);
  v8 = *(v7 - 8);
  v52 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89B8, &qword_213F55A78);
  v12 = *(v11 - 8);
  v54 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89C0, &qword_213F55A80);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v53 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v49 = &v47 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89C8, &qword_213F55A88);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v48 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v47 - v28;
  *v29 = sub_213F4E010();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89D0, &unk_213F55A90);
  sub_213E0B530(a1, &v29[*(v30 + 44)]);
  *v6 = sub_213F4D890();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568) + 44);
  v32 = type metadata accessor for LeadingCardHeader(0);
  *&v56 = sub_213EA9CC0(*(a1 + *(v32 + 20) + 144));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton();
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590);
  sub_213E0C328(qword_2811886A8, type metadata accessor for CardButton);
  sub_213F4ECC0();
  sub_213F4EEE0();
  sub_213F4D4E0();
  v33 = v50;
  sub_213DE2B44(v6, v50, &qword_27C8F89A8, &qword_213F55A68);
  v34 = (v33 + *(v52 + 44));
  v35 = v61;
  v34[4] = v60;
  v34[5] = v35;
  v34[6] = v62;
  v36 = v57;
  *v34 = v56;
  v34[1] = v36;
  v37 = v59;
  v34[2] = v58;
  v34[3] = v37;
  v38 = v33;
  v39 = v51;
  sub_213DE2B44(v38, v51, &qword_27C8F89B0, &qword_213F55A70);
  *(v39 + *(v54 + 44)) = 256;
  sub_213DE2B44(v39, v22, &qword_27C8F89B8, &qword_213F55A78);
  *&v22[*(v16 + 44)] = 0x3FF0000000000000;
  v40 = v49;
  sub_213DE2B44(v22, v49, &qword_27C8F89C0, &qword_213F55A80);
  v41 = v48;
  sub_213DE3164(v29, v48, &qword_27C8F89C8, &qword_213F55A88);
  v42 = v53;
  sub_213DE3164(v40, v53, &qword_27C8F89C0, &qword_213F55A80);
  v43 = v55;
  sub_213DE3164(v41, v55, &qword_27C8F89C8, &qword_213F55A88);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89D8, &qword_213F55AC8);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_213DE3164(v42, v43 + *(v44 + 64), &qword_27C8F89C0, &qword_213F55A80);
  sub_213DE36FC(v40, &qword_27C8F89C0, &qword_213F55A80);
  sub_213DE36FC(v29, &qword_27C8F89C8, &qword_213F55A88);
  sub_213DE36FC(v42, &qword_27C8F89C0, &qword_213F55A80);
  return sub_213DE36FC(v41, &qword_27C8F89C8, &qword_213F55A88);
}

uint64_t sub_213E0B530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89E0, &qword_213F55AD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89E8, &qword_213F55AD8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  *v17 = sub_213F4D8A0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89F0, &qword_213F55AE0);
  sub_213E0B77C(a1, 1, &v17[*(v18 + 44)]);
  *v10 = sub_213F4DA50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89F8, &qword_213F55AE8);
  sub_213E0B77C(a1, 0, &v10[*(v19 + 44)]);
  sub_213DE3164(v17, v15, &qword_27C8F89E8, &qword_213F55AD8);
  sub_213DE3164(v10, v8, &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE3164(v15, a2, &qword_27C8F89E8, &qword_213F55AD8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A00, &qword_213F55AF0);
  sub_213DE3164(v8, a2 + *(v20 + 48), &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE36FC(v10, &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE36FC(v17, &qword_27C8F89E8, &qword_213F55AD8);
  sub_213DE36FC(v8, &qword_27C8F89E0, &qword_213F55AD0);
  return sub_213DE36FC(v15, &qword_27C8F89E8, &qword_213F55AD8);
}

uint64_t sub_213E0B77C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A08, &qword_213F55AF8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A10, &qword_213F55B00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v22[-v17];
  *v18 = sub_213F4D8A0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A18, &qword_213F55B08);
  sub_213E08BA8(a1, &v18[*(v19 + 44)]);
  sub_213E0A4EC(v23, v11);
  sub_213DE3164(v18, v16, &qword_27C8F8A10, &qword_213F55B00);
  sub_213DE3164(v11, v9, &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE3164(v16, a3, &qword_27C8F8A10, &qword_213F55B00);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A20, &unk_213F55B10);
  sub_213DE3164(v9, a3 + *(v20 + 48), &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE36FC(v11, &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE36FC(v18, &qword_27C8F8A10, &qword_213F55B00);
  sub_213DE36FC(v9, &qword_27C8F8A08, &qword_213F55AF8);
  return sub_213DE36FC(v16, &qword_27C8F8A10, &qword_213F55B00);
}

uint64_t sub_213E0B9A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0);
  sub_213E0BAA8();
  return sub_213F4DD40();
}

uint64_t sub_213E0BA1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_213F4D7B0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_213E0BA50(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_213F4D7C0();
}

unint64_t sub_213E0BAA8()
{
  result = qword_27C8F8900;
  if (!qword_27C8F8900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F88F8, &qword_213F556B0);
    sub_213E0BB90(&qword_27C8F8908, &qword_27C8F8910, &qword_213F556B8, sub_213E0BB60);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8900);
  }

  return result;
}

uint64_t sub_213E0BB90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E0BC44()
{
  result = qword_27C8F8938;
  if (!qword_27C8F8938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8940, &qword_213F556D0);
    sub_213DE3AE4(&qword_27C8F8948, &qword_27C8F8950, &qword_213F556D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8938);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_213E0BD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_213E0BDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E0BE4C()
{
  sub_213DE2338();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_213E0C06C()
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

void sub_213E0C0F8()
{
  if (!qword_2811822D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8958, &qword_213F58650);
    v0 = sub_213F4F6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811822D8);
    }
  }
}

unint64_t sub_213E0C15C()
{
  result = qword_27C8F8960;
  if (!qword_27C8F8960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F88E0, &qword_213F55660);
    sub_213E0BB90(&qword_27C8F8968, &qword_27C8F8970, &unk_213F55A30, sub_213E0C240);
    sub_213DE3AE4(&qword_27C8F8988, &qword_27C8F88F0, &qword_213F55670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8960);
  }

  return result;
}

unint64_t sub_213E0C270()
{
  result = qword_281183310;
  if (!qword_281183310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8980, &unk_213F55A40);
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183310);
  }

  return result;
}

uint64_t sub_213E0C328(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213E0C370()
{
  result = qword_27C8F8A48;
  if (!qword_27C8F8A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A28, &qword_213F55B20);
    sub_213E0C328(&qword_27C8F8A50, type metadata accessor for Badge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8A48);
  }

  return result;
}

uint64_t sub_213E0C42C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_213DD8630(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_213E0C4A4()
{
  result = qword_27C8F8AA8;
  if (!qword_27C8F8AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A70, &qword_213F55B58);
    sub_213E0C55C();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AA8);
  }

  return result;
}

unint64_t sub_213E0C55C()
{
  result = qword_27C8F8AB0;
  if (!qword_27C8F8AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8AB8, &unk_213F55BD0);
    sub_213DEB968();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AB0);
  }

  return result;
}

unint64_t sub_213E0C614()
{
  result = qword_27C8F8AC8;
  if (!qword_27C8F8AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A60, &qword_213F55B48);
    sub_213E0C6CC();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AC8);
  }

  return result;
}

unint64_t sub_213E0C6CC()
{
  result = qword_27C8F8AD0;
  if (!qword_27C8F8AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A98, &qword_213F55BB8);
    sub_213E0C784();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AD0);
  }

  return result;
}

unint64_t sub_213E0C784()
{
  result = qword_27C8F8AD8;
  if (!qword_27C8F8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A90, &qword_213F55BB0);
    sub_213E0C328(&qword_27C8F8AE0, type metadata accessor for ImageComposerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AD8);
  }

  return result;
}

uint64_t sub_213E0C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E0C8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E0C910@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeadingCardHeader(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E0A3AC(v4, a1);
}

uint64_t sub_213E0C980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E0C9E0()
{
  result = qword_281183130;
  if (!qword_281183130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8AE8, &unk_213F55C40);
    sub_213E0CA98();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183130);
  }

  return result;
}

unint64_t sub_213E0CA98()
{
  result = qword_2811825B0;
  if (!qword_2811825B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811825B0);
  }

  return result;
}

uint64_t ActionBarButtonViewModel.ActionBarToastType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_213E0CBA0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_213E0CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 3 && a7 != 5)
  {
    if (a7 != 4)
    {
      return result;
    }
  }
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.axID.getter()
{
  v1 = *(v0 + 48);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x6F69746365726944;
    }

    else if (v1 == 4)
    {
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);

      return v5;
    }

    else
    {
      if (*v0)
      {
        result = 0x657469726F766146;
      }

      else
      {
        result = 0x547972617262694CLL;
      }

      *v0;
    }
  }

  else
  {
    v2 = 0x657469726F766146;
    if (v1 != 1)
    {
      v2 = 1702125906;
    }

    if (*(v0 + 48))
    {
      return v2;
    }

    else
    {
      return 6579265;
    }
  }

  return result;
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter()
{
  v1 = sub_213F4CB60();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_213F4F210();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v30[-v18];
  v20 = *v0;
  v21 = *(v0 + 48);
  if (v21 > 2)
  {
    if (v21 == 4)
    {
      v25 = v0 + 4;
      v23 = v0[4];
      v24 = v25[1];
    }

    else
    {
      sub_213F4F200();
      (*(v4 + 16))(v8, v17, v3);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v28 = qword_281182518;
      sub_213F4CB50();
      v23 = sub_213F4F260();
      (*(v4 + 8))(v17, v3);
    }
  }

  else if (*(v0 + 48))
  {
    if (v21 == 1)
    {
      sub_213F4F200();
      (*(v4 + 16))(v17, v14, v3);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v22 = qword_281182518;
      sub_213F4CB50();
      v23 = sub_213F4F260();
      (*(v4 + 8))(v14, v3);
    }

    else
    {
      sub_213F4F200();
      (*(v4 + 16))(v17, v11, v3);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v27 = qword_281182518;
      sub_213F4CB50();
      v23 = sub_213F4F260();
      (*(v4 + 8))(v11, v3);
    }
  }

  else
  {
    sub_213F4F200();
    (*(v4 + 16))(v17, v19, v3);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v26 = qword_281182518;
    sub_213F4CB50();
    v23 = sub_213F4F260();
    (*(v4 + 8))(v19, v3);
  }

  return v23;
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  if (v2 <= 2)
  {
    if (*(v0 + 48))
    {
      if (v2 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x216052C90](v3);
    return sub_213F4F8A0();
  }

  v5 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  if (v2 == 3)
  {
    MEMORY[0x216052C90](3);
    sub_213F4F2C0();
    if (!v6)
    {
      return sub_213F4F8A0();
    }

    sub_213F4F8A0();
  }

  else
  {
    v7 = v0[4];
    if (v2 == 4)
    {
      v8 = v0[5];
      MEMORY[0x216052C90](4);
      sub_213F4F2C0();
      sub_213F4F8A0();
      if (v6)
      {
        sub_213F4F2C0();
      }
    }

    else
    {
      MEMORY[0x216052C90](5);
      MEMORY[0x216052C90](v1 & 1);
      sub_213F4F2C0();
    }
  }

  return sub_213F4F2C0();
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)();
  return sub_213F4F8C0();
}

uint64_t sub_213E0D470()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)();
  return sub_213F4F8C0();
}

uint64_t sub_213E0D4D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)();
  return sub_213F4F8C0();
}

uint64_t _s10MapsDesign24ActionBarButtonViewModelV2idAC0cdE4TypeOvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_213E0CBA0(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ActionBarButtonViewModel.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_213E14680(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  return result;
}

uint64_t ActionBarButtonViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ActionBarButtonViewModel.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 ActionBarButtonViewModel.init(type:accessibilityLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = v4;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t UIActionBarViewModel.leadingActions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UIActionBarViewModel.trailingActions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t UIActionBarViewModel.leadingEditActions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t UIActionBarViewModel.trailingEditActions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void *UIActionBarViewModel.menu.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_213E0D83C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E15018;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_213DD74C4(v3);
}

uint64_t sub_213E0D8BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E14FD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  sub_213DD74C4(v3);
  result = sub_213DD7558(v7);
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t UIActionBarViewModel.menuProvider.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_213DD74C4(v1);
  return v1;
}

uint64_t UIActionBarViewModel.menuProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  result = sub_213DD7558(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t UIActionBarViewModel.init(leadingActions:trailingActions:leadingEditActions:trailingEditActions:menu:menuProvider:hidden:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

__n128 UIActionBarViewModel.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

uint64_t ActionBarSelection.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213E14704(v8, v7);
}

void sub_213E0DB14()
{
  v1 = sub_213F4F220();
  [v0 setAccessibilityIdentifier_];

  v57 = objc_opt_self();
  v2 = [v57 systemFontOfSize:22.0 weight:*MEMORY[0x277D74418]];
  v59 = [objc_opt_self() configurationWithFont_];

  v3 = *&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView];
  v4 = sub_213F4F220();
  v5 = [objc_opt_self() systemImageNamed_];

  [v3 setImage_];
  [v3 setPreferredSymbolConfiguration_];
  v56 = objc_opt_self();
  v6 = [v56 labelColor];
  [v3 setTintColor_];

  [v3 setContentMode_];
  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v8];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_213F4F220();
  [v3 asc_2781746F8];

  v10 = *&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView];
  [v10 addSubview_];
  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_213F55C50;
  v12 = [v3 centerXAnchor];
  v13 = [v10 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v3 centerYAnchor];
  v16 = [v10 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [v10 widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v11 + 48) = v19;
  v20 = [v10 heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v11 + 56) = v21;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v22 = sub_213F4F3E0();

  [v58 activateConstraints_];

  v23 = *&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView];
  v24 = sub_213F4F220();
  [v23 setText_];

  [v23 setNumberOfLines_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v26 = [v57 systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
  v27 = [v25 scaledFontForFont_];

  [v23 setFont_];
  [v23 setAdjustsFontForContentSizeCategory_];
  LODWORD(v28) = 1144750080;
  [v23 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v29];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v56 secondaryLabelColor];
  [v23 setTextColor_];

  v31 = sub_213F4F220();
  [v23 setAccessibilityIdentifier_];

  v32 = *&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView];
  v33 = sub_213F4F220();
  [v32 setText_];

  [v32 setNumberOfLines_];
  v34 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v35 = [v57 systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
  v36 = [v34 scaledFontForFont_];

  [v32 setFont_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v37) = 1144750080;
  [v32 setContentCompressionResistancePriority:0 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [v32 setContentHuggingPriority:0 forAxis:v38];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v56 labelColor];
  [v32 setTextColor_];

  v40 = sub_213F4F220();
  [v32 setAccessibilityIdentifier_];

  v41 = sub_213E0E644(&OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack, sub_213E0E6A8);
  [v0 addSubview_];

  v42 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack;
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack] setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_213F55C50;
  v44 = [*&v0[v42] topAnchor];
  v45 = [v0 topAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v43 + 32) = v46;
  v47 = [*&v0[v42] bottomAnchor];
  v48 = [v0 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v43 + 40) = v49;
  v50 = [*&v0[v42] leadingAnchor];
  v51 = [v0 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v43 + 48) = v52;
  v53 = [*&v0[v42] trailingAnchor];
  v54 = [v0 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-12.0];

  *(v43 + 56) = v55;
  v60 = sub_213F4F3E0();

  [v58 activateConstraints_];
}

id sub_213E0E50C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213F55C60;
  v3 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView);
  v4 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  v6 = v3;
  v7 = v4;
  v8 = sub_213F4F3E0();

  v9 = [v5 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setAlignment_];
  [v9 setUserInteractionEnabled_];
  return v9;
}

id sub_213E0E644(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_213E0E6A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213F55C60;
  v3 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView);
  *(v2 + 32) = v3;
  v4 = v3;
  *(v2 + 40) = sub_213E0E644(&OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack, sub_213E0E50C);
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  v6 = sub_213F4F3E0();

  v7 = [v5 initWithArrangedSubviews_];

  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];
  [v7 setUserInteractionEnabled_];
  return v7;
}

double ActionBarToastButton.intrinsicContentSize.getter()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_intrinsicContentSize);
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView] intrinsicContentSize];
  v2 = v1;
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView] intrinsicContentSize];
  v4 = v3;
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView] intrinsicContentSize];
  if (v4 > v5)
  {
    v5 = v4;
  }

  return v2 + 2.0 + v5 + 12.0;
}

void sub_213E0EA78()
{
  v1 = sub_213F4F220();
  [v0 setAccessibilityIdentifier_];

  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D743F8];
  v6 = [v4 systemFontOfSize:17.0 weight:*MEMORY[0x277D743F8]];
  v39 = [objc_opt_self() configurationWithFont_];

  v7 = *&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView];
  v8 = sub_213F4F220();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  [v7 setPreferredSymbolConfiguration_];
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v7 setTintColor_];

  LODWORD(v12) = 1148846080;
  [v7 aL];
  LODWORD(v13) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v13];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = sub_213F4F220();
  [v7 setAccessibilityIdentifier_];

  v15 = *&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel];
  v16 = sub_213F4F220();
  [v15 setText_];

  v17 = [v10 whiteColor];
  [v15 setTextColor_];

  v18 = [v4 systemFontOfSize:17.0 weight:v5];
  [v15 setFont_];

  LODWORD(v19) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v15 setContentHuggingPriority:0 forAxis:v20];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = sub_213F4F220();
  [v15 setAccessibilityIdentifier_];

  [v0 addSubview_];
  [v0 addSubview_];
  v38 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_213F55C70;
  v23 = [v7 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:14.0];

  *(v22 + 32) = v25;
  v26 = [v7 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [v15 leadingAnchor];
  v30 = [v7 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:4.0];

  *(v22 + 48) = v31;
  v32 = [v15 trailingAnchor];
  v33 = [v0 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-16.0];

  *(v22 + 56) = v34;
  v35 = [v15 centerYAnchor];
  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v22 + 64) = v37;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v40 = sub_213F4F3E0();

  [v38 activateConstraints_];
}

double ActionBarDirectionButton.intrinsicContentSize.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
  [*&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView] intrinsicContentSize];
  v2 = v1 + 14.0 + 4.0;
  [*&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel] intrinsicContentSize];
  return v2 + v3 + 16.0;
}

uint64_t sub_213E0F368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v12 = *(v4 + 32);
  v13 = v5;
  v14 = *(v4 + 64);
  v6 = v14;
  v7 = *(v4 + 16);
  v11[0] = *v4;
  v8 = v11[0];
  v11[1] = v7;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  return sub_213E14704(v11, &v10);
}

uint64_t sub_213E0F3E8(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v10[2] = *(v4 + 32);
  v10[3] = v5;
  v11 = *(v4 + 64);
  v6 = *(v4 + 16);
  v10[0] = *v4;
  v10[1] = v6;
  v7 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v7;
  *(v4 + 64) = *(a1 + 64);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  return sub_213E1473C(v10);
}

id ActionBarButton.__allocating_init(style:target:action:model:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v12 = *(a4 + 16);
  *v11 = *a4;
  *(v11 + 1) = v12;
  v13 = *(a4 + 48);
  *(v11 + 2) = *(a4 + 32);
  *(v11 + 3) = v13;
  *(v11 + 8) = *(a4 + 64);
  v16.receiver = v10;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v14 setStyle_];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  [v14 setTarget_];
  swift_unknownObjectRelease();
  [v14 setAction_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

id ActionBarButton.init(style:target:action:model:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v12 = *(a4 + 48);
  *(v11 + 2) = *(a4 + 32);
  *(v11 + 3) = v12;
  *(v11 + 8) = *(a4 + 64);
  v13 = *(a4 + 16);
  *v11 = *a4;
  *(v11 + 1) = v13;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v14 setStyle_];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  [v14 setTarget_];
  swift_unknownObjectRelease();
  [v14 setAction_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

id ActionBarButton.__allocating_init(customView:model:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 1) = v7;
  v8 = *(a2 + 48);
  *(v6 + 2) = *(a2 + 32);
  *(v6 + 3) = v8;
  *(v6 + 8) = *(a2 + 64);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setCustomView_];

  return v9;
}

id ActionBarButton.init(customView:model:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v7 = *(a2 + 48);
  *(v6 + 2) = *(a2 + 32);
  *(v6 + 3) = v7;
  *(v6 + 8) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 1) = v8;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setCustomView_];

  return v9;
}

id ActionBarButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ActionBarButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id ActionBarButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ActionBar.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_213E147B0(v9, v8);
}

uint64_t sub_213E0FA68@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  a2[2] = v3[2];
  *(a2 + 41) = *(v3 + 41);
  return sub_213E147B0(v10, v9);
}

void sub_213E0FAF0(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v3 = (*a2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(v15 + 9) = *(v3 + 41);
  v14[1] = v5;
  v15[0] = v6;
  v14[0] = v4;
  v7 = v11;
  v8 = v12;
  v9 = v13[0];
  *(v3 + 41) = *(v13 + 9);
  v3[1] = v8;
  v3[2] = v9;
  *v3 = v7;
  sub_213E147B0(&v11, v10);
  sub_213E147E8(v14);
  sub_213E105E4();
}

void ActionBar.model.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  v7[0] = v3[2];
  *(v7 + 9) = *(v3 + 41);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 41) = *(a1 + 41);
  sub_213E147E8(v6);
  sub_213E105E4();
}

void (*ActionBar.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_213E0FC94;
}

void sub_213E0FC94(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_213E105E4();
  }
}

uint64_t sub_213E0FCC8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_213E14FB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_213DD74C4(v4);
}

uint64_t sub_213E0FD68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E14F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_213DD74C4(v3);
  return sub_213DD7558(v8);
}

uint64_t ActionBar.onSelect.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_213DD74C4(v3);
  return v3;
}

uint64_t ActionBar.onSelect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_213DD7558(v6);
}

id ActionBar.init(model:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth] = 0xBFF0000000000000;
  v4 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast] = 0;
  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast] = 0;
  v5 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_model];
  v6 = a1[1];
  *v5 = *a1;
  v5[1] = v6;
  v5[2] = a1[2];
  *(v5 + 41) = *(a1 + 41);
  v7 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_213E10098();
  sub_213E105E4();

  return v9;
}

void sub_213E10098()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_213F55C50;
  v4 = [v2 leadingAnchor];
  v5 = [v1 a1];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v1 byte_2781749CC];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v2 topAnchor];
  v11 = [v1 property descriptor for SharedTripCellViewModel.handleSubtitle];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v16 = sub_213F4F3E0();

  [v31 activateConstraints_];

  v17 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setHidden_];
  [v17 setUserInteractionEnabled_];
  [v1 addSubview_];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_213F55C50;
  v19 = [v17 leadingAnchor];
  v20 = [v2 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v17 trailingAnchor];
  v23 = [v2 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v18 + 40) = v24;
  v25 = [v17 topAnchor];
  v26 = [v2 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v18 + 48) = v27;
  v28 = [v17 bottomAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v32 = sub_213F4F3E0();

  [v31 activateConstraints_];
}