uint64_t sub_20DFDAA94@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531D8, &qword_20E0117F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_20DFD9FC0();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v12 = v6;
  v49 = a2;
  LOBYTE(v63) = 0;
  v13 = v5;
  v14 = sub_20E009894();
  v48 = v15;
  LOBYTE(v63) = 1;
  v16 = sub_20E009894();
  v47 = v17;
  v18 = v16;
  LOBYTE(v63) = 2;
  *&v46 = sub_20E009894();
  *(&v46 + 1) = v19;
  LOBYTE(v51) = 3;
  sub_20DFDB02C();
  sub_20E0098C4();
  v43 = v18;
  v44 = v63;
  v45 = v64;
  v20 = v65;
  v21 = v66;
  v97 = 4;
  sub_20DFDB080();
  sub_20E0098C4();
  *&v42 = v20;
  *(&v42 + 1) = v21;
  v91 = v84;
  v92 = v85;
  v93 = v86;
  v94 = v87;
  v89 = v82;
  v90 = v83;
  LOBYTE(v63) = 5;
  v22 = sub_20E009874();
  v95 = v23 & 1;
  LOBYTE(v63) = 6;
  v40 = sub_20E009874();
  v41 = v22;
  v24 = v44;
  v88 = v25 & 1;
  v96 = 7;
  v26 = sub_20E009864();
  (*(v12 + 8))(v9, v13);
  v27 = v48;
  *&v51 = v14;
  *(&v51 + 1) = v48;
  v28 = v43;
  *&v52 = v43;
  *(&v52 + 1) = v47;
  v53 = v46;
  v54 = __PAIR128__(v45, v24);
  v29 = v42;
  v55 = v42;
  v58 = v91;
  v59 = v92;
  v60 = v93;
  v61 = v94;
  v56 = v89;
  v57 = v90;
  v30 = v40;
  *&v62[0] = v41;
  HIDWORD(v39) = v95;
  BYTE8(v62[0]) = v95;
  *&v62[1] = v40;
  LOBYTE(v13) = v88;
  BYTE8(v62[1]) = v88;
  BYTE9(v62[1]) = v26;
  sub_20DFD5C08(&v51, &v63);
  __swift_destroy_boxed_opaque_existential_0(v50);
  v63 = v14;
  v64 = v27;
  v65 = v28;
  v66 = v47;
  v67 = v46;
  v68 = v44;
  v69 = v45;
  v70 = __PAIR128__(*(&v42 + 1), v29);
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v71 = v89;
  v72 = v90;
  v77 = v41;
  v78 = BYTE4(v39);
  v79 = v30;
  v80 = v13;
  v81 = v26;
  result = sub_20DFD5C94(&v63);
  v32 = v62[0];
  v33 = v49;
  v49[10] = v61;
  v33[11] = v32;
  *(v33 + 186) = *(v62 + 10);
  v34 = v58;
  v33[6] = v57;
  v33[7] = v34;
  v35 = v60;
  v33[8] = v59;
  v33[9] = v35;
  v36 = v54;
  v33[2] = v53;
  v33[3] = v36;
  v37 = v56;
  v33[4] = v55;
  v33[5] = v37;
  v38 = v52;
  *v33 = v51;
  v33[1] = v38;
  return result;
}

unint64_t sub_20DFDB02C()
{
  result = qword_27C8531E0;
  if (!qword_27C8531E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531E0);
  }

  return result;
}

unint64_t sub_20DFDB080()
{
  result = qword_27C8531E8;
  if (!qword_27C8531E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531E8);
  }

  return result;
}

uint64_t sub_20DFDB0D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000020E017010 == a2;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020E0150E0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020E015100 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DFDB1F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853360, &qword_20E0122D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE6FC();
  sub_20E009A74();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_20E009894();
    v12 = 1;
    sub_20E0098B4();
    v11 = 2;
    sub_20E0098B4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_20DFDB3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E017010 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65706F725070746FLL && a2 == 0xED00007365697472 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E017030 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_20E009984();

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

uint64_t sub_20DFDB654@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853368, &qword_20E0122D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE750();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v49) = 0;
  v11 = sub_20E0098A4();
  LOBYTE(v49) = 1;
  v13 = sub_20E009894();
  v41 = v14;
  LOBYTE(v49) = 2;
  v15 = sub_20E009894();
  v40 = v16;
  v38 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853318, &qword_20E0122B8);
  LOBYTE(v43) = 3;
  sub_20DFDE9FC();
  sub_20E0098C4();
  v42 = 0;
  v37 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853330, &qword_20E0122C0);
  LOBYTE(v43) = 4;
  sub_20DFDEAD4();
  v17 = v42;
  sub_20E009884();
  v42 = v17;
  if (v17)
  {
    (*(v6 + 8))(v9, v5);
    v18 = 0;
  }

  else
  {
    v39 = v49;
    LOBYTE(v43) = 5;
    sub_20DFDEBAC();
    v19 = v42;
    sub_20E0098C4();
    if (!v19)
    {
      v36 = v49;
      v35 = v50;
      v20 = v51;
      v62 = 6;
      v34 = sub_20E009894();
      v42 = 0;
      v22 = v21;
      v23 = v11 & 1;
      v61 = v23;
      (*(v6 + 8))(v9, v5);
      LOBYTE(v43) = v23;
      *(&v43 + 1) = v13;
      v24 = v41;
      *&v44 = v41;
      v25 = v40;
      *(&v44 + 1) = v38;
      *&v45 = v40;
      v26 = v37;
      v27 = v39;
      *(&v45 + 1) = v37;
      *&v46 = v39;
      *(&v46 + 1) = v36;
      *&v47 = v35;
      v33 = v20;
      *(&v47 + 1) = v20;
      v28 = v34;
      *&v48 = v34;
      *(&v48 + 1) = v22;
      sub_20DFDA068(&v43, &v49);
      __swift_destroy_boxed_opaque_existential_0(a1);
      LOBYTE(v49) = v61;
      v50 = v13;
      v51 = v24;
      v52 = v38;
      v53 = v25;
      v54 = v26;
      v55 = v27;
      v56 = v36;
      v57 = v35;
      v58 = v33;
      v59 = v28;
      v60 = v22;
      result = sub_20DFDA0F4(&v49);
      v29 = v46;
      a2[2] = v45;
      a2[3] = v29;
      v30 = v48;
      a2[4] = v47;
      a2[5] = v30;
      v31 = v44;
      *a2 = v43;
      a2[1] = v31;
      return result;
    }

    v42 = v19;
    (*(v6 + 8))(v9, v5);
    v18 = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);

  if (v18)
  {
  }

  return result;
}

uint64_t sub_20DFDBBD0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853420, &qword_20E012808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF0AC();
  sub_20E009A74();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_20E009894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    v10[15] = 1;
    sub_20DF756D4(&qword_2811230A0);
    sub_20E0098C4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_20DFDBDF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6D726F66 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF65707954746E65 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572756365537369 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015360 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015380 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7865676572 && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_20DFDC184@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853418, &qword_20E012800);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v33 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF058();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v48 = a2;
  LOBYTE(v58[0]) = 0;
  v11 = sub_20E009894();
  v47 = v12;
  LOBYTE(v58[0]) = 1;
  v13 = sub_20E009894();
  v46 = v14;
  v41 = v13;
  LOBYTE(v58[0]) = 2;
  v40 = sub_20E009894();
  v45 = v15;
  LOBYTE(v58[0]) = 3;
  v39 = sub_20E009854();
  v44 = v16;
  LOBYTE(v58[0]) = 4;
  v38 = sub_20E009894();
  v43 = v17;
  LOBYTE(v58[0]) = 5;
  v37 = sub_20E009894();
  v42 = v18;
  LOBYTE(v58[0]) = 6;
  v19 = sub_20E0098A4();
  LOBYTE(v58[0]) = 7;
  v35 = sub_20E0098B4();
  LOBYTE(v58[0]) = 8;
  v36 = sub_20E0098B4();
  LOBYTE(v58[0]) = 9;
  v34 = sub_20E009894();
  v21 = v20;
  v66 = 10;
  v22 = sub_20E009864();
  v23 = v19 & 1;
  v65 = v23;
  (*(v10 + 8))(v8, v49);
  v24 = v47;
  *&v50 = v11;
  *(&v50 + 1) = v47;
  v25 = v42;
  *&v51 = v41;
  *(&v51 + 1) = v46;
  *&v52 = v40;
  *(&v52 + 1) = v45;
  *&v53 = v39;
  *(&v53 + 1) = v44;
  *&v54 = v38;
  *(&v54 + 1) = v43;
  *&v55 = v37;
  *(&v55 + 1) = v42;
  LOBYTE(v56) = v23;
  v26 = v35;
  *(&v56 + 1) = v35;
  *&v57[0] = v36;
  *(&v57[0] + 1) = v34;
  *&v57[1] = v21;
  BYTE8(v57[1]) = v22;
  sub_20DFDF154(&v50, v58);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v58[0] = v11;
  v58[1] = v24;
  v58[2] = v41;
  v58[3] = v46;
  v58[4] = v40;
  v58[5] = v45;
  v58[6] = v39;
  v58[7] = v44;
  v58[8] = v38;
  v58[9] = v43;
  v58[10] = v37;
  v58[11] = v25;
  v59 = v65;
  v60 = v26;
  v61 = v36;
  v62 = v34;
  v63 = v21;
  v64 = v22;
  result = sub_20DFDF18C(v58);
  v28 = v57[0];
  v29 = v48;
  v48[6] = v56;
  v29[7] = v28;
  *(v29 + 121) = *(v57 + 9);
  v30 = v53;
  v29[2] = v52;
  v29[3] = v30;
  v31 = v55;
  v29[4] = v54;
  v29[5] = v31;
  v32 = v51;
  *v29 = v50;
  v29[1] = v32;
  return result;
}

uint64_t sub_20DFDC7C8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853428, &qword_20E012810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_20DFDF100();
  sub_20E009A74();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_20E0098B4();
    v10[14] = 1;
    sub_20E009894();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_20DFDC974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656449616965 && a2 == 0xED00007265696669)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DFDCB84@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531F8, &qword_20E011800);
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v34 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA178();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v4;
  LOBYTE(v54[0]) = 0;
  v10 = v41;
  v11 = v7;
  v12 = sub_20E009894();
  v14 = v13;
  LOBYTE(v54[0]) = 1;
  v15 = sub_20E009894();
  v39 = v16;
  LOBYTE(v54[0]) = 2;
  v17 = sub_20E009894();
  v38 = v18;
  v35 = v15;
  v36 = v17;
  LOBYTE(v54[0]) = 3;
  v34 = sub_20E009854();
  v37 = v19;
  v79 = 4;
  sub_20DFDD028();
  sub_20E0098C4();
  v75 = v68;
  v76 = v69;
  v77 = v70;
  v71 = v64;
  v72 = v65;
  v73 = v66;
  v74 = v67;
  v78 = 5;
  v20 = sub_20E009894();
  v21 = v11;
  v23 = v22;
  (*(v9 + 8))(v21, v10);
  *&v42 = v12;
  *(&v42 + 1) = v14;
  v24 = v35;
  v25 = v38;
  *&v43 = v35;
  *(&v43 + 1) = v39;
  *&v44 = v36;
  *(&v44 + 1) = v38;
  *&v45 = v34;
  *(&v45 + 1) = v37;
  v50 = v75;
  v51 = v76;
  v52 = v77;
  v46 = v71;
  v47 = v72;
  v48 = v73;
  v49 = v74;
  *&v53 = v20;
  *(&v53 + 1) = v23;
  sub_20DFD5D9C(&v42, v54);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v54[0] = v12;
  v54[1] = v14;
  v54[2] = v24;
  v54[3] = v39;
  v54[4] = v36;
  v54[5] = v25;
  v54[6] = v34;
  v54[7] = v37;
  v59 = v75;
  v60 = v76;
  v61 = v77;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v62 = v20;
  v63 = v23;
  result = sub_20DFD5E28(v54);
  v27 = v51;
  v28 = v40;
  v40[8] = v50;
  v28[9] = v27;
  v29 = v53;
  v28[10] = v52;
  v28[11] = v29;
  v30 = v47;
  v28[4] = v46;
  v28[5] = v30;
  v31 = v49;
  v28[6] = v48;
  v28[7] = v31;
  v32 = v43;
  *v28 = v42;
  v28[1] = v32;
  v33 = v45;
  v28[2] = v44;
  v28[3] = v33;
  return result;
}

unint64_t sub_20DFDD028()
{
  result = qword_27C853200;
  if (!qword_27C853200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853200);
  }

  return result;
}

uint64_t sub_20DFDD07C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853398, &qword_20E0122E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE9A8();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = sub_20E009894();
  v40 = v12;
  LOBYTE(v48[0]) = 1;
  *&v39 = sub_20E009894();
  *(&v39 + 1) = v13;
  LOBYTE(v48[0]) = 2;
  v37 = sub_20E009894();
  v15 = v14;
  LOBYTE(v48[0]) = 3;
  v16 = sub_20E009894();
  v38 = v17;
  v33 = v16;
  LOBYTE(v48[0]) = 4;
  v36 = 0;
  v32 = sub_20E009894();
  v35 = v18;
  LOBYTE(v48[0]) = 5;
  v31 = sub_20E009894();
  v34 = v19;
  v60 = 6;
  v20 = sub_20E009894();
  v21 = *(v6 + 8);
  v22 = v20;
  v36 = v23;
  v21(v9, v5);
  *&v41 = v11;
  v24 = v40;
  *(&v41 + 1) = v40;
  v42 = v39;
  *&v43 = v37;
  *(&v43 + 1) = v15;
  *&v44 = v33;
  v25 = v38;
  *(&v44 + 1) = v38;
  *&v45 = v32;
  *(&v45 + 1) = v35;
  *&v46 = v31;
  *(&v46 + 1) = v34;
  *&v47 = v22;
  v26 = v36;
  *(&v47 + 1) = v36;
  sub_20DFDA1CC(&v41, v48);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v48[0] = v11;
  v48[1] = v24;
  v49 = v39;
  v50 = v37;
  v51 = v15;
  v52 = v33;
  v53 = v25;
  v54 = v32;
  v55 = v35;
  v56 = v31;
  v57 = v34;
  v58 = v22;
  v59 = v26;
  result = sub_20DFDA258(v48);
  v28 = v46;
  a2[4] = v45;
  a2[5] = v28;
  a2[6] = v47;
  v29 = v42;
  *a2 = v41;
  a2[1] = v29;
  v30 = v44;
  a2[2] = v43;
  a2[3] = v30;
  return result;
}

uint64_t sub_20DFDD5EC()
{
  v0 = sub_20E009844();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20DFDD638@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853208, &qword_20E011808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA288();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_20E009894();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_20E009894();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_20E009894();
  v27 = v15;
  v35 = 3;
  v16 = sub_20E009894();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_20DFD5E58(&v30, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_20DFD5EE4(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_20DFDD994(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_20E009A74();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_20E009894();
    v16 = 1;
    sub_20E009894();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_20DFDDB84()
{
  result = qword_27C853228;
  if (!qword_27C853228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853228);
  }

  return result;
}

uint64_t sub_20DFDDC70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20DFDDD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_20DFDDDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFDDE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFDDEC0()
{
  result = qword_27C853238;
  if (!qword_27C853238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853238);
  }

  return result;
}

unint64_t sub_20DFDDF18()
{
  result = qword_27C853240;
  if (!qword_27C853240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853240);
  }

  return result;
}

unint64_t sub_20DFDDF70()
{
  result = qword_27C853248;
  if (!qword_27C853248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853248);
  }

  return result;
}

unint64_t sub_20DFDDFC8()
{
  result = qword_27C853250;
  if (!qword_27C853250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853250);
  }

  return result;
}

unint64_t sub_20DFDE020()
{
  result = qword_27C853258;
  if (!qword_27C853258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853258);
  }

  return result;
}

unint64_t sub_20DFDE078()
{
  result = qword_27C853260;
  if (!qword_27C853260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853260);
  }

  return result;
}

unint64_t sub_20DFDE0D0()
{
  result = qword_27C853268;
  if (!qword_27C853268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853268);
  }

  return result;
}

