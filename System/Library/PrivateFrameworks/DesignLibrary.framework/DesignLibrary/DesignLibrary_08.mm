uint64_t sub_18AF32C84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18AF3261C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18AF32CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF330D8();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF334D4();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF338CC();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF33CCC();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF32DBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18AFCBB54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18AF32E48()
{
  result = qword_1EA99AF60;
  if (!qword_1EA99AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF60);
  }

  return result;
}

unint64_t sub_18AF32E9C()
{
  result = qword_1EA99AF68;
  if (!qword_1EA99AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF68);
  }

  return result;
}

unint64_t sub_18AF32EF0()
{
  result = qword_1EA99AF70;
  if (!qword_1EA99AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF70);
  }

  return result;
}

unint64_t sub_18AF32F44()
{
  result = qword_1EA99AF78;
  if (!qword_1EA99AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF78);
  }

  return result;
}

unint64_t sub_18AF32F98()
{
  result = qword_1EA99AF80;
  if (!qword_1EA99AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF80);
  }

  return result;
}

unint64_t sub_18AF32FEC()
{
  result = qword_1EA99AF88;
  if (!qword_1EA99AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF88);
  }

  return result;
}

uint64_t sub_18AF330D8()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF334D4()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF338CC()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF33CCC()
{
  v20 = sub_18AFCCCF4();
  v0 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8])
    {
      v17 = (*(v7 + 88))(&v5[v14], v6);
      if (v17 == *MEMORY[0x1E697F600] || v17 == *MEMORY[0x1E697F608])
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    (*(v7 + 8))(&v5[v14], v6);
    goto LABEL_10;
  }

  v16 = (*(v7 + 88))(&v5[v14], v6);
  if (v16 != *MEMORY[0x1E697F600])
  {
    if (v16 == *MEMORY[0x1E697F608])
    {
LABEL_8:
      (*(v0 + 104))(v21, *MEMORY[0x1E69814D8], v20);
      v18 = sub_18AFCCF44();
      (*(v11 + 8))(v5, v10);
      return v18;
    }

    goto LABEL_9;
  }

LABEL_10:
  (*(v11 + 8))(v5, v10);
  (*(v0 + 104))(v21, *MEMORY[0x1E69814D8], v20);
  return sub_18AFCCF44();
}

uint64_t sub_18AF341A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_18AFCBF04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  if (v11 == 2)
  {
    if (sub_18AFCC274())
    {
      sub_18AEFC240();
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v11 != 1 || (sub_18AFCC274() & 1) == 0)
  {
LABEL_10:
    if (v10 == 1)
    {
      v15[1] = sub_18AFCC6E4();
    }

    else if (v12)
    {
      v15[2] = sub_18AFCC6C4();
    }

    else
    {
      v15[3] = sub_18AFCC6F4();
    }

    goto LABEL_15;
  }

  sub_18AFCBEF4();
  if (v10 == 1)
  {
    v13 = 0.3;
  }

  else
  {
    v13 = 1.0;
  }

  (*(v4 + 32))(v9, v6, v3);
  *&v9[*(v7 + 36)] = v13;
  sub_18AF34588();
LABEL_15:
  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

void sub_18AF343D8(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 2) = v2;
}

uint64_t getEnumTagSinglePayload for MacButtonBaseForegroundStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButtonBaseForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_18AF34588()
{
  result = qword_1EA99AF90;
  if (!qword_1EA99AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF90);
  }

  return result;
}

uint64_t type metadata accessor for MacCircularProgressIndicator()
{
  result = qword_1EA99AF98;
  if (!qword_1EA99AF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF34660()
{
  result = sub_18AFCBB54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_18AF346F8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFA8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v26 - v10);
  *v11 = sub_18AFCDB44();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFB0);
  sub_18AF34998(v2, v11 + *(v13 + 44));
  v14 = sub_18AFCC854();
  v15 = type metadata accessor for MacCircularProgressIndicator();
  sub_18AFCBAA4();
  v16 = v11 + *(v9 + 44);
  *v16 = v14;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  (*(v5 + 16))(v7, v2 + *(v15 + 20), v4);
  v21 = (*(v5 + 88))(v7, v4);
  v22 = v21 == *MEMORY[0x1E697DC08] || v21 == *MEMORY[0x1E697DC20];
  if (!v22 && v21 != *MEMORY[0x1E697DC28] && v21 != *MEMORY[0x1E697DC10] && v21 != *MEMORY[0x1E697DC00])
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AF34EC4(v11, a1);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFB8) + 36));
  v24 = v26[1];
  *v23 = v26[0];
  v23[1] = v24;
  result = *&v27;
  v23[2] = v27;
  return result;
}

uint64_t sub_18AF34998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v46 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v46 - v13);
  sub_18AFCDF14();
  v48 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_18AFCC6B4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  sub_18AFCCF44();
  sub_18AFCBB84();

  *v9 = v15;
  type metadata accessor for MacCircularProgressIndicator();
  sub_18AFCBB94();
  v16 = v76;
  v17 = v78;
  v18 = v79;
  v19 = v80;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFD0);
  sub_18AE83A40(v9, v14 + *(v20 + 52), &qword_1EA99AFC0);
  v21 = v77;
  *v14 = v16;
  v14[1] = v21;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  *(v14 + *(v20 + 56)) = 256;
  v22 = sub_18AFCDB44();
  v24 = v23;
  sub_18AE7BA80(v9, &qword_1EA99AFC0);
  v25 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFD8) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = *a1;
  v27 = sub_18AFCCD34();
  sub_18AFCBB94();
  v28 = sub_18AFCDB44();
  v30 = v29;
  sub_18AFCDD04();
  v32 = v31;
  v34 = v33;
  v35 = sub_18AFCDBB4();
  v36 = v49;
  sub_18AE83A40(v14, v49, &qword_1EA99AFC8);
  v37 = v47;
  sub_18AE83A40(v36, v47, &qword_1EA99AFC8);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFE0) + 48));
  *&v55[0] = 0;
  *(&v55[0] + 1) = v26;
  v55[1] = v50;
  v55[2] = v51;
  *&v56 = v52;
  *(&v56 + 1) = v27;
  LOWORD(v57) = 256;
  *(&v57 + 2) = v53;
  WORD3(v57) = v54;
  *(&v57 + 1) = v28;
  *&v58 = v30;
  *(&v58 + 1) = 0xBFF921FB54442D18;
  *&v59 = v32;
  *(&v59 + 1) = v34;
  *&v60 = v35;
  *(&v60 + 1) = v26;
  v39 = v55[0];
  v40 = v50;
  v41 = v56;
  v38[2] = v51;
  v38[3] = v41;
  *v38 = v39;
  v38[1] = v40;
  v42 = v57;
  v43 = v58;
  v44 = v60;
  v38[6] = v59;
  v38[7] = v44;
  v38[4] = v42;
  v38[5] = v43;
  sub_18AE83A40(v55, v61, &qword_1EA99AFE8);
  sub_18AE7BA80(v14, &qword_1EA99AFC8);
  v61[0] = 0;
  v61[1] = v26;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v65 = v27;
  v66 = 256;
  v67 = v53;
  v68 = v54;
  v69 = v28;
  v70 = v30;
  v71 = 0xBFF921FB54442D18;
  v72 = v32;
  v73 = v34;
  v74 = v35;
  v75 = v26;
  sub_18AE7BA80(v61, &qword_1EA99AFE8);
  sub_18AE7BA80(v36, &qword_1EA99AFC8);
}

uint64_t sub_18AF34EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF34F34()
{
  result = qword_1EA99AFF0;
  if (!qword_1EA99AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AFB8);
    sub_18AF34FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AFF0);
  }

  return result;
}

unint64_t sub_18AF34FC0()
{
  result = qword_1EA99AFF8;
  if (!qword_1EA99AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AFA8);
    sub_18AF3504C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AFF8);
  }

  return result;
}

unint64_t sub_18AF3504C()
{
  result = qword_1EA99B000;
  if (!qword_1EA99B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA99B008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B000);
  }

  return result;
}

void sub_18AF350C0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AF35164(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = a1[v6 + 2];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_18AF352B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 10) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9 + 2] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 10) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_18AF354C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_18AFCBB04();
}

uint64_t sub_18AF35654@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v26 = a6;
  v27 = a2;
  v24 = a1;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v24 - v20;
  sub_18AFCDBE4();
  (*(v15 + 16))(v18, v24, a4);
  (*(v11 + 16))(v13, v7, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_18AF38180(v21, v18, v27 & 0x101, v13, AssociatedTypeWitness, a4, a3, AssociatedConformanceWitness, v25, v26, *(a5 + 8));
}

uint64_t sub_18AF35894@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_18AFCBB34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_18AFCDBC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCCDB4();
  sub_18AFCCDA4();

  sub_18AFCC344();
  v12 = sub_18AFCCDA4();

  sub_18AFCC204();
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  v13 = sub_18AFCBB24();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  v15 = MEMORY[0x1E6981DA0];
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x1E6981DB8];
  }

  (*(v9 + 104))(v11, *v15, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8);
  v17 = v20;
  result = (*(v9 + 32))(v20 + *(v16 + 36), v11, v8);
  *v17 = v12;
  return result;
}

uint64_t sub_18AF35B60@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v44 = a5;
  v8 = *(a4 + 8);
  v45 = a3;
  v46 = MEMORY[0x1E697FE80];
  v47 = v8;
  v48 = MEMORY[0x1E697FE70];
  v9 = sub_18AFCBB14();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-v10];
  v12 = sub_18AF380C4();
  WitnessTable = swift_getWitnessTable();
  v45 = a3;
  v46 = &type metadata for SeximalShapeStyle;
  v47 = v9;
  v48 = v8;
  v35 = v12;
  v49 = v12;
  v50 = WitnessTable;
  v14 = sub_18AFCBCE4();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v33[-v15];
  v16 = swift_getWitnessTable();
  v45 = a3;
  v46 = MEMORY[0x1E697E0B8];
  v47 = v14;
  v48 = v8;
  v49 = MEMORY[0x1E697E0A8];
  v50 = v16;
  v17 = sub_18AFCBCE4();
  v40 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33[-v18];
  v19 = sub_18AF38070();
  v20 = swift_getWitnessTable();
  v45 = a3;
  v46 = &type metadata for DisplayBordersStyle;
  v47 = v17;
  v48 = a4;
  v43 = a4;
  v38 = v19;
  v49 = v19;
  v50 = v20;
  v21 = type metadata accessor for PositionStrokeShapeView();
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33[-v22];
  v24 = *a1;
  if (v34)
  {
    v25 = sub_18AFCC6B4();
  }

  else
  {
    v25 = sub_18AFCC6D4();
  }

  LODWORD(v45) = v25;
  sub_18AF354C0(&v45, 256, a3, MEMORY[0x1E697FE80]);
  v26 = swift_getWitnessTable();
  v27 = v41;
  sub_18AF35654(v26, 256, v9, &type metadata for SeximalShapeStyle, v26, v35, v41);
  (*(v37 + 8))(v11, v9);
  if (v24 >= 3)
  {
    if (v24 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v45) = v28;
  }

  else
  {
    v45 = sub_18AFCCD74();
  }

  v45 = sub_18AFCBCD4();
  v29 = swift_getWitnessTable();
  v30 = v36;
  sub_18AF35654(&v45, 256, v14, MEMORY[0x1E697E0B8], v29, MEMORY[0x1E697E0A8], v36);

  (*(v42 + 8))(v27, v14);
  v31 = swift_getWitnessTable();
  sub_18AFC8988(v31, 0, 1, v17, &type metadata for DisplayBordersStyle, v38, v43, v23);
  (*(v40 + 8))(v30, v17);
  swift_getWitnessTable();
  sub_18AFCCBE4();
  return (*(v39 + 8))(v23, v21);
}

uint64_t sub_18AF360A0@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a1;
  v91 = a4;
  LODWORD(v88) = a2;
  v89 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v75 = sub_18AFCBF04();
  v82 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 8);
  v92 = a3;
  v93 = v12;
  v94 = v11;
  v95 = MEMORY[0x1E697E558];
  v13 = sub_18AFCBB14();
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9998B0);
  v72 = v15;
  v16 = sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0);
  v71 = v16;
  WitnessTable = swift_getWitnessTable();
  v92 = a3;
  v93 = v15;
  v94 = v13;
  v95 = v11;
  v96 = v16;
  v97 = WitnessTable;
  v18 = sub_18AFCBCE4();
  v76 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v64 - v19;
  v20 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738);
  v21 = swift_getWitnessTable();
  v92 = a3;
  v93 = v7;
  v65 = v7;
  v94 = v18;
  v95 = v11;
  v96 = v20;
  v97 = v21;
  v22 = v20;
  v66 = v20;
  v23 = sub_18AFCBCE4();
  v69 = v23;
  v73 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v64 - v24;
  v25 = swift_getWitnessTable();
  v92 = a3;
  v93 = v7;
  v94 = v23;
  v95 = v11;
  v96 = v22;
  v97 = v25;
  v26 = sub_18AFCBCE4();
  v87 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = swift_getWitnessTable();
  v92 = a3;
  v93 = MEMORY[0x1E697E0B8];
  v80 = v26;
  v94 = v26;
  v95 = v11;
  v96 = MEMORY[0x1E697E0A8];
  v97 = v29;
  v30 = sub_18AFCBCE4();
  v86 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v64 - v31;
  v32 = sub_18AF38070();
  v33 = swift_getWitnessTable();
  v92 = a3;
  v93 = &type metadata for DisplayBordersStyle;
  v78 = v30;
  v94 = v30;
  v95 = v91;
  v79 = v32;
  v96 = v32;
  v97 = v33;
  v83 = type metadata accessor for PositionStrokeShapeView();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v64 - v34;
  LODWORD(v90) = *v90;
  v35 = v74;
  sub_18AFCBEF4();
  v36 = v70;
  v37 = v75;
  sub_18AF354C0(v35, 256, a3, v75);
  (*(v82 + 8))(v35, v37);
  v38 = sub_18AFCC6B4();
  v39 = 0.0;
  if (v88)
  {
    v39 = 1.0;
  }

  v92 = __PAIR64__(LODWORD(v39), v38);
  v40 = swift_getWitnessTable();
  v41 = v68;
  sub_18AF35654(&v92, 256, v13, v72, v40, v71, v68);
  (*(v84 + 8))(v36, v13);
  v42 = v9;
  sub_18AFCBEF4();
  v43 = v65;
  *&v9[*(v65 + 36)] = 1056964608;
  v44 = v18;
  v45 = swift_getWitnessTable();
  v46 = v67;
  v47 = v66;
  sub_18AF35654(v42, 256, v44, v43, v45, v66, v67);
  sub_18AF38118(v42);
  (*(v76 + 8))(v41, v44);
  sub_18AFCBEF4();
  *(v42 + *(v43 + 36)) = 1056964608;
  v48 = v69;
  v49 = swift_getWitnessTable();
  v88 = v28;
  sub_18AF35654(v42, 256, v48, v43, v49, v47, v28);
  sub_18AF38118(v42);
  (*(v73 + 8))(v46, v48);
  if (v90 >= 3)
  {
    if (v90 == 3)
    {
      v50 = sub_18AFCC6B4();
    }

    else
    {
      v50 = sub_18AFCC6E4();
    }

    LODWORD(v92) = v50;
  }

  else
  {
    v92 = sub_18AFCCD74();
  }

  v51 = sub_18AFCBCD4();
  v52 = v91;
  v54 = v86;
  v53 = v87;
  v55 = v80;
  v56 = v78;
  v92 = v51;
  v57 = swift_getWitnessTable();
  v58 = v85;
  v59 = v88;
  sub_18AF35654(&v92, 256, v55, MEMORY[0x1E697E0B8], v57, MEMORY[0x1E697E0A8], v85);

  (*(v53 + 8))(v59, v55);
  v60 = swift_getWitnessTable();
  v61 = v77;
  sub_18AFC8988(v60, 0, 1, v56, &type metadata for DisplayBordersStyle, v79, v52, v77);
  (*(v54 + 8))(v58, v56);
  v62 = v83;
  swift_getWitnessTable();
  sub_18AFCCBE4();
  return (*(v81 + 8))(v61, v62);
}

