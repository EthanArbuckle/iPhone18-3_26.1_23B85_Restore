uint64_t sub_216AD2194(uint64_t a1)
{
  result = sub_2166D35AC(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AD2214@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v96 = v6;
  MEMORY[0x28223BE20](v7);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v84 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  v85 = &v82 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v86 = &v82 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v88 = &v82 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v30 = *(v11 + 8);
  v29 = v11 + 8;
  v95 = v9;
  v92 = v30;
  v30(v25, v9);
  if (!v28)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_141();
    sub_2166D71EC(v68, v69);
    OUTLINED_FUNCTION_4();
    v71 = v70;
    FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup();
    *v71 = 25705;
    v71[1] = 0xE200000000000000;
    v71[2] = FriendsPageLockup;
    OUTLINED_FUNCTION_50();
    (*(v73 + 104))(v71);
    swift_willThrow();
    (*(v96 + 8))(v99, v5);
    return v92(a1, v95);
  }

  v31 = type metadata accessor for SocialOnboardingFindFriendsPageLockup();
  v93 = v22;
  v90 = v29;
  v32 = v31;
  v33 = *(v31 + 20);
  v97 = v26;
  v98 = v28;
  v83 = v33;
  sub_21700F364();
  sub_21700D7A4();
  sub_21700CE04();
  v34 = *(v96 + 16);
  v35 = v89;
  v94 = a3;
  v36 = v5;
  v37 = v99;
  v34(v89, v99, v36);
  v91 = v32;
  v82 = v32[6];
  OUTLINED_FUNCTION_109();
  sub_21700D734();
  v38 = type metadata accessor for Artwork();
  sub_21700CE04();
  v87 = v36;
  v34(v35, v37, v36);
  sub_2166D71EC(&qword_280E2BF60, type metadata accessor for Artwork);
  v39 = v94;
  OUTLINED_FUNCTION_109();
  sub_21700D734();
  v40 = 0xE500000000000000;
  v41 = v88;
  sub_21700CE04();
  v42 = v41;
  sub_21700CDB4();
  OUTLINED_FUNCTION_1_118();
  v43 = v41;
  v44 = v95;
  v45 = v92;
  v92(v43, v95);
  v46 = v39;
  v47 = v45;
  v89 = v42;
  if (v42)
  {
    v48 = 0x72506C6169636F73;
    v49 = (v46 + v91[7]);
    *v49 = v38;
    v49[1] = v42;
    v40 = 0xEF4449656C69666FLL;
    v50 = v86;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_1_118();
    v47(v50, v44);
    if (v50)
    {
      v48 = 0x69546E6F74747562;
      v51 = (v94 + v91[9]);
      *v51 = v38;
      v51[1] = v50;
      v40 = 0xEB00000000656C74;
      v52 = a1;
      v53 = v85;
      v88 = v52;
      sub_21700CE04();
      v54 = v53;
      sub_21700CDB4();
      OUTLINED_FUNCTION_1_118();
      v47(v53, v44);
      v55 = v47;
      if (v54)
      {
        v56 = v91;
        v57 = v93;
        v58 = v94;
        v59 = (v94 + v91[11]);
        *v59 = v38;
        v59[1] = v54;
        v60 = v88;
        sub_21700CE04();
        sub_21700CDB4();
        OUTLINED_FUNCTION_1_118();
        v61 = OUTLINED_FUNCTION_109();
        v55(v61);
        v62 = (v58 + v56[8]);
        *v62 = v38;
        v62[1] = v57;
        sub_21700CE04();
        sub_21700CDB4();
        OUTLINED_FUNCTION_1_118();
        v63 = OUTLINED_FUNCTION_109();
        v55(v63);
        v64 = (v58 + v56[10]);
        *v64 = v38;
        v64[1] = v57;
        sub_21700CE04();
        v65 = sub_21700CD44();
        (*(v96 + 8))(v99, v87);
        (v55)(v60, v44);
        v66 = OUTLINED_FUNCTION_109();
        result = (v55)(v66);
        *(v58 + v56[12]) = v65 & 1;
        return result;
      }

      v74 = v91;
      LODWORD(v93) = 1;
      v75 = v99;
      a1 = v88;
      v76 = v87;
      goto LABEL_9;
    }
  }

  else
  {
    v48 = 0x656C746974;
  }

  v74 = v91;
  LODWORD(v93) = 0;
  v75 = v99;
  v76 = v87;
LABEL_9:
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_141();
  sub_2166D71EC(v77, v78);
  OUTLINED_FUNCTION_4();
  *v79 = v48;
  v79[1] = v40;
  v79[2] = v74;
  OUTLINED_FUNCTION_50();
  (*(v80 + 104))();
  swift_willThrow();
  (*(v96 + 8))(v75, v76);
  v47(a1, v95);
  v81 = v94;
  sub_216699820(v94, &qword_27CAB6D60);
  sub_216788110(v81 + v83);
  result = sub_216699820(v81 + v82, &qword_27CAB6D58);
  if (v89)
  {
  }

  if (v93)
  {
  }

  return result;
}

uint64_t _s19PageMetricsModifierVMa()
{
  result = qword_280E460A0;
  if (!qword_280E460A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AD2B54()
{
  sub_21700D194();
  if (v0 <= 0x3F)
  {
    sub_2166DBA60();
    if (v1 <= 0x3F)
    {
      sub_21700D4D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216AD2BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a3;
  v57 = a6;
  v46 = a4;
  v47 = a5;
  v55 = a2;
  v48 = a1;
  v58 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - v13;
  v14 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v54 = v15;
  MEMORY[0x28223BE20](v16);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a7;
  v63 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v51 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v62 = a7;
  v63 = a8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v24 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v50 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  sub_216861304(v48, &v44 - v33);
  v35 = sub_21700D194();
  if (!__swift_getEnumTagSinglePayload(v34, 1, v35))
  {
    v44 = v22;
    v36 = v24;
    v45 = OpaqueTypeMetadata2;
    v48 = v9;
    v37 = sub_21700D0E4();
    if (*v38)
    {
      v61 = MEMORY[0x277D837D0];
      v59 = v46;
      v60 = v47;
      sub_21700DF14();
      sub_2166EF928();
    }

    v37(&v62, 0);
    OpaqueTypeMetadata2 = v45;
    v24 = v36;
    v22 = v44;
  }

  sub_21700A224();
  sub_216861304(v34, v31);
  v39 = v53;
  v48 = v14;
  sub_21700D444();
  v40 = v49;
  sub_217007584();
  v41 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  sub_21700A194();
  sub_21669987C(v40, &qword_27CAC1E28);
  (*(v54 + 8))(v39, v48);
  sub_21669987C(v31, &qword_27CAB8DF8);
  (*(v51 + 8))(v22, OpaqueTypeMetadata2);
  sub_21700D844();
  sub_21700D444();
  v62 = OpaqueTypeMetadata2;
  v63 = v24;
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_21700A1F4();

  (*(v50 + 8))(v28, v42);
  return sub_21669987C(v34, &qword_27CAB8DF8);
}

unint64_t sub_216AD30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(a3 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  v15 = v16;
  v13 = sub_216AD3260(&v15);
  sub_216AD39D8(v15, *(&v15 + 1));
  return v13;
}

unint64_t sub_216AD3260(uint64_t *a1)
{
  v1 = a1[1];
  v2 = 1701670728;
  switch(v1)
  {
    case 0uLL:
      return v2;
    case 1uLL:
      v2 = 7824718;
      break;
    case 2uLL:
      v2 = 0x736F65646956;
      break;
    case 3uLL:
      v2 = 0x6F69646152;
      break;
    case 4uLL:
      v2 = 0x7972617262694CLL;
      break;
    case 5uLL:
      v2 = 0x79616C5020776F4ELL;
      break;
    case 6uLL:
      v2 = 0x686372616553;
      break;
    case 7uLL:
      v2 = 0xD000000000000012;
      break;
    default:
      v2 = *a1;
      sub_2166E8270(*a1, v1);
      break;
  }

  return v2;
}

uint64_t sub_216AD339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - v4;
  v47 = sub_21700D574();
  v53 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E30);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E38);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = sub_21700D194();
  (*(*(v20 - 8) + 16))(v19, v2, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v21 = _s19PageMetricsModifierVMa();
  v22 = v21[5];
  v43 = *(v2 + v21[6]);
  v24 = *(v2 + v22);
  v23 = *(v2 + v22 + 8);
  v25 = *(v2 + v21[7]);
  v49 = v19;
  sub_216861304(v19, v16);
  v26 = v16;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v20);
  v57 = v25;
  if (!EnumTagSinglePayload)
  {
    v42 = v13;
    v28 = sub_21700D0E4();
    if (*v29)
    {
      v60 = MEMORY[0x277D837D0];
      v58 = v24;
      v59 = v23;
      sub_21700DF14();
      sub_2166EF928();
    }

    v28(&v61, 0);
    v26 = v16;
    v13 = v42;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E40);
  v31 = sub_216AD3974();
  sub_21700A224();
  v45 = v26;
  sub_216861304(v26, v13);
  v32 = v46;
  v33 = v47;
  sub_21700D444();
  v34 = v48;
  sub_217007584();
  v35 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  v61 = v30;
  v62 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v44;
  v38 = v52;
  sub_21700A194();
  sub_21669987C(v34, &qword_27CAC1E28);
  (*(v53 + 8))(v32, v33);
  sub_21669987C(v13, &qword_27CAB8DF8);
  (*(v51 + 8))(v8, v38);
  sub_21700D844();
  sub_21700D444();
  v61 = v38;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v55;
  sub_21700A1F4();

  (*(v54 + 8))(v37, v39);
  sub_21669987C(v49, &qword_27CAB8DF8);
  return sub_21669987C(v45, &qword_27CAB8DF8);
}

unint64_t sub_216AD3974()
{
  result = qword_280E2A888;
  if (!qword_280E2A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A888);
  }

  return result;
}

uint64_t sub_216AD39D8(uint64_t a1, unint64_t a2)
{
  if (a2 != 7)
  {
    return sub_2166E8284(a1, a2);
  }

  return a1;
}

uint64_t sub_216AD39E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216AD3A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216AD3A94()
{
  sub_21700F8F4();
  sub_216AD3D9C();
  return sub_21700F944();
}

uint64_t sub_216AD3AD4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v21 = v13;
  v22 = v12;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v16 = v15;
  v14(v11, v5);
  sub_21700CE04();
  LOBYTE(v11) = sub_21700CD44();
  v17 = sub_21700CF34();
  (*(*(v17 - 8) + 8))(v23, v17);
  v14(a1, v5);
  result = (v14)(v8, v5);
  v19 = v21;
  *a3 = v22;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v16;
  *(a3 + 32) = v11 & 1;
  return result;
}

uint64_t sub_216AD3CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v5)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (v8)
    {
      v9 = *(a1 + 16) == *(a2 + 16) && v7 == v8;
      if (v9 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v8)
  {
    goto LABEL_19;
  }

LABEL_17:
  v10 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  return v10 & 1;
}

uint64_t sub_216AD3D9C()
{
  if (*(v0 + 8))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  if (*(v0 + 24))
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F914();
}

double sub_216AD3E34@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216AD3AD4(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_216AD3E84()
{
  sub_21700F8F4();
  sub_216AD3D9C();
  return sub_21700F944();
}

unint64_t sub_216AD3EC8()
{
  result = qword_27CAC1E48;
  if (!qword_27CAC1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1E48);
  }

  return result;
}

uint64_t sub_216AD3F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v108 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v91 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v93 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v98 = v8;
  v25 = *(v8 + 16);
  v107 = v6;
  v101 = v8 + 16;
  v104 = v25;
  v25(v11, v111, v6);
  v102 = v11;
  sub_21700D734();
  v106 = a1;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v29 = v31;
  v103 = v12;
  (v31)(v22, v12);
  if (v28)
  {
    v32 = type metadata accessor for TVMovieDetailHeaderLockup();
    v105 = v29;
    v33 = v32;
    v109 = v26;
    v110 = v28;
    v34 = v108;
    sub_21700F364();
    v35 = type metadata accessor for Artwork();
    sub_21700CE04();
    v36 = v102;
    v100 = v30;
    v37 = v107;
    v104(v102, v111, v107);
    v95 = sub_2166D8670(&qword_280E2BF60, type metadata accessor for Artwork);
    v96 = v35;
    OUTLINED_FUNCTION_3_97();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v104(v36, v111, v37);
    sub_2166D8670(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_3_97();
    sub_21700CE04();
    v38 = sub_21700CDB4();
    v40 = v39;
    v41 = v103;
    v105(v24);
    v42 = (v34 + *(v33 + 32));
    *v42 = v38;
    v42[1] = v40;
    sub_21700CE04();
    v97 = v33;
    v43 = v111;
    sub_21700D2E4();
    (v105)(v24, v41);
    sub_21700CE04();
    v44 = sub_21700CDB4();
    v46 = v45;
    (v105)(v24, v41);
    v47 = *(v33 + 28);
    v48 = v102;
    v49 = v108;
    v50 = (v108 + v47);
    *v50 = v44;
    v50[1] = v46;
    sub_21700CE04();
    v51 = v43;
    v52 = v43;
    v53 = v107;
    v54 = v104;
    v104(v48, v51, v107);
    sub_216AC6598();
    v55 = v97;
    *(v49 + *(v97 + 36)) = v56;
    type metadata accessor for ModalPresentationDescriptor();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v54(v48, v52, v53);
    v57 = v55;
    sub_2166D8670(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    v58 = v108;
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    v59 = v106;
    sub_21700CE04();
    v54(v48, v52, v107);
    sub_21700D734();
    sub_21700CE04();
    v60 = sub_21700CDB4();
    v62 = v61;
    v63 = v103;
    (v105)(v24, v103);
    v64 = *(v57 + 48);
    v65 = v105;
    v66 = (v58 + v64);
    *v66 = v60;
    v66[1] = v62;
    OUTLINED_FUNCTION_11_0();
    v67 = v92;
    sub_21700CE04();
    v68 = v94;
    sub_21700CD74();
    v65(v67, v63);
    v69 = sub_21700E2C4();
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
    {
      sub_216699820(v68, &qword_27CAB78D0);
      v70 = 0;
    }

    else
    {
      v76 = v99;
      v70 = sub_21700E2A4();
      v99 = v76;
      OUTLINED_FUNCTION_50();
      (*(v77 + 8))(v68, v69);
    }

    v78 = v97;
    v79 = v108;
    *(v108 + *(v97 + 52)) = v70;
    v80 = v93;
    sub_21700CE04();
    v81 = sub_21700CD44();
    v82 = v80;
    v83 = v65;
    v65(v82, v63);
    *(v79 + *(v78 + 56)) = v81 & 1;
    sub_21700CE04();
    v84 = v111;
    v85 = v107;
    v104(v102, v111, v107);
    sub_21700D734();
    sub_21700CE04();
    v86 = sub_21700CDB4();
    v105 = v87;
    (*(v98 + 8))(v84, v85);
    v88 = v103;
    v83(v59, v103);
    result = (v83)(v24, v88);
    v89 = (v79 + *(v78 + 64));
    v90 = v105;
    *v89 = v86;
    v89[1] = v90;
  }

  else
  {
    sub_21700E2E4();
    sub_2166D8670(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v72 = v71;
    v73 = type metadata accessor for TVMovieDetailHeaderLockup();
    *v72 = 25705;
    v72[1] = 0xE200000000000000;
    v72[2] = v73;
    OUTLINED_FUNCTION_50();
    (*(v74 + 104))(v72);
    swift_willThrow();
    (*(v98 + 8))(v111, v107);
    (v29)(v106, v103);
    return sub_216699820(v108, &qword_27CAB6D58);
  }

  return result;
}

uint64_t sub_216AD4968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700CDB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_216AD4A94()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v77 = v2;
  sub_217009314();
  OUTLINED_FUNCTION_1();
  v74 = v4;
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v73 = v6 - v5;
  sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v67 = v8;
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EA8);
  OUTLINED_FUNCTION_1();
  v69 = v16;
  v70 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EB0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v66 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v71 = &v64 - v23;
  *v14 = sub_2170093C4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EB8);
  sub_216AD5110(v1, &v14[*(v24 + 44)]);
  v25 = sub_217009C84();
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EC0) + 36)];
  *v26 = v25;
  *(v26 + 8) = xmmword_217041640;
  *(v26 + 24) = xmmword_217041650;
  v26[40] = 0;
  v27 = sub_21700B354();
  v29 = v28;
  v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EC8) + 36)];
  v76 = v1;
  sub_216AD61DC(v1);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1ED0) + 36)];
  *v31 = v27;
  v31[1] = v29;
  v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1ED8) + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v34 = &v32[*(v33 + 36)];
  v35 = *(sub_217008B44() + 20);
  v36 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v37 + 104))(&v34[v35], v36);
  __asm { FMOV            V0.2D, #14.0 }

  *v34 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v43 = qword_280E73AA0;
  v44 = byte_280E73AA8;
  v45 = qword_280E73AB0;
  v46 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EE0) + 36)];
  sub_216ADD3EC(v34, v46, MEMORY[0x277CDFC08]);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
  *v32 = v43;
  v32[8] = v44;
  *(v32 + 2) = v45;
  v47 = &v32[*(v33 + 40)];
  *v47 = swift_getKeyPath();
  v47[8] = 0;

  v48 = sub_21700B384();
  v50 = v49;
  v51 = v65;
  v52 = &v14[*(v65 + 36)];
  v53 = v76;
  sub_216AD6518(v76, v52);
  v54 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1EE8) + 36));
  *v54 = v48;
  v54[1] = v50;
  sub_2170099A4();
  v55 = sub_216ADCF28();
  sub_21700A784();
  (*(v67 + 8))(v11, v68);
  sub_2167FDB84(v14, &qword_27CAC1EA0);
  sub_216AD77C0();
  v80 = v56;
  v81 = v57;
  v78 = v51;
  v79 = v55;
  OUTLINED_FUNCTION_5_5();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v58 = v66;
  v59 = v70;
  sub_21700A6B4();

  (*(v69 + 8))(v19, v59);
  v60 = v73;
  sub_2170092F4();
  v61 = v71;
  sub_2170089A4();
  (*(v74 + 8))(v60, v75);
  v62 = sub_2167FDB84(v58, &qword_27CAC1EB0);
  MEMORY[0x28223BE20](v62);
  *(&v64 - 2) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F48);
  sub_216ADD2F4();
  OUTLINED_FUNCTION_8_2();
  sub_2167D2D50(v63);
  sub_21700A774();
  sub_2167FDB84(v61, &qword_27CAC1EB0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AD5110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2060);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = (&v91 - v6);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2068);
  MEMORY[0x28223BE20](v96);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v91 - v9;
  v10 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2070);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v95 = &v91 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2078);
  MEMORY[0x28223BE20](v19 - 8);
  v99 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  MEMORY[0x28223BE20](v24);
  v104 = &v91 - v25;
  v97 = a1;
  v26 = *a1;
  sub_216AD5A50();
  v27 = &v15[v10[9]];
  v28 = *v27;
  v29 = v27[1];
  sub_21700DF14();
  sub_216ADEF60(v15, type metadata accessor for SplitPosterLockup);
  if (!v29)
  {
    sub_216AD5A50();
    v30 = &v12[v10[10]];
    v28 = *v30;
    v29 = v30[1];
    sub_21700DF14();
    sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  }

  v31 = sub_216AD5BB8(v28, v29);
  if (v34)
  {
    v35 = v31;
    v36 = v32;
    v108 = v31;
    v109 = v32;
    v94 = v26;
    v93 = v16;
    v37 = v10;
    v38 = v33 & 1;
    LOBYTE(v110) = v33 & 1;
    v111 = v34;
    v39 = v95;
    sub_21700ABA4();
    v40 = v38;
    v10 = v37;
    sub_21678817C(v35, v36, v40);

    (*(v17 + 32))(v23, v39, v93);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2080);
    *&v23[*(v41 + 36)] = 0x3FF0000000000000;
    v42 = v23;
    v43 = 0;
  }

  else
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2080);
    v42 = v23;
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
  sub_2167C5834(v23, v104, &qword_27CAC2078);
  sub_21700B3B4();
  sub_2170083C4();
  v95 = v108;
  v94 = v110;
  v93 = v112;
  v92 = v113;
  v107 = 1;
  v106 = v109;
  v105 = v111;
  sub_216AD5A50();
  v44 = v98;
  sub_216ADD3EC(&v12[v10[6]], v98, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  v45 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  sub_2168C718C();
  *(v44 + v45[6]) = 1;
  v46 = v45[7];
  *(v44 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v47 = v44 + v45[8];
  *v47 = swift_getKeyPath();
  *(v47 + 40) = 0;
  LOBYTE(v47) = sub_217009CA4();
  sub_217007F24();
  v48 = v44 + *(v96 + 36);
  *v48 = v47;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v53 = sub_2170093C4();
  v54 = v103;
  *v103 = v53;
  v54[1] = 0;
  *(v54 + 16) = 0;
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2088) + 44);
  sub_216AD5A50();
  sub_216ADD3EC(&v12[v10[7]], v55, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v12, type metadata accessor for SplitPosterLockup);
  sub_2168C7294();
  *(v55 + v45[6]) = 0;
  v56 = v45[7];
  *(v55 + v56) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v55 + v45[8];
  *v57 = swift_getKeyPath();
  *(v57 + 40) = 0;
  v58 = sub_21700B364();
  v60 = v59;
  v61 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2090) + 36);
  sub_216AD5F54(v97);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2098) + 36));
  *v62 = v58;
  v62[1] = v60;
  LOBYTE(v58) = sub_217009C94();
  sub_217007F24();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20A0) + 36);
  *v71 = v58;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v70;
  *(v71 + 40) = 0;
  LOBYTE(v58) = sub_217009CA4();
  sub_217007F24();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20A8) + 36);
  *v80 = v58;
  *(v80 + 8) = v73;
  *(v80 + 16) = v75;
  *(v80 + 24) = v77;
  *(v80 + 32) = v79;
  *(v80 + 40) = 0;
  v81 = v99;
  sub_216683A80(v104, v99, &qword_27CAC2078);
  LOBYTE(v45) = v107;
  v82 = v106;
  LODWORD(v97) = v105;
  v83 = v100;
  sub_216683A80(v44, v100, &qword_27CAC2068);
  v85 = v102;
  v84 = v103;
  sub_216683A80(v103, v102, &qword_27CAC2060);
  v86 = v101;
  sub_216683A80(v81, v101, &qword_27CAC2078);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20B0);
  v88 = v86 + v87[12];
  *v88 = 0;
  *(v88 + 8) = v45;
  *(v88 + 16) = v95;
  *(v88 + 24) = v82;
  *(v88 + 32) = v94;
  *(v88 + 40) = v97;
  v89 = v92;
  *(v88 + 48) = v93;
  *(v88 + 56) = v89;
  sub_216683A80(v83, v86 + v87[16], &qword_27CAC2068);
  sub_216683A80(v85, v86 + v87[20], &qword_27CAC2060);
  sub_2167FDB84(v84, &qword_27CAC2060);
  sub_2167FDB84(v44, &qword_27CAC2068);
  sub_2167FDB84(v104, &qword_27CAC2078);
  sub_2167FDB84(v85, &qword_27CAC2060);
  sub_2167FDB84(v83, &qword_27CAC2068);
  return sub_2167FDB84(v81, &qword_27CAC2078);
}

