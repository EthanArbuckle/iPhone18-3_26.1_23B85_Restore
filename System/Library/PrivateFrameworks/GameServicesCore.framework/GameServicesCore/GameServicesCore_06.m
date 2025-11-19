uint64_t sub_227B9DE34(char a1)
{
  if (!a1)
  {
    return 0x44496C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x656C61636F6CLL;
  }

  return 1701667182;
}

uint64_t sub_227B9DE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227B9DD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227B9DEBC(uint64_t a1)
{
  v2 = sub_227B9E090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9DEF8(uint64_t a1)
{
  v2 = sub_227B9E090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9DF34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7778, &qword_227D53548);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9E090();
  sub_227D4DC08();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_4_0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_4_0();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_4_0();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227B9E090()
{
  result = qword_27D7EF1B0[0];
  if (!qword_27D7EF1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF1B0);
  }

  return result;
}

uint64_t sub_227B9E0E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_227D4DB58();
  sub_227B9E434();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9E148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7788, &qword_227D53550);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9E090();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v14 = sub_227D4D8F8();
  v27 = v15;
  v29 = 1;
  v25 = sub_227D4D8F8();
  v26 = v16;
  v28 = 2;
  v17 = sub_227D4D8F8();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_227B9E374()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227B9EBC8();

  return sub_227BA2640(v1, v0, &off_283B38948, v2);
}

uint64_t sub_227B9E3CC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227B9E434()
{
  result = qword_27D7E7780;
  if (!qword_27D7E7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7780);
  }

  return result;
}

unint64_t sub_227B9E4B4()
{
  result = qword_27D7E7790;
  if (!qword_27D7E7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7790);
  }

  return result;
}

unint64_t sub_227B9E534()
{
  result = qword_27D7E7798;
  if (!qword_27D7E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7798);
  }

  return result;
}

unint64_t sub_227B9E588()
{
  result = qword_27D7E77A0;
  if (!qword_27D7E77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77A0);
  }

  return result;
}

unint64_t sub_227B9E5E0()
{
  result = qword_27D7E77A8;
  if (!qword_27D7E77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77A8);
  }

  return result;
}

uint64_t sub_227B9E634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227B9EBC8();
  result = sub_227BA2350(a1, &off_283B38948, v4, &off_283B389C0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227B9E684(uint64_t a1)
{
  result = sub_227B9E6AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B9E6AC()
{
  result = qword_27D7E77B0;
  if (!qword_27D7E77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77B0);
  }

  return result;
}

uint64_t sub_227B9E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227B9E768()
{
  result = qword_27D7E77B8;
  if (!qword_27D7E77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77B8);
  }

  return result;
}

unint64_t sub_227B9E7BC()
{
  result = qword_27D7E77C0;
  if (!qword_27D7E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77C0);
  }

  return result;
}

uint64_t sub_227B9E810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B9EBC8();

  return sub_227BA24C0(a1, a2, a3, &off_283B38948, v6);
}

double sub_227B9E874@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227B9E148(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_227B9E8D0(uint64_t a1)
{
  v2 = sub_227B9E588();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227B9E90C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for ChallengeLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChallengeLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227B9EAC4()
{
  result = qword_27D7EF7C0[0];
  if (!qword_27D7EF7C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF7C0);
  }

  return result;
}

unint64_t sub_227B9EB1C()
{
  result = qword_27D7EF8D0;
  if (!qword_27D7EF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EF8D0);
  }

  return result;
}

unint64_t sub_227B9EB74()
{
  result = qword_27D7EF8D8[0];
  if (!qword_27D7EF8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF8D8);
  }

  return result;
}

unint64_t sub_227B9EBC8()
{
  result = qword_27D7E77C8;
  if (!qword_27D7E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77C8);
  }

  return result;
}

uint64_t sub_227B9EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227D4F750;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v17 = sub_227D4CEC8();
  v19 = v18;

  *a9 = v17;
  a9[1] = v19;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_227B9ED58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == OUTLINED_FUNCTION_7_2() && a2 == v8)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_5_1();

        if (v10)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_227B9EE68(char a1)
{
  result = 0x44496C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227B9EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227B9ED58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227B9EF1C(uint64_t a1)
{
  v2 = sub_227B9F10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227B9EF58(uint64_t a1)
{
  v2 = sub_227B9F10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227B9EF94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E77D0, &qword_227D538A8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9F10C();
  sub_227D4DC08();
  v14 = *v3;
  v15 = v3[1];
  v23[15] = 0;
  OUTLINED_FUNCTION_4_0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23[14] = 1;
    OUTLINED_FUNCTION_4_0();
    v18 = v3[4];
    v19 = v3[5];
    v23[13] = 2;
    OUTLINED_FUNCTION_4_0();
    v20 = v3[6];
    v21 = v3[7];
    v23[12] = 3;
    OUTLINED_FUNCTION_4_0();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227B9F10C()
{
  result = qword_27D7EF960[0];
  if (!qword_27D7EF960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EF960);
  }

  return result;
}

uint64_t sub_227B9F160()
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227B9F518();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B9F1B4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E77E0, &qword_227D538B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227B9F10C();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_5_9();
  v14 = sub_227D4D8F8();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_5_9();
  v16 = sub_227D4D8F8();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_5_9();
  v28 = sub_227D4D8F8();
  v30 = v18;
  v38 = 3;
  v19 = sub_227D4D8F8();
  v21 = v20;
  (*(v8 + 8))(v12, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_227B9F56C(&v33, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_227B9F5A4(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

uint64_t sub_227B9F468()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227B9FD3C();

  return sub_227BA2640(v1, v0, &off_283B38B28, v2);
}

uint64_t sub_227B9F4C0()
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227B9F518()
{
  result = qword_27D7E77D8;
  if (!qword_27D7E77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77D8);
  }

  return result;
}

unint64_t sub_227B9F600()
{
  result = qword_27D7E77E8;
  if (!qword_27D7E77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77E8);
  }

  return result;
}

unint64_t sub_227B9F680()
{
  result = qword_27D7E77F0;
  if (!qword_27D7E77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77F0);
  }

  return result;
}

unint64_t sub_227B9F6D4()
{
  result = qword_27D7E77F8;
  if (!qword_27D7E77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E77F8);
  }

  return result;
}

unint64_t sub_227B9F72C()
{
  result = qword_27D7E7800;
  if (!qword_27D7E7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7800);
  }

  return result;
}

uint64_t sub_227B9F780@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227B9FD3C();
  result = sub_227BA2350(a1, &off_283B38B28, v4, &off_283B38BA0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227B9F7D0(uint64_t a1)
{
  result = sub_227B9F7F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B9F7F8()
{
  result = qword_27D7E7808;
  if (!qword_27D7E7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7808);
  }

  return result;
}

uint64_t sub_227B9F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227B9F8B4()
{
  result = qword_27D7E7810;
  if (!qword_27D7E7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7810);
  }

  return result;
}

unint64_t sub_227B9F908()
{
  result = qword_27D7E7818;
  if (!qword_27D7E7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7818);
  }

  return result;
}

uint64_t sub_227B9F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B9FD3C();

  return sub_227BA24C0(a1, a2, a3, &off_283B38B28, v6);
}

double sub_227B9F9C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227B9F1B4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

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

uint64_t sub_227B9FA30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227B9FA70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GameActivityLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameActivityLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227B9FC38()
{
  result = qword_27D7EFF70[0];
  if (!qword_27D7EFF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7EFF70);
  }

  return result;
}

unint64_t sub_227B9FC90()
{
  result = qword_27D7F0080;
  if (!qword_27D7F0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0080);
  }

  return result;
}

unint64_t sub_227B9FCE8()
{
  result = qword_27D7F0088[0];
  if (!qword_27D7F0088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0088);
  }

  return result;
}

unint64_t sub_227B9FD3C()
{
  result = qword_27D7E7820;
  if (!qword_27D7E7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7820);
  }

  return result;
}

uint64_t sub_227B9FDC0()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_227B9FE14()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B9FE40()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t sub_227B9FE94()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B9FEC0()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_227B9FF14()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B9FF40()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

void *sub_227B9FF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_227D4F750;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a8;
  *(v17 + 56) = a10;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v18 = sub_227D4CEC8();
  v20 = v19;

  *(&__src[4] + 1) = *v29;
  HIDWORD(__src[4]) = *&v29[3];
  __src[0] = v18;
  __src[1] = v20;
  __src[2] = a13;
  __src[3] = a14;
  LOBYTE(__src[4]) = a3;
  __src[5] = a4;
  __src[6] = a5;
  __src[7] = a6;
  __src[8] = a7;
  __src[9] = a8;
  __src[10] = a10;
  __src[11] = a11;
  __src[12] = a12;
  v31[0] = v18;
  v31[1] = v20;
  v31[2] = a13;
  v31[3] = a14;
  v32 = a3;
  *v33 = *v29;
  *&v33[3] = *&v29[3];
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  sub_227BA0148(__src, v28);
  sub_227BA0180(v31);
  return memcpy(a9, __src, 0x68uLL);
}

