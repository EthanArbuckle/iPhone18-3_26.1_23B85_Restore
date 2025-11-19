uint64_t sub_25ADEFDA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12C68, &qword_25AE13DA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADEFE18()
{
  result = qword_27FA12C90;
  if (!qword_27FA12C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C90);
  }

  return result;
}

uint64_t _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 24);
  v13 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v11 = 0, (sub_25AE10E2C() & 1) != 0))
  {
    v19 = v2;
    v20 = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v14 = v13;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_25ADE48D8(v2, v3, v4, v5, v6);
    sub_25ADE48D8(v13, v7, v8, v9, v10);
    v11 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v19, &v14);
    sub_25ADE4930(v14, v15, v16, v17, v18);
    sub_25ADE4930(v19, v20, v21, v22, v23);
  }

  return v11 & 1;
}

unint64_t sub_25ADEFF80()
{
  result = qword_27FA12CA0;
  if (!qword_27FA12CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CA0);
  }

  return result;
}

unint64_t sub_25ADEFFD8()
{
  result = qword_27FA12CB0;
  if (!qword_27FA12CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CB0);
  }

  return result;
}

unint64_t sub_25ADF0030()
{
  result = qword_27FA12CB8;
  if (!qword_27FA12CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CB8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25ADF0098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25ADF00E0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25ADF014C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25ADF0194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADF0218()
{
  result = qword_27FA12CC0;
  if (!qword_27FA12CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CC0);
  }

  return result;
}

unint64_t sub_25ADF0270()
{
  result = qword_27FA12CC8;
  if (!qword_27FA12CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CC8);
  }

  return result;
}

unint64_t sub_25ADF02C8()
{
  result = qword_27FA12CD0;
  if (!qword_27FA12CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CD0);
  }

  return result;
}

unint64_t sub_25ADF0320()
{
  result = qword_27FA12CD8;
  if (!qword_27FA12CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CD8);
  }

  return result;
}

unint64_t sub_25ADF0378()
{
  result = qword_27FA12CE0;
  if (!qword_27FA12CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CE0);
  }

  return result;
}

unint64_t sub_25ADF03D0()
{
  result = qword_27FA12CE8;
  if (!qword_27FA12CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12CE8);
  }

  return result;
}

uint64_t NDOAction.url.getter()
{
  v1 = *(v0 + 32);
  if (v1 > 6)
  {
    return 0;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = v0;
  v4 = *v0;
  sub_25ADE48D8(v4, *(v5 + 8), v3, v2, v1);

  return v4;
}

uint64_t sub_25ADF049C()
{
  v1 = *v0;
  v2 = 0x6265577472617473;
  v3 = 0x656A655272657375;
  if (v1 != 6)
  {
    v3 = 0x6553646E61707865;
  }

  v4 = 0x437373696D736964;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x687461506E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x6157656369766564;
  }

  if (*v0)
  {
    v2 = 0x736D417472617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25ADF05C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADF47CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADF05F0(uint64_t a1)
{
  v2 = sub_25ADF3580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF062C(uint64_t a1)
{
  v2 = sub_25ADF3580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0668(uint64_t a1)
{
  v2 = sub_25ADF3778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF06A4(uint64_t a1)
{
  v2 = sub_25ADF3778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF06E0(uint64_t a1)
{
  v2 = sub_25ADF3724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF071C(uint64_t a1)
{
  v2 = sub_25ADF3724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0758(uint64_t a1)
{
  v2 = sub_25ADF35D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF0794(uint64_t a1)
{
  v2 = sub_25ADF35D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF07D0(uint64_t a1)
{
  v2 = sub_25ADF37CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF080C(uint64_t a1)
{
  v2 = sub_25ADF37CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0848(uint64_t a1)
{
  v2 = sub_25ADF3820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF0884(uint64_t a1)
{
  v2 = sub_25ADF3820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF08C0(uint64_t a1)
{
  v2 = sub_25ADF3874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF08FC(uint64_t a1)
{
  v2 = sub_25ADF3874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF0938(uint64_t a1)
{
  v2 = sub_25ADF36D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF0974(uint64_t a1)
{
  v2 = sub_25ADF36D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF09B0(uint64_t a1)
{
  v2 = sub_25ADF3628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF09EC(uint64_t a1)
{
  v2 = sub_25ADF3628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CF0, &qword_25AE14320);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CF8, &qword_25AE14328);
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D00, &qword_25AE14330);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D08, &qword_25AE14338);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = &v43 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D10, &qword_25AE14340);
  v51 = *(v52 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v43 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D18, &qword_25AE14348);
  v48 = *(v49 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v43 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D20, &qword_25AE14350);
  v45 = *(v46 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D28, &qword_25AE14358);
  v44 = *(v22 - 8);
  v23 = *(v44 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D30, &qword_25AE14360);
  v69 = *(v26 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v26);
  v28 = v1[1];
  v65 = *v1;
  v66 = v28;
  v29 = v1[3];
  v67 = v1[2];
  v68 = v29;
  v30 = *(v1 + 32);
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_25ADF3580();
  sub_25AE10E8C();
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 != 6)
      {
        LOBYTE(v70) = 7;
        sub_25ADF35D4();
        v42 = v59;
        sub_25AE10D9C();
        (*(v61 + 8))(v42, v62);
        return (*(v69 + 8))(v35, v26);
      }

      LOBYTE(v70) = 6;
      sub_25ADF3628();
      v36 = v60;
      sub_25AE10D9C();
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
      sub_25ADF367C();
      v37 = v64;
      sub_25AE10DFC();
      v38 = v63;
    }

    else if (v30 == 4)
    {
      LOBYTE(v70) = 4;
      sub_25ADF3724();
      v36 = v53;
      sub_25AE10D9C();
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
      sub_25ADF367C();
      v37 = v55;
      sub_25AE10DFC();
      v38 = v54;
    }

    else
    {
      LOBYTE(v70) = 5;
      sub_25ADF36D0();
      v36 = v56;
      sub_25AE10D9C();
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
      sub_25ADF367C();
      v37 = v58;
      sub_25AE10DFC();
      v38 = v57;
    }
  }

  else
  {
    if (v30 <= 1)
    {
      if (v30)
      {
        LOBYTE(v70) = 1;
        sub_25ADF3820();
        sub_25AE10D9C();
        v70 = v65;
        v71 = v66;
        v72 = v67;
        v73 = v68;
        sub_25ADF367C();
        v40 = v46;
        sub_25AE10DFC();
        (*(v45 + 8))(v21, v40);
      }

      else
      {
        LOBYTE(v70) = 0;
        sub_25ADF3874();
        sub_25AE10D9C();
        v70 = v65;
        v71 = v66;
        v72 = v67;
        v73 = v68;
        sub_25ADF367C();
        sub_25AE10DFC();
        (*(v44 + 8))(v25, v22);
      }

      return (*(v69 + 8))(v35, v26);
    }

    if (v30 == 2)
    {
      LOBYTE(v70) = 2;
      sub_25ADF37CC();
      v36 = v47;
      sub_25AE10D9C();
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
      sub_25ADF367C();
      v37 = v49;
      sub_25AE10DFC();
      v39 = &v74;
    }

    else
    {
      LOBYTE(v70) = 3;
      sub_25ADF3778();
      v36 = v50;
      sub_25AE10D9C();
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
      sub_25ADF367C();
      v37 = v52;
      sub_25AE10DFC();
      v39 = &v75;
    }

    v38 = *(v39 - 32);
  }

  (*(v38 + 8))(v36, v37);
  return (*(v69 + 8))(v35, v26);
}

uint64_t NDOAction.hash(into:)(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  if (v7 > 3)
  {
    if (*(v1 + 32) > 5u)
    {
      if (v7 != 6)
      {
        return MEMORY[0x25F8577E0](7);
      }

      v8 = 6;
    }

    else if (v7 == 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  else if (*(v1 + 32) > 1u)
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = v7 != 0;
  }

  MEMORY[0x25F8577E0](v8);
  sub_25AE10E5C();
  if (v3)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(a1, v6);

  return sub_25ADF2CA0(a1, v5);
}

uint64_t NDOAction.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  v5 = v1;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v4);
  return sub_25AE10E6C();
}

uint64_t NDOAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D88, &qword_25AE14368);
  v87 = *(v89 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v96 = &v69[-v4];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D90, &qword_25AE14370);
  v90 = *(v88 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v95 = &v69[-v6];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D98, &qword_25AE14378);
  v86 = *(v79 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v79);
  v94 = &v69[-v8];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DA0, &qword_25AE14380);
  v84 = *(v85 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v93 = &v69[-v10];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DA8, &qword_25AE14388);
  v82 = *(v83 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v91 = &v69[-v12];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DB0, &qword_25AE14390);
  v80 = *(v81 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v92 = &v69[-v14];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DB8, &qword_25AE14398);
  v77 = *(v78 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v17 = &v69[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DC0, &qword_25AE143A0);
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v69[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DC8, &unk_25AE143A8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v69[-v25];
  v27 = a1[3];
  v28 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_25ADF3580();
  v29 = v98;
  sub_25AE10E7C();
  if (!v29)
  {
    v72 = v21;
    v71 = v18;
    v73 = v17;
    v31 = v92;
    v30 = v93;
    v32 = v94;
    v74 = 0;
    v34 = v95;
    v33 = v96;
    v75 = v23;
    v35 = v97;
    v98 = v26;
    v36 = sub_25AE10D8C();
    v37 = (2 * *(v36 + 16)) | 1;
    v101 = v36;
    v102 = v36 + 32;
    v103 = 0;
    v104 = v37;
    v38 = sub_25ADEA77C();
    if (v38 == 8 || v103 != v104 >> 1)
    {
      v43 = sub_25AE10CDC();
      swift_allocError();
      v45 = v44;
      v46 = v22;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0) + 48);
      *v45 = &type metadata for NDOAction;
      v48 = v98;
      sub_25AE10D1C();
      sub_25AE10CCC();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v75 + 8))(v48, v46);
LABEL_28:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v105);
    }

    v70 = v38;
    if (v38 <= 3u)
    {
      v39 = v74;
      if (v38 <= 1u)
      {
        if (!v38)
        {
          LOBYTE(v99) = 0;
          sub_25ADF3874();
          v40 = v72;
          v41 = v98;
          sub_25AE10D0C();
          if (!v39)
          {
            sub_25ADF38C8();
            v42 = v71;
            sub_25AE10D7C();
            (*(v76 + 8))(v40, v42);
            (*(v75 + 8))(v41, v22);
            swift_unknownObjectRelease();
LABEL_36:
            v66 = v99;
            v67 = v100;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        LOBYTE(v99) = 1;
        sub_25ADF3820();
        v57 = v73;
        v58 = v98;
        sub_25AE10D0C();
        if (v39)
        {
          (*(v75 + 8))(v58, v22);
          goto LABEL_28;
        }

        sub_25ADF38C8();
        v63 = v78;
        sub_25AE10D7C();
        (*(v77 + 8))(v57, v63);
        (*(v75 + 8))(v98, v22);
LABEL_35:
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      if (v38 == 2)
      {
        LOBYTE(v99) = 2;
        sub_25ADF37CC();
        v52 = v31;
        v41 = v98;
        sub_25AE10D0C();
        if (!v39)
        {
          sub_25ADF38C8();
          v53 = v81;
          sub_25AE10D7C();
          (*(v80 + 8))(v52, v53);
          (*(v75 + 8))(v41, v22);
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v99) = 3;
        sub_25ADF3778();
        v60 = v91;
        v41 = v98;
        sub_25AE10D0C();
        if (!v39)
        {
          sub_25ADF38C8();
          v64 = v83;
          sub_25AE10D7C();
          v65 = v75;
          (*(v82 + 8))(v60, v64);
          (*(v65 + 8))(v41, v22);
          goto LABEL_35;
        }
      }

LABEL_25:
      (*(v75 + 8))(v41, v22);
      goto LABEL_28;
    }

    v49 = v98;
    if (v38 > 5u)
    {
      if (v38 != 6)
      {
        LOBYTE(v99) = 7;
        sub_25ADF35D4();
        v61 = v74;
        sub_25AE10D0C();
        if (!v61)
        {
          (*(v87 + 8))(v33, v89);
          (*(v75 + 8))(v49, v22);
          swift_unknownObjectRelease();
          v66 = 0uLL;
          v67 = 0uLL;
LABEL_37:
          *v35 = v66;
          *(v35 + 16) = v67;
          *(v35 + 32) = v70;
          return __swift_destroy_boxed_opaque_existential_1(v105);
        }

        goto LABEL_27;
      }

      LOBYTE(v99) = 6;
      sub_25ADF3628();
      v54 = v34;
      v55 = v74;
      sub_25AE10D0C();
      if (v55)
      {
LABEL_27:
        (*(v75 + 8))(v49, v22);
        goto LABEL_28;
      }

      sub_25ADF38C8();
      v56 = v88;
      sub_25AE10D7C();
      v68 = v90;
    }

    else
    {
      if (v38 == 4)
      {
        LOBYTE(v99) = 4;
        sub_25ADF3724();
        v50 = v74;
        sub_25AE10D0C();
        if (!v50)
        {
          sub_25ADF38C8();
          v51 = v85;
          sub_25AE10D7C();
          (*(v84 + 8))(v30, v51);
LABEL_34:
          (*(v75 + 8))(v49, v22);
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      LOBYTE(v99) = 5;
      sub_25ADF36D0();
      v54 = v32;
      v59 = v74;
      sub_25AE10D0C();
      if (v59)
      {
        goto LABEL_27;
      }

      sub_25ADF38C8();
      v56 = v79;
      sub_25AE10D7C();
      v68 = v86;
    }

    (*(v68 + 8))(v54, v56);
    goto LABEL_34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v105);
}

uint64_t sub_25ADF22A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  v5 = v1;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v4);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF22F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  v5 = v1;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v4);
  return sub_25AE10E6C();
}

uint64_t NDOActionData.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

NDOUI::NDOActionData __swiftcall NDOActionData.init(url:additionalHeaders:bodyPayLoad:)(Swift::String_optional url, Swift::OpaquePointer additionalHeaders, Swift::OpaquePointer bodyPayLoad)
{
  *v3 = url;
  *(v3 + 16) = additionalHeaders;
  *(v3 + 24) = bodyPayLoad;
  result.url = url;
  result.bodyPayLoad = bodyPayLoad;
  result.additionalHeaders = additionalHeaders;
  return result;
}

uint64_t sub_25ADF23C8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4C79615079646F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_25ADF2428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADF4A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADF245C(uint64_t a1)
{
  v2 = sub_25ADF391C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF2498(uint64_t a1)
{
  v2 = sub_25ADF391C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOActionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DD8, &qword_25AE143B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF391C();
  sub_25AE10E8C();
  LOBYTE(v19) = 0;
  v12 = v17;
  sub_25AE10DAC();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
    sub_25ADF3970(&qword_27FA12DF0);
    sub_25AE10DFC();
    v19 = v13;
    v18 = 2;
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDOActionData.hash(into:)(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    v5 = *v1;
    sub_25AE10E5C();
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25ADF2CA0(a1, v3);

  return sub_25ADF2CA0(a1, v4);
}

uint64_t NDOActionData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v2)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v6, v4);
  sub_25ADF2CA0(v6, v3);
  return sub_25AE10E6C();
}

uint64_t NDOActionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DF8, &qword_25AE143C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF391C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v19 = sub_25AE10D2C();
  v20 = v11;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
  v21 = 1;
  sub_25ADF3970(&qword_27FA12E00);
  sub_25AE10D7C();
  v17 = v22;
  v21 = 2;
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v12 = v22;
  v13 = v18;
  v14 = v20;
  *v18 = v19;
  v13[1] = v14;
  v13[2] = v17;
  v13[3] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADF2AB8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v2)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v6, v4);
  sub_25ADF2CA0(v6, v3);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF2B4C(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    v5 = *v1;
    sub_25AE10E5C();
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25ADF2CA0(a1, v3);

  return sub_25ADF2CA0(a1, v4);
}

uint64_t sub_25ADF2BDC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v2)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v6, v4);
  sub_25ADF2CA0(v6, v3);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF2CA0(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_25AE10B2C();

    sub_25AE10B2C();

    result = sub_25AE10E6C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x25F8577E0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_25ADF50C4(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_25ADF50C4(v5, v8);
}

uint64_t _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v51[0] = v4;
  v51[1] = v5;
  v51[2] = v6;
  v51[3] = v7;
  v52 = v8;
  v53 = v10;
  v54 = v9;
  v55 = v12;
  v56 = v11;
  v57 = v13;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        if (v13 == 6)
        {
          v47 = v4;
          v48 = v5;
          v49 = v6;
          v50 = v7;
          v43 = v10;
          v44 = v9;
          v45 = v12;
          v46 = v11;
          v26 = v4;
          v27 = v5;
          v28 = v6;
          v29 = v7;
          sub_25ADE48D8(v10, v9, v12, v11, 6u);
          sub_25ADE48D8(v26, v27, v28, v29, 6u);
          sub_25ADE48D8(v26, v27, v28, v29, 6u);
          sub_25ADE48D8(v10, v9, v12, v11, 6u);
          LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
          sub_25ADF4BA8(v51);
          sub_25ADE4930(v10, v9, v12, v11, 6u);
          sub_25ADE4930(v26, v27, v28, v29, 6u);
          return v13 & 1;
        }
      }

      else if (v13 == 7 && !(v9 | v10 | v12 | v11))
      {
        sub_25ADF4BA8(v51);
        LOBYTE(v13) = 1;
        return v13 & 1;
      }
    }

    else if (v8 == 4)
    {
      if (v13 == 4)
      {
        v47 = v4;
        v48 = v5;
        v49 = v6;
        v50 = v7;
        v43 = v10;
        v44 = v9;
        v45 = v12;
        v46 = v11;
        v18 = v4;
        v19 = v5;
        v20 = v6;
        v21 = v7;
        sub_25ADE48D8(v10, v9, v12, v11, 4u);
        sub_25ADE48D8(v18, v19, v20, v21, 4u);
        sub_25ADE48D8(v18, v19, v20, v21, 4u);
        sub_25ADE48D8(v10, v9, v12, v11, 4u);
        LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
        sub_25ADF4BA8(v51);
        sub_25ADE4930(v10, v9, v12, v11, 4u);
        sub_25ADE4930(v18, v19, v20, v21, 4u);
        return v13 & 1;
      }
    }

    else if (v13 == 5)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v34 = v4;
      v35 = v5;
      v36 = v6;
      v37 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 5u);
      sub_25ADE48D8(v34, v35, v36, v37, 5u);
      sub_25ADE48D8(v34, v35, v36, v37, 5u);
      sub_25ADE48D8(v10, v9, v12, v11, 5u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 5u);
      sub_25ADE4930(v34, v35, v36, v37, 5u);
      return v13 & 1;
    }