uint64_t sub_216AD5A50()
{
  v2 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SplitPosterLockup(v2);
  sub_216ADCD70(qword_280E3F790);
  sub_216ADCD70(&qword_280E3F778);
  swift_getKeyPath();
  v5 = v1;
  sub_2167D2D50(&qword_27CABB840);
  sub_2170066D4();

  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_216ADD3EC(v5 + v3, v0, type metadata accessor for SplitPosterLockup);
}

uint64_t sub_216AD5BB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21680A15C();
    v3 = v2;

    sub_217009264();
    v4 = sub_21700A154();
    v6 = v5;
    v8 = v7;
    v46 = *(v3 + 16);
    sub_216777114(v4, v5, v7 & 1);
    result = sub_21700DF14();
    v10 = 0;
    v47 = v3;
    v11 = (v3 + 48);
    v44 = v6;
    v45 = v4;
    v12 = v6;
    v43 = v8;
    for (i = v8; ; i = v42)
    {
      if (v46 == v10)
      {

        sub_21678817C(v45, v44, v43 & 1);

        return v4;
      }

      if (v10 >= *(v47 + 16))
      {
        break;
      }

      v51 = i;
      v52 = v11;
      v53 = v10;
      v54 = v12;
      v55 = v4;
      v49 = *v11;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v14 = sub_21700A174();
      v16 = v15;
      v18 = v17;
      sub_217009DE4();
      v19 = sub_217009FA4();
      v21 = v20;
      v23 = v22;
      sub_21678817C(v14, v16, v18 & 1);

      sub_217009E24();
      v24 = sub_21700A094();
      v26 = v25;
      v28 = v27;

      sub_21678817C(v19, v21, v23 & 1);

      sub_21700AD14();
      if ((v49 & 1) == 0)
      {
        sub_21700AD04();
      }

      v29 = sub_21700A044();
      v31 = v30;
      v33 = v32;
      sub_21678817C(v24, v26, v28 & 1);

      if (v49)
      {
        sub_217009D94();
      }

      else
      {
        sub_217009DE4();
      }

      v34 = sub_217009FA4();
      v36 = v35;
      v38 = v37;
      sub_21678817C(v29, v31, v33 & 1);

      v39 = sub_21700A064();
      v48 = v40;
      v50 = v39;
      v42 = v41;

      sub_21678817C(v34, v36, v38 & 1);

      sub_21678817C(v55, v54, v51 & 1);

      v11 = v52 + 24;
      v10 = v53 + 1;
      v12 = v48;
      v4 = v50;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_216AD5F54(uint64_t a1)
{
  v2 = sub_2170099D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for SplitPosterLockupView(0) + 36)))
  {

    sub_216C0C924(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28, v29, v30);
    v18 = sub_216E50F58(1, v9);

    (*(v7 + 8))(v9, v6);
    v21 = v18;
    v22 = xmmword_217041660;
    sub_2170099A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20B8);
    sub_216ADE128(&unk_27CAC20C0);
    sub_21700A784();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(&unk_280E31F28);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AD61DC(uint64_t a1)
{
  v2 = sub_2170099D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for SplitPosterLockupView(0) + 36)))
  {

    sub_216C0C924(v10, v11, v12, v13, v14, v15, v16, v17, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    v18 = sub_216E50F58(2, v9);

    (*(v7 + 8))(v9, v6);
    v19 = objc_opt_self();
    v20 = [v19 tertiarySystemFillColor];
    v21 = sub_21700AC44();
    v22 = [v19 tertiarySystemFillColor];
    sub_21700AC44();
    v23 = sub_21700AD04();

    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = objc_allocWithZone(MEMORY[0x277D75348]);

    sub_216847A1C(sub_216847A14, v24);
    v26 = sub_21700AC44();

    v27 = sub_217009C84();
    v30 = v18;
    v31 = v26;
    LOBYTE(v32) = v27;
    sub_2170099A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2050);
    sub_216ADE050();
    sub_21700A784();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(&unk_280E31F28);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216AD6518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v110 = sub_217009354();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FC0);
  MEMORY[0x28223BE20](v98);
  v97 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v90 - v6;
  v7 = sub_217008844();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v90 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FC8);
  MEMORY[0x28223BE20](v95);
  v94 = &v90 - v11;
  v96 = type metadata accessor for SplitPosterLockupView(0);
  v111 = *(v96 - 8);
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F60);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v116 = &v90 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FD0);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FD8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v90 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FE0);
  MEMORY[0x28223BE20](v106);
  v105 = &v90 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FE8);
  v107 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v90 - v19);
  v21 = type metadata accessor for ShareAccessoryButton();
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  v30 = a1;
  sub_216AD5A50();
  sub_216683A80(&v29[*(v24 + 32)], &v121, &qword_27CAB8E60);
  sub_216ADEF60(v29, type metadata accessor for SplitPosterLockup);
  if (!v123)
  {
    v88 = &qword_27CAB8E60;
LABEL_9:
    v89 = &v121;
LABEL_12:
    sub_2167FDB84(v89, v88);
    goto LABEL_13;
  }

  v31 = v121;
  sub_2168269C4(&v121);
  if (v31 != 2)
  {
LABEL_13:
    v87 = v117;
    v85 = v118;
    v86 = 1;
    return __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  }

  sub_216AD5A50();
  sub_216683A80(&v26[*(v24 + 32)], &v121, &qword_27CAB8E60);
  sub_216ADEF60(v26, type metadata accessor for SplitPosterLockup);
  if (!v123)
  {
    sub_2167FDB84(&v121, &qword_27CAB8E60);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    goto LABEL_11;
  }

  sub_216826960(&v121 + 8, v120);
  sub_2168269C4(&v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
  v32 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v32 ^ 1u, 1, v21);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
LABEL_11:
    v88 = &qword_27CAB9328;
    v89 = v20;
    goto LABEL_12;
  }

  sub_216ADD4A0(v20, v23, type metadata accessor for ShareAccessoryButton);
  sub_216683A80(&v23[*(v21 + 24)], &v121, &qword_27CAB6DB0);
  if (!*(&v122 + 1))
  {
    sub_216ADEF60(v23, type metadata accessor for ShareAccessoryButton);
    v88 = &qword_27CAB6DB0;
    goto LABEL_9;
  }

  v90 = v23;
  sub_2166A0F18(&v121, v120);
  sub_216ADD3EC(a1, &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(v120, &v121);
  v33 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v34 = swift_allocObject();
  sub_216ADD4A0(&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for SplitPosterLockupView);
  v35 = sub_2166A0F18(&v121, v34 + ((v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  MEMORY[0x28223BE20](v35);
  v111 = v30;
  *(&v90 - 2) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F80);
  sub_216ADD51C();
  sub_21700AF14();
  v36 = v114;
  v37 = v115;
  v38 = *(v114 + 104);
  v39 = v112;
  v38(v112, *MEMORY[0x277CDF9E8], v115);
  v40 = v113;
  v38(v113, *MEMORY[0x277CDF9D8], v37);
  sub_216ADCD70(&unk_27CABA188);
  result = sub_21700E474();
  if (result)
  {
    v42 = *(v36 + 32);
    v43 = v93;
    v42(v93, v39, v37);
    v44 = v98;
    v42((v43 + *(v98 + 48)), v40, v37);
    v45 = v97;
    sub_216683A80(v43, v97, &qword_27CAC1FC0);
    v46 = *(v44 + 48);
    v47 = v94;
    v42(v94, v45, v37);
    v48 = *(v36 + 8);
    v48(v45 + v46, v37);
    sub_2167C5834(v43, v45, &qword_27CAC1FC0);
    v42((v47 + *(v95 + 36)), (v45 + *(v44 + 48)), v37);
    v48(v45, v37);
    sub_2167D2D50(&unk_27CAC1FF0);
    sub_2167D2D50(&unk_27CAC1FF8);
    v49 = v99;
    v50 = v92;
    v51 = v116;
    sub_21700A5B4();
    sub_2167FDB84(v47, &qword_27CAC1FC8);
    (*(v91 + 8))(v51, v50);
    v52 = v111 + *(v96 + 28);
    v53 = *v52;
    v54 = *(v52 + 8);
    LOBYTE(v121) = v53;
    *(&v121 + 1) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AEB4();
    v55 = v119;
    KeyPath = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2000) + 36));
    *v58 = KeyPath;
    v58[1] = sub_2167D2420;
    v58[2] = v57;
    v59 = sub_21700AD14();
    v60 = swift_getKeyPath();
    v61 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2008) + 36));
    *v61 = v60;
    v61[1] = v59;
    v62 = sub_217009E54();
    v63 = swift_getKeyPath();
    v64 = v100;
    v65 = (v49 + *(v100 + 36));
    *v65 = v63;
    v65[1] = v62;
    sub_217009DE4();
    v66 = sub_216ADDAC0();
    v67 = v101;
    sub_21700A304();
    sub_2167FDB84(v49, &qword_27CAC1FD0);
    v68 = v108;
    sub_217009344();
    *&v121 = v64;
    *(&v121 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_27CAB9D40);
    v69 = v105;
    v70 = v103;
    v71 = v110;
    sub_21700A364();
    (*(v109 + 8))(v68, v71);
    (*(v102 + 8))(v67, v70);
    v72 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2028) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
    sub_217008BE4();
    *v72 = swift_getKeyPath();
    sub_21700B3B4();
    sub_2170083C4();
    v73 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2030) + 36));
    v74 = v122;
    *v73 = v121;
    v73[1] = v74;
    v73[2] = v123;
    v75 = sub_217009C84();
    v76 = v69 + *(v106 + 36);
    *v76 = v75;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    __asm { FMOV            V0.2D, #16.0 }

    *(v76 + 24) = _Q0;
    *(v76 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420);
    sub_216ADDDB8();
    sub_2167D2D50(&qword_280E2A5E0);
    v82 = v104;
    sub_21700A944();
    sub_2167FDB84(v69, &qword_27CAC1FE0);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    sub_216ADEF60(v90, type metadata accessor for ShareAccessoryButton);
    v84 = v117;
    v83 = v118;
    (*(v107 + 32))(v118, v82, v117);
    v85 = v83;
    v86 = 0;
    v87 = v84;
    return __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  }

  __break(1u);
  return result;
}

uint64_t sub_216AD7520(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SplitPosterLockupView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = v2 + *(v5 + 36);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v22[0]) = v13;
  *(&v22[0] + 1) = v14;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_216ADD3EC(v2, v8, type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(a1, v22);
  sub_21700EA34();
  v16 = sub_21700EA24();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_216ADD4A0(v8, v19 + v17, type metadata accessor for SplitPosterLockupView);
  sub_2166A0F18(v22, v19 + v18);
  sub_21677E228();
}

uint64_t sub_216AD7758()
{
  sub_216983738(296);
  sub_2167B2E14();
  return sub_21700AE34();
}

void sub_216AD77C0()
{
  v0 = type metadata accessor for SplitPosterLockup.Item(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for SplitPosterLockup(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  sub_216AD5A50();
  v11 = &v9[v7[12]];
  v12 = *v11;
  v13 = *(v11 + 1);
  sub_21700DF14();
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v49 = inited;
  sub_216AD5A50();
  sub_216ADD3EC(&v9[v7[8]], v5, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  v14 = swift_initStackObject();
  v45 = xmmword_217015230;
  *(v14 + 16) = xmmword_217015230;
  v15 = &v5[v1[10]];
  v16 = *(v15 + 1);
  *(v14 + 32) = *v15;
  *(v14 + 40) = v16;
  v17 = &v5[v1[8]];
  v18 = *(v17 + 1);
  *(v14 + 48) = *v17;
  *(v14 + 56) = v18;
  v19 = v1[9];
  v44 = v5;
  v20 = &v5[v19];
  v21 = *(v20 + 1);
  *(v14 + 64) = *v20;
  *(v14 + 72) = v21;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216BDD25C(v14);
  sub_216AD5A50();
  v22 = v47;
  sub_216ADD3EC(&v9[v7[9]], v47, type metadata accessor for SplitPosterLockup.Item);
  v23 = v22;
  sub_216ADEF60(v9, type metadata accessor for SplitPosterLockup);
  v24 = swift_initStackObject();
  *(v24 + 16) = v45;
  v25 = (v23 + v1[10]);
  v26 = v25[1];
  *(v24 + 32) = *v25;
  *(v24 + 40) = v26;
  v27 = (v23 + v1[8]);
  v28 = v27[1];
  *(v24 + 48) = *v27;
  *(v24 + 56) = v28;
  v29 = (v23 + v1[9]);
  v30 = v29[1];
  *(v24 + 64) = *v29;
  *(v24 + 72) = v30;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216BDD25C(v24);
  v31 = 0;
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = MEMORY[0x277D84F90];
LABEL_2:
  v35 = 16 * v31 + 40;
  while (1)
  {
    if (v33 == v31)
    {

      v48 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      sub_2167D2D50(&qword_280E29E38);
      sub_21700E454();

      sub_216ADEF60(v23, type metadata accessor for SplitPosterLockup.Item);
      sub_216ADEF60(v44, type metadata accessor for SplitPosterLockup.Item);
      return;
    }

    if (v31 >= *(v32 + 16))
    {
      break;
    }

    ++v31;
    v36 = v35 + 16;
    v37 = *(v32 + v35);
    v35 += 16;
    if (v37)
    {
      v38 = *(v32 + v36 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v34 = v41;
      }

      v39 = *(v34 + 16);
      if (v39 >= *(v34 + 24) >> 1)
      {
        sub_21693776C();
        v34 = v42;
      }

      *(v34 + 16) = v39 + 1;
      v40 = v34 + 16 * v39;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_216AD7C20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for SplitPosterLockupView(0);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v4;
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F60);
  v92 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v90 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v86 - v7;
  v95 = type metadata accessor for ShareAccessoryButton();
  MEMORY[0x28223BE20](v95);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F68);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v86 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70) - 8;
  MEMORY[0x28223BE20](v104);
  v110 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v109 = &v86 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v86 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v86 - v20);
  v22 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v22);
  v94 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  v29 = type metadata accessor for SplitPosterLockup.Item(0);
  v30 = v29 - 8;
  v101 = *(v29 - 8);
  v98 = *(v101 + 8);
  MEMORY[0x28223BE20](v29);
  v114 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v115 = &v86 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  v91 = a1;
  v103 = *a1;
  sub_216AD5A50();
  v102 = v22;
  sub_216ADD3EC(&v28[*(v22 + 24)], v36, type metadata accessor for SplitPosterLockup.Item);
  v105 = type metadata accessor for SplitPosterLockup;
  sub_216ADEF60(v28, type metadata accessor for SplitPosterLockup);
  sub_216AD5A50();
  v37 = &v28[*(v22 + 28)];
  v38 = v115;
  v100 = type metadata accessor for SplitPosterLockup.Item;
  sub_216ADD3EC(v37, v115, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v28, type metadata accessor for SplitPosterLockup);
  sub_216683A80(&v36[*(v30 + 48)], v21, &qword_27CAB6DB0);
  v39 = v104;
  v40 = *(v104 + 52);
  v99 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v21 + v40, 1, 1, v99);
  v107 = v36;
  v41 = v36;
  v42 = v114;
  sub_216ADD3EC(v41, v114, type metadata accessor for SplitPosterLockup.Item);
  v43 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v44 = swift_allocObject();
  v101 = type metadata accessor for SplitPosterLockup.Item;
  sub_216ADD4A0(v42, v44 + v43, type metadata accessor for SplitPosterLockup.Item);
  v45 = v39[14];
  *(v21 + v45) = swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v46 = v21 + v39[15];
  *v46 = swift_getKeyPath();
  v46[40] = 0;
  v21[5] = sub_216ADF36C;
  v21[6] = v44;
  v21[7] = 0;
  v21[8] = 0;
  v47 = v21;
  v48 = *(v30 + 48);
  v49 = v102;
  sub_216683A80(v38 + v48, v18, &qword_27CAB6DB0);
  __swift_storeEnumTagSinglePayload(v18 + v39[13], 1, 1, v99);
  v50 = v114;
  sub_216ADD3EC(v38, v114, v100);
  v51 = swift_allocObject();
  sub_216ADD4A0(v50, v51 + v43, v101);
  v52 = v39[14];
  *(v18 + v52) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = v18 + v39[15];
  *v53 = swift_getKeyPath();
  v53[40] = 0;
  v18[5] = sub_216ADD448;
  v18[6] = v51;
  v18[7] = 0;
  v18[8] = 0;
  v54 = v18;
  v55 = v106;
  sub_216AD5A50();
  sub_216683A80(v55 + *(v49 + 32), v118, &qword_27CAB8E60);
  sub_216ADEF60(v55, v105);
  if (!v120)
  {
    sub_2167FDB84(v118, &qword_27CAB8E60);
    v57 = v108;
    goto LABEL_11;
  }

  v56 = v118[0];
  sub_2168269C4(v118);
  v57 = v108;
  if (v56 != 2)
  {
LABEL_11:
    v73 = v57;
    v74 = 1;
    v75 = v111;
    goto LABEL_12;
  }

  v58 = v94;
  sub_216AD5A50();
  sub_216683A80(v58 + *(v49 + 32), v118, &qword_27CAB8E60);
  sub_216ADEF60(v58, type metadata accessor for SplitPosterLockup);
  if (!v120)
  {
    sub_2167FDB84(v118, &qword_27CAB8E60);
    v59 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v95);
    goto LABEL_9;
  }

  sub_216826960(v119, &v116);
  sub_2168269C4(v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
  v59 = v96;
  v60 = v95;
  v61 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v59, v61 ^ 1u, 1, v60);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
LABEL_9:
    v76 = &qword_27CAB9328;
    v77 = v59;
LABEL_10:
    sub_2167FDB84(v77, v76);
    goto LABEL_11;
  }

  v62 = v93;
  sub_216ADD4A0(v59, v93, type metadata accessor for ShareAccessoryButton);
  sub_216683A80(v62 + *(v60 + 24), &v116, &qword_27CAB6DB0);
  if (!v117)
  {
    sub_216ADEF60(v62, type metadata accessor for ShareAccessoryButton);
    v76 = &qword_27CAB6DB0;
    v77 = &v116;
    goto LABEL_10;
  }

  sub_2166A0F18(&v116, v118);
  v63 = v57;
  v64 = v91;
  v65 = v89;
  sub_216ADD3EC(v91, v89, type metadata accessor for SplitPosterLockupView);
  sub_2167B7D58(v118, &v116);
  v66 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v67 = (v88 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  sub_216ADD4A0(v65, v68 + v66, type metadata accessor for SplitPosterLockupView);
  v69 = sub_2166A0F18(&v116, v68 + v67);
  MEMORY[0x28223BE20](v69);
  *(&v86 - 2) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F80);
  sub_216ADD51C();
  v70 = v90;
  sub_21700AF14();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  sub_216ADEF60(v62, type metadata accessor for ShareAccessoryButton);
  v71 = v70;
  v57 = v63;
  v72 = v111;
  (*(v92 + 32))(v63, v71, v111);
  v73 = v63;
  v74 = 0;
  v75 = v72;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v73, v74, 1, v75);
  v78 = v47;
  v79 = v109;
  sub_216683A80(v47, v109, &qword_27CAC1F70);
  v80 = v110;
  sub_216683A80(v54, v110, &qword_27CAC1F70);
  v81 = v112;
  sub_216683A80(v57, v112, &qword_27CAC1F68);
  v82 = v113;
  sub_216683A80(v79, v113, &qword_27CAC1F70);
  v83 = v57;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F78);
  sub_216683A80(v80, v82 + *(v84 + 48), &qword_27CAC1F70);
  sub_216683A80(v81, v82 + *(v84 + 64), &qword_27CAC1F68);
  sub_2167FDB84(v83, &qword_27CAC1F68);
  sub_2167FDB84(v54, &qword_27CAC1F70);
  sub_2167FDB84(v78, &qword_27CAC1F70);
  sub_216ADEF60(v115, type metadata accessor for SplitPosterLockup.Item);
  sub_216ADEF60(v107, type metadata accessor for SplitPosterLockup.Item);
  sub_2167FDB84(v81, &qword_27CAC1F68);
  sub_2167FDB84(v80, &qword_27CAC1F70);
  return sub_2167FDB84(v79, &qword_27CAC1F70);
}