uint64_t sub_18AF36A20@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a5;
  v59 = a2;
  v56 = a1;
  v54 = sub_18AFCBF04();
  v7 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = *(a4 + 8);
  v20 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738);
  v62 = a3;
  v63 = v12;
  v64 = v19;
  v65 = v20;
  v21 = sub_18AFCBB14();
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  WitnessTable = swift_getWitnessTable();
  v62 = a3;
  v63 = v12;
  v47 = a3;
  v64 = v21;
  v65 = v19;
  v66 = v20;
  v67 = WitnessTable;
  v25 = sub_18AFCBCE4();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v46 - v26;
  v27 = swift_getWitnessTable();
  v62 = a3;
  v63 = v12;
  v64 = v25;
  v65 = v19;
  v66 = v20;
  v67 = v27;
  v50 = sub_18AFCBCE4();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v46 - v28;
  v29 = *v56;
  v56 = (v29 - 3);
  sub_18AFCBEF4();
  if (v29 == 1)
  {
    v30 = 0.025;
  }

  else
  {
    v30 = 0.05;
  }

  v31 = *(v7 + 32);
  v32 = v11;
  v33 = v54;
  v31(v18, v32, v54);
  *&v18[*(v12 + 36)] = v30;
  sub_18AF354C0(v18, 256, v47, v12);
  sub_18AF38118(v18);
  v34 = v57;
  sub_18AFCBEF4();
  if (v59)
  {
    v35 = 0.1;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v55;
  v31(v55, v34, v33);
  *(v36 + *(v12 + 36)) = v35;
  v37 = swift_getWitnessTable();
  v38 = v49;
  sub_18AF35654(v36, 256, v21, v12, v37, v20, v49);
  sub_18AF38118(v36);
  (*(v53 + 8))(v23, v21);
  v39 = v58;
  sub_18AFCBEF4();
  if (v56 >= 2)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 0.1;
  }

  *(v39 + *(v12 + 36)) = v40;
  v41 = swift_getWitnessTable();
  v42 = v48;
  sub_18AF35654(v39, 256, v25, v12, v41, v20, v48);
  sub_18AF38118(v39);
  (*(v52 + 8))(v38, v25);
  v43 = v50;
  swift_getWitnessTable();
  v44 = sub_18AF38070();
  sub_18AFC8988(v44, 0, 1, v43, &type metadata for DisplayBordersStyle, v44, v60, v61);
  return (*(v51 + 8))(v42, v43);
}

uint64_t sub_18AF37020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v120 = a2;
  v2 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A738);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9998B0);
  sub_18AFCBF04();
  v125 = *(a1 + 24);
  v5 = *(v125 + 1);
  sub_18AFCBB14();
  sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0);
  v128 = MEMORY[0x1E697DB78];
  swift_getWitnessTable();
  sub_18AFCBCE4();
  v6 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738);
  swift_getWitnessTable();
  sub_18AFCBCE4();
  swift_getWitnessTable();
  sub_18AFCBCE4();
  swift_getWitnessTable();
  v7 = sub_18AFCBCE4();
  v127 = sub_18AF38070();
  v136 = v2;
  v137 = &type metadata for DisplayBordersStyle;
  v8 = v125;
  v138 = v7;
  v139 = v125;
  v140 = v127;
  WitnessTable = swift_getWitnessTable();
  v130 = type metadata accessor for PositionStrokeShapeView();
  v131 = sub_18AFCC044();
  v108 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131 - 8);
  v107 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v106 - v11;
  v136 = v2;
  v137 = v4;
  v138 = v5;
  v139 = v6;
  v12 = sub_18AFCBB14();
  v13 = swift_getWitnessTable();
  v136 = v2;
  v137 = v4;
  v138 = v12;
  v139 = v5;
  v140 = v6;
  WitnessTable = v13;
  v14 = sub_18AFCBCE4();
  v15 = swift_getWitnessTable();
  v136 = v2;
  v137 = v4;
  v138 = v14;
  v139 = v5;
  v140 = v6;
  WitnessTable = v15;
  v16 = sub_18AFCBCE4();
  v17 = swift_getWitnessTable();
  v136 = v2;
  v137 = &type metadata for DisplayBordersStyle;
  v138 = v16;
  v139 = v8;
  v18 = v8;
  v19 = v127;
  v140 = v127;
  WitnessTable = v17;
  v20 = type metadata accessor for PositionStrokeShapeView();
  v111 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v106 - v23;
  v136 = v2;
  v137 = MEMORY[0x1E697FE80];
  v138 = v5;
  v139 = MEMORY[0x1E697FE70];
  v24 = sub_18AFCBB14();
  v25 = sub_18AF380C4();
  v26 = swift_getWitnessTable();
  v136 = v2;
  v137 = &type metadata for SeximalShapeStyle;
  v138 = v24;
  v139 = v5;
  v140 = v25;
  WitnessTable = v26;
  v27 = sub_18AFCBCE4();
  v28 = swift_getWitnessTable();
  v136 = v2;
  v137 = MEMORY[0x1E697E0B8];
  v138 = v27;
  v139 = v5;
  v140 = MEMORY[0x1E697E0A8];
  WitnessTable = v28;
  v29 = sub_18AFCBCE4();
  v30 = swift_getWitnessTable();
  v136 = v2;
  v137 = &type metadata for DisplayBordersStyle;
  v138 = v29;
  v139 = v18;
  v140 = v19;
  WitnessTable = v30;
  v124 = type metadata accessor for PositionStrokeShapeView();
  v31 = sub_18AFCC044();
  v129 = v20;
  v32 = sub_18AFCC624();
  v116 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v115 = &v106 - v33;
  v128 = v31;
  v114 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v113 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v123 = &v106 - v37;
  v38 = sub_18AFCC474();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v32;
  v127 = sub_18AFCC624();
  v42 = sub_18AFCE074();
  v118 = *(v42 - 8);
  v119 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47.n128_f64[0] = MEMORY[0x1EEE9AC00](v45);
  v48 = v122;
  v117 = &v106 - v49;
  v50 = v46[10];
  v51 = *(v122 + v50);
  v52 = MEMORY[0x1E697E5C0];
  if (!*(v122 + v50))
  {
    goto LABEL_4;
  }

  v53 = v122 + v46[12];
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    if ((v54 & 1) == 0)
    {
LABEL_4:
      v112 = v44;
      LOBYTE(v136) = *(v48 + v46[9]);
      v55 = v52;
      v56 = v113;
      sub_18AF35B60(&v136, *(v48 + v46[11]), v2, v125, v113);
      v135[6] = swift_getWitnessTable();
      v135[7] = v55;
      v122 = MEMORY[0x1E697E858];
      v57 = v128;
      v58 = swift_getWitnessTable();
      v59 = v123;
      sub_18AEADA5C(v56, v57, v58);
      v125 = *(v114 + 8);
      v125(v56, v57);
      sub_18AEADA5C(v59, v57, v58);
      v60 = swift_getWitnessTable();
      v61 = v115;
      sub_18AEB5268(v56, v57);
      v135[4] = v58;
      v135[5] = v60;
      v62 = v112;
      v63 = v126;
      v64 = swift_getWitnessTable();
      v135[2] = swift_getWitnessTable();
      v135[3] = v55;
      v65 = swift_getWitnessTable();
      sub_18AEB5268(v61, v63);
      (*(v116 + 8))(v61, v63);
      v66 = v125;
      v125(v56, v57);
      v66(v123, v57);
      v44 = v62;
      (*(*(v127 - 8) + 56))(v62, 0, 1, v127);
      v135[0] = v64;
      v67 = v135;
      goto LABEL_5;
    }
  }

  else
  {

    sub_18AFCE024();
    v79 = v44;
    v80 = sub_18AFCC7D4();
    v52 = MEMORY[0x1E697E5C0];
    sub_18AFCBA64();

    v44 = v79;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v54, 0);
    (*(v39 + 8))(v41, v38);
    v46 = v121;
    v48 = v122;
    if ((v136 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (v51 == 2)
  {
    LOBYTE(v136) = *(v48 + v46[9]);
    v94 = v107;
    sub_18AF360A0(&v136, *(v48 + v46[11]), v2, v125, v107);
    v133[6] = swift_getWitnessTable();
    v133[7] = v52;
    v95 = v52;
    v96 = v131;
    v65 = swift_getWitnessTable();
    v97 = v110;
    sub_18AEADA5C(v94, v96, v65);
    v125 = *(v108 + 8);
    v125(v94, v96);
    sub_18AEADA5C(v97, v96, v65);
    v133[4] = swift_getWitnessTable();
    v133[5] = v95;
    v98 = swift_getWitnessTable();
    v99 = swift_getWitnessTable();
    v133[2] = v98;
    v133[3] = v99;
    v100 = v126;
    v101 = swift_getWitnessTable();
    sub_18AEB5360(v94, v100, v96);
    v102 = v125;
    v125(v94, v96);
    v102(v110, v96);
    (*(*(v127 - 8) + 56))(v44, 0, 1, v127);
    v133[0] = v101;
    v67 = v133;
  }

  else
  {
    v81 = v52;
    if (v51 == 1)
    {
      LOBYTE(v136) = *(v48 + v46[9]);
      v82 = v106;
      sub_18AF36A20(&v136, *(v48 + v46[11]), v2, v125, v106);
      v123 = &unk_18AFE35F0;
      v83 = v129;
      v84 = swift_getWitnessTable();
      v85 = v109;
      sub_18AEADA5C(v82, v83, v84);
      v86 = *(v111 + 8);
      v111 += 8;
      v125 = v86;
      v86(v82, v83);
      sub_18AEADA5C(v85, v83, v84);
      v132[6] = swift_getWitnessTable();
      v132[7] = v81;
      v87 = v81;
      v88 = v128;
      v89 = swift_getWitnessTable();
      v90 = v115;
      sub_18AEB5360(v82, v88, v83);
      v132[4] = v89;
      v132[5] = v84;
      v91 = v126;
      v92 = swift_getWitnessTable();
      v132[2] = swift_getWitnessTable();
      v132[3] = v87;
      v65 = swift_getWitnessTable();
      sub_18AEB5268(v90, v91);
      (*(v116 + 8))(v90, v91);
      v93 = v125;
      v125(v82, v83);
      v93(v109, v83);
      (*(*(v127 - 8) + 56))(v44, 0, 1, v127);
      v132[0] = v92;
      v67 = v132;
    }

    else
    {
      (*(*(v127 - 8) + 56))(v44, 1, 1, v127, v47);
      v134[6] = swift_getWitnessTable();
      v134[7] = v52;
      v103 = swift_getWitnessTable();
      v104 = swift_getWitnessTable();
      v134[4] = v103;
      v134[5] = v104;
      v105 = swift_getWitnessTable();
      v134[2] = swift_getWitnessTable();
      v134[3] = v52;
      v65 = swift_getWitnessTable();
      v134[0] = v105;
      v67 = v134;
    }
  }

LABEL_5:
  v67[1] = v65;
  swift_getWitnessTable();
  v68 = v117;
  sub_18AF1FC5C(v44, v117);
  v69 = *(v118 + 8);
  v70 = v44;
  v71 = v119;
  v69(v70, v119);
  v134[15] = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E5C0];
  v134[16] = MEMORY[0x1E697E5C0];
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v134[13] = v73;
  v134[14] = v74;
  v75 = swift_getWitnessTable();
  v134[11] = swift_getWitnessTable();
  v134[12] = v72;
  v76 = swift_getWitnessTable();
  v134[9] = v75;
  v134[10] = v76;
  v134[8] = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  sub_18AEADA5C(v68, v71, v77);
  return (v69)(v68, v71);
}

unint64_t sub_18AF38070()
{
  result = qword_1EA99B090;
  if (!qword_1EA99B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B090);
  }

  return result;
}

unint64_t sub_18AF380C4()
{
  result = qword_1EA99B098[0];
  if (!qword_1EA99B098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99B098);
  }

  return result;
}

uint64_t sub_18AF38118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF38180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v36 = a3;
  v33 = a2;
  v34 = a7;
  v40 = a9;
  v41 = a1;
  v14 = *(a7 - 8);
  v38 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18AFCC5F4();
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v31 - v16;
  v31 = *(a6 - 8);
  v17 = v31;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a5;
  v44 = a6;
  v45 = a8;
  v46 = a10;
  v32 = sub_18AFCBB14();
  v25 = MEMORY[0x1EEE9AC00](v32);
  (*(v21 + 16))(v24, v41, a5, v25);
  v26 = *(v17 + 16);
  v27 = v33;
  v26(v20, v33, a6);
  sub_18AFCBB04();
  v28 = v37;
  v29 = v34;
  (*(v14 + 16))(v42, v37, v34);
  sub_18AFCDB44();
  (*(v14 + 8))(v28, v29);
  (*(v31 + 8))(v27, a6);
  (*(v21 + 8))(v41, a5);
  sub_18AFCC5E4();
  return sub_18AFCC034();
}

