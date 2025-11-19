uint64_t sub_245810E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24590FDA4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  sub_24590FD64();
  v14 = a1;
  v15 = a2;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020);
  sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020);
  sub_24590F5F4();
  v11 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
  MEMORY[0x245D75410](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_245811068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24590F584();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F564();

  return MEMORY[0x245D75C00](v7, a2, a3);
}

uint64_t sub_245811104()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FD0);
  sub_245778BD8(&qword_27EE29FD8, &qword_27EE29FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FE0);
  sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24590F864();
}

uint64_t sub_24581128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_2459104D4();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A0A0);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_24590F2F4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A0A8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v67 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = &v59 - v23;
  v65 = a1;
  sub_245778F2C(a1, v12, &qword_27EE29F98);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_245778F94(v12, &qword_27EE29F98);
    v24 = 1;
    v26 = v62;
    v25 = v63;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_245910544();
    v28 = v60;
    v27 = v61;
    (*(v60 + 104))(v5, *MEMORY[0x277CE0FE0], v61);
    v59 = sub_245910534();

    (*(v28 + 8))(v5, v27);
    v29 = [objc_opt_self() secondarySystemBackgroundColor];
    v30 = sub_245910414();
    LOBYTE(v27) = sub_24590FFB4();
    (*(v14 + 8))(v19, v13);
    v31 = v63;
    v32 = &v9[*(v63 + 36)];
    v33 = *(sub_24590F8C4() + 20);
    v34 = *MEMORY[0x277CE0118];
    v35 = sub_24590FB94();
    (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
    __asm { FMOV            V0.2D, #16.0 }

    *v32 = _Q0;
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A0C8) + 36)] = 256;
    *v9 = v59;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    *(v9 + 3) = v30;
    v9[32] = v27;
    v26 = v62;
    sub_24577ABC4(v9, v62, &qword_27EE2A0A0);
    v24 = 0;
    v25 = v31;
  }

  (*(v64 + 56))(v26, v24, 1, v25);
  v41 = sub_24590FBD4();
  v80 = 0;
  sub_245811B24(&v77);
  v84 = v78[2];
  v85 = v78[3];
  v86 = v78[4];
  v87 = *&v78[5];
  v81 = v77;
  v82 = v78[0];
  v83 = v78[1];
  v88[1] = v78[0];
  v88[0] = v77;
  v88[2] = v78[1];
  v88[3] = v78[2];
  v88[4] = v78[3];
  v88[5] = v78[4];
  v89 = *&v78[5];
  sub_245778F2C(&v81, &v75, &qword_27EE2A0B0);
  sub_245778F94(v88, &qword_27EE2A0B0);
  *(&v79[3] + 7) = v84;
  *(&v79[4] + 7) = v85;
  *(&v79[5] + 7) = v86;
  *(&v79[6] + 7) = v87;
  *(v79 + 7) = v81;
  *(&v79[1] + 7) = v82;
  *(&v79[2] + 7) = v83;
  v42 = v80;
  sub_2459106F4();
  sub_24590F904();
  v43 = v67;
  sub_245778F2C(v26, v67, &qword_27EE2A0A8);
  v44 = v66;
  sub_245778F2C(v43, v66, &qword_27EE2A0A8);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A0B8) + 48));
  *&v75 = v41;
  *(&v75 + 1) = 0x4010000000000000;
  LOBYTE(v76[0]) = v42;
  *(&v76[3] + 1) = v79[3];
  *(&v76[4] + 1) = v79[4];
  *(&v76[5] + 1) = v79[5];
  *(&v76[1] + 1) = v79[1];
  *(&v76[2] + 1) = v79[2];
  *(v76 + 1) = v79[0];
  v46 = v69;
  v47 = v68;
  v48 = v70;
  v49 = v71;
  v76[9] = v70;
  v76[8] = v69;
  v76[6] = *(&v79[5] + 15);
  v76[7] = v68;
  v50 = v74;
  v51 = v72;
  v76[13] = v74;
  v76[12] = v73;
  v76[11] = v72;
  v76[10] = v71;
  v45[13] = v73;
  v45[14] = v50;
  v45[11] = v49;
  v45[12] = v51;
  v52 = v76[0];
  *v45 = v75;
  v45[1] = v52;
  v45[8] = v47;
  v45[9] = v46;
  v45[10] = v48;
  v53 = v76[1];
  v54 = v76[2];
  v55 = v76[3];
  v56 = v76[4];
  v57 = v76[6];
  v45[6] = v76[5];
  v45[7] = v57;
  v45[4] = v55;
  v45[5] = v56;
  v45[2] = v53;
  v45[3] = v54;
  sub_245778F2C(&v75, &v77, &qword_27EE2A0C0);
  sub_245778F94(v26, &qword_27EE2A0A8);
  *(&v78[3] + 1) = v79[3];
  *(&v78[4] + 1) = v79[4];
  *(&v78[5] + 1) = v79[5];
  *(v78 + 1) = v79[0];
  *(&v78[1] + 1) = v79[1];
  *(&v78[2] + 1) = v79[2];
  v78[10] = v71;
  v78[11] = v72;
  v78[12] = v73;
  v78[13] = v74;
  v78[6] = *(&v79[5] + 15);
  v78[7] = v68;
  *&v77 = v41;
  *(&v77 + 1) = 0x4010000000000000;
  LOBYTE(v78[0]) = v42;
  v78[8] = v69;
  v78[9] = v70;
  sub_245778F94(&v77, &qword_27EE2A0C0);
  return sub_245778F94(v43, &qword_27EE2A0A8);
}

uint64_t sub_245811B24@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GuideView(0);
  sub_245778CE8();

  v2 = sub_2459101A4();
  v4 = v3;
  v6 = v5;
  sub_245910024();
  sub_245910034();

  v7 = sub_245910184();
  v23 = v8;
  v24 = v9;
  v22 = v10;

  sub_24580FD24(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();

  v12 = sub_2459101A4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = sub_245910434();
  *a1 = v7;
  *(a1 + 8) = v23;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16 & 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = 0;
  *(a1 + 96) = v20;
  sub_245812E64(v7, v23, v22 & 1);

  sub_245812E64(v12, v14, v16 & 1);

  sub_24580FD24(v12, v14, v16 & 1);

  sub_24580FD24(v7, v23, v22 & 1);
}

double sub_245811D4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24590FBD4();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A090);
  sub_24581128C(v1, a1 + *(v3 + 44));
  v4 = sub_24590FFA4();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A098) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_245811DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for PassportNFCGuideContent(0);
  v48 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_24590F354();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  if (a2 && (v17 = sub_24586C880(*(a1 + *(v5 + 20)), *(a1 + *(v5 + 20) + 8)), v18))
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_24586C880(*(a1 + *(v5 + 24)), *(a1 + *(v5 + 24) + 8));
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v25 = v49;
      sub_245778F2C(a1, v49, &qword_27EE29F98);
      v26 = (v25 + *(v5 + 20));
      *v26 = v19;
      v26[1] = v20;
      v27 = (v25 + *(v5 + 24));
      *v27 = v23;
      v27[1] = v24;
      return (*(v48 + 56))(v25, 0, 1, v5);
    }

    sub_24590C714();
    sub_245812910(a1, v10);
    v37 = sub_24590F344();
    v38 = sub_245910F64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      v41 = &v10[*(v5 + 24)];
      v42 = *v41;
      v43 = v41[1];

      sub_245812974(v10);
      v44 = sub_2458CC378(v42, v43, &v50);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_245767000, v37, v38, "NFCScanViewConfig failed to localized string id: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x245D77B40](v40, -1, -1);
      MEMORY[0x245D77B40](v39, -1, -1);
    }

    else
    {

      sub_245812974(v10);
    }

    (*(v46 + 8))(v16, v47);
  }

  else
  {
    sub_24590C714();
    sub_245812910(a1, v8);
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315138;
      v33 = &v8[*(v5 + 20)];
      v34 = *v33;
      v35 = v33[1];

      sub_245812974(v8);
      v36 = sub_2458CC378(v34, v35, &v50);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_245767000, v29, v30, "NFCScanViewConfig failed to localized string id: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245D77B40](v32, -1, -1);
      MEMORY[0x245D77B40](v31, -1, -1);
    }

    else
    {

      sub_245812974(v8);
    }

    (*(v46 + 8))(v14, v47);
  }

  return (*(v48 + 56))(v49, 1, 1, v5);
}

uint64_t sub_245812240()
{

  return swift_deallocClassInstance();
}

void sub_2458122EC()
{
  if (!qword_27EE29FB0)
  {
    sub_24590F2F4();
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE29FB0);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_245812358(uint64_t *a1, int a2)
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

uint64_t sub_2458123A0(uint64_t result, int a2, int a3)
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

uint64_t *sub_24581240C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FB8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v36 - v6;
  v7 = type metadata accessor for PassportNFCGuideContent(0);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v42 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = v36 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v15 = sub_24590F354();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  if (!a1 || (v19 = sub_24586C880(0xD00000000000002ALL, 0x8000000245928770), !v20))
  {
    sub_24590C714();
    v21 = sub_24590F344();
    v22 = sub_245910F64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2458CC378(0xD00000000000002ALL, 0x8000000245928770, &v45);
      _os_log_impl(&dword_245767000, v21, v22, "NFCScanViewConfig failed to localized string id: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245D77B40](v24, -1, -1);
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v2[2] = v19;
  v2[3] = v20;
  v37 = v2;
  if (qword_27EE286D8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = qword_27EE32BF8;
    v41 = *(qword_27EE32BF8 + 16);
    if (!v41)
    {
      break;
    }

    v36[1] = v4;
    v26 = 0;
    v27 = (v44 + 48);
    v28 = MEMORY[0x277D84F90];
    v4 = v39;
    v29 = v40;
    while (v26 < *(v25 + 16))
    {
      v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v31 = *(v44 + 72);
      sub_245812910(v25 + v30 + v31 * v26, v14);
      sub_245811DDC(v14, v29, v4);
      sub_245812974(v14);
      if ((*v27)(v4, 1, v43) == 1)
      {
        sub_245778F94(v4, &qword_27EE29FB8);
      }

      else
      {
        v32 = v38;
        sub_2458129D0(v4, v38);
        sub_2458129D0(v32, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_24580A828(0, v28[2] + 1, 1, v28);
        }

        v34 = v28[2];
        v33 = v28[3];
        if (v34 >= v33 >> 1)
        {
          v28 = sub_24580A828(v33 > 1, v34 + 1, 1, v28);
        }

        v28[2] = v34 + 1;
        sub_2458129D0(v42, v28 + v30 + v34 * v31);
        v4 = v39;
        v29 = v40;
      }

      if (v41 == ++v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_19:
  result = v37;
  v37[4] = v28;
  return result;
}

uint64_t sub_245812910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassportNFCGuideContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245812974(uint64_t a1)
{
  v2 = type metadata accessor for PassportNFCGuideContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458129D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassportNFCGuideContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_245812A4C()
{
  result = qword_27EE29FF8;
  if (!qword_27EE29FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FF0);
    sub_245812AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29FF8);
  }

  return result;
}

unint64_t sub_245812AD8()
{
  result = qword_27EE2A000;
  if (!qword_27EE2A000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A008);
    sub_245778BD8(&qword_27EE2A010, &qword_27EE2A018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A000);
  }

  return result;
}

uint64_t sub_245812BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F98);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_245812DCC()
{
  sub_2458122EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_245812E64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_245812E74()
{
  result = qword_27EE2A0D0;
  if (!qword_27EE2A0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A098);
    sub_245778BD8(&qword_27EE2A0D8, &qword_27EE2A0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A0D0);
  }

  return result;
}

unint64_t sub_245812F50()
{
  result = qword_27EE2A0E8;
  if (!qword_27EE2A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A0E8);
  }

  return result;
}

uint64_t sub_245812FB0()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_245813074()
{
  sub_245910AF4();
}

uint64_t sub_245813124()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_2458131E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_245813F20();
  *a1 = result;
  return result;
}

void sub_245813214(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7964616572;
  v4 = 0x73736563637573;
  if (*v1 != 2)
  {
    v4 = 0x6572756C696166;
  }

  if (*v1)
  {
    v3 = 0x6572676F72506E69;
    v2 = 0xEA00000000007373;
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
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_2458132B4()
{
  result = qword_27EE2A0F0;
  if (!qword_27EE2A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A0F0);
  }

  return result;
}

unint64_t sub_24581331C()
{
  result = qword_27EE2A100;
  if (!qword_27EE2A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A100);
  }

  return result;
}

char *sub_245813370()
{
  v1 = swift_allocObject();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v1[3] = *(v0 + 32);
  v1[4] = v4;
  *(v1 + 73) = *(v0 + 57);
  v1[1] = *v0;
  v1[2] = v3;
  v5 = *(*v0 + 16);
  *(*v0 + 16) = 0;
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated);
    v7 = *(v5 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated);
    *v6 = sub_245814128;
    v6[1] = v1;
    sub_245814130(v0, v14);
    sub_245771C34(v7);
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    v12 = *(v0 + 8);
    objc_allocWithZone(type metadata accessor for PassportSceneView());
    sub_245814130(v0, v14);

    return sub_245815710(v12, v8, v9, v10, v11, sub_245814128, v2, 0.0, 0.0, 0.0, 0.0);
  }

  return v5;
}

uint64_t sub_2458134BC(char a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_245910D34();
  sub_245814130(a2, v14);
  v8 = sub_245910D24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a2[3];
  *(v9 + 64) = a2[2];
  *(v9 + 80) = v11;
  *(v9 + 89) = *(a2 + 57);
  v12 = a2[1];
  *(v9 + 32) = *a2;
  *(v9 + 48) = v12;
  *(v9 + 105) = a1;
  sub_2458B90EC(0, 0, v6, &unk_245919990, v9);
}

uint64_t sub_245813604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 34) = a5;
  *(v5 + 40) = a4;
  sub_245910D34();
  *(v5 + 48) = sub_245910D24();
  v7 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458136A0, v7, v6);
}

uint64_t sub_2458136A0()
{
  v1 = *(v0 + 34);
  v2 = *(v0 + 40);

  v3 = *(v2 + 56);
  *(v0 + 32) = *(v2 + 72);
  *(v0 + 16) = v3;
  *(v0 + 33) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F90);
  sub_245910604();
  v4 = *(v0 + 8);

  return v4();
}

void sub_245813740(char *a1)
{
  v2 = v1;
  v21 = *(v1 + 56);
  v22 = *(v1 + 72);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29F90);
  MEMORY[0x245D75C30](&v20, v4);
  if (v20 == 1)
  {
    if (*(v1 + 41) > 1u || *(v1 + 41))
    {
      v5 = sub_245911714();

      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isPreparingScene])
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2458140F8;
      *(v7 + 24) = v6;
      v8 = &a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onPreparedSceneCompletion];
      v9 = *&a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onPreparedSceneCompletion];
      *v8 = sub_245814100;
      v8[1] = v7;
      v10 = a1;
      sub_245771C34(v9);
    }

    else
    {
      sub_245815164(0, 0);
    }
  }

LABEL_9:
  v11 = *(v2 + 41);
  if (a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying] == 1)
  {
    if (!*(v2 + 41))
    {

      goto LABEL_15;
    }

    v12 = sub_245911714();

    if ((v12 & 1) == 0)
    {
      sub_24581531C(0, 0);
    }
  }

  if (v11 <= 2)
  {
LABEL_15:
    v13 = sub_245911714();

    v14 = a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded];
    a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded] = v13 & 1;
    if ((v13 & 1) == v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v15 = a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded];
  a1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded] = 1;
  if (v15)
  {
    goto LABEL_24;
  }

  v11 = 3;
LABEL_19:
  sub_2458140A0();
  sub_245910724();
  swift_allocObject();
  v16 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v16);
  sub_2459111E4();

LABEL_20:
  if (v11 > 1)
  {
    if (v11 == 2)
    {
LABEL_25:
      v17 = sub_245911714();
      goto LABEL_27;
    }

LABEL_24:
    v11 = 3;
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_25;
  }

  v17 = 1;
LABEL_27:

  sub_2458154B4(v17 & 1);
  v18 = *(v2 + 44);
  LOBYTE(v21) = *(v2 + 48);
  sub_2458154C8(v18 | (v21 << 32));
  if (v11 == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_245911714();
  }

  sub_2458155C8(v19 & 1);
}

void sub_245813C1C(uint64_t a1, void *a2)
{
  if ((*(a2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying) & 1) == 0)
  {
    v4 = swift_allocObject();
    v4[2] = a2;
    sub_2458140A0();
    v4[3] = 0;
    v4[4] = 0;
    v5 = a2;
    sub_245910724();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_245814108;
    v7[4] = v4;

    sub_2459111E4();
  }
}

