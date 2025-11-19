uint64_t sub_24B6BE9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a2 + 9);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t DownloadStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034238, &qword_24B75E820);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = v19 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034240, &qword_24B75E828);
  v20 = *(v22 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034248, &qword_24B75E830);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v19[1] = *v1;
  v25 = *(v1 + 8);
  v14 = *(v1 + 9);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BED38();
  sub_24B75C738();
  if (v14)
  {
    v27 = 1;
    sub_24B6BED8C();
    v16 = v21;
    sub_24B75C638();
    (*(v23 + 8))(v16, v24);
  }

  else
  {
    v26 = 0;
    sub_24B6BEDE0();
    sub_24B75C638();
    v18 = v22;
    sub_24B75C658();
    (*(v20 + 8))(v8, v18);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_24B6BED38()
{
  result = qword_27F034250;
  if (!qword_27F034250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034250);
  }

  return result;
}

unint64_t sub_24B6BED8C()
{
  result = qword_27F034258;
  if (!qword_27F034258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034258);
  }

  return result;
}

unint64_t sub_24B6BEDE0()
{
  result = qword_27F034260;
  if (!qword_27F034260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034260);
  }

  return result;
}

uint64_t DownloadStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034268, &qword_24B75E838);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034270, &qword_24B75E840);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034278, &unk_24B75E848);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B6BED38();
  v19 = v42;
  sub_24B75C728();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v42 = v13;
  v20 = v41;
  v21 = sub_24B75C628();
  v22 = (2 * *(v21 + 16)) | 1;
  v44 = v21;
  v45 = v21 + 32;
  v46 = 0;
  v47 = v22;
  v23 = sub_24B6B9E04();
  v24 = v12;
  if (v23 == 2 || v46 != v47 >> 1)
  {
    v28 = sub_24B75C568();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v30 = &type metadata for DownloadStatus;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v42 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v25 = v23;
  if (v23)
  {
    v48 = 1;
    sub_24B6BED8C();
    sub_24B75C598();
    v26 = 0;
    (*(v39 + 8))(v7, v38);
    (*(v42 + 8))(v16, v24);
    swift_unknownObjectRelease();
    v27 = 0;
  }

  else
  {
    v48 = 0;
    sub_24B6BEDE0();
    sub_24B75C598();
    v33 = sub_24B75C5C8();
    v34 = v42;
    v26 = v33;
    v35 = v11;
    v37 = v36;
    (*(v40 + 8))(v35, v8);
    (*(v34 + 8))(v16, v24);
    swift_unknownObjectRelease();
    v27 = v37 & 1;
  }

  *v20 = v26;
  *(v20 + 8) = v27;
  *(v20 + 9) = v25 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t DownloadStatus.hash(into:)()
{
  if (*(v0 + 9))
  {
    return MEMORY[0x24C2489B0](1);
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  MEMORY[0x24C2489B0](0);
  if (v3)
  {
    return sub_24B75C6F8();
  }

  sub_24B75C6F8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x24C2489D0](v4);
}

uint64_t DownloadStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_24B75C6D8();
  if (v3)
  {
    MEMORY[0x24C2489B0](1);
  }

  else
  {
    MEMORY[0x24C2489B0](0);
    if (v2)
    {
      sub_24B75C6F8();
    }

    else
    {
      sub_24B75C6F8();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x24C2489D0](v4);
    }
  }

  return sub_24B75C718();
}

uint64_t sub_24B6BF478()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_24B75C6D8();
  if (v3)
  {
    MEMORY[0x24C2489B0](1);
  }

  else
  {
    MEMORY[0x24C2489B0](0);
    if (v2)
    {
      sub_24B75C6F8();
    }

    else
    {
      sub_24B75C6F8();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v1;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x24C2489D0](v4);
    }
  }

  return sub_24B75C718();
}

unint64_t sub_24B6BF50C()
{
  result = qword_27F034280;
  if (!qword_27F034280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034280);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadStatus(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24B6BF5C4(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B6BF5E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_24B6BF64C()
{
  result = qword_27F034288;
  if (!qword_27F034288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034288);
  }

  return result;
}

unint64_t sub_24B6BF6A4()
{
  result = qword_27F034290;
  if (!qword_27F034290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034290);
  }

  return result;
}

unint64_t sub_24B6BF6FC()
{
  result = qword_27F034298;
  if (!qword_27F034298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034298);
  }

  return result;
}

unint64_t sub_24B6BF754()
{
  result = qword_27F0342A0;
  if (!qword_27F0342A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342A0);
  }

  return result;
}

unint64_t sub_24B6BF7AC()
{
  result = qword_27F0342A8;
  if (!qword_27F0342A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342A8);
  }

  return result;
}

unint64_t sub_24B6BF804()
{
  result = qword_27F0342B0;
  if (!qword_27F0342B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342B0);
  }

  return result;
}

unint64_t sub_24B6BF85C()
{
  result = qword_27F0342B8;
  if (!qword_27F0342B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342B8);
  }

  return result;
}

unint64_t sub_24B6BF8B4()
{
  result = qword_27F0342C0;
  if (!qword_27F0342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342C0);
  }

  return result;
}

uint64_t EditorialDetailEnvironment.fetchRemoteDetailContent.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialDetailEnvironment.presentFilter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EditorialDetailEnvironment.navigateToSocialMediaLink.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t EditorialDetailEnvironment.onPreviewButtonTapped.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EditorialDetailEnvironment.init(fetchRemoteDetailContent:presentFilter:navigateToSocialMediaLink:onPreviewButtonTapped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[2] = a3;
  a9[3] = a4;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B6BF9F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24B6BFA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutProgramLinkAnnotation.init(title:platform:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *a5 = v7;
  v8 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);
  v9 = sub_24B75B108();
  v10 = *(*(v9 - 8) + 32);

  return v10(a5 + v8, a4, v9);
}

uint64_t sub_24B6BFB28()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_24B6BFB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6C0BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6BFBAC(uint64_t a1)
{
  v2 = sub_24B6BFED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6BFBE8(uint64_t a1)
{
  v2 = sub_24B6BFED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6BFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramLinkAnnotation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutProgramLinkAnnotation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0342C8, &qword_24B75ECE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BFED4();
  sub_24B75C738();
  v15[15] = *v3;
  v15[14] = 0;
  sub_24B6BFF28();
  sub_24B75C6A8();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v15[13] = 1;
    sub_24B75C678();
    v14 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);
    v15[12] = 2;
    sub_24B75B108();
    sub_24B6A71D0(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6BFED4()
{
  result = qword_27F0342D0;
  if (!qword_27F0342D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342D0);
  }

  return result;
}

unint64_t sub_24B6BFF28()
{
  result = qword_27F0342D8;
  if (!qword_27F0342D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342D8);
  }

  return result;
}

uint64_t WorkoutProgramLinkAnnotation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_24B75B108();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0342E0, &qword_24B75ECE8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for WorkoutProgramLinkAnnotation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6BFED4();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v15 = a1;
  v16 = v24;
  v17 = v25;
  v29 = 0;
  sub_24B6C0318();
  sub_24B75C618();
  *v13 = v30;
  v28 = 1;
  *(v13 + 1) = sub_24B75C5E8();
  *(v13 + 2) = v18;
  v20[1] = v18;
  v27 = 2;
  sub_24B6A71D0(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C618();
  (*(v16 + 8))(v9, v26);
  (*(v22 + 32))(&v13[*(v21 + 24)], v6, v17);
  sub_24B6BFC30(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_24B6C036C(v13);
}

unint64_t sub_24B6C0318()
{
  result = qword_27F0342E8;
  if (!qword_27F0342E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0342E8);
  }

  return result;
}

uint64_t sub_24B6C036C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutProgramLinkAnnotation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static WorkoutProgramLinkAnnotation.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);

  return sub_24B75B0F8();
}

uint64_t WorkoutProgramLinkAnnotation.hash(into:)()
{
  MEMORY[0x24C2489B0](*v0);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_24B75C358();
  v3 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t WorkoutProgramLinkAnnotation.hashValue.getter()
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v0);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_24B75C358();
  v3 = *(type metadata accessor for WorkoutProgramLinkAnnotation() + 24);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C05E4(uint64_t a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v1);
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  sub_24B75C358();
  v5 = *(a1 + 24);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C069C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x24C2489B0](*v2);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  sub_24B75C358();
  v6 = *(a2 + 24);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t sub_24B6C073C(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](*v2);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  sub_24B75C358();
  v6 = *(a2 + 24);
  sub_24B75B108();
  sub_24B6A71D0(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6C07F0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v6 = a3;
    v7 = sub_24B75C6B8();
    a3 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a3 + 24);

  return sub_24B75B0F8();
}

uint64_t getEnumTagSinglePayload for WorkoutProgramLinkAnnotation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutProgramLinkAnnotation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B6C0A9C()
{
  result = qword_27F034300;
  if (!qword_27F034300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034300);
  }

  return result;
}

unint64_t sub_24B6C0AF4()
{
  result = qword_27F034308;
  if (!qword_27F034308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034308);
  }

  return result;
}

unint64_t sub_24B6C0B4C()
{
  result = qword_27F034310;
  if (!qword_27F034310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034310);
  }

  return result;
}

uint64_t sub_24B6C0BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B6C0CB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034318, &qword_24B75EF20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034320, &qword_24B75EF28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034328, &qword_24B75EF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034330, &qword_24B75EF38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  v23 = sub_24B75B048();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);

  sub_24B75B038();
  sub_24B75AFF8();
  v25 = sub_24B75BB88();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_24B75BB98();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_24B75BBA8();
  v27 = sub_24B75BBB8();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  v28 = sub_24B75BB78();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  sub_24B75BBC8();
  v29 = sub_24B75BBD8();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_24B6C10B4(v22, v20);
  sub_24B6C1124();
  sub_24B75B008();
  return sub_24B6C1178(v22);
}

uint64_t sub_24B6C10B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C1124()
{
  result = qword_27F034340;
  if (!qword_27F034340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034340);
  }

  return result;
}

uint64_t sub_24B6C1178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034338, &unk_24B75EF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B6C11E0()
{
  if (*v0)
  {
    result = 0x4164694477656976;
  }

  else
  {
    result = 0x4677656976657270;
  }

  *v0;
  return result;
}

uint64_t sub_24B6C1234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4677656976657270 && a2 == 0xEE00646568637465;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6C1320(uint64_t a1)
{
  v2 = sub_24B6C190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C135C(uint64_t a1)
{
  v2 = sub_24B6C190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6C1398(uint64_t a1)
{
  v2 = sub_24B6C1A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C13D4(uint64_t a1)
{
  v2 = sub_24B6C1A18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B6C1410(uint64_t a1)
{
  v2 = sub_24B6C19C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C144C(uint64_t a1)
{
  v2 = sub_24B6C19C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034348, &qword_24B75EF50);
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034350, &qword_24B75EF58);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - v7;
  v8 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutContextMenuPreviewAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034358, &qword_24B75EF60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C190C();
  sub_24B75C738();
  sub_24B6C1960(v35, v15);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    v37 = 1;
    sub_24B6C19C4();
    v22 = v29;
    sub_24B75C638();
    (*(v31 + 8))(v22, v32);
  }

  else
  {
    v24 = v28;
    sub_24B6C210C(v15, v28, type metadata accessor for WorkoutContextMenuPreviewContent);
    v36 = 0;
    sub_24B6C1A18();
    v25 = v30;
    sub_24B75C638();
    sub_24B6C2174(&qword_27F034378);
    v26 = v34;
    sub_24B75C6A8();
    (*(v33 + 8))(v25, v26);
    sub_24B6C1A6C(v24);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t type metadata accessor for WorkoutContextMenuPreviewAction()
{
  result = qword_2810F6BE0;
  if (!qword_2810F6BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6C190C()
{
  result = qword_27F034360;
  if (!qword_27F034360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034360);
  }

  return result;
}

uint64_t sub_24B6C1960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C19C4()
{
  result = qword_27F034368;
  if (!qword_27F034368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034368);
  }

  return result;
}

unint64_t sub_24B6C1A18()
{
  result = qword_27F034370;
  if (!qword_27F034370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034370);
  }

  return result;
}

uint64_t sub_24B6C1A6C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutContextMenuPreviewAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034380, &qword_24B75EF68);
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034388, &qword_24B75EF70);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034390, &unk_24B75EF78);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for WorkoutContextMenuPreviewAction();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B6C190C();
  v21 = v50;
  sub_24B75C728();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v42 = v16;
  v50 = v18;
  v22 = v47;
  v23 = v48;
  v24 = sub_24B75C628();
  v25 = (2 * *(v24 + 16)) | 1;
  v52 = v24;
  v53 = v24 + 32;
  v54 = 0;
  v55 = v25;
  v26 = sub_24B6B9E04();
  v27 = v8;
  if (v26 == 2 || v54 != v55 >> 1)
  {
    v29 = sub_24B75C568();
    swift_allocError();
    v31 = v30;
    v32 = v27;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v31 = v12;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v49 + 8))(v11, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v26)
  {
    v56 = 1;
    sub_24B6C19C4();
    sub_24B75C598();
    v28 = v49;
    v36 = v23;
    (*(v44 + 8))(v22, v46);
    (*(v28 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v37 = type metadata accessor for WorkoutContextMenuPreviewContent();
    v38 = v50;
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  }

  else
  {
    v56 = 0;
    sub_24B6C1A18();
    sub_24B75C598();
    v35 = v49;
    v36 = v23;
    v39 = type metadata accessor for WorkoutContextMenuPreviewContent();
    sub_24B6C2174(&qword_27F034398);
    v41 = v42;
    v40 = v43;
    sub_24B75C618();
    (*(v45 + 8))(v7, v40);
    (*(v35 + 8))(v11, v27);
    swift_unknownObjectRelease();
    (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
    v38 = v50;
    sub_24B6C210C(v41, v50, type metadata accessor for WorkoutContextMenuPreviewAction);
  }

  sub_24B6C210C(v38, v36, type metadata accessor for WorkoutContextMenuPreviewAction);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_24B6C210C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C2174(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutContextMenuPreviewContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6C2210()
{
  v0 = type metadata accessor for WorkoutContextMenuPreviewContent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_24B6C229C()
{
  result = qword_27F0343A0;
  if (!qword_27F0343A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343A0);
  }

  return result;
}

unint64_t sub_24B6C22F4()
{
  result = qword_27F0343A8;
  if (!qword_27F0343A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343A8);
  }

  return result;
}

unint64_t sub_24B6C234C()
{
  result = qword_27F0343B0;
  if (!qword_27F0343B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343B0);
  }

  return result;
}

unint64_t sub_24B6C23A4()
{
  result = qword_27F0343B8;
  if (!qword_27F0343B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343B8);
  }

  return result;
}

unint64_t sub_24B6C23FC()
{
  result = qword_27F0343C0;
  if (!qword_27F0343C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343C0);
  }

  return result;
}

unint64_t sub_24B6C2454()
{
  result = qword_27F0343C8;
  if (!qword_27F0343C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343C8);
  }

  return result;
}

unint64_t sub_24B6C24AC()
{
  result = qword_27F0343D0;
  if (!qword_27F0343D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343D0);
  }

  return result;
}

unint64_t sub_24B6C2504()
{
  result = qword_27F0343D8;
  if (!qword_27F0343D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343D8);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutContextMenuPreviewState() + 24);

  return sub_24B6C25E8(a1, v3);
}

uint64_t sub_24B6C25E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t WorkoutContextMenuPreviewState.init(identifier:layout:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = a5 + *(type metadata accessor for WorkoutContextMenuPreviewState() + 24);

  return sub_24B6C26E8(a4, v8);
}

uint64_t sub_24B6C26E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B6C274C()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x7461745364616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B6C27AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6C3210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6C27D4(uint64_t a1)
{
  v2 = sub_24B6C2A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6C2810(uint64_t a1)
{
  v2 = sub_24B6C2A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0343E0, &qword_24B75F310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C2A30();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_24B75C678();
  if (!v2)
  {
    v15[14] = *(v3 + 16);
    v15[13] = 1;
    sub_24B6C2A84();
    sub_24B75C6A8();
    v13 = *(type metadata accessor for WorkoutContextMenuPreviewState() + 24);
    v15[12] = 2;
    type metadata accessor for WorkoutContextMenuPreviewLoadState();
    sub_24B6C2E78(&qword_27F0343F8);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6C2A30()
{
  result = qword_27F0343E8;
  if (!qword_27F0343E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343E8);
  }

  return result;
}

unint64_t sub_24B6C2A84()
{
  result = qword_27F0343F0;
  if (!qword_27F0343F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0343F0);
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034400, &qword_24B75F318);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for WorkoutContextMenuPreviewState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6C2A30();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v15 = v13;
  v16 = v23;
  v29 = 0;
  v17 = v25;
  *v15 = sub_24B75C5E8();
  *(v15 + 8) = v18;
  v20 = v18;
  v27 = 1;
  sub_24B6C2E24();
  sub_24B75C618();
  *(v15 + 16) = v28;
  v26 = 2;
  sub_24B6C2E78(&qword_27F034410);
  sub_24B75C618();
  (*(v16 + 8))(v9, v17);
  sub_24B6C26E8(v6, v15 + *(v10 + 24));
  sub_24B6C2EBC(v15, v22, type metadata accessor for WorkoutContextMenuPreviewState);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_24B6C2F24(v15);
}

unint64_t sub_24B6C2E24()
{
  result = qword_27F034408;
  if (!qword_27F034408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034408);
  }

  return result;
}

uint64_t sub_24B6C2E78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutContextMenuPreviewLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6C2EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C2F24(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutContextMenuPreviewState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static WorkoutContextMenuPreviewState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24B75C6B8() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for WorkoutContextMenuPreviewState() + 24);

  return _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

BOOL sub_24B6C303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_24B75C6B8() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return _s20FitnessProductDetail34WorkoutContextMenuPreviewLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v8, a2 + v8);
}

unint64_t sub_24B6C310C()
{
  result = qword_27F034418;
  if (!qword_27F034418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034418);
  }

  return result;
}

unint64_t sub_24B6C3164()
{
  result = qword_27F034420;
  if (!qword_27F034420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034420);
  }

  return result;
}

unint64_t sub_24B6C31BC()
{
  result = qword_27F034428;
  if (!qword_27F034428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034428);
  }

  return result;
}

uint64_t sub_24B6C3210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B6C3334()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6C3394()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C2489B0](0);

  return sub_24B75C358();
}

uint64_t sub_24B6C33E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](0);
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6C3444(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B75C6B8();
  }
}

__n128 WorkoutContextMenuPreviewFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t WorkoutContextMenuPreviewFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, void **a3, uint64_t a4)
{
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034430, &unk_24B75F4E0);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v12 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutContextMenuPreviewAction();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[1];
  v46 = *v4;
  v47 = v19;
  sub_24B6C4800(a4, v18, type metadata accessor for WorkoutContextMenuPreviewAction);
  v20 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = *(type metadata accessor for WorkoutContextMenuPreviewState() + 24);
  if (v23 == 1)
  {
    sub_24B6C4800(&a2[v24], v14, type metadata accessor for WorkoutContextMenuPreviewLoadState);
    result = v22(v14, 2, v20);
    if (result)
    {
      if (result == 1)
      {
        v27 = *a2;
        v26 = *(a2 + 1);

        sub_24B6C4868(&a2[v24], type metadata accessor for WorkoutContextMenuPreviewLoadState);
        (*(v21 + 56))(&a2[v24], 2, 2, v20);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
        v29 = v28[12];
        v30 = v28[16];
        v31 = v28[20];
        v32 = &v10[v28[24]];
        v51 = v27;
        v52 = v26;
        sub_24B6C3990();

        sub_24B75C508();
        sub_24B75C3F8();
        v33 = *MEMORY[0x277D043F0];
        v34 = sub_24B75C208();
        (*(*(v34 - 8) + 104))(&v10[v30], v33, v34);
        v35 = swift_allocObject();
        v36 = v47;
        v35[2] = v46;
        v35[3] = v36;
        v35[4] = v27;
        v35[5] = v26;
        *v32 = &unk_24B75F4F8;
        *(v32 + 1) = v35;
        v37 = *MEMORY[0x277D043E8];
        v38 = sub_24B75C1F8();
        (*(*(v38 - 8) + 104))(&v10[v31], v37, v38);
        v40 = v48;
        v39 = v49;
        (*(v48 + 104))(v10, *MEMORY[0x277D043B0], v49);
        v41 = v50;
        v42 = *v50;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_24B6C4614(0, v42[2] + 1, 1, v42, &qword_27F034498, &qword_24B75F690, &qword_27F034430, &unk_24B75F4E0);
        }

        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_24B6C4614(v43 > 1, v44 + 1, 1, v42, &qword_27F034498, &qword_24B75F690, &qword_27F034430, &unk_24B75F4E0);
        }

        v42[2] = v44 + 1;
        result = (*(v40 + 32))(v42 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v44, v10, v39);
        *v41 = v42;
      }
    }

    else
    {
      return sub_24B6C4868(v14, type metadata accessor for WorkoutContextMenuPreviewLoadState);
    }
  }

  else
  {
    sub_24B6C4868(&a2[v24], type metadata accessor for WorkoutContextMenuPreviewLoadState);
    sub_24B6C4228(v18, &a2[v24]);
    return (*(v21 + 56))(&a2[v24], 0, 2, v20);
  }

  return result;
}

unint64_t sub_24B6C3990()
{
  result = qword_27F034440;
  if (!qword_27F034440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034440);
  }

  return result;
}

uint64_t sub_24B6C39E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v9 = *(*(type metadata accessor for WorkoutContextMenuPreviewAction() - 8) + 64) + 15;
  v5[3] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v5[4] = v10;
  v11 = *(v10 - 8);
  v5[5] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[6] = v13;
  v5[7] = sub_24B75C3E8();
  v5[8] = sub_24B75C3D8();
  v17 = (a2 + *a2);
  v14 = a2[1];
  v15 = swift_task_alloc();
  v5[9] = v15;
  *v15 = v5;
  v15[1] = sub_24B6C3BA8;

  return v17(v13, a4, a5);
}

uint64_t sub_24B6C3BA8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v11 = *v1;
  v3[10] = v2;

  v8 = sub_24B75C3C8();
  v3[11] = v8;
  v3[12] = v7;
  if (v2)
  {
    v9 = sub_24B6C3FF4;
  }

  else
  {
    v9 = sub_24B6C3D08;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B6C3D08()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_24B6C4800(v0[6], v2, type metadata accessor for WorkoutContextMenuPreviewContent);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = *(MEMORY[0x277D043C8] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344A0, &qword_24B75F698);
  *v5 = v0;
  v5[1] = sub_24B6C3E04;
  v8 = v0[2];
  v7 = v0[3];

  return MEMORY[0x282159B08](v7, v6);
}

uint64_t sub_24B6C3E04()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 24);
  v7 = *v0;

  sub_24B6C4868(v3, type metadata accessor for WorkoutContextMenuPreviewAction);
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B6C3F5C, v5, v4);
}

uint64_t sub_24B6C3F5C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  sub_24B6C4868(v2, type metadata accessor for WorkoutContextMenuPreviewContent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B6C3FF4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_24B6C4070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6C412C;

  return sub_24B6C39E4(a1, v4, v5, v7, v6);
}

uint64_t sub_24B6C412C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B6C4228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B6C4320()
{
  result = qword_27F034448;
  if (!qword_27F034448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034448);
  }

  return result;
}

uint64_t sub_24B6C43BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B6C4404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B6C444C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B6C4498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B6C44E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B6C4530()
{
  result = qword_27F034450;
  if (!qword_27F034450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034450);
  }

  return result;
}

size_t sub_24B6C4614(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_24B6C4800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6C4868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6C48C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D0, qword_24B75F750);
  sub_24B6C743C(&qword_2810F6968, &qword_27F0344D0, qword_24B75F750);

  return sub_24B75B408();
}

uint64_t sub_24B6C4968()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  return sub_24B75B268();
}

uint64_t sub_24B6C49D0(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v4;
}