uint64_t sub_227BA01B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_7_2() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0xD000000000000011 && 0x8000000227D75930 == a2;
      if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == OUTLINED_FUNCTION_7_7() && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000017 && 0x8000000227D75950 == a2;
          if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
            if (v12 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_5_1();

              if (v14)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA036C(char a1)
{
  result = 0x44496C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_2();
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_7();
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x656C61636F6CLL;
      break;
    case 6:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BA0440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA01B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA0474(uint64_t a1)
{
  v2 = sub_227BA06F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA04B0(uint64_t a1)
{
  v2 = sub_227BA06F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA04EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7828, &qword_227D53C18);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA06F4();
  sub_227D4DC08();
  v14 = *v3;
  v15 = v3[1];
  v27[15] = 0;
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v27[14] = 1;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v27[13] = *(v3 + 32);
    v27[12] = 2;
    sub_227BA0748();
    sub_227D4D9A8();
    v18 = v3[5];
    v19 = v3[6];
    v27[11] = 3;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v20 = v3[7];
    v21 = v3[8];
    v27[10] = 4;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v22 = v3[9];
    v23 = v3[10];
    v27[9] = 5;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D9C8();
    v24 = v3[11];
    v25 = v3[12];
    v27[8] = 6;
    OUTLINED_FUNCTION_2_5();
    sub_227D4D9C8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227BA06F4()
{
  result = qword_27D7F0110[0];
  if (!qword_27D7F0110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0110);
  }

  return result;
}

unint64_t sub_227BA0748()
{
  result = qword_27D7E7830;
  if (!qword_27D7E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7830);
  }

  return result;
}

uint64_t sub_227BA079C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BA0D38();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void *sub_227BA0800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7840, &qword_227D53C20);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v34 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA06F4();
  sub_227D4DBF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v14 = sub_227D4D8F8();
    v41 = a2;
    v42 = v15;
    OUTLINED_FUNCTION_0_17(1);
    v16 = sub_227D4D8A8();
    v18 = v17;
    LOBYTE(__src[0]) = 2;
    sub_227BA0D8C();
    sub_227D4D8D8();
    v54 = LOBYTE(v44[0]);
    OUTLINED_FUNCTION_0_17(3);
    v38 = sub_227D4D8A8();
    v39 = v16;
    v40 = v19;
    OUTLINED_FUNCTION_0_17(4);
    v20 = sub_227D4D8A8();
    v22 = v21;
    v37 = v20;
    v36 = v14;
    OUTLINED_FUNCTION_0_17(5);
    v23 = sub_227D4D8F8();
    v25 = v24;
    v35 = v23;
    v55 = 6;
    v26 = sub_227D4D8F8();
    v27 = *(v8 + 8);
    v28 = v26;
    v34 = v29;
    v27(v12, v5);
    v30 = v36;
    __src[0] = v36;
    __src[1] = v42;
    __src[2] = v39;
    __src[3] = v18;
    LOBYTE(__src[4]) = v54;
    v31 = v40;
    __src[5] = v38;
    __src[6] = v40;
    __src[7] = v37;
    __src[8] = v22;
    __src[9] = v35;
    __src[10] = v25;
    v32 = v34;
    __src[11] = v28;
    __src[12] = v34;
    sub_227BA0148(__src, v44);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v44[0] = v30;
    v44[1] = v42;
    v44[2] = v39;
    v44[3] = v18;
    v45 = v54;
    v46 = v38;
    v47 = v31;
    v48 = v37;
    v49 = v22;
    v50 = v35;
    v51 = v25;
    v52 = v28;
    v53 = v32;
    sub_227BA0180(v44);
    return memcpy(v41, __src, 0x68uLL);
  }
}

uint64_t sub_227BA0C70()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA1588();

  return sub_227BA2640(v1, v0, &off_283B38D08, v2);
}

uint64_t sub_227BA0CC8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA0D38()
{
  result = qword_27D7E7838;
  if (!qword_27D7E7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7838);
  }

  return result;
}

unint64_t sub_227BA0D8C()
{
  result = qword_27D7E7848;
  if (!qword_27D7E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7848);
  }

  return result;
}

unint64_t sub_227BA0E0C()
{
  result = qword_27D7E7850;
  if (!qword_27D7E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7850);
  }

  return result;
}

unint64_t sub_227BA0E8C()
{
  result = qword_27D7E7858;
  if (!qword_27D7E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7858);
  }

  return result;
}

unint64_t sub_227BA0EE0()
{
  result = qword_27D7E7860;
  if (!qword_27D7E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7860);
  }

  return result;
}

unint64_t sub_227BA0F38()
{
  result = qword_27D7E7868;
  if (!qword_27D7E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7868);
  }

  return result;
}

uint64_t sub_227BA0F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA1588();
  result = sub_227BA2350(a1, &off_283B38D08, v4, &off_283B38D80);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA0FDC(uint64_t a1)
{
  result = sub_227BA1004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA1004()
{
  result = qword_27D7E7870;
  if (!qword_27D7E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7870);
  }

  return result;
}

uint64_t sub_227BA1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA10C0()
{
  result = qword_27D7E7878;
  if (!qword_27D7E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7878);
  }

  return result;
}

unint64_t sub_227BA1114()
{
  result = qword_27D7E7880;
  if (!qword_27D7E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7880);
  }

  return result;
}

uint64_t sub_227BA1168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA1588();

  return sub_227BA24C0(a1, a2, a3, &off_283B38D08, v6);
}

void *sub_227BA11CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BA0800(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

unint64_t sub_227BA1230(uint64_t a1)
{
  v2 = sub_227BA0EE0();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA1274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA12B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardLocalization.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA1484()
{
  result = qword_27D7F0720[0];
  if (!qword_27D7F0720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0720);
  }

  return result;
}

unint64_t sub_227BA14DC()
{
  result = qword_27D7F0830;
  if (!qword_27D7F0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0830);
  }

  return result;
}

unint64_t sub_227BA1534()
{
  result = qword_27D7F0838[0];
  if (!qword_27D7F0838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0838);
  }

  return result;
}

unint64_t sub_227BA1588()
{
  result = qword_27D7E7888;
  if (!qword_27D7E7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7888);
  }

  return result;
}

uint64_t sub_227BA15F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227D4F750;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  sub_227D4CE58();
  sub_227BA29B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v15 = sub_227D4CEC8();
  v17 = v16;

  *a7 = v15;
  a7[1] = v17;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_227BA170C(uint64_t a1)
{
  v2 = sub_227BA18E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA1748(uint64_t a1)
{
  v2 = sub_227BA18E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA1784(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7890, &qword_227D53F98);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA18E0();
  sub_227D4DC08();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_4_0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_4_0();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_4_0();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227BA18E0()
{
  result = qword_27D7F08C0[0];
  if (!qword_27D7F08C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F08C0);
  }

  return result;
}

uint64_t sub_227BA1934()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_227D4DB58();
  sub_227BA1C1C();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA1998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E78A0, &qword_227D53FA0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA18E0();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v14 = sub_227D4D8F8();
  v27 = v15;
  v29 = 1;
  v25 = sub_227D4D8F8();
  v26 = v16;
  v28 = 2;
  v17 = sub_227D4D8F8();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_227BA1BC4()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA22E8();

  return sub_227BA2640(v1, v0, &off_283B38EF8, v2);
}

unint64_t sub_227BA1C1C()
{
  result = qword_27D7E7898;
  if (!qword_27D7E7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7898);
  }

  return result;
}

unint64_t sub_227BA1C9C()
{
  result = qword_27D7E78A8;
  if (!qword_27D7E78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78A8);
  }

  return result;
}

unint64_t sub_227BA1D1C()
{
  result = qword_27D7E78B0;
  if (!qword_27D7E78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78B0);
  }

  return result;
}

unint64_t sub_227BA1D70()
{
  result = qword_27D7E78B8;
  if (!qword_27D7E78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78B8);
  }

  return result;
}

unint64_t sub_227BA1DC8()
{
  result = qword_27D7E78C0;
  if (!qword_27D7E78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78C0);
  }

  return result;
}

uint64_t sub_227BA1E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA22E8();
  result = sub_227BA2350(a1, &off_283B38EF8, v4, &off_283B38F70);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA1E6C(uint64_t a1)
{
  result = sub_227BA1E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA1E94()
{
  result = qword_27D7E78C8;
  if (!qword_27D7E78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78C8);
  }

  return result;
}

uint64_t sub_227BA1F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA1F50()
{
  result = qword_27D7E78D0;
  if (!qword_27D7E78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78D0);
  }

  return result;
}

unint64_t sub_227BA1FA4()
{
  result = qword_27D7E78D8;
  if (!qword_27D7E78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78D8);
  }

  return result;
}

uint64_t sub_227BA1FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA22E8();

  return sub_227BA24C0(a1, a2, a3, &off_283B38EF8, v6);
}

double sub_227BA205C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227BA1998(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_227BA20B8(uint64_t a1)
{
  v2 = sub_227BA1D70();

  return sub_227BA2760(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardSetLocalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA21E4()
{
  result = qword_27D7F0ED0[0];
  if (!qword_27D7F0ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0ED0);
  }

  return result;
}

unint64_t sub_227BA223C()
{
  result = qword_27D7F0FE0;
  if (!qword_27D7F0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F0FE0);
  }

  return result;
}

unint64_t sub_227BA2294()
{
  result = qword_27D7F0FE8[0];
  if (!qword_27D7F0FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F0FE8);
  }

  return result;
}

unint64_t sub_227BA22E8()
{
  result = qword_27D7E78E0;
  if (!qword_27D7E78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78E0);
  }

  return result;
}

uint64_t sub_227BA2350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_227D4F750;
  BYTE8(v11) = 0;
  *&v11 = (*(a2 + 8))(a1, a2);
  sub_227D4D7B8();
  *(v7 + 32) = *(&v11 + 1);
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = (*(a4 + 8))(a1, a4);
  *(v7 + 56) = v8;
  (*(a4 + 16))(a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v9 = sub_227D4CEC8();

  return v9;
}

uint64_t sub_227BA24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_227D4D678();
  sub_227D4D678();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v18 = sub_227D4CF38();
  v19 = *(v9 + 8);
  v19(v14, AssociatedTypeWitness);
  v19(v16, AssociatedTypeWitness);
  return v18 & 1;
}

uint64_t sub_227BA2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v14 - v11;
  sub_227D4D678();
  swift_getAssociatedConformanceWitness();
  sub_227D4CEA8();
  return (*(v8 + 8))(v12, AssociatedTypeWitness);
}

unint64_t sub_227BA2760(uint64_t a1, uint64_t a2)
{
  v3 = sub_227D4CFE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_227D48DB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_227D48DF8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_227D48DE8();
  sub_227D48DA8();
  sub_227D48DC8();
  v10 = *(a2 + 16);
  v11 = sub_227D48DD8();
  v13 = v12;
  sub_227D4CFD8();
  v14 = sub_227D4CFB8();
  v16 = v15;
  sub_227B728BC(v11, v13);

  if (!v16)
  {
    return 0xD000000000000015;
  }

  return v14;
}

