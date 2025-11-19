uint64_t sub_1DB206904@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v19 = a4;
  v20 = a5;
  v21 = a3;
  v22 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  result = sub_1DB27DAD0(sub_1DB207470, v18, v13, &type metadata for Setter, v15, v14, MEMORY[0x1E69E7288], &v23);
  if (v7)
  {
    *a6 = v23;
  }

  else
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1DB2069F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  v85 = a3;
  v7 = sub_1DB2BADE4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DB2BA944();
  v86 = *(v88 - 8);
  v10 = *(v86 + 64);
  v11 = MEMORY[0x1EEE9AC00](v88);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v84 - v14;
  v16 = sub_1DB2BA904();
  v87 = *(v16 - 8);
  v17 = *(v87 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v84 - v21;
  v24 = *a1;
  v23 = a1[1];
  if (*(a2 + 16) && (v25 = sub_1DB141B30(v24, v23), (v26 & 1) != 0))
  {
    sub_1DB1567F4(*(a2 + 56) + 32 * v25, &v91);
    v96 = v91;
    v97 = v92;
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  sub_1DB1567F4(&v96, &v91);
  if (!*(&v92 + 1))
  {
    sub_1DB1445E0(&v91, &qword_1ECC26F30, &unk_1DB2BFA90);
    v32 = sub_1DB2B995C(34, 0xE100000000000000);
    v34 = v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
    a4[3] = v35;
    v36 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
    a4[4] = v36;
    *a4 = v32;
    a4[1] = v34;
    a4[2] = MEMORY[0x1E69E7CC0];
    a4[8] = v35;
    a4[9] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB2BCC40;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0;
    a4[5] = 63;
    a4[6] = 0xE100000000000000;
    a4[7] = v37;
    return sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);
  }

  v89 = v23;
  sub_1DB144640(&v91, &v94);
  sub_1DB1444CC(&v94, v93);
  v27 = MEMORY[0x1E6969080];
  if (swift_dynamicCast())
  {
    v28 = v91;
    v29 = sub_1DB2B995C(34, 0xE100000000000000);
    v31 = v30;
    a4[8] = v27;
    a4[9] = sub_1DB2074E8();
    *(a4 + 5) = v28;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28168, &unk_1DB2C4B80);
    a4[4] = sub_1DB1688F0(&qword_1ECC281E0, &qword_1ECC28168, &unk_1DB2C4B80);
    *a4 = v29;
LABEL_8:
    a4[1] = v31;
LABEL_9:
    a4[2] = MEMORY[0x1E69E7CC0];
LABEL_17:
    sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v93);
    return __swift_destroy_boxed_opaque_existential_1(&v94);
  }

  if (swift_dynamicCast())
  {
    v39 = v87;
    (*(v87 + 32))(v20, v22, v16);
    v40 = sub_1DB2B995C(34, 0xE100000000000000);
    v42 = v41;
    if (qword_1ECC26C50 != -1)
    {
      swift_once();
    }

    v43 = qword_1ECC29568;
    v44 = sub_1DB2BA8C4();
    v45 = [v43 stringFromDate_];

    v46 = sub_1DB2BAD94();
    v48 = v47;

    a4[8] = MEMORY[0x1E69E6158];
    a4[9] = &protocol witness table for String;
    a4[5] = v46;
    a4[6] = v48;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    a4[4] = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    *a4 = v40;
    a4[1] = v42;
    a4[2] = MEMORY[0x1E69E7CC0];
    (*(v39 + 8))(v20, v16);
    goto LABEL_17;
  }

  v49 = v88;
  if (swift_dynamicCast())
  {
    v50 = v86;
    (*(v86 + 32))(v13, v15, v49);
    v51 = sub_1DB2B995C(34, 0xE100000000000000);
    v53 = v52;
    v54 = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
    a4[8] = MEMORY[0x1E69E6158];
    a4[9] = &protocol witness table for String;
    a4[5] = v54;
    a4[6] = v55;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    a4[4] = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    *a4 = v51;
    a4[1] = v53;
    a4[2] = MEMORY[0x1E69E7CC0];
    (*(v50 + 8))(v13, v49);
    goto LABEL_17;
  }

  v56 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v57 = v91;
    v58 = sub_1DB2B995C(34, 0xE100000000000000);
    v31 = v59;
    a4[8] = v56;
    a4[9] = &protocol witness table for String;
    *(a4 + 5) = v57;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    a4[4] = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    *a4 = v58;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281D0, &unk_1DB2C4F30);
  if (!swift_dynamicCast())
  {
    v66 = sub_1DB2B995C(34, 0xE100000000000000);
    v68 = v67;
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    sub_1DB2BB914();
    v69 = v91;
    a4[8] = v56;
    a4[9] = &protocol witness table for String;
    *(a4 + 5) = v69;
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    a4[4] = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
    *a4 = v66;
    a4[1] = v68;
    goto LABEL_9;
  }

  sub_1DB1355D0(&v91, v90);
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  v60 = sub_1DB2BA5F4();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  sub_1DB2BA5E4();
  v63 = v98;
  v64 = sub_1DB2BA5D4();
  if (!v63)
  {
    v70 = v64;
    v71 = v65;
    v98 = 0;

    sub_1DB2BADD4();
    v88 = sub_1DB2BADB4();
    v73 = v72;
    v74 = sub_1DB2B995C(34, 0xE100000000000000);
    v76 = v75;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
    a4[3] = v77;
    v78 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
    a4[4] = v78;
    *a4 = v74;
    a4[1] = v76;
    a4[2] = MEMORY[0x1E69E7CC0];
    a4[8] = v77;
    a4[9] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v79 = swift_allocObject();
    v80 = v79;
    *(v79 + 16) = xmmword_1DB2BCC40;
    if (v73)
    {
      v81 = &protocol witness table for String;
      v82 = MEMORY[0x1E69E6158];
      v83 = v88;
    }

    else
    {
      v83 = 0;
      v82 = 0;
      v81 = 0;
      *(v79 + 48) = 0;
    }

    *(v79 + 32) = v83;
    *(v79 + 40) = v73;
    *(v79 + 56) = v82;
    *(v79 + 64) = v81;
    sub_1DB207494(v70, v71);
    a4[5] = 63;
    a4[6] = 0xE100000000000000;
    a4[7] = v80;
    sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);
    __swift_destroy_boxed_opaque_existential_1(v90);
    goto LABEL_18;
  }

  sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v93);
  result = __swift_destroy_boxed_opaque_existential_1(&v94);
  *v85 = v63;
  return result;
}

uint64_t sub_1DB207470@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  return sub_1DB2069F4(a1, v3[5], a2, a3);
}

uint64_t sub_1DB207494(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1DB2074E8()
{
  result = qword_1ECC281D8;
  if (!qword_1ECC281D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC281D8);
  }

  return result;
}

uint64_t sub_1DB207554(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v26[2] = v1;
    v4 = MEMORY[0x1EEE9AC00](a1);

    v5 = sub_1DB288AD0(sub_1DB208758, v26, v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      v35 = MEMORY[0x1E69E7CC0];
      sub_1DB138680(0, v6, 0);
      v2 = v35;
      v26[5] = v5;
      v7 = v5 + 32;
      v27 = xmmword_1DB2BD5A0;
      do
      {
        v28 = v6;
        sub_1DB164AE0(v7, v32);
        sub_1DB164980(v32, v29);
        v8 = sub_1DB2B995C(34, 0xE100000000000000);
        v10 = v9;
        sub_1DB164980(v29, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        inited = swift_initStackObject();
        *(inited + 16) = v27;
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 56) = v12;
        v13 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 64) = v13;
        *(inited + 32) = v8;
        *(inited + 40) = v10;
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        v14 = v2;
        v16 = v30;
        v15 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v17 = *(v15 + 24);
        *(inited + 96) = v12;
        *(inited + 104) = v13;
        v18 = v15;
        v2 = v14;
        v17(v16, v18);
        sub_1DB2B9A70(inited, v34 + 1);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
        sub_1DB164B3C(v32);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v35 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DB138680((v19 > 1), v20 + 1, 1);
          v2 = v35;
        }

        *(v2 + 16) = v20 + 1;
        v21 = (v2 + 80 * v20);
        v21[2] = v33[0];
        v22 = v33[1];
        v23 = v34[0];
        v24 = v34[2];
        v21[5] = v34[1];
        v21[6] = v24;
        v21[3] = v22;
        v21[4] = v23;
        v7 += 80;
        v6 = v28 - 1;
      }

      while (v28 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

__n128 OnConflictClause.init(_:_:where:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v6 = a3[1].n128_u64[0];
  sub_1DB1355D0(a1, a4);
  *(a4 + 40) = a2;
  result = v8;
  *(a4 + 48) = v8;
  *(a4 + 64) = v6;
  return result;
}

uint64_t OnConflictClause.init(_:_:where:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  sub_1DB164980(a1, a4);
  a4[5] = a2;
  if (v7)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    result = sub_1DB1718E4(v8, v7);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v8 = 0;
    v9 = 0;
  }

  a4[6] = v8;
  a4[7] = v7;
  a4[8] = v9;
  return result;
}

uint64_t sub_1DB207940(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = sub_1DB286324(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == sub_1DB286324(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_1DB2BB924();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_1DB207A20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65756C6156746573;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x737265746C6966;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7463696C666E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000676E69;
  }

  v7 = 0x65756C6156746573;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x737265746C6966;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7463696C666E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000676E69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB207B30()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB207BE0()
{
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB207C7C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB207D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB20870C();
  *a2 = result;
  return result;
}

void sub_1DB207D58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0xE900000000000073;
  v5 = 0x65756C6156746573;
  if (v2 != 1)
  {
    v5 = 0x737265746C6966;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463696C666E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB207DC4()
{
  v1 = 0x65756C6156746573;
  if (*v0 != 1)
  {
    v1 = 0x737265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463696C666E6F63;
  }
}

uint64_t sub_1DB207E2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB20870C();
  *a1 = result;
  return result;
}

uint64_t sub_1DB207E54(uint64_t a1)
{
  v2 = sub_1DB208148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB207E90(uint64_t a1)
{
  v2 = sub_1DB208148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnConflictClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281E8, &qword_1DB2C4F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB208148();
  sub_1DB2BBA94();
  sub_1DB164980(v3, &v15);
  HIBYTE(v14) = 0;
  sub_1DB164B90();
  sub_1DB2BB8A4();
  sub_1DB164BE4(&v15);
  if (!v2)
  {
    v15 = v3[5];
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    sub_1DB2084A4(&qword_1EE13F2A8, sub_1DB201414);
    sub_1DB2BB854();
    v11 = v3[7];
    v12 = v3[8];
    v15 = v3[6];
    v16 = v11;
    v17 = v12;
    HIBYTE(v14) = 2;
    sub_1DB1757B0(v15, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB854();
    sub_1DB1718E4(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DB208148()
{
  result = qword_1ECC281F0;
  if (!qword_1ECC281F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC281F0);
  }

  return result;
}

uint64_t OnConflictClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC281F8, &qword_1DB2C4F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB208148();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  sub_1DB1355D0(&v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
  v18 = 1;
  sub_1DB2084A4(&qword_1EE13E620, sub_1DB165BF0);
  sub_1DB2BB764();
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v18 = 2;
  sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0);
  sub_1DB2BB764();
  (*(v6 + 8))(v9, v5);
  v16 = v12;
  v17 = v13;
  sub_1DB201088(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB2010E4(v14);
}

uint64_t sub_1DB2084A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB20854C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DB208594(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1DB208608()
{
  result = qword_1ECC28200;
  if (!qword_1ECC28200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28200);
  }

  return result;
}

unint64_t sub_1DB208660()
{
  result = qword_1ECC28208;
  if (!qword_1ECC28208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28208);
  }

  return result;
}

unint64_t sub_1DB2086B8()
{
  result = qword_1ECC28210;
  if (!qword_1ECC28210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28210);
  }

  return result;
}

uint64_t sub_1DB20870C()
{
  v0 = sub_1DB2BB6F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static Expression<A>.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B597C(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59AC(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.+ infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_1DB208DB8(a1, a2, a3, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B597C);
}

{
  return sub_1DB208DB8(a1, a2, a3, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B59AC);
}

uint64_t sub_1DB208DB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19[0] = v14;
  v19[1] = v13;
  v19[4] = sub_1DB21132C(a6, a4, a5);
  v19[2] = v15;
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a2;
  v18[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  a7(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t static Expression<A>.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  return sub_1DB208F78(a1, a2, a3, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B597C);
}

{
  return sub_1DB208F78(a1, a2, a3, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B59AC);
}

uint64_t sub_1DB208F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = &protocol witness table for String;
  v17[0] = a1;
  v17[1] = a2;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16[0] = v12;
  v16[1] = v11;
  v16[4] = sub_1DB21132C(a6, a4, a5);
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  a7(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static Expression<A>.+ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20919C(a1, a2, 0, a3);
}

{
  return sub_1DB209298(a1, a2, 0, a3);
}

{
  return sub_1DB2093C0(a1, a2, 0, a3);
}

{
  return sub_1DB2094E8(a1, a2, 0, a3);
}

uint64_t static Expression<A>.+ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB2095F0(a1, a2, a3, a4, 0, a5);
}

{
  return sub_1DB209704(a1, a2, a3, a4, 0, a5);
}

uint64_t static Expression<A>.+ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB209830(a1, a2, a3, a4, 0, a5);
}

{
  return sub_1DB209940(a1, a2, a3, a4, 0, a5);
}

uint64_t static Expression<A>.- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20919C(a1, a2, 1, a3);
}

{
  return sub_1DB209298(a1, a2, 1, a3);
}

{
  return sub_1DB2093C0(a1, a2, 1, a3);
}

{
  return sub_1DB2094E8(a1, a2, 1, a3);
}

uint64_t static Expression<A>.- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB2095F0(a1, a2, a3, a4, 1, a5);
}

{
  return sub_1DB209704(a1, a2, a3, a4, 1, a5);
}

uint64_t static Expression<A>.- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB209830(a1, a2, a3, a4, 1, a5);
}

{
  return sub_1DB209940(a1, a2, a3, a4, 1, a5);
}

uint64_t static Expression<A>.* infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20919C(a1, a2, 5, a3);
}

{
  return sub_1DB209298(a1, a2, 5, a3);
}

{
  return sub_1DB2093C0(a1, a2, 5, a3);
}

{
  return sub_1DB2094E8(a1, a2, 5, a3);
}

uint64_t static Expression<A>.* infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB2095F0(a1, a2, a3, a4, 5, a5);
}