__n128 sub_24B6C4A48@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24B75BAE8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75BAC8();
  v7 = *MEMORY[0x277CE0A10];
  v8 = v3[13];
  v8(v6, v7, v2);
  v18 = sub_24B75BB28();

  v9 = v3[1];
  v9(v6, v2);
  sub_24B75BAF8();
  v8(v6, v7, v2);
  v10 = sub_24B75BB28();

  v9(v6, v2);
  sub_24B75BB38();
  v8(v6, v7, v2);
  v11 = sub_24B75BB28();

  v9(v6, v2);
  *a1 = 0x4072F00000000000;
  *(a1 + 8) = v18;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + 32) = result;
  *(a1 + 48) = xmmword_24B75F6A0;
  *(a1 + 64) = 0x4028000000000000;
  return result;
}

uint64_t sub_24B6C4C34(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t (*sub_24B6C4CBC(uint64_t a1))(uint64_t a1)
{
  v1 = *(a1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v3;
  return sub_24B6C74F4;
}

uint64_t WorkoutContextMenuPreviewView.init(store:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for WorkoutContextMenuPreviewView();
  v10 = a5 + v9[10];
  sub_24B6C4A48(v18);
  v11 = v18[3];
  *(v10 + 32) = v18[2];
  *(v10 + 48) = v11;
  *(v10 + 64) = v19;
  v12 = v18[1];
  *v10 = v18[0];
  *(v10 + 16) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a5 = sub_24B6C4E74;
  *(a5 + 8) = v13;
  *(a5 + 16) = 0;
  v14 = v9[9];

  sub_24B6C4968();
  v15 = a5 + v9[11];
  sub_24B6C4C34(a3, a4);
}

uint64_t sub_24B6C4E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t WorkoutContextMenuPreviewView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v34 = *(a1 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
  v29 = *(a1 + 16);
  v5 = v29;
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v6 = sub_24B75C0A8();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_24B75B558();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v29 - v15;
  sub_24B6C5368(a1);
  v16 = *(a1 + 24);
  v37 = v5;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v2;
  sub_24B75C158();
  sub_24B75C098();
  v19 = v34;
  v20 = v31;
  (*(v34 + 16))(v31, v2, a1);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 24) = v16;
  (*(v19 + 32))(v22 + v21, v20, a1);
  WitnessTable = swift_getWitnessTable();
  v24 = v30;
  sub_24B75BE88();

  (*(v33 + 8))(v9, v6);
  v42 = WitnessTable;
  v43 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v25 = v11[2];
  v26 = v32;
  v25(v32, v24, v10);
  v27 = v11[1];
  v27(v24, v10);
  v25(v36, v26, v10);
  return (v27)(v26, v10);
}

void sub_24B6C5368(uint64_t a1)
{
  v2 = v1;
  sub_24B6C48C8();
  swift_getKeyPath();
  sub_24B75C218();

  if (v17 == 1)
  {
    v4 = *(v1 + *(a1 + 40)) * *(v1 + *(a1 + 40) + 56);
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    Width = CGRectGetWidth(v18);
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    Height = CGRectGetHeight(v19);
    if (Height >= Width)
    {
      Height = Width;
    }

    v16 = *(v2 + *(a1 + 40) + 56) * (Height - (*(v2 + *(a1 + 40) + 32) + *(v2 + *(a1 + 40) + 32)));
  }
}

uint64_t sub_24B6C549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v62 = a1;
  v66 = a4;
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B8, &unk_24B75F6C0);
  swift_getTupleTypeMetadata2();
  v49[2] = sub_24B75C178();
  v49[1] = swift_getWitnessTable();
  v10 = sub_24B75C088();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v49 - v14;
  v15 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for WorkoutContextMenuPreviewLoadState();
  v20 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B75B7B8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v65 = v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v64 = v49 - v28;
  v63 = sub_24B75BF08();
  sub_24B75C158();
  sub_24B75B458();
  v61 = v78[2];
  v60 = v79;
  v59 = v80;
  v58 = v81;
  v57 = v82;
  v56 = v83;
  v53 = a2;
  v54 = a3;
  v29 = type metadata accessor for WorkoutContextMenuPreviewView();
  v30 = v62;
  sub_24B6C48C8();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = (*(v16 + 48))(v22, 2, v15);
  v32 = MEMORY[0x277CE1410];
  if (v31)
  {
    WitnessTable = swift_getWitnessTable();
    v34 = v64;
    sub_24B73898C(WitnessTable, MEMORY[0x277CE1428]);
  }

  else
  {
    v35 = v55;
    v36 = sub_24B6C4228(v22, v55);
    v37 = *(v30 + *(v29 + 40) + 40);
    MEMORY[0x28223BE20](v36);
    v38 = v54;
    v49[-6] = v53;
    v49[-5] = v38;
    v49[-4] = v35;
    v49[-3] = v30;
    *&v49[-2] = a5;
    *&v49[-1] = a6;
    sub_24B75B778();
    v39 = v51;
    sub_24B75C078();
    v62 = swift_getWitnessTable();
    v40 = v52;
    v41 = *(v52 + 16);
    v42 = v50;
    v41(v50, v39, v10);
    v43 = *(v40 + 8);
    v43(v39, v10);
    v41(v39, v42, v10);
    v34 = v64;
    sub_24B738894(v39, MEMORY[0x277CE1428], v10);
    v44 = v39;
    v32 = MEMORY[0x277CE1410];
    v43(v44, v10);
    v43(v42, v10);
    sub_24B6C7358(v55, type metadata accessor for WorkoutContextMenuPreviewContent);
  }

  v72[0] = v63;
  v72[1] = v61;
  v73 = v60;
  v74 = v59;
  v75 = v58;
  v76 = v57;
  v77 = v56;
  v78[0] = v72;
  v45 = v65;
  (*(v24 + 16))(v65, v34, v23);
  v78[1] = v45;

  v71[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344A8, &unk_24B75F6B0);
  v71[1] = v23;
  v69 = sub_24B6C73B8();
  v46 = swift_getWitnessTable();
  v67 = v32;
  v68 = v46;
  v70 = swift_getWitnessTable();
  sub_24B7386C4(v78, 2uLL, v71);

  v47 = *(v24 + 8);
  v47(v34, v23);
  v47(v45, v23);
}

uint64_t sub_24B6C5C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v76 = a5;
  v77 = a2;
  v70 = *(a3 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](a1);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v8;
  v9 = sub_24B75B558();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v67 = &v65 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v83 = v9;
  v12 = sub_24B75B558();
  v74 = *(v12 - 8);
  v13 = v74[8];
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v81 = v12;
  v84 = sub_24B75C4E8();
  v79 = *(v84 - 8);
  v26 = *(v79 + 64);
  v27 = MEMORY[0x28223BE20](v84);
  v82 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v80 = &v65 - v29;
  v75 = a1;
  sub_24B6B9D34(a1, v20, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_24B6B9CD4(v20, &qword_27F0344E8, &unk_24B76A050);
    v30 = v82;
    (v74[7])(v82, 1, 1, v81);
    v134 = v85;
    v135 = MEMORY[0x277CDF678];
    WitnessTable = swift_getWitnessTable();
    v32 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
    v132 = WitnessTable;
    v133 = v32;
    swift_getWitnessTable();
    sub_24B6C7508(v30, v80);
    v33 = *(v79 + 8);
    v73 = ((v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v74 = v33;
    (v33)(v30, v84);
    v34 = type metadata accessor for WorkoutContextMenuPreviewView();
  }

  else
  {
    v35 = v25;
    v66 = v25;
    sub_24B6C7484(v20, v25);
    v36 = v78;
    v37 = v85;
    v69 = type metadata accessor for WorkoutContextMenuPreviewView();
    v38 = v77;
    v39 = sub_24B6C49D0(v69);
    v40 = v68;
    v39(v35);

    sub_24B75C158();
    v41 = v67;
    sub_24B75BE08();
    (*(v70 + 8))(v40, v36);
    v42 = *(v38 + *(v69 + 40) + 64);
    v88 = v37;
    v89 = MEMORY[0x277CDF678];
    v43 = v83;
    v44 = swift_getWitnessTable();
    v45 = v73;
    sub_24B75BD18();
    (*(v71 + 8))(v41, v43);
    sub_24B6B9CD4(v66, &qword_27F0344C0, &unk_24B763A50);
    v46 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
    v86 = v44;
    v87 = v46;
    v47 = v81;
    v71 = swift_getWitnessTable();
    v48 = v74;
    v49 = v74[2];
    v50 = v72;
    v49(v72, v45, v47);
    v51 = v48[1];
    v51(v45, v47);
    v49(v45, v50, v47);
    v51(v50, v47);
    v52 = v82;
    (v48[4])(v82, v45, v47);
    (v48[7])(v52, 0, 1, v47);
    sub_24B6C7508(v52, v80);
    v53 = *(v79 + 8);
    v73 = ((v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v74 = v53;
    (v53)(v52, v84);
    v34 = v69;
  }

  v54 = v77;
  v55 = *(v77 + *(v34 + 40) + 48);
  v56 = sub_24B75B778();
  LOBYTE(v98) = 0;
  v57 = v85;
  sub_24B6C680C(v75, v54, v78, v85, v130);
  v124 = v130[10];
  v125 = v130[11];
  v120 = v130[6];
  v121 = v130[7];
  v122 = v130[8];
  v123 = v130[9];
  v116 = v130[2];
  v117 = v130[3];
  v118 = v130[4];
  v119 = v130[5];
  v114 = v130[0];
  v115 = v130[1];
  v127[9] = v130[9];
  v127[10] = v130[10];
  v127[11] = v130[11];
  v127[12] = v130[12];
  v127[5] = v130[5];
  v127[6] = v130[6];
  v127[7] = v130[7];
  v127[8] = v130[8];
  v127[1] = v130[1];
  v127[2] = v130[2];
  v127[3] = v130[3];
  v127[4] = v130[4];
  v126 = v130[12];
  v127[0] = v130[0];
  sub_24B6B9D34(&v114, &v128, &qword_27F0344F8, &unk_24B75F810);
  sub_24B6B9CD4(v127, &qword_27F0344F8, &unk_24B75F810);
  *(&v130[9] + 7) = v123;
  *(&v130[10] + 7) = v124;
  *(&v130[11] + 7) = v125;
  *(&v130[12] + 7) = v126;
  *(&v130[5] + 7) = v119;
  *(&v130[6] + 7) = v120;
  *(&v130[7] + 7) = v121;
  *(&v130[8] + 7) = v122;
  *(&v130[1] + 7) = v115;
  *(&v130[2] + 7) = v116;
  *(&v130[3] + 7) = v117;
  *(&v130[4] + 7) = v118;
  *(v130 + 7) = v114;
  *&v129[161] = v130[10];
  *&v129[177] = v130[11];
  *&v129[193] = v130[12];
  *&v129[97] = v130[6];
  *&v129[113] = v130[7];
  *&v129[129] = v130[8];
  *&v129[145] = v130[9];
  *&v129[33] = v130[2];
  *&v129[49] = v130[3];
  *&v129[65] = v130[4];
  *&v129[81] = v130[5];
  *&v129[1] = v130[0];
  *&v128 = v56;
  *(&v128 + 1) = v55;
  v129[0] = v98;
  *&v129[208] = *(&v126 + 1);
  *&v129[17] = v130[1];
  v58 = v80;
  v59 = v82;
  v60 = v84;
  (*(v79 + 16))(v82, v80, v84);
  v110 = *&v129[176];
  v111 = *&v129[192];
  v112 = *&v129[208];
  v106 = *&v129[112];
  v107 = *&v129[128];
  v108 = *&v129[144];
  v109 = *&v129[160];
  v102 = *&v129[48];
  v103 = *&v129[64];
  v104 = *&v129[80];
  v105 = *&v129[96];
  v98 = v128;
  v99 = *v129;
  v100 = *&v129[16];
  v101 = *&v129[32];
  v113[0] = v59;
  v113[1] = &v98;
  sub_24B6B9D34(&v128, v130, &qword_27F0344B8, &unk_24B75F6C0);
  v97[0] = v60;
  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344B8, &unk_24B75F6C0);
  v93 = v57;
  v94 = MEMORY[0x277CDF678];
  v61 = swift_getWitnessTable();
  v62 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v91 = v61;
  v92 = v62;
  v90 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v96 = sub_24B6C743C(&qword_27F034500, &qword_27F0344B8, &unk_24B75F6C0);
  sub_24B7386C4(v113, 2uLL, v97);
  sub_24B6B9CD4(&v128, &qword_27F0344B8, &unk_24B75F6C0);
  v63 = v74;
  (v74)(v58, v60);
  v130[12] = v110;
  v130[13] = v111;
  v131 = v112;
  v130[8] = v106;
  v130[9] = v107;
  v130[10] = v108;
  v130[11] = v109;
  v130[4] = v102;
  v130[5] = v103;
  v130[6] = v104;
  v130[7] = v105;
  v130[0] = v98;
  v130[1] = v99;
  v130[2] = v100;
  v130[3] = v101;
  sub_24B6B9CD4(v130, &qword_27F0344B8, &unk_24B75F6C0);
  return v63(v59, v60);
}

uint64_t sub_24B6C680C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v95 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v88 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - v13;
  v15 = sub_24B75AFE8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v85 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - v20;
  v86 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v87 = a1;
  v22 = v16;
  sub_24B6B9D34(a1 + *(v86 + 20), v14, &qword_27F034508, &qword_24B761E50);
  v23 = *(v16 + 48);
  v24 = v23(v14, 1, v15);
  v83 = a3;
  v84 = a4;
  if (v24 == 1)
  {
    sub_24B6B9CD4(v14, &qword_27F034508, &qword_24B761E50);
    v100 = 0;
    v101 = 0;
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0uLL;
    v96 = 0;
    v25 = v95;
  }

  else
  {
    (*(v22 + 32))(v21, v14, v15);
    v26 = type metadata accessor for WorkoutContextMenuPreviewView();
    v27 = sub_24B6C4CBC(v26);
    v101 = v27(v21);
    v93 = v29;
    v94 = v28;
    v30 = v23;
    v31 = v22;
    v33 = v32;

    sub_24B75C168();
    sub_24B75B458();
    v34 = v33 & 1;
    v22 = v31;
    v23 = v30;
    LOBYTE(v124[0]) = v34;
    v91 = v128;
    v92 = v127;
    v90 = v129;
    v99 = v131;
    v100 = v130;
    v98 = v132;
    v96 = v34;
    v35 = *(v26 + 40);
    v25 = v95;
    v36 = *(v95 + v35 + 8);
    *&v97 = swift_getKeyPath();
    *(&v97 + 1) = v36;

    v89 = sub_24B75BF18();
    (*(v22 + 8))(v21, v15);
  }

  v37 = v15;
  v38 = v88;
  sub_24B6B9D34(v87 + *(v86 + 24), v88, &qword_27F034508, &qword_24B761E50);
  if (v23(v38, 1, v15) == 1)
  {
    sub_24B6B9CD4(v38, &qword_27F034508, &qword_24B761E50);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v52 = v85;
    (*(v22 + 32))(v85, v38, v15);
    v53 = type metadata accessor for WorkoutContextMenuPreviewView();
    v54 = sub_24B6C4CBC(v53);
    v95 = v54(v52);
    v87 = v56;
    v88 = v55;
    v57 = v22;
    v59 = v58;

    sub_24B75C168();
    sub_24B75B458();
    LOBYTE(v124[0]) = v59 & 1;
    v86 = v133;
    v83 = v135;
    v84 = v134;
    v81 = v137;
    v82 = v136;
    v80 = v138;
    sub_24B6C48C8();
    swift_getKeyPath();
    sub_24B75C218();

    v60 = 24;
    if (LOBYTE(v123[0]))
    {
      v60 = 16;
    }

    v49 = *(v25 + *(v53 + 40) + v60);

    KeyPath = swift_getKeyPath();
    v50 = sub_24B75BF18();
    (*(v57 + 8))(v52, v37);
    v48 = KeyPath;
    v51 = v59 & 1;
    v47 = v80;
    v46 = v81;
    v45 = v82;
    v44 = v83;
    v43 = v84;
    v42 = v86;
    v41 = v87;
    v40 = v88;
    v39 = v95;
  }

  v62 = v93;
  v63 = v94;
  *&v109 = v101;
  *(&v109 + 1) = v94;
  *&v110 = v96;
  *(&v110 + 1) = v93;
  v64 = v91;
  v65 = v92;
  *&v111 = v92;
  *(&v111 + 1) = v91;
  v66 = v89;
  v67 = v90;
  *&v112 = v90;
  *(&v112 + 1) = v100;
  *&v113 = v99;
  *(&v113 + 1) = v98;
  v114 = v97;
  v115 = v89;
  v102 = v109;
  v103 = v110;
  *&v108[0] = v89;
  v106 = v113;
  v107 = v97;
  v104 = v111;
  v105 = v112;
  *&v116 = v39;
  *(&v116 + 1) = v40;
  *&v117 = v51;
  *(&v117 + 1) = v41;
  *&v118 = v42;
  *(&v118 + 1) = v43;
  *&v119 = v44;
  *(&v119 + 1) = v45;
  *&v120 = v46;
  *(&v120 + 1) = v47;
  *&v121 = v48;
  *(&v121 + 1) = v49;
  v122 = v50;
  *(&v108[2] + 8) = v118;
  *(&v108[1] + 8) = v117;
  *(v108 + 8) = v116;
  *(&v108[6] + 1) = v50;
  *(&v108[5] + 8) = v121;
  *(&v108[4] + 8) = v120;
  *(&v108[3] + 8) = v119;
  v68 = v109;
  v69 = v110;
  v70 = v112;
  a5[2] = v111;
  a5[3] = v70;
  *a5 = v68;
  a5[1] = v69;
  v71 = v106;
  v72 = v107;
  v73 = v108[1];
  a5[6] = v108[0];
  a5[7] = v73;
  a5[4] = v71;
  a5[5] = v72;
  v74 = v108[2];
  v75 = v108[3];
  v76 = v108[6];
  a5[11] = v108[5];
  a5[12] = v76;
  v77 = v108[4];
  a5[9] = v75;
  a5[10] = v77;
  a5[8] = v74;
  v123[0] = v39;
  v123[1] = v40;
  v123[2] = v51;
  v123[3] = v41;
  v123[4] = v42;
  v123[5] = v43;
  v123[6] = v44;
  v123[7] = v45;
  v123[8] = v46;
  v123[9] = v47;
  v123[10] = v48;
  v123[11] = v49;
  v123[12] = v50;
  sub_24B6B9D34(&v109, v124, &qword_27F034510, &qword_24B75F820);
  sub_24B6B9D34(&v116, v124, &qword_27F034510, &qword_24B75F820);
  sub_24B6B9CD4(v123, &qword_27F034510, &qword_24B75F820);
  v124[0] = v101;
  v124[1] = v63;
  v124[2] = v96;
  v124[3] = v62;
  v124[4] = v65;
  v124[5] = v64;
  v124[6] = v67;
  v124[7] = v100;
  v124[8] = v99;
  v124[9] = v98;
  v125 = v97;
  v126 = v66;
  return sub_24B6B9CD4(v124, &qword_27F034510, &qword_24B75F820);
}

uint64_t sub_24B6C6F04()
{
  v0 = type metadata accessor for WorkoutContextMenuPreviewAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutContextMenuPreviewView();
  sub_24B6C48C8();
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_24B75C228();

  return sub_24B6C7358(v3, type metadata accessor for WorkoutContextMenuPreviewAction);
}

uint64_t sub_24B6C700C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for WorkoutContextMenuPreviewView() - 8) + 80);

  return sub_24B6C6F04();
}

void sub_24B6C7124()
{
  if (!qword_2810F6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344D0, qword_24B75F750);
    sub_24B6C743C(&qword_2810F6968, &qword_27F0344D0, qword_24B75F750);
    v0 = sub_24B75B418();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F6978);
    }
  }
}

void sub_24B6C71E0()
{
  if (!qword_2810F7AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344D8, qword_24B75FA30);
    v0 = sub_24B75B288();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F7AF0);
    }
  }
}

uint64_t sub_24B6C7244()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B6C72B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B6C72F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24B6C7348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  return sub_24B6C5C3C(v1[4], v1[5], v1[2], v1[3], a1);
}

uint64_t sub_24B6C7358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B6C73B8()
{
  result = qword_27F0344E0;
  if (!qword_27F0344E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344A8, &unk_24B75F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0344E0);
  }

  return result;
}

uint64_t sub_24B6C743C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B6C7484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6C7508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B75C4E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24B6C7574()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034698, &qword_24B75FA28);
  sub_24B6C743C(&qword_27F0346A0, &qword_27F034698, &qword_24B75FA28);

  return sub_24B75B408();
}

uint64_t sub_24B6C7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = a10;
  v18[10] = a1;
  v18[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  return sub_24B75B268();
}

uint64_t (*sub_24B6C7744(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 16);
  *&v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034120, &unk_24B75E1E0);
  *(&v6 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034118, &qword_24B75E1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F034608, &unk_24B75F9B0);
  swift_getFunctionTypeMetadata();
  sub_24B75B288();
  sub_24B75B278();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 80) = v6;
  return sub_24B6E9AA4;
}

uint64_t (*sub_24B6C7864(uint64_t a1))(uint64_t a1)
{
  v1 = *(a1 + 100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  sub_24B75B278();
  *(swift_allocObject() + 16) = v3;
  return sub_24B6C74F4;
}

uint64_t WorkoutDetailView.init(store:relatedCanvasViewBuilder:workoutActionsViewBuilder:artworkBannerViewBuilder:artworkViewBuilder:textViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *a6 = sub_24B6C4E74;
  *(a6 + 8) = v21;
  *(a6 + 16) = 0;
  v22 = type metadata accessor for WorkoutDetailView();
  v23 = v22[21];

  v25 = a3(v24);
  v26 = a6 + v22[22];
  v27 = a4(v25);
  v28 = a6 + v22[23];
  a5(v27);
  v29 = v22[24];

  sub_24B6C7614(a7, a8, a11, a12, a13, a14, a15, a16, a17, a18);
  v30 = v22[25];
  v31 = swift_allocObject();
  *(v31 + 16) = a9;
  *(v31 + 24) = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  sub_24B75B268();
}

BOOL sub_24B6C7B08(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for WorkoutDetail() + 88) + 8))
  {
    return 0;
  }

  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  return !v3 && v2 < 7u;
}

uint64_t sub_24B6C7BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  v19 = *(a2 + 16);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v18 = *(a2 + 40);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v17[1] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v30 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  v5 = sub_24B75C088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B788();
  v22 = v19;
  v23 = *(a2 + 24);
  v24 = v18;
  v13 = *(a2 + 64);
  v25 = *(a2 + 48);
  v26 = v13;
  v27 = v3;
  v28 = v20;
  sub_24B75C078();
  v14 = swift_getWitnessTable();
  sub_24B6C7504(v10, v5, v14);
  v15 = *(v6 + 8);
  v15(v10, v5);
  sub_24B6C7504(v12, v5, v14);
  return (v15)(v12, v5);
}

uint64_t sub_24B6C7F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v33 = a7;
  v31 = a5;
  v34 = a2;
  v32 = a1;
  v36 = a9;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v14 = sub_24B75B558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v38 = a3;
  v39 = a4;
  v40 = v31;
  v41 = a6;
  v42 = v33;
  v43 = v35;
  v44 = a10;
  v45 = a11;
  v22 = v34;
  v46 = v32;
  v47 = v34;
  v50 = a3;
  v51 = a4;
  v52 = v31;
  v53 = a6;
  v54 = v33;
  v55 = v35;
  v56 = a10;
  v57 = a11;
  v23 = type metadata accessor for WorkoutDetailView();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349A8, &qword_24B75FD58);
  v25 = sub_24B6EAAF8();
  sub_24B6C8A54(v22, sub_24B6EAAE0, v37, v23, v24, v25, v19);
  WitnessTable = swift_getWitnessTable();
  v27 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v48 = WitnessTable;
  v49 = v27;
  v28 = swift_getWitnessTable();
  sub_24B6C7504(v19, v14, v28);
  v29 = *(v15 + 8);
  v29(v19, v14);
  sub_24B6C7504(v21, v14, v28);
  return (v29)(v21, v14);
}