uint64_t sub_245813E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245814228();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_245813E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245814228();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_245813EF8()
{
  sub_245814228();
  sub_24590FCE4();
  __break(1u);
}

uint64_t sub_245813F20()
{
  v0 = sub_245911644();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245813F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_245813FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24581404C()
{
  result = qword_27EE2A108;
  if (!qword_27EE2A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A108);
  }

  return result;
}

unint64_t sub_2458140A0()
{
  result = qword_27EE29630;
  if (!qword_27EE29630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE29630);
  }

  return result;
}

uint64_t sub_245814168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245813604(a1, v4, v5, v1 + 32, v6);
}

unint64_t sub_245814228()
{
  result = qword_27EE2A110;
  if (!qword_27EE2A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A110);
  }

  return result;
}

uint64_t sub_24581429C(uint64_t a1, uint64_t (*a2)(uint64_t, float), double a3, double a4, float a5, double a6, float a7, float a8, float a9, float a10)
{
  v14 = *&a6;
  v16 = a3 / a4;
  v17 = sub_24581437C(v16, 0.0001, a5, a6, a7);
  v18 = (v17 * (((1.0 - v17) * (1.0 - v17)) * 3.0)) * v14;
  v19 = ((v17 * v17) * ((1.0 - v17) * 3.0)) * a8;
  v20 = powf(v17, 3.0);
  return a2(a1, ((a10 - a9) * (v20 + (v19 + v18))) + a9);
}

uint64_t sub_245814358()
{
  result = 0x5851F42D4C957F2DLL * *v0 + 1;
  *v0 = result;
  return result;
}

float sub_24581437C(float a1, float a2, float a3, double a4, float a5)
{
  v7 = a1;
  v8 = 1.0 - a1;
  v9 = (v8 * v8) * 3.0;
  v10 = ((((v7 * v7) * ((1.0 - a1) * 3.0)) * a5) + ((v9 * a1) * a3)) + powf(a1, 3.0);
  v34 = a2;
  if (vabds_f32(v10, v7) >= a2)
  {
    v32 = a5 - a3;
    v33 = 1.0 - a5;
    v11 = ((1.0 - a5) * ((v7 * v7) * 3.0)) + ((v9 * a3) + ((a5 - a3) * ((v8 * 6.0) * v7)));
    if (v11 != 0.0)
    {
      v12 = a5;
      v13 = v7 - ((v10 - v7) / v11);
      v14 = 1.0 - v13;
      v15 = (v14 * v14) * 3.0;
      v31 = v12;
      v16 = ((((v13 * v13) * ((1.0 - v13) * 3.0)) * v12) + ((v13 * v15) * a3)) + powf(v13, 3.0);
      if (vabds_f32(v16, v7) < v34)
      {
        return v13;
      }

      v17 = (v33 * ((v13 * v13) * 3.0)) + ((v15 * a3) + (v32 * (v13 * (v14 * 6.0))));
      if (v17 == 0.0)
      {
        return v13;
      }

      v13 = v13 - ((v16 - v7) / v17);
      v18 = 1.0 - v13;
      v19 = (v18 * v18) * 3.0;
      v20 = ((((v13 * v13) * ((1.0 - v13) * 3.0)) * v31) + ((v13 * v19) * a3)) + powf(v13, 3.0);
      if (vabds_f32(v20, v7) < v34)
      {
        return v13;
      }

      v21 = (v33 * ((v13 * v13) * 3.0)) + ((v19 * a3) + (v32 * (v13 * (v18 * 6.0))));
      if (v21 == 0.0)
      {
        return v13;
      }

      v13 = v13 - ((v20 - v7) / v21);
      v22 = 1.0 - v13;
      v23 = (v22 * v22) * 3.0;
      v24 = ((((v13 * v13) * ((1.0 - v13) * 3.0)) * v31) + ((v13 * v23) * a3)) + powf(v13, 3.0);
      if (vabds_f32(v24, v7) < v34)
      {
        return v13;
      }

      v25 = (v33 * ((v13 * v13) * 3.0)) + ((v23 * a3) + (v32 * (v13 * (v22 * 6.0))));
      if (v25 == 0.0)
      {
        return v13;
      }

      v13 = v13 - ((v24 - v7) / v25);
      v26 = 1.0 - v13;
      v27 = (v26 * v26) * 3.0;
      v28 = ((((v13 * v13) * ((1.0 - v13) * 3.0)) * v31) + ((v13 * v27) * a3)) + powf(v13, 3.0);
      if (vabds_f32(v28, v7) < v34)
      {
        return v13;
      }

      v29 = (v33 * ((v13 * v13) * 3.0)) + ((v27 * a3) + (v32 * (v13 * (v26 * 6.0))));
      if (v29 == 0.0)
      {
        return v13;
      }

      else
      {
        return v13 - ((v28 - v7) / v29);
      }
    }
  }

  return v7;
}

id sub_2458146C8(uint64_t a1, unint64_t a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = sub_24590EA74();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24590F354();
  v8 = *(v61 - 8);
  v9 = MEMORY[0x28223BE20](v61);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v60 = sub_24590C094();
  v16 = *(v60 - 1);
  MEMORY[0x28223BE20](v60);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v19 = sub_2459109C4();
  v20 = sub_2459109C4();
  v21 = sub_2459109C4();
  v22 = [a3 URLForResource:v19 withExtension:v20 subdirectory:v21];

  if (!v22)
  {
    sub_24590C714();

    v28 = sub_24590F344();
    v29 = sub_245910F64();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62 = v31;
      *v30 = 136315138;
      v32 = v55;
      *(v30 + 4) = sub_2458CC378(v55, a2, &v62);
      _os_log_impl(&dword_245767000, v28, v29, "PassportSceneView: Failed to load scene named '%s'; Could not create resource URL", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245D77B40](v31, -1, -1);
      MEMORY[0x245D77B40](v30, -1, -1);

      v33 = v61;
      v60 = *(v8 + 8);
      v60(v13, v61);
    }

    else
    {

      v33 = v61;
      v60 = *(v8 + 8);
      v60(v13, v61);
      v32 = v55;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2459114D4();

    v62 = 0xD000000000000011;
    v63 = 0x8000000245928A50;
    MEMORY[0x245D76160](v32, a2);
    MEMORY[0x245D76160](0xD000000000000013, 0x8000000245928A70);
    (*(v56 + 104))(v58, *MEMORY[0x277CFFC30], v57);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v47 = swift_allocError();
    sub_24590EA94();
    v48 = v59;
    sub_24590C714();
    sub_24590C3F4();
    v60(v48, v33);
    goto LABEL_12;
  }

  sub_24590C054();

  v23 = sub_24590C034();
  v24 = objc_opt_self();
  v62 = 0;
  v25 = [v24 sceneWithURL:v23 options:0 error:&v62];

  if (!v25)
  {
    v34 = v62;
    v35 = sub_24590BFA4();

    swift_willThrow();
    sub_24590C714();

    v36 = v35;
    v37 = sub_24590F344();
    v38 = sub_245910F64();

    v54 = v35;

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v39 = 136315394;
      LODWORD(v53) = v38;
      v42 = v55;
      *(v39 + 4) = sub_2458CC378(v55, a2, &v62);
      *(v39 + 12) = 2112;
      v52 = v37;
      v43 = v54;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v44;
      *v40 = v44;
      v45 = v52;
      _os_log_impl(&dword_245767000, v52, v53, "PassportSceneView: Failed to load scene named '%s'; Could not create source from resource: %@", v39, 0x16u);
      sub_24579D578(v40);
      MEMORY[0x245D77B40](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x245D77B40](v41, -1, -1);
      MEMORY[0x245D77B40](v39, -1, -1);

      v46 = *(v8 + 8);
      v52 = ((v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v53 = v46;
      v46(v15, v61);
    }

    else
    {

      v49 = *(v8 + 8);
      v52 = ((v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v53 = v49;
      v49(v15, v61);
      v42 = v55;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2459114D4();

    v62 = 0xD000000000000011;
    v63 = 0x8000000245928A50;
    MEMORY[0x245D76160](v42, a2);
    MEMORY[0x245D76160](0xD000000000000013, 0x8000000245928A70);
    (*(v56 + 104))(v58, *MEMORY[0x277CFFB80], v57);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v47 = swift_allocError();
    sub_24590EA94();
    v50 = v59;
    sub_24590C714();
    sub_24590C3F4();

    v53(v50, v61);
    (*(v16 + 8))(v18, v60);
LABEL_12:

    return 0;
  }

  v26 = *(v16 + 8);
  v27 = v62;
  v26(v18, v60);
  return v25;
}

unint64_t sub_245814FA0(unint64_t a1, unint64_t a2)
{
  v2 = 0xCBF29CE484222325;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return v2;
  }

  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v18 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v7)
    {
      v15 = result;
      v11 = sub_2458487F0(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v3)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = result;
      v14 = sub_245910B84();
      result = v17;
      if (v10 != v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v18;
        v13 = v19;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v16 = result;
          v13 = sub_245911534();
          result = v16;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v7)
      {
LABEL_19:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    result = sub_2458487F0(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_20:
    if (v3 <= result >> 16)
    {
      goto LABEL_27;
    }

    result = sub_245910B54();
LABEL_9:
    v2 = 0x100000001B3 * (v2 ^ v14);
    if (4 * v3 == result >> 14)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_245815164(uint64_t result, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying) & 1) == 0)
  {
    v3 = result;
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v3;
    v5[4] = a2;
    sub_24579D5E0(0, &qword_27EE29630);
    v6 = v2;
    sub_245771BB4(v3);
    sub_245910724();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_245814108;
    v8[4] = v5;

    sub_2459111E4();
  }

  return result;
}

uint64_t sub_24581531C(uint64_t a1, uint64_t a2)
{
  [*(v2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView) setAlpha_];
  sub_245829C90();
  v5 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying);
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying) = 0;
  if (v5 == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated);
    if (v6)
    {

      v6(0);
      sub_245771C34(v6);
    }
  }

  sub_24581730C(0);
  sub_24582A478(v7, 0, 0);

  sub_24579D5E0(0, &qword_27EE29630);
  sub_245910724();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_245771BB4(a1);
  sub_2459111E4();
}

void sub_2458154C8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingProgress;
  v3 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingProgress);
  v4 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingProgress + 4);
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
  if (v4)
  {
    if ((a1 & 0x100000000) != 0)
    {
      return;
    }

    v5 = *&a1;
LABEL_8:
    v7 = v5;
    v8 = *(*(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode) + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_chipPulsingEffectNode);
    v6 = v7;
    goto LABEL_9;
  }

  if ((a1 & 0x100000000) == 0)
  {
    v5 = *&a1;
    if (v3 == *&a1)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = *(*(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode) + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_chipPulsingEffectNode);
  v6 = 0.0;
LABEL_9:
  sub_24581880C(v6);
}

void sub_2458155DC(char a1, void *a2, SEL *a3)
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  if (v4 & 1) == 0 && (a1)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode);
    v6 = [objc_opt_self() *a3];
    v7 = *(v5 + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_chipPulsingEffectNode);
    v8 = sub_245817D28(v6);
    v9 = sub_2459109C4();
    [v7 removeActionForKey_];

    v10 = sub_2459109C4();
    [v7 runAction:v8 forKey:v10];
  }
}

char *sub_245815710(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  ObjectType = swift_getObjectType();
  v24 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_activityIndicatorView;
  *&v12[v24] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v25 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView;
  *&v12[v25] = [objc_allocWithZone(MEMORY[0x277CDBB20]) init];
  v26 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_bottomGradientLayer;
  *&v12[v26] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying] = 0;
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isPreparingScene] = 0;
  v27 = &v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onPreparedSceneCompletion];
  *v27 = 0;
  v27[1] = 0;
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isChipReading] = 0;
  v28 = &v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingProgress];
  *v28 = 0;
  v28[4] = 1;
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingSuccess] = 0;
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded] = 0;
  *&v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_interfaceStyle] = 0;
  v29 = &v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated];
  *v29 = 0;
  v29[1] = 0;
  v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneModel] = a1;
  v30 = &v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportInformation];
  *v30 = a2;
  *(v30 + 1) = a3;
  *(v30 + 2) = a4;
  v30[24] = a5 & 1;
  *v29 = a6;
  v29[1] = a7;
  v31 = objc_allocWithZone(_s10CameraNodeCMa());
  sub_245771BB4(a6);
  v32 = [v31 init];
  *&v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_cameraNode] = v32;
  *&v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode] = [objc_allocWithZone(_s12PassportNodeCMa()) init];
  v33 = objc_allocWithZone(_s9PhoneNodeCMa());
  *&v12[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode] = sub_245821DC8(a1);
  v44.receiver = v12;
  v44.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a8, a9, a10, a11);
  v35 = [v34 traitCollection];
  v36 = [v35 userInterfaceStyle];

  *&v34[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_interfaceStyle] = v36;
  [v34 addSubview_];
  sub_2458237FC();
  sub_245815A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29480);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_245916CE0;
  v38 = sub_24590F3B4();
  v39 = MEMORY[0x277D74BF0];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = sub_24590F3A4();
  v41 = MEMORY[0x277D74BE8];
  *(v37 + 48) = v40;
  *(v37 + 56) = v41;
  sub_2459111D4();
  swift_unknownObjectRelease();

  sub_245771C34(a6);

  return v34;
}

void sub_245815A60()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_245911094();

  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  v14 = [v4 resolvedColorWithTraitCollection_];

  v5 = *&v1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_bottomGradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_245916CE0;
  v7 = [v14 colorWithAlphaComponent_];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v6 + 56) = v9;
  *(v6 + 32) = v8;
  v11 = [v14 colorWithAlphaComponent_];
  v12 = [v11 CGColor];

  *(v6 + 88) = v10;
  *(v6 + 64) = v12;
  v13 = sub_245910C34();

  [v5 setColors_];

  [v5 setStartPoint_];
  [v5 setEndPoint_];
}

id sub_245815C74(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 traitCollection];
  v12 = [v11 userInterfaceStyle];

  v13 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_interfaceStyle;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_interfaceStyle] = v12;
  result = [a1 userInterfaceStyle];
  if (v12 != result)
  {
    sub_24590C714();
    v15 = v2;
    v16 = sub_24590F344();
    v17 = sub_245910F54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v6;
      v31 = v19;
      v20 = v19;
      *v18 = 136315138;
      if (*&v2[v13] == 2)
      {
        v21 = 1802658148;
      }

      else
      {
        v21 = 0x746867696CLL;
      }

      if (*&v2[v13] == 2)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = sub_2458CC378(v21, v22, &v31);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_245767000, v16, v17, "PassportSceneView: Color scheme changed to %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v24 = v20;
      v6 = v30;
      MEMORY[0x245D77B40](v24, -1, -1);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_245815A60();
    v25 = sub_245910D64();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_245910D34();
    v26 = v15;
    v27 = sub_245910D24();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    sub_2458B90EC(0, 0, v6, &unk_245919A60, v28);
  }

  return result;
}

id sub_245815FC8()
{
  ObjectType = swift_getObjectType();
  sub_245816010();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_245816010()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView);
  [v1 setPlaying_];
  [v1 setDelegate_];
  v2 = [v1 scene];
  if (v2 && (v3 = v2, v4 = [v2 rootNode], v7[4] = sub_245816DD0, v7[5] = 0, v7[0] = MEMORY[0x277D85DD0], v7[1] = 1107296256, v7[2] = sub_245816DD4, v7[3] = &block_descriptor_16, v5 = _Block_copy(v7), , objc_msgSend(v4, sel_enumerateChildNodesUsingBlock_, v5), v3, v4, _Block_release(v5), result = swift_isEscapingClosureAtFileLocation(), (result & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    [v1 setDelegate_];
    [v1 setPointOfView_];
    [v1 setAudioListener_];
    [v1 setScene_];
    [v1 stop_];
    return [objc_opt_self() flush];
  }

  return result;
}

id sub_24581630C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_bottomGradientLayer];
  [*&v0[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView] bounds];
  v2 = CGRectGetHeight(v7) + -32.0;
  [v0 bounds];
  [v1 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_activityIndicatorView];
  [v0 bounds];
  MidX = CGRectGetMidX(v9);
  [v0 bounds];
  return [v3 setCenter_];
}

uint64_t sub_2458164B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24579D5E0(0, &qword_27EE29630);
  sub_245910724();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_245771BB4(a2);
  sub_2459111E4();
}

void sub_2458165B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView);

    [v2 setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_245829A38(0, 0);
  }
}