void sub_18AF384FC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C28);
        if (v3 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997C40);
          if (v4 <= 0x3F)
          {
            sub_18AEDCEE0(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
            if (v5 <= 0x3F)
            {
              sub_18AEDCEE0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
              if (v6 <= 0x3F)
              {
                sub_18AEB1A48(319, &qword_1EA997C38);
                if (v7 <= 0x3F)
                {
                  sub_18AEB1A48(319, &qword_1EA997C48);
                  if (v8 <= 0x3F)
                  {
                    sub_18AEDCEE0(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_18AF386F0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v37 = a3[2];
  v4 = *(v37 - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  v36 = v7;
  if (v5 > v7)
  {
    v7 = *(v4 + 84);
  }

  v8 = *(a3[4] - 8);
  v35 = *(v8 + 84);
  if (v7 <= v35)
  {
    v7 = *(v8 + 84);
  }

  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v7;
  }

  v40 = *(sub_18AFCBB34() - 8);
  v10 = *(v40 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v41 = v10;
  v38 = *(sub_18AFCC5C4() - 8);
  v11 = *(v38 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v39 = v11;
  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v17;
  if (a2 <= v9)
  {
    goto LABEL_37;
  }

  v20 = *(v40 + 80) & 0xF8 | 7;
  v21 = (v20 + ((v18 + ((v19 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20;
  v22 = *(v38 + 80) & 0xF8 | 7;
  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v13 + ((v23 + ((v39 + ((v41 + v22 + v21 + 1) & ~v22) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v9 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_37;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 > 3)
        {
          LODWORD(v24) = 4;
        }

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v24) = *a1;
          }
        }

        else if (v24 == 1)
        {
          LODWORD(v24) = *a1;
        }

        else
        {
          LODWORD(v24) = *a1;
        }
      }

      return v9 + (v24 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_37:
  v30 = (a1 + v14 + 1) & ~v14;
  if (v5 != v9)
  {
    v32 = (v30 + v15 + v16) & ~v16;
    if (v36 == v9)
    {
      v33 = *(v6 + 48);
    }

    else
    {
      v32 = (v19 + v32) & ~v17;
      if (v35 != v9)
      {
        v34 = *(((v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v34 > 1)
        {
          return (v34 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v33 = *(v8 + 48);
    }

    return v33(v32);
  }

  v31 = *(v4 + 48);

  return v31(v30, v5, v37);
}

void sub_18AF38BF4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v40 = v6;
  v38 = v5;
  v37 = *(v6 + 84);
  if (v5 <= v37)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(a4[4] - 8);
  v39 = v7;
  v36 = *(v7 + 84);
  if (v5 <= v36)
  {
    v5 = *(v7 + 84);
  }

  if (v5 <= 0xFE)
  {
    v5 = 254;
  }

  v42 = v5;
  v8 = *(sub_18AFCBB34() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v41 = v9;
  v10 = *(sub_18AFCC5C4() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v7 + 80);
  v18 = *(v6 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = (v20 + ((v19 + ((v18 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v13 + ((v23 + ((v11 + ((v41 + v22 + v21 + 1) & ~v22) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  if (a3 <= v42)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v42 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v42 >= v26)
  {
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        *&v25[v24] = 0;
        if (!v26)
        {
          return;
        }

        goto LABEL_42;
      }

      *&v25[v24] = 0;
    }

    else if (v27)
    {
      v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!v26)
    {
      return;
    }

LABEL_42:
    v33 = &v25[v14 + 1] & ~v14;
    if (v38 == v42)
    {
      v34 = *(v4 + 56);
    }

    else
    {
      v33 = (v33 + v15 + v16) & ~v16;
      if (v37 == v42)
      {
        v34 = *(v40 + 56);
      }

      else
      {
        v33 = (v18 + v33) & ~v17;
        if (v36 != v42)
        {
          v35 = (v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v26 > 0xFE)
          {
            *(v35 + 8) = 0;
            *v35 = v26 - 255;
          }

          else
          {
            *(v35 + 8) = -v26;
          }

          return;
        }

        v34 = *(v39 + 56);
      }
    }

    v34(v33);
    return;
  }

  v28 = ~v42 + v26;
  if (v24 < 4)
  {
    v29 = (v28 >> (8 * v24)) + 1;
    if (v24)
    {
      v32 = v28 & ~(-1 << (8 * v24));
      bzero(v25, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *v25 = v32;
          if (v27 > 1)
          {
LABEL_62:
            if (v27 == 2)
            {
              *&v25[v24] = v29;
            }

            else
            {
              *&v25[v24] = v29;
            }

            return;
          }
        }

        else
        {
          *v25 = v28;
          if (v27 > 1)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_59;
      }

      *v25 = v32;
      v25[2] = BYTE2(v32);
    }

    if (v27 > 1)
    {
      goto LABEL_62;
    }
  }

  else
  {
    bzero(v25, v24);
    *v25 = v28;
    v29 = 1;
    if (v27 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v27)
  {
    v25[v24] = v29;
  }
}

uint64_t sub_18AF391F8@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(int *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X5>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for MacEngineeringSearchField();
  v15 = a2(v9, v10, v11, v12, v13, v14);
  v16 = a3(v15);
  a4(v16);
  v17 = &a5[v9[20]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &a5[v9[21]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v9[22];
  *&a5[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  swift_storeEnumTagMultiPayload();
  v20 = v9[23];
  *&a5[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v21 = &a5[v9[24]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a5[v9[25]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v9[26];
  *&a5[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AF393D0(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[8];
  }

  return v8 & 1;
}

uint64_t sub_18AF39520(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 3) & 1;
}

uint64_t sub_18AF39670(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 1) & 1;
}

uint64_t sub_18AF397C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_18AFCC474();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_18AE83A40(v2 + *(a1 + 104), v9, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = v4;
    v15 = v22;
  }

  else
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    v15 = v22;
    (*(v22 + 8))(v6, v4);
    v14 = v4;
  }

  v17 = v2 + *(v23 + 100);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v25 = *v17;
  }

  else
  {

    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v18, 0);
    (*(v15 + 8))(v6, v14);
    LOBYTE(v18) = v25;
  }

  v20 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  *(v20 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_18AF39B1C(uint64_t a1)
{
  if (sub_18AF393D0(a1) & 1) != 0 || (sub_18AF39670(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18AF39520(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_18AF39B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v75 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_18AFCC474();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1[3];
  v125 = sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  v107 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v126 = sub_18AFCBDC4();
  v127 = MEMORY[0x1E6981840];
  v128 = a1[4];
  v6 = v128;
  swift_getTupleTypeMetadata();
  sub_18AFCDBF4();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_18AFCD134();
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v71 - v8;
  v80 = sub_18AFCC044();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v71 - v9;
  v10 = sub_18AFCC044();
  v86 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v71 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58);
  v89 = sub_18AFCBDC4();
  v87 = v10;
  v12 = sub_18AFCC624();
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v71 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B120);
  v94 = v12;
  v14 = sub_18AFCC044();
  v97 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v71 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B128);
  v99 = v14;
  v101 = sub_18AFCC044();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v71 - v18;
  sub_18AFCC4D4();
  v19 = v6;
  v104 = v6;
  *&v20 = v6;
  v106 = a1;
  v21 = a1[6];
  v76 = a1[5];
  v22 = v76;
  *(&v20 + 1) = v76;
  v23 = v107;
  *&v24 = v107;
  v25 = v105;
  *(&v24 + 1) = v105;
  v83 = v24;
  v108 = v24;
  v84 = v20;
  v109 = v20;
  v26 = a1[7];
  v110 = v21;
  v111 = v26;
  v27 = v85;
  v112 = v85;
  v28 = v77;
  sub_18AFCD124();
  sub_18AFCC884();
  v29 = v23;
  v30 = v25;
  sub_18AF3B884(v27, v29, v25, v19, v22, v21, v26);
  v31 = swift_getWitnessTable();
  v32 = v78;
  sub_18AFCCC24();
  (*(v82 + 8))(v28, v7);
  sub_18AFCC8A4();
  v33 = v76;
  v82 = v26;
  sub_18AF3BA28(v27, v107, v30, v104, v76, v21, v26);
  v123 = v31;
  v124 = MEMORY[0x1E697E5D8];
  v34 = v80;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCC24();
  (*(v81 + 8))(v32, v34);
  v35 = v27 + *(v106 + 21);
  v36 = *v35;
  v37 = *(v35 + 8);
  if (v37 == 1)
  {
    v38 = *v35;
    v39 = v91;
    v40 = v90;
    v41 = v88;
  }

  else
  {

    sub_18AFCE024();
    v42 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v41 = v88;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v36, 0);
    v40 = v90;
    v39 = v91;
    (*(v90 + 8))(v41, v91);
    LOBYTE(v38) = v125;
  }

  v43 = qword_18AFDA5A0[v38];
  if (!v37)
  {

    sub_18AFCE024();
    v44 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v36, 0);
    (*(v40 + 8))(v41, v39);
    LOBYTE(v36) = v125;
  }

  v45 = dbl_18AFDA5E0[v36];
  v46 = v82;
  *&v47 = v45 + sub_18AF3BBE4(v27, v107, v105, v104, v33, v21, v82);
  v121 = WitnessTable;
  v122 = MEMORY[0x1E697E5D8];
  v48 = v87;
  v49 = swift_getWitnessTable();
  v50 = v92;
  v51 = v47;
  v52 = v103;
  sub_18AFC2B18(v43, 0, v51, 0, v48, v49, v92);
  v53 = (*(v86 + 8))(v52, v48);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v84;
  *(&v71 - 4) = v83;
  *(&v71 - 3) = v54;
  *(&v71 - 4) = v21;
  *(&v71 - 3) = v46;
  *(&v71 - 2) = v27;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B130);
  v119 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58);
  v120 = v49;
  v117 = swift_getWitnessTable();
  v118 = v49;
  v55 = v94;
  v56 = swift_getWitnessTable();
  sub_18AF3D1FC();
  v57 = v95;
  sub_18AFCCA64();
  (*(v93 + 8))(v50, v55);
  v58 = v106;
  if (sub_18AF393D0(v106))
  {
    v59 = *MEMORY[0x1E697F468];
    v60 = sub_18AFCC534();
    (*(*(v60 - 8) + 104))(v72, v59, v60);
    sub_18AF3D46C(&qword_1EA998A48, MEMORY[0x1E6981998]);
  }

  else
  {
    sub_18AF397C0(v58, v73);
    sub_18AF3D46C(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape);
  }

  v125 = sub_18AFCD4E4();
  v61 = sub_18AE95F54(&qword_1EA99B188, &qword_1EA99B120);
  v115 = v56;
  v116 = v61;
  v62 = v99;
  v63 = swift_getWitnessTable();
  sub_18AF3D418();
  v64 = v96;
  sub_18AFCCAC4();

  (*(v97 + 8))(v57, v62);
  v65 = sub_18AE95F54(&qword_1EA99B198, &qword_1EA99B128);
  v113 = v63;
  v114 = v65;
  v66 = v101;
  v67 = swift_getWitnessTable();
  v68 = v98;
  sub_18AEADA5C(v64, v66, v67);
  v69 = *(v100 + 8);
  v69(v64, v66);
  sub_18AEADA5C(v68, v66, v67);
  return (v69)(v68, v66);
}

uint64_t sub_18AF3AA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v102 = a7;
  v76 = a1;
  v94 = a8;
  v96 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v95 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v72 - v17;
  v74 = sub_18AFCC474();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v19 = sub_18AFCC044();
  v83 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v72 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v84 = v19;
  v92 = sub_18AFCBDC4();
  v85 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v100 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v72 - v25;
  v26 = a3;
  v27 = sub_18AFCC044();
  v97 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v72 - v31;
  v116 = a2;
  v117 = a3;
  v118 = a4;
  v119 = a5;
  v32 = a6;
  v33 = v102;
  v120 = a6;
  v121 = v102;
  v75 = type metadata accessor for MacEngineeringSearchField();
  v91 = *(v75 + 72);
  sub_18AFCC8A4();
  v34 = v76;
  v87 = a2;
  v99 = a4;
  v90 = a5;
  sub_18AF3B520(v76, a2, v26, a4, a5, v32, v33);
  v88 = v26;
  sub_18AFCCC24();
  v86 = v32;
  v114 = v32;
  v115 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C(v29, v27, WitnessTable);
  v35 = *(v97 + 8);
  v98 = v29;
  v91 = v27;
  v36 = v75;
  v79 = v97 + 8;
  v78 = v35;
  v35(v29, v27);
  v37 = v36;
  v38 = v34;
  v39 = v34 + *(v36 + 84);
  v40 = *v39;
  if (*(v39 + 8) != 1)
  {

    sub_18AFCE024();
    v41 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v42 = v72;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v40, 0);
    (*(v73 + 8))(v42, v74);
  }

  v43 = sub_18AFCC8F4();
  v44 = v80;
  (*(*(v43 - 8) + 56))(v80, 1, 1, v43);
  sub_18AFCC954();
  sub_18AE7BA80(v44, &qword_1EA998930);
  v45 = v82;
  v46 = v87;
  v47 = v90;
  sub_18AFCCBA4();

  v48 = v102;
  v49 = sub_18AF3B6DC(v38, v46, v88, v99, v47, v86, v102);
  v50 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v112 = v47;
  v113 = v50;
  v51 = v84;
  v52 = swift_getWitnessTable();
  v53 = v81;
  sub_18AFC385C(1, 0, v51, v52, v81, 2.0, v49);
  (*(v83 + 8))(v45, v51);
  v110 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v111 = v52;
  v54 = v92;
  v55 = swift_getWitnessTable();
  v56 = v89;
  sub_18AEADA5C(v53, v54, v55);
  v57 = v85;
  v90 = *(v85 + 8);
  v90(v53, v54);
  v58 = v38 + *(v37 + 76);
  v59 = v93;
  v60 = v99;
  sub_18AEADA5C(v58, v99, v48);
  v61 = v98;
  v62 = v91;
  (*(v97 + 16))(v98, v101, v91);
  v116 = v61;
  v63 = v100;
  v64 = v56;
  (*(v57 + 16))();
  v108 = 0;
  v109 = 1;
  v117 = v63;
  v118 = &v108;
  v65 = v96;
  v66 = v95;
  (*(v96 + 16))(v95, v59, v60);
  v119 = v66;
  v107[0] = v62;
  v107[1] = v54;
  v107[2] = MEMORY[0x1E6981840];
  v107[3] = v60;
  v103 = WitnessTable;
  v104 = v55;
  v105 = MEMORY[0x1E6981838];
  v106 = v102;
  sub_18AEB70B8(&v116, 4uLL, v107);
  v67 = *(v65 + 8);
  v67(v59, v60);
  v68 = v64;
  v69 = v90;
  v90(v68, v54);
  v70 = v78;
  v78(v101, v62);
  v67(v66, v60);
  v69(v100, v54);
  return v70(v98, v62);
}

uint64_t sub_18AF3B520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField() + 84);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v19) = v22[0];
  }

  if ((v19 - 2) > 2u)
  {
    return 0x3FF0000000000000;
  }

  else
  {
    return qword_18AFDA660[(v19 - 2)];
  }
}

double sub_18AF3B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField() + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
  }

  else
  {

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
  }

  result = 4.0;
  if (!v20)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_18AF3B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField() + 84);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v19) = v22[0];
  }

  return qword_18AFDA678[v19];
}

uint64_t sub_18AF3BA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField() + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
    if (v19 > 4u)
    {
      return 0x3FF0000000000000;
    }
  }

  else
  {

    sub_18AFCE024();
    v22 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]) > 4u)
    {
      return 0x3FF0000000000000;
    }
  }

  return qword_18AFDA6B8[v20];
}

double sub_18AF3BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField() + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
  }

  else
  {

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
  }

  result = 0.0;
  if (!v20)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_18AF3BD8C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v115 = a6;
  v116 = a7;
  v119 = a8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1A0);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v92 - v15;
  v95 = sub_18AFCC474();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_18AFCBB34();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v97 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v92 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B178);
  MEMORY[0x1EEE9AC00](v114);
  v99 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v92 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1A8);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v92 - v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B0);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v92 - v28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B158);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v92 - v29;
  v30 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v92 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v92 - v37;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B168);
  MEMORY[0x1EEE9AC00](v107);
  v40 = &v92 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B148);
  v117 = *(v41 - 8);
  v118 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v92 - v42;
  *&v120 = a2;
  *(&v120 + 1) = a3;
  *&v121 = a4;
  *(&v121 + 1) = a5;
  v122 = v115;
  v123 = v116;
  v44 = type metadata accessor for MacEngineeringSearchField();
  if (sub_18AF393D0(v44))
  {
    v45 = 1;
    v46 = v119;
  }

  else
  {
    if (sub_18AF39670(v44))
    {
      sub_18AF397C0(v44, v38);
      sub_18AF3CC84(*a1, v40);
      sub_18AF3D4B4(v38);
      v47 = &qword_1EA99B168;
      sub_18AE83A40(v40, v109, &qword_1EA99B168);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168);
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178);
      v48 = v110;
      sub_18AFCC614();
      sub_18AE83A40(v48, v113, &qword_1EA99B158);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AFCC614();
      sub_18AE7BA80(v48, &qword_1EA99B158);
      v49 = v40;
    }

    else if (sub_18AF39B1C(v44))
    {
      sub_18AF397C0(v44, v35);
      v50 = *a1;
      v51 = v96;
      sub_18AED2E48(v96);
      v52 = &a1[*(v44 + 96)];
      v53 = *v52;
      if (v52[8] != 1)
      {

        sub_18AFCE024();
        v54 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v55 = v93;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v53, 0);
        (*(v94 + 8))(v55, v95);
        LOBYTE(v53) = v120;
      }

      v56 = v101;
      v57 = sub_18AEF3BD4(v51, v50);
      v58 = v104;
      v59 = v56 + *(v104 + 84);
      sub_18AF3D510(v35, v59, type metadata accessor for ResolvedSearchFieldBorderShape);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B8);
      *(v59 + *(v60 + 52)) = v57;
      *(v59 + *(v60 + 56)) = 256;
      v61 = sub_18AEF3D90(v53 & 1, v51);
      sub_18AFCBB94();
      sub_18AF3D510(v59, v56, type metadata accessor for ResolvedSearchFieldBorderShape);
      *(v56 + v58[18]) = v61;
      *(v56 + v58[17]) = 2;
      v62 = v56 + v58[19];
      v63 = v125;
      *v62 = v124;
      *(v62 + 16) = v63;
      *(v62 + 32) = v126;
      *(v56 + v58[20]) = 1;
      if (v53)
      {
        sub_18AFCCDB4();
        v64 = sub_18AFCCDA4();
      }

      else
      {
        v64 = sub_18AFCCD74();
      }

      sub_18AFCBB94();
      (*(v105 + 8))(v51, v106);
      sub_18AF3D4B4(v35);
      v80 = v98;
      sub_18AF3D510(v56, v98, type metadata accessor for ResolvedSearchFieldBorderShape);
      v81 = v114;
      sub_18AE9A768(v56, v80 + *(v114 + 84), &qword_1EA99B1A0);
      *(v80 + v81[18]) = v64;
      *(v80 + v81[17]) = 2;
      v82 = v80 + v81[19];
      v83 = v121;
      *v82 = v120;
      *(v82 + 16) = v83;
      *(v82 + 32) = v122;
      *(v80 + v81[20]) = 1;
      v47 = &qword_1EA99B178;
      v84 = v103;
      sub_18AE9A768(v80, v103, &qword_1EA99B178);
      sub_18AE83A40(v84, v109, &qword_1EA99B178);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168);
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178);
      v85 = v110;
      sub_18AFCC614();
      sub_18AE83A40(v85, v113, &qword_1EA99B158);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AFCC614();
      sub_18AE7BA80(v85, &qword_1EA99B158);
      v49 = v84;
    }

    else
    {
      sub_18AF397C0(v44, v32);
      v65 = *a1;
      v66 = v97;
      sub_18AED2E48(v97);
      v67 = &a1[*(v44 + 96)];
      v68 = *v67;
      if (v67[8] != 1)
      {

        sub_18AFCE024();
        v69 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v70 = v93;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v68, 0);
        (*(v94 + 8))(v70, v95);
        LOBYTE(v68) = v120;
      }

      v71 = v102;
      v72 = sub_18AEF3BD4(v66, v65);
      v73 = v104;
      v74 = v71 + *(v104 + 84);
      sub_18AF3D510(v32, v74, type metadata accessor for ResolvedSearchFieldBorderShape);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B8);
      *(v74 + *(v75 + 52)) = v72;
      *(v74 + *(v75 + 56)) = 256;
      v76 = sub_18AEF3D90(v68 & 1, v66);
      sub_18AFCBB94();
      sub_18AF3D510(v74, v71, type metadata accessor for ResolvedSearchFieldBorderShape);
      *(v71 + v73[18]) = v76;
      *(v71 + v73[17]) = 2;
      v77 = v71 + v73[19];
      v78 = v125;
      *v77 = v124;
      *(v77 + 16) = v78;
      *(v77 + 32) = v126;
      *(v71 + v73[20]) = 1;
      if (v68)
      {
        sub_18AFCCDB4();
        v79 = sub_18AFCCDA4();
      }

      else
      {
        v79 = sub_18AFCCD74();
      }

      sub_18AFCBB94();
      (*(v105 + 8))(v66, v106);
      sub_18AF3D4B4(v32);
      v86 = v99;
      sub_18AF3D510(v71, v99, type metadata accessor for ResolvedSearchFieldBorderShape);
      v87 = v114;
      sub_18AE9A768(v71, v86 + *(v114 + 84), &qword_1EA99B1A0);
      *(v86 + v87[18]) = v79;
      *(v86 + v87[17]) = 2;
      v88 = v86 + v87[19];
      v89 = v121;
      *v88 = v120;
      *(v88 + 16) = v89;
      *(v88 + 32) = v122;
      *(v86 + v87[20]) = 1;
      v47 = &qword_1EA99B178;
      v90 = v100;
      sub_18AE9A768(v86, v100, &qword_1EA99B178);
      sub_18AE83A40(v90, v113, &qword_1EA99B178);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178);
      sub_18AFCC614();
      v49 = v90;
    }

    sub_18AE7BA80(v49, v47);
    v46 = v119;
    sub_18AE9A768(v43, v119, &qword_1EA99B148);
    v45 = 0;
  }

  return (*(v117 + 56))(v46, v45, 1, v118);
}