uint64_t sub_24B6C82D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  *&v56 = a7;
  v59 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v51 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345B0, &qword_24B75F950);
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v51 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349C0, &qword_24B75FD60);
  v57 = *(v22 - 8);
  *&v58 = v22;
  v23 = *(v57 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v54 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v53 = &v51 - v26;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = v56;
  v66 = a9;
  v67 = a10;
  v27 = type metadata accessor for WorkoutDetailView();
  if (sub_24B6C7B08(a1))
  {
    sub_24B6C86BC(a1, v27, v19);
    v28 = sub_24B75B9D8();
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v29 = v64;
    if (v64)
    {
      v56 = 0u;
      v51 = 0u;
    }

    else
    {
      sub_24B75B3D8();
      *(&v34 + 1) = v33;
      v51 = v34;
      *(&v36 + 1) = v35;
      v56 = v36;
    }

    v32 = v58;
    v37 = v55;
    sub_24B6B8DE8(v19, v55, &qword_27F0346C0, &qword_24B75FAC0);
    v38 = v37 + *(v52 + 36);
    *v38 = v28;
    *(v38 + 24) = v51;
    *(v38 + 8) = v56;
    *(v38 + 40) = v29;
    v39 = sub_24B75B9F8();
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v40 = v64;
    if (v64)
    {
      v58 = 0u;
      v56 = 0u;
    }

    else
    {
      sub_24B75B3D8();
      *(&v42 + 1) = v41;
      v56 = v42;
      *(&v44 + 1) = v43;
      v58 = v44;
    }

    v45 = v37;
    v46 = v54;
    sub_24B6B8DE8(v45, v54, &qword_27F0345B0, &qword_24B75F950);
    v47 = v46 + *(v32 + 36);
    *v47 = v39;
    *(v47 + 24) = v56;
    *(v47 + 8) = v58;
    *(v47 + 40) = v40;
    v48 = v53;
    sub_24B6B8DE8(v46, v53, &qword_27F0349C0, &qword_24B75FD60);
    v49 = v48;
    v31 = v59;
    sub_24B6B8DE8(v49, v59, &qword_27F0349C0, &qword_24B75FD60);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v31 = v59;
    v32 = v58;
  }

  return (*(v57 + 56))(v31, v30, 1, v32);
}

uint64_t sub_24B6C86BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v35 = sub_24B75B768();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B75BAE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v12 = v43;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = v12 == 0 && BYTE1(v40) > 6u;
  v13 = 3;
  if (v31)
  {
    v13 = 0;
  }

  v30 = v13;
  v14 = sub_24B6C7864(a2);
  v15 = type metadata accessor for WorkoutDetail();
  v16 = v14(v32 + *(v15 + 112));
  v18 = v17;
  v20 = v19;

  sub_24B75BA58();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v8 + 104))(v11, *MEMORY[0x277CE0A10], v7);
  sub_24B75BB28();

  (*(v8 + 8))(v11, v7);
  v21 = sub_24B75BC18();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_24B6E89A0(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v21;
  v37 = v23;
  v25 &= 1u;
  v38 = v25;
  v39 = v27;
  v40 = KeyPath;
  v41 = v30;
  v42 = v31;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  sub_24B75BDD8();
  (*(v33 + 8))(v6, v35);
  sub_24B6E89A0(v21, v23, v25);
}

uint64_t sub_24B6C8A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v42 = a5;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v52 = a7;
  v50 = sub_24B75B588();
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(a4 + 16);
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v69 = a6;
  v70 = MEMORY[0x277CDF918];
  v51 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24B75B5D8();
  sub_24B75B558();
  v38 = *(a4 + 40);
  swift_getTupleTypeMetadata2();
  v40 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24B75C088();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v17 = sub_24B75B558();
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v43 = &v37 - v22;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v23 = v68;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v24 = 1.77777778;
  if (v23)
  {
    v25 = 14.0;
  }

  else
  {
    v25 = 0.0;
  }

  v54 = *(a4 + 24);
  if (v67 < 7u && v23 == 0)
  {
    v24 = 1.25;
  }

  v27 = *(a4 + 64);
  v57 = *(a4 + 48);
  v53 = v44;
  v55 = v38;
  v56 = v42;
  v58 = v27;
  v59 = v41;
  v60 = v7;
  v61 = v47;
  v62 = v24;
  v63 = v48;
  v64 = v49;
  sub_24B75B778();
  sub_24B75C078();
  v28 = *(v50 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24B75B748();
  (*(*(v30 - 8) + 104))(v12 + v28, v29, v30);
  *v12 = v25;
  v12[1] = v25;
  v31 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08]);
  sub_24B75BEA8();
  sub_24B6E9694(v12, MEMORY[0x277CDFC08]);
  (*(v45 + 8))(v16, v13);
  v32 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v65 = v31;
  v66 = v32;
  v33 = swift_getWitnessTable();
  v34 = v43;
  sub_24B6C7504(v21, v17, v33);
  v35 = *(v46 + 8);
  v35(v21, v17);
  sub_24B6C7504(v34, v17, v33);
  return (v35)(v34, v17);
}

uint64_t sub_24B6C909C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v105 = a7;
  v98 = a4;
  v97 = a3;
  v77 = a2;
  v106 = a1;
  v101 = a9;
  v107 = a14;
  v104 = a13;
  v102 = *(a8 - 8);
  v18 = *(v102 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v100 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v77 - v22;
  v82 = *(v23 - 8);
  v24 = *(v82 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v27 = sub_24B75B558();
  v84 = *(v27 - 8);
  v28 = v84[8];
  MEMORY[0x28223BE20](v27);
  v81 = &v77 - v29;
  v30 = sub_24B75B558();
  v89 = *(v30 - 8);
  v31 = *(v89 + 64);
  MEMORY[0x28223BE20](v30);
  v86 = &v77 - v32;
  v93 = a10;
  v33 = sub_24B75B558();
  v95 = a15;
  v119 = a15;
  v120 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v85 = v33;
  v79 = WitnessTable;
  v35 = sub_24B75B5D8();
  v91 = v30;
  v83 = v35;
  v90 = sub_24B75B558();
  v88 = *(v90 - 8);
  v36 = *(v88 + 64);
  v37 = MEMORY[0x28223BE20](v90);
  v92 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v80 = &v77 - v40;
  MEMORY[0x28223BE20](v39);
  v87 = &v77 - v41;
  v42 = a5;
  v111 = a5;
  v112 = a6;
  v96 = a6;
  v113 = v105;
  v114 = a8;
  v103 = a8;
  v115 = a11;
  v116 = a12;
  v94 = a12;
  v117 = v104;
  v118 = v107;
  v78 = type metadata accessor for WorkoutDetailView();
  v43 = sub_24B6C7744(v78);
  v44 = type metadata accessor for WorkoutDetail();
  v45 = v77;
  v46 = v44;
  if (*(v77 + *(v44 + 88) + 8) && *(v77 + *(v44 + 40)) >= 1)
  {
    v47 = sub_24B6E9C10(&unk_285E93A70);
  }

  else
  {
    v47 = MEMORY[0x277D84FA0];
  }

  v48 = *(v46 + 36);
  v49 = v45 + *(v46 + 32);
  v50 = type metadata accessor for WorkoutDetailArtwork();
  v43(v49, v45 + v48, v49 + *(v50 + 20), v47);

  v51 = v81;
  sub_24B75BDA8();
  (*(v82 + 8))(v26, v42);
  v52 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v110[6] = a11;
  v110[7] = v52;
  v53 = swift_getWitnessTable();
  v54 = v86;
  sub_24B75BCD8();
  (v84[1])(v51, v27);
  v55 = sub_24B75C148();
  v84 = &v77;
  MEMORY[0x28223BE20](v55);
  v56 = v96;
  *(&v77 - 12) = v42;
  *(&v77 - 11) = v56;
  v57 = v103;
  *(&v77 - 10) = v105;
  *(&v77 - 9) = v57;
  *(&v77 - 8) = v93;
  *(&v77 - 7) = a11;
  v58 = v104;
  *(&v77 - 6) = v94;
  *(&v77 - 5) = v58;
  v59 = v95;
  *(&v77 - 4) = v107;
  *(&v77 - 3) = v59;
  v60 = v98;
  *(&v77 - 2) = v97;
  *(&v77 - 1) = v60;
  v110[4] = v53;
  v110[5] = MEMORY[0x277CE01B0];
  v61 = v91;
  v62 = swift_getWitnessTable();
  v63 = v80;
  sub_24B75BE38();
  (*(v89 + 8))(v54, v61);
  v64 = swift_getWitnessTable();
  v110[2] = v62;
  v110[3] = v64;
  v65 = v90;
  v66 = swift_getWitnessTable();
  v67 = v87;
  sub_24B6C7504(v63, v65, v66);
  v68 = v88;
  v105 = *(v88 + 8);
  v105(v63, v65);
  v69 = v99;
  v70 = v107;
  sub_24B6C7504(v106 + *(v78 + 92), v57, v107);
  v71 = v92;
  (*(v68 + 16))(v92, v67, v65);
  v111 = v71;
  v72 = v102;
  v73 = v100;
  (*(v102 + 16))(v100, v69, v57);
  v112 = v73;
  v110[0] = v65;
  v110[1] = v57;
  v108 = v66;
  v109 = v70;
  sub_24B7386C4(&v111, 2uLL, v110);
  v74 = *(v72 + 8);
  v74(v69, v57);
  v75 = v105;
  v105(v67, v65);
  v74(v73, v57);
  return v75(v71, v65);
}

uint64_t sub_24B6C99A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[1] = a3;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B75B558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v25 - v20;
  a1(v19);
  sub_24B75B9C8();
  sub_24B75BE48();
  (*(v9 + 8))(v12, a2);
  v25[2] = a7;
  v25[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_24B6C7504(v18, v13, WitnessTable);
  v23 = *(v14 + 8);
  v23(v18, v13);
  sub_24B6C7504(v21, v13, WitnessTable);
  return (v23)(v21, v13);
}

uint64_t sub_24B6C9BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v20 = *(a2 + 32);
  v21 = *(a2 + 64);
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v19[1] = swift_getWitnessTable();
  v5 = sub_24B75C088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v13 = v36;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v35 < 4u && v13 == 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  sub_24B75B788();
  v24 = *(a2 + 16);
  v25 = v20;
  v26 = *(a2 + 40);
  v27 = *(a2 + 56);
  v28 = v21;
  v29 = *(a2 + 72);
  v30 = v3;
  v31 = v22;
  v32 = v15;
  sub_24B75C078();
  WitnessTable = swift_getWitnessTable();
  sub_24B6C7504(v10, v5, WitnessTable);
  v17 = *(v6 + 8);
  v17(v10, v5);
  sub_24B6C7504(v12, v5, WitnessTable);
  return (v17)(v12, v5);
}

uint64_t sub_24B6C9F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12)
{
  v89 = a7;
  v90 = a8;
  v88 = a5;
  v86 = a4;
  v107 = a3;
  v108 = a9;
  v91 = a1;
  v87 = a12;
  v85 = a10;
  v14 = sub_24B75B1F8();
  v105 = *(v14 - 8);
  v106 = v14;
  v15 = *(v105 + 64);
  MEMORY[0x28223BE20](v14);
  v101 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24B75AF28();
  v17 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v98 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034548, &qword_24B75F8F8);
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v102 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = v80 - v23;
  v24 = sub_24B75C2B8();
  v95 = *(v24 - 8);
  v96 = v24;
  v25 = *(v95 + 64);
  MEMORY[0x28223BE20](v24);
  OpaqueTypeConformance2 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24B75C258();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v84 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24B75C278();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v80[1] = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B8, &qword_24B75FC50);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = v80 - v35;
  v37 = a6;
  v81 = a11;
  v82 = a6;
  v118 = a6;
  v119 = a11;
  v92 = MEMORY[0x277D7EDA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = *(OpaqueTypeMetadata2 - 8);
  v38 = *(v109 + 64);
  v39 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v113 = v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v111 = v80 - v41;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034540, &qword_24B75F8F0);
  v42 = *(*(v97 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v97);
  v110 = v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v80 - v45;
  v112 = v80 - v45;
  v47 = type metadata accessor for WorkoutDetail();
  v48 = *(a2 + v47[11]);
  v49 = v47[14];
  v50 = *(a2 + v47[29]);
  v83 = a2;
  v118 = v86;
  v119 = v88;
  v120 = v37;
  v121 = v89;
  v122 = v90;
  v123 = v85;
  v124 = a11;
  v125 = v87;
  v51 = type metadata accessor for WorkoutDetailView();
  v90 = v51;
  sub_24B6CA914(v48, a2 + v49, v50, v51, v46);
  v52 = *(v51 + 88);
  sub_24B75C268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E0, &qword_24B75FCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B75F8A0;
  strcpy((inited + 32), "impressionType");
  v54 = MEMORY[0x277D837D0];
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v54;
  *(inited + 80) = 0x6973736572706D69;
  v55 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v55;
  *(inited + 128) = 0x657079546469;
  *(inited + 168) = v54;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x64695F737469;
  *(inited + 152) = 0xE600000000000000;
  sub_24B6E9D4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E8, &qword_24B75FCD0);
  swift_arrayDestroy();
  sub_24B75C248();
  v56 = MEMORY[0x277D84F90];
  sub_24B6E9D4C(MEMORY[0x277D84F90]);
  sub_24B6E9D4C(v56);
  sub_24B75C288();
  v57 = sub_24B75C298();
  (*(*(v57 - 8) + 56))(v36, 0, 1, v57);
  v58 = OpaqueTypeConformance2;
  sub_24B75C2A8();
  v59 = v113;
  v60 = v81;
  v61 = v82;
  sub_24B75BC78();
  (*(v95 + 8))(v58, v96);
  sub_24B6B9CD4(v36, &qword_27F0348B8, &qword_24B75FC50);
  v118 = v61;
  v119 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  sub_24B6C7504(v59, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v95 = *(v109 + 8);
  v96 = v109 + 8;
  (v95)(v59, v62);
  v63 = v47[28];
  v92 = v47[27];
  v64 = v83;
  sub_24B75AF18();
  sub_24B6EAA80(&qword_27F034938, MEMORY[0x277CC8B30]);
  v65 = sub_24B75C378();
  v67 = v66;
  v68 = v90;
  sub_24B6C7574();
  swift_getKeyPath();
  v69 = v101;
  sub_24B75C218();

  v70 = v99;
  sub_24B6CA9B4(v64 + v92, v65, v67, v69, v107, v68, v99);

  (*(v105 + 8))(v69, v106);
  v71 = v110;
  sub_24B6B9D34(v112, v110, &qword_27F034540, &qword_24B75F8F0);
  v118 = v71;
  v72 = v113;
  v73 = v111;
  (*(v109 + 16))(v113, v111, v62);
  v119 = v72;
  v75 = v102;
  v74 = v103;
  v76 = v104;
  (*(v103 + 16))(v102, v70, v104);
  v120 = v75;
  v117[0] = v97;
  v117[1] = v62;
  v117[2] = v76;
  v114 = sub_24B6C743C(&qword_27F034940, &qword_27F034540, &qword_24B75F8F0);
  v115 = OpaqueTypeConformance2;
  v116 = sub_24B6C743C(&qword_27F034948, &qword_27F034548, &qword_24B75F8F8);
  sub_24B7386C4(&v118, 3uLL, v117);
  v77 = *(v74 + 8);
  v77(v70, v76);
  v78 = v95;
  (v95)(v73, v62);
  sub_24B6B9CD4(v112, &qword_27F034540, &qword_24B75F8F0);
  v77(v75, v76);
  v78(v113, v62);
  return sub_24B6B9CD4(v110, &qword_27F034540, &qword_24B75F8F0);
}

uint64_t sub_24B6CA914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_24B75B788();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034950, &qword_24B75FCF8);
  return sub_24B6CAF34(a1, a3, v5, a2, a4[2], a4[3], a4[4], a4[5], a5 + *(v11 + 44), a4[6], a4[7], a4[8], a4[9]);
}

uint64_t sub_24B6CA9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a5;
  v72 = a4;
  v73 = a7;
  v77 = a3;
  v74 = a2;
  v71 = sub_24B75B1F8();
  v68 = *(v71 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B75C2F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24B75AFE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v70 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v23 = *(v18 + 16);
  v66 = v18 + 16;
  v67 = v23;
  v23(&v52 - v21, v76, a6);
  (*(v14 + 16))(v17, a1, v13);
  v24 = *(v18 + 80);
  v65 = ((v24 + 80) & ~v24) + v19;
  v25 = (v24 + 80) & ~v24;
  v53 = v25;
  v64 = v24 | 7;
  v26 = (v65 + *(v14 + 80)) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v28 = a6[2];
  v62 = a6[3];
  v29 = v62;
  v63 = v28;
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v30 = a6[4];
  v60 = a6[5];
  v31 = v60;
  v61 = v30;
  *(v27 + 4) = v30;
  *(v27 + 5) = v31;
  v32 = a6[6];
  v58 = a6[7];
  v33 = v58;
  v59 = v32;
  *(v27 + 6) = v32;
  *(v27 + 7) = v33;
  v57 = a6[8];
  v56 = a6[9];
  v34 = v56;
  *(v27 + 8) = v57;
  *(v27 + 9) = v34;
  v35 = *(v18 + 32);
  v54 = v18 + 32;
  v55 = v35;
  v35(&v27[v25], v22, a6);
  (*(v14 + 32))(&v27[v26], v17, v13);

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = ObjCClassFromMetadata;
  v37 = objc_opt_self();
  v38 = [v37 bundleForClass_];
  v39 = v69;
  v40 = *(v68 + 16);
  v41 = v71;
  v42 = v72;
  v40(v69, v72, v71);
  sub_24B75C348();
  v68 = v43;
  sub_24B75C2E8();
  v44 = [v37 bundleForClass_];
  v40(v39, v42, v41);
  sub_24B75C348();
  v45 = v70;
  v67(v70, v76, a6);
  v46 = swift_allocObject();
  v47 = v62;
  *(v46 + 2) = v63;
  *(v46 + 3) = v47;
  v48 = v60;
  *(v46 + 4) = v61;
  *(v46 + 5) = v48;
  v49 = v58;
  *(v46 + 6) = v59;
  *(v46 + 7) = v49;
  v50 = v56;
  *(v46 + 8) = v57;
  *(v46 + 9) = v50;
  v55(&v46[v53], v45, a6);
  return sub_24B75B318();
}

uint64_t sub_24B6CAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v90 = a7;
  v91 = a8;
  v89 = a6;
  v87 = a5;
  v80 = a4;
  v92 = a3;
  v76 = a2;
  v77 = a1;
  v83 = a9;
  v88 = a13;
  v85 = a11;
  v86 = a12;
  v84 = a10;
  v82 = sub_24B75BAE8();
  v78 = *(v82 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034958, &qword_24B75FD00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034960, &qword_24B75FD08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034918, &unk_24B75FCE0);
  v75 = *(v23 - 8);
  v24 = *(v75 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034968, &qword_24B75FD10);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034970, &qword_24B75FD18);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v79 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v67 - v36;
  if (*(v77 + 16))
  {
    (*(v28 + 56))(&v67 - v36, 1, 1, v27);
  }

  else
  {
    v68 = v28;
    v69 = &v67 - v36;
    v70 = v22;
    v38 = v75;
    v71 = v19;
    v72 = v31;
    v73 = v23;
    v74 = v27;
    v77 = v15;
    v39 = v76;
    if (*(v76 + 16) == 1)
    {
      v40 = *(*(type metadata accessor for WorkoutDetailTrainer() - 8) + 80);
      v93 = v87;
      v94 = v89;
      v41 = (v40 + 32) & ~v40;
      v95 = v90;
      v96 = v91;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v100 = v88;
      v42 = type metadata accessor for WorkoutDetailView();
      sub_24B6CB7B8(v39 + v41, v42, v26);
      v43 = v73;
      (*(v38 + 16))(v70, v26, v73);
      swift_storeEnumTagMultiPayload();
      sub_24B6C743C(&qword_27F034910, &qword_27F034918, &unk_24B75FCE0);
      sub_24B6C743C(&qword_27F034980, &qword_27F034958, &qword_24B75FD00);
      v44 = v72;
      sub_24B75B7A8();
      (*(v38 + 8))(v26, v43);
    }

    else
    {
      v93 = v87;
      v94 = v89;
      v95 = v90;
      v96 = v91;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v100 = v88;
      type metadata accessor for WorkoutDetailView();
      sub_24B6CB9EC(v18);
      sub_24B6B9D34(v18, v70, &qword_27F034958, &qword_24B75FD00);
      swift_storeEnumTagMultiPayload();
      sub_24B6C743C(&qword_27F034910, &qword_27F034918, &unk_24B75FCE0);
      sub_24B6C743C(&qword_27F034980, &qword_27F034958, &qword_24B75FD00);
      v44 = v72;
      sub_24B75B7A8();
      sub_24B6B9CD4(v18, &qword_27F034958, &qword_24B75FD00);
    }

    v45 = v74;
    v46 = v68;
    v37 = v69;
    sub_24B6B8DE8(v44, v69, &qword_27F034968, &qword_24B75FD10);
    (*(v46 + 56))(v37, 0, 1, v45);
  }

  v93 = v87;
  v94 = v89;
  v95 = v90;
  v96 = v91;
  v97 = v84;
  v98 = v85;
  v99 = v86;
  v100 = v88;
  v47 = type metadata accessor for WorkoutDetailView();
  v48 = sub_24B6C7864(v47);
  v49 = v48(v80);
  v51 = v50;
  v53 = v52;

  sub_24B75BB38();
  v54 = v78;
  v56 = v81;
  v55 = v82;
  (*(v78 + 104))(v81, *MEMORY[0x277CE0A10], v82);
  sub_24B75BB28();

  (*(v54 + 8))(v56, v55);
  v57 = sub_24B75BC18();
  v59 = v58;
  LOBYTE(v54) = v60;
  v62 = v61;

  sub_24B6E89A0(v49, v51, v53 & 1);

  v63 = v79;
  sub_24B6B9D34(v37, v79, &qword_27F034970, &qword_24B75FD18);
  v64 = v83;
  sub_24B6B9D34(v63, v83, &qword_27F034970, &qword_24B75FD18);
  v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034978, &qword_24B75FD20) + 48);
  *v65 = v57;
  *(v65 + 8) = v59;
  LOBYTE(v54) = v54 & 1;
  *(v65 + 16) = v54;
  *(v65 + 24) = v62;
  *(v65 + 32) = 256;
  sub_24B6E8EF0(v57, v59, v54);

  sub_24B6B9CD4(v37, &qword_27F034970, &qword_24B75FD18);
  sub_24B6E89A0(v57, v59, v54);

  return sub_24B6B9CD4(v63, &qword_27F034970, &qword_24B75FD18);
}

uint64_t sub_24B6CB7B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v20[1] = a3;
  v7 = type metadata accessor for WorkoutDetailTrainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  sub_24B6EA848(a1, v11, type metadata accessor for WorkoutDetailTrainer);
  v14 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v15 = (v13 + *(v8 + 80) + v14) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = a2[2];
  *(v16 + 1) = a2[1];
  *(v16 + 2) = v17;
  v18 = a2[4];
  *(v16 + 3) = a2[3];
  *(v16 + 4) = v18;
  (*(v12 + 32))(&v16[v14], v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_24B6EA8B0(v11, &v16[v15], type metadata accessor for WorkoutDetailTrainer);
  v20[4] = a1;
  return sub_24B75BFE8();
}

uint64_t sub_24B6CB9EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B75B6B8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034988, &unk_24B75FD28) + 44);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
  sub_24B6C743C(&qword_27F034998, &qword_27F034990, &qword_24B75FD50);
  sub_24B6EAA80(&qword_27F0349A0, type metadata accessor for WorkoutDetailTrainer);
  return sub_24B75C0D8();
}

uint64_t sub_24B6CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v24 = a2;
  v16 = type metadata accessor for WorkoutDetailAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  v20 = (v24 + *(type metadata accessor for WorkoutDetailTrainer() + 24));
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  return sub_24B6E9694(v19, type metadata accessor for WorkoutDetailAction);
}

uint64_t sub_24B6CBC6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for WorkoutDetailTrainer() + 28));
  v9 = v8[1];
  v31 = *v8;
  v32 = v9;
  sub_24B6E89B0();

  v10 = sub_24B75BC48();
  v12 = v11;
  v14 = v13;
  sub_24B75BA38();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v7, v3);
  v15 = sub_24B75BC18();
  v17 = v16;
  v19 = v18;

  sub_24B6E89A0(v10, v12, v14 & 1);

  if (qword_27F033CE0 != -1)
  {
    swift_once();
  }

  v31 = qword_27F034518;

  v20 = sub_24B75BBE8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24B6E89A0(v15, v17, v19 & 1);

  v28 = v30;
  *v30 = v20;
  v28[1] = v22;
  *(v28 + 16) = v24 & 1;
  v28[3] = v26;
  return result;
}