LABEL_24:
    sub_25ADE48D8(v4, v5, v6, v7, v8);
    sub_25ADE48D8(v10, v9, v12, v11, v13);
    sub_25ADF4BA8(v51);
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v13 == 2)
      {
        v47 = v4;
        v48 = v5;
        v49 = v6;
        v50 = v7;
        v43 = v10;
        v44 = v9;
        v45 = v12;
        v46 = v11;
        v22 = v4;
        v23 = v5;
        v24 = v6;
        v25 = v7;
        sub_25ADE48D8(v10, v9, v12, v11, 2u);
        sub_25ADE48D8(v22, v23, v24, v25, 2u);
        sub_25ADE48D8(v22, v23, v24, v25, 2u);
        sub_25ADE48D8(v10, v9, v12, v11, 2u);
        LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
        sub_25ADF4BA8(v51);
        sub_25ADE4930(v10, v9, v12, v11, 2u);
        sub_25ADE4930(v22, v23, v24, v25, 2u);
        return v13 & 1;
      }
    }

    else if (v13 == 3)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v38 = v4;
      v39 = v5;
      v40 = v6;
      v41 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 3u);
      sub_25ADE48D8(v38, v39, v40, v41, 3u);
      sub_25ADE48D8(v38, v39, v40, v41, 3u);
      sub_25ADE48D8(v10, v9, v12, v11, 3u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 3u);
      sub_25ADE4930(v38, v39, v40, v41, 3u);
      return v13 & 1;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    if (v13 == 1)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v30 = v4;
      v31 = v5;
      v32 = v6;
      v33 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 1u);
      sub_25ADE48D8(v30, v31, v32, v33, 1u);
      sub_25ADE48D8(v30, v31, v32, v33, 1u);
      sub_25ADE48D8(v10, v9, v12, v11, 1u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 1u);
      sub_25ADE4930(v30, v31, v32, v33, 1u);
      return v13 & 1;
    }

    goto LABEL_24;
  }

  if (v13)
  {
    goto LABEL_24;
  }

  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v43 = v10;
  v44 = v9;
  v45 = v12;
  v46 = v11;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_25ADE48D8(v10, v9, v12, v11, 0);
  sub_25ADE48D8(v14, v15, v16, v17, 0);
  sub_25ADE48D8(v14, v15, v16, v17, 0);
  sub_25ADE48D8(v10, v9, v12, v11, 0);
  v13 = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
  sub_25ADF4BA8(v51);
  sub_25ADE4930(v10, v9, v12, v11, 0);
  sub_25ADE4930(v14, v15, v16, v17, 0);
  return v13 & 1;
}

unint64_t sub_25ADF3580()
{
  result = qword_27FA12D38;
  if (!qword_27FA12D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D38);
  }

  return result;
}

unint64_t sub_25ADF35D4()
{
  result = qword_27FA12D40;
  if (!qword_27FA12D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D40);
  }

  return result;
}

unint64_t sub_25ADF3628()
{
  result = qword_27FA12D48;
  if (!qword_27FA12D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D48);
  }

  return result;
}

unint64_t sub_25ADF367C()
{
  result = qword_27FA12D50;
  if (!qword_27FA12D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D50);
  }

  return result;
}

unint64_t sub_25ADF36D0()
{
  result = qword_27FA12D58;
  if (!qword_27FA12D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D58);
  }

  return result;
}

unint64_t sub_25ADF3724()
{
  result = qword_27FA12D60;
  if (!qword_27FA12D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D60);
  }

  return result;
}

unint64_t sub_25ADF3778()
{
  result = qword_27FA12D68;
  if (!qword_27FA12D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D68);
  }

  return result;
}

unint64_t sub_25ADF37CC()
{
  result = qword_27FA12D70;
  if (!qword_27FA12D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D70);
  }

  return result;
}

unint64_t sub_25ADF3820()
{
  result = qword_27FA12D78;
  if (!qword_27FA12D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D78);
  }

  return result;
}

unint64_t sub_25ADF3874()
{
  result = qword_27FA12D80;
  if (!qword_27FA12D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12D80);
  }

  return result;
}

unint64_t sub_25ADF38C8()
{
  result = qword_27FA12DD0;
  if (!qword_27FA12DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12DD0);
  }

  return result;
}

unint64_t sub_25ADF391C()
{
  result = qword_27FA12DE0;
  if (!qword_27FA12DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12DE0);
  }

  return result;
}

uint64_t sub_25ADF3970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12DE8, &qword_25AE143C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADF39E0()
{
  result = qword_27FA12E08;
  if (!qword_27FA12E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E08);
  }

  return result;
}

unint64_t sub_25ADF3A38()
{
  result = qword_27FA12E10;
  if (!qword_27FA12E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E10);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25ADF3AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ADF3AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25ADF3B30(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_25ADF3B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25ADF3BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOActionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOActionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADF3DD8()
{
  result = qword_27FA12E18;
  if (!qword_27FA12E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E18);
  }

  return result;
}

unint64_t sub_25ADF3E30()
{
  result = qword_27FA12E20;
  if (!qword_27FA12E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E20);
  }

  return result;
}

unint64_t sub_25ADF3E88()
{
  result = qword_27FA12E28;
  if (!qword_27FA12E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E28);
  }

  return result;
}

unint64_t sub_25ADF3EE0()
{
  result = qword_27FA12E30;
  if (!qword_27FA12E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E30);
  }

  return result;
}

unint64_t sub_25ADF3F38()
{
  result = qword_27FA12E38;
  if (!qword_27FA12E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E38);
  }

  return result;
}

unint64_t sub_25ADF3F90()
{
  result = qword_27FA12E40;
  if (!qword_27FA12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E40);
  }

  return result;
}

unint64_t sub_25ADF3FE8()
{
  result = qword_27FA12E48;
  if (!qword_27FA12E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E48);
  }

  return result;
}

unint64_t sub_25ADF4040()
{
  result = qword_27FA12E50;
  if (!qword_27FA12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E50);
  }

  return result;
}

unint64_t sub_25ADF4098()
{
  result = qword_27FA12E58;
  if (!qword_27FA12E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E58);
  }

  return result;
}

unint64_t sub_25ADF40F0()
{
  result = qword_27FA12E60;
  if (!qword_27FA12E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E60);
  }

  return result;
}

unint64_t sub_25ADF4148()
{
  result = qword_27FA12E68;
  if (!qword_27FA12E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E68);
  }

  return result;
}

unint64_t sub_25ADF41A0()
{
  result = qword_27FA12E70;
  if (!qword_27FA12E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E70);
  }

  return result;
}

unint64_t sub_25ADF41F8()
{
  result = qword_27FA12E78;
  if (!qword_27FA12E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E78);
  }

  return result;
}

unint64_t sub_25ADF4250()
{
  result = qword_27FA12E80;
  if (!qword_27FA12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E80);
  }

  return result;
}

unint64_t sub_25ADF42A8()
{
  result = qword_27FA12E88;
  if (!qword_27FA12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E88);
  }

  return result;
}

unint64_t sub_25ADF4300()
{
  result = qword_27FA12E90;
  if (!qword_27FA12E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E90);
  }

  return result;
}

unint64_t sub_25ADF4358()
{
  result = qword_27FA12E98;
  if (!qword_27FA12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12E98);
  }

  return result;
}

unint64_t sub_25ADF43B0()
{
  result = qword_27FA12EA0;
  if (!qword_27FA12EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EA0);
  }

  return result;
}

unint64_t sub_25ADF4408()
{
  result = qword_27FA12EA8;
  if (!qword_27FA12EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EA8);
  }

  return result;
}

unint64_t sub_25ADF4460()
{
  result = qword_27FA12EB0;
  if (!qword_27FA12EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EB0);
  }

  return result;
}