unint64_t sub_20DFDE128()
{
  result = qword_27C853270;
  if (!qword_27C853270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853270);
  }

  return result;
}

unint64_t sub_20DFDE180()
{
  result = qword_27C853278;
  if (!qword_27C853278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853278);
  }

  return result;
}

unint64_t sub_20DFDE1D8()
{
  result = qword_27C853280;
  if (!qword_27C853280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853280);
  }

  return result;
}

unint64_t sub_20DFDE230()
{
  result = qword_27C853288;
  if (!qword_27C853288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853288);
  }

  return result;
}

unint64_t sub_20DFDE288()
{
  result = qword_27C853290;
  if (!qword_27C853290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853290);
  }

  return result;
}

unint64_t sub_20DFDE2E0()
{
  result = qword_27C853298;
  if (!qword_27C853298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853298);
  }

  return result;
}

unint64_t sub_20DFDE338()
{
  result = qword_27C8532A0;
  if (!qword_27C8532A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532A0);
  }

  return result;
}

unint64_t sub_20DFDE390()
{
  result = qword_27C8532A8;
  if (!qword_27C8532A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532A8);
  }

  return result;
}

unint64_t sub_20DFDE3E8()
{
  result = qword_27C8532B0;
  if (!qword_27C8532B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532B0);
  }

  return result;
}

unint64_t sub_20DFDE440()
{
  result = qword_27C8532B8;
  if (!qword_27C8532B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532B8);
  }

  return result;
}

unint64_t sub_20DFDE498()
{
  result = qword_27C8532C0;
  if (!qword_27C8532C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532C0);
  }

  return result;
}

unint64_t sub_20DFDE4F0()
{
  result = qword_27C8532C8;
  if (!qword_27C8532C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532C8);
  }

  return result;
}

unint64_t sub_20DFDE548()
{
  result = qword_27C8532D0;
  if (!qword_27C8532D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532D0);
  }

  return result;
}

unint64_t sub_20DFDE5A0()
{
  result = qword_27C8532D8;
  if (!qword_27C8532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532D8);
  }

  return result;
}

unint64_t sub_20DFDE5F8()
{
  result = qword_27C8532E0;
  if (!qword_27C8532E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532E0);
  }

  return result;
}

unint64_t sub_20DFDE650()
{
  result = qword_27C8532E8;
  if (!qword_27C8532E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532E8);
  }

  return result;
}

unint64_t sub_20DFDE6A8()
{
  result = qword_27C8532F0;
  if (!qword_27C8532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532F0);
  }

  return result;
}

unint64_t sub_20DFDE6FC()
{
  result = qword_27C853300;
  if (!qword_27C853300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853300);
  }

  return result;
}

unint64_t sub_20DFDE750()
{
  result = qword_27C853310;
  if (!qword_27C853310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853310);
  }

  return result;
}

unint64_t sub_20DFDE7A4()
{
  result = qword_27C853320;
  if (!qword_27C853320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDE828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853320);
  }

  return result;
}

unint64_t sub_20DFDE828()
{
  result = qword_27C853328;
  if (!qword_27C853328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853328);
  }

  return result;
}

unint64_t sub_20DFDE87C()
{
  result = qword_27C853338;
  if (!qword_27C853338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDE900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853338);
  }

  return result;
}

unint64_t sub_20DFDE900()
{
  result = qword_27C853340;
  if (!qword_27C853340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853340);
  }

  return result;
}

unint64_t sub_20DFDE954()
{
  result = qword_27C853348;
  if (!qword_27C853348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853348);
  }

  return result;
}

unint64_t sub_20DFDE9A8()
{
  result = qword_27C853358;
  if (!qword_27C853358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853358);
  }

  return result;
}

unint64_t sub_20DFDE9FC()
{
  result = qword_27C853370;
  if (!qword_27C853370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDEA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853370);
  }

  return result;
}

unint64_t sub_20DFDEA80()
{
  result = qword_27C853378;
  if (!qword_27C853378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853378);
  }

  return result;
}

unint64_t sub_20DFDEAD4()
{
  result = qword_27C853380;
  if (!qword_27C853380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDEB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853380);
  }

  return result;
}

unint64_t sub_20DFDEB58()
{
  result = qword_27C853388;
  if (!qword_27C853388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853388);
  }

  return result;
}

unint64_t sub_20DFDEBAC()
{
  result = qword_27C853390;
  if (!qword_27C853390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853390);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_20DFDEC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_20DFDECCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFDED44()
{
  result = qword_27C8533A0;
  if (!qword_27C8533A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533A0);
  }

  return result;
}

unint64_t sub_20DFDED9C()
{
  result = qword_27C8533A8;
  if (!qword_27C8533A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533A8);
  }

  return result;
}

unint64_t sub_20DFDEDF4()
{
  result = qword_27C8533B0;
  if (!qword_27C8533B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533B0);
  }

  return result;
}

unint64_t sub_20DFDEE4C()
{
  result = qword_27C8533B8;
  if (!qword_27C8533B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533B8);
  }

  return result;
}

unint64_t sub_20DFDEEA4()
{
  result = qword_27C8533C0;
  if (!qword_27C8533C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533C0);
  }

  return result;
}

unint64_t sub_20DFDEEFC()
{
  result = qword_27C8533C8;
  if (!qword_27C8533C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533C8);
  }

  return result;
}

unint64_t sub_20DFDEF54()
{
  result = qword_27C8533D0;
  if (!qword_27C8533D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533D0);
  }

  return result;
}

unint64_t sub_20DFDEFAC()
{
  result = qword_27C8533D8;
  if (!qword_27C8533D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533D8);
  }

  return result;
}

unint64_t sub_20DFDF004()
{
  result = qword_27C8533E0;
  if (!qword_27C8533E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533E0);
  }

  return result;
}

unint64_t sub_20DFDF058()
{
  result = qword_27C8533F0;
  if (!qword_27C8533F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533F0);
  }

  return result;
}

unint64_t sub_20DFDF0AC()
{
  result = qword_27C853400;
  if (!qword_27C853400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853400);
  }

  return result;
}

unint64_t sub_20DFDF100()
{
  result = qword_27C853410;
  if (!qword_27C853410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalTAFField.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalTAFField.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DFDF330()
{
  result = qword_27C853430;
  if (!qword_27C853430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853430);
  }

  return result;
}

unint64_t sub_20DFDF388()
{
  result = qword_27C853438;
  if (!qword_27C853438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853438);
  }

  return result;
}

unint64_t sub_20DFDF3E0()
{
  result = qword_27C853440;
  if (!qword_27C853440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853440);
  }

  return result;
}

unint64_t sub_20DFDF438()
{
  result = qword_27C853448;
  if (!qword_27C853448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853448);
  }

  return result;
}

unint64_t sub_20DFDF490()
{
  result = qword_27C853450;
  if (!qword_27C853450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853450);
  }

  return result;
}

unint64_t sub_20DFDF4E8()
{
  result = qword_27C853458;
  if (!qword_27C853458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853458);
  }

  return result;
}

unint64_t sub_20DFDF540()
{
  result = qword_27C853460;
  if (!qword_27C853460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853460);
  }

  return result;
}

unint64_t sub_20DFDF598()
{
  result = qword_27C853468;
  if (!qword_27C853468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853468);
  }

  return result;
}

unint64_t sub_20DFDF5F0()
{
  result = qword_27C853470;
  if (!qword_27C853470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853470);
  }

  return result;
}

uint64_t sub_20DFDF668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E008D04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20E008714();
  (*(*(v8 - 8) + 16))(a1, v1, v8);
  sub_20E008CF4();
  sub_20E008CE4();
  (*(v4 + 8))(v7, v3);
  sub_20E009254();

  sub_20E0086D4();

  sub_20DFE1098();
  sub_20E0086D4();

  v9 = [objc_opt_self() processInfo];
  LOBYTE(v3) = [v9 isMacCatalystApp];

  if ((v3 & 1) == 0)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 systemName];

    sub_20E0091D4();
  }

  sub_20E0086D4();
}