uint64_t sub_24B6CBEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for WorkoutDetailTrainer() + 28));
  v10 = v9[1];
  v24[2] = *v9;
  v24[3] = v10;
  sub_24B6E89B0();

  v11 = sub_24B75BC48();
  v13 = v12;
  v15 = v14;
  sub_24B75BA38();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  sub_24B75BB28();

  (*(v5 + 8))(v8, v4);
  v16 = sub_24B75BC18();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_24B6E89A0(v11, v13, v15 & 1);

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t sub_24B6CC0CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutDetailView();
  v4 = sub_24B6C7864(v3);
  v5 = v4(a2);

  return v5;
}

uint64_t sub_24B6CC168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a1;
  v26 = a3;
  v23 = a2;
  v27 = a5;
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v22 = *(a4 + 16);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v54 = *(a4 + 48);
  v6 = v54;
  v55 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v53 = MEMORY[0x277CDF678];
  v50 = swift_getWitnessTable();
  v51 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v7 = swift_getWitnessTable();
  v47 = MEMORY[0x277CE1340];
  v48 = v7;
  v49 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v42 = v21[0];
  v43 = MEMORY[0x277D837D0];
  v44 = OpaqueTypeMetadata2;
  v45 = v9;
  v46 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v10 = sub_24B75C088();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  sub_24B75B788();
  v28 = v22;
  v29 = *(a4 + 24);
  v30 = *(a4 + 40);
  v31 = v6;
  v32 = *(a4 + 56);
  v33 = *(a4 + 72);
  v34 = v25;
  v35 = v23;
  v36 = v24;
  v37 = v26;
  sub_24B75C078();
  v18 = swift_getWitnessTable();
  sub_24B6C7504(v15, v10, v18);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_24B6C7504(v17, v10, v18);
  return (v19)(v17, v10);
}

uint64_t sub_24B6CC7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v106 = a8;
  v105 = a7;
  v92 = a6;
  v102 = a4;
  v101 = a3;
  v97 = a2;
  v96 = a1;
  v103 = a9;
  v107 = a12;
  v91 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v99 = *(v17 - 8);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v76 - v18;
  v111 = a5;
  v112 = a6;
  v113 = a7;
  v114 = a8;
  v115 = a10;
  v116 = a11;
  v117 = a12;
  v118 = a13;
  v79 = a13;
  v94 = type metadata accessor for WorkoutDetailView();
  v93 = *(v94 - 8);
  v95 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v76 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v78 = a5;
  sub_24B75B558();
  v20 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v21 = sub_24B75B558();
  v110[11] = a10;
  v110[12] = MEMORY[0x277CE01B0];
  v77 = a10;
  v110[9] = swift_getWitnessTable();
  v110[10] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v110[7] = WitnessTable;
  v110[8] = v23;
  v24 = swift_getWitnessTable();
  v111 = v20;
  v112 = MEMORY[0x277CE1350];
  v113 = v21;
  v114 = v21;
  v115 = WitnessTable;
  v116 = MEMORY[0x277CE1340];
  v117 = v24;
  v118 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v110[5] = v25;
  v110[6] = v26;
  swift_getWitnessTable();
  v27 = sub_24B75C088();
  v28 = swift_getWitnessTable();
  v111 = v27;
  v112 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v29 = sub_24B75B558();
  v111 = v27;
  v112 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v110[3] = OpaqueTypeConformance2;
  v110[4] = v31;
  v85 = v29;
  v84 = swift_getWitnessTable();
  v111 = v29;
  v112 = v84;
  v82 = MEMORY[0x277CE0CA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = OpaqueTypeMetadata2;
  v33 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v111 = v104;
  v112 = MEMORY[0x277D837D0];
  v113 = OpaqueTypeMetadata2;
  v114 = v33;
  v115 = MEMORY[0x277D837E0];
  v88 = sub_24B75C0F8();
  v89 = *(v88 - 8);
  v34 = *(v89 + 64);
  v35 = MEMORY[0x28223BE20](v88);
  v81 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v86 = &v76 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034550, &qword_24B75F900);
  v80 = v38;
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v83 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v76 - v42;
  *v43 = sub_24B75B6B8();
  *(v43 + 1) = 0;
  v43[16] = 1;
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034778, &qword_24B75FB40) + 44)];
  v45 = v43;
  v104 = v43;
  v46 = v96;
  v47 = v97;
  v48 = v92;
  v49 = v91;
  sub_24B6CD3E8(v96, v97, a5, v92, v105, v106, a10, v91, v44, v107, a13);
  v50 = sub_24B75B9C8();
  sub_24B75B3D8();
  v51 = &v45[*(v38 + 36)];
  *v51 = v50;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  *(v51 + 3) = v54;
  *(v51 + 4) = v55;
  v51[40] = 0;
  v56 = v93;
  v57 = v90;
  v58 = v94;
  (*(v93 + 16))(v90, v46, v94);
  v59 = v98;
  sub_24B6B9D34(v47, v98, &qword_27F034118, &qword_24B75E1D8);
  v60 = (*(v56 + 80) + 80) & ~*(v56 + 80);
  v61 = (v95 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (*(v99 + 80) + v61 + 9) & ~*(v99 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = v78;
  *(v63 + 3) = v48;
  v64 = v106;
  *(v63 + 4) = v105;
  *(v63 + 5) = v64;
  *(v63 + 6) = v77;
  *(v63 + 7) = v49;
  v65 = v79;
  *(v63 + 8) = v107;
  *(v63 + 9) = v65;
  (*(v56 + 32))(&v63[v60], v57, v58);
  v66 = &v63[v61];
  *v66 = v101;
  v66[8] = v102;
  sub_24B6B8DE8(v59, &v63[v62], &qword_27F034118, &qword_24B75E1D8);
  type metadata accessor for WorkoutDetailMusicTrack();
  swift_bridgeObjectRetain_n();
  v111 = v85;
  v112 = v84;
  v67 = swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034780, type metadata accessor for WorkoutDetailMusicTrack);
  sub_24B6EAA80(&qword_27F034788, type metadata accessor for WorkoutDetailMusicTrack);
  v68 = v81;
  sub_24B75C0C8();
  v110[2] = v67;
  v69 = v88;
  v70 = swift_getWitnessTable();
  v71 = v86;
  sub_24B6C7504(v68, v69, v70);
  v72 = v89;
  v73 = *(v89 + 8);
  v73(v68, v69);
  v74 = v83;
  sub_24B6B9D34(v104, v83, &qword_27F034550, &qword_24B75F900);
  v111 = v74;
  (*(v72 + 16))(v68, v71, v69);
  v112 = v68;
  v110[0] = v80;
  v110[1] = v69;
  v108 = sub_24B6E9094();
  v109 = v70;
  sub_24B7386C4(&v111, 2uLL, v110);
  v73(v71, v69);
  sub_24B6B9CD4(v104, &qword_27F034550, &qword_24B75F900);
  v73(v68, v69);
  return sub_24B6B9CD4(v74, &qword_27F034550, &qword_24B75F900);
}

uint64_t sub_24B6CD3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v172 = a2;
  v180 = a1;
  v178 = a9;
  v149 = a3;
  v150 = a4;
  v192 = a3;
  v193 = a4;
  v151 = a5;
  v194 = a5;
  v195 = a6;
  v153 = a6;
  v154 = a7;
  v196 = a7;
  v197 = a8;
  v155 = a8;
  v147 = a10;
  v148 = a11;
  v198 = a10;
  v199 = a11;
  v188 = type metadata accessor for WorkoutDetailView();
  v146 = *(v188 - 8);
  v143 = *(v146 + 64);
  MEMORY[0x28223BE20](v188);
  v144 = v141 - v11;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348A0, &qword_24B75FC38);
  v12 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v145 = v141 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348A8, &qword_24B75FC40);
  v176 = *(v14 - 8);
  v177 = v14;
  v15 = *(v176 + 64);
  MEMORY[0x28223BE20](v14);
  v152 = v141 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = v141 - v19;
  v189 = sub_24B75B108();
  v183 = *(v189 - 8);
  v20 = *(v183 + 64);
  v21 = MEMORY[0x28223BE20](v189);
  v141[1] = v22;
  v142 = v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v173 = v141 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B0, &qword_24B75FC48);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v175 = v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v174 = v141 - v28;
  v29 = sub_24B75B768();
  v169 = *(v29 - 8);
  v170 = v29;
  v30 = *(v169 + 64);
  MEMORY[0x28223BE20](v29);
  v168 = v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24B75C2B8();
  v166 = *(v32 - 8);
  v167 = v32;
  v33 = *(v166 + 64);
  MEMORY[0x28223BE20](v32);
  v165 = v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24B75C258();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v161 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24B75B1F8();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v179 = v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24B75C2F8();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v158 = v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24B75C278();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v157 = v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348B8, &qword_24B75FC50);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v160 = v141 - v49;
  v50 = sub_24B75BAE8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24B75B718();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348C0, &qword_24B75FC58);
  v57 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v181 = v141 - v58;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348C8, &qword_24B75FC60);
  v164 = *(v162 - 8);
  v59 = *(v164 + 64);
  MEMORY[0x28223BE20](v162);
  v159 = v141 - v60;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D0, &qword_24B75FC68);
  v61 = *(*(v163 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v163);
  v185 = v141 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v184 = v141 - v64;
  sub_24B75B708();
  sub_24B75B6F8();
  sub_24B75BF98();
  sub_24B75B6D8();

  sub_24B75B6F8();
  sub_24B75B738();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v187 = ObjCClassFromMetadata;
  v186 = objc_opt_self();
  v66 = [v186 bundleForClass_];
  v67 = sub_24B75BC28();
  v69 = v68;
  v71 = v70;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  (*(v51 + 104))(v54, *MEMORY[0x277CE0A10], v50);
  sub_24B75BB28();

  (*(v51 + 8))(v54, v50);
  sub_24B75BB18();

  v72 = sub_24B75BC18();
  v74 = v73;
  v76 = v75;
  v78 = v77;

  sub_24B6E89A0(v67, v69, v71 & 1);

  v79 = v181;
  v80 = &v181[*(v182 + 36)];
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D8, &qword_24B75FC70) + 28);
  v82 = *MEMORY[0x277CE1050];
  v83 = sub_24B75BFA8();
  (*(*(v83 - 8) + 104))(v80 + v81, v82, v83);
  *v80 = swift_getKeyPath();
  *v79 = v72;
  *(v79 + 1) = v74;
  v79[16] = v76 & 1;
  *(v79 + 3) = v78;
  v192 = 0;
  v193 = 0xE000000000000000;
  sub_24B75C548();

  v192 = 0x5F74756F6B726F77;
  v193 = 0xE800000000000000;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  MEMORY[0x24C248630](v190, v191);

  MEMORY[0x24C248630](0x7254636973756D5FLL, 0xEC000000736B6361);
  sub_24B75C268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E0, &qword_24B75FCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B75F8B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_24B75C2E8();
  v85 = [v186 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v86 = sub_24B75C348();
  v87 = MEMORY[0x277D837D0];
  *(inited + 48) = v86;
  *(inited + 56) = v88;
  *(inited + 72) = v87;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v87;
  *(inited + 128) = 0x6973736572706D69;
  v89 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v89;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v87;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B6E9D4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348E8, &qword_24B75FCD0);
  swift_arrayDestroy();
  sub_24B75C248();
  v90 = MEMORY[0x277D84F90];
  sub_24B6E9D4C(MEMORY[0x277D84F90]);
  sub_24B6E9D4C(v90);
  v91 = v160;
  sub_24B75C288();
  v92 = sub_24B75C298();
  v93 = v91;
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
  v94 = v165;
  sub_24B75C2A8();
  v95 = sub_24B6E9E90();
  v96 = v159;
  v97 = v181;
  v98 = v182;
  sub_24B75BC78();
  (*(v166 + 8))(v94, v167);
  sub_24B6B9CD4(v93, &qword_27F0348B8, &qword_24B75FC50);
  sub_24B6B9CD4(v97, &qword_27F0348C0, &qword_24B75FC58);
  sub_24B75C2E8();
  v99 = [v186 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v100 = sub_24B75BB58();
  v102 = v101;
  LOBYTE(v79) = v103;
  v192 = v98;
  v193 = v95;
  swift_getOpaqueTypeConformance2();
  v104 = v185;
  v105 = v162;
  sub_24B75BD88();
  v106 = v100;
  v107 = v171;
  sub_24B6E89A0(v106, v102, v79 & 1);

  (*(v164 + 8))(v96, v105);
  v108 = v168;
  sub_24B75B758();
  sub_24B75B548();
  (*(v169 + 8))(v108, v170);
  sub_24B6B9CD4(v104, &qword_27F0348D0, &qword_24B75FC68);
  sub_24B6B9D34(v172, v107, &qword_27F034118, &qword_24B75E1D8);
  v109 = v183;
  if ((*(v183 + 48))(v107, 1, v189) == 1)
  {
    sub_24B6B9CD4(v107, &qword_27F034118, &qword_24B75E1D8);
    v110 = 1;
    v111 = v174;
  }

  else
  {
    v182 = *(v109 + 32);
    v112 = v173;
    (v182)(v173, v107, v189);
    sub_24B75C2E8();
    v113 = [v186 bundleForClass_];
    v114 = v188;
    v115 = v180;
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v192 = sub_24B75C348();
    v193 = v116;
    v117 = v146;
    v118 = v144;
    (*(v146 + 16))(v144, v115, v114);
    v119 = v183 + 16;
    v120 = v142;
    v121 = v112;
    v122 = v189;
    (*(v183 + 16))(v142, v121, v189);
    v123 = (*(v117 + 80) + 80) & ~*(v117 + 80);
    v124 = (v143 + *(v119 + 64) + v123) & ~*(v119 + 64);
    v125 = swift_allocObject();
    v126 = v150;
    *(v125 + 2) = v149;
    *(v125 + 3) = v126;
    v127 = v153;
    v128 = v154;
    *(v125 + 4) = v151;
    *(v125 + 5) = v127;
    v129 = v155;
    *(v125 + 6) = v128;
    *(v125 + 7) = v129;
    v130 = v148;
    *(v125 + 8) = v147;
    *(v125 + 9) = v130;
    (*(v117 + 32))(&v125[v123], v118, v114);
    (v182)(&v125[v124], v120, v122);
    sub_24B6E89B0();
    v131 = v145;
    sub_24B75C008();
    v132 = v183;
    if (qword_27F033CE0 != -1)
    {
      swift_once();
    }

    *(v131 + *(v156 + 36)) = qword_27F034518;
    sub_24B6E9F74();

    v133 = v152;
    sub_24B75BDF8();
    sub_24B6B9CD4(v131, &qword_27F0348A0, &qword_24B75FC38);
    (*(v132 + 8))(v173, v189);
    v111 = v174;
    sub_24B6B8DE8(v133, v174, &qword_27F0348A8, &qword_24B75FC40);
    v110 = 0;
  }

  (*(v176 + 56))(v111, v110, 1, v177);
  v134 = v184;
  v135 = v185;
  sub_24B6B9D34(v184, v185, &qword_27F0348D0, &qword_24B75FC68);
  v136 = v175;
  sub_24B6B9D34(v111, v175, &qword_27F0348B0, &qword_24B75FC48);
  v137 = v178;
  sub_24B6B9D34(v135, v178, &qword_27F0348D0, &qword_24B75FC68);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034900, &qword_24B75FCD8);
  v139 = v137 + *(v138 + 48);
  *v139 = 0;
  *(v139 + 8) = 1;
  sub_24B6B9D34(v136, v137 + *(v138 + 64), &qword_27F0348B0, &qword_24B75FC48);
  sub_24B6B9CD4(v111, &qword_27F0348B0, &qword_24B75FC48);
  sub_24B6B9CD4(v134, &qword_27F0348D0, &qword_24B75FC68);
  sub_24B6B9CD4(v136, &qword_27F0348B0, &qword_24B75FC48);
  return sub_24B6B9CD4(v135, &qword_27F0348D0, &qword_24B75FC68);
}

uint64_t sub_24B6CE76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a1;
  v23 = a2;
  v16 = type metadata accessor for WorkoutDetailAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  v20 = sub_24B75B108();
  (*(*(v20 - 8) + 16))(v19, v23, v20);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B6E9694(v19, type metadata accessor for WorkoutDetailAction);
}

uint64_t sub_24B6CE8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v120 = a8;
  v108 = a6;
  v101 = a5;
  v99 = a1;
  v100 = a4;
  v97 = a3;
  v98 = a2;
  v111 = a9;
  v119 = a15;
  v118 = a14;
  v117 = a13;
  v116 = a11;
  v115 = a10;
  v17 = type metadata accessor for WorkoutDetailMusicTrack();
  v109 = *(v17 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a7;
  v145 = a8;
  v112 = a12;
  v113 = a7;
  v146 = a10;
  v147 = a11;
  v148 = a12;
  v149 = a13;
  v150 = a14;
  v151 = a15;
  v105 = type metadata accessor for WorkoutDetailView();
  v114 = *(v105 - 8);
  v106 = *(v114 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v104 = *(v20 - 8);
  v102 = *(v104 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = v80 - v21;
  v22 = sub_24B75B928();
  v94 = *(v22 - 8);
  v95 = v22;
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v22);
  v93 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B558();
  v25 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v26 = sub_24B75B558();
  v142 = a12;
  v143 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v141 = MEMORY[0x277CDF678];
  v27 = swift_getWitnessTable();
  v28 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v138 = v27;
  v139 = v28;
  v29 = swift_getWitnessTable();
  v144 = v25;
  v145 = MEMORY[0x277CE1350];
  v146 = v26;
  v147 = v26;
  v148 = v27;
  v149 = MEMORY[0x277CE1340];
  v150 = v29;
  v151 = v29;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v30 = sub_24B75B7B8();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v136 = v31;
  v137 = v32;
  v84 = v30;
  v85 = swift_getWitnessTable();
  v33 = sub_24B75C088();
  v88 = *(v33 - 8);
  v34 = *(v88 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v80 - v35;
  v37 = swift_getWitnessTable();
  v144 = v33;
  v145 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  v39 = *(v82 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = v80 - v40;
  sub_24B75B958();
  v42 = sub_24B75B558();
  v87 = v42;
  v92 = *(v42 - 8);
  v43 = *(v92 + 64);
  MEMORY[0x28223BE20](v42);
  v80[0] = v80 - v44;
  v144 = v33;
  v145 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80[1] = OpaqueTypeConformance2;
  v46 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v134 = OpaqueTypeConformance2;
  v135 = v46;
  v86 = swift_getWitnessTable();
  v144 = v42;
  v145 = v86;
  v89 = MEMORY[0x277CE0CA8];
  v47 = swift_getOpaqueTypeMetadata2();
  v48 = *(v47 - 8);
  v90 = v47;
  v91 = v48;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v81 = v80 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v83 = v80 - v52;
  sub_24B75B788();
  v121 = v113;
  v122 = v120;
  v123 = v115;
  v124 = v116;
  v125 = v112;
  v126 = v117;
  v127 = v118;
  v54 = v97;
  v53 = v98;
  v128 = v119;
  v129 = v97;
  v130 = v98;
  v131 = v99;
  v132 = v100;
  v133 = v101;
  sub_24B75C078();
  v55 = v93;
  sub_24B75B918();
  sub_24B75BDB8();
  (*(v94 + 8))(v55, v95);
  (*(v88 + 8))(v36, v33);
  sub_24B75BDF8();
  (*(v82 + 8))(v41, OpaqueTypeMetadata2);
  v56 = v96;
  sub_24B6B9D34(v108, v96, &qword_27F034118, &qword_24B75E1D8);
  v57 = v114;
  v58 = v103;
  v59 = v54;
  v60 = v105;
  (*(v114 + 16))(v103, v59, v105);
  v61 = v107;
  sub_24B6EA848(v53, v107, type metadata accessor for WorkoutDetailMusicTrack);
  v62 = (*(v104 + 80) + 80) & ~*(v104 + 80);
  v63 = (v102 + *(v57 + 80) + v62) & ~*(v57 + 80);
  v64 = (v106 + *(v109 + 80) + v63) & ~*(v109 + 80);
  v65 = swift_allocObject();
  v66 = v120;
  *(v65 + 2) = v113;
  *(v65 + 3) = v66;
  v67 = v116;
  *(v65 + 4) = v115;
  *(v65 + 5) = v67;
  v68 = v117;
  v69 = v118;
  *(v65 + 6) = v112;
  *(v65 + 7) = v68;
  v70 = v119;
  *(v65 + 8) = v69;
  *(v65 + 9) = v70;
  sub_24B6B8DE8(v56, &v65[v62], &qword_27F034118, &qword_24B75E1D8);
  (*(v114 + 32))(&v65[v63], v58, v60);
  sub_24B6EA8B0(v61, &v65[v64], type metadata accessor for WorkoutDetailMusicTrack);
  v71 = v81;
  v73 = v86;
  v72 = v87;
  v74 = v80[0];
  sub_24B75BD28();

  (*(v92 + 8))(v74, v72);
  v144 = v72;
  v145 = v73;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v83;
  v77 = v90;
  sub_24B6C7504(v71, v90, v75);
  v78 = *(v91 + 8);
  v78(v71, v77);
  sub_24B6C7504(v76, v77, v75);
  return (v78)(v76, v77);
}

uint64_t sub_24B6CF448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(void, void), uint64_t a13, void (*a14)(void, void))
{
  v150 = a8;
  v149 = a7;
  v147 = a6;
  v125 = a5;
  v157 = a4;
  v158 = a3;
  v154 = a2;
  v151 = a1;
  v159 = a9;
  v162 = a14;
  v161 = a13;
  v160 = a12;
  v146 = a11;
  v148 = a10;
  sub_24B75B558();
  v14 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v15 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  v136 = sub_24B75C178();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_24B75C088();
  v141 = *(v16 - 8);
  v17 = *(v141 + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v138 = &v121 - v20;
  v178 = a11;
  v179 = MEMORY[0x277CE01B0];
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v22 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v174 = v21;
  v175 = v22;
  v23 = swift_getWitnessTable();
  v166 = v14;
  v167 = MEMORY[0x277CE1350];
  v168 = v15;
  v169 = v15;
  v170 = v21;
  v171 = MEMORY[0x277CE1340];
  v172 = v23;
  v173 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  v24 = sub_24B75C178();
  v25 = swift_getWitnessTable();
  v131 = v24;
  v130 = v25;
  v26 = sub_24B75C028();
  v27 = sub_24B75B558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  v29 = sub_24B75C178();
  v144 = *(v29 - 8);
  v30 = *(v144 + 64);
  MEMORY[0x28223BE20](v29);
  v143 = &v121 - v31;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347B0, &qword_24B75FB58);
  v32 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v124 = &v121 - v33;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347B8, &qword_24B75FB60);
  v135 = *(v137 - 8);
  v34 = *(v135 + 64);
  v35 = MEMORY[0x28223BE20](v137);
  v123 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v122 = &v121 - v38;
  v142 = v28;
  v39 = *(*(v28 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v140 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v145 = &v121 - v43;
  v132 = v26;
  v127 = *(v26 - 8);
  v44 = *(v127 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v126 = &v121 - v46;
  v133 = v27;
  v129 = *(v27 - 8);
  v47 = *(v129 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v128 = &v121 - v51;
  v152 = v29;
  v153 = v16;
  v156 = sub_24B75B7B8();
  v155 = *(v156 - 8);
  v52 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v54 = &v121 - v53;
  v55 = v147;
  v166 = v147;
  v56 = v149;
  v167 = v149;
  v57 = v150;
  v168 = v150;
  v58 = v148;
  v169 = v148;
  v59 = v146;
  v170 = v146;
  v171 = v160;
  v172 = v161;
  v173 = v162;
  type metadata accessor for WorkoutDetailView();
  v60 = v151;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE1(v170) > 6u)
  {
    v86 = sub_24B75B788();
    MEMORY[0x28223BE20](v86);
    *(&v121 - 12) = v55;
    *(&v121 - 11) = v56;
    *(&v121 - 10) = v57;
    *(&v121 - 9) = v58;
    v113 = v59;
    v114 = v160;
    v115 = v161;
    v116 = v162;
    v117 = v60;
    v118 = v154;
    v119 = v158;
    v120 = v157;
    v87 = v139;
    sub_24B75C078();
    v88 = v153;
    v89 = swift_getWitnessTable();
    v90 = v138;
    sub_24B6C7504(v87, v88, v89);
    v91 = *(v141 + 1);
    v91(v87, v88);
    sub_24B6C7504(v90, v88, v89);
    v92 = v152;
    swift_getWitnessTable();
    sub_24B738894(v87, v92, v88);
    v91(v87, v88);
    v91(v90, v88);
    v93 = v54;
  }

  else
  {
    v141 = v54;
    v61 = sub_24B75B6B8();
    MEMORY[0x28223BE20](v61);
    *(&v121 - 10) = v55;
    *(&v121 - 9) = v56;
    v114 = v58;
    v116 = v160;
    v62 = v126;
    sub_24B75C018();
    v63 = sub_24B75C158();
    v65 = v64;
    v66 = v132;
    v67 = swift_getWitnessTable();
    v119 = v66;
    v120 = v67;
    v117 = v63;
    v118 = v65;
    v68 = 1;
    LOBYTE(v116) = 1;
    v115 = 0;
    LOBYTE(v114) = 1;
    v113 = 0;
    sub_24B75BE18();
    (*(v127 + 8))(v62, v66);
    v165[2] = v67;
    v165[3] = MEMORY[0x277CDFC60];
    v69 = v133;
    v70 = swift_getWitnessTable();
    v71 = v128;
    sub_24B6C7504(v50, v69, v70);
    v72 = v129;
    v162 = *(v129 + 8);
    v161 = v129 + 8;
    v162(v50, v69);
    v73 = v137;
    if (*(v157 + 16) - 1 != v158)
    {
      v74 = v124;
      sub_24B75C0B8();
      v75 = [objc_opt_self() separatorColor];
      v76 = sub_24B75BED8();
      v77 = sub_24B75B9A8();
      v78 = &v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C0, &qword_24B75FB68) + 36)];
      *v78 = v76;
      v78[8] = v77;
      *&v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C8, &qword_24B75FB70) + 36)] = 0;
      LOBYTE(v76) = sub_24B75B9D8();
      sub_24B75B3D8();
      v79 = &v74[*(v121 + 36)];
      *v79 = v76;
      *(v79 + 1) = v80;
      *(v79 + 2) = v81;
      *(v79 + 3) = v82;
      *(v79 + 4) = v83;
      v79[40] = 0;
      v84 = sub_24B75B568();
      if (v125)
      {
        v85 = sub_24B75B9F8();
      }

      else
      {
        v85 = sub_24B75B9E8();
      }

      v94 = v85;
      v95 = v74;
      v96 = v123;
      sub_24B6B8DE8(v95, v123, &qword_27F0347B0, &qword_24B75FB58);
      v97 = v96 + *(v73 + 36);
      *v97 = v84;
      *(v97 + 8) = v94;
      v98 = v96;
      v99 = v122;
      sub_24B6B8DE8(v98, v122, &qword_27F0347B8, &qword_24B75FB60);
      sub_24B6B8DE8(v99, v145, &qword_27F0347B8, &qword_24B75FB60);
      v68 = 0;
    }

    v100 = v145;
    (*(v135 + 56))(v145, v68, 1, v73);
    (*(v72 + 16))(v50, v71, v69);
    v166 = v50;
    v101 = v140;
    sub_24B6B9D34(v100, v140, &qword_27F034568, &qword_24B75F918);
    v167 = v101;
    v165[0] = v69;
    v165[1] = v142;
    v163 = v70;
    v164 = sub_24B6E9B94(&qword_27F0347D0, &qword_27F034568, &qword_24B75F918, sub_24B6E9374);
    v102 = v143;
    sub_24B7386C4(&v166, 2uLL, v165);
    sub_24B6B9CD4(v101, &qword_27F034568, &qword_24B75F918);
    v103 = v69;
    v104 = v69;
    v105 = v162;
    v162(v50, v103);
    v106 = v71;
    v107 = v152;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v93 = v141;
    sub_24B73898C(v102, v107);
    (*(v144 + 8))(v102, v107);
    sub_24B6B9CD4(v100, &qword_27F034568, &qword_24B75F918);
    v105(v106, v104);
  }

  v108 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v165[4] = v108;
  v165[5] = v109;
  v110 = v156;
  v111 = swift_getWitnessTable();
  sub_24B6C7504(v93, v110, v111);
  return (*(v155 + 8))(v93, v110);
}