uint64_t sub_216AD88F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  v5 = type metadata accessor for SplitPosterLockup.Item(0);
  v6 = (a1 + *(v5 + 32));
  v7 = v6[1];
  *(inited + 32) = *v6;
  *(inited + 40) = v7;
  v8 = (a1 + *(v5 + 24));
  v9 = v8[1];
  *(inited + 48) = *v8;
  *(inited + 56) = v9;
  sub_21700DF14();
  sub_21700DF14();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = (inited + 40 + 16 * v10);
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v12 = v19;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21693776C();
        v12 = v20;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_2169FAC80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_2167D2D50(&qword_280E29E38);
  v21 = sub_21700E454();
  v23 = v22;

  *a2 = v21;
  a2[1] = v23;
  a2[2] = 0;
  a2[3] = v11;
  return result;
}

void sub_216AD8AD8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  OUTLINED_FUNCTION_8_1();
  v2 = sub_21700ADC4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FB0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14];
  v16 = (v1 + *(type metadata accessor for SplitPosterLockupView(0) + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  v28[16] = v17;
  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  if (v28[15] == 1)
  {
    sub_217008294();
    v19 = sub_21700AD14();
    KeyPath = swift_getKeyPath();
    v21 = &v15[*(v12 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    sub_216683A80(v15, v11, &qword_27CAC1F98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8);
    sub_216ADD5A8();
    sub_216ADD68C();
    OUTLINED_FUNCTION_25_31();
    sub_217009554();
    sub_2167FDB84(v15, &qword_27CAC1F98);
  }

  else
  {
    sub_21700ADB4();
    (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v2);
    v22 = sub_21700AE04();

    (*(v4 + 8))(v8, v2);
    v23 = sub_217009CA4();
    sub_217007F24();
    *v11 = v22;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    v11[24] = v23;
    *(v11 + 4) = v24;
    *(v11 + 5) = v25;
    *(v11 + 6) = v26;
    *(v11 + 7) = v27;
    v11[64] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8);
    sub_216ADD5A8();
    sub_216ADD68C();
    OUTLINED_FUNCTION_25_31();
    sub_217009554();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AD8DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[3] = a1;
  v3 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v19[1] = v5;
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20E0);
  MEMORY[0x28223BE20](v7);
  v9 = (v19 - v8);
  v10 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(v2 + *(v10 + 40), v9, &qword_27CAB6DB0);
  v11 = v7[11];
  v12 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v11, 1, 1, v12);
  sub_216ADD3EC(v2, v6, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_216ADD4A0(v6, v14 + v13, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v19[2] = v7;
  v15 = v7[12];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v7[13];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v9[5] = sub_216ADE76C;
  v9[6] = v14;
  v9[7] = 0;
  v9[8] = 0;
  v19[10] = v2;
  v19[6] = v2;
  sub_216ADD3EC(v2, v6, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  v17 = swift_allocObject();
  sub_216ADD4A0(v6, v17 + v13, type metadata accessor for SplitPosterLockupView.SplitLockupContentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_2167D2D50(&unk_27CAC20E8);
  sub_2167D2D50(qword_280E2BAE8);
  sub_216ADCD70(qword_280E3F158);
  sub_21700A394();

  return sub_2167FDB84(v9, &qword_27CAC20E0);
}

uint64_t sub_216AD91B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20F0);
  return sub_216AD9208(a1, a2 + *(v4 + 44));
}

uint64_t sub_216AD9208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC20F8);
  MEMORY[0x28223BE20](v79);
  v72 = (&v70 - v3);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2100);
  MEMORY[0x28223BE20](v76);
  v78 = &v70 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2108);
  MEMORY[0x28223BE20](v77);
  v71 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for SplitPosterLockupView.ArtworkView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2110);
  MEMORY[0x28223BE20](v74);
  *&v83 = &v70 - v15;
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2118);
  MEMORY[0x28223BE20](v82);
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v70 - v18;
  v19 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(a1 + v19[9], v11, &qword_27CAB6D60);
  sub_216683A80(a1 + v19[5], v8, &qword_27CAB6A00);
  v20 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
  {
    sub_2167FDB84(v8, &qword_27CAB6A00);
    v21 = 23;
  }

  else
  {
    v21 = *v8;
    sub_216ADEF60(v8, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v89) = v21;
  v22 = sub_216E41068(&v89, 0);
  v24 = v23;
  v25 = *(a1 + v19[12]);
  v73 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v26 = *(v73 + 20);
  v27 = v12[7];
  v28 = sub_2170067A4();
  (*(*(v28 - 8) + 16))(&v14[v27], a1 + v26, v28);
  sub_2167C5834(v11, v14, &qword_27CAB6D60);
  v29 = &v14[v12[5]];
  *v29 = v22;
  v29[1] = v24;
  v14[v12[6]] = v25;
  v30 = v12[8];
  *&v14[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v31 = &v14[v12[9]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v14[v12[10]];
  type metadata accessor for PlaybackPresenter();
  sub_216ADCD70(&qword_280E3FDB0);
  *v32 = sub_217008CF4();
  v32[1] = v33;
  v34 = sub_21700B3B4();
  v36 = v35;
  v37 = v83;
  v38 = v83 + *(v74 + 36);
  sub_216AD9C70(a1, v38);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2120) + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_216ADD4A0(v14, v37, type metadata accessor for SplitPosterLockupView.ArtworkView);
  v40 = sub_217009CD4();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v81;
  sub_2167C5834(v37, v81, &qword_27CAC2110);
  v50 = v49 + *(v82 + 36);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  v83 = *(a1 + v19[8]);
  v51 = v19[6];
  v82 = *(a1 + v19[7]);
  v53 = *(a1 + v51);
  v52 = *(a1 + v51 + 8);
  v54 = *(a1 + v19[11]);
  v55 = v75;
  if (*(a1 + *(v73 + 24)))
  {
    sub_216683A80(v49, v75, &qword_27CAC2118);
    v85 = v83;
    v86 = v82;
    *&v87 = v53;
    *(&v87 + 1) = v52;
    LOBYTE(v88) = v54;
    *(&v88 + 1) = 0x3FF0000000000000;
    v56 = v82;
    v57 = v72;
    *v72 = v83;
    *(v57 + 16) = v56;
    v58 = v88;
    *(v57 + 32) = v87;
    *(v57 + 48) = v58;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0;
    *(v57 + 80) = 0;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2128);
    sub_216683A80(v55, v57 + *(v59 + 64), &qword_27CAC2118);
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216683A80(&v85, &v89, &qword_27CAC2130);
    sub_2167FDB84(v55, &qword_27CAC2118);
    v89 = v83;
    v90 = v82;
    v91 = v53;
    v92 = v52;
    v93 = v54;
    v94 = 0x3FF0000000000000;
    sub_2167FDB84(&v89, &qword_27CAC2130);
    sub_216683A80(v57, v78, &qword_27CAC20F8);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2138);
    sub_2167D2D50(&unk_27CAC2140);
    sub_217009554();
    sub_2167FDB84(v57, &qword_27CAC20F8);
    v60 = v81;
  }

  else
  {
    sub_216683A80(v49, v75, &qword_27CAC2118);
    v61 = v71;
    sub_216683A80(v55, v71, &qword_27CAC2118);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2148);
    v63 = (v61 + *(v62 + 48));
    v64 = v83;
    v65 = v82;
    v85 = v83;
    v86 = v82;
    *&v87 = v53;
    *(&v87 + 1) = v52;
    LOBYTE(v88) = v54;
    *(&v88 + 1) = 0x3FF0000000000000;
    v66 = v82;
    *v63 = v83;
    v63[1] = v66;
    v67 = v88;
    v63[2] = v87;
    v63[3] = v67;
    v68 = v61 + *(v62 + 64);
    *v68 = 0;
    *(v68 + 8) = 0;
    *(v68 + 16) = 0;
    v89 = v64;
    v90 = v65;
    v91 = v53;
    v92 = v52;
    v93 = v54;
    v94 = 0x3FF0000000000000;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216683A80(&v85, v84, &qword_27CAC2130);
    sub_2167FDB84(&v89, &qword_27CAC2130);
    sub_2167FDB84(v55, &qword_27CAC2118);
    sub_216683A80(v61, v78, &qword_27CAC2108);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2138);
    sub_2167D2D50(&unk_27CAC2140);
    sub_217009554();
    sub_2167FDB84(v61, &qword_27CAC2108);
    v60 = v49;
  }

  return sub_2167FDB84(v60, &qword_27CAC2118);
}

uint64_t sub_216AD9C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2158);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8);
  MEMORY[0x28223BE20](v15);
  v17 = (&v38 - v16);
  v18 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  if (sub_216EB939C())
  {
    v41 = sub_21700ADB4();
    sub_217009DE4();
    v19 = sub_217009D84();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
    v39 = sub_217009DF4();
    sub_2167FDB84(v14, &qword_27CAB81D0);
    KeyPath = swift_getKeyPath();
    v21 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE0) + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
    v40 = v7;
    v23 = a1;
    v24 = *(v22 + 28);
    v42 = a2;
    v25 = *MEMORY[0x277CE1058];
    v26 = sub_21700ADF4();
    (*(*(v26 - 8) + 104))(v21 + v24, v25, v26);
    *v21 = swift_getKeyPath();
    *v17 = v41;
    v17[1] = KeyPath;
    v17[2] = v39;
    v27 = sub_21700AC54();
    v28 = swift_getKeyPath();
    v29 = (v17 + *(v15 + 36));
    *v29 = v28;
    v29[1] = v27;
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2160);
    sub_216ADA0C4(v23, v17, &v6[*(v30 + 44)]);
    if (*(v23 + *(v18 + 24)))
    {
      v31 = 13.0;
    }

    else
    {
      v31 = -14.0;
    }

    sub_2167C5834(v6, v9, &qword_27CAC2150);
    v32 = v40;
    v33 = &v9[*(v40 + 36)];
    *v33 = v31;
    *(v33 + 1) = 0;
    v34 = v43;
    sub_2167C5834(v9, v43, &qword_27CAC2158);
    v35 = v34;
    v36 = v42;
    sub_2167C5834(v35, v42, &qword_27CAC2158);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v32);
    return sub_2167FDB84(v17, &qword_27CAB8BD8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_216ADA0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2168);
  MEMORY[0x28223BE20](v21[0]);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2170);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2178);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  LOBYTE(a1) = *(a1 + *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 24));
  sub_216683A80(a2, v12, &qword_27CAB8BD8);
  if (a1)
  {
    *v6 = 0;
    v6[8] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2180);
    sub_216683A80(v12, &v6[*(v16 + 48)], &qword_27CAB8BD8);
    sub_2167FDB84(v12, &qword_27CAB8BD8);
    v17 = &qword_27CAC2168;
    sub_216683A80(v6, v9, &qword_27CAC2168);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2188);
    sub_2167D2D50(&unk_27CAC2190);
    sub_217009554();
    v18 = v6;
  }

  else
  {
    sub_216683A80(v12, v15, &qword_27CAB8BD8);
    v19 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE8) + 48)];
    *v19 = 0;
    v19[8] = 1;
    sub_2167FDB84(v12, &qword_27CAB8BD8);
    v17 = &qword_27CAC2178;
    sub_216683A80(v15, v9, &qword_27CAC2178);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&unk_27CAC2188);
    sub_2167D2D50(&unk_27CAC2190);
    sub_217009554();
    v18 = v15;
  }

  return sub_2167FDB84(v18, v17);
}

uint64_t sub_216ADA470@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v25 = a2;
  v24 = sub_2170067A4();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MenuConfiguration(0);
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_2168A82D8();
  sub_216ADEF60(v8, type metadata accessor for MenuContext);
  v16 = v24;
  (*(v3 + 16))(v5, a1 + v15, v24);
  sub_216ADD4A0(v14, v11, type metadata accessor for MenuConfiguration);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = (v4 + *(v23 + 80) + v17) & ~*(v23 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v17, v5, v16);
  result = sub_216ADD4A0(v11, v19 + v18, type metadata accessor for MenuConfiguration);
  v21 = v25;
  *v25 = sub_216ADEAD0;
  v21[1] = v19;
  return result;
}

uint64_t sub_216ADA720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9 - 8];
  v11 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  v12 = *(v5 + 16);
  v12(v10, (a1 + *(v11 + 20)), v4);
  v13 = type metadata accessor for SplitPosterLockup.Item(0);
  sub_216683A80(a1 + *(v13 + 40), v25, &qword_27CAB6DB0);
  v14 = type metadata accessor for ContextMenuPreview(0);
  v15 = (a2 + v14[6]);
  v15[3] = v4;
  v15[4] = sub_216ADCD70(&qword_280E4A480);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  v12(boxed_opaque_existential_1, v10, v4);
  if (v26)
  {
    v17 = 1;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v17 = (*(v5 + 88))(v7, v4) == *MEMORY[0x277D2A3F8];
    v10 = v7;
  }

  (*(v5 + 8))(v10, v4);
  sub_2167FDB84(v25, &qword_27CAB6DB0);
  *(a2 + v14[5]) = v17;
  v18 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  v19 = v14[7];
  v20 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a2 + v19, 1, 1, v20);
  v21 = v14[8];
  v22 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
}

uint64_t sub_216ADA9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2170075A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for SplitPosterLockup.Item(0) + 40);
  v10 = *(type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0) + 20);
  v11 = sub_216C0C534(&v25);
  sub_216C0C548(v11, v12, v13, v14, v15, v16, v17, v18, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v19 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_2167B9BDC(a1 + v9, a1 + v10, &v25, v8, v4, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  sub_2167FDB84(v4, &qword_27CAB6DE8);
  (*(v6 + 8))(v8, v5);
  return sub_2167FDB84(&v25, &qword_27CAB7310);
}

uint64_t sub_216ADAB84()
{
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_2170093C4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21B0);
  sub_216ADAD44(v0, &v7[*(v8 + 44)]);
  sub_2170099B4();
  sub_2167D2D50(&unk_27CAC21B8);
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_2167FDB84(v7, &qword_27CAC21A8);
}

uint64_t sub_216ADAD44@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = sub_21700D864();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700D8E4();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21C0);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v50 - v10;
  v98 = *a1;
  v11 = v98;
  sub_216683A80(&v98, v84, &qword_27CABAA40);
  if (qword_27CAB5CE8 != -1)
  {
    swift_once();
  }

  v12 = qword_27CAC1E68;
  *&v75 = swift_getKeyPath();
  *(&v75 + 1) = v12;

  *(&v74 + 1) = sub_21700AD34();
  *&v74 = swift_getKeyPath();
  v97 = a1[2];
  sub_216683A80(&v97, v84, &qword_27CABAA40);
  type metadata accessor for ExplicitBadgingPresenter();
  sub_216ADCD70(&qword_280E36A20);
  v14 = sub_217008CF4();
  if (!*(&v97 + 1))
  {
    goto LABEL_10;
  }

  v15 = HIBYTE(*(&v97 + 1)) & 0xFLL;
  v77 = v97;
  if ((*(&v97 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    sub_2167FDB84(&v97, &qword_27CABAA40);
LABEL_10:

    v14 = 0;
    v16 = 0;
    v76 = 0;
    v77 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_13;
  }

  v16 = v13;
  v76 = *(&v97 + 1);
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = sub_217009154();
  }

  else
  {
    v18 = sub_2170091A4();
  }

  *&v83[0] = v14;
  *(&v83[0] + 1) = v16;
  *&v83[1] = v77;
  *(&v83[1] + 1) = v76;
  LOWORD(v83[2]) = v17;
  *(&v83[2] + 2) = v93;
  WORD3(v83[2]) = v94;
  *(&v83[2] + 1) = 0;
  LOBYTE(v83[3]) = 0;
  *(&v83[3] + 1) = *v92;
  DWORD1(v83[3]) = *&v92[3];
  *(&v83[3] + 1) = v18;
  v70 = *&v83[3];
  v71 = *&v83[2];
  *v84 = v14;
  *&v84[8] = v16;
  *&v84[16] = v77;
  *&v84[24] = v76;
  *&v84[32] = v17;
  *&v84[38] = v94;
  *&v84[34] = v93;
  *&v84[40] = 0;
  v84[48] = 0;
  *&v84[52] = *&v92[3];
  *&v84[49] = *v92;
  v72 = v18;
  *&v84[56] = v18;
  sub_21680DAEC(v83, v78);
  sub_21680DB48(v84);
LABEL_13:
  if (qword_27CAB5CF8 != -1)
  {
    swift_once();
  }

  v53 = v16;
  v54 = v14;
  v19 = qword_27CAC1E78;
  *&v69 = swift_getKeyPath();
  *(&v69 + 1) = v19;

  *(&v68 + 1) = sub_21700AD14();
  *&v68 = swift_getKeyPath();
  v96 = a1[1];
  v20 = *(&v96 + 1);
  KeyPath = swift_getKeyPath();
  v95 = 0;
  v21 = v96;
  sub_216683A80(&v96, v84, &qword_27CABAA40);
  if (qword_27CAB5CF0 != -1)
  {
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
  if (v20)
  {
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (!*(&v11 + 1))
  {
    v22 = 0;
  }

  v64 = v22;
  v65 = v25;
  if (*(&v11 + 1))
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  v66 = v26;
  v27 = qword_27CAC1E70;
  v28 = swift_getKeyPath();

  v29 = sub_21700AD34();
  v51 = *(&v11 + 1);
  v30 = v29;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v91 = 0;
  *v84 = v24;
  *&v84[8] = v20;
  *&v84[16] = 0;
  *&v84[24] = v23;
  *&v84[32] = v28;
  *&v84[40] = v27;
  *&v84[48] = v31;
  *&v84[56] = v30;
  *&v84[64] = v32;
  *&v84[72] = 1;
  v84[80] = 0;
  v34 = v55;
  v33 = v56;
  v35 = v57;
  (*(v56 + 104))(v55, *MEMORY[0x277D22070], v57);
  memset(v83, 0, 32);
  memset(v78, 0, 32);
  v36 = v52;
  sub_21700D874();
  sub_2167FDB84(v78, &unk_27CABF7A0);
  sub_2167FDB84(v83, &unk_27CABF7A0);
  (*(v33 + 8))(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF610);
  sub_216ADEEA8();
  v37 = v73;
  sub_21700A204();
  (*(v58 + 8))(v36, v59);
  memcpy(v78, v84, 0x51uLL);
  sub_2167FDB84(v78, &qword_27CABF610);
  v39 = v60;
  v38 = v61;
  v40 = *(v61 + 16);
  v41 = v62;
  v40(v60, v37, v62);
  *&v79 = v66;
  *(&v79 + 1) = *(&v11 + 1);
  v42 = v63;
  *&v80 = 0;
  *(&v80 + 1) = v64;
  v81 = v75;
  v82 = v74;
  v43 = v80;
  *v63 = v79;
  *(v42 + 1) = v43;
  v44 = v82;
  *(v42 + 2) = v81;
  *(v42 + 3) = v44;
  v45 = v53;
  v46 = v54;
  *&v83[0] = v54;
  *(&v83[0] + 1) = v53;
  *&v83[1] = v77;
  *(&v83[1] + 1) = v76;
  v83[2] = v71;
  *&v83[3] = v70;
  *(&v83[3] + 1) = v72;
  v83[4] = v69;
  v83[5] = v68;
  *&v83[6] = KeyPath;
  *(&v83[6] + 1) = v65;
  LOBYTE(v83[7]) = 0;
  memcpy(v42 + 64, v83, 0x71uLL);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21C8);
  v40(&v42[*(v47 + 64)], v39, v41);
  sub_216683A80(&v79, v84, &qword_27CABA1C0);
  sub_216683A80(v83, v84, &qword_27CABF608);
  v48 = *(v38 + 8);
  v48(v73, v41);
  v48(v39, v41);
  *v84 = v46;
  *&v84[8] = v45;
  *&v84[16] = v77;
  *&v84[24] = v76;
  *&v84[32] = v71;
  *&v84[40] = 0;
  *&v84[48] = v70;
  *&v84[56] = v72;
  *&v84[64] = v69;
  *&v84[80] = v68;
  v85 = KeyPath;
  v86 = v65;
  v87 = 0;
  sub_2167FDB84(v84, &qword_27CABF608);
  v88[0] = v66;
  v88[1] = v51;
  v88[2] = 0;
  v88[3] = v64;
  v89 = v75;
  v90 = v74;
  return sub_2167FDB84(v88, &qword_27CABA1C0);
}

uint64_t sub_216ADB620@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = sub_2170067A4();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x28223BE20](v2);
  v118 = v3;
  v119 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v99 - v7;
  v112 = sub_21700C444();
  v8 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v99 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v99 - v16;
  v110 = sub_217007474();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v102 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v99 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v99 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D0);
  MEMORY[0x28223BE20](v103);
  v115 = &v99 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D8);
  MEMORY[0x28223BE20](v114);
  v116 = &v99 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21E0);
  MEMORY[0x28223BE20](v113);
  v117 = &v99 - v23;
  v125 = sub_217009294();
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125 - 8);
  v124 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2170090F4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SplitPosterLockupView.ArtworkView(0);
  v30 = v1;
  v31 = v1 + v29[9];
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v33 = *v31;
  }

  else
  {

    sub_21700ED94();
    v34 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v32, 0);
    (*(v26 + 8))(v28, v25);
    v33 = v127;
  }

  v35 = v33 * 0.3;
  v36 = [objc_opt_self() defaultMetrics];
  [v36 scaledValueForValue_];
  v38 = v37;

  if (v35 >= v38)
  {
    v35 = v38;
  }

  v39 = v30;
  v40 = v109;
  if (*(v30 + v29[6]) == 1)
  {

    v41 = v35 * 0.5;
    v42 = MEMORY[0x277CE0128];
  }

  else
  {
    v43 = sub_21700F7D4();

    if (v43)
    {
      v41 = v35 * 0.5;
    }

    else
    {
      v41 = 5.0;
    }

    v44 = sub_21700F7D4();
    v42 = MEMORY[0x277CE0118];
    if (v44)
    {
      v42 = MEMORY[0x277CE0128];
    }
  }

  v45 = v8;
  v46 = v102;
  v47 = v100;
  (*(v126 + 104))(v124, *v42, v125);
  sub_216683A80(v39, v14, &qword_27CAB6D60);
  v48 = type metadata accessor for Artwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v48);
  v50 = v101;
  if (EnumTagSinglePayload == 1)
  {
    sub_2167FDB84(v14, &qword_27CAB6D60);
    v51 = sub_21700C4B4();
    v52 = v47;
    v53 = 1;
  }

  else
  {
    v54 = sub_21700C4B4();
    (*(*(v54 - 8) + 16))(v47, v14, v54);
    sub_216ADEF60(v14, type metadata accessor for Artwork);
    v52 = v47;
    v53 = 0;
    v51 = v54;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  v55 = v111;
  sub_217007434();
  sub_216683A80(v39, v50, &qword_27CAB6D60);
  v56 = __swift_getEnumTagSinglePayload(v50, 1, v48);
  v57 = v112;
  if (v56 == 1)
  {
    sub_2167FDB84(v50, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v55, 1, v57) != 1)
    {
      sub_2167FDB84(v55, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v45 + 16))(v55, v50 + *(v48 + 20), v112);
    sub_216ADEF60(v50, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
    (*(v45 + 32))(v40, v55, v57);
  }

  v58 = v107;
  sub_2170073E4();
  (*(v45 + 8))(v40, v57);
  v59 = *(v108 + 8);
  v60 = v46;
  v61 = v110;
  v59(v60, v110);
  v62 = (v39 + v29[5]);
  v63 = *v62;
  v64 = v62[1];
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v64;
  sub_2167B8890(v63, v64);
  sub_2167C505C();
  v66 = v104;
  sub_2170073F4();

  v59(v58, v61);
  v67 = v115;
  (*(v105 + 32))(v115, v66, v106);
  *(v67 + *(v103 + 36)) = xmmword_217026E20;
  v68 = sub_21700B3B4();
  v70 = *(v39 + v29[10]);
  if (v70)
  {
    v71 = v68;
    v72 = v69;
    v74 = v121;
    v73 = v122;
    v75 = *(v121 + 16);
    v76 = v39 + v29[7];
    v77 = v120;
    v75(v120, v76, v122);
    v78 = v119;
    v75(v119, v77, v73);
    v79 = (*(v74 + 80) + 24) & ~*(v74 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v70;
    (*(v74 + 32))(v80 + v79, v78, v73);
    type metadata accessor for PlaybackPresenter();
    sub_216ADCD70(&qword_280E3FDB0);
    swift_retain_n();
    v81 = sub_217008684();
    v83 = v82;
    (*(v74 + 8))(v77, v73);
    v84 = v116;
    sub_2167C5834(v67, v116, &qword_27CAC21D0);
    v85 = v84 + *(v114 + 36);
    *v85 = sub_21680CE98;
    *(v85 + 8) = v80;
    *(v85 + 16) = 0;
    *(v85 + 24) = v81;
    *(v85 + 32) = v83;
    *(v85 + 40) = v71;
    *(v85 + 48) = v72;
    v86 = v117;
    v87 = &v117[*(v113 + 36)];
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
    v89 = &v87[*(v88 + 36)];
    v90 = sub_217008B44();
    v91 = v125;
    v92 = v124;
    (*(v126 + 16))(v89 + *(v90 + 20), v124, v125);
    *v89 = v41;
    v89[1] = v41;
    if (qword_27CAB5D00 != -1)
    {
      swift_once();
    }

    v93 = qword_27CAC1E80;
    v94 = byte_27CAC1E88;
    v95 = qword_27CAC1E90;
    (*(v126 + 8))(v92, v91);
    v96 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21E8) + 36);
    sub_216ADD3EC(v89, v96, MEMORY[0x277CDFC08]);
    *(v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
    sub_2167C5834(v84, v86, &qword_27CAC21D8);
    *v87 = v93;
    v87[8] = v94;
    *(v87 + 2) = v95;
    v97 = &v87[*(v88 + 40)];
    *v97 = swift_getKeyPath();
    v97[8] = 0;
    sub_2167C5834(v86, v123, &qword_27CAC21E0);
  }

  else
  {
    type metadata accessor for PlaybackPresenter();
    sub_216ADCD70(&qword_280E3FDB0);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216ADC464()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC1E50);
  __swift_project_value_buffer(v0, qword_27CAC1E50);
  type metadata accessor for SplitPosterLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FB8);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t sub_216ADC508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  v5[20] = swift_task_alloc();
  sub_21700EA34();
  v5[21] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_216ADC5D8, v7, v6);
}