double sub_18AF3CC84@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1C0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (v4 == 1)
  {
    v14 = sub_18AFCC6D4();
  }

  else
  {
    v14 = sub_18AFCC6B4();
  }

  v15 = v14;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v7 = v15;
  sub_18AE9A768(v7, v10, &qword_1EA99AFC0);
  sub_18AF3D510(v2, v13, type metadata accessor for ResolvedSearchFieldBorderShape);
  sub_18AE9A768(v10, &v13[*(v11 + 52)], &qword_1EA99AFC0);
  *&v13[*(v11 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF3D510(v13, a2, type metadata accessor for ResolvedSearchFieldBorderShape);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B168);
  sub_18AE9A768(v13, a2 + v16[21], &qword_1EA99B1C0);
  *(a2 + v16[17]) = 0;
  v17 = a2 + v16[19];
  result = *&v21;
  v19 = v22;
  *v17 = v21;
  *(v17 + 16) = v19;
  *(v17 + 32) = v23;
  *(a2 + v16[20]) = 1;
  return result;
}

double sub_18AF3CF18@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1C8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (v4 == 1)
  {
    v14 = sub_18AFCC6D4();
  }

  else
  {
    v14 = sub_18AFCC6B4();
  }

  v15 = v14;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v7 = v15;
  sub_18AE9A768(v7, v10, &qword_1EA99AFC0);
  sub_18AF3D510(v2, v13, type metadata accessor for ResolvedTextFieldBorderShape);
  sub_18AE9A768(v10, &v13[*(v11 + 52)], &qword_1EA99AFC0);
  *&v13[*(v11 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF3D510(v13, a2, type metadata accessor for ResolvedTextFieldBorderShape);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99B1D0);
  sub_18AE9A768(v13, a2 + v16[21], &qword_1EA99B1C8);
  *(a2 + v16[17]) = 0;
  v17 = a2 + v16[19];
  result = *&v21;
  v19 = v22;
  *v17 = v21;
  *(v17 + 16) = v19;
  *(v17 + 32) = v23;
  *(a2 + v16[20]) = 1;
  return result;
}

unint64_t sub_18AF3D1FC()
{
  result = qword_1EA99B138;
  if (!qword_1EA99B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B130);
    sub_18AF3D280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B138);
  }

  return result;
}

unint64_t sub_18AF3D280()
{
  result = qword_1EA99B140;
  if (!qword_1EA99B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B148);
    sub_18AF3D338();
    sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B140);
  }

  return result;
}

unint64_t sub_18AF3D338()
{
  result = qword_1EA99B150;
  if (!qword_1EA99B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B158);
    sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168);
    sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B150);
  }

  return result;
}

unint64_t sub_18AF3D418()
{
  result = qword_1EA99B190;
  if (!qword_1EA99B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B190);
  }

  return result;
}