uint64_t sub_227BA29FC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v39 = sub_227D4DA38();
  v40 = v4;
  v5 = sub_227BA2B5C();
  v6 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_1_10(v5, v7, v8, v9, v10, v11, v12, v13, MEMORY[0x277D837D0], v5, v5, v5, a2, a3, v39, v40, 123);
  OUTLINED_FUNCTION_0_18();

  v14 = sub_227D4DA38();
  OUTLINED_FUNCTION_1_10(v14, v15, v16, v17, v18, v19, v20, v21, v31, v32, v5, v5, v34, v37, v14, v15, 123);
  OUTLINED_FUNCTION_0_18();

  OUTLINED_FUNCTION_1_10(v22, v23, v24, v25, v26, v27, v28, v29, v6, v5, v5, v5, v35, v38, a1, v35, 123);
  OUTLINED_FUNCTION_0_18();

  sub_227D49168();
}

unint64_t sub_227BA2B5C()
{
  result = qword_27D7E78E8;
  if (!qword_27D7E78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E78E8);
  }

  return result;
}

uint64_t sub_227BA2BB0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227D4F750;
  v9[8] = 0;
  *v9 = (*(*(a2 + 8) + 8))(a1);
  sub_227D4D7B8();
  *(v4 + 32) = *&v9[1];
  *(v4 + 40) = 0xE000000000000000;
  v5 = *(a2 + 32);
  *&v9[1] = (*(v5 + 8))(a1, v5);
  *&v9[9] = v6;
  MEMORY[0x22AAA5DA0](1735290926, 0xE400000000000000);
  *(v4 + 48) = *&v9[1];
  *(v4 + 56) = *&v9[9];
  (*(v5 + 16))(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227B9C9B0();
  v7 = sub_227D4CEC8();

  return v7;
}

id sub_227BA2D3C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_227D49188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  (*(a2 + 56))(a1, a2);
  sub_227D49148();
  (*(v5 + 8))(v8, v4);
  v10 = sub_227D4CF78();

  v18 = 0;
  v11 = [v9 attributesOfItemAtPath:v10 error:&v18];

  v12 = v18;
  if (!v11)
  {
    v16 = v18;
    sub_227D49098();

    result = swift_willThrow();
    goto LABEL_8;
  }

  type metadata accessor for FileAttributeKey();
  sub_227BA3824(&qword_27D7E78F0);
  v13 = sub_227D4CE18();
  v14 = v12;

  sub_227BA3010(*MEMORY[0x277CCA1C0], v13, &v19);

  if (!v20)
  {
    sub_227BA3074(&v19);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = v18;
LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_27D7E78F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7E78F8);
    }
  }
}

double sub_227BA3010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_227BA3868(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_227B1B268(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_227BA3074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227BA30F0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227BA3208;

  return v9(a1, a2);
}

uint64_t sub_227BA3208(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_227BA336C()
{
  v0 = sub_227D4CFA8();
  v1 = MEMORY[0x22AAA5E20](v0);

  return v1;
}

uint64_t sub_227BA33AC()
{
  sub_227D4CFA8();
  sub_227D4D048();
}

uint64_t sub_227BA3408()
{
  sub_227D4CFA8();
  sub_227D4DB58();
  sub_227D4D048();
  v0 = sub_227D4DB98();

  return v0;
}

uint64_t sub_227BA348C(uint64_t a1, id *a2)
{
  result = sub_227D4CF88();
  *a2 = 0;
  return result;
}

uint64_t sub_227BA3508(uint64_t a1, id *a2)
{
  v3 = sub_227D4CF98();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227BA3588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BA35B0();
  *a1 = result;
  return result;
}

uint64_t sub_227BA35B0()
{
  sub_227D4CFA8();
  v0 = sub_227D4CF78();

  return v0;
}

uint64_t sub_227BA35E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227BA35F4();
}

uint64_t sub_227BA35F4()
{
  v0 = sub_227D4CFA8();
  v2 = v1;
  if (v0 == sub_227D4CFA8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_227D4DA78();
  }

  return v5 & 1;
}

uint64_t sub_227BA3678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_227D4CF78();

  *a2 = v5;
  return result;
}

uint64_t sub_227BA36C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BA36EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BA36F0(uint64_t a1)
{
  v2 = sub_227BA3824(&qword_27D7E78F0);
  v3 = sub_227BA3824(&qword_27D7E7918);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227BA3824(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BA3868(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_227D4CFA8();
  sub_227D4DB58();
  sub_227D4D048();
  v4 = sub_227D4DB98();

  return sub_227BA38FC(a1, v4);
}

unint64_t sub_227BA38FC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_227D4CFA8();
    v8 = v7;
    if (v6 == sub_227D4CFA8() && v8 == v9)
    {

      return i;
    }

    v11 = sub_227D4DA78();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_227BA39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227D4D6E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7920, &unk_227D54630);
  swift_getTupleTypeMetadata2();
  sub_227D4D208();
  v40 = sub_227D4CE28();
  result = (*(a4 + 24))(a3, a4);
  v7 = 0;
  v9 = result + 64;
  v8 = *(result + 64);
  v35 = result;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v33 = v13;
  v34 = result + 64;
  if ((v11 & v8) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v40;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      v7 = v14;
      do
      {
LABEL_8:
        v36 = v12;
        v37 = v7;
        v15 = (v7 << 9) | (8 * __clz(__rbit64(v12)));
        v16 = *(*(v35 + 48) + v15);
        v17 = *(*(v35 + 56) + v15);

        sub_227D4CE58();
        swift_getAtPartialKeyPath();
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = (v17 + 56);
          do
          {
            v20 = *(v19 - 3);
            v21 = *(v19 - 2);
            v23 = *(v19 - 1);
            v22 = *v19;
            sub_227B1B268(v39, v38);
            sub_227D4CE58();

            LOBYTE(v23) = sub_227BADC0C(v38, v20, v21, v23);
            sub_227BA3074(v38);
            if (v23)
            {
            }

            else
            {
              v38[0] = sub_227D4CE58();
              OUTLINED_FUNCTION_0_19();
              sub_227D4CE48();
              swift_getWitnessTable();
              v24 = sub_227D4D138();

              if ((v24 & 1) == 0)
              {
                v38[0] = MEMORY[0x277D84F90];
                OUTLINED_FUNCTION_0_19();
                sub_227D4CE68();

                sub_227D4CE88();
              }

              OUTLINED_FUNCTION_0_19();
              sub_227D4CE68();
              v26 = sub_227D4CE78();
              v27 = *v25;
              if (*v25)
              {
                v28 = v25;
                sub_227D4CE58();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v28 = v27;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v27 = sub_227BA3E28(0, *(v27 + 2) + 1, 1, v27);
                  *v28 = v27;
                }

                v31 = *(v27 + 2);
                v30 = *(v27 + 3);
                if (v31 >= v30 >> 1)
                {
                  v27 = sub_227BA3E28((v30 > 1), v31 + 1, 1, v27);
                  *v28 = v27;
                }

                *(v27 + 2) = v31 + 1;
                v32 = &v27[16 * v31];
                *(v32 + 4) = v20;
                *(v32 + 5) = v21;
                v26(v38, 0);
              }

              else
              {
                v26(v38, 0);
              }
            }

            v19 += 4;
            --v18;
          }

          while (v18);
        }

        v12 = (v36 - 1) & v36;

        result = __swift_destroy_boxed_opaque_existential_0(v39);
        v13 = v33;
        v9 = v34;
        v7 = v37;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

char *sub_227BA3E28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7928, qword_227D546B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227BA3F3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA3F7C(uint64_t result, int a2, int a3)
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

uint64_t sub_227BA3FF0(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  return sub_227BAD8EC(v7, a1, a2);
}

uint64_t sub_227BA40EC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_227BA4158()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA4188(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_227BA4220()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA4250(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_227BA4288@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_227BA42AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227D75990 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == OUTLINED_FUNCTION_5_6() && a2 == v8;
        if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0x6261746165706572 && a2 == 0xEA0000000000656CLL;
          if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0xD000000000000010 && 0x8000000227D759B0 == a2;
            if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2)
            {

              return 6;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_5_1();

              if (v13)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA4494(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x73746E696F70;
      break;
    case 3:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 4:
      result = 0x6261746165706572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227BA4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA42AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA4598(uint64_t a1)
{
  v2 = sub_227BA4984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA45D4(uint64_t a1)
{
  v2 = sub_227BA4984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA4610@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7930, &qword_227D546F8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA4984();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  LOBYTE(v34) = 0;
  sub_227BA4C90(&qword_27D7E7948);
  sub_227D4D8D8();
  v15 = v38;
  if (!v38)
  {
    v15 = sub_227D4CE28();
  }

  OUTLINED_FUNCTION_0_20(1);
  v16 = sub_227D4D908();
  OUTLINED_FUNCTION_0_20(2);
  v32 = sub_227D4D928();
  OUTLINED_FUNCTION_0_20(3);
  v31 = sub_227D4D8F8();
  v33 = v17;
  OUTLINED_FUNCTION_0_20(4);
  v47 = sub_227D4D908();
  OUTLINED_FUNCTION_0_20(5);
  v30 = sub_227D4D908();
  v48 = 6;
  v18 = sub_227D4D8F8();
  v29 = v16 & 1;
  v47 &= 1u;
  v19 = v30 & 1;
  v20 = v18;
  v21 = v12;
  v23 = v22;
  (*(v8 + 8))(v21, v5);
  *&v34 = v15;
  BYTE8(v34) = v29;
  v24 = v31;
  *&v35 = v32;
  *(&v35 + 1) = v31;
  v25 = v33;
  *&v36 = v33;
  BYTE8(v36) = v47;
  BYTE9(v36) = v19;
  *&v37 = v20;
  *(&v37 + 1) = v23;
  sub_227BA49D8(&v34, &v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38 = v15;
  v39 = v29;
  v40 = v32;
  v41 = v24;
  v42 = v25;
  v43 = v47;
  v44 = v19;
  v45 = v20;
  v46 = v23;
  result = sub_227BA4A10(&v38);
  v26 = v35;
  *a2 = v34;
  a2[1] = v26;
  v27 = v37;
  a2[2] = v36;
  a2[3] = v27;
  return result;
}

unint64_t sub_227BA4984()
{
  result = qword_27D7E7938;
  if (!qword_27D7E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7938);
  }

  return result;
}

uint64_t sub_227BA4A40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7950, &qword_227D54708);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA4984();
  sub_227D4DC08();
  v24 = *v3;
  v23[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  sub_227BA4C90(&qword_27D7E7958);
  sub_227D4DA08();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v23[6] = 1;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v15 = v3[2];
    v23[5] = 2;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9F8();
    v16 = v3[3];
    v17 = v3[4];
    v23[4] = 3;
    sub_227D4D9C8();
    v18 = *(v3 + 40);
    v23[3] = 4;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v19 = *(v3 + 41);
    v23[2] = 5;
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9D8();
    v20 = v3[6];
    v21 = v3[7];
    v23[1] = 6;
    sub_227D4D9C8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_227BA4C90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7940, &qword_227D54700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227BA4CFC()
{
  OUTLINED_FUNCTION_6_4();
  sub_227D4DB58();
  sub_227BA4DB4();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA4D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_227BA5510();

  return sub_227BA2640(a1, a2, &off_283B391B0, v4);
}

unint64_t sub_227BA4DB4()
{
  result = qword_27D7E7960;
  if (!qword_27D7E7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7960);
  }

  return result;
}

unint64_t sub_227BA4E0C()
{
  result = qword_27D7E7968;
  if (!qword_27D7E7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7968);
  }

  return result;
}

unint64_t sub_227BA4E64()
{
  result = qword_27D7E7970;
  if (!qword_27D7E7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7970);
  }

  return result;
}

unint64_t sub_227BA4EBC()
{
  result = qword_27D7E7978;
  if (!qword_27D7E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7978);
  }

  return result;
}

unint64_t sub_227BA4F3C()
{
  result = qword_27D7E7980;
  if (!qword_27D7E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7980);
  }

  return result;
}