{
  return sub_1DB209704(a1, a2, a3, a4, 5, a5);
}

uint64_t static Expression<A>.* infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB209830(a1, a2, a3, a4, 5, a5);
}

{
  return sub_1DB209940(a1, a2, a3, a4, 5, a5);
}

uint64_t static Expression<A>./ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20919C(a1, a2, 6, a3);
}

{
  return sub_1DB209298(a1, a2, 6, a3);
}

{
  return sub_1DB2093C0(a1, a2, 6, a3);
}

{
  return sub_1DB2094E8(a1, a2, 6, a3);
}

uint64_t sub_1DB20919C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W6>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v15 = type metadata accessor for Expression();
  v14[0] = v7;
  v14[1] = v6;
  WitnessTable = swift_getWitnessTable();
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = WitnessTable;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_1DB2883C4(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB209298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W6>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v14[3] = type metadata accessor for Expression();
  v14[0] = v7;
  v14[1] = v6;
  v14[4] = swift_getWitnessTable();
  v14[2] = v8;
  sub_1DB2BB364();
  v13[3] = type metadata accessor for Expression();
  v13[0] = v10;
  v13[1] = v9;
  v13[4] = swift_getWitnessTable();
  v13[2] = v11;

  sub_1DB2883C4(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB2093C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W6>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  sub_1DB2BB364();
  v14[3] = type metadata accessor for Expression();
  v14[0] = v6;
  v14[1] = v5;
  v14[4] = swift_getWitnessTable();
  v14[2] = v7;
  v13[3] = type metadata accessor for Expression();
  v13[0] = v8;
  v13[1] = v9;
  v13[4] = swift_getWitnessTable();
  v13[2] = v10;

  sub_1DB2883C4(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB2094E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W6>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  sub_1DB2BB364();
  v15 = type metadata accessor for Expression();
  v14[0] = v7;
  v14[1] = v6;
  WitnessTable = swift_getWitnessTable();
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = WitnessTable;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_1DB2883C4(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t static Expression<A>./ infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB2095F0(a1, a2, a3, a4, 6, a5);
}

{
  return sub_1DB209704(a1, a2, a3, a4, 6, a5);
}

uint64_t sub_1DB2095F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char a5@<W6>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v18[3] = type metadata accessor for Expression();
  v18[0] = v12;
  v18[1] = v11;
  v18[4] = swift_getWitnessTable();
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);

  sub_1DB2883C4(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1DB209704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char a5@<W6>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_1DB2BB364();
  v18[3] = type metadata accessor for Expression();
  v18[0] = v12;
  v18[1] = v11;
  v18[4] = swift_getWitnessTable();
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);

  sub_1DB2883C4(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t static Expression<A>./ infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB209830(a1, a2, a3, a4, 6, a5);
}

{
  return sub_1DB209940(a1, a2, a3, a4, 6, a5);
}

uint64_t sub_1DB209830@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char a5@<W6>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v16[3] = type metadata accessor for Expression();
  v16[0] = v11;
  v16[1] = v10;
  v16[4] = swift_getWitnessTable();
  v16[2] = v12;

  sub_1DB2883C4(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1DB209940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char a5@<W6>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1DB2BB364();
  v16[3] = type metadata accessor for Expression();
  v16[0] = v11;
  v16[1] = v10;
  v16[4] = swift_getWitnessTable();
  v16[2] = v12;

  sub_1DB2883C4(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static Expression<A>.- prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7[3] = type metadata accessor for Expression();
  v7[0] = v4;
  v7[1] = v3;
  v7[4] = swift_getWitnessTable();
  v7[2] = v5;

  sub_1DB288444(v7, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_1DB2BB364();
  v7[3] = type metadata accessor for Expression();
  v7[0] = v4;
  v7[1] = v3;
  v7[4] = swift_getWitnessTable();
  v7[2] = v5;

  sub_1DB288444(v7, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.% infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 37, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15420, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 15934, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 38, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v11[0] = v6;
  v11[1] = v5;
  v11[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v11[2] = v7;
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v11, inited + 32);
  sub_1DB164980(v10, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static Expression<A>.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B59DC(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v10[3] = MEMORY[0x1E69E7360];
  v10[4] = &protocol witness table for Int64;
  v10[0] = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v9[0] = v5;
  v9[1] = v4;
  v9[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v10, inited + 32);
  sub_1DB164980(v9, inited + 72);

  sub_1DB2B5A0C(inited, 1, 124, 0xE100000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v20 = *a1;
  v3 = v20;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  v24 = v6;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  static Expression<A>.& infix(_:_:)(&v20, &v24, &v26);
  v9 = v26;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v10 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v20 = v9;
  v21 = v27;
  v23 = v10;
  v24 = 126;
  *&v25 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v11 = __swift_project_boxed_opaque_existential_1(&v20, v22);
  v12 = v20;
  v13 = v21;

  MEMORY[0x1E1283490](v12, v13);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v15 = v24;
  v14 = v25;
  v16 = v11[2];

  __swift_destroy_boxed_opaque_existential_1(&v20);
  v20 = v15;
  *&v21 = v14;
  *(&v21 + 1) = v16;
  v24 = v3;
  *&v25 = v4;
  *(&v25 + 1) = v5;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  static Expression<A>.| infix(_:_:)(&v24, v19, &v26);
  v24 = v26;
  v25 = v27;
  static Expression<A>.& infix(_:_:)(&v20, &v24, a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

{
  return sub_1DB20D5E8(a1, a2, static Expression<A>.& infix(_:_:), static Expression<A>.| infix(_:_:), a3);
}

uint64_t static Expression<A>.~ prefix(_:)(uint64_t *a1)
{
  return sub_1DB20D508(a1, &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, sub_1DB203564);
}

{
  return sub_1DB20D508(a1, &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, sub_1DB203564);
}

uint64_t sub_1DB20D508(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t *, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13[0] = v10;
  v13[1] = v9;
  v13[4] = sub_1DB21132C(a4, a2, a3);
  v13[2] = v11;

  a5(v13, 126, 0xE100000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DB20D5E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t *, void *)@<X3>, uint64_t *a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v23 = *a1;
  v5 = v23;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v27 = v9;
  *&v28 = v8;
  *(&v28 + 1) = v10;
  a3(&v29, &v23, &v27);
  v11 = v29;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v12 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v23 = v11;
  v24 = v30;
  v26 = v12;
  v27 = 126;
  *&v28 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v13 = __swift_project_boxed_opaque_existential_1(&v23, v25);
  v14 = v23;
  v15 = v24;

  MEMORY[0x1E1283490](v14, v15);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v17 = v27;
  v16 = v28;
  v18 = v13[2];

  __swift_destroy_boxed_opaque_existential_1(&v23);
  v23 = v17;
  *&v24 = v16;
  *(&v24 + 1) = v18;
  v27 = v5;
  *&v28 = v6;
  *(&v28 + 1) = v7;
  v22[0] = v9;
  v22[1] = v8;
  v22[2] = v10;
  a4(&v29, &v27, v22);
  v27 = v29;
  v28 = v30;
  static Expression<A>.& infix(_:_:)(&v23, &v27, a5);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v16 = *a1;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(&v16, a2, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v19 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(&v14, a2, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

{
  v6 = a1[1];
  v7 = a1[2];
  v16 = *a1;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(&v16, a2, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v19 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(&v14, a2, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

uint64_t static Expression<A>.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[1];
  v7 = a2[2];
  v16 = *a2;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(a1, &v16, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v19 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(a1, &v14, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

{
  v6 = a2[1];
  v7 = a2[2];
  v16 = *a2;
  v5 = v16;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  static Expression<A>.& infix(_:_:)(a1, &v16, &v20);
  v8 = v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v19 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v16 = v8;
  v17 = v21;
  v14 = 126;
  *&v15 = 0xE100000000000000;
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v10 = v16;
  v11 = v17;

  MEMORY[0x1E1283490](v10, v11);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v12 = v9[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = 126;
  *&v17 = 0xE100000000000000;
  *(&v17 + 1) = v12;
  v14 = v5;
  *&v15 = v6;
  *(&v15 + 1) = v7;
  static Expression<A>.| infix(_:_:)(a1, &v14, &v20);
  v14 = v20;
  v15 = v21;
  static Expression<A>.& infix(_:_:)(&v16, &v14, a3);
}

uint64_t static Expression<A>.== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 61, 0xE100000000000000, a3);
}

uint64_t static Expression<A>.== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 61, 0xE100000000000000, a5);
}

{
  return sub_1DB20DF08(a1, a2, a3, a4, 61, 0xE100000000000000, a5, 21321, 0xE200000000000000);
}

uint64_t static Expression<A>.== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 61, 0xE100000000000000, a5);
}

{
  return sub_1DB20E3A4(a1, a2, a3, a4, 61, 0xE100000000000000, a5, 21321, 0xE200000000000000);
}

uint64_t static Expression<A>.!= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 15649, 0xE200000000000000, a3);
}

uint64_t static Expression<A>.!= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 15649, 0xE200000000000000, a5);
}

{
  return sub_1DB20DF08(a1, a2, a3, a4, 15649, 0xE200000000000000, a5, 0x544F4E205349, 0xE600000000000000);
}

uint64_t sub_1DB20DF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v36 = a7;
  v12 = sub_1DB2BB364();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v35 = *a1;
  v23 = a1[2];
  (*(v13 + 16))(v17, a2, v12);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v13 + 8))(v17, v12);
    v43 = type metadata accessor for Expression();
    WitnessTable = swift_getWitnessTable();
    v40 = v35;
    v41 = v22;
    v44 = WitnessTable;
    v42 = v23;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v39 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0;
    v37[0] = 63;
    v37[1] = 0xE100000000000000;
    v37[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v40, inited + 32);
    sub_1DB164980(v37, inited + 72);

    sub_1DB2B594C(inited, 1, a8, a9, v36);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    (*(v18 + 32))(v21, v17, a3);
    v43 = type metadata accessor for Expression();
    v27 = swift_getWitnessTable();
    v40 = v35;
    v41 = v22;
    v44 = v27;
    v42 = v23;
    v28 = *(v32 + 8);
    v38 = a3;
    v39 = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    (*(v18 + 16))(boxed_opaque_existential_0, v21, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(&v40, v30 + 32);
    sub_1DB164980(v37, v30 + 72);

    sub_1DB2B594C(v30, 1, v33, v34, v36);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    (*(v18 + 8))(v21, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return __swift_destroy_boxed_opaque_existential_1(&v40);
}

uint64_t static Expression<A>.!= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 15649, 0xE200000000000000, a5);
}

{
  return sub_1DB20E3A4(a1, a2, a3, a4, 15649, 0xE200000000000000, a5, 0x544F4E205349, 0xE600000000000000);
}

uint64_t sub_1DB20E3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v33 = a5;
  v34 = a6;
  v37 = a7;
  v13 = sub_1DB2BB364();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[1];
  v35 = *a2;
  v36 = v23;
  v24 = a2[2];
  (*(v14 + 16))(v18, a1, v13);
  if ((*(v19 + 48))(v18, 1, a3) == 1)
  {
    (*(v14 + 8))(v18, v13);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v45 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0;
    v43[0] = 63;
    v43[1] = 0xE100000000000000;
    v43[2] = v25;
    v41 = type metadata accessor for Expression();
    WitnessTable = swift_getWitnessTable();
    v38 = v35;
    v39 = v36;
    v42 = WitnessTable;
    v40 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v43, inited + 32);
    sub_1DB164980(&v38, inited + 72);

    sub_1DB2B594C(inited, 1, a8, a9, v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    (*(v19 + 32))(v22, v18, a3);
    v28 = *(a4 + 8);
    v44 = a3;
    v45 = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(v19 + 16))(boxed_opaque_existential_0, v22, a3);
    v41 = type metadata accessor for Expression();
    v30 = swift_getWitnessTable();
    v38 = v35;
    v39 = v36;
    v42 = v30;
    v40 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v43, v31 + 32);
    sub_1DB164980(&v38, v31 + 72);

    sub_1DB2B594C(v31, 1, v33, v34, v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    (*(v19 + 8))(v22, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(&v38);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t static Expression<A>.=== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 21321, 0xE200000000000000, a3);
}

uint64_t static Expression<A>.=== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 21321, 0xE200000000000000, a5);
}

{
  return sub_1DB20DF08(a1, a2, a3, a4, 21321, 0xE200000000000000, a5, 21321, 0xE200000000000000);
}

uint64_t static Expression<A>.=== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 21321, 0xE200000000000000, a5);
}

{
  return sub_1DB20E3A4(a1, a2, a3, a4, 21321, 0xE200000000000000, a5, 21321, 0xE200000000000000);
}

uint64_t static Expression<A>.!== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

uint64_t static Expression<A>.!== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5);
}

{
  return sub_1DB20DF08(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5, 0x544F4E205349, 0xE600000000000000);
}

uint64_t static Expression<A>.!== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5);
}

{
  return sub_1DB20E3A4(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5, 0x544F4E205349, 0xE600000000000000);
}

uint64_t static Expression<A>.> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 62, 0xE100000000000000, a3);
}

uint64_t static Expression<A>.> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