unint64_t sub_25ADF44B8()
{
  result = qword_27FA12EB8;
  if (!qword_27FA12EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EB8);
  }

  return result;
}

unint64_t sub_25ADF4510()
{
  result = qword_27FA12EC0;
  if (!qword_27FA12EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EC0);
  }

  return result;
}

unint64_t sub_25ADF4568()
{
  result = qword_27FA12EC8;
  if (!qword_27FA12EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EC8);
  }

  return result;
}

unint64_t sub_25ADF45C0()
{
  result = qword_27FA12ED0;
  if (!qword_27FA12ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12ED0);
  }

  return result;
}

unint64_t sub_25ADF4618()
{
  result = qword_27FA12ED8;
  if (!qword_27FA12ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12ED8);
  }

  return result;
}

unint64_t sub_25ADF4670()
{
  result = qword_27FA12EE0;
  if (!qword_27FA12EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EE0);
  }

  return result;
}

unint64_t sub_25ADF46C8()
{
  result = qword_27FA12EE8;
  if (!qword_27FA12EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EE8);
  }

  return result;
}

unint64_t sub_25ADF4720()
{
  result = qword_27FA12EF0;
  if (!qword_27FA12EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EF0);
  }

  return result;
}

unint64_t sub_25ADF4778()
{
  result = qword_27FA12EF8;
  if (!qword_27FA12EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12EF8);
  }

  return result;
}

uint64_t sub_25ADF47CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265577472617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D417472617473 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687461506E65706FLL && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6157656369766564 && a2 == 0xEE0079746E617272 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437373696D736964 && a2 == 0xEE006F6D6F725063 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D73694472657375 && a2 == 0xEB00000000737369 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656A655272657375 && a2 == 0xEA00000000007463 || (sub_25AE10E2C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553646E61707865 && a2 == 0xED00006E6F697463)
  {

    return 7;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_25ADF4A84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADF4BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F00, &unk_25AE15210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADF4C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F08, &unk_25AE15220);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25ADF4CB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F08, &unk_25AE15220);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for NDOWarrantyPropertiesLoadingState()
{
  result = qword_27FA12F10;
  if (!qword_27FA12F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADF4D8C()
{
  sub_25ADF4DE4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25ADF4DE4()
{
  if (!qword_27FA12F20)
  {
    v0 = type metadata accessor for NDOWarrantyProperties();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12F20);
    }
  }
}

uint64_t dispatch thunk of NDODeviceWarrantyProvider.localDeviceWarranty(forSerialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25ADEBFBC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NDODeviceWarrantyProvider.remoteDeviceWarranty(forSerialNumber:withAdditionalHeaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25ADEC200;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_25ADF50C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25ADF6A70(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25AE10E2C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_25ADF531C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t sub_25ADF53E0()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_25ADF546C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADF7B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADF5494(uint64_t a1)
{
  v2 = sub_25ADF7078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF54D0(uint64_t a1)
{
  v2 = sub_25ADF7078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F28, &qword_25AE152B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7078();
  sub_25AE10E8C();
  v20[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_25ADF70CC(&qword_27FA12F38, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25AE10DFC();
  if (!v2)
  {
    v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    sub_25AE10DAC();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    sub_25AE10DAC();
    v18 = v11[7];
    v20[12] = 3;
    sub_25AE1024C();
    sub_25ADF70CC(&qword_27FA126F0, MEMORY[0x277CC9578]);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F40, &qword_25AE152C0);
  v31 = *(v35 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v31 - v11;
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7078();
  v33 = v12;
  v18 = v36;
  sub_25AE10E7C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v6;
  v19 = v16;
  v20 = v31;
  v21 = v32;
  v40 = 0;
  sub_25ADF70CC(&qword_27FA12F48, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25AE10D7C();
  sub_25ADF7114(v34, v19);
  v39 = 1;
  v22 = sub_25AE10D2C();
  v23 = (v19 + v13[5]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 2;
  v25 = sub_25AE10D2C();
  v26 = a1;
  v27 = (v19 + v13[6]);
  *v27 = v25;
  v27[1] = v28;
  sub_25AE1024C();
  v37 = 3;
  sub_25ADF70CC(&qword_27FA12710, MEMORY[0x277CC9578]);
  v29 = v36;
  sub_25AE10D3C();
  (*(v20 + 8))(v33, v35);
  sub_25ADDEA8C(v29, v19 + v13[7]);
  sub_25ADF7178(v19, v21, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_25ADF71E0(v19, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = sub_25AE101BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 24));
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 28));
}

unint64_t sub_25ADF5D40()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_25ADF5DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADF7C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADF5DE4(uint64_t a1)
{
  v2 = sub_25ADF7240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF5E20(uint64_t a1)
{
  v2 = sub_25ADF7240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F50, &unk_25AE152C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7240();
  sub_25AE10E8C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    v14 = v13[5];
    LOBYTE(v18) = 1;
    sub_25AE101BC();
    sub_25ADF70CC(&qword_27FA12F60, MEMORY[0x277CC9260]);
    sub_25AE10DFC();
    v18 = *(v3 + v13[6]);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
    sub_25ADF3970(&qword_27FA12DF0);
    sub_25AE10DFC();
    v18 = *(v3 + v13[7]);
    v17 = 3;
    sub_25AE10DFC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_25AE101BC();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F68, &qword_25AE152D8);
  v23 = *(v26 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7240();
  v25 = v9;
  v15 = v27;
  sub_25AE10E7C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v17 = v23;
  v16 = v24;
  LOBYTE(v29) = 0;
  *v13 = sub_25AE10D4C();
  v13[1] = v18;
  v21[2] = v18;
  LOBYTE(v29) = 1;
  sub_25ADF70CC(&qword_27FA12F70, MEMORY[0x277CC9260]);
  sub_25AE10D7C();
  (*(v16 + 32))(v13 + v10[5], v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
  v28 = 2;
  v21[0] = sub_25ADF3970(&qword_27FA12E00);
  v21[1] = 0;
  sub_25AE10D7C();
  v19 = v27;
  *(v13 + v10[6]) = v29;
  v28 = 3;
  sub_25AE10D7C();
  (*(v17 + 8))(v25, v26);
  *(v13 + v10[7]) = v29;
  sub_25ADF7178(v13, v22, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_25ADF71E0(v13, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_25AE1024C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25ADDE9D0(v0 + *(v10 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25ADDE8CC(v4, &qword_27FA126C0, &qword_25AE11BB0);
    return 1;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_25AE1022C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    return v13 > 0.0;
  }
}

uint64_t NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  v6 = sub_25AE1024C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25ADDE9D0(v1 + v11[7], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25ADDE8CC(v5, &qword_27FA126C0, &qword_25AE11BB0);
LABEL_12:
    v21 = (v1 + v11[5]);
    v20 = *v21;
    v22 = v21[1];

    return v20;
  }

  (*(v7 + 32))(v10, v5, v6);
  result = sub_25AE1022C();
  v14 = ceil(v13 / 86400.0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 9.22337204e18)
  {
    v15 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v15 <= 1 || (v16 = (v1 + v11[6]), (v17 = v16[1]) == 0))
      {
        (*(v7 + 8))(v10, v6);
        goto LABEL_12;
      }

      v28 = *v16;
      v29 = v17;
      v27[0] = 16421;
      v27[1] = 0xE200000000000000;
      sub_25ADDE53C();
      v18 = MEMORY[0x277D837D0];
      v19 = *(sub_25AE10C9C() + 16);

      if (v19 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F78, &qword_25AE152E0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_25AE152A0;
        v28 = v15;
        v24 = sub_25AE10E1C();
        v26 = v25;
        *(v23 + 56) = v18;
        *(v23 + 64) = sub_25ADF7294();
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v20 = sub_25AE10AEC();
        (*(v7 + 8))(v10, v6);
        return v20;
      }
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_25ADF6A70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25AE10E3C();
  sub_25AE10B2C();
  v6 = sub_25AE10E6C();

  return sub_25ADF6AE8(a1, a2, v6);
}

unint64_t sub_25ADF6AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25AE10E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV4LinkV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v6 = v5[5];
  if ((sub_25AE1019C() & 1) == 0 || (sub_25ADF50C4(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[7];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_25ADF50C4(v8, v9);
}

BOOL _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25AE1024C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FE8, &unk_25AE15670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v18 = v17[5];
  if ((sub_25AE1019C() & 1) == 0 || (sub_25ADF50C4(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_25ADF50C4(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v20 = v19[5];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v25 = v19;
      v26 = sub_25AE10E2C();
      v19 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = v19[6];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v32 = v19;
      v33 = sub_25AE10E2C();
      v19 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = v19[7];
  v35 = *(v13 + 48);
  sub_25ADDE9D0(a1 + v34, v16);
  sub_25ADDE9D0(a2 + v34, &v16[v35]);
  v36 = *(v5 + 48);
  if (v36(v16, 1, v4) == 1)
  {
    if (v36(&v16[v35], 1, v4) == 1)
    {
      sub_25ADDE8CC(v16, &qword_27FA126C0, &qword_25AE11BB0);
      return 1;
    }

    goto LABEL_26;
  }

  sub_25ADDE9D0(v16, v12);
  if (v36(&v16[v35], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_26:
    sub_25ADDE8CC(v16, &qword_27FA12FE8, &unk_25AE15670);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v35], v4);
  sub_25ADF70CC(&qword_27FA12FF0, MEMORY[0x277CC9578]);
  v38 = sub_25AE10A6C();
  v39 = *(v5 + 8);
  v39(v8, v4);
  v39(v12, v4);
  sub_25ADDE8CC(v16, &qword_27FA126C0, &qword_25AE11BB0);
  return (v38 & 1) != 0;
}

unint64_t sub_25ADF7078()
{
  result = qword_27FA12F30;
  if (!qword_27FA12F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12F30);
  }

  return result;
}

uint64_t sub_25ADF70CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25ADF7114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF7178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25ADF71E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25ADF7240()
{
  result = qword_27FA12F58;
  if (!qword_27FA12F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12F58);
  }

  return result;
}

unint64_t sub_25ADF7294()
{
  result = qword_27FA12F80;
  if (!qword_27FA12F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12F80);
  }

  return result;
}

uint64_t sub_25ADF72FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25ADF7450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25ADF7584()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v0 <= 0x3F)
  {
    sub_25ADF7620();
    if (v1 <= 0x3F)
    {
      sub_25ADDF7DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25ADF7620()
{
  if (!qword_27FA12F98)
  {
    v0 = sub_25AE10C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12F98);
    }
  }
}

uint64_t sub_25ADF7684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25AE101BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25ADF7744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25AE101BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADF77E8()
{
  sub_25AE101BC();
  if (v0 <= 0x3F)
  {
    sub_25ADF787C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADF787C()
{
  if (!qword_27FA12FB0)
  {
    v0 = sub_25AE10A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12FB0);
    }
  }
}

unint64_t sub_25ADF7904()
{
  result = qword_27FA12FB8;
  if (!qword_27FA12FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FB8);
  }

  return result;
}

unint64_t sub_25ADF795C()
{
  result = qword_27FA12FC0;
  if (!qword_27FA12FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FC0);
  }

  return result;
}

unint64_t sub_25ADF79B4()
{
  result = qword_27FA12FC8;
  if (!qword_27FA12FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FC8);
  }

  return result;
}

unint64_t sub_25ADF7A0C()
{
  result = qword_27FA12FD0;
  if (!qword_27FA12FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FD0);
  }

  return result;
}

unint64_t sub_25ADF7A64()
{
  result = qword_27FA12FD8;
  if (!qword_27FA12FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FD8);
  }

  return result;
}

unint64_t sub_25ADF7ABC()
{
  result = qword_27FA12FE0;
  if (!qword_27FA12FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12FE0);
  }

  return result;
}

uint64_t sub_25ADF7B10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADF7C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t NDOWarrantyProperties.serialNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties() + 32);

  return sub_25ADF7F28(v3, a1);
}

uint64_t type metadata accessor for NDOWarrantyProperties()
{
  result = qword_27FA13028;
  if (!qword_27FA13028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADF7F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF7F9C()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x6567617265766F63;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466656854736168;
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

uint64_t sub_25ADF805C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADF8FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADF8084(uint64_t a1)
{
  v2 = sub_25ADF8AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF80C0(uint64_t a1)
{
  v2 = sub_25ADF8AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOWarrantyProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13000, &qword_25AE15688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF8AC8();
  sub_25AE10E8C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v20[14] = 1;
    sub_25AE10DDC();
    v14 = v3[3];
    v15 = v3[4];
    v20[13] = 2;
    sub_25AE10DCC();
    v16 = v3[5];
    v17 = v3[6];
    v20[12] = 3;
    sub_25AE10DAC();
    v18 = *(type metadata accessor for NDOWarrantyProperties() + 32);
    v20[11] = 4;
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    sub_25ADF8B1C(&qword_27FA13010);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13018, &qword_25AE15690);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for NDOWarrantyProperties();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF8AC8();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v33 = 0;
  *v15 = sub_25AE10D4C();
  *(v15 + 1) = v20;
  v24[1] = v20;
  v32 = 1;
  v15[16] = sub_25AE10D5C() & 1;
  v31 = 2;
  *(v15 + 3) = sub_25AE10D4C();
  *(v15 + 4) = v21;
  v30 = 3;
  *(v15 + 5) = sub_25AE10D2C();
  *(v15 + 6) = v22;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v29 = 4;
  sub_25ADF8B1C(&qword_27FA13020);
  sub_25AE10D3C();
  (*(v19 + 8))(v11, v18);
  sub_25ADF8B60(v17, &v15[*(v12 + 32)]);
  sub_25ADF8BD0(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_25ADF91AC(v15, type metadata accessor for NDOWarrantyProperties);
}

BOOL _s5NDOUI21NDOWarrantyPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13058, &qword_25AE15860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25AE10E2C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (!v19 || (*(a1 + 40) != *(a2 + 40) || v18 != v19) && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(type metadata accessor for NDOWarrantyProperties() + 32);
  v21 = *(v13 + 48);
  sub_25ADF7F28(a1 + v20, v16);
  sub_25ADF7F28(a2 + v20, &v16[v21]);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_25ADDE8CC(v16, &qword_27FA12FF8, &qword_25AE15680);
      return 1;
    }

    goto LABEL_22;
  }

  sub_25ADF7F28(v16, v12);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_25ADF91AC(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
LABEL_22:
    sub_25ADDE8CC(v16, &qword_27FA13058, &qword_25AE15860);
    return 0;
  }

  sub_25ADF920C(&v16[v21], v8);
  v23 = _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_25ADF91AC(v8, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_25ADF91AC(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_25ADDE8CC(v16, &qword_27FA12FF8, &qword_25AE15680);
  return v23;
}

unint64_t sub_25ADF8AC8()
{
  result = qword_27FA13008;
  if (!qword_27FA13008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13008);
  }

  return result;
}

uint64_t sub_25ADF8B1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADF8B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF8BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF8C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25ADF8D18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADF8DC8()
{
  sub_25ADF7620();
  if (v0 <= 0x3F)
  {
    sub_25ADF8E6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADF8E6C()
{
  if (!qword_27FA13038)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v0 = sub_25AE10C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA13038);
    }
  }
}

unint64_t sub_25ADF8ED8()
{
  result = qword_27FA13040;
  if (!qword_27FA13040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13040);
  }

  return result;
}

unint64_t sub_25ADF8F30()
{
  result = qword_27FA13048;
  if (!qword_27FA13048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13048);
  }

  return result;
}

unint64_t sub_25ADF8F88()
{
  result = qword_27FA13050;
  if (!qword_27FA13050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13050);
  }

  return result;
}

uint64_t sub_25ADF8FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025AE1EA50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025AE1EB70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADF91AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25ADF920C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 NDODWFooterView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = *(a1 + 8);
  *(a4 + 8) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_25ADF9288()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = v0[1];
    v21 = *v0;
    v29 = MEMORY[0x277D84F90];
    result = sub_25ADFFF80(0, v3, 0);
    v5 = 0;
    v23 = v2;
    v24 = *(v2 + 16);
    v6 = v29;
    v7 = (v2 + 80);
    v22 = v3;
    while (v24 != v5)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_10;
      }

      v25 = v6;
      v9 = *(v7 - 6);
      v8 = *(v7 - 5);
      v10 = *(v7 - 4);
      v11 = *(v7 - 3);
      v13 = *(v7 - 2);
      v12 = *(v7 - 1);
      v14 = *v7;

      sub_25ADE48D8(v10, v11, v13, v12, v14);

      sub_25ADE48D8(v10, v11, v13, v12, v14);

      sub_25ADE4930(v10, v11, v13, v12, v14);
      *&v26 = 91;
      *(&v26 + 1) = 0xE100000000000000;
      MEMORY[0x25F8574D0](v9, v8);
      MEMORY[0x25F8574D0](10333, 0xE200000000000000);
      v15 = sub_25AE10E1C();
      MEMORY[0x25F8574D0](v15);

      MEMORY[0x25F8574D0](41, 0xE100000000000000);
      v16 = v26;
      v27 = MEMORY[0x277D837D0];
      v28 = sub_25ADF7294();
      v6 = v25;

      sub_25ADE4930(v10, v11, v13, v12, v14);
      v26 = v16;
      v29 = v25;
      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25ADFFF80((v17 > 1), v18 + 1, 1);
        v6 = v29;
      }

      ++v5;
      *(v6 + 16) = v18 + 1;
      result = sub_25ADFA8A8(&v26, v6 + 40 * v18 + 32);
      v7 += 56;
      v2 = v23;
      if (v22 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v19 = sub_25AE10ADC();

    return v19;
  }

  return result;
}

