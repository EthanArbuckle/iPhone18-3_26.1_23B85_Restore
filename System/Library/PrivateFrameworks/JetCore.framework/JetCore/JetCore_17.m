uint64_t sub_1DB477824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 25705;
  }

  else
  {
    v4 = 0x646E696B24;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 25705;
  }

  else
  {
    v6 = 0x646E696B24;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB4778BC()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB477930()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB477990()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB477A0C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB477A3C()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 0x646E696B24;
  }

  *v0;
  return result;
}

uint64_t sub_1DB477A68@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DB477ACC(uint64_t a1)
{
  v2 = sub_1DB477FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB477B08(uint64_t a1)
{
  v2 = sub_1DB477FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Child.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D50, &qword_1DB51DAC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB477FEC();
  sub_1DB50BDF0();
  if (!v2)
  {
    v28 = v5;
    v10 = v52;
    LOBYTE(v30) = 0;
    v12 = sub_1DB50B740();
    v13 = v11;
    v14 = v12 == 1835365481 && v11 == 0xE400000000000000;
    if (v14 || (sub_1DB50BA30() & 1) != 0)
    {

      sub_1DB30BE90(a1, v29);
      Models.Menu.Item.init(from:)(v29, &v30);
      (*(v28 + 8))(v8, v4);
      v15 = 0;
      v16 = v30;
      v17 = v31;
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v44 = v34;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      v18 = v32;
      v19 = v33;
    }

    else
    {
      v24 = v12 == 0x756E656D627573 && v13 == 0xE700000000000000;
      if (!v24 && (sub_1DB50BA30() & 1) == 0)
      {
        v26 = v12 == 0x6574616C706D6574 && v13 == 0xE800000000000000;
        if (!v26 && (sub_1DB50BA30() & 1) == 0)
        {
          LOBYTE(v29[0]) = 0;
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_1DB50B320();

          v30 = 0x20646E696B24;
          v31 = 0xE600000000000000;
          MEMORY[0x1E1285C70](v12, v13);

          MEMORY[0x1E1285C70](0xD000000000000024, 0x80000001DB52F990);
          sub_1DB50B3E0();
          swift_allocError();
          sub_1DB478040();
          sub_1DB50B3B0();

          swift_willThrow();
          (*(v28 + 8))(v8, v4);
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        LOBYTE(v29[0]) = 1;
        sub_1DB4780A4();
        sub_1DB50B780();
        (*(v28 + 8))(v8, v4);
        v16 = v30;
        v17 = v31;
        v15 = 2;
        goto LABEL_10;
      }

      sub_1DB30BE90(a1, v29);
      Models.Menu.init(from:)(v29, &v30);
      (*(v28 + 8))(v8, v4);
      v16 = v30;
      v17 = v31;
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v44 = v34;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      v18 = v32;
      v19 = v33;
      v15 = 1;
    }

    v42 = v18;
    v43 = v19;
LABEL_10:
    *v10 = v16;
    *(v10 + 8) = v17;
    v20 = v49;
    *(v10 + 112) = v48;
    *(v10 + 128) = v20;
    *(v10 + 144) = v50;
    *(v10 + 160) = v51;
    v21 = v45;
    *(v10 + 48) = v44;
    *(v10 + 64) = v21;
    v22 = v47;
    *(v10 + 80) = v46;
    *(v10 + 96) = v22;
    v23 = v43;
    *(v10 + 16) = v42;
    *(v10 + 32) = v23;
    *(v10 + 161) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB477FEC()
{
  result = qword_1ECC45D58;
  if (!qword_1ECC45D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D58);
  }

  return result;
}

unint64_t sub_1DB478040()
{
  result = qword_1ECC45D60;
  if (!qword_1ECC45D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D50, &qword_1DB51DAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D60);
  }

  return result;
}

unint64_t sub_1DB4780A4()
{
  result = qword_1ECC45D68;
  if (!qword_1ECC45D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D68);
  }

  return result;
}

uint64_t Models.Menu.Item.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D70, &qword_1DB51DAD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1DB47A0B4();
  sub_1DB50BDF0();
  if (!v2)
  {
    v59 = v11;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    LOBYTE(v72) = 1;
    sub_1DB47A108();
    sub_1DB50B710();
    v13 = v78[0];
    if (*(&v78[0] + 1) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *&v78[0];
    }

    if (*(&v78[0] + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v78[0] + 1);
    }

    LOBYTE(v78[0]) = 0;
    v16 = sub_1DB50B740();
    v55 = v15;
    v56 = *(&v13 + 1);
    v57 = v17;
    v58 = v13;
    v53 = v16;
    v54 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    LOBYTE(v64) = 2;
    sub_1DB47A210();
    sub_1DB50B710();
    v52 = v8;
    if (v72 == 1)
    {
      sub_1DB30623C(&v72, &qword_1ECC45DC0, &qword_1DB51DAF0);
      memset(v78, 0, sizeof(v78));
      v79 = 0;
    }

    else
    {
      sub_1DB30C4B8(&v72, v78, &qword_1ECC45B98, &qword_1DB51D250);
      sub_1DB30623C(&v72, &qword_1ECC45DA0, &qword_1DB51DAE8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DC8, &qword_1DB51DAF8);
    LOBYTE(v64) = 4;
    sub_1DB47A36C();
    sub_1DB50B710();
    v19 = v72;
    if (v72 == 3)
    {
      v19 = 2;
    }

    HIDWORD(v50) = v19;
    v20 = v80[3];
    v51 = v80[4];
    __swift_project_boxed_opaque_existential_1(v80, v20);
    v21 = sub_1DB50BDE0();
    v22 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v21);
    v51 = v23;

    if (v22)
    {
      v24 = v51;
    }

    else
    {
      v24 = &off_1F56F1850;
    }

    LOBYTE(v72) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v24, v70);
    v25 = BYTE4(v50);
    if (!v55)
    {
      v54 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
      v55 = v26;
    }

    v27 = v60;
    sub_1DB30C4B8(v78, &v64, &qword_1ECC45B98, &qword_1DB51D250);
    if (v64)
    {
      sub_1DB30623C(v78, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v12 + 8))(v52, v4);
      v74 = v66;
      v75 = v67;
      v76 = v68;
      v77 = v69;
      v72 = v64;
      v73 = v65;
    }

    else
    {
      *(&v76 + 1) = &_s12_EmptySourceVN;
      v77 = &off_1EECE8048;
      sub_1DB30BE90(&v75, v61);
      v28 = v12;
      v29 = v62;
      v30 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v59 = (*(v30 + 24))(v29, v30);
      v31 = v62;
      v32 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v58 = (*(v32 + 32))(v31, v32);
      LODWORD(v56) = v33;
      v34 = v62;
      v35 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v36 = (*(v35 + 40))(v34, v35);
      v37 = v4;
      v38 = v62;
      v39 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v40 = (*(v39 + 48))(v38, v39);
      v27 = v60;
      v41 = v40;
      v43 = v42;
      sub_1DB30623C(v78, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v28 + 8))(v52, v37);
      __swift_destroy_boxed_opaque_existential_0(v61);
      *&v72 = v59;
      *(&v72 + 1) = v58;
      LOBYTE(v73) = v56 & 1;
      *(&v73 + 1) = v36;
      *&v74 = v41;
      *(&v74 + 1) = v43;
      if (v64)
      {
        sub_1DB30623C(&v64, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    v64 = v70[0];
    v65 = v70[1];
    *&v66 = v71;
    *(v27 + 136) = 0u;
    *(v27 + 152) = 0;
    *(v27 + 120) = 0u;
    *(v27 + 160) = 2;
    v44 = v55;
    *v27 = v54;
    *(v27 + 8) = v44;
    v45 = v57;
    *(v27 + 16) = v53;
    *(v27 + 24) = v45;
    v46 = v73;
    *(v27 + 32) = v72;
    *(v27 + 48) = v46;
    v47 = v74;
    v48 = v75;
    v49 = v76;
    *(v27 + 112) = v77;
    *(v27 + 80) = v48;
    *(v27 + 96) = v49;
    *(v27 + 64) = v47;
    sub_1DB47B410(&v64, v27 + 120);
    *(v27 + 160) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_0(v80);
}

uint64_t Models.Menu.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DF0, &qword_1DB51DB08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DB47B480();
  sub_1DB50BDF0();
  if (!v2)
  {
    v56 = a2;
    v57 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    LOBYTE(v63) = 0;
    sub_1DB47A108();
    sub_1DB50B710();
    v12 = v5;
    v13 = v69[0];
    if (*(&v69[0] + 1) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *&v69[0];
    }

    if (*(&v69[0] + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v69[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    LOBYTE(v63) = 1;
    sub_1DB3980E8();
    sub_1DB50B710();
    v54 = *(&v13 + 1);
    v55 = v13;
    v53 = v14;
    v16 = *&v69[0];
    if (*(&v69[0] + 1) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(&v69[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    LOBYTE(v61[0]) = 2;
    sub_1DB47A210();
    sub_1DB50B710();
    v51 = v17;
    v52 = v16;
    if (v63 == 1)
    {
      sub_1DB30623C(&v63, &qword_1ECC45DC0, &qword_1DB51DAF0);
      memset(v69, 0, sizeof(v69));
      v70 = 0;
    }

    else
    {
      sub_1DB30C4B8(&v63, v69, &qword_1ECC45B98, &qword_1DB51D250);
      sub_1DB30623C(&v63, &qword_1ECC45DA0, &qword_1DB51DAE8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E00, &qword_1DB51DB10);
    LOBYTE(v61[0]) = 3;
    sub_1DB47B4D4();
    sub_1DB50B780();
    v19 = v63;
    if (v15)
    {
      v20 = v15;
      v21 = v56;
      v22 = v57;
      v23 = v53;
    }

    else
    {
      v23 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
      v20 = v24;
      v21 = v56;
      v22 = v57;
    }

    v25 = v52;
    if (!v51)
    {
      v25 = 0;
    }

    v57 = v25;
    v26 = 0xE000000000000000;
    if (v51)
    {
      v26 = v51;
    }

    v55 = v26;
    sub_1DB30C4B8(v69, v61, &qword_1ECC45B98, &qword_1DB51D250);
    if (*&v61[0])
    {
      sub_1DB30623C(v69, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v22 + 8))(v9, v12);
      v65 = v61[2];
      v66 = v61[3];
      v67 = v61[4];
      v68 = v62;
      v63 = v61[0];
      v64 = v61[1];
    }

    else
    {
      *(&v67 + 1) = &_s12_EmptySourceVN;
      v68 = &off_1EECE8048;
      sub_1DB30BE90(&v66, v58);
      v53 = v23;
      v54 = v20;
      v27 = v22;
      v28 = v19;
      v29 = v59;
      v30 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v52 = (*(v30 + 24))(v29, v30);
      v31 = v59;
      v32 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v51 = (*(v32 + 32))(v31, v32);
      v50 = v33;
      v34 = v59;
      v35 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v49 = (*(v35 + 40))(v34, v35);
      v37 = v59;
      v36 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v38 = *(v36 + 48);
      v39 = v36;
      v19 = v28;
      v40 = v38(v37, v39);
      v21 = v56;
      v41 = v40;
      v43 = v42;
      sub_1DB30623C(v69, &qword_1ECC45B98, &qword_1DB51D250);
      (*(v27 + 8))(v9, v12);
      v23 = v53;
      v20 = v54;
      __swift_destroy_boxed_opaque_existential_0(v58);
      *&v63 = v52;
      *(&v63 + 1) = v51;
      LOBYTE(v64) = v50 & 1;
      *(&v64 + 1) = v49;
      *&v65 = v41;
      *(&v65 + 1) = v43;
      if (*&v61[0])
      {
        sub_1DB30623C(v61, &qword_1ECC45B98, &qword_1DB51D250);
      }
    }

    *v21 = v23;
    *(v21 + 8) = v20;
    v44 = v55;
    *(v21 + 16) = v57;
    *(v21 + 24) = v44;
    v45 = v66;
    *(v21 + 64) = v65;
    *(v21 + 80) = v45;
    *(v21 + 96) = v67;
    v46 = v68;
    v47 = v64;
    *(v21 + 32) = v63;
    *(v21 + 48) = v47;
    *(v21 + 112) = v46;
    *(v21 + 120) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(v71);
}

uint64_t Models.Menu.Child.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E20, &qword_1DB51DB18);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB477FEC();
  sub_1DB50BE40();
  sub_1DB47B630(v1, &v27);
  if (!v38)
  {
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v26 = 0;
    v9 = v14;
    sub_1DB50B860();
    if (!v9)
    {
      Models.Menu.Item.encode(to:)(a1);
    }

    sub_1DB47B6EC(&v15);
    return (*(v39 + 8))(v6, v3);
  }

  if (v38 == 1)
  {
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v26 = 0;
    v8 = v14;
    sub_1DB50B860();
    if (!v8)
    {
      Models.Menu.encode(to:)(a1);
    }

    sub_1DB47B6BC(&v15);
    return (*(v39 + 8))(v6, v3);
  }

  v10 = v27;
  LOBYTE(v15) = 0;
  v11 = v14;
  sub_1DB50B860();
  if (!v11)
  {
    v15 = v10;
    v26 = 1;
    sub_1DB47B668();
    sub_1DB50B8A0();
  }

  (*(v39 + 8))(v6, v3);
}

uint64_t Models.Menu.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E30, &qword_1DB51DB20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB47A0B4();
  sub_1DB50BE40();
  v9 = *(v1 + 8);
  v23[0] = *v1;
  v23[1] = v9;
  v24 = 1;
  sub_1DB47B668();
  v10 = v22;
  sub_1DB50B8A0();
  if (v10)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  LOBYTE(v23[0]) = 0;
  sub_1DB50B860();
  LOBYTE(v23[0]) = 2;
  sub_1DB46E428();
  sub_1DB50B8A0();
  LOBYTE(v23[0]) = *(v1 + 160);
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45DE0, &qword_1DB51DB00);
  sub_1DB47B71C();
  sub_1DB50B8A0();
  v22 = v3;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1DB50BE30();
  v16 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v15);
  v18 = v17;

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = &type metadata for EmptyActionKindTable;
  }

  if (v16)
  {
    v20 = v18;
  }

  else
  {
    v20 = &off_1F56F1850;
  }

  LOBYTE(v23[0]) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 120, v19, v7, v23, v19, &_s4MenuV4ItemV10CodingKeysON, v20);
  return (*(v4 + 8))(v7, v22);
}

uint64_t Models.Menu.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45E48, &qword_1DB51DB28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB47B480();
  sub_1DB50BE40();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16 = 0;
  sub_1DB47B668();
  sub_1DB50B8A0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v17) = 1;
    sub_1DB50B860();
    LOBYTE(v17) = 2;
    sub_1DB46E428();
    sub_1DB50B8A0();
    v17 = v3[15];
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B7F4();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Models.Menu.Child.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v25);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v25);
  if (!v9)
  {

    v16 = 0x20000001F56FD778uLL;
    sub_1DB315178();
    swift_allocError();
    *v17 = xmmword_1DB50F500;
    goto LABEL_9;
  }

  if (v7 == 1835365481 && v9 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    sub_1DB3171C0(a1, v24);
    v23 = v6;
    Models.Menu.Item.init(deserializing:using:)(v24, &v23, v25);
    result = sub_1DB3151CC(a1);
    if (!v3)
    {
      HIBYTE(v26) = 0;
LABEL_7:
      v11 = v25[9];
      *(a3 + 128) = v25[8];
      *(a3 + 144) = v11;
      v12 = v25[5];
      *(a3 + 64) = v25[4];
      *(a3 + 80) = v12;
      v13 = v25[7];
      *(a3 + 96) = v25[6];
      *(a3 + 112) = v13;
      v14 = v25[1];
      *a3 = v25[0];
      *(a3 + 16) = v14;
      v15 = v25[3];
      *(a3 + 32) = v25[2];
      *(a3 + 48) = v15;
      *(a3 + 160) = v26;
      return result;
    }

    return result;
  }

  if ((v7 != 0x756E656D627573 || v9 != 0xE700000000000000) && (sub_1DB50BA30() & 1) == 0)
  {

    if (v7 == 0x6574616C706D6574 && v9 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
    {

      JSONObject.subscript.getter(25705, 0xE200000000000000, v25);
      v19 = sub_1DB42D77C();
      if (!v3)
      {
        v21 = v19;
        v22 = v20;
        sub_1DB3151CC(a1);
        result = sub_1DB3151CC(v25);
        *a3 = v21;
        *(a3 + 8) = v22;
        *(a3 + 161) = 2;
        return result;
      }

      sub_1DB3151CC(a1);
      v18 = v25;
      return sub_1DB3151CC(v18);
    }

    v16 = 0x80000001F56FD778;
    sub_1DB315178();
    swift_allocError();
    *v17 = v7;
    *(v17 + 8) = v9;
LABEL_9:
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    swift_willThrow();
    v18 = a1;
    return sub_1DB3151CC(v18);
  }

  sub_1DB3171C0(a1, v24);
  v23 = v6;
  Models.Menu.init(deserializing:using:)(v24, &v23, v25);
  result = sub_1DB3151CC(a1);
  if (!v3)
  {
    HIBYTE(v26) = 1;
    goto LABEL_7;
  }

  return result;
}