uint64_t sub_18AF3D46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AF3D4B4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF3D510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18AF3D578()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF3D688(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v33 = *(a3 + 16);
  v4 = *(v33 - 8);
  v32 = *(a3 + 24);
  v5 = *(v4 + 84);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB34() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v11 = *(sub_18AFCC5C4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = a1;
  if (v8 >= a2)
  {
    goto LABEL_38;
  }

  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((((v12 + ((v34 + v18 + ((v14 + v16 + (v15 & ~v13)) & ~v16) + 1) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_38;
    }

LABEL_31:
    v25 = v19 > 3;
    if (v19 <= 3)
    {
      v26 = (v23 - 1) << (8 * v19);
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    return v8 + (v31 | v26) + 1;
  }

  if (v22 == 2)
  {
    v23 = *&a1[v19];
    if (*&a1[v19])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = *&a1[v19];
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_38:
  if (v5 == v8)
  {
    v27 = v33;
    v28 = *(v4 + 48);
    v29 = v5;
  }

  else
  {
    v17 = (&a1[v15] & ~v13);
    if (v7 != v8)
    {
      v30 = *((&v17[v14 + v16] & ~v16) + v34);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v28 = *(v6 + 48);
    v29 = v7;
    v27 = v32;
  }

  return v28(v17, v29, v27);
}

void sub_18AF3D9C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v5 = *(v37 - 8);
  v36 = v5;
  v6 = *(v5 + 84);
  v34 = *(a4 + 24);
  v7 = *(v34 - 8);
  v35 = *(v7 + 84);
  if (v35 <= v6)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(sub_18AFCBB34() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v11 = *(sub_18AFCC5C4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v7 + 80);
  v14 = *(v5 + 64) + v13;
  v15 = *(v7 + 64);
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v10 + 1;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((((v12 + ((v10 + 1 + v18 + ((v15 + v16 + (v14 & ~v13)) & ~v16)) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v8 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        if (v6 == v8)
        {
          v25 = v37;
          v26 = *(v36 + 56);
          v27 = a1;
          v28 = a2;
          v29 = v6;
        }

        else
        {
          v27 = (&a1[v14] & ~v13);
          v29 = v35;
          if (v35 != v8)
          {
            v30 = (&v27[v15 + v16] & ~v16);
            if (a2 > 0xFE)
            {
              if (v17 <= 3)
              {
                v31 = ~(-1 << (8 * v17));
              }

              else
              {
                v31 = -1;
              }

              if (v10 != -1)
              {
                v32 = v31 & (a2 - 255);
                if (v17 <= 3)
                {
                  v33 = v10 + 1;
                }

                else
                {
                  v33 = 4;
                }

                bzero(v30, v17);
                if (v33 > 2)
                {
                  if (v33 == 3)
                  {
                    *v30 = v32;
                    v30[2] = BYTE2(v32);
                  }

                  else
                  {
                    *v30 = v32;
                  }
                }

                else if (v33 == 1)
                {
                  *v30 = v32;
                }

                else
                {
                  *v30 = v32;
                }
              }
            }

            else
            {
              v30[v10] = -a2;
            }

            return;
          }

          v26 = *(v7 + 56);
          v28 = a2;
          v25 = v34;
        }

        v26(v27, v28, v29, v25);
        return;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v23 = ~v8 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_31:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

__n128 sub_18AF3DE10@<Q0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MacGladeGroupBox();
  v11 = v10[14];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  swift_storeEnumTagMultiPayload();
  v12 = v10[15];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  v13 = swift_storeEnumTagMultiPayload();
  v14 = (a5 + v10[16]);
  __asm { FMOV            V0.2D, #5.0 }

  *v14 = _Q0;
  v14[1] = _Q0;
  *(a5 + v10[17]) = 0x4018000000000000;
  v20 = a4(v13);
  a3(v20);
  *(a5 + v10[18]) = a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    result = *a1;
    v22 = *(a1 + 16);
    *v14 = *a1;
    v14[1] = v22;
  }

  return result;
}

uint64_t sub_18AF3DF50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v66 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[3];
  v6 = sub_18AFCC044();
  *&v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D8);
  v50 = sub_18AFCC044();
  v55 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B258);
  v54 = sub_18AFCC044();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B260);
  v57 = sub_18AFCC044();
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v48 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E0);
  v60 = sub_18AFCC044();
  v64 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997EC8);
  v63 = sub_18AFCC044();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v48 - v16;
  v17 = a1[5];
  sub_18AFCCC14();
  v87 = v17;
  v88 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_18AEE1FFC();
  sub_18AFCCC74();
  (*(v52 + 8))(v8, v6);
  v49 = a1;
  *&v19 = a1[2];
  *(&v19 + 1) = v5;
  v52 = v19;
  *&v20 = a1[4];
  *(&v20 + 1) = v17;
  v48 = v20;
  v72 = v19;
  v73 = v20;
  v74 = v2;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B268);
  v21 = sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8);
  v85 = WitnessTable;
  v86 = v21;
  v22 = v50;
  v23 = swift_getWitnessTable();
  sub_18AF3EE50();
  v24 = v51;
  sub_18AFCCBF4();
  (*(v55 + 8))(v10, v22);
  v70 = v48;
  v69 = v52;
  v71 = v2;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B288);
  v25 = sub_18AE95F54(&qword_1EA99B290, &qword_1EA99B258);
  v83 = v23;
  v84 = v25;
  v26 = v54;
  v27 = swift_getWitnessTable();
  sub_18AF3EF10();
  v28 = v53;
  sub_18AFCCA64();
  (*(v58 + 8))(v24, v26);
  v29 = *(v2 + *(v49 + 17));
  v30 = *(v66 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  v33 = v67;
  (*(*(v32 - 8) + 104))(&v67[v30], v31, v32);
  *v33 = v29;
  v33[1] = v29;
  v34 = sub_18AE95F54(qword_1EA99B2B0, &qword_1EA99B260);
  v81 = v27;
  v82 = v34;
  v35 = v57;
  v36 = swift_getWitnessTable();
  sub_18AEE2050();
  v37 = v56;
  sub_18AFCCB24();
  sub_18AEE20A8(v33);
  (*(v61 + 8))(v28, v35);
  swift_getKeyPath();
  v79 = v29;
  v80 = 0;
  v38 = sub_18AE95F54(qword_1EA999128, &qword_1EA9990E0);
  v77 = v36;
  v78 = v38;
  v39 = v60;
  v40 = swift_getWitnessTable();
  v41 = v59;
  sub_18AFCCAA4();

  (*(v64 + 8))(v37, v39);
  v42 = sub_18AE95F54(qword_1EA997ED0, &qword_1EA997EC8);
  v75 = v40;
  v76 = v42;
  v43 = v63;
  v44 = swift_getWitnessTable();
  v45 = v62;
  sub_18AEADA5C(v41, v43, v44);
  v46 = *(v65 + 8);
  v46(v41, v43);
  sub_18AEADA5C(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_18AF3E918@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_18AFCC5C4();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = sub_18AFCBB34();
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  result = type metadata accessor for MacGladeGroupBox();
  if (*(a1 + *(result + 72)) > 1u)
  {
    v31 = 0;
    v26 = 0;
    v27 = 0;
    v35 = 0;
    v34 = 0;
    v28 = 0;
    v30 = 0;
    v33 = 0;
    v25 = 0;
    v32 = 0uLL;
  }

  else
  {
    sub_18AED2E48(v20);
    sub_18AED2E70(v17);
    v41 = sub_18AFCCD74();
    v40 = sub_18AF46A38(v20, v17);
    v22 = v42;
    (*(v42 + 16))(v14, v17, v12);
    v23 = (*(v22 + 88))(v14, v12);
    if (v23 != *MEMORY[0x1E697F600] && v23 != *MEMORY[0x1E697F608])
    {
      (*(v22 + 8))(v14, v12, 1.0);
    }

    sub_18AFCBB94();
    *&v24 = v45;
    v39 = v24;
    *&v24 = v45 * 0.5;
    v38 = v24;
    v25 = v46;
    v37 = v47;
    v26 = v48;
    v27 = v49;
    v28 = sub_18AFCDB44();
    v30 = v29;
    (*(v22 + 8))(v17, v12);
    result = (*(v43 + 8))(v20, v44);
    *&v32 = v38;
    v31 = v37;
    *(&v32 + 1) = v39;
    v33 = 256;
    v35 = v40;
    v34 = v41;
  }

  *a6 = v32;
  *(a6 + 16) = v25;
  *(a6 + 24) = v31;
  *(a6 + 32) = v26;
  *(a6 + 40) = v27;
  *(a6 + 48) = v35;
  *(a6 + 56) = v33;
  *(a6 + 64) = v34;
  *(a6 + 72) = v33;
  *(a6 + 80) = v28;
  *(a6 + 88) = v30;
  return result;
}

uint64_t sub_18AF3EC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a6;
  v22 = sub_18AFCC5C4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFCBB34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  result = type metadata accessor for MacGladeGroupBox();
  if (*(a1 + *(result + 72)) > 1u)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_18AED2E48(v17);
    sub_18AED2E70(v13);
    v19 = sub_18AF46A20(v17, v13);
    (*(v11 + 8))(v13, v22);
    result = (*(v15 + 8))(v17, v14);
    v20 = 256;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 4) = v20;
  return result;
}

unint64_t sub_18AF3EE50()
{
  result = qword_1EA99B270;
  if (!qword_1EA99B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B268);
    sub_18AE95F54(&qword_1EA99B278, &qword_1EA99B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B270);
  }

  return result;
}

unint64_t sub_18AF3EF10()
{
  result = qword_1EA99B298;
  if (!qword_1EA99B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B288);
    sub_18AE95F54(&qword_1EA99B2A0, &qword_1EA99B2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B298);
  }

  return result;
}

void sub_18AF3EFC0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18AEB316C();
    if (v1 <= 0x3F)
    {
      sub_18AEB31C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18AF3F08C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB54() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 4) & ~v11) + *(v6 + 64) + v12) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 > 0xFE)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 4] & ~v11, v7, v5);
  }

  else
  {
    v21 = a1[1];
    if (v21 >= 2)
    {
      return v21 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18AF3F2C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCBB54() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 4) & ~v13) + *(v8 + 64) + v14) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 > 0xFE)
      {
        v21 = *(v22 + 56);

        v21(&a1[v13 + 4] & ~v13, a2, v9, v7);
      }

      else
      {
        a1[1] = a2 + 1;
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AF3F59C@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, void (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  *a6 = *a1;
  a6[1] = a2 & 1;
  a6[2] = v8;
  a6[3] = v9;
  v10 = type metadata accessor for MacLabeledCheckboxAndRadioPositioned();
  a5();
  v11 = *(v10 + 52);
  *&a6[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  swift_storeEnumTagMultiPayload();
  v12 = &a6[*(v10 + 56)];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_18AF3F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v177 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for MacLabeledCheckboxAndRadioBelow();
  v153 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v162 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v150 = &v144 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v144 - v12;
  v13 = type metadata accessor for MacLabeledCheckboxAndRadioAbove();
  v179 = v7;
  v14 = sub_18AFCC624();
  v166 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v165 = &v144 - v15;
  v175 = v13;
  v152 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v144 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v144 - v21;
  v22 = type metadata accessor for MacLabeledCheckboxAndRadioTrailing();
  v151 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v144 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v144 - v27;
  v168 = v6;
  v169 = v5;
  v28 = type metadata accessor for MacLabeledCheckboxAndRadio();
  v174 = v22;
  v29 = sub_18AFCC624();
  v164 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v163 = &v144 - v30;
  v158 = sub_18AFCC474();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v154 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18AFCBB54();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v144 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v144 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v144 - v42;
  v178 = v28;
  v147 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v146 = &v144 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v144 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v144 - v50;
  v173 = v29;
  v176 = v14;
  v172 = sub_18AFCC624();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v144 - v52;
  v53 = *v3;
  v167 = v3[3];
  v54 = v3[1];
  if (v53 > 1)
  {
    if (v53 == 2)
    {
      v74 = v3[1];
      v203 = v3[2];
      sub_18AED2C20(v37);
      v75 = &v3[*(a1 + 56)];
      v76 = *v75;
      if (v75[8] != 1)
      {

        sub_18AFCE024();
        v77 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v78 = v154;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AEB264C(v76, 0);
        (*(v157 + 8))(v78, v158);
        LOBYTE(v76) = v202;
      }

      v79 = v173;
      v80 = sub_18AFC66C0(v37, v76 & 1);
      MEMORY[0x1EEE9AC00](v80);
      v81 = v169;
      *(&v144 - 4) = v168;
      *(&v144 - 3) = v81;
      *(&v144 - 2) = v3;
      v82 = v149;
      sub_18AEE3C38(v167, v74, &v203, v83, sub_18AF40CA8, v149);
      v84 = v175;
      WitnessTable = swift_getWitnessTable();
      v86 = v159;
      sub_18AEADA5C(v82, v84, WitnessTable);
      v173 = *(v152 + 8);
      v173(v82, v84);
      v87 = v160;
      sub_18AEADA5C(v86, v84, WitnessTable);
      v88 = swift_getWitnessTable();
      v89 = v165;
      sub_18AEB5268(v87, v84);
      v90 = swift_getWitnessTable();
      v91 = swift_getWitnessTable();
      v190 = v90;
      v191 = v91;
      swift_getWitnessTable();
      v188 = WitnessTable;
      v189 = v88;
      v92 = v176;
      swift_getWitnessTable();
      v93 = v170;
      sub_18AEB5360(v89, v79, v92);
      (*(v166 + 8))(v89, v92);
      v94 = v173;
      v173(v160, v84);
      v94(v159, v84);
    }

    else
    {
      v203 = v3[2];
      sub_18AED2C20(v34);
      v115 = &v3[*(a1 + 56)];
      v116 = *v115;
      if (v115[8] != 1)
      {

        sub_18AFCE024();
        v117 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v118 = v154;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AEB264C(v116, 0);
        (*(v157 + 8))(v118, v158);
        LOBYTE(v116) = v202;
      }

      v119 = sub_18AFC66C0(v34, v116 & 1);
      MEMORY[0x1EEE9AC00](v119);
      v120 = v169;
      *(&v144 - 4) = v168;
      *(&v144 - 3) = v120;
      *(&v144 - 2) = v3;
      v121 = v150;
      sub_18AEE4778(v167, v54, &v203, v122, sub_18AF40CA8, v150);
      v123 = v179;
      v124 = swift_getWitnessTable();
      v125 = v161;
      sub_18AEADA5C(v121, v123, v124);
      v169 = *(v153 + 8);
      v169(v121, v123);
      v126 = v162;
      sub_18AEADA5C(v125, v123, v124);
      v127 = v175;
      v128 = swift_getWitnessTable();
      v129 = v165;
      sub_18AEB5360(v126, v127, v123);
      v130 = swift_getWitnessTable();
      v131 = swift_getWitnessTable();
      v200 = v130;
      v201 = v131;
      v132 = v173;
      swift_getWitnessTable();
      v198 = v128;
      v199 = v124;
      v133 = v176;
      swift_getWitnessTable();
      v93 = v170;
      sub_18AEB5360(v129, v132, v133);
      (*(v166 + 8))(v129, v133);
      v134 = v169;
      v169(v162, v123);
      v134(v161, v123);
    }

    v72 = v93;
  }

  else if (v53)
  {
    v95 = v3[1];
    v203 = v3[2];
    sub_18AED2C20(v40);
    v96 = &v3[*(a1 + 56)];
    v97 = *v96;
    v98 = v173;
    if (v96[8] != 1)
    {

      sub_18AFCE024();
      v99 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v100 = v154;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v97, 0);
      (*(v157 + 8))(v100, v158);
      LOBYTE(v97) = v202;
    }

    v101 = v174;
    v102 = v178;
    v72 = v170;
    v103 = sub_18AFC66C0(v40, v97 & 1);
    MEMORY[0x1EEE9AC00](v103);
    v104 = v169;
    *(&v144 - 4) = v168;
    *(&v144 - 3) = v104;
    *(&v144 - 2) = v3;
    v105 = v148;
    sub_18AEE52B8(v167, v95, &v203, v106, sub_18AF40C88, v148);
    v107 = swift_getWitnessTable();
    v108 = v155;
    sub_18AEADA5C(v105, v101, v107);
    v174 = *(v151 + 8);
    v174(v105, v101);
    v109 = v156;
    sub_18AEADA5C(v108, v101, v107);
    v110 = swift_getWitnessTable();
    v111 = v163;
    sub_18AEB5360(v109, v102, v101);
    v186 = v110;
    v187 = v107;
    swift_getWitnessTable();
    v112 = swift_getWitnessTable();
    v113 = swift_getWitnessTable();
    v184 = v112;
    v185 = v113;
    swift_getWitnessTable();
    sub_18AEB5268(v111, v98);
    (*(v164 + 8))(v111, v98);
    v114 = v174;
    v174(v156, v101);
    v114(v155, v101);
  }

  else
  {
    v203 = v3[2];
    sub_18AED2C20(v43);
    v55 = &v3[*(a1 + 56)];
    v56 = *v55;
    if (v55[8] != 1)
    {

      sub_18AFCE024();
      v57 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v58 = v154;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v56, 0);
      (*(v157 + 8))(v58, v158);
      LOBYTE(v56) = v202;
    }

    v59 = sub_18AFC66C0(v43, v56 & 1);
    MEMORY[0x1EEE9AC00](v59);
    v60 = v169;
    *(&v144 - 4) = v168;
    *(&v144 - 3) = v60;
    *(&v144 - 2) = v3;
    sub_18AEE2BD4(v167, v54, &v203, v61, sub_18AF40CA8, v48);
    v62 = v178;
    v63 = swift_getWitnessTable();
    v64 = v51;
    v145 = v51;
    sub_18AEADA5C(v48, v62, v63);
    v169 = *(v147 + 8);
    v169(v48, v62);
    v65 = v146;
    sub_18AEADA5C(v64, v62, v63);
    v66 = swift_getWitnessTable();
    v67 = v163;
    sub_18AEB5268(v65, v62);
    v182 = v63;
    v183 = v66;
    v68 = v173;
    swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    v70 = swift_getWitnessTable();
    v180 = v69;
    v181 = v70;
    swift_getWitnessTable();
    v71 = v170;
    sub_18AEB5268(v67, v68);
    (*(v164 + 8))(v67, v68);
    v72 = v71;
    v73 = v169;
    v169(v65, v62);
    v73(v145, v62);
  }

  v135 = swift_getWitnessTable();
  v136 = swift_getWitnessTable();
  v196 = v135;
  v197 = v136;
  v137 = swift_getWitnessTable();
  v138 = swift_getWitnessTable();
  v139 = swift_getWitnessTable();
  v194 = v138;
  v195 = v139;
  v140 = swift_getWitnessTable();
  v192 = v137;
  v193 = v140;
  v141 = v172;
  v142 = swift_getWitnessTable();
  sub_18AEADA5C(v72, v141, v142);
  return (*(v171 + 8))(v72, v141);
}

uint64_t sub_18AF40B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MacLabeledCheckboxAndRadioPositioned();
  sub_18AEADA5C(a1 + *(v9 + 48), a2, a3);
  sub_18AEADA5C(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t type metadata accessor for MacLinearProgressIndicator()
{
  result = qword_1EA99B338;
  if (!qword_1EA99B338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF40D20()
{
  result = sub_18AFCBB54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AF40DB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_18AFCDB44();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B348);
  sub_18AF40E8C(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_18AF40E8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v80 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B350);
  MEMORY[0x1EEE9AC00](v68);
  v76 = &v58[-v4];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B358);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v58[-v5];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B360);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v58[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v58[-v10];
  v81 = sub_18AFCBB54();
  v11 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v65 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58[-v17];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F70);
  MEMORY[0x1EEE9AC00](v64);
  v72 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v58[-v24];
  sub_18AFCDF14();
  v69 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  v27 = *(*(v26 - 8) + 104);
  v63 = v25;
  v62 = v27;
  v27(v18, v25, v26);
  *&v18[*(v16 + 52)] = sub_18AFCC6B4();
  *&v18[*(v16 + 56)] = 256;
  v28 = *(type metadata accessor for MacLinearProgressIndicator() + 20);
  v29 = *(v11 + 16);
  v71 = a1;
  v60 = v28;
  v30 = a1 + v28;
  v31 = v81;
  v61 = v29;
  v29(v15, v30, v81);
  v66 = v11;
  v32 = *(v11 + 88);
  v33 = v32(v15, v31);
  v34 = *MEMORY[0x1E697DC28];
  v35 = *MEMORY[0x1E697DC10];
  v59 = *MEMORY[0x1E697DC10];
  if (v33 != v34 && v33 != v35)
  {
    (*(v66 + 8))(v15, v81);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v18, v22, &qword_1EA998F68);
  v36 = &v22[*(v64 + 36)];
  v37 = v83;
  *v36 = v82;
  v36[1] = v37;
  v36[2] = v84;
  v38 = v67;
  sub_18AE9A768(v22, v67, &qword_1EA998F70);
  v39 = v76;
  v62(v76, v63, v26);
  v40 = sub_18AFCCD34();
  v41 = v68;
  *(v39 + *(v68 + 52)) = v40;
  *(v39 + *(v41 + 56)) = 256;
  sub_18AFCBD04();
  v42 = *v71;
  v43 = v65;
  v44 = v81;
  v61(v65, v71 + v60, v81);
  v45 = v32(v43, v44);
  if (v45 != v34 && v45 != v59)
  {
    (*(v66 + 8))(v43, v81);
  }

  sub_18AFCDB54();
  sub_18AFCBCC4();
  v46 = v77;
  sub_18AE9A768(v39, v77, &qword_1EA99B350);
  v47 = &v46[*(v74 + 36)];
  v48 = v86;
  *v47 = v85;
  v47[1] = v48;
  v47[2] = v87;
  v49 = sub_18AFCDBB4();
  v50 = v73;
  sub_18AE9A768(v46, v73, &qword_1EA99B358);
  v51 = &v50[*(v75 + 36)];
  *v51 = v49;
  v51[1] = v42;
  v52 = v78;
  sub_18AE9A768(v50, v78, &qword_1EA99B360);
  v53 = v72;
  sub_18AE83A40(v38, v72, &qword_1EA998F70);
  v54 = v79;
  sub_18AE83A40(v52, v79, &qword_1EA99B360);
  v55 = v80;
  sub_18AE83A40(v53, v80, &qword_1EA998F70);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B368);
  sub_18AE83A40(v54, v55 + *(v56 + 48), &qword_1EA99B360);
  sub_18AE7BA80(v52, &qword_1EA99B360);
  sub_18AE7BA80(v38, &qword_1EA998F70);
  sub_18AE7BA80(v54, &qword_1EA99B360);
  sub_18AE7BA80(v53, &qword_1EA998F70);
}

uint64_t sub_18AF4169C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_18AF41788(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_18AF417EC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_18AF41850;
  a2[1] = v7;
  return result;
}

uint64_t sub_18AF41788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacLinearProgressIndicator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF417EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacLinearProgressIndicator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF41850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MacLinearProgressIndicator() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_18AF40DB8(a1, v6, a2);
}

unint64_t sub_18AF418D0()
{
  result = qword_1EA99B370;
  if (!qword_1EA99B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B370);
  }

  return result;
}