uint64_t sub_216ADC860()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 208) = v0;

  sub_2167FDB84(v3, &qword_27CABF360);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_216ADCA7C;
  }

  else
  {
    v6 = sub_216ADC9C8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_216ADC9C8()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_13_45();
  *(v1 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 218) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216ADCA7C()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_13_45();
  *(v1 + 112) = v2;
  *(v0 + 120) = v3;
  *(v0 + 217) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216ADCB38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SplitPosterLockupView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v3[7];
  sub_21700AEA4();
  *v6 = v12;
  *(v6 + 1) = v13;
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  v8 = (a2 + v3[9]);
  type metadata accessor for ReplayGradientImageGenerator();
  sub_216ADCD70(&unk_280E31F28);
  *v8 = sub_217008CF4();
  v8[1] = v9;
  v10 = v3[10];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216ADCCF8(uint64_t a1)
{
  result = sub_216ADCD70(&unk_27CAC1E98);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216ADCD70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216ADCDB4()
{
  sub_217009E84();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CAC1E68 = v0;
  return result;
}

uint64_t sub_216ADCDF8()
{
  result = sub_217009D44();
  qword_27CAC1E70 = result;
  return result;
}

uint64_t sub_216ADCE18()
{
  result = sub_217009E54();
  qword_27CAC1E78 = result;
  return result;
}

uint64_t sub_216ADCE38()
{
  sub_21700ACC4();
  v0 = sub_21700AD04();

  sub_21700ACF4();
  v1 = sub_21700AD04();

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);

  sub_216847A1C(sub_216ADF370, v2);
  v4 = sub_21700AC44();

  qword_27CAC1E80 = 0x3FF0000000000000;
  byte_27CAC1E88 = 1;
  qword_27CAC1E90 = v4;
  return result;
}

unint64_t sub_216ADCF28()
{
  result = qword_27CAC1EF0;
  if (!qword_27CAC1EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EA0);
    sub_216ADCFE0();
    sub_2167D2D50(&unk_27CAC1F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1EF0);
  }

  return result;
}

unint64_t sub_216ADCFE0()
{
  result = qword_27CAC1EF8;
  if (!qword_27CAC1EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1ED8);
    sub_216ADF0D8(&unk_27CAC1F00);
    sub_2167D2D50(&unk_280E382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1EF8);
  }

  return result;
}

unint64_t sub_216ADD0C4()
{
  result = qword_27CAC1F10;
  if (!qword_27CAC1F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EE0);
    sub_216ADD17C();
    sub_2167D2D50(&unk_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F10);
  }

  return result;
}

unint64_t sub_216ADD17C()
{
  result = qword_27CAC1F18;
  if (!qword_27CAC1F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EC8);
    sub_216ADD234();
    sub_2167D2D50(&unk_27CAC1F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F18);
  }

  return result;
}

unint64_t sub_216ADD234()
{
  result = qword_27CAC1F20;
  if (!qword_27CAC1F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EC0);
    sub_2167D2D50(&unk_27CAC1F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F20);
  }

  return result;
}

unint64_t sub_216ADD2F4()
{
  result = qword_27CAC1F50;
  if (!qword_27CAC1F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1EA0);
    sub_216ADCF28();
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_280E2A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F50);
  }

  return result;
}

uint64_t sub_216ADD3EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216ADD44C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for SplitPosterLockup.Item(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));
  return sub_216AD88F4(v4, v0);
}

uint64_t sub_216ADD4A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216ADD51C()
{
  result = qword_27CAC1F88;
  if (!qword_27CAC1F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F80);
    sub_216ADD5A8();
    sub_216ADD68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F88);
  }

  return result;
}

unint64_t sub_216ADD5A8()
{
  result = qword_27CAC1F90;
  if (!qword_27CAC1F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F98);
    sub_2167D2D50(&qword_27CAB7BC8);
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1F90);
  }

  return result;
}

unint64_t sub_216ADD68C()
{
  result = qword_27CAC1FA0;
  if (!qword_27CAC1FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FA8);
    sub_216ADE128(&qword_280E2B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1FA0);
  }

  return result;
}

uint64_t sub_216ADD738()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090C4();
  *v0 = result;
  return result;
}

uint64_t sub_216ADD78C(uint64_t a1)
{
  v4 = type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2167AF644;

  return sub_216ADC508(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t objectdestroy_19Tm_0()
{
  type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_36();
  v6 = v3 + v0[8];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_33();

  return swift_deallocObject();
}

uint64_t sub_216ADDA40()
{
  v1 = type metadata accessor for SplitPosterLockupView(0);
  OUTLINED_FUNCTION_2(v1);
  return sub_216AD7520(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_216ADDAC0()
{
  result = qword_27CAC2010;
  if (!qword_27CAC2010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD0);
    sub_216ADDB78();
    sub_2167D2D50(&qword_280E2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2010);
  }

  return result;
}

unint64_t sub_216ADDB78()
{
  result = qword_27CAC2018;
  if (!qword_27CAC2018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2008);
    sub_216ADDC30();
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2018);
  }

  return result;
}

unint64_t sub_216ADDC30()
{
  result = qword_27CAC2020;
  if (!qword_27CAC2020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FC8);
    sub_2167D2D50(&unk_27CAC1FF0);
    sub_2167D2D50(&unk_27CAC1FF8);
    swift_getOpaqueTypeConformance2();
    sub_2167D2D50(&qword_280E2A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2020);
  }

  return result;
}

unint64_t sub_216ADDDB8()
{
  result = qword_27CAC2038;
  if (!qword_27CAC2038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FE0);
    sub_216ADDE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2038);
  }

  return result;
}

unint64_t sub_216ADDE44()
{
  result = qword_27CAC2040;
  if (!qword_27CAC2040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2030);
    sub_216ADDED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2040);
  }

  return result;
}

unint64_t sub_216ADDED0()
{
  result = qword_27CAC2048;
  if (!qword_27CAC2048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD8);
    sub_217009354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1FD0);
    sub_216ADDAC0();
    swift_getOpaqueTypeConformance2();
    sub_216ADCD70(&qword_27CAB9D40);
    swift_getOpaqueTypeConformance2();
    sub_2167D2D50(&qword_280E2A728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2048);
  }

  return result;
}

unint64_t sub_216ADE050()
{
  result = qword_27CAC2058;
  if (!qword_27CAC2058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2050);
    sub_2167D2D50(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2058);
  }

  return result;
}

unint64_t sub_216ADE128(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_6_66();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_216ADE1A4()
{
  type metadata accessor for SplitPosterLockup.Item(319);
  if (v0 <= 0x3F)
  {
    sub_2170067A4();
    if (v1 <= 0x3F)
    {
      sub_216ADEE0C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21680D428();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SplitPosterLockupView.SplitLockupContentView.ArtworkAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_216ADE394()
{
  sub_216ADE538();
  if (v0 <= 0x3F)
  {
    sub_216ADEE0C(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_216ADE614(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_216ADE614(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21680D428();
          if (v4 <= 0x3F)
          {
            sub_216ADE664();
            if (v5 <= 0x3F)
            {
              sub_216ADEE0C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_216ADE538()
{
  if (!qword_280E43230[0])
  {
    type metadata accessor for SplitPosterLockup(255);
    sub_216ADCD70(qword_280E3F790);
    sub_216ADCD70(&qword_280E3F778);
    v0 = type metadata accessor for MappedItemPair();
    if (!v1)
    {
      atomic_store(v0, qword_280E43230);
    }
  }
}

void sub_216ADE614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_216ADE664()
{
  if (!qword_280E2ACA8)
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216ADCD70(&unk_280E31F28);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2ACA8);
    }
  }
}

unint64_t sub_216ADE6FC()
{
  result = qword_27CAC20D8;
  if (!qword_27CAC20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC20D8);
  }

  return result;
}

uint64_t sub_216ADE76C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216AD91B4(v4, v0);
}

uint64_t objectdestroy_79Tm()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v5 = type metadata accessor for SplitPosterLockup.Item(0);
  v6 = v4 + v5[5];
  v7 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_4_16(v7))
  {

    v8 = *(v2 + 24);
    v2 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v6 + v8, 1, v2))
    {
      OUTLINED_FUNCTION_50();
      (*(v9 + 8))(v6 + v8, v2);
    }
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v10 = v4 + v5[9];
  v11 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_4_16(v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v10);
    v13 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v10 + v13);
  }

  v15 = v4 + v5[10];
  if (*(v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v16 = v0[5];
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v17 + 8))(v4 + v16);
  v18 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v19 + 8))(v4 + v18);
  }

  else
  {
  }

  v20 = v4 + v0[8];
  if (*(v20 + 40))
  {
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216ADEA7C()
{
  v0 = type metadata accessor for SplitPosterLockupView.SplitLockupContentView(0);
  OUTLINED_FUNCTION_36(v0);
  v2 = OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216ADA9BC(v2);
}

void sub_216ADEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v21 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  v26 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v26);
  v34 = v20 + ((v23 + v25 + *(v33 + 80)) & ~*(v33 + 80));

  sub_2169BDF30(v20 + v23, v34, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216ADEBB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216ADEC08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_216ADECA4()
{
  sub_216ADEE0C(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2170067A4();
    if (v1 <= 0x3F)
    {
      sub_216ADEE0C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_216ADE614(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2167B84AC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216ADEE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216ADEEA8()
{
  result = qword_280E2AF00;
  if (!qword_280E2AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF610);
    sub_21686BF40();
    sub_2167D2D50(&qword_280E2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF00);
  }

  return result;
}

uint64_t sub_216ADEF60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_60Tm()
{

  return swift_deallocObject();
}

unint64_t sub_216ADEFF4()
{
  result = qword_27CAC21F0;
  if (!qword_27CAC21F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21E0);
    sub_216ADF0D8(&unk_27CAC21F8);
    sub_2167D2D50(qword_280E382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC21F0);
  }

  return result;
}

unint64_t sub_216ADF0D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    OUTLINED_FUNCTION_6_66();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216ADF140()
{
  result = qword_27CAC2208;
  if (!qword_27CAC2208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21E8);
    sub_216ADF1F8();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2208);
  }

  return result;
}

unint64_t sub_216ADF1F8()
{
  result = qword_27CAC2210;
  if (!qword_27CAC2210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21D8);
    sub_216ADF2B0();
    sub_2167D2D50(&unk_27CAC2220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2210);
  }

  return result;
}

unint64_t sub_216ADF2B0()
{
  result = qword_27CAC2218;
  if (!qword_27CAC2218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC21D0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2218);
  }

  return result;
}