uint64_t Models.Menu.Item.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v26);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v26);
  if (!v9)
  {

    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151C0;
    *(v13 + 16) = 0x20000001F56FD870uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  JSONObject.subscript.getter(25705, 0xE200000000000000, v26);
  sub_1DB30C4B8(v26, v28, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v29)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1DB300B14(v10, v25);
    if (swift_dynamicCast())
    {
      v12 = v23[0];
      v11 = v23[1];
      __swift_destroy_boxed_opaque_existential_0(v28);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    sub_1DB30623C(v28, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v12 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
  v11 = v15;
LABEL_9:
  sub_1DB3151CC(v26);
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v28);
  v25[0] = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  MediaArtwork.init(deserializing:using:)(v28, v25, v26);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v25);
  v23[0] = v6;
  static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v25, v23, v28);
  sub_1DB3151CC(v25);

  JSONObject.subscript.getter(1701605234, 0xE400000000000000, v25);
  sub_1DB30C4B8(v25, v23, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v24)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1DB300B14(v16, v22);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v23);
      v17 = sub_1DB50B680();

      sub_1DB3151CC(a1);
      sub_1DB3151CC(v25);
      if (v17 == 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_22;
    }

    sub_1DB3151CC(a1);
    sub_1DB3151CC(v25);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB3151CC(v25);
    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v19 = 2;
LABEL_22:
  *(a3 + 152) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 160) = 2;
  *a3 = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  v20 = v26[3];
  *(a3 + 64) = v26[2];
  *(a3 + 80) = v20;
  *(a3 + 96) = v26[4];
  *(a3 + 112) = v27;
  v21 = v26[1];
  *(a3 + 32) = v26[0];
  *(a3 + 48) = v21;
  result = sub_1DB47B410(v28, a3 + 120);
  *(a3 + 160) = v19;
  return result;
}

double Models.Menu.init(deserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(25705, 0xE200000000000000, v23);
  sub_1DB30C4B8(v23, v25, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v26)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1DB300B14(v7, v22);
    if (swift_dynamicCast())
    {
      v8 = v21;
      v27 = v20;
      __swift_destroy_boxed_opaque_existential_0(v25);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_1DB30623C(v25, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v27 = _s7JetCore6ModelsO4MenuV2IDVAGycfC_0();
  v8 = v9;
LABEL_7:
  sub_1DB3151CC(v23);
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v23);
  v10 = JSONObject.string.getter();
  v12 = v11;
  sub_1DB3151CC(v23);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v25);
  v22[0] = v6;

  MediaArtwork.init(deserializing:using:)(v25, v22, v23);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    if (v12)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    JSONObject.subscript.getter(0x6E6572646C696863, 0xE800000000000000, v25);
    v16 = sub_1DB320C28(v25, v6);
    sub_1DB3151CC(a1);
    *a3 = v27;
    *(a3 + 8) = v8;
    *(a3 + 16) = v15;
    *(a3 + 24) = v13;
    v17 = v23[3];
    *(a3 + 64) = v23[2];
    *(a3 + 80) = v17;
    *(a3 + 96) = v23[4];
    v18 = v24;
    result = *v23;
    v19 = v23[1];
    *(a3 + 32) = v23[0];
    *(a3 + 48) = v19;
    *(a3 + 112) = v18;
    *(a3 + 120) = v16;
  }

  return result;
}

uint64_t Models.Menu.Child.id.getter()
{
  sub_1DB47B630(v0, &v14);
  if (v25)
  {
    if (v25 == 1)
    {
      v7 = v18;
      v8 = v19;
      v9 = v20;
      v10 = v21;
      v3 = v14;
      v4 = v15;
      v5 = v16;
      v6 = v17;
      v1 = v14;

      sub_1DB47B6BC(&v3);
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v1 = v14;

    sub_1DB47B6EC(&v3);
  }

  return v1;
}

uint64_t sub_1DB47A004@<X0>(uint64_t *a1@<X8>)
{
  result = Models.Menu.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1DB47A074()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1ECC45D48 = result;
  return result;
}

unint64_t sub_1DB47A0B4()
{
  result = qword_1ECC45D78;
  if (!qword_1ECC45D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D78);
  }

  return result;
}

unint64_t sub_1DB47A108()
{
  result = qword_1ECC45D88;
  if (!qword_1ECC45D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D80, &qword_1DB51DAD8);
    sub_1DB47A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D88);
  }

  return result;
}

unint64_t sub_1DB47A18C()
{
  result = qword_1ECC45D90;
  if (!qword_1ECC45D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45D98, &qword_1DB51DAE0);
    sub_1DB4780A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45D90);
  }

  return result;
}

unint64_t sub_1DB47A210()
{
  result = qword_1ECC45DA8;
  if (!qword_1ECC45DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DA0, &qword_1DB51DAE8);
    sub_1DB47A294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DA8);
  }

  return result;
}

unint64_t sub_1DB47A294()
{
  result = qword_1ECC45DB0;
  if (!qword_1ECC45DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45B98, &qword_1DB51D250);
    sub_1DB47A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DB0);
  }

  return result;
}

unint64_t sub_1DB47A318()
{
  result = qword_1ECC45DB8;
  if (!qword_1ECC45DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DB8);
  }

  return result;
}

unint64_t sub_1DB47A36C()
{
  result = qword_1ECC45DD0;
  if (!qword_1ECC45DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DC8, &qword_1DB51DAF8);
    sub_1DB47A3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DD0);
  }

  return result;
}

unint64_t sub_1DB47A3F0()
{
  result = qword_1ECC45DD8;
  if (!qword_1ECC45DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DE0, &qword_1DB51DB00);
    sub_1DB47A474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DD8);
  }

  return result;
}

unint64_t sub_1DB47A474()
{
  result = qword_1ECC45DE8;
  if (!qword_1ECC45DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DE8);
  }

  return result;
}

uint64_t Models.Menu.Item.init(id:title:icon:action:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0;
  *(a8 + 120) = 0u;
  *(a8 + 160) = 2;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v10 = *(a5 + 48);
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 80) = v10;
  *(a8 + 96) = *(a5 + 64);
  *(a8 + 112) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v11;
  result = sub_1DB47B410(a6, a8 + 120);
  *(a8 + 160) = v9;
  return result;
}

uint64_t sub_1DB47A63C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1852793705;
  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 1701605234;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB47A6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB47C0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB47A6DC(uint64_t a1)
{
  v2 = sub_1DB47A0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB47A718(uint64_t a1)
{
  v2 = sub_1DB47A0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Item.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Models.Menu.Item.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.Item.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Models.Menu.Item.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.ItemRole.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Models.Menu.ItemRole.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7463757274736564;
  }

  else
  {
    result = 0x6C65636E6163;
  }

  *v0;
  return result;
}

uint64_t sub_1DB47AA14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463757274736564;
  }

  else
  {
    v4 = 0x6C65636E6163;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v6 = 0x7463757274736564;
  }

  else
  {
    v6 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v7 = 0xEB00000000657669;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB47AAC0()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AB48()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB47ABBC()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AC4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB47ACA8(uint64_t *a1@<X8>)
{
  v2 = 0x6C65636E6163;
  if (*v1)
  {
    v2 = 0x7463757274736564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.Menu.init(id:title:icon:children:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v7 = *(a5 + 48);
  *(a7 + 64) = *(a5 + 32);
  *(a7 + 80) = v7;
  *(a7 + 96) = *(a5 + 64);
  v8 = *(a5 + 80);
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 112) = v8;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_1DB47ADD4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AE80()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB47AF18()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB47AFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB47C098();
  *a2 = result;
  return result;
}

void sub_1DB47AFF0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1852793705;
  if (*v1 != 2)
  {
    v5 = 0x6E6572646C696863;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DB47B058()
{
  v1 = 25705;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1DB47B0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB47C098();
  *a1 = result;
  return result;
}

uint64_t sub_1DB47B0E4(uint64_t a1)
{
  v2 = sub_1DB47B480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB47B120(uint64_t a1)
{
  v2 = sub_1DB47B480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Models.Menu.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Models.Menu.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.children.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

unint64_t _s7JetCore6ModelsO4MenuV2IDVAGycfC_0()
{
  sub_1DB50B320();

  if (qword_1ECC42148 != -1)
  {
    swift_once();
  }

  [qword_1ECC45D48 increment];
  v0 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_1DB47B410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F50, &unk_1DB513AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB47B480()
{
  result = qword_1ECC45DF8;
  if (!qword_1ECC45DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45DF8);
  }

  return result;
}

unint64_t sub_1DB47B4D4()
{
  result = qword_1ECC45E08;
  if (!qword_1ECC45E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45E00, &qword_1DB51DB10);
    sub_1DB47B558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E08);
  }

  return result;
}

unint64_t sub_1DB47B558()
{
  result = qword_1ECC45E10;
  if (!qword_1ECC45E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E10);
  }

  return result;
}

unint64_t sub_1DB47B5DC()
{
  result = qword_1ECC45E18;
  if (!qword_1ECC45E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E18);
  }

  return result;
}

unint64_t sub_1DB47B668()
{
  result = qword_1ECC45E28;
  if (!qword_1ECC45E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E28);
  }

  return result;
}

unint64_t sub_1DB47B71C()
{
  result = qword_1ECC45E38;
  if (!qword_1ECC45E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45DE0, &qword_1DB51DB00);
    sub_1DB47B7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E38);
  }

  return result;
}

unint64_t sub_1DB47B7A0()
{
  result = qword_1ECC45E40;
  if (!qword_1ECC45E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E40);
  }

  return result;
}

unint64_t sub_1DB47B7F4()
{
  result = qword_1ECC45E50;
  if (!qword_1ECC45E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43060, &qword_1DB510218);
    sub_1DB47B878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E50);
  }

  return result;
}

unint64_t sub_1DB47B878()
{
  result = qword_1ECC45E58;
  if (!qword_1ECC45E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E58);
  }

  return result;
}

unint64_t sub_1DB47B928()
{
  result = qword_1ECC45E60;
  if (!qword_1ECC45E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E60);
  }

  return result;
}

unint64_t sub_1DB47B980()
{
  result = qword_1ECC45E68;
  if (!qword_1ECC45E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E68);
  }

  return result;
}

unint64_t sub_1DB47B9D8()
{
  result = qword_1ECC45E70;
  if (!qword_1ECC45E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E70);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DB47BA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DB47BA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DB47BB50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 162))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 161);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB47BB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 161) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB47BBE8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 161) = a2;
  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DB47BC7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1DB47BCC4(uint64_t result, int a2, int a3)
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
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB47BD84()
{
  result = qword_1ECC45E78;
  if (!qword_1ECC45E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E78);
  }

  return result;
}

unint64_t sub_1DB47BDDC()
{
  result = qword_1ECC45E80;
  if (!qword_1ECC45E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E80);
  }

  return result;
}

unint64_t sub_1DB47BE34()
{
  result = qword_1ECC45E88;
  if (!qword_1ECC45E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E88);
  }

  return result;
}

unint64_t sub_1DB47BE8C()
{
  result = qword_1ECC45E90;
  if (!qword_1ECC45E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E90);
  }

  return result;
}

unint64_t sub_1DB47BEE4()
{
  result = qword_1ECC45E98;
  if (!qword_1ECC45E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45E98);
  }

  return result;
}

unint64_t sub_1DB47BF3C()
{
  result = qword_1ECC45EA0;
  if (!qword_1ECC45EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EA0);
  }

  return result;
}

unint64_t sub_1DB47BF94()
{
  result = qword_1ECC45EA8;
  if (!qword_1ECC45EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EA8);
  }

  return result;
}

unint64_t sub_1DB47BFEC()
{
  result = qword_1ECC45EB0;
  if (!qword_1ECC45EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EB0);
  }

  return result;
}

unint64_t sub_1DB47C044()
{
  result = qword_1ECC45EB8;
  if (!qword_1ECC45EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EB8);
  }

  return result;
}

uint64_t sub_1DB47C098()
{
  v0 = sub_1DB50B680();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB47C0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1DB47C284()
{
  result = qword_1ECC45EC0;
  if (!qword_1ECC45EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45EC0);
  }

  return result;
}

unint64_t sub_1DB47C2D8()
{
  result = qword_1ECC45EC8[0];
  if (!qword_1ECC45EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC45EC8);
  }

  return result;
}

uint64_t Device.buildVersion.getter()
{
  v0 = JEGestaltGetBuildVersion();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.osVersion.getter()
{
  v0 = JEGestaltGetSystemVersion();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.localizedModel.getter()
{
  v0 = JEGestaltGetDeviceModel();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingShortName.getter()
{
  v0 = JEGestaltGetMarketingName();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.physicalModel.getter()
{
  v0 = JEGestaltGetProductType();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.deviceClass.getter()
{
  v0 = JEGestaltGetDeviceClass();
  v1 = sub_1DB50A650();

  return v1;
}

uint64_t Device.marketingFamilyName.getter()
{
  v0 = JEGestaltGetMarketingDeviceFamilyName();
  v1 = sub_1DB50A650();

  return v1;
}

id Device.totalSystemCapacity.getter()
{
  v0 = JEGestaltGetTotalSystemCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalSystemAvailable.getter()
{
  v0 = JEGestaltGetTotalSystemAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataCapacity.getter()
{
  v0 = JEGestaltGetTotalDataCapacity();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDataAvailable.getter()
{
  v0 = JEGestaltGetTotalDataAvailable();
  v1 = [v0 integerValue];

  return v1;
}

id Device.totalDiskCapacity.getter()
{
  v0 = JEGestaltGetTotalDiskCapacity();
  v1 = [v0 integerValue];

  return v1;
}

double IntentPreloadConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t IntentPreloadConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB47C7F0(v2, a2);

  return sub_1DB36FE80(a1, a2);
}

uint64_t dispatch thunk of IntentPreloader.preload<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_1DB30C7A0;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of IntentPreloader.preloadAnyIntent<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1DB306AF4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DB47CB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457E0, &qword_1DB51BAE8);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  v6[4] = sub_1DB47CD08;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DB46E918;
  v6[3] = &block_descriptor_17;
  v4 = _Block_copy(v6);

  [v0 createSnapshotWithCompletion_];
  _Block_release(v4);
  return v1;
}

void sub_1DB47CC40(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
    sub_1DB47CD68(v7, a3);
    v4 = v7;

LABEL_4:

    return;
  }

  if (a2)
  {
    v6 = a2;
    sub_1DB3DDB60(a2);
    v4 = a2;

    goto LABEL_4;
  }

  sub_1DB50B580();
  __break(1u);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DB47CD68(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1DB47CFA0(v6, v22);
        sub_1DB47CFA0(v22, v19);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1DB47D010(v22);
        }

        else
        {
          v8 = v19[1];

          sub_1DB2FEA0C(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          v13 = a1;

          v12(sub_1DB400AB8, v11, v10, v9);

          sub_1DB47D010(v22);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB47D078(v14, 0);
  }
}

uint64_t sub_1DB47CFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D0, &qword_1DB50F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB47D010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC428D0, &qword_1DB50F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DB47D078(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_1DB47D0C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1DB47D17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50ABF0();
  v5 = sub_1DB50B120();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t sub_1DB47D274(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  v9 = sub_1DB50ABB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v15 = *(v3 + 88);
  (*(v5 + 16))(v8, a1, v4, v12);
  sub_1DB50ABF0();
  sub_1DB50ABE0();
  return (*(v10 + 8))(v14, v9);
}

uint64_t _AsyncChannel.Receiver.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB47D460, 0, 0);
}

uint64_t sub_1DB47D460()
{
  v1 = *(v0 + 56);
  v2 = *(**(v0 + 48) + 96);
  swift_beginAccess();
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  v6 = sub_1DB50AC20();
  *v4 = v0;
  v4[1] = sub_1DB47D540;
  v7 = *(v0 + 40);

  return MEMORY[0x1EEE6D9D0](v7, v6);
}

uint64_t sub_1DB47D540()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  swift_endAccess();
  v2 = *(v4 + 8);

  return v2();
}

uint64_t _AsyncChannel.Receiver.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1DB50ABF0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 96);
  v5 = sub_1DB50AC20();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1DB47D734(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB38ACA4;

  return _AsyncChannel.Receiver.next()(a1);
}

uint64_t sub_1DB47D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB47D89C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1DB47D89C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB47D9B0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1DB50ABD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v13 - v10;
  *(&v13 - v10) = a1;
  (*(v7 + 104))(&v13 - v10, *a2, v6, v9);
  return (*(v7 + 32))(a3, v11, v6);
}

uint64_t static _AsyncChannel.BufferingPolicy.unbounded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DB50ABD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - v6;
  (*(v3 + 104))(&v9 - v6, *MEMORY[0x1E69E8650], v2, v5);
  return (*(v3 + 32))(a1, v7, v2);
}