void sub_2458166A0(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView);

    [v4 setAlpha_];
  }
}

void sub_245816728(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_245829C90();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_9:
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v6 = v5[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying];
  v5[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying] = 0;
  if ((v6 & 1) == 0)
  {

    goto LABEL_9;
  }

  v7 = *&v5[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated];
  if (v7)
  {
    v8 = v5;

    v7(0);

    v5 = sub_245771C34(v7);
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

LABEL_10:
  a2(v5);
}

uint64_t sub_245816830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_245910D34();
  v4[4] = sub_245910D24();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2458168E0;

  return sub_245825CE8();
}

uint64_t sub_2458168E0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_245816A20;

  return sub_2458267F8();
}

uint64_t sub_245816A20()
{

  v1 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245816B5C, v1, v0);
}

uint64_t sub_245816B5C()
{
  v1 = *(v0 + 16);

  [v1 setNeedsDisplay];
  v2 = *(v0 + 8);

  return v2();
}

void sub_245816C10(id *a1)
{
  v1 = *a1;
  v2 = [*a1 diffuse];
  [v2 setContents_];

  v3 = [v1 normal];
  [v3 setContents_];

  v4 = [v1 metalness];
  [v4 setContents_];

  v5 = [v1 roughness];
  [v5 setContents_];

  v6 = [v1 emission];
  [v6 setContents_];

  v7 = [v1 transparent];
  [v7 setContents_];

  v8 = [v1 multiply];
  [v8 setContents_];

  v9 = [v1 ambientOcclusion];
  [v9 setContents_];

  v10 = [v1 selfIllumination];
  [v10 setContents_];
}

void sub_245816DD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_245816EC4()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_activityIndicatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CDBB20]) init];
  v3 = OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_bottomGradientLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isPreparingScene) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onPreparedSceneCompletion);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isChipReading) = 0;
  v5 = v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingProgress;
  *v5 = 0;
  *(v5 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_chipReadingSuccess) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isFaded) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_interfaceStyle) = 0;
  v6 = (v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated);
  *v6 = 0;
  v6[1] = 0;
  sub_2459115D4();
  __break(1u);
}

id sub_245817014(void *a1)
{
  v2 = [a1 geometry];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 materials];

    sub_24579D5E0(0, &qword_27EE2A1A0);
    v5 = sub_245910C44();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245D76B30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = v8;
        sub_245816C10(&v12);

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  [a1 setGeometry_];
  [a1 removeAllActions];
  [a1 removeAllAnimations];

  return [a1 removeFromParentNode];
}

uint64_t sub_2458171B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245816830(a1, v4, v5, v6);
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

double sub_24581730C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CA8);
  v2 = swift_allocObject();
  if (a1)
  {
    *(v2 + 16) = xmmword_2459169B0;
    *(v2 + 32) = 33554434;
    *(v2 + 40) = 3;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 74) = 1;
    *(v2 + 72) = 771;
    *(v2 + 80) = xmmword_245919A90;
    *(v2 + 96) = xmmword_245919AD0;
    *(v2 + 112) = 1;
    *(v2 + 120) = 458757;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    *&result = 1051361018;
    *(v2 + 144) = xmmword_245919AA0;
    *(v2 + 162) = 3;
    *(v2 + 160) = 0;
    *(v2 + 168) = xmmword_245919AE0;
    *(v2 + 184) = xmmword_245919AA0;
    *(v2 + 200) = 1;
    *(v2 + 208) = 458757;
    *(v2 + 216) = 3;
    *(v2 + 224) = 0;
    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    *(v2 + 250) = 0;
    *(v2 + 248) = 512;
    __asm { FMOV            V1.2D, #2.0 }

    *(v2 + 256) = _Q1;
    *(v2 + 272) = xmmword_245919AA0;
    *(v2 + 288) = 1;
  }

  else
  {
    *(v2 + 16) = xmmword_245916990;
    *(v2 + 32) = 459010;
    *(v2 + 40) = 3;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 74) = 3;
    *(v2 + 72) = 0;
    *(v2 + 80) = xmmword_245919A70;
    *(v2 + 96) = xmmword_245919A80;
    *(v2 + 112) = 1;
    *(v2 + 120) = 5;
    *(v2 + 128) = 3;
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    *(v2 + 162) = 1;
    *(v2 + 160) = 771;
    *(v2 + 168) = xmmword_245919A90;
    *&result = 1051361018;
    *(v2 + 184) = xmmword_245919AA0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 16777985;
    *(v2 + 216) = 3;
    *(v2 + 224) = 0;
    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    *(v2 + 250) = 3;
    *(v2 + 248) = 0;
    __asm { FMOV            V1.2D, #2.0 }

    *(v2 + 256) = _Q1;
    *(v2 + 272) = xmmword_245919AA0;
    *(v2 + 288) = 1;
    *(v2 + 296) = 458757;
    *(v2 + 304) = xmmword_245919AB0;
    *(v2 + 320) = xmmword_245919AA0;
    *(v2 + 338) = 3;
    *(v2 + 336) = 0;
    *(v2 + 344) = 0x4010000000000000;
    *(v2 + 352) = 0x4000000000000000;
    *(v2 + 360) = xmmword_245919AA0;
    *(v2 + 376) = 1;
    *(v2 + 384) = 83951619;
    *(v2 + 392) = 3;
    *(v2 + 400) = 0;
    *(v2 + 408) = 0;
    *(v2 + 416) = 0;
    *(v2 + 426) = 3;
    *(v2 + 424) = 0;
    *(v2 + 432) = xmmword_245919AC0;
    *(v2 + 448) = xmmword_245919AA0;
    *(v2 + 464) = 1;
    *(v2 + 472) = 458757;
    *(v2 + 480) = 3;
    *(v2 + 488) = 0;
    *(v2 + 496) = 0;
    *(v2 + 504) = 0;
    *(v2 + 512) = 256;
    *(v2 + 514) = 0;
    *(v2 + 520) = 0x3FF0000000000000;
    *(v2 + 528) = 0x4015333333333333;
    *(v2 + 536) = xmmword_245919AA0;
    *(v2 + 552) = 1;
  }

  return result;
}

void sub_245817550()
{
  v2 = [objc_allocWithZone(MEMORY[0x277CDBA48]) init];
  [v2 setFieldOfView_];
  [v2 setProjectionDirection_];
  [v2 setZNear_];
  [v2 setZFar_];
  v1 = *&v0[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode];
  [v1 setCamera_];
  sub_245910F24();
  [v1 setPosition_];
  sub_245910F24();
  [v1 lookAt_];
  [v0 addChildNode_];
}

id sub_2458177B0(void *a1, float a2)
{
  [a1 eulerAngles];
  *&v4 = a2;

  return [a1 setEulerAngles_];
}

id sub_245817808(void *a1)
{
  [a1 position];

  return [a1 setPosition_];
}

unint64_t sub_2458178A8()
{
  result = qword_27EE2A1B0;
  if (!qword_27EE2A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A1B0);
  }

  return result;
}

void sub_245817924(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_245817970(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

id sub_2458179E8(char a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_chipPlaneSize] = 0x40179F3E0370CDC8;
  v4 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_chipPlaneNode;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_shouldPlayPulsingAnimation] = 0;
  v5 = dbl_245919C20[a1];
  v6 = dbl_245919C38[a1];
  v7 = dbl_245919C50[a1];
  v8 = objc_allocWithZone(type metadata accessor for PassportChipPulsingEffectLayer());
  *&v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_chipLayer] = sub_245818000(v6, v7, v5);
  v11.receiver = v2;
  v11.super_class = _s29PassportChipPulsingEffectNodeCMa();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_245817BA8();

  return v9;
}

void sub_245817BA8()
{
  v1 = [objc_opt_self() planeWithWidth:5.90551 height:5.90551];
  v6 = [objc_allocWithZone(MEMORY[0x277CDBA90]) init];
  v2 = [v6 diffuse];
  [v2 setContents_];

  [v6 setLightingModelName_];
  [v6 setBlendMode_];
  v3 = v1;
  [v3 setFirstMaterial_];
  v4 = *&v0[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_chipPlaneNode];
  [v4 setGeometry_];

  [v4 eulerAngles];
  LODWORD(v5) = -1077342246;
  [v4 setEulerAngles_];
  [v0 addChildNode_];
  sub_24581880C(0.0);
}

id sub_245817D28(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4000000000000000;
  *(v5 + 24) = xmmword_245919B90;
  *(v5 + 40) = 0x3F80000000000000;
  *(v5 + 48) = sub_24581AFE0;
  *(v5 + 56) = v3;
  v10[4] = sub_24581AFE8;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_245817970;
  v10[3] = &block_descriptor_53;
  v6 = _Block_copy(v10);

  v7 = a1;

  v8 = [v4 customActionWithDuration:v6 actionBlock:2.0];

  _Block_release(v6);

  return v8;
}

void sub_245817EBC(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView29PassportChipPulsingEffectNode_chipLayer);
    sub_245819050(a4, a1);
  }
}

char *sub_245818000(double a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_bufferSize] = 32;
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_canvasSize] = vdupq_n_s64(0x4097700000000000uLL);
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportSize] = xmmword_245919BA0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportCornerRadius] = 0x403E000000000000;
  v7 = &v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_smoothedProgress] = 0;
  v8 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportPulseLayer;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v9 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBorderLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v10 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBlurMaskLayer;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_particleEmitterLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277CD9E88]) init];
  v12 = &v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneSize];
  *v12 = a1;
  v12[1] = a2;
  *&v3[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneCornerRadius] = a3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for PassportChipPulsingEffectLayer();
  v13 = objc_msgSendSuper2(&v18, sel_init);
  [v13 setFrame_];
  v14 = [objc_opt_self() clearColor];
  v15 = [v14 CGColor];

  [v13 setBackgroundColor_];
  [v13 setContentsScale_];
  sub_2458194DC();
  sub_245819728();
  sub_245819BC0();
  v16 = sub_245910C94();
  *(v16 + 16) = 32;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  *(v16 + 176) = 0u;
  *(v16 + 192) = 0u;
  *(v16 + 208) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 240) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 272) = 0u;
  *&v13[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] = v16;

  return v13;
}

char *sub_245818290(void *a1)
{
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_bufferSize] = 32;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_canvasSize] = vdupq_n_s64(0x4097700000000000uLL);
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportSize] = xmmword_245919BA0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportCornerRadius] = 0x403E000000000000;
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_smoothedProgress] = 0;
  v4 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportPulseLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBorderLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBlurMaskLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_particleEmitterLayer;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CD9E88]) init];
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneSize] = xmmword_245919BB0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneCornerRadius] = 0x4060400000000000;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_245911704();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PassportChipPulsingEffectLayer();
  v9 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v8);
  swift_unknownObjectRelease();
  v10 = v9;
  [v10 setFrame_];
  v11 = [objc_opt_self() clearColor];
  v12 = [v11 CGColor];

  [v10 setBackgroundColor_];
  [v10 setContentsScale_];
  sub_2458194DC();
  sub_245819728();
  sub_245819BC0();
  v13 = sub_245910C94();
  *(v13 + 16) = 32;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 256) = 0u;
  *(v13 + 272) = 0u;
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v10[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] = v13;

  return v10;
}

id sub_24581859C(void *a1)
{
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_bufferSize] = 32;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_canvasSize] = vdupq_n_s64(0x4097700000000000uLL);
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportSize] = xmmword_245919BA0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportCornerRadius] = 0x403E000000000000;
  v3 = &v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_smoothedProgress] = 0;
  v4 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportPulseLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBorderLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBlurMaskLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_particleEmitterLayer;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CD9E88]) init];
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneSize] = xmmword_245919BB0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneCornerRadius] = 0x4060400000000000;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for PassportChipPulsingEffectLayer();
  v8 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    [v10 setFrame_];
    v11 = [objc_opt_self() clearColor];
    v12 = [v11 CGColor];

    [v10 setBackgroundColor_];
    [v10 setContentsScale_];
    sub_2458194DC();
    sub_245819728();
    sub_245819BC0();
  }

  return v9;
}

uint64_t sub_24581880C(double a1)
{
  v2 = 0.0;
  if (a1 > 0.0)
  {
    v2 = a1;
  }

  if (v2 <= 1.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress;
  *v4 = v3;
  *(v4 + 8) = 0;
  if (!*(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink) && v3 > 0.0 && v3 < 1.0)
  {
    sub_24581894C();
  }

  v6 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer;
  v7 = *(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v6) = v7;
  if ((result & 1) == 0)
  {
    result = sub_24580A724(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *(v1 + v6) = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_24580A724((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + 8 * v10 + 32) = v3;
  *(v1 + v6) = v7;
  if (v10 >= 0x20)
  {
    return sub_24581AF08(0, 1, sub_24580A724, sub_24581AE60);
  }

  return result;
}

void sub_24581894C()
{
  sub_245818A3C();
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_updateFrame];
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink);
  *(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = [objc_opt_self() mainRunLoop];
    [v3 addToRunLoop:v4 forMode:*MEMORY[0x277CBE640]];
  }
}

uint64_t sub_245818A3C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink;
  [*(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = sub_245910C94();
  *(v3 + 16) = 32;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer) = v3;
}

id sub_245818ADC()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer;
  if (!*(*&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_progressBuffer] + 16))
  {
    return result;
  }

  v2 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress];
  v3 = 0.0;
  if (v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_currentInputProgress + 8])
  {
    v2 = 0.0;
  }

  sub_24581880C(v2);
  v4 = *&v0[v1];
  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 <= 3)
    {
      v6 = 0;
LABEL_10:
      v9 = v5 - v6;
      v10 = (v4 + 8 * v6 + 32);
      do
      {
        v11 = *v10++;
        v3 = v3 + v11;
        --v9;
      }

      while (v9);
      goto LABEL_12;
    }

    v6 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    v7 = (v4 + 48);
    v8 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v3 = v3 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
      v7 += 4;
      v8 -= 4;
    }

    while (v8);
    if (v5 != v6)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v12 = v3 / v5;
  v13 = OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_smoothedProgress;
  *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_smoothedProgress] = v12;
  *&v12 = v12;
  sub_245818C58(*&v12);
  result = [v0 setNeedsDisplay];
  v15 = *&v0[v13];
  if (v15 >= 1.0 || v15 <= 0.0)
  {

    return sub_245818A3C();
  }

  return result;
}

uint64_t sub_245818C58(float a1)
{
  v3 = sub_2459107E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1.0 - a1;
  if ((1.0 - a1) <= 0.0)
  {
    v11 = 0.0;
  }

  v12 = (v11 * 300.0) + 200.0 + (v11 * 300.0) + 200.0 + -120.0;
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = (1.0 - a1) * pow(a1, 5.0) / 0.059049;
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v15 = sub_245911034();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v14;
  *(v16 + 32) = v13;
  *(v16 + 40) = v13;
  *(v16 + 48) = a1;
  aBlock[4] = sub_24581AE4C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_41_0;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v10, v6, v17);
  _Block_release(v17);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_245818F80(uint64_t a1, double a2, double a3, double a4, float a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportPulseLayer);
  v9 = a2 * 0.667;
  *&v9 = v9;
  [v8 setOpacity_];
  [v8 setBounds_];
  [v8 setPosition_];
  if (a4 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  [v8 setCornerRadius_];
  sub_245819DB0(a5);
}

uint64_t sub_245819050(void *a1, float a2)
{
  v5 = sub_2459107E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245910814();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v12 = sub_245911034();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = (a2 * 300.0);
  *(v13 + 48) = 1.0 - a2;
  aBlock[4] = sub_24581AE38;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_35;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  v16 = a1;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

id sub_245819324(uint64_t a1, id a2, float a3, double a4, float a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBorderLayer);
  v10 = [a2 CGColor];
  [v9 setBorderColor_];

  if (a3 <= 0.05)
  {
    *&v11 = powf(a3 / 0.05, 3.0);
  }

  else
  {
    *&v11 = (1.0 - a3) / 0.95;
  }

  [v9 setOpacity_];
  v12 = *(a1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneSize + 8);
  [v9 setBounds_];
  v13 = *(a1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBlurMaskLayer);
  [v9 bounds];
  v14 = CGRectGetWidth(v17) * 0.5;
  [v9 bounds];
  [v13 setPosition_];
  [v9 setCornerRadius_];

  return [v9 setBorderWidth_];
}