void sub_216ADF378()
{
  OUTLINED_FUNCTION_49();
  v92 = v1;
  v3 = v2;
  v5 = v4;
  v88 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v87 = v9;
  v10 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v84 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v83 - v24;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v90 = v27;
  v91 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v89 = v28;
  *(v5 + 80) = 0u;
  v83 = v5 + 80;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  v93 = v3;
  v94 = v5;
  *v5 = 0u;
  *&v95 = sub_217006784();
  v30 = v29;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v10);
  sub_21700D6F4();
  v97 = MEMORY[0x277D837D0];
  *&v96 = 2036427888;
  *(&v96 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v96, v100);
  v34 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v34;
  sub_2166EF9D4();
  v35 = v99;
  sub_216681B04(v25, v0, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    sub_216697664(v0, &qword_27CABA820);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_97();
    v37(v36);
    v38 = sub_217005DE4();
    v97 = MEMORY[0x277D837D0];
    *&v96 = v38;
    *(&v96 + 1) = v39;
    sub_2166EF9C4(&v96, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v35;
    sub_2166EF9D4();
    v35 = v99;
    (*(v12 + 8))(v15, v10);
  }

  v40 = v91;
  if (qword_280E46040 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  v41 = sub_21700CF84();
  v42 = __swift_project_value_buffer(v41, qword_280E73DB0);
  v43 = v87;
  MEMORY[0x21CE9DD70](v95, v30, 0x6E6F74747562, 0xE600000000000000, v35, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  OUTLINED_FUNCTION_9_61();
  v44 = swift_allocObject();
  v95 = xmmword_217013DA0;
  *(v44 + 16) = xmmword_217013DA0;
  v45 = v44 + v0;
  v46 = v88;
  (*(v7 + 16))(v45, v43, v88);
  v47 = v84;
  v48 = v86;
  (*(v84 + 16))(v85, v20, v86);
  v49 = v89;
  sub_21700D244();
  v50 = OUTLINED_FUNCTION_97();
  v51(v50);
  (*(v47 + 8))(v20, v48);
  sub_216697664(v25, &qword_27CABA820);
  sub_216C6D16C();
  sub_217006D94();

  v52 = sub_217006D14();
  v53 = v90;
  v54 = v40;
  v55 = v93;
  if (v52)
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0);
    sub_2170067A4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_9_61();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_26_35(v57);
    v59(v58);
    v97 = type metadata accessor for QueueGenericMusicItemsAction();
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v60, v61);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
    v63 = OUTLINED_FUNCTION_25_32(boxed_opaque_existential_1);
    v64(v63);
    *v46 = v56;
    *(v46 + 8) = 1;
    sub_216AE2770(&v96, v83);
  }

  if (sub_217006D24())
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0);
    sub_2170067A4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_9_61();
    v66 = swift_allocObject();
    v67 = OUTLINED_FUNCTION_26_35(v66);
    v68(v67);
    v97 = type metadata accessor for QueueGenericMusicItemsAction();
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v69, v70);
    v71 = __swift_allocate_boxed_opaque_existential_1(&v96);
    v72 = OUTLINED_FUNCTION_25_32(v71);
    v73(v72);
    *v46 = v65;
    *(v46 + 8) = 0;
    sub_216AE2770(&v96, v94 + 40);
  }

  if (sub_217006D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFFE0);
    v74 = sub_2170067A4();
    OUTLINED_FUNCTION_1();
    v76 = v75;
    OUTLINED_FUNCTION_9_61();
    v77 = swift_allocObject();
    *(v77 + 16) = v95;
    (*(v76 + 16))(v77 + v46, v55, v74);

    (*(v76 + 8))(v55, v74);
    v78 = type metadata accessor for QueueGenericMusicItemsAction();
    v97 = v78;
    OUTLINED_FUNCTION_6_67();
    v98 = sub_216AE2C68(v79, v80);
    v81 = __swift_allocate_boxed_opaque_existential_1(&v96);
    *v81 = v77;
    *(v81 + 8) = 2;
    (*(v53 + 32))(v81 + *(v78 + 24), v49, v54);
    sub_216AE2770(&v96, v94);
  }

  else
  {

    sub_2170067A4();
    OUTLINED_FUNCTION_34();
    (*(v82 + 8))(v55);
    (*(v53 + 8))(v49, v54);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216ADFC6C()
{
  OUTLINED_FUNCTION_49();
  v265 = v0;
  v264 = v1;
  v3 = v2;
  v263 = v4;
  v236 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v235 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v7);
  v232 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v231 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v10);
  v262 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  v260 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v259 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v17);
  v241 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v246 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v22);
  v257 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v242 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v36);
  v245 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v244 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  OUTLINED_FUNCTION_36(v42);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  v45 = &v212 - v44;
  v46 = sub_21700BBA4();
  OUTLINED_FUNCTION_1();
  v254 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  OUTLINED_FUNCTION_36(v52);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  v55 = &v212 - v54;
  v56 = sub_21700BDB4();
  OUTLINED_FUNCTION_1();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v212 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for TrailingSwipeActions();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v63);
  sub_216681B04(v3, v55, &qword_27CAB8A70);
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    (*(v12 + 8))(v265, v262);
    sub_216697664(v264, &qword_27CAB81E0);
    sub_216697664(v3, &qword_27CAB8A70);
    v64 = v55;
    v65 = &qword_27CAB8A70;
  }

  else
  {
    v229 = v3;
    v230 = v12;
    (*(v58 + 32))(v61, v55, v56);
    v66 = v264;
    sub_216681B04(v264, v45, &qword_27CAB81E0);
    OUTLINED_FUNCTION_40_18();
    if (!v67)
    {
      v71 = v254;
      v72 = *(v254 + 32);
      v73 = v253;
      v215 = v254 + 32;
      v214 = v72;
      v72(v253, v45, v46);
      v74 = v261;
      (*(v58 + 16))(v261, v61, v56);
      v75 = *(v71 + 16);
      v213 = *(v266 + 20);
      v218 = v46;
      v75(v74 + v213, v73, v46);
      v227 = sub_217006784();
      v228 = v76;
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      inited = swift_initStackObject();
      v238 = xmmword_217013DA0;
      *(inited + 16) = xmmword_217013DA0;
      *(inited + 32) = 0x72466574656C6564;
      *(inited + 40) = 0xEA00000000006D6FLL;
      v78 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0x7972617262694CLL;
      *(inited + 56) = 0xE700000000000000;
      sub_21700E384();
      v79 = v248;
      OUTLINED_FUNCTION_38_2();
      v80 = v241;
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v241);
      sub_21700D6F4();
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      v268 = v216;
      OUTLINED_FUNCTION_62_10();
      v84 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v84;
      OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_45_21();
      v85 = v272;
      v268 = v78;
      OUTLINED_FUNCTION_38_23(0x62694C6F54646461);
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v85;
      OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19();
      v86 = v272;
      v87 = v237;
      sub_216681B04(v79, v237, &qword_27CABA820);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v80);
      if (EnumTagSinglePayload == 1)
      {
        v89 = v80;
        sub_216697664(v87, &qword_27CABA820);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v90 = v233;
        v91(v233, v87, v80);
        v92 = sub_217005DE4();
        v268 = v78;
        OUTLINED_FUNCTION_12_47(v92, v93);
        swift_isUniquelyReferenced_nonNull_native();
        v272 = v86;
        OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17();
        v86 = v272;
        v94 = v90;
        v89 = v80;
        (*(v79 + 8))(v94, v80);
      }

      v95 = v259;
      v96 = v242;
      v219 = v61;
      v220 = v58;
      v221 = v56;
      if (qword_280E46040 != -1)
      {
        OUTLINED_FUNCTION_19_9();
      }

      v97 = sub_21700CF84();
      v98 = __swift_project_value_buffer(v97, qword_280E73DB0);
      v99 = v258;
      v242 = v98;
      MEMORY[0x21CE9DD70](v227, v228, 0x6E6F74747562, 0xE600000000000000, v86);

      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v101 = (v95[80] + 32) & ~v95[80];
      v102 = v101 + *(v95 + 9);
      v227 = v95[80];
      v233 = v100;
      v226 = v102;
      v103 = swift_allocObject();
      v104 = OUTLINED_FUNCTION_19_38(v103);
      v105 = *(v95 + 2);
      v237 = v101;
      v107 = v106 + v101;
      v108 = v260;
      v225 = (v95 + 16);
      v224 = v105;
      v105(v107, v99, v260, v104);
      v109 = OUTLINED_FUNCTION_53_16();
      v110 = v249;
      v111 = v257;
      v223 = v112;
      v222 = v113;
      v113(v109, v249, v257);
      sub_21700D244();
      v114 = *(v95 + 1);
      v259 = v95 + 8;
      v228 = v114;
      v114(v99, v108);
      v249 = *(v96 + 8);
      (v249)(v110, v111);
      v115 = OUTLINED_FUNCTION_59_12(&v270);
      sub_216697664(v115, v116);
      sub_217006784();
      v117 = swift_initStackObject();
      OUTLINED_FUNCTION_19_38(v117);
      v118[4] = 0x72466574656C6564;
      v118[5] = 0xEA00000000006D6FLL;
      v119 = MEMORY[0x277D837D0];
      v118[9] = MEMORY[0x277D837D0];
      v118[6] = 0x7972617262694CLL;
      v118[7] = 0xE700000000000000;
      sub_21700E384();
      v120 = v250;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v121, v122, v123, v89);
      sub_21700D6F4();
      OUTLINED_FUNCTION_58_15(v216);
      OUTLINED_FUNCTION_62_10();
      v124 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v124;
      OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_45_21();
      v125 = v272;
      v268 = v119;
      *&v267 = 0x6574656C6564;
      *(&v267 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v267, v273);
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v125;
      OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19();
      v126 = v272;
      v127 = v239;
      sub_216681B04(v120, v239, &qword_27CABA820);
      OUTLINED_FUNCTION_40_18();
      if (v67)
      {
        sub_216697664(v127, &qword_27CABA820);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v128 = v234;
        v129(v234, v127, v89);
        sub_217005DE4();
        OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12_47(v130, v131);
        swift_isUniquelyReferenced_nonNull_native();
        v272 = v126;
        OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17();
        off_27CABA828(v128, v89);
      }

      v132 = v258;
      v133 = OUTLINED_FUNCTION_29_30();
      MEMORY[0x21CE9DD70](v133);

      v134 = OUTLINED_FUNCTION_34_24();
      OUTLINED_FUNCTION_19_38(v134);
      v135 = v260;
      OUTLINED_FUNCTION_56_16();
      v136();
      OUTLINED_FUNCTION_55_16();
      v137();
      sub_21700D244();
      v228(v132, v135);
      v138 = OUTLINED_FUNCTION_97();
      v249(v138);
      v139 = OUTLINED_FUNCTION_59_12(&v271);
      sub_216697664(v139, v140);
      sub_217006784();
      v141 = v251;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v142, v143, v144, v89);
      sub_21700D6F4();
      OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_38_23(0x64616F6C6E776F64);
      v145 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v145;
      OUTLINED_FUNCTION_1_120();
      OUTLINED_FUNCTION_44_19();
      v146 = v272;
      v147 = v240;
      sub_216681B04(v141, v240, &qword_27CABA820);
      OUTLINED_FUNCTION_40_18();
      if (v67)
      {
        sub_216697664(v147, &qword_27CABA820);
      }

      else
      {
        OUTLINED_FUNCTION_18_37();
        v148 = OUTLINED_FUNCTION_53_16();
        v149(v148, v147, v89);
        sub_217005DE4();
        OUTLINED_FUNCTION_58_15(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12_47(v150, v151);
        swift_isUniquelyReferenced_nonNull_native();
        v272 = v146;
        OUTLINED_FUNCTION_1_120();
        OUTLINED_FUNCTION_50_17();
        off_27CABA828(&unk_217018CE0, v89);
      }

      v152 = v229;
      v153 = v247;
      v154 = v258;
      v155 = OUTLINED_FUNCTION_29_30();
      MEMORY[0x21CE9DD70](v155);

      v156 = OUTLINED_FUNCTION_34_24();
      OUTLINED_FUNCTION_19_38(v156);
      v157 = v260;
      OUTLINED_FUNCTION_56_16();
      v158();
      v159 = v252;
      v160 = v257;
      OUTLINED_FUNCTION_55_16();
      v161();
      sub_21700D244();
      sub_216697664(v264, &qword_27CAB81E0);
      sub_216697664(v152, &qword_27CAB8A70);
      v228(v154, v157);
      (v249)(v159, v160);
      sub_216697664(v251, &qword_27CABA820);
      v162 = *(v220 + 8);
      v163 = v221;
      v162(v219, v221);
      v164 = v243;
      (*(v230 + 32))(v243, v265, v262);
      v165 = OUTLINED_FUNCTION_97();
      v167 = v166(v165);
      if (v167 == *MEMORY[0x277D2A3B8])
      {
        v168 = OUTLINED_FUNCTION_97();
        v169(v168);
        OUTLINED_FUNCTION_23_35(&v262);
        v170 = OUTLINED_FUNCTION_53_16();
        v171 = v236;
        v172(v170, v164, v236);
        OUTLINED_FUNCTION_35_28();
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0);
        *(v153 + 24) = v173;
        v174 = OUTLINED_FUNCTION_16_44(qword_280E43D68);
        OUTLINED_FUNCTION_60_12(v174);
        v175 = *(v159 + 16);
        OUTLINED_FUNCTION_22_13();
        v175();
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8);
        OUTLINED_FUNCTION_39_19(v176);
        v177 = OUTLINED_FUNCTION_17_45();
        (qword_27CABF6B0)(v177);
        v178 = OUTLINED_FUNCTION_21_39();
        OUTLINED_FUNCTION_22_13();
        v175();
        swift_storeEnumTagMultiPayload();
        v179 = OUTLINED_FUNCTION_42_24();
        (qword_27CABF6B0)(v179);
        v180 = OUTLINED_FUNCTION_15_47(&v261);
        v181(v180);
        v182 = OUTLINED_FUNCTION_30_32();
        v183(v182);
        (*(v159 + 24))(v163, v178);
        v184 = OUTLINED_FUNCTION_33_25();
        v185 = v184;
        v186 = &v269;
      }

      else
      {
        if (v167 != *MEMORY[0x277D2A3F8])
        {
          v204 = v261;
          v205 = *(v244 + 8);
          v205(v153, v245);
          v206 = OUTLINED_FUNCTION_59_12(&v274);
          (v205)(v206);
          v207 = OUTLINED_FUNCTION_59_12(v273 + 8);
          (v205)(v207);
          v208 = *(v254 + 8);
          v209 = v218;
          v208(v253, v218);
          v210 = OUTLINED_FUNCTION_97();
          v211(v210);
          v162(v204, v163);
          v208(v204 + v213, v209);
          goto LABEL_7;
        }

        v187 = OUTLINED_FUNCTION_97();
        v188(v187);
        OUTLINED_FUNCTION_23_35(&v256);
        v189 = OUTLINED_FUNCTION_53_16();
        v171 = v232;
        v190(v189, v164, v232);
        OUTLINED_FUNCTION_35_28();
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688);
        *(v153 + 24) = v173;
        v191 = OUTLINED_FUNCTION_16_44(&qword_280E43D60);
        OUTLINED_FUNCTION_60_12(v191);
        v192 = *(v159 + 16);
        OUTLINED_FUNCTION_22_13();
        v192();
        v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690);
        OUTLINED_FUNCTION_39_19(v193);
        v194 = OUTLINED_FUNCTION_17_45();
        (qword_27CABF688)(v194);
        v195 = OUTLINED_FUNCTION_21_39();
        OUTLINED_FUNCTION_22_13();
        v192();
        swift_storeEnumTagMultiPayload();
        v196 = OUTLINED_FUNCTION_42_24();
        (qword_27CABF688)(v196);
        v197 = OUTLINED_FUNCTION_15_47(&v255);
        v198(v197);
        v199 = OUTLINED_FUNCTION_30_32();
        v200(v199);
        (*(v159 + 24))(v163, v195);
        v184 = OUTLINED_FUNCTION_33_25();
        v185 = v184;
        v186 = &v263;
      }

      v201 = v266;
      v264(v184, *(v186 - 32), v171);
      v202 = v261;
      swift_storeEnumTagMultiPayload();
      (v259)(v185 + *(v173 + 44), v255, v153);
      sub_2166A0F18(&v267, v202 + *(v201 + 32));
      v203 = v263;
      sub_216AE26B0(v202, v263);
      __swift_storeEnumTagSinglePayload(v203, 0, 1, v201);
      sub_216AE2714(v202);
      goto LABEL_8;
    }

    (*(v230 + 8))(v265, v262);
    sub_216697664(v66, &qword_27CAB81E0);
    sub_216697664(v229, &qword_27CAB8A70);
    (*(v58 + 8))(v61, v56);
    v64 = v45;
    v65 = &qword_27CAB81E0;
  }

  sub_216697664(v64, v65);
LABEL_7:
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v266);
LABEL_8:
  OUTLINED_FUNCTION_26();
}

void sub_216AE13B8()
{
  OUTLINED_FUNCTION_49();
  v73 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2230);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = (&v69 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2238);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v72 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_4();
  v71 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v70 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v69 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v74 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  sub_216681B04(v1 + 80, &v75, &qword_27CAB6DB0);
  if (v77)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = *(v0 + 48);
    *(v5 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_43_24();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(KeyPath);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE2E5C;
    v5[6] = 0;
    v26 = [objc_opt_self() systemOrangeColor];
    v27 = sub_21700AC44();
    swift_getKeyPath();
    v75 = v27;
    v28 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v28);
    v29 = sub_216983738(11);
    v0 = v30;
    v75 = v29;
    v76 = v30;
    sub_216AE29B8();
    sub_2167B2E14();
    OUTLINED_FUNCTION_48_18();

    sub_216697664(v5, &qword_27CAC2230);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v32 = v19;
    v33 = 0;
  }

  else
  {
    sub_216697664(&v75, &qword_27CAB6DB0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v32 = v19;
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  sub_216681B04(v1 + 40, &v75, &qword_27CAB6DB0);
  if (v77)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = *(v0 + 48);
    *(v5 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_43_24();
    v39 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v39);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE1B20;
    v5[6] = 0;
    v40 = [objc_opt_self() systemIndigoColor];
    v41 = sub_21700AC44();
    swift_getKeyPath();
    v75 = v41;
    v42 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v42);
    v43 = sub_216983738(194);
    v0 = v44;
    v75 = v43;
    v76 = v44;
    sub_216AE29B8();
    sub_2167B2E14();
    v45 = v74;
    OUTLINED_FUNCTION_48_18();

    sub_216697664(v5, &qword_27CAC2230);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v47 = v45;
    v48 = 0;
  }

  else
  {
    sub_216697664(&v75, &qword_27CAB6DB0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v47 = v74;
    v48 = 1;
  }

  __swift_storeEnumTagSinglePayload(v47, v48, 1, v46);
  v49 = v69;
  sub_216681B04(v1, &v75, &qword_27CAB6DB0);
  if (v77)
  {
    OUTLINED_FUNCTION_37_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250);
    OUTLINED_FUNCTION_46_20();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    v54 = *(v0 + 48);
    *(v5 + v54) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    OUTLINED_FUNCTION_43_24();
    v55 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v55);
    v5[7] = 0;
    v5[8] = 0;
    v5[5] = sub_216AE2E5C;
    v5[6] = 0;
    v56 = [objc_opt_self() systemOrangeColor];
    v57 = sub_21700AC44();
    swift_getKeyPath();
    v75 = v57;
    v58 = sub_2170083D4();
    OUTLINED_FUNCTION_36_26(v58);
    v75 = sub_216983738(193);
    v76 = v59;
    sub_216AE29B8();
    sub_2167B2E14();
    OUTLINED_FUNCTION_48_18();

    sub_216697664(v5, &qword_27CAC2230);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v61 = v49;
    v62 = 0;
  }

  else
  {
    sub_216697664(&v75, &qword_27CAB6DB0);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2240);
    v61 = v49;
    v62 = 1;
  }

  __swift_storeEnumTagSinglePayload(v61, v62, 1, v60);
  v63 = v70;
  OUTLINED_FUNCTION_49_20(v19, v70);
  v64 = v74;
  v65 = v71;
  OUTLINED_FUNCTION_49_20(v74, v71);
  v66 = v72;
  OUTLINED_FUNCTION_49_20(v49, v72);
  v67 = v73;
  OUTLINED_FUNCTION_49_20(v63, v73);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2248);
  OUTLINED_FUNCTION_49_20(v65, v67 + *(v68 + 48));
  OUTLINED_FUNCTION_49_20(v66, v67 + *(v68 + 64));
  OUTLINED_FUNCTION_47_21(v49);
  OUTLINED_FUNCTION_47_21(v64);
  OUTLINED_FUNCTION_47_21(v19);
  OUTLINED_FUNCTION_47_21(v66);
  OUTLINED_FUNCTION_47_21(v65);
  OUTLINED_FUNCTION_47_21(v63);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AE1B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

void sub_216AE1B64()
{
  OUTLINED_FUNCTION_49();
  v130 = v2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2268);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v119 = v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2270);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v116 = v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2278);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v117 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  v118 = v10;
  v112 = sub_21700BBA4();
  OUTLINED_FUNCTION_1();
  v111 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2280);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v114 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  v123 = v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2288);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v126 = v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2250);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v121 = v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2290);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v122 = v24;
  v25 = sub_21700BDB4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_4();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v110 - v31;
  v33 = v27[2];
  v129 = v0;
  v120 = v33;
  (v33)(&v110 - v31, v0, v25, v30);
  v34 = v27[11];
  v35 = v34(v32, v25);
  v36 = *MEMORY[0x277D2B120];
  v37 = v27[1];
  v37(v32, v25);
  if (v35 == v36)
  {
    v38 = type metadata accessor for TrailingSwipeActions();
    v39 = v121;
    sub_2167B7D58(v129 + *(v38 + 28), v121);
    v40 = v128;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = *(v40 + 48);
    *(v39 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(KeyPath);
    v39[7] = 0;
    v39[8] = 0;
    v39[5] = sub_216AE25AC;
    v39[6] = 0;
    v131 = sub_216983738(8);
    v132 = v47;
    OUTLINED_FUNCTION_51();
    sub_2166D9530(v48, v49);
    sub_2167B2E14();
    v50 = v122;
    sub_21700A6B4();

    OUTLINED_FUNCTION_51();
    sub_216697664(v51, v52);
    sub_216681B04(v50, v126, &qword_27CAC2290);
    swift_storeEnumTagMultiPayload();
    sub_216AE2B80();
    OUTLINED_FUNCTION_8_2();
    sub_2166D9530(v53, v54);
    v55 = v130;
    sub_217009554();
    v56 = v50;
    v57 = &qword_27CAC2290;
LABEL_9:
    sub_216697664(v56, v57);
    v88 = 0;
    goto LABEL_10;
  }

  v58 = v128;
  v120(v1, v129, v25);
  v59 = OUTLINED_FUNCTION_98();
  v60 = (v34)(v59);
  v61 = *MEMORY[0x277D2B118];
  v62 = OUTLINED_FUNCTION_98();
  (v37)(v62);
  v63 = v60 == v61;
  v55 = v130;
  if (v63)
  {
    v64 = type metadata accessor for TrailingSwipeActions();
    v65 = v129;
    (*(v111 + 16))(v110, v129 + v64[5], v112);
    v66 = OUTLINED_FUNCTION_98();
    v68 = v67(v66);
    v69 = *MEMORY[0x277D2AFE0];
    v70 = OUTLINED_FUNCTION_98();
    v71(v70);
    if (v68 == v69)
    {
      v72 = v116;
      sub_2167B7D58(v65 + v64[6], v116);
      sub_217007F04();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
      v77 = *(v58 + 48);
      *(v72 + v77) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
      swift_storeEnumTagMultiPayload();
      v78 = swift_getKeyPath();
      OUTLINED_FUNCTION_31_35(v78);
      v72[7] = 0;
      v72[8] = 0;
      v72[5] = sub_216AE25E0;
      v72[6] = 0;
      v79 = sub_21700AC94();
      v80 = swift_getKeyPath();
      v81 = v115;
      v82 = (v72 + *(v115 + 36));
      *v82 = v80;
      v82[1] = v79;
      v131 = sub_216983738(91);
      v132 = v83;
      sub_216AE2A9C();
      sub_2167B2E14();
      v84 = v118;
      OUTLINED_FUNCTION_61_12();

      sub_216697664(v72, &qword_27CAC2270);
      v85 = v123;
      sub_216AE2CB0(v84, v123);
      v86 = 0;
      v87 = v126;
    }

    else
    {
      v86 = 1;
      v87 = v126;
      v84 = v118;
      v85 = v123;
      v81 = v115;
      v72 = v116;
    }

    __swift_storeEnumTagSinglePayload(v85, v86, 1, v113);
    sub_2167B7D58(v65 + v64[8], v72);
    v89 = v85;
    sub_217007F04();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v94 = *(v58 + 48);
    *(v72 + v94) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v95 = swift_getKeyPath();
    OUTLINED_FUNCTION_31_35(v95);
    v72[7] = 0;
    v72[8] = 0;
    v72[5] = sub_216AE2620;
    v72[6] = 0;
    v96 = sub_21700AC84();
    v97 = swift_getKeyPath();
    v98 = (v72 + *(v81 + 36));
    *v98 = v97;
    v98[1] = v96;
    v131 = sub_216983738(71);
    v132 = v99;
    sub_216AE2A9C();
    sub_2167B2E14();
    OUTLINED_FUNCTION_61_12();

    sub_216697664(v72, &qword_27CAC2270);
    v100 = v114;
    sub_216681B04(v89, v114, &qword_27CAC2280);
    v101 = v117;
    sub_216681B04(v84, v117, &qword_27CAC2278);
    v102 = v119;
    sub_216681B04(v100, v119, &qword_27CAC2280);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC22A8);
    sub_216681B04(v101, v102 + *(v103 + 48), &qword_27CAC2278);
    sub_216697664(v101, &qword_27CAC2278);
    sub_216697664(v100, &qword_27CAC2280);
    sub_216681B04(v102, v87, &qword_27CAC2268);
    swift_storeEnumTagMultiPayload();
    sub_216AE2B80();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_51();
    sub_2166D9530(v104, v105);
    v106 = v130;
    sub_217009554();
    OUTLINED_FUNCTION_51();
    sub_216697664(v107, v108);
    sub_216697664(v84, &qword_27CAC2278);
    v56 = v123;
    v57 = &qword_27CAC2280;
    v55 = v106;
    goto LABEL_9;
  }

  v88 = 1;
LABEL_10:
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2298);
  __swift_storeEnumTagSinglePayload(v55, v88, 1, v109);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216AE25AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216AE25E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216AE2620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TrailingSwipeActions()
{
  result = qword_280E3ADC0;
  if (!qword_280E3ADC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216AE26B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrailingSwipeActions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AE2714(uint64_t a1)
{
  v2 = type metadata accessor for TrailingSwipeActions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216AE2770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AE2808()
{
  result = sub_21700BDB4();
  if (v1 <= 0x3F)
  {
    result = sub_21700BBA4();
    if (v2 <= 0x3F)
    {
      result = sub_21668B174();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216AE28AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216AE2900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_216AE29B8()
{
  result = qword_27CAC2258;
  if (!qword_27CAC2258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2230);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250);
    sub_2166D9530(&qword_27CAB7CD8, &qword_27CAB7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2258);
  }

  return result;
}

unint64_t sub_216AE2A9C()
{
  result = qword_27CAC22A0;
  if (!qword_27CAC22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2270);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22A0);
  }

  return result;
}

unint64_t sub_216AE2B80()
{
  result = qword_27CAC22B0;
  if (!qword_27CAC22B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2290);
    sub_2166D9530(&qword_27CAC2260, &qword_27CAC2250);
    sub_216AE2C68(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22B0);
  }

  return result;
}

uint64_t sub_216AE2C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216AE2CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216AE2D20()
{
  result = qword_27CAC22D0;
  if (!qword_27CAC22D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC22D8);
    sub_216AE2DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22D0);
  }

  return result;
}

unint64_t sub_216AE2DA4()
{
  result = qword_27CAC22E0;
  if (!qword_27CAC22E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2298);
    sub_216AE2B80();
    sub_2166D9530(&qword_27CAC22B8, &qword_27CAC2268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC22E0);
  }

  return result;
}