uint64_t sub_1DB47DB88()
{
  swift_weakInit();
  swift_weakAssign();
}

char *_AsyncChannel.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = sub_1DB47E830(a1);
  v7 = *(v2 + 80);
  v8 = type metadata accessor for _AsyncChannel.BufferingPolicy();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

char *_AsyncChannel.init(bufferingPolicy:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB47E830(a1);
  v5 = *(v3 + 80);
  v6 = type metadata accessor for _AsyncChannel.BufferingPolicy();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

void _AsyncChannel.yield(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v16 = *(v4 + 80);
  v6 = *(*v2 + 112);
  swift_beginAccess();
  v7 = type metadata accessor for _AsyncChannel.WeakReceiver();
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DB50AEB0();
  swift_endAccess();
  v18[0] = *(v2 + v6);
  swift_getWitnessTable();
  if (sub_1DB50AE70())
  {
    v8 = *(*v2 + 104);
    swift_beginAccess();
    v9 = *(v2 + v8);

    sub_1DB47D274(a1);

    os_unfair_lock_unlock(v5 + 4);
    return;
  }

  os_unfair_lock_unlock(v5 + 4);
  v10 = *(v2 + v6);

  if (!sub_1DB50AA00())
  {
    goto LABEL_13;
  }

  v11 = 0;
  v12 = v10 + 32;
  while (1)
  {
    v13 = sub_1DB50A9F0();
    sub_1DB50A9B0();
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v7 - 8);
    (*(v14 + 16))(v18, v12, v7);
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    (*(v14 + 32))(v17, v18, v7);
    if (swift_weakLoadStrong())
    {
      sub_1DB47D274(a1);
    }

    (*(v14 + 8))(v17, v7);
    v12 += 8;
    ++v11;
    if (v15 == sub_1DB50AA00())
    {
      goto LABEL_13;
    }
  }

  v17[0] = sub_1DB50B380();
  v14 = *(v7 - 8);
  (*(v14 + 16))(v18, v17, v7);
  swift_unknownObjectRelease();
  v15 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
}

uint64_t _AsyncChannel.makeAsyncIterator()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1DB47E9D4(&v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

uint64_t sub_1DB47E0DC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for _AsyncChannel.Receiver();
  v7 = *(v4 + 96);
  v8 = *(v6 + 48);
  v9 = *(v6 + 52);
  swift_allocObject();
  *a2 = sub_1DB47E3A8(a1 + v7);
  v10 = *(*a1 + 104);
  swift_beginAccess();
  sub_1DB50BC00();
  swift_endAccess();
  v11 = *a2;

  sub_1DB47DB88();
  v12 = *(*a1 + 112);
  swift_beginAccess();
  type metadata accessor for _AsyncChannel.WeakReceiver();
  sub_1DB50AA60();
  sub_1DB50AA10();
  return swift_endAccess();
}

char *_AsyncChannel.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for _AsyncChannel.BufferingPolicy();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 104)];

  v7 = *&v0[*(*v0 + 112)];

  return v0;
}

uint64_t sub_1DB47E30C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1DB47E368@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = _AsyncChannel.makeAsyncIterator()();

  *a1 = v4;
  return result;
}

uint64_t sub_1DB47E3A8(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = *(*v1 + 80);
  v4 = sub_1DB50AC20();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v6;
  v7 = sub_1DB50ABF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v32 - v10;
  v34 = sub_1DB50ABD0();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v32 - v13;
  v37 = sub_1DB50AC30();
  v35 = *(v37 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v32 - v16;
  v18 = sub_1DB50B120();
  v33 = *(v18 - 8);
  v19 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  (*(v8 + 56))(&v32 - v24, 1, 1, v7, v23);
  (*(v11 + 16))(v14, v36, v34);
  v42 = v3;
  v43 = v25;
  nullsub_8(v3);
  v26 = v33;
  sub_1DB50AC40();
  (*(v26 + 16))(v21, v25, v18);
  if ((*(v8 + 48))(v21, 1, v7) == 1)
  {
    result = (*(v26 + 8))(v21, v18);
    __break(1u);
  }

  else
  {
    v27 = *(v8 + 32);
    v28 = v38;
    v27(v38, v21, v7);
    v27((v2 + *(*v2 + 88)), v28, v7);
    v29 = v39;
    v30 = v37;
    sub_1DB50AC00();
    (*(v35 + 8))(v17, v30);
    (*(v40 + 32))(v2 + *(*v2 + 96), v29, v41);
    (*(v26 + 8))(v25, v18);
    return v2;
  }

  return result;
}

char *sub_1DB47E830(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 2) = v5;
  v6 = *(v4 + 96);
  v7 = *(v4 + 80);
  v8 = type metadata accessor for _AsyncChannel.BufferingPolicy();
  (*(*(v8 - 8) + 16))(&v2[v6], a1, v8);
  v9 = type metadata accessor for _AsyncChannel.Receiver();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v2[*(*v2 + 104)] = sub_1DB47E3A8(a1);
  type metadata accessor for _AsyncChannel.WeakReceiver();
  *&v2[*(*v2 + 112)] = sub_1DB50A9D0();
  return v2;
}

BOOL sub_1DB47E97C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong == 0;
}

uint64_t sub_1DB47EA30(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DB50ABD0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB47EB28(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DB50ABF0();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1DB50AC20();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DB47EC18(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DB50ABD0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB47ECB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB47ED04(uint64_t a1, uint64_t a2)
{
  v3[115] = v2;
  v3[114] = a2;
  v3[113] = a1;
  v4 = sub_1DB50A350();
  v3[116] = v4;
  v5 = *(v4 - 8);
  v3[117] = v5;
  v6 = *(v5 + 64) + 15;
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  v3[120] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v9 = sub_1DB50A230();
  v3[125] = v9;
  v10 = *(v9 - 8);
  v3[126] = v10;
  v11 = *(v10 + 64) + 15;
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  v3[129] = AssetRequest;
  v13 = *(*(AssetRequest - 8) + 64) + 15;
  v3[130] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB47EED0, v2, 0);
}

uint64_t sub_1DB47EED0()
{
  v45 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 920);
  sub_1DB488E1C(*(v0 + 912), *(v0 + 1040), type metadata accessor for DaemonGetAssetRequest);
  sub_1DB50A220();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  v5 = sub_1DB50B0E0();
  v6 = *(v0 + 1040);
  if (v5)
  {
    v7 = *(v0 + 1024);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315138;
    sub_1DB50B320();

    v10 = sub_1DB509B80();
    MEMORY[0x1E1285C70](v10);

    sub_1DB488DBC(v6, type metadata accessor for DaemonGetAssetRequest);
    v11 = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB52FBA0, &v44);

    *(v8 + 4) = v11;
    v12 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v12, "DaemonSession.send", "request=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E1288220](v9, -1, -1);
    MEMORY[0x1E1288220](v8, -1, -1);
  }

  else
  {

    sub_1DB488DBC(v6, type metadata accessor for DaemonGetAssetRequest);
  }

  v13 = *(v0 + 1024);
  v14 = *(v0 + 1008);
  v15 = *(v0 + 1000);
  (*(v14 + 16))(*(v0 + 1016), v13, v15);
  v16 = sub_1DB50A2C0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 1048) = sub_1DB50A2B0();
  (*(v14 + 8))(v13, v15);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 1032);
  v20 = *(v0 + 912);
  *(v0 + 1056) = qword_1ECC46748;
  sub_1DB50BEB0();
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v21);
  *(v0 + 1064) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DB50EE90;
  v43 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  v24._object = 0x80000001DB52AE10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v0 + 816) = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
  sub_1DB488E1C(v20, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
  sub_1DB30C4B8(v0 + 792, v0 + 728, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1DB301D4C(v0 + 728, v0 + 336);
  *(v0 + 368) = 0;
  v26 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
  }

  v29 = *(v0 + 920);
  *(v26 + 2) = v28 + 1;
  v30 = &v26[40 * v28];
  v31 = *(v0 + 336);
  v32 = *(v0 + 352);
  v30[64] = *(v0 + 368);
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  sub_1DB30623C(v0 + 792, &qword_1ECC426B0, &qword_1DB50EEB0);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  *(v23 + 32) = v26;
  Logger.debug(_:)(v23, v21, v22);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  sub_1DB35F694(v0 + 56);
  v34 = *(v0 + 920);
  v35 = *(v0 + 912);
  v36 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
  v37 = swift_task_alloc();
  *(v0 + 1072) = v37;
  v37[2] = v34;
  v37[3] = v0 + 56;
  v37[4] = v35;
  v38 = *(MEMORY[0x1E69E8920] + 4);
  v39 = swift_task_alloc();
  *(v0 + 1080) = v39;
  *v39 = v0;
  v39[1] = sub_1DB47FDF8;
  v40 = *(v0 + 984);
  v41 = *(v0 + 960);

  return MEMORY[0x1EEE6DE38](v40, v34, v36, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB488E84, v37, v41);
}

uint64_t sub_1DB47FDF8()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v4 = *v1;
  *(*v1 + 1088) = v0;

  v5 = *(v2 + 1072);
  v6 = *(v2 + 920);

  if (v0)
  {
    v7 = sub_1DB480CDC;
  }

  else
  {
    v7 = sub_1DB47FF40;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB47FF40()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 992);
  v4 = *(v0 + 976);
  v5 = *(v0 + 960);
  sub_1DB488E90(*(v0 + 984), v3);
  sub_1DB50BEB0();
  v6 = *(v0 + 280);
  v124 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v128 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  sub_1DB30C4B8(v3, v4, &qword_1ECC46118, &qword_1DB51E788);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  sub_1DB30623C(v4, &qword_1ECC46118, &qword_1DB51E788);
  v9 = 0x6572756C696166;
  if (v5 == 1)
  {
    v9 = 0x73736563637573;
  }

  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v9;
  *(v0 + 768) = 0xE700000000000000;
  sub_1DB30C4B8(v0 + 760, v0 + 824, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1DB301D4C(v0 + 824, v0 + 416);
  *(v0 + 448) = 0;
  v10 = v128;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v128 + 2) + 1, 1, v128);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 992);
  v14 = *(v0 + 968);
  v15 = *(v0 + 960);
  *(v10 + 2) = v12 + 1;
  v16 = &v10[40 * v12];
  v17 = *(v0 + 416);
  v18 = *(v0 + 432);
  v16[64] = *(v0 + 448);
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  sub_1DB30623C(v0 + 760, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v7 + 32) = v10;
  Logger.info(_:)(v7, v6, v124);

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  sub_1DB30C4B8(v13, v14, &qword_1ECC46118, &qword_1DB51E788);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1040);
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);
    v24 = *(v0 + 984);
    v25 = *(v0 + 968);
    v118 = *(v0 + 976);
    v120 = *(v0 + 952);
    v125 = *(v0 + 944);
    v26 = *(v0 + 920);
    v27 = *(v0 + 904);
    sub_1DB30623C(*(v0 + 992), &qword_1ECC46118, &qword_1DB51E788);
    sub_1DB488F00(v25, v27);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_1DB3632DC(v26, "DaemonSession.send", 18, 2);

    v28 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 992);
    v30 = *(v0 + 968);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v34 = v30[3];
    v35 = v30[4];
    *(v0 + 16) = *v30;
    *(v0 + 24) = v32;
    *(v0 + 32) = v33;
    *(v0 + 40) = v34;
    *(v0 + 48) = v35;
    sub_1DB36562C();
    swift_willThrowTypedImpl();
    v36 = swift_allocError();
    *v37 = v31;
    v37[1] = v32;
    v37[2] = v33;
    v37[3] = v34;
    v37[4] = v35;
    sub_1DB30623C(v29, &qword_1ECC46118, &qword_1DB51E788);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v38 = *(v0 + 952);
    v39 = *(v0 + 928);
    *(v0 + 888) = v36;
    v40 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v41 = *(v0 + 1064);
      v42 = *(v0 + 1056);
      v43 = *(v0 + 952);
      v44 = *(v0 + 944);
      v45 = *(v0 + 936);
      v46 = *(v0 + 928);

      (*(v45 + 32))(v44, v43, v46);
      sub_1DB50BEB0();
      v119 = *(v0 + 328);
      v126 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v126);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1DB50EE90;
      v129 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v48._object = 0x80000001DB52AE90;
      v48._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v0 + 656) = v46;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
      v121 = *(v45 + 16);
      v121(boxed_opaque_existential_0, v44, v46);
      sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      sub_1DB301D4C(v0 + 696, v0 + 456);
      *(v0 + 488) = 0;
      v50 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1DB301BC0(0, *(v129 + 2) + 1, 1, v129);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1DB301BC0((v51 > 1), v52 + 1, 1, v50);
      }

      v53 = *(v0 + 944);
      v54 = *(v0 + 936);
      v55 = *(v0 + 928);
      *(v50 + 2) = v52 + 1;
      v56 = &v50[40 * v52];
      v57 = *(v0 + 456);
      v58 = *(v0 + 472);
      v56[64] = *(v0 + 488);
      *(v56 + 2) = v57;
      *(v56 + 3) = v58;
      sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v59);
      *(v47 + 32) = v50;
      Logger.error(_:)(v47, v126, v119);

      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      type metadata accessor for DaemonError();
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v121(v60, v53, v55);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v54 + 8))(v53, v55);
      v61 = *(v0 + 888);
    }

    else
    {

      *(v0 + 880) = v36;
      v62 = v36;
      v63 = swift_dynamicCast();
      v64 = *(v0 + 1064);
      v65 = *(v0 + 1056);
      if (v63)
      {

        v67 = *(v0 + 96);
        v66 = *(v0 + 104);
        v68 = *(v0 + 112);
        v69 = *(v0 + 120);
        v70 = *(v0 + 128);
        sub_1DB50BEB0();
        v116 = *(v0 + 248);
        v117 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 216), v117);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1DB50EE90;
        v130 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v72._countAndFlagsBits = 0xD000000000000027;
        v72._object = 0x80000001DB52AE60;
        LogMessage.StringInterpolation.appendLiteral(_:)(v72);
        *(v0 + 592) = &type metadata for DaemonResponseCodableError;
        v73 = swift_allocObject();
        *(v0 + 568) = v73;
        v73[2] = v67;
        v73[3] = v66;
        v127 = v68;
        v73[4] = v68;
        v73[5] = v69;
        v122 = v69;
        v73[6] = v70;
        sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 496) = 0u;
        *(v0 + 512) = 0u;

        sub_1DB301D4C(v0 + 600, v0 + 496);
        *(v0 + 528) = 0;
        v74 = v130;
        v75 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1DB301BC0(0, *(v130 + 2) + 1, 1, v130);
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v74 = sub_1DB301BC0((v76 > 1), v77 + 1, 1, v74);
        }

        *(v74 + 2) = v77 + 1;
        v78 = &v74[40 * v77];
        v79 = *(v0 + 496);
        v80 = *(v0 + 512);
        v78[64] = *(v0 + 528);
        *(v78 + 2) = v79;
        *(v78 + 3) = v80;
        sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
        v81._countAndFlagsBits = 0;
        v81._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v81);
        *(v71 + 32) = v74;
        Logger.error(_:)(v71, v117, v116);

        __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        v82 = sub_1DB3E3700();
        if (v82)
        {
          v83 = v82;

          type metadata accessor for DaemonError();
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
          swift_allocError();
          *v84 = v83;
        }

        else
        {
          type metadata accessor for DaemonError();
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
          swift_allocError();
          v103 = v102;
          v104 = swift_allocError();
          *v105 = v75;
          v105[1] = v66;
          v105[2] = v127;
          v105[3] = v122;
          v105[4] = v70;
          *v103 = v104;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v61 = *(v0 + 880);
      }

      else
      {

        sub_1DB50BEB0();
        v85 = *(v0 + 160);
        v86 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1((v0 + 136), v85);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1DB50EE90;
        v131 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v88._countAndFlagsBits = 0xD00000000000002FLL;
        v88._object = 0x80000001DB52AE30;
        LogMessage.StringInterpolation.appendLiteral(_:)(v88);
        swift_getErrorValue();
        v89 = *(v0 + 856);
        v90 = *(v0 + 864);
        *(v0 + 688) = v90;
        v91 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
        (*(*(v90 - 8) + 16))(v91, v89, v90);
        sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 376) = 0u;
        *(v0 + 392) = 0u;
        sub_1DB301D4C(v0 + 536, v0 + 376);
        *(v0 + 408) = 0;
        v92 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1DB301BC0(0, *(v131 + 2) + 1, 1, v131);
        }

        v94 = *(v92 + 2);
        v93 = *(v92 + 3);
        if (v94 >= v93 >> 1)
        {
          v92 = sub_1DB301BC0((v93 > 1), v94 + 1, 1, v92);
        }

        *(v92 + 2) = v94 + 1;
        v95 = &v92[40 * v94];
        v96 = *(v0 + 376);
        v97 = *(v0 + 392);
        v95[64] = *(v0 + 408);
        *(v95 + 2) = v96;
        *(v95 + 3) = v97;
        sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
        v98._countAndFlagsBits = 0;
        v98._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v98);
        *(v87 + 32) = v92;
        Logger.error(_:)(v87, v85, v86);

        __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        v100 = v99;
        v101 = v36;
        sub_1DB4F1C64(v36, v100);
        swift_willThrow();
        v61 = v36;
      }
    }

    v106 = *(v0 + 1048);
    v107 = *(v0 + 1040);
    v108 = *(v0 + 1024);
    v109 = *(v0 + 1016);
    v110 = *(v0 + 992);
    v111 = *(v0 + 984);
    v112 = *(v0 + 976);
    v113 = *(v0 + 968);
    v114 = *(v0 + 952);
    v123 = *(v0 + 944);
    sub_1DB3632DC(*(v0 + 920), "DaemonSession.send", 18, 2);

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1DB480CDC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 1088);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  *(v0 + 888) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    v9 = *(v0 + 936);
    v10 = *(v0 + 928);

    (*(v9 + 32))(v8, v7, v10);
    sub_1DB50BEB0();
    v83 = *(v0 + 328);
    v85 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v85);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB50EE90;
    v86 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v12._object = 0x80000001DB52AE90;
    v12._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 656) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v81 = *(v9 + 16);
    v81(boxed_opaque_existential_0, v8, v10);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB301D4C(v0 + 696, v0 + 456);
    *(v0 + 488) = 0;
    v14 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v86 + 2) + 1, 1, v86);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 928);
    *(v14 + 2) = v16 + 1;
    v20 = &v14[40 * v16];
    v21 = *(v0 + 456);
    v22 = *(v0 + 472);
    v20[64] = *(v0 + 488);
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v11 + 32) = v14;
    Logger.error(_:)(v11, v85, v83);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError();
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
    swift_allocError();
    v81(v24, v17, v19);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v18 + 8))(v17, v19);
    v25 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v1;
    v26 = v1;
    v27 = swift_dynamicCast();
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1056);
    if (v27)
    {

      v31 = *(v0 + 96);
      v30 = *(v0 + 104);
      v33 = *(v0 + 112);
      v32 = *(v0 + 120);
      v34 = *(v0 + 128);
      sub_1DB50BEB0();
      v80 = *(v0 + 248);
      v82 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v82);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1DB50EE90;
      v87 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v36._countAndFlagsBits = 0xD000000000000027;
      v36._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v37 = swift_allocObject();
      *(v0 + 568) = v37;
      v37[2] = v31;
      v37[3] = v30;
      v37[4] = v33;
      v37[5] = v32;
      v37[6] = v34;
      sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1DB301D4C(v0 + 600, v0 + 496);
      *(v0 + 528) = 0;
      v38 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v87 + 2) + 1, 1, v87);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = *(v0 + 496);
      v43 = *(v0 + 512);
      v41[64] = *(v0 + 528);
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v35 + 32) = v38;
      Logger.error(_:)(v35, v82, v80);

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v45 = sub_1DB3E3700();
      if (v45)
      {
        v46 = v45;

        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        *v47 = v46;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        v66 = v65;
        sub_1DB36562C();
        v67 = swift_allocError();
        *v68 = v31;
        v68[1] = v30;
        v68[2] = v33;
        v68[3] = v32;
        v68[4] = v34;
        *v66 = v67;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v25 = *(v0 + 880);
    }

    else
    {

      sub_1DB50BEB0();
      v48 = *(v0 + 160);
      v49 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v48);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1DB50EE90;
      v88 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v51._countAndFlagsBits = 0xD00000000000002FLL;
      v51._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      swift_getErrorValue();
      v52 = *(v0 + 856);
      v53 = *(v0 + 864);
      *(v0 + 688) = v53;
      v54 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v53 - 8) + 16))(v54, v52, v53);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB301D4C(v0 + 536, v0 + 376);
      *(v0 + 408) = 0;
      v55 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1DB301BC0(0, *(v88 + 2) + 1, 1, v88);
      }

      v57 = *(v55 + 2);
      v56 = *(v55 + 3);
      if (v57 >= v56 >> 1)
      {
        v55 = sub_1DB301BC0((v56 > 1), v57 + 1, 1, v55);
      }

      *(v55 + 2) = v57 + 1;
      v58 = &v55[40 * v57];
      v59 = *(v0 + 376);
      v60 = *(v0 + 392);
      v58[64] = *(v0 + 408);
      *(v58 + 2) = v59;
      *(v58 + 3) = v60;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v61);
      *(v50 + 32) = v55;
      Logger.error(_:)(v50, v48, v49);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError();
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v63 = v62;
      v64 = v1;
      sub_1DB4F1C64(v1, v63);
      swift_willThrow();
      v25 = v1;
    }
  }

  v69 = *(v0 + 1048);
  v70 = *(v0 + 1040);
  v71 = *(v0 + 1024);
  v72 = *(v0 + 1016);
  v73 = *(v0 + 992);
  v74 = *(v0 + 984);
  v75 = *(v0 + 976);
  v76 = *(v0 + 968);
  v77 = *(v0 + 952);
  v84 = *(v0 + 944);
  sub_1DB3632DC(*(v0 + 920), "DaemonSession.send", 18, 2);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_1DB4816BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[127] = v5;
  v6[126] = a5;
  v6[125] = a4;
  v6[124] = a3;
  v6[123] = a2;
  v11 = sub_1DB50A350();
  v6[128] = v11;
  v12 = *(v11 - 8);
  v6[129] = v12;
  v13 = *(v12 + 64) + 15;
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v14 = sub_1DB50A230();
  v6[132] = v14;
  v15 = *(v14 - 8);
  v6[133] = v15;
  v16 = *(v15 + 64) + 15;
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[113] = a2;
  v6[114] = a3;
  v6[115] = a4;
  v6[116] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1DB481830, v5, 0);
}