unint64_t sub_227BA4FBC()
{
  result = qword_27D7E7988;
  if (!qword_27D7E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7988);
  }

  return result;
}

unint64_t sub_227BA5010()
{
  result = qword_27D7E7990;
  if (!qword_27D7E7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7990);
  }

  return result;
}

unint64_t sub_227BA5068()
{
  result = qword_27D7E7998;
  if (!qword_27D7E7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7998);
  }

  return result;
}

uint64_t sub_227BA50BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA5510();
  result = sub_227BA2350(a1, &off_283B391B0, v4, &off_283B391F0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA510C(uint64_t a1)
{
  result = sub_227BA5134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA5134()
{
  result = qword_27D7E79A0;
  if (!qword_27D7E79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79A0);
  }

  return result;
}

uint64_t sub_227BA51B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA51F0()
{
  result = qword_27D7E79A8;
  if (!qword_27D7E79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79A8);
  }

  return result;
}

unint64_t sub_227BA5244()
{
  result = qword_27D7E79B0;
  if (!qword_27D7E79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79B0);
  }

  return result;
}

uint64_t sub_227BA5298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA5510();

  return sub_227BA24C0(a1, a2, a3, &off_283B391B0, v6);
}

double sub_227BA52FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_227BA4610(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_227BA5358(uint64_t a1)
{
  v2 = sub_227BA5010();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA5394(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA53D4(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Achievement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA5510()
{
  result = qword_27D7E79B8;
  if (!qword_27D7E79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79B8);
  }

  return result;
}

BOOL sub_227BA5578()
{
  v0 = sub_227D4D868();

  return v0 != 0;
}

uint64_t sub_227BA55F0(unsigned __int8 a1, char a2)
{
  v2 = 0x5941445F454E4FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x41445F4545524854;
    }

    else
    {
      v4 = 0x4B4545575F454E4FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000005359;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x5941445F454E4FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x41445F4545524854;
    }

    else
    {
      v2 = 0x4B4545575F454E4FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000005359;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

BOOL sub_227BA56F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BA5578();
  *a2 = result;
  return result;
}

uint64_t sub_227BA575C()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA74A0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BA57A4()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA74A0();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227BA57E0()
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

uint64_t sub_227BA584C()
{
  sub_227D4D048();
}

uint64_t sub_227BA5900()
{
  sub_227D4DB58();
  sub_227D4D048();
  return sub_227D4DB98();
}

uint64_t sub_227BA5958()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BA59FC()
{
  v0 = sub_227D4D868();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227BA5A54(char a1)
{
  if (!a1)
  {
    return 0x5941445F454E4FLL;
  }

  if (a1 == 1)
  {
    return 0x41445F4545524854;
  }

  return 0x4B4545575F454E4FLL;
}

uint64_t sub_227BA5ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BA59FC();
  *a2 = result;
  return result;
}

uint64_t sub_227BA5AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BA5A54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BA5B28()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA744C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BA5B70()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BA744C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227BA5BC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA5BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_227BA5C28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_227D4CE58();
  return v1;
}

uint64_t sub_227BA5C58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_227BA5C90@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_227BA5CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000227D75A20 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_5_6() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x6261746165706572 && a2 == 0xEA0000000000656CLL;
        if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_7_8() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2)
          {

            return 5;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_5_1();

            if (v13)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227BA5E38(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 3:
      result = 0x6261746165706572;
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_8();
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_227BA5EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA5CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA5F2C(uint64_t a1)
{
  v2 = sub_227BA61EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA5F68(uint64_t a1)
{
  v2 = sub_227BA61EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA5FA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C0, &qword_227D54A38);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA61EC();
  sub_227D4DC08();
  v22 = *v3;
  v21[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C8, &qword_227D54A40);
  sub_227BA67F4(&qword_27D7E79D0, sub_227BA6240);
  OUTLINED_FUNCTION_5_0();
  sub_227D4DA08();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v21[6] = 1;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9D8();
    v15 = v3[2];
    v16 = v3[3];
    v21[5] = 2;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
    v17 = *(v3 + 32);
    v21[4] = 3;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9D8();
    v21[3] = 4;
    sub_227BA6294();
    OUTLINED_FUNCTION_5_0();
    sub_227D4DA08();
    v18 = v3[5];
    v19 = v3[6];
    v21[2] = 5;
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227BA61EC()
{
  result = qword_27D7F1AF0[0];
  if (!qword_27D7F1AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F1AF0);
  }

  return result;
}

unint64_t sub_227BA6240()
{
  result = qword_27D7E79D8;
  if (!qword_27D7E79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79D8);
  }

  return result;
}

unint64_t sub_227BA6294()
{
  result = qword_27D7E79E0;
  if (!qword_27D7E79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79E0);
  }

  return result;
}

uint64_t sub_227BA62E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_227D4DB58();
  sub_227BA67A0();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BA6354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79F0, &qword_227D54A48);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA61EC();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E79C8, &qword_227D54A40);
  v32 = 0;
  sub_227BA67F4(&qword_27D7E79F8, sub_227BA686C);
  sub_227D4D938();
  v14 = v33;
  v31 = 1;
  OUTLINED_FUNCTION_4_10();
  v26 = sub_227D4D908();
  v30 = 2;
  OUTLINED_FUNCTION_4_10();
  v24 = sub_227D4D8F8();
  v25 = v15;
  v29 = 3;
  OUTLINED_FUNCTION_4_10();
  v23 = sub_227D4D908();
  v28 = 4;
  sub_227BA68C0();
  sub_227D4D938();
  v27 = 5;
  OUTLINED_FUNCTION_4_10();
  v16 = sub_227D4D8F8();
  v18 = v17;
  v26 &= 1u;
  v23 &= 1u;
  v19 = v16;
  (*(v8 + 8))(v12, v5);
  sub_227D4CE58();
  v20 = v25;
  sub_227D4CE58();
  sub_227D4CE58();
  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v14;
  *(a2 + 8) = v26;
  *(a2 + 16) = v24;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v19;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_227BA66C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227BA73F8();

  return sub_227BA2640(a1, a2, &off_283B39458, v4);
}

uint64_t sub_227BA6720()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[6];
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA67A0()
{
  result = qword_27D7E79E8;
  if (!qword_27D7E79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E79E8);
  }

  return result;
}

uint64_t sub_227BA67F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E79C8, &qword_227D54A40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BA686C()
{
  result = qword_27D7E7A00;
  if (!qword_27D7E7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A00);
  }

  return result;
}

unint64_t sub_227BA68C0()
{
  result = qword_27D7E7A08;
  if (!qword_27D7E7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A08);
  }

  return result;
}

unint64_t sub_227BA6948()
{
  result = qword_27D7E7A20;
  if (!qword_27D7E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A20);
  }

  return result;
}

uint64_t sub_227BA69CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_227BA6A24()
{
  result = qword_27D7E7A30;
  if (!qword_27D7E7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A30);
  }

  return result;
}

unint64_t sub_227BA6AA4()
{
  result = qword_27D7E7A38;
  if (!qword_27D7E7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A38);
  }

  return result;
}

unint64_t sub_227BA6B24()
{
  result = qword_27D7E7A40;
  if (!qword_27D7E7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A40);
  }

  return result;
}

unint64_t sub_227BA6B78()
{
  result = qword_27D7E7A48;
  if (!qword_27D7E7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A48);
  }

  return result;
}

unint64_t sub_227BA6BD0()
{
  result = qword_27D7E7A50;
  if (!qword_27D7E7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A50);
  }

  return result;
}

uint64_t sub_227BA6C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA73F8();
  result = sub_227BA2350(a1, &off_283B39458, v4, &off_283B39498);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA6C74(uint64_t a1)
{
  result = sub_227BA6C9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA6C9C()
{
  result = qword_27D7E7A58;
  if (!qword_27D7E7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A58);
  }

  return result;
}

uint64_t sub_227BA6D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA6D58()
{
  result = qword_27D7E7A60;
  if (!qword_27D7E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A60);
  }

  return result;
}

unint64_t sub_227BA6DAC()
{
  result = qword_27D7E7A68;
  if (!qword_27D7E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A68);
  }

  return result;
}