uint64_t sub_216AE2E98@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v28 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for MappedSection(0);
  v14 = *(v13 + 24);
  v15 = *(a9 + 16);
  v16 = *&a2[*(v13 + 32)];
  v17 = sub_21700DF14();
  v15(v37, v17, v16, &a2[v14], AssociatedTypeWitness, a9);
  v18 = (*(a9 + 24))(a3, v16, AssociatedTypeWitness, a9);
  v32 = v19;
  v33 = v18;
  v21 = v20;
  v31 = v22;
  v36 = a3;
  v23 = *a2;
  v24 = *(a2 + 1);
  v38[0] = v23;
  v38[1] = v24;
  v38[2] = 0;
  v38[3] = 0;
  v39 = 0;
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = *(v28 + 80);
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = *(v28 + 88);
  v25[7] = a9;
  v26 = sub_21700E984();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_216830064(&v36, v37, v33, v21, v32, v31, v38, a4, a8, sub_216AE32EC, v25, v26);
  return sub_21700DF14();
}

uint64_t sub_216AE30C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  (*(v5 + 16))(v7, a1, a2, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_2166C24DC(v11, AssociatedTypeWitness);
  v17 = *(v9 + 8);
  v17(v11, AssociatedTypeWitness);
  sub_2166C24DC(v15, AssociatedTypeWitness);
  return (v17)(v15, AssociatedTypeWitness);
}

uint64_t type metadata accessor for AlbumContextMenu()
{
  result = qword_280E415D8;
  if (!qword_280E415D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AE3370()
{
  sub_21700C1E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167B84AC();
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216AE3600(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 24);
  v6 = *(v5 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v6);
  v7 = sub_216AE3FF0(a3 & 1);
  v8 = sub_21700E4D4();
  [v7 removeObjectForKey_];

  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_216AE3760(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_21700F7B4() format:200 options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_217005FB4();
    sub_21677A524(v5, v6);

    return 0;
  }

  else
  {
    v8 = v4;
    v7 = sub_217005D34();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_216AE3860()
{
  swift_getObjectType();
  sub_216685F4C(0, &qword_280E29AF8);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

id sub_216AE3900(void *a1, void *a2, void *a3)
{
  sub_216AE4924(a2);
  if (v7)
  {
    sub_21700DF14();
    LOBYTE(v8) = sub_216AE3E00();
    if (v8 != 2)
    {
      goto LABEL_10;
    }
  }

  if (qword_27CAB5D08 != -1)
  {
    swift_once();
  }

  v9 = sub_217007CA4();
  __swift_project_value_buffer(v9, qword_27CB22990);
  v10 = a2;
  v11 = sub_217007C84();
  v12 = sub_21700ED84();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_216679000, v11, v12, "Scope must be of type string and be serializable: '%{public}@'", v13, 0xCu);
    sub_21669987C(v14, &qword_27CABF880);
    MEMORY[0x21CEA1440](v14, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  v8 = [objc_opt_self() valueWithNullInContext_];
  a3 = v8;
  if (v8)
  {
    return a3;
  }

  __break(1u);
LABEL_10:
  v16 = v8;
  sub_216AE4924(a3);
  if (!v17)
  {
    goto LABEL_15;
  }

  v35 = v3;
  type metadata accessor for Persistence();
  sub_21700D4D4();
  sub_21700E094();
  v18 = *(v33 + 24);
  v19 = *(v18 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v19);
  v20 = sub_216AE3FF0(v16);
  v21 = sub_21700E4D4();
  v22 = [v20 objectForKey_];

  if (!v22)
  {

    v33 = 0u;
    v34 = 0u;
    os_unfair_lock_unlock(*(v18 + 16));

LABEL_22:
    result = [objc_opt_self() valueWithNullInContext_];
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    a3 = result;

    sub_21669987C(&v33, &unk_27CABF7A0);
    return a3;
  }

  sub_21700F1E4();

  swift_unknownObjectRelease();
  os_unfair_lock_unlock(*(v18 + 16));

  if (!*(&v34 + 1))
  {
    goto LABEL_22;
  }

  a3 = sub_216685F4C(0, &qword_280E29B58);
  sub_216697C8C(&v33, v32);
  v23 = a1;
  result = sub_2166F1E10(v32, a1);
  if (result)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_15:
  if (qword_27CAB5D08 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_27CB22990);
  v26 = a3;
  v27 = sub_217007C84();
  v28 = sub_21700ED84();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_216679000, v27, v28, "key must be of type string: '%{public}@'", v29, 0xCu);
    sub_21669987C(v30, &qword_27CABF880);
    MEMORY[0x21CEA1440](v30, -1, -1);
    MEMORY[0x21CEA1440](v29, -1, -1);
  }

  result = [objc_opt_self() valueWithNullInContext_];
  if (result)
  {
    a3 = result;

    return a3;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_216AE3E00()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216AE3F44(char a1)
{
  if (a1)
  {
    return 0x656369766564;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_216AE3F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216AE3E00();
  *a1 = result;
  return result;
}

uint64_t sub_216AE3FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216AE3F44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_216AE3FF0(char a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v1 + 24) + 16));
  v4 = sub_216AE4720(a1 & 1);
  v6 = v5;
  swift_beginAccess();
  v7 = sub_21693556C(v4, v6, *(v1 + 16));
  if (v7)
  {
    v8 = v7;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    sub_21700DF14();
    v10 = sub_2166AA548(v4, v6);
    if (!v10)
    {
      v10 = [objc_opt_self() standardUserDefaults];
    }

    v11 = v10;
    swift_beginAccess();
    v8 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 16);
    sub_21693A948();
    *(v2 + 16) = v13;

    swift_endAccess();
  }

  return v8;
}

void sub_216AE4144(void *a1, uint64_t a2, char a3)
{
  v5 = sub_216AE3760(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_21700E4D4();
    sub_2166A6DF8(a1, v28);
    v8 = swift_allocObject();
    sub_2166EF9C4(v28, (v8 + 16));
    *(v8 + 48) = v6;
    v27[4] = sub_216AE4AE4;
    v27[5] = v8;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_216AE4684;
    v27[3] = &block_descriptor_20;
    v9 = _Block_copy(v27);
    v10 = v6;

    AnalyticsSendEventLazy();
    _Block_release(v9);

    if (qword_27CAB5D10 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CAC22E8);
    sub_2166A6DF8(a1, v27);
    v12 = v6;
    v13 = sub_217007C84();
    v14 = sub_21700ED84();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v15 = 136446466;
      sub_2166A6DF8(v27, v28);
      v18 = sub_21700E594();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v21 = sub_2166A85FC(v18, v20, &v29);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2114;
      v22 = v6;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      *v16 = v23;
      _os_log_impl(&dword_216679000, v13, v14, "Failed to serialize set storage item.  Dropping item: '%{public}s' Error: '%{public}@'", v15, 0x16u);
      sub_21669987C(v16, &qword_27CABF880);
      MEMORY[0x21CEA1440](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x21CEA1440](v17, -1, -1);
      MEMORY[0x21CEA1440](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }
  }

  else
  {
    v24 = sub_216AE3FF0(a3 & 1);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = sub_21700F7B4();
    v26 = sub_21700E4D4();
    [v24 setObject:v25 forKey:v26];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_216AE44D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2318);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000217087FD0;
  sub_216685F4C(0, qword_27CABC980);
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0x27203A6D657469, 0xE700000000000000);
  sub_21700F544();
  MEMORY[0x21CE9F490](0x3A726F7272452027, 0xEA00000000002720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  sub_21700F544();
  MEMORY[0x21CE9F490](39, 0xE100000000000000);
  *(inited + 48) = sub_2169130B0();
  sub_216685F4C(0, &qword_27CAC2310);
  return sub_21700E384();
}

id sub_216AE4684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_216685F4C(0, &qword_27CAC2310);
    v4 = sub_21700E344();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_216AE4720(char a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 24) + 16));
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  sub_2166C0578(&v6);
  if (!v7 || (v3 = *(&v6 + 1), v4 = v6, sub_21700DF14(), sub_21669987C(&v6, &qword_27CAC5980), !v3))
  {

    v4 = 48;
  }

  if (a1)
  {

    return 0x656369766564;
  }

  return v4;
}

uint64_t sub_216AE4830(uint64_t a1, uint64_t *a2)
{
  v3 = sub_217007CA4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_217007C94();
}

uint64_t sub_216AE48A8()
{

  return v0;
}

uint64_t sub_216AE48D0()
{
  sub_216AE48A8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_216AE4924(void *a1)
{
  v1 = [a1 toString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for Persistence.Scope(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216AE4A68()
{
  result = qword_27CAC2308;
  if (!qword_27CAC2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2308);
  }

  return result;
}

uint64_t sub_216AE4AF0()
{
  v1 = v0;
  sub_217005BF4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v3 = sub_217005C64();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  type metadata accessor for ScrollableParagraphView.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = (v12 - v11);
  sub_216AECDB8(v1, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_217005BE4();
    sub_216AEBA80(&qword_27CAC2518, MEMORY[0x277CC8B30]);
    v14 = sub_21700E714();
    (*(v5 + 8))(v9, v3);
  }

  else if (v13[1])
  {
    return *v13;
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_216AE4CDC()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76918];
  v2 = [v0 preferredFontForTextStyle_];

  qword_27CB229A8 = v2;
}

uint64_t sub_216AE4D48()
{
  type metadata accessor for ScrollableTextView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v3 = v2 - v1;
  sub_216AE4E70(v2 - v1);
  v4 = sub_217005C64();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_216AE4AF0();
  sub_216AEBA80(&qword_27CAC2510, type metadata accessor for ScrollableTextView);
  sub_2167B2E14();
  sub_21700A6B4();

  return sub_216AECD60(v3, type metadata accessor for ScrollableTextView);
}

uint64_t sub_216AE4E70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScrollableParagraphView.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216AECDB8(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_217005C64();
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  else
  {
    sub_216AE4F60(*v5, v5[1], a1);
  }
}

uint64_t sub_216AE4F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217005C34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217005CC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28[0] = v12;
    v28[16] = a1;
    v28[17] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
    swift_allocObject();
    sub_21700DF14();
    sub_217006564();
    v28[1] = a3;
    sub_217006554();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    v16 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v17 = qword_27CAB5D18;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_27CB229A8;
    v20 = sub_216685F4C(0, &qword_27CABB180);
    *(inited + 40) = v19;
    v21 = *MEMORY[0x277D740C0];
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    v22 = sub_216685F4C(0, &qword_280E29B48);
    v23 = qword_27CAB6118;
    v24 = v19;
    v25 = v21;
    if (v23 != -1)
    {
      swift_once();
    }

    v26 = sub_21700F0D4();
    *(inited + 104) = v22;
    *(inited + 80) = v26;
    type metadata accessor for Key(0);
    sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key);
    sub_21700E384();
    sub_217005CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277CC8B80], v6);
    sub_217005C24();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v28[0]);
  }

  else
  {

    return sub_217005C14();
  }
}

uint64_t sub_216AE5314(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v24 = a5;
  v9 = sub_217005BF4();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_217005C64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = 10.0;
  }

  else
  {
    v19 = *&a1;
  }

  if (a4)
  {
    v20 = 10.0;
  }

  else
  {
    v20 = *&a3;
  }

  sub_216683A80(v27, v14, &qword_27CABD478);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_216697664(v14, &qword_27CABD478);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_217005BE4();
    v21 = sub_216E9A4CC();
    (*(v25 + 8))(v11, v26);
    if ((v21 & 1) == 0)
    {
      [v24 sizeThatFits_];
      v19 = v22;
    }

    (*(v16 + 8))(v18, v15);
  }

  return *&v19;
}

id sub_216AE55B4()
{
  type metadata accessor for UIKitScrollableTextView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_216AE55F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_217005C64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216683A80(v2, v6, &qword_27CABD478);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_217005C14();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_216697664(v6, &qword_27CABD478);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_216AE5BC0(v10);
  return [a1 setNeedsLayout];
}

uint64_t sub_216AE57FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216AE5890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216AE5924()
{
  sub_216AEBA80(&qword_27CAC2548, type metadata accessor for ScrollableTextView);
  sub_2170094F4();
  __break(1u);
}

void sub_216AE597C()
{
  v1 = v0;
  v2 = sub_217005C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_216AEBA80(&qword_27CAC2360, MEMORY[0x277CC8C40]);
  v8 = sub_21700E494();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2368);
    sub_21700E3D4();
    swift_endAccess();
    sub_216685F4C(0, &qword_280E29CC8);
    v7(v5, v1 + v6, v2);
    v9 = sub_21700EEC4();
    v10 = sub_216AE60BC();
    v11 = v9;
    [v10 setAttributedText_];

    v12 = *(v1 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView);
    [v12 setAttributedText_];
  }
}

uint64_t sub_216AE5BC0(uint64_t a1)
{
  v3 = sub_217005C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_216AE597C();
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void sub_216AE5D1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v3, sel_willMoveToWindow_, a1);
  if (a1)
  {
    if (!*&v1[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView])
    {
      sub_216AE64A8();
    }
  }
}

double sub_216AE5DE8(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  return a1;
}

void sub_216AE5E94()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_216AE5F58()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for UIKitScrollableTextView(0);
  objc_msgSendSuper2(&v19, sel_safeAreaInsetsDidChange);
  v1 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  if (v1)
  {
    v2 = v1;
    [v2 contentInset];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 safeAreaInsets];
    if (v4 != v14 || v6 != v11 || v8 != v12 || v10 != v13)
    {
      [v0 safeAreaInsets];
      [v2 setContentInset_];
      [v2 contentOffset];
      if (v18 == 0.0)
      {
        [v2 adjustedContentInset];
        [v2 contentOffset];
        [v2 setContentOffset_];
      }
    }
  }
}

id sub_216AE60BC()
{
  v1 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView);
  }

  else
  {
    v4 = sub_216AE611C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_216AE611C()
{
  v1 = v0;
  v2 = sub_217005C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v6 setFont_];
  [v6 setEditable_];
  sub_216685F4C(0, &qword_280E29CC8);
  v7 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_attributedText;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  v8 = sub_21700EEC4();
  [v6 setAttributedText_];

  [v6 setTextAlignment_];
  [v6 setTextContainerInset_];
  v9 = v6;
  [v1 safeAreaInsets];
  [v9 setContentInset_];
  [v9 setContentInsetAdjustmentBehavior_];
  v10 = [v9 textContainer];
  [v10 setLineFragmentPadding_];

  [v9 setScrollEnabled_];
  v11 = v9;
  [v11 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2358);
  inited = swift_initStackObject();
  v13 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_217013DA0;
  v14 = *v13;
  *(inited + 32) = *v13;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondaryLabelColor];
  *(inited + 64) = sub_216685F4C(0, &qword_280E29B48);
  *(inited + 40) = v17;
  type metadata accessor for Key(0);
  sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key);
  v18 = sub_21700E384();
  sub_216AEB9BC(v18, v11);
  v19 = [v11 layer];

  [v19 setCornerRadius_];
  return v11;
}

void sub_216AE64A8()
{
  v1 = sub_216AE611C();
  v2 = *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView];
  *&v0[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = v1;
  v3 = v1;

  [v0 addSubview_];
  v4 = [v3 panGestureRecognizer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21701D830;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v4;
  *(v5 + 32) = [v6 initWithInteger_];
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_216685F4C(0, &unk_27CABF7E0);
  v7 = sub_21700E804();

  [v8 setAllowedTouchTypes_];

  [v0 addGestureRecognizer_];
}

id sub_216AE6620(double a1, double a2, double a3, double a4)
{
  sub_217005C14();
  *&v4[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = 0;
  v9 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_cachedFittedSize;
  type metadata accessor for CGSize(0);
  sub_216AEBA80(&qword_27CAC2370, type metadata accessor for CGSize);
  *&v4[v9] = sub_21700E384();
  v10 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_preferredFont;
  *&v4[v10] = [objc_opt_self() preferredFontForTextStyle_];
  *&v4[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for UIKitScrollableTextView(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_216AE6788(void *a1)
{
  sub_217005C14();
  *&v1[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_textView] = 0;
  v3 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_cachedFittedSize;
  type metadata accessor for CGSize(0);
  sub_216AEBA80(&qword_27CAC2370, type metadata accessor for CGSize);
  *&v1[v3] = sub_21700E384();
  v4 = OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView_preferredFont;
  *&v1[v4] = [objc_opt_self() preferredFontForTextStyle_];
  *&v1[OBJC_IVAR____TtC7MusicUIP33_5E55BD6998E5885F12992DFD4348C85023UIKitScrollableTextView____lazy_storage___sizingTextView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UIKitScrollableTextView(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_216AE68E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitScrollableTextView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_216AE69F4()
{
  result = sub_217005C64();
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

uint64_t sub_216AE6AAC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2420);
  return sub_216AE6B00(v1, a1 + *(v3 + 44));
}

uint64_t sub_216AE6B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v83 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2428);
  MEMORY[0x28223BE20](v91);
  v92 = &v83 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2430);
  MEMORY[0x28223BE20](v93);
  v95 = &v83 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2438);
  MEMORY[0x28223BE20](v94);
  v99 = &v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2440);
  MEMORY[0x28223BE20](v96);
  v100 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2448);
  MEMORY[0x28223BE20](v10);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v83 - v15;
  v17 = sub_217005C64();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2450);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v103 = a1;
  sub_216AE7568(v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CABD478);
    v30 = 1;
  }

  else
  {
    v88 = v10;
    v101 = v29;
    v89 = v26;
    (*(v18 + 32))(v23, v16, v17);
    v86 = v18;
    v31 = *(v18 + 16);
    v85 = v17;
    v31(v20, v23, v17);
    v87 = v20;
    v32 = sub_21700A164();
    v34 = v33;
    v36 = v35;
    v83 = type metadata accessor for ParagraphView(0);
    v37 = *(v103 + *(v83 + 24));
    v90 = v5;
    v84 = v23;
    if (!v37)
    {
      sub_217009D54();
    }

    v38 = sub_21700A094();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21678817C(v32, v34, v36 & 1);

    v45 = v92;
    v46 = &v92[*(v91 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2460) + 28);
    v48 = *MEMORY[0x277CE0B28];
    v49 = sub_21700A014();
    (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
    *v46 = swift_getKeyPath();
    *v45 = v38;
    *(v45 + 8) = v40;
    *(v45 + 16) = v42 & 1;
    *(v45 + 24) = v44;
    KeyPath = swift_getKeyPath();
    v51 = v95;
    sub_2167C5834(v45, v95, &qword_27CAC2428);
    v52 = v51 + *(v93 + 36);
    *v52 = KeyPath;
    *(v52 + 8) = 0;
    sub_21700B354();
    sub_217008BB4();
    v53 = v99;
    sub_2167C5834(v51, v99, &qword_27CAC2430);
    memcpy((v53 + *(v94 + 36)), __src, 0x70uLL);
    v54 = *(v103 + *(v83 + 20));
    v26 = v89;
    v29 = v101;
    v10 = v88;
    v55 = v86;
    if (!v54)
    {
      if (qword_27CAB6118 != -1)
      {
        swift_once();
      }

      v54 = qword_27CB22AA0;
    }

    v56 = *(v55 + 8);

    v56(v84, v85);
    v57 = swift_getKeyPath();
    v58 = v100;
    sub_2167C5834(v53, v100, &qword_27CAC2438);
    v59 = (v58 + *(v96 + 36));
    *v59 = v57;
    v59[1] = v54;
    v60 = *(v10 + 36);
    v61 = *MEMORY[0x277CE13D8];
    v62 = sub_21700B434();
    v63 = v97;
    (*(*(v62 - 8) + 104))(&v97[v60], v61, v62);
    sub_2167C5834(v58, v63, &qword_27CAC2440);
    v64 = v98;
    sub_2167C5834(v63, v98, &qword_27CAC2448);
    sub_2167C5834(v64, v29, &qword_27CAC2448);
    v30 = 0;
    v5 = v90;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v10);
  sub_216683A80(v103, v5, &qword_27CABBE20);
  v65 = type metadata accessor for ModalPresentationDescriptor();
  if (__swift_getEnumTagSinglePayload(v5, 1, v65) == 1)
  {
    sub_216697664(v5, &qword_27CABBE20);
    v66 = 0;
    v67 = 0;
LABEL_15:
    v79 = 0;
    v78 = 0;
    goto LABEL_16;
  }

  v67 = *(v5 + 7);
  v68 = v67;
  sub_216AECD60(v5, type metadata accessor for ModalPresentationDescriptor);
  if (!v67)
  {
    v66 = 0;
    goto LABEL_15;
  }

  v69 = v68;
  sub_217005C94();
  v70 = sub_21700A164();
  v72 = v71;
  v74 = v73;
  sub_217009E64();
  v101 = v29;
  v66 = sub_21700A094();
  v67 = v75;
  LODWORD(v103) = v76;
  v78 = v77;
  v29 = v101;

  sub_21678817C(v70, v72, v74 & 1);

  v79 = v103 & 1;
  sub_216777114(v66, v67, v103 & 1);
  sub_21700DF14();
LABEL_16:
  sub_216683A80(v29, v26, &qword_27CAC2450);
  v80 = v102;
  sub_216683A80(v26, v102, &qword_27CAC2450);
  v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2458) + 48));
  sub_2167770D0(v66, v67, v79, v78);
  sub_2167C4DF0(v66, v67, v79, v78);
  *v81 = v66;
  v81[1] = v67;
  v81[2] = v79;
  v81[3] = v78;
  sub_216697664(v29, &qword_27CAC2450);
  sub_2167C4DF0(v66, v67, v79, v78);
  return sub_216697664(v26, &qword_27CAC2450);
}

uint64_t sub_216AE7568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_216683A80(v2, v13 - v5, &qword_27CABBE20);
  v7 = type metadata accessor for ModalPresentationDescriptor();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CABBE20);
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v9 = *(v6 + 4);
  v8 = *(v6 + 5);
  sub_21700DF14();
  sub_216AECD60(v6, type metadata accessor for ModalPresentationDescriptor);
  if (!v8)
  {
    goto LABEL_5;
  }

  v13[0] = v9;
  v13[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBD88);
  swift_allocObject();
  sub_217006564();
  sub_217006554();

  v10 = 0;