void sub_20DFDF8DC(unint64_t a1, int64_t a2, unint64_t a3, NSObject *a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    v8 = sub_20E0086A4();
    if (v8)
    {
      v9 = v8;
      if (qword_2811230C8 != -1)
      {
LABEL_40:
        swift_once();
      }

      v10 = sub_20E009094();
      __swift_project_value_buffer(v10, qword_2811249D0);

      v11 = sub_20E009074();
      v12 = sub_20E009554();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v9;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v57 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_20DF74468(a3, a4, &v57);
        _os_log_impl(&dword_20DF62000, v11, v12, ">>> %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x20F32B3A0](v15, -1, -1);
        v16 = v14;
        v9 = v13;
        MEMORY[0x20F32B3A0](v16, -1, -1);
      }

      v17 = sub_20E009074();
      v18 = sub_20E009554();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v57 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_20DF74468(a1, a2, &v57);
        _os_log_impl(&dword_20DF62000, v17, v18, "%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x20F32B3A0](v20, -1, -1);
        MEMORY[0x20F32B3A0](v19, -1, -1);
      }

      a4 = sub_20E009074();
      v21 = sub_20E009554();
      if (os_log_type_enabled(a4, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, a4, v21, "======== Headers =======", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      v23 = 0;
      v24 = v9 + 64;
      v25 = 1 << *(v9 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      a3 = v26 & *(v9 + 64);
      v27 = (v25 + 63) >> 6;
      v53 = v9;
      while (a3)
      {
        a2 = v23;
LABEL_28:
        v40 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v41 = (a2 << 10) | (16 * v40);
        v42 = *(v9 + 48) + v41;
        a4 = *v42;
        v43 = *(v42 + 8);
        v44 = (*(v9 + 56) + v41);
        a1 = v44[1];
        v55 = *v44;

        v45 = sub_20E009074();
        v46 = sub_20E009554();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v57 = v54;
          *v47 = 136315394;
          v48 = sub_20DF74468(a4, v43, &v57);

          *(v47 + 4) = v48;
          *(v47 + 12) = 2080;
          v49 = sub_20DF74468(v55, a1, &v57);

          *(v47 + 14) = v49;
          _os_log_impl(&dword_20DF62000, v45, v46, "%s: %s", v47, 0x16u);
          a4 = v54;
          swift_arrayDestroy();
          MEMORY[0x20F32B3A0](v54, -1, -1);
          v50 = v47;
          v9 = v53;
          MEMORY[0x20F32B3A0](v50, -1, -1);
        }

        else
        {
        }

        v23 = a2;
      }

      while (1)
      {
        a2 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (a2 >= v27)
        {
          break;
        }

        a3 = *(v24 + 8 * a2);
        ++v23;
        if (a3)
        {
          goto LABEL_28;
        }
      }

      oslog = sub_20E009074();
      v51 = sub_20E009554();
      if (os_log_type_enabled(oslog, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_20DF62000, oslog, v51, "========================", v52, 2u);
        MEMORY[0x20F32B3A0](v52, -1, -1);
      }

LABEL_36:

      return;
    }
  }

  v28 = sub_20E0086A4();
  if (!v28)
  {
    return;
  }

  v29 = v28;
  if (*(v28 + 16))
  {
    v30 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974);
    if (v31)
    {
      v32 = (*(v29 + 56) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];

      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v35 = sub_20E009094();
      __swift_project_value_buffer(v35, qword_2811249D0);

      oslog = sub_20E009074();
      v36 = sub_20E009554();

      if (os_log_type_enabled(oslog, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_20DF74468(a3, a4, &v57);
        *(v37 + 12) = 2080;
        v39 = sub_20DF74468(v34, v33, &v57);

        *(v37 + 14) = v39;
        _os_log_impl(&dword_20DF62000, oslog, v36, ">>> %s : requestID: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F32B3A0](v38, -1, -1);
        MEMORY[0x20F32B3A0](v37, -1, -1);

        return;
      }

      goto LABEL_36;
    }
  }
}

void sub_20DFDFFF8(NSObject *a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v147 = *MEMORY[0x277D85DE8];
  v10 = sub_20E009234();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v140 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v134 - v18;
  v20 = sub_20E008714();
  v21 = *(v20 - 8);
  isa = v21[8].isa;
  MEMORY[0x28223BE20](v20);
  v24 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a4 + 16);
  v26 = (a4 + 32);
  while (v25)
  {
    v27 = *v26++;
    --v25;
    if (v27 == a3)
    {
      goto LABEL_70;
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v142 = sub_20E0086A4();
    if (v142)
    {
      v137 = a1;
      if (qword_2811230C8 != -1)
      {
LABEL_72:
        swift_once();
      }

      v28 = sub_20E009094();
      v29 = __swift_project_value_buffer(v28, qword_2811249D0);

      v141 = v29;
      v30 = sub_20E009074();
      v31 = sub_20E009544();

      v32 = os_log_type_enabled(v30, v31);
      v138 = a2;
      v139 = v5;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v145 = v34;
        *v33 = 136315394;
        *(v33 + 4) = sub_20DF74468(v137, v138, &v145);
        *(v33 + 12) = 2048;
        *(v33 + 14) = a3;
        _os_log_impl(&dword_20DF62000, v30, v31, "Failure while trying to %s, with status Code: %ld", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v34);
        v35 = v34;
        a2 = v138;
        MEMORY[0x20F32B3A0](v35, -1, -1);
        v36 = v33;
        v5 = v139;
        MEMORY[0x20F32B3A0](v36, -1, -1);
      }

      (v21[2].isa)(v24, v5, v20);
      v37 = sub_20E009074();
      v38 = sub_20E009544();
      if (os_log_type_enabled(v37, v38))
      {
        v135 = v38;
        v39 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&v145 = v134;
        *&v136 = v39;
        *v39 = 136315138;
        sub_20E0086C4();
        v40 = sub_20E008AF4();
        v41 = *(v40 - 8);
        if ((*(v41 + 48))(v19, 1, v40) == 1)
        {
          sub_20DFE1030(v19);
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        else
        {
          v42 = sub_20E008A54();
          v43 = v58;
          (*(v41 + 8))(v19, v40);
        }

        a2 = v138;
        (v21[1].isa)(v24, v20);
        v59 = sub_20DF74468(v42, v43, &v145);

        v60 = v136;
        *(v136 + 4) = v59;
        _os_log_impl(&dword_20DF62000, v37, v135, "Request : %s", v60, 0xCu);
        v61 = v134;
        __swift_destroy_boxed_opaque_existential_0(v134);
        MEMORY[0x20F32B3A0](v61, -1, -1);
        MEMORY[0x20F32B3A0](v60, -1, -1);

        v5 = v139;
      }

      else
      {

        (v21[1].isa)(v24, v20);
      }

      if (v142[2].isa)
      {
        v62 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974);
        if (v63)
        {
          v64 = (v142[7].isa + 16 * v62);
          v66 = *v64;
          v65 = v64[1];

          v67 = sub_20E009074();
          v68 = a2;
          a2 = sub_20E009544();

          if (os_log_type_enabled(v67, a2))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v145 = v70;
            *v69 = 136315394;
            *(v69 + 4) = sub_20DF74468(v137, v68, &v145);
            *(v69 + 12) = 2080;
            v71 = sub_20DF74468(v66, v65, &v145);

            *(v69 + 14) = v71;
            _os_log_impl(&dword_20DF62000, v67, a2, ">>> %s : requestID: %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F32B3A0](v70, -1, -1);
            MEMORY[0x20F32B3A0](v69, -1, -1);
          }

          else
          {
          }
        }
      }

      sub_20E0086C4();
      v74 = sub_20E008AF4();
      v75 = *(v74 - 8);
      if ((*(v75 + 48))(v17, 1, v74) == 1)
      {
        sub_20DFE1030(v17);
      }

      else
      {
        v76 = sub_20E008AA4();
        v78 = v77;
        (*(v75 + 8))(v17, v74);
        if (v78)
        {

          v79 = sub_20E009074();
          v80 = sub_20E009544();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            *&v145 = a2;
            *v81 = 136315138;
            v82 = sub_20DF74468(v76, v78, &v145);

            *(v81 + 4) = v82;
            _os_log_impl(&dword_20DF62000, v79, v80, "Query : %s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(a2);
            MEMORY[0x20F32B3A0](a2, -1, -1);
            v83 = v81;
            v5 = v139;
            MEMORY[0x20F32B3A0](v83, -1, -1);
          }

          else
          {
          }
        }
      }

      v84 = sub_20E009074();
      v85 = sub_20E009544();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_20DF62000, v84, v85, "======== Headers =======", v86, 2u);
        MEMORY[0x20F32B3A0](v86, -1, -1);
      }

      v88 = 0;
      v21 = v142 + 8;
      v89 = 1 << LOBYTE(v142[4].isa);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      a3 = v90 & v142[8].isa;
      v19 = ((v89 + 63) >> 6);
      *&v87 = 136315394;
      v136 = v87;
      while (a3)
      {
        v20 = v88;
LABEL_54:
        v91 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v92 = (v20 << 10) | (16 * v91);
        v93 = (v142[6].isa + v92);
        v24 = *v93;
        a2 = v93[1];
        v94 = (v142[7].isa + v92);
        v96 = *v94;
        v95 = v94[1];

        v17 = sub_20E009074();
        v97 = sub_20E009544();
        if (os_log_type_enabled(v17, v97))
        {
          v98 = swift_slowAlloc();
          v137 = v17;
          v17 = v98;
          v138 = swift_slowAlloc();
          *&v145 = v138;
          *v17 = v136;
          v24 = sub_20DF74468(v24, a2, &v145);

          *(v17 + 4) = v24;
          *(v17 + 6) = 2080;
          v99 = sub_20DF74468(v96, v95, &v145);

          *(v17 + 14) = v99;
          v100 = v97;
          v101 = v137;
          _os_log_impl(&dword_20DF62000, v137, v100, "%s: %s", v17, 0x16u);
          v102 = v138;
          swift_arrayDestroy();
          MEMORY[0x20F32B3A0](v102, -1, -1);
          MEMORY[0x20F32B3A0](v17, -1, -1);
        }

        else
        {
        }

        v88 = v20;
        v5 = v139;
      }

      while (1)
      {
        v20 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v20 >= v19)
        {
          break;
        }

        a3 = v21[v20].isa;
        ++v88;
        if (a3)
        {
          goto LABEL_54;
        }
      }

      v103 = sub_20E009074();
      v104 = sub_20E009544();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_20DF62000, v103, v104, "========================", v105, 2u);
        MEMORY[0x20F32B3A0](v105, -1, -1);
      }

      v106 = sub_20E0086E4();
      if (v107 >> 60 != 15)
      {
        v108 = v106;
        v109 = v107;
        v110 = objc_opt_self();
        v111 = sub_20E008B64();
        v143 = 0;
        v112 = [v110 JSONObjectWithData:v111 options:0 error:&v143];

        v113 = v143;
        if (v112)
        {
          sub_20E009654();
          swift_unknownObjectRelease();
          sub_20DF77A64(v144, &v145);
          __swift_project_boxed_opaque_existential_1(&v145, v146);
          v114 = sub_20E009974();
          *&v144[0] = 0;
          v115 = [v110 dataWithJSONObject:v114 options:1 error:v144];
          swift_unknownObjectRelease();
          v116 = *&v144[0];
          if (v115)
          {
            v117 = sub_20E008B84();
            v119 = v118;

            sub_20E009214();
            v120 = sub_20E0091F4();
            if (v121)
            {
              v122 = v121;
              v123 = v120;
              v124 = sub_20E009074();
              v125 = sub_20E009544();
              if (os_log_type_enabled(v124, v125))
              {
                v126 = swift_slowAlloc();
                v127 = swift_slowAlloc();
                *&v144[0] = v127;
                *v126 = 136315138;
                v128 = sub_20DF74468(v123, v122, v144);

                *(v126 + 4) = v128;
                _os_log_impl(&dword_20DF62000, v124, v125, "Body : %s", v126, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v127);
                MEMORY[0x20F32B3A0](v127, -1, -1);
                MEMORY[0x20F32B3A0](v126, -1, -1);
                sub_20DF64DE8(v108, v109);
                sub_20DF67FFC(v117, v119);
              }

              else
              {
                sub_20DF64DE8(v108, v109);
                sub_20DF67FFC(v117, v119);
              }
            }

            else
            {
              sub_20DF64DE8(v108, v109);
              sub_20DF67FFC(v117, v119);
            }
          }

          else
          {
            v131 = v116;
            v132 = sub_20E008A34();

            swift_willThrow();
            sub_20DF64DE8(v108, v109);
          }

          __swift_destroy_boxed_opaque_existential_0(&v145);
        }

        else
        {
          v129 = v113;
          v130 = sub_20E008A34();

          swift_willThrow();
          sub_20DF64DE8(v108, v109);
        }
      }

      goto LABEL_70;
    }
  }

  v44 = sub_20E0086A4();
  if (!v44)
  {
LABEL_70:
    v133 = *MEMORY[0x277D85DE8];
    return;
  }

  v45 = v44;
  if (*(v44 + 16) && (v46 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974), (v47 & 1) != 0))
  {
    v48 = (*(v45 + 56) + 16 * v46);
    v50 = *v48;
    v49 = v48[1];

    if (qword_2811230C8 != -1)
    {
      swift_once();
    }

    v51 = sub_20E009094();
    __swift_project_value_buffer(v51, qword_2811249D0);

    v142 = sub_20E009074();
    v52 = sub_20E009544();

    if (os_log_type_enabled(v142, v52))
    {
      v53 = a1;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v145 = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_20DF74468(v53, a2, &v145);
      *(v54 + 12) = 2080;
      v56 = sub_20DF74468(v50, v49, &v145);

      *(v54 + 14) = v56;
      _os_log_impl(&dword_20DF62000, v142, v52, ">>> %s : requestID: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v55, -1, -1);
      MEMORY[0x20F32B3A0](v54, -1, -1);

      goto LABEL_70;
    }

    v72 = *MEMORY[0x277D85DE8];
    v73 = v142;
  }

  else
  {
    v57 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_20DFE0F98()
{
  v0 = sub_20E0086A4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (*(v0 + 16) && (v2 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_20DFE1030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFE1098()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_20E009964();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v1 = sub_20E009964();
  MEMORY[0x20F32A4B0](v1);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v2 = sub_20E009964();
  MEMORY[0x20F32A4B0](v2);

  return v4;
}

uint64_t sub_20DFE11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v10 = sub_20E008E54();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = *(*(type metadata accessor for RecordsResponse(0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  Request = type metadata accessor for GetRequest(0);
  *(v8 + 112) = Request;
  v15 = *(*(Request - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v16 = sub_20E008C14();
  *(v8 + 128) = v16;
  v17 = *(v16 - 8);
  *(v8 + 136) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 176) = *a5;

  return MEMORY[0x2822009F8](sub_20DFE1344, 0, 0);
}

uint64_t sub_20DFE1344()
{
  v47 = v0;
  sub_20DFE2818();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  JWToken.init(jwt:)(&v46, v3);
  if (v4)
  {
LABEL_8:
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);

    v15 = *(v0 + 8);

    return v15();
  }

  v5 = JWToken.expired.getter();

  if (v5)
  {
    if (qword_27C8520B0 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_27C862770);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Authorization Token expired. Retry after refreshing token", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_27C852030 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 176);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  v21 = *(v0 + 40);
  v22 = qword_27C862640;
  sub_20DFE7E38();
  v23 = sub_20E0091C4();

  v45 = [v22 codeServiceWithName:v23 databaseScope:1];
  *(v0 + 152) = v45;

  sub_20DF84E08(v18);
  v43 = sub_20E008BA4();
  v44 = v24;
  (*(v19 + 8))(v18, v20);
  v25 = 0xEA0000000000746ELL;
  v26 = 0x696F506567617355;
  if (v17 != 1)
  {
    v26 = 0x6D75536567617355;
    v25 = 0xEC0000007972616DLL;
  }

  if (v17)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x6C61767265746E49;
  }

  if (v17)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0xED00006B636F6C42;
  }

  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);
  v33 = *(v0 + 48);
  v42 = *(v0 + 24);
  v34 = swift_task_alloc();
  *(v34 + 16) = v42;
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  *(v34 + 56) = v43;
  *(v34 + 64) = v44;
  *(v34 + 72) = v27;
  *(v34 + 80) = v28;
  sub_20DFE2C24(&qword_27C852AA0, type metadata accessor for GetRequest);
  sub_20E008FD4();

  if (qword_27C8520B0 != -1)
  {
    swift_once();
  }

  v35 = sub_20E009094();
  __swift_project_value_buffer(v35, qword_27C862770);
  v36 = sub_20E009074();
  v37 = sub_20E009554();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_20DF62000, v36, v37, "Fetching Utility Records from Dropbox", v38, 2u);
    MEMORY[0x20F32B3A0](v38, -1, -1);
  }

  v39 = swift_task_alloc();
  *(v0 + 160) = v39;
  *v39 = v0;
  v39[1] = sub_20DFE18DC;
  v40 = *(v0 + 120);
  v41 = *(v0 + 104);

  return sub_20DF964DC(v41, v40, v45);
}

uint64_t sub_20DFE18DC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_20DFE1D88;
  }

  else
  {
    v3 = sub_20DFE19F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_20DFE19F0()
{
  v1 = v0[21];
  sub_20DFE2054(*(v0[13] + 32), *(v0[13] + 40));
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[13];
    sub_20DFE2B78(v0[15], type metadata accessor for GetRequest);

    sub_20DFE2B78(v3, type metadata accessor for RecordsResponse);
    v4 = v0[18];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];

    v9 = v0[1];
  }

  else
  {
    v10 = v0[13];
    v11 = *v10;
    v12 = *(*v10 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v0[10];
      v44 = MEMORY[0x277D84F90];
      sub_20E0097B4();
      sub_20DFE2BD8();
      v17 = *(v14 + 16);
      v16 = v14 + 16;
      v15 = v17;
      v18 = v11 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v42 = *(v16 + 56);
      do
      {
        v19 = v0[11];
        v20 = v0[12];
        v21 = v0[9];
        v15(v20, v18, v21);
        v15(v19, v20, v21);
        sub_20E009594();
        (*(v16 - 8))(v20, v21);
        sub_20E009794();
        v22 = *(v44 + 16);
        sub_20E0097C4();
        sub_20E0097D4();
        sub_20E0097A4();
        v18 += v42;
        --v12;
      }

      while (v12);
      v23 = v44;
      v13 = MEMORY[0x277D84F90];
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v45 = v13;
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (1)
      {
        v26 = *(v23 + 16);
        if (v25 >= v26)
        {
LABEL_23:
          __break(1u);
          return;
        }

        v27 = *(v23 + 32 + 8 * v25);
        v28 = v25 + 1;
        if (!v27)
        {
          break;
        }

LABEL_16:
        v25 = v28;
        v31 = v27;
        MEMORY[0x20F32A5D0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E009444();
        }

        sub_20E009464();
        v13 = v45;
        if (v25 == v24)
        {
          goto LABEL_19;
        }
      }

      v29 = (v23 + 40 + 8 * v25);
      while (v24 != v28)
      {
        if (v26 == v28)
        {
          goto LABEL_23;
        }

        v30 = *v29++;
        v27 = v30;
        ++v28;
        if (v30)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_19:
    v33 = v0[18];
    v34 = v0[19];
    v35 = v0[15];
    v37 = v0[12];
    v36 = v0[13];
    v43 = v0[11];
    v38 = v0[2];

    sub_20DFE2B78(v35, type metadata accessor for GetRequest);
    v39 = *(v36 + 8);
    v40 = *(v36 + 16);
    v41 = *(v36 + 24);
    sub_20DF67FA8(v39, v40);
    sub_20DFE2B78(v36, type metadata accessor for RecordsResponse);
    *v38 = v13;
    sub_20DF67FFC(0, 0xC000000000000000);
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;

    v9 = v0[1];
  }

  v9();
}

uint64_t sub_20DFE1D88()
{
  v1 = *(v0 + 120);

  sub_20DFE2B78(v1, type metadata accessor for GetRequest);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

void sub_20DFE1E50()
{
  if ((sub_20DFE7E38() - 1) >= 2u)
  {
    v0 = 1;
  }

  else
  {
    v0 = 2;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v2 = sub_20E0091C4();
  v3 = [v1 initWithContainerIdentifier:v2 environment:v0];

  qword_27C862638 = v3;
}

void sub_20DFE1EE4()
{
  if (qword_27C852028 != -1)
  {
    swift_once();
  }

  v0 = qword_27C862638;
  v1 = objc_allocWithZone(MEMORY[0x277CBC218]);
  v2 = v0;
  v3 = [v1 initWithContainerID_];

  qword_27C862640 = v3;
}

uint64_t sub_20DFE1F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  v19 = a1[3];
  v20 = a1[4];
  sub_20DF67FA8(a5, a6);
  sub_20DF67FFC(v19, v20);
  a1[3] = a5;
  a1[4] = a6;
  v21 = a1[6];

  a1[5] = a7;
  a1[6] = a8;
  v22 = a1[8];

  a1[7] = a9;
  a1[8] = a10;
  return result;
}

void sub_20DFE2054(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        if (qword_27C8520B0 != -1)
        {
          swift_once();
        }

        v22 = sub_20E009094();
        __swift_project_value_buffer(v22, qword_27C862770);
        v23 = sub_20E009074();
        v24 = sub_20E009544();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20DF62000, v23, v24, "CKFunction | Internal Token Validation Server Error", v25, 2u);
          MEMORY[0x20F32B3A0](v25, -1, -1);
        }

        type metadata accessor for NetworkError();
        sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError);
        swift_allocError();
        *v26 = 500;
        goto LABEL_28;
      }

      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v2 = sub_20E009094();
      __swift_project_value_buffer(v2, qword_27C862770);
      v3 = sub_20E009074();
      v4 = sub_20E009544();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_20DF62000, v3, v4, "CKFunction | Bad Request Error", v5, 2u);
        MEMORY[0x20F32B3A0](v5, -1, -1);
      }

LABEL_27:

      type metadata accessor for NetworkError();
      sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError);
      swift_allocError();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    if (a1 == 5)
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v9 = sub_20E009094();
      __swift_project_value_buffer(v9, qword_27C862770);
      v3 = sub_20E009074();
      v10 = sub_20E009544();
      if (os_log_type_enabled(v3, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_20DF62000, v3, v10, "CKFunction | CloudKit CKRPC Server Error", v11, 2u);
        MEMORY[0x20F32B3A0](v11, -1, -1);
      }

      goto LABEL_27;
    }

LABEL_23:
    if (qword_27C8520B0 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_27C862770);
    v3 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v3, v13, "CKFunction | Uncaught Error", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    goto LABEL_27;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v6 = sub_20E009094();
      __swift_project_value_buffer(v6, qword_27C862770);
      v3 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v3, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v3, v7, "CKFunction | Token Invalid", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }
    }

    else
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v19 = sub_20E009094();
      __swift_project_value_buffer(v19, qword_27C862770);
      v3 = sub_20E009074();
      v20 = sub_20E009544();
      if (os_log_type_enabled(v3, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_20DF62000, v3, v20, "CKFunction | Subscription Not found. Proceed to offboarding", v21, 2u);
        MEMORY[0x20F32B3A0](v21, -1, -1);
      }
    }

    goto LABEL_27;
  }

  if (qword_27C8520B0 != -1)
  {
    swift_once();
  }

  v15 = sub_20E009094();
  __swift_project_value_buffer(v15, qword_27C862770);
  v16 = sub_20E009074();
  v17 = sub_20E009554();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20DF62000, v16, v17, "No error while fetching data from CloudKit", v18, 2u);
    MEMORY[0x20F32B3A0](v18, -1, -1);
  }
}