uint64_t sub_227BA6E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA73F8();

  return sub_227BA24C0(a1, a2, a3, &off_283B39458, v6);
}

double sub_227BA6E64@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_227BA6354(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_227BA6ECC(uint64_t a1)
{
  v2 = sub_227BA6B78();

  return sub_227BA2760(a1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_227BA6F24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA6F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Constants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_227BA7010(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_227BA70B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227BA7190(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_227BA7218(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA72F4()
{
  result = qword_27D7F2700[0];
  if (!qword_27D7F2700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2700);
  }

  return result;
}

unint64_t sub_227BA734C()
{
  result = qword_27D7F2810;
  if (!qword_27D7F2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F2810);
  }

  return result;
}

unint64_t sub_227BA73A4()
{
  result = qword_27D7F2818[0];
  if (!qword_27D7F2818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2818);
  }

  return result;
}

unint64_t sub_227BA73F8()
{
  result = qword_27D7E7A70;
  if (!qword_27D7E7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A70);
  }

  return result;
}

unint64_t sub_227BA744C()
{
  result = qword_27D7E7A78;
  if (!qword_27D7E7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A78);
  }

  return result;
}

unint64_t sub_227BA74A0()
{
  result = qword_27D7E7A80;
  if (!qword_27D7E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A80);
  }

  return result;
}

uint64_t sub_227BA7570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_227D4DA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000227D75A40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_227D4DA78();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227BA7640(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x44496C61636F6CLL;
  }
}

uint64_t sub_227BA7684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA7570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA76AC(uint64_t a1)
{
  v2 = sub_227BA7890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA76E8(uint64_t a1)
{
  v2 = sub_227BA7890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA7724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7A88, &qword_227D54FE0);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA7890();
  sub_227D4DC08();
  v19 = 0;
  sub_227D4D9C8();
  if (!v5)
  {
    v18 = 1;
    sub_227D4D9C8();
  }

  return (*(v10 + 8))(v14, v7);
}

unint64_t sub_227BA7890()
{
  result = qword_27D7F28A0[0];
  if (!qword_27D7F28A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F28A0);
  }

  return result;
}

uint64_t sub_227BA78E4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7A90, qword_227D54FE8);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA7890();
  sub_227D4DBF8();
  if (!v1)
  {
    v7 = sub_227D4D8F8();
    sub_227D4D8F8();
    v9 = OUTLINED_FUNCTION_0_22();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_227BA7AD0()
{
  result = qword_27D7E7A98;
  if (!qword_27D7E7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7A98);
  }

  return result;
}

unint64_t sub_227BA7B24()
{
  result = qword_27D7E7AA0;
  if (!qword_27D7E7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AA0);
  }

  return result;
}

unint64_t sub_227BA7B78(uint64_t a1)
{
  result = sub_227BA7BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA7BA0()
{
  result = qword_27D7E7AA8;
  if (!qword_27D7E7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AA8);
  }

  return result;
}

uint64_t sub_227BA7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA7C5C()
{
  result = qword_27D7E7AB0;
  if (!qword_27D7E7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AB0);
  }

  return result;
}

unint64_t sub_227BA7CB0()
{
  result = qword_27D7E7AB8;
  if (!qword_27D7E7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AB8);
  }

  return result;
}

uint64_t sub_227BA7D04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BA78E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_227BA7D54(uint64_t a1)
{
  v2 = sub_227BA7B24();

  return sub_227BA2760(a1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BA7D9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA7DDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ChallengeLeaderboardRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BA7F0C()
{
  result = qword_27D7F2CB0[0];
  if (!qword_27D7F2CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2CB0);
  }

  return result;
}

unint64_t sub_227BA7F64()
{
  result = qword_27D7F2DC0;
  if (!qword_27D7F2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F2DC0);
  }

  return result;
}

unint64_t sub_227BA7FBC()
{
  result = qword_27D7F2DC8[0];
  if (!qword_27D7F2DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2DC8);
  }

  return result;
}

uint64_t sub_227BA8034()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_227BA8040(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_227BA8050()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_227BA805C(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_227BA807C(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_227BA80D8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227BA8104()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

void *sub_227BA8178@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18[128] = a3 & 1;
  v18[120] = a5 & 1;
  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LOBYTE(__src[4]) = a5 & 1;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  __src[8] = a10;
  __src[9] = a11;
  LOBYTE(__src[10]) = a12;
  __src[11] = a13;
  __src[12] = a14;
  __src[13] = a15;
  __src[14] = a16;
  v20[0] = a1;
  v21 = a2;
  v22 = a3 & 1;
  v23 = a4;
  v24 = a5 & 1;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  sub_227BA823C(__src, v18);
  sub_227BA8274(v20);
  return memcpy(a9, __src, 0x78uLL);
}

uint64_t sub_227BA82A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000227D75A60 == a2;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000227D75A80 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C79745379616C70 && a2 == 0xE900000000000065;
        if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
          if (v9 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == OUTLINED_FUNCTION_5_6() && a2 == v10;
            if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == 0xD000000000000011 && 0x8000000227D75AA0 == a2;
              if (v12 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2;
                if (v13 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000023 && 0x8000000227D75AC0 == a2)
                {

                  return 8;
                }

                else
                {
                  v15 = OUTLINED_FUNCTION_5_1();

                  if (v15)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_227BA84F8(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C79745379616C70;
      break;
    case 4:
      result = 0x69747265706F7270;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BA861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA82A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA8650(uint64_t a1)
{
  v2 = sub_227BA8910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA868C(uint64_t a1)
{
  v2 = sub_227BA8910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BA86C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7AC0, &unk_227D55268);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA8910();
  sub_227D4DC08();
  v14 = *v3;
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_11_7();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = v3[16];
    OUTLINED_FUNCTION_1_1(1);
    sub_227D4D998();
    v17 = *(v3 + 3);
    v18 = v3[32];
    OUTLINED_FUNCTION_1_1(2);
    sub_227D4D998();
    v19 = *(v3 + 5);
    v20 = *(v3 + 6);
    OUTLINED_FUNCTION_1_1(3);
    sub_227D4D978();
    v30 = *(v3 + 7);
    v29[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    sub_227BA4C90(&qword_27D7E7958);
    sub_227D4DA08();
    v21 = *(v3 + 8);
    v22 = *(v3 + 9);
    OUTLINED_FUNCTION_1_1(5);
    sub_227D4D9C8();
    v23 = v3[80];
    LOBYTE(v30) = 6;
    OUTLINED_FUNCTION_11_7();
    v24 = *(v3 + 11);
    v25 = *(v3 + 12);
    OUTLINED_FUNCTION_1_1(7);
    sub_227D4D9C8();
    v26 = *(v3 + 13);
    v27 = *(v3 + 14);
    OUTLINED_FUNCTION_1_1(8);
    sub_227D4D978();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_227BA8910()
{
  result = qword_27D7F2E50[0];
  if (!qword_27D7F2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F2E50);
  }

  return result;
}

uint64_t sub_227BA8964()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BA8F30();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void *sub_227BA89C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7AD0, &qword_227D55278);
  v5 = OUTLINED_FUNCTION_9(v39);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BA8910();
  sub_227D4DBF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    v36 = sub_227D4D908();
    OUTLINED_FUNCTION_0_23(1);
    v9 = sub_227D4D8C8();
    v57 = v10 & 1;
    OUTLINED_FUNCTION_0_23(2);
    v35 = sub_227D4D8C8();
    v11 = v9;
    v56 = v12 & 1;
    OUTLINED_FUNCTION_0_23(3);
    v13 = sub_227D4D8A8();
    v15 = v14;
    v34 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v41[0]) = 4;
    sub_227BA4C90(&qword_27D7E7948);
    sub_227D4D938();
    v33 = v42[0];
    OUTLINED_FUNCTION_0_23(5);
    v32 = sub_227D4D8F8();
    v38 = v16;
    OUTLINED_FUNCTION_0_23(6);
    v30 = sub_227D4D908();
    OUTLINED_FUNCTION_0_23(7);
    v17 = sub_227D4D8F8();
    v19 = v18;
    v29 = v17;
    v58 = 8;
    v20 = sub_227D4D8A8();
    v27 = v21;
    v28 = v20;
    v22 = v36 & 1;
    v26 = v36 & 1;
    v37 = v30 & 1;
    v23 = OUTLINED_FUNCTION_6_5();
    v24(v23);
    LOBYTE(v41[0]) = v22;
    v41[1] = v11;
    v40 = v57;
    LOBYTE(v41[2]) = v57;
    v41[3] = v35;
    v31 = v56;
    LOBYTE(v41[4]) = v56;
    v41[5] = v34;
    v41[6] = v15;
    v41[7] = v33;
    v41[8] = v32;
    v41[9] = v38;
    LOBYTE(v41[10]) = v37;
    v41[11] = v29;
    v41[12] = v19;
    v41[13] = v28;
    v41[14] = v27;
    sub_227BA823C(v41, v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    LOBYTE(v42[0]) = v26;
    v42[1] = v11;
    v43 = v40;
    v44 = v35;
    v45 = v31;
    v46 = v34;
    v47 = v15;
    v48 = v33;
    v49 = v32;
    v50 = v38;
    v51 = v37;
    v52 = v29;
    v53 = v19;
    v54 = v28;
    v55 = v27;
    sub_227BA8274(v42);
    return memcpy(a2, v41, 0x78uLL);
  }
}

uint64_t sub_227BA8E68()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BA9728();

  return sub_227BA2640(v1, v0, &off_283B39890, v2);
}

uint64_t sub_227BA8EC0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BA8F30()
{
  result = qword_27D7E7AC8;
  if (!qword_27D7E7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AC8);
  }

  return result;
}

unint64_t sub_227BA8FB0()
{
  result = qword_27D7E7AD8;
  if (!qword_27D7E7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AD8);
  }

  return result;
}

unint64_t sub_227BA9030()
{
  result = qword_27D7E7AE0;
  if (!qword_27D7E7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AE0);
  }

  return result;
}