uint64_t sub_2458194DC()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_passportPulseLayer];
  [v1 setBounds_];
  [v1 setPosition_];
  [v1 setCornerRadius_];
  [v1 setCornerCurve_];
  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor_];
  sub_24581A4BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A08);
  v4 = sub_2459108E4();

  [v1 setActions_];

  CATransform3DMakeScale(&v9, 1.0, 0.5, 1.0);
  [v1 setTransform_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_245916930;
  v6 = sub_24581A79C();
  *(v5 + 56) = sub_24579D5E0(0, &qword_27EE2A258);
  *(v5 + 32) = v6;
  v7 = sub_245910C34();

  [v1 setFilters_];

  [v0 addSublayer_];
  return sub_245818C58(0.0);
}

void sub_245819728()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBorderLayer];
  v2 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneSize + 8];
  [v1 setBounds_];
  [v1 setPosition_];
  [v1 setCornerRadius_];
  [v1 setCornerCurve_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v4 CGColor];

  [v1 setBorderColor_];
  [v1 setBorderWidth_];
  v6 = [v3 clearColor];
  v7 = [v6 CGColor];

  [v1 setBackgroundColor_];
  [v1 setOpacity_];
  sub_24581A4BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A08);
  v8 = sub_2459108E4();

  [v1 setActions_];

  v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_phoneBlurMaskLayer];
  [v9 setBounds_];
  [v9 setCornerRadius_];
  v10 = [v3 redColor];
  v11 = [v10 CGColor];

  [v9 setBackgroundColor_];
  sub_24581A4BC();
  v12 = sub_2459108E4();

  [v9 setActions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_245916930;
  v14 = sub_24581A79C();
  v15 = sub_24579D5E0(0, &qword_27EE2A258);
  *(v13 + 56) = v15;
  *(v13 + 32) = v14;
  v16 = sub_245910C34();

  [v9 setFilters_];

  [v1 setMask_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_245916930;
  v18 = sub_24581A79C();
  *(v17 + 56) = v15;
  *(v17 + 32) = v18;
  v19 = sub_245910C34();

  [v1 setFilters_];

  v20 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v1 setCompositingFilter_];

  [v0 addSublayer_];
  v21 = [v3 whiteColor];
  sub_245819050(v21, 0.0);
}

void sub_245819BC0()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_particleEmitterLayer];
  [v0 frame];
  [v1 setFrame_];
  [v0 frame];
  MidX = CGRectGetMidX(v7);
  [v0 frame];
  [v1 setEmitterPosition_];
  [v1 setEmitterShape_];
  [v1 setRenderMode_];
  [v1 setEmitterSize_];
  [v1 setEmitterDepth_];
  v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v1 setCompositingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245916860;
  *(v4 + 32) = sub_24581ABE8();
  sub_24579D5E0(0, &qword_27EE2A248);
  v5 = sub_245910C34();

  [v1 setEmitterCells_];

  [v0 addSublayer_];

  sub_245819DB0(0.0);
}

void sub_245819DB0(float a1)
{
  v3 = 1.0 - a1;
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  v4 = (v3 * 200.0) + 200.0 + (v3 * 200.0) + 200.0 + -120.0;
  if (v4 > 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6424C8BFAA067665DB7631AA91D6A45B30PassportChipPulsingEffectLayer_particleEmitterLayer);
  [v6 setEmitterSize_];
  [v6 setEmitterDepth_];
  LODWORD(v7) = 0.5;
  [v6 setOpacity_];
  v8 = [v6 emitterCells];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  sub_24579D5E0(0, &qword_27EE2A248);
  v10 = sub_245910C44();

  if (v10 >> 62)
  {
    if (sub_245911424())
    {
      goto LABEL_9;
    }

LABEL_19:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x245D76B30](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 + 32);
  }

  v14 = v11;

  v12 = a1 * a1 * (1.0 - a1) / 0.140625;
  if (v12 > 0.667)
  {
    v12 = 0.667;
  }

  v13 = v5;
  *&v12 = v12;
  *&v12 = *&v12 * v13;
  [v14 setBirthRate_];
}

void sub_245819FC0(void *a1, CGGradient *a2, double a3, double a4, CGFloat a5)
{
  v7 = a3 * 0.5;
  v8 = a4 * 0.5;
  v9 = [a1 CGContext];
  v11.x = v7;
  v11.y = v8;
  v12.x = v7;
  v12.y = v8;
  CGContextDrawRadialGradient(v9, a2, v11, 0.0, v12, a5, 2u);
}

id sub_24581A0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_24581A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_24590E9E4();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_24581A314(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_24580A04C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_24581A18C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_24581A3E8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24581A4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245918640;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 80) = 0x656D617266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 104) = 0x7974696361706FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 128) = 0x756F72676B636162;
  *(inited + 136) = 0xEF726F6C6F43646ELL;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 152) = 0x726F66736E617274;
  *(inited + 160) = 0xE90000000000006DLL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 176) = 0x73746E65746E6F63;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 200) = 0x737265746C6966;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002459273C0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 248) = 0x6F43726564726F62;
  *(inited + 256) = 0xEB00000000726F6CLL;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 272) = 0x6957726564726F62;
  *(inited + 280) = 0xEB00000000687464;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  strcpy((inited + 296), "cornerRadius");
  *(inited + 309) = 0;
  *(inited + 310) = -5120;
  *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v1 = sub_2458B8C7C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29A00);
  swift_arrayDestroy();
  return v1;
}

id sub_24581A79C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v1 = sub_245910CC4();
  v2 = sub_2459109C4();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_24590C2F4();
  v4 = sub_2459109C4();
  [v0 setValue:v3 forKey:v4];

  return v0;
}

uint64_t sub_24581A898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2459186C0;
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v2 CGColor];

  *(v0 + 32) = v3;
  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  *(v0 + 40) = v6;
  type metadata accessor for CGColor(0);
  v7 = sub_245910C34();

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGGradientCreateWithColors(DeviceRGB, v7, dbl_285882D90);

  if (!v9)
  {

    v23 = 0;
    v24 = 0;
    goto LABEL_5;
  }

  sub_24579D5E0(0, &qword_27EE2A250);
  v10 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v10 setOpaque_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v10 format:{20.0, 20.0}];
  v12 = swift_allocObject();
  __asm { FMOV            V0.2D, #20.0 }

  *(v12 + 16) = _Q0;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0x4024000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24581ADE8;
  *(v18 + 24) = v12;
  v25[4] = sub_24581ADF8;
  v25[5] = v18;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_245817924;
  v25[3] = &block_descriptor_17;
  v19 = _Block_copy(v25);
  v20 = v9;

  v21 = [v11 imageWithActions_];

  _Block_release(v19);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v23 = [v21 CGImage];

    v24 = sub_24581ADE8;
LABEL_5:
    sub_245771C34(v24);
    return v23;
  }

  __break(1u);
  return result;
}

id sub_24581ABE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E80]) init];
  v1 = sub_24581A898();
  [v0 setContents_];

  [v0 setBirthRate_];
  LODWORD(v2) = 1.0;
  [v0 setLifetime_];
  LODWORD(v3) = 1.0;
  [v0 setLifetimeRange_];
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 CGColor];

  [v0 setColor_];
  [v0 setEmissionRange_];
  [v0 setVelocity_];
  [v0 setVelocityRange_];
  [v0 setYAcceleration_];
  [v0 setScale_];
  [v0 setScaleRange_];
  LODWORD(v6) = -0.5;
  [v0 setAlphaSpeed_];
  LODWORD(v7) = 1053609165;
  [v0 setAlphaRange_];
  LODWORD(v8) = 1.0;
  [v0 setRedRange_];
  LODWORD(v9) = 1.0;
  [v0 setGreenRange_];
  LODWORD(v10) = 1.0;
  [v0 setBlueRange_];
  return v0;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24581AE60(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24581AF08(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24581B02C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24581B074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24581B0C8()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_24581B1B8()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_24581B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2457AA338(a3, v25 - v10);
  v12 = sub_245910D64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24581EDE4(v11);
  }

  else
  {
    sub_245910D54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_245910CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245910AA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24581B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2457AA338(a3, v25 - v10);
  v12 = sub_245910D64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24581EDE4(v11);
  }

  else
  {
    sub_245910D54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_245910CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245910AA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A278);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A278);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24581B80C()
{
  sub_245910AF4();
}

uint64_t sub_24581B8EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24581F438();
  *a1 = result;
  return result;
}

void sub_24581B91C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "PhoneMetalAntenna";
  v5 = "doublePageLandscapeInward";
  v6 = 0xD00000000000001ALL;
  v7 = "doublePageLandscapeOutward";
  v8 = 0xD000000000000010;
  if (v3 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = "lastPagePortrait";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "photoPageLandscape";
  v10 = 0xD000000000000019;
  if (v3 == 1)
  {
    v10 = 0xD000000000000012;
  }

  else
  {
    v9 = "doublePagePortrait";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

char *sub_24581BA88()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  *&v0[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_loadTask] = 0;
  *&v0[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes] = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_shadowNode;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_245910D34();
  v8 = v6;
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  *&v8[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_loadTask] = sub_2458B96E0(0, 0, v4, &unk_245919D08, v10);

  return v8;
}

uint64_t sub_24581BD04()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_removeAllActions);
  v1 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D76B30](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 removeAllActions];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_24581BE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = sub_24590F354();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v4[11] = swift_task_alloc();
  sub_245910D34();
  v4[12] = sub_245910D24();
  v7 = sub_245910CD4();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x2822009F8](sub_24581BF98, v7, v6);
}

uint64_t sub_24581BF98()
{
  v1 = v0[11];
  sub_245910D44();
  v2 = sub_245910D64();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_24581B544(0, 0, v1, &unk_245919D18, v3);
  v0[15] = v4;
  sub_24581EDE4(v1);
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A278);
  *v5 = v0;
  v5[1] = sub_24581C0E8;

  return MEMORY[0x282200460](v0 + 5, v4, v6);
}

uint64_t sub_24581C0E8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24581C208, v3, v2);
}

uint64_t sub_24581C208()
{

  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = sub_24581F484(*(v0 + 40));
    if (v2)
    {
      v3 = *(v0 + 56);
      v4 = *&v3[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_shadowNode];
      *&v3[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_shadowNode] = v2;
      v5 = v2;

      [v3 addChildNode_];
    }

    v6 = *(v0 + 56);
    v38 = v1;
    v7 = sub_2458203AC(v1);
    v8 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
    swift_beginAccess();
    *(v6 + v8) = v7;

    v37 = v6;
    v9 = *(v6 + v8);
    if (v9 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
    {

      if (!i)
      {
        break;
      }

      v11 = 0;
      v12 = *MEMORY[0x277CDBC28];
      v13 = *(MEMORY[0x277CDBC28] + 4);
      v14 = *(MEMORY[0x277CDBC28] + 8);
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D76B30](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v15 = *(v9 + 8 * v11 + 32);
        }

        v19 = v15;
        v20 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        LODWORD(v16) = v12;
        LODWORD(v17) = v13;
        LODWORD(v18) = v14;
        [v15 setPosition_];

        ++v11;
        if (v20 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_15:

    sub_24581C680();
    result = sub_24581C968();
    v22 = *(v6 + v8);
    if (v22 >> 62)
    {
      result = sub_245911424();
      v23 = result;
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x245D76B30](v24, v22);
        }

        else
        {
          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = *(v0 + 56);
        ++v24;
        [v25 removeFromParentNode];
        [v27 addChildNode_];
      }

      while (v23 != v24);
    }

    else
    {
    }

    v35 = 1;
  }

  else
  {
    sub_24590C714();
    v28 = sub_24590F344();
    v29 = sub_245910F64();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    v33 = *(v0 + 64);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245767000, v28, v29, "PassportSceneView PassportNode: Failed to load 'PassportScene.scn'. Scene setup aborted.", v34, 2u);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    v35 = 0;
  }

  **(v0 + 48) = v35;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_24581C5C4()
{
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_2458146C8(0x74726F7073736150, 0xED0000656E656353, qword_27EE32B38);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24581C680()
{
  v1 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = v3 & 0xC000000000000001;
      v18 = v3 + 32;
      v19 = v3 & 0xFFFFFFFFFFFFFF8;

      v6 = 0;
      v7 = &selRef_userInfo;
      v21 = v4;
      v22 = v3;
      v20 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          v9 = MEMORY[0x245D76B30](v6, v3);
        }

        else
        {
          if (v6 >= *(v19 + 16))
          {
            goto LABEL_27;
          }

          v9 = *(v18 + 8 * v6);
        }

        v8 = v9;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v11 = [v9 v7[261]];
        if (!v11)
        {
          goto LABEL_6;
        }

        v23 = v11;
        v24 = v8;
        v12 = [v11 materials];
        sub_24579D5E0(0, &qword_27EE2A1A0);
        v13 = sub_245910C44();

        if (v13 >> 62)
        {
          v14 = sub_245911424();
          if (v14)
          {
LABEL_15:
            sub_245911564();
            if (v14 < 0)
            {
              goto LABEL_26;
            }

            v15 = 0;
            do
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x245D76B30](v15, v13);
              }

              else
              {
                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              ++v15;
              [v16 copy];
              sub_245911354();
              swift_unknownObjectRelease();

              swift_dynamicCast();
              sub_245911544();
              sub_245911574();
              sub_245911584();
              sub_245911554();
            }

            while (v14 != v15);

            v4 = v21;
            v3 = v22;
            v5 = v20;
            v7 = &selRef_userInfo;
            goto LABEL_5;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_15;
          }
        }

LABEL_5:
        v8 = sub_245910C34();

        [v23 setMaterials_];