uint64_t NDODWFooterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v22 = *(v1 + 4);
  v4 = v1[1];
  v18[0] = *v1;
  v18[1] = v4;
  v19 = *(v1 + 4);
  sub_25ADF9288();
  sub_25AE1051C();
  v5 = sub_25AE1081C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  *(v13 + 48) = v22;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13060, &qword_25AE15898) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0) + 28);
  sub_25ADF978C(&v20, v18);
  result = sub_25AE1034C();
  *v15 = KeyPath;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_25ADF9680(uint64_t a1)
{
  v2 = sub_25AE1035C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25AE1040C();
}

uint64_t sub_25ADF9750()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_25ADF97E0();
}

uint64_t sub_25ADF97E0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  result = sub_25AE1017C();
  v6 = HIBYTE(v5) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return sub_25AE1032C();
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v42 = 0;
    v10 = sub_25ADF9EA8(result, v5, 10);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      goto LABEL_63;
    }

    return sub_25AE1032C();
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_25AE10CEC();
      v7 = v36;
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        if (--v7)
        {
          v10 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_61;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v7)
      {
        v10 = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v10 = 0;
      LOBYTE(v7) = 1;
LABEL_62:
      v42 = v7;
      v28 = v7;

      if ((v28 & 1) == 0)
      {
LABEL_63:
        if ((v10 & 0x8000000000000000) == 0 && v10 < *(v2 + 16))
        {
          v29 = v2 + 56 * v10;
          v30 = *(v29 + 56);
          v31 = *(v29 + 64);
          v32 = *(v29 + 72);
          v33 = *(v29 + 80);
          v37 = *(v29 + 48);
          v38 = v30;
          v39 = v31;
          v40 = v32;
          v41 = v33;
          sub_25ADE48D8(v37, v30, v31, v32, v33);
          v1(&v37);
          sub_25ADE4930(v37, v38, v39, v40, v41);
          return sub_25AE1033C();
        }
      }

      return sub_25AE1032C();
    }

    if (v7 >= 1)
    {
      if (--v7)
      {
        v10 = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v37 = result;
  v38 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v6)
      {
        v10 = 0;
        v25 = &v37;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          v25 = (v25 + 1);
          if (!--v6)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v6)
    {
      v7 = v6 - 1;
      if (v6 != 1)
      {
        v10 = 0;
        v14 = &v37 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v10 = 0;
      v20 = &v37 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_25ADF9B64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v22 = *(v1 + 4);
  v4 = v1[1];
  v18[0] = *v1;
  v18[1] = v4;
  v19 = *(v1 + 4);
  sub_25ADF9288();
  sub_25AE1051C();
  v5 = sub_25AE1081C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  *(v13 + 48) = v22;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13060, &qword_25AE15898) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0) + 28);
  sub_25ADF978C(&v20, v18);
  result = sub_25AE1034C();
  *v15 = KeyPath;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
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

uint64_t sub_25ADF9CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25ADF9D14(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25ADF9D70()
{
  result = qword_27FA13070;
  if (!qword_27FA13070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13060, &qword_25AE15898);
    sub_25ADF9DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13070);
  }

  return result;
}

unint64_t sub_25ADF9DFC()
{
  result = qword_27FA13078;
  if (!qword_27FA13078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13068, &qword_25AE158A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13078);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unsigned __int8 *sub_25ADF9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25AE10BAC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25ADFA434();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25AE10CEC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25ADFA434()
{
  v0 = sub_25AE10BBC();
  v4 = sub_25ADFA4B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25ADFA4B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25AE10B1C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25AE10C8C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25ADDDED4(v9, 0);
  v12 = sub_25ADFA60C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25AE10B1C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25AE10CEC();
LABEL_4:

  return sub_25AE10B1C();
}

unint64_t sub_25ADFA60C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25ADFA82C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25AE10B7C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25AE10CEC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25ADFA82C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25AE10B5C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25ADFA82C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25AE10B8C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F857500](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25ADFA8A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t NDOItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v16[6] = *(v1 + 96);
  v16[7] = v3;
  v16[8] = *(v1 + 128);
  v17 = *(v1 + 144);
  v4 = *(v1 + 48);
  v16[2] = *(v1 + 32);
  v16[3] = v4;
  v5 = *(v1 + 80);
  v16[4] = *(v1 + 64);
  v16[5] = v5;
  v6 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v6;
  v7 = sub_25ADFA998(v16);
  v8 = sub_25ADFA9A4(v16);
  v9 = qword_25AE167F0[v7];
  v10 = *(v8 + qword_25AE16770[v7]);
  v11 = *(v8 + qword_25AE16790[v7]);
  v12 = *(v8 + qword_25AE167B0[v7]);
  v13 = *(v8 + qword_25AE167D0[v7]);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  v14 = *(v8 + v9);
  *(a1 + 32) = v14;
  return sub_25ADE48D8(v10, v11, v12, v13, v14);
}