unint64_t sub_227BA9084()
{
  result = qword_27D7E7AE8;
  if (!qword_27D7E7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AE8);
  }

  return result;
}

unint64_t sub_227BA90DC()
{
  result = qword_27D7E7AF0;
  if (!qword_27D7E7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AF0);
  }

  return result;
}

uint64_t sub_227BA9130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BA9728();
  result = sub_227BA2350(a1, &off_283B39890, v4, &off_283B398D0);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BA9180(uint64_t a1)
{
  result = sub_227BA91A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BA91A8()
{
  result = qword_27D7E7AF8;
  if (!qword_27D7E7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7AF8);
  }

  return result;
}

uint64_t sub_227BA9228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BA9264()
{
  result = qword_27D7E7B00;
  if (!qword_27D7E7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B00);
  }

  return result;
}

unint64_t sub_227BA92B8()
{
  result = qword_27D7E7B08;
  if (!qword_27D7E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B08);
  }

  return result;
}

uint64_t sub_227BA930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BA9728();

  return sub_227BA24C0(a1, a2, a3, &off_283B39890, v6);
}

void *sub_227BA9370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BA89C8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x78uLL);
  }

  return result;
}

unint64_t sub_227BA93D4(uint64_t a1)
{
  v2 = sub_227BA9084();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BA9418(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BA9458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227BA94C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_227BA9548(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BA9624()
{
  result = qword_27D7F3460[0];
  if (!qword_27D7F3460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F3460);
  }

  return result;
}

unint64_t sub_227BA967C()
{
  result = qword_27D7F3570;
  if (!qword_27D7F3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F3570);
  }

  return result;
}

unint64_t sub_227BA96D4()
{
  result = qword_27D7F3578[0];
  if (!qword_27D7F3578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F3578);
  }

  return result;
}

unint64_t sub_227BA9728()
{
  result = qword_27D7E7B10;
  if (!qword_27D7E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B10);
  }

  return result;
}

uint64_t sub_227BA97B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227BA97E4()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_227BA9818()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227BA9844()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t sub_227BA9898()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227BA98C4()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

void *sub_227BA9918@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    v21 = 0xEA00000000004552;
    v22 = 0x4F43535F54534542;
    v23 = 0xE300000000000000;
    v24 = 4412225;
  }

  else
  {
    v21 = 0x8000000227D75AF0;
    v22 = 0xD000000000000011;
    v23 = 0xE400000000000000;
    v24 = 1129530692;
  }

  __src[0] = a1;
  v25 = 0x524F465F574F4853;
  v26 = a2 & 1;
  LOBYTE(__src[1]) = v26;
  if (a20)
  {
    v25 = 0x524F465F45444948;
  }

  BYTE1(__src[1]) = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a10;
  __src[8] = a11;
  __src[9] = a12;
  __src[10] = a13;
  __src[11] = a14;
  __src[12] = a15;
  __src[13] = a16;
  __src[14] = v24;
  __src[15] = v23;
  __src[16] = v22;
  __src[17] = v21;
  __src[18] = a18;
  __src[19] = a19;
  __src[20] = v25;
  __src[21] = 0xEC0000004C4C415FLL;
  v30 = a1;
  v31 = v26;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v45 = v24;
  v46 = v23;
  v47 = v22;
  v48 = v21;
  v49 = a18;
  v50 = a19;
  v51 = v25;
  v52 = 0xEC0000004C4C415FLL;
  sub_227BA9A88(__src, &v28);
  sub_227BA9AC0(&v30);
  return memcpy(a9, __src, 0xB0uLL);
}

uint64_t sub_227BA9AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227D75990 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766968637261 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000227D75B10 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000227D75B30 == a2;
        if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_15_4() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0xD000000000000013 && 0x8000000227D75B50 == a2;
            if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == OUTLINED_FUNCTION_5_6() && a2 == v12;
              if (v13 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0x6E615265726F6373 && a2 == 0xED0000646E456567;
                if (v14 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0x6E615265726F6373 && a2 == 0xEF74726174536567;
                  if (v15 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = a1 == OUTLINED_FUNCTION_13_8() && a2 == v16;
                    if (v17 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v19 = a1 == OUTLINED_FUNCTION_12_4() && a2 == v18;
                      if (v19 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2;
                        if (v20 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
                        {

                          return 12;
                        }

                        else
                        {
                          v22 = OUTLINED_FUNCTION_5_1();

                          if (v22)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
    }
  }
}

uint64_t sub_227BA9E0C(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = OUTLINED_FUNCTION_15_4();
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = OUTLINED_FUNCTION_5_6();
      break;
    case 7:
    case 8:
      result = 0x6E615265726F6373;
      break;
    case 9:
      result = OUTLINED_FUNCTION_13_8();
      break;
    case 10:
      result = OUTLINED_FUNCTION_12_4();
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x696C696269736976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227BA9F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BA9AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BA9FB4(uint64_t a1)
{
  v2 = sub_227BAA6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BA9FF0(uint64_t a1)
{
  v2 = sub_227BAA6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_227BAA02C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7B18, &unk_227D555C8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAA6E8();
  sub_227D4DBF8();
  if (v2)
  {
    OUTLINED_FUNCTION_11_8();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v55[0]) = 0;
    sub_227BA4C90(&qword_27D7E7948);
    OUTLINED_FUNCTION_7_9();
    sub_227D4D8D8();
    if (v56)
    {
      v51 = v56;
    }

    else
    {
      v51 = sub_227D4CE28();
    }

    OUTLINED_FUNCTION_1_11(1);
    v11 = sub_227D4D908();
    LOBYTE(v55[0]) = 2;
    sub_227BA0D8C();
    OUTLINED_FUNCTION_7_9();
    sub_227D4D8D8();
    v12 = v56;
    OUTLINED_FUNCTION_1_11(3);
    v13 = sub_227D4D8A8();
    LOBYTE(v79) = v11;
    v46 = v14;
    OUTLINED_FUNCTION_1_11(4);
    v15 = sub_227D4D8A8();
    v17 = v16;
    v44 = v15;
    v45 = v13;
    OUTLINED_FUNCTION_1_11(5);
    v18 = sub_227D4D8A8();
    v20 = v19;
    v43 = v18;
    OUTLINED_FUNCTION_1_11(6);
    v42 = sub_227D4D8F8();
    v47 = v21;
    v52 = v20;
    v53 = v17;
    OUTLINED_FUNCTION_1_11(7);
    v22 = sub_227D4D8A8();
    v24 = v23;
    v41 = v22;
    OUTLINED_FUNCTION_1_11(8);
    v40 = sub_227D4D8A8();
    v26 = v25;
    OUTLINED_FUNCTION_7_9();
    v27 = sub_227D4D8F8();
    v50 = v28;
    v29 = v27;
    OUTLINED_FUNCTION_7_9();
    v39 = sub_227D4D8F8();
    v49 = v30;
    LOBYTE(v56) = 11;
    OUTLINED_FUNCTION_7_9();
    v38 = sub_227D4D8F8();
    v48 = v31;
    v80 = 12;
    OUTLINED_FUNCTION_7_9();
    v36 = sub_227D4D8A8();
    v37 = v32;
    v33 = v79 & 1;
    v79 &= 1u;
    v34 = OUTLINED_FUNCTION_3_10();
    v35(v34);
    v55[0] = v51;
    LOBYTE(v55[1]) = v33;
    BYTE1(v55[1]) = v12;
    v55[2] = v45;
    v55[3] = v46;
    v55[4] = v44;
    v55[5] = v53;
    v55[6] = v43;
    v55[7] = v52;
    v55[8] = v42;
    v55[9] = v47;
    v55[10] = v41;
    v55[11] = v24;
    v55[12] = v40;
    v55[13] = v26;
    v55[14] = v29;
    v55[15] = v50;
    v55[16] = v39;
    v55[17] = v49;
    v55[18] = v38;
    v55[19] = v48;
    v55[20] = v36;
    v55[21] = v37;
    sub_227BA9A88(v55, &v56);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v56 = v51;
    v57 = v79;
    v58 = v12;
    v59 = v45;
    v60 = v46;
    v61 = v44;
    v62 = v53;
    v63 = v43;
    v64 = v52;
    v65 = v42;
    v66 = v47;
    v67 = v41;
    v68 = v24;
    v69 = v40;
    v70 = v26;
    v71 = v29;
    v72 = v50;
    v73 = v39;
    v74 = v49;
    v75 = v38;
    v76 = v48;
    v77 = v36;
    v78 = v37;
    sub_227BA9AC0(&v56);
    return memcpy(a2, v55, 0xB0uLL);
  }
}

unint64_t sub_227BAA6E8()
{
  result = qword_27D7E7B20;
  if (!qword_27D7E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B20);
  }

  return result;
}

uint64_t sub_227BAA73C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7B28, &qword_227D555D8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v36 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAA6E8();
  sub_227D4DC08();
  v37 = *v3;
  HIBYTE(v36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  sub_227BA4C90(&qword_27D7E7958);
  sub_227D4DA08();
  if (!v2)
  {
    v14 = *(v3 + 8);
    LOBYTE(v37) = 1;
    sub_227D4D9D8();
    LOBYTE(v37) = *(v3 + 9);
    HIBYTE(v36) = 2;
    sub_227BA0748();
    sub_227D4D9A8();
    v15 = v3[2];
    v16 = v3[3];
    OUTLINED_FUNCTION_1_1(3);
    sub_227D4D978();
    v17 = v3[4];
    v18 = v3[5];
    OUTLINED_FUNCTION_1_1(4);
    sub_227D4D978();
    v19 = v3[6];
    v20 = v3[7];
    OUTLINED_FUNCTION_1_1(5);
    sub_227D4D978();
    v21 = v3[8];
    v22 = v3[9];
    OUTLINED_FUNCTION_1_1(6);
    sub_227D4D9C8();
    v23 = v3[10];
    v24 = v3[11];
    OUTLINED_FUNCTION_1_1(7);
    sub_227D4D978();
    v25 = v3[12];
    v26 = v3[13];
    OUTLINED_FUNCTION_1_1(8);
    sub_227D4D978();
    v27 = v3[14];
    v28 = v3[15];
    OUTLINED_FUNCTION_1_1(9);
    sub_227D4D9C8();
    v29 = v3[16];
    v30 = v3[17];
    OUTLINED_FUNCTION_1_1(10);
    sub_227D4D9C8();
    v31 = v3[18];
    v32 = v3[19];
    OUTLINED_FUNCTION_1_1(11);
    sub_227D4D9C8();
    v33 = v3[20];
    v34 = v3[21];
    OUTLINED_FUNCTION_1_1(12);
    sub_227D4D978();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_227BAAA14()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227BAAB48();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BAAA80()
{
  OUTLINED_FUNCTION_104_0();
  v2 = sub_227BAB770();

  return sub_227BA2640(v1, v0, &off_283B39A50, v2);
}

uint64_t sub_227BAAAD8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BAAB48()
{
  result = qword_27D7E7B30;
  if (!qword_27D7E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B30);
  }

  return result;
}

uint64_t sub_227BAAB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BAB770();
  result = sub_227BA2350(a1, &off_283B39A50, v4, &off_283B39A90);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_227BAABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BAB770();

  return sub_227BA24C0(a1, a2, a3, &off_283B39A50, v6);
}

void *sub_227BAAC50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BAA02C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0xB0uLL);
  }

  return result;
}

unint64_t sub_227BAACB4(uint64_t a1)
{
  v2 = sub_227BAB310();

  return sub_227BA2760(a1, v2);
}

uint64_t sub_227BAACF0()
{
  if (*(v0 + 112) == 4412225 && *(v0 + 120) == 0xE300000000000000)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11();
  }
}