{
  return sub_1DB20F25C(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

uint64_t static Expression<A>.> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

{
  return sub_1DB20F584(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

uint64_t static Expression<A>.>= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 15678, 0xE200000000000000, a3);
}

uint64_t static Expression<A>.>= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

{
  return sub_1DB20F25C(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

uint64_t static Expression<A>.>= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

{
  return sub_1DB20F584(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

uint64_t static Expression<A>.< infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 60, 0xE100000000000000, a3);
}

uint64_t static Expression<A>.< infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

{
  return sub_1DB20F25C(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

uint64_t static Expression<A>.< infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

{
  return sub_1DB20F584(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

uint64_t static Expression<A>.<= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB20EAB8(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_1DB20EC24(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_1DB20EDBC(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_1DB20EF54(a1, a2, 15676, 0xE200000000000000, a3);
}

uint64_t sub_1DB20EAB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v18 = type metadata accessor for Expression();
  v17[0] = v9;
  v17[1] = v8;
  WitnessTable = swift_getWitnessTable();
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = WitnessTable;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  sub_1DB2B57D4(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1DB20EC24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v17[3] = type metadata accessor for Expression();
  v17[0] = v8;
  v17[1] = v7;
  v17[4] = swift_getWitnessTable();
  v17[2] = v9;
  sub_1DB2BB364();
  v16[3] = type metadata accessor for Expression();
  v16[0] = v10;
  v16[1] = v11;
  v16[4] = swift_getWitnessTable();
  v16[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1DB20EDBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  sub_1DB2BB364();
  v17[3] = type metadata accessor for Expression();
  v17[0] = v8;
  v17[1] = v7;
  v17[4] = swift_getWitnessTable();
  v17[2] = v9;
  v16[3] = type metadata accessor for Expression();
  v16[0] = v10;
  v16[1] = v11;
  v16[4] = swift_getWitnessTable();
  v16[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1DB20EF54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  sub_1DB2BB364();
  v18 = type metadata accessor for Expression();
  v17[0] = v9;
  v17[1] = v8;
  WitnessTable = swift_getWitnessTable();
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = WitnessTable;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v17, inited + 32);
  sub_1DB164980(v16, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static Expression<A>.<= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F0CC(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

{
  return sub_1DB20F25C(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

uint64_t sub_1DB20F0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v21[3] = type metadata accessor for Expression();
  v21[0] = v14;
  v21[1] = v13;
  v21[4] = swift_getWitnessTable();
  v21[2] = v15;
  v16 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v21, inited + 32);
  sub_1DB164980(v20, inited + 72);

  sub_1DB2B57D4(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DB20F25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  sub_1DB2BB364();
  v21[3] = type metadata accessor for Expression();
  v21[0] = v14;
  v21[1] = v13;
  v21[4] = swift_getWitnessTable();
  v21[2] = v15;
  v16 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v21, inited + 32);
  sub_1DB164980(v20, inited + 72);

  sub_1DB2B594C(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t static Expression<A>.<= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  return sub_1DB20F3F8(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

{
  return sub_1DB20F584(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

uint64_t sub_1DB20F3F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v19[3] = type metadata accessor for Expression();
  v19[0] = v13;
  v19[1] = v12;
  v19[4] = swift_getWitnessTable();
  v19[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v20, inited + 32);
  sub_1DB164980(v19, inited + 72);

  sub_1DB2B57D4(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DB20F584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1DB2BB364();
  v19[3] = type metadata accessor for Expression();
  v19[0] = v13;
  v19[1] = v12;
  v19[4] = swift_getWitnessTable();
  v19[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v20, inited + 32);
  sub_1DB164980(v19, inited + 72);

  sub_1DB2B594C(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1DB20F720(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1DB1384B0((v8 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
      v10 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
      *&v12 = v5;
      *(&v12 + 1) = v6;
      v15 = v10;
      v13 = v7;
      *(v2 + 16) = v9 + 1;
      sub_1DB1355D0(&v12, v2 + 40 * v9 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DB20F850(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DB138530(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
      swift_dynamicCast();
      v6 = *(v14 + 16);
      v5 = *(v14 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DB138530((v5 > 1), v6 + 1, 1);
      }

      *(v14 + 16) = v6 + 1;
      v7 = v14 + 40 * v6;
      *(v7 + 64) = v13;
      *(v7 + 32) = v11;
      *(v7 + 48) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B57D4(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  return sub_1DB2109DC(a1, a2, 4476481, 0xE300000000000000, a3);
}

{
  return sub_1DB20FF94(a1, a2, 4476481, 0xE300000000000000, a3);
}

uint64_t sub_1DB20FF94@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v15[0] = v10;
  v15[1] = v9;
  v15[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v15[2] = v11;
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Expression<A>.&& infix(_:_:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB210B50(a1, a2, 4476481, 0xE300000000000000, a3);
}

{
  return sub_1DB210110(a1, a2, 4476481, 0xE300000000000000, a3);
}

uint64_t sub_1DB210110@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a1;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v9;
  v13[1] = v8;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);

  sub_1DB2B594C(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DB210274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  *(inited + 64) = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = v11;

  v13 = sub_1DB20F720(a2);
  sub_1DB1414E8(v13);
  sub_1DB2B57D4(inited, 1, a3, a4, a5);
}

uint64_t sub_1DB210390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1DB20F720(a1);
  sub_1DB2B57D4(v7, 1, a2, a3, a4);
}

uint64_t static Expression<A>.|| infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B57D4(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v13[4] = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v12[0] = v8;
  v12[1] = v7;
  v12[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[0] = v5;
  v13[1] = v4;
  v15 = sub_1DB21132C(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v13[2] = v6;
  v12[3] = v14;
  v12[4] = v15;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v13, inited + 32);
  sub_1DB164980(v12, inited + 72);

  sub_1DB2B594C(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static Expression<A>.|| infix(_:_:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  return sub_1DB2109DC(a1, a2, 21071, 0xE200000000000000, a3);
}

{
  return sub_1DB20FF94(a1, a2, 21071, 0xE200000000000000, a3);
}

uint64_t sub_1DB2109DC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v15[0] = v10;
  v15[1] = v9;
  v15[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v15[2] = v11;
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Expression<A>.|| infix(_:_:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_1DB210B50(a1, a2, 21071, 0xE200000000000000, a3);
}

{
  return sub_1DB210110(a1, a2, 21071, 0xE200000000000000, a3);
}

uint64_t sub_1DB210B50@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v14[3] = MEMORY[0x1E69E6370];
  v14[4] = &protocol witness table for Bool;
  LOBYTE(v14[0]) = a1;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v13[0] = v9;
  v13[1] = v8;
  v13[4] = sub_1DB21132C(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  v13[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v14, inited + 32);
  sub_1DB164980(v13, inited + 72);

  sub_1DB2B57D4(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t static Expression<A>.! prefix(_:)(uint64_t *a1)
{
  return sub_1DB210D14(a1, &qword_1ECC28178, &unk_1DB2CE7D0, &qword_1EE13EF60, sub_1DB203564);
}

{
  return sub_1DB210D14(a1, &qword_1ECC27E20, &qword_1DB2C3AF0, &qword_1EE13F5C0, sub_1DB203564);
}

uint64_t sub_1DB210D14(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t *, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13[0] = v10;
  v13[1] = v9;
  v13[4] = sub_1DB21132C(a4, a2, a3);
  v13[2] = v11;

  a5(v13, 542396238, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_1DB210DD0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v16 = a1[2];

  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4800);
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v10 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v10(a2, a3);
  v13 = *(sub_1DB2BAD34() + 36);
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  v10(a2, a3);
  result = sub_1DB141510(inited);
  *a4 = v7;
  a4[1] = v15;
  a4[2] = v16;
  return result;
}

void *sub_1DB210F94@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x1E1283490](v6, v7);
  MEMORY[0x1E1283490](1059077152, 0xE400000000000000);
  v17 = v7;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  v10 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v10(a2, a3);
  v20 = v8;

  sub_1DB141510(inited);

  sub_1DB141510(v13);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1DB2BCC40;
  v15 = *(sub_1DB2BB244() + 36);
  *(v14 + 56) = AssociatedTypeWitness;
  *(v14 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  v10(a2, a3);
  result = sub_1DB141510(v14);
  *a4 = v18;
  a4[1] = v17;
  a4[2] = v20;
  return result;
}

void *sub_1DB2111E4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v11 = a1[2];
  v15 = *a1;
  v16 = a1[1];

  MEMORY[0x1E1283490](a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  v13 = *(a3 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  v13(a2, a3);
  result = sub_1DB141510(inited);
  *a6 = v15;
  a6[1] = v16;
  a6[2] = v11;
  return result;
}

uint64_t sub_1DB21132C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DB211394()
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB2114B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656C6573;
    v6 = 1852403562;
    if (a1 != 2)
    {
      v6 = 0x737265746C6966;
    }

    if (a1)
    {
      v5 = 1836020326;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74696D696CLL;
    v2 = 0x6E6F696E75;
    if (a1 != 7)
    {
      v2 = 1752459639;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x70756F7267;
    if (a1 != 4)
    {
      v3 = 0x726564726FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DB2115B4()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB211394();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB211604()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB211394();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB211648@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB2170F8();
  *a2 = result;
  return result;
}

uint64_t sub_1DB211678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB2114B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DB2116C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB2170F8();
  *a1 = result;
  return result;
}

uint64_t sub_1DB2116E8(uint64_t a1)
{
  v2 = sub_1DB211D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB211724(uint64_t a1)
{
  v2 = sub_1DB211D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28220, &qword_1DB2C5160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v47 = *(v1 + 2);
  v48 = v10;
  v12 = *(v1 + 5);
  v45 = *(v1 + 6);
  v46 = v11;
  v13 = *(v1 + 7);
  v14 = *(v1 + 8);
  v49 = v12;
  v50 = v13;
  v15 = *(v1 + 9);
  v43 = *(v1 + 10);
  v44 = v14;
  v16 = *(v1 + 11);
  v17 = *(v1 + 12);
  v41 = v15;
  v42 = v16;
  v18 = *(v1 + 13);
  v39 = *(v1 + 14);
  v40 = v18;
  v20 = *(v1 + 15);
  v19 = *(v1 + 16);
  v37 = v17;
  v38 = v20;
  v36 = v19;
  v21 = *(v1 + 18);
  v35 = *(v1 + 17);
  v34 = v21;
  v58 = v1[152];
  v33 = v1[153];
  v32 = *(v1 + 20);
  HIDWORD(v31) = v1[168];
  v22 = *(v1 + 22);
  v23 = a1[3];
  v24 = a1[4];
  v25 = a1;
  v27 = v26;
  __swift_project_boxed_opaque_existential_1(v25, v23);
  sub_1DB211D0C();

  sub_1DB2BBA94();
  LOBYTE(v52) = v8;
  v53 = v9;
  v59 = 0;
  sub_1DB211D60();
  v28 = v51;
  sub_1DB2BB8A4();
  if (!v28)
  {
    v30 = v44;

    v52 = v47;
    v53 = v48;
    v54 = v46;
    v55 = v49;
    v56 = v45;
    v57 = v50;
    v59 = 1;
    sub_1DB20118C();

    sub_1DB2BB8A4();

    v52 = v30;
    v59 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB211DB4();
    sub_1DB2BB8A4();
    v52 = v41;
    v53 = v43;
    v54 = v42;
    v59 = 3;
    sub_1DB1757B0(v41, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB854();
    sub_1DB1718E4(v52, v53);
    v52 = v37;
    v53 = v40;
    v54 = v39;
    v55 = v38;
    v59 = 4;
    sub_1DB211E8C(v37, v40, v39);
    sub_1DB211EE4();
    sub_1DB2BB854();
    sub_1DB1755F8(v52, v53, v54);
    v52 = v36;
    v59 = 5;
    sub_1DB2018B0();

    sub_1DB2BB854();

    v52 = v35;
    v53 = v34;
    LOBYTE(v54) = v58;
    BYTE1(v54) = v33;
    v59 = 6;
    sub_1DB201904();
    sub_1DB2BB854();
    v52 = v32;
    v59 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB211F38();
    sub_1DB2BB8A4();
    LOBYTE(v52) = BYTE4(v31);
    v53 = v22;
    v59 = 8;
    sub_1DB212010();

    sub_1DB2BB8A4();
  }

  return (*(v4 + 8))(v7, v27);
}

unint64_t sub_1DB211D0C()
{
  result = qword_1EE13F500;
  if (!qword_1EE13F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F500);
  }

  return result;
}

unint64_t sub_1DB211D60()
{
  result = qword_1EE13EBE0;
  if (!qword_1EE13EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBE0);
  }

  return result;
}

unint64_t sub_1DB211DB4()
{
  result = qword_1EE13E668;
  if (!qword_1EE13E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB211E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E668);
  }

  return result;
}

unint64_t sub_1DB211E38()
{
  result = qword_1EE13EC30;
  if (!qword_1EE13EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC30);
  }

  return result;
}

uint64_t sub_1DB211E8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1DB1757B0(a2, a3);
  }

  return result;
}

unint64_t sub_1DB211EE4()
{
  result = qword_1EE13EC20;
  if (!qword_1EE13EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC20);
  }

  return result;
}

unint64_t sub_1DB211F38()
{
  result = qword_1EE13E658;
  if (!qword_1EE13E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB211FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E658);
  }

  return result;
}

unint64_t sub_1DB211FBC()
{
  result = qword_1EE13EBF0;
  if (!qword_1EE13EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBF0);
  }

  return result;
}

unint64_t sub_1DB212010()
{
  result = qword_1EE13EC80;
  if (!qword_1EE13EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC80);
  }

  return result;
}

uint64_t QueryClauses.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28238, &qword_1DB2C5178);
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v37 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v8 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 32) = 42;
  *(v8 + 40) = 0xE100000000000000;
  *(v8 + 48) = v9;
  v95 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DB211D0C();
  v12 = v7;
  sub_1DB2BBA84();
  if (v2)
  {
    v53 = 0;
    v54 = 0uLL;
    v55 = 0uLL;
    v97 = 0;
    v56 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v52);

    sub_1DB1718E4(v56, *(&v56 + 1));
    sub_1DB1755F8(v54, *(&v54 + 1), v55);
  }

  else
  {
    v49 = v4;
    LOBYTE(v57) = 0;
    sub_1DB2160C0();
    v13 = v51;
    sub_1DB2BB7B4();
    v14 = v68;
    v15 = *(&v68 + 1);

    LOBYTE(v57) = 1;
    sub_1DB201510();
    sub_1DB2BB7B4();
    v43 = v14;
    v44 = v69;
    v45 = v68;
    v47 = *(&v69 + 1);
    v48 = *(&v68 + 1);
    v16 = v70;
    v46 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28228, &qword_1DB2C5168);
    LOBYTE(v57) = 2;
    sub_1DB216114();
    sub_1DB2BB7B4();
    v41 = v16;
    v42 = v15;
    v17 = v45;
    v18 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    LOBYTE(v57) = 3;
    sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB764();
    v56 = v68;
    v97 = v69;
    sub_1DB1718E4(0, 0);
    LOBYTE(v57) = 4;
    sub_1DB2161EC();
    sub_1DB2BB764();
    v40 = v18;
    v54 = v68;
    v55 = v69;
    sub_1DB1755F8(0, 0, 0);
    LOBYTE(v57) = 5;
    sub_1DB201958();
    sub_1DB2BB764();
    v53 = v68;

    LOBYTE(v57) = 6;
    sub_1DB2019AC();
    sub_1DB2BB764();
    v38 = *(&v68 + 1);
    v39 = v68;
    HIDWORD(v37) = v69;
    v95 = BYTE1(v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28230, &qword_1DB2C5170);
    LOBYTE(v57) = 7;
    sub_1DB216240();
    sub_1DB2BB7B4();
    v19 = v68;
    v90 = 8;
    sub_1DB216318();
    sub_1DB2BB7B4();
    (*(v49 + 8))(v12, v13);
    LOBYTE(v16) = v91;
    v20 = v92;

    v21 = v43;
    LOBYTE(v57) = v43;
    *(&v57 + 1) = v42;
    *&v58 = v17;
    v22 = v48;
    *(&v58 + 1) = v48;
    *&v59 = v44;
    v23 = v46;
    *(&v59 + 1) = v47;
    *&v60 = v41;
    *(&v60 + 1) = v46;
    *v61 = v40;
    *&v61[8] = v56;
    *&v61[24] = v97;
    v62 = v54;
    v63 = v55;
    v24 = v53;
    *&v64 = v53;
    *(&v64 + 1) = v39;
    *&v65 = v38;
    BYTE8(v65) = BYTE4(v37);
    LODWORD(v51) = v95;
    BYTE9(v65) = v95;
    *&v66 = v19;
    BYTE8(v66) = v16;
    v25 = v20;
    v49 = v20;
    v67 = v20;
    v26 = *v61;
    v27 = *&v61[16];
    v28 = v55;
    v29 = v50;
    *(v50 + 96) = v54;
    *(v29 + 112) = v28;
    *(v29 + 64) = v26;
    *(v29 + 80) = v27;
    v30 = v64;
    v31 = v65;
    v32 = v66;
    *(v29 + 176) = v25;
    *(v29 + 144) = v31;
    *(v29 + 160) = v32;
    *(v29 + 128) = v30;
    v33 = v57;
    v34 = v58;
    v35 = v60;
    *(v29 + 32) = v59;
    *(v29 + 48) = v35;
    *v29 = v33;
    *(v29 + 16) = v34;
    sub_1DB1754EC(&v57, &v68);
    __swift_destroy_boxed_opaque_existential_1(v52);
    LOBYTE(v68) = v21;
    *(&v68 + 1) = v96[0];
    DWORD1(v68) = *(v96 + 3);
    *(&v68 + 1) = v42;
    *&v69 = v45;
    *(&v69 + 1) = v22;
    v70 = v44;
    v71 = v47;
    v72 = v41;
    v73 = v23;
    v74 = v40;
    v75 = v56;
    v76 = v97;
    v77 = v54;
    v78 = v55;
    v79 = v24;
    v80 = v39;
    v81 = v38;
    v82 = BYTE4(v37);
    v83 = v51;
    v85 = v94;
    v84 = *&v93[7];
    v86 = v19;
    v87 = v16;
    *&v88[3] = *&v93[3];
    *v88 = *v93;
    v89 = v49;
    return sub_1DB17181C(&v68);
  }
}

uint64_t sub_1DB212984(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6D756C6F63;
  }

  else
  {
    v4 = 0x74636E6974736964;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6D756C6F63;
  }

  else
  {
    v6 = 0x74636E6974736964;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB212A2C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB212AB0()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB212B20()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB212BAC(uint64_t *a1@<X8>)
{
  v2 = 0x74636E6974736964;
  if (*v1)
  {
    v2 = 0x736E6D756C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB212BEC()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 0x74636E6974736964;
  }

  *v0;
  return result;
}

uint64_t sub_1DB212C34(uint64_t a1)
{
  v2 = sub_1DB21636C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB212C70(uint64_t a1)
{
  v2 = sub_1DB21636C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.SelectClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28240, &qword_1DB2C5180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = *v1;
  v24 = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21636C();
  sub_1DB2BBA94();
  LOBYTE(v25[0]) = 0;
  sub_1DB2BB874();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v23 = v5;
  v12 = v24;
  v13 = *(v24 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v22 = v4;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v13, 0);
    v14 = v27;
    v15 = v12 + 32;
    do
    {
      sub_1DB164980(v15, v25);
      v27 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DB1385A0((v16 > 1), v17 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 40 * v17;
      v19 = v25[0];
      v20 = v25[1];
      *(v18 + 64) = v26;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v15 += 40;
      --v13;
    }

    while (v13);
    v4 = v22;
  }

  *&v25[0] = v14;
  LOBYTE(v27) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  sub_1DB2BB8A4();
  v21 = v23;

  return (*(v21 + 8))(v8, v4);
}

uint64_t QueryClauses.SelectClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28248, &qword_1DB2C5188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21636C();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v35[0]) = 0;
    v11 = v9;
    v12 = sub_1DB2BB784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    LOBYTE(v35[0]) = 1;
    sub_1DB216444();
    sub_1DB2BB7B4();
    v33 = v11;
    v14 = v12 & 1;
    v15 = v39;
    v16 = *(v39 + 16);
    if (v16)
    {
      v29 = v14;
      v30 = v6;
      v31 = v5;
      v32 = a2;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v16, 0);
      v17 = v38;
      v28[1] = v15;
      v18 = v15 + 32;
      do
      {
        sub_1DB164C68(v18, v34);
        sub_1DB164980(v34, v35);
        sub_1DB164BE4(v34);
        v38 = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DB1384B0((v19 > 1), v20 + 1, 1);
        }

        v21 = v36;
        v22 = v37;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        v24 = *(*(v21 - 8) + 64);
        MEMORY[0x1EEE9AC00](v23);
        v26 = v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26);
        sub_1DB16412C(v20, v26, &v38, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v17 = v38;
        v18 += 40;
        --v16;
      }

      while (v16);
      (*(v30 + 8))(v33, v31);

      a2 = v32;
      LOBYTE(v14) = v29;
    }

    else
    {

      (*(v6 + 8))(v33, v5);
      v17 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v14;
    *(a2 + 8) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2132D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7972657571;
  if (v2 != 1)
  {
    v4 = 0x6F697469646E6F63;
    v3 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7972657571;
  if (*a2 != 1)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB2133D0()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB21346C()
{
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB2134F4()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB21358C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB217144();
  *a2 = result;
  return result;
}

void sub_1DB2135BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7972657571;
  if (v2 != 1)
  {
    v5 = 0x6F697469646E6F63;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB213614()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DB213668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB217144();
  *a1 = result;
  return result;
}

uint64_t sub_1DB213690(uint64_t a1)
{
  v2 = sub_1DB2164C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2136CC(uint64_t a1)
{
  v2 = sub_1DB2164C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.JoinClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28250, &qword_1DB2C5190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2164C8();
  sub_1DB2BBA94();
  v12[0] = *v3;
  v13 = 0;
  sub_1DB21651C();
  sub_1DB2BB8A4();
  if (!v2)
  {
    sub_1DB164980((v3 + 8), v12);
    v13 = 1;
    sub_1DB201468();
    sub_1DB2BB8A4();
    sub_1DB2014BC(v12);
    sub_1DB164980((v3 + 48), v12);
    v13 = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    sub_1DB164BE4(v12);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t QueryClauses.JoinClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28268, &qword_1DB2C5198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2164C8();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1DB216570();
  sub_1DB2BB7B4();
  v13[0] = v12[0];
  v16 = 1;
  sub_1DB201798();
  sub_1DB2BB7B4();
  sub_1DB1355D0(v12, &v14);
  v16 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  sub_1DB1355D0(v12, &v15);
  sub_1DB175548(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB1755A4(v13);
}

uint64_t sub_1DB213B7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E69766168;
  }

  else
  {
    v4 = 31074;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E69766168;
  }

  else
  {
    v6 = 31074;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB213C14()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB213C88()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB213CE8()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB213D64(uint64_t *a1@<X8>)
{
  v2 = 31074;
  if (*v1)
  {
    v2 = 0x676E69766168;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB213D94()
{
  if (*v0)
  {
    result = 0x676E69766168;
  }

  else
  {
    result = 31074;
  }

  *v0;
  return result;
}

uint64_t sub_1DB213DCC(uint64_t a1)
{
  v2 = sub_1DB2165C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB213E08(uint64_t a1)
{
  v2 = sub_1DB2165C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.GroupClause.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28278, &qword_1DB2C51A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v23 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2165C4();
  sub_1DB2BBA94();
  v12 = *(v9 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v22 = v4;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v12, 0);
    v13 = v30;
    v14 = v9 + 32;
    do
    {
      sub_1DB164980(v14, &v27);
      v30 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DB1385A0((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 40 * v16;
      v18 = v27;
      v19 = v28;
      *(v17 + 64) = v29;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v14 += 40;
      --v12;
    }

    while (v12);
    v4 = v22;
  }

  *&v27 = v13;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  v20 = v26;
  sub_1DB2BB8A4();

  if (!v20)
  {
    *&v27 = v25;
    *(&v27 + 1) = v24;
    *&v28 = v23;
    LOBYTE(v30) = 1;
    sub_1DB1757B0(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB1688F0(&qword_1EE13F5B8, &qword_1ECC27E20, &qword_1DB2C3AF0);
    sub_1DB2BB854();
    sub_1DB1718E4(v27, *(&v27 + 1));
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t QueryClauses.GroupClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28288, &qword_1DB2C51A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2165C4();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  LOBYTE(v35[0]) = 0;
  sub_1DB216444();
  sub_1DB2BB7B4();
  v32 = v9;
  v33 = v6;
  v12 = v39;
  v13 = *(v39 + 16);
  if (v13)
  {
    v30 = v5;
    v31 = a2;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v13, 0);
    v14 = v38;
    v29 = v12;
    v15 = v12 + 32;
    do
    {
      sub_1DB164C68(v15, v34);
      sub_1DB164980(v34, v35);
      sub_1DB164BE4(v34);
      v38 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DB1384B0((v16 > 1), v17 + 1, 1);
      }

      v18 = v36;
      v19 = v37;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v21 = *(*(v18 - 8) + 64);
      MEMORY[0x1EEE9AC00](v20);
      v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_1DB16412C(v17, v23, &v38, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v14 = v38;
      v15 += 40;
      --v13;
    }

    while (v13);

    v5 = v30;
    a2 = v31;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v34[0] = 1;
  sub_1DB1688F0(&qword_1EE13EF58, &qword_1ECC27E20, &qword_1DB2C3AF0);
  v25 = v32;
  sub_1DB2BB764();
  (*(v33 + 8))(v25, v5);
  v26 = v35[0];
  v27 = v35[1];
  v28 = v35[2];
  *a2 = v14;
  a2[1] = v26;
  a2[2] = v27;
  a2[3] = v28;

  sub_1DB1757B0(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1DB1718E4(v26, v27);
}

uint64_t sub_1DB214538()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB21458C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2145D0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DB214640@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB2BB6F4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB214698(uint64_t a1)
{
  v2 = sub_1DB216618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2146D4(uint64_t a1)
{
  v2 = sub_1DB216618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.OrderClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28290, &qword_1DB2C51B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB216618();
  sub_1DB2BBA94();
  v11 = *(v9 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20[1] = v2;
    v21 = v4;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DB1385A0(0, v11, 0);
    v12 = v24;
    v13 = v9 + 32;
    do
    {
      sub_1DB164980(v13, v22);
      v24 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB1385A0((v14 > 1), v15 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 40 * v15;
      v17 = v22[0];
      v18 = v22[1];
      *(v16 + 64) = v23;
      *(v16 + 32) = v17;
      *(v16 + 48) = v18;
      v13 += 40;
      --v11;
    }

    while (v11);
    v4 = v21;
  }

  *&v22[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  sub_1DB2163C0();
  sub_1DB2BB8A4();

  return (*(v5 + 8))(v8, v4);
}

uint64_t QueryClauses.OrderClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282A0, &qword_1DB2C51B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB216618();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB216444();
    sub_1DB2BB7B4();
    v11 = v35;
    v12 = *(v35 + 16);
    if (v12)
    {
      v26 = v9;
      v27 = v6;
      v28 = v5;
      v29 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v12, 0);
      v13 = v34;
      v25 = v11;
      v14 = v11 + 32;
      do
      {
        sub_1DB164C68(v14, v30);
        sub_1DB164980(v30, v31);
        sub_1DB164BE4(v30);
        v34 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1DB1384B0((v15 > 1), v16 + 1, 1);
        }

        v17 = v32;
        v18 = v33;
        v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        v20 = *(*(v17 - 8) + 64);
        MEMORY[0x1EEE9AC00](v19);
        v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v22);
        sub_1DB16412C(v16, v22, &v34, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(v31);
        v13 = v34;
        v14 += 40;
        --v12;
      }

      while (v12);
      (*(v27 + 8))(v26, v28);

      a2 = v29;
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      v13 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB214C88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C626174;
  }

  else
  {
    v4 = 7105633;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C626174;
  }

  else
  {
    v6 = 7105633;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB214D24()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB214D9C()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB214E00()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB214E80@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

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

void sub_1DB214EDC(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x656C626174;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB214F10()
{
  if (*v0)
  {
    result = 0x656C626174;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_1DB214F4C@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB2BB6F4();

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

uint64_t sub_1DB214FAC(uint64_t a1)
{
  v2 = sub_1DB21666C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB214FE8(uint64_t a1)
{
  v2 = sub_1DB21666C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.UnionClause.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282A8, &qword_1DB2C51C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21666C();
  sub_1DB2BBA94();
  v11 = *v3;
  v14[0] = 0;
  sub_1DB2BB874();
  if (!v2)
  {
    sub_1DB164980((v3 + 8), v14);
    v13[7] = 1;
    sub_1DB201468();
    sub_1DB2BB8A4();
    sub_1DB2014BC(v14);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t QueryClauses.UnionClause.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282B8, &qword_1DB2C51C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB21666C();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    LOBYTE(v15[0]) = sub_1DB2BB784() & 1;
    v16 = 1;
    sub_1DB201798();
    sub_1DB2BB7B4();
    (*(v6 + 8))(v9, v5);
    sub_1DB1355D0(&v14, v15 + 8);
    v11 = v15[1];
    *a2 = v15[0];
    a2[1] = v11;
    a2[2] = v15[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2153C0()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB215474()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB215514()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2155C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB217190();
  *a2 = result;
  return result;
}

void sub_1DB2155F4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7361696C61;
  v4 = 0xE400000000000000;
  v5 = 1953393000;
  if (*v1 != 2)
  {
    v5 = 0x7972657571;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6D756C6F63;
    v2 = 0xE700000000000000;
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

uint64_t sub_1DB215664()
{
  v1 = 0x7361696C61;
  v2 = 1953393000;
  if (*v0 != 2)
  {
    v2 = 0x7972657571;
  }

  if (*v0)
  {
    v1 = 0x736E6D756C6F63;
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

uint64_t sub_1DB2156D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB217190();
  *a1 = result;
  return result;
}

uint64_t sub_1DB2156F8(uint64_t a1)
{
  v2 = sub_1DB2166C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB215734(uint64_t a1)
{
  v2 = sub_1DB2166C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WithClauses.Clause.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282C0, &qword_1DB2C51D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2166C0();
  sub_1DB2BBA94();
  v12 = v4[9];
  v13 = v4[7];
  v71 = v4[8];
  v72 = v12;
  v14 = v4[9];
  v73 = v4[10];
  v15 = v4[5];
  v16 = v4[3];
  v67 = v4[4];
  v68 = v15;
  v17 = v4[5];
  v18 = v4[7];
  v69 = v4[6];
  v70 = v18;
  v19 = v4[1];
  v64[0] = *v4;
  v64[1] = v19;
  v20 = v4[3];
  v22 = *v4;
  v21 = v4[1];
  v65 = v4[2];
  v66 = v20;
  v60 = v71;
  v61 = v14;
  v62 = v4[10];
  v56 = v67;
  v57 = v17;
  v58 = v69;
  v59 = v13;
  v52 = v22;
  v53 = v21;
  v74 = *(v4 + 22);
  v63 = *(v4 + 22);
  v54 = v65;
  v55 = v16;
  v75 = 0;
  sub_1DB175954(v64, &v40);
  sub_1DB216714();
  sub_1DB2BB8A4();
  if (v2)
  {
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    sub_1DB1759B0(&v40);
  }

  else
  {
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    sub_1DB1759B0(&v40);
    v23 = *(v4 + 23);
    if (v23)
    {
      v36 = v10;
      v24 = *(v23 + 16);
      v25 = MEMORY[0x1E69E7CC0];
      if (v24)
      {
        v33 = 0;
        v34 = v7;
        v35 = v6;
        v37 = MEMORY[0x1E69E7CC0];
        sub_1DB1385A0(0, v24, 0);
        v25 = v37;
        v26 = v23 + 32;
        do
        {
          sub_1DB164980(v26, v38);
          v37 = v25;
          v28 = *(v25 + 16);
          v27 = *(v25 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1DB1385A0((v27 > 1), v28 + 1, 1);
            v25 = v37;
          }

          *(v25 + 16) = v28 + 1;
          v29 = v25 + 40 * v28;
          v30 = v38[0];
          v31 = v38[1];
          *(v29 + 64) = v39;
          *(v29 + 32) = v30;
          *(v29 + 48) = v31;
          v26 += 40;
          --v24;
        }

        while (v24);
        v7 = v34;
        v6 = v35;
        v3 = v33;
      }

      v10 = v36;
    }

    else
    {
      v25 = 0;
    }

    *&v38[0] = v25;
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB2163C0();
    sub_1DB2BB854();

    if (!v3)
    {
      LOBYTE(v38[0]) = *(v4 + 192);
      LOBYTE(v37) = 2;
      sub_1DB216768();
      sub_1DB2BB854();
      sub_1DB164980(v4 + 200, v38);
      LOBYTE(v37) = 3;
      sub_1DB201468();
      sub_1DB2BB8A4();
      sub_1DB2014BC(v38);
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t WithClauses.Clause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC282D8, &qword_1DB2C51D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v75 = 2;
  v11 = a1[3];
  v12 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB2166C0();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v49 = 0;
  sub_1DB16889C();
  sub_1DB2BB7B4();
  v13 = v10;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC278D0, &qword_1DB2C18D0);
  LOBYTE(v36) = 1;
  sub_1DB216444();
  sub_1DB2BB764();
  v15 = v48;
  v33 = v7;
  if (v48)
  {
    v32 = v6;
    v16 = *(v48 + 16);
    if (v16)
    {
      v29 = v13;
      v30 = a2;
      v31 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v16, 0);
      v17 = v35;
      v18 = v15 + 32;
      do
      {
        sub_1DB164C68(v18, v34);
        sub_1DB164980(v34, &v36);
        sub_1DB164BE4(v34);
        v35 = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DB1384B0((v19 > 1), v20 + 1, 1);
        }

        v21 = *(&v37 + 1);
        v22 = v38;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        v24 = *(*(v21 - 8) + 64);
        MEMORY[0x1EEE9AC00](v23);
        v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26);
        sub_1DB16412C(v20, v26, &v35, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(&v36);
        v17 = v35;
        v18 += 40;
        --v16;
      }

      while (v16);

      a2 = v30;
      v3 = v31;
      v6 = v32;
      v13 = v29;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
      v6 = v32;
    }
  }

  else
  {
    v17 = 0;
  }

  v74 = v17;
  v34[0] = 2;
  sub_1DB2167BC();
  sub_1DB2BB764();
  if (v3)
  {
    (*(v33 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v44 = v70;
    v45 = v71;
    v46 = v72;
    v47 = v73;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v43 = v69;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v39 = v65;
    sub_1DB1759B0(&v36);
  }

  else
  {
    v75 = v36;
    v34[0] = 3;
    sub_1DB201798();
    sub_1DB2BB7B4();
    (*(v33 + 8))(v13, v6);
    sub_1DB1355D0(&v36, &v76);
    sub_1DB175700(&v62, a2);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return sub_1DB17575C(&v62);
  }
}

unint64_t sub_1DB2160C0()
{
  result = qword_1EE13EBD8;
  if (!qword_1EE13EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBD8);
  }

  return result;
}

unint64_t sub_1DB216114()
{
  result = qword_1EE13E660;
  if (!qword_1EE13E660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28228, &qword_1DB2C5168);
    sub_1DB216198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E660);
  }

  return result;
}

unint64_t sub_1DB216198()
{
  result = qword_1EE13EC28;
  if (!qword_1EE13EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC28);
  }

  return result;
}

unint64_t sub_1DB2161EC()
{
  result = qword_1EE13EC18;
  if (!qword_1EE13EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC18);
  }

  return result;
}

unint64_t sub_1DB216240()
{
  result = qword_1EE13E650;
  if (!qword_1EE13E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28230, &qword_1DB2C5170);
    sub_1DB2162C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E650);
  }

  return result;
}

unint64_t sub_1DB2162C4()
{
  result = qword_1EE13EBE8;
  if (!qword_1EE13EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EBE8);
  }

  return result;
}

unint64_t sub_1DB216318()
{
  result = qword_1EE13EC78;
  if (!qword_1EE13EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC78);
  }

  return result;
}

unint64_t sub_1DB21636C()
{
  result = qword_1EE13F4E0;
  if (!qword_1EE13F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4E0);
  }

  return result;
}

unint64_t sub_1DB2163C0()
{
  result = qword_1EE13E648;
  if (!qword_1EE13E648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB164B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E648);
  }

  return result;
}

unint64_t sub_1DB216444()
{
  result = qword_1EE13E640;
  if (!qword_1EE13E640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC278D0, &qword_1DB2C18D0);
    sub_1DB164A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E640);
  }

  return result;
}

unint64_t sub_1DB2164C8()
{
  result = qword_1ECC28258;
  if (!qword_1ECC28258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28258);
  }

  return result;
}

unint64_t sub_1DB21651C()
{
  result = qword_1ECC28260;
  if (!qword_1ECC28260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28260);
  }

  return result;
}

unint64_t sub_1DB216570()
{
  result = qword_1ECC28270;
  if (!qword_1ECC28270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28270);
  }

  return result;
}

unint64_t sub_1DB2165C4()
{
  result = qword_1ECC28280;
  if (!qword_1ECC28280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28280);
  }

  return result;
}

unint64_t sub_1DB216618()
{
  result = qword_1ECC28298;
  if (!qword_1ECC28298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28298);
  }

  return result;
}

unint64_t sub_1DB21666C()
{
  result = qword_1ECC282B0;
  if (!qword_1ECC282B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282B0);
  }

  return result;
}

unint64_t sub_1DB2166C0()
{
  result = qword_1ECC282C8;
  if (!qword_1ECC282C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282C8);
  }

  return result;
}

unint64_t sub_1DB216714()
{
  result = qword_1EE13F748;
  if (!qword_1EE13F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F748);
  }

  return result;
}

unint64_t sub_1DB216768()
{
  result = qword_1ECC282D0;
  if (!qword_1ECC282D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282D0);
  }

  return result;
}

unint64_t sub_1DB2167BC()
{
  result = qword_1ECC282E0;
  if (!qword_1ECC282E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282E0);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB2169C4()
{
  result = qword_1ECC282E8;
  if (!qword_1ECC282E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282E8);
  }

  return result;
}

unint64_t sub_1DB216A1C()
{
  result = qword_1ECC282F0;
  if (!qword_1ECC282F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282F0);
  }

  return result;
}

unint64_t sub_1DB216A74()
{
  result = qword_1ECC282F8;
  if (!qword_1ECC282F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC282F8);
  }

  return result;
}

unint64_t sub_1DB216ACC()
{
  result = qword_1ECC28300;
  if (!qword_1ECC28300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28300);
  }

  return result;
}

unint64_t sub_1DB216B24()
{
  result = qword_1ECC28308;
  if (!qword_1ECC28308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28308);
  }

  return result;
}

unint64_t sub_1DB216B7C()
{
  result = qword_1ECC28310;
  if (!qword_1ECC28310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28310);
  }

  return result;
}

unint64_t sub_1DB216BD4()
{
  result = qword_1ECC28318;
  if (!qword_1ECC28318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28318);
  }

  return result;
}

unint64_t sub_1DB216C2C()
{
  result = qword_1ECC28320;
  if (!qword_1ECC28320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28320);
  }

  return result;
}

unint64_t sub_1DB216C84()
{
  result = qword_1ECC28328;
  if (!qword_1ECC28328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28328);
  }

  return result;
}

unint64_t sub_1DB216CDC()
{
  result = qword_1ECC28330;
  if (!qword_1ECC28330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28330);
  }

  return result;
}

unint64_t sub_1DB216D34()
{
  result = qword_1ECC28338;
  if (!qword_1ECC28338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28338);
  }

  return result;
}

unint64_t sub_1DB216D8C()
{
  result = qword_1ECC28340;
  if (!qword_1ECC28340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28340);
  }

  return result;
}

unint64_t sub_1DB216DE4()
{
  result = qword_1ECC28348;
  if (!qword_1ECC28348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28348);
  }

  return result;
}

unint64_t sub_1DB216E3C()
{
  result = qword_1ECC28350;
  if (!qword_1ECC28350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28350);
  }

  return result;
}

unint64_t sub_1DB216E94()
{
  result = qword_1ECC28358;
  if (!qword_1ECC28358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28358);
  }

  return result;
}

unint64_t sub_1DB216EEC()
{
  result = qword_1ECC28360;
  if (!qword_1ECC28360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28360);
  }

  return result;
}

unint64_t sub_1DB216F44()
{
  result = qword_1ECC28368;
  if (!qword_1ECC28368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28368);
  }

  return result;
}

unint64_t sub_1DB216F9C()
{
  result = qword_1EE13F4D0;
  if (!qword_1EE13F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4D0);
  }

  return result;
}

unint64_t sub_1DB216FF4()
{
  result = qword_1EE13F4D8;
  if (!qword_1EE13F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4D8);
  }

  return result;
}

unint64_t sub_1DB21704C()
{
  result = qword_1EE13F4F0;
  if (!qword_1EE13F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4F0);
  }

  return result;
}

unint64_t sub_1DB2170A4()
{
  result = qword_1EE13F4F8;
  if (!qword_1EE13F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4F8);
  }

  return result;
}

uint64_t sub_1DB2170F8()
{
  v0 = sub_1DB2BB6F4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB217144()
{
  v0 = sub_1DB2BB6F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB217190()
{
  v0 = sub_1DB2BB6F4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t QueryType.name.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4);
  v2 = v4[2];

  sub_1DB17181C(v4);

  return v2;
}

uint64_t QueryType.database.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4);
  v2 = v4[6];

  sub_1DB17181C(v4);

  return v2;
}