uint64_t sub_25ADFA9B8()
{
  v1 = 0x656369766564;
  v2 = 0x64726163616C70;
  if (*v0 != 2)
  {
    v2 = 0x6F6D6F7270;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_25ADFAA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADFCF40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADFAA4C(uint64_t a1)
{
  v2 = sub_25ADFC458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAA88(uint64_t a1)
{
  v2 = sub_25ADFC458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAAC4(uint64_t a1)
{
  v2 = sub_25ADFC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAB00(uint64_t a1)
{
  v2 = sub_25ADFC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAB3C(uint64_t a1)
{
  v2 = sub_25ADFC5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAB78(uint64_t a1)
{
  v2 = sub_25ADFC5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFABB4(uint64_t a1)
{
  v2 = sub_25ADFC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFABF0(uint64_t a1)
{
  v2 = sub_25ADFC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAC2C(uint64_t a1)
{
  v2 = sub_25ADFC4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAC68(uint64_t a1)
{
  v2 = sub_25ADFC4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOItem.encode(to:)(void *a1)
{
  v2 = v1;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13080, "|>");
  *&v64 = *(v65 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13088, &qword_25AE15958);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13090, &qword_25AE15960);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13098, &qword_25AE15968);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130A0, &qword_25AE15970);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFC458();
  sub_25AE10E8C();
  v22 = *(v2 + 112);
  v78[6] = *(v2 + 96);
  v78[7] = v22;
  v78[8] = *(v2 + 128);
  v79 = *(v2 + 144);
  v23 = *(v2 + 48);
  v78[2] = *(v2 + 32);
  v78[3] = v23;
  v24 = *(v2 + 80);
  v78[4] = *(v2 + 64);
  v78[5] = v24;
  v25 = *(v2 + 16);
  v78[0] = *v2;
  v78[1] = v25;
  v26 = sub_25ADFA998(v78);
  v27 = sub_25ADFA9A4(v78);
  v28 = v27;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v68) = 2;
      sub_25ADFC554();
      v16 = v60;
      v29 = v67;
      sub_25AE10D9C();
      v37 = *v28;
      v38 = *(v28 + 32);
      v69 = *(v28 + 16);
      v70 = v38;
      v68 = v37;
      v39 = *(v28 + 48);
      v40 = *(v28 + 64);
      v41 = *(v28 + 80);
      LOBYTE(v74) = *(v28 + 96);
      v72 = v40;
      v73 = v41;
      v71 = v39;
      sub_25ADFC5A8();
      v13 = v62;
      sub_25AE10DFC();
      v36 = v61;
    }

    else
    {
      LOBYTE(v68) = 3;
      sub_25ADFC4AC();
      v16 = v63;
      v29 = v67;
      sub_25AE10D9C();
      v49 = *(v28 + 16);
      v68 = *v28;
      v69 = v49;
      v50 = *(v28 + 32);
      v51 = *(v28 + 48);
      v52 = *(v28 + 80);
      v72 = *(v28 + 64);
      v73 = v52;
      v70 = v50;
      v71 = v51;
      v53 = *(v28 + 96);
      v54 = *(v28 + 112);
      v55 = *(v28 + 128);
      v77 = *(v28 + 144);
      v75 = v54;
      v76 = v55;
      v74 = v53;
      sub_25ADFC500();
      v13 = v65;
      sub_25AE10DFC();
      v36 = v64;
    }
  }

  else
  {
    if (v26)
    {
      v42 = *v27;
      v43 = *(v27 + 8);
      v44 = *(v27 + 48);
      LOBYTE(v68) = 1;
      sub_25ADFC5FC();
      v45 = *(v28 + 16);
      v64 = *(v28 + 32);
      v65 = v45;
      v46 = v67;
      sub_25AE10D9C();
      *&v68 = v42;
      *(&v68 + 1) = v43;
      v69 = v65;
      v70 = v64;
      LOBYTE(v71) = v44;
      sub_25ADEAEDC();
      v47 = v59;
      sub_25AE10DFC();
      (*(v58 + 8))(v12, v47);
      return (*(v66 + 8))(v20, v46);
    }

    LOBYTE(v68) = 0;
    sub_25ADFC650();
    v29 = v67;
    sub_25AE10D9C();
    v30 = *v28;
    v31 = *(v28 + 16);
    v32 = *(v28 + 48);
    v70 = *(v28 + 32);
    v71 = v32;
    v68 = v30;
    v69 = v31;
    v33 = *(v28 + 64);
    v34 = *(v28 + 80);
    v35 = *(v28 + 96);
    LOBYTE(v75) = *(v28 + 112);
    v73 = v34;
    v74 = v35;
    v72 = v33;
    sub_25ADFC6A4();
    sub_25AE10DFC();
    v36 = v57;
  }

  (*(v36 + 8))(v16, v13);
  return (*(v66 + 8))(v20, v29);
}

uint64_t NDOItem.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 112);
  v39[6] = *(v1 + 96);
  v39[7] = v3;
  v39[8] = *(v1 + 128);
  v40 = *(v1 + 144);
  v4 = *(v1 + 48);
  v39[2] = *(v1 + 32);
  v39[3] = v4;
  v5 = *(v1 + 80);
  v39[4] = *(v1 + 64);
  v39[5] = v5;
  v6 = *(v1 + 16);
  v39[0] = *v1;
  v39[1] = v6;
  v7 = sub_25ADFA998(v39);
  v8 = sub_25ADFA9A4(v39);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      MEMORY[0x25F8577E0](0);
      return sub_25AE10B2C();
    }

    v20 = *v8;
    v21 = *(v8 + 8);
    v22 = *(v8 + 48);
    v26 = *(v8 + 32);
    v28 = *(v8 + 16);
    MEMORY[0x25F8577E0](1);
    sub_25AE10B2C();
    return NDOAction.hash(into:)(a1);
  }

  if (v7 == 2)
  {
    v12 = *v8;
    v13 = *(v8 + 8);
    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = *(v8 + 32);
    v17 = *(v8 + 40);
    v18 = *(v8 + 48);
    v19 = *(v8 + 56);
    v27 = *(v8 + 96);
    v24 = *(v8 + 80);
    v25 = *(v8 + 64);
    MEMORY[0x25F8577E0](2);
    sub_25AE10B2C();
    sub_25AE10B2C();
    sub_25AE10B2C();
    sub_25AE10B2C();
    return NDOAction.hash(into:)(a1);
  }

  v23 = v8;
  MEMORY[0x25F8577E0](3);
  v35 = *(v23 + 96);
  v36 = *(v23 + 112);
  v37 = *(v23 + 128);
  v38 = *(v23 + 144);
  v31 = *(v23 + 32);
  v32 = *(v23 + 48);
  v33 = *(v23 + 64);
  v34 = *(v23 + 80);
  v29 = *v23;
  v30 = *(v23 + 16);
  return NDOPromoModel.hash(into:)(a1);
}

uint64_t NDOItem.hashValue.getter()
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDOItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130E8, &qword_25AE15978);
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v60 = &v48 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130F0, &qword_25AE15980);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130F8, &qword_25AE15988);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13100, &qword_25AE15990);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13108, &unk_25AE15998);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_25ADFC458();
  v21 = v61;
  sub_25AE10E7C();
  if (!v21)
  {
    v48 = v11;
    v49 = v14;
    v61 = v10;
    v23 = v59;
    v22 = v60;
    v24 = v58;
    v25 = sub_25AE10D8C();
    v26 = (2 * *(v25 + 16)) | 1;
    v92 = v25;
    v93 = v25 + 32;
    v94 = 0;
    v95 = v26;
    v27 = sub_25ADEA7B0();
    if (v27 != 4 && v94 == v95 >> 1)
    {
      if (v27 > 1u)
      {
        if (v27 != 2)
        {
          LOBYTE(v72) = 3;
          sub_25ADFC4AC();
          sub_25AE10D0C();
          sub_25ADFC6F8();
          v40 = v54;
          sub_25AE10D7C();
          (*(v56 + 8))(v22, v40);
          (*(v24 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v68 = v78;
          v69 = v79;
          v70 = v80;
          v71 = v81;
          v64 = v74;
          v65 = v75;
          v66 = v76;
          v67 = v77;
          v62 = v72;
          v63 = v73;
          sub_25ADFC74C(&v62);
          v88 = v68;
          v89 = v69;
          v90 = v70;
          v91 = v71;
          v84 = v64;
          v85 = v65;
          v86 = v66;
          v87 = v67;
          v42 = v62;
          v43 = v63;
LABEL_14:
          v82 = v42;
          v83 = v43;
          v41 = v57;
          goto LABEL_15;
        }

        LOBYTE(v72) = 2;
        sub_25ADFC554();
        sub_25AE10D0C();
        sub_25ADFC75C();
        v37 = v55;
        sub_25AE10D7C();
        (*(v53 + 8))(v23, v37);
        (*(v24 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v76 = v66;
        v77 = v67;
        LOBYTE(v78) = v68;
        v72 = v62;
        v73 = v63;
        v74 = v64;
        v75 = v65;
        sub_25ADFC7B0(&v72);
      }

      else
      {
        if (!v27)
        {
          LOBYTE(v72) = 0;
          sub_25ADFC650();
          v28 = v49;
          sub_25AE10D0C();
          sub_25ADFC7D0();
          v29 = v48;
          sub_25AE10D7C();
          (*(v50 + 8))(v28, v29);
          (*(v24 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v76 = v66;
          v77 = v67;
          v78 = v68;
          LOBYTE(v79) = v69;
          v72 = v62;
          v73 = v63;
          v74 = v64;
          v75 = v65;
          sub_25ADFC824(&v72);
          v88 = v78;
          v89 = v79;
          v90 = v80;
          v91 = v81;
          v84 = v74;
          v85 = v75;
          v86 = v76;
          v87 = v77;
          v82 = v72;
          v83 = v73;
          v41 = v57;
LABEL_15:
          v44 = v89;
          *(v41 + 96) = v88;
          *(v41 + 112) = v44;
          *(v41 + 128) = v90;
          *(v41 + 144) = v91;
          v45 = v85;
          *(v41 + 32) = v84;
          *(v41 + 48) = v45;
          v46 = v87;
          *(v41 + 64) = v86;
          *(v41 + 80) = v46;
          v47 = v83;
          *v41 = v82;
          *(v41 + 16) = v47;
          return __swift_destroy_boxed_opaque_existential_1(v96);
        }

        LOBYTE(v72) = 1;
        sub_25ADFC5FC();
        v38 = v61;
        sub_25AE10D0C();
        sub_25ADEB128();
        v39 = v52;
        sub_25AE10D7C();
        (*(v51 + 8))(v38, v39);
        (*(v24 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v72 = v62;
        v73 = v63;
        v74 = v64;
        LOBYTE(v75) = v65;
        sub_25ADFC7C0(&v72);
      }

      v88 = v78;
      v89 = v79;
      v90 = v80;
      v91 = v81;
      v84 = v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      v42 = v72;
      v43 = v73;
      goto LABEL_14;
    }

    v30 = v18;
    v31 = sub_25AE10CDC();
    swift_allocError();
    v33 = v32;
    v34 = v15;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0) + 48);
    *v33 = &type metadata for NDOItem;
    sub_25AE10D1C();
    sub_25AE10CCC();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v24 + 8))(v30, v34);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t sub_25ADFBE48()
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADFBE8C()
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI7NDOItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v90 = *(a1 + 96);
  v91 = v2;
  v4 = *(a1 + 112);
  v92 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v86 = *(a1 + 32);
  v87 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v88 = *(a1 + 64);
  v89 = v8;
  v9 = *(a1 + 16);
  v85[0] = *a1;
  v85[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v100 = a2[6];
  v101 = v10;
  v12 = a2[7];
  v102 = a2[8];
  v13 = a2[3];
  v14 = a2[1];
  v96 = a2[2];
  v97 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v98 = a2[4];
  v99 = v16;
  v17 = a2[1];
  v94 = *a2;
  v95 = v17;
  v18 = *(a1 + 112);
  v104[6] = *(a1 + 96);
  v104[7] = v18;
  v104[8] = *(a1 + 128);
  v19 = *(a1 + 32);
  v104[3] = *(a1 + 48);
  v20 = *(a1 + 80);
  v104[4] = *(a1 + 64);
  v104[5] = v20;
  v21 = *(a1 + 16);
  v104[0] = *a1;
  v104[1] = v21;
  v104[2] = v19;
  v22 = a2[8];
  v113 = v12;
  v114 = v22;
  v112 = v100;
  v108 = v96;
  v109 = v15;
  v110 = v98;
  v111 = v11;
  v106 = v94;
  v107 = v14;
  v116[6] = v90;
  v116[7] = v4;
  v116[8] = *(a1 + 128);
  v116[2] = v86;
  v116[3] = v7;
  v116[4] = v88;
  v116[5] = v3;
  v93 = *(a1 + 144);
  v103 = *(a2 + 18);
  v23 = *(a2 + 18);
  v105 = *(a1 + 144);
  v115 = v23;
  v117 = *(a1 + 144);
  v116[0] = v85[0];
  v116[1] = v6;
  v24 = sub_25ADFA998(v116);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v31 = sub_25ADFA9A4(v116);
      v81 = v100;
      v82 = v101;
      v83 = v102;
      v84 = v103;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      if (sub_25ADFA998(&v75) == 2)
      {
        v32 = sub_25ADFA9A4(&v75);
        v33 = *(v31 + 80);
        v67 = *(v31 + 64);
        v68 = v33;
        LOBYTE(v69) = *(v31 + 96);
        v34 = *(v31 + 16);
        v63 = *v31;
        v64 = v34;
        v35 = *(v31 + 48);
        v65 = *(v31 + 32);
        v66 = v35;
        v58 = *(v32 + 48);
        v59 = *(v32 + 64);
        v60 = *(v32 + 80);
        LOBYTE(v61) = *(v32 + 96);
        v55 = *v32;
        v56 = *(v32 + 16);
        v57 = *(v32 + 32);
        sub_25ADFD09C(&v94, v73);
        sub_25ADFD09C(v85, v73);
        sub_25ADFD09C(v85, v73);
        sub_25ADFD09C(&v94, v73);
        v30 = _s5NDOUI15NDOPlacardModelV2eeoiySbAC_ACtFZ_0(&v63, &v55);
        goto LABEL_12;
      }
    }

    else
    {
      v45 = sub_25ADFA9A4(v116);
      v81 = v100;
      v82 = v101;
      v83 = v102;
      v84 = v103;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      if (sub_25ADFA998(&v75) == 3)
      {
        v46 = sub_25ADFA9A4(&v75);
        v73[6] = *(v45 + 96);
        v73[7] = *(v45 + 112);
        v73[8] = *(v45 + 128);
        v74 = *(v45 + 144);
        v73[2] = *(v45 + 32);
        v73[3] = *(v45 + 48);
        v73[4] = *(v45 + 64);
        v73[5] = *(v45 + 80);
        v73[0] = *v45;
        v73[1] = *(v45 + 16);
        v47 = *(v46 + 112);
        v69 = *(v46 + 96);
        v70 = v47;
        v71 = *(v46 + 128);
        v72 = *(v46 + 144);
        v48 = *(v46 + 48);
        v65 = *(v46 + 32);
        v66 = v48;
        v49 = *(v46 + 80);
        v67 = *(v46 + 64);
        v68 = v49;
        v50 = *(v46 + 16);
        v63 = *v46;
        v64 = v50;
        sub_25ADFD09C(&v94, &v55);
        sub_25ADFD09C(v85, &v55);
        sub_25ADFD09C(v85, &v55);
        sub_25ADFD09C(&v94, &v55);
        v30 = _s5NDOUI13NDOPromoModelV2eeoiySbAC_ACtFZ_0(v73, &v63);
        goto LABEL_12;
      }
    }

LABEL_13:
    sub_25ADFD09C(v85, &v75);
    sub_25ADFD09C(&v94, &v75);
    sub_25ADFD0D4(v104);
    v51 = 0;
    return v51 & 1;
  }

  if (v24)
  {
    v36 = sub_25ADFA9A4(v116);
    v37 = *v36;
    v38 = *(v36 + 8);
    v53 = *(v36 + 32);
    v54 = *(v36 + 16);
    v39 = *(v36 + 48);
    v75 = v94;
    v76 = v95;
    v79 = v98;
    v80 = v99;
    v77 = v96;
    v78 = v97;
    v84 = v103;
    v82 = v101;
    v83 = v102;
    v81 = v100;
    if (sub_25ADFA998(&v75) == 1)
    {
      v40 = sub_25ADFA9A4(&v75);
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 48);
      *&v63 = v37;
      *(&v63 + 1) = v38;
      v64 = v54;
      v65 = v53;
      LOBYTE(v66) = v39;
      *&v55 = v41;
      *(&v55 + 1) = v42;
      v44 = *(v40 + 32);
      v56 = *(v40 + 16);
      v57 = v44;
      LOBYTE(v58) = v43;
      sub_25ADFD09C(&v94, v73);
      sub_25ADFD09C(v85, v73);
      sub_25ADFD09C(v85, v73);
      sub_25ADFD09C(&v94, v73);
      v30 = _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(&v63, &v55);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v25 = sub_25ADFA9A4(v116);
  v81 = v100;
  v82 = v101;
  v83 = v102;
  v84 = v103;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v75 = v94;
  v76 = v95;
  if (sub_25ADFA998(&v75))
  {
    goto LABEL_13;
  }

  v26 = sub_25ADFA9A4(&v75);
  v27 = *(v25 + 80);
  v67 = *(v25 + 64);
  v68 = v27;
  v69 = *(v25 + 96);
  LOBYTE(v70) = *(v25 + 112);
  v28 = *(v25 + 16);
  v63 = *v25;
  v64 = v28;
  v29 = *(v25 + 48);
  v65 = *(v25 + 32);
  v66 = v29;
  v59 = *(v26 + 64);
  v60 = *(v26 + 80);
  v61 = *(v26 + 96);
  v62 = *(v26 + 112);
  v55 = *v26;
  v56 = *(v26 + 16);
  v57 = *(v26 + 32);
  v58 = *(v26 + 48);
  sub_25ADFD09C(&v94, v73);
  sub_25ADFD09C(v85, v73);
  sub_25ADFD09C(v85, v73);
  sub_25ADFD09C(&v94, v73);
  v30 = _s5NDOUI14NDODeviceModelV2eeoiySbAC_ACtFZ_0(&v63, &v55);
LABEL_12:
  v51 = v30;
  sub_25ADFD0D4(v104);
  sub_25ADFD13C(&v94);
  sub_25ADFD13C(v85);
  return v51 & 1;
}

unint64_t sub_25ADFC458()
{
  result = qword_27FA130A8;
  if (!qword_27FA130A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130A8);
  }

  return result;
}

unint64_t sub_25ADFC4AC()
{
  result = qword_27FA130B0;
  if (!qword_27FA130B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130B0);
  }

  return result;
}

unint64_t sub_25ADFC500()
{
  result = qword_27FA130B8;
  if (!qword_27FA130B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130B8);
  }

  return result;
}

unint64_t sub_25ADFC554()
{
  result = qword_27FA130C0;
  if (!qword_27FA130C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130C0);
  }

  return result;
}