LABEL_6:
  v11 = sub_217005C64();
  return __swift_storeEnumTagSinglePayload(a1, v10, 1, v11);
}

uint64_t sub_216AE76E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  sub_217008C14();
  OUTLINED_FUNCTION_16();
  v134 = v5;
  v135 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v133 = v7 - v6;
  v8 = sub_217008AD4();
  v106 = v8;
  OUTLINED_FUNCTION_16();
  v132 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v131 = v12 - v11;
  OUTLINED_FUNCTION_16();
  v129 = v13;
  v130 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_70(&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v18);
  v127 = *(a1 + 24);
  sub_21700F164();
  v19 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  OUTLINED_FUNCTION_2_3();
  v124 = v19;
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  v20 = sub_21700B0A4();
  OUTLINED_FUNCTION_10_56();
  WitnessTable = swift_getWitnessTable();
  v143 = v20;
  v144 = WitnessTable;
  OUTLINED_FUNCTION_9_62();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  OUTLINED_FUNCTION_2_3();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170083A4();
  sub_2170089F4();
  OUTLINED_FUNCTION_8_62();
  v148 = swift_getWitnessTable();
  v149 = MEMORY[0x277CE03F0];
  v125 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_3();
  sub_217008BC4();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v116 = *(a1 + 32);
  sub_21700F164();
  OUTLINED_FUNCTION_14_47();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v113 = sub_21700B084();
  OUTLINED_FUNCTION_7_1();
  v112 = swift_getWitnessTable();
  type metadata accessor for ActionButton();
  OUTLINED_FUNCTION_16();
  v119 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v24);
  OUTLINED_FUNCTION_6_2();
  v26 = v25;
  v107 = v25;
  v27 = swift_getWitnessTable();
  v104 = v27;
  OUTLINED_FUNCTION_5_72();
  v103 = sub_216AEBA80(v28, v29);
  v143 = v26;
  v144 = v8;
  v145 = v27;
  v146 = v103;
  v115 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v117 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v109 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v120 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8A60);
  v114 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v122 = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE0);
  v121 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v123 = v39;
  MEMORY[0x28223BE20](v40);
  v110 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_70(&v99 - v43);
  v44 = v2;
  v45 = (v2 + *(a1 + 80));
  v46 = v45[1];
  v47 = (v2 + *(a1 + 76));
  v48 = v47[1];
  v49 = (v2 + *(a1 + 88));
  v51 = *v49;
  v50 = v49[1];
  v52 = *(a1 + 96);
  *&v53 = *v47;
  v100 = v53;
  *&v53 = *v45;
  v99 = v53;
  v54 = type metadata accessor for PresentExpandedTextAction();
  v146 = v54;
  v147 = sub_216AEBA80(&qword_27CAC2470, type metadata accessor for PresentExpandedTextAction);
  v55 = __swift_allocate_boxed_opaque_existential_1(&v143);
  v56 = *(v54 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v57 + 16))(v55 + v56, v44 + v52);
  *&v58 = v99;
  *(&v58 + 1) = v46;
  *&v59 = v100;
  *(&v59 + 1) = v48;
  *v55 = v58;
  *(v55 + 1) = v59;
  v55[4] = v51;
  v55[5] = v50;
  v60 = sub_217007F04();
  v61 = v126;
  __swift_storeEnumTagSinglePayload(v126, 1, 1, v60);
  v62 = v129;
  v63 = v128;
  (*(v129 + 16))(v128, v44, a1);
  v64 = v62;
  v65 = (*(v62 + 80) + 64) & ~*(v62 + 80);
  v66 = swift_allocObject();
  v67 = v127;
  *(v66 + 16) = v124;
  *(v66 + 24) = v67;
  *(v66 + 32) = v116;
  *(v66 + 40) = *(a1 + 40);
  *(v66 + 56) = *(a1 + 56);
  (*(v64 + 32))(v66 + v65, v63, a1);
  v68 = v102;
  sub_21695FF44(&v143, v61, sub_216AEC89C, v66, 0, 0, v102);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v69 = v131;
  sub_217008AC4();
  v70 = v101;
  v71 = v107;
  v72 = v106;
  v73 = v104;
  v74 = v103;
  sub_21700A364();
  (*(v132 + 8))(v69, v72);
  OUTLINED_FUNCTION_67();
  v75(v68, v71);
  v76 = (v44 + *(a1 + 100));
  v77 = *v76;
  v78 = *(v76 + 1);
  LOBYTE(v143) = v77;
  v144 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  v143 = v71;
  v144 = v72;
  v145 = v73;
  v146 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v108;
  v81 = OpaqueTypeMetadata2;
  sub_21700A604();
  OUTLINED_FUNCTION_67();
  v82(v70, v81);
  v83 = v133;
  sub_217008BD4();
  v141 = OpaqueTypeConformance2;
  v142 = MEMORY[0x277CE0770];
  v84 = v109;
  v85 = swift_getWitnessTable();
  v86 = v105;
  sub_21700A634();
  (*(v134 + 8))(v83, v135);
  OUTLINED_FUNCTION_67();
  v87(v80, v84);
  sub_21700ACD4();
  v88 = sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
  v139 = v85;
  v140 = v88;
  v89 = v114;
  v90 = swift_getWitnessTable();
  v91 = v110;
  sub_21700A994();

  OUTLINED_FUNCTION_67();
  v92(v86, v89);
  v93 = sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
  v137 = v90;
  v138 = v93;
  v94 = v121;
  v95 = swift_getWitnessTable();
  v96 = v118;
  sub_2166C24DC(v91, v94, v95);
  v97 = *(v123 + 8);
  v97(v91, v94);
  sub_2166C24DC(v96, v94, v95);
  return (v97)(v96, v94);
}

uint64_t sub_216AE833C()
{
  sub_2170093C4();
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_21700B0A4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217008BC4();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  swift_getWitnessTable();
  return sub_21700B074();
}

uint64_t sub_216AE865C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v127 = a7;
  v124 = a6;
  v120 = a5;
  v118 = a1;
  v114 = a8;
  v101 = *(a4 - 1);
  MEMORY[0x28223BE20](a1);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v95 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - v15;
  v113 = sub_21700F164();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v123 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v95 - v18;
  MEMORY[0x28223BE20](v19);
  v112 = &v95 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  v21 = sub_2170089F4();
  v22 = sub_2170089F4();
  v107 = v21;
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v23 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  v134 = v23;
  v135 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  sub_2170089F4();
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x277CE03F0];
  swift_getWitnessTable();
  v25 = sub_217008BC4();
  v108 = v22;
  v103 = v25;
  v121 = sub_2170089F4();
  v116 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v126 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v119 = &v95 - v28;
  v106 = *(a3 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v97 = &v95 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  v37 = sub_21700F164();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v95 - v42;
  MEMORY[0x28223BE20](v44);
  v125 = &v95 - v45;
  v134 = a2;
  v135 = a3;
  v46 = v124;
  v122 = a4;
  v136 = a4;
  v137 = v120;
  v138 = v124;
  v139 = v127;
  v102 = type metadata accessor for ExpandableTextView();
  v47 = *(v38 + 16);
  v48 = &v118[*(v102 + 68)];
  v105 = v38 + 16;
  v104 = v47;
  v47(v43, v48, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, a3);
  v115 = v38;
  if (EnumTagSinglePayload == 1)
  {
    v50 = *(v38 + 8);
    v50(v43, v37);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, a3);
    sub_2168D4034(v40, v125);
    v106 = v50;
    v50(v40, v37);
  }

  else
  {
    v51 = v106;
    v96 = *(v106 + 4);
    v96(v36, v43, a3);
    v52 = v97;
    sub_2166C24DC(v36, a3, v46);
    v53 = *(v51 + 1);
    v53(v36, a3);
    sub_2166C24DC(v52, a3, v46);
    v53(v52, a3);
    v96(v40, v31, a3);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, a3);
    sub_2168D4034(v40, v125);
    v106 = *(v115 + 8);
    v106(v40, v37);
  }

  v117 = v40;
  v109 = v37;
  v54 = v126;
  v55 = v102;
  v56 = v118;
  sub_216AE9414(1, v102, v126);
  v57 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638);
  v133[7] = v120;
  v133[8] = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_216AEC978();
  v133[5] = v58;
  v133[6] = v59;
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v133[3] = v60;
  v133[4] = v61;
  v62 = v121;
  v63 = swift_getWitnessTable();
  sub_2166C24DC(v54, v62, v63);
  v64 = *(v116 + 8);
  v120 = v116 + 8;
  v108 = v64;
  v64(v54, v62);
  v65 = v111;
  v66 = &v56[*(v55 + 72)];
  v67 = v110;
  v68 = v113;
  v118 = *(v111 + 16);
  (v118)(v110, v66, v113);
  v69 = __swift_getEnumTagSinglePayload(v67, 1, v122);
  v70 = v127;
  if (v69 == 1)
  {
    v71 = *(v65 + 8);
    v111 = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v67, v68);
    v72 = v123;
    __swift_storeEnumTagSinglePayload(v123, 1, 1, v122);
    v73 = v112;
    sub_2168D4034(v72, v112);
    v122 = v71;
    v71(v72, v68);
  }

  else
  {
    v74 = v101;
    v75 = v65;
    v107 = v63;
    v76 = *(v101 + 32);
    v77 = v67;
    v78 = v98;
    v79 = v122;
    v76(v98, v77, v122);
    v80 = v99;
    sub_2166C24DC(v78, v79, v70);
    v81 = *(v74 + 8);
    v81(v78, v79);
    v82 = v100;
    sub_2166C24DC(v80, v79, v127);
    v81(v80, v79);
    v83 = v123;
    v76(v123, v82, v79);
    v63 = v107;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v79);
    v73 = v112;
    sub_2168D4034(v83, v112);
    v84 = *(v75 + 8);
    v111 = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v122 = v84;
    v84(v83, v68);
  }

  v85 = v117;
  v86 = v109;
  v104(v117, v125, v109);
  v134 = v85;
  v87 = v126;
  v88 = v119;
  v89 = v121;
  (*(v116 + 16))(v126, v119, v121);
  v135 = v87;
  v90 = v123;
  (v118)(v123, v73, v68);
  v136 = v90;
  v133[0] = v86;
  v133[1] = v89;
  v133[2] = v68;
  v129 = v124;
  v130 = swift_getWitnessTable();
  v131 = v63;
  v128 = v127;
  v132 = swift_getWitnessTable();
  sub_216984F84(&v134, 3, v133);
  v91 = v122;
  v122(v73, v68);
  v92 = v108;
  v108(v88, v89);
  v93 = v106;
  v106(v125, v86);
  v91(v90, v68);
  v92(v126, v89);
  return v93(v117, v86);
}

uint64_t sub_216AE9414@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  v44 = v4;
  v5 = sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v55 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  sub_2170083A4();
  v6 = sub_2170089F4();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v32 - v7;
  v37 = v5;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_2170089F4();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v12;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CE03F0];
  v35 = v6;
  v36 = swift_getWitnessTable();
  v38 = sub_217008BC4();
  v13 = sub_2170089F4();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v33 = a2;
  v19 = *(a2 + 40);
  sub_21700ABB4();
  v20 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638);
  v51 = v19;
  v52 = v20;
  v21 = v37;
  v22 = swift_getWitnessTable();
  sub_21700AA04();
  (*(v39 + 8))(v10, v21);
  v23 = v41;
  sub_216AE9A70(v33, v41);
  v24 = sub_216AEC978();
  v49 = v22;
  v50 = v24;
  v25 = swift_getWitnessTable();
  v26 = v35;
  sub_2166BF464();
  v27 = v34;
  sub_21700AAA4();
  (*(v43 + 8))(v23, v26);
  (*(v42 + 8))(v27, v11);
  v28 = swift_getWitnessTable();
  v47 = v25;
  v48 = v28;
  v29 = swift_getWitnessTable();
  sub_2166C24DC(v15, v13, v29);
  v30 = *(v40 + 8);
  v30(v15, v13);
  sub_2166C24DC(v18, v13, v29);
  return (v30)(v18, v13);
}

uint64_t sub_216AE9A70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  v20 = v3;
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v30 = sub_21700B0A4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217009B44();
  sub_2170089F4();
  sub_2170089F4();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v4 = sub_2170083A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = sub_2170089F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_217009C64();
  v23 = v20;
  v24 = *(a1 + 24);
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  v27 = v21;
  sub_217008394();
  v15 = swift_getWitnessTable();
  sub_21700A464();
  (*(v5 + 8))(v7, v4);
  v28 = v15;
  v29 = MEMORY[0x277CE03F0];
  v16 = swift_getWitnessTable();
  sub_2166C24DC(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_2166C24DC(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_216AE9E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a7;
  v76 = a6;
  v105 = a4;
  v104 = a3;
  v108 = a1;
  v103 = a8;
  v102 = sub_217009314();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2170099D4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
  swift_getTupleTypeMetadata2();
  v91 = sub_21700B4E4();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21700B0A4();
  v86 = v16;
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v83 = v68 - v17;
  v85 = swift_getWitnessTable();
  v119 = v16;
  v120 = v85;
  v89 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = v68 - v18;
  sub_217009B44();
  v87 = sub_2170089F4();
  v95 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = v68 - v19;
  v93 = sub_2170089F4();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v82 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v88 = v68 - v22;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v79 = type metadata accessor for ExpandableTextView();
  v23 = *(v79 - 8);
  v78 = *(v23 + 64);
  MEMORY[0x28223BE20](v79);
  v73 = v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7638);
  v25 = sub_2170089F4();
  v72 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v68 - v26;
  v28 = sub_2170089F4();
  v75 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v69 = v68 - v29;
  v74 = sub_2170089F4();
  v106 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v107 = v68 - v32;
  v70 = a2;
  v33 = v108;
  sub_21700ABB4();
  v34 = sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638);
  v118[10] = a5;
  v118[11] = v34;
  v68[1] = MEMORY[0x277CDFAD8];
  v35 = swift_getWitnessTable();
  sub_21700AB84();
  (*(v72 + 8))(v27, v25);
  v36 = v73;
  v37 = v79;
  (*(v23 + 16))(v73, v33, v79);
  v38 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v39 = swift_allocObject();
  v40 = v104;
  *(v39 + 2) = a2;
  *(v39 + 3) = v40;
  *(v39 + 4) = v105;
  *(v39 + 5) = a5;
  v41 = v76;
  v42 = v77;
  *(v39 + 6) = v76;
  *(v39 + 7) = v42;
  (*(v23 + 32))(&v39[v38], v36, v37);
  v118[8] = v35;
  v118[9] = MEMORY[0x277CDFC48];
  v43 = swift_getWitnessTable();
  v44 = v71;
  v45 = v69;
  sub_21700AAF4();

  (*(v75 + 8))(v45, v28);
  v118[6] = v43;
  v118[7] = MEMORY[0x277CE0790];
  v46 = v74;
  v75 = swift_getWitnessTable();
  sub_2166C24DC(v44, v46, v75);
  v78 = *(v106 + 8);
  v79 = v106 + 8;
  v78(v44, v46);
  sub_2170093D4();
  sub_217009154();
  v109 = v70;
  v110 = v104;
  v111 = v105;
  v112 = a5;
  v113 = v41;
  v114 = v42;
  v115 = v108;
  v47 = v83;
  sub_21700B094();
  v48 = v97;
  sub_2170099B4();
  v49 = v80;
  v50 = v86;
  v51 = v85;
  sub_21700A784();
  (*(v98 + 8))(v48, v99);
  (*(v94 + 8))(v47, v50);
  v52 = v100;
  sub_2170092F4();
  v119 = v50;
  v120 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v81;
  v55 = OpaqueTypeMetadata2;
  sub_21700A504();
  (*(v101 + 8))(v52, v102);
  (*(v92 + 8))(v49, v55);
  v56 = sub_216AEBA80(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  v118[4] = OpaqueTypeConformance2;
  v118[5] = v56;
  v57 = v87;
  v58 = swift_getWitnessTable();
  v59 = v82;
  sub_21700A614();
  (*(v95 + 8))(v54, v57);
  v118[2] = v58;
  v118[3] = MEMORY[0x277CE0688];
  v60 = v93;
  v61 = swift_getWitnessTable();
  v62 = v88;
  sub_2166C24DC(v59, v60, v61);
  v63 = v96;
  v64 = *(v96 + 8);
  v64(v59, v60);
  v65 = v107;
  (*(v106 + 16))(v44, v107, v46);
  v119 = v44;
  (*(v63 + 16))(v59, v62, v60);
  v120 = v59;
  v118[0] = v46;
  v118[1] = v60;
  v116 = v75;
  v117 = v61;
  sub_216984F84(&v119, 2, v118);
  v64(v62, v60);
  v66 = v78;
  v78(v65, v46);
  v64(v59, v60);
  return v66(v44, v46);
}

uint64_t sub_216AEABAC()
{
  type metadata accessor for ExpandableTextView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  return sub_21700AEC4();
}

uint64_t sub_216AEAC30@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a7;
  v28 = a4;
  v31 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2468);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *(a2 - 1);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v28 - v23;
  sub_2166C24DC(a1, a2, a5);
  v35 = a2;
  v36 = a3;
  v37 = v28;
  v38 = a5;
  v39 = v29;
  v40 = v30;
  v25 = type metadata accessor for ExpandableTextView();
  sub_216AEAE94(v25, v17);
  (*(v18 + 16))(v21, v24, a2);
  v35 = v21;
  sub_216683A80(v17, v14, &qword_27CAC2468);
  v36 = v14;
  v34[0] = a2;
  v34[1] = v12;
  v32 = a5;
  v33 = sub_216AECAD4();
  sub_216984F84(&v35, 2, v34);
  sub_216697664(v17, &qword_27CAC2468);
  v26 = *(v18 + 8);
  v26(v24, a2);
  sub_216697664(v14, &qword_27CAC2468);
  return (v26)(v21, a2);
}

uint64_t sub_216AEAE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24A8);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  sub_216AEB0BC(v3, v7, v8, v9, v10, v11, v12, a2 + *(v6 + 44));
  v13 = sub_2170091A4();
  v26 = 0;
  sub_216AEB62C(v3, v7, v8, v9, v10, v11, v12, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v28, __src, sizeof(v28));
  sub_216683A80(__dst, &v23, &qword_27CAC24B0);
  sub_216697664(v28, &qword_27CAC24B0);
  memcpy(&v25[7], __dst, 0x60uLL);
  LOBYTE(v3) = v26;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2468) + 36);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24B8) + 36);
  v16 = *MEMORY[0x277CE13C0];
  v17 = sub_21700B434();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + 8) = 0;
  *(v14 + 16) = v3;
  memcpy((v14 + 17), v25, 0x67uLL);
  v18 = sub_21700B3B4();
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24A0);
  v22 = (v14 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_216AEB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v55 = a6;
  v54 = a5;
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v61 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC0D8);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24C0);
  MEMORY[0x28223BE20](v53);
  v13 = &v46 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24C8);
  MEMORY[0x28223BE20](v56);
  v15 = &v46 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24D0);
  MEMORY[0x28223BE20](v58);
  v60 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v59 = &v46 - v21;
  sub_21700B3B4();
  sub_2170083C4();
  v49 = v70;
  v48 = v72;
  v47 = v74;
  v46 = v75;
  v78 = 1;
  v77 = v71;
  v76 = v73;
  v64 = sub_216983738(158);
  v65 = v22;
  v66 = 0;
  v67 = MEMORY[0x277D84F90];
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  sub_2167C4D74();
  sub_21700A304();

  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v54;
  v68 = v55;
  v69 = v57;
  v23 = *(v61 + *(type metadata accessor for ExpandableTextView() + 92));
  if (!v23)
  {
    v23 = sub_217009E94();
  }

  KeyPath = swift_getKeyPath();
  (*(v62 + 32))(v13, v11, v63);
  v25 = &v13[*(v53 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;

  v26 = sub_21700AD14();
  v27 = swift_getKeyPath();
  sub_2167C5834(v13, v15, &qword_27CAC24C0);
  v28 = &v15[*(v56 + 36)];
  *v28 = v27;
  v28[1] = v26;
  LOBYTE(v26) = sub_217009C94();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2167C5834(v15, v19, &qword_27CAC24C8);
  v37 = &v19[*(v58 + 36)];
  *v37 = v26;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = v59;
  sub_2167C5834(v19, v59, &qword_27CAC24D0);
  v39 = v78;
  v40 = v77;
  v41 = v76;
  v42 = v60;
  sub_216683A80(v38, v60, &qword_27CAC24D0);
  *a8 = 0;
  *(a8 + 8) = v39;
  *(a8 + 16) = v49;
  *(a8 + 24) = v40;
  *(a8 + 32) = v48;
  *(a8 + 40) = v41;
  v43 = v46;
  *(a8 + 48) = v47;
  *(a8 + 56) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC24D8);
  sub_216683A80(v42, a8 + *(v44 + 48), &qword_27CAC24D0);
  sub_216697664(v38, &qword_27CAC24D0);
  return sub_216697664(v42, &qword_27CAC24D0);
}

uint64_t sub_216AEB62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v35 = a7;
  v36 = a1;
  v37 = a8;
  v13 = sub_217008934();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = a6;
  v39[5] = v35;
  v20 = type metadata accessor for ExpandableTextView();
  sub_216C0C9E4(v20, v21, v22, v23, v24, v25, v26, v27, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7]);
  (*(v14 + 104))(v16, *MEMORY[0x277CDFA90], v13);
  LOBYTE(a6) = sub_217008924();
  v28 = *(v14 + 8);
  v28(v16, v13);
  v28(v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217013D90;
  if (a6)
  {
    *(v29 + 32) = sub_21700ACC4();
    v30 = sub_21700ACD4();
  }

  else
  {
    *(v29 + 32) = sub_21700ACD4();
    v30 = sub_21700ACC4();
  }

  *(v29 + 40) = v30;
  MEMORY[0x21CE9C070](v29);
  sub_21700B574();
  sub_21700B584();
  sub_2170085D4();
  sub_21700B3B4();
  sub_2170083C4();
  v31 = sub_21700ACC4();
  memcpy(v38, __src, sizeof(v38));
  v32 = v37;
  memcpy(v37, __src, 0x58uLL);
  v32[11] = v31;
  sub_216683A80(v38, v39, &qword_27CABC490);
  memcpy(v39, __src, sizeof(v39));
  return sub_216697664(v39, &qword_27CABC490);
}