uint64_t sub_18AF41960@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8);
  MEMORY[0x1EEE9AC00](v149);
  v133 = &v125 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v132 = &v125 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v145 = &v125 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v125 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v143 = &v125 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v125 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v125 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v125 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v125 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v125 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v150 = &v125 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v125 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v125 - v32;
  sub_18AFCDF14();
  v130 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = *MEMORY[0x1E697F468];
  v35 = sub_18AFCC534();
  v36 = *(v35 - 8);
  v137 = *(v36 + 104);
  v147 = v36 + 104;
  v137(v33, v34, v35);
  v37 = sub_18AFCC6F4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68);
  *&v33[*(v38 + 52)] = v37;
  *&v33[*(v38 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F70);
  v40 = &v33[*(v39 + 36)];
  v41 = v155;
  *v40 = v154;
  *(v40 + 1) = v41;
  *(v40 + 2) = v156;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F78);
  v42 = *(v146 + 36);
  v153 = xmmword_18AFDA9C0;
  *&v33[v42] = xmmword_18AFDA9C0;
  sub_18AFCDD04();
  v44 = v43;
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3B0);
  v48 = *(v47 + 36);
  v135 = v47;
  v139 = v33;
  v49 = &v33[v48];
  *v49 = 0x4015FDBBE9BBA775;
  *(v49 + 1) = v44;
  *(v49 + 2) = v46;
  v50 = v149;
  *&v33[*(v149 + 36)] = 0x3FF0000000000000;
  v51 = v137;
  v137(v30, v34, v35);
  *&v30[*(v38 + 52)] = sub_18AFCC6F4();
  *&v30[*(v38 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v52 = &v30[*(v39 + 36)];
  v53 = v158;
  *v52 = v157;
  *(v52 + 1) = v53;
  *(v52 + 2) = v159;
  v54 = v146;
  *&v30[*(v146 + 36)] = v153;
  sub_18AFCDD04();
  v55 = *(v47 + 36);
  v138 = v30;
  v56 = &v30[v55];
  *v56 = 0x4012D97C7F3321D2;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *&v30[*(v50 + 36)] = 0x3FEB851EB851EB85;
  v59 = v148;
  v60 = v34;
  v134 = v34;
  v51(v148, v34, v35);
  v61 = sub_18AFCC6F4();
  v126 = v38;
  *(v59 + *(v38 + 52)) = v61;
  *(v59 + *(v38 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v62 = (v59 + *(v39 + 36));
  v63 = v161;
  *v62 = v160;
  v62[1] = v63;
  v62[2] = v162;
  *(v59 + *(v54 + 36)) = v153;
  sub_18AFCDD04();
  v64 = v135;
  v65 = (v59 + *(v135 + 36));
  *v65 = 0x400F6A7A2955385ELL;
  v65[1] = v66;
  v65[2] = v67;
  v69 = v149;
  v68 = v150;
  *(v59 + *(v149 + 36)) = 0x3FE70A3D70A3D70ALL;
  v70 = v35;
  v136 = v35;
  v51(v68, v60, v35);
  v71 = sub_18AFCC6F4();
  v72 = v126;
  *(v68 + *(v126 + 52)) = v71;
  *(v68 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v73 = v39;
  v127 = v39;
  v74 = (v68 + *(v39 + 36));
  v75 = v164;
  *v74 = v163;
  v74[1] = v75;
  v74[2] = v165;
  v76 = v146;
  *(v68 + *(v146 + 36)) = v153;
  sub_18AFCDD04();
  v77 = (v68 + *(v64 + 36));
  *v77 = 0x400921FB54442D18;
  v77[1] = v78;
  v77[2] = v79;
  *(v68 + *(v69 + 36)) = 0x3FE28F5C28F5C28FLL;
  v80 = v151;
  v81 = v134;
  v51(v151, v134, v70);
  *(v80 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v80 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v82 = (v80 + *(v73 + 36));
  v83 = v167;
  *v82 = v166;
  v82[1] = v83;
  v82[2] = v168;
  *(v80 + *(v76 + 36)) = v153;
  sub_18AFCDD04();
  v84 = (v80 + *(v64 + 36));
  *v84 = 0x4002D97C7F3321D2;
  v84[1] = v85;
  v84[2] = v86;
  *(v80 + *(v69 + 36)) = 0x3FDC28F5C28F5C29;
  v87 = v140;
  v88 = v136;
  v51(v140, v81, v136);
  *(v87 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v87 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v89 = v127;
  v90 = (v87 + *(v127 + 36));
  v91 = v170;
  *v90 = v169;
  v90[1] = v91;
  v90[2] = v171;
  v92 = v76;
  *(v87 + *(v76 + 36)) = v153;
  sub_18AFCDD04();
  v93 = (v87 + *(v64 + 36));
  *v93 = 0x3FF921FB54442D18;
  v93[1] = v94;
  v93[2] = v95;
  *(v87 + *(v69 + 36)) = 0x3FD3333333333333;
  v96 = v128;
  v97 = v134;
  v98 = v137;
  v137(v128, v134, v88);
  *(v96 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v96 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v99 = v89;
  v100 = (v96 + *(v89 + 36));
  v101 = v173;
  *v100 = v172;
  v100[1] = v101;
  v100[2] = v174;
  *(v96 + *(v92 + 36)) = v153;
  sub_18AFCDD04();
  v103 = v135;
  v102 = v136;
  v104 = (v96 + *(v135 + 36));
  *v104 = 0x3FE921FB54442D18;
  v104[1] = v105;
  v104[2] = v106;
  v107 = v149;
  *(v96 + *(v149 + 36)) = 0x3FE4CCCCCCCCCCCDLL;
  v108 = v129;
  v98(v129, v97, v102);
  *(v108 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v108 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v109 = (v108 + *(v99 + 36));
  v110 = v176;
  *v109 = v175;
  v109[1] = v110;
  v109[2] = v177;
  *(v108 + *(v146 + 36)) = v153;
  sub_18AFCDD04();
  v111 = (v108 + *(v103 + 36));
  *v111 = 0;
  v111[1] = v112;
  v111[2] = v113;
  *(v108 + *(v107 + 36)) = 0x3FF0000000000000;
  v114 = v141;
  sub_18AF426F8(v139, v141);
  v115 = v142;
  sub_18AF426F8(v138, v142);
  sub_18AF426F8(v148, v152);
  v116 = v143;
  sub_18AF426F8(v150, v143);
  sub_18AF426F8(v151, v144);
  v117 = v140;
  sub_18AF426F8(v140, v145);
  v118 = v132;
  sub_18AF426F8(v96, v132);
  v119 = v133;
  sub_18AF426F8(v108, v133);
  v120 = v131;
  sub_18AF426F8(v114, v131);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3B8);
  sub_18AF426F8(v115, v120 + v121[12]);
  sub_18AF426F8(v152, v120 + v121[16]);
  sub_18AF426F8(v116, v120 + v121[20]);
  v122 = v144;
  sub_18AF426F8(v144, v120 + v121[24]);
  v123 = v145;
  sub_18AF426F8(v145, v120 + v121[28]);
  sub_18AF426F8(v118, v120 + v121[32]);
  sub_18AF426F8(v119, v120 + v121[36]);
  sub_18AF42768(v108);
  sub_18AF42768(v96);
  sub_18AF42768(v117);
  sub_18AF42768(v151);
  sub_18AF42768(v150);
  sub_18AF42768(v148);
  sub_18AF42768(v138);
  sub_18AF42768(v139);
  sub_18AF42768(v119);
  sub_18AF42768(v118);
  sub_18AF42768(v123);
  sub_18AF42768(v122);
  sub_18AF42768(v143);
  sub_18AF42768(v152);
  sub_18AF42768(v142);
  sub_18AF42768(v141);
}

double sub_18AF42520@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18AFCDB44();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B398);
  sub_18AF41960(a1 + *(v3 + 44));
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A0) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_18AF425C0@<X0>(void *a1@<X8>)
{
  result = sub_18AFCDD04();
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_18AF425FC()
{
  result = qword_1EA99B380;
  if (!qword_1EA99B380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B388);
    sub_18AF42688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B380);
  }

  return result;
}

unint64_t sub_18AF42688()
{
  result = qword_1EA99B390;
  if (!qword_1EA99B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B390);
  }

  return result;
}

uint64_t sub_18AF426F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF42768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18AF427D0()
{
  result = qword_1EA99B3C0;
  if (!qword_1EA99B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B3A0);
    sub_18AF4285C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B3C0);
  }

  return result;
}

unint64_t sub_18AF4285C()
{
  result = qword_1EA99B3C8;
  if (!qword_1EA99B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B3C8);
  }

  return result;
}

uint64_t type metadata accessor for MacSwitchSliderKnob()
{
  result = qword_1EA99B3D8;
  if (!qword_1EA99B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF42934()
{
  sub_18AF0B7D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_18AF429DC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v92 = a3;
  v4 = sub_18AFCDD64();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCDAD4();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B350);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v64 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3E8);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v64 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F0) - 8;
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AA68);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v64 - v16;
  v71 = sub_18AFCBB34();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F8);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v68 = &v64 - v33;
  v66 = *MEMORY[0x1E697F468];
  v34 = v66;
  v35 = sub_18AFCC534();
  v36 = *(v35 - 8);
  v65 = *(v36 + 104);
  v67 = v36 + 104;
  v65(v25, v34, v35);
  v37 = a2;
  v38 = *a2;
  type metadata accessor for MacSwitchSliderKnob();
  sub_18AED2E48(v19);
  v39 = a2[1];
  v72 = v39;
  v40 = sub_18AF1DD10(v19, v17);
  (*(v70 + 8))(v19, v71, v40);
  sub_18AEF0D88(v25);
  v41 = 1.0;
  if ((v38 == 3) | v39 & 1)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = 1.0;
  }

  sub_18AE9A768(v17, v31, qword_1EA99AA68);
  *&v31[*(v27 + 44)] = v42;
  v43 = v68;
  sub_18AE9A768(v31, v68, &qword_1EA99B3F8);
  v44 = v69;
  v65(v69, v66, v35);
  LODWORD(v71) = *a2;
  sub_18AFCBD04();
  v46 = v45;
  v48 = v47;
  v49 = v37[2];
  v50 = sub_18AFCCD74();
  v51 = MEMORY[0x1E6981998];
  v52 = v76;
  sub_18AF4350C(v44, v76, MEMORY[0x1E6981998]);
  v53 = v77;
  *(v52 + *(v77 + 52)) = v50;
  *(v52 + *(v53 + 56)) = 256;
  v54 = v78;
  sub_18AF46584(v49, v46, v48, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA28);
  sub_18AFCDD34();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AF4350C(v44, v73, v51);
  sub_18AEDC310();
  sub_18AFCDD44();
  v55 = v86;
  sub_18AFCDD54();
  sub_18AE95F54(&qword_1EA99B400, &qword_1EA99B350);
  v56 = v80;
  sub_18AFCCB34();
  (*(v90 + 8))(v55, v91);
  (*(v88 + 8))(v54, v89);
  sub_18AE7BA80(v52, &qword_1EA99B350);
  sub_18AEF0D88(v44);
  if (!((v71 == 3) | v72 & 1))
  {
    v41 = 0.0;
  }

  v57 = v81;
  (*(v85 + 32))(v81, v56, v87);
  v58 = v82;
  *(v57 + *(v83 + 44)) = v41;
  sub_18AEA6DEC(v57, v58);
  v59 = v75;
  sub_18AF43574(v43, v75);
  v60 = v84;
  sub_18AEA6E5C(v58, v84);
  v61 = v92;
  sub_18AF43574(v59, v92);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B408);
  sub_18AEA6E5C(v60, v61 + *(v62 + 48));
  sub_18AEA6ECC(v58);
  sub_18AE7BA80(v43, &qword_1EA99B3F8);
  sub_18AEA6ECC(v60);
  return sub_18AE7BA80(v59, &qword_1EA99B3F8);
}

uint64_t sub_18AF43310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = sub_18AFCDB44();
  v8 = v7;
  sub_18AF4350C(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MacSwitchSliderKnob);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_18AF43428(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = sub_18AF4348C;
  a2[3] = v10;
  return result;
}

uint64_t sub_18AF43428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSwitchSliderKnob();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF4348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MacSwitchSliderKnob() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_18AF429DC(a1, v6, a2);
}