uint64_t sub_1DB481830()
{
  v51 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 992);

  sub_1DB50A220();
  v5 = sub_1DB50A250();
  v6 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v47 = *(v0 + 1080);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 1000);
    v9 = *(v0 + 992);
    v10 = *(v0 + 984);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v50 = v12;
    *v11 = 136315138;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
    MEMORY[0x1E1285C70](v8, v7);
    MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
    MEMORY[0x1E1285C70](v10, v9);

    v13 = sub_1DB3D4EE8(0, 0xE000000000000000, &v50);

    *(v11 + 4) = v13;
    v14 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v5, v6, v14, "DaemonSession.send", "request=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E1288220](v12, -1, -1);
    MEMORY[0x1E1288220](v11, -1, -1);
  }

  else
  {
    v15 = *(v0 + 1008);
    v16 = *(v0 + 992);
  }

  v17 = (v0 + 424);
  v18 = *(v0 + 1080);
  v19 = *(v0 + 1064);
  v20 = *(v0 + 1056);
  (*(v19 + 16))(*(v0 + 1072), v18, v20);
  v21 = sub_1DB50A2C0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v0 + 1088) = sub_1DB50A2B0();
  (*(v19 + 8))(v18, v20);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v48 = v0 + 184;
  *(v0 + 1096) = qword_1ECC46748;
  sub_1DB50BEB0();
  v24 = *(v0 + 128);
  v25 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), v24);
  *(v0 + 1104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DB50EE90;
  v49 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  v27._object = 0x80000001DB52AE10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v0 + 864) = &type metadata for DaemonCacheEvictRequest;
  v28 = swift_allocObject();
  *(v0 + 840) = v28;
  v29 = *(v0 + 912);
  v30 = *(v0 + 920);
  v31 = *(v0 + 928);
  v28[2] = *(v0 + 904);
  v28[3] = v29;
  v28[4] = v30;
  v28[5] = v31;
  sub_1DB30C4B8(v0 + 840, v0 + 776, &qword_1ECC426B0, &qword_1DB50EEB0);
  *v17 = 0u;
  *(v0 + 440) = 0u;

  sub_1DB301D4C(v0 + 776, v0 + 424);
  *(v0 + 456) = 0;
  v32 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1DB301BC0(0, *(v49 + 2) + 1, 1, v49);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
  }

  v35 = *(v0 + 1016);
  *(v32 + 2) = v34 + 1;
  v36 = &v32[40 * v34];
  v37 = *v17;
  v38 = *(v0 + 440);
  v36[64] = *(v0 + 456);
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  sub_1DB30623C(v0 + 840, &qword_1ECC426B0, &qword_1DB50EEB0);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  *(v26 + 32) = v32;
  Logger.debug(_:)(v26, v24, v25);

  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  sub_1DB35F694(v48);
  v40 = *(v0 + 1016);
  v41 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
  v42 = swift_task_alloc();
  *(v0 + 1112) = v42;
  v42[2] = v40;
  v42[3] = v48;
  v42[4] = v0 + 904;
  v43 = *(MEMORY[0x1E69E8920] + 4);
  v44 = swift_task_alloc();
  *(v0 + 1120) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460E8, &qword_1DB51E740);
  *v44 = v0;
  v44[1] = sub_1DB482764;

  return MEMORY[0x1EEE6DE38](v0 + 16, v40, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB488B2C, v42, v45);
}