Swift::String __swiftcall QueryType.qualifiedName(quoted:)(Swift::Bool quoted)
{
  v3 = v2;
  v4 = v1;
  v6 = QueryType.database.getter(v1, v2);
  if (v7)
  {
    if (quoted)
    {
      v8 = sub_1DB2B995C(34, 0xE100000000000000);
      v10 = v9;

      v21 = v8;
      v22 = v10;
      MEMORY[0x1E1283490](46, 0xE100000000000000);
      QueryType.name.getter(v4, v3);
      v11 = sub_1DB2B995C(34, 0xE100000000000000);
      v13 = v12;

      MEMORY[0x1E1283490](v11, v13);
    }

    else
    {
      v21 = v6;
      v22 = v7;
      MEMORY[0x1E1283490](46, 0xE100000000000000);
      v19 = QueryType.name.getter(v4, v3);
      MEMORY[0x1E1283490](v19);
    }

    v14 = v21;
    v15 = v22;
  }

  else
  {
    v14 = QueryType.name.getter(v4, v3);
    if (quoted)
    {
      v16 = sub_1DB2B995C(34, 0xE100000000000000);
      v18 = v17;

      v14 = v16;
      v15 = v18;
    }
  }

  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1DB217454()
{
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v15 = *(v0 + 48);
  sub_1DB2BB4F4();

  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v2 = ClientError.errorDescription.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000014;
    v4 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v2, v4);

  v5 = ClientError.failureReason.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v7, v8);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  if (v15 == 4)
  {
    MEMORY[0x1E1283490](0x1000000000000055, 0x80000001DB2D4A10);
  }

  sub_1DB14A00C();
  v9 = sub_1DB2BA734();
  if (v10)
  {
    MEMORY[0x1E1283490](v9);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217684()
{
  v16 = *v0;
  v17 = v0[1];
  v18 = *(v0 + 32);
  sub_1DB2BB4F4();

  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v2 = DaemonError.errorDescription.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000014;
    v4 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v2, v4);

  sub_1DB151D04();
  v5 = sub_1DB2BA744();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v7, v8);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v9 = sub_1DB2BA764();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v11, v12);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v13 = sub_1DB2BA734();
  if (v14)
  {
    MEMORY[0x1E1283490](v13);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217A2C()
{
  sub_1DB2BB4F4();

  v9 = *v0;
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  if (v0[2])
  {
    v2 = v0[1];
    v3 = v0[2];
  }

  else
  {
    v3 = 0x80000001DB2D1750;
    v2 = 0xD000000000000014;
  }

  MEMORY[0x1E1283490](v2, v3);

  v4 = v0[4];
  if (v4)
  {
    v5 = v0[3];
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v5, v4);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v6 = v0[6];
  if (v6)
  {
    v7 = v0[5];
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v7, v6);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  if (v0[8])
  {
    MEMORY[0x1E1283490](v0[7]);
    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217C60()
{
  v1 = *(v0 + 48);
  v17 = *v0;
  v18 = v0[1];
  v19 = v0[2];
  v20 = *(v0 + 48);
  sub_1DB2BB4F4();

  v2 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v2);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v3 = sub_1DB1592D4();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0xD000000000000014;
    v5 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v3, v5);

  sub_1DB15AFA0();
  v6 = sub_1DB2BA744();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v8, v9);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v10 = sub_1DB2BA764();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v12, v13);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v14 = sub_1DB2BA734();
  if (v15)
  {
    MEMORY[0x1E1283490](v14);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB217EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DB2BB4F4();

  v8 = a3;
  v9 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v9);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v10 = sub_1DB2189C0(a1, a2, a3, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0xD000000000000014;
    v12 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v10, v12);

  if (a3 == 10)
  {
    v13 = "et (Different user DSID?)";
    v14 = 0xD000000000000041;
    goto LABEL_8;
  }

  if (a3 == 14)
  {
    v14 = 0xD000000000000049;
LABEL_8:
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v14, v13 | 0x8000000000000000);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);

    if (v8 == 10)
    {
      v15 = "ser account (DSID)";
      v16 = 0xD000000000000038;
    }

    else
    {
      v15 = " BETWEEN ? AND ?";
      v16 = 0xD000000000000072;
    }

    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v16, v15 | 0x8000000000000000);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  sub_1DB218FD8();
  v17 = sub_1DB2BA734();
  if (v18)
  {
    MEMORY[0x1E1283490](v17);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB2181D4()
{
  sub_1DB2BB4F4();

  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v1 = AccessCredential.Error.errorDescription.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0xD000000000000014;
    v3 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v1, v3);

  sub_1DB219160();
  v4 = sub_1DB2BA744();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v6, v7);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v8 = sub_1DB2BA764();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v12 = sub_1DB2BA734();
  if (v13)
  {
    MEMORY[0x1E1283490](v12);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

uint64_t sub_1DB218528(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1DB2BB4F4();

  if (a3 > 8u)
  {
    v5 = qword_1DB2C5DA8[a1];
  }

  v6 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v7 = JWT.Error.errorDescription.getter();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0xD000000000000014;
    v9 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v7, v9);

  if (a3 <= 8u && ((1 << a3) & 0x184) != 0)
  {
    sub_1DB219128(a1, a2, a3);
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](a1, a2);
    sub_1DB219144(a1, a2, a3);
    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  sub_1DB2190D4();
  v10 = sub_1DB2BA764();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v12, v13);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v14 = sub_1DB2BA734();
  if (v15)
  {
    MEMORY[0x1E1283490](v14);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}