uint64_t sub_24B6D0430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v112 = a5;
  v113 = a8;
  v110 = a6;
  v107 = a9;
  v108 = a4;
  v85 = a3;
  v114 = a2;
  v97 = a1;
  v94 = a11;
  v81 = a10;
  v105 = sub_24B75B588();
  v13 = *(*(v105 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v105);
  v106 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(a3 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v14);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B75B558();
  v100 = *(v18 - 8);
  v19 = *(v100 + 64);
  MEMORY[0x28223BE20](v18);
  v90 = &v81 - v20;
  v87 = v18;
  v21 = sub_24B75B558();
  v102 = *(v21 - 8);
  v22 = *(v102 + 64);
  MEMORY[0x28223BE20](v21);
  v89 = &v81 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v24 = sub_24B75B558();
  v143 = a7;
  v144 = MEMORY[0x277CE01B0];
  v25 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v141 = WitnessTable;
  v142 = MEMORY[0x277CDF678];
  v104 = v25;
  v26 = v21;
  v88 = v21;
  v27 = swift_getWitnessTable();
  v103 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v139 = v27;
  v84 = v27;
  v140 = v103;
  v28 = swift_getWitnessTable();
  *&v161[0] = v26;
  *(&v161[0] + 1) = MEMORY[0x277CE1350];
  v83 = v24;
  *&v161[1] = v24;
  *(&v161[1] + 1) = v24;
  *&v161[2] = v27;
  *(&v161[2] + 1) = MEMORY[0x277CE1340];
  v82 = v28;
  *&v161[3] = v28;
  *(&v161[3] + 1) = v28;
  v93 = MEMORY[0x277CE0E60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v98 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v111 = &v81 - v30;
  v96 = sub_24B75B558();
  v99 = *(v96 - 8);
  v31 = *(v99 + 64);
  v32 = MEMORY[0x28223BE20](v96);
  v109 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v81 - v34;
  v35 = v85;
  *&v161[0] = v85;
  *(&v161[0] + 1) = v108;
  *&v161[1] = v112;
  *(&v161[1] + 1) = v110;
  v36 = a7;
  *&v161[2] = a7;
  *(&v161[2] + 1) = v113;
  *&v161[3] = a10;
  v37 = v94;
  *(&v161[3] + 1) = v94;
  v38 = type metadata accessor for WorkoutDetailView();
  v39 = sub_24B6C7744(v38);
  v40 = type metadata accessor for WorkoutDetailMusicTrack();
  v41 = *(v40 + 24);
  v42 = v114;
  v43 = v114 + *(v40 + 20);
  v44 = type metadata accessor for WorkoutDetailArtwork();
  v45 = v42 + v41;
  v46 = v92;
  v39(v43, v45, &v43[*(v44 + 20)], MEMORY[0x277D84FA0]);

  v47 = v90;
  sub_24B75BCD8();
  (*(v101 + 8))(v46, v35);
  sub_24B75C158();
  v48 = v89;
  v49 = v87;
  sub_24B75BE08();
  (*(v100 + 8))(v47, v49);
  sub_24B75C138();
  v123 = v35;
  v124 = v108;
  v125 = v112;
  v126 = v110;
  v127 = v36;
  v128 = v113;
  v129 = v81;
  v130 = v37;
  v115 = v35;
  v116 = v108;
  v117 = v112;
  v118 = v110;
  v119 = v36;
  v120 = v113;
  v121 = v81;
  v122 = v37;
  v50 = swift_checkMetadataState();
  v51 = v82;
  v52 = v84;
  v53 = v88;
  sub_24B75BE98();
  v54 = v53;
  (*(v102 + 8))(v48, v53);
  v55 = *(v105 + 20);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_24B75B748();
  v58 = v106;
  (*(*(v57 - 8) + 104))(&v106[v55], v56, v57);
  __asm { FMOV            V0.2D, #2.0 }

  *v58 = _Q0;
  v64 = v58;
  *&v161[0] = v54;
  *(&v161[0] + 1) = MEMORY[0x277CE1350];
  *&v161[1] = v50;
  *(&v161[1] + 1) = v50;
  *&v161[2] = v52;
  *(&v161[2] + 1) = MEMORY[0x277CE1340];
  *&v161[3] = v51;
  *(&v161[3] + 1) = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08]);
  v66 = v109;
  v67 = OpaqueTypeMetadata2;
  v68 = v111;
  sub_24B75BEA8();
  sub_24B6E9694(v64, MEMORY[0x277CDFC08]);
  (*(v98 + 8))(v68, v67);
  v137 = OpaqueTypeConformance2;
  v138 = v103;
  v69 = v96;
  v113 = swift_getWitnessTable();
  v70 = v95;
  v71 = v66;
  sub_24B6C7504(v66, v69, v113);
  v72 = v99;
  v73 = *(v99 + 8);
  v73(v71, v69);
  v74 = sub_24B75B788();
  v134[0] = 0;
  sub_24B6D12C8(v114, v161);
  v155 = v161[10];
  v156 = v161[11];
  v151 = v161[6];
  v152 = v161[7];
  v154 = v161[9];
  v153 = v161[8];
  v147 = v161[2];
  v148 = v161[3];
  v150 = v161[5];
  v149 = v161[4];
  v146 = v161[1];
  v145 = v161[0];
  v158[10] = v161[10];
  v158[11] = v161[11];
  v158[6] = v161[6];
  v158[7] = v161[7];
  v158[9] = v161[9];
  v158[8] = v161[8];
  v158[2] = v161[2];
  v158[3] = v161[3];
  v158[5] = v161[5];
  v158[4] = v161[4];
  v157 = v161[12];
  v159 = v161[12];
  v158[1] = v161[1];
  v158[0] = v161[0];
  sub_24B6B9D34(&v145, v160, &qword_27F034828, &qword_24B75FB88);
  sub_24B6B9CD4(v158, &qword_27F034828, &qword_24B75FB88);
  *&v136[151] = v154;
  *&v136[167] = v155;
  *&v136[183] = v156;
  *&v136[87] = v150;
  *&v136[103] = v151;
  *&v136[119] = v152;
  *&v136[135] = v153;
  *&v136[23] = v146;
  *&v136[39] = v147;
  *&v136[55] = v148;
  *&v136[71] = v149;
  v136[199] = v157;
  *&v136[7] = v145;
  LOBYTE(v67) = v134[0];
  LOBYTE(v64) = sub_24B75BA08();
  sub_24B75B3D8();
  *(&v160[20] + 1) = *&v136[144];
  *(&v160[22] + 1) = *&v136[160];
  *(&v160[24] + 1) = *&v136[176];
  *(&v160[12] + 1) = *&v136[80];
  *(&v160[14] + 1) = *&v136[96];
  *(&v160[16] + 1) = *&v136[112];
  *(&v160[18] + 1) = *&v136[128];
  *(&v160[4] + 1) = *&v136[16];
  *(&v160[6] + 1) = *&v136[32];
  *(&v160[8] + 1) = *&v136[48];
  *(&v160[10] + 1) = *&v136[64];
  LOBYTE(v161[0]) = 0;
  v160[0] = v74;
  v160[1] = 0;
  LOBYTE(v160[2]) = v67;
  *(&v160[26] + 1) = *&v136[192];
  *(&v160[2] + 1) = *v136;
  LOBYTE(v160[28]) = v64;
  v160[29] = v75;
  v160[30] = v76;
  v160[31] = v77;
  v160[32] = v78;
  LOBYTE(v160[33]) = 0;
  v79 = v109;
  (*(v72 + 16))(v109, v70, v69);
  v135[0] = v79;
  memcpy(v134, v160, 0x109uLL);
  v135[1] = v134;
  sub_24B6B9D34(v160, v161, &qword_27F034560, &qword_24B75F910);
  v133[0] = v69;
  v133[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034560, &qword_24B75F910);
  v131 = v113;
  v132 = sub_24B6E96F4();
  sub_24B7386C4(v135, 2uLL, v133);
  sub_24B6B9CD4(v160, &qword_27F034560, &qword_24B75F910);
  v73(v70, v69);
  memcpy(v161, v134, 0x109uLL);
  sub_24B6B9CD4(v161, &qword_27F034560, &qword_24B75F910);
  return (v73)(v79, v69);
}

uint64_t sub_24B6D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v24 = a4;
  v25 = a2;
  v26 = a1;
  v27 = a3;
  v4 = sub_24B75B588();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v8 = sub_24B75B558();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(v4 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24B75B748();
  (*(*(v18 - 8) + 104))(v7 + v16, v17, v18);
  *v7 = v24;
  v32 = v25;
  v33 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08]);
  sub_24B75BEA8();
  sub_24B6E9694(v7, MEMORY[0x277CDFC08]);
  v20 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v28 = v19;
  v29 = v20;
  v21 = swift_getWitnessTable();
  sub_24B6C7504(v13, v8, v21);
  v22 = *(v9 + 8);
  v22(v13, v8);
  sub_24B6C7504(v15, v8, v21);
  return (v22)(v15, v8);
}

uint64_t sub_24B6D12C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24B75B6B8();
  LOBYTE(v77[0]) = 0;
  sub_24B6D17AC(a1, &v87);
  v65 = *&v88[48];
  v66 = *&v88[64];
  v67 = *&v88[80];
  v61 = v87;
  v62 = *v88;
  v63 = *&v88[16];
  v64 = *&v88[32];
  v68[0] = v87;
  v68[1] = *v88;
  v68[2] = *&v88[16];
  v68[3] = *&v88[32];
  v68[4] = *&v88[48];
  v68[5] = *&v88[64];
  v69 = *&v88[80];
  sub_24B6B9D34(&v61, &v70, &qword_27F034848, &qword_24B75FB98);
  sub_24B6B9CD4(v68, &qword_27F034848, &qword_24B75FB98);
  *(&v60[3] + 7) = v64;
  *(&v60[4] + 7) = v65;
  *(&v60[5] + 7) = v66;
  *(v60 + 7) = v61;
  *(&v60[1] + 7) = v62;
  *(&v60[6] + 7) = v67;
  *(&v60[2] + 7) = v63;
  v43 = LOBYTE(v77[0]);
  v8 = *a1;
  v9 = a1[1];
  *&v87 = v8;
  *(&v87 + 1) = v9;
  sub_24B6E89B0();

  v10 = sub_24B75BC48();
  v12 = v11;
  v14 = v13;
  sub_24B75BA28();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v7, v3);
  v15 = sub_24B75BC18();
  v17 = v16;
  LOBYTE(v7) = v18;

  sub_24B6E89A0(v10, v12, v14 & 1);

  LODWORD(v87) = sub_24B75B848();
  v19 = sub_24B75BBE8();
  v21 = v20;
  LOBYTE(v3) = v22;
  v42 = v23;
  sub_24B6E89A0(v15, v17, v7 & 1);

  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  LOBYTE(v87) = v3 & 1;
  v26 = v44;
  *&v70 = v44;
  *(&v70 + 1) = 0x4010000000000000;
  LOBYTE(v9) = v43;
  LOBYTE(v71[0]) = v43;
  *(&v71[3] + 1) = v60[3];
  *(&v71[4] + 1) = v60[4];
  *(&v71[5] + 1) = v60[5];
  v71[6] = *(&v60[5] + 15);
  *(v71 + 1) = v60[0];
  *(&v71[1] + 1) = v60[1];
  *(&v71[2] + 1) = v60[2];
  v45 = v70;
  v46 = v71[0];
  v47 = v71[1];
  v48 = v71[2];
  v51 = v71[5];
  v52 = *(&v60[5] + 15);
  v49 = v71[3];
  v50 = v71[4];
  *&v72 = v19;
  v27 = v21;
  *(&v72 + 1) = v21;
  LOBYTE(v73) = v3 & 1;
  DWORD1(v73) = *&v59[3];
  *(&v73 + 1) = *v59;
  v28 = v42;
  *(&v73 + 1) = v42;
  *&v74 = KeyPath;
  *(&v74 + 1) = 1;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *&v58[3];
  *(&v75 + 1) = *v58;
  *(&v75 + 1) = v25;
  v76 = 1;
  v57 = 1;
  v55 = v74;
  v56 = v75;
  v53 = v72;
  v54 = v73;
  v29 = v70;
  v30 = v71[0];
  v31 = v71[2];
  v32 = v41;
  *(v41 + 32) = v71[1];
  *(v32 + 48) = v31;
  *v32 = v29;
  *(v32 + 16) = v30;
  v33 = v49;
  v34 = v50;
  v35 = v52;
  *(v32 + 96) = v51;
  *(v32 + 112) = v35;
  *(v32 + 64) = v33;
  *(v32 + 80) = v34;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  *(v32 + 192) = v57;
  *(v32 + 160) = v38;
  *(v32 + 176) = v39;
  *(v32 + 128) = v36;
  *(v32 + 144) = v37;
  v77[0] = v19;
  v77[1] = v27;
  v78 = v3 & 1;
  *v79 = *v59;
  *&v79[3] = *&v59[3];
  v80 = v28;
  v81 = KeyPath;
  v82 = 1;
  v83 = 0;
  *v84 = *v58;
  *&v84[3] = *&v58[3];
  v85 = v25;
  v86 = 1;
  sub_24B6B9D34(&v70, &v87, &qword_27F034850, &qword_24B75FC00);
  sub_24B6B9D34(&v72, &v87, &qword_27F034858, &qword_24B75FC08);
  sub_24B6B9CD4(v77, &qword_27F034858, &qword_24B75FC08);
  *&v88[49] = v60[3];
  *&v88[65] = v60[4];
  *&v88[81] = v60[5];
  *&v88[96] = *(&v60[5] + 15);
  *&v88[1] = v60[0];
  *&v88[17] = v60[1];
  *&v87 = v26;
  *(&v87 + 1) = 0x4010000000000000;
  v88[0] = v9;
  *&v88[33] = v60[2];
  return sub_24B6B9CD4(&v87, &qword_27F034850, &qword_24B75FC00);
}

uint64_t sub_24B6D17AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v3 = sub_24B75AFE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B75BAE8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WorkoutDetailMusicTrack();
  v11 = (a1 + *(v59 + 36));
  v12 = v11[1];
  *&v73 = *v11;
  *(&v73 + 1) = v12;
  sub_24B6E89B0();

  v13 = sub_24B75BC48();
  v15 = v14;
  v17 = v16;
  sub_24B75BA38();
  v18 = v7[13];
  v56 = *MEMORY[0x277CE0A10];
  v55 = v18;
  v18(v10);
  sub_24B75BB28();

  v19 = v7[1];
  v58 = v6;
  v54 = v19;
  v19(v10, v6);
  v64 = sub_24B75BC18();
  v63 = v20;
  v22 = v21;
  v65 = v23;

  sub_24B6E89A0(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v61 = swift_getKeyPath();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v67 = v22 & 1;
  LOBYTE(v73) = v22 & 1;
  LOBYTE(v78[0]) = 0;
  if (*(v60 + *(v59 + 28)) == 1)
  {
    sub_24B6C0CB4();
    v28 = sub_24B75BC38();
    v30 = v29;
    v32 = v31;
    sub_24B75BB38();
    v33 = v58;
    v55(v10, v56, v58);
    sub_24B75BB28();

    v54(v10, v33);
    v34 = sub_24B75BC18();
    v36 = v35;
    v38 = v37;

    sub_24B6E89A0(v28, v30, v32 & 1);

    LODWORD(v73) = sub_24B75B848();
    v24 = sub_24B75BBE8();
    v25 = v39;
    v41 = v40;
    v27 = v42;
    sub_24B6E89A0(v34, v36, v38 & 1);

    v26 = v41 & 1;
    sub_24B6E8EF0(v24, v25, v41 & 1);
  }

  v43 = v64;
  *&v68 = v64;
  v44 = v63;
  *(&v68 + 1) = v63;
  LOBYTE(v69) = v67;
  *(&v69 + 1) = v89[0];
  DWORD1(v69) = *(v89 + 3);
  v45 = v65;
  *(&v69 + 1) = v65;
  v46 = KeyPath;
  *&v70 = KeyPath;
  *(&v70 + 1) = 1;
  LOBYTE(v71) = 0;
  *(&v71 + 1) = *v88;
  DWORD1(v71) = *&v88[3];
  v47 = v61;
  *(&v71 + 1) = v61;
  v72 = 1;
  v76 = v71;
  LOBYTE(v77) = 1;
  v74 = v69;
  v75 = v70;
  v73 = v68;
  sub_24B6B9D34(&v68, v78, &qword_27F034858, &qword_24B75FC08);
  sub_24B6E9A1C(v24, v25, v26, v27);
  sub_24B6E9A60(v24, v25, v26, v27);
  v48 = v74;
  v49 = v76;
  v50 = v66;
  *(v66 + 32) = v75;
  *(v50 + 48) = v49;
  v51 = v77;
  *v50 = v73;
  *(v50 + 16) = v48;
  *(v50 + 64) = v51;
  *(v50 + 72) = v24;
  *(v50 + 80) = v25;
  *(v50 + 88) = v26;
  *(v50 + 96) = v27;
  sub_24B6E9A60(v24, v25, v26, v27);
  v78[0] = v43;
  v78[1] = v44;
  v79 = v67;
  *v80 = v89[0];
  *&v80[3] = *(v89 + 3);
  v81 = v45;
  v82 = v46;
  v83 = 1;
  v84 = 0;
  *v85 = *v88;
  *&v85[3] = *&v88[3];
  v86 = v47;
  v87 = 1;
  return sub_24B6B9CD4(v78, &qword_27F034858, &qword_24B75FC08);
}