uint64_t sub_1DB482764()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v4 = *v1;
  *(*v1 + 1128) = v0;

  v5 = *(v2 + 1112);
  v6 = *(v2 + 1016);

  if (v0)
  {
    v7 = sub_1DB483524;
  }

  else
  {
    v7 = sub_1DB4828AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB4828AC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 24);
  v103 = *(v0 + 32);
  v105 = *(v0 + 16);
  v101 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_1DB50BEB0();
  v6 = *(v0 + 168);
  v107 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v109 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = 0x6572756C696166;
  if (v5)
  {
    v9 = 0x73736563637573;
  }

  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = v9;
  *(v0 + 816) = 0xE700000000000000;
  sub_1DB30C4B8(v0 + 808, v0 + 872, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  sub_1DB301D4C(v0 + 872, v0 + 384);
  *(v0 + 416) = 0;
  v10 = v109;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1DB301BC0(0, *(v109 + 2) + 1, 1, v109);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 384);
  v15 = *(v0 + 400);
  v13[64] = *(v0 + 416);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 808, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v7 + 32) = v10;
  Logger.info(_:)(v7, v6, v107);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  if (v5)
  {
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1040);
    v22 = *(v0 + 1016);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    sub_1DB3632DC(v22, "DaemonSession.send", 18, 2);

    v23 = *(v0 + 8);
  }

  else
  {
    *(v0 + 64) = v105;
    *(v0 + 72) = v3;
    *(v0 + 80) = v103;
    *(v0 + 88) = v101;
    *(v0 + 96) = v4;
    sub_1DB36562C();

    swift_willThrowTypedImpl();
    v24 = swift_allocError();
    *v25 = v105;
    v25[1] = v3;
    v25[2] = v103;
    v25[3] = v101;
    v25[4] = v4;
    sub_1DB488B40(v105, v3, v103, v101, v4, 0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1024);
    *(v0 + 976) = v24;
    v28 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v29 = *(v0 + 1104);
      v30 = *(v0 + 1096);
      v31 = *(v0 + 1048);
      v32 = *(v0 + 1040);
      v33 = *(v0 + 1032);
      v34 = *(v0 + 1024);

      (*(v33 + 32))(v32, v31, v34);
      sub_1DB50BEB0();
      v35 = *(v0 + 328);
      v108 = *(v0 + 336);
      __swift_project_boxed_opaque_existential_1((v0 + 304), v35);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DB50EE90;
      v110 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v37._object = 0x80000001DB52AE90;
      v37._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v0 + 736) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
      v106 = *(v33 + 16);
      v106(boxed_opaque_existential_0, v32, v34);
      sub_1DB30C4B8(v0 + 712, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      sub_1DB301D4C(v0 + 744, v0 + 464);
      *(v0 + 496) = 0;
      v39 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v110 + 2) + 1, 1, v110);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      v42 = *(v0 + 1040);
      v43 = *(v0 + 1032);
      v44 = *(v0 + 1024);
      *(v39 + 2) = v41 + 1;
      v45 = &v39[40 * v41];
      v46 = *(v0 + 464);
      v47 = *(v0 + 480);
      v45[64] = *(v0 + 496);
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v36 + 32) = v39;
      Logger.error(_:)(v36, v35, v108);

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      type metadata accessor for DaemonError();
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v106(v49, v42, v44);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v43 + 8))(v42, v44);
      v50 = *(v0 + 976);
    }

    else
    {

      *(v0 + 968) = v24;
      v51 = v24;
      v52 = swift_dynamicCast();
      v53 = *(v0 + 1104);
      v54 = *(v0 + 1096);
      if (v52)
      {

        v55 = *(v0 + 224);
        v56 = *(v0 + 232);
        v58 = *(v0 + 240);
        v57 = *(v0 + 248);
        v59 = *(v0 + 256);
        sub_1DB50BEB0();
        v100 = *(v0 + 376);
        v102 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1((v0 + 344), v102);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1DB50EE90;
        v111 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v61._countAndFlagsBits = 0xD000000000000027;
        v61._object = 0x80000001DB52AE60;
        LogMessage.StringInterpolation.appendLiteral(_:)(v61);
        *(v0 + 640) = &type metadata for DaemonResponseCodableError;
        v62 = swift_allocObject();
        *(v0 + 616) = v62;
        v62[2] = v55;
        v62[3] = v56;
        v62[4] = v58;
        v62[5] = v57;
        v104 = v57;
        v62[6] = v59;
        sub_1DB30C4B8(v0 + 616, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 504) = 0u;
        *(v0 + 520) = 0u;

        sub_1DB301D4C(v0 + 648, v0 + 504);
        *(v0 + 536) = 0;
        v63 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1DB301BC0(0, *(v111 + 2) + 1, 1, v111);
        }

        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        if (v65 >= v64 >> 1)
        {
          v63 = sub_1DB301BC0((v64 > 1), v65 + 1, 1, v63);
        }

        *(v63 + 2) = v65 + 1;
        v66 = &v63[40 * v65];
        v67 = *(v0 + 504);
        v68 = *(v0 + 520);
        v66[64] = *(v0 + 536);
        *(v66 + 2) = v67;
        *(v66 + 3) = v68;
        sub_1DB30623C(v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v69);
        *(v60 + 32) = v63;
        Logger.error(_:)(v60, v102, v100);

        __swift_destroy_boxed_opaque_existential_0((v0 + 344));
        v70 = sub_1DB3E3700();
        if (v70)
        {
          v71 = v70;

          type metadata accessor for DaemonError();
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
          swift_allocError();
          *v72 = v71;
        }

        else
        {
          type metadata accessor for DaemonError();
          sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
          swift_allocError();
          v91 = v90;
          v92 = swift_allocError();
          *v93 = v55;
          v93[1] = v56;
          v93[2] = v58;
          v93[3] = v104;
          v93[4] = v59;
          *v91 = v92;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v50 = *(v0 + 968);
      }

      else
      {

        sub_1DB50BEB0();
        v73 = *(v0 + 288);
        v74 = *(v0 + 296);
        __swift_project_boxed_opaque_existential_1((v0 + 264), v73);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1DB50EE90;
        v112 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v76._countAndFlagsBits = 0xD00000000000002FLL;
        v76._object = 0x80000001DB52AE30;
        LogMessage.StringInterpolation.appendLiteral(_:)(v76);
        swift_getErrorValue();
        v77 = *(v0 + 936);
        v78 = *(v0 + 944);
        *(v0 + 704) = v78;
        v79 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
        (*(*(v78 - 8) + 16))(v79, v77, v78);
        sub_1DB30C4B8(v0 + 680, v0 + 584, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v0 + 544) = 0u;
        *(v0 + 560) = 0u;
        sub_1DB301D4C(v0 + 584, v0 + 544);
        *(v0 + 576) = 0;
        v80 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1DB301BC0(0, *(v112 + 2) + 1, 1, v112);
        }

        v82 = *(v80 + 2);
        v81 = *(v80 + 3);
        if (v82 >= v81 >> 1)
        {
          v80 = sub_1DB301BC0((v81 > 1), v82 + 1, 1, v80);
        }

        *(v80 + 2) = v82 + 1;
        v83 = &v80[40 * v82];
        v84 = *(v0 + 544);
        v85 = *(v0 + 560);
        v83[64] = *(v0 + 576);
        *(v83 + 2) = v84;
        *(v83 + 3) = v85;
        sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
        v86._countAndFlagsBits = 0;
        v86._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v86);
        *(v75 + 32) = v80;
        Logger.error(_:)(v75, v73, v74);

        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        v88 = v87;
        v89 = v24;
        sub_1DB4F1C64(v24, v88);
        swift_willThrow();
        v50 = v24;
      }
    }

    v94 = *(v0 + 1088);
    v95 = *(v0 + 1080);
    v96 = *(v0 + 1072);
    v97 = *(v0 + 1048);
    v98 = *(v0 + 1040);
    sub_1DB3632DC(*(v0 + 1016), "DaemonSession.send", 18, 2);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1DB483524()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1024);
  *(v0 + 976) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1104);
    v6 = *(v0 + 1096);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 1024);

    (*(v9 + 32))(v8, v7, v10);
    sub_1DB50BEB0();
    v11 = *(v0 + 328);
    v82 = *(v0 + 336);
    __swift_project_boxed_opaque_existential_1((v0 + 304), v11);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    v83 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001DB52AE90;
    v13._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v0 + 736) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
    v80 = *(v9 + 16);
    v80(boxed_opaque_existential_0, v8, v10);
    sub_1DB30C4B8(v0 + 712, v0 + 744, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_1DB301D4C(v0 + 744, v0 + 464);
    *(v0 + 496) = 0;
    v15 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DB301BC0(0, *(v83 + 2) + 1, 1, v83);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
    }

    v18 = *(v0 + 1040);
    v19 = *(v0 + 1032);
    v20 = *(v0 + 1024);
    *(v15 + 2) = v17 + 1;
    v21 = &v15[40 * v17];
    v22 = *(v0 + 464);
    v23 = *(v0 + 480);
    v21[64] = *(v0 + 496);
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    sub_1DB30623C(v0 + 712, &qword_1ECC426B0, &qword_1DB50EEB0);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v12 + 32) = v15;
    Logger.error(_:)(v12, v11, v82);

    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    type metadata accessor for DaemonError();
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
    swift_allocError();
    v80(v25, v18, v20);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    v26 = *(v0 + 976);
  }

  else
  {

    *(v0 + 968) = v1;
    v27 = v1;
    v28 = swift_dynamicCast();
    v29 = *(v0 + 1104);
    v30 = *(v0 + 1096);
    if (v28)
    {

      v31 = *(v0 + 224);
      v32 = *(v0 + 232);
      v33 = *(v0 + 240);
      v34 = *(v0 + 248);
      v35 = *(v0 + 256);
      sub_1DB50BEB0();
      v78 = *(v0 + 376);
      v79 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 344), v79);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DB50EE90;
      v84 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v37._countAndFlagsBits = 0xD000000000000027;
      v37._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v0 + 640) = &type metadata for DaemonResponseCodableError;
      v38 = swift_allocObject();
      *(v0 + 616) = v38;
      v38[2] = v31;
      v38[3] = v32;
      v81 = v33;
      v38[4] = v33;
      v38[5] = v34;
      v39 = v34;
      v38[6] = v35;
      sub_1DB30C4B8(v0 + 616, v0 + 648, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;

      sub_1DB301D4C(v0 + 648, v0 + 504);
      *(v0 + 536) = 0;
      v40 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1DB301BC0(0, *(v84 + 2) + 1, 1, v84);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1DB301BC0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = *(v0 + 504);
      v45 = *(v0 + 520);
      v43[64] = *(v0 + 536);
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      sub_1DB30623C(v0 + 616, &qword_1ECC426B0, &qword_1DB50EEB0);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v36 + 32) = v40;
      Logger.error(_:)(v36, v79, v78);

      __swift_destroy_boxed_opaque_existential_0((v0 + 344));
      v47 = sub_1DB3E3700();
      if (v47)
      {
        v48 = v47;

        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        *v49 = v48;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
        swift_allocError();
        v68 = v67;
        sub_1DB36562C();
        v69 = swift_allocError();
        *v70 = v31;
        v70[1] = v32;
        v70[2] = v81;
        v70[3] = v39;
        v70[4] = v35;
        *v68 = v69;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v26 = *(v0 + 968);
    }

    else
    {

      sub_1DB50BEB0();
      v50 = *(v0 + 288);
      v51 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 264), v50);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1DB50EE90;
      v85 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v53._countAndFlagsBits = 0xD00000000000002FLL;
      v53._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      swift_getErrorValue();
      v54 = *(v0 + 936);
      v55 = *(v0 + 944);
      *(v0 + 704) = v55;
      v56 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
      (*(*(v55 - 8) + 16))(v56, v54, v55);
      sub_1DB30C4B8(v0 + 680, v0 + 584, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      sub_1DB301D4C(v0 + 584, v0 + 544);
      *(v0 + 576) = 0;
      v57 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1DB301BC0(0, *(v85 + 2) + 1, 1, v85);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1DB301BC0((v58 > 1), v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v60 = &v57[40 * v59];
      v61 = *(v0 + 544);
      v62 = *(v0 + 560);
      v60[64] = *(v0 + 576);
      *(v60 + 2) = v61;
      *(v60 + 3) = v62;
      sub_1DB30623C(v0 + 680, &qword_1ECC426B0, &qword_1DB50EEB0);
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v63);
      *(v52 + 32) = v57;
      Logger.error(_:)(v52, v50, v51);

      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      type metadata accessor for DaemonError();
      sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
      swift_allocError();
      v65 = v64;
      v66 = v1;
      sub_1DB4F1C64(v1, v65);
      swift_willThrow();
      v26 = v1;
    }
  }

  v71 = *(v0 + 1088);
  v72 = *(v0 + 1080);
  v73 = *(v0 + 1072);
  v74 = *(v0 + 1048);
  v75 = *(v0 + 1040);
  sub_1DB3632DC(*(v0 + 1016), "DaemonSession.send", 18, 2);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1DB483EC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v49 = a1;
  v48 = type metadata accessor for JetPackAssetDaemonMessage(0);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v37 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v37[1] = v16 + 16;
  *(v16 + 20) = 0;
  v17 = v16;
  v18 = sub_1DB50ABA0();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_1DB30BE90(a3, &v50);
  v19 = *(v8 + 16);
  v39 = v8 + 16;
  v43 = v19;
  v20 = v47;
  v19(v11, v49, v47);
  v21 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
  v44 = v15;
  v22 = v21;
  v23 = *(v8 + 80);
  v24 = swift_allocObject();
  v41 = v9;
  v25 = v24;
  v24[2] = a2;
  v24[3] = v22;
  v40 = sub_1DB4892A8;
  v24[4] = a2;
  v24[5] = sub_1DB4892A8;
  v26 = v17;
  v24[6] = v17;
  sub_1DB2FEA0C(&v50, (v24 + 7));
  v38 = *(v8 + 32);
  v27 = v20;
  v38(v25 + ((v23 + 96) & ~v23), v11, v20);
  swift_retain_n();
  v28 = v26;
  swift_retain_n();
  v29 = sub_1DB388F14(0, 0, v44, &unk_1DB51E7A0, v25);
  v30 = a3[4];
  v44 = a3[3];
  v42 = __swift_project_boxed_opaque_existential_1(a3, v44);
  v31 = v46;
  sub_1DB488E1C(v45, v46, type metadata accessor for DaemonGetAssetRequest);
  swift_storeEnumTagMultiPayload();
  v43(v11, v49, v27);
  v32 = swift_allocObject();
  v32[2] = v40;
  v32[3] = v28;
  v32[4] = v29;
  v38(v32 + ((v23 + 40) & ~v23), v11, v27);
  v43 = *(v30 + 8);

  v45 = v29;

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  v34 = sub_1DB488D74(&qword_1ECC460F8, type metadata accessor for JetPackAssetDaemonMessage);
  v35 = sub_1DB3370CC(&qword_1ECC46128, &qword_1ECC46118, &qword_1DB51E788);
  (v43)(v31, sub_1DB489220, v32, v48, v33, v34, v35, v44, v30);
  sub_1DB488DBC(v31, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1DB484718(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t (*)(__int128 *a1), void *, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v51 = a6;
  v52 = a5;
  v50 = a4;
  v56 = a1;
  v54 = type metadata accessor for JetPackAssetDaemonMessage(0);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v49 = (v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v40 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v40[1] = v19 + 16;
  *(v19 + 20) = 0;
  v20 = sub_1DB50ABA0();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1DB30BE90(a3, &v57);
  v48 = v18;
  v46 = *(v11 + 16);
  v46(v14, v56, v55);
  v21 = sub_1DB488D74(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation);
  v22 = *(v11 + 80);
  v42 = v14;
  v23 = swift_allocObject();
  v45 = v12;
  v24 = v11;
  v25 = v23;
  v23[2] = a2;
  v23[3] = v21;
  v44 = sub_1DB3659D8;
  v23[4] = a2;
  v23[5] = sub_1DB3659D8;
  v23[6] = v19;
  sub_1DB2FEA0C(&v57, (v23 + 7));
  v43 = *(v24 + 32);
  v26 = v14;
  v27 = v55;
  v43(v25 + ((v22 + 96) & ~v22), v26, v55);
  swift_retain_n();
  swift_retain_n();
  v28 = sub_1DB388F14(0, 0, v48, &unk_1DB51E760, v25);
  v48 = a3[3];
  v41 = a3[4];
  v47 = __swift_project_boxed_opaque_existential_1(a3, v48);
  v29 = v49;
  v30 = v52;
  *v49 = v50;
  v29[1] = v30;
  v31 = v53;
  v29[2] = v51;
  v29[3] = v31;
  swift_storeEnumTagMultiPayload();
  v32 = v42;
  v46(v42, v56, v27);
  v33 = (v22 + 40) & ~v22;
  v34 = swift_allocObject();
  v34[2] = v44;
  v34[3] = v19;
  v34[4] = v28;
  v43(v34 + v33, v32, v27);
  v35 = v41;
  v50 = *(v41 + 8);
  v51 = v19;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460E8, &qword_1DB51E740);
  v37 = sub_1DB488D74(&qword_1ECC460F8, type metadata accessor for JetPackAssetDaemonMessage);
  v38 = sub_1DB3370CC(&qword_1ECC46100, &qword_1ECC460E8, &qword_1DB51E740);
  v50(v29, sub_1DB488CA0, v34, v54, v36, v37, v38, v48, v35);
  sub_1DB488DBC(v29, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1DB484FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[62] = v10;
  v11 = *(v10 - 8);
  v8[63] = v11;
  v12 = *(v11 + 64) + 15;
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB485078, a4, 0);
}

uint64_t sub_1DB485078()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB301D4C(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 512);
  *(v7 + 2) = v9 + 1;
  v11 = &v7[40 * v9];
  v12 = *(v0 + 176);
  v13 = *(v0 + 192);
  v11[64] = *(v0 + 208);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x73646E6F63657320;
  v14._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = sub_1DB50BE50();
  v17 = v16;
  sub_1DB50BC50();
  v18 = swift_task_alloc();
  *(v0 + 544) = v18;
  *v18 = v0;
  v18[1] = sub_1DB48536C;
  v19 = *(v0 + 512);

  return sub_1DB487C44(v15, v17, 0, 0, 1);
}

uint64_t sub_1DB48536C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 512);
  v5 = *(*v1 + 504);
  v6 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 552) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 456);
  if (v0)
  {
    v9 = sub_1DB4892A4;
  }

  else
  {
    v9 = sub_1DB4854F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DB4854F4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DB50BEB0();
  v4 = *(v0 + 120);
  v32 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v34 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB301D4C(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v7 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 472);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v12[64] = *(v0 + 248);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._object = 0x80000001DB52B140;
  v15._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v5 + 32) = v7;
  Logger.error(_:)(v5, v4, v32);

  v16 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v10(v16))
  {
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 480);
    v33 = *(v0 + 488);
    sub_1DB50BEB0();
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(v0 + 416, v24 + 32);
    *(v24 + 64) = 0;
    *(v23 + 32) = v24;
    Logger.info(_:)(v23, v21, v22);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v25 = v20[3];
    v26 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v25);
    (*(v26 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v25, v26);
    type metadata accessor for DaemonError();
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
    v27 = swift_allocError();
    *v28 = v17;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AAF0();
  }

  v29 = *(v0 + 512);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DB485918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[62] = v10;
  v11 = *(v10 - 8);
  v8[63] = v11;
  v12 = *(v11 + 64) + 15;
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4859E4, a4, 0);
}

uint64_t sub_1DB4859E4()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v21 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB301D4C(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 512);
  *(v7 + 2) = v9 + 1;
  v11 = &v7[40 * v9];
  v12 = *(v0 + 176);
  v13 = *(v0 + 192);
  v11[64] = *(v0 + 208);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0x73646E6F63657320;
  v14._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v15 = sub_1DB50BE50();
  v17 = v16;
  sub_1DB50BC50();
  v18 = swift_task_alloc();
  *(v0 + 544) = v18;
  *v18 = v0;
  v18[1] = sub_1DB485CD8;
  v19 = *(v0 + 512);

  return sub_1DB487C44(v15, v17, 0, 0, 1);
}