uint64_t sub_216AEB8F4(uint64_t a1)
{
  v2 = sub_21700A014();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_217008E44();
}

void sub_216AEB9BC(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_216AEBA80(&qword_27CAB6820, type metadata accessor for Key);
  v3 = sub_21700E344();

  [a2 setLinkTextAttributes_];
}

uint64_t sub_216AEBA80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216AEBB10()
{
  sub_216AECEE0(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216AEC7E4(319, &qword_27CAC2388, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216AEC7E4(319, qword_27CAC2390, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216AEBC24()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_21700F164();
    if (v1 <= 0x3F)
    {
      sub_21700F164();
      if (v2 <= 0x3F)
      {
        sub_216AEC7E4(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_216AEC7E4(319, qword_27CAC2390, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21700D284();
            if (v5 <= 0x3F)
            {
              sub_216AEC7E4(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_216AECEE0(319, &qword_27CAC2418, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
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

uint64_t sub_216AEBDEC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v44 = a3[2];
  v49 = *(v44 - 8);
  v41 = a3[3];
  v48 = *(v41 - 8);
  v3 = *(v48 + 84);
  v4 = v3 - 1;
  if (!v3)
  {
    v4 = 0;
  }

  v45 = *(*(v44 - 8) + 84);
  v43 = v4;
  if (v4 <= v45)
  {
    v4 = *(*(v44 - 8) + 84);
  }

  v39 = a3[4];
  v47 = *(v39 - 8);
  v5 = *(v47 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v42 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v38 = sub_21700D284();
  v8 = *(v38 - 8);
  v37 = *(v8 + 84);
  if (v7 <= v37)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  v40 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_217008934() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  if (v3)
  {
    v13 = *(v48 + 64);
  }

  else
  {
    v13 = *(v48 + 64) + 1;
  }

  v14 = *(v48 + 80);
  v15 = *(v47 + 80);
  if (v5)
  {
    v16 = *(v47 + 64);
  }

  else
  {
    v16 = *(v47 + 64) + 1;
  }

  v17 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = *(v49 + 64) + v14;
  v19 = v16 + 7;
  v20 = v17 + 8;
  v21 = a1;
  if (a2 <= v10)
  {
    goto LABEL_43;
  }

  v22 = *(v11 + 80) & 0xF8 | 7;
  v23 = v12 + ((v22 + ((*(v8 + 64) + ((v20 + ((((((((((v19 + ((v13 + v15 + (v18 & ~v14)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_28;
  }

  v26 = ((a2 - v10 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v26))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_43;
      }

LABEL_28:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_43;
      }

LABEL_35:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v23)
      {
        if (v23 > 3)
        {
          LODWORD(v23) = 4;
        }

        switch(v23)
        {
          case 2:
            LODWORD(v23) = *a1;
            break;
          case 3:
            LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v23) = *a1;
            break;
          default:
            LODWORD(v23) = *a1;
            break;
        }
      }

      return v10 + (v23 | v27) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_35;
    }
  }

LABEL_43:
  if (v45 == v10)
  {
    v28 = v45;
    v29 = v44;
LABEL_45:

    return __swift_getEnumTagSinglePayload(v21, v28, v29);
  }

  v31 = (a1 + v18) & ~v14;
  if (v43 == v10)
  {
    if (v3 >= 2)
    {
      v32 = v3;
      v33 = v41;
      goto LABEL_65;
    }

    return 0;
  }

  v31 = (v31 + v13 + v15) & ~v15;
  if (v42 == v10)
  {
    if (v5 >= 2)
    {
      v32 = v5;
      v33 = v39;
LABEL_65:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v32, v33);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = (v19 + v31) & 0xFFFFFFFFFFFFFFF8;
  if (v40 > 0x7FFFFFFE)
  {
    v21 = (v20 + ((((((((v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
    v28 = v37;
    v29 = v38;
    goto LABEL_45;
  }

  v35 = *(v34 + 8);
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  if ((v35 + 1) >= 2)
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

void sub_216AEC2A4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v44 = a4[2];
  v48 = *(v44 - 8);
  v42 = a4[3];
  v4 = *(v42 - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v45 = *(*(v44 - 8) + 84);
  v43 = v6;
  if (v6 <= v45)
  {
    v6 = *(*(v44 - 8) + 84);
  }

  v40 = a4[4];
  v46 = *(v40 - 8);
  v7 = *(v46 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v41 = v8;
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v38 = sub_21700D284();
  v47 = *(v38 - 8);
  v37 = *(v47 + 84);
  if (v9 <= v37)
  {
    v10 = *(v47 + 84);
  }

  else
  {
    v10 = v9;
  }

  v39 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_217008934();
  v13 = v5;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v4 + 64);
  if (!v13)
  {
    ++v17;
  }

  v18 = *(v4 + 80);
  v19 = *(v48 + 64) + v18;
  v20 = *(v46 + 80);
  v21 = *(v46 + 64);
  if (!v7)
  {
    ++v21;
  }

  v22 = v21 + 7;
  v23 = *(v47 + 80);
  v24 = *(v15 + 80) & 0xF8 | 7;
  v25 = v16 + ((v24 + ((*(v47 + 64) + ((v23 + 8 + ((((((((((v22 + ((v17 + v20 + (v19 & ~v18)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 1;
  v26 = 8 * v25;
  if (a3 > v11)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v11 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v14 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v14 = v28;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  v29 = a2;
  if (v11 >= a2)
  {
    v32 = a1;
    switch(v14)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_46;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_46;
        }

        return;
      case 3:
LABEL_69:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_45;
      default:
LABEL_45:
        if (!a2)
        {
          return;
        }

LABEL_46:
        v34 = v45;
        if (v45 == v11)
        {
          v35 = v44;
        }

        else
        {
          v32 = &a1[v19] & ~v18;
          if (v43 == v11)
          {
            v29 = a2 + 1;
            v34 = v13;
            v35 = v42;
          }

          else
          {
            v32 = (v32 + v17 + v20) & ~v20;
            if (v41 == v11)
            {
              v29 = a2 + 1;
              v34 = v7;
              v35 = v40;
            }

            else
            {
              v36 = ((v22 + v32) & 0xFFFFFFFFFFFFFFF8);
              if (v39 <= 0x7FFFFFFE)
              {
                if (a2 > 0x7FFFFFFE)
                {
                  *v36 = 0;
                  v36[1] = 0;
                  *v36 = a2 - 0x7FFFFFFF;
                }

                else
                {
                  v36[1] = a2;
                }

                return;
              }

              v32 = (v23 + 8 + ((((((((v36 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
              v34 = v37;
              v35 = v38;
            }
          }
        }

        __swift_storeEnumTagSinglePayload(v32, v29, v34, v35);
        break;
    }
  }

  else
  {
    v30 = ~v11 + a2;
    if (v25 < 4)
    {
      v31 = (v30 >> v26) + 1;
      if (v25)
      {
        v33 = v30 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v33;
          a1[2] = BYTE2(v33);
        }

        else if (v25 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v30;
        }
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v30;
      v31 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v25] = v31;
        break;
      case 2:
        *&a1[v25] = v31;
        break;
      case 3:
        goto LABEL_69;
      case 4:
        *&a1[v25] = v31;
        break;
      default:
        return;
    }
  }
}

void sub_216AEC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216AEC89C()
{
  type metadata accessor for ExpandableTextView();

  return sub_216AE833C();
}

unint64_t sub_216AEC978()
{
  result = qword_27CAC2478;
  if (!qword_27CAC2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2478);
  }

  return result;
}

uint64_t sub_216AEC9E4()
{
  type metadata accessor for ExpandableTextView();

  return sub_216AEABAC();
}

unint64_t sub_216AECAD4()
{
  result = qword_27CAC2480;
  if (!qword_27CAC2480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2468);
    sub_2166D9530(&qword_27CAC2488, &qword_27CAC2490);
    sub_2166D9530(&qword_27CAC2498, &qword_27CAC24A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2480);
  }

  return result;
}

void sub_216AECBD8()
{
  sub_216AEC7E4(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_217005C64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_216AECCB8()
{
  result = type metadata accessor for ScrollableParagraphView.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216AECD60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216AECDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableParagraphView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_216AECE44()
{
  sub_216AECEE0(319, &qword_27CAC2530, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216AECEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216AECF44()
{
  result = qword_27CAC2538;
  if (!qword_27CAC2538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2540);
    sub_216AEBA80(&qword_27CAC2510, type metadata accessor for ScrollableTextView);
    sub_216AEBA80(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2538);
  }

  return result;
}

uint64_t type metadata accessor for JSSearchPage()
{
  result = qword_280E44AB8;
  if (!qword_280E44AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AED0EC()
{
  sub_21700D194();
  if (v0 <= 0x3F)
  {
    sub_21682D344();
    if (v1 <= 0x3F)
    {
      sub_216AED200();
      if (v2 <= 0x3F)
      {
        sub_21668C3B0(319, &qword_280E29F68, &type metadata for SearchSuggestion, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21668C3B0(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216AED200()
{
  if (!qword_27CAC2550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2558);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC2550);
    }
  }
}

uint64_t sub_216AED264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v41 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v40 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v39 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for JSSearchPage();
  v22 = v49[8];
  v43 = a3;
  v23 = (a3 + v22);
  *v23 = 0;
  v23[1] = 0;
  v24 = a1;
  sub_21700CE04();
  v25 = v44;
  v48 = v7;
  v26 = *(v7 + 16);
  v27 = v5;
  v42 = v26;
  v26(v12, v44, v5);
  v28 = v45;
  sub_21700D134();
  if (v28)
  {
    (*(v48 + 8))(v25, v5);
    return (*(v46 + 8))(v24, v47);
  }

  else
  {
    (*(v39 + 32))(v43, v21, v17);
    v45 = 0;
    v30 = v24;
    sub_21700CE04();
    v31 = v41;
    v38 = v27;
    v42(v41, v25, v27);
    _s7SectionVMa(0);
    sub_216691E80(&qword_280E2C638, _s7SectionVMa);
    v32 = sub_21700E944();
    v33 = v43;
    *(v43 + v49[5]) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2558);
    sub_21700CE04();
    v34 = v27;
    v35 = v42;
    v42(v31, v25, v34);
    sub_216AEDCE0();
    sub_21700D734();
    *(v33 + v49[6]) = v50;
    sub_21700CE04();
    v36 = v38;
    v35(v31, v25, v38);
    sub_216AEDD44();
    v37 = sub_21700E944();
    (*(v48 + 8))(v25, v36);
    result = (*(v46 + 8))(v30, v47);
    *(v33 + v49[7]) = v37;
  }

  return result;
}

void sub_216AED700()
{
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for JSSearchPage() + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = sub_21678389C(v8, v5);
      sub_2168C0B98(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      v20 = v19;
      sub_216A4D170(v5);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908();
          v10 = v22;
        }

        v21 = *(v10 + 16);
        if (v21 >= *(v10 + 24) >> 1)
        {
          sub_216937908();
          v10 = v23;
        }

        *(v10 + 16) = v21 + 1;
        *(v10 + 8 * v21 + 32) = v20;
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v24 = 0;
  v25 = *(v10 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v24)
    {

      return;
    }

    if (v24 >= *(v10 + 16))
    {
      break;
    }

    v27 = *(v10 + 8 * v24 + 32);
    v28 = *(v27 + 16);
    v29 = *(v26 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_31;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v26 + 24) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v32, 1, v26);
      v26 = v33;
    }

    if (*(v27 + 16))
    {
      v34 = (*(v26 + 24) >> 1) - *(v26 + 16);
      sub_217006924();
      if (v34 < v28)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v35 = *(v26 + 16);
        v36 = __OFADD__(v35, v28);
        v37 = v35 + v28;
        if (v36)
        {
          goto LABEL_34;
        }

        *(v26 + 16) = v37;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_32;
      }
    }

    ++v24;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_216AED9C0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_2167839C8(v2);
  return v2;
}

uint64_t sub_216AEDA54(uint64_t a1)
{
  result = sub_216691E80(&qword_280E44AF0, type metadata accessor for JSSearchPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEDAF4(uint64_t a1)
{
  result = sub_216691E80(&qword_280E44AD8, type metadata accessor for JSSearchPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216AEDB4C(void *a1)
{
  a1[1] = sub_216691E80(&qword_280E44AE8, type metadata accessor for JSSearchPage);
  a1[2] = sub_216691E80(&qword_280E44AE0, type metadata accessor for JSSearchPage);
  result = sub_216691E80(&qword_280E44AD0, type metadata accessor for JSSearchPage);
  a1[3] = result;
  return result;
}

uint64_t sub_216AEDC88(uint64_t a1)
{
  result = sub_216691E80(qword_280E44AF8, type metadata accessor for JSSearchPage);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216AEDCE0()
{
  result = qword_280E3A080;
  if (!qword_280E3A080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3A080);
  }

  return result;
}

unint64_t sub_216AEDD44()
{
  result = qword_280E40898;
  if (!qword_280E40898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E40898);
  }

  return result;
}

uint64_t sub_216AEDDAC(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NoticeActionType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NoticeManager();
  sub_21700D4B4();
  if (v22)
  {
    sub_216AEE1EC(a1, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
    switch(__swift_getEnumTagSinglePayload(v8, 11, v9))
    {
      case 1u:
        LOBYTE(v22) = 0;
        goto LABEL_21;
      case 2u:
        v19 = 1;
        goto LABEL_20;
      case 3u:
        v19 = 2;
        goto LABEL_20;
      case 4u:
        v19 = 3;
        goto LABEL_20;
      case 5u:
        v19 = 4;
        goto LABEL_20;
      case 6u:
        v19 = 5;
        goto LABEL_20;
      case 7u:
        v19 = 6;
        goto LABEL_20;
      case 8u:
        v19 = 7;
        goto LABEL_20;
      case 9u:
        v19 = 8;
        goto LABEL_20;
      case 0xAu:
        v19 = 9;
        goto LABEL_20;
      case 0xBu:
        v19 = 10;
LABEL_20:
        LOBYTE(v22) = v19;
LABEL_21:
        sub_2167C6288(&v22);
        break;
      default:

        sub_216AEE250(v8);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v18 = sub_21700E1F4();
  }

  else
  {
    if (qword_27CAB5D20 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CAC2560);

    v11 = sub_217007C84();
    v12 = sub_21700ED84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v15 = sub_21700D474();
      v17 = sub_2166A85FC(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "NoticeManager not present in object graph %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA0], v2);
    return sub_21700E1F4();
  }

  return v18;
}

uint64_t sub_216AEE168()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC2560);
  __swift_project_value_buffer(v0, qword_27CAC2560);
  return sub_217007C94();
}

uint64_t sub_216AEE1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216AEE250(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistAddableItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GroupedTextListLockupView()
{
  result = qword_280E35920;
  if (!qword_280E35920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216AEE320()
{
  type metadata accessor for GroupedTextListLockup();
  if (v0 <= 0x3F)
  {
    sub_2166DB904();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216AEE3C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_216AEE3EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 40 * v3;
    v5 = *(v4 - 8);
    v9 = *v4;
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    sub_21700DF14();
    result = sub_21700DF14();
    v8 = v9;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = xmmword_217042990;
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_216AEE488@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2578);
  return sub_216AEE4DC(v1, a1 + *(v3 + 44));
}

uint64_t sub_216AEE4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2580);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2588);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = (&v80 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v80 - v13;
  v14 = sub_21700D284();
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x28223BE20](v14);
  v89 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08);
  MEMORY[0x28223BE20](v16);
  v93 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v21);
  v92 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = (&v80 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  v87 = type metadata accessor for GroupedTextListLockup();
  v35 = *(v87 + 24);
  v95 = a1;
  v96 = v35;
  sub_216681B04(a1 + v35, v34, &qword_27CABBE20);
  v36 = type metadata accessor for ModalPresentationDescriptor();
  if (__swift_getEnumTagSinglePayload(v34, 1, v36) == 1)
  {
    sub_216697664(v34, &qword_27CABBE20);
    v37 = 1;
    v38 = v97;
  }

  else
  {
    v82 = v9;
    v39 = v97;
    v40 = *(v34 + 4);
    v41 = *(v34 + 5);
    sub_21700DF14();
    sub_216AEF930(v34);
    if (!v41)
    {
      goto LABEL_9;
    }

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      sub_216681B04(v95 + v96, v31, &qword_27CABBE20);
      if (__swift_getEnumTagSinglePayload(v31, 1, v36) == 1)
      {
        sub_216697664(v31, &qword_27CABBE20);
        v80 = 0;
        v81 = 0;
      }

      else
      {
        v43 = *v31;
        v80 = v31[1];
        v81 = v43;
        sub_21700DF14();
        sub_216AEF930(v31);
      }

      v44 = v82;
      sub_216681B04(v95 + v96, v28, &qword_27CABBE20);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v36);
      v46 = v88;
      if (EnumTagSinglePayload == 1)
      {
        sub_216697664(v28, &qword_27CABBE20);
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v47 = *(v28 + 4);
        v48 = *(v28 + 5);
        sub_21700DF14();
        sub_216AEF930(v28);
      }

      v49 = v95;
      sub_216681B04(v95 + v96, v25, &qword_27CABBE20);
      v50 = __swift_getEnumTagSinglePayload(v25, 1, v36);
      v51 = v91;
      if (v50 == 1)
      {
        sub_216697664(v25, &qword_27CABBE20);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v51);
        v52 = v89;
        sub_21700D234();
        v53 = __swift_getEnumTagSinglePayload(v46, 1, v51);
        v54 = v90;
        if (v53 != 1)
        {
          sub_216697664(v46, &qword_27CABBE18);
        }
      }

      else
      {
        v55 = *(v36 + 40);
        v54 = v90;
        (*(v90 + 16))(v46, &v25[v55], v91);
        sub_216AEF930(v25);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v51);
        v52 = v89;
        (*(v54 + 32))(v89, v46, v51);
      }

      v56 = &v20[v16[25]];
      v98 = 0;
      sub_21700AEA4();
      v57 = v100;
      *v56 = v99;
      *(v56 + 1) = v57;
      v58 = v16[26];
      *&v20[v58] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10);
      swift_storeEnumTagMultiPayload();
      sub_216681B04(v49 + v96, v20, &qword_27CABBE20);
      v59 = type metadata accessor for ParagraphView(0);
      *&v20[*(v59 + 20)] = 0;
      *&v20[*(v59 + 24)] = 0;
      v60 = 1;
      v20[v16[17]] = 1;
      v20[v16[18]] = 1;
      v61 = &v20[v16[20]];
      v62 = v80;
      *v61 = v81;
      *(v61 + 1) = v62;
      v63 = &v20[v16[19]];
      *v63 = v47;
      *(v63 + 1) = v48;
      *&v20[v16[21]] = 3;
      *&v20[v16[23]] = 0;
      v64 = &v20[v16[22]];
      *v64 = 0;
      *(v64 + 1) = 0;
      (*(v54 + 32))(&v20[v16[24]], v52, v51);
      v65 = v92;
      sub_216AEF98C(v20, v92);
      v66 = *(v49 + *(v87 + 28));
      if (v66)
      {
        v67 = v83;
        sub_216AEEDE4(v66, v83);
        v69 = v84;
        v68 = v85;
        v70 = *(v85 + 16);
        v71 = v86;
        v70(v84, v67, v86);
        v72 = v94;
        *v94 = 0x4042000000000000;
        *(v72 + 8) = 0;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25A8);
        v70((v72 + *(v73 + 48)), v69, v71);
        v74 = *(v68 + 8);
        v74(v67, v71);
        v74(v69, v71);
        v60 = 0;
      }

      else
      {
        v72 = v94;
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2598);
      __swift_storeEnumTagSinglePayload(v72, v60, 1, v75);
      v76 = v93;
      sub_216681B04(v65, v93, &qword_27CABBE08);
      sub_2167336C0(v72, v44);
      v38 = v97;
      sub_216681B04(v76, v97, &qword_27CABBE08);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25A0);
      sub_2167336C0(v44, v38 + *(v77 + 48));
      sub_216733728(v72);
      sub_216697664(v65, &qword_27CABBE08);
      sub_216733728(v44);
      sub_216697664(v76, &qword_27CABBE08);
      v37 = 0;
    }

    else
    {
LABEL_9:
      v37 = 1;
      v38 = v39;
    }
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2590);
  return __swift_storeEnumTagSinglePayload(v38, v37, 1, v78);
}

uint64_t sub_216AEEDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_2170090F4();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170099D4();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25B0);
  MEMORY[0x28223BE20](v27);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25B8);
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25C0) + 44);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC25C8);
  sub_2166D9530(&qword_27CABE2A8, &qword_27CABE2A0);
  sub_216AEFA04();
  v13 = v27;
  v14 = v12;
  sub_2166D9530(&qword_27CAC25D8, &qword_27CAC25C8);
  sub_21700B154();
  sub_2170099B4();
  v15 = sub_2166D9530(&qword_27CAC25E0, &qword_27CAC25B0);
  sub_21700A784();
  (*(v28 + 8))(v7, v29);
  sub_216697664(v9, &qword_27CAC25B0);
  v16 = v30 + *(type metadata accessor for GroupedTextListLockupView() + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_21700ED94();
    v18 = sub_217009C34();
    sub_217007BC4();

    v19 = v22;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    (*(v23 + 8))(v19, v24);
  }

  v34 = v13;
  v35 = v15;
  swift_getOpaqueTypeConformance2();
  v20 = v32;
  sub_21700AB94();
  return (*(v31 + 8))(v14, v20);
}