unint64_t sub_1DB21886C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 == 14)
  {
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v2 = 0;
    v4 = 0x80000001DB2D4AD0;
    v9 = 0x80000001DB2D4AF0;
    v5 = 0x80000001DB2D4B10;
    v7 = 0xD000000000000014;
    v6 = 0xD00000000000001CLL;
    result = 0xD00000000000008DLL;
  }

  else
  {
    v2 = 0x80000001DB2D4AA0;
    v3 = 0xD00000000000002DLL;
    v4 = 0xE800000000000000;
    v5 = 0x80000001DB2D4BA0;
    v6 = 0x4F2F49206B736944;
    v7 = 0x4F496B736964;
    v8 = a1 == 10;
    if (a1 == 10)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x726F7272456C7173;
    }

    if (a1 == 10)
    {
      v9 = 0xEE00726F72726520;
    }

    else
    {
      v6 = 0xD000000000000025;
      v9 = 0x80000001DB2D4A70;
    }

    if (a1 == 10)
    {
      result = 0xD000000000000060;
    }

    else
    {
      result = 0;
    }

    if (v8)
    {
      v11 = 0xD000000000000034;
    }

    else
    {
      v5 = 0;
      v11 = 0;
    }

    if (v8)
    {
      v12 = 0x80000001DB2D4C10;
    }

    else
    {
      v12 = 0;
    }

    if (v8)
    {
      v3 = 0xD000000000000060;
    }

    if (v8)
    {
      v2 = 0x80000001DB2D4C50;
    }
  }

  *a2 = v7;
  a2[1] = v4;
  a2[2] = 5001555;
  a2[3] = 0xE300000000000000;
  a2[4] = v6;
  a2[5] = v9;
  a2[6] = result;
  a2[7] = v5;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v3;
  a2[11] = v2;
  return result;
}