uint64_t sub_1DB485CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 512);
  v5 = *(*v1 + 504);
  v6 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 552) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 456);
  if (v0)
  {
    v9 = sub_1DB486284;
  }

  else
  {
    v9 = sub_1DB485E60;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DB485E60()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DB50BEB0();
  v4 = *(v0 + 120);
  v32 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v34 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB301D4C(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v7 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 472);
  *(v7 + 2) = v9 + 1;
  v12 = &v7[40 * v9];
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v12[64] = *(v0 + 248);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._object = 0x80000001DB52B140;
  v15._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v5 + 32) = v7;
  Logger.error(_:)(v5, v4, v32);

  v16 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v10(v16))
  {
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 480);
    v33 = *(v0 + 488);
    sub_1DB50BEB0();
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(v0 + 416, v24 + 32);
    *(v24 + 64) = 0;
    *(v23 + 32) = v24;
    Logger.info(_:)(v23, v21, v22);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v25 = v20[3];
    v26 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v25);
    (*(v26 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v25, v26);
    type metadata accessor for DaemonError();
    sub_1DB488D74(&qword_1ECC43900, type metadata accessor for DaemonError);
    v27 = swift_allocError();
    *v28 = v17;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
    sub_1DB50AAF0();
  }

  v29 = *(v0 + 512);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DB486284()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  sub_1DB50BEB0();
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001DB52B0C0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB301D4C((v0 + 40), v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.debug(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v8 = v0[64];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB4863E8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v41[1] = a4;
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41[0] = v41 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46130, &qword_1DB51E7A8);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v41 - v11);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v13 = v58;
  v14 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v15 = swift_allocObject();
  v48 = xmmword_1DB50EE90;
  *(v15 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v16 = swift_allocObject();
  *(v16 + 16) = v48;
  *(&v51 + 1) = MEMORY[0x1E69E6158];
  *&v50 = 0xD00000000000002DLL;
  *(&v50 + 1) = 0x80000001DB52AFE0;
  *(v16 + 48) = 0u;
  *(v16 + 32) = 0u;
  sub_1DB301D4C(&v50, v16 + 32);
  *(v16 + 64) = 0;
  *(v15 + 32) = v16;
  Logger.debug(_:)(v15, v13, v14);

  v17 = __swift_destroy_boxed_opaque_existential_0(v57);
  if ((v47(v17) & 1) == 0)
  {
    sub_1DB50BEB0();
    v19 = v58;
    v20 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v21 = swift_allocObject();
    *(v21 + 16) = v48;
    v22 = swift_allocObject();
    *(v22 + 16) = v48;
    *(&v51 + 1) = MEMORY[0x1E69E6158];
    *&v50 = 0xD000000000000044;
    *(&v50 + 1) = 0x80000001DB52B010;
    *(v22 + 48) = 0u;
    *(v22 + 32) = 0u;
    sub_1DB301D4C(&v50, v22 + 32);
    *(v22 + 64) = 0;
    *(v21 + 32) = v22;
    Logger.debug(_:)(v21, v19, v20);
LABEL_14:

    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  sub_1DB50AC60();
  v18 = v45;
  sub_1DB30C4B8(v45, v12, &qword_1ECC46130, &qword_1DB51E7A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57[0] = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AAF0();
  }

  else
  {
    sub_1DB488E90(v12, v41[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790);
    sub_1DB50AB00();
  }

  v23 = v18;
  v24 = v42;
  sub_1DB30C4B8(v23, v42, &qword_1ECC46130, &qword_1DB51E7A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_1DB50BEB0();
    v26 = v58;
    v27 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v28 = swift_allocObject();
    *(v28 + 16) = v48;
    v56 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v29._object = 0x80000001DB52B060;
    v29._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    swift_getErrorValue();
    v30 = v53;
    v31 = v54;
    v55[3] = v54;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v30, v31);
    sub_1DB30C4B8(v55, v49, &qword_1ECC426B0, &qword_1DB50EEB0);
    v50 = 0u;
    v51 = 0u;
    sub_1DB301D4C(v49, &v50);
    v52 = 0;
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
      v56 = v33;
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[40 * v35];
    v37 = v50;
    v38 = v51;
    v36[64] = v52;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v56 = v33;
    sub_1DB30623C(v55, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    *(v28 + 32) = v56;
    Logger.error(_:)(v28, v26, v27);

    goto LABEL_14;
  }

  return sub_1DB30623C(v24, &qword_1ECC46130, &qword_1DB51E7A8);
}

uint64_t sub_1DB486A58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v34 = *a1;
  v3 = *(a1 + 16);
  v32 = v3;
  v33 = *(a1 + 8);
  v30 = *(a1 + 32);
  v31 = *(a1 + 24);
  v29 = *(a1 + 40);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = v37;
  v5 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  *(&v42 + 1) = MEMORY[0x1E69E6158];
  *&v41 = 0xD00000000000002DLL;
  *(&v41 + 1) = 0x80000001DB52AFE0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB301D4C(&v41, v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.debug(_:)(v6, v4, v5);

  v8 = __swift_destroy_boxed_opaque_existential_0(v36);
  if ((a2(v8) & 1) == 0)
  {
    sub_1DB50BEB0();
    v24 = v37;
    v25 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DB50EE90;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DB50EE90;
    *(&v42 + 1) = MEMORY[0x1E69E6158];
    *&v41 = 0xD000000000000044;
    *(&v41 + 1) = 0x80000001DB52B010;
    *(v27 + 48) = 0u;
    *(v27 + 32) = 0u;
    sub_1DB301D4C(&v41, v27 + 32);
    *(v27 + 64) = 0;
    *(v26 + 32) = v27;
    Logger.debug(_:)(v26, v24, v25);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

  sub_1DB50AC60();
  if (*(a1 + 41))
  {
    v36[0] = v34;
    v9 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
    sub_1DB50AAF0();
    sub_1DB50BEB0();
    v10 = v37;
    v11 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    v47 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001DB52B060;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    swift_getErrorValue();
    v14 = v44;
    v15 = v45;
    v46[3] = v45;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v14, v15);
    sub_1DB30C4B8(v46, v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    v41 = 0u;
    v42 = 0u;
    sub_1DB301D4C(v40, &v41);
    v43 = 0;
    v17 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v47 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v41;
    v22 = v42;
    v20[64] = v43;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v47 = v17;
    sub_1DB30623C(v46, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v12 + 32) = v47;
    Logger.error(_:)(v12, v10, v11);
    goto LABEL_11;
  }

  v36[0] = v34;
  v36[1] = v33;
  v36[2] = v32;
  v37 = v31;
  v38 = v30;
  v39 = v29 & 1;
  sub_1DB488D30(v34, v33, v32, v31, v30, v29 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748);
  return sub_1DB50AB00();
}

uint64_t sub_1DB486F4C()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1ECC460D0);
  __swift_project_value_buffer(v0, qword_1ECC460D0);
  return sub_1DB50A260();
}

uint64_t sub_1DB486FD0(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v3 = *(*(type metadata accessor for DaemonGetAssetResponse(0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v4 = *(*(type metadata accessor for DaemonGetAssetRequest(0) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v5 = sub_1DB50AF80();
  v2[34] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v7 = *(*(sub_1DB50A440() - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v8 = sub_1DB50AFA0();
  v2[37] = v8;
  v9 = *(v8 - 8);
  v2[38] = v9;
  v10 = *(v9 + 64) + 15;
  v2[39] = swift_task_alloc();
  v11 = sub_1DB50A270();
  v2[40] = v11;
  v12 = *(v11 - 8);
  v2[41] = v12;
  v13 = *(v12 + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4871A0, 0, 0);
}

uint64_t sub_1DB4871A0()
{
  if (qword_1ECC42150 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v34 = *(v0 + 296);
  v35 = *(v0 + 288);
  v6 = *(v0 + 272);
  v36 = *(v0 + 248);
  v37 = *(v0 + 264);
  v7 = __swift_project_value_buffer(v3, qword_1ECC460D0);
  v8 = *(v2 + 16);
  v8(v1, v7, v3);
  v9 = type metadata accessor for DaemonSessionImplementation();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v0 + 344) = v12;
  swift_defaultActor_initialize();
  v13 = v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v12[16] = 0xD00000000000001BLL;
  v12[17] = 0x80000001DB52FA60;
  v8(v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter, v1, v3);
  v12[14] = 0x100000;
  v12[15] = 0x4046800000000000;
  sub_1DB357BD4();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v34);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  sub_1DB488D74(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  v14 = sub_1DB50AFD0();
  (*(v2 + 8))(v1, v3);
  *(v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v14;
  v15 = (v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v15 = 0;
  v15[1] = 0;
  sub_1DB488E1C(v36, v37, type metadata accessor for URLJetPackAssetRequest);
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 248);
  *(v0 + 352) = qword_1EE30C918;
  sub_1DB50BEB0();
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DB50EE90;
  v38 = sub_1DB301BC0(0, 55, 0, MEMORY[0x1E69E7CC0]);
  v20._countAndFlagsBits = 0xD000000000000036;
  v20._object = 0x80000001DB52FB30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v21 = sub_1DB509CA0();
  *(v0 + 160) = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v16, v21);
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1DB301D4C(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v23 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = *(v0 + 96);
  v28 = *(v0 + 112);
  v26[64] = *(v0 + 128);
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v19 + 32) = v23;
  Logger.info(_:)(v19, v18, v17);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v30 = swift_task_alloc();
  *(v0 + 368) = v30;
  *v30 = v0;
  v30[1] = sub_1DB487700;
  v31 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_1DB47ED04(v31, v32);
}

uint64_t sub_1DB487700()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1DB487B78;
  }

  else
  {
    v3 = sub_1DB487814;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB487814()
{
  v1 = v0[44];
  v2 = v0[45];
  v29 = v0[43];
  v30 = v0[42];
  v31 = v0[39];
  v32 = v0[36];
  v33 = v0[35];
  v3 = v0[32];
  v36 = v0[33];
  v34 = v0[30];
  sub_1DB50BEB0();
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1DB50EE90;
  v0[28] = v8;
  v0[25] = 0xD00000000000002FLL;
  v0[26] = 0x80000001DB52FB70;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1DB301D4C((v0 + 25), v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  Logger.info(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v25 = *(v3 + 8);
  v26 = *v3;
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = *(v3 + 32);
  v11 = *(v3 + 40);
  v13 = *(v3 + 48);
  v28 = type metadata accessor for XPCJetAsset();
  v14 = (v3 + v28[7]);
  v15 = v14[1];
  v35 = *v14;
  v34[3] = &type metadata for JetPackSandboxExtensionFileStreamSource;
  v34[4] = &protocol witness table for JetPackSandboxExtensionFileStreamSource;
  v16 = swift_allocObject();
  *v34 = v16;
  *(v16 + 40) = &type metadata for JetPackAssetDaemonClient;
  *(v16 + 48) = &off_1F56FDE60;
  *(v16 + 56) = v26;
  *(v16 + 64) = v25;
  *(v16 + 72) = v9;
  *(v16 + 80) = v10;
  *(v16 + 88) = v12;
  *(v16 + 96) = v11;
  *(v16 + 104) = v13;
  v27 = v15;
  swift_bridgeObjectRetain_n();

  sub_1DB301E24(v9, v10, v12, v11, v13);

  *(v16 + 112) = v35;
  *(v16 + 120) = v15;
  sub_1DB488DBC(v36, type metadata accessor for DaemonGetAssetRequest);
  v17 = v28[5];
  v18 = type metadata accessor for JetPackAsset(0);
  sub_1DB488E1C(v3 + v17, v34 + v18[5], type metadata accessor for JetPackAsset.Metadata);
  v19 = v3 + v28[6];
  LODWORD(v17) = *v19;
  LOBYTE(v15) = *(v3 + v28[8]);
  LOBYTE(v9) = *(v19 + 4);
  LOBYTE(v10) = *(v3 + v28[9]);
  LOBYTE(v12) = *(v3 + v28[10]);
  sub_1DB488DBC(v3, type metadata accessor for DaemonGetAssetResponse);
  v20 = v34 + v18[6];
  *v20 = v17;
  v20[4] = v9;
  v21 = (v34 + v18[7]);
  *v21 = v35;
  v21[1] = v27;
  *(v34 + v18[8]) = v15;
  *(v34 + v18[9]) = v10;
  *(v34 + v18[10]) = v12;
  v22 = (v34 + v18[11]);
  *v22 = 0;
  v22[1] = 0;

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DB487B78()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[32];
  v6 = v0[33];

  sub_1DB488DBC(v6, type metadata accessor for DaemonGetAssetRequest);

  v8 = v0[1];
  v9 = v0[47];

  return v8();
}

uint64_t sub_1DB487C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DB50B4E0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DB487D44, 0, 0);
}

uint64_t sub_1DB487D44()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1DB50B4F0();
  v7 = sub_1DB488D74(&qword_1ECC46108, MEMORY[0x1E69E8820]);
  sub_1DB50BC30();
  sub_1DB488D74(&qword_1ECC46110, MEMORY[0x1E69E87E8]);
  sub_1DB50B500();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DB487ED4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1DB487ED4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB488090, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1DB488090()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1DB4880FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v5 = sub_1DB50AF80();
  v4[38] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v7 = *(*(sub_1DB50A440() - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v8 = sub_1DB50AFA0();
  v4[41] = v8;
  v9 = *(v8 - 8);
  v4[42] = v9;
  v10 = *(v9 + 64) + 15;
  v4[43] = swift_task_alloc();
  v11 = sub_1DB50A270();
  v4[44] = v11;
  v12 = *(v11 - 8);
  v4[45] = v12;
  v13 = *(v12 + 64) + 15;
  v4[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB488278, 0, 0);
}

uint64_t sub_1DB488278()
{
  if (qword_1ECC42150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v44 = *(v0 + 328);
  v45 = *(v0 + 320);
  v6 = *(v0 + 304);
  v48 = *(v0 + 296);
  v46 = *(v0 + 312);
  v47 = *(v0 + 280);
  v7 = __swift_project_value_buffer(v3, qword_1ECC460D0);
  v8 = *(v1 + 16);
  v8(v2, v7, v3);
  v9 = type metadata accessor for DaemonSessionImplementation();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v0 + 376) = v12;
  swift_defaultActor_initialize();
  v13 = v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v12[16] = 0xD00000000000001BLL;
  v12[17] = 0x80000001DB52FA60;
  v8(v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter, v2, v3);
  v12[14] = 0x100000;
  v12[15] = 0x4046800000000000;
  sub_1DB357BD4();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8098], v44);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *(v0 + 264) = MEMORY[0x1E69E7CC0];
  sub_1DB488D74(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  v14 = sub_1DB50AFD0();
  (*(v1 + 8))(v2, v3);
  *(v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v14;
  v15 = (v12 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  *v15 = 0;
  v15[1] = 0;
  v16 = qword_1EE30C928;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  sub_1DB50BEB0();
  v19 = *(v0 + 40);
  v49 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 67, 0, MEMORY[0x1E69E7CC0]);
  v21._countAndFlagsBits = 0xD000000000000034;
  v21._object = 0x80000001DB52FAB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v18;
  *(v0 + 144) = v17;
  sub_1DB30C4B8(v0 + 136, v0 + 168, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 56);
  *(v0 + 88) = 0;
  v23 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v50 + 2) + 1, 1, v50);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
  }

  v26 = *(v0 + 288);
  v27 = *(v0 + 296);
  *(v23 + 2) = v25 + 1;
  v28 = &v23[40 * v25];
  v29 = *(v0 + 56);
  v30 = *(v0 + 72);
  v28[64] = *(v0 + 88);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0x4E656C6966202C20;
  v31._object = 0xED0000203A656D61;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  *(v0 + 224) = v22;
  *(v0 + 200) = v26;
  *(v0 + 208) = v27;
  sub_1DB30C4B8(v0 + 200, v0 + 232, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1DB301D4C(v0 + 232, v0 + 96);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v33 = *(v23 + 2);
  v32 = *(v23 + 3);
  if (v33 >= v32 >> 1)
  {
    v23 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v23);
  }

  *(v23 + 2) = v33 + 1;
  v34 = &v23[40 * v33];
  v35 = *(v0 + 96);
  v36 = *(v0 + 112);
  v34[64] = *(v0 + 128);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  sub_1DB30623C(v0 + 200, &qword_1ECC426B0, &qword_1DB50EEB0);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v20 + 32) = v23;
  Logger.info(_:)(v20, v19, v49);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v38 = swift_task_alloc();
  *(v0 + 384) = v38;
  *v38 = v0;
  v38[1] = sub_1DB4888BC;
  v39 = *(v0 + 288);
  v40 = *(v0 + 296);
  v41 = *(v0 + 272);
  v42 = *(v0 + 280);

  return sub_1DB4816BC(sub_1DB4816BC, v41, v42, v39, v40);
}

uint64_t sub_1DB4888BC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_1DB488A78;
  }

  else
  {
    v5 = *(v2 + 296);
    v6 = *(v2 + 280);

    v4 = sub_1DB4889E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4889E4()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB488A78()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[37];
  v7 = v0[35];

  v8 = v0[1];
  v9 = v0[49];

  return v8();
}

uint64_t sub_1DB488B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DB488B84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB306AF4;

  return sub_1DB485918(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1DB488CA0(__int128 *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC460F0, &unk_1DB51E748) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = a1[1];
  v9 = *a1;
  v10[0] = v7;
  *(v10 + 10) = *(a1 + 26);
  return sub_1DB486A58(&v9, v4);
}

uint64_t sub_1DB488D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DB488D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB488DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB488E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB488E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46118, &qword_1DB51E788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB488F00(uint64_t a1, uint64_t a2)
{
  AssetResponse = type metadata accessor for DaemonGetAssetResponse(0);
  (*(*(AssetResponse - 8) + 32))(a2, a1, AssetResponse);
  return a2;
}

uint64_t objectdestroy_15Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 96) & ~v5;
  v7 = *(v4 + 64);
  v8 = v2[2];
  swift_unknownObjectRelease();
  v9 = v2[4];

  v10 = v2[6];

  __swift_destroy_boxed_opaque_existential_0(v2 + 7);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DB48903C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB484FAC(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t objectdestroy_19Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DB489220(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46120, &qword_1DB51E790) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1DB4863E8(a1, v4, v5, v6, v7);
}

uint64_t sub_1DB4892AC()
{
  if (qword_1EE30C910 != -1)
  {
    swift_once();
  }

  return sub_1DB50BEB0();
}

uint64_t static Sandbox.initialize(profileName:extraParameters:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30C938 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30C958;
  v5 = unk_1EE30C960;
  __swift_project_boxed_opaque_existential_1(qword_1EE30C940, qword_1EE30C958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v22 = sub_1DB301BC0(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52FBC0;
  v7._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v21[3] = MEMORY[0x1E69E6158];
  v21[0] = a1;
  v21[1] = a2;
  sub_1DB301CDC(v21, v17);
  v18 = 0u;
  v19 = 0u;

  sub_1DB301D4C(v17, &v18);
  v20 = 0;
  v8 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v22 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v18;
  v13 = v19;
  v11[64] = v20;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v22 = v8;
  sub_1DB301DBC(v21);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v6 + 32) = v22;
  Logger.info(_:)(v6, v4, v5);

  sub_1DB50A6F0();
  v15 = _set_user_dir_suffix();

  if (!v15)
  {
    sub_1DB489728(0xD00000000000001ELL, 0x80000001DB52FBE0);
  }

  return result;
}

void sub_1DB489554(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30C938 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30C958;
  v5 = unk_1EE30C960;
  __swift_project_boxed_opaque_existential_1(qword_1EE30C940, qword_1EE30C958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v19[3] = MEMORY[0x1E69E6158];
  v19[0] = a1;
  v19[1] = a2;
  sub_1DB301CDC(v19, v15);
  v16 = 0u;
  v17 = 0u;

  sub_1DB301D4C(v15, &v16);
  v18 = 0;
  v8 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
    v20 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v16;
  v13 = v17;
  v11[64] = v18;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v20 = v8;
  sub_1DB301DBC(v19);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v6 + 32) = v20;

  Logger.error(_:)(v6, v4, v5);

  exit(1);
}

void sub_1DB489728(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  MEMORY[0x1E1285C70](a1, a2);
  v4 = MEMORY[0x1E1285C70](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1E1285870](v4);
  v5 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v5);

  sub_1DB489554(0x6F6E20646C756F43, 0xEA00000000002074);
}

uint64_t SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6158];
  v31 = 5459817;
  v32 = 0xE300000000000000;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(&v31, 29551, 0xE200000000000000, v4, v5);
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v1)
  {
    v7 = JEGestaltGetDeviceClass();
    v8 = sub_1DB50A650();
    v10 = v9;

    v33 = v3;
    v31 = v8;
    v32 = v10;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
    (*(v12 + 16))(&v31, 0x6572617764726168, 0xEE00796C696D6146, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v13 = JEGestaltGetProductType();
    v14 = sub_1DB50A650();
    v16 = v15;

    v33 = v3;
    v31 = v14;
    v32 = v16;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(&v31, 0x6572617764726168, 0xED00006C65646F4DLL, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v19 = JEGestaltGetBuildVersion();
    v20 = sub_1DB50A650();
    v22 = v21;

    v33 = v3;
    v31 = v20;
    v32 = v22;
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 16))(&v31, 0x4E646C697542736FLL, 0xED00007265626D75, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    v25 = JEGestaltGetSystemVersion();
    v26 = sub_1DB50A650();
    v28 = v27;

    v33 = v3;
    v31 = v26;
    v32 = v28;
    v29 = *(a1 + 24);
    v30 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&v31, 0x6F6973726556736FLL, 0xE90000000000006ELL, v29, v30);
    return __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  return result;
}

uint64_t sub_1DB489B34(uint64_t a1)
{
  v2 = sub_1DB489CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB489B70(uint64_t a1)
{
  v2 = sub_1DB489CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NilState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46138, &qword_1DB51E800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB489CC0();
  sub_1DB50BE40();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DB489CC0()
{
  result = qword_1ECC46140;
  if (!qword_1ECC46140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46140);
  }

  return result;
}

unint64_t sub_1DB489D3C(uint64_t a1)
{
  result = sub_1DB489D64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB489D64()
{
  result = qword_1ECC46148;
  if (!qword_1ECC46148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46148);
  }

  return result;
}

uint64_t sub_1DB489DB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46138, &qword_1DB51E800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB489CC0();
  sub_1DB50BE40();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DB489F04()
{
  result = qword_1ECC46150;
  if (!qword_1ECC46150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46150);
  }

  return result;
}

unint64_t sub_1DB489F5C()
{
  result = qword_1ECC46158;
  if (!qword_1ECC46158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46158);
  }

  return result;
}