void sub_20DFE2818()
{
  v20 = *MEMORY[0x277D85DE8];
  if (qword_281123118 != -1)
  {
    swift_once();
  }

  if (byte_281124A78 == 1)
  {
    keyExistsAndHasValidFormat = 0;
    v0 = sub_20E0091C4();
    v1 = sub_20E0091C4();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

    if (keyExistsAndHasValidFormat)
    {
      if (AppBooleanValue)
      {
        if (qword_27C8520B0 != -1)
        {
          swift_once();
        }

        v3 = sub_20E009094();
        __swift_project_value_buffer(v3, qword_27C862770);
        v4 = sub_20E009074();
        v5 = sub_20E009554();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_20DF62000, v4, v5, "Dropbox Error Inducer Enabled", v6, 2u);
          MEMORY[0x20F32B3A0](v6, -1, -1);
        }

        v7 = sub_20E009074();
        v8 = sub_20E009554();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20DF62000, v7, v8, "Dropbox Error Inducer | Checking induced error type.", v9, 2u);
          MEMORY[0x20F32B3A0](v9, -1, -1);
        }

        v18 = 0;
        v10 = sub_20E0091C4();
        v11 = sub_20E0091C4();
        CFPreferencesGetAppIntegerValue(v10, v11, &v18);

        if (!v18 || (sub_20DF8F8C8(), (v13 & 0x100) != 0))
        {
          v14 = sub_20E009074();
          v15 = sub_20E009554();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_20DF62000, v14, v15, "Dropbox Error Inducer type not found in defaults!!", v16, 2u);
            MEMORY[0x20F32B3A0](v16, -1, -1);
          }
        }

        else
        {
          sub_20DFE2054(v12, v13 & 1);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20DFE2B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20DFE2BD8()
{
  result = qword_27C853478;
  if (!qword_27C853478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C853478);
  }

  return result;
}

uint64_t sub_20DFE2C24(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20DFE2C6C()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = sub_20E009234();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_20E008B64();
  v27[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v27];

  v8 = v27[0];
  if (!v7)
  {
    v20 = v8;
    v21 = sub_20E008A34();

    swift_willThrow();
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  sub_20E009654();
  swift_unknownObjectRelease();
  sub_20DF77A64(v26, v27);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v9 = sub_20E009974();
  *&v26[0] = 0;
  v10 = [v5 dataWithJSONObject:v9 options:1 error:v26];
  swift_unknownObjectRelease();
  v11 = *&v26[0];
  if (!v10)
  {
    v22 = v11;
    v23 = sub_20E008A34();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v27);
    goto LABEL_7;
  }

  v12 = sub_20E008B84();
  v14 = v13;

  sub_20E009214();
  v15 = sub_20E009224();
  (*(v1 + 8))(v4, v0);
  v16 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v17 = sub_20E008B64();
  v18 = [v16 initWithData:v17 encoding:v15];

  sub_20DF67FFC(v12, v14);
  __swift_destroy_boxed_opaque_existential_0(v27);
  result = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_8:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFE2F10()
{
  v0 = sub_20E008CD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008C74();
  v6 = v5;
  sub_20E008C94();
  sub_20E008C74();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  v10 = v6 - v8;
  if (COERCE__INT64(fabs(v6 - v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v10, 3600 * (v10 / 3600)))
  {
    v11 = v10 % 3600;
    v15 = v10 / 3600;
    v16 = sub_20E009964();
    v17 = v12;
    MEMORY[0x20F32A4B0](14952, 0xE200000000000000);
    v15 = v11 / 60;
    v13 = sub_20E009964();
    MEMORY[0x20F32A4B0](v13);

    MEMORY[0x20F32A4B0](109, 0xE100000000000000);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_20DFE30F8()
{
  v0 = sub_20E008D44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20E008DB4();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20E008D34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_20E008D14();
  v15 = sub_20E008D24();
  (*(v10 + 8))(v13, v9);
  [v14 setLocale_];

  (*(v1 + 104))(v4, *MEMORY[0x277CC9810], v0);
  sub_20E008D54();
  (*(v1 + 8))(v4, v0);
  v16 = sub_20E008D74();
  (*(v5 + 8))(v8, v20);
  [v14 setCalendar_];

  v17 = sub_20E0091C4();
  [v14 setDateFormat_];

  return v14;
}

uint64_t URLRequest.addBAAHeaders()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_20E009234();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_20E008CD4();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[15] = v9;
  *v9 = v2;
  v9[1] = sub_20DFE3528;

  return sub_20DFE4F70();
}

uint64_t sub_20DFE3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;
  v7 = v5[15];
  v8 = *v4;
  v6[16] = a1;
  v6[17] = a3;
  v6[18] = v3;

  if (v3)
  {
    v9 = v6[14];
    v10 = v6[11];

    v11 = v8[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DFE3694, 0, 0);
  }
}

uint64_t sub_20DFE3694()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v52 = v0[9];
  v9 = v0[7];
  v8 = v0[8];
  v10 = sub_20E008714();
  v48 = *(v10 - 8);
  v50 = v10;
  (*(v48 + 16))(v9, v8);
  v11 = v2;

  sub_20DFEEF70();
  sub_20E009254();

  sub_20E008C94();
  sub_20E008C74();
  v13 = v12;
  (*(v3 + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D839F8];
  *(v14 + 16) = xmmword_20E00AB50;
  v16 = MEMORY[0x277D83A80];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = v13 * 1000.0;
  v17 = sub_20E009204();
  v19 = v18;
  sub_20E0086D4();
  sub_20E009214();
  v20 = sub_20E0091E4();
  v22 = v21;
  (*(v7 + 8))(v6, v52);
  if (v22 >> 60 == 15)
  {
    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v23 = sub_20E009094();
    __swift_project_value_buffer(v23, qword_27C862650);
    v24 = sub_20E009074();
    v25 = sub_20E009544();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "String encoding failed. Returning empty string", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v27 = sub_20E008B74();
    v28 = v29;
    sub_20DF64DE8(v20, v22);
  }

  v30 = v0[18];
  v31 = v0[16];

  MEMORY[0x20F32A4B0](v17, v19);

  v32 = sub_20DFE3B80(v27, v28);
  v34 = v33;
  v35 = sub_20DFE40A0(v32, v33, v31);
  v37 = v30;
  v39 = v0[16];
  v38 = v0[17];
  if (v37)
  {
    (*(v48 + 8))(v0[7], v50);

    sub_20DF67FFC(v32, v34);

    v40 = v0[14];
    v41 = v0[11];
  }

  else
  {
    v49 = v0[4];
    v51 = v0[14];
    v53 = v0[11];
    v43 = v0[7];
    v44 = v35;
    v45 = v32;
    v46 = v36;
    sub_20DF67FFC(v45, v34);
    sub_20E008B74();

    MEMORY[0x20F32A4B0](58, 0xE100000000000000);

    MEMORY[0x20F32A4B0](v17, v19);

    sub_20E0086D4();

    sub_20E0086D4();

    sub_20DF67FFC(v44, v46);
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_20DFE3B80(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853490, &qword_20E012B40);
  if (swift_dynamicCast())
  {
    sub_20DFE4B08(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_20E0089C4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_20DF66E28(__src, &qword_27C853498, &qword_20E012B48);
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
    v4 = sub_20E009784();
  }

  sub_20DFE4424(v4, v5, &v42);
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
  *&__src[0] = sub_20DFE4A00(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_20DFE44EC(sub_20DFE4AA0);
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
        sub_20E008B44();
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
      v28 = sub_20DFB9204(v16, v14, v15);
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
      v8 = sub_20E009314();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_20E009344();
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
        v30 = sub_20E009784();
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

    v16 = sub_20DFB9204(v16, v14, v15);
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

    v16 = sub_20E009324();
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
      sub_20E008B54();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_20E008B54();
    sub_20DF64DE8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_20DF64DE8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_20DF67FA8(*&__src[0], *(&__src[0] + 1));

  sub_20DF67FFC(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_20DFE40A0(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_20E008B64();
  Signature = SecKeyCreateSignature(a3, v4, v5, error);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_20E008B84();
  }

  else
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862698);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_beginAccess();
      v14 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_20DFE4378();
        swift_allocError();
        *v15 = v14;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v12 + 4) = v16;
      *v13 = v17;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to Create Signature: %@", v12, 0xCu);
      sub_20DF66E28(v13, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v13, -1, -1);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    swift_beginAccess();
    v18 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_20DFE4378();
      v8 = swift_allocError();
      *v19 = v18;
    }

    else
    {
      v8 = 0;
    }

    sub_20DFE43D0();
    swift_allocError();
    *v20 = v8;
    *(v20 + 8) = 1;
    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_20DFE4348(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

unint64_t sub_20DFE4378()
{
  result = qword_27C853480;
  if (!qword_27C853480)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853480);
  }

  return result;
}

unint64_t sub_20DFE43D0()
{
  result = qword_27C853488;
  if (!qword_27C853488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853488);
  }

  return result;
}

uint64_t sub_20DFE4424@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_20DFF2358(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_20E008944();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_20E0088F4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_20E008B34();
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

void *sub_20DFE44EC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
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
      sub_20DF67FFC(v6, v5);
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

    sub_20DF67FFC(v6, v5);
    *v3 = xmmword_20E00D810;
    sub_20DF67FFC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_20E008904() && __OFSUB__(v6, sub_20E008934()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_20E008944();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_20E0088E4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_20DFE48FC(v6, v6 >> 32, a1);

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

    sub_20DF67FFC(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_20E00D810;
    sub_20DF67FFC(0, 0xC000000000000000);
    sub_20E008B04();
    result = sub_20DFE48FC(v20[2], v20[3], a1);
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

void *sub_20DFE4890(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_20DFE48FC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_20E008904();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_20E008934();
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

  v12 = sub_20E008924();
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

uint64_t sub_20DFE49B0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_20E009724();
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

uint64_t sub_20DFE4A00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_20DFF2338(result);
    }

    else
    {
      v2 = sub_20E008944();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_20E008914();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_20E008B34();
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

void *sub_20DFE4AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_20DFE4890(sub_20DFE4B20, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_20DFE4B08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20DFE4B5C(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_20E0097B4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E009804())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F32A900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_20E009794();
      v11 = *(v13 + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20E009804();
    sub_20E0097B4();
  }

  return v13;
}

uint64_t sub_20DFE4CC4(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20E0097B4();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20DF6981C(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20E009794();
    v4 = *(v7 + 16);
    sub_20E0097C4();
    sub_20E0097D4();
    sub_20E0097A4();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t sub_20DFE4DB0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_20E009714();

      v7 = 0xD00000000000001CLL;
      if (a1)
      {
LABEL_9:
        swift_getErrorValue();
        v3 = sub_20E0099E4();
        v5 = v4;
LABEL_11:
        MEMORY[0x20F32A4B0](v3, v5);

        return v7;
      }
    }

    else
    {
      sub_20E009714();

      v7 = 0xD000000000000021;
      if (a1)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    sub_20E009714();

    v7 = 0xD000000000000024;
    if (a1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_20DFE4F70()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFE4FFC, 0, 0);
}

uint64_t sub_20DFE4FFC()
{
  v39 = *MEMORY[0x277D85DE8];
  *(v0 + 440) = 0;
  v1 = sub_20E0091C4();
  v2 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 440));

  if (*(v0 + 440) && AppBooleanValue)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862698);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "User enabled BAA Auth to include Device identifiers", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20E00AB50;
    v9 = *MEMORY[0x277D04930];
    *(v8 + 32) = sub_20E0091D4();
    *(v8 + 40) = v10;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00D7A0;
  v12 = *MEMORY[0x277D048E0];
  *(inited + 32) = sub_20E0091D4();
  *(inited + 40) = v13;
  v14 = sub_20DFE6814();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = *MEMORY[0x277D048D0];
  *(inited + 80) = sub_20E0091D4();
  *(inited + 88) = v17;
  v18 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v19 = *MEMORY[0x277D048E8];
  *(inited + 128) = sub_20E0091D4();
  v20 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v21;
  *(inited + 144) = 60;
  v22 = *MEMORY[0x277D04950];
  *(inited + 176) = sub_20E0091D4();
  *(inited + 216) = v20;
  *(inited + 184) = v23;
  *(inited + 192) = 1440;
  v24 = *MEMORY[0x277D04948];
  *(inited + 224) = sub_20E0091D4();
  *(inited + 232) = v25;
  v26 = MEMORY[0x20F32AD20]();
  *(inited + 264) = v18;
  *(inited + 240) = v26 ^ 1;
  v27 = *MEMORY[0x277D048A0];
  *(inited + 272) = sub_20E0091D4();
  *(inited + 280) = v28;
  v29 = sub_20DFE68E8();
  type metadata accessor for SecAccessControl(0);
  *(inited + 312) = v30;
  *(inited + 288) = v29;
  v31 = *MEMORY[0x277D04928];
  *(inited + 320) = sub_20E0091D4();
  *(inited + 328) = v32;
  *(inited + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  *(inited + 336) = v8;
  v33 = sub_20DF74F30(inited);
  *(v0 + 408) = v33;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852598, &unk_20E00C120);
  swift_arrayDestroy();
  v34 = swift_task_alloc();
  *(v0 + 416) = v34;
  *(v34 + 16) = v33;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = swift_task_alloc();
  *(v0 + 424) = v36;
  *v36 = v0;
  v36[1] = sub_20DFE5544;
  v37 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 384, 0, 0, 0xD00000000000001ELL, 0x800000020E0172C0, sub_20DFE6BB8, v34, &type metadata for BAAValues);
}

uint64_t sub_20DFE5544()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 424);
  v10 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_20DFE572C;
  }

  else
  {
    v5 = *(v2 + 408);
    v6 = *(v2 + 416);

    v4 = sub_20DFE569C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DFE569C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4(v1, v2, v3);
}

uint64_t sub_20DFE572C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[51];
  v2 = v0[52];

  v3 = v0[54];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_20DFE57C4()
{
  v0 = sub_20E009574();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20E009564();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_20E0090B4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_20DFC4D38();
  sub_20E0090A4();
  v10[1] = MEMORY[0x277D84F90];
  sub_20DFE7104(&qword_27C852F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F38, qword_20E0106F0);
  sub_20DFE70A0();
  sub_20E009664();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_20E009584();
  qword_27C862648 = result;
  return result;
}

void sub_20DFE59FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if (qword_27C852038 != -1)
  {
    swift_once();
  }

  sub_20DFE5C1C(a2);
  v9 = sub_20E009154();

  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_20DFE6BC0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DFE62B8;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v12);
}