const char *sub_1DB2189C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 14)
  {
    sub_1DB2BB4F4();

    v22 = 0xD00000000000001ALL;
    if (a4)
    {

      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](a1, a2);
      MEMORY[0x1E1283490](10272, 0xE200000000000000);
      v7 = *(a4 + 16);
      os_unfair_lock_lock((v7 + 24));
      result = sqlite3_sql(*(v7 + 16));
      if (result)
      {
LABEL_8:
        v9 = sub_1DB2BAF04();
        v11 = v10;
        os_unfair_lock_unlock((v7 + 24));
        MEMORY[0x1E1283490](v9, v11);

        MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D49A0);
        v12 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v12);

        MEMORY[0x1E1283490](41, 0xE100000000000000);

LABEL_13:
        MEMORY[0x1E1283490](0, 0xE000000000000000);

        v19 = 10542;
        v20 = 0xE200000000000000;
LABEL_14:
        MEMORY[0x1E1283490](v19, v20);
        return v22;
      }

      goto LABEL_18;
    }

LABEL_12:
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](a1, a2);
    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D4980);
    v18 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v18);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    goto LABEL_13;
  }

  if (a3 == 10)
  {
    sub_1DB2BB4F4();

    v22 = 0xD00000000000002BLL;
    if (a4)
    {

      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](a1, a2);
      MEMORY[0x1E1283490](10272, 0xE200000000000000);
      v7 = *(a4 + 16);
      os_unfair_lock_lock((v7 + 24));
      result = sqlite3_sql(*(v7 + 16));
      if (result)
      {
        goto LABEL_8;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    v22 = 0;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](a1, a2);
    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D4980);
    v21 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v21);

    v19 = 41;
    v20 = 0xE100000000000000;
    goto LABEL_14;
  }

  v22 = 0;

  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](10272, 0xE200000000000000);
  v13 = *(a4 + 16);
  os_unfair_lock_lock((v13 + 24));
  result = sqlite3_sql(*(v13 + 16));
  if (result)
  {
    v14 = sub_1DB2BAF04();
    v16 = v15;
    os_unfair_lock_unlock((v13 + 24));
    MEMORY[0x1E1283490](v14, v16);

    MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D49A0);
    v17 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v17);

    MEMORY[0x1E1283490](41, 0xE100000000000000);

    return v22;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1DB218EDC()
{
  v1 = *(v0 + 16);
  v2 = 0xD000000000000041;
  if (v1 != 10)
  {
    v2 = 0;
  }

  if (v1 == 14)
  {
    return 0xD000000000000049;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB218F30()
{
  v1 = *(v0 + 16);
  v2 = 0xD000000000000038;
  if (v1 != 10)
  {
    v2 = 0;
  }

  if (v1 == 14)
  {
    return 0xD000000000000072;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB218FA0(void *a1)
{
  a1[1] = sub_1DB218FD8();
  a1[2] = sub_1DB21902C();
  result = sub_1DB219080();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB218FD8()
{
  result = qword_1EE13E858;
  if (!qword_1EE13E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E858);
  }

  return result;
}

unint64_t sub_1DB21902C()
{
  result = qword_1EE13E848;
  if (!qword_1EE13E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E848);
  }

  return result;
}

unint64_t sub_1DB219080()
{
  result = qword_1EE13E850;
  if (!qword_1EE13E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E850);
  }

  return result;
}

unint64_t sub_1DB2190D4()
{
  result = qword_1ECC28370;
  if (!qword_1ECC28370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28370);
  }

  return result;
}

uint64_t sub_1DB219128(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 7)
  {
  }

  return result;
}

uint64_t sub_1DB219144(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 7)
  {
  }

  return result;
}

unint64_t sub_1DB219160()
{
  result = qword_1ECC28378;
  if (!qword_1ECC28378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28378);
  }

  return result;
}

uint64_t TableBuilder.column(_:datatype:isPrimaryKey:isUnique:isNullable:defaultValue:)(void *a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, uint64_t a7)
{
  v9 = a6;
  v10 = a5;
  if (a4 & 1) != 0 && ((a6 | a5))
  {
    if (a6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = Expressible.columnName.getter(v15, v16);
    v19 = v18;
    sub_1DB135B68();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = v14;
    return swift_willThrow();
  }

  else
  {
    v71[0] = a7;
    v71[1] = v8;
    v72 = v7;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    memset(v84, 0, sizeof(v84));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
    v23 = swift_allocObject();
    sub_1DB164980(a1, v23 + 32);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v23 + 96) = v24;
    v25 = sub_1DB219960();
    v26 = 0uLL;
    v27 = v25;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(v23 + 104) = v25;
    *(v23 + 72) = a2;
    *(v23 + 80) = a3;
    v31 = MEMORY[0x1E69E7CC0];
    *(v23 + 88) = MEMORY[0x1E69E7CC0];
    if (a4)
    {
      v26 = xmmword_1DB2C5DD0;
      v30 = MEMORY[0x1E69E7CC0];
      v28 = v24;
      v29 = v25;
    }

    *(v23 + 136) = v28;
    *(v23 + 144) = v29;
    *(v23 + 112) = v26;
    *(v23 + 128) = v30;
    if (v9)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      v33 = 0xE800000000000000;
      v32 = 0x4C4C554E20544F4ELL;
      v35 = v24;
      v36 = v25;
    }

    *(v23 + 152) = v32;
    *(v23 + 160) = v33;
    *(v23 + 168) = v34;
    *(v23 + 176) = v35;
    *(v23 + 184) = v36;
    if (v10)
    {
      v37 = xmmword_1DB2C5DE0;
      v38 = MEMORY[0x1E69E7CC0];
      v39 = v24;
      v40 = v25;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v37 = 0uLL;
    }

    *(v23 + 216) = v39;
    *(v23 + 224) = v40;
    *(v23 + 192) = v37;
    *(v23 + 208) = v38;
    sub_1DB1446A4(v85, &v79, &qword_1ECC27898, &unk_1DB2CCD00);
    v73 = v23;
    if (*(&v80 + 1))
    {
      sub_1DB1355D0(&v79, &v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v41 = v23;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      *(inited + 56) = v24;
      *(inited + 64) = v27;
      *(inited + 32) = 0x4B43454843;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v31;
      sub_1DB164980(&v74, inited + 72);

      sub_1DB2B9A70(inited, (v41 + 232));
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(&v74);
    }

    else
    {
      *(v23 + 264) = 0;
      *(v23 + 248) = 0u;
      *(v23 + 232) = 0u;
    }

    sub_1DB1446A4(v71[0], &v79, &qword_1ECC27898, &unk_1DB2CCD00);
    if (*(&v80 + 1))
    {
      sub_1DB1355D0(&v79, &v74);
      v43 = v73;
      v73[37] = v24;
      v43[38] = v27;
      sub_1DB203564(&v74, 0x20544C5541464544, 0xE800000000000000);
      __swift_destroy_boxed_opaque_existential_1(&v74);
    }

    else
    {
      v43 = v73;
      v73[38] = 0;
      *(v43 + 17) = 0u;
      *(v43 + 18) = 0u;
    }

    v44 = v43 + 39;
    sub_1DB1446A4(v84, &v79, &qword_1ECC28380, &qword_1DB2C5DF0);
    if (*(&v80 + 1))
    {
      v76[0] = v81;
      v76[1] = v82;
      v76[2] = v83;
      v74 = v79;
      v75 = v80;
      sub_1DB2B3DEC(&v74, v76 + 8, v44);
      sub_1DB1445E0(&v74, &qword_1ECC28388, &qword_1DB2D0EA0);
    }

    else
    {
      v44[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
    }

    v45 = v73;
    v73[48] = 0;
    v46 = MEMORY[0x1E69E7CC0];
    *(v45 + 22) = 0u;
    *(v45 + 23) = 0u;
    for (i = 4; i != 49; i += 5)
    {
      sub_1DB1446A4(&v45[i], &v79, &qword_1ECC27898, &unk_1DB2CCD00);
      v77[0] = v79;
      v77[1] = v80;
      v78 = v81;
      if (*(&v80 + 1))
      {
        sub_1DB1355D0(v77, &v74);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_1DB1573FC(0, v46[2] + 1, 1, v46);
          v87 = v46;
        }

        v50 = v46[2];
        v49 = v46[3];
        if (v50 >= v49 >> 1)
        {
          v46 = sub_1DB1573FC((v49 > 1), v50 + 1, 1, v46);
          v87 = v46;
        }

        v51 = *(&v75 + 1);
        v52 = *&v76[0];
        v53 = __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        v54 = *(*(v51 - 8) + 64);
        MEMORY[0x1EEE9AC00](v53);
        v56 = v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56);
        sub_1DB200A54(v50, v56, &v87, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v45 = v73;
      }

      else
      {
        sub_1DB1445E0(v77, &qword_1ECC27898, &unk_1DB2CCD00);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1DB2B9A70(v46, &v79);

    v58 = v72;
    swift_beginAccess();
    v59 = *(v58 + 16);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 16) = v59;
    if ((v60 & 1) == 0)
    {
      v59 = sub_1DB1573FC(0, v59[2] + 1, 1, v59);
      *(v58 + 16) = v59;
    }

    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = sub_1DB1573FC((v61 > 1), v62 + 1, 1, v59);
      *(v58 + 16) = v59;
    }

    v63 = *(&v80 + 1);
    v64 = v81;
    v65 = __swift_mutable_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v66 = *(*(v63 - 8) + 64);
    MEMORY[0x1EEE9AC00](v65);
    v68 = v71 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v68);
    v70 = v72;
    sub_1DB200A54(v62, v68, (v72 + 16), v63, v64);
    __swift_destroy_boxed_opaque_existential_1(&v79);
    *(v70 + 16) = v59;
    swift_endAccess();
    sub_1DB1445E0(v84, &qword_1ECC28380, &qword_1DB2C5DF0);
    return sub_1DB1445E0(v85, &qword_1ECC27898, &unk_1DB2CCD00);
  }
}