uint64_t sub_24B6D1D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *&v94 = a7;
  *(&v94 + 1) = a8;
  v102 = a4;
  v103 = a3;
  v95 = a1;
  v107 = a9;
  v92 = a11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C8, &qword_24B75FB70);
  v104 = *(v101 - 8);
  v15 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  v84 = &v84 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034578, &qword_24B75F928);
  v17 = *(*(v105 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v106 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v108 = &v84 - v20;
  v99 = sub_24B75B588();
  v21 = *(*(v99 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v99);
  v100 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(a5 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a5;
  v27 = sub_24B75B558();
  v90 = *(v27 - 8);
  v28 = *(v90 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  v89 = sub_24B75B558();
  v98 = *(v89 - 8);
  v31 = *(v98 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v84 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v33 = sub_24B75B558();
  v34 = *(v33 - 8);
  v96 = v33;
  v97 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v88 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v93 = &v84 - v38;
  *&v138[0] = a5;
  *(&v138[0] + 1) = a6;
  v138[1] = v94;
  *(&v138[2] + 8) = v92;
  *&v138[2] = a10;
  *(&v138[3] + 1) = a12;
  v39 = type metadata accessor for WorkoutDetailView();
  v40 = sub_24B6C7744(v39);
  v41 = type metadata accessor for WorkoutDetailMusicTrack();
  v42 = *(v41 + 20);
  v43 = *(v41 + 24);
  v91 = a2;
  v44 = a2 + v42;
  v45 = type metadata accessor for WorkoutDetailArtwork();
  v40(v44, a2 + v43, &v44[*(v45 + 20)], MEMORY[0x277D84FA0]);

  v46 = v85;
  sub_24B75BCD8();
  (*(v87 + 8))(v26, v46);
  sub_24B75C158();
  v121 = a10;
  v122 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v48 = v86;
  sub_24B75BE08();
  (*(v90 + 8))(v30, v27);
  v49 = *(v99 + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_24B75B748();
  v52 = v100;
  (*(*(v51 - 8) + 104))(&v100[v49], v50, v51);
  __asm { FMOV            V0.2D, #2.0 }

  *v52 = _Q0;
  v119 = WitnessTable;
  v120 = MEMORY[0x277CDF678];
  v58 = v89;
  v59 = swift_getWitnessTable();
  sub_24B6EAA80(&qword_27F034820, MEMORY[0x277CDFC08]);
  v60 = v88;
  sub_24B75BEA8();
  sub_24B6E9694(v52, MEMORY[0x277CDFC08]);
  (*(v98 + 8))(v48, v58);
  v61 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v117 = v59;
  v118 = v61;
  v62 = v96;
  v63 = swift_getWitnessTable();
  v64 = v93;
  v98 = v63;
  sub_24B6C7504(v60, v62, v63);
  v65 = v97;
  v66 = v60;
  v99 = *(v97 + 8);
  v100 = (v97 + 8);
  (v99)(v60, v62);
  v67 = sub_24B75B788();
  v113[0] = 0;
  sub_24B6D28D4(v91, v138);
  v133 = v138[10];
  v134 = v138[11];
  v129 = v138[6];
  v130 = v138[7];
  v132 = v138[9];
  v131 = v138[8];
  v125 = v138[2];
  v126 = v138[3];
  v128 = v138[5];
  v127 = v138[4];
  v124 = v138[1];
  v123 = v138[0];
  v136[10] = v138[10];
  v136[11] = v138[11];
  v136[6] = v138[6];
  v136[7] = v138[7];
  v136[9] = v138[9];
  v136[8] = v138[8];
  v136[2] = v138[2];
  v136[3] = v138[3];
  v136[5] = v138[5];
  v136[4] = v138[4];
  v135 = v138[12];
  v137 = v138[12];
  v136[1] = v138[1];
  v136[0] = v138[0];
  sub_24B6B9D34(&v123, v115, &qword_27F034860, &qword_24B75FC10);
  sub_24B6B9CD4(v136, &qword_27F034860, &qword_24B75FC10);
  *&v116[151] = v132;
  *&v116[167] = v133;
  *&v116[183] = v134;
  *&v116[87] = v128;
  *&v116[103] = v129;
  *&v116[119] = v130;
  *&v116[135] = v131;
  *&v116[23] = v124;
  *&v116[39] = v125;
  *&v116[55] = v126;
  *&v116[71] = v127;
  v116[199] = v135;
  *&v116[7] = v123;
  LOBYTE(v59) = v113[0];
  LOBYTE(v46) = sub_24B75BA08();
  sub_24B75B3D8();
  v68 = 1;
  *(&v138[10] + 1) = *&v116[144];
  *(&v138[11] + 1) = *&v116[160];
  *(&v138[12] + 1) = *&v116[176];
  *(&v138[6] + 1) = *&v116[80];
  *(&v138[7] + 1) = *&v116[96];
  *(&v138[8] + 1) = *&v116[112];
  *(&v138[9] + 1) = *&v116[128];
  *(&v138[2] + 1) = *&v116[16];
  *(&v138[3] + 1) = *&v116[32];
  *(&v138[4] + 1) = *&v116[48];
  *(&v138[5] + 1) = *&v116[64];
  v115[0] = 0;
  v138[0] = v67;
  LOBYTE(v138[1]) = v59;
  *(&v138[13] + 1) = *&v116[192];
  *(&v138[1] + 1) = *v116;
  LOBYTE(v138[14]) = v46;
  *(&v138[14] + 1) = v69;
  *&v138[15] = v70;
  *(&v138[15] + 1) = v71;
  *&v138[16] = v72;
  v73 = v101;
  v74 = *(v102 + 16) - 1;
  BYTE8(v138[16]) = 0;
  if (v74 != v103)
  {
    v75 = v84;
    sub_24B75C0B8();
    v76 = [objc_opt_self() separatorColor];
    v77 = sub_24B75BED8();
    v78 = sub_24B75B9A8();
    v79 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347C0, &qword_24B75FB68) + 36);
    *v79 = v77;
    *(v79 + 8) = v78;
    *(v75 + *(v73 + 36)) = 0;
    sub_24B6B8DE8(v75, v108, &qword_27F0347C8, &qword_24B75FB70);
    v68 = 0;
  }

  v80 = v108;
  (*(v104 + 56))(v108, v68, 1, v73);
  (*(v65 + 16))(v66, v64, v62);
  v114[0] = v66;
  memcpy(v113, v138, 0x109uLL);
  v114[1] = v113;
  v81 = v106;
  sub_24B6B9D34(v80, v106, &qword_27F034578, &qword_24B75F928);
  v114[2] = v81;
  sub_24B6B9D34(v138, v115, &qword_27F034570, &qword_24B75F920);
  v112[0] = v62;
  v112[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034570, &qword_24B75F920);
  v112[2] = v105;
  v109 = v98;
  v110 = sub_24B6E9ADC();
  v111 = sub_24B6E9B94(&qword_27F034880, &qword_27F034578, &qword_24B75F928, sub_24B6E94B0);
  sub_24B7386C4(v114, 3uLL, v112);
  sub_24B6B9CD4(v138, &qword_27F034570, &qword_24B75F920);
  sub_24B6B9CD4(v80, &qword_27F034578, &qword_24B75F928);
  v82 = v99;
  (v99)(v64, v62);
  sub_24B6B9CD4(v81, &qword_27F034578, &qword_24B75F928);
  memcpy(v115, v113, 0x109uLL);
  sub_24B6B9CD4(v115, &qword_27F034570, &qword_24B75F920);
  return v82(v66, v62);
}

uint64_t sub_24B6D28D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_24B75BAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24B75B6B8();
  LOBYTE(v77[0]) = 0;
  sub_24B6D2DBC(a1, &v87);
  v65 = *&v88[48];
  v66 = *&v88[64];
  v67 = *&v88[80];
  v61 = v87;
  v62 = *v88;
  v63 = *&v88[16];
  v64 = *&v88[32];
  v68[0] = v87;
  v68[1] = *v88;
  v68[2] = *&v88[16];
  v68[3] = *&v88[32];
  v68[4] = *&v88[48];
  v68[5] = *&v88[64];
  v69 = *&v88[80];
  sub_24B6B9D34(&v61, &v70, &qword_27F034888, &qword_24B75FC20);
  sub_24B6B9CD4(v68, &qword_27F034888, &qword_24B75FC20);
  *(&v60[3] + 7) = v64;
  *(&v60[4] + 7) = v65;
  *(&v60[5] + 7) = v66;
  *(v60 + 7) = v61;
  *(&v60[1] + 7) = v62;
  *(&v60[6] + 7) = v67;
  *(&v60[2] + 7) = v63;
  v43 = LOBYTE(v77[0]);
  v8 = *a1;
  v9 = a1[1];
  *&v87 = v8;
  *(&v87 + 1) = v9;
  sub_24B6E89B0();

  v10 = sub_24B75BC48();
  v12 = v11;
  v14 = v13;
  sub_24B75BB38();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_24B75BB28();

  (*(v4 + 8))(v7, v3);
  v15 = sub_24B75BC18();
  v17 = v16;
  LOBYTE(v7) = v18;

  sub_24B6E89A0(v10, v12, v14 & 1);

  LODWORD(v87) = sub_24B75B848();
  v19 = sub_24B75BBE8();
  v21 = v20;
  LOBYTE(v3) = v22;
  v42 = v23;
  sub_24B6E89A0(v15, v17, v7 & 1);

  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  LOBYTE(v87) = v3 & 1;
  v26 = v44;
  *&v70 = v44;
  *(&v70 + 1) = 0x4010000000000000;
  LOBYTE(v9) = v43;
  LOBYTE(v71[0]) = v43;
  *(&v71[3] + 1) = v60[3];
  *(&v71[4] + 1) = v60[4];
  *(&v71[5] + 1) = v60[5];
  v71[6] = *(&v60[5] + 15);
  *(v71 + 1) = v60[0];
  *(&v71[1] + 1) = v60[1];
  *(&v71[2] + 1) = v60[2];
  v45 = v70;
  v46 = v71[0];
  v47 = v71[1];
  v48 = v71[2];
  v51 = v71[5];
  v52 = *(&v60[5] + 15);
  v49 = v71[3];
  v50 = v71[4];
  *&v72 = v19;
  v27 = v21;
  *(&v72 + 1) = v21;
  LOBYTE(v73) = v3 & 1;
  DWORD1(v73) = *&v59[3];
  *(&v73 + 1) = *v59;
  v28 = v42;
  *(&v73 + 1) = v42;
  *&v74 = KeyPath;
  *(&v74 + 1) = 3;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *&v58[3];
  *(&v75 + 1) = *v58;
  *(&v75 + 1) = v25;
  v76 = 1;
  v57 = 1;
  v55 = v74;
  v56 = v75;
  v53 = v72;
  v54 = v73;
  v29 = v70;
  v30 = v71[0];
  v31 = v71[2];
  v32 = v41;
  *(v41 + 32) = v71[1];
  *(v32 + 48) = v31;
  *v32 = v29;
  *(v32 + 16) = v30;
  v33 = v49;
  v34 = v50;
  v35 = v52;
  *(v32 + 96) = v51;
  *(v32 + 112) = v35;
  *(v32 + 64) = v33;
  *(v32 + 80) = v34;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  *(v32 + 192) = v57;
  *(v32 + 160) = v38;
  *(v32 + 176) = v39;
  *(v32 + 128) = v36;
  *(v32 + 144) = v37;
  v77[0] = v19;
  v77[1] = v27;
  v78 = v3 & 1;
  *v79 = *v59;
  *&v79[3] = *&v59[3];
  v80 = v28;
  v81 = KeyPath;
  v82 = 3;
  v83 = 0;
  *v84 = *v58;
  *&v84[3] = *&v58[3];
  v85 = v25;
  v86 = 1;
  sub_24B6B9D34(&v70, &v87, &qword_27F034890, &qword_24B75FC28);
  sub_24B6B9D34(&v72, &v87, &qword_27F034858, &qword_24B75FC08);
  sub_24B6B9CD4(v77, &qword_27F034858, &qword_24B75FC08);
  *&v88[49] = v60[3];
  *&v88[65] = v60[4];
  *&v88[81] = v60[5];
  *&v88[96] = *(&v60[5] + 15);
  *&v88[1] = v60[0];
  *&v88[17] = v60[1];
  *&v87 = v26;
  *(&v87 + 1) = 0x4010000000000000;
  v88[0] = v9;
  *&v88[33] = v60[2];
  return sub_24B6B9CD4(&v87, &qword_27F034890, &qword_24B75FC28);
}

uint64_t sub_24B6D2DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v3 = sub_24B75AFE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B75BAE8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WorkoutDetailMusicTrack();
  v11 = (a1 + *(v59 + 36));
  v12 = v11[1];
  *&v73 = *v11;
  *(&v73 + 1) = v12;
  sub_24B6E89B0();

  v13 = sub_24B75BC48();
  v15 = v14;
  v17 = v16;
  sub_24B75BA38();
  v18 = v7[13];
  v56 = *MEMORY[0x277CE0A10];
  v55 = v18;
  v18(v10);
  sub_24B75BB28();

  v19 = v7[1];
  v58 = v6;
  v54 = v19;
  v19(v10, v6);
  v64 = sub_24B75BC18();
  v63 = v20;
  v22 = v21;
  v65 = v23;

  sub_24B6E89A0(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v67 = v22 & 1;
  LOBYTE(v73) = v22 & 1;
  LOBYTE(v78[0]) = 0;
  v61 = swift_getKeyPath();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (*(v60 + *(v59 + 28)) == 1)
  {
    sub_24B6C0CB4();
    v28 = sub_24B75BC38();
    v30 = v29;
    v32 = v31;
    sub_24B75BB38();
    v33 = v58;
    v55(v10, v56, v58);
    sub_24B75BB28();

    v54(v10, v33);
    v34 = sub_24B75BC18();
    v36 = v35;
    v38 = v37;

    sub_24B6E89A0(v28, v30, v32 & 1);

    LODWORD(v73) = sub_24B75B848();
    v24 = sub_24B75BBE8();
    v25 = v39;
    v41 = v40;
    v27 = v42;
    sub_24B6E89A0(v34, v36, v38 & 1);

    v26 = v41 & 1;
    sub_24B6E8EF0(v24, v25, v41 & 1);
  }

  v43 = v64;
  *&v68 = v64;
  v44 = v63;
  *(&v68 + 1) = v63;
  LOBYTE(v69) = v67;
  *(&v69 + 1) = *v90;
  DWORD1(v69) = *&v90[3];
  v45 = v65;
  *(&v69 + 1) = v65;
  v46 = KeyPath;
  *&v70 = KeyPath;
  *(&v70 + 1) = 2;
  LOWORD(v71) = 0;
  BYTE2(v71) = 1;
  *(&v71 + 3) = v91;
  BYTE7(v71) = v92;
  v47 = v61;
  *(&v71 + 1) = v61;
  v72 = 1;
  v76 = v71;
  LOBYTE(v77) = 1;
  v73 = v68;
  v74 = v69;
  v75 = v70;
  sub_24B6B9D34(&v68, v78, &qword_27F034898, &qword_24B75FC30);
  sub_24B6E9A1C(v24, v25, v26, v27);
  sub_24B6E9A60(v24, v25, v26, v27);
  v48 = v74;
  v49 = v76;
  v50 = v66;
  *(v66 + 32) = v75;
  *(v50 + 48) = v49;
  v51 = v77;
  *v50 = v73;
  *(v50 + 16) = v48;
  *(v50 + 64) = v51;
  *(v50 + 72) = v24;
  *(v50 + 80) = v25;
  *(v50 + 88) = v26;
  *(v50 + 96) = v27;
  sub_24B6E9A60(v24, v25, v26, v27);
  v78[0] = v43;
  v78[1] = v44;
  v79 = v67;
  *v80 = *v90;
  *&v80[3] = *&v90[3];
  v81 = v45;
  v82 = v46;
  v83 = 2;
  v84 = 0;
  v85 = 1;
  v86 = v91;
  v87 = v92;
  v88 = v47;
  v89 = 1;
  return sub_24B6B9CD4(v78, &qword_27F034898, &qword_24B75FC30);
}

uint64_t sub_24B6D3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v34 = a2;
  v35 = a3;
  v13 = type metadata accessor for WorkoutDetailAction();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v21 = sub_24B75B108();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6B9D34(a1, v20, &qword_27F034118, &qword_24B75E1D8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_24B6B9CD4(v20, &qword_27F034118, &qword_24B75E1D8);
  }

  (*(v22 + 32))(v25, v20, v21);
  v36 = a4;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50) + 48);
  v28 = (v35 + *(type metadata accessor for WorkoutDetailMusicTrack() + 32));
  v29 = v28[1];
  *v16 = *v28;
  *(v16 + 1) = v29;
  (*(v22 + 16))(&v16[v27], v25, v21);
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  sub_24B6E9694(v16, type metadata accessor for WorkoutDetailAction);
  return (*(v22 + 8))(v25, v21);
}

uint64_t sub_24B6D3668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_24B75B788();
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034758, &qword_24B75FB20);
  return sub_24B6D3708(a1, v5, a2, a3, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), a5 + *(v11 + 44), *(a4 + 48), *(a4 + 64));
}

uint64_t sub_24B6D3708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  *&v236 = a7;
  *(&v236 + 1) = a8;
  *&v235 = a5;
  *(&v235 + 1) = a6;
  v225 = a4;
  v218 = a3;
  v242 = a2;
  v233 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034760, &qword_24B75FB28);
  v231 = *(v12 - 8);
  v232 = v12;
  v13 = *(v231 + 64);
  MEMORY[0x28223BE20](v12);
  v230 = &v201 - v14;
  v217 = sub_24B75B768();
  v211 = *(v217 - 8);
  v15 = *(v211 + 64);
  MEMORY[0x28223BE20](v217);
  v210 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_24B75BAE8();
  v243 = *(v241 - 8);
  v17 = *(v243 + 64);
  MEMORY[0x28223BE20](v241);
  v240 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B75B1F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v238 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B75C2F8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v237 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034748, &qword_24B75FB10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v229 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v239 = &v201 - v29;
  v30 = sub_24B75AFC8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v201 - v36;
  v38 = sub_24B75AF28();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = a1;
  sub_24B75AF18();
  v43 = sub_24B6EAA80(&qword_27F034730, MEMORY[0x277CC8B30]);
  sub_24B75C468();
  v227 = v43;
  sub_24B75C498();
  v226 = sub_24B6EAA80(&qword_27F034738, MEMORY[0x277CC8C20]);
  LOBYTE(a1) = sub_24B75C2D8();
  v44 = *(v31 + 8);
  v222 = v35;
  v44(v35, v30);
  v221 = v37;
  v223 = v31 + 8;
  v224 = v30;
  v44(v37, v30);
  v45 = *(v39 + 8);
  v219 = v42;
  v220 = v38;
  v228 = v39 + 8;
  v45(v42, v38);
  if (a1)
  {
    return (*(v231 + 56))(v233, 1, 1, v232);
  }

  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v214 = ObjCClassFromMetadata;
  v213 = objc_opt_self();
  v48 = [v213 bundleForClass_];
  v215 = v45;
  v265 = v235;
  v266 = v236;
  v267 = a10;
  v268 = a11;
  *(&v236 + 1) = type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v49 = sub_24B75BB58();
  v51 = v50;
  v53 = v52;
  v209 = v54;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  LODWORD(v236) = *MEMORY[0x277CE0A10];
  v55 = v243;
  *&v235 = *(v243 + 104);
  *(&v235 + 1) = v243 + 104;
  v56 = v240;
  v57 = v241;
  (v235)(v240);
  sub_24B75BB28();

  v58 = *(v55 + 8);
  v243 = v55 + 8;
  v234 = v58;
  v58(v56, v57);
  v59 = sub_24B75BC18();
  v61 = v60;
  LOBYTE(v55) = v62;
  v216 = v44;
  v64 = v63;

  sub_24B6E89A0(v49, v51, v53 & 1);

  *&v265 = v59;
  *(&v265 + 1) = v61;
  LOBYTE(v266) = v55 & 1;
  *(&v266 + 1) = v64;
  v65 = v210;
  sub_24B75B758();
  sub_24B75BDD8();
  (*(v211 + 8))(v65, v217);
  sub_24B6E89A0(v59, v61, v55 & 1);

  sub_24B75C2E8();
  v66 = [v213 bundleForClass_];
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v67 = sub_24B75BB58();
  v69 = v68;
  LOBYTE(v65) = v70;
  sub_24B75BB38();
  v72 = v240;
  v71 = v241;
  (v235)(v240, v236, v241);
  sub_24B75BB28();

  v234(v72, v71);
  v73 = sub_24B75BC18();
  v75 = v74;
  LOBYTE(v72) = v76;

  sub_24B6E89A0(v67, v69, v65 & 1);

  *&v265 = sub_24B75BF18();
  v77 = sub_24B75BBE8();
  v210 = v78;
  v211 = v77;
  v207 = v79;
  v217 = v80;
  sub_24B6E89A0(v73, v75, v72 & 1);

  v81 = sub_24B6C7864(*(&v236 + 1));
  v82 = v81(v212);
  v84 = v83;
  LOBYTE(v73) = v85;

  sub_24B75BB08();
  v86 = v240;
  v87 = v241;
  (v235)(v240, v236, v241);
  sub_24B75BB28();

  v234(v86, v87);
  v88 = sub_24B75BC18();
  v90 = v89;
  LOBYTE(v87) = v91;

  sub_24B6E89A0(v82, v84, v73 & 1);

  LODWORD(v265) = sub_24B75B848();
  v92 = sub_24B75BBE8();
  v208 = v93;
  v209 = v92;
  v206 = v94;
  v212 = v95;
  sub_24B6E89A0(v88, v90, v87 & 1);

  v96 = v219;
  sub_24B75AF18();
  v98 = v220;
  v97 = v221;
  sub_24B75C468();
  v99 = v222;
  sub_24B75C498();
  v100 = v224;
  LOBYTE(v67) = sub_24B75C2D8();
  v101 = v216;
  v216(v99, v100);
  v101(v97, v100);
  v215(v96, v98);
  if (v67)
  {
    v102 = 0;
    *&v268 = 0;
    v266 = 0u;
    v267 = 0u;
    v265 = 0u;
  }

  else
  {
    sub_24B75C2E8();
    v103 = [v213 bundleForClass_];
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v104 = sub_24B75BB58();
    v106 = v105;
    v108 = v107;
    sub_24B75BB38();
    v109 = v240;
    v110 = v241;
    (v235)(v240, v236, v241);
    sub_24B75BB28();

    v234(v109, v110);
    v111 = sub_24B75BC18();
    v113 = v112;
    v115 = v114;
    v201 = v116;

    sub_24B6E89A0(v104, v106, v108 & 1);

    *&v265 = sub_24B75BF18();
    v117 = sub_24B75BBE8();
    v203 = v118;
    v204 = v117;
    v202 = v119;
    v205 = v120;
    sub_24B6E89A0(v111, v113, v115 & 1);

    v121 = sub_24B6C7864(*(&v236 + 1));
    v122 = v121(v218);
    v124 = v123;
    LOBYTE(v111) = v125;

    sub_24B75BB08();
    v126 = v241;
    (v235)(v109, v236, v241);
    sub_24B75BB28();

    v234(v109, v126);
    v127 = sub_24B75BC18();
    v129 = v128;
    LOBYTE(v126) = v130;

    sub_24B6E89A0(v122, v124, v111 & 1);

    LODWORD(v265) = sub_24B75B848();
    v131 = sub_24B75BBE8();
    v133 = v132;
    LOBYTE(v111) = v134;
    v102 = v135;
    sub_24B6E89A0(v127, v129, v126 & 1);

    LOBYTE(v126) = v202 & 1;
    LOBYTE(v259[0]) = v202 & 1;
    LOBYTE(v261) = v202 & 1;
    LOBYTE(v127) = v111 & 1;
    LOBYTE(v260[0]) = v111 & 1;
    v136 = v203;
    v137 = v204;
    sub_24B6E8EF0(v204, v203, v202 & 1);
    v138 = v205;

    sub_24B6E8EF0(v131, v133, v127);

    sub_24B6E89A0(v131, v133, v127);

    sub_24B6E89A0(v137, v136, v259[0]);

    v139 = v261;
    LODWORD(v218) = LOBYTE(v260[0]);
    sub_24B6E8EF0(v137, v136, v126);

    sub_24B6E8EF0(v131, v133, v127);
    *&v265 = v137;
    *(&v265 + 1) = v136;
    LOBYTE(v266) = v139;
    *(&v266 + 1) = v138;
    *&v267 = v131;
    v100 = v224;
    *(&v267 + 1) = v133;
    v96 = v219;
    v98 = v220;
    LOBYTE(v268) = v218;
    v97 = v221;
    v99 = v222;
  }

  *(&v268 + 1) = v102;
  sub_24B75AF18();
  sub_24B75C468();
  sub_24B75C498();
  v140 = sub_24B75C2D8();
  v141 = v99;
  v142 = v216;
  v216(v141, v100);
  v142(v97, v100);
  v215(v96, v98);
  if (v140)
  {
    v143 = 0;
    *&v264 = 0;
    v262 = 0u;
    v263 = 0u;
    v261 = 0u;
  }

  else
  {
    sub_24B75C2E8();
    v144 = [v213 bundleForClass_];
    sub_24B6C7574();
    swift_getKeyPath();
    sub_24B75C218();

    v145 = sub_24B75BB58();
    v147 = v146;
    v149 = v148;
    sub_24B75BB38();
    v150 = v240;
    v151 = v241;
    (v235)(v240, v236, v241);
    sub_24B75BB28();

    v234(v150, v151);
    v152 = sub_24B75BC18();
    v154 = v153;
    v156 = v155;
    v226 = v157;

    sub_24B6E89A0(v145, v147, v149 & 1);

    *&v261 = sub_24B75BF18();
    v237 = sub_24B75BBE8();
    v238 = v158;
    v228 = v159;
    LODWORD(v227) = v160;
    sub_24B6E89A0(v152, v154, v156 & 1);

    v161 = sub_24B6C7864(*(&v236 + 1));
    v162 = v161(v225);
    v164 = v163;
    LOBYTE(v154) = v165;

    sub_24B75BB08();
    v166 = v241;
    (v235)(v150, v236, v241);
    sub_24B75BB28();

    v234(v150, v166);
    v167 = sub_24B75BC18();
    v169 = v168;
    v171 = v170;

    sub_24B6E89A0(v162, v164, v154 & 1);

    LODWORD(v261) = sub_24B75B848();
    v172 = sub_24B75BBE8();
    v174 = v173;
    LOBYTE(v154) = v175;
    v143 = v176;
    sub_24B6E89A0(v167, v169, v171 & 1);

    LOBYTE(v169) = v227 & 1;
    LOBYTE(v255) = v227 & 1;
    LOBYTE(v260[0]) = v227 & 1;
    LOBYTE(v167) = v154 & 1;
    LOBYTE(v259[0]) = v154 & 1;
    v177 = v237;
    v178 = v228;
    sub_24B6E8EF0(v237, v228, v227 & 1);
    v179 = v238;

    sub_24B6E8EF0(v172, v174, v167);

    sub_24B6E89A0(v172, v174, v167);

    sub_24B6E89A0(v177, v178, v255);

    LOBYTE(v150) = v260[0];
    LODWORD(v243) = LOBYTE(v259[0]);
    sub_24B6E8EF0(v177, v178, v169);

    sub_24B6E8EF0(v172, v174, v167);
    *&v261 = v177;
    *(&v261 + 1) = v178;
    LOBYTE(v262) = v150;
    *(&v262 + 1) = v179;
    *&v263 = v172;
    *(&v263 + 1) = v174;
    LOBYTE(v264) = v243;
  }

  v181 = v229;
  v180 = v230;
  *(&v264 + 1) = v143;
  sub_24B6B9D34(v239, v229, &qword_27F034748, &qword_24B75FB10);
  v182 = v207 & 1;
  v253 = v207 & 1;
  v183 = v206 & 1;
  v252 = v206 & 1;
  v248 = v265;
  v249 = v266;
  v250 = v267;
  v251 = v268;
  v244 = v261;
  v245 = v262;
  v246 = v263;
  v247 = v264;
  sub_24B6B9D34(v181, v180, &qword_27F034748, &qword_24B75FB10);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034768, &qword_24B75FB30);
  v185 = v184[12];
  v186 = v248;
  v187 = v249;
  v254[0] = v248;
  v254[1] = v249;
  v188 = v250;
  v189 = v251;
  v254[2] = v250;
  v254[3] = v251;
  v190 = v180 + v185;
  v192 = v210;
  v191 = v211;
  *v190 = v211;
  *(v190 + 8) = v192;
  *(v190 + 16) = v182;
  *(v190 + 24) = v217;
  v193 = v180 + v184[16];
  v195 = v208;
  v194 = v209;
  *v193 = v209;
  *(v193 + 8) = v195;
  *(v193 + 16) = v183;
  *(v193 + 24) = v212;
  v196 = (v180 + v184[20]);
  *v196 = v186;
  v196[1] = v187;
  v196[2] = v188;
  v196[3] = v189;
  v197 = (v180 + v184[24]);
  v257 = v246;
  v258 = v247;
  v255 = v244;
  v256 = v245;
  LODWORD(v243) = v182;
  sub_24B6E8EF0(v191, v192, v182);

  sub_24B6E8EF0(v194, v195, v183);

  sub_24B6E8EF0(v191, v192, v182);

  sub_24B6E8EF0(v194, v195, v183);

  sub_24B6B9D34(v254, v260, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9D34(&v255, v260, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9CD4(&v265, &qword_27F034770, &qword_24B75FB38);
  sub_24B6B9CD4(&v261, &qword_27F034770, &qword_24B75FB38);
  sub_24B6E89A0(v194, v195, v183);

  sub_24B6E89A0(v191, v192, v243);
  v198 = v256;
  *v197 = v255;
  v197[1] = v198;
  v199 = v258;
  v197[2] = v257;
  v197[3] = v199;

  sub_24B6B9CD4(v239, &qword_27F034748, &qword_24B75FB10);
  v259[0] = v244;
  v259[1] = v245;
  v259[2] = v246;
  v259[3] = v247;
  sub_24B6B9CD4(v259, &qword_27F034770, &qword_24B75FB38);
  v260[0] = v248;
  v260[1] = v249;
  v260[2] = v250;
  v260[3] = v251;
  sub_24B6B9CD4(v260, &qword_27F034770, &qword_24B75FB38);
  sub_24B6E89A0(v194, v195, v252);

  sub_24B6E89A0(v191, v192, v253);

  sub_24B6B9CD4(v229, &qword_27F034748, &qword_24B75FB10);
  v200 = v233;
  sub_24B6B8DE8(v230, v233, &qword_27F034760, &qword_24B75FB28);
  return (*(v231 + 56))(v200, 0, 1, v232);
}

uint64_t sub_24B6D4D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034728, &qword_24B75FB00);
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v29 = (&v29 - v6);
  v7 = sub_24B75AFC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_24B75AF28();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_24B75AF18();
  sub_24B6EAA80(&qword_27F034730, MEMORY[0x277CC8B30]);
  sub_24B75C468();
  sub_24B75C498();
  sub_24B6EAA80(&qword_27F034738, MEMORY[0x277CC8C20]);
  LOBYTE(a1) = sub_24B75C2D8();
  v20 = *(v8 + 8);
  v20(v12, v7);
  v20(v14, v7);
  (*(v16 + 8))(v19, v15);
  if (a1)
  {
    v21 = 1;
    v22 = v33;
  }

  else
  {
    v23 = sub_24B75B788();
    v24 = v29;
    *v29 = v23;
    v24[1] = 0x4024000000000000;
    *(v24 + 16) = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034740, &qword_24B75FB08);
    sub_24B6D50F4(v31, v30, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), v24 + *(v25 + 44), *(a2 + 64), *(a2 + 72));
    v26 = v24;
    v27 = v33;
    sub_24B6B8DE8(v26, v33, &qword_27F034728, &qword_24B75FB00);
    v21 = 0;
    v22 = v27;
  }

  return (*(v32 + 56))(v22, v21, 1, v34);
}