uint64_t sub_20DFE5C1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852580, &qword_20E00C108);
    v2 = sub_20E009834();
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
    sub_20DF6981C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_20DF77A64(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_20DF77A64(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_20DF77A64(v32, v33);
    v17 = *(v2 + 40);
    result = sub_20E009694();
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
    result = sub_20DF77A64(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_20DFE5EE4(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a2)
  {
    v5 = a1;
    v6 = sub_20DFE4CC4(a2);
    if (v6)
    {
      v7 = v6;
      if (v6 >> 62)
      {
        if (sub_20E009804())
        {
          goto LABEL_6;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v8 = sub_20DFE6C6C(v7);
        v10 = v9;

        sub_20E008B74();
        sub_20DF67FFC(v8, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
        return sub_20E0094A4();
      }
    }

    else
    {
    }
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v12 = sub_20E009094();
  __swift_project_value_buffer(v12, qword_27C862698);
  v13 = a3;
  v14 = sub_20E009074();
  v15 = sub_20E009544();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a3)
    {
      v18 = a3;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_20DF62000, v14, v15, "Unable to Issue Client Certificate. underlying error: %@", v16, 0xCu);
    sub_20DF66E28(v17, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v17, -1, -1);
    MEMORY[0x20F32B3A0](v16, -1, -1);
  }

  sub_20DFE43D0();
  v21 = swift_allocError();
  *v22 = a3;
  *(v22 + 8) = 2;
  swift_willThrow();
  v23 = a3;
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v24 = sub_20E009094();
  __swift_project_value_buffer(v24, qword_27C862698);
  v25 = v21;
  v26 = sub_20E009074();
  v27 = sub_20E009544();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_20DF62000, v26, v27, "Error while generating BAA key and certificate %@", v28, 0xCu);
    sub_20DF66E28(v29, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v29, -1, -1);
    MEMORY[0x20F32B3A0](v28, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
  return sub_20E009494();
}

uint64_t sub_20DFE62B8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_20E009424();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void *sub_20DFE636C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_20E008B64();
  v6[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v6];

  v2 = v6[0];
  if (v1)
  {
    v3 = sub_20E008B84();
  }

  else
  {
    v3 = v2;
    sub_20E008A34();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_20DFE6440(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534B0, &qword_20E012D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFE72C4();
  sub_20E009A84();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DF756D4(&qword_2811230A8);
  sub_20E009944();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20DFE65CC()
{
  sub_20E009A34();
  sub_20E009194();
  return sub_20E009A54();
}

uint64_t sub_20DFE6630()
{
  sub_20E009A34();
  sub_20E009194();
  return sub_20E009A54();
}

uint64_t sub_20DFE667C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E009844();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_20DFE66FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E009844();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20DFE6754(uint64_t a1)
{
  v2 = sub_20DFE72C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFE6790(uint64_t a1)
{
  v2 = sub_20DFE72C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFE67CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFE7318(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_20DFE6814()
{
  sub_20E009714();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_20E0091D4();
  v4 = v3;

  MEMORY[0x20F32A4B0](v2, v4);

  return 0xD00000000000002ELL;
}

SecAccessControlRef sub_20DFE68E8()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, error);
  if (!result)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v1 = sub_20E009094();
    __swift_project_value_buffer(v1, qword_27C862698);
    v2 = sub_20E009074();
    v3 = sub_20E009544();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_beginAccess();
      v6 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_20DFE7104(&qword_27C853480, type metadata accessor for CFError);
        swift_allocError();
        *v7 = v6;
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v4 + 4) = v8;
      *v5 = v9;
      _os_log_impl(&dword_20DF62000, v2, v3, "Unable to create access Control object for BAA %@", v4, 0xCu);
      sub_20DF66E28(v5, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v5, -1, -1);
      MEMORY[0x20F32B3A0](v4, -1, -1);
    }

    swift_beginAccess();
    v10 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_20DFE7104(&qword_27C853480, type metadata accessor for CFError);
      v11 = swift_allocError();
      *v12 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_20DFE43D0();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0;
    swift_willThrow();
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFE6BC0(void *a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58) - 8) + 80);

  return sub_20DFE5EE4(a1, a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_20DFE6C6C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_20E009804();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_20DF749AC(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x20F32A900](v6, a1);
        v8 = SecCertificateCopyData(v7);
        v9 = sub_20E008B84();
        v11 = v10;

        v12 = sub_20E008B74();
        v14 = v13;
        sub_20DF67FFC(v9, v11);
        swift_unknownObjectRelease();
        v16 = *(v45 + 16);
        v15 = *(v45 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_20DF749AC((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        *(v45 + 16) = v16 + 1;
        v17 = v45 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v4 != v6);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        v20 = SecCertificateCopyData(v19);
        v21 = sub_20E008B84();
        v23 = v22;

        v24 = sub_20E008B74();
        v26 = v25;
        sub_20DF67FFC(v21, v23);

        v28 = *(v45 + 16);
        v27 = *(v45 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_20DF749AC((v27 > 1), v28 + 1, 1);
        }

        *(v45 + 16) = v28 + 1;
        v29 = v45 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        ++v18;
        --v4;
      }

      while (v4);
    }

    v2 = v1;
  }

  v30 = sub_20E008774();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_20E008764();
  sub_20DFE704C();
  v33 = sub_20E008754();
  if (v2)
  {

    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v37 = sub_20E009094();
    __swift_project_value_buffer(v37, qword_27C862698);
    v38 = v2;
    v39 = sub_20E009074();
    v44 = sub_20E009544();

    if (os_log_type_enabled(v39, v44))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v2;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_20DF62000, v39, v44, "Error while encoding Cert Chain for BAA. %@", v40, 0xCu);
      sub_20DF66E28(v41, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v41, -1, -1);
      MEMORY[0x20F32B3A0](v40, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v35 = v33;
    v36 = v34;

    v44 = sub_20DFE636C();
    sub_20DF67FFC(v35, v36);
  }

  return v44;
}

unint64_t sub_20DFE704C()
{
  result = qword_27C8534A8;
  if (!qword_27C8534A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534A8);
  }

  return result;
}

unint64_t sub_20DFE70A0()
{
  result = qword_27C852F40;
  if (!qword_27C852F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852F38, qword_20E0106F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F40);
  }

  return result;
}

uint64_t sub_20DFE7104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DFE715C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20DFE71A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices15BAASigningErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20DFE7210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DFE7258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20DFE729C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_20DFE72C4()
{
  result = qword_27C8534B8;
  if (!qword_27C8534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534B8);
  }

  return result;
}

void *sub_20DFE7318(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534C0, &qword_20E012D40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFE72C4();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A0);
    sub_20E0098C4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_20DFE74D4()
{
  result = qword_27C8534C8;
  if (!qword_27C8534C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534C8);
  }

  return result;
}

unint64_t sub_20DFE752C()
{
  result = qword_27C8534D0;
  if (!qword_27C8534D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534D0);
  }

  return result;
}

unint64_t sub_20DFE7584()
{
  result = qword_27C8534D8;
  if (!qword_27C8534D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534D8);
  }

  return result;
}

uint64_t sub_20DFE75D8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20E009804())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x277D84F90];
    sub_20DF749AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F32A900](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_20DF749AC((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_20DFE7788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[0] = a1;
  v20[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v20 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_20DF749EC(0, v11, 0);
  v12 = v22;
  for (i = (a3 + 56); ; i += 4)
  {
    v14 = *(i - 2);
    v15 = *(i - 1);
    v16 = *i;
    v21[0] = *(i - 3);
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v16;

    (v20[0])(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v12;
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_20DF749EC(v17 > 1, v18 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v18 + 1;
    sub_20DFE8CC8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFE7968()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFE7A18()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DFE7AB4()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFE7B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DFE8E08();
  *a2 = result;
  return result;
}

void sub_20DFE7B90(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E7265746E496171;
  v4 = 1953654115;
  if (*v1 != 2)
  {
    v4 = 1685025392;
  }

  if (*v1)
  {
    v3 = 7759204;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_20DFE7C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E0, &qword_20E012EB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20E012EA0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 104) = result;
  qword_281124A80 = v0;
  return result;
}

uint64_t sub_20DFE7D00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 184);
  v4 = *(a2 + 216);
  v23[10] = *(a2 + 200);
  v23[11] = v4;
  v23[12] = *(a2 + 232);
  v5 = *(a2 + 120);
  v6 = *(a2 + 152);
  v23[6] = *(a2 + 136);
  v23[7] = v6;
  v23[8] = *(a2 + 168);
  v23[9] = v3;
  v7 = *(a2 + 56);
  v8 = *(a2 + 88);
  v23[2] = *(a2 + 72);
  v23[3] = v8;
  v23[4] = *(a2 + 104);
  v23[5] = v5;
  v23[0] = *(a2 + 40);
  v23[1] = v7;
  v20 = *(a2 + 200);
  v21 = *(a2 + 216);
  v22 = *(a2 + 232);
  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = *(a2 + 184);
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  v14 = *(a2 + 104);
  v15 = *(a2 + 120);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  sub_20DF85DAC(v23, v24);
  swift_getAtKeyPath();
  v24[10] = v20;
  v24[11] = v21;
  v24[12] = v22;
  v24[6] = v16;
  v24[7] = v17;
  v24[8] = v18;
  v24[9] = v19;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[0] = v10;
  v24[1] = v11;
  return sub_20DF85E08(v24);
}

uint64_t sub_20DFE7E38()
{
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    v4 = v24;
    v3 = v25;
    if (qword_27C852060 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C862680);

    v6 = sub_20E009074();
    v7 = sub_20E009554();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20DF74468(v4, v3, &v24);
      _os_log_impl(&dword_20DF62000, v6, v7, "Environment override detected. Using user set env value : %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F32B3A0](v9, -1, -1);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v10 = 0xEA00000000006C61;
    v11 = byte_28252D158;
    if (byte_28252D158 > 1u)
    {
      v13 = 0xE400000000000000;
      if (byte_28252D158 == 2)
      {
        v12 = 1953654115;
      }

      else
      {
        v12 = 1685025392;
      }
    }

    else if (byte_28252D158)
    {
      v13 = 0xE300000000000000;
      v12 = 7759204;
    }

    else
    {
      v12 = 0x6E7265746E496171;
      v13 = 0xEA00000000006C61;
    }

    v24 = v12;
    v25 = v13;
    sub_20DF751E4();
    v14 = sub_20E009614();

    if (!v14)
    {
      goto LABEL_41;
    }

    v11 = byte_28252D159;
    if (byte_28252D159 > 1u)
    {
      v16 = 0xE400000000000000;
      v15 = byte_28252D159 == 2 ? 1953654115 : 1685025392;
    }

    else if (byte_28252D159)
    {
      v16 = 0xE300000000000000;
      v15 = 7759204;
    }

    else
    {
      v15 = 0x6E7265746E496171;
      v16 = 0xEA00000000006C61;
    }

    v24 = v15;
    v25 = v16;
    v17 = sub_20E009614();

    if (!v17)
    {
      goto LABEL_41;
    }

    v11 = byte_28252D15A;
    if (byte_28252D15A > 1u)
    {
      v19 = 0xE400000000000000;
      v18 = byte_28252D15A == 2 ? 1953654115 : 1685025392;
    }

    else if (byte_28252D15A)
    {
      v19 = 0xE300000000000000;
      v18 = 7759204;
    }

    else
    {
      v18 = 0x6E7265746E496171;
      v19 = 0xEA00000000006C61;
    }

    v24 = v18;
    v25 = v19;
    v20 = sub_20E009614();

    if (!v20)
    {
      goto LABEL_41;
    }

    v11 = byte_28252D15B;
    if (byte_28252D15B > 1u)
    {
      v10 = 0xE400000000000000;
      v21 = byte_28252D15B == 2 ? 1953654115 : 1685025392;
    }

    else if (byte_28252D15B)
    {
      v10 = 0xE300000000000000;
      v21 = 7759204;
    }

    else
    {
      v21 = 0x6E7265746E496171;
    }

    v24 = v21;
    v25 = v10;
    v22 = sub_20E009614();

    if (!v22)
    {
LABEL_41:

      return v11;
    }
  }

  return 3;
}

uint64_t sub_20DFE8294(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for UtilityServicesConfigurationsModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  keyExistsAndHasValidFormat[0] = 0;
  v13 = sub_20E0091C4();
  v14 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v13, v14, keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0] && AppBooleanValue)
  {
    if (qword_2811230D8 != -1)
    {
LABEL_39:
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_2811249E8);
    v17 = sub_20E009074();
    v18 = sub_20E009554();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "BAA Auth disabled via defaults override";
    goto LABEL_11;
  }

  sub_20DF9EE34(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20DFE8C40(v7);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v21 = sub_20E009094();
    __swift_project_value_buffer(v21, qword_2811249E8);
    v17 = sub_20E009074();
    v18 = sub_20E009544();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Unable to retrieve config to check if URL required BAA Auth";
LABEL_11:
    _os_log_impl(&dword_20DF62000, v17, v18, v20, v19, 2u);
    MEMORY[0x20F32B3A0](v19, -1, -1);
LABEL_12:

    result = 0;
    goto LABEL_37;
  }

  sub_20DF85D48(v7, v12);
  keyExistsAndHasValidFormat[0] = 0;
  v23 = sub_20E0091C4();
  v24 = sub_20E0091C4();
  v25 = CFPreferencesGetAppBooleanValue(v23, v24, keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0] && v25)
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v27 = sub_20E009094();
    __swift_project_value_buffer(v27, qword_2811249E8);
    v28 = sub_20E009074();
    v29 = sub_20E009554();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Identifier Profile Override detected | BAA Header applied to all Path by profile!";
LABEL_35:
      _os_log_impl(&dword_20DF62000, v28, v29, v31, v30, 2u);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

LABEL_36:

    sub_20DF85E5C(v12);
    result = 1;
    goto LABEL_37;
  }

  v51 = v12;
  if (qword_281123150 != -1)
  {
    v26 = swift_once();
  }

  MEMORY[0x28223BE20](v26);
  *(&v50 - 2) = v51;
  v33 = sub_20DFE75D8(sub_20DFE8CA8, (&v50 - 4), v32);
  v34 = v33;
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = (v33 + 40);
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v38 = *(v37 - 1);
      v39 = *v37;
      *keyExistsAndHasValidFormat = a1;
      v55 = a2;
      v52 = v38;
      v53 = v39;
      sub_20DF751E4();

      v40 = sub_20E009644();

      if (v40)
      {
        break;
      }

      ++v36;
      v37 += 2;
      if (v35 == v36)
      {
        goto LABEL_26;
      }
    }

    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v47 = sub_20E009094();
    __swift_project_value_buffer(v47, qword_2811249E8);
    v28 = sub_20E009074();
    v29 = sub_20E009554();
    v48 = os_log_type_enabled(v28, v29);
    v12 = v51;
    if (v48)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "API Path requires BAA Auth Headers";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_26:

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v41 = sub_20E009094();
  __swift_project_value_buffer(v41, qword_2811249E8);
  v42 = sub_20E009074();
  v43 = sub_20E009554();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v51;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20DF62000, v42, v43, "API Path does not require BAA Auth Header", v46, 2u);
    MEMORY[0x20F32B3A0](v46, -1, -1);
  }

  sub_20DF85E5C(v45);
  result = 0;
LABEL_37:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFE896C()
{
  v15 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v3 = sub_20E009094();
    __swift_project_value_buffer(v3, qword_2811249E8);
    v4 = sub_20E009074();
    v5 = sub_20E009554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "HMAC Authentication enforced by Defaults override.";
LABEL_12:
      _os_log_impl(&dword_20DF62000, v4, v5, v7, v6, 2u);
      v9 = 1;
LABEL_18:
      MEMORY[0x20F32B3A0](v6, -1, -1);
      goto LABEL_20;
    }
  }

  else
  {
    if (sub_20DFE7E38() > 2u)
    {
      if (qword_2811230D8 != -1)
      {
        swift_once();
      }

      v10 = sub_20E009094();
      __swift_project_value_buffer(v10, qword_2811249E8);
      v4 = sub_20E009074();
      v11 = sub_20E009554();
      if (!os_log_type_enabled(v4, v11))
      {
        v9 = 0;
        goto LABEL_20;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v11, "Current environment does not requires HMAC Authentication.", v6, 2u);
      v9 = 0;
      goto LABEL_18;
    }

    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_2811249E8);
    v4 = sub_20E009074();
    v5 = sub_20E009554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Current environment requires HMAC Authentication.";
      goto LABEL_12;
    }
  }

  v9 = 1;
LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_20DFE8C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFE8CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DFE8D4C()
{
  result = qword_27C8534F0;
  if (!qword_27C8534F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8534F8, qword_20E013030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534F0);
  }

  return result;
}

unint64_t sub_20DFE8DB4()
{
  result = qword_27C853500;
  if (!qword_27C853500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853500);
  }

  return result;
}

uint64_t sub_20DFE8E08()
{
  v0 = sub_20E009844();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20DFE8E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = sub_20E008A44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_20E008AF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008AC4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20DF66E28(v14, &qword_27C8520D0, &qword_20E00AB70);
LABEL_11:
    v31 = a1;
    v32 = a2;
    (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6);
    sub_20DF751E4();
    sub_20E008AE4();
    return (*(v7 + 8))(v10, v6);
  }

  v28 = *(v16 + 32);
  v29 = v3;
  v28(v19, v14, v15);
  sub_20E008AB4();
  if (!v20 || (, sub_20E008A74(), !v21))
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_11;
  }

  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v22 = sub_20E009094();
  __swift_project_value_buffer(v22, qword_2811249D0);
  v23 = sub_20E009074();
  v24 = sub_20E009554();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20DF62000, v23, v24, "Full URL Path noticed in path component", v25, 2u);
    MEMORY[0x20F32B3A0](v25, -1, -1);
  }

  return (v28)(v30, v19, v15);
}