unint64_t sub_25ADFC5A8()
{
  result = qword_27FA130C8;
  if (!qword_27FA130C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130C8);
  }

  return result;
}

unint64_t sub_25ADFC5FC()
{
  result = qword_27FA130D0;
  if (!qword_27FA130D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130D0);
  }

  return result;
}

unint64_t sub_25ADFC650()
{
  result = qword_27FA130D8;
  if (!qword_27FA130D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130D8);
  }

  return result;
}

unint64_t sub_25ADFC6A4()
{
  result = qword_27FA130E0;
  if (!qword_27FA130E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA130E0);
  }

  return result;
}

unint64_t sub_25ADFC6F8()
{
  result = qword_27FA13110;
  if (!qword_27FA13110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13110);
  }

  return result;
}

unint64_t sub_25ADFC75C()
{
  result = qword_27FA13118;
  if (!qword_27FA13118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13118);
  }

  return result;
}

unint64_t sub_25ADFC7D0()
{
  result = qword_27FA13120;
  if (!qword_27FA13120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13120);
  }

  return result;
}

unint64_t sub_25ADFC834()
{
  result = qword_27FA13128;
  if (!qword_27FA13128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13128);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI9NDOActionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_25ADFC8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 137);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25ADFC928(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = -a2 << 8;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADFCA1C()
{
  result = qword_27FA13130;
  if (!qword_27FA13130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13130);
  }

  return result;
}

unint64_t sub_25ADFCA74()
{
  result = qword_27FA13138;
  if (!qword_27FA13138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13138);
  }

  return result;
}

unint64_t sub_25ADFCACC()
{
  result = qword_27FA13140;
  if (!qword_27FA13140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13140);
  }

  return result;
}

unint64_t sub_25ADFCB24()
{
  result = qword_27FA13148;
  if (!qword_27FA13148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13148);
  }

  return result;
}

unint64_t sub_25ADFCB7C()
{
  result = qword_27FA13150;
  if (!qword_27FA13150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13150);
  }

  return result;
}

unint64_t sub_25ADFCBD4()
{
  result = qword_27FA13158;
  if (!qword_27FA13158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13158);
  }

  return result;
}

unint64_t sub_25ADFCC2C()
{
  result = qword_27FA13160;
  if (!qword_27FA13160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13160);
  }

  return result;
}

unint64_t sub_25ADFCC84()
{
  result = qword_27FA13168;
  if (!qword_27FA13168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13168);
  }

  return result;
}

unint64_t sub_25ADFCCDC()
{
  result = qword_27FA13170;
  if (!qword_27FA13170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13170);
  }

  return result;
}

unint64_t sub_25ADFCD34()
{
  result = qword_27FA13178;
  if (!qword_27FA13178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13178);
  }

  return result;
}

unint64_t sub_25ADFCD8C()
{
  result = qword_27FA13180;
  if (!qword_27FA13180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13180);
  }

  return result;
}

unint64_t sub_25ADFCDE4()
{
  result = qword_27FA13188;
  if (!qword_27FA13188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13188);
  }

  return result;
}

unint64_t sub_25ADFCE3C()
{
  result = qword_27FA13190;
  if (!qword_27FA13190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13190);
  }

  return result;
}

unint64_t sub_25ADFCE94()
{
  result = qword_27FA13198;
  if (!qword_27FA13198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13198);
  }

  return result;
}

unint64_t sub_25ADFCEEC()
{
  result = qword_27FA131A0;
  if (!qword_27FA131A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131A0);
  }

  return result;
}

uint64_t sub_25ADFCF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726163616C70 && a2 == 0xE700000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADFD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131A8, &unk_25AE16760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NDOLinkModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOLinkModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDOLinkModel.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_25ADFD1D8()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_25ADFD20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADFD2E0(uint64_t a1)
{
  v2 = sub_25ADFD860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFD31C(uint64_t a1)
{
  v2 = sub_25ADFD860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLinkModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131B0, &qword_25AE16810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[4];
  v15 = v1[5];
  v16 = v11;
  v25 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFD860();
  sub_25AE10E8C();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_25AE10DCC();
  if (!v13)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v25;
    v26 = 1;
    sub_25ADE48D8(v18, v17, v16, v15, v25);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDOLinkModel.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 48);
  sub_25AE10B2C();
  v8 = *(v1 + 2);
  v7 = *(v1 + 1);
  return NDOAction.hash(into:)(a1);
}

uint64_t NDOLinkModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  NDOAction.hash(into:)(v7);
  return sub_25AE10E6C();
}

uint64_t NDOLinkModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131C0, &qword_25AE16818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFD860();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_25AE10D4C();
  v13 = v12;
  v20 = v11;
  v26 = 1;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;

  sub_25ADE48D8(v14, v15, v16, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_25ADE4930(v14, v15, v16, v17, v18);
}

unint64_t sub_25ADFD860()
{
  result = qword_27FA131B8;
  if (!qword_27FA131B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131B8);
  }

  return result;
}

unint64_t sub_25ADFD8B8()
{
  result = qword_27FA131C8;
  if (!qword_27FA131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131C8);
  }

  return result;
}

unint64_t sub_25ADFD930()
{
  result = qword_27FA131D0;
  if (!qword_27FA131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131D0);
  }

  return result;
}

unint64_t sub_25ADFD988()
{
  result = qword_27FA131D8;
  if (!qword_27FA131D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131D8);
  }

  return result;
}

unint64_t sub_25ADFD9E0()
{
  result = qword_27FA131E0;
  if (!qword_27FA131E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131E0);
  }

  return result;
}

uint64_t NDODWSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWSection.header.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDODWSection.footer.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void NDODWSection.footerModels.getter()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 88 + 120 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = (v5 + 120);
    v7 = *(v5 + 232);
    v5 += 120;
    if (v7 == 1)
    {
      v9 = *v6;
      v8 = v6[1];
      v10 = v6[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25ADFFC34(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_25ADFFC34((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[24 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      *(v13 + 6) = v10;
      goto LABEL_2;
    }
  }
}

void NDODWSection.nonFooterItems.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v1 + 16);
      v6 = v1 + 32 + 120 * v3;
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 48);
        v27 = *(v6 + 32);
        v28 = v10;
        v26 = v9;
        v25 = v8;
        v11 = *(v6 + 64);
        v12 = *(v6 + 80);
        v13 = *(v6 + 96);
        v32 = *(v6 + 112);
        v30 = v12;
        v31 = v13;
        v29 = v11;
        v3 = i + 1;
        if (v32 != 1)
        {
          break;
        }

        v6 += 120;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_25ADEBD1C(&v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25ADFFFA0(0, *(v4 + 16) + 1, 1);
        v4 = v33;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25ADFFFA0((v15 > 1), v16 + 1, 1);
        v4 = v33;
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 120 * v16;
      v18 = v25;
      v19 = v26;
      v20 = v28;
      *(v17 + 64) = v27;
      *(v17 + 80) = v20;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      *(v17 + 144) = v32;
      *(v17 + 112) = v22;
      *(v17 + 128) = v23;
      *(v17 + 96) = v21;
    }

    while (v2 - 1 != i);
  }
}

BOOL NDODWSection.isCoverageSection.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 144);
  return v2 == 1 && v3 == 0;
}