unint64_t sub_1DB219960()
{
  result = qword_1EE1400B8;
  if (!qword_1EE1400B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1400B8);
  }

  return result;
}

uint64_t Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v49 = a7;
  v12 = v7[9];
  v73 = v7[8];
  v74 = v12;
  v75 = v7[10];
  v76 = *(v7 + 22);
  v13 = v7[5];
  v69 = v7[4];
  v70 = v13;
  v14 = v7[7];
  v71 = v7[6];
  v72 = v14;
  v15 = v7[1];
  v65 = *v7;
  v66 = v15;
  v16 = v7[3];
  v67 = v7[2];
  v68 = v16;
  v64[3] = MEMORY[0x1E69E6158];
  v64[4] = &protocol witness table for String;
  v64[0] = a1;
  v64[1] = a2;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  memset(v61, 0, sizeof(v61));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v17 = swift_allocObject();
  sub_1DB164980(v64, v17 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v17 + 96) = v18;
  v19 = sub_1DB219960();
  v20 = 0uLL;
  v21 = v19;
  *(v17 + 104) = v19;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;
  v22 = MEMORY[0x1E69E7CC0];
  *(v17 + 88) = MEMORY[0x1E69E7CC0];
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  v50 = v17;
  *(v17 + 144) = 0;
  if (a5)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = 0xE800000000000000;
    v23 = 0x4C4C554E20544F4ELL;
    v26 = v18;
    v27 = v19;
  }

  v28 = v50;
  v50[19] = v23;
  v28[20] = v24;
  v28[21] = v25;
  v28[22] = v26;
  v28[23] = v27;
  if (a6)
  {
    v20 = xmmword_1DB2C5DE0;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v18;
    v31 = v19;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
  }

  v32 = v50;
  v50[27] = v30;
  v32[28] = v31;
  *(v32 + 12) = v20;
  v32[26] = v29;
  sub_1DB1446A4(v62, &v56, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v57 + 1))
  {
    sub_1DB1355D0(&v56, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    *(v33 + 56) = v18;
    *(v33 + 64) = v21;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v22;
    sub_1DB164980(&v51, v33 + 72);

    sub_1DB2B9A70(v33, v32 + 29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    v32[33] = 0;
    *(v32 + 31) = 0u;
    *(v32 + 29) = 0u;
  }

  sub_1DB1446A4(v49, &v56, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v57 + 1))
  {
    sub_1DB1355D0(&v56, &v51);
    v32[37] = v18;
    v32[38] = v21;
    sub_1DB203564(&v51, 0x20544C5541464544, 0xE800000000000000);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    v32[38] = 0;
    *(v32 + 17) = 0u;
    *(v32 + 18) = 0u;
  }

  sub_1DB1446A4(v61, &v56, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v57 + 1))
  {
    v53[0] = v58;
    v53[1] = v59;
    v53[2] = v60;
    v51 = v56;
    v52 = v57;
    sub_1DB2B3DEC(&v51, v53 + 8, v32 + 39);
    sub_1DB1445E0(&v51, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {
    v32[43] = 0;
    *(v32 + 39) = 0u;
    *(v32 + 41) = 0u;
  }

  v32[48] = 0;
  v34 = MEMORY[0x1E69E7CC0];
  *(v32 + 22) = 0u;
  *(v32 + 23) = 0u;
  for (i = 4; i != 49; i += 5)
  {
    sub_1DB1446A4(&v32[i], &v56, &qword_1ECC27898, &unk_1DB2CCD00);
    v54[0] = v56;
    v54[1] = v57;
    v55 = v58;
    if (*(&v57 + 1))
    {
      sub_1DB1355D0(v54, &v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1DB1573FC(0, v34[2] + 1, 1, v34);
        v77 = v34;
      }

      v38 = v34[2];
      v37 = v34[3];
      if (v38 >= v37 >> 1)
      {
        v34 = sub_1DB1573FC((v37 > 1), v38 + 1, 1, v34);
        v77 = v34;
      }

      v39 = *(&v52 + 1);
      v40 = *&v53[0];
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      v42 = *(*(v39 - 8) + 64);
      MEMORY[0x1EEE9AC00](v41);
      v44 = &v48 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44);
      sub_1DB200A54(v38, v44, &v77, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      v32 = v50;
    }

    else
    {
      sub_1DB1445E0(v54, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v34, &v56);

  sub_1DB1445E0(v61, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v62, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v64);
  v46 = sub_1DB2A4B8C(&v56);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  return v46;
}

uint64_t Expressible.unqualifiedColumnName.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v4(&v12);

  sub_1DB143508();
  v5 = sub_1DB2BB3A4();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 16 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {

    (v4)(&v12, a1, a2);
    v9 = v12;
    v8 = v13;
  }

  v12 = v9;
  v13 = v8;
  v10 = sub_1DB2BB3D4();

  return v10;
}

uint64_t Expressible.columnName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  sub_1DB1F8BD4(v4[0], v4[1], v4[2]);

  sub_1DB143508();
  v2 = sub_1DB2BB3D4();

  return v2;
}

uint64_t sub_1DB21A248()
{
  if (qword_1EE13E870 != -1)
  {
    swift_once();
  }

  qword_1EE13F100 = qword_1EE13E878;
  *algn_1EE13F108 = unk_1EE13E880;
  qword_1EE13F110 = qword_1EE13E888;
}

uint64_t static Connection.ServiceColumns.rowId.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F0F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F108;
  v2 = qword_1EE13F110;
  *a1 = qword_1EE13F100;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A350()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F150 = result;
  *algn_1EE13F158 = v1;
  qword_1EE13F160 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.creationTime.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F148 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F158;
  v2 = qword_1EE13F160;
  *a1 = qword_1EE13F150;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A424()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F130 = result;
  *algn_1EE13F138 = v1;
  qword_1EE13F140 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.modificationTime.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F128 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F138;
  v2 = qword_1EE13F140;
  *a1 = qword_1EE13F130;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A4F8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F0C0 = result;
  *algn_1EE13F0C8 = v1;
  qword_1EE13F0D0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.bundleIds.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F0B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F0C8;
  v2 = qword_1EE13F0D0;
  *a1 = qword_1EE13F0C0;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A5C8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F170 = result;
  *algn_1EE13F178 = v1;
  qword_1EE13F180 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static Connection.ServiceColumns.requestIds.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE13F168 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EE13F178;
  v2 = qword_1EE13F180;
  *a1 = qword_1EE13F170;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1DB21A698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB2C3A50;
  if (qword_1EE13F148 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13F150;
  v1 = *algn_1EE13F158;
  v3 = qword_1EE13F160;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28148, &qword_1DB2C4B70);
  *(v0 + 56) = v4;
  v5 = sub_1DB21132C(qword_1EE13EF80, &qword_1ECC28148, &qword_1DB2C4B70);
  *(v0 + 64) = v5;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  v6 = qword_1EE13F128;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13F130;
  v7 = *algn_1EE13F138;
  v9 = qword_1EE13F140;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v9;
  v10 = qword_1EE13F0B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE13F0C0;
  v11 = *algn_1EE13F0C8;
  v13 = qword_1EE13F0D0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  *(v0 + 136) = v14;
  v15 = sub_1DB21132C(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  *(v0 + 144) = v15;
  *(v0 + 112) = v12;
  *(v0 + 120) = v11;
  *(v0 + 128) = v13;
  v16 = qword_1EE13F168;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE13F170;
  v17 = *algn_1EE13F178;
  v19 = qword_1EE13F180;
  *(v0 + 176) = v14;
  *(v0 + 184) = v15;
  *(v0 + 152) = v18;
  *(v0 + 160) = v17;
  *(v0 + 168) = v19;
  qword_1EE13F0E0 = v0;
}

uint64_t sub_1DB21A914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB2BCC40;
  if (qword_1EE13F0F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13F100;
  v1 = *algn_1EE13F108;
  v3 = qword_1EE13F110;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  *(v0 + 64) = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  v4 = qword_1EE13F0D8;

  if (v4 != -1)
  {
    swift_once();
  }

  result = sub_1DB1414E8(v5);
  qword_1EE13F120 = v0;
  return result;
}

void sub_1DB21AAD8(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  if (*a2 != -1)
  {
    v17 = a3;
    swift_once();
    a3 = v17;
  }

  v5 = *a3;
  v6 = *(*a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v6, 0);
    v7 = v21;
    v8 = v5 + 32;
    do
    {
      sub_1DB164980(v8, v18);
      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v11 = Expressible.columnName.getter(v9, v10);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v18);
      v21 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB138470((v14 > 1), v15 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  *a4 = v7;
}

uint64_t sub_1DB21AC40(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1DB21ACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E7360];
  v14[4] = &protocol witness table for Int64;
  v14[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B5A0C(inited, 1, a5, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB21AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E7360];
  v14[4] = &protocol witness table for Int64;
  v14[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B59DC(inited, 1, a5, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t static Expression<A>.+= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, a3);
}

uint64_t static Expression<A>.+= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B13C(a1, static Expression<A>.+ infix(_:_:), &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, a2);
}

{
  return sub_1DB21B13C(a1, static Expression<A>.+ infix(_:_:), &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, a2);
}

uint64_t sub_1DB21AFF8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a1[1];
  v13 = a1[2];
  v14 = *a2;
  v21[0] = *a1;
  v12 = v21[0];
  v21[1] = v11;
  v21[2] = v13;
  v19 = v14;
  v20 = *(a2 + 1);
  a3(&v22, v21, &v19);
  v15 = v22;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(a7 + 24) = v16;
  v17 = sub_1DB21132C(a6, a4, a5);
  *a7 = v12;
  *(a7 + 8) = v11;
  *(a7 + 16) = v13;
  *(a7 + 64) = v16;
  *(a7 + 72) = v17;
  *(a7 + 32) = v17;
  *(a7 + 40) = v15;
  *(a7 + 48) = v23;
}

uint64_t sub_1DB21B13C@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, unint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = a1[1];
  v12 = a1[2];
  v17[0] = *a1;
  v11 = v17[0];
  v17[1] = v10;
  v17[2] = v12;
  a2(&v18, v17);
  v13 = v18;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a6 + 24) = v14;
  v15 = sub_1DB21132C(a5, a3, a4);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 64) = v14;
  *(a6 + 72) = v15;
  *(a6 + 32) = v15;
  *(a6 + 40) = v13;
  *(a6 + 48) = v19;
}

uint64_t static Expression<A>.+= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.+= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.+ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.-= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.-= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.- infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.*= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>.*= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>.* infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>./= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B550(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t static Expression<A>./= infix<A>(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DB21B63C(a1, a2, a3, a4, a5, a6, static Expression<A>./ infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DB21B550(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t *), void (*a8)(void *, uint64_t *, uint64_t, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v21[0] = *a1;
  v21[1] = v11;
  v21[2] = v12;
  v17 = v21[0];
  *&v18 = v11;
  *(&v18 + 1) = v12;
  v15 = v13;
  v16 = *(a2 + 1);
  a7(&v19, &v17, &v15);
  v17 = v19;
  v18 = v20;
  a8(v21, &v17, a4, a6);
}

uint64_t sub_1DB21B63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *), void (*a8)(void *, uint64_t *, uint64_t, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v18[0] = *a1;
  v18[1] = v11;
  v18[2] = v12;
  v14 = v18[0];
  *&v15 = v11;
  *(&v15 + 1) = v12;
  a7(&v16, &v14);
  v14 = v16;
  v15 = v17;
  a8(v18, &v14, a4, a6);
}

uint64_t static Expression<A>.%= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.%= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.% infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.% infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t sub_1DB21B7D8@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v10 = a1[1];
  v12 = a1[2];
  v17[0] = *a1;
  v11 = v17[0];
  v17[1] = v10;
  v17[2] = v12;
  a2(&v18, v17);
  v13 = v18;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a6 + 24) = v14;
  v15 = sub_1DB21132C(a5, a3, a4);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 64) = v14;
  *(a6 + 72) = v15;
  *(a6 + 32) = v15;
  *(a6 + 40) = v13;
  *(a6 + 48) = v19;
}

uint64_t static Expression<A>.++ postfix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B994(a1, 43, a2);
}

{
  return sub_1DB21B8B8(a1, 43, a2);
}

uint64_t sub_1DB21B8B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1DB21ACB0(*a1, v5, v6, 1, a2, &v11);
  v7 = v11;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280F8, &unk_1DB2D10E0);
  *(a3 + 24) = v8;
  v9 = sub_1DB21132C(&qword_1ECC28218, &qword_1ECC280F8, &unk_1DB2D10E0);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 32) = v9;
  *(a3 + 40) = v7;
  *(a3 + 48) = v12;
}

uint64_t static Expression<A>.-- postfix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B994(a1, 45, a2);
}

{
  return sub_1DB21B8B8(a1, 45, a2);
}

uint64_t sub_1DB21B994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1DB21AE0C(*a1, v5, v6, 1, a2, &v11);
  v7 = v11;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E8, &unk_1DB2C4B40);
  *(a3 + 24) = v8;
  v9 = sub_1DB21132C(&qword_1EE13EF50, &qword_1ECC280E8, &unk_1DB2C4B40);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 32) = v9;
  *(a3 + 40) = v7;
  *(a3 + 48) = v12;
}