uint64_t sub_24B6D50F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v72 = a7;
  v71 = a6;
  v78 = a2;
  v70 = a1;
  v79 = a9;
  v14 = sub_24B75B768();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24B75BAE8();
  v82 = *(v80 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B75B1F8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_24B75C2F8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034748, &qword_24B75FB10);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v77 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v81 = &v67 - v28;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = v71;
  v87 = v72;
  v88 = v73;
  v89 = a10;
  v90 = a11;
  v73 = type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v31 = sub_24B75BB58();
  v33 = v32;
  LOBYTE(ObjCClassFromMetadata) = v34;
  sub_24B75BAB8();
  sub_24B75BA78();
  sub_24B75BAD8();

  LODWORD(v72) = *MEMORY[0x277CE0A10];
  v35 = v82;
  v71 = *(v82 + 104);
  v36 = v80;
  v71(v19);
  v68 = v19;
  sub_24B75BB28();

  v37 = *(v35 + 8);
  v82 = v35 + 8;
  v69 = v37;
  v37(v19, v36);
  v38 = sub_24B75BC18();
  v40 = v39;
  LOBYTE(v36) = v41;
  v43 = v42;

  sub_24B6E89A0(v31, v33, ObjCClassFromMetadata & 1);

  v83 = v38;
  v84 = v40;
  LOBYTE(v85) = v36 & 1;
  v86 = v43;
  v44 = v74;
  sub_24B75B758();
  sub_24B75BDD8();
  (*(v75 + 8))(v44, v76);
  sub_24B6E89A0(v38, v40, v36 & 1);

  v45 = sub_24B6C7864(v73);
  v46 = v45(v78);
  v48 = v47;
  LOBYTE(v43) = v49;

  sub_24B75BB08();
  v50 = v68;
  v51 = v80;
  (v71)(v68, v72, v80);
  sub_24B75BB28();

  v69(v50, v51);
  v52 = sub_24B75BC18();
  v54 = v53;
  LOBYTE(v33) = v55;

  sub_24B6E89A0(v46, v48, v43 & 1);

  LODWORD(v83) = sub_24B75B848();
  v56 = sub_24B75BBE8();
  v58 = v57;
  LOBYTE(v43) = v59;
  v61 = v60;
  sub_24B6E89A0(v52, v54, v33 & 1);

  v62 = v81;
  v63 = v77;
  sub_24B6B9D34(v81, v77, &qword_27F034748, &qword_24B75FB10);
  v64 = v79;
  sub_24B6B9D34(v63, v79, &qword_27F034748, &qword_24B75FB10);
  v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034750, &qword_24B75FB18) + 48);
  *v65 = v56;
  *(v65 + 8) = v58;
  LOBYTE(v43) = v43 & 1;
  *(v65 + 16) = v43;
  *(v65 + 24) = v61;
  sub_24B6E8EF0(v56, v58, v43);

  sub_24B6B9CD4(v62, &qword_27F034748, &qword_24B75FB10);
  sub_24B6E89A0(v56, v58, v43);

  return sub_24B6B9CD4(v63, &qword_27F034748, &qword_24B75FB10);
}

uint64_t sub_24B6D57B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a3;
  v7 = type metadata accessor for WorkoutDetail();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v4, a2);
  sub_24B6EA848(a1, v11, type metadata accessor for WorkoutDetail);
  v15 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v19 = *(a2 + 16);
  v53 = *(a2 + 24);
  v18 = v53;
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  v22 = *(a2 + 64);
  v49 = *(a2 + 48);
  v50 = v22;
  *(v17 + 48) = v49;
  *(v17 + 64) = v22;
  v23 = *(v12 + 32);
  v24 = v17 + v15;
  v25 = v17;
  v54 = v17;
  v23(v24, v14, a2);
  sub_24B6EA8B0(v11, v25 + v16, type metadata accessor for WorkoutDetail);
  v51 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v83 = WitnessTable;
  v84 = v27;
  swift_getWitnessTable();
  v52 = sub_24B75C088();
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v64 = v20;
  v65 = v50;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v79 = sub_24B75B558();
  *&v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v29 = sub_24B75B558();
  v30 = sub_24B75B558();
  v76 = v49;
  v77 = MEMORY[0x277CE01B0];
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDF678];
  v31 = swift_getWitnessTable();
  v72 = v31;
  v73 = v27;
  v32 = swift_getWitnessTable();
  v64 = v29;
  v65 = MEMORY[0x277CE1350];
  v66 = v30;
  v67 = v30;
  v68 = v31;
  v69 = MEMORY[0x277CE1340];
  v70 = v32;
  v71 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v62 = v33;
  v63 = v34;
  swift_getWitnessTable();
  v35 = sub_24B75C088();
  v36 = swift_getWitnessTable();
  v64 = v35;
  v65 = v36;
  swift_getOpaqueTypeMetadata2();
  v37 = sub_24B75B558();
  v64 = v35;
  v65 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v60 = OpaqueTypeConformance2;
  v61 = v39;
  v40 = swift_getWitnessTable();
  v64 = v37;
  v65 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v64 = v28;
  v65 = MEMORY[0x277D837D0];
  v66 = OpaqueTypeMetadata2;
  v67 = v42;
  v68 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v80 = sub_24B75C4E8();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v81 = sub_24B75C4E8();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  v43 = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF918];
  v58 = v43;
  v59 = MEMORY[0x277CDF918];
  v56 = swift_getWitnessTable();
  v57 = v44;
  swift_getWitnessTable();
  sub_24B75B3E8();
  swift_getWitnessTable();
  v78 = sub_24B75B4E8();
  v79 = v45;
  v46 = sub_24B75B4F8();
  v47 = swift_getWitnessTable();
  sub_24B6C7504(&v78, v46, v47);

  v78 = v64;
  v79 = v65;
  sub_24B6C7504(&v78, v46, v47);
}

uint64_t sub_24B6D6354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a9;
  v47 = a8;
  v40 = a7;
  v37 = a5;
  v38 = a6;
  v44 = a1;
  v45 = a3;
  v43 = a2;
  v42 = a12;
  v41 = a10;
  v39 = a11;
  v34 = sub_24B75B958();
  v36 = a4;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v32 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v87 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  v35 = sub_24B75C088();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v82 = sub_24B75B558();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v79 = v47;
  v80 = MEMORY[0x277CE01B0];
  v77 = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF678];
  v75 = swift_getWitnessTable();
  v76 = v87;
  v13 = swift_getWitnessTable();
  v72 = MEMORY[0x277CE1340];
  v73 = v13;
  v74 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v65 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v67 = v31;
  v68 = MEMORY[0x277D837D0];
  v69 = OpaqueTypeMetadata2;
  v70 = v15;
  v71 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v83 = sub_24B75C4E8();
  v16 = v37;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v84 = sub_24B75C4E8();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  sub_24B75B558();
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x277CDF918];
  v61 = v17;
  v62 = MEMORY[0x277CDF918];
  v59 = swift_getWitnessTable();
  v60 = v18;
  swift_getWitnessTable();
  v19 = sub_24B75B3E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v30 - v25;
  sub_24B75B988();
  v48 = v36;
  v49 = v16;
  v50 = v38;
  v51 = v40;
  v52 = v47;
  v53 = v41;
  v54 = v39;
  v55 = v42;
  v56 = v43;
  v57 = v45;
  v58 = v44;
  sub_24B738A84();
  v27 = swift_getWitnessTable();
  sub_24B6C7504(v24, v19, v27);
  v28 = *(v20 + 8);
  v28(v24, v19);
  sub_24B6C7504(v26, v19, v27);
  return (v28)(v26, v19);
}

uint64_t sub_24B6D6DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a1;
  v67 = a8;
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v48[1] = a3;
  v60 = a2;
  v61 = a9;
  v59 = a12;
  v58 = a10;
  v57 = a11;
  v54 = sub_24B75B958();
  v56 = a4;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v62 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v106 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  v55 = sub_24B75C088();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v101 = sub_24B75B558();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v98 = v67;
  v99 = MEMORY[0x277CE01B0];
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF678];
  v94 = swift_getWitnessTable();
  v95 = v106;
  v14 = swift_getWitnessTable();
  v87 = MEMORY[0x277CE1340];
  v88 = v14;
  v89 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v82 = v13;
  v83 = MEMORY[0x277D837D0];
  v84 = OpaqueTypeMetadata2;
  v85 = v16;
  v86 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v102 = sub_24B75C4E8();
  v17 = v63;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v103 = sub_24B75C4E8();
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v48[2] = swift_getWitnessTable();
  v18 = sub_24B75C088();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v48 - v20;
  v22 = sub_24B75B558();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v48 - v24;
  v53 = v26;
  v27 = sub_24B75B558();
  v54 = *(v27 - 8);
  v55 = v27;
  v28 = *(v54 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v50 = v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v51 = v48 - v31;
  sub_24B75B788();
  v32 = v56;
  v33 = v57;
  v68 = v56;
  v69 = v17;
  v70 = v64;
  v71 = v65;
  v34 = v67;
  v35 = v58;
  v36 = v59;
  v72 = v67;
  v73 = v58;
  v74 = v57;
  v75 = v59;
  v76 = v66;
  v77 = v60;
  sub_24B75C078();
  sub_24B75B9C8();
  v37 = swift_getWitnessTable();
  v62 = v25;
  v60 = v37;
  sub_24B75BE48();
  (*(v49 + 8))(v21, v18);
  sub_24B75B9B8();
  v82 = v32;
  v83 = v63;
  v84 = v64;
  v85 = v65;
  v86 = v34;
  v87 = v35;
  v88 = v33;
  v89 = v36;
  type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (BYTE1(v86) <= 6u)
  {
    sub_24B75B478();
  }

  v38 = MEMORY[0x277CDF918];
  v80 = v60;
  v81 = MEMORY[0x277CDF918];
  v39 = v53;
  v40 = swift_getWitnessTable();
  v41 = v50;
  v42 = v62;
  sub_24B75BE48();
  (*(v52 + 8))(v42, v39);
  v78 = v40;
  v79 = v38;
  v43 = v55;
  v44 = swift_getWitnessTable();
  v45 = v51;
  sub_24B6C7504(v41, v43, v44);
  v46 = *(v54 + 8);
  v46(v41, v43);
  sub_24B6C7504(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_24B6D79D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v115 = a6;
  v116 = a8;
  v105 = a7;
  v106 = a5;
  v113 = a4;
  v114 = a3;
  v109 = a2;
  v110 = a1;
  v111 = a9;
  v108 = a11;
  v107 = a10;
  v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v134 = a5;
  v135 = a10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v13 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  v155 = sub_24B75B558();
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v14 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v15 = sub_24B75B558();
  v152 = a7;
  v153 = MEMORY[0x277CE01B0];
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v151 = MEMORY[0x277CDF678];
  v17 = swift_getWitnessTable();
  v112 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v148 = v17;
  v149 = v112;
  v18 = v16;
  v19 = swift_getWitnessTable();
  v134 = v14;
  v135 = MEMORY[0x277CE1350];
  v136 = v15;
  v137 = v15;
  v138 = v17;
  v139 = MEMORY[0x277CE1340];
  v140 = v19;
  v141 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x277CE1198];
  v22 = swift_getWitnessTable();
  v146 = v20;
  v147 = v22;
  swift_getWitnessTable();
  v23 = sub_24B75C088();
  v92 = v21;
  v24 = swift_getWitnessTable();
  v134 = v23;
  v135 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v25 = sub_24B75B558();
  v134 = v23;
  v135 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v144 = OpaqueTypeConformance2;
  v145 = v27;
  v90 = v18;
  v28 = swift_getWitnessTable();
  v134 = v25;
  v135 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v134 = v103;
  v135 = MEMORY[0x277D837D0];
  v136 = OpaqueTypeMetadata2;
  v137 = v30;
  v138 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v85 = v13;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  sub_24B75B558();
  v156 = sub_24B75C4E8();
  v31 = v113;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v157 = sub_24B75C4E8();
  v158 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A0, &qword_24B75F940);
  swift_getTupleTypeMetadata();
  v94 = sub_24B75C178();
  v96 = sub_24B75BF88();
  v98 = *(v96 - 8);
  v32 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v83 - v33;
  sub_24B75B8E8();
  v100 = sub_24B75B558();
  v102 = *(v100 - 8);
  v34 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v83 - v35;
  v101 = sub_24B75B558();
  v103 = *(v101 - 8);
  v36 = *(v103 + 64);
  v37 = MEMORY[0x28223BE20](v101);
  v104 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v97 = &v83 - v40;
  MEMORY[0x28223BE20](v39);
  v99 = &v83 - v41;
  v42 = v114;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v43 = v115;
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v142 = swift_getWitnessTable();
  v143 = v112;
  swift_getWitnessTable();
  v44 = sub_24B75C088();
  v112 = *(v44 - 8);
  v45 = *(v112 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v83 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v88 = &v83 - v49;
  v134 = v42;
  v135 = v31;
  v50 = v105;
  v51 = v106;
  v136 = v106;
  v137 = v43;
  v138 = v105;
  v139 = v116;
  v52 = v107;
  v53 = v108;
  v140 = v107;
  v141 = v108;
  v84 = type metadata accessor for WorkoutDetailView();
  v86 = v48;
  v55 = v109;
  v54 = v110;
  sub_24B6C7BEC(v109, v84, v48);
  v87 = v44;
  v89 = swift_getWitnessTable();
  sub_24B6C7504(v48, v44, v89);
  v91 = *(v112 + 8);
  v92 = v112 + 8;
  v91(v48, v44);
  v117 = v114;
  v118 = v113;
  v119 = v51;
  v120 = v115;
  v121 = v50;
  v122 = v116;
  v123 = v52;
  v124 = v53;
  v125 = v54;
  v126 = v55;
  v56 = swift_getWitnessTable();
  v57 = v93;
  sub_24B75BF78();
  v58 = sub_24B75B9D8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v59 = v138;
  if (v138)
  {
    v60 = 0;
  }

  else
  {
    v60 = v135;
  }

  v133 = v56;
  v61 = v96;
  v62 = swift_getWitnessTable();
  v63 = v95;
  sub_24B7274C0(v58, v60, v59, v61, v62);
  (*(v98 + 8))(v57, v61);
  v64 = sub_24B75B9F8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v65 = v138;
  if (v138)
  {
    v66 = 0;
  }

  else
  {
    v66 = v137;
  }

  v67 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v131 = v62;
  v132 = v67;
  v68 = v100;
  v69 = swift_getWitnessTable();
  v70 = v97;
  sub_24B7274C0(v64, v66, v65, v68, v69);
  (*(v102 + 8))(v63, v68);
  v129 = v69;
  v130 = v67;
  v71 = v101;
  v72 = swift_getWitnessTable();
  v73 = v99;
  sub_24B6C7504(v70, v71, v72);
  v74 = v103;
  v75 = *(v103 + 8);
  v75(v70, v71);
  v77 = v86;
  v76 = v87;
  v78 = v88;
  (*(v112 + 16))(v86, v88, v87);
  v134 = v77;
  v79 = *(v74 + 16);
  v80 = v104;
  v79(v104, v73, v71);
  v135 = v80;
  v154 = v76;
  v155 = v71;
  v127 = v89;
  v128 = v72;
  sub_24B7386C4(&v134, 2uLL, &v154);
  v75(v73, v71);
  v81 = v91;
  v91(v78, v76);
  v75(v80, v71);
  return v81(v77, v76);
}