void __swiftcall NDODWSection.init(header:items:footer:)(NDOUI::NDODWSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::String_optional footer)
{
  object = footer.value._object;
  v250 = retstr;
  countAndFlagsBits = footer.value._countAndFlagsBits;
  v6 = header.value._object;
  v7 = header.value._countAndFlagsBits;
  v8 = sub_25AE1027C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = items._rawValue;
  if (v6)
  {

    v14 = v7;
    v15 = v6;
    goto LABEL_204;
  }

  v247 = v7;
  v248 = 0;
  v249 = object;
  v16 = *(items._rawValue + 2);
  if (!v16)
  {
    v241 = v11;
    sub_25AE1026C();
    v14 = sub_25AE1025C();
    v15 = v242;
    (*(v9 + 8))(v13, v241);
    object = v249;
    goto LABEL_203;
  }

  v297 = MEMORY[0x277D84F90];

  sub_25ADFFFC0(0, v16, 0);
  if (!*(items._rawValue + 2))
  {
LABEL_219:
    __break(1u);
LABEL_220:

    __break(1u);
    return;
  }

  v17 = 0;
  v246 = 0;
  v18 = v297;
  v252 = v16;
  v253 = items._rawValue + 32;
  v19 = 1;
  while (1)
  {
    v20 = &v253[120 * v17];
    v21 = *(v20 + 4);
    v22 = *(v20 + 5);
    v255 = v19;
    v293 = v21;
    v294[0] = v22;
    v294[1] = *(v20 + 6);
    v295 = v20[112];
    v23 = *(v20 + 1);
    v289 = *v20;
    v290 = v23;
    v24 = *(v20 + 3);
    v291 = *(v20 + 2);
    v292 = v24;
    sub_25AE10E3C();
    v25 = v289;
    v26 = v290;
    v27 = v291;
    v28 = v293;
    v29 = v294[0];
    v296[0] = *(v294 + 1);
    *(v296 + 15) = v294[1];
    v256 = v18;
    if (v295 <= 1u)
    {
      if (v295)
      {
        MEMORY[0x25F8577E0](1);

        sub_25AE10B2C();
        MEMORY[0x25F8577E0](*(v26 + 16));
        v258 = *(v26 + 16);
        if (v258)
        {
          v38 = 0;
          v257 = v26 + 32;
          while (1)
          {
            v42 = (v257 + 56 * v38);
            v43 = *v42;
            v44 = v42[1];
            v13 = v42[2];
            v40 = v42[3];
            v45 = v42[4];
            v39 = v42[5];
            v41 = *(v42 + 48);

            v264 = v45;
            sub_25ADE48D8(v13, v40, v45, v39, v41);
            sub_25AE10B2C();
            *(&v263 + 1) = v39;
            if (v41 <= 3)
            {
              v262 = v13;
              *&v263 = v38;
              v260 = v41;
              v261 = v40;
              v259 = v44;
              if (v41 > 1)
              {
                if (v41 != 2)
                {
                  MEMORY[0x25F8577E0](3);
                  sub_25AE10E5C();
                  if (v40)
                  {
                    sub_25AE10B2C();
                  }

                  v209 = v264 + 64;
                  v210 = 1 << *(v264 + 32);
                  if (v210 < 64)
                  {
                    v211 = ~(-1 << v210);
                  }

                  else
                  {
                    v211 = -1;
                  }

                  v212 = v211 & *(v264 + 64);
                  v213 = (v210 + 63) >> 6;

                  v214 = 0;
                  for (i = 0; v212; v214 ^= sub_25AE10E6C())
                  {
                    v216 = i;
LABEL_182:
                    v217 = *(v264 + 48);
                    v218 = (v216 << 10) | (16 * __clz(__rbit64(v212)));
                    v219 = *(v217 + v218);
                    v13 = *(v217 + v218 + 8);
                    v212 &= v212 - 1;
                    v220 = (*(v264 + 56) + v218);
                    v221 = *v220;
                    v222 = v220[1];
                    v278 = v286;
                    v279 = v287;
                    *&v280 = v288;
                    v276 = v284;
                    v277 = v285;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v216 = i + 1;
                    if (__OFADD__(i, 1))
                    {
                      goto LABEL_211;
                    }

                    if (v216 >= v213)
                    {

                      MEMORY[0x25F8577E0](v214);
                      v223 = *(&v263 + 1) + 64;
                      v224 = 1 << *(*(&v263 + 1) + 32);
                      if (v224 < 64)
                      {
                        v225 = ~(-1 << v224);
                      }

                      else
                      {
                        v225 = -1;
                      }

                      v226 = v225 & *(*(&v263 + 1) + 64);
                      v227 = (v224 + 63) >> 6;

                      v46 = 0;
                      for (j = 0; v226; v46 ^= sub_25AE10E6C())
                      {
                        v229 = j;
LABEL_193:
                        v230 = *(*(&v263 + 1) + 48);
                        v231 = (v229 << 10) | (16 * __clz(__rbit64(v226)));
                        v232 = *(v230 + v231);
                        v13 = *(v230 + v231 + 8);
                        v226 &= v226 - 1;
                        v233 = (*(*(&v263 + 1) + 56) + v231);
                        v234 = *v233;
                        v235 = v233[1];
                        v278 = v286;
                        v279 = v287;
                        *&v280 = v288;
                        v276 = v284;
                        v277 = v285;

                        sub_25AE10B2C();

                        sub_25AE10B2C();
                      }

                      while (1)
                      {
                        v229 = j + 1;
                        if (__OFADD__(j, 1))
                        {
                          goto LABEL_217;
                        }

                        if (v229 >= v227)
                        {
                          goto LABEL_17;
                        }

                        v226 = *(v223 + 8 * v229);
                        ++j;
                        if (v226)
                        {
                          j = v229;
                          goto LABEL_193;
                        }
                      }
                    }

                    v212 = *(v209 + 8 * v216);
                    ++i;
                    if (v212)
                    {
                      i = v216;
                      goto LABEL_182;
                    }
                  }
                }

                MEMORY[0x25F8577E0](2);
                sub_25AE10E5C();
                if (v40)
                {
                  sub_25AE10B2C();
                }

                v101 = v264 + 64;
                v102 = 1 << *(v264 + 32);
                if (v102 < 64)
                {
                  v103 = ~(-1 << v102);
                }

                else
                {
                  v103 = -1;
                }

                v104 = v103 & *(v264 + 64);
                v105 = (v102 + 63) >> 6;

                v106 = 0;
                for (k = 0; v104; v106 ^= sub_25AE10E6C())
                {
                  v108 = k;
LABEL_94:
                  v109 = *(v264 + 48);
                  v110 = (v108 << 10) | (16 * __clz(__rbit64(v104)));
                  v111 = *(v109 + v110);
                  v13 = *(v109 + v110 + 8);
                  v104 &= v104 - 1;
                  v112 = (*(v264 + 56) + v110);
                  v113 = *v112;
                  v114 = v112[1];
                  v278 = v286;
                  v279 = v287;
                  *&v280 = v288;
                  v276 = v284;
                  v277 = v285;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v108 = k + 1;
                  if (__OFADD__(k, 1))
                  {
                    break;
                  }

                  if (v108 >= v105)
                  {

                    MEMORY[0x25F8577E0](v106);
                    v115 = *(&v263 + 1) + 64;
                    v116 = 1 << *(*(&v263 + 1) + 32);
                    if (v116 < 64)
                    {
                      v117 = ~(-1 << v116);
                    }

                    else
                    {
                      v117 = -1;
                    }

                    v118 = v117 & *(*(&v263 + 1) + 64);
                    v119 = (v116 + 63) >> 6;

                    v46 = 0;
                    for (m = 0; v118; v46 ^= sub_25AE10E6C())
                    {
                      v121 = m;
LABEL_105:
                      v122 = *(*(&v263 + 1) + 48);
                      v123 = (v121 << 10) | (16 * __clz(__rbit64(v118)));
                      v124 = *(v122 + v123);
                      v13 = *(v122 + v123 + 8);
                      v118 &= v118 - 1;
                      v125 = (*(*(&v263 + 1) + 56) + v123);
                      v126 = *v125;
                      v127 = v125[1];
                      v278 = v286;
                      v279 = v287;
                      *&v280 = v288;
                      v276 = v284;
                      v277 = v285;

                      sub_25AE10B2C();

                      sub_25AE10B2C();
                    }

                    while (1)
                    {
                      v121 = m + 1;
                      if (__OFADD__(m, 1))
                      {
                        goto LABEL_216;
                      }

                      if (v121 >= v119)
                      {
                        goto LABEL_17;
                      }

                      v118 = *(v115 + 8 * v121);
                      ++m;
                      if (v118)
                      {
                        m = v121;
                        goto LABEL_105;
                      }
                    }
                  }

                  v104 = *(v101 + 8 * v108);
                  ++k;
                  if (v104)
                  {
                    k = v108;
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                if (!v41)
                {
                  MEMORY[0x25F8577E0](0);
                  sub_25AE10E5C();
                  if (v40)
                  {
                    sub_25AE10B2C();
                  }

                  v47 = v264 + 64;
                  v48 = 1 << *(v264 + 32);
                  if (v48 < 64)
                  {
                    v49 = ~(-1 << v48);
                  }

                  else
                  {
                    v49 = -1;
                  }

                  v50 = v49 & *(v264 + 64);
                  v51 = (v48 + 63) >> 6;

                  v52 = 0;
                  for (n = 0; v50; v52 ^= sub_25AE10E6C())
                  {
                    v54 = n;
LABEL_50:
                    v55 = *(v264 + 48);
                    v56 = (v54 << 10) | (16 * __clz(__rbit64(v50)));
                    v57 = *(v55 + v56);
                    v58 = *(v55 + v56 + 8);
                    v50 &= v50 - 1;
                    v59 = (*(v264 + 56) + v56);
                    v13 = *v59;
                    v60 = v59[1];
                    v278 = v286;
                    v279 = v287;
                    *&v280 = v288;
                    v276 = v284;
                    v277 = v285;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v54 = n + 1;
                    if (__OFADD__(n, 1))
                    {
                      goto LABEL_209;
                    }

                    if (v54 >= v51)
                    {

                      MEMORY[0x25F8577E0](v52);
                      v61 = *(&v263 + 1) + 64;
                      v62 = 1 << *(*(&v263 + 1) + 32);
                      if (v62 < 64)
                      {
                        v63 = ~(-1 << v62);
                      }

                      else
                      {
                        v63 = -1;
                      }

                      v64 = v63 & *(*(&v263 + 1) + 64);
                      v65 = (v62 + 63) >> 6;

                      v46 = 0;
                      for (ii = 0; v64; v46 ^= sub_25AE10E6C())
                      {
                        v67 = ii;
LABEL_61:
                        v68 = *(*(&v263 + 1) + 48);
                        v69 = (v67 << 10) | (16 * __clz(__rbit64(v64)));
                        v70 = *(v68 + v69);
                        v13 = *(v68 + v69 + 8);
                        v64 &= v64 - 1;
                        v71 = (*(*(&v263 + 1) + 56) + v69);
                        v72 = *v71;
                        v73 = v71[1];
                        v278 = v286;
                        v279 = v287;
                        *&v280 = v288;
                        v276 = v284;
                        v277 = v285;

                        sub_25AE10B2C();

                        sub_25AE10B2C();
                      }

                      while (1)
                      {
                        v67 = ii + 1;
                        if (__OFADD__(ii, 1))
                        {
                          goto LABEL_213;
                        }

                        if (v67 >= v65)
                        {
                          goto LABEL_17;
                        }

                        v64 = *(v61 + 8 * v67);
                        ++ii;
                        if (v64)
                        {
                          ii = v67;
                          goto LABEL_61;
                        }
                      }
                    }

                    v50 = *(v47 + 8 * v54);
                    ++n;
                    if (v50)
                    {
                      n = v54;
                      goto LABEL_50;
                    }
                  }
                }

                MEMORY[0x25F8577E0](1);
                sub_25AE10E5C();
                if (v40)
                {
                  sub_25AE10B2C();
                }

                v155 = v264 + 64;
                v156 = 1 << *(v264 + 32);
                if (v156 < 64)
                {
                  v157 = ~(-1 << v156);
                }

                else
                {
                  v157 = -1;
                }

                v158 = v157 & *(v264 + 64);
                v159 = (v156 + 63) >> 6;

                v160 = 0;
                for (jj = 0; v158; v160 ^= sub_25AE10E6C())
                {
                  v162 = jj;
LABEL_138:
                  v163 = *(v264 + 48);
                  v164 = (v162 << 10) | (16 * __clz(__rbit64(v158)));
                  v165 = *(v163 + v164);
                  v13 = *(v163 + v164 + 8);
                  v158 &= v158 - 1;
                  v166 = (*(v264 + 56) + v164);
                  v167 = *v166;
                  v168 = v166[1];
                  v278 = v286;
                  v279 = v287;
                  *&v280 = v288;
                  v276 = v284;
                  v277 = v285;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v162 = jj + 1;
                  if (__OFADD__(jj, 1))
                  {
                    break;
                  }

                  if (v162 >= v159)
                  {

                    MEMORY[0x25F8577E0](v160);
                    v169 = *(&v263 + 1) + 64;
                    v170 = 1 << *(*(&v263 + 1) + 32);
                    if (v170 < 64)
                    {
                      v171 = ~(-1 << v170);
                    }

                    else
                    {
                      v171 = -1;
                    }

                    v172 = v171 & *(*(&v263 + 1) + 64);
                    v173 = (v170 + 63) >> 6;

                    v46 = 0;
                    for (kk = 0; v172; v46 ^= sub_25AE10E6C())
                    {
                      v175 = kk;
LABEL_149:
                      v176 = *(*(&v263 + 1) + 48);
                      v177 = (v175 << 10) | (16 * __clz(__rbit64(v172)));
                      v178 = *(v176 + v177);
                      v13 = *(v176 + v177 + 8);
                      v172 &= v172 - 1;
                      v179 = (*(*(&v263 + 1) + 56) + v177);
                      v180 = *v179;
                      v181 = v179[1];
                      v278 = v286;
                      v279 = v287;
                      *&v280 = v288;
                      v276 = v284;
                      v277 = v285;

                      sub_25AE10B2C();

                      sub_25AE10B2C();
                    }

                    while (1)
                    {
                      v175 = kk + 1;
                      if (__OFADD__(kk, 1))
                      {
                        goto LABEL_214;
                      }

                      if (v175 >= v173)
                      {
                        goto LABEL_17;
                      }

                      v172 = *(v169 + 8 * v175);
                      ++kk;
                      if (v172)
                      {
                        kk = v175;
                        goto LABEL_149;
                      }
                    }
                  }

                  v158 = *(v155 + 8 * v162);
                  ++jj;
                  if (v158)
                  {
                    jj = v162;
                    goto LABEL_138;
                  }
                }

LABEL_206:
                __break(1u);
              }

              __break(1u);
              goto LABEL_208;
            }

            if (v41 <= 5)
            {
              break;
            }

            if (v41 == 6)
            {
              MEMORY[0x25F8577E0](6);
              v262 = v13;
              *&v263 = v38;
              v260 = v41;
              v261 = v40;
              v259 = v44;
              sub_25AE10E5C();
              if (v40)
              {
                sub_25AE10B2C();
              }

              v128 = v264 + 64;
              v129 = 1 << *(v264 + 32);
              if (v129 < 64)
              {
                v130 = ~(-1 << v129);
              }

              else
              {
                v130 = -1;
              }

              v131 = v130 & *(v264 + 64);
              v132 = (v129 + 63) >> 6;

              v133 = 0;
              for (mm = 0; v131; v133 ^= sub_25AE10E6C())
              {
                v135 = mm;
LABEL_116:
                v136 = *(v264 + 48);
                v137 = (v135 << 10) | (16 * __clz(__rbit64(v131)));
                v138 = *(v136 + v137);
                v13 = *(v136 + v137 + 8);
                v131 &= v131 - 1;
                v139 = (*(v264 + 56) + v137);
                v140 = *v139;
                v141 = v139[1];
                v278 = v286;
                v279 = v287;
                *&v280 = v288;
                v276 = v284;
                v277 = v285;

                sub_25AE10B2C();

                sub_25AE10B2C();
              }

              while (1)
              {
                v135 = mm + 1;
                if (__OFADD__(mm, 1))
                {
                  break;
                }

                if (v135 >= v132)
                {

                  MEMORY[0x25F8577E0](v133);
                  v142 = *(&v263 + 1) + 64;
                  v143 = 1 << *(*(&v263 + 1) + 32);
                  if (v143 < 64)
                  {
                    v144 = ~(-1 << v143);
                  }

                  else
                  {
                    v144 = -1;
                  }

                  v145 = v144 & *(*(&v263 + 1) + 64);
                  v146 = (v143 + 63) >> 6;

                  v46 = 0;
                  for (nn = 0; v145; v46 ^= sub_25AE10E6C())
                  {
                    v148 = nn;
LABEL_127:
                    v149 = *(*(&v263 + 1) + 48);
                    v150 = (v148 << 10) | (16 * __clz(__rbit64(v145)));
                    v151 = *(v149 + v150);
                    v13 = *(v149 + v150 + 8);
                    v145 &= v145 - 1;
                    v152 = (*(*(&v263 + 1) + 56) + v150);
                    v153 = *v152;
                    v154 = v152[1];
                    v278 = v286;
                    v279 = v287;
                    *&v280 = v288;
                    v276 = v284;
                    v277 = v285;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v148 = nn + 1;
                    if (__OFADD__(nn, 1))
                    {
                      goto LABEL_218;
                    }

                    if (v148 >= v146)
                    {
LABEL_17:
                      v39 = *(&v263 + 1);

                      v13 = v262;
                      v38 = v263;
                      LOBYTE(v41) = v260;
                      v40 = v261;
                      goto LABEL_18;
                    }

                    v145 = *(v142 + 8 * v148);
                    ++nn;
                    if (v145)
                    {
                      nn = v148;
                      goto LABEL_127;
                    }
                  }
                }

                v131 = *(v128 + 8 * v135);
                ++mm;
                if (v131)
                {
                  mm = v135;
                  goto LABEL_116;
                }
              }

LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v46 = v41;
LABEL_18:
            MEMORY[0x25F8577E0](v46);

            sub_25ADE4930(v13, v40, v264, v39, v41);
            if (++v38 == v258)
            {
              goto LABEL_195;
            }
          }

          v262 = v13;
          *&v263 = v38;
          v260 = v41;
          v261 = v40;
          v259 = v44;
          if (v41 == 4)
          {
            MEMORY[0x25F8577E0](4);
            sub_25AE10E5C();
            if (v40)
            {
              sub_25AE10B2C();
            }

            v74 = v264 + 64;
            v75 = 1 << *(v264 + 32);
            if (v75 < 64)
            {
              v76 = ~(-1 << v75);
            }

            else
            {
              v76 = -1;
            }

            v77 = v76 & *(v264 + 64);
            v78 = (v75 + 63) >> 6;

            v79 = 0;
            for (i1 = 0; v77; v79 ^= sub_25AE10E6C())
            {
              v81 = i1;
LABEL_72:
              v82 = *(v264 + 48);
              v83 = (v81 << 10) | (16 * __clz(__rbit64(v77)));
              v84 = *(v82 + v83);
              v13 = *(v82 + v83 + 8);
              v77 &= v77 - 1;
              v85 = (*(v264 + 56) + v83);
              v86 = *v85;
              v87 = v85[1];
              v278 = v286;
              v279 = v287;
              *&v280 = v288;
              v276 = v284;
              v277 = v285;

              sub_25AE10B2C();

              sub_25AE10B2C();
            }

            while (1)
            {
              v81 = i1 + 1;
              if (__OFADD__(i1, 1))
              {
                goto LABEL_210;
              }

              if (v81 >= v78)
              {

                MEMORY[0x25F8577E0](v79);
                v88 = *(&v263 + 1) + 64;
                v89 = 1 << *(*(&v263 + 1) + 32);
                if (v89 < 64)
                {
                  v90 = ~(-1 << v89);
                }

                else
                {
                  v90 = -1;
                }

                v91 = v90 & *(*(&v263 + 1) + 64);
                v92 = (v89 + 63) >> 6;

                v46 = 0;
                for (i2 = 0; v91; v46 ^= sub_25AE10E6C())
                {
                  v94 = i2;
LABEL_83:
                  v95 = *(*(&v263 + 1) + 48);
                  v96 = (v94 << 10) | (16 * __clz(__rbit64(v91)));
                  v97 = *(v95 + v96);
                  v13 = *(v95 + v96 + 8);
                  v91 &= v91 - 1;
                  v98 = (*(*(&v263 + 1) + 56) + v96);
                  v99 = *v98;
                  v100 = v98[1];
                  v278 = v286;
                  v279 = v287;
                  *&v280 = v288;
                  v276 = v284;
                  v277 = v285;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v94 = i2 + 1;
                  if (__OFADD__(i2, 1))
                  {
                    goto LABEL_212;
                  }

                  if (v94 >= v92)
                  {
                    goto LABEL_17;
                  }

                  v91 = *(v88 + 8 * v94);
                  ++i2;
                  if (v91)
                  {
                    i2 = v94;
                    goto LABEL_83;
                  }
                }
              }

              v77 = *(v74 + 8 * v81);
              ++i1;
              if (v77)
              {
                i1 = v81;
                goto LABEL_72;
              }
            }
          }

          MEMORY[0x25F8577E0](5);
          sub_25AE10E5C();
          if (v40)
          {
            sub_25AE10B2C();
          }

          v182 = v264 + 64;
          v183 = 1 << *(v264 + 32);
          if (v183 < 64)
          {
            v184 = ~(-1 << v183);
          }

          else
          {
            v184 = -1;
          }

          v185 = v184 & *(v264 + 64);
          v186 = (v183 + 63) >> 6;

          v187 = 0;
          v188 = 0;
          if (v185)
          {
            while (1)
            {
              v189 = v188;
LABEL_160:
              v190 = *(v264 + 48);
              v191 = (v189 << 10) | (16 * __clz(__rbit64(v185)));
              v192 = *(v190 + v191);
              v13 = *(v190 + v191 + 8);
              v185 &= v185 - 1;
              v193 = (*(v264 + 56) + v191);
              v194 = *v193;
              v195 = v193[1];
              v278 = v286;
              v279 = v287;
              *&v280 = v288;
              v276 = v284;
              v277 = v285;

              sub_25AE10B2C();

              sub_25AE10B2C();

              v187 ^= sub_25AE10E6C();
              if (!v185)
              {
                goto LABEL_156;
              }
            }
          }

          while (1)
          {
LABEL_156:
            v189 = v188 + 1;
            if (__OFADD__(v188, 1))
            {
              __break(1u);
              goto LABEL_206;
            }

            if (v189 >= v186)
            {
              break;
            }

            v185 = *(v182 + 8 * v189);
            ++v188;
            if (v185)
            {
              v188 = v189;
              goto LABEL_160;
            }
          }

          MEMORY[0x25F8577E0](v187);
          v196 = *(&v263 + 1) + 64;
          v197 = 1 << *(*(&v263 + 1) + 32);
          if (v197 < 64)
          {
            v198 = ~(-1 << v197);
          }

          else
          {
            v198 = -1;
          }

          v199 = v198 & *(*(&v263 + 1) + 64);
          v200 = (v197 + 63) >> 6;

          v46 = 0;
          for (i3 = 0; v199; v46 ^= sub_25AE10E6C())
          {
            v202 = i3;
LABEL_171:
            v203 = *(*(&v263 + 1) + 48);
            v204 = (v202 << 10) | (16 * __clz(__rbit64(v199)));
            v205 = *(v203 + v204);
            v13 = *(v203 + v204 + 8);
            v199 &= v199 - 1;
            v206 = (*(*(&v263 + 1) + 56) + v204);
            v207 = *v206;
            v208 = v206[1];
            v278 = v286;
            v279 = v287;
            *&v280 = v288;
            v276 = v284;
            v277 = v285;

            sub_25AE10B2C();

            sub_25AE10B2C();
          }

          while (1)
          {
            v202 = i3 + 1;
            if (__OFADD__(i3, 1))
            {
              break;
            }

            if (v202 >= v200)
            {
              goto LABEL_17;
            }

            v199 = *(v196 + 8 * v202);
            ++i3;
            if (v199)
            {
              i3 = v202;
              goto LABEL_171;
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }
      }

      else
      {
        *(&v263 + 1) = *(&v293 + 1);
        v264 = v292;
        v31 = *(&v291 + 1);
        LODWORD(v263) = LOBYTE(v294[0]);
        v32 = *(&v290 + 1);
        v33 = *(&v292 + 1);
        MEMORY[0x25F8577E0](0);
        v265[7] = v25;
        v266 = v26;
        v267 = v32;
        v268 = v27;
        v269 = v31;
        v270 = v264;
        v271 = v33;
        v272 = v28;
        v273 = *(&v263 + 1);
        v274 = v263;
        *v275 = v296[0];
        *&v275[15] = *(v296 + 15);
        v278 = v291;
        v279 = v292;
        v276 = v289;
        v277 = v290;
        v283 = v295;
        v281 = v294[0];
        v282 = v294[1];
        v280 = v293;
        sub_25ADE35E0(&v276, v265);
        NDODWCoverageModel.hash(into:)(&v284);
      }
    }

    else
    {
      if (v295 == 2)
      {
        v264 = v292;
        v263 = v291;
        v34 = *(&v290 + 1);
        MEMORY[0x25F8577E0](2);
        v35 = v290;
        v36 = v291;
        v37 = v292;

        sub_25ADE48D8(v35, *(&v35 + 1), v36, *(&v36 + 1), v37);
        sub_25AE10B2C();
        *&v276 = v26;
        *(&v276 + 1) = v34;
        v277 = v263;
        LOBYTE(v278) = v264;
        goto LABEL_13;
      }

      if (v295 == 3)
      {
        v264 = v292;
        v263 = v293;
        v30 = *(&v292 + 1);
        MEMORY[0x25F8577E0](3);
        v257 = *(&v291 + 1);
        v261 = *(&v292 + 1);
        v262 = v292;
        v259 = *(&v293 + 1);
        v260 = v293;
        LODWORD(v258) = LOBYTE(v294[0]);

        sub_25ADE48D8(v262, v261, v260, v259, v258);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        *&v276 = v264;
        *(&v276 + 1) = v30;
        v277 = v263;
        LOBYTE(v278) = v29;
LABEL_13:
        NDOAction.hash(into:)(&v284);
        goto LABEL_195;
      }

      MEMORY[0x25F8577E0](4);
    }

LABEL_195:
    *&v276 = sub_25AE10E6C();
    v13 = sub_25AE10E1C();
    v237 = v236;
    sub_25ADEBE18(&v289);
    v18 = v256;
    v297 = v256;
    v239 = *(v256 + 16);
    v238 = *(v256 + 24);
    if (v239 >= v238 >> 1)
    {
      sub_25ADFFFC0((v238 > 1), v239 + 1, 1);
      v18 = v297;
    }

    *(v18 + 16) = v239 + 1;
    v240 = v18 + 16 * v239;
    *(v240 + 32) = v13;
    *(v240 + 40) = v237;
    v17 = v255;
    if (v255 == v252)
    {
      break;
    }

    v19 = v255 + 1;
    if (v255 >= rawValue[2])
    {
      goto LABEL_219;
    }
  }

  *&v276 = v18;

  v13 = v246;
  sub_25AE0049C(&v276);
  object = v249;
  if (v13)
  {
    goto LABEL_220;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  sub_25AE00F74();
  v14 = sub_25AE10A5C();
  v15 = v243;

LABEL_203:
  v7 = v247;
  v6 = v248;
LABEL_204:
  v245 = v250;
  v244 = countAndFlagsBits;
  v250->id._countAndFlagsBits = v14;
  v245->id._object = v15;
  v245->header.value._countAndFlagsBits = v7;
  v245->header.value._object = v6;
  v245->footer.value._countAndFlagsBits = v244;
  v245->footer.value._object = object;
  v245->items._rawValue = rawValue;
}

uint64_t sub_25ADFF544()
{
  v1 = 25705;
  v2 = 0x7265746F6F66;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_25ADFF5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE01294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADFF5D0(uint64_t a1)
{
  v2 = sub_25AE00FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFF60C(uint64_t a1)
{
  v2 = sub_25AE00FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131F0, &qword_25AE16B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v17 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE00FD8();
  sub_25AE10E8C();
  v27 = 0;
  v13 = v22;
  sub_25AE10DCC();
  if (!v13)
  {
    v14 = v17;
    v26 = 1;
    sub_25AE10DAC();
    v25 = 2;
    sub_25AE10DAC();
    v23 = v14;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13200, &qword_25AE16B78);
    sub_25AE01080(&qword_27FA13208, sub_25AE0102C);
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWSection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13218, &qword_25AE16B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE00FD8();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_25AE10D4C();
  v26 = v12;
  v30 = 1;
  v13 = sub_25AE10D2C();
  v25 = v14;
  v23 = v13;
  v29 = 2;
  v22 = sub_25AE10D2C();
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13200, &qword_25AE16B78);
  v28 = 3;
  sub_25AE01080(&qword_27FA13220, sub_25AE010F8);
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  v17 = v27;
  *a2 = v11;
  a2[1] = v18;
  v19 = v22;
  v21 = v24;
  v20 = v25;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADFFBF8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_25ADFFC34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13268, &qword_25AE16DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25ADFFD54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13250, &qword_25AE16D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25ADFFE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25ADFFF80(void *a1, int64_t a2, char a3)
{
  result = sub_25AE00000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFA0(char *a1, int64_t a2, char a3)
{
  result = sub_25AE00148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFC0(char *a1, int64_t a2, char a3)
{
  result = sub_25AE00268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFE0(char *a1, int64_t a2, char a3)
{
  result = sub_25AE00374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25AE00000(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F78, &qword_25AE152E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13270, &unk_25AE16DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE00148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13260, &qword_25AE16DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE00268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13258, &qword_25AE16D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE00374(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25AE0049C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AE01280(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25AE00508(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25AE00508(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25AE10E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25AE10BCC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25AE006D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25AE00600(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25AE00600(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25AE10E2C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AE006D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25AE00F60(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25AE00CAC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25AE10E2C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25AE10E2C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25ADFFD54(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25ADFFD54((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25AE00CAC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25AE00F60(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25AE00ED4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25AE10E2C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}