uint64_t XPCReceivedMessage.bundleIdentifier.getter()
{
  *v10.val = sub_1DB50A360();
  *&v10.val[2] = v0;
  v10.val[4] = v1;
  v10.val[5] = v2;
  v10.val[6] = v3;
  v10.val[7] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = SecTaskCopySigningIdentifier(v5, 0);
  if (!v7)
  {
    v8 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_8;
  }

  *v10.val = 0;
  *&v10.val[2] = 0;
  sub_1DB50A640();

  if (*&v10.val[2])
  {
    return *v10.val;
  }

LABEL_9:
  type metadata accessor for DaemonError();
  sub_1DB48A0BC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_1DB48A0BC()
{
  result = qword_1ECC43900;
  if (!qword_1ECC43900)
  {
    type metadata accessor for DaemonError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43900);
  }

  return result;
}

uint64_t PreferenceMigrator.renaming<A>(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *v3;
  v14 = *a1;
  v15 = v5;
  v18[0] = v6;
  v18[1] = v7;
  sub_1DB36B280(&v14, v18, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DB304064(0, v8[2] + 1, 1, v8);
    *a3 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DB304064((v10 > 1), v11 + 1, 1, v8);
    *a3 = v8;
  }

  v14 = v19[0];
  v15 = v19[1];
  v16 = v19[2];
  v17 = v19[3];
  v12 = type metadata accessor for RenamePreferenceMigrationRule();
  sub_1DB317E8C(v11, &v14, a3, v12, &off_1F56F3EE0);
  *a3 = v8;
}

uint64_t PreferenceMigrator.mapping<A, B>(_:to:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *v5;
  v16 = *a1;
  v17 = v7;
  v21[0] = v8;
  v21[1] = v9;
  sub_1DB36AD8C(&v16, v21, a3, a4, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DB304064(0, v10[2] + 1, 1, v10);
    *a5 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DB304064((v12 > 1), v13 + 1, 1, v10);
    *a5 = v10;
  }

  v16 = v22[0];
  v17 = v22[1];
  v18 = v22[2];
  v19 = v23;
  v20 = v24;
  v14 = type metadata accessor for MapPreferenceMigrationRule();
  sub_1DB317E8C(v13, &v16, a5, v14, &off_1F56F3E78);
  *a5 = v10;
}

uint64_t PreferenceMigrator.removing(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_1DB30BE90(a1, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB304064(0, v4[2] + 1, 1, v4);
    *a2 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB304064((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  v10 = &type metadata for RemovePreferenceMigrationRule;
  v11 = &off_1F56F3D68;
  *&v9 = swift_allocObject();
  sub_1DB48A9F0(v12, v9 + 16);
  v4[2] = v7 + 1;
  sub_1DB2FEA0C(&v9, &v4[5 * v7 + 4]);
  *a2 = v4;
  return sub_1DB48AA4C(v12);
}

uint64_t PreferenceMigrator.setting<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a1;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SetPreferenceMigrationRule();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v27 - v18);
  v20 = *a2;
  v21 = a2[1];
  v22 = *v27;
  v29[0] = v20;
  v29[1] = v21;
  (*(v7 + 16))(v10, v28, a3, v17);
  sub_1DB36A510(v29, v10, a3, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1DB304064(0, v22[2] + 1, 1, v22);
    *a4 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1DB304064((v24 > 1), v25 + 1, 1, v22);
    *a4 = v22;
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1DB317E8C(v25, v15, a4, v11, &off_1F56F3CD8);
  *a4 = v22;
  return (*(v12 + 8))(v19, v11);
}

uint64_t PreferenceMigrator.run(from:to:toleratingErrors:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v29 = a4;
  v7 = v6;
  v9 = result;
  v10 = *v5;
  if (a5)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1DB30BE90(v12, v26);
        v15 = v27;
        v14 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v14 + 8))(v9, a2, a3, v29, v15, v14);
        if (v7)
        {
          __swift_destroy_boxed_opaque_existential_0(v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1DB302A34(0, v13[2] + 1, 1, v13);
          }

          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            v13 = sub_1DB302A34((v16 > 1), v17 + 1, 1, v13);
          }

          v13[2] = v17 + 1;
          v13[v17 + 4] = v7;
          v7 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (v13[2])
    {
      sub_1DB32E3B0();
      swift_allocError();
      v23 = v22;
      if (!v13[2])
      {
        sub_1DB3CCA10("JetCore/CompoundError.swift", 0x1BuLL, 2, 0x15uLL);
      }

      *v23 = v13;
      return swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    v24 = *(v10 + 16);
    if (v24)
    {
      v18 = 0;
      v19 = v10 + 32;
      while (v18 < *(v10 + 16))
      {
        sub_1DB30BE90(v19, v26);
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v21 + 8))(v9, a2, a3, v29, v20, v21);
        if (v6)
        {
          return __swift_destroy_boxed_opaque_existential_0(v26);
        }

        ++v18;
        result = __swift_destroy_boxed_opaque_existential_0(v26);
        v19 += 40;
        if (v24 == v18)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DB48AAB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  if (*(v7 + 16))
  {
    v8 = sub_1DB306160(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 24 * v8;
      v16 = *v10;
      v17 = *(v10 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC446D0, &qword_1DB515A20);
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v18;
      }
    }
  }

  if (v5)
  {
    v11 = (*(v6 + 16))(v5, v6);
    if (*(v11 + 16) && (v12 = sub_1DB306160(a1, a2), (v13 & 1) != 0))
    {
      v15 = *(*(v11 + 56) + 16 * v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DA0, &qword_1DB50FA80);
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t AnyIntentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  result = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
  a3[2] = result;
  return result;
}

unint64_t AnyIntentTypes.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
  a1[2] = result;
  return result;
}

unint64_t AnyIntentTypes.register<A>(_:forKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + 16);
  result = sub_1DB31E24C(a1, a5, a6, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v15;
  return result;
}

unint64_t AnyIntentTypes.registering<A>(_:forKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = *(v6 + 16);
  *a6 = *v6;
  *(a6 + 16) = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1DB31E24C(a1, a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a6 + 16) = v13;
  return result;
}

uint64_t AnyIntentTypes.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(v14, a2, a4);
  v8 = v14[0];
  v9 = v14[1];
  v10 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 16);
  sub_1DB31E24C(a1, a3, a4, v8, v9, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v13;
  return result;
}

uint64_t AnyIntentTypes.registering<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 16);
  *a5 = *v5;
  *(a5 + 16) = v10;

  return AnyIntentTypes.register<A>(_:)(a1, a2, a3, a4);
}

double sub_1DB48AF28()
{
  v0 = sub_1DB48C470();
  type metadata accessor for LocalPreferences();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  qword_1EE30E8D8 = v1;
  return result;
}

uint64_t static LocalPreferences.currentApplication.getter()
{
  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:)()
{
  v0 = swift_allocObject();
  v1 = sub_1DB50A620();

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return v0;
}

uint64_t LocalPreferences.init(bundleIdentifier:)()
{
  v1 = sub_1DB50A620();

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return v0;
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:cacheEnabled:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1DB50A620();

  v5 = swift_allocObject();
  sub_1DB48B0E8(v4, a3);
  return v5;
}

uint64_t sub_1DB48B0E8(void *a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
    v5 = a1;
    *(v2 + 32) = [v4 init];
    sub_1DB50A650();
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1DB50A620();

    v8 = [v6 initWithSuiteName_];

    *(v2 + 40) = v8;
    *(v2 + 48) = [objc_allocWithZone(type metadata accessor for LocalPreferences.UserDefaultsObserver()) init];
    v9 = sub_1DB313BA4(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46168, &qword_1DB51EA88);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;

    *(v10 + 16) = v9;

    v11 = *(v2 + 48);
    *(v2 + 56) = v10;
    if (v11)
    {
      swift_weakAssign();
    }
  }

  else
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
  }

  return v2;
}

void LocalPreferences.deinit()
{
  v1 = *(v0 + 56);
  if (v1 && (v2 = *(v0 + 40)) != 0 && (v3 = *(v0 + 48)) != 0)
  {
    v4 = *(v0 + 56);

    v19 = v2;
    v5 = v3;
    os_unfair_lock_lock((v1 + 24));
    v6 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
      v12 = v11;
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(v6 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_1DB50A620();

      [v19 removeObserver:v5 forKeyPath:v17 context:0];
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        goto LABEL_15;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v18 = *(v0 + 56);
  }
}

uint64_t LocalPreferences.__deallocating_deinit()
{
  LocalPreferences.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

BOOL LocalPreferences.isValueForced(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1DB50A620();

  IsForced = CFPreferencesAppValueIsForced(v4, *(v1 + 16));

  return IsForced != 0;
}

uint64_t sub_1DB48B4AC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_1DB50A620();

  return v2;
}

double LocalPreferences.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 8);
  v7(v5, v6);
  if (*(v2 + 24) == 1 && (v8 = *(v2 + 32)) != 0)
  {
    v9 = v8;
    v10 = sub_1DB50A620();

    v11 = [v9 objectForKey_];

    if (v11)
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = v11[2];
        *(a2 + 24) = swift_getObjectType();
        swift_unknownObjectRetain();

        *a2 = v12;
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 8))(v15, v16);
  v17 = sub_1DB50A620();

  v18 = CFPreferencesCopyAppValue(v17, *(v3 + 16));

  type metadata accessor for LocalPreferences.CacheValue();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  swift_unknownObjectRetain();
  v7(v5, v6);
  sub_1DB48B8B4(v19);

  if (v18)
  {
    *(a2 + 24) = swift_getObjectType();
    *a2 = v18;
    return result;
  }