uint64_t static Expression<A>.<<= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.<<= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.<< infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.<< infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.>>= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.>>= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.>> infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.>> infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.&= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.&= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.& infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.& infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.|= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.|= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.| infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.| infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t static Expression<A>.^= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

{
  return sub_1DB21AFF8(a1, a2, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a3);
}

uint64_t static Expression<A>.^= infix(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1DB21B7D8(a1, static Expression<A>.^ infix(_:_:), &qword_1ECC280E8, &unk_1DB2C4B40, &qword_1EE13EF50, a2);
}

{
  return sub_1DB21B7D8(a1, static Expression<A>.^ infix(_:_:), &qword_1ECC280F8, &unk_1DB2D10E0, &qword_1ECC28218, a2);
}

uint64_t Insert.removingOversizeValues(using:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = a1[9];
  v40[8] = a1[8];
  v40[9] = v6;
  v40[10] = a1[10];
  v7 = a1[5];
  v40[4] = a1[4];
  v40[5] = v7;
  v8 = a1[7];
  v40[6] = a1[6];
  v40[7] = v8;
  v9 = a1[1];
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a1[3];
  v40[2] = a1[2];
  v40[3] = v10;
  sub_1DB1446A4(v4, v29, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v30)
  {
    v11 = *v29;
    v12 = *&v29[8];
    v13 = *&v29[24];
    v14 = *&v29[40];
    v15 = *&v29[56];
    v16 = *&v29[72];
    v17 = *&v29[88];
    v19 = *&v29[104];
    v18 = *&v29[120];
  }

  else
  {
    sub_1DB1445E0(v29, &qword_1ECC27CC8, &unk_1DB2C3860);
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
  }

  *v31 = v11;
  *&v31[8] = v12;
  *&v31[24] = v13;
  *&v31[40] = v14;
  *&v31[56] = v15;
  *&v31[72] = v16;
  *&v31[88] = v17;
  *&v31[104] = v19;
  *&v31[120] = v18;
  if (v12)
  {
    v36 = *&v31[80];
    v37 = *&v31[96];
    v38 = *&v31[112];
    v32[1] = *&v31[16];
    v33 = *&v31[32];
    v34 = *&v31[48];
    v35 = *&v31[64];
    v39 = *&v31[128];
    v32[0] = *v31;
    if (*&v31[40])
    {
      v20 = sub_1DB21C18C(*&v32[0], *(&v32[0] + 1), v33, *&v31[40], v40, v35);
      if (!v3)
      {
        v21 = v20;
        sub_1DB16D26C(v32, v29);

        *&v29[64] = v21;
        v22 = *&v29[112];
        *(a2 + 96) = *&v29[96];
        *(a2 + 112) = v22;
        *(a2 + 128) = *&v29[128];
        v23 = *&v29[48];
        *(a2 + 32) = *&v29[32];
        *(a2 + 48) = v23;
        v24 = *&v29[16];
        *a2 = *v29;
        *(a2 + 16) = v24;
        v25 = *&v29[80];
        *(a2 + 64) = *&v29[64];
        *(a2 + 80) = v25;
        *(a2 + 136) = 1;
      }
    }

    else
    {
      v27 = v32[0];
      sub_1DB14A10C();
      swift_allocError();
      *v28 = v27;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 3;
      swift_willThrow();
    }

    return sub_1DB1F7130(v32);
  }

  else
  {
    sub_1DB1445E0(v31, &qword_1ECC27CD0, &unk_1DB2CB840);
    return sub_1DB16D210(v4, a2);
  }
}

uint64_t sub_1DB21C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = v6;
  v9 = a6;
  v79 = MEMORY[0x1E69E7CD0];
  v13 = a6[2];

  v65 = a5;
  sub_1DB1F8988(a5, &v76);

  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v63 = v15;
      v15 = v14;
      while (1)
      {
        if (v15 >= v13)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_48;
        }

        v7 = v9[v15 + 4];

        v16 = sub_1DB21D488(a1, a2, a3, a4, v65, v7);
        if (v8)
        {

          sub_1DB1F89E4(v65);

          goto LABEL_45;
        }

        v17 = v16;

        sub_1DB21E370(v18);
        v19 = *(v17 + 16);

        if (!v19)
        {
          break;
        }

        ++v15;
        if (v14 == v13)
        {
          v15 = v63;
          goto LABEL_18;
        }
      }

      v15 = v63;
      *&v69 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DB1386A0(0, *(v63 + 16) + 1, 1);
        v15 = v69;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1DB1386A0((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v15 = v69;
      }

      *(v15 + 16) = v22;
      *(v15 + 8 * v21 + 32) = v7;
    }

    while (v14 != v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:

  sub_1DB1F89E4(v65);

  v14 = v79;
  if (!*(v79 + 16))
  {

    return v9;
  }

  v7 = v13 - *(v15 + 16);
  if (qword_1EE13F2E0 != -1)
  {
LABEL_49:
    swift_once();
  }

  sub_1DB2BBAF4();
  v23 = v77;
  v68 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1DB2BCC40;
  v75 = sub_1DB156674(0, 73, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v25 = MEMORY[0x1E69E6530];
  v74 = MEMORY[0x1E69E6530];
  v73[0] = v7;
  sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
  v69 = 0u;
  v70 = 0u;
  sub_1DB156864(v72, &v69);
  LOBYTE(v71) = 0;
  v26 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1DB156674(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1DB156674((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[40 * v28];
  v30 = v69;
  v31 = v70;
  v29[64] = v71;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  v75 = v26;
  sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v32._object = 0x80000001DB2D4CC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  v33 = *(v14 + 16);
  v74 = v25;
  v73[0] = v33;
  sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
  v69 = 0u;
  v70 = 0u;
  sub_1DB156864(v72, &v69);
  LOBYTE(v71) = 0;
  v34 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1DB156674(0, *(v34 + 2) + 1, 1, v34);
    v75 = v34;
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1DB156674((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[40 * v36];
  v38 = v69;
  v39 = v70;
  v37[64] = v71;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  v75 = v34;
  sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
  v40._object = 0x80000001DB2D4CF0;
  v40._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = *(v14 + 16);
  if (v41)
  {
    v42 = sub_1DB1383EC(v41, 0);
    v43 = sub_1DB149DC0(&v69, v42 + 4, v41, v14);
    v44 = v69;

    sub_1DB149FCC();
    if (v43 != v41)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  *&v69 = v42;
  v44 = v8;
  sub_1DB148C3C(&v69);
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v45 = sub_1DB2BAD24();
    v47 = v46;

    v74 = MEMORY[0x1E69E6158];
    v73[0] = v45;
    v73[1] = v47;
    sub_1DB1446A4(v73, v72, &qword_1ECC26F30, &unk_1DB2BFA90);
    v69 = 0u;
    v70 = 0u;
    sub_1DB156864(v72, &v69);
    LOBYTE(v71) = 0;
    v48 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1DB156674(0, *(v48 + 2) + 1, 1, v48);
      v75 = v48;
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1DB156674((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[40 * v50];
    v52 = v69;
    v53 = v70;
    v51[64] = v71;
    *(v51 + 2) = v52;
    *(v51 + 3) = v53;
    v75 = v48;
    sub_1DB1445E0(v73, &qword_1ECC26F30, &unk_1DB2BFA90);
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    v9 = v66;
    *(v66 + 32) = v75;
    Logger.error(_:)(v66, v23, v68);

    __swift_destroy_boxed_opaque_existential_1(&v76);
    if (*(v15 + 16))
    {

      return v15;
    }

    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    v69 = v76;
    MEMORY[0x1E1283490](0xD00000000000004BLL, 0x80000001DB2D4D10);
    v55 = *(v14 + 16);
    if (!v55)
    {
      v56 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v56 = sub_1DB1383EC(v55, 0);
    v9 = sub_1DB149DC0(&v76, v56 + 4, v55, v14);
    v44 = v76;

    sub_1DB149FCC();
    if (v9 == v55)
    {
LABEL_44:
      *&v76 = v56;
      sub_1DB148C3C(&v76);
      v57 = sub_1DB2BAD24();
      v59 = v58;

      MEMORY[0x1E1283490](v57, v59);

      v60 = v69;
      sub_1DB14A10C();
      swift_allocError();
      *v61 = v60;
      *(v61 + 16) = 0u;
      *(v61 + 32) = 0u;
      *(v61 + 48) = 4;
      swift_willThrow();
LABEL_45:

      return v9;
    }

    goto LABEL_51;
  }

LABEL_52:
  MEMORY[0x1E1284A10](v8);

  __break(1u);
  MEMORY[0x1E1284A10](v44);

  __break(1u);
  return result;
}

uint64_t removingOversizeValues<A>(for:in:using:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v7 = v6;
  v8 = a6;
  v9 = a5[9];
  v83 = a5[8];
  v84 = v9;
  v85 = a5[10];
  v10 = a5[5];
  v79 = a5[4];
  v80 = v10;
  v11 = a5[7];
  v81 = a5[6];
  v82 = v11;
  v12 = a5[1];
  v75 = *a5;
  v76 = v12;
  v13 = a5[3];
  v77 = a5[2];
  v78 = v13;
  v86 = MEMORY[0x1E69E7CD0];
  *&v72 = a6;
  sub_1DB2BB154();

  swift_getWitnessTable();
  v14 = sub_1DB2BB5D4();
  if (v6)
  {
    goto LABEL_26;
  }

  v15 = v14;
  v16 = v86;
  if (!*(v86 + 16))
  {

LABEL_26:

    return v8;
  }

  v17 = sub_1DB2BB124();
  v64 = v15;
  v18 = sub_1DB2BB124();
  v19 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
  }

  else if (qword_1EE13F2E0 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  sub_1DB2BBAF4();
  v20 = v73;
  v62 = v74;
  __swift_project_boxed_opaque_existential_1(&v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1DB2BCC40;
  v71 = sub_1DB156674(0, 73, 0, MEMORY[0x1E69E7CC0]);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = MEMORY[0x1E69E6530];
  v70 = MEMORY[0x1E69E6530];
  v69[0] = v19;
  sub_1DB1446A4(v69, v68, &qword_1ECC26F30, &unk_1DB2BFA90);
  v65 = 0u;
  v66 = 0u;
  sub_1DB156864(v68, &v65);
  LOBYTE(v67) = 0;
  v23 = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DB156674(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v63 = v20;
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DB156674((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = v65;
  v28 = v66;
  v26[64] = v67;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v71 = v23;
  sub_1DB1445E0(v69, &qword_1ECC26F30, &unk_1DB2BFA90);
  v29._countAndFlagsBits = 0xD00000000000002CLL;
  v29._object = 0x80000001DB2D4CC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v30 = *(v16 + 16);
  v70 = v22;
  v69[0] = v30;
  sub_1DB1446A4(v69, v68, &qword_1ECC26F30, &unk_1DB2BFA90);
  v65 = 0u;
  v66 = 0u;
  sub_1DB156864(v68, &v65);
  LOBYTE(v67) = 0;
  v31 = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1DB156674(0, *(v31 + 2) + 1, 1, v31);
    v71 = v31;
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1DB156674((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[40 * v33];
  v35 = v65;
  v36 = v66;
  v34[64] = v67;
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  v71 = v31;
  sub_1DB1445E0(v69, &qword_1ECC26F30, &unk_1DB2BFA90);
  v37._object = 0x80000001DB2D4CF0;
  v37._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v38 = *(v16 + 16);
  if (v38)
  {
    v39 = sub_1DB1383EC(v38, 0);
    v40 = sub_1DB149DC0(&v65, v39 + 4, v38, v16);
    v41 = v65;
    v7 = v16;

    sub_1DB149FCC();
    if (v40 != v38)
    {
      __break(1u);
      goto LABEL_32;
    }

    v7 = 0;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  *&v65 = v39;
  sub_1DB148C3C(&v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v42 = sub_1DB2BAD24();
  v44 = v43;

  v70 = MEMORY[0x1E69E6158];
  v69[0] = v42;
  v69[1] = v44;
  sub_1DB1446A4(v69, v68, &qword_1ECC26F30, &unk_1DB2BFA90);
  v65 = 0u;
  v66 = 0u;
  sub_1DB156864(v68, &v65);
  LOBYTE(v67) = 0;
  v45 = v71;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1DB156674(0, *(v45 + 2) + 1, 1, v45);
    v71 = v45;
  }

  v8 = v64;
  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1DB156674((v46 > 1), v47 + 1, 1, v45);
  }

  *(v45 + 2) = v47 + 1;
  v48 = &v45[40 * v47];
  v49 = v65;
  v50 = v66;
  v48[64] = v67;
  *(v48 + 2) = v49;
  *(v48 + 3) = v50;
  v71 = v45;
  sub_1DB1445E0(v69, &qword_1ECC26F30, &unk_1DB2BFA90);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  *(v61 + 32) = v71;
  Logger.error(_:)(v61, v63, v62);

  __swift_destroy_boxed_opaque_existential_1(&v72);
  *&v72 = v64;
  swift_getWitnessTable();
  if ((sub_1DB2BB224() & 1) == 0)
  {
    goto LABEL_26;
  }

  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;
  sub_1DB2BB4F4();
  v65 = v72;
  MEMORY[0x1E1283490](0xD00000000000004BLL, 0x80000001DB2D4D10);
  v52 = *(v16 + 16);
  if (!v52)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *&v72 = v53;
    sub_1DB148C3C(&v72);
    v56 = sub_1DB2BAD24();
    v58 = v57;

    MEMORY[0x1E1283490](v56, v58);

    v59 = v65;
    sub_1DB14A10C();
    swift_allocError();
    *v60 = v59;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *(v60 + 48) = 4;
    swift_willThrow();
    goto LABEL_26;
  }

  v53 = sub_1DB1383EC(v52, 0);
  v54 = sub_1DB149DC0(&v72, v53 + 4, v52, v16);
  v8 = *(&v72 + 1);
  v41 = v72;

  sub_1DB149FCC();
  if (v54 == v52)
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  MEMORY[0x1E1284A10](v7);

  __break(1u);
  MEMORY[0x1E1284A10](v41);

  __break(1u);
  return result;
}