uint64_t sub_227BAAD20(char a1)
{
  if (a1)
  {
    v2 = 4412225;
  }

  else
  {
    v2 = 1129530692;
  }

  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

uint64_t (*sub_227BAAD74(uint64_t a1))(uint64_t *a1)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = v1;
  *(a1 + 8) = v4;
  if (v3 == 4412225 && v4 == 0xE300000000000000)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_227D4DA78();
  }

  *(a1 + 16) = v6 & 1;
  return sub_227BAADF4;
}

uint64_t sub_227BAADF4(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 1129530692;
  if (v2)
  {
    v4 = 4412225;
  }

  v5 = 0xE400000000000000;
  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_227BAAE3C()
{
  v0 = OUTLINED_FUNCTION_20_2();
  if (v0 == v3 && v1 == v2)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11();
  }
}

uint64_t sub_227BAAE6C(char a1)
{
  if (a1)
  {
    v2 = 0x4F43535F54534542;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a1)
  {
    v3 = 0xEA00000000004552;
  }

  else
  {
    v3 = 0x8000000227D75AF0;
  }

  v4 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  return result;
}

uint64_t (*sub_227BAAED8(uint64_t a1))(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_20_2();
  *a1 = v1;
  *(a1 + 8) = v4;
  if (v3 == v6 && v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  *(a1 + 16) = v8 & 1;
  return sub_227BAAF48;
}

uint64_t sub_227BAAF48(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 0x8000000227D75AF0;
  v5 = 0xD000000000000011;
  if (v2)
  {
    v5 = 0x4F43535F54534542;
    v4 = 0xEA00000000004552;
  }

  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  return result;
}

uint64_t sub_227BAAFA8()
{
  if (!*(v0 + 168))
  {
    return 0;
  }

  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_16_5();
  v4 = v4 && v2 == v3;
  if (v4)
  {
    return OUTLINED_FUNCTION_51();
  }

  else
  {
    return OUTLINED_FUNCTION_4_11();
  }
}

uint64_t sub_227BAAFE0(char a1)
{
  if (a1)
  {
    v2 = 0x524F465F45444948;
  }

  else
  {
    v2 = 0x524F465F574F4853;
  }

  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = 0xEC0000004C4C415FLL;
  return result;
}

uint64_t (*sub_227BAB03C(uint64_t a1))(uint64_t *a1)
{
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  *a1 = v1;
  *(a1 + 8) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_16_5();
    v7 = v7 && v5 == v6;
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_227D4DA78();
    }
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 16) = v8 & 1;
  return sub_227BAB0B0;
}

uint64_t sub_227BAB0B0(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_17_8(a1);
  v4 = 0x524F465F574F4853;
  if (v2)
  {
    v4 = 0x524F465F45444948;
  }

  *(v1 + 160) = v4;
  *(v1 + 168) = 0xEC0000004C4C415FLL;
  return result;
}

unint64_t sub_227BAB10C()
{
  result = qword_27D7E7B38;
  if (!qword_27D7E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B38);
  }

  return result;
}

unint64_t sub_227BAB164()
{
  result = qword_27D7E7B40;
  if (!qword_27D7E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B40);
  }

  return result;
}

unint64_t sub_227BAB1BC()
{
  result = qword_27D7E7B48;
  if (!qword_27D7E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B48);
  }

  return result;
}

unint64_t sub_227BAB23C()
{
  result = qword_27D7E7B50;
  if (!qword_27D7E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B50);
  }

  return result;
}

unint64_t sub_227BAB2BC()
{
  result = qword_27D7E7B58;
  if (!qword_27D7E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B58);
  }

  return result;
}

unint64_t sub_227BAB310()
{
  result = qword_27D7E7B60;
  if (!qword_27D7E7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B60);
  }

  return result;
}

unint64_t sub_227BAB368()
{
  result = qword_27D7E7B68;
  if (!qword_27D7E7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B68);
  }

  return result;
}

unint64_t sub_227BAB3BC(uint64_t a1)
{
  result = sub_227BAB3E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BAB3E4()
{
  result = qword_27D7E7B70;
  if (!qword_27D7E7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B70);
  }

  return result;
}

uint64_t sub_227BAB464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BAB4A0()
{
  result = qword_27D7E7B78;
  if (!qword_27D7E7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B78);
  }

  return result;
}

unint64_t sub_227BAB4F4()
{
  result = qword_27D7E7B80;
  if (!qword_27D7E7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B80);
  }

  return result;
}

uint64_t sub_227BAB550(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BAB590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Leaderboard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Leaderboard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BAB770()
{
  result = qword_27D7E7B88;
  if (!qword_27D7E7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B88);
  }

  return result;
}

uint64_t sub_227BAB7F0()
{
  v0 = sub_227D4DAC8();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_227BAB850(char a1)
{
  result = 0x52454745544E49;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x4F505F59454E4F4DLL;
      break;
    case 10:
    case 16:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x4F445F59454E4F4DLL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x55455F59454E4F4DLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x52465F59454E4F4DLL;
      break;
    case 17:
      result = 0x524B5F59454E4F4DLL;
      break;
    case 18:
      result = 0x45595F59454E4F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BABA58(char a1, char a2)
{
  v3 = sub_227BAB850(a1);
  v5 = v4;
  if (v3 == sub_227BAB850(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BABADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227BAB7F0();
  *a2 = result;
  return result;
}

unint64_t sub_227BABB0C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_227BAB850(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227BABB3C()
{
  result = qword_27D7E7B90;
  if (!qword_27D7E7B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7B98, qword_227D559A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7B90);
  }

  return result;
}

uint64_t sub_227BABBB0()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BABF1C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227BABBF8()
{
  OUTLINED_FUNCTION_0_21();
  sub_227BABF1C();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

unint64_t sub_227BABC34()
{
  result = qword_27D7E7BA0;
  if (!qword_27D7E7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BA0);
  }

  return result;
}

uint64_t sub_227BABC90(char a1)
{
  sub_227D4DB58();
  sub_227BAB850(a1);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BABCFC(uint64_t a1, char a2)
{
  sub_227BAB850(a2);
  sub_227D4D048();
}

uint64_t getEnumTagSinglePayload for LeaderboardEntryFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardEntryFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227BABEBC(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227BAB850(a2);
  sub_227D4D048();

  return sub_227D4DB98();
}

unint64_t sub_227BABF1C()
{
  result = qword_27D7E7BA8;
  if (!qword_27D7E7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BA8);
  }

  return result;
}

uint64_t sub_227BABF84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xED0000656D614E65;
  if (v4 || (sub_227D4DA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000227D759D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_227D4DA78();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227BAC05C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_227BAC0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BABF84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BAC0D4(uint64_t a1)
{
  v2 = sub_227BAC2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BAC110(uint64_t a1)
{
  v2 = sub_227BAC2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BAC14C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7BB0, &qword_227D55AB8);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAC2B8();
  sub_227D4DC08();
  v19 = 0;
  sub_227D4D9C8();
  if (!v5)
  {
    v18 = 1;
    sub_227D4D9C8();
  }

  return (*(v10 + 8))(v14, v7);
}

unint64_t sub_227BAC2B8()
{
  result = qword_27D7F4090[0];
  if (!qword_27D7F4090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F4090);
  }

  return result;
}

uint64_t sub_227BAC30C()
{
  sub_227D4DB58();
  sub_227BAC600();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227BAC368(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7BC0, &qword_227D55AC0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAC2B8();
  sub_227D4DBF8();
  if (!v1)
  {
    v7 = sub_227D4D8F8();
    sub_227D4D8F8();
    v9 = OUTLINED_FUNCTION_0_22();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_227BAC530()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_227BAC30C();
}

uint64_t sub_227BAC53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227BACCC0();

  return sub_227BA2640(a1, a2, &off_283B39ED0, v4);
}

uint64_t sub_227BAC598()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227BAC600()
{
  result = qword_27D7E7BB8;
  if (!qword_27D7E7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BB8);
  }

  return result;
}

unint64_t sub_227BAC680()
{
  result = qword_27D7E7BC8;
  if (!qword_27D7E7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BC8);
  }

  return result;
}

unint64_t sub_227BAC700()
{
  result = qword_27D7E7BD0;
  if (!qword_27D7E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BD0);
  }

  return result;
}

unint64_t sub_227BAC754()
{
  result = qword_27D7E7BD8;
  if (!qword_27D7E7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BD8);
  }

  return result;
}

unint64_t sub_227BAC7AC()
{
  result = qword_27D7E7BE0;
  if (!qword_27D7E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BE0);
  }

  return result;
}

uint64_t sub_227BAC800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227BACCC0();
  result = sub_227BA2350(a1, &off_283B39ED0, v4, &off_283B39F10);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_227BAC850(uint64_t a1)
{
  result = sub_227BAC878();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BAC878()
{
  result = qword_27D7E7BE8;
  if (!qword_27D7E7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BE8);
  }

  return result;
}

uint64_t sub_227BAC8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BAC934()
{
  result = qword_27D7E7BF0;
  if (!qword_27D7E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BF0);
  }

  return result;
}