uint64_t sub_18AF4350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AF43574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18AF435E4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18AF43F08(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38);
      if (v2 <= 0x3F)
      {
        sub_18AF43F08(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
        if (v3 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997C28);
          if (v4 <= 0x3F)
          {
            sub_18AEB1A48(319, &qword_1EA997C40);
            if (v5 <= 0x3F)
            {
              sub_18AF43F08(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
              if (v6 <= 0x3F)
              {
                sub_18AEB1A48(319, &qword_1EA997C48);
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

uint64_t sub_18AF437A4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_18AFCC5C4() - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v32 = v8;
  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(sub_18AFCBB34() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = *(v7 + 80) & 0xF8 | 7;
  if (v9 >= a2)
  {
    goto LABEL_39;
  }

  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = ((v13 + ((v18 + ((v11 + ((v17 + ((v32 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v9 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = *&a1[v19];
      if (!v23)
      {
        goto LABEL_39;
      }
    }
  }

  else if (!v22 || (v23 = a1[v19]) == 0)
  {
LABEL_39:
    v27 = &a1[v14 + 1] & ~v14;
    if (v6 < 0xFE)
    {
      v29 = *(((v27 + v15 + v16) & ~v16) + v32);
      if (v29 >= 2)
      {
        return (v29 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v28 = *(v5 + 48);

      return v28(v27, v6, v31);
    }
  }

  v25 = v19 > 3;
  if (v19 <= 3)
  {
    v26 = (v23 - 1) << (8 * v19);
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v30 = *a1;
  }

  else
  {
    v30 = *a1;
  }

  return v9 + (v30 | v26) + 1;
}

void sub_18AF43AF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v5 = *(v32 - 8);
  v33 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_18AFCC5C4() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(sub_18AFCBB34() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v7 + 80) & 0xF8 | 7;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = ((v13 + ((v18 + ((v11 + ((v17 + ((v8 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return;
    }

LABEL_44:
    v25 = &a1[v14 + 1] & ~v14;
    if (v6 < 0xFE)
    {
      v27 = ((v25 + v15 + v16) & ~v16);
      if (a2 > 0xFE)
      {
        v28 = (v8 + 1);
        if (v28 <= 3)
        {
          v29 = ~(-1 << (8 * (v8 + 1)));
        }

        else
        {
          v29 = -1;
        }

        if (v8 != -1)
        {
          v30 = v29 & (a2 - 255);
          if (v28 <= 3)
          {
            v31 = v28;
          }

          else
          {
            v31 = 4;
          }

          bzero(v27, v28);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              *v27 = v30;
              v27[2] = BYTE2(v30);
            }

            else
            {
              *v27 = v30;
            }
          }

          else if (v31 == 1)
          {
            *v27 = v30;
          }

          else
          {
            *v27 = v30;
          }
        }
      }

      else
      {
        v27[v8] = -a2;
      }
    }

    else
    {
      v26 = *(v33 + 56);

      v26(v25, a2, v6, v32);
    }

    return;
  }

  v23 = ~v9 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_32:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_18AF43F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AF43FA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AF44000@<X0>(_BYTE *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for UniversalTextField();
  a2();
  v8 = v7[10];
  *&a4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v9 = &a4[v7[11]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_18AE9A768(a3, &a4[v7[12]], &qword_1EA9986E8);
  v10 = &a4[v7[13]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = &a4[v7[14]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v7[15];
  *&a4[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  swift_storeEnumTagMultiPayload();
  v13 = &a4[v7[16]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &a4[v7[17]];
  result = swift_getKeyPath();
  *v14 = result;
  v14[8] = 0;
  return result;
}

uint64_t sub_18AF44184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18AFCC474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_18AE83A40(v2 + *(a1 + 48), &v15 - v10, &qword_1EA998148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_18AFCBB34();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_18AFCE024();
    v14 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_18AF44388(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[8];
  }

  return v8 & 1;
}

uint64_t sub_18AF444D8(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 1) & 1;
}

uint64_t sub_18AF44628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_18AFCC474();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_18AE83A40(v2 + *(a1 + 60), v9, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = v4;
    v15 = v22;
  }

  else
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    v15 = v22;
    (*(v22 + 8))(v6, v4);
    v14 = v4;
  }

  v17 = v2 + *(v23 + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v25 = *v17;
  }

  else
  {

    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v18, 0);
    (*(v15 + 8))(v6, v14);
    LOBYTE(v18) = v25;
  }

  v20 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = type metadata accessor for ResolvedTextFieldBorderShape(0);
  *(v20 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_18AF44984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v68 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_18AFCC474();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4A0);
  v8 = sub_18AFCC044();
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - v9;
  v10 = sub_18AFCC044();
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v74 = sub_18AFCBDC4();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v62 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4A8);
  v13 = sub_18AFCC044();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v62 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58);
  v80 = sub_18AFCBDC4();
  v79 = v13;
  v15 = sub_18AFCC624();
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v62 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B128);
  v85 = v15;
  v87 = sub_18AFCC044();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v62 - v19;
  v69 = a1;
  v20 = *(a1 + 24);
  v21 = v89;
  v107 = sub_18AF45738(v2);
  v22 = v71;
  sub_18AF45788(&v107, v21, MEMORY[0x1E69815C0], v20);

  sub_18AFCC844();
  v23 = sub_18AE95F54(&qword_1EA99B4B0, &qword_1EA99B4A0);
  v105 = v20;
  v106 = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = v73;
  sub_18AFCCC24();
  (*(v75 + 8))(v22, v8);
  v103 = WitnessTable;
  v104 = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable();
  v27 = v72;
  sub_18AFC385C(1, 0, v10, v26, v72, 2.0, 4.0);
  v28 = v69;
  v29 = v10;
  v30 = v70;
  (*(v76 + 8))(v25, v29);
  v90 = v89;
  v91 = v20;
  v92 = v2;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4B8);
  v101 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v102 = v26;
  v31 = v74;
  v32 = swift_getWitnessTable();
  sub_18AF46324();
  sub_18AFCCA64();
  (*(v77 + 8))(v27, v31);
  v33 = sub_18AF44388(v28);
  v34 = 0;
  if (v33)
  {
    v35 = &v2[*(v28 + 56)];
    v36 = *v35;
    if (v35[8] != 1)
    {
      v37 = v33;

      sub_18AFCE024();
      v38 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v39 = v62;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v36, 0);
      (*(v63 + 8))(v39, v64);
      v33 = v37;
      LOBYTE(v36) = v107;
    }

    v34 = qword_18AFDADE0[v36];
  }

  v40 = v33 ^ 1;
  v41 = sub_18AF44388(v28);
  if (v41)
  {
    v42 = &v3[*(v28 + 56)];
    v43 = *v42;
    if (v42[8] != 1)
    {

      sub_18AFCE024();
      v46 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v47 = v62;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v43, 0);
      (*(v63 + 8))(v47, v64);
      LOBYTE(v43) = v107;
    }

    v45 = v81;
    v44 = qword_18AFDAE20[v43];
  }

  else
  {
    v44 = 0;
    v45 = v81;
  }

  v48 = sub_18AE95F54(&qword_1EA99B4E0, &qword_1EA99B4A8);
  v99 = v32;
  v100 = v48;
  v49 = v79;
  v50 = swift_getWitnessTable();
  sub_18AFC2B18(v34, v40 & 1, v44, (v41 & 1) == 0, v49, v50, v45);
  (*(v78 + 8))(v30, v49);
  if (sub_18AF44388(v28))
  {
    v51 = *MEMORY[0x1E697F468];
    v52 = sub_18AFCC534();
    (*(*(v52 - 8) + 104))(v65, v51, v52);
    sub_18AF46488(&qword_1EA998A48, MEMORY[0x1E6981998]);
  }

  else
  {
    sub_18AF44628(v28, v66);
    sub_18AF46488(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape);
  }

  v107 = sub_18AFCD4E4();
  v97 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58);
  v98 = v50;
  v95 = swift_getWitnessTable();
  v96 = v50;
  v53 = v85;
  v54 = swift_getWitnessTable();
  sub_18AF3D418();
  v55 = v82;
  sub_18AFCCAC4();

  (*(v83 + 8))(v45, v53);
  v56 = sub_18AE95F54(&qword_1EA99B198, &qword_1EA99B128);
  v93 = v54;
  v94 = v56;
  v57 = v87;
  v58 = swift_getWitnessTable();
  v59 = v84;
  sub_18AEADA5C(v55, v57, v58);
  v60 = *(v86 + 8);
  v60(v55, v57);
  sub_18AEADA5C(v59, v57, v58);
  return (v60)(v59, v57);
}

uint64_t sub_18AF45738(unsigned __int8 *a1)
{
  v1 = *a1;
  result = sub_18AFCCD64();
  if (v1 == 1)
  {
    v3 = sub_18AFCCDA4();

    return v3;
  }

  return result;
}

uint64_t sub_18AF45788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a2;
  v6 = sub_18AFCE074();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = sub_18AFCC7C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a1, v6, v12);
  sub_18AF464D0(v9, a3, v14);
  MEMORY[0x18CFEBFA0](v14, v17, v10, v18);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_18AF45938@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F10);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v53 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F08);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v53 - v5;
  v55 = sub_18AFCC474();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCBB34();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998EE8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4F0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v53 - v15;
  v16 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99B1D0);
  MEMORY[0x1EEE9AC00](v65);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4D0);
  v69 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v53 - v24;
  v25 = type metadata accessor for UniversalTextField();
  if (sub_18AF44388(v25))
  {
    v26 = *(v69 + 56);

    return v26(a2, 1, 1, v23);
  }

  else
  {
    v53 = v23;
    if (sub_18AF444D8(v25))
    {
      sub_18AF44628(v25, v20);
      sub_18AF3CF18(*a1, v22);
      sub_18AEDF6B0(v20);
      sub_18AE83A40(v22, v66, qword_1EA99B1D0);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0);
      sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8);
      v28 = v64;
      sub_18AFCC614();
      v29 = v28;
      sub_18AE7BA80(v22, qword_1EA99B1D0);
      v30 = a2;
      v31 = v53;
    }

    else
    {
      sub_18AF44628(v25, v68);
      v32 = *a1;
      v33 = v62;
      sub_18AF44184(v25, v62);
      v34 = &a1[*(v25 + 44)];
      v35 = *v34;
      if (v34[8] != 1)
      {

        sub_18AFCE024();
        v36 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v33 = v62;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v35, 0);
        (*(v54 + 8))(v8, v55);
        LOBYTE(v35) = v73;
      }

      v37 = &a1[*(v25 + 64)];
      v38 = *v37;
      if (v37[8] != 1)
      {

        sub_18AFCE024();
        v39 = sub_18AFCC7D4();
        sub_18AFCBA64();

        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v38, 0);
        (*(v54 + 8))(v8, v55);
        LOBYTE(v38) = v73;
      }

      v31 = v53;
      v40 = sub_18AEF3BD4(v33, v32);
      v41 = v57;
      sub_18AEDF64C(v68, v57);
      v42 = v56;
      *(v41 + *(v56 + 52)) = v40;
      *(v41 + *(v42 + 56)) = 256;
      v43 = sub_18AEF3D90(v35 & 1, v33);
      if (v38)
      {
        v44 = 0;
      }

      else
      {
        v44 = 2;
      }

      sub_18AFCBB94();
      sub_18AEDF64C(v41, v6);
      v45 = v58;
      sub_18AE9A768(v41, &v6[*(v58 + 84)], &qword_1EA998F10);
      *&v6[v45[18]] = v43;
      v6[v45[17]] = v44;
      v46 = &v6[v45[19]];
      v47 = v71;
      *v46 = v70;
      *(v46 + 1) = v47;
      *(v46 + 4) = v72;
      v6[v45[20]] = 1;
      if (v35)
      {
        sub_18AFCCDB4();
        v48 = sub_18AFCCDA4();
      }

      else
      {
        v48 = sub_18AFCCD74();
      }

      v30 = a2;
      sub_18AFCBB94();
      (*(v59 + 8))(v33, v60);
      sub_18AEDF6B0(v68);
      sub_18AEDF64C(v6, v12);
      v49 = v67;
      sub_18AE9A768(v6, &v12[*(v67 + 84)], &qword_1EA998F08);
      *&v12[v49[18]] = v48;
      v12[v49[17]] = v44;
      v50 = &v12[v49[19]];
      v51 = v74;
      *v50 = v73;
      *(v50 + 1) = v51;
      *(v50 + 4) = v75;
      v12[v49[20]] = 1;
      v52 = v61;
      sub_18AE9A768(v12, v61, &qword_1EA998EE8);
      sub_18AE83A40(v52, v66, &qword_1EA998EE8);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0);
      sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8);
      v29 = v64;
      sub_18AFCC614();
      sub_18AE7BA80(v52, &qword_1EA998EE8);
    }

    sub_18AE9A768(v29, v30, &qword_1EA99B4D0);
    return (*(v69 + 56))(v30, 0, 1, v31);
  }
}

unint64_t sub_18AF46324()
{
  result = qword_1EA99B4C0;
  if (!qword_1EA99B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4B8);
    sub_18AF463A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4C0);
  }

  return result;
}

unint64_t sub_18AF463A8()
{
  result = qword_1EA99B4C8;
  if (!qword_1EA99B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4D0);
    sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0);
    sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4C8);
  }

  return result;
}

uint64_t sub_18AF46488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AF464D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_18AFCE074();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t sub_18AF46584(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A5F0 != -1)
  {
    v24 = v15;
    swift_once();
    v15 = v24;
  }

  v18 = __swift_project_value_buffer(v15, qword_1ED56A5F8);
  sub_18AE7AF6C(v18, v17, type metadata accessor for GlassMaterialProvider.Configuration);
  v19 = *(v17 + 5);
  if ((v19 & 1) == 0 || !((v19 >> 18) & 1 | a1 & 1))
  {
    v20 = 262145;
    if ((v19 >> 18) & 1 | a1 & 1)
    {
      v20 = 1;
    }

    *(v17 + 5) = v20 | v19;
  }

  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  *(v17 + 2) = v21;
  *(v17 + 3) = v22;
  v17[32] = a4 & 1;
  sub_18AE7AF6C(v17, v13, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7AF6C(v13, v10, type metadata accessor for GlassMaterialProvider);
  sub_18AE8C0E8(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider);
  sub_18AE8C0E8(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved);
  sub_18AFCD5E4();
  sub_18AE8BFB4(v13, type metadata accessor for GlassMaterialProvider);
  return sub_18AE8BFB4(v17, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AF4682C(unsigned __int8 a1, char a2)
{
  v4 = sub_18AFCCCF4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else if (a1 != 2)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = sub_18AFCCF54();
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v8 = sub_18AFCCF44();
LABEL_9:
  v10[1] = v8;
  return sub_18AFCBCD4();
}

uint64_t sub_18AF46998(char a1)
{
  sub_18AFCCD94();
  if (a1 == 1)
  {
    sub_18AFCCDA4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF46A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCC5C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = sub_18AFCBB34();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 != *MEMORY[0x1E697DBB8])
  {
    if (v16 == *MEMORY[0x1E697DBA8])
    {
      (*(v5 + 16))(v10, a2, v4);
      v17 = (*(v5 + 88))(v10, v4);
      if (v17 != *MEMORY[0x1E697F600] && v17 != *MEMORY[0x1E697F608])
      {
        (*(v5 + 8))(v10, v4);
      }

      sub_18AFCCD94();
      goto LABEL_14;
    }

    (*(v12 + 8))(v15, v11);
  }

  (*(v5 + 16))(v7, a2, v4);
  v18 = (*(v5 + 88))(v7, v4);
  if (v18 != *MEMORY[0x1E697F600] && v18 != *MEMORY[0x1E697F608])
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_18AFCCD64();
LABEL_14:
  v19 = sub_18AFCCDA4();

  return v19;
}

uint64_t sub_18AF46D84@<X0>(_DWORD *a1@<X8>)
{
  if (!sub_18AFCC1C4())
  {
    sub_18AFCCCD4();
  }

  sub_18AFCCDC4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  return result;
}

unint64_t sub_18AF46E18()
{
  result = qword_1EA99B4F8;
  if (!qword_1EA99B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4F8);
  }

  return result;
}

uint64_t GlassMaterialProvider.Size.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | v2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (*&v1 | v2) != 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);
    if (v4 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }

    MEMORY[0x18CFED640](*&v6);
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v5;
    }

    return MEMORY[0x18CFED640](*&v7);
  }
}

uint64_t GlassMaterialProvider.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | *&v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (*&v1 | *&v2) != 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    if (v1 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v1;
    }

    MEMORY[0x18CFED640](*&v5);
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v2;
    }

    MEMORY[0x18CFED640](*&v6);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF4702C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | *&v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (*&v1 | *&v2) != 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF470F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 | v2) != 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v4, v5);
  }
}

uint64_t sub_18AF471B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | *&v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (*&v1 | *&v2) != 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t GlassMaterialProvider.Subvariant.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000018AFE4720 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000018AFE4740 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 2;
  }

  else if (a1 == 0x65726373656D6F68 && a2 == 0xEF65736F6C436E65 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 3;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 4;
  }

  else if (a1 == 0x7753726574736F70 && a2 == 0xEE00726568637469 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018AFE4760 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 6;
  }

  else if (a1 == 0x6341726F73727563 && a2 == 0xEF79726F73736563 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018AFE4780 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 8;
  }

  else if (a1 == 6447476 && a2 == 0xE300000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 9;
  }

  else if (a1 == 0x6B63617274 && a2 == 0xE500000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018AFE47A0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 11;
  }

  else if (a1 == 0x6569467972746E65 && a2 == 0xEA0000000000646CLL || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 12;
  }

  else if (a1 == 0x6C53656D756C6F76 && a2 == 0xEC00000072656469 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 13;
  }

  else if (a1 == 0x7A696D6F74737563 && a2 == 0xEE00746565685365 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 14;
  }

  else if (a1 == 0x6361466863746177 && a2 == 0xEF736F746F685065 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018AFE47C0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018AFE47E0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018AFE4800 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 18;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018AFE4820 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 19;
  }

  else if (a1 == 0x7361506863746177 && a2 == 0xED000065646F6373 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000018AFE4840 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 21;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 22;
  }

  else if (a1 == 0x616D536863746177 && a2 == 0xEF6B636174537472 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 23;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000018AFE4860 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 24;
  }

  else if (a1 == 0x70696E5369726973 && a2 == 0xEB00000000746570 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 25;
  }

  else if (a1 == 0x696C536D72616C61 && a2 == 0xEB00000000726564 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 26;
  }

  else if (a1 == 0x6E6769537370616DLL && a2 == 0xE800000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 27;
  }

  else if (a1 == 0x7465656873 && a2 == 0xE500000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v7 = 28;
  }

  else
  {
    if (a1 == 0x736567617373656DLL && a2 == 0xEF6B636162706154)
    {
    }

    else
    {
      v8 = sub_18AFCE264();

      if ((v8 & 1) == 0)
      {
        v7 = 30;
        goto LABEL_5;
      }
    }

    v7 = 29;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

uint64_t sub_18AF47C10()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v4);
  v1 = _s13ConfigurationV3MixVMa(0);
  GlassMaterialProvider.Configuration.hash(into:)(v4);
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47C9C(uint64_t a1, uint64_t a2)
{
  GlassMaterialProvider.Configuration.hash(into:)(a1);
  GlassMaterialProvider.Configuration.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x18CFED640](*&v5);
}