LABEL_6:
        if (v6 == v4)
        {
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = sub_245911424();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24581C968()
{
  v1 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D76B30](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 morpher];
      if (v8)
      {
        v9 = v8;
        [v8 setCalculationMode_];
      }

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_24581CAA0(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_38:
      *a2 = v5;
      return;
    }

    v37 = MEMORY[0x277D84F90];
    a2 = &v37;
    sub_245911564();
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v28 = v2 + 32;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = &selRef_userInfo;
    v9 = &selRef_userInfo;
    v25 = v2;
    v26 = v2 & 0xC000000000000001;
    v27 = i;
    while (!__OFADD__(v6, 1))
    {
      v34 = v6 + 1;
      if (v7)
      {
        v11 = MEMORY[0x245D76B30]();
      }

      else
      {
        if (v6 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        v11 = *(v28 + 8 * v6);
      }

      v12 = v11;
      v13 = [v11 v8[347]];
      v14 = [v12 v9[261]];
      if (v14)
      {
        v33 = v13;
        v15 = v14;
        [v14 copy];
        sub_245911354();
        swift_unknownObjectRelease();
        sub_24579D5E0(0, &qword_27EE2A2B8);
        v32 = v15;
        if (swift_dynamicCast())
        {
          v30 = v36;
          v16 = [v15 materials];
          sub_24579D5E0(0, &qword_27EE2A1A0);
          v17 = sub_245910C44();

          v18 = MEMORY[0x277D84F90];
          v36 = MEMORY[0x277D84F90];
          if (v17 >> 62)
          {
            v19 = sub_245911424();
          }

          else
          {
            v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = v12;
          a2 = v18;
          if (v19)
          {
            v20 = 0;
            do
            {
              v2 = v20;
              while (1)
              {
                if ((v17 & 0xC000000000000001) != 0)
                {
                  v21 = MEMORY[0x245D76B30](v2, v17);
                }

                else
                {
                  if (v2 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_40;
                  }

                  v21 = *(v17 + 8 * v2 + 32);
                }

                v22 = v21;
                v20 = v2 + 1;
                if (__OFADD__(v2, 1))
                {
                  __break(1u);
LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                [v21 copy];
                sub_245911354();
                swift_unknownObjectRelease();

                if (swift_dynamicCast())
                {
                  if (v35)
                  {
                    break;
                  }
                }

                ++v2;
                if (v20 == v19)
                {
                  v2 = v25;
                  goto LABEL_35;
                }
              }

              MEMORY[0x245D76260]();
              if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_245910C74();
              }

              sub_245910CA4();
              a2 = v36;
              v2 = v25;
            }

            while (v20 != v19);
          }

LABEL_35:

          v23 = sub_245910C34();

          [v30 setMaterials_];

          v10 = v30;
          v7 = v26;
          i = v27;
          v8 = &selRef_userInfo;
          v9 = &selRef_userInfo;
          v12 = v31;
        }

        else
        {
          v10 = 0;
        }

        [v33 setGeometry_];
      }

      a2 = &v37;
      sub_245911544();
      sub_245911574();
      sub_245911584();
      sub_245911554();
      v6 = v34;
      if (v34 == i)
      {
        v5 = v37;
        a2 = v24;
        goto LABEL_38;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  __break(1u);
}

uint64_t sub_24581CEC8(uint64_t a1, uint64_t a2, uint64_t a3, float64_t a4, float64_t a5)
{
  v6 = a1 & 1;
  if (a1 < 0)
  {
    v6 = -v6;
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    a2 = MEMORY[0x277D84F90];
    if (v6 != 1)
    {
      goto LABEL_7;
    }

    a2 = a3;
  }

LABEL_7:
  v8 = *(a2 + 16);
  if (v8)
  {
    sub_24577CC94(0, v8, 0);
    v10.f64[0] = a4;
    v9 = *(v7 + 16);
    v10.f64[1] = a5;
    v11 = 32;
    v12 = vdupq_n_s64(0x40AF400000000000uLL);
    do
    {
      v13 = *(a2 + v11);
      v14 = *(v7 + 24);
      if (v9 >= v14 >> 1)
      {
        v18 = v12;
        v20 = v10;
        v16 = *(a2 + v11);
        sub_24577CC94((v14 > 1), v9 + 1, 1);
        v13 = v16;
        v12 = v18;
        v10 = v20;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + 16 * v9 + 32) = vdivq_f64(vaddq_f64(v13, v10), v12);
      v11 += 16;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return v7;
}

void sub_24581CFF4(uint64_t a1, float a2, double a3)
{
  *&v9 = a2;
  v15 = sub_24590F354();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v5 = 2 * a1;
  v4 = 2 * a1 + 2;
  if (__OFADD__(2 * a1, 2))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v8 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v19 = *(v8 + v3);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_74:
  v20 = sub_245911424();
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_5:
  v6 = (2 * a1) | 1;
  if (a1 < 0 || v6 >= v20)
  {
    goto LABEL_67;
  }

  v21 = *(v8 + v3);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_76:
  v22 = sub_245911424();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_9:
  if (v4 >= v22)
  {
LABEL_67:
    sub_24590C714();
    v78 = sub_24590F344();
    v79 = sub_245910F64();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 134218240;
      *(v80 + 4) = v6;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v4;
      _os_log_impl(&dword_245767000, v78, v79, "PassportSceneView PassportNode: Invalid indices for page update: left %ld, right %ld", v80, 0x16u);
      MEMORY[0x245D77B40](v80, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    return;
  }

  v23 = *(v8 + v3);
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_78:
  v24 = sub_245911424();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_80;
  }

LABEL_12:
  if (v5 >= v24)
  {
    goto LABEL_67;
  }

  v25 = *(v8 + v3);
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_80:
  v26 = sub_245911424();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_82;
  }

LABEL_15:
  inited = v4 | 1;
  if ((v4 | 1) >= v26)
  {
    goto LABEL_67;
  }

  swift_beginAccess();
  v16 = *(v8 + v3);
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 >= v27)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v4 >= v27)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (inited >= v27)
  {
    goto LABEL_88;
  }

  v28 = *(v16 + 32 + 8 * v4);
  v29 = *(v16 + 32 + 8 * v5);
  v30 = *(v16 + 32 + 8 * inited);
  v18 = *(v16 + 32 + 8 * v6);
  v6 = v28;
  v16 = v29;
  for (i = v30; ; i = MEMORY[0x245D76B30](inited, v82))
  {
    v5 = i;
    swift_endAccess();
    *&v10 = *&v9 * 3.1416;
    *&v11 = (*&v9 * 3.1416) + -3.1416;
    v15 = &selRef_userInfo;
    [v18 eulerAngles];
    v4 = &selRef_userInfo;
    [v18 setEulerAngles_];
    [v6 eulerAngles];
    [v6 setEulerAngles_];
    v32 = *(v8 + v3);
    if (v32 >> 62)
    {
LABEL_86:
      v33 = sub_245911424();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = vcvtd_n_f64_s64(v33, 1uLL) + -2.0;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v38 = MEMORY[0x245D76B30](0, inited);
      goto LABEL_38;
    }

    if (v34 <= -9.22337204e18)
    {
      goto LABEL_89;
    }

    if (v34 >= 9.22337204e18)
    {
      goto LABEL_90;
    }

    v85 = v5;
    v35 = v34;
    if (v34 <= 1)
    {
      v35 = 1;
    }

    v36 = __OFADD__(v35, 2);
    v37 = v35 + 2;
    if (v36)
    {
      goto LABEL_91;
    }

    v83 = v37;
    v12 = *&v9;
    v11 = 1.0;
    if (1.0 - *&v9 + 1.0 - *&v9 + -1.0 > 0.0)
    {
      v9 = 1.0 - *&v9 + 1.0 - *&v9 + -1.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (v12 + v12 + -1.0 > 0.0)
    {
      v10 = v12 + v12 + -1.0;
    }

    else
    {
      v10 = 0.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2459186C0;
    *(inited + 32) = v18;
    v3 = inited + 32;
    *(inited + 40) = v6;
    v5 = inited & 0xC000000000000001;
    v4 = inited & 0xFFFFFFFFFFFFFF8;
    v15 = v18;
    v84 = v6;
    if ((inited & 0xC000000000000001) != 0)
    {
      goto LABEL_92;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_82;
    }

    v38 = v15;
LABEL_38:
    v6 = v38;
    v8 = &selRef_userInfo;
    v39 = [v38 morpher];
    if (v39)
    {
      v40 = v16;
      v41 = v39;
      [v39 setCalculationMode_];

      v16 = v40;
      v8 = &selRef_userInfo;
    }

    if (v5)
    {
      break;
    }

    if (*(v4 + 16) >= 2uLL)
    {
      v42 = *(inited + 40);
      goto LABEL_43;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v18 = MEMORY[0x245D76B30](v6, v16);
    v6 = MEMORY[0x245D76B30](v4, v16);
    v81 = MEMORY[0x245D76B30](v5, v16);
    v82 = v16;
    v16 = v81;
  }

  v42 = MEMORY[0x245D76B30](1, inited);
LABEL_43:
  v43 = v42;
  v44 = fabs(v12 + -0.5);
  v45 = (a1 + 1);
  v46 = v83;
  v47 = (1.0 - (v44 + v44)) * 1.667;
  v48 = [v42 morpher];
  v49 = v85;
  if (v48)
  {
    v50 = v48;
    [v48 &selRef_systemGray2Color + 6];
  }

  v51 = v47 * a3;
  v52 = v45 / v46;

  swift_setDeallocating();
  swift_arrayDestroy();
  v53 = [v15 morpher];
  if (v53)
  {
    v54 = v53;
    [v53 setWeight:0 forTargetAtIndex:v51];
  }

  v55 = v11 - v52;
  v56 = [v15 morpher];
  v57 = v84;
  if (v56)
  {
    v58 = v56;
    [v56 setWeight:1 forTargetAtIndex:v9 * v55];
  }

  v59 = v11 - v55;
  v60 = [v15 morpher];
  if (v60)
  {
    v61 = v60;
    [v60 setWeight:2 forTargetAtIndex:v10 * v59];
  }

  v62 = [v57 morpher];
  if (v62)
  {
    v63 = v62;
    [v62 setWeight:0 forTargetAtIndex:v51];
  }

  v64 = [v57 morpher];
  if (v64)
  {
    v65 = v64;
    [v64 setWeight:2 forTargetAtIndex:v9 * v55];
  }

  v66 = [v57 morpher];
  if (v66)
  {
    v67 = v66;
    [v66 setWeight:1 forTargetAtIndex:v10 * v59];
  }

  v68 = [v16 geometry];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 firstMaterial];

    if (v70)
    {
      v71 = [v70 multiply];

      v72 = v10 * 0.75;
      if (v10 * 0.75 > 0.5)
      {
        v72 = 0.5;
      }

      [v71 setIntensity_];
    }
  }

  v73 = [v49 geometry];
  if (v73 && (v74 = v73, v75 = [v73 firstMaterial], v74, v75))
  {
    v76 = [v75 multiply];

    v77 = v9 * 0.75;
    if (v9 * 0.75 > 0.5)
    {
      v77 = 0.5;
    }

    [v76 setIntensity_];
  }

  else
  {
  }
}

void sub_24581D884()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 >> 62)
  {
    if (sub_245911424())
    {
LABEL_3:
      sub_24581CFF4(0, 1.0, 1.0);
      v7 = *(v0 + v5);
      if (v7 >> 62)
      {
        v8 = sub_245911424();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = vcvtd_n_f64_s64(v8, 1uLL) + -2.0;
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v9 > -9.22337204e18)
      {
        if (v9 < 9.22337204e18)
        {
          v10 = v9;
          sub_24581CFF4(1, 0.0, 1.0);
          if (v10 >= 2)
          {
            v11 = v10 - 1;
            v12 = 2;
            do
            {
              sub_24581CFF4(v12++, 0.0, 1.0);
              --v11;
            }

            while (v11);
          }

          return;
        }

LABEL_20:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_24590C714();
  v13 = sub_24590F344();
  v14 = sub_245910F64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_245767000, v13, v14, "PassportSceneView PassportNode: No passport page nodes found. Skipping reset.", v15, 2u);
    MEMORY[0x245D77B40](v15, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

void sub_24581DAD4(uint64_t a1, void (*a2)(void), id a3, double a4, double a5, float a6, float a7, float a8, float a9)
{
  *&v10 = a9;
  v19 = sub_24590F354();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v24 = *&v9[v23];
  if (v24 >> 62)
  {
    v25 = sub_245911424();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = vcvtd_n_f64_s64(v25, 1uLL) + -2.0;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_24581D884();
  if ((a1 & 1) == 0)
  {
    sub_24581CFF4(0, 0.0, 0.0);
    if (a2)
    {
      a2();
    }

    return;
  }

  a1 = swift_allocObject();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  v27 = *&v9[v23];
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_26:
  v28 = sub_245911424();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_9:
  if (v28 <= 1)
  {
    sub_245771BB4(a2);
    sub_24590C714();
    v45 = sub_24590F344();
    v46 = sub_245910F64();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = 1;
      _os_log_impl(&dword_245767000, v45, v46, "PassportSceneView PassportNode: Invalid page index: %ld. Animation aborted.", v47, 0xCu);
      MEMORY[0x245D77B40](v47, -1, -1);
    }

    (*(v20 + 8))(v22, v19);
    return;
  }

  v29 = swift_allocObject();
  v29[2] = v9;
  v29[3] = 0xBFC999999999999ALL;
  v29[4] = 0;
  v30 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  *(v31 + 24) = a6;
  *(v31 + 28) = a7;
  *(v31 + 32) = a8;
  *(v31 + 36) = v10;
  *(v31 + 40) = 1065353216;
  *(v31 + 48) = sub_245820E50;
  *(v31 + 56) = v29;
  v52 = sub_245820E80;
  v53 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  *(&aBlock + 1) = 1107296256;
  v50 = sub_245817970;
  v51 = &block_descriptor_18;
  v32 = _Block_copy(&aBlock);
  sub_245771BB4(a2);
  v33 = v9;

  a3 = [v30 customActionWithDuration:v32 actionBlock:a4];
  _Block_release(v32);
  if (a5 > 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2459186C0;
    *(v34 + 32) = [v30 waitForDuration_];
    *(v34 + 40) = a3;
    sub_24579D5E0(0, &qword_27EE2A2D0);
    v35 = a3;
    v36 = sub_245910C34();

    a3 = [v30 sequence_];
  }

  swift_beginAccess();
  v37 = *&v9[v23];
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v38 = MEMORY[0x245D76B30](1);
    goto LABEL_15;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v38 = *(v37 + 40);
LABEL_15:
    v39 = v38;
    swift_endAccess();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_2459114D4();

    strcpy(&aBlock, "pageAnimation_");
    HIBYTE(aBlock) = -18;
    v48 = 0;
    v40 = sub_2459116E4();
    MEMORY[0x245D76160](v40);

    v41 = sub_2459109C4();
    [v39 removeActionForKey_];

    v42 = sub_2459109C4();

    v43 = swift_allocObject();
    *(v43 + 16) = sub_245817304;
    *(v43 + 24) = a1;
    v52 = sub_245817300;
    v53 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = v10;
    v50 = sub_2458935A8;
    v51 = &block_descriptor_40;
    v44 = _Block_copy(&aBlock);

    [v39 runAction:a3 forKey:v42 completionHandler:v44];

    _Block_release(v44);

    return;
  }

  __break(1u);
}

void sub_24581E160(char a1, void (*a2)(void), uint64_t a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  LOBYTE(v13) = a1;
  v64 = a10;
  v63 = a9;
  v62 = sub_24590F354();
  v19 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v23 = *(&v10->isa + v22);
  if (v23 >> 62)
  {
    goto LABEL_40;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = vcvtd_n_f64_s64(v24, 1uLL) + -2.0;
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = v25 - 1;
  if (v25 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v25;
  }

  sub_24581D884();
  if (v13)
  {
    v61 = (v19 + 8);
    v68 = &v72;
    v29 = 1;
    a4 = a4 / ((v28 - 1) * a6 + 1.0);
    v30 = a4 * a6;
    *(&v31 + 1) = 5;
    v59 = xmmword_2459186C0;
    *&v31 = 134217984;
    v58 = v31;
    v32 = v10;
    v65 = v10;
    v66 = v22;
    v13 = v28;
    v60 = v21;
    v69 = v28;
    while (1)
    {
      v33 = swift_allocObject();
      v33[2] = v29;
      v33[3] = v13;
      v33[4] = a2;
      v33[5] = a3;
      v34 = *(&v32->isa + v22);
      if (v34 >> 62)
      {
        v35 = sub_245911424();
        if ((v35 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v24 = sub_245911424();
          goto LABEL_3;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = (v29 >> 1) + 1;
      if (v19 >= v35)
      {
        sub_245771BB4(a2);
        sub_24590C714();
        v10 = sub_24590F344();
        v46 = sub_245910F64();
        if (os_log_type_enabled(v10, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = v58;
          *(v47 + 4) = v19;
          _os_log_impl(&dword_245767000, v10, v46, "PassportSceneView PassportNode: Invalid page index: %ld. Animation aborted.", v47, 0xCu);
          v48 = v47;
          v22 = v66;
          MEMORY[0x245D77B40](v48, -1, -1);
        }

        (*v61)(v21, v62);
        v13 = v69;
      }

      else
      {
        a6 = v30 * v29 + a5;
        v10 = swift_allocObject();
        v10[2].isa = v32;
        v10[3].isa = 0x3FF0000000000000;
        v10[4].isa = v29;
        v36 = objc_opt_self();
        v37 = swift_allocObject();
        *(v37 + 16) = a4;
        *(v37 + 24) = a7;
        *(v37 + 28) = a8;
        v38 = v64;
        *(v37 + 32) = v63;
        *(v37 + 36) = v38;
        *(v37 + 40) = 0x3F80000000000000;
        *(v37 + 48) = sub_2458211DC;
        *(v37 + 56) = v10;
        v74 = sub_2458211F0;
        v75 = v37;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v72 = sub_245817970;
        v73 = &block_descriptor_54;
        v21 = _Block_copy(&aBlock);
        sub_245771BB4(a2);
        v39 = v32;

        v40 = [v36 customActionWithDuration:v21 actionBlock:a4];
        _Block_release(v21);
        if (a6 <= 0.0)
        {
          v67 = v40;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
          v21 = swift_allocObject();
          *(v21 + 1) = v59;
          *(v21 + 4) = [v36 waitForDuration_];
          *(v21 + 5) = v40;
          sub_24579D5E0(0, &qword_27EE2A2D0);
          v41 = v40;
          v42 = a3;
          v43 = a2;
          v44 = v41;
          v45 = sub_245910C34();

          v67 = [v36 sequence_];

          a2 = v43;
          a3 = v42;

          v32 = v65;
        }

        v22 = v66;

        swift_beginAccess();
        v49 = *(&v32->isa + v22);
        v13 = v69;
        if ((v49 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x245D76B30]((v29 >> 1) + 1);
        }

        else
        {
          if (v19 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v50 = *(v49 + 8 * v19 + 32);
        }

        v19 = v50;
        swift_endAccess();
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_2459114D4();

        v70 = v29;
        strcpy(&aBlock, "pageAnimation_");
        HIBYTE(aBlock) = -18;
        v51 = sub_2459116E4();
        MEMORY[0x245D76160](v51);

        v52 = sub_2459109C4();
        [v19 removeActionForKey_];

        v10 = sub_2459109C4();

        v53 = swift_allocObject();
        *(v53 + 16) = sub_245820E9C;
        *(v53 + 24) = v33;
        v74 = sub_245817304;
        v75 = v53;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v72 = sub_2458935A8;
        v73 = &block_descriptor_61_0;
        v54 = _Block_copy(&aBlock);

        v55 = v67;
        [v19 runAction:v67 forKey:v10 completionHandler:v54];

        _Block_release(v54);

        v32 = v65;
        v21 = v60;
      }

      if (v13 == v29)
      {
        return;
      }

      if (__OFADD__(v29++, 1))
      {
        goto LABEL_38;
      }
    }
  }

  sub_24581CFF4(1, 1.0, 1.0);
  if (v26 >= 2)
  {
    v57 = 2;
    do
    {
      sub_24581CFF4(v57++, 1.0, 1.0);
      --v27;
    }

    while (v27);
  }

  if (a2)
  {
    a2();
  }
}

id sub_24581E94C(void *a1)
{
  [a1 eulerAngles];

  return [a1 setEulerAngles_];
}

uint64_t (*sub_24581E9A4(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_24581EA6C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_245911424();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_245911424();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24581EB64(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24581EB64(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_245911424();
LABEL_9:
  result = sub_245911504();
  *v1 = result;
  return result;
}

uint64_t (*sub_24581EC04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D76B30](a2, a3);
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
    return sub_2458211E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24581EC84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_24581BE6C(a1, v4, v5, v6);
}

uint64_t sub_24581ED38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2457A18F4;

  return sub_24581C5A4(a1);
}

uint64_t sub_24581EDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_24581EE4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D76B30](a2, a3);
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
    return sub_24581EECC;
  }

  __break(1u);
  return result;
}

uint64_t sub_24581EED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_245911424();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_245911424();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_245821078(&qword_27EE2A2C8, &qword_27EE2A2C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A2C0);
            v9 = sub_24581EC04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24579D5E0(0, &qword_27EE291F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24581F074(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_245911424();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_245911424();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_245821078(&qword_27EE2A298, &qword_27EE2A290);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A290);
            v9 = sub_24581EE4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24579D5E0(0, &qword_27EE2A280);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24581F214(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24581F308;

  return v5(v2 + 16);
}

uint64_t sub_24581F308()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24581F438()
{
  v0 = sub_245911644();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

id sub_24581F484(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 rootNode];
  v7 = sub_2459109C4();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    [v8 removeFromParentNode];
    sub_245910F04();
    [v8 setPosition_];
  }

  else
  {
    sub_24590C714();
    v9 = sub_24590F344();
    v10 = sub_245910F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245767000, v9, v10, "PassportSceneView PassportNode: passport_shadow node not found", v11, 2u);
      MEMORY[0x245D77B40](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v8;
}

uint64_t sub_24581F670(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (result == a2)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  if (a2 < result)
  {
    goto LABEL_44;
  }

  v5 = MEMORY[0x277D84F90];
  v29 = a2;
  while (v6 != a2)
  {
    v7 = v4;
    sub_24581CAA0(a3, &v34);
    if (v4)
    {
      goto LABEL_37;
    }

    v8 = v34;
    v9 = v34 >> 62;
    if (v34 >> 62)
    {
      v10 = sub_245911424();
    }

    else
    {
      v10 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v5 >> 62;
    if (v5 >> 62)
    {
      v27 = sub_245911424();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_36:
        __break(1u);
LABEL_37:

        return v5;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_245911424();
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_245911504();
    v5 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      v18 = v14;
      result = sub_245911424();
      v14 = v18;
      v17 = result;
      if (!result)
      {
LABEL_5:

        if (v32 > 0)
        {
          goto LABEL_40;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    if (((v16 >> 1) - v15) < v32)
    {
      goto LABEL_41;
    }

    v31 = v5;
    v19 = v14 + 8 * v15 + 32;
    v28 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_43;
      }

      sub_245821078(&qword_27EE2A2B0, &qword_27EE2A2A8);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A2A8);
        v21 = sub_24581EC04(v33, i, v8);
        v23 = *v22;
        (v21)(v33, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      sub_24579D5E0(0, &qword_27EE2A2A0);
      swift_arrayInitWithCopy();
    }

    v4 = v7;
    v5 = v31;
    if (v32 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v32);
      v26 = v24 + v32;
      if (v25)
      {
        goto LABEL_42;
      }

      *(v28 + 16) = v26;
    }

LABEL_6:
    ++v6;
    a2 = v29;
    if (v6 == v29)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_24581F980(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 geometrySourcesForSemantic_];
  sub_24579D5E0(0, &qword_27EE2A280);
  v2 = sub_245910C44();

  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x245D76B30](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;

      v2 = [v4 dataStride];
      v5 = [v4 dataOffset];
      v6 = [v4 vectorCount];
      result = [v4 data];
      if (!result)
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v8 = result;
      if (!v6)
      {

        return MEMORY[0x277D84F90];
      }

      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        v11 = v9 * v2;
        if ((v9 * v2) >> 64 != (v9 * v2) >> 63)
        {
          break;
        }

        v12 = &v5[v11];
        if (__OFADD__(v11, v5))
        {
          goto LABEL_21;
        }

        v17[0] = 0;
        [v8 getBytes:v17 + 4 range:{&v5[v11], 4}];
        if (__OFADD__(v12, 4))
        {
          goto LABEL_22;
        }

        [v8 getBytes:v17 range:{v12 + 4, 4}];
        v16 = HIDWORD(v17[0]);
        v15 = v17[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24580A4D8(0, *(v10 + 2) + 1, 1, v10);
        }

        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        if (v14 >= v13 >> 1)
        {
          v10 = sub_24580A4D8((v13 > 1), v14 + 1, 1, v10);
        }

        ++v9;
        *(v10 + 2) = v14 + 1;
        *&v10[16 * v14 + 32] = vcvtq_f64_f32(__PAIR64__(v15, v16));
        if (v6 == v9)
        {

          return v10;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!sub_245911424())
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    return 0;
  }

  return result;
}

uint64_t sub_24581FC40(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_24590BED4();
      swift_allocObject();
      sub_24590BEC4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24590C104();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_24581FCE4(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 >> 60)
  {
    __break(1u);
  }

  v4 = sub_24581FC40(8 * v2);
  v43 = v4;
  v44 = v5;
  if (v2)
  {
    v6 = (a1 + 40);
    v7 = MEMORY[0x277D838B0];
    v8 = MEMORY[0x277CC9C18];
    v34 = v2;
    do
    {
      v11 = *v6;
      v12 = *(v6 - 1);
      v38 = v12;
      v41 = v7;
      v42 = v8;
      v39 = &v38;
      v40 = &v39;
      v13 = __swift_project_boxed_opaque_existential_1(&v39, v7);
      v14 = *v13;
      if (*v13 && (v15 = v13[1], v16 = v15 - v14, v15 != v14))
      {
        if (v16 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v37 = v15 - v14;
          memcpy(__dst, v14, v15 - v14);
          v17 = *__dst;
          v18 = v35 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v37 << 16)) << 32);
          v35 = v18;
        }

        else
        {
          sub_24590BED4();
          swift_allocObject();
          v26 = sub_24590BE74();
          v27 = v26;
          if (v16 >= 0x7FFFFFFF)
          {
            sub_24590C104();
            v17 = swift_allocObject();
            *(v17 + 16) = 0;
            *(v17 + 24) = v16;
            v18 = v27 | 0x8000000000000000;
          }

          else
          {
            v17 = v16 << 32;
            v18 = v26 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v39);
      sub_24590C164();
      sub_24578FC28(v17, v18);
      v19 = v11;
      v38 = v19;
      v41 = v7;
      v42 = v8;
      v39 = &v38;
      v40 = &v39;
      v20 = __swift_project_boxed_opaque_existential_1(&v39, v7);
      v21 = *v20;
      if (!*v20 || (v22 = v20[1], v23 = v22 - v21, v22 == v21))
      {
        v9 = 0;
        v10 = 0xC000000000000000;
      }

      else if (v23 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v37 = v22 - v21;
        memcpy(__dst, v21, v22 - v21);
        v9 = *__dst;
        v1 = v1 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v37 << 16)) << 32);
        v10 = v1;
      }

      else
      {
        sub_24590BED4();
        swift_allocObject();
        v24 = sub_24590BE74();
        v25 = v24;
        if (v23 >= 0x7FFFFFFF)
        {
          sub_24590C104();
          v9 = swift_allocObject();
          *(v9 + 16) = 0;
          *(v9 + 24) = v23;
          v10 = v25 | 0x8000000000000000;
        }

        else
        {
          v9 = v23 << 32;
          v10 = v24 | 0x4000000000000000;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v39);
      sub_24590C164();
      sub_24578FC28(v9, v10);
      v6 += 2;
      --v2;
    }

    while (v2);
    v28 = v43;
    v29 = v44;
    v2 = v34;
  }

  else
  {
    v28 = v4;
    v29 = v5;
  }

  v30 = *MEMORY[0x277CDBB30];
  v31 = sub_24590C144();
  v32 = [objc_opt_self() geometrySourceWithData:v31 semantic:v30 vectorCount:v2 floatComponents:1 componentsPerVector:2 bytesPerComponent:4 dataOffset:0 dataStride:8];

  sub_24578FC28(v28, v29);
  return v32;
}

id sub_24582005C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24581FCE4(a2);
  v4 = [a1 geometrySources];
  sub_24579D5E0(0, &qword_27EE2A280);
  v5 = sub_245910C44();

  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
  {
    v21 = v3;
    v22 = a1;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D76B30](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 semantic];
      a1 = sub_245910A04();
      v12 = v11;
      if (a1 == sub_245910A04() && v12 == v13)
      {
      }

      else
      {
        a1 = sub_245911714();

        if (a1)
        {
        }

        else
        {
          sub_245911544();
          sub_245911574();
          sub_245911584();
          sub_245911554();
        }
      }

      ++v7;
      if (v3 == i)
      {
        a1 = v22;
        v3 = v21;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916860;
  *(inited + 32) = v3;
  v16 = v3;
  sub_24581EA6C(inited, sub_24581F074);
  v17 = [a1 geometryElements];
  if (!v17)
  {
    sub_24579D5E0(0, &qword_27EE2A288);
    sub_245910C44();
    v17 = sub_245910C34();
  }

  v18 = sub_245910C34();

  v19 = [objc_opt_self() geometryWithSources:v18 elements:v17];

  return v19;
}

uint64_t sub_2458203AC(void *a1)
{
  v4 = 0;
  v83 = MEMORY[0x277D84F90];
  v5 = &unk_2858831F0;
  v81 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v5;
  v7 = v5 + 16 * v4 + 40;
  while (++v4 != 3)
  {
    v8 = v7 + 16;

    v1 = [a1 rootNode];
    v2 = sub_2459109C4();
    v9 = [v1 childNodeWithName:v2 recursively:1];

    v7 = v8;
    if (v9)
    {
      MEMORY[0x245D76260]();
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      sub_245910CA4();
      v81 = v83;
      v5 = v6;
      goto LABEL_2;
    }
  }

  swift_arrayDestroy();

  v10 = sub_24581F670(0, 9, v81);

  if (v81 >> 62)
  {
    goto LABEL_85;
  }

  v11 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_19:

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D76B30](0, v81);
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        v56 = sub_245911424();
        goto LABEL_63;
      }

      v12 = *(v81 + 32);
    }

    v13 = v12;
    v14 = [v12 geometry];

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = sub_24581F980(v14);
    if (!v15)
    {

      goto LABEL_19;
    }

    v16 = v15;
    v17 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      goto LABEL_89;
    }

    if ((v81 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x245D76B30](v17, v81);
      goto LABEL_25;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_92;
    }

    v18 = *(v81 + 8 * v17 + 32);
LABEL_25:
    v20 = v18;

    v21 = [v20 geometry];

    if (!v21)
    {

      goto LABEL_20;
    }

    v22 = sub_24581F980(v21);
    if (!v22)
    {

      goto LABEL_20;
    }

    v23 = v22;
    v74 = v21;
    v75 = v14;
    v24 = *(v16 + 2);
    if (v24)
    {
      v84 = MEMORY[0x277D84F90];
      sub_24577CC94(0, v24, 0);
      v25 = v84;
      v26 = *(v84 + 16);
      v27 = 32;
      v28 = vdupq_n_s64(0x40AF400000000000uLL);
      do
      {
        v29 = *&v16[v27];
        v85 = v25;
        v30 = *(v25 + 24);
        if (v26 >= v30 >> 1)
        {
          v78 = *&v16[v27];
          v82 = v28;
          sub_24577CC94((v30 > 1), v26 + 1, 1);
          v29 = v78;
          v28 = v82;
          v25 = v85;
        }

        *(v25 + 16) = v26 + 1;
        *(v25 + 16 * v26 + 32) = vmulq_f64(v29, v28);
        v27 += 16;
        ++v26;
        --v24;
      }

      while (v24);
      v81 = v25;

      v31 = *(v23 + 2);
      if (!v31)
      {
LABEL_42:

        v1 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }
    }

    else
    {

      v81 = MEMORY[0x277D84F90];
      v31 = *(v23 + 2);
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    v86 = MEMORY[0x277D84F90];
    sub_24577CC94(0, v31, 0);
    v1 = v86;
    v32 = v86[2];
    v33 = 32;
    v34 = vdupq_n_s64(0x40AF400000000000uLL);
    do
    {
      v35 = *&v23[v33];
      v36 = v86[3];
      if (v32 >= v36 >> 1)
      {
        v76 = *&v23[v33];
        v79 = v34;
        sub_24577CC94((v36 > 1), v32 + 1, 1);
        v35 = v76;
        v34 = v79;
      }

      v86[2] = v32 + 1;
      *&v86[2 * v32 + 4] = vmulq_f64(v35, v34);
      v33 += 16;
      ++v32;
      --v31;
    }

    while (v31);

LABEL_43:
    v2 = sub_2458B8E84(MEMORY[0x277D84F90]);
    for (i = -3; i != 3; ++i)
    {
      v39 = i + 3;
      if (i < 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = i;
      }

      else
      {
        v40 = i + 3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v2;
      v42 = sub_24588CB14(i + 3);
      v44 = v2[2];
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        __break(1u);
        goto LABEL_82;
      }

      v48 = v43;
      if (v2[3] >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v42;
          sub_24580D214();
          v42 = v55;
        }
      }

      else
      {
        sub_24580C3C0(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_24588CB14(i + 3);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_93;
        }
      }

      if (v39 <= 2)
      {
        v50 = 0.0;
      }

      else
      {
        v50 = 1.0;
      }

      v51 = v40;
      v2 = v87;
      if (v48)
      {
        v38 = (v87[7] + 16 * v42);
        *v38 = v50;
        v38[1] = v51;
      }

      else
      {
        v87[(v42 >> 6) + 8] |= 1 << v42;
        *(v87[6] + 8 * v42) = v39;
        v52 = (v87[7] + 16 * v42);
        *v52 = v50;
        v52[1] = v51;
        v53 = v87[2];
        v46 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v46)
        {
          goto LABEL_84;
        }

        v87[2] = v54;
      }
    }

    if (v10 >> 62)
    {
      goto LABEL_90;
    }

    v56 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_63:

    if (!v56)
    {
LABEL_80:

      return v10;
    }

    v57 = 0;
    v80 = v10 & 0xC000000000000001;
    v77 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v80)
      {
        v62 = MEMORY[0x245D76B30](v57, v10);
      }

      else
      {
        if (v57 >= *(v77 + 16))
        {
          goto LABEL_83;
        }

        v62 = *(v10 + 8 * v57 + 32);
      }

      v63 = v62;
      v64 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      v65 = v10;
      v66 = v56;
      v67 = 0uLL;
      if (v2[2])
      {
        v68 = sub_24588CB14((v57 >> 1) - 6 * (v57 / 0xC));
        v67 = 0uLL;
        if (v69)
        {
          v67 = vmulq_f64(*(v2[7] + 16 * v68), xmmword_245919CE0);
        }
      }

      v70 = sub_24581CEC8(v57, v81, v1, v67.f64[0], v67.f64[1]);
      v71 = [v63 geometry];
      if (v71)
      {
        v72 = v71;
        v73 = sub_24582005C(v71, v70);

        [v63 setGeometry_];
      }

      else
      {
      }

      sub_2459114D4();

      v58 = sub_2459116E4();
      MEMORY[0x245D76160](v58);

      MEMORY[0x245D76160](95, 0xE100000000000000);
      if (v57)
      {
        v59 = 82;
      }

      else
      {
        v59 = 76;
      }

      MEMORY[0x245D76160](v59, 0xE100000000000000);

      v60 = sub_2459109C4();

      [v63 setName_];

      ++v57;
      v56 = v66;
      v61 = v64 == v66;
      v10 = v65;
      if (v61)
      {
        goto LABEL_80;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v11 = sub_245911424();
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result = sub_245911774();
  __break(1u);
  return result;
}

uint64_t sub_245820C28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457AA49C;

  return sub_24581F214(a1, v4);
}

uint64_t sub_245820CE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A18F4;

  return sub_24581F214(a1, v4);
}

uint64_t sub_245820D98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457AA49C;

  return sub_245809D68(a1, v4);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245820E9C()
{
  v1 = v0[3];
  v2 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[4];
    if (v2 == v0[2] && v3 != 0)
    {
      return v3();
    }
  }

  return result;
}