LABEL_10:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DB48B728(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1DB30BE90(a3, v12);
  sub_1DB301CDC(a1, v11);
  v5 = *a2;
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = sub_1DB48B4AC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v9 = sub_1DB50B110();
  CFPreferencesSetAppValue(v8, v9, *(v5 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(v11);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t LocalPreferences.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = sub_1DB50A620();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v8 = sub_1DB50B110();
  CFPreferencesSetAppValue(v7, v8, *(v2 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(a1);
  return __swift_destroy_boxed_opaque_existential_0(a2);
}

void sub_1DB48B8B4(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 32);
    if (v2 && (v3 = *(v1 + 40)) != 0 && (v4 = *(v1 + 48)) != 0 && (v5 = *(v1 + 56)) != 0)
    {
      if (a1)
      {
        v7 = v2;
        v8 = v3;
        v9 = v4;

        v10 = sub_1DB50A620();
        [v7 setObject:a1 forKey:{v10, a1}];

        MEMORY[0x1EEE9AC00](v11);
        os_unfair_lock_lock((v5 + 24));
        sub_1DB48C7CC(v5 + 16, v25);
        os_unfair_lock_unlock((v5 + 24));
        if (LOBYTE(v25[0]) == 1)
        {
          v12 = sub_1DB50A620();
          [v8 addObserver:v9 forKeyPath:v12 options:1 context:0];

          MEMORY[0x1EEE9AC00](v13);
          os_unfair_lock_lock((v5 + 24));
          sub_1DB48C83C((v5 + 16));
          os_unfair_lock_unlock((v5 + 24));
        }

        else
        {
        }
      }

      else
      {
        v17 = v2;
        v18 = v3;
        v19 = v4;

        v20 = sub_1DB50A620();
        [v17 removeObjectForKey_];

        MEMORY[0x1EEE9AC00](v21);
        os_unfair_lock_lock((v5 + 24));
        sub_1DB48C750(v5 + 16, v25);
        os_unfair_lock_unlock((v5 + 24));
        if (LOBYTE(v25[0]) == 1)
        {
          v22 = sub_1DB50A620();
          [v18 removeObserver:v19 forKeyPath:v22 context:0];

          MEMORY[0x1EEE9AC00](v23);
          os_unfair_lock_lock((v5 + 24));
          sub_1DB48C7B0((v5 + 16), v25);
          os_unfair_lock_unlock((v5 + 24));
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v14 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1DB50EE90;
      v25[3] = MEMORY[0x1E69E6158];
      v25[0] = 0xD00000000000007ALL;
      v25[1] = 0x80000001DB52FD60;
      *(v16 + 48) = 0u;
      *(v16 + 32) = 0u;
      sub_1DB301D4C(v25, v16 + 32);
      *(v16 + 64) = 0;
      *(v15 + 32) = v16;
      v25[0] = v14;
      v24 = 0;
      OSLogger.log(contentsOf:withLevel:)(v15, &v24);
    }
  }
}

void (*LocalPreferences.subscript.modify(uint64_t *a1, void *a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1DB30BE90(a2, v5);
  LocalPreferences.subscript.getter(a2, v6 + 80);
  return sub_1DB48BD80;
}

void sub_1DB48BD80(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  if (a2)
  {
    sub_1DB301CDC(v2 + 80, v2 + 112);
    sub_1DB2FEA0C(v2, v2 + 40);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1((v2 + 40), v4);
    (*(v5 + 8))(v4, v5);
    v6 = sub_1DB50A620();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    v7 = sub_1DB50B110();
    CFPreferencesSetAppValue(v6, v7, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1DB301DBC(v2 + 112);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 80);
  }

  else
  {
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(*a1, v8);
    (*(v9 + 8))(v8, v9);
    v10 = sub_1DB50A620();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    v11 = sub_1DB50B110();
    CFPreferencesSetAppValue(v10, v11, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1DB301DBC(v2 + 80);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  free(v2);
}

void LocalPreferences.removeValue(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  key = sub_1DB50A620();

  CFPreferencesSetAppValue(key, 0, *(v1 + 16));
}

id sub_1DB48C114()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DB48C15C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = *a1;
  result = sub_1DB306160(a2, a3);
  if (v8)
  {
    v9 = result;
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v15 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB312ED0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + v9);
    result = sub_1DB31112C(v9, v12);
    *a1 = v12;
  }

  else
  {
    v14 = 2;
  }

  *a4 = v14;
  return result;
}

uint64_t sub_1DB48C214(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = sub_1DB48B4AC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
  v9 = sub_1DB50B110();
  CFPreferencesSetAppValue(v8, v9, *(v3 + 16));

  swift_unknownObjectRelease();
  sub_1DB301DBC(a1);
  return __swift_destroy_boxed_opaque_existential_0(a2);
}

void (*sub_1DB48C2C0(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LocalPreferences.subscript.modify(v4, a2);
  return sub_1DB48C338;
}

void sub_1DB48C338(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1DB48C380(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_1DB48B4AC(v3, v4);
  CFPreferencesSetAppValue(v5, 0, *(v2 + 16));
}

id sub_1DB48C470()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1DB50A620();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    sub_1DB30C200(v6, v7);
    sub_1DB300B14(v7, v6);
    if (swift_dynamicCast())
    {
      v3 = sub_1DB50A620();

      __swift_destroy_boxed_opaque_existential_0(v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v5 = *MEMORY[0x1E695E8A8];

  return v5;
}

void sub_1DB48C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4 && *(a4 + 16))
    {
      v5 = sub_1DB314CB4(*MEMORY[0x1E696A4F0]);
      if (v6)
      {
        sub_1DB300B14(*(a4 + 56) + 32 * v5, &v10);
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426B0, &qword_1DB50EEB0);
    if (swift_dynamicCast())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    if (swift_weakLoadStrong())
    {
      type metadata accessor for LocalPreferences.CacheValue();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      swift_unknownObjectRetain();
      sub_1DB48B8B4(v8);
    }

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1DB48C6F8()
{
  result = qword_1ECC42618;
  if (!qword_1ECC42618)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42618);
  }

  return result;
}

unint64_t sub_1DB48C750@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    result = sub_1DB306160(*(v3 + 16), *(v3 + 24));
    if (v7)
    {
      LOBYTE(v6) = *(*(v5 + 56) + result);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  *a2 = v6;
  return result;
}

unint64_t sub_1DB48C7CC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1DB306160(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = *(*(v5 + 56) + result) ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7 & 1;
  return result;
}

unint64_t sub_1DB48C83C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_1DB31E3EC(1, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t JSONObject.decode<A>(_:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;

  v2 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v4);
  JSONObject.decode<A>(_:withUserInfo:)(v2, v2);
}

uint64_t JSONObject.decode<A>(_:withUserInfo:)(uint64_t a1, uint64_t a2)
{
  sub_1DB3171C0(v2, v6);
  v7 = a2;
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DB34A154();
  v5 = swift_allocObject();
  sub_1DB34A1A8(v6, v5 + 16);

  sub_1DB50ADB0();
  return sub_1DB34A204(v6);
}

uint64_t sub_1DB48CA10()
{
  v1 = 0x647574696E67616DLL;
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
    return 0x6D614E646C656966;
  }
}

uint64_t sub_1DB48CA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB48D308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB48CA98(uint64_t a1)
{
  v2 = sub_1DB48D12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB48CAD4(uint64_t a1)
{
  v2 = sub_1DB48D12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB48CB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46170, &qword_1DB51EB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB48D12C();
  sub_1DB50BDF0();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v17 = sub_1DB50B740();
    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
    v19 = 1;
    sub_1DB46DDE0();
    sub_1DB50B710();
    if (v22)
    {
      v12 = 1048576.0;
    }

    else if (v21)
    {
      v12 = 1048576.0;
    }

    else
    {
      v12 = v20;
    }

    v19 = 2;
    sub_1DB50B710();
    (*(v6 + 8))(v9, v5);
    if (v22)
    {
      v14 = 2.0;
    }

    else
    {
      v14 = v20;
      if (v21)
      {
        v14 = 2.0;
      }
    }

    v15 = v18;
    *a2 = v17;
    *(a2 + 8) = v15;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB48CD98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;

  JSONObject.subscript.getter(0x6D614E646C656966, 0xE900000000000065, v19);
  v6 = JSONObject.string.getter();
  v8 = v7;
  sub_1DB3151CC(v19);
  if (v8)
  {
    JSONObject.subscript.getter(0x647574696E67616DLL, 0xE900000000000065, v19);
    v9 = COERCE_DOUBLE(JSONObject.double.getter());
    v11 = v10;
    sub_1DB3151CC(v19);
    if (v11)
    {
      v12 = 1048576.0;
    }

    else
    {
      v12 = v9;
    }

    JSONObject.subscript.getter(0xD000000000000011, 0x80000001DB52FE40, v19);
    v13 = JSONObject.double.getter();
    v15 = v14;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v19);
    v17 = *&v13;
    *a3 = v6;
    *(a3 + 8) = v8;
    if (v15)
    {
      v17 = 2.0;
    }

    *(a3 + 16) = v12;
    *(a3 + 24) = v17;
  }

  else
  {
    sub_1DB315178();
    swift_allocError();
    *v18 = xmmword_1DB51EA90;
    *(v18 + 16) = 0x20000001F56FE390uLL;
    *(v18 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t sub_1DB48CF30(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (!*(v9 + 16))
  {
  }

  v10 = sub_1DB306160(v3, v4);
  if ((v11 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v9 + 56) + 32 * v10, v20);

  sub_1DB36BD70();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v21;
    [v21 doubleValue];
    v15 = v14;
    v16 = NAN;
    if (v6 > 0.0 && v5 >= 0.0)
    {
      v17 = __exp10(v5);
      v16 = v17 * trunc(v15 / v6 / v17);
    }

    v20[3] = MEMORY[0x1E69E63B0];
    *v20 = v16;
    v18 = a1[3];
    v19 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 16))(v20, v3, v4, v18, v19);

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return result;
}

unint64_t sub_1DB48D12C()
{
  result = qword_1ECC46178;
  if (!qword_1ECC46178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46178);
  }

  return result;
}

BOOL sub_1DB48D180(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  result = 0;
  if (v6 || (sub_1DB50BA30()) && v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1DB48D204()
{
  result = qword_1ECC46180;
  if (!qword_1ECC46180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46180);
  }

  return result;
}

unint64_t sub_1DB48D25C()
{
  result = qword_1ECC46188;
  if (!qword_1ECC46188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46188);
  }

  return result;
}

unint64_t sub_1DB48D2B4()
{
  result = qword_1ECC46190;
  if (!qword_1ECC46190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46190);
  }

  return result;
}

uint64_t sub_1DB48D308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB52FE40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t JetPackAssetCacheStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t JetPackAssetStandardCachePolicy.status(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t JetPackAssetStandardCachePolicy.status(for:dateProvider:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1DB509DD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = a1 + *(type metadata accessor for JetPackAsset(0) + 20);
  result = sub_1DB48D850(v14);
  if (result)
  {
    goto LABEL_2;
  }

  v35 = v7;
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v17 = result;
  v18 = v14 + *(result + 44);
  if ((*(v18 + 40) & 1) == 0)
  {
    v19 = *(v18 + 32);
    v20 = v14 + *(result + 24);
    sub_1DB509D30();
    v34 = a3;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    (*(v22 + 8))(v21, v22);
    sub_1DB48DD24();
    LOBYTE(v20) = sub_1DB50A5F0();
    v23 = *(v35 + 8);
    v23(v10, v6);
    result = (v23)(v13, v6);
    a3 = v34;
    if (v20)
    {
      v16 = 3;
      goto LABEL_12;
    }
  }

  if (*(v18 + 8))
  {
    goto LABEL_8;
  }

  v24 = *v18;
  v25 = v14 + *(v17 + 24);
  sub_1DB509D30();
  v34 = a3;
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 8))(v26, v27);
  sub_1DB48DD24();
  LOBYTE(v25) = sub_1DB50A5F0();
  v28 = *(v35 + 8);
  v28(v10, v6);
  result = (v28)(v13, v6);
  a3 = v34;
  if (v25)
  {
LABEL_2:
    v16 = 2;
  }

  else
  {
LABEL_8:
    if (*(v18 + 24))
    {
      goto LABEL_11;
    }

    v29 = *(v18 + 16);
    v30 = v14 + *(v17 + 24);
    sub_1DB509D30();
    v31 = a2[3];
    v32 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v31);
    (*(v32 + 8))(v31, v32);
    sub_1DB48DD24();
    LOBYTE(v30) = sub_1DB50A5F0();
    v33 = *(v35 + 8);
    v33(v10, v6);
    result = (v33)(v13, v6);
    if ((v30 & 1) == 0)
    {
LABEL_11:
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_12:
  *a3 = v16;
  return result;
}

uint64_t sub_1DB48D850(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = *(a1 + v2[11] + 41);
  if (v3 >= 4)
  {
LABEL_11:

    v6 = 0;
    return v6 & 1;
  }

  v4 = sub_1DB50BA30();

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = (a1 + v2[7]);
  if (v5[3])
  {
    goto LABEL_4;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  if (qword_1EE30DAF8 != -1)
  {
    swift_once();
  }

  if (v7 != xmmword_1EE312DC0)
  {
    goto LABEL_26;
  }

  v10 = *(&xmmword_1EE312DC0 + 1);
  v26 = qword_1EE312DD0;
  if (v3 <= 1 && v3)
  {
    goto LABEL_16;
  }

  v11 = sub_1DB50BA30();

  if (v11)
  {
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    goto LABEL_16;
  }

  v12 = sub_1DB50BA30();

  if (v12)
  {
    goto LABEL_17;
  }

  if (v3 > 1)
  {
LABEL_16:

LABEL_17:
    if (v8 == v10)
    {
      goto LABEL_18;
    }

LABEL_26:
    v6 = 1;
    return v6 & 1;
  }

  v25 = sub_1DB50BA30();

  if ((v25 & 1) != 0 && v8 != v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v3 != 2)
  {
    v13 = sub_1DB50BA30();

    if (v13)
    {
      goto LABEL_25;
    }

    if (v3 <= 1)
    {
      v14 = sub_1DB50BA30();

      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_25:
  if (v9 != v26)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v3 <= 2)
  {
    v16 = sub_1DB50BA30();

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v17 = (a1 + v2[8]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = JEGestaltGetBuildVersion();
    v21 = sub_1DB50A650();
    v23 = v22;

    if (v19 != v21 || v18 != v23)
    {
      v24 = sub_1DB50BA30();

      v6 = v24 ^ 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

LABEL_4:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_1DB48DD24()
{
  result = qword_1EE30E270;
  if (!qword_1EE30E270)
  {
    sub_1DB509DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E270);
  }

  return result;
}

unint64_t sub_1DB48DD80()
{
  result = qword_1ECC46198;
  if (!qword_1ECC46198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46198);
  }

  return result;
}

uint64_t sub_1DB48DDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

JetCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

JetCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DB48E05C()
{
  result = qword_1ECC461A0;
  if (!qword_1ECC461A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461A0);
  }

  return result;
}

unint64_t sub_1DB48E118()
{
  result = qword_1ECC461A8;
  if (!qword_1ECC461A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC461B0, &qword_1DB51EE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC461A8);
  }

  return result;
}

uint64_t sub_1DB48E1A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1852793705;
    }

    else
    {
      v3 = 0x6E6572646C696863;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1852793705;
  if (a2 != 2)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E2C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DB50BA30();
  }

  return v10 & 1;
}

uint64_t sub_1DB48E400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E54C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D697270;
    }

    else
    {
      v4 = 0x6D726F6674616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746C7561666564;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656D697270;
  if (a2 != 2)
  {
    v8 = 0x6D726F6674616C70;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x746C7561666564;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657373696D736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6669636570736E75;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000646569;
    }

    else
    {
      v6 = 0x80000001DB529180;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x657373696D736964;
    }

    if (v4)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6669636570736E75;
  v8 = 0x80000001DB529180;
  if (a2 == 2)
  {
    v8 = 0xEB00000000646569;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48E7DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6449746E65726170;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF7865646E496E6FLL;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6973736572706D69;
    }

    else
    {
      v6 = 0x4449657571696E75;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 25705;
    }

    else
    {
      v6 = 0x6449746E65726170;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6973736572706D69;
  v10 = 0xEF7865646E496E6FLL;
  if (a2 != 2)
  {
    v9 = 0x4449657571696E75;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DB50BA30();
  }

  return v13 & 1;
}

uint64_t sub_1DB48E91C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73646C656966;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x69466E6F6D6D6F63;
    v4 = 0xEC00000073646C65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001DB529090;
    }

    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73646C656966;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x69466E6F6D6D6F63;
    v8 = 0x80000001DB529090;
    if (a2 == 3)
    {
      v8 = 0xEC00000073646C65;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x6D6F74737563;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1DB50BA30();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DB48EAA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x80000001DB529090;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C65694665676170;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0x6D6F74737563;
  v8 = 0x80000001DB529090;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x6C65694665676170;
    v2 = 0xEA00000000007364;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB50BA30();
  }

  return v11 & 1;
}

uint64_t sub_1DB48EBE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C46646C756F6873;
    }

    else
    {
      v3 = 0x6369706F74;
    }

    if (v2)
    {
      v4 = 0xEB00000000687375;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x73646C656966;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6964756C636E69;
    }

    else
    {
      v3 = 0x6E6964756C637865;
    }

    v4 = 0xEF73646C65694667;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6C46646C756F6873;
    }

    else
    {
      v8 = 0x6369706F74;
    }

    if (a2)
    {
      v7 = 0xEB00000000687375;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x6E6964756C636E69;
    if (a2 != 3)
    {
      v5 = 0x6E6964756C637865;
    }

    if (a2 == 2)
    {
      v6 = 0x73646C656966;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xEF73646C65694667;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_1DB50BA30();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1DB48ED90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F6E696DLL;
    }

    else
    {
      v3 = 0x726F6A616DLL;
    }

    v2 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6863746170;
  }

  else if (a1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x646C697562;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1701736302;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x726F6E696DLL;
    }

    else
    {
      v8 = 0x726F6A616DLL;
    }

    v7 = 0xE500000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x646C697562;
    if (a2 != 3)
    {
      v5 = 1701736302;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x6863746170;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_1DB50BA30();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_1DB48EEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {
    v3 = 0;
    v34 = a1 + 32;
    v35 = a2 + 32;
    v33 = *(a2 + 16);
    while (2)
    {
      if (v3 == v2)
      {
        return 1;
      }

      v4 = (v35 + 56 * v3);
      v6 = v4[5];
      v5 = v4[6];
      v8 = v4[3];
      v7 = v4[4];
      v9 = *(v4 + 16);
      v11 = *v4;
      v10 = v4[1];

      if (!v8)
      {
        return 1;
      }

      v38 = v5;
      v12 = v34 + 56 * v3;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = *(v12 + 40);
      v40 = v16;
      v41 = *(v12 + 32);
      v39 = *(v12 + 48);
      if (v10)
      {
        if (!v13 || (v11 == *v12 ? (v17 = v10 == v13) : (v17 = 0), !v17 && (sub_1DB50BA30() & 1) == 0))
        {
LABEL_42:

LABEL_43:

          return 0;
        }
      }

      else if (v13)
      {
        goto LABEL_42;
      }

      if (v9 == v14)
      {

        if (sub_1DB48F3DC(v15, v8))
        {
          v36 = v6;
          v37 = v7;
          ++v3;
          v18 = 1 << *(v8 + 32);
          if (v18 < 64)
          {
            v19 = ~(-1 << v18);
          }

          else
          {
            v19 = -1;
          }

          v20 = v19 & *(v8 + 64);
          v21 = (v18 + 63) >> 6;

          v22 = 0;
          while (v20)
          {
LABEL_27:
            v25 = __clz(__rbit64(v20)) | (v22 << 6);
            v26 = (*(v8 + 48) + 16 * v25);
            v27 = *v26;
            v28 = v26[1];
            sub_1DB300B14(*(v8 + 56) + 32 * v25, v46);
            v45[0] = v27;
            v45[1] = v28;
            sub_1DB300B14(v46, v44);
            if (*(v15 + 16))
            {

              v29 = sub_1DB306160(v27, v28);
              if (v30)
              {
                sub_1DB300B14(*(v15 + 56) + 32 * v29, &v42);
              }

              else
              {
                v42 = 0u;
                v43 = 0u;
              }
            }

            else
            {
              v42 = 0u;
              v43 = 0u;
            }

            v20 &= v20 - 1;
            v23 = sub_1DB404E3C(v44, &v42, 3uLL, 0);
            sub_1DB30623C(&v42, &qword_1ECC426B0, &qword_1DB50EEB0);
            sub_1DB30623C(v44, &qword_1ECC426B0, &qword_1DB50EEB0);
            sub_1DB30623C(v45, &qword_1ECC43438, &qword_1DB511338);
            if ((v23 & 1) == 0)
            {

              goto LABEL_43;
            }
          }

          while (1)
          {
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
              goto LABEL_42;
            }

            if (v24 >= v21)
            {
              break;
            }

            v20 = *(v8 + 64 + 8 * v24);
            ++v22;
            if (v20)
            {
              v22 = v24;
              goto LABEL_27;
            }
          }

          if ((sub_1DB325B44(v37, v41) & 1) == 0 || (sub_1DB325B44(v36, v40) & 1) == 0)
          {

            goto LABEL_43;
          }

          v31 = sub_1DB325B44(v38, v39);

          v2 = v33;
          if (v31)
          {
            continue;
          }

          return 0;
        }
      }

      goto LABEL_42;
    }
  }

  return 0;
}