uint64_t sub_20DFE91DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v53) = a3;
  v9 = sub_20E0087E4();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - v20;
  v22 = sub_20E0088D4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008834();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20DF66E28(v21, &qword_27C852F78, &qword_20E010888);
    v27 = sub_20E008AF4();
    v28 = *(v27 - 8);
    (*(v28 + 16))(a4, v5, v27);
    return (*(v28 + 56))(a4, 0, 1, v27);
  }

  (*(v23 + 32))(v26, v21, v22);
  v30 = sub_20E008824();
  if (!v30)
  {
    v50 = v23;
    v51 = v22;
    v53 = a4;
    MEMORY[0x28223BE20](0);
    *(&v47 - 16) = a2 & 1;
    *(&v47 - 1) = v5;
    v34 = sub_20DFE7788(sub_20DFEA690, (&v47 - 4), a1);
    v35 = *(v34 + 16);
    if (v35)
    {
      v48 = v26;
      v49 = v34;
      v36 = v34 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v37 = *(v52 + 72);
      v38 = v55;
      v39 = (v54 + 48);
      v40 = (v54 + 32);
      v41 = MEMORY[0x277D84F90];
      do
      {
        v42 = v56;
        sub_20DFEA6B4(v36, v56);
        sub_20DFEA724(v42, v16, &qword_27C8534E8, qword_20E013000);
        if ((*v39)(v16, 1, v38) == 1)
        {
          sub_20DF66E28(v16, &qword_27C8534E8, qword_20E013000);
        }

        else
        {
          v43 = *v40;
          (*v40)(v57, v16, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_20DFFAF44(0, v41[2] + 1, 1, v41);
          }

          v45 = v41[2];
          v44 = v41[3];
          if (v45 >= v44 >> 1)
          {
            v41 = sub_20DFFAF44(v44 > 1, v45 + 1, 1, v41);
          }

          v41[2] = v45 + 1;
          v46 = v41 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45;
          v38 = v55;
          v43(v46, v57, v55);
        }

        v36 += v37;
        --v35;
      }

      while (v35);

      v26 = v48;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v23 = v50;
    v22 = v51;
    if (v41[2])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v31 = sub_20DFE9918(v30, a1, a2 & 1, v53 & 1);

  if (!*(v31 + 16))
  {
LABEL_5:
  }

LABEL_6:
  v32 = sub_20E0087F4();
  MEMORY[0x20F329A60](v32);
  if (v33)
  {
    sub_20E008814();
  }

  sub_20E008844();
  return (*(v23 + 8))(v26, v22);
}

void sub_20DFE9764()
{
  v0 = sub_20E0087B4();
  __swift_allocate_value_buffer(v0, qword_281124A60);
  __swift_project_value_buffer(v0, qword_281124A60);
  sub_20DFE97B0();
}

void sub_20DFE97B0()
{
  v0 = sub_20E0087B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008784();
  v5 = sub_20E008794();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = sub_20E008B64();
  v9 = [objc_opt_self() characterSetWithBitmapRepresentation_];

  sub_20DF67FFC(v5, v7);
  v10 = sub_20E0091C4();
  [v9 removeCharactersInString_];

  sub_20E0087A4();
}

uint64_t sub_20DFE9918(void *a1, uint64_t a2, int a3, int a4)
{
  v96 = a4;
  v101 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853508, &qword_20E013110);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v89 - v11;
  MEMORY[0x28223BE20](v10);
  v94 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853510, &qword_20E013118);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v104 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853518, &unk_20E013120);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v89 - v22);
  v114 = sub_20E0087E4();
  v24 = *(*(v114 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v114);
  v92 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v89 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v89 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v89 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v89 - v34;
  v117 = a1;
  v100 = *(a2 + 16);
  if (!v100)
  {

    return a1;
  }

  v99 = a2 + 32;
  v105 = v33;
  v106 = (v33 + 16);
  v110 = (v14 + 56);
  v111 = v23;
  v108 = (v33 + 32);
  v109 = (v14 + 48);
  v112 = (v33 + 8);

  v36 = 0;
  v107 = v21;
  v102 = v35;
  while (1)
  {
    v37 = (v99 + 32 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v37[3];
    if ((v101 & 1) == 0)
    {
      break;
    }

    v98 = v37[2];
    v115 = v39;
    v116 = v38;
    v41 = qword_281123108;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_20E0087B4();
    v43 = __swift_project_value_buffer(v42, qword_281124A60);
    sub_20DF751E4();
    v97 = v43;
    v39 = sub_20E009604();
    v38 = v44;

    if (v38)
    {
      v103 = v36;
      v115 = v98;
      v116 = v40;
      sub_20E009604();

      goto LABEL_11;
    }

LABEL_4:
    if (++v36 == v100)
    {
      return a1;
    }
  }

  v103 = v36;

LABEL_11:
  sub_20E0087C4();

  v46 = 0;
  v47 = a1[2];
  while (1)
  {
    v48 = v111;
    if (v46 == v47)
    {
      v49 = 1;
      v46 = v47;
    }

    else
    {
      v50 = v105;
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v46 >= a1[2])
      {
        goto LABEL_55;
      }

      v51 = a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v46;
      v52 = *(v13 + 48);
      v53 = v104;
      *v104 = v46;
      (*(v50 + 16))(v53 + v52, v51, v114);
      sub_20DFEA724(v53, v21, &qword_27C853510, &qword_20E013118);
      v49 = 0;
      ++v46;
    }

    (*v110)(v21, v49, 1, v13);
    sub_20DFEA724(v21, v48, &qword_27C853518, &unk_20E013120);
    if ((*v109)(v48, 1, v13) == 1)
    {

      v60 = *v106;
      if ((v96 & 1) == 0)
      {
        v77 = v102;
        v60(v92, v102, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_20DFFAF44(0, a1[2] + 1, 1, a1);
        }

        v79 = a1[2];
        v78 = a1[3];
        v80 = v105;
        if (v79 >= v78 >> 1)
        {
          v88 = sub_20DFFAF44(v78 > 1, v79 + 1, 1, a1);
          v80 = v105;
          a1 = v88;
        }

        v81 = v77;
        v82 = v114;
        v83 = v80;
        (*(v80 + 8))(v81, v114);
        a1[2] = v79 + 1;
        (*(v83 + 32))(a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, v92, v82);
        v117 = a1;
LABEL_51:
        v36 = v103;
        goto LABEL_4;
      }

      v61 = v102;
      v60(v93, v102, v114);
      v62 = a1[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = a1;
      if (!isUniquelyReferenced_nonNull_native || v62 >= a1[3] >> 1)
      {
        a1 = sub_20DFFAF44(isUniquelyReferenced_nonNull_native, v62 + 1, 1, a1);
        v117 = a1;
      }

      v36 = v103;
      sub_20DFEA78C(0, 0, 1, v93);
      v117 = a1;
      (*v112)(v61, v114);
      goto LABEL_4;
    }

    v54 = *v48;
    v55 = v13;
    v56 = *(v13 + 48);
    v57 = *v108;
    (*v108)(v113, v48 + v56, v114);
    if (sub_20E0087D4() == v39 && v58 == v38)
    {
      break;
    }

    v59 = sub_20E009984();

    if (v59)
    {
      goto LABEL_28;
    }

    result = (*v112)(v113, v114);
    v13 = v55;
    v21 = v107;
  }

LABEL_28:

  v64 = v95;
  sub_20DFEA588(v54, v95);
  v65 = *v112;
  v66 = v114;
  (*v112)(v64, v114);
  result = v65(v113, v66);
  a1 = v117;
  v67 = v117[2];
  v68 = v102;
  if (v54 >= v67)
  {
    v74 = *v106;
    if (v96)
    {
      v74(v91, v102, v114);
      v75 = a1[2];
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v117 = a1;
      if (!v76 || v75 >= a1[3] >> 1)
      {
        a1 = sub_20DFFAF44(v76, v75 + 1, 1, a1);
        v117 = a1;
      }

      v13 = v55;
      v36 = v103;
      v71 = 0;
      v72 = 0;
      v73 = &v118;
      goto LABEL_40;
    }

    v74(v90, v102, v114);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_20DFFAF44(0, v67 + 1, 1, a1);
    }

    v85 = a1[2];
    v84 = a1[3];
    if (v85 >= v84 >> 1)
    {
      a1 = sub_20DFFAF44(v84 > 1, v85 + 1, 1, a1);
    }

    v86 = v68;
    v87 = v114;
    v65(v86, v114);
    a1[2] = v85 + 1;
    v57(a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v85, v90, v87);
    v117 = a1;
    v13 = v55;
    v21 = v107;
    goto LABEL_51;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = (*v106)(v94, v102, v114);
  v69 = a1[2];
  if (v69 >= v54)
  {
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v117 = a1;
    if (!v70 || v69 >= a1[3] >> 1)
    {
      a1 = sub_20DFFAF44(v70, v69 + 1, 1, a1);
      v117 = a1;
    }

    v13 = v55;
    v36 = v103;
    v71 = v54;
    v72 = v54;
    v73 = &v119;
LABEL_40:
    sub_20DFEA78C(v71, v72, 1, *(v73 - 32));
    v117 = a1;
    v65(v68, v114);
    v21 = v107;
    goto LABEL_4;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_20DFEA394@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    v10 = a1[1];

    goto LABEL_7;
  }

  v14 = *a1;
  v15 = a1[1];
  v6 = qword_281123108;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_20E0087B4();
  __swift_project_value_buffer(v7, qword_281124A60);
  sub_20DF751E4();
  sub_20E009604();
  v9 = v8;

  if (v9)
  {
    sub_20E009604();

LABEL_7:
    sub_20E0087C4();

    v11 = sub_20E0087E4();
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  v13 = sub_20E0087E4();
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_20DFEA588@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DFFC594(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_20E0087E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20DFEA6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFEA724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_20DFEA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_20E0087E4();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

  if (v18 < 1)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20DFEA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  v8[25] = a8;
  v8[26] = v24;
  v8[23] = a6;
  v8[24] = a7;
  v8[21] = a4;
  v8[22] = a5;
  v8[19] = a2;
  v8[20] = a3;
  v8[18] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853520, &qword_20E013138) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v10 = type metadata accessor for NetworkError();
  v8[28] = v10;
  v11 = *(v10 - 8);
  v8[29] = v11;
  v12 = *(v11 + 64) + 15;
  v8[30] = swift_task_alloc();
  v13 = sub_20E008CD4();
  v8[31] = v13;
  v14 = *(v13 - 8);
  v8[32] = v14;
  v15 = *(v14 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v17 = sub_20E008714();
  v8[37] = v17;
  v18 = *(v17 - 8);
  v8[38] = v18;
  v19 = *(v18 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFEAB78, 0, 0);
}

uint64_t sub_20DFEAB78()
{
  v12 = *MEMORY[0x277D85DE8];
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  v0[41] = v1;
  v0[42] = __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009554();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Verifying TAF OTP....", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_20DFEAD04;
  v6 = v0[36];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v10 = *MEMORY[0x277D85DE8];

  return sub_20DFF446C(v6, v9, v7, v8);
}

uint64_t sub_20DFEAD04()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 344);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFEAE2C, 0, 0);
}

uint64_t sub_20DFEAE2C()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 336);
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to create request URL for TAF Account Verification | OTP.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 224);

    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v9 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }

  else
  {
    v21 = *(v2 + 32);
    v21(*(v0 + 320), v3, v1);
    if (os_variant_has_internal_diagnostics())
    {
      *(v0 + 392) = 0;
      v22 = sub_20E0091C4();
      v23 = sub_20E0091C4();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v22, v23, (v0 + 392));

      if (*(v0 + 392))
      {
        if (AppBooleanValue)
        {
          v25 = *(v0 + 336);
          v26 = *(v0 + 312);
          v27 = *(v0 + 320);
          v28 = *(v0 + 296);
          v29 = *(v0 + 304);
          (*(v29 + 16))(v26, v27, v28);
          sub_20E0086D4();
          (*(v29 + 8))(v27, v28);
          v21(v27, v26, v28);
          v30 = sub_20E009074();
          v31 = sub_20E009554();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_20DF62000, v30, v31, "Adding additional OTP override header in verify request.", v32, 2u);
            MEMORY[0x20F32B3A0](v32, -1, -1);
          }
        }
      }
    }

    v33 = *(v0 + 320);
    v34 = *(v0 + 280);
    sub_20DFDF8DC(0xD000000000000018, 0x800000020E017420, 0xD00000000000002BLL, 0x800000020E017440);
    sub_20E008CC4();
    v35 = *(MEMORY[0x277CC9D18] + 4);
    v36 = swift_task_alloc();
    *(v0 + 352) = v36;
    *v36 = v0;
    v36[1] = sub_20DFEB2B4;
    v37 = *(v0 + 320);
    v38 = *(v0 + 176);
    v39 = *MEMORY[0x277D85DE8];

    return MEMORY[0x28211ECF8](v37, 0);
  }
}

uint64_t sub_20DFEB2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 352);
  v11 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {
    v7 = sub_20DFEC390;
  }

  else
  {
    v7 = sub_20DFEB3F8;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFEB3F8()
{
  v150 = v0;
  v149[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);

  v9 = sub_20DFE0F98();
  v11 = v10;
  (*(v5 + 16))(v3, v2, v6);

  sub_20E008C94();
  sub_20E008BB4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v4, v6);
  v14(v3, v6);
  v15 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v16 = *(v0 + 376);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 24) = v19;
  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  *(v0 + 64) = 2;
  *(v0 + 72) = v15;
  sub_20E004C78();
  sub_20DFEC91C(v0 + 16);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    if (qword_27C852070 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(*(v0 + 328), qword_27C8626B0);
      v41 = sub_20E009074();
      v42 = sub_20E009544();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_20DF62000, v41, v42, "Unable to process TAF Account Verification(OTP) response from Utility.", v43, 2u);
        MEMORY[0x20F32B3A0](v43, -1, -1);
      }

      v44 = *(v0 + 368);
      v34 = *(v0 + 376);
      v45 = *(v0 + 360);
      v36 = *(v0 + 280);
      v37 = *(v0 + 248);
      v46 = *(v0 + 224);

      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
      v39 = swift_allocError();
      *v47 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v45, v44);
      goto LABEL_44;
    }

LABEL_70:
    swift_once();
    goto LABEL_13;
  }

  v21 = v20;
  v148 = v14;
  v22 = *(v0 + 320);
  v23 = *(v0 + 280);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v26 = *(v0 + 176);
  v27 = *(v0 + 376);
  sub_20DFC6D90(v22, [v21 statusCode], v25, v24, v23, v26);
  sub_20DFDFFF8(0xD000000000000018, 0x800000020E017470, [v21 statusCode], &unk_28252DEE8);
  v28 = [v21 statusCode];
  if (v28 > 409)
  {
    switch(v28)
    {
      case 410:
        v79 = *(v0 + 336);
        v80 = sub_20E009074();
        v81 = sub_20E009544();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_20DF62000, v80, v81, "Passcode | Expired", v82, 2u);
          MEMORY[0x20F32B3A0](v82, -1, -1);
        }

        v33 = *(v0 + 368);
        v34 = *(v0 + 376);
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);
        v37 = *(v0 + 248);

        sub_20DFEC8C8();
        v39 = swift_allocError();
        v40 = 7;
        goto LABEL_42;
      case 429:
        v95 = *(v0 + 336);
        v96 = sub_20E009074();
        v97 = sub_20E009544();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_20DF62000, v96, v97, "Passcode | Too Many requests", v98, 2u);
          MEMORY[0x20F32B3A0](v98, -1, -1);
        }

        v33 = *(v0 + 368);
        v34 = *(v0 + 376);
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);
        v37 = *(v0 + 248);

        sub_20DFEC8C8();
        v39 = swift_allocError();
        v40 = 5;
        goto LABEL_42;
      case 500:
        v48 = *(v0 + 336);
        v49 = sub_20E009074();
        v50 = sub_20E009544();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_20DF62000, v49, v50, "Internal Server Error", v51, 2u);
          MEMORY[0x20F32B3A0](v51, -1, -1);
        }

        v33 = *(v0 + 368);
        v34 = *(v0 + 376);
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);
        v37 = *(v0 + 248);

        sub_20DFEC8C8();
        v39 = swift_allocError();
        v40 = 6;
        goto LABEL_42;
    }

    goto LABEL_34;
  }

  if (v28 != 201)
  {
    if (v28 == 400)
    {
      v90 = *(v0 + 336);
      v91 = sub_20E009074();
      v92 = sub_20E009544();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_20DF62000, v91, v92, "BAD REQUEST | Check request", v93, 2u);
        MEMORY[0x20F32B3A0](v93, -1, -1);
      }

      v33 = *(v0 + 368);
      v34 = *(v0 + 376);
      v35 = *(v0 + 360);
      v36 = *(v0 + 280);
      v37 = *(v0 + 248);

      sub_20DFEC8C8();
      v39 = swift_allocError();
      *v94 = 0;
      goto LABEL_43;
    }

    if (v28 == 401)
    {
      v29 = *(v0 + 336);
      v30 = sub_20E009074();
      v31 = sub_20E009544();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_20DF62000, v30, v31, "Unauthorized | Incorrect passcode.", v32, 2u);
        MEMORY[0x20F32B3A0](v32, -1, -1);
      }

      v33 = *(v0 + 368);
      v34 = *(v0 + 376);
      v35 = *(v0 + 360);
      v36 = *(v0 + 280);
      v37 = *(v0 + 248);

      sub_20DFEC8C8();
      v39 = swift_allocError();
      v40 = 1;