uint64_t sub_24B6D8810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v208 = a4;
  v209 = a8;
  v196 = a7;
  v197 = a3;
  v228 = a6;
  v229 = a1;
  v200 = a5;
  v219 = a2;
  v207 = a9;
  v201 = a11;
  v198 = a10;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345A0, &qword_24B75F940);
  v12 = *(*(v205 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v205);
  v218 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v206 = &v177 - v15;
  v16 = sub_24B75B558();
  v17 = sub_24B75B558();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034598, &qword_24B75F938);
  swift_getTupleTypeMetadata2();
  v19 = sub_24B75C178();
  v203 = *(v19 - 8);
  v20 = *(v203 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v185 = v18;
  v186 = &v177 - v22;
  v23 = *(*(v18 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v184 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v177 - v27;
  v180 = v16;
  v178 = *(v16 - 8);
  v28 = *(v178 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v177 = &v177 - v30;
  v187 = v17;
  v179 = *(v17 - 8);
  v31 = *(v179 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v182 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v181 = &v177 - v34;
  v220 = v35;
  v217 = sub_24B75C4E8();
  v202 = *(v217 - 8);
  v36 = *(v202 + 64);
  v37 = MEMORY[0x28223BE20](v217);
  v204 = &v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v216 = &v177 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  v41 = sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  v42 = sub_24B75B558();
  v276 = a7;
  v277 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v275 = MEMORY[0x277CDF678];
  v43 = swift_getWitnessTable();
  v44 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v272 = v43;
  v273 = v44;
  v45 = swift_getWitnessTable();
  v264 = v41;
  v265 = MEMORY[0x277CE1350];
  v266 = v42;
  v267 = v42;
  v268 = v43;
  v269 = MEMORY[0x277CE1340];
  v270 = v45;
  v271 = v45;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v46 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v262 = v46;
  v263 = v47;
  swift_getWitnessTable();
  v48 = sub_24B75C088();
  v49 = swift_getWitnessTable();
  v264 = v48;
  v265 = v49;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B958();
  v50 = sub_24B75B558();
  v264 = v48;
  v265 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v260 = OpaqueTypeConformance2;
  v261 = v52;
  v53 = swift_getWitnessTable();
  v264 = v50;
  v265 = v53;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v264 = v40;
  v265 = MEMORY[0x277D837D0];
  v266 = OpaqueTypeMetadata2;
  v267 = v55;
  v268 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  v56 = sub_24B75C088();
  v189 = *(v56 - 8);
  v57 = *(v189 + 64);
  MEMORY[0x28223BE20](v56);
  v188 = &v177 - v58;
  v215 = v59;
  v60 = sub_24B75B558();
  v191 = *(v60 - 8);
  v61 = *(v191 + 64);
  MEMORY[0x28223BE20](v60);
  v190 = &v177 - v62;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034590, &qword_24B75F930);
  v214 = v60;
  v63 = sub_24B75B558();
  v195 = *(v63 - 8);
  v64 = *(v195 + 64);
  v65 = MEMORY[0x28223BE20](v63);
  v193 = &v177 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v192 = &v177 - v67;
  v213 = v68;
  v69 = sub_24B75C4E8();
  v226 = *(v69 - 8);
  v227 = v69;
  v70 = *(v226 + 64);
  v71 = MEMORY[0x28223BE20](v69);
  v225 = &v177 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v224 = &v177 - v73;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v74 = v200;
  v75 = v198;
  v264 = v200;
  v265 = v198;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v76 = sub_24B75C088();
  v194 = *(v76 - 8);
  v77 = *(v194 + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v177 - v78;
  v223 = sub_24B75B558();
  v210 = *(v223 - 8);
  v80 = *(v210 + 64);
  v81 = MEMORY[0x28223BE20](v223);
  v222 = &v177 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v221 = &v177 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v177 - v87;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034538, &qword_24B7671C0);
  v89 = *(*(v199 - 8) + 64);
  v90 = MEMORY[0x28223BE20](v199);
  v212 = &v177 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v93 = &v177 - v92;
  v264 = v197;
  v265 = v208;
  v266 = v74;
  v267 = v228;
  v268 = v196;
  v269 = v209;
  v270 = v75;
  v271 = v201;
  v94 = type metadata accessor for WorkoutDetailView();
  v95 = v219;
  v228 = v94;
  v96 = sub_24B6C7B08(v219);
  v97 = 1;
  if (!v96)
  {
    sub_24B6C86BC(v95, v228, v88);
    sub_24B6B8DE8(v88, v93, &qword_27F0346C0, &qword_24B75FAC0);
    v97 = 0;
  }

  v98 = *(v85 + 56);
  v211 = v93;
  v98(v93, v97, 1, v84);
  sub_24B6C9BD8(v95, v228, v79);
  sub_24B75B9C8();
  v99 = swift_getWitnessTable();
  v100 = v222;
  sub_24B75BE48();
  (*(v194 + 8))(v79, v76);
  v101 = MEMORY[0x277CDF918];
  v258 = v99;
  v259 = MEMORY[0x277CDF918];
  v102 = v223;
  v198 = swift_getWitnessTable();
  sub_24B6C7504(v100, v102, v198);
  v200 = *(v210 + 8);
  v201 = v210 + 8;
  v200(v100, v102);
  v103 = type metadata accessor for WorkoutDetail();
  v104 = v103;
  v105 = *(v95 + *(v103 + 76));
  if (*(v105 + 16))
  {
    v106 = *(v103 + 72);
    v107 = sub_24B75C128();
    v108 = v95 + v106;
    v109 = v188;
    v110 = v228;
    sub_24B6CC168(v105, v108, (v107 & 1) == 0, v228, v188);
    sub_24B75BA08();
    v111 = v215;
    v112 = swift_getWitnessTable();
    v113 = v190;
    sub_24B75BE48();
    (*(v189 + 8))(v109, v111);
    v114 = v110;
    if (qword_27F033CE8 != -1)
    {
      swift_once();
    }

    v264 = qword_27F034520;

    sub_24B75B9A8();
    v256 = v112;
    v257 = v101;
    v115 = v214;
    v116 = swift_getWitnessTable();
    v117 = v193;
    sub_24B75BCA8();

    (*(v191 + 8))(v113, v115);
    v118 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930);
    v254 = v116;
    v255 = v118;
    v119 = v213;
    v120 = swift_getWitnessTable();
    v121 = v192;
    sub_24B6C7504(v117, v119, v120);
    v122 = v195;
    v123 = *(v195 + 8);
    v123(v117, v119);
    sub_24B6C7504(v121, v119, v120);
    v123(v121, v119);
    v124 = v225;
    (*(v122 + 32))(v225, v117, v119);
    (*(v122 + 56))(v124, 0, 1, v119);
  }

  else
  {
    v124 = v225;
    (*(v195 + 56))(v225, 1, 1, v213);
    v232 = swift_getWitnessTable();
    v233 = v101;
    v125 = swift_getWitnessTable();
    v126 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930);
    v230 = v125;
    v231 = v126;
    swift_getWitnessTable();
    v114 = v228;
  }

  v128 = v226;
  v127 = v227;
  v195 = *(v226 + 16);
  v196 = v226 + 16;
  (v195)(v224, v124, v227);
  v129 = *(v128 + 8);
  v226 = v128 + 8;
  v197 = v129;
  v129(v124, v127);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v264)
  {
    v130 = v204;
    (*(v203 + 56))(v204, 1, 1, v220);
  }

  else
  {
    v131 = *(v114 + 84);
    sub_24B75B568();
    sub_24B75B998();
    v132 = v177;
    v133 = v209;
    sub_24B75BD68();
    sub_24B75B9C8();
    v252 = v133;
    v253 = MEMORY[0x277CE0880];
    v134 = v180;
    v135 = swift_getWitnessTable();
    v136 = v182;
    sub_24B75BE48();
    (*(v178 + 8))(v132, v134);
    v250 = v135;
    v251 = MEMORY[0x277CDF918];
    v137 = v187;
    v138 = swift_getWitnessTable();
    v139 = v181;
    sub_24B6C7504(v136, v137, v138);
    v140 = v179;
    v209 = *(v179 + 8);
    v209(v136, v137);
    v141 = v219 + v104[7];
    v142 = v219 + v104[26];
    v143 = v219 + v104[6];
    v144 = v183;
    sub_24B6D3668(v141, v142, v143, v228, v183);
    LOBYTE(v131) = sub_24B75B9C8();
    sub_24B75B3D8();
    v145 = v185;
    v146 = v144 + *(v185 + 36);
    *v146 = v131;
    *(v146 + 8) = v147;
    *(v146 + 16) = v148;
    *(v146 + 24) = v149;
    *(v146 + 32) = v150;
    *(v146 + 40) = 0;
    (*(v140 + 16))(v136, v139, v137);
    v264 = v136;
    v151 = v184;
    sub_24B6B9D34(v144, v184, &qword_27F034598, &qword_24B75F938);
    v265 = v151;
    v245 = v137;
    v246 = v145;
    v240 = v138;
    v241 = sub_24B6E8C14();
    v152 = v186;
    sub_24B7386C4(&v264, 2uLL, &v245);
    sub_24B6B9CD4(v144, &qword_27F034598, &qword_24B75F938);
    v153 = v209;
    v209(v139, v137);
    v114 = v228;
    sub_24B6B9CD4(v151, &qword_27F034598, &qword_24B75F938);
    v153(v136, v137);
    v154 = v203;
    v130 = v204;
    v155 = v152;
    v156 = v220;
    (*(v203 + 32))(v204, v155, v220);
    (*(v154 + 56))(v130, 0, 1, v156);
  }

  swift_getWitnessTable();
  v157 = v202;
  v158 = *(v202 + 16);
  v159 = v217;
  v158(v216, v130, v217);
  v160 = *(v157 + 8);
  v208 = (v157 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v209 = v160;
  v160(v130, v159);
  v161 = v211;
  v162 = v206;
  sub_24B6D4D6C(v219, v114, v206);
  v163 = v212;
  sub_24B6B9D34(v161, v212, &qword_27F034538, &qword_24B7671C0);
  v264 = v163;
  v164 = v222;
  v165 = v223;
  (*(v210 + 16))(v222, v221, v223);
  v265 = v164;
  v166 = v225;
  v167 = v227;
  (v195)(v225, v224);
  v266 = v166;
  v168 = v216;
  v158(v130, v216, v159);
  v267 = v130;
  v169 = v218;
  sub_24B6B9D34(v162, v218, &qword_27F0345A0, &qword_24B75F940);
  v268 = v169;
  v245 = v199;
  v246 = v165;
  v247 = v167;
  v248 = v159;
  v249 = v205;
  v240 = sub_24B6E9B94(&qword_27F0346E8, &qword_27F034538, &qword_24B7671C0, sub_24B6E8CCC);
  v241 = v198;
  v238 = swift_getWitnessTable();
  v239 = MEMORY[0x277CDF918];
  v170 = swift_getWitnessTable();
  v171 = sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930);
  v236 = v170;
  v237 = v171;
  v235 = swift_getWitnessTable();
  v242 = swift_getWitnessTable();
  v234 = swift_getWitnessTable();
  v243 = swift_getWitnessTable();
  v244 = sub_24B6E8E40();
  sub_24B7386C4(&v264, 5uLL, &v245);
  sub_24B6B9CD4(v162, &qword_27F0345A0, &qword_24B75F940);
  v172 = v209;
  v209(v168, v159);
  v173 = v197;
  v197(v224, v167);
  v174 = v223;
  v175 = v200;
  v200(v221, v223);
  sub_24B6B9CD4(v211, &qword_27F034538, &qword_24B7671C0);
  sub_24B6B9CD4(v218, &qword_27F0345A0, &qword_24B75F940);
  v172(v130, v217);
  v173(v225, v227);
  v175(v222, v174);
  return sub_24B6B9CD4(v212, &qword_27F034538, &qword_24B7671C0);
}

uint64_t sub_24B6DA13C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v24[4] = sub_24B75B958();
  v35 = a2[2];
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  v31 = a2[5];
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v24[2] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v67 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v4 = a2[4];
  v29 = a2 + 7;
  v30 = a2 + 9;
  v5 = a2[8];
  v27 = v4;
  v28 = v5;
  v52 = v4;
  v53 = v5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v24[3] = sub_24B75C088();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v25 = a2[6];
  v64 = v25;
  v65 = MEMORY[0x277CE01B0];
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x277CDF678];
  v60 = swift_getWitnessTable();
  v61 = v67;
  v7 = swift_getWitnessTable();
  v57 = MEMORY[0x277CE1340];
  v58 = v7;
  v59 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v52 = v6;
  v53 = MEMORY[0x277D837D0];
  v54 = OpaqueTypeMetadata2;
  v55 = v9;
  v56 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948);
  sub_24B75B4C8();
  v10 = a2[3];
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v46 = swift_getWitnessTable();
  v47 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v44 = swift_getWitnessTable();
  v45 = v47;
  v42 = swift_getWitnessTable();
  v43 = v47;
  swift_getWitnessTable();
  v11 = sub_24B75B3E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  sub_24B75B988();
  *&v19 = v35;
  *(&v19 + 1) = v10;
  *&v20 = v27;
  *(&v20 + 1) = v31;
  v36 = v19;
  v37 = v20;
  *&v19 = v25;
  *(&v19 + 1) = *v29;
  *&v20 = v28;
  *(&v20 + 1) = *v30;
  v38 = v19;
  v39 = v20;
  v40 = v33;
  v41 = v32;
  sub_24B738A84();
  v21 = swift_getWitnessTable();
  sub_24B6C7504(v16, v11, v21);
  v22 = *(v12 + 8);
  v22(v16, v11);
  sub_24B6C7504(v18, v11, v21);
  return (v22)(v18, v11);
}

uint64_t sub_24B6DABC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v78 = a7;
  v79 = a8;
  v68 = a6;
  v75 = a4;
  v76 = a5;
  v70 = a2;
  v71 = a9;
  v77 = a1;
  v69 = a11;
  v67 = a10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v65 = sub_24B75B958();
  v66 = a3;
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v73 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v115 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v74 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v64 = sub_24B75C088();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v112 = v78;
  v113 = MEMORY[0x277CE01B0];
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF678];
  v108 = swift_getWitnessTable();
  v109 = v115;
  v13 = swift_getWitnessTable();
  v101 = MEMORY[0x277CE1340];
  v102 = v13;
  v103 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v106 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  v96 = v12;
  v97 = MEMORY[0x277D837D0];
  v98 = OpaqueTypeMetadata2;
  v99 = v15;
  v100 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948);
  sub_24B75B4C8();
  v16 = v75;
  sub_24B75B558();
  sub_24B75C4E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345C0, &qword_24B75F958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v55[1] = swift_getWitnessTable();
  v55[0] = sub_24B75C088();
  v56 = *(v55[0] - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v55[0]);
  v19 = v55 - v18;
  sub_24B75B8E8();
  v58 = sub_24B75B558();
  v60 = *(v58 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v72 = v55 - v21;
  v61 = sub_24B75B558();
  v64 = *(v61 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = v55 - v23;
  v63 = sub_24B75B558();
  v65 = *(v63 - 8);
  v24 = *(v65 + 64);
  v25 = MEMORY[0x28223BE20](v63);
  v59 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v62 = v55 - v27;
  sub_24B75B788();
  v28 = v66;
  v80 = v66;
  v81 = v16;
  v29 = v67;
  v30 = v68;
  v82 = v76;
  v83 = v68;
  v31 = v78;
  v84 = v78;
  v85 = v79;
  v32 = v69;
  v86 = v67;
  v87 = v69;
  v88 = v77;
  v89 = v70;
  v33 = v19;
  sub_24B75C078();
  v34 = sub_24B75B9B8();
  v35 = v55[0];
  v70 = swift_getWitnessTable();
  sub_24B7274C0(v34, 0x4034000000000000, 0, v35, v70);
  (*(v56 + 8))(v33, v35);
  LODWORD(v73) = sub_24B75B9D8();
  v96 = v28;
  v97 = v75;
  v98 = v76;
  v99 = v30;
  v100 = v31;
  v101 = v79;
  v102 = v29;
  v103 = v32;
  type metadata accessor for WorkoutDetailView();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v36 = v100;
  if (v100)
  {
    v37 = 0;
  }

  else
  {
    v37 = v97;
  }

  v38 = sub_24B6EAA80(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v94 = v70;
  v95 = v38;
  v39 = v58;
  v40 = swift_getWitnessTable();
  v41 = v57;
  v42 = v36;
  v43 = v72;
  sub_24B7274C0(v73, v37, v42, v39, v40);
  (*(v60 + 8))(v43, v39);
  v44 = sub_24B75B9F8();
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v45 = v100;
  if (v100)
  {
    v46 = 0;
  }

  else
  {
    v46 = v99;
  }

  v92 = v40;
  v93 = v38;
  v47 = v61;
  v48 = swift_getWitnessTable();
  v49 = v59;
  sub_24B7274C0(v44, v46, v45, v47, v48);
  (*(v64 + 8))(v41, v47);
  v90 = v48;
  v91 = v38;
  v50 = v63;
  v51 = swift_getWitnessTable();
  v52 = v62;
  sub_24B6C7504(v49, v50, v51);
  v53 = *(v65 + 8);
  v53(v49, v50);
  sub_24B6C7504(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_24B6DB918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10, uint64_t a11)
{
  v158 = a8;
  v154 = a6;
  v155 = a7;
  v145 = a5;
  v146 = a3;
  v151 = a4;
  v148 = a2;
  v143 = a1;
  v139 = a9;
  v153 = a11;
  v147 = *&a10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345C0, &qword_24B75F958);
  v12 = *(*(v136 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v136);
  v138 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = (&v129 - v15);
  v16 = sub_24B75B558();
  v135 = *(v16 - 8);
  v17 = v135[8];
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v129 = &v129 - v20;
  v149 = v21;
  v150 = sub_24B75C4E8();
  v157 = *(v150 - 8);
  v22 = *(v157 + 64);
  v23 = MEMORY[0x28223BE20](v150);
  v144 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v156 = &v129 - v25;
  v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345A8, &qword_24B75F948);
  v142 = sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v26 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  v140 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v28 = sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  v180 = WitnessTable;
  v181 = v28;
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  v161 = a5;
  v162 = a10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v29 = v26;
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v141 = sub_24B75C088();
  v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  v30 = v146;
  sub_24B75B558();
  v31 = sub_24B75B558();
  v32 = COERCE_DOUBLE(sub_24B75B558());
  v178 = v155;
  v179 = MEMORY[0x277CE01B0];
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  v174 = v33;
  v175 = v28;
  v34 = swift_getWitnessTable();
  v161 = v31;
  v162 = MEMORY[0x277CE1350];
  v163 = v32;
  v164 = v32;
  v165 = v33;
  v166 = MEMORY[0x277CE1340];
  v167 = v34;
  v168 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  v132 = v29;
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v172 = v35;
  v173 = v36;
  swift_getWitnessTable();
  v37 = sub_24B75C088();
  v38 = COERCE_DOUBLE(swift_getWitnessTable());
  v161 = v37;
  v162 = v38;
  swift_getOpaqueTypeMetadata2();
  v39 = sub_24B75B558();
  v161 = v37;
  v162 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  v170 = OpaqueTypeConformance2;
  v171 = v41;
  v42 = COERCE_DOUBLE(swift_getWitnessTable());
  v161 = v39;
  v162 = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = COERCE_DOUBLE(sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908));
  v161 = v133;
  v162 = MEMORY[0x277D837D0];
  v163 = *&OpaqueTypeMetadata2;
  v164 = v44;
  v165 = MEMORY[0x277D837E0];
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  v134 = sub_24B75C178();
  sub_24B6C743C(&qword_27F0345B8, &qword_27F0345A8, &qword_24B75F948);
  v45 = sub_24B75B4C8();
  v141 = *(v45 - 8);
  v142 = v45;
  v46 = *(v141 + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v152 = &v129 - v50;
  v51 = v30;
  v161 = v30;
  v162 = v151;
  v52 = v145;
  v54 = v154;
  v53 = v155;
  v163 = *&v145;
  v164 = v154;
  v165 = v155;
  v166 = v158;
  v55 = v147;
  v167 = v147;
  v168 = v153;
  v140 = type metadata accessor for WorkoutDetailView();
  v56 = v143;
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  if (v165)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v162 + v164;
  }

  if (v169 == 2)
  {
    v58 = 0.3;
  }

  else
  {
    v58 = 0.4;
  }

  v59 = qword_24B75F8C0[v169 == 2];
  v60 = swift_allocObject();
  v61 = v151;
  *(v60 + 16) = v51;
  *(v60 + 24) = v61;
  *(v60 + 32) = v52;
  *(v60 + 40) = v54;
  v62 = v53;
  v63 = v158;
  *(v60 + 48) = v62;
  *(v60 + 56) = v63;
  v64 = v55;
  v65 = v61;
  v66 = v153;
  *(v60 + 64) = v64;
  *(v60 + 72) = v66;
  *(v60 + 80) = v57;
  *(v60 + 88) = v59;
  *(v60 + 96) = v58;
  v159[2] = v51;
  *&v159[3] = v65;
  v159[4] = v52;
  *&v159[5] = v54;
  v159[6] = v62;
  v159[7] = v63;
  v159[8] = v64;
  v159[9] = v66;
  v159[10] = v56;
  v159[11] = v148;
  sub_24B6EAEF0(sub_24B6EAC8C, v159, v49);

  v67 = v140;
  v68 = sub_24B6C743C(&qword_27F0349D8, &qword_27F0345A8, &qword_24B75F948);
  v69 = swift_getWitnessTable();
  v160[5] = v68;
  v160[6] = v69;
  v70 = v142;
  v131 = swift_getWitnessTable();
  sub_24B6C7504(v49, v70, v131);
  v71 = *(v141 + 8);
  v133 = v141 + 8;
  v134 = v49;
  v132 = v71;
  v71(v49, v70);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v72 = MEMORY[0x277CE0880];
  if (v161)
  {
    v73 = v144;
    (v135[7])(v144, 1, 1, v149);
    v159[13] = v63;
    v159[14] = v72;
    swift_getWitnessTable();
    v74 = v63;
  }

  else
  {
    v75 = *(v67 + 21);
    sub_24B75B568();
    sub_24B75B998();
    v76 = v130;
    sub_24B75BD68();
    v160[3] = v63;
    v160[4] = v72;
    v77 = v149;
    v78 = swift_getWitnessTable();
    v79 = v129;
    sub_24B6C7504(v76, v77, v78);
    v80 = v135;
    v81 = v135[1];
    v81(v76, v77);
    sub_24B6C7504(v79, v77, v78);
    v81(v79, v77);
    v73 = v144;
    (v80[4])(v144, v76, v77);
    (v80[7])(v73, 0, 1, v77);
    v74 = v158;
  }

  v82 = v157;
  v83 = v150;
  v129 = *(v157 + 16);
  v130 = (v157 + 16);
  (v129)(v156, v73, v150);
  v84 = *(v82 + 8);
  v157 = v82 + 8;
  v135 = v84;
  (v84)(v73, v83);
  sub_24B6C7574();
  swift_getKeyPath();
  sub_24B75C218();

  v85 = v166;
  v86 = v167;
  v87 = v168;
  v88 = swift_allocObject();
  v140 = &v129;
  v90 = v145;
  v89 = v146;
  *(v88 + 2) = v146;
  v88[3] = v65;
  v91 = v154;
  v92 = v155;
  *(v88 + 4) = v90;
  v88[5] = v91;
  *(v88 + 6) = v92;
  *(v88 + 7) = v74;
  v93 = v147;
  v94 = v74;
  v95 = v153;
  *(v88 + 8) = v147;
  *(v88 + 9) = v95;
  *(v88 + 10) = v85;
  *(v88 + 11) = v86;
  *(v88 + 12) = v87;
  v96 = v137;
  *v137 = v85;
  v97 = v96;
  v96[1] = v86;
  v96[2] = v87;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034A10, &qword_24B75FD80);
  sub_24B6DE6F0(v148, v89, *&v151, v90, *&v154, v92, v94, v97 + *(v98 + 44), v93, v95);

  LOBYTE(v82) = sub_24B75B9B8();
  sub_24B75B3D8();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349E0, &qword_24B75FD70) + 36);
  *v107 = v82;
  *(v107 + 8) = v100;
  *(v107 + 16) = v102;
  *(v107 + 24) = v104;
  *(v107 + 32) = v106;
  *(v107 + 40) = 0;
  LOBYTE(v82) = sub_24B75B9C8();
  sub_24B75B3D8();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0349E8, &qword_24B75FD78) + 36);
  *v116 = v82;
  *(v116 + 8) = v109;
  *(v116 + 16) = v111;
  *(v116 + 24) = v113;
  *(v116 + 32) = v115;
  *(v116 + 40) = 0;
  if (qword_27F033CE8 != -1)
  {
    swift_once();
  }

  v117 = qword_27F034520;
  v118 = sub_24B75B9A8();
  v119 = v136;
  v120 = v97 + *(v136 + 36);
  *v120 = v117;
  *(v120 + 8) = v118;
  v121 = v142;
  v122 = v134;
  (*(v141 + 16))(v134, v152, v142);
  v161 = v122;
  v123 = *&v144;
  v124 = v150;
  (v129)(v144, v156, v150);
  v162 = v123;
  v125 = v138;
  sub_24B6B9D34(v97, v138, &qword_27F0345C0, &qword_24B75F958);
  v163 = *&v125;

  v160[0] = v121;
  v160[1] = v124;
  v160[2] = v119;
  v159[18] = v131;
  v159[16] = v158;
  v159[17] = MEMORY[0x277CE0880];
  v159[15] = swift_getWitnessTable();
  v159[19] = swift_getWitnessTable();
  v159[20] = sub_24B6EACA4(&qword_27F0349F0, &qword_27F0345C0, &qword_24B75F958, sub_24B6EAD54);
  sub_24B7386C4(&v161, 3uLL, v160);
  sub_24B6B9CD4(v97, &qword_27F0345C0, &qword_24B75F958);
  v126 = v135;
  (v135)(v156, v124);
  v127 = v132;
  v132(v152, v121);
  sub_24B6B9CD4(v125, &qword_27F0345C0, &qword_24B75F958);
  v126(*&v123, v124);
  return v127(v122, v121);
}

uint64_t sub_24B6DCAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034530, &qword_24B75F8D8);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344B0, &unk_24B75F8E0);
  sub_24B75B558();
  swift_getWitnessTable();
  sub_24B6C743C(&qword_27F0344F0, &qword_27F0344B0, &unk_24B75F8E0);
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345B0, &qword_24B75F950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034540, &qword_24B75F8F0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034548, &qword_24B75F8F8);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034550, &qword_24B75F900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034558, &qword_24B75F908);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034560, &qword_24B75F910);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034568, &qword_24B75F918);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034570, &qword_24B75F920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034578, &qword_24B75F928);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B75B558();
  swift_getOpaqueTypeConformance2();
  sub_24B6EAA80(&qword_27F034580, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6C743C(&qword_27F034588, &qword_27F034558, &qword_24B75F908);
  sub_24B75C0F8();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  swift_getTupleTypeMetadata2();
  v3 = sub_24B75C178();
  v4 = sub_24B6EAF2C();
  WitnessTable = swift_getWitnessTable();
  return sub_24B6DD274(a1, a2, &type metadata for TwoColumnHStack, v3, v4, WitnessTable, a3);
}