uint64_t _s12PassportNodeC4PoseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12PassportNodeC4PoseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245821078(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2458210D0()
{
  result = qword_27EE2A2E8;
  if (!qword_27EE2A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A2E8);
  }

  return result;
}

unint64_t sub_245821128()
{
  result = qword_27EE2A2F0;
  if (!qword_27EE2A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A2F0);
  }

  return result;
}

unint64_t sub_24582117C()
{
  result = qword_27EE2A2F8;
  if (!qword_27EE2A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A2F8);
  }

  return result;
}

uint64_t sub_2458211F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "lastPageLandscape";
  }

  else
  {
    v4 = "US Passport - 2020 Generation";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v7 = "US Passport - 2020 Generation";
  }

  else
  {
    v7 = "lastPageLandscape";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_245911714();
  }

  return v9 & 1;
}

uint64_t sub_2458212A0@<X0>(char *a1@<X8>)
{
  v2 = sub_245911644();

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

void sub_245821300(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v1)
  {
    v3 = "US Passport - 2020 Generation";
  }

  else
  {
    v3 = "lastPageLandscape";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_245821350(uint64_t *a1@<X8>)
{
  v2 = 0x30323032617375;
  if (*v1)
  {
    v2 = 0x7373616C43617375;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_245821394()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_245821414()
{
  sub_245910AF4();
}

uint64_t sub_245821480()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_2458214FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29850);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  if (sub_245910A94() == 4281173 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v10 = sub_245911714();

    if ((v10 & 1) == 0)
    {
      return 2;
    }
  }

  result = 1;
  if (a4)
  {
    v15[2] = a3;
    v15[3] = a4;
    v15[0] = 0x5D5A2D415BLL;
    v15[1] = 0xE500000000000000;
    v11 = sub_24590C234();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_245778CE8();
    sub_245911334();
    v13 = v12;
    sub_2458216A8(v8);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2458216A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_245821710()
{
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE32B38;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 currentTraitCollection];
  v4 = sub_2459109C4();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:v3];

  if (v6)
  {
    return v6;
  }

  v8 = [v5 blackColor];

  return v8;
}

unint64_t sub_245821860()
{
  result = qword_27EE2A300;
  if (!qword_27EE2A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A300);
  }

  return result;
}

unint64_t sub_2458218B8()
{
  result = qword_27EE2A308;
  if (!qword_27EE2A308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A308);
  }

  return result;
}