LABEL_42:
      *v38 = v40;
LABEL_43:
      swift_willThrow();
      sub_20DF67FFC(v35, v33);

LABEL_44:
      v14(v36, v37);
LABEL_45:
      *(v0 + 120) = v39;
      v99 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
      v100 = swift_dynamicCast();
      v101 = *(v0 + 320);
      v102 = *(v0 + 296);
      v103 = *(v0 + 304);
      if (v100)
      {
        v104 = *(v0 + 128);
        sub_20DFEC8C8();
        swift_allocError();
        *v105 = v104;
      }

      else
      {
        sub_20DFFF4B4(v39);
      }

      swift_willThrow();

      (*(v103 + 8))(v101, v102);
      v107 = *(v0 + 312);
      v106 = *(v0 + 320);
      v109 = *(v0 + 280);
      v108 = *(v0 + 288);
      v111 = *(v0 + 264);
      v110 = *(v0 + 272);
      v112 = *(v0 + 240);
      v113 = *(v0 + 216);

      v114 = *(v0 + 8);
      v115 = *MEMORY[0x277D85DE8];
      goto LABEL_49;
    }

LABEL_34:
    v83 = *(v0 + 336);
    v84 = *(v0 + 376);
    v85 = sub_20E009074();
    v86 = sub_20E009544();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = *(v0 + 376);
      v88 = swift_slowAlloc();
      *v88 = 134217984;
      *(v88 + 4) = [v21 statusCode];

      _os_log_impl(&dword_20DF62000, v85, v86, "Request failed : Status Code %ld", v88, 0xCu);
      MEMORY[0x20F32B3A0](v88, -1, -1);
      v89 = *(v0 + 376);
    }

    else
    {

      v89 = *(v0 + 376);
      v85 = v89;
    }

    v117 = *(v0 + 360);
    v118 = *(v0 + 368);
    v145 = *(v0 + 248);
    v146 = *(v0 + 280);
    v119 = *(v0 + 224);

    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
    v39 = swift_allocError();
    *v120 = [v21 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v117, v118);

LABEL_57:
    v148(v146, v145);
    goto LABEL_45;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 328), qword_27C8626B0);
  v52 = sub_20E009074();
  v53 = sub_20E009554();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_20DF62000, v52, v53, "TAF Account Verification(OTP) succeeded!", v54, 2u);
    MEMORY[0x20F32B3A0](v54, -1, -1);
  }

  v55 = *(v0 + 384);
  v57 = *(v0 + 360);
  v56 = *(v0 + 368);

  v58 = sub_20E008744();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFEC970();
  sub_20E008724();
  v61 = v55;

  if (v55)
  {
LABEL_27:
    v62 = *(v0 + 336);
    v63 = sub_20E009074();
    v64 = sub_20E009544();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_20DF62000, v63, v64, "TAF Account Verification(OTP) failed | Decoding Error", v65, 2u);
      MEMORY[0x20F32B3A0](v65, -1, -1);
    }

    v66 = *(v0 + 224);
    v67 = *(v0 + 232);
    v68 = *(v0 + 216);

    *(v0 + 136) = v61;
    v69 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v70 = swift_dynamicCast();
    v71 = *(v67 + 56);
    v73 = *(v0 + 368);
    v72 = *(v0 + 376);
    v74 = *(v0 + 360);
    v75 = *(v0 + 248);
    v145 = v75;
    v146 = *(v0 + 280);
    if (v70)
    {
      v76 = *(v0 + 240);
      v77 = *(v0 + 216);
      v71(v77, 0, 1, *(v0 + 224));
      sub_20DFEC9C4(v77, v76);
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
      v39 = swift_allocError();
      sub_20DFECA28(v76, v78);
      swift_willThrow();
      sub_20DF67FFC(v74, v73);

      sub_20DFB2F60(v76);
    }

    else
    {
      v121 = *(v0 + 216);
      v71(v121, 1, 1, *(v0 + 224));
      sub_20DF66E28(v121, &qword_27C853520, &qword_20E013138);
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
      v39 = swift_allocError();
      *v122 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v74, v73);
    }

    goto LABEL_57;
  }

  v147 = *(v0 + 112);
  if (*(v0 + 88))
  {
    v143 = *(v0 + 88);
    v144 = *(v0 + 80);
LABEL_60:

    goto LABEL_61;
  }

  if (*(v0 + 104))
  {
    v144 = *(v0 + 96);

    goto LABEL_60;
  }

  if (!*(v0 + 112))
  {
    v131 = *(v0 + 336);
    v132 = sub_20E009074();
    v133 = sub_20E009544();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v149[0] = v135;
      *v134 = 136315138;
      *(v134 + 4) = sub_20DF74468(0xD000000000000035, 0x800000020E017490, v149);
      _os_log_impl(&dword_20DF62000, v132, v133, "TAF Account Verification(OTP) failed | %s", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x20F32B3A0](v135, -1, -1);
      MEMORY[0x20F32B3A0](v134, -1, -1);
    }

    v136 = *(v0 + 224);
    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
    v61 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_27;
  }

  v143 = 0;
  v144 = *(v0 + 96);
LABEL_61:
  v123 = *(v0 + 376);
  v124 = *(v0 + 320);
  v126 = *(v0 + 296);
  v125 = *(v0 + 304);
  v127 = *(v0 + 280);
  v137 = *(v0 + 312);
  v138 = *(v0 + 288);
  v139 = *(v0 + 272);
  v140 = *(v0 + 264);
  v128 = *(v0 + 248);
  v141 = *(v0 + 240);
  v142 = *(v0 + 216);
  v129 = *(v0 + 144);
  sub_20DF67FFC(*(v0 + 360), *(v0 + 368));

  v148(v127, v128);
  (*(v125 + 8))(v124, v126);

  *v129 = v147;
  v129[1] = v144;
  v129[2] = v143;

  v114 = *(v0 + 8);
  v130 = *MEMORY[0x277D85DE8];
LABEL_49:

  return v114();
}

uint64_t sub_20DFEC390()
{
  v20 = *MEMORY[0x277D85DE8];
  (*(v0[32] + 8))(v0[35], v0[31]);
  v1 = v0[48];
  v0[15] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[38];
  if (v3)
  {
    v7 = v0[16];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[35];
  v11 = v0[36];
  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[30];
  v16 = v0[27];

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_20DFEC54C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853548, &qword_20E013220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFEE474();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_20E0098D4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_20E0098D4();
    v17 = v3[4];
    v16[15] = 2;
    type metadata accessor for UtilitySubscriptionTokenSet();
    sub_20DFEE4C8(&qword_27C852898, type metadata accessor for UtilitySubscriptionTokenSet);
    sub_20E009904();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFEC764()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x7365526E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_20DFEC7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFEE0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFEC7F0(uint64_t a1)
{
  v2 = sub_20DFEE474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFEC82C(uint64_t a1)
{
  v2 = sub_20DFEE474();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFEC868@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFEE200(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_20DFEC8C8()
{
  result = qword_27C853528;
  if (!qword_27C853528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853528);
  }

  return result;
}

unint64_t sub_20DFEC970()
{
  result = qword_27C853530;
  if (!qword_27C853530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853530);
  }

  return result;
}

uint64_t sub_20DFEC9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFECA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFECA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_20E008CD4();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v11 = sub_20E008714();
  v6[24] = v11;
  v12 = *(v11 - 8);
  v6[25] = v12;
  v13 = *(v12 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFECC38, 0, 0);
}

uint64_t sub_20DFECC38()
{
  v10 = *MEMORY[0x277D85DE8];
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  v0[28] = v1;
  v0[29] = __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009554();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Initiate TAF OTP....", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_20DFECDC0;
  v6 = v0[23];
  v7 = v0[12];
  v8 = *MEMORY[0x277D85DE8];

  return sub_20DFF3F58(v6, v7);
}

uint64_t sub_20DFECDC0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 240);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFECEE8, 0, 0);
}

uint64_t sub_20DFECEE8()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 232);
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to create request URL for TAF Account Verification | OTP.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);

    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15(0);
  }

  else
  {
    v18 = *(v2 + 32);
    v18(*(v0 + 216), v3, v1);
    if (os_variant_has_internal_diagnostics())
    {
      *(v0 + 272) = 0;
      v19 = sub_20E0091C4();
      v20 = sub_20E0091C4();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v19, v20, (v0 + 272));

      if (*(v0 + 272))
      {
        if (AppBooleanValue)
        {
          v22 = *(v0 + 232);
          v23 = *(v0 + 208);
          v24 = *(v0 + 216);
          v25 = *(v0 + 192);
          v26 = *(v0 + 200);
          (*(v26 + 16))(v23, v24, v25);
          sub_20E0086D4();
          (*(v26 + 8))(v24, v25);
          v18(v24, v23, v25);
          v27 = sub_20E009074();
          v28 = sub_20E009554();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_20DF62000, v27, v28, "Adding additional OTP override header in initiate request.", v29, 2u);
            MEMORY[0x20F32B3A0](v29, -1, -1);
          }
        }
      }
    }

    v30 = *(v0 + 216);
    v31 = *(v0 + 176);
    sub_20DFDF8DC(0xD000000000000018, 0x800000020E0174F0, 0xD000000000000027, 0x800000020E017510);
    sub_20E008CC4();
    v32 = *(MEMORY[0x277CC9D18] + 4);
    v33 = swift_task_alloc();
    *(v0 + 248) = v33;
    *v33 = v0;
    v33[1] = sub_20DFED364;
    v34 = *(v0 + 216);
    v35 = *(v0 + 104);
    v36 = *MEMORY[0x277D85DE8];

    return MEMORY[0x28211ECF8](v34, 0);
  }
}

uint64_t sub_20DFED364(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = *v4;
  v8 = *(*v4 + 248);
  v13 = *v4;
  *(v7 + 256) = a3;
  *(v7 + 264) = v3;

  if (v3)
  {
    v9 = sub_20DFEDE6C;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v9 = sub_20DFED4C0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DFED4C0()
{
  v93 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);

  v9 = sub_20DFE0F98();
  v11 = v10;
  (*(v5 + 16))(v3, v2, v6);

  sub_20E008C94();
  sub_20E008BB4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v4, v6);
  v14(v3, v6);
  v15 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = *(v0 + 256);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = v19;
  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  *(v0 + 64) = 1;
  *(v0 + 72) = v15;
  sub_20E004C78();
  sub_20DFEC91C(v0 + 16);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    if (qword_27C852070 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(*(v0 + 224), qword_27C8626B0);
      v37 = sub_20E009074();
      v38 = sub_20E009544();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_20DF62000, v37, v38, "Unable to process TAF Account Verification(OTP) response from Utility.", v39, 2u);
        MEMORY[0x20F32B3A0](v39, -1, -1);
      }

      v33 = *(v0 + 256);

      type metadata accessor for NetworkError();
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
      v35 = swift_allocError();
      *v40 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_29;
    }

LABEL_48:
    swift_once();
    goto LABEL_13;
  }

  v21 = v20;
  v22 = *(v0 + 216);
  v23 = *(v0 + 176);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = *(v0 + 256);
  sub_20DFC6D90(v22, [v21 statusCode], v25, v24, v23, v26);
  v28 = [v21 statusCode];
  if (v28 > 403)
  {
    switch(v28)
    {
      case 404:
        v46 = *(v0 + 232);
        v47 = sub_20E009074();
        v48 = sub_20E009544();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_20DF62000, v47, v48, "Invalid Factor | OTP Expired session.", v49, 2u);
          MEMORY[0x20F32B3A0](v49, -1, -1);
        }

        v33 = *(v0 + 256);

        sub_20DFEC8C8();
        v35 = swift_allocError();
        v36 = 8;
        goto LABEL_27;
      case 429:
        v50 = *(v0 + 232);
        v51 = sub_20E009074();
        v52 = sub_20E009544();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_20DF62000, v51, v52, "Too Many Request | User requested too many OTP verification for the same account.", v53, 2u);
          MEMORY[0x20F32B3A0](v53, -1, -1);
        }

        v33 = *(v0 + 256);

        sub_20DFEC8C8();
        v35 = swift_allocError();
        v36 = 5;
        goto LABEL_27;
      case 500:
        v29 = *(v0 + 232);
        v30 = sub_20E009074();
        v31 = sub_20E009544();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_20DF62000, v30, v31, "Internal Server Error", v32, 2u);
          MEMORY[0x20F32B3A0](v32, -1, -1);
        }

        v33 = *(v0 + 256);

        sub_20DFEC8C8();
        v35 = swift_allocError();
        v36 = 6;
LABEL_27:
        *v34 = v36;
LABEL_28:
        swift_willThrow();

LABEL_29:
        v14(*(v0 + 176), *(v0 + 144));
        *(v0 + 80) = v35;
        v54 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
        v55 = swift_dynamicCast();
        v56 = *(v0 + 216);
        v57 = *(v0 + 192);
        v58 = *(v0 + 200);
        if (v55)
        {
          v59 = *(v0 + 88);
          sub_20DFEC8C8();
          swift_allocError();
          *v60 = v59;
        }

        else
        {
          sub_20DFFF4B4(v35);
        }

        swift_willThrow();

        (*(v58 + 8))(v56, v57);
        v62 = *(v0 + 208);
        v61 = *(v0 + 216);
        v64 = *(v0 + 176);
        v63 = *(v0 + 184);
        v66 = *(v0 + 160);
        v65 = *(v0 + 168);

        v67 = *(v0 + 8);
        v68 = *MEMORY[0x277D85DE8];
        v69 = 0;
        goto LABEL_33;
    }

LABEL_41:
    v82 = *(v0 + 232);
    v83 = *(v0 + 256);
    v84 = sub_20E009074();
    v85 = sub_20E009544();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 256);
      v87 = swift_slowAlloc();
      *v87 = 134217984;
      *(v87 + 4) = [v21 statusCode];

      _os_log_impl(&dword_20DF62000, v84, v85, "Request failed : Status Code %ld", v87, 0xCu);
      MEMORY[0x20F32B3A0](v87, -1, -1);
      v33 = *(v0 + 256);
    }

    else
    {

      v33 = *(v0 + 256);
      v84 = v33;
    }

    type metadata accessor for NetworkError();
    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError);
    v35 = swift_allocError();
    *v88 = [v21 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  if (v28 != 204)
  {
    if (v28 == 400)
    {
      v41 = *(v0 + 232);
      v42 = sub_20E009074();
      v43 = sub_20E009544();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_20DF62000, v42, v43, "BAD REQUEST | Check request", v44, 2u);
        MEMORY[0x20F32B3A0](v44, -1, -1);
      }

      v33 = *(v0 + 256);

      sub_20DFEC8C8();
      v35 = swift_allocError();
      *v45 = 0;
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v92 = v14;
  __swift_project_value_buffer(*(v0 + 224), qword_27C8626B0);
  v71 = sub_20E009074();
  v72 = sub_20E009554();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_20DF62000, v71, v72, "TAF Account Verification(OTP) Initiated successfully!", v73, 2u);
    MEMORY[0x20F32B3A0](v73, -1, -1);
  }

  v74 = *(v0 + 256);
  v76 = *(v0 + 208);
  v75 = *(v0 + 216);
  v77 = *(v0 + 192);
  v78 = *(v0 + 200);
  v79 = *(v0 + 176);
  v89 = *(v0 + 184);
  v90 = *(v0 + 168);
  v91 = *(v0 + 160);
  v80 = *(v0 + 144);

  v92(v79, v80);
  (*(v78 + 8))(v75, v77);

  v67 = *(v0 + 8);
  v81 = *MEMORY[0x277D85DE8];
  v69 = 1;
LABEL_33:

  return v67(v69);
}