unint64_t sub_227BAC988()
{
  result = qword_27D7E7BF8;
  if (!qword_27D7E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7BF8);
  }

  return result;
}

uint64_t sub_227BAC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227BACCC0();

  return sub_227BA24C0(a1, a2, a3, &off_283B39ED0, v6);
}

uint64_t sub_227BACA40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BAC368(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_227BACA90(uint64_t a1)
{
  v2 = sub_227BAC754();

  return sub_227BA2760(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BACBBC()
{
  result = qword_27D7F46A0[0];
  if (!qword_27D7F46A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F46A0);
  }

  return result;
}

unint64_t sub_227BACC14()
{
  result = qword_27D7F47B0;
  if (!qword_27D7F47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F47B0);
  }

  return result;
}

unint64_t sub_227BACC6C()
{
  result = qword_27D7F47B8[0];
  if (!qword_27D7F47B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F47B8);
  }

  return result;
}

unint64_t sub_227BACCC0()
{
  result = qword_27D7E7C00;
  if (!qword_27D7E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C00);
  }

  return result;
}

uint64_t sub_227BACD18(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_227BACD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_227D4DA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227D75D20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_227D4DA78();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227BACE14(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x44496C61636F6CLL;
  }
}

uint64_t sub_227BACE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227BACD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227BACE80(uint64_t a1)
{
  v2 = sub_227BAD0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227BACEBC(uint64_t a1)
{
  v2 = sub_227BAD0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227BACEF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7C08, &unk_227D55DF0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAD0B4();
  sub_227D4DC08();
  v18 = 0;
  sub_227D4D9C8();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227BAD30C(&qword_27D7E7C10);
    sub_227D4DA08();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_227BAD0B4()
{
  result = qword_27D7F4840[0];
  if (!qword_27D7F4840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F4840);
  }

  return result;
}

uint64_t sub_227BAD108(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7C18, &qword_227D55E00);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227BAD0B4();
  sub_227D4DBF8();
  if (!v1)
  {
    v7 = sub_227D4D8F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227BAD30C(&qword_27D7E7C20);
    sub_227D4D938();
    v9 = OUTLINED_FUNCTION_0_24();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_227BAD30C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E7710, &qword_227D531D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BAD3A4()
{
  result = qword_27D7E7C28;
  if (!qword_27D7E7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C28);
  }

  return result;
}

unint64_t sub_227BAD3F8()
{
  result = qword_27D7E7C30;
  if (!qword_27D7E7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C30);
  }

  return result;
}

unint64_t sub_227BAD44C(uint64_t a1)
{
  result = sub_227BAD474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227BAD474()
{
  result = qword_27D7E7C38;
  if (!qword_27D7E7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C38);
  }

  return result;
}

uint64_t sub_227BAD4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227BAD530()
{
  result = qword_27D7E7C40;
  if (!qword_27D7E7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C40);
  }

  return result;
}

unint64_t sub_227BAD584()
{
  result = qword_27D7E7C48;
  if (!qword_27D7E7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E7C48);
  }

  return result;
}

uint64_t sub_227BAD5D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227BAD108(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_227BAD628(uint64_t a1)
{
  v2 = sub_227BAD3F8();

  return sub_227BA2760(a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_227BAD678(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227BAD6B8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LeaderboardSetMemberships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227BAD7E8()
{
  result = qword_27D7F4C50[0];
  if (!qword_27D7F4C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F4C50);
  }

  return result;
}

unint64_t sub_227BAD840()
{
  result = qword_27D7F4D60;
  if (!qword_27D7F4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F4D60);
  }

  return result;
}

unint64_t sub_227BAD898()
{
  result = qword_27D7F4D68[0];
  if (!qword_27D7F4D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F4D68);
  }

  return result;
}

uint64_t sub_227BAD8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  v11 = (*(a3 + 16))(a2, a3);
  (*(v6 + 8))(a1, a2);
  return v11;
}

uint64_t sub_227BADA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_227D4D4F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  sub_227BADC50(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  v13 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v13 ^ 1u, 1, AssociatedTypeWitness);
  LOBYTE(a4) = (*(a4 + 24))(v12, a3, a4);
  (*(v9 + 8))(v12, v8);
  return a4 & 1;
}

uint64_t sub_227BADC50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C80, &unk_227D4F780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BADCC0(uint64_t a1)
{
  if (v1[4])
  {
    v3 = v1[3];
  }

  else
  {
    sub_227D4D668();

    v8[0] = 0xD000000000000017;
    v8[1] = 0x8000000227D75D40;
    v4 = v1[1];
    v9 = *v1;
    v5 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v5);

    MEMORY[0x22AAA5DA0](0x20646E6120, 0xE500000000000000);
    v9 = v4;
    v6 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v6);

    v3 = 0xD000000000000017;
  }

  (*(*(a1 - 8) + 16))(v8, v1, a1);
  return v3;
}

uint64_t sub_227BADE08(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_227D4D4F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return *(v2 + 16);
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
    v18 = *v2;
    v17 = *(v2 + 8);
    v19 = *(a2 + 24);
    v20 = sub_227D4D3A8();
    (*(v12 + 8))(v15, v5);
    return v20 >= v18 && v17 >= v20;
  }
}

uint64_t sub_227BADFF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a5;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  return result;
}

unint64_t sub_227BAE008(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_227BADCC0(a1);
}

uint64_t sub_227BAE048()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227BAE084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_227BAE0D8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_227BAE17C(uint64_t a1)
{
  v3 = (v1 + *(a1 + 40));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    sub_227D4D668();
    MEMORY[0x22AAA5DA0](0xD000000000000016, 0x8000000227D75D60);
    v6 = v1 + *(a1 + 36);
    v7 = *(a1 + 16);
    sub_227D4DA58();
    MEMORY[0x22AAA5DA0](0x20646E6120, 0xE500000000000000);
    v8 = *(a1 + 24);
    v9 = *(sub_227D4CF28() + 36);
    sub_227D4DA58();
    v4 = 0;
  }

  sub_227D4CE58();
  return v4;
}

uint64_t sub_227BAE274(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_227D4D4F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v16 = *v2;
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
    v17 = *(a2 + 36);
    v18 = *(a2 + 24);
    sub_227D4CF28();
    v16 = sub_227D4CF18();
    (*(v12 + 8))(v15, v5);
  }

  return v16 & 1;
}

uint64_t sub_227BAE460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v10 = type metadata accessor for RangeValidator();
  v11 = *(v10 + 36);
  v12 = sub_227D4CF28();
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  v14 = &a5[*(v10 + 40)];
  *v14 = a2;
  v14[1] = a3;
  *a5 = a4;
  return result;
}

void sub_227BAE54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_227D4CF28();
  if (v3 <= 0x3F)
  {
    sub_227BAE9F4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_227BAE5E4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = ((*(*(v4 - 8) + 64) + v7) & ~v7) + *(*(v4 - 8) + 64);
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *(((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_227BAE754(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + v10) & ~v10) + *(*(v6 - 8) + 64);
  v12 = ((v11 + ((v10 + 1) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = (&a1[v10 + 1] & ~v10);
          if (v8 < 0x7FFFFFFE)
          {
            v23 = (&v19[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v23 = 0;
              v23[1] = 0;
              *v23 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v23[1] = a2;
            }
          }

          else if (v8 >= a2)
          {
            v24 = &a1[v10 + 1] & ~v10;

            __swift_storeEnumTagSinglePayload(v24, a2, v8, v6);
          }

          else
          {
            if (v11 <= 3)
            {
              v20 = ~(-1 << (8 * v11));
            }

            else
            {
              v20 = -1;
            }

            if (v11)
            {
              v21 = v20 & (~v8 + a2);
              if (v11 <= 3)
              {
                v22 = v11;
              }

              else
              {
                v22 = 4;
              }

              bzero(v19, v11);
              switch(v22)
              {
                case 2:
                  *v19 = v21;
                  break;
                case 3:
                  *v19 = v21;
                  v19[2] = BYTE2(v21);
                  break;
                case 4:
                  *v19 = v21;
                  break;
                default:
                  *v19 = v21;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_227BAE9F4()
{
  if (!qword_280E7A820)
  {
    v0 = sub_227D4D4F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7A820);
    }
  }
}

uint64_t sub_227BAEA44(uint64_t a1)
{
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];
  }

  else
  {
    sub_227D4D668();
    MEMORY[0x22AAA5DA0](0xD000000000000023, 0x8000000227D75D80);
    v5 = *(a1 + 32);
    v6 = *(a1 + 16);
    sub_227D4AC98();
    sub_227D4DA58();
    v3 = 0;
  }

  sub_227D4CE58();
  return v3;
}

uint64_t sub_227BAEAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_227D4AC88();
  v8 = sub_227D4D4F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  if (!a2)
  {
    return *(v3 + 16);
  }

  v13 = *(a3 + 32);
  sub_227D4AC98();
  sub_227D4AC68();
  v14 = __swift_getEnumTagSinglePayload(v12, 1, v7) != 1;
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_227BAEC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for RegexValidator() + 32);
  v11 = sub_227D4AC98();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a1, v11);
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

void sub_227BAED48(uint64_t a1)
{
  sub_227BAE9F4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_227D4AC98();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_227BAEE00(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  sub_227D4CE58();
  return v2;
}

uint64_t sub_227BAEE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_227D4D4F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, a4) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v16 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, a4);
    v17 = sub_227D4D3B8();
    (*(v12 + 8))(v15, a4);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}