uint64_t sub_18AF47D00(uint64_t a1, uint64_t a2)
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v6);
  GlassMaterialProvider.Configuration.hash(into:)(v6);
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFED640](*&v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47DE4(unint64_t a1)
{
  v2 = _s13ConfigurationV3MixVMa(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    if (a1 >> 62 == 2)
    {
      v6 = v3;
      v7 = swift_projectBox();
      sub_18AE7AFD4(v7, v5, _s13ConfigurationV3MixVMa);
      if (sub_18AF47DE4(*v5))
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_18AF47DE4(*(v5 + *(v6 + 20)));
      }

      sub_18AF4BBC8(v5, _s13ConfigurationV3MixVMa);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_18AF47EE4()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AE90EE8(v3, v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47F34()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AE90EE8(v3, v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    sub_18AFCE2B4();
    if ((a3 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if ((a3 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  sub_18AFCE2B4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AF4800C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  sub_18AFCE294();
  sub_18AF47F84(v6, v1 | (v2 << 32), v3 | (v4 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF480B0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  sub_18AFCE294();
  sub_18AF47F84(v6, v1 | (v2 << 32), v3 | (v4 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4811C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (*(a2 + 12))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_18AF48184()
{
  v1 = *(v0 + 16);
  sub_18AFCE294();
  sub_18AFCE2B4();
  if (v1 != 1)
  {
    sub_18AFCDCD4();
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF481FC()
{
  if (*(v0 + 16) == 1)
  {
    return sub_18AFCE2B4();
  }

  sub_18AFCE2B4();

  return sub_18AFCDCD4();
}

uint64_t sub_18AF48278()
{
  v1 = *(v0 + 16);
  sub_18AFCE294();
  sub_18AFCE2B4();
  if (v1 != 1)
  {
    sub_18AFCDCD4();
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AF482EC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && (sub_18AFCDCB4() & 1) != 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

__n128 GlassMaterialProvider.Configuration.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 GlassMaterialProvider.Configuration.size.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18AF48428@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v4 = v1 + *(result + 52);
  if (*(v4 + 16))
  {
    if (*v1 == 0xC000000000000008 && ((v5 = *(v1 + 9), (v5 - 1) < 2) || v5 == 20))
    {
      *a1 = xmmword_18AFDAF50;
    }

    else
    {
      if (qword_1ED56A8B8 != -1)
      {
        result = swift_once();
      }

      v7 = qword_1ED56C8E0;
      if (qword_1ED56A7E8 != -1)
      {
        result = swift_once();
      }

      v8 = qword_1ED56C4C0;
      *a1 = v7;
      *(a1 + 8) = v8;
    }
  }

  else
  {
    v6 = *(v1 + *(result + 52) + 8);
    *a1 = *v4;
    *(a1 + 8) = v6;
  }

  return result;
}

double static GlassMaterialProvider.HysteresisRange.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED56A8B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1ED56C8E0;
  if (qword_1ED56A7E8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = *&qword_1ED56C4C0;
  *a1 = v1;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18AF485D8(uint64_t a1, uint64_t a2)
{
  if (!BYTE4(a2))
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (BYTE4(a2) == 1)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x18CFED610](v2);
    return sub_18AFCE2C4();
  }

  return MEMORY[0x18CFED610](0);
}

uint64_t sub_18AF4863C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_18AFCE294();
  sub_18AF485D8(v4, v1 | (v2 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF48698()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_18AFCE294();
  sub_18AF485D8(v4, v1 | (v2 << 32));
  return sub_18AFCE2E4();
}

BOOL sub_18AF486E0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 4) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && LODWORD(v2) == 0;
}

uint64_t sub_18AF48740()
{
  v1 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 >> 62 == 2)
  {
    v4 = swift_projectBox();
    v5 = sub_18AE7AFD4(v4, v3, _s13ConfigurationV3MixVMa);
    v6 = sub_18AF48740(v5);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_18AF48740(v6);
    }

    sub_18AF4BBC8(v3, _s13ConfigurationV3MixVMa);
  }

  else
  {
    v7 = *(v0 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 68) + 4) != 1;
  }

  return v7 & 1;
}

double sub_18AF4884C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 48) = 0;
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = v4[10];
  v6 = sub_18AFCBB34();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + v4[11]) = 3;
  *(a2 + v4[12]) = 0;
  v7 = a2 + v4[13];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(a2 + v4[14]) = MEMORY[0x1E69E7CC0];
  *(a2 + v4[15]) = 0;
  v8 = a2 + v4[16];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 20) = -1;
  *(v8 + 16) = 0;
  v9 = a2 + v4[17];
  *v9 = 0;
  *(v9 + 4) = 2;
  *(a2 + v4[18]) = 0;
  v10 = (a2 + v4[19]);
  *v10 = 0;
  v10[1] = 0;
  *a2 = a1;
  sub_18AE89F60(a1);
  sub_18AE8E22C(a1, &v12);
  sub_18AF4B0F8(a1);
  *(a2 + 40) = v12;
  *&result = 3;
  *(a2 + 16) = xmmword_18AFDAF60;
  *(a2 + 32) = 1;
  return result;
}

double sub_18AF489AC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_18AF4884C(a3, v6);
}

double sub_18AF48A98()
{
  v0 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_1ED56A548);
  v1 = __swift_project_value_buffer(v0, qword_1ED56A548);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 20) = 1;
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  return sub_18AF4884C(v2, v1);
}

void static GlassMaterialProvider.Configuration.text(tint:frost:normalizedFactor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 20) = BYTE4(a2) & 1;
  *(v11 + 24) = a3;
  *(v11 + 28) = BYTE4(a3) & 1;
  sub_18AF4884C(v11, a4);
  if (a1)
  {
    sub_18AE7AFD4(a4, v10, type metadata accessor for GlassMaterialProvider.Configuration);
    v12 = *(v8 + 56);
    v13 = *&v10[v12];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_18AE91D64(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_18AE91D64((v14 > 1), v15 + 1, 1, v13);
    }

    sub_18AF4BBC8(a4, type metadata accessor for GlassMaterialProvider.Configuration);
    *(v13 + 2) = v15 + 1;
    v16 = &v13[32 * v15];
    *(v16 + 4) = -1;
    *(v16 + 5) = a1;
    *(v16 + 6) = 0;
    *(v16 + 14) = 0;
    v16[60] = 0;
    *&v10[v12] = v13;
    sub_18AE8C014(v10, a4);
  }
}

uint64_t GlassMaterialProvider.Configuration.tint(_:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_18AE7AFD4(v4, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  v8 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 56);
  v9 = *(a3 + v8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18AE91D64(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_18AE91D64((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 32 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 60) = 0;
  *(a3 + v8) = v9;
  return result;
}

double sub_18AF48F54(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  return sub_18AF4884C(v5 | 0x4000000000000000, v4);
}

uint64_t GlassMaterialProvider.Configuration.subvariant(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  *(a2 + 9) = v4;
  return result;
}

unint64_t GlassMaterialProvider.Configuration.focusOffset(_:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = sub_18AE7AFD4(v3, a1, type metadata accessor for GlassMaterialProvider.Configuration);
  if (*v3 >> 62 == 1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = 0;
    v9 = v8 | 0x4000000000000000;
    result = sub_18AF4B0F8(*a1);
    *a1 = v9;
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.controlTint(color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 60);

  *(a2 + v5) = a1;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.adaptive(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = 0x4000;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFBFFFLL | v5;
  v6 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v6, &qword_1EA99B5F0);
  v7 = sub_18AFCBB34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t GlassMaterialProvider.Configuration.adaptiveHysteresisRange(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v7 = a2 + *(result + 52);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = 0;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.adaptive(animatable:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x400000;
  if (a1)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFBFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.colorScheme(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v5, &qword_1EA99B5F0);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2 + v5, a1, v6);
  result = (*(v7 + 56))(a2 + v5, 0, 1, v6);
  v9 = *(a2 + 40);
  if ((v9 & 0x4000) != 0)
  {
    *(a2 + 40) = v9 & 0xFFFFFFFFFFFFBFFFLL;
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.boostWhitePoint(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x20000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFDFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.adaptivePreserveLuminance(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x100000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFEFFFFFLL | v6;
  return result;
}

uint64_t sub_18AF4963C@<X0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = v3;
  sub_18AE7AFD4(v5, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v9 = a2 + *(result + 68);
  *v9 = a3;
  *(v9 + 4) = a1;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.customFill<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE7AFD4(v3, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  _s10CustomFillCMa();
  (*(v7 + 16))(v9, a1, a2);
  v10 = sub_18AF4BE98(v9);
  v11 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 72);

  *(a3 + v11) = v10;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.customGlow<A>(_:radius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE7AFD4(v4, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  _s10CustomFillCMa();
  (*(v9 + 16))(v11, a1, a2);
  v12 = sub_18AF4BE98(v11);
  v13 = a3 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 76);

  *v13 = v12;
  *(v13 + 8) = a4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.identity()@<X0>(uint64_t a1@<X8>)
{
  result = sub_18AE7AFD4(v1, a1, type metadata accessor for GlassMaterialProvider.Configuration);
  v4 = *(a1 + 40);
  if ((v4 & 0x200000) == 0)
  {
    *(a1 + 40) = v4 | 0x200000;
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.contentHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x1000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFEFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.frost(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  *(a2 + 8) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.optimization(level:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  *(a2 + *(result + 44)) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.contentEffect(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  *(a2 + *(result + 48)) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v6 = a2 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 64);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16) | (*(v6 + 20) << 32);

  result = sub_18AF4B128(v7, v8, v9);
  *v6 = a1;
  *(v6 + 8) = 0;
  *(v6 + 20) = BYTE4(v5);
  *(v6 + 16) = v5;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18AE7AFD4(v4, a4, type metadata accessor for GlassMaterialProvider.Configuration);
  v9 = a3 | 0x100000000;
  v10 = (a3 & 0x100000000) == 0;
  if ((a3 & 0x100000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0xFFFFFFFF00000000;
  }

  v14 = a4 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 64);
  result = sub_18AF4B128(*v14, *(v14 + 8), *(v14 + 16) | (*(v14 + 20) << 32));
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 20) = BYTE4(v13);
  *(v14 + 16) = v13;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.sharpTinting(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x2000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFDFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.meshed(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x4000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFBFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.hashValue.getter()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF49D4C()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF49D90()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

__n128 static GlassMaterialProvider.HysteresisRange.disabled.getter@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  *a1 = result;
  return result;
}

uint64_t sub_18AF49DDC()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  result = sub_18AFCAF30();
  if (!result)
  {
    goto LABEL_7;
  }

  if (*(result + 16) <= 1uLL)
  {

LABEL_7:
    v1 = 0.2;
    v2 = 0.5;
    goto LABEL_8;
  }

  v1 = *(result + 32);
  v2 = *(result + 36);

  if (v1 > v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  *&qword_1ED56C8E0 = v1;
  *(&qword_1ED56C8E0 + 1) = v2;
  return result;
}

uint64_t sub_18AF49E98()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  result = sub_18AFCAF30();
  if (!result)
  {
    goto LABEL_7;
  }

  if (*(result + 16) <= 1uLL)
  {

LABEL_7:
    v1 = 0.9;
    v2 = 0.6;
    goto LABEL_8;
  }

  v2 = *(result + 32);
  v1 = *(result + 36);

  if (v2 > v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  *&qword_1ED56C4C0 = v2;
  *(&qword_1ED56C4C0 + 1) = v1;
  return result;
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v4 = sub_18AFCBB34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.colorScheme.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v4 = sub_18AFCBB34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.init(luminance:colorScheme:)@<X0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v6 = sub_18AFCBB34();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t static GlassMaterialProvider.HysteresisRange.Context.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);

  return sub_18AFCBB24();
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.hash(into:)()
{
  sub_18AFCE2C4();
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  return sub_18AFCDDA4();
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A31C()
{
  sub_18AFCE2C4();
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  return sub_18AFCDDA4();
}

uint64_t sub_18AF4A3C0()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A478(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    return sub_18AFCBB24();
  }

  else
  {
    return 0;
  }
}

uint64_t GlassMaterialProvider.HysteresisRange.modifyColorScheme(_:context:)(char *a1, float *a2)
{
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  v13 = *MEMORY[0x1E697DBA8];
  v14 = *(v6 + 104);
  v14(v8, v13, v5);
  sub_18AF4B160(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v15 = sub_18AFCDDF4();
  v16 = *(v6 + 8);
  result = v16(v8, v5);
  if (v15)
  {
    v19 = v11;
  }

  else
  {
    v19 = v9;
  }

  if (v15)
  {
    v18.n128_f32[0] = v12;
  }

  else
  {
    v18.n128_f32[0] = v10;
  }

  v20 = *a2;
  if (v19 > *a2 || v20 > v18.n128_f32[0])
  {
    if (v20 >= v19)
    {
      if (v18.n128_f32[0] > v20)
      {
        return result;
      }

      v16(a1, v5);
      v13 = *MEMORY[0x1E697DBB8];
    }

    else
    {
      (v16)(a1, v5, v18);
    }

    return (v14)(a1, v13, v5);
  }

  return result;
}

uint64_t GlassMaterialProvider.HysteresisRange.hash(into:)()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

uint64_t GlassMaterialProvider.HysteresisRange.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A7DC()
{
  sub_18AFCE294();
  sub_18AF4AFA4();
  sub_18AF4AFA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A84C()
{
  sub_18AF4AFA4();

  return sub_18AF4AFA4();
}

uint64_t sub_18AF4A89C()
{
  sub_18AFCE294();
  sub_18AF4AFA4();
  sub_18AF4AFA4();
  return sub_18AFCE2E4();
}

char *sub_18AF4A90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18AF4AA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_18AF4AB2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_18AF4AC48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18AF4AD4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18AF4AE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B688);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_18AF4AF54(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFED640](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x18CFED640](*&v3);
}

BOOL _s13DesignLibrary21GlassMaterialProviderV15HysteresisRangeV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[3] == a2[3] && a1[2] == a2[2];
}

BOOL _s13DesignLibrary21GlassMaterialProviderV4SizeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 <= 1uLL)
    {
      if (!(*&v2 | *&v3))
      {
        return *(a2 + 16) && !(*&v5 | v4);
      }

      return *(a2 + 16) && !(*&v5 ^ 1 | v4);
    }

    if (!(*&v2 ^ 2 | *&v3))
    {
      return *(a2 + 16) && !(*&v5 ^ 2 | v4);
    }

    return *(a2 + 16) && *&v5 > 2uLL;
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return v3 == *(a2 + 8) && v2 == v5;
  }
}

unint64_t sub_18AF4B0F8(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_18AF4B128(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_18AE92094(result, a2, a3, BYTE4(a3) & 1);
  }

  return result;
}

uint64_t sub_18AF4B160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18AF4B1AC()
{
  result = qword_1EA99B5F8;
  if (!qword_1EA99B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B5F8);
  }

  return result;
}

unint64_t sub_18AF4B204()
{
  result = qword_1EA99B600;
  if (!qword_1EA99B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B600);
  }

  return result;
}

unint64_t sub_18AF4B25C()
{
  result = qword_1EA99B608;
  if (!qword_1EA99B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B608);
  }

  return result;
}

unint64_t sub_18AF4B2B4()
{
  result = qword_1EA99B610;
  if (!qword_1EA99B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B610);
  }

  return result;
}

unint64_t sub_18AF4B30C()
{
  result = qword_1EA99B618;
  if (!qword_1EA99B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B618);
  }

  return result;
}

unint64_t sub_18AF4B3F4()
{
  result = qword_1EA99B630;
  if (!qword_1EA99B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B630);
  }

  return result;
}

uint64_t _s4SizeOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s4SizeOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_18AF4B498(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_18AF4B4F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCE074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18AF4B548(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18AF4B5DC()
{
  result = sub_18AFCBB34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s13ConfigurationV9LuminanceOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s13ConfigurationV9LuminanceOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AF4B6F8(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_18AF4B710(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_18AF4B738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AF4B794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_18AF4B7F4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_18AF4B850(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18AF4B8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18AF4BA14()
{
  result = qword_1EA99B648;
  if (!qword_1EA99B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B648);
  }

  return result;
}

unint64_t sub_18AF4BA6C()
{
  result = qword_1EA99B650;
  if (!qword_1EA99B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B650);
  }

  return result;
}

unint64_t sub_18AF4BAC4()
{
  result = qword_1EA99B658;
  if (!qword_1EA99B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B658);
  }

  return result;
}