uint64_t sub_20DFEDE6C()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v0[10] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = v0[11];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15(0);
}

uint64_t sub_20DFEE010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_20DFEE06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20DFEE0D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E014AC0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526E656B6F74 && a2 == 0xED000065736E6F70)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DFEE200@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853538, &qword_20E013218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFEE474();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  v11 = sub_20E009854();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = sub_20E009854();
  v16 = v15;
  v21 = v14;
  type metadata accessor for UtilitySubscriptionTokenSet();
  v24 = 2;
  sub_20DFEE4C8(&qword_27C8528A8, type metadata accessor for UtilitySubscriptionTokenSet);
  sub_20E009884();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

unint64_t sub_20DFEE474()
{
  result = qword_27C853540;
  if (!qword_27C853540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853540);
  }

  return result;
}

uint64_t sub_20DFEE4C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20DFEE524()
{
  result = qword_27C853550;
  if (!qword_27C853550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853550);
  }

  return result;
}

unint64_t sub_20DFEE57C()
{
  result = qword_27C853558;
  if (!qword_27C853558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853558);
  }

  return result;
}

unint64_t sub_20DFEE5D4()
{
  result = qword_27C853560;
  if (!qword_27C853560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853560);
  }

  return result;
}

uint64_t sub_20DFEE628@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20E008714();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20DFE896C())
  {
    if (qword_2811230F8 != -1)
    {
      swift_once();
    }

    v46 = v1;
    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_281124A30);
    v9 = sub_20E009074();
    v10 = sub_20E009554();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "Adding HMAC Auth header to request", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }

    v12 = sub_20DFE7E38();
    v47 = sub_20DFFD8B4(*(&off_277E1AF08 + v12), &unk_28252D160);
    v14 = v13;
    v15 = sub_20E0091C4();
    v16 = sub_20E0091C4();
    v17 = CFPreferencesCopyAppValue(v15, v16);

    if (v17)
    {
      v51 = v17;
      if (swift_dynamicCast())
      {

        v14 = v50;
        v47 = v49;
        if (qword_281123100 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v8, qword_281124A48);
        v18 = sub_20E009074();
        v19 = sub_20E009554();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_20DF62000, v18, v19, "HMAC Secret Key overridden via defaults", v20, 2u);
          MEMORY[0x20F32B3A0](v20, -1, -1);
        }
      }
    }

    v35 = sub_20E0091C4();
    v36 = sub_20E0091C4();
    v37 = CFPreferencesCopyAppValue(v35, v36);

    if (v37)
    {
      v51 = v37;
      v38 = swift_dynamicCast();
      v39 = v46;
      if (v38)
      {
        v40 = v46;

        v42 = v49;
        v41 = v50;
        if (qword_281123100 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v8, qword_281124A48);
        v43 = sub_20E009074();
        v44 = sub_20E009554();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_20DF62000, v43, v44, "HMAC Secret Value overridden via defaults", v45, 2u);
          MEMORY[0x20F32B3A0](v45, -1, -1);
        }

        v39 = v40;
      }

      else
      {
        v41 = 0xE100000000000000;
        v42 = 49;
      }
    }

    else
    {
      v41 = 0xE100000000000000;
      v42 = 49;
      v39 = v46;
    }

    (*(v48 + 16))(v7, v39, v4);
    sub_20E0086D4();
    sub_20DFF20F8();
    sub_20E0086D4();

    sub_20DFEF1D0(v47, v14, v42, v41, a1);

    return (*(v48 + 8))(v7, v4);
  }

  else
  {
    if (qword_2811230F8 != -1)
    {
      swift_once();
    }

    v21 = sub_20E009094();
    __swift_project_value_buffer(v21, qword_281124A30);
    v22 = sub_20E009074();
    v23 = sub_20E009554();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315138;
      v26 = sub_20DFE7E38();
      v27 = 0xEA00000000006C61;
      v28 = 0x6E7265746E496171;
      v29 = 1953654115;
      if (v26 != 2)
      {
        v29 = 1685025392;
      }

      if (v26)
      {
        v28 = 7759204;
        v27 = 0xE300000000000000;
      }

      if (v26 <= 1)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      if (v26 <= 1)
      {
        v31 = v27;
      }

      else
      {
        v31 = 0xE400000000000000;
      }

      v32 = sub_20DF74468(v30, v31, &v49);

      *(v24 + 4) = v32;
      _os_log_impl(&dword_20DF62000, v22, v23, "Current connected env %s does not require HMAC Auth", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x20F32B3A0](v25, -1, -1);
      MEMORY[0x20F32B3A0](v24, -1, -1);
    }

    (*(v48 + 16))(a1, v2, v4);
    v33 = *(v48 + 56);

    return v33(a1, 0, 1, v4);
  }
}

uint64_t sub_20DFEED38()
{
  sub_20E0090F4();
  sub_20DFF2518(&qword_27C853590, MEMORY[0x277CC5290]);
  v0 = sub_20E009134();
  v2 = sub_20DFF1CBC(v0, v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_20DF749AC(0, v3, 0);
    v4 = 32;
    v5 = v19;
    v6 = MEMORY[0x277D84B78];
    v7 = MEMORY[0x277D84BC0];
    do
    {
      v8 = *(v2 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20E00AB50;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_20E009204();
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        v15 = v11;
        sub_20DF749AC((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0);
  v16 = sub_20E0091A4();

  return v16;
}

uint64_t sub_20DFEEF70()
{
  v0 = sub_20E009144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_20E0090F4();
  v5 = *(v15[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v15[0]);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20E0086E4();
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v10;
  }

  sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540]);
  sub_20E0090E4();
  sub_20DF67FA8(v11, v12);
  sub_20DFF1E24(v11, v12);
  sub_20DF67FFC(v11, v12);
  sub_20E0090D4();
  (*(v1 + 8))(v4, v0);
  v13 = sub_20DFEED38();
  sub_20DF67FFC(v11, v12);
  (*(v5 + 8))(v8, v15[0]);
  return v13;
}

uint64_t sub_20DFEF1D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_20E008CD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008C94();
  sub_20E008C74();
  v18 = v17;
  (*(v13 + 8))(v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D839F8];
  *(v19 + 16) = xmmword_20E00AB50;
  v21 = MEMORY[0x277D83A80];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = v18 * 1000.0;
  v22 = sub_20E009204();
  v33[1] = a3;
  sub_20DFEF588(a1, a2, a3, a4, v22, v23);
  if (v24)
  {
    v25 = sub_20E008714();
    v26 = *(v25 - 8);
    (*(v26 + 16))(a5, v6, v25);
    sub_20E0086D4();

    sub_20E0086D4();

    sub_20E0086D4();
    return (*(v26 + 56))(a5, 0, 1, v25);
  }

  else
  {

    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v28 = sub_20E009094();
    __swift_project_value_buffer(v28, qword_27C862650);
    v29 = sub_20E009074();
    v30 = sub_20E009544();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20DF62000, v29, v30, "Unable to generate HMAC Signature", v31, 2u);
      MEMORY[0x20F32B3A0](v31, -1, -1);
    }

    v32 = sub_20E008714();
    return (*(*(v32 - 8) + 56))(a5, 1, 1, v32);
  }
}

uint64_t sub_20DFEF588(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = a5;
  v114 = a3;
  v115 = a4;
  v120 = a1;
  v121 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853568, &unk_20E013370);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v125 = &v108 - v10;
  v126 = sub_20E009114();
  v124 = *(v126 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v123 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v108 - v15;
  v16 = sub_20E009234();
  v118 = *(v16 - 8);
  v119 = v16;
  v17 = *(v118 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v108 - v22;
  v24 = sub_20E008AF4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0086C4();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_20DF66E28(v23, &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_27C862650);
    v30 = sub_20E009074();
    v31 = sub_20E009544();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Unable to retrieve URL from request.", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    return 0;
  }

  else
  {
    v111 = v8;
    v34 = *(v25 + 32);
    v110 = v24;
    v34(v28, v23, v24);
    sub_20E008684();
    v112 = v7;
    v109 = v25;
    if (v35)
    {
      sub_20E009254();
    }

    sub_20E008A84();
    v108 = sub_20E009254();
    v116 = v36;

    v37 = sub_20E0086A4();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = MEMORY[0x277D84F98];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v38;
    sub_20DF8564C(v113, a6, 0xD00000000000001BLL, 0x800000020E0175D0, isUniquelyReferenced_nonNull_native);
    v40 = v129;
    v41 = v115;

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v40;
    sub_20DF8564C(v114, v41, 0xD00000000000001BLL, 0x800000020E017610, v42);
    v43 = sub_20DFF02A0(v129);
    v114 = v44;
    v115 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_20E00E010;
    sub_20E009214();
    v46 = sub_20E0091E4();
    v48 = v47;
    v49 = v119;
    v50 = *(v118 + 8);
    v50(v19, v119);
    v122 = v28;
    if (v48 >> 60 == 15)
    {
      if (qword_27C852040 != -1)
      {
        swift_once();
      }

      v51 = sub_20E009094();
      __swift_project_value_buffer(v51, qword_27C862650);
      v52 = sub_20E009074();
      v53 = sub_20E009544();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_20DF62000, v52, v53, "String encoding failed. Returning empty string", v54, 2u);
        MEMORY[0x20F32B3A0](v54, -1, -1);
      }

      v55 = 0;
      v56 = 0xE000000000000000;
    }

    else
    {
      v55 = sub_20E008B74();
      v56 = v57;
      sub_20DF64DE8(v46, v48);
    }

    *(v45 + 32) = v55;
    *(v45 + 40) = v56;
    sub_20E009214();
    v58 = sub_20E0091E4();
    v60 = v59;
    v50(v19, v49);
    if (v60 >> 60 == 15)
    {
      v61 = v117;
      if (qword_27C852040 != -1)
      {
        swift_once();
      }

      v62 = sub_20E009094();
      __swift_project_value_buffer(v62, qword_27C862650);
      v63 = sub_20E009074();
      v64 = sub_20E009544();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_20DF62000, v63, v64, "String encoding failed. Returning empty string", v65, 2u);
        MEMORY[0x20F32B3A0](v65, -1, -1);
      }

      v66 = 0;
      v67 = 0xE000000000000000;
    }

    else
    {
      v66 = sub_20E008B74();
      v67 = v68;
      sub_20DF64DE8(v58, v60);
      v61 = v117;
    }

    *(v45 + 48) = v66;
    *(v45 + 56) = v67;
    sub_20E008834();
    v69 = sub_20E0088D4();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v61, 1, v69) == 1)
    {
      sub_20DF66E28(v61, &qword_27C852F78, &qword_20E010888);
    }

    else
    {
      v71 = sub_20E008804();
      v73 = v72;
      (*(v70 + 8))(v61, v69);
      if (v73)
      {
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          sub_20E009214();
          v75 = sub_20E0091E4();
          v77 = v76;
          v50(v19, v49);
          if (v77 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v78 = sub_20E009094();
            __swift_project_value_buffer(v78, qword_27C862650);
            v79 = sub_20E009074();
            v80 = sub_20E009544();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_20DF62000, v79, v80, "String encoding failed. Returning empty string", v81, 2u);
              MEMORY[0x20F32B3A0](v81, -1, -1);
            }

            v82 = 0;
            v83 = 0xE000000000000000;
          }

          else
          {
            v82 = sub_20E008B74();
            v83 = v84;
            sub_20DF64DE8(v75, v77);
          }

          v86 = *(v45 + 16);
          v85 = *(v45 + 24);
          if (v86 >= v85 >> 1)
          {
            v45 = sub_20DFFAE38((v85 > 1), v86 + 1, 1, v45);
          }

          *(v45 + 16) = v86 + 1;
          v87 = v45 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v83;
        }

        else
        {
        }
      }
    }

    v89 = *(v45 + 16);
    v88 = *(v45 + 24);
    if (v89 >= v88 >> 1)
    {
      v45 = sub_20DFFAE38((v88 > 1), v89 + 1, 1, v45);
    }

    *(v45 + 16) = v89 + 1;
    v90 = v45 + 16 * v89;
    v91 = v114;
    *(v90 + 32) = v115;
    *(v90 + 40) = v91;
    v129 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0);
    v92 = sub_20E0091A4();
    v94 = v93;

    v95 = sub_20DFE3B80(v92, v94);
    v119 = v95;
    v97 = v96;
    v98 = v121;

    v129 = sub_20DFE3B80(v120, v98);
    v130 = v99;
    v100 = v123;
    sub_20E009104();
    v129 = v95;
    v130 = v97;
    sub_20E009144();
    sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540]);
    sub_20DFF22E4();
    v101 = v125;
    sub_20E009124();
    v102 = v112;
    v131 = v112;
    v132 = sub_20DFC4DDC(&qword_27C853578, &qword_27C853568, &unk_20E013370);
    v103 = __swift_allocate_boxed_opaque_existential_0(&v129);
    v104 = v111;
    (*(v111 + 16))(v103, v101, v102);
    __swift_project_boxed_opaque_existential_1(&v129, v131);
    sub_20E0089C4();
    v105 = v127;
    v106 = v128;
    __swift_destroy_boxed_opaque_existential_0(&v129);
    v107 = sub_20E008B74();
    sub_20DF67FFC(v105, v106);
    sub_20DF67FFC(v119, v97);

    (*(v104 + 8))(v101, v102);
    (*(v124 + 8))(v100, v126);
    (*(v109 + 8))(v122, v110);
    return v107;
  }
}

uint64_t sub_20DFF02A0(uint64_t a1)
{
  v2 = sub_20E009234();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v52 = 0xE000000000000000;
  v6 = *(a1 + 16);
  v44 = v4;
  if (v6)
  {
    v7 = sub_20DFFB47C(v6, 0);
    v8 = sub_20DFF1B64(&v49, v7 + 4, v6, a1);

    sub_20DFF2510();
    if (v8 != v6)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v44;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v49 = v7;
  sub_20DFF0F88(&v49);
  v9 = *(v49 + 2);
  if (v9)
  {
    v47 += 8;
    v43 = v49;
    v10 = (v49 + 40);
    do
    {
      if (*(a1 + 16))
      {
        v15 = *(v10 - 1);
        v14 = *v10;

        v16 = sub_20DFB85D0(v15, v14);
        if (v17)
        {
          v18 = (*(a1 + 56) + 16 * v16);
          v19 = v18[1];
          v45 = *v18;
          v46 = v19;

          v20 = v48;
          sub_20E009214();
          v21 = sub_20E0091E4();
          v23 = v22;
          v24 = *v47;
          (*v47)(v20, v2);
          if (v23 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v25 = sub_20E009094();
            __swift_project_value_buffer(v25, qword_27C862650);
            v26 = sub_20E009074();
            v27 = sub_20E009544();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_20DF62000, v26, v27, "String encoding failed. Returning empty string", v28, 2u);
              v29 = v28;
              v2 = v44;
              MEMORY[0x20F32B3A0](v29, -1, -1);
            }

            v30 = 0;
            v31 = 0xE000000000000000;
          }

          else
          {
            v30 = sub_20E008B74();
            v31 = v32;
            sub_20DF64DE8(v21, v23);
          }

          v49 = v30;
          v50 = v31;
          MEMORY[0x20F32A4B0](124, 0xE100000000000000);
          MEMORY[0x20F32A4B0](v49, v50);

          v33 = v48;
          sub_20E009214();
          v34 = sub_20E0091E4();
          v36 = v35;
          v24(v33, v2);
          if (v36 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v37 = sub_20E009094();
            __swift_project_value_buffer(v37, qword_27C862650);
            v38 = sub_20E009074();
            v39 = sub_20E009544();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_20DF62000, v38, v39, "String encoding failed. Returning empty string", v40, 2u);
              v41 = v40;
              v2 = v44;
              MEMORY[0x20F32B3A0](v41, -1, -1);
            }

            v11 = 0;
            v13 = 0xE000000000000000;
          }

          else
          {
            v11 = sub_20E008B74();
            v13 = v12;
            sub_20DF64DE8(v34, v36);
          }

          v49 = v11;
          v50 = v13;
          MEMORY[0x20F32A4B0](124, 0xE100000000000000);
          MEMORY[0x20F32A4B0](v49, v50);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);

    return v51;
  }

  else
  {

    return 0;
  }
}