void sub_24582192C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x3431656E6F685069;
  if (v2 != 1)
  {
    v5 = 0x3631656E6F685069;
    v4 = 0xEB000000006F7250;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4553656E6F685069;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_245821994(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x800000024591F9A0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x800000024591F9A0;
  }

  else
  {
    v6 = 0x800000024591F9C0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E697466696CLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000024591F9C0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x676E697466696CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_245911714();
  }

  return v11 & 1;
}

uint64_t sub_245821A74()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_245821B24()
{
  sub_245910AF4();
}

uint64_t sub_245821BC0()
{
  sub_245911824();
  sub_245910AF4();

  return sub_245911864();
}

uint64_t sub_245821C6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24582374C();
  *a1 = result;
  return result;
}

void sub_245821C9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x800000024591F9A0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000024591F9C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E697466696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_245821DC8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_loadTask] = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_phoneBodyNode] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowContentNode] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] = v9;
  v10 = objc_allocWithZone(_s29PassportChipPulsingEffectNodeCMa());
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_chipPulsingEffectNode] = sub_2458179E8(a1);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_245910D34();
  v13 = v11;
  v14 = sub_245910D24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a1;
  *(v15 + 40) = v13;
  *&v13[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_loadTask] = sub_2458B96E0(0, 0, v6, &unk_24591A138, v15);

  return v13;
}

uint64_t sub_24582203C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a5;
  v6 = sub_24590F354();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  *(v5 + 160) = swift_task_alloc();
  sub_245910D34();
  *(v5 + 168) = sub_245910D24();
  v8 = sub_245910CD4();
  *(v5 + 176) = v8;
  *(v5 + 184) = v7;

  return MEMORY[0x2822009F8](sub_24582216C, v8, v7);
}

uint64_t sub_24582216C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 208);
  sub_245910D44();
  v3 = sub_245910D64();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v2;
  v5 = sub_24581B544(0, 0, v1, &unk_24591A148, v4);
  *(v0 + 192) = v5;
  sub_24581EDE4(v1);
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A278);
  *v6 = v0;
  v6[1] = sub_2458222C4;

  return MEMORY[0x282200460](v0 + 112, v5, v7);
}

uint64_t sub_2458222C4()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_2458223E4, v3, v2);
}

uint64_t sub_2458223E4()
{
  v65 = v0;
  v1 = 0x4553656E6F685069;

  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = [*(v0 + 112) rootNode];
    v4 = sub_2459109C4();

    v5 = [v3 childNodeWithName:v4 recursively:1];

    if (v5)
    {
      v6 = [v2 rootNode];
      v7 = sub_2459109C4();

      v8 = [v6 childNodeWithName:v7 recursively:1];

      if (v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2459186C0;
        *(inited + 32) = v5;
        *(inited + 40) = v8;
        v10 = v5;
        v11 = v8;
        if ((inited & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        for (i = v10; ; i = MEMORY[0x245D76B30](0, inited))
        {
          v13 = i;
          sub_245910F24();
          [v13 setPosition_];

          if ((inited & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v14 = *(inited + 40);
            goto LABEL_10;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          ;
        }

        v14 = MEMORY[0x245D76B30](1, inited);
LABEL_10:
        v15 = v14;
        v16 = *(v0 + 128);
        sub_245910F24();
        [v15 setPosition_];

        swift_setDeallocating();
        swift_arrayDestroy();
        v17 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_phoneBodyNode;
        [*(v16 + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_phoneBodyNode) addChildNode_];
        v61 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowContentNode;
        [*(v16 + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowContentNode) addChildNode_];
        v18 = [v11 childNodes];
        sub_24579D5E0(0, &qword_27EE2A2A0);
        v19 = sub_245910C44();

        if (v19 >> 62)
        {
          result = sub_245911424();
          v58 = v11;
          v59 = v10;
          if (result)
          {
            goto LABEL_12;
          }
        }

        else
        {
          result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v58 = v11;
          v59 = v10;
          if (result)
          {
LABEL_12:
            if ((v19 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x245D76B30](0, v19);
            }

            else
            {
              if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v21 = *(v19 + 32);
            }

            v22 = v21;

            [v22 position];

            goto LABEL_38;
          }
        }

LABEL_38:
        v42 = *(v16 + v17);
        sub_245911084();
        v43 = v64;

        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_2459186C0;
        v45 = *(v16 + v17);
        *(v44 + 32) = v45;
        v46 = *(v16 + v61);
        *(v44 + 40) = v46;
        v47 = v45;
        v48 = v46;
        if ((v44 & 0xC000000000000001) != 0)
        {
          goto LABEL_49;
        }

        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        for (j = v47; ; j = MEMORY[0x245D76B30](0, v44))
        {
          v50 = j;
          v43 = v43 * 0.01;
          sub_245910F14();
          [v50 setPosition_];
          sub_245910F14();
          [v50 setEulerAngles_];
          sub_245910F14();
          [v50 setScale_];

          if ((v44 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v51 = *(v44 + 40);
            goto LABEL_44;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          ;
        }

        v51 = MEMORY[0x245D76B30](1, v44);
LABEL_44:
        v52 = v51;
        v53 = *(v0 + 128);
        sub_245910F14();
        [v52 setPosition_];
        sub_245910F14();
        [v52 setEulerAngles_];
        sub_245910F14();
        [v52 setScale_];

        swift_setDeallocating();
        swift_arrayDestroy();
        v54 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode;
        [*&v53[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] addChildNode_];
        [v53 addChildNode_];
        [v53 addChildNode_];
        v55 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_chipPulsingEffectNode;
        [v53 addChildNode_];
        v56 = *&v53[v55];
        [v56 position];
        [v56 setPosition_];

        [v53 position];
        [v53 setPosition_];

        v41 = 1;
        goto LABEL_45;
      }
    }
  }

  sub_24590C714();
  v23 = sub_24590F344();
  v24 = sub_245910F64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = 0xEC000000656E6563;
    v26 = *(v0 + 208);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v63[0] = v28;
    v29 = 0x3431656E6F685069;
    *v27 = 136315394;
    v30 = 0xE800000000000000;
    v31 = 0x533431656E6F6850;
    v32 = 0xEF656E6563536F72;
    if (v26 == 1)
    {
      v32 = 0xEC000000656E6563;
    }

    else
    {
      v31 = 0x503631656E6F6850;
    }

    if (v26 != 1)
    {
      v29 = 0x3631656E6F685069;
      v30 = 0xEB000000006F7250;
    }

    if (v26)
    {
      v25 = v32;
      v33 = v31;
    }

    else
    {
      v33 = 0x534553656E6F6850;
    }

    if (v26)
    {
      v1 = v29;
      v34 = v30;
    }

    else
    {
      v34 = 0xE800000000000000;
    }

    v35 = *(v0 + 144);
    v60 = *(v0 + 136);
    v62 = *(v0 + 152);
    v36 = sub_2458CC378(v33, v25, v63);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2080;
    v37 = sub_2458CC378(v1, v34, v63);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_245767000, v23, v24, "PassportSceneView PhoneNode: Failed to load nodes from '%s.scn' for model: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D77B40](v28, -1, -1);
    MEMORY[0x245D77B40](v27, -1, -1);

    (*(v35 + 8))(v62, v60);
  }

  else
  {
    v39 = *(v0 + 144);
    v38 = *(v0 + 152);
    v40 = *(v0 + 136);

    (*(v39 + 8))(v38, v40);
  }

  v41 = 0;
LABEL_45:
  **(v0 + 120) = v41;

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_245822D24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_245822D48, 0, 0);
}

uint64_t sub_245822D48()
{
  v1 = 0x533431656E6F6850;
  v2 = 0xEF656E6563536F72;
  if (*(v0 + 24) == 1)
  {
    v2 = 0xEC000000656E6563;
  }

  else
  {
    v1 = 0x503631656E6F6850;
  }

  if (*(v0 + 24))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x534553656E6F6850;
  }

  if (*(v0 + 24))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEC000000656E6563;
  }

  if (qword_27EE28690 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v5 = *(v0 + 16);
  v6 = sub_2458146C8(v3, v4, qword_27EE32B38);

  *v5 = v6;
  v7 = *(v0 + 8);

  return v7();
}

id sub_245822EE8(void *a1)
{
  [a1 position];

  return [a1 setPosition_];
}

id sub_245822F40(void *a1, float a2, double a3)
{
  LODWORD(a3) = 1.0;
  v3 = 1.0 - a2;
  v4 = 0.0;
  if (v3 > 0.0)
  {
    *&v4 = v3;
  }

  if (v3 <= 1.0)
  {
    v5 = *&v4;
  }

  else
  {
    v5 = 1.0;
  }

  return [a1 setOpacity_];
}

void sub_245822F6C(char a1, char a2, double a3)
{
  if (a2)
  {
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2459186C0;
    *(v7 + 32) = [v6 waitForDuration_];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a1 & 1;
    v14[4] = sub_245823550;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_245823208;
    v14[3] = &block_descriptor_19;
    v10 = _Block_copy(v14);

    v11 = [v6 runBlock_];
    _Block_release(v10);
    *(v7 + 40) = v11;
    sub_24579D5E0(0, &qword_27EE2A2D0);
    v12 = sub_245910C34();

    v13 = [v6 sequence_];

    [v3 runAction_];
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v15, sel_removeAllActions);
    [*&v3[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] removeAllActions];
    [v3 setHidden_];
  }
}

void sub_2458231A4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a3 & 1;
    v6 = Strong;
    [Strong setHidden_];
  }
}

void sub_245823208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_245823354()
{
  result = qword_27EE2A340;
  if (!qword_27EE2A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A340);
  }

  return result;
}

uint64_t sub_2458233D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_24582203C(a1, v4, v5, v7, v6);
}

uint64_t sub_24582349C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245822D24(a1, v4, v5, v6);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for IdentityProofing.ToolBarButtonType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityProofing.ToolBarButtonType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2458236F8()
{
  result = qword_27EE2A368;
  if (!qword_27EE2A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A368);
  }

  return result;
}

uint64_t sub_24582374C()
{
  v0 = sub_245911644();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_245823798()
{
  result = qword_27EE2A370;
  if (!qword_27EE2A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A370);
  }

  return result;
}

void sub_2458237FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = *&v0[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView];
  [v0 bounds];
  [v4 setFrame_];
  [v4 setAutoresizingMask_];
  v5 = [objc_allocWithZone(MEMORY[0x277CDBAF8]) init];
  [v4 setScene_];

  v6 = [v4 scene];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 background];

    [v8 setContents_];
  }

  v9 = [v4 scene];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 rootNode];

    [v11 addChildNode_];
  }

  v12 = [v4 scene];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 rootNode];

    [v14 addChildNode_];
  }

  v15 = [v4 scene];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 rootNode];

    [v17 addChildNode_];
  }

  [v4 setPointOfView_];
  v0[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isPreparingScene] = 1;
  v18 = sub_245910D64();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_245910D34();
  v19 = v0;
  v20 = sub_245910D24();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2458B90EC(0, 0, v3, &unk_24591A290, v21);

  sub_24581D884();
  [v4 setAlpha_];
  [v4 setAllowsCameraControl_];
  [v4 setShowsStatistics_];
  [v4 setAntialiasingMode_];
  v23 = objc_opt_self();
  v24 = [v23 secondarySystemBackgroundColor];
  [v4 setBackgroundColor_];

  [v4 setOpaque_];
  [v19 addSubview_];
  v25 = [v23 secondarySystemBackgroundColor];
  [v19 setBackgroundColor_];

  v26 = [v4 layer];
  [v26 addSublayer_];
}

uint64_t sub_245823C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = sub_245910D34();
  v4[10] = sub_245910D24();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_245823D1C;

  return sub_245825CE8();
}

uint64_t sub_245823D1C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_245823E5C;

  return sub_2458267F8();
}

uint64_t sub_245823E5C()
{

  v1 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245823F98, v1, v0);
}

uint64_t sub_245823F98()
{
  v1 = v0[8];

  v2 = *&v1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_sceneView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_245916CE0;
  v4 = *&v1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode];
  *(v3 + 56) = _s12PassportNodeCMa();
  *(v3 + 32) = v4;
  v5 = *&v1[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode];
  *(v3 + 88) = _s9PhoneNodeCMa();
  *(v3 + 64) = v5;
  v6 = v4;
  v7 = v5;
  v8 = sub_245910C34();

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v0[6] = sub_245824604;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2458244FC;
  v0[5] = &block_descriptor_20;
  v10 = _Block_copy(v0 + 2);
  v11 = v1;

  [v2 prepareObjects:v8 withCompletionHandler:v10];
  _Block_release(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_245824164(char a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_245910D34();
  v8 = a2;
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = a1;
  sub_2458B90EC(0, 0, v6, &unk_24591A2A0, v10);
}

uint64_t sub_24582429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  v6 = sub_24590F354();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_245910D34();
  *(v5 + 48) = sub_245910D24();
  v8 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_245824394, v8, v7);
}

uint64_t sub_245824394()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isPreparingScene) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onPreparedSceneCompletion);
  if (v2)
  {
    v3 = *(v0 + 56);

    v2(v3);
    sub_245771C34(v2);
  }

  if ((*(v0 + 56) & 1) == 0)
  {
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "PassportSceneView Setup: Scene preparation failed.", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);

    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2458244FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_245824550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_245823C6C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245824624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_24582429C(a1, v4, v5, v6, v7);
}

id sub_2458246E8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = sub_24590F354();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10StampLayerCMa();
  v48.receiver = v3;
  v48.super_class = v10;
  v11 = objc_msgSendSuper2(&v48, sel_init);
  [v11 setContentsScale_];
  [v11 setContentsGravity_];
  if (a3)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.667;
  }

  else
  {
    v12 = 0;
    v15 = 1.0;
    v13 = 0.5;
    v14 = 2.0;
  }

  [v11 setCompositingFilter_];

  *&v16 = v15;
  [v11 setOpacity_];
  v17 = objc_opt_self();
  v18 = [v17 blackColor];
  v19 = [v18 CGColor];

  [v11 setShadowColor_];
  [v11 setShadowOffset_];
  *&v20 = v13;
  [v11 setShadowOpacity_];
  [v11 setShadowRadius_];

  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = qword_27EE28690;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27EE32B38;
  v24 = sub_2459109C4();

  v25 = [objc_opt_self() imageNamed:v24 inBundle:v23 compatibleWithTraitCollection:0];

  if (!v25 || (v26 = [v25 CGImage], v25, !v26))
  {
LABEL_12:
    sub_24590C714();

    v28 = sub_24590F344();
    v29 = sub_245910F64();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v17;
      v32 = v7;
      v33 = a3;
      v34 = v31;
      v47 = v31;
      *v30 = 136315138;
      v35 = sub_2458CC378(a1, a2, &v47);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_245767000, v28, v29, "PassportSceneView Stamp Layer: Failed to load image with name: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245D77B40](v34, -1, -1);
      MEMORY[0x245D77B40](v30, -1, -1);

      v36 = v32;
      v17 = v45;
      (*(v46 + 8))(v9, v36);
      if ((v33 & 1) == 0)
      {
LABEL_14:
        v37 = [v17 whiteColor];
        v38 = [v37 colorWithAlphaComponent_];

        v39 = &selRef_clearColor;
LABEL_17:
        v40 = [v38 CGColor];

        [v11 setBackgroundColor_];
        v41 = [v17 *v39];
        v42 = [v41 CGColor];

        [v11 setBorderColor_];
        [v11 setBorderWidth_];
        [v11 setBounds_];
        [v11 setCornerRadius_];
        return v11;
      }
    }

    else
    {

      (*(v46 + 8))(v9, v7);
      if ((a3 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v38 = [v17 clearColor];
    v39 = &selRef_redColor;
    goto LABEL_17;
  }

  [v11 setContents_];
  Width = CGImageGetWidth(v26);
  [v11 setBounds_];

  return v11;
}

id sub_245824E68(void *a1)
{
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_fixedSize] = xmmword_24591A2C0;
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_placedFrames] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_rng];
  *v3 = 0;
  v3[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_245911704();
  v10.receiver = v1;
  v10.super_class = _s21StampPageOverlayLayerCMa();
  v5 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  v6 = v5;
  [v6 setContentsScale_];
  v7 = [objc_opt_self() clearColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor_];
  [v6 setBounds_];
  [v6 setAllowsGroupBlending_];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id sub_24582502C(void *a1)
{
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_fixedSize] = xmmword_24591A2C0;
  *&v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_placedFrames] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_rng];
  *v3 = 0;
  v3[8] = 1;
  v10.receiver = v1;
  v10.super_class = _s21StampPageOverlayLayerCMa();
  v4 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setContentsScale_];
    v7 = [objc_opt_self() clearColor];
    v8 = [v7 CGColor];

    [v6 setBackgroundColor_];
    [v6 setBounds_];
    [v6 setAllowsGroupBlending_];
  }

  return v5;
}

void sub_2458251B0(uint64_t a1)
{
  v2 = v1;
  v79 = sub_24590F354();
  MEMORY[0x28223BE20](v79);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a1 + 16);
  if (!v96)
  {
    return;
  }

  v7 = &v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_rng];
  v8 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_placedFrames;
  v95 = a1 + 32;
  v78 = (v4 + 8);
  v94 = _s10StampLayerCMa();
  i = 0;
  v82 = 0x3FA999999999999ALL;
  v80 = 0.0174532925;
  v81 = v7;
  while (1)
  {
    v10 = v2;
    v11 = v8;
    v12 = v6;
    v13 = v95 + 24 * i;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = objc_allocWithZone(v94);
    swift_bridgeObjectRetain_n();
    v93 = v15;
    v18 = sub_2458246E8(v15, v14, v16);
    [v18 bounds];
    v20 = v19;
    v101 = v21;
    if (*&v21 == 0.0 && v19 == 0.0)
    {

      v6 = v12;
      v8 = v11;
      v2 = v10;
      goto LABEL_4;
    }

    v92 = v14;
    v99 = 0;
    if (840.0 - *&v101 < 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 840.0 - *&v101;
    }

    if (1170.0 - v19 < 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1170.0 - v19;
    }

    v24 = v22 + -40.0;
    v25 = v23 + -80.0;
    v26 = -0.15;
    if (v16)
    {
      v26 = *&v82;
    }

    v100 = v26;
    v88 = *&v101 * 0.5;
    v87 = v19 * 0.5;
    v27 = -5.0;
    if (v16)
    {
      v27 = -15.0;
    }

    v90 = v27;
    v28 = 5.0;
    if (v16)
    {
      v28 = 15.0;
    }

    v91 = v28;
    v29 = 10.0;
    if (v16)
    {
      v29 = 30.0;
    }

    v89 = v29;
    v97 = i;
    v6 = v12;
    v8 = v11;
    v2 = v10;
    v30 = v81;
    v98 = v18;
    v86 = v22;
    v85 = v23;
    v84 = v22 + -40.0;
    v83 = v23 + -80.0;
LABEL_22:
    if (v22 < 40.0)
    {
      break;
    }

    if (v30[8])
    {
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_81;
      }

      do
      {
        v102.a = 0.0;
        MEMORY[0x245D77B60](&v102, 8);
      }

      while ((0x20000000000001 * *&v102.a) < 0x1FFFFFFFFFF801);
      v31 = (*&v102.a * 0x20000000000001uLL) >> 64;
      v32 = v24 * vcvtd_n_f64_u64(v31, 0x35uLL) + 40.0;
      if (v31 == 0x20000000000000)
      {
        v33 = v22;
      }

      else
      {
        v33 = v32;
      }
    }

    else
    {
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_82;
      }

      v34 = *v30;
      do
      {
        v34 = 0x5851F42D4C957F2DLL * v34 + 1;
      }

      while ((0x20000000000001 * v34) < 0x1FFFFFFFFFF801);
      v35 = (v34 * 0x20000000000001uLL) >> 64;
      v36 = v24 * vcvtd_n_f64_u64(v35, 0x35uLL) + 40.0;
      if (v35 == 0x20000000000000)
      {
        v33 = v22;
      }

      else
      {
        v33 = v36;
      }

      *v30 = v34;
      v30[8] = 0;
    }

    if (v23 < 80.0)
    {
      goto LABEL_80;
    }

    if (v30[8])
    {
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_84;
      }

      do
      {
        v102.a = 0.0;
        MEMORY[0x245D77B60](&v102, 8);
      }

      while ((0x20000000000001 * *&v102.a) < 0x1FFFFFFFFFF801);
      v37 = (*&v102.a * 0x20000000000001uLL) >> 64;
      v38 = v25 * vcvtd_n_f64_u64(v37, 0x35uLL) + 80.0;
      if (v37 == 0x20000000000000)
      {
        v39 = v23;
      }

      else
      {
        v39 = v38;
      }
    }

    else
    {
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_83;
      }

      v40 = *v30;
      do
      {
        v40 = 0x5851F42D4C957F2DLL * v40 + 1;
      }

      while ((0x20000000000001 * v40) < 0x1FFFFFFFFFF801);
      v41 = (v40 * 0x20000000000001uLL) >> 64;
      v42 = v25 * vcvtd_n_f64_u64(v41, 0x35uLL) + 80.0;
      if (v41 == 0x20000000000000)
      {
        v39 = v23;
      }

      else
      {
        v39 = v42;
      }

      *v30 = v40;
      v30[8] = 0;
    }

    v43 = *&v2[v8];
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = v8;
      v46 = v30;
      v47 = v6;
      v48 = v2;
      ++v99;

      v49 = 0;
      v50 = v43 + 56;
      while (1)
      {
        if (v49 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        v108.origin.x = v33;
        v108.origin.y = v39;
        *&v108.size.width = v101;
        v108.size.height = v20;
        v103 = CGRectIntersection(*(v50 - 24), v108);
        x = v103.origin.x;
        y = v103.origin.y;
        width = v103.size.width;
        height = v103.size.height;
        if (!CGRectIsNull(v103))
        {
          v104.origin.x = x;
          v104.origin.y = y;
          v104.size.width = width;
          v104.size.height = height;
          v55 = CGRectGetWidth(v104);
          v105.origin.x = x;
          v105.origin.y = y;
          v105.size.width = width;
          v105.size.height = height;
          v56 = v55 * CGRectGetHeight(v105);
          v106.origin.x = v33;
          v106.origin.y = v39;
          v57 = v101;
          *&v106.size.width = v101;
          v106.size.height = v20;
          v58 = CGRectGetWidth(v106);
          v107.origin.x = v33;
          v107.origin.y = v39;
          *&v107.size.width = v57;
          v107.size.height = v20;
          if (v100 < v56 / (v58 * CGRectGetHeight(v107)))
          {
            break;
          }
        }

        ++v49;
        v50 += 32;
        if (v44 == v49)
        {

          v2 = v48;
          v6 = v47;
          v30 = v46;
          v8 = v45;
          goto LABEL_60;
        }
      }

      v2 = v48;
      v6 = v47;
      v30 = v46;
      v8 = v45;
      i = v97;
      v22 = v86;
      v23 = v85;
      v24 = v84;
      v25 = v83;
      if (v99 != 16)
      {
        goto LABEL_22;
      }

      sub_24590C714();
      v59 = v92;

      *&v60 = COERCE_DOUBLE(sub_24590F344());
      v61 = sub_245910F64();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v101 = v60;
        v63 = v62;
        v100 = COERCE_DOUBLE(swift_slowAlloc());
        v102.a = v100;
        *v63 = 136315394;
        v64 = sub_2458CC378(v93, v59, &v102);

        *(v63 + 4) = v64;
        i = v97;
        *(v63 + 12) = 2048;
        *(v63 + 14) = 16;
        v65 = v101;
        _os_log_impl(&dword_245767000, v101, v61, "PassportSceneView Stamp Layer: Could not place image %s without too much overlap after %ld attempts.", v63, 0x16u);
        v66 = v100;
        __swift_destroy_boxed_opaque_existential_1(*&v100);
        MEMORY[0x245D77B40](*&v66, -1, -1);
        MEMORY[0x245D77B40](v63, -1, -1);
      }

      else
      {
      }

      (*v78)(v6, v79);
    }

    else
    {
LABEL_60:
      v67 = v98;
      [v98 setPosition_];
      if (v30[8])
      {
        v102.a = 0.0;
        MEMORY[0x245D77B60](&v102, 8);
        a = v102.a;
        for (i = v97; (0x20000000000001 * *&v102.a) < 0x1FFFFFFFFFF801; a = v102.a)
        {
          v102.a = 0.0;
          MEMORY[0x245D77B60](&v102, 8);
        }

        v69 = (*&a * 0x20000000000001uLL) >> 64;
        v70 = v90 + v89 * vcvtd_n_f64_u64(v69, 0x35uLL);
        if (v69 == 0x20000000000000)
        {
          v70 = v91;
        }
      }

      else
      {
        v71 = 0x5851F42D4C957F2DLL * *v30 + 1;
          ;
        }

        v72 = (v71 * 0x20000000000001uLL) >> 64;
        v70 = v90 + v89 * vcvtd_n_f64_u64(v72, 0x35uLL);
        if (v72 == 0x20000000000000)
        {
          v70 = v91;
        }

        *v30 = v71;
        v30[8] = 0;
      }

      CGAffineTransformMakeRotation(&v102, v70 * v80);
      [v67 setAffineTransform_];
      [v2 addSublayer_];
      v73 = *&v2[v8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v8] = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_24580AE24(0, *(v73 + 2) + 1, 1, v73);
        *&v2[v8] = v73;
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      if (v76 >= v75 >> 1)
      {
        v73 = sub_24580AE24((v75 > 1), v76 + 1, 1, v73);
      }

      *(v73 + 2) = v76 + 1;
      v77 = &v73[32 * v76];
      v77[4] = v33;
      v77[5] = v39;
      v77[6] = *&v101;
      v77[7] = v20;
      *&v2[v8] = v73;
    }

LABEL_4:
    if (++i == v96)
    {
      return;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

id sub_245825BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_245825C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_245825C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245825CE8()
{
  v1[5] = v0;
  v2 = sub_24590F354();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_245910D34();
  v1[10] = sub_245910D24();
  v4 = sub_245910CD4();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_245825DE0, v4, v3);
}

uint64_t sub_245825DE0()
{
  v0[13] = *(v0[5] + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode);
  v0[14] = sub_245910D24();
  v2 = sub_245910CD4();
  v0[15] = v2;
  v0[16] = v1;

  return MEMORY[0x2822009F8](sub_245825E84, v2, v1);
}

uint64_t sub_245825E84()
{
  v1 = *(v0[13] + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_loadTask);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_245825F88;
    v3 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 19, v1, v3);
  }

  else
  {

    v4 = v0[11];
    v5 = v0[12];

    return MEMORY[0x2822009F8](sub_2458266E8, v4, v5);
  }
}

uint64_t sub_245825F88()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2458260A8, v3, v2);
}

uint64_t sub_2458260A8()
{

  *(v0 + 153) = *(v0 + 152);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_245826120, v1, v2);
}

uint64_t sub_245826120()
{
  v1 = *(v0 + 153);

  if (v1 == 1)
  {
    v2 = sub_2458287D4(*(*(v0 + 40) + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportInformation), *(*(v0 + 40) + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportInformation + 8), *(*(v0 + 40) + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportInformation + 16), *(*(v0 + 40) + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportInformation + 24), byte_285882F58);
    v4 = v3;
    swift_arrayDestroy();
    v54 = v2;
    v5 = sub_24577F37C(0x40A0000000000000, 0);
    if (v5)
    {
      v6 = *(v0 + 40);
      v62 = v5;
      v7 = v5;
      v8 = [v6 traitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
        v11 = sub_24582904C(v10);
        if (v11)
        {
          v12 = v11;
          v13 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
          [v12 extent];
          v62 = [v13 createCGImage:v12 fromRect:?];
        }

        else
        {
        }
      }
    }

    else
    {
      v62 = 0;
    }

    v21 = sub_24577F37C(0x40A0000000000000, 0);
    if (v21)
    {
      v22 = v21;
      v23 = *(v0 + 40);
      v24 = v21;
      v25 = [v23 traitCollection];
      v26 = [v25 userInterfaceStyle];

      if (v26 == 2)
      {
        v27 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
        v28 = sub_24582904C(v27);
        if (v28)
        {
          v29 = v28;
          v30 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
          [v29 extent];
          v61 = [v30 createCGImage:v29 fromRect:?];
        }

        else
        {
          v61 = v22;
        }
      }

      else
      {
        v61 = v22;
      }
    }

    else
    {
      v61 = 0;
    }

    v55 = v4;
    v31 = *(v0 + 104);
    v32 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
    swift_beginAccess();
    v33 = *(v31 + v32);
    v56 = v0;
    if (v33 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
    {

      if (!i)
      {
        break;
      }

      v35 = 0;
      v59 = v33 & 0xFFFFFFFFFFFFFF8;
      v60 = v33 & 0xC000000000000001;
      v57 = v33;
      v58 = *MEMORY[0x277CDBB98];
      while (1)
      {
        if (v60)
        {
          v39 = MEMORY[0x245D76B30](v35, v33);
        }

        else
        {
          if (v35 >= *(v59 + 16))
          {
            goto LABEL_41;
          }

          v39 = *(v33 + 8 * v35 + 32);
        }

        v37 = v39;
        v40 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v41 = i;
        v42 = [objc_allocWithZone(MEMORY[0x277CDBA90]) init];
        [v42 setLightingModelName_];
        v43 = [v42 diffuse];
        v44 = v43;
        if (v35 >= 0xC)
        {
          v45 = v61;
        }

        else
        {
          v45 = v62;
        }

        [v43 setContents_];

        v46 = [v42 multiply];
        v47 = [objc_opt_self() blackColor];
        v48 = [v47 CGColor];

        [v46 setContents_];
        v49 = [v42 multiply];
        [v49 setIntensity_];

        v50 = [v37 geometry];
        if (v50)
        {
          v51 = v50;
          [v50 setFirstMaterial_];

          v36 = v42;
        }

        else
        {
          v36 = v37;
          v37 = v42;
        }

        ++v35;
        i = v41;
        v38 = v40 == v41;
        v33 = v57;
        if (v38)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }

LABEL_36:

    v0 = v56;
  }

  else
  {
    sub_24590C714();
    v14 = sub_24590F344();
    v15 = sub_245910F54();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v14, v15, "PassportSceneView Textures: PassportNode has not been loaded yet; aborting texture update", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
  }

  v52 = *(v0 + 8);

  return v52();
}