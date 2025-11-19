uint64_t sub_24F5669C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F567228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5669F0(uint64_t a1)
{
  v2 = sub_24F566FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F566A2C(uint64_t a1)
{
  v2 = sub_24F566FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedGamesShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247ED0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  HIDWORD(v12) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F566FE0();

  sub_24F92D128();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0);
  sub_24F567034(&qword_27F247EE0, &qword_27F247EE8);
  sub_24F92CD48();

  if (!v2)
  {
    v10 = BYTE4(v12);
    v17 = 1;
    sub_24F92CD08();
    v16 = v10;
    v15 = 2;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesSuggestedGamesShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F566FE0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0);
  v22 = 0;
  sub_24F567034(&qword_27F247EF8, &qword_27F247F00);
  sub_24F92CC68();
  v18 = a2;
  v9 = v23;
  v21 = 1;
  v10 = sub_24F92CC28();
  v17 = v11;
  v19 = 2;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v14 = v17;
  v13 = v18;
  *v18 = v9;
  v13[1] = v10;
  v13[2] = v14;
  *(v13 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F566FE0()
{
  result = qword_27F247ED8;
  if (!qword_27F247ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247ED8);
  }

  return result;
}

uint64_t sub_24F567034(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2229E0);
    sub_24F5670BC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5670BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F567124()
{
  result = qword_27F247F08;
  if (!qword_27F247F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F08);
  }

  return result;
}

unint64_t sub_24F56717C()
{
  result = qword_27F247F10;
  if (!qword_27F247F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F10);
  }

  return result;
}

unint64_t sub_24F5671D4()
{
  result = qword_27F247F18;
  if (!qword_27F247F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F18);
  }

  return result;
}

uint64_t sub_24F567228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x67677553656D6167 && a2 == 0xEF736E6F69747365;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t static GamesMapEventHelper.postGamesMapEvent(provider:canonicalID:actionType:hostAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24E614970;

  return sub_24F567434(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24F567434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v10 = sub_24F921638();
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[28] = v11;
  v12 = sub_24F921658();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[32] = v13;
  v7[12] = a2;
  v7[13] = a3;
  v14 = swift_task_alloc();
  v7[33] = v14;
  *v14 = v7;
  v14[1] = sub_24F567604;
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v13, 0x73656D6167, 0xE500000000000000, v7 + 12, v15, v16, v11);
}

uint64_t sub_24F567604()
{

  if (v0)
  {
    v1 = sub_24F567BB8;
  }

  else
  {
    v1 = sub_24F567714;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F567714()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_24F921648();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[16] = sub_24F9215F8();
  v0[17] = v3;
  v0[34] = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v0[14] = v2;
  v0[15] = v1;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_24F56783C;
  v5 = v0[31];
  v6 = v0[27];
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v5, 0x746E6563656D6167, 0xEA00000000007265, v0 + 14, v7, v8, v6);
}

uint64_t sub_24F56783C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_24F567C80;
  }

  else
  {
    *(v2 + 288) = *(v2 + 128);
    v3 = sub_24F56795C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F56795C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v14 = *(v3 + 8);
  v14(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  sub_24F921648();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9215F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 utilityServicePrivate];

  v7 = sub_24F92B098();

  v8 = sub_24F92B098();

  v9 = sub_24F92B098();
  v10 = sub_24F92B098();
  sub_24E608448(MEMORY[0x277D84F90]);
  v11 = sub_24F92AE28();

  [v6 postGamesMapEventWithGamesUserID:v7 gameCenterUserID:v8 actionType:v9 hostAppBundleId:v10 additionalFields:v11];

  swift_unknownObjectRelease();
  v14(v1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F567BB8()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  sub_24F567D88();
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F567C80()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_24F567D88();
  swift_allocError();
  (*(v5 + 32))(v7, v4, v6);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

unint64_t sub_24F567D88()
{
  result = qword_27F22D528;
  if (!qword_27F22D528)
  {
    sub_24F921638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D528);
  }

  return result;
}

uint64_t sub_24F567DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v49 = sub_24F928698();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = (&v39 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v39 - v14);
  v16 = *(type metadata accessor for SearchPageContainer() + 36);
  v17 = sub_24F928AD8();
  (*(*(v17 - 8) + 16))(a3, v3 + v16, v17);
  v41 = a3;
  v18 = a3;
  v19 = sub_24F928AC8();
  v20 = 0;
  v21 = *(v19 + 16);
  v42 = v5 + 16;
  v22 = (v47 + 7);
  v47 += 6;
  v48 = v19;
  v44 = v5;
  v45 = (v5 + 8);
  v46 = (v5 + 32);
  while (1)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v20 >= *(v48 + 16))
      {
        goto LABEL_25;
      }

      v24 = v44;
      v25 = v49;
      v26 = v48 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
      v27 = *(v8 + 48);
      v28 = v7;
      v29 = v43;
      *v43 = v20;
      (*(v24 + 16))(v29 + v27, v26, v25);
      v30 = v29;
      v7 = v28;
      sub_24E6009C8(v30, v13, &qword_27F247F80);
      v23 = 0;
      ++v20;
    }

    (*v22)(v13, v23, 1, v8);
    sub_24E6009C8(v13, v15, &qword_27F247F88);
    if ((*v47)(v15, 1, v8) == 1)
    {
    }

    v5 = *v15;
    (*v46)(v7, v15 + *(v8 + 48), v49);
    v18 = sub_24F928688();
    if (!v18[2] || (v31 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v32 & 1) == 0))
    {

      goto LABEL_3;
    }

    sub_24E643A9C(v18[7] + 32 * v31, v53);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    (*v45)(v7, v49);
  }

  v18 = v52;
  if (v51 != 0x6B63696C63 || v52 != 0xE500000000000000)
  {
    v33 = v5;
    v5 = sub_24F92CE08();

    if (v5)
    {

      v5 = v33;
      goto LABEL_19;
    }

    goto LABEL_3;
  }

LABEL_19:
  v53[3] = MEMORY[0x277D837D0];
  v53[0] = v39;
  v53[1] = v40;

  v20 = sub_24F928AB8();
  v21 = v35;
  v18 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v18;
  if (result)
  {
    v36 = v49;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  result = sub_24ECDE188(v18);
  v18 = result;
  *v21 = result;
  v36 = v49;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v5 < v18[2])
  {
    v37 = v44;
    v38 = sub_24F928678();
    sub_24E98859C(v53, 0x6554686372616573, 0xEA00000000006D72);
    v38(v50, 0);
    (v20)(&v51, 0);
    return (*(v37 + 8))(v7, v36);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24F568388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v49 = sub_24F928698();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = (&v39 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v39 - v14);
  v16 = *(type metadata accessor for SearchPageContainer() + 40);
  v17 = sub_24F928AD8();
  (*(*(v17 - 8) + 16))(a3, v3 + v16, v17);
  v41 = a3;
  v18 = a3;
  v19 = sub_24F928AC8();
  v20 = 0;
  v21 = *(v19 + 16);
  v42 = v5 + 16;
  v22 = (v47 + 7);
  v47 += 6;
  v48 = v19;
  v44 = v5;
  v45 = (v5 + 8);
  v46 = (v5 + 32);
  while (1)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v20 >= *(v48 + 16))
      {
        goto LABEL_25;
      }

      v24 = v44;
      v25 = v49;
      v26 = v48 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
      v27 = *(v8 + 48);
      v28 = v7;
      v29 = v43;
      *v43 = v20;
      (*(v24 + 16))(v29 + v27, v26, v25);
      v30 = v29;
      v7 = v28;
      sub_24E6009C8(v30, v13, &qword_27F247F80);
      v23 = 0;
      ++v20;
    }

    (*v22)(v13, v23, 1, v8);
    sub_24E6009C8(v13, v15, &qword_27F247F88);
    if ((*v47)(v15, 1, v8) == 1)
    {
    }

    v5 = *v15;
    (*v46)(v7, v15 + *(v8 + 48), v49);
    v18 = sub_24F928688();
    if (!v18[2] || (v31 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v32 & 1) == 0))
    {

      goto LABEL_3;
    }

    sub_24E643A9C(v18[7] + 32 * v31, v53);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    (*v45)(v7, v49);
  }

  v18 = v52;
  if (v51 != 0x6B63696C63 || v52 != 0xE500000000000000)
  {
    v33 = v5;
    v5 = sub_24F92CE08();

    if (v5)
    {

      v5 = v33;
      goto LABEL_19;
    }

    goto LABEL_3;
  }

LABEL_19:
  v53[3] = MEMORY[0x277D837D0];
  v53[0] = v39;
  v53[1] = v40;

  v20 = sub_24F928AB8();
  v21 = v35;
  v18 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v18;
  if (result)
  {
    v36 = v49;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  result = sub_24ECDE188(v18);
  v18 = result;
  *v21 = result;
  v36 = v49;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v5 < v18[2])
  {
    v37 = v44;
    v38 = sub_24F928678();
    sub_24E98859C(v53, 0x6554686372616573, 0xEA00000000006D72);
    v38(v50, 0);
    (v20)(&v51, 0);
    return (*(v37 + 8))(v7, v36);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24F568930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v97 + 1) = a2;
  *&v97 = a1;
  v5 = sub_24F928698();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v99 = (&v94 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v94 - v16;
  v18 = *(type metadata accessor for SearchPageContainer() + 32);
  v19 = sub_24F928AD8();
  v20 = v3 + v18;
  v21 = v5;
  (*(*(v19 - 8) + 16))(a3, v20, v19);
  v96 = a3;
  v22 = 0;
  v100 = sub_24F928AC8();
  v23 = *(v100 + 16);
  v98 = v6 + 16;
  v105 = (v10 + 48);
  v106 = (v10 + 56);
  v104 = (v6 + 32);
  v101 = v6;
  v102 = (v6 + 8);
  v107 = v21;
  for (i = v23; ; v23 = i)
  {
    if (v22 == v23)
    {
      v26 = 1;
      v22 = v23;
      goto LABEL_12;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *(v100 + 16))
    {
      goto LABEL_79;
    }

    v27 = v101;
    v28 = v100 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
    v29 = *(v9 + 48);
    v30 = v99;
    *v99 = v22;
    (*(v27 + 16))(v30 + v29, v28, v21);
    sub_24E6009C8(v30, v15, &qword_27F247F80);
    v26 = 0;
    ++v22;
LABEL_12:
    (*v106)(v15, v26, 1, v9);
    sub_24E6009C8(v15, v17, &qword_27F247F88);
    if ((*v105)(v17, 1, v9) == 1)
    {
    }

    v31 = *v17;
    (*v104)(v8, &v17[*(v9 + 48)], v21);
    v32 = sub_24F928688();
    if (*(v32 + 16) && (v33 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v34 & 1) != 0))
    {
      sub_24E643A9C(*(v32 + 56) + 32 * v33, &v114);

      if (swift_dynamicCast())
      {
        if (v112 == 0x6B63696C63 && v113 == 0xE500000000000000)
        {

LABEL_29:
          v115 = MEMORY[0x277D837D0];
          v114 = v97;

          v95 = sub_24F928AB8();
          v41 = v40;
          v42 = *v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v41 = v42;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v42 = sub_24ECDE188(v42);
            *v41 = v42;
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }
          }

          if (v31 >= v42[2])
          {
            goto LABEL_81;
          }

          v94 = sub_24F928678();
          v45 = v44;
          if (v115)
          {
            sub_24E612B0C(&v114, &v109);
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *v45;
            v47 = v108;
            *v45 = 0x8000000000000000;
            v49 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
            v50 = v47[2];
            v51 = (v48 & 1) == 0;
            v52 = v50 + v51;
            if (__OFADD__(v50, v51))
            {
              goto LABEL_84;
            }

            v53 = v48;
            if (v47[3] >= v52)
            {
              if (v46)
              {
                v56 = v108;
                if ((v48 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                sub_24E8AD8E4();
                v56 = v108;
                if ((v53 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }
            }

            else
            {
              sub_24E89873C(v52, v46);
              v54 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_88;
              }

              v49 = v54;
              v56 = v108;
              if ((v53 & 1) == 0)
              {
LABEL_57:
                v56[(v49 >> 6) + 8] |= 1 << v49;
                v84 = (v56[6] + 16 * v49);
                *v84 = 0x6554686372616573;
                v84[1] = 0xEA00000000006D72;
                sub_24E612B0C(&v109, (v56[7] + 32 * v49));
                v85 = v56[2];
                v70 = __OFADD__(v85, 1);
                v86 = v85 + 1;
                if (v70)
                {
                  goto LABEL_86;
                }

                v56[2] = v86;
LABEL_3:
                *v45 = v56;

                v21 = v107;
LABEL_4:
                v25 = v95;
                v94(v111, 0);
                v25(&v112, 0);
                goto LABEL_5;
              }
            }

            v24 = (v56[7] + 32 * v49);
            __swift_destroy_boxed_opaque_existential_1(v24);
            sub_24E612B0C(&v109, v24);
            goto LABEL_3;
          }

          sub_24E601704(&v114, &qword_27F2129B0);
          v74 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
          if (v75)
          {
            v76 = v74;
            v77 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *v45;
            *v45 = 0x8000000000000000;
            if ((v77 & 1) == 0)
            {
              sub_24E8AD8E4();
            }

            v78 = v108;

            sub_24E612B0C((*(v78 + 56) + 32 * v76), &v109);
            sub_24EB52998(v76, v78);
            *v45 = v78;
          }

          else
          {
            v109 = 0u;
            v110 = 0u;
          }

          sub_24E601704(&v109, &qword_27F2129B0);
          v21 = v107;
          goto LABEL_4;
        }

        v39 = sub_24F92CE08();

        if (v39)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v35 = sub_24F928688();
    if (*(v35 + 16) && (v36 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v37 & 1) != 0))
    {
      sub_24E643A9C(*(v35 + 56) + 32 * v36, &v114);

      v38 = swift_dynamicCast();
      v21 = v107;
      if ((v38 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v112 == 0x686372616573 && v113 == 0xE600000000000000)
      {

LABEL_39:
        v115 = MEMORY[0x277D837D0];
        v114 = v97;

        v95 = sub_24F928AB8();
        v59 = v58;
        v60 = *v58;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *v59 = v60;
        if (v61)
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v60 = sub_24ECDE188(v60);
          *v59 = v60;
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }
        }

        if (v31 >= v60[2])
        {
          goto LABEL_83;
        }

        v94 = sub_24F928678();
        v63 = v62;
        if (v115)
        {
          sub_24E612B0C(&v114, &v109);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v108 = *v63;
          v65 = v108;
          *v63 = 0x8000000000000000;
          v66 = sub_24E76D644(1836213620, 0xE400000000000000);
          v68 = v65[2];
          v69 = (v67 & 1) == 0;
          v70 = __OFADD__(v68, v69);
          v71 = v68 + v69;
          if (v70)
          {
            goto LABEL_85;
          }

          v72 = v67;
          if (v65[3] >= v71)
          {
            if (v64)
            {
              goto LABEL_60;
            }

            v89 = v66;
            sub_24E8AD8E4();
            v66 = v89;
            v87 = v108;
            if ((v72 & 1) == 0)
            {
              goto LABEL_73;
            }

LABEL_61:
            v88 = (v87[7] + 32 * v66);
            __swift_destroy_boxed_opaque_existential_1(v88);
            sub_24E612B0C(&v109, v88);
          }

          else
          {
            sub_24E89873C(v71, v64);
            v66 = sub_24E76D644(1836213620, 0xE400000000000000);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_88;
            }

LABEL_60:
            v87 = v108;
            if (v72)
            {
              goto LABEL_61;
            }

LABEL_73:
            v87[(v66 >> 6) + 8] |= 1 << v66;
            v90 = (v87[6] + 16 * v66);
            *v90 = 1836213620;
            v90[1] = 0xE400000000000000;
            sub_24E612B0C(&v109, (v87[7] + 32 * v66));
            v91 = v87[2];
            v70 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v70)
            {
              goto LABEL_87;
            }

            v87[2] = v92;
          }

          *v63 = v87;
        }

        else
        {
          sub_24E601704(&v114, &qword_27F2129B0);
          v79 = sub_24E76D644(1836213620, 0xE400000000000000);
          if (v80)
          {
            v81 = v79;
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v83 = *v63;
            v108 = *v63;
            if ((v82 & 1) == 0)
            {
              sub_24E8AD8E4();
              v83 = v108;
            }

            sub_24E612B0C((*(v83 + 56) + 32 * v81), &v109);
            sub_24EB52998(v81, v83);
            *v63 = v83;
          }

          else
          {
            v109 = 0u;
            v110 = 0u;
          }

          sub_24E601704(&v109, &qword_27F2129B0);
        }

        v21 = v107;
        v94(v111, 0);
        v95(&v112, 0);
LABEL_5:
        (*v102)(v8, v21);
        continue;
      }

      v57 = sub_24F92CE08();

      if (v57)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v21 = v107;
    (*v102)(v8, v107);
  }

  __break(1u);
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
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t SearchPageContainer.landingPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchPageContainer();
  sub_24F5695EC(v1 + *(v3 + 28), v5);
  return sub_24E612C80(v5, a1);
}

uint64_t type metadata accessor for SearchPageContainer()
{
  result = qword_27F247F40;
  if (!qword_27F247F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5695EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56965C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchPageContainer();
  sub_24F5695EC(a1 + *(v4 + 28), v6);
  return sub_24E612C80(v6, a2);
}

uint64_t SearchPageContainer.landingPage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for SearchPageContainer() + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t SearchPageContainer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchPageContainer() + 44));

  return v1;
}

uint64_t SearchPageContainer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchPageContainer() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchPageContainer.titleDisplayMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchPageContainer();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SearchPageContainer.titleDisplayMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchPageContainer();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t SearchPageContainer.navigationBarVisibility.setter(char a1)
{
  result = type metadata accessor for SearchPageContainer();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t SearchPageContainer.toolbarItemGroups.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchPageContainer() + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 SearchPageContainer.toolbarItemGroups.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for SearchPageContainer() + 56);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_24F569A94(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726579616C70;
    v7 = 0xD000000000000013;
    v8 = 0x50676E69646E616CLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000019;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74706D6F7270;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x656C746974;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F569C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F56B2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F569C2C(uint64_t a1)
{
  v2 = sub_24F56A150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F569C68(uint64_t a1)
{
  v2 = sub_24F56A150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPageContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F56A150();
  sub_24F92D128();
  LOBYTE(v17) = 0;
  type metadata accessor for Player(0);
  sub_24E6BD740(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SearchPageContainer();
    LOBYTE(v17) = 1;
    sub_24F92CD08();
    LOBYTE(v17) = 2;
    sub_24F92CCA8();
    LOBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768);
    sub_24E602068(&qword_27F247F30, &qword_27F215768);
    sub_24F92CD48();
    LOBYTE(v17) = 4;
    sub_24F928AD8();
    sub_24E6BD740(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
    LOBYTE(v17) = 5;
    sub_24F92CD48();
    LOBYTE(v17) = 6;
    sub_24F92CD48();
    LOBYTE(v17) = 7;
    sub_24F92CD08();
    LOBYTE(v17) = *(v3 + v9[12]);
    v22 = 8;
    sub_24F34828C();
    sub_24F92CD48();
    LOBYTE(v17) = *(v3 + v9[13]);
    v22 = 9;
    sub_24F3482E0();
    sub_24F92CD48();
    v10 = (v3 + v9[14]);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    LOBYTE(v10) = *(v10 + 32);
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v10;
    v22 = 10;
    sub_24F348334();

    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F56A150()
{
  result = qword_27F247F28;
  if (!qword_27F247F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F28);
  }

  return result;
}

uint64_t SearchPageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v56 = sub_24F928AD8();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F38);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v46 - v12;
  v14 = type metadata accessor for SearchPageContainer();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F56A150();
  v57 = v13;
  v18 = v58;
  sub_24F92D108();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v19 = v9;
  v20 = v53;
  v49 = v14;
  v58 = v16;
  LOBYTE(v60) = 0;
  sub_24E6BD740(&qword_27F213E38, type metadata accessor for Player);
  v21 = v54;
  sub_24F92CC68();
  v22 = v21;
  v23 = v58;
  sub_24E61C0A8(v22, v58);
  LOBYTE(v60) = 1;
  v24 = sub_24F92CC28();
  v25 = v49;
  v26 = (v23 + v49[5]);
  *v26 = v24;
  v26[1] = v27;
  LOBYTE(v60) = 2;
  v54 = 0;
  v28 = sub_24F92CBC8();
  v29 = (v23 + v25[6]);
  *v29 = v28;
  v29[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768);
  v63 = 3;
  sub_24E602068(&qword_27F243DB0, &qword_27F215768);
  sub_24F92CC68();
  v31 = v23 + v25[7];
  v32 = v61;
  *v31 = v60;
  *(v31 + 16) = v32;
  *(v31 + 32) = v62;
  LOBYTE(v60) = 4;
  v48 = sub_24E6BD740(&qword_27F254CB0, MEMORY[0x277D21C88]);
  sub_24F92CC68();
  v33 = *(v52 + 32);
  v34 = v23 + v25[8];
  v35 = v19;
  v36 = v56;
  v46 = v52 + 32;
  v47 = v33;
  v33(v34, v35, v56);
  LOBYTE(v60) = 5;
  sub_24F92CC68();
  v47(v23 + v25[9], v6, v36);
  LOBYTE(v60) = 6;
  sub_24F92CC68();
  v47(v23 + v25[10], v51, v36);
  LOBYTE(v60) = 7;
  v37 = sub_24F92CC28();
  LODWORD(v54) = 1;
  v38 = &v58[v25[11]];
  *v38 = v37;
  v38[1] = v39;
  v63 = 8;
  sub_24F3484FC();
  sub_24F92CC68();
  v58[v25[12]] = v60;
  v63 = 9;
  sub_24F348550();
  sub_24F92CC68();
  v58[v49[13]] = v60;
  v63 = 10;
  sub_24E933414();
  sub_24F92CC68();
  (*(v20 + 8))(v57, v55);
  v40 = v62;
  v41 = v50;
  v42 = v58;
  v43 = &v58[v49[14]];
  v44 = v61;
  *v43 = v60;
  *(v43 + 1) = v44;
  v43[32] = v40;
  sub_24F56AB8C(v42, v41);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_24F56ABF0(v42, type metadata accessor for SearchPageContainer);
}

uint64_t sub_24F56AB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPageContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56ABF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F56AC80(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_24F56ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t *sub_24F56AD44(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for SearchPageContainer() + 28));

  return __swift_assign_boxed_opaque_existential_1(v3, a1);
}

uint64_t sub_24F56ADA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F56AEDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F56B004()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F56B0EC();
      if (v2 <= 0x3F)
      {
        sub_24F928AD8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F56B0EC()
{
  if (!qword_27F247F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247F58);
    sub_24E602068(&qword_27F247F60, &qword_27F247F58);
    v0 = sub_24F9280E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F247F50);
    }
  }
}

unint64_t sub_24F56B1A4()
{
  result = qword_27F247F68;
  if (!qword_27F247F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F68);
  }

  return result;
}

unint64_t sub_24F56B1FC()
{
  result = qword_27F247F70;
  if (!qword_27F247F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F70);
  }

  return result;
}

unint64_t sub_24F56B254()
{
  result = qword_27F247F78;
  if (!qword_27F247F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F78);
  }

  return result;
}

uint64_t sub_24F56B2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA76A00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50676E69646E616CLL && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA76A20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA76A40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA76A60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA73D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA73DB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA4A080 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24F56B614()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v2 = [swift_getObjCClassFromMetadata() supportedServices];
  type metadata accessor for AIDAServiceType(0);
  v3 = sub_24F92B5A8();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 32 + 8 * v5);
      v7 = [v1 accountForService_];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 username];
        if (!v9)
        {
          goto LABEL_13;
        }

        v10 = v9;
        v11 = sub_24F92B0D8();
        v13 = v12;

        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      if (v4 == ++v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_24F56B7C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F56B95C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesFriendComparisonHeader()
{
  result = qword_27F247F90;
  if (!qword_27F247F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F56BB2C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24E61C938();
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

uint64_t sub_24F56BC50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F56D9A0();
  sub_24F92D128();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesFriendComparisonHeader();
    v15 = 1;
    type metadata accessor for Player(0);
    sub_24F56DAB8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v14 = 2;
    sub_24F92CD48();
    v13 = 3;
    sub_24F92CD08();
    v12 = 4;
    sub_24F92CCA8();
    v11 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v10 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v9 = 7;
    sub_24F929608();
    sub_24F56DAB8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F56C044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - v5;
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FE8);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ChallengesFriendComparisonHeader();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 36)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v53 = v20;
  sub_24E61DA68(&v54, v20, qword_27F21B590);
  v21 = v16[10];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v24 = v18;
  v23(&v18[v21], 1, 1, v22);
  v25 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F56D9A0();
  v47 = v15;
  v26 = v50;
  sub_24F92D108();
  if (v26)
  {
    v27 = v53;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v28 = v51;
    sub_24E601704(v27, qword_27F24EC90);
    return sub_24E601704(&v18[v28], &qword_27F215440);
  }

  else
  {
    v50 = v6;
    v42 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v29 = v55;
    *v18 = v54;
    *(v18 + 1) = v29;
    *(v18 + 4) = v56;
    LOBYTE(v54) = 1;
    sub_24F56DAB8(&qword_27F213E38, type metadata accessor for Player);
    sub_24F92CC68();
    v30 = v53;
    sub_24E61C0A8(v11, &v18[v16[5]]);
    LOBYTE(v54) = 2;
    v31 = v42;
    sub_24F92CC68();
    sub_24E61C0A8(v31, &v18[v16[6]]);
    LOBYTE(v54) = 3;
    v50 = 0;
    v32 = sub_24F92CC28();
    v33 = v51;
    v34 = &v18[v16[7]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v54) = 4;
    v36 = sub_24F92CBC8();
    v37 = &v18[v16[8]];
    *v37 = v36;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v30, qword_27F24EC90);
    LOBYTE(v54) = 6;
    sub_24E65CAA0();
    v39 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v39, v24 + v33, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v54) = 7;
    sub_24F56DAB8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v40 = v44;
    sub_24F92CC18();
    (*(v49 + 8))(v47, v48);
    sub_24E6009C8(v40, v24 + v16[11], &qword_27F213E68);
    sub_24F56D9F4(v24, v43);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F56DA58(v24, type metadata accessor for ChallengesFriendComparisonHeader);
  }
}

unint64_t sub_24F56C8EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x547972616D6D7573;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F54646E65697266;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F56C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F56DD60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F56CA20(uint64_t a1)
{
  v2 = sub_24F56D9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F56CA5C(uint64_t a1)
{
  v2 = sub_24F56D9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F56CA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

__n128 sub_24F56CBD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB8);
  sub_24F56CD4C(a1, &v7[*(v8 + 44)]);
  LOBYTE(a1) = sub_24F925828();
  sub_24F923318();
  v9 = &v7[*(v5 + 44)];
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24F56D850(v7, a2);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FC0) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_24F56CD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FC8);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4038000000000000;
  v12[16] = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FD0) + 44);
  v53 = v12;
  v55 = a1;
  sub_24F56D168(a1, &v12[v13]);
  v52 = type metadata accessor for ChallengesFriendComparisonHeader();
  v14 = (a1 + *(v52 + 28));
  v15 = v14[1];
  v59 = *v14;
  v60 = v15;
  v16 = sub_24E600AEC();

  v51 = v16;
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  sub_24F9258F8();
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24E600B40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v59 = v22;
  v60 = v24;
  v61 = v26 & 1;
  v62 = v28;
  v63 = KeyPath;
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  v54 = v7;
  sub_24F9268B8();
  sub_24E600B40(v22, v24, v26 & 1);

  v30 = (v55 + *(v52 + 32));
  v31 = v30[1];
  if (v31)
  {
    v59 = *v30;
    v60 = v31;

    v55 = sub_24F925E18();
    v51 = v33;
    v52 = v32;
    v35 = v34;
    v36 = swift_getKeyPath();
    v37 = v35 & 1;
    v38 = 1;
  }

  else
  {
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v37 = 0;
    v36 = 0;
    v38 = 0;
  }

  v39 = v53;
  v40 = v56;
  sub_24E60169C(v53, v56, &qword_27F247FC8);
  v41 = v54;
  v42 = v58;
  sub_24F56D8C8(v54, v58);
  v43 = v57;
  sub_24E60169C(v40, v57, &qword_27F247FC8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FD8);
  sub_24F56D8C8(v42, v43 + *(v44 + 48));
  v45 = v43 + *(v44 + 64);
  v46 = v55;
  v48 = v51;
  v47 = v52;
  *v45 = v55;
  *(v45 + 8) = v47;
  *(v45 + 16) = v37;
  *(v45 + 24) = v48;
  *(v45 + 32) = v36;
  *(v45 + 40) = v38;
  sub_24ED1A264(v46, v47, v37, v48);
  sub_24F56D938(v41);
  sub_24E601704(v39, &qword_27F247FC8);
  sub_24ED1A2B4(v46, v47, v37, v48);
  sub_24F56D938(v42);
  return sub_24E601704(v40, &qword_27F247FC8);
}

uint64_t sub_24F56D168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v44 = &v44 - v4;
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0) - 8;
  MEMORY[0x28223BE20](v48);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v14;
  MEMORY[0x28223BE20](v15);
  v53 = &v44 - v16;
  v46 = type metadata accessor for ChallengesFriendComparisonHeader();
  v17 = a1 + *(v46 + 20);
  v18 = *(v17 + 24);
  v45 = *(v17 + 16);
  v19 = type metadata accessor for PlayerAvatar.Overlay(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  *&v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v21 = *(v7 + 28);
  v20(&v9[v21], 1, 1, v19);
  v22 = &v9[*(v7 + 32)];
  *&v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;

  sub_24E61DA68(&v56, v22, qword_27F21B590);
  *v9 = v45;
  *(v9 + 1) = v18;
  v23 = &v9[v21];
  v24 = v44;
  sub_24E61DA68(v44, v23, &qword_27F22DF80);
  sub_24E61DA68(&v59, v22, qword_27F21B590);
  LOBYTE(v59) = 7;
  v25 = v53;
  sub_24F8319B8(v9, &v59, v53);
  sub_24F927618();
  sub_24F9238C8();
  v26 = v48;
  v27 = (v25 + *(v48 + 44));
  v28 = v57;
  *v27 = v56;
  v27[1] = v28;
  v27[2] = v58;
  v29 = v47 + *(v46 + 24);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  v32 = v24;
  v20(v24, 1, 1, v19);
  *&v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v33 = *(v7 + 28);
  v20(&v9[v33], 1, 1, v19);
  v34 = &v9[*(v7 + 32)];
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0;

  sub_24E61DA68(v54, v34, qword_27F21B590);
  *v9 = v31;
  *(v9 + 1) = v30;
  sub_24E61DA68(v32, &v9[v33], &qword_27F22DF80);
  sub_24E61DA68(&v59, v34, qword_27F21B590);
  LOBYTE(v59) = 7;
  v35 = v49;
  sub_24F8319B8(v9, &v59, v49);
  sub_24F927618();
  sub_24F9238C8();
  v36 = (v35 + *(v26 + 44));
  v37 = v60;
  *v36 = v59;
  v36[1] = v37;
  v36[2] = v61;
  v38 = v53;
  v39 = v50;
  sub_24E60169C(v53, v50, &qword_27F2233D0);
  v40 = v51;
  sub_24E60169C(v35, v51, &qword_27F2233D0);
  v41 = v52;
  sub_24E60169C(v39, v52, &qword_27F2233D0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FE0);
  sub_24E60169C(v40, v41 + *(v42 + 48), &qword_27F2233D0);
  sub_24E601704(v35, &qword_27F2233D0);
  sub_24E601704(v38, &qword_27F2233D0);
  sub_24E601704(v40, &qword_27F2233D0);
  return sub_24E601704(v39, &qword_27F2233D0);
}

uint64_t sub_24F56D6C0()
{
  sub_24F47DB2C();

  return sub_24F9218E8();
}

unint64_t sub_24F56D750()
{
  result = qword_27F247FA8;
  if (!qword_27F247FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247FA8);
  }

  return result;
}

uint64_t sub_24F56D850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56D8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56D938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F56D9A0()
{
  result = qword_27F247FF0;
  if (!qword_27F247FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247FF0);
  }

  return result;
}

uint64_t sub_24F56D9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesFriendComparisonHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56DA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F56DAB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F56DB14()
{
  result = qword_27F248000;
  if (!qword_27F248000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247FC0);
    sub_24F56DBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248000);
  }

  return result;
}

unint64_t sub_24F56DBA0()
{
  result = qword_27F248008;
  if (!qword_27F248008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247FB0);
    sub_24E602068(&qword_27F248010, &qword_27F248018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248008);
  }

  return result;
}

unint64_t sub_24F56DC5C()
{
  result = qword_27F248020;
  if (!qword_27F248020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248020);
  }

  return result;
}

unint64_t sub_24F56DCB4()
{
  result = qword_27F248028;
  if (!qword_27F248028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248028);
  }

  return result;
}

unint64_t sub_24F56DD0C()
{
  result = qword_27F248030[0];
  if (!qword_27F248030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F248030);
  }

  return result;
}

uint64_t sub_24F56DD60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54646E65697266 && a2 == 0xEF657261706D6F43 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x547972616D6D7573 && a2 == 0xEB00000000747865 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F56E000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92AE38();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F56E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24F928AE8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F56E178, 0, 0);
}

uint64_t sub_24F56E178()
{
  v1 = v0[2];
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[4];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_24F56E2A4;

    return sub_24F56E4B4(v3, v2);
  }

  else
  {
    v6 = v0[3];
    v7 = v1[2];
    v8 = v1[3];

    sub_24F56EA34(v7, v8, sub_24F56F934, v6);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F56E2A4(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24F56E3A4, 0, 0);
}

uint64_t sub_24F56E3A4()
{
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v3 = *(v0 + 40);
    (*(v2 + 104))(v1, *MEMORY[0x277D21CA8], v3);
    sub_24F92A9C8();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    sub_24F56EA34(v6, v7, sub_24F56F934, v4);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F56E4B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v2[4] = swift_task_alloc();
  v3 = sub_24F91F4A8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F56E5AC, 0, 0);
}

uint64_t sub_24F56E5AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_24F91F488();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[4], &qword_27F228530);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[7];
    (*(v0[6] + 32))(v6, v0[4], v0[5]);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_24F56E758;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD000000000000020, 0x800000024FA76A80, sub_24F56F93C, v7, v9);
  }
}

uint64_t sub_24F56E758()
{

  return MEMORY[0x2822009F8](sub_24F56E870, 0, 0);
}

uint64_t sub_24F56E870()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_24F56E8FC(void *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_24F92A9A8();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_24F92A9C8();
    (*(v3 + 8))(v6, v2);
  }
}

void sub_24F56EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F92B098();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_24F56FAB4;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_24E9F9FFC;
    v11[3] = &block_descriptor_20_4;
    v10 = _Block_copy(v11);

    [v7 openApplicationWithBundleIdentifier:v8 usingConfiguration:0 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_24F56EB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F91F3B8();
    v9 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    (*(v3 + 16))(v5, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    aBlock[4] = sub_24F56F9D8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F56E000;
    aBlock[3] = &block_descriptor_162;
    v12 = _Block_copy(aBlock);

    [v7 openURL:v8 configuration:v9 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24F56EE0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v5;
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_24F927E88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = a1[1];
  if (v17)
  {
    v47 = v6;
    v48 = a2;
    v46 = a1;
    v18 = *a1;
    if (qword_27F210FF8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_27F23C300);
    v20 = *(v11 + 16);
    v20(v16, v19, v10);
    v21 = sub_24F92B858();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    v20(v13, v16, v10);
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    (*(v11 + 32))(v24 + v22, v13, v10);
    v25 = (v24 + v23);
    *v25 = v18;
    v25[1] = v17;

    sub_24F1F2908(0, 0, v9, &unk_24FA0A150, v24);

    sub_24E601704(v9, &unk_27F21B570);
    (*(v11 + 8))(v16, v10);
    v6 = v47;
    a2 = v48;
    a1 = v46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v26 = sub_24F92A9E8();
  if (qword_27F211828 != -1)
  {
    swift_once();
  }

  if (byte_27F39F070 == 1)
  {
    v27 = objc_opt_self();
    v28 = [v27 standardUserDefaults];
    v29 = sub_24F0068D0();
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      sub_24F008CB4(v31);

      if (qword_27F211430 == -1)
      {
LABEL_10:
        v32 = sub_24F9220D8();
        __swift_project_value_buffer(v32, qword_27F39E8E0);
        v33 = sub_24F9220B8();
        v34 = sub_24F92BD98();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = a1;
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          v37 = [v27 &selRef_daemonProxy + 6];
          v38 = sub_24F0068D0();

          *(v36 + 4) = v38;
          _os_log_impl(&dword_24E5DD000, v33, v34, "gameLaunchCount set to %ld", v36, 0xCu);
          v39 = v36;
          a1 = v35;
          MEMORY[0x2530542D0](v39, -1, -1);
        }

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_13:
  v40 = sub_24F92B858();
  (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
  sub_24F56F41C(a1, v6);
  v41 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v42 = (v50 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = a2;
  sub_24F56F594(v6, v43 + v41);
  *(v43 + v42) = v26;

  sub_24EA998B8(0, 0, v9, &unk_24FA0A148, v43);

  return v26;
}

unint64_t sub_24F56F3AC()
{
  result = qword_27F2162D0;
  if (!qword_27F2162D0)
  {
    type metadata accessor for LaunchGameAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162D0);
  }

  return result;
}

uint64_t sub_24F56F41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56F480()
{
  v1 = (type metadata accessor for LaunchGameAction() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F56F594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56F5F8(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for LaunchGameAction() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F56E0B4(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_24F56F728()
{
  v1 = sub_24F927E88();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F56F804(uint64_t a1)
{
  v4 = *(sub_24F927E88() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F1F2C60(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_24F56F944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F56F9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8);

  return sub_24F56ED8C();
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F56FA7C()
{

  return swift_deallocObject();
}

uint64_t sub_24F56FB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F56FBDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F56FCAC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E6BCB04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F56FD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F56FDB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F570AE4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for GameHeroDetails(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24F56FD70(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    sub_24F92CCA8();
    v8[10] = 5;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F5700D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480E0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v31 - v7;
  v9 = type metadata accessor for GameHeroDetails(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v37 = v11 + 40;
  sub_24E61DA68(&v41, (v11 + 40), qword_27F21B590);
  v38 = v9;
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v39 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F570AE4();
  v35 = v8;
  sub_24F92D108();
  if (v2)
  {
    v17 = v37;
    __swift_destroy_boxed_opaque_existential_1(v40);
    v18 = v39;
    sub_24E601704(v17, qword_27F24EC90);
    sub_24E601704(&v11[v18], &qword_27F213E68);
  }

  else
  {
    v32 = v6;
    v16 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v19 = v42;
    *v11 = v41;
    *(v11 + 1) = v19;
    *(v11 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v20 = v38;
    v21 = v16;
    sub_24E61DA68(&v41, v37, qword_27F24EC90);
    LOBYTE(v41) = 2;
    sub_24F56FD70(&qword_27F213F48, MEMORY[0x277D21F70]);
    v22 = v32;
    sub_24F92CC18();
    sub_24E61DA68(v22, &v11[v39], &qword_27F213E68);
    LOBYTE(v41) = 3;
    v23 = sub_24F92CC28();
    v24 = &v11[v20[7]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v41) = 4;
    v26 = sub_24F92CBC8();
    v27 = &v11[v20[8]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v41) = 5;
    v29 = sub_24F92CC38();
    (*(v21 + 8))(v35, v36);
    v11[v20[9]] = v29 & 1;
    sub_24F570A60(v11, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24F570B38(v11);
  }
}

uint64_t sub_24F5706B8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x6564616372417369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F570764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5722A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F57078C(uint64_t a1)
{
  v2 = sub_24F570AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5707C8(uint64_t a1)
{
  v2 = sub_24F570AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F570884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_24F570A60(a1, a2);
  result = type metadata accessor for GameHeroDetailsView(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

unint64_t sub_24F570960()
{
  result = qword_27F2480D8;
  if (!qword_27F2480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2480D8);
  }

  return result;
}

uint64_t sub_24F570A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameHeroDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F570AE4()
{
  result = qword_27F2480E8;
  if (!qword_27F2480E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2480E8);
  }

  return result;
}

uint64_t sub_24F570B38(uint64_t a1)
{
  v2 = type metadata accessor for GameHeroDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F570BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameHeroDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F570C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameHeroDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F570D3C()
{
  result = type metadata accessor for GameHeroDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F570E14()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248128);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248130);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(type metadata accessor for GameHeroDetailsView(0) + 20);
  if (*(v0 + v11))
  {
    v12 = sub_24F924C88();
  }

  else
  {
    v12 = sub_24F924C98();
  }

  *v7 = v12;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248138);
  sub_24F5710B0(v0, &v7[*(v13 + 44)]);
  if (*(v0 + v11))
  {
    sub_24F924C88();
  }

  else
  {
    sub_24F924C98();
  }

  sub_24F924C88();
  if (sub_24F924C78())
  {
    v14 = 1;
  }

  else
  {
    sub_24F924C98();
    if (sub_24F924C78())
    {
      v14 = 0;
    }

    else
    {
      sub_24F924CA8();
      if (sub_24F924C78())
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v7, v10, &qword_27F248128);
  v16 = &v10[*(v8 + 36)];
  *v16 = KeyPath;
  v16[8] = v14;
  sub_24F9254E8();
  sub_24F5724A4();
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v10, &qword_27F248130);
}

uint64_t sub_24F5710B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v181 = a1;
  v165 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248150);
  MEMORY[0x28223BE20](v2 - 8);
  v166 = v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v176 = v145 - v5;
  v6 = sub_24F924BE8();
  v156 = *(v6 - 8);
  v157 = v6;
  MEMORY[0x28223BE20](v6);
  v155 = v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9297D8();
  v179 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255360);
  MEMORY[0x28223BE20](v152);
  v150 = v145 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248158);
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x28223BE20](v12);
  v151 = v145 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248160);
  MEMORY[0x28223BE20](v14 - 8);
  v164 = v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = v145 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248168);
  MEMORY[0x28223BE20](v18);
  v20 = (v145 - v19);
  v21 = sub_24F929888();
  v180 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v167);
  v168 = v145 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248170);
  v162 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v169 = v145 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248178);
  MEMORY[0x28223BE20](v27 - 8);
  v163 = v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v145 - v30;
  sub_24F927618();
  sub_24F9238C8();
  v160 = v189;
  v161 = v187;
  v158 = v192;
  v159 = v191;
  v200 = 1;
  v199 = v188;
  v198 = v190;
  v32 = type metadata accessor for GameHeroDetails(0);
  v173 = v8;
  v174 = v32;
  v33 = *(v181 + *(v32 + 36));
  v170 = v25;
  v171 = v31;
  v172 = v10;
  v177 = v23;
  v178 = v21;
  if (v33 == 1)
  {
    v148 = v20;
    v149 = v18;
    if (qword_27F2114A0 != -1)
    {
      swift_once();
    }

    v193 = qword_27F39EA08;
    v194 = unk_27F39EA10;
    sub_24E600AEC();

    v34 = sub_24F925E18();
    v36 = v35;
    v38 = v37;
    sub_24F9259D8();
    sub_24F9258E8();

    v39 = sub_24F925C98();
    v41 = v40;
    v43 = v42;
    v147 = v44;

    sub_24E600B40(v34, v36, v38 & 1);

    LODWORD(v34) = sub_24F9251C8();
    v45 = *(v167 + 36);
    v46 = *MEMORY[0x277CE13B8];
    v47 = sub_24F927748();
    v48 = v168;
    (*(*(v47 - 8) + 104))(&v168[v45], v46, v47);
    *v48 = v34;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v49 = v41;
    v50 = sub_24F925C58();
    v52 = v51;
    LOBYTE(v46) = v53;
    v55 = v54;
    sub_24E600B40(v39, v49, v43 & 1);

    sub_24E601704(v48, &qword_27F213F10);
    v193 = v50;
    v194 = v52;
    LOBYTE(v195) = v46 & 1;
    v196 = v55;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v56 = v177;
    sub_24F929828();
    sub_24E601704(&v183, &qword_27F2129B0);
    sub_24E601704(&v185, &qword_27F2129B0);
    v57 = v169;
    sub_24F925EE8();
    (*(v180 + 8))(v56, v178);
    sub_24E600B40(v50, v52, v46 & 1);

    LOBYTE(v50) = sub_24F925828();
    sub_24F923318();
    v58 = v57 + *(v170 + 36);
    *v58 = v50;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    *(v58 + 32) = v62;
    *(v58 + 40) = 0;
    sub_24E60169C(v57, v148, &qword_27F248170);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
    sub_24F572588();
    sub_24E8533A4();
    sub_24F924E28();
    sub_24E601704(v57, &qword_27F248170);
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v63 = v193;
    v64 = v194;
    v65 = v195;
    v66 = v196;
    LOBYTE(v185) = 1;
    LOBYTE(v183) = v194;
    v182[0] = v196;
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v20 + 2) = v63;
    *(v20 + 24) = v64;
    *(v20 + 4) = v65;
    *(v20 + 40) = v66;
    *(v20 + 3) = v197;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
    sub_24F572588();
    sub_24E8533A4();
    sub_24F924E28();
  }

  v67 = (v181 + *(v174 + 28));
  v68 = v67[1];
  *&v185 = *v67;
  *(&v185 + 1) = v68;
  v69 = sub_24E600AEC();

  v145[1] = v69;
  v70 = sub_24F925E18();
  v72 = v71;
  v74 = v73;
  sub_24F925888();
  v75 = sub_24F925C98();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_24E600B40(v70, v72, v74 & 1);

  *&v185 = v75;
  *(&v185 + 1) = v77;
  LOBYTE(v186) = v79 & 1;
  *(&v186 + 1) = v81;
  v82 = v150;
  sub_24F9268B8();
  sub_24E600B40(v75, v77, v79 & 1);

  v83 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v84 = v152;
  *(v82 + *(v152 + 36)) = v83;
  v85 = *MEMORY[0x277D22050];
  v86 = v179;
  v87 = v172;
  v88 = v173;
  v148 = *(v179 + 104);
  v149 = v179 + 104;
  v148(v172, v85, v173);
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v89 = v177;
  sub_24F929818();
  sub_24E601704(&v183, &qword_27F2129B0);
  sub_24E601704(&v185, &qword_27F2129B0);
  v146 = *(v86 + 8);
  v179 = v86 + 8;
  v146(v87, v88);
  v90 = sub_24F572644();
  v91 = v151;
  sub_24F925EE8();
  v92 = v180 + 8;
  v147 = *(v180 + 8);
  v147(v89, v178);
  sub_24E601704(v82, &qword_27F255360);
  v93 = v155;
  sub_24F924BD8();
  *&v185 = v84;
  *(&v185 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v94 = v154;
  sub_24F9266E8();
  (*(v156 + 8))(v93, v157);
  (*(v153 + 8))(v91, v94);
  v95 = (v181 + *(v174 + 32));
  v96 = v95[1];
  if (v96)
  {
    *&v185 = *v95;
    *(&v185 + 1) = v96;

    v97 = sub_24F925E18();
    v99 = v98;
    v101 = v100;
    sub_24F925898();
    sub_24F925938();
    sub_24F9259A8();

    v102 = sub_24F925C98();
    v180 = v92;
    v104 = v103;
    v106 = v105;

    sub_24E600B40(v97, v99, v101 & 1);

    LODWORD(v97) = sub_24F9251C8();
    v107 = *(v167 + 36);
    v108 = *MEMORY[0x277CE13B8];
    v109 = sub_24F927748();
    v110 = v168;
    (*(*(v109 - 8) + 104))(&v168[v107], v108, v109);
    *v110 = v97;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v111 = sub_24F925C58();
    v113 = v112;
    LOBYTE(v108) = v114;
    v116 = v115;
    sub_24E600B40(v102, v104, v106 & 1);

    sub_24E601704(v110, &qword_27F213F10);
    *&v185 = v111;
    *(&v185 + 1) = v113;
    v117 = v108 & 1;
    LOBYTE(v186) = v108 & 1;
    *(&v186 + 1) = v116;
    v119 = v172;
    v118 = v173;
    v148(v172, *MEMORY[0x277D22070], v173);
    v183 = 0u;
    v184 = 0u;
    memset(v182, 0, 32);
    v120 = v177;
    sub_24F929818();
    sub_24E601704(v182, &qword_27F2129B0);
    sub_24E601704(&v183, &qword_27F2129B0);
    v146(v119, v118);
    v121 = v169;
    sub_24F925EE8();
    v147(v120, v178);
    sub_24E600B40(v111, v113, v117);

    v122 = sub_24F925818();
    sub_24F923318();
    v123 = v170;
    v124 = v121 + *(v170 + 36);
    *v124 = v122;
    *(v124 + 8) = v125;
    *(v124 + 16) = v126;
    *(v124 + 24) = v127;
    *(v124 + 32) = v128;
    *(v124 + 40) = 0;
    v129 = v176;
    sub_24E6009C8(v121, v176, &qword_27F248170);
    v130 = 0;
  }

  else
  {
    v129 = v176;
    v123 = v170;
    v130 = 1;
  }

  (*(v162 + 56))(v129, v130, 1, v123);
  v131 = v200;
  v132 = v199;
  v133 = v198;
  v134 = v171;
  v135 = v163;
  sub_24E60169C(v171, v163, &qword_27F248178);
  v136 = v175;
  v137 = v164;
  sub_24E60169C(v175, v164, &qword_27F248160);
  v138 = v129;
  v139 = v166;
  sub_24E60169C(v138, v166, &qword_27F248150);
  v140 = v165;
  *v165 = 0;
  *(v140 + 8) = v131;
  v141 = v160;
  v140[2] = v161;
  *(v140 + 24) = v132;
  v140[4] = v141;
  *(v140 + 40) = v133;
  v142 = v158;
  v140[6] = v159;
  v140[7] = v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248190);
  sub_24E60169C(v135, v140 + v143[12], &qword_27F248178);
  sub_24E60169C(v137, v140 + v143[16], &qword_27F248160);
  sub_24E60169C(v139, v140 + v143[20], &qword_27F248150);
  sub_24E601704(v176, &qword_27F248150);
  sub_24E601704(v136, &qword_27F248160);
  sub_24E601704(v134, &qword_27F248178);
  sub_24E601704(v139, &qword_27F248150);
  sub_24E601704(v137, &qword_27F248160);
  return sub_24E601704(v135, &qword_27F248178);
}

unint64_t sub_24F5721A4()
{
  result = qword_27F248110;
  if (!qword_27F248110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248110);
  }

  return result;
}

unint64_t sub_24F5721FC()
{
  result = qword_27F248118;
  if (!qword_27F248118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248118);
  }

  return result;
}

unint64_t sub_24F572254()
{
  result = qword_27F248120;
  if (!qword_27F248120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248120);
  }

  return result;
}

uint64_t sub_24F5722A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F5724A4()
{
  result = qword_27F248140;
  if (!qword_27F248140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248130);
    sub_24E602068(&qword_27F248148, &qword_27F248128);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248140);
  }

  return result;
}

unint64_t sub_24F572588()
{
  result = qword_27F248180;
  if (!qword_27F248180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248170);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248180);
  }

  return result;
}

unint64_t sub_24F572644()
{
  result = qword_27F248188;
  if (!qword_27F248188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255360);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248188);
  }

  return result;
}

uint64_t sub_24F57272C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248130);
  sub_24F5724A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PlayerAvatar.init(template:overlay:segue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PlayerAvatar(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_24E61DA68(v15, v13, qword_27F21B590);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_24E61DA68(a3, &a5[v11], &qword_27F22DF80);
  return sub_24E61DA68(a4, v13, qword_27F21B590);
}

unint64_t PlayerAvatar.Overlay.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F5755D4(v3, v11, type metadata accessor for PlayerAvatar.Overlay);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      *(inited + 32) = 0x656461637261;
      v24 = inited + 32;
      *(inited + 16) = xmmword_24F93DE60;
      v37 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v37;
      v26 = 0xE600000000000000;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      *(inited + 32) = 1953064037;
      v24 = inited + 32;
      *(inited + 16) = xmmword_24F93DE60;
      v25 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v25;
      v26 = 0xE400000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0xD000000000000011;
      v24 = inited + 32;
      v39 = MEMORY[0x277D22580];
      v26 = 0x800000024FA76AF0;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v39;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48));
      (*(v6 + 32))(v8, v11, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_24F93DE60;
      *(v28 + 32) = 0x6E6F6349656D6167;
      v42 = v28 + 32;
      *(v28 + 40) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v29 = swift_initStackObject();
      *&v43 = v2;
      v30 = v29;
      *(v29 + 16) = xmmword_24F93A400;
      v31 = a1;
      *(v29 + 32) = 0xD000000000000010;
      *(v29 + 40) = 0x800000024FA76AD0;
      *(v29 + 72) = v5;
      *(v29 + 80) = sub_24F575384(&qword_27F21E338, MEMORY[0x277D21C48]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30 + 6);
      (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
      v33 = MEMORY[0x277D839F8];
      v30[11] = 0xD000000000000014;
      v30[12] = 0x800000024FA76AB0;
      v34 = MEMORY[0x277D225A0];
      v30[16] = v33;
      v30[17] = v34;
      v30[13] = v27;
      v35 = sub_24E607E40(v30);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      *(v28 + 48) = v35;
      v36 = sub_24E611448(v28);
      swift_setDeallocating();
      sub_24E601704(v42, &qword_27F23F998);
      v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0);
      v31[4] = sub_24F575204();
      *v31 = v36;
      return (*(v6 + 8))(v8, v5);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990);
      v14 = swift_initStackObject();
      v43 = xmmword_24F93DE60;
      *(v14 + 16) = xmmword_24F93DE60;
      *(v14 + 32) = 0x736567617373656DLL;
      *(v14 + 40) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      v15 = swift_initStackObject();
      v16 = a1;
      *(v15 + 16) = v43;
      *(v15 + 32) = 0xD000000000000014;
      v17 = v15 + 32;
      v18 = MEMORY[0x277D839F8];
      *(v15 + 40) = 0x800000024FA76AB0;
      v19 = MEMORY[0x277D225A0];
      *(v15 + 72) = v18;
      *(v15 + 80) = v19;
      *(v15 + 48) = v13;
      v20 = sub_24E607E40(v15);
      swift_setDeallocating();
      sub_24E601704(v17, &qword_27F212FB0);
      *(v14 + 48) = v20;
      v21 = sub_24E611448(v14);
      swift_setDeallocating();
      sub_24E601704(v14 + 32, &qword_27F23F998);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0);
      result = sub_24F575204();
      v16[4] = result;
      *v16 = v21;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746E6563656D6167;
    v24 = inited + 32;
    *(inited + 16) = xmmword_24F93DE60;
    v38 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v38;
    v26 = 0xEA00000000007265;
  }

  *(inited + 40) = v26;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v40 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E601704(v24, &qword_27F212FB0);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v40;
  return result;
}

uint64_t sub_24F572F90(uint64_t a1)
{
  v2 = sub_24F575474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F572FCC(uint64_t a1)
{
  v2 = sub_24F575474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F573008(uint64_t a1)
{
  v2 = sub_24F5753CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573044(uint64_t a1)
{
  v2 = sub_24F5753CC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F573080()
{
  v1 = *v0;
  v2 = 0x746E6563656D6167;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F6349656D6167;
  if (v1 != 4)
  {
    v4 = 0x736567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656461637261;
  if (v1 != 1)
  {
    v5 = 1953064037;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F573138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F57612C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F573160(uint64_t a1)
{
  v2 = sub_24F575288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F57319C(uint64_t a1)
{
  v2 = sub_24F575288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5731D8(uint64_t a1)
{
  v2 = sub_24F575420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573214(uint64_t a1)
{
  v2 = sub_24F575420();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F573250()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F57328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA76AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA76AB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24F573370(uint64_t a1)
{
  v2 = sub_24F575330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5733AC(uint64_t a1)
{
  v2 = sub_24F575330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5733E8(uint64_t a1)
{
  v2 = sub_24F5754C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573424(uint64_t a1)
{
  v2 = sub_24F5754C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F57347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024FA76AB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F573510(uint64_t a1)
{
  v2 = sub_24F5752DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F57354C(uint64_t a1)
{
  v2 = sub_24F5752DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerAvatar.Overlay.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248198);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481A0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v40 - v5;
  v6 = sub_24F9289E8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481A8);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481B0);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v40 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481B8);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481C0);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481C8);
  v58 = *(v20 - 8);
  v59 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575288();
  sub_24F92D128();
  sub_24F5755D4(v61, v19, type metadata accessor for PlayerAvatar.Overlay);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v63 = 1;
      sub_24F575474();
      v37 = v59;
      sub_24F92CC98();
      (*(v41 + 8))(v13, v42);
      return (*(v58 + 8))(v22, v37);
    }

    else
    {
      v27 = v59;
      if (EnumCaseMultiPayload == 4)
      {
        v64 = 2;
        sub_24F575420();
        v28 = v43;
        sub_24F92CC98();
        v30 = v44;
        v29 = v45;
      }

      else
      {
        v65 = 3;
        sub_24F5753CC();
        v28 = v46;
        sub_24F92CC98();
        v30 = v47;
        v29 = v48;
      }

      (*(v30 + 8))(v28, v29);
      return (*(v58 + 8))(v22, v27);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v62 = 0;
        sub_24F5754C8();
        v39 = v59;
        sub_24F92CC98();
        (*(v40 + 8))(v16, v14);
        return (*(v58 + 8))(v22, v39);
      }

      v69 = 5;
      sub_24F5752DC();
      v24 = v49;
      v25 = v59;
      sub_24F92CC98();
      v26 = v51;
      sub_24F92CD28();
      (*(v50 + 8))(v24, v26);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0);
      v32 = v54;
      v31 = v55;
      v33 = v52;
      (*(v54 + 32))(v52, v19, v55);
      v68 = 4;
      sub_24F575330();
      v34 = v53;
      v25 = v59;
      sub_24F92CC98();
      v67 = 0;
      sub_24F575384(&qword_27F214060, MEMORY[0x277D21C48]);
      v35 = v57;
      v36 = v60;
      sub_24F92CD48();
      if (!v36)
      {
        v66 = 1;
        sub_24F92CD28();
      }

      (*(v56 + 8))(v34, v35);
      (*(v32 + 8))(v33, v31);
    }

    return (*(v58 + 8))(v22, v25);
  }
}

uint64_t PlayerAvatar.Overlay.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248208);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x28223BE20](v3);
  v77 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248210);
  v7 = *(v6 - 8);
  v73 = v6;
  v74 = v7;
  MEMORY[0x28223BE20](v6);
  v80 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248218);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v59 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248220);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v75 = &v59 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248228);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v76 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248230);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v78 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248238);
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24F575288();
  v27 = v83;
  sub_24F92D108();
  if (!v27)
  {
    v60 = v19;
    v28 = v78;
    v61 = v22;
    v29 = v79;
    v30 = v80;
    v62 = v25;
    v83 = v17;
    v31 = v81;
    v32 = sub_24F92CC78();
    v33 = (2 * *(v32 + 16)) | 1;
    v86 = v32;
    v87 = v32 + 32;
    v88 = 0;
    v89 = v33;
    v34 = sub_24E64343C();
    if (v34 == 6 || v88 != v89 >> 1)
    {
      v39 = sub_24F92C918();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v41 = v83;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v82 + 8))(v16, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v85 = 3;
          sub_24F5753CC();
          sub_24F92CBA8();
          v46 = v82;
          (*(v69 + 8))(v29, v70);
          (*(v46 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v43 = v82;
          if (v34 == 4)
          {
            v85 = 4;
            sub_24F575330();
            v44 = v30;
            sub_24F92CBA8();
            sub_24F9289E8();
            v85 = 0;
            sub_24F575384(&qword_27F214018, MEMORY[0x277D21C48]);
            v45 = v73;
            sub_24F92CC68();
            v85 = 1;
            sub_24F92CC48();
            v50 = v74;
            v55 = v54;
            v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
            (*(v50 + 8))(v44, v45);
            (*(v43 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v57 = v61;
            *&v61[v56] = v55;
            swift_storeEnumTagMultiPayload();
            v58 = v57;
          }

          else
          {
            v85 = 5;
            sub_24F5752DC();
            v48 = v77;
            sub_24F92CBA8();
            v49 = v71;
            sub_24F92CC48();
            v52 = v51;
            (*(v72 + 8))(v48, v49);
            (*(v43 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v53 = v60;
            *v60 = v52;
            swift_storeEnumTagMultiPayload();
            v58 = v53;
          }

          v38 = v62;
          sub_24F57551C(v58, v62);
        }

        v35 = v31;
      }

      else
      {
        v35 = v31;
        if (v34)
        {
          if (v34 == 1)
          {
            v85 = 1;
            sub_24F575474();
            v36 = v76;
            sub_24F92CBA8();
            v37 = v82;
            (*(v65 + 8))(v36, v66);
          }

          else
          {
            v85 = 2;
            sub_24F575420();
            v47 = v75;
            sub_24F92CBA8();
            v37 = v82;
            (*(v67 + 8))(v47, v68);
          }

          (*(v37 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v85 = 0;
          sub_24F5754C8();
          sub_24F92CBA8();
          (*(v63 + 8))(v28, v64);
          (*(v82 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }
      }

      sub_24F57551C(v38, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_24F574A2C()
{
  v1 = 0x79616C7265766FLL;
  if (*v0 != 1)
  {
    v1 = 0x6575676573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_24F574A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F576334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F574AAC(uint64_t a1)
{
  v2 = sub_24F575580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F574AE8(uint64_t a1)
{
  v2 = sub_24F575580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerAvatar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248240);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575580();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PlayerAvatar(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar.Overlay(0);
    sub_24F575384(&qword_27F2450C8, type metadata accessor for PlayerAvatar.Overlay);
    sub_24F92CCF8();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlayerAvatar.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248250);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 28);
  v14 = type metadata accessor for PlayerAvatar.Overlay(0);
  v15 = *(*(v14 - 8) + 56);
  v26 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = v12 + *(v10 + 32);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  sub_24E61DA68(v27, v16, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575580();
  v17 = v25;
  sub_24F92D108();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v12 + v26, &qword_27F22DF80);
    return sub_24E601704(v16, qword_27F24EC90);
  }

  else
  {
    v18 = v23;
    LOBYTE(v27[0]) = 0;
    *v12 = sub_24F92CC28();
    v12[1] = v19;
    v25 = v19;
    LOBYTE(v27[0]) = 1;
    sub_24F575384(&qword_27F2450E8, type metadata accessor for PlayerAvatar.Overlay);
    sub_24F92CC18();
    sub_24E61DA68(v5, v12 + v26, &qword_27F22DF80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v29 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    (*(v18 + 8))(v8, v24);
    sub_24E61DA68(v27, v16, qword_27F24EC90);
    sub_24F5755D4(v12, v22, type metadata accessor for PlayerAvatar);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24F529A28(v12);
  }
}

unint64_t sub_24F575204()
{
  result = qword_27F23F9A8;
  if (!qword_27F23F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F9A0);
    sub_24E6060B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F9A8);
  }

  return result;
}

unint64_t sub_24F575288()
{
  result = qword_27F2481D0;
  if (!qword_27F2481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481D0);
  }

  return result;
}

unint64_t sub_24F5752DC()
{
  result = qword_27F2481D8;
  if (!qword_27F2481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481D8);
  }

  return result;
}

unint64_t sub_24F575330()
{
  result = qword_27F2481E0;
  if (!qword_27F2481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481E0);
  }

  return result;
}

uint64_t sub_24F575384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F5753CC()
{
  result = qword_27F2481E8;
  if (!qword_27F2481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481E8);
  }

  return result;
}

unint64_t sub_24F575420()
{
  result = qword_27F2481F0;
  if (!qword_27F2481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481F0);
  }

  return result;
}

unint64_t sub_24F575474()
{
  result = qword_27F2481F8;
  if (!qword_27F2481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481F8);
  }

  return result;
}

unint64_t sub_24F5754C8()
{
  result = qword_27F248200;
  if (!qword_27F248200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248200);
  }

  return result;
}

uint64_t sub_24F57551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F575580()
{
  result = qword_27F248248;
  if (!qword_27F248248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248248);
  }

  return result;
}

uint64_t sub_24F5755D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F575650(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F575720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5757D0()
{
  sub_24F575864();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F575864()
{
  if (!qword_27F245118)
  {
    type metadata accessor for PlayerAvatar.Overlay(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F245118);
    }
  }
}

void sub_24F5758BC()
{
  sub_24F575930();
  if (v0 <= 0x3F)
  {
    sub_24F57599C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F575930()
{
  if (!qword_27F248278)
  {
    sub_24F9289E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F248278);
    }
  }
}

uint64_t sub_24F57599C()
{
  result = qword_27F248280;
  if (!qword_27F248280)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F248280);
  }

  return result;
}

unint64_t sub_24F575A50()
{
  result = qword_27F248288;
  if (!qword_27F248288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248288);
  }

  return result;
}

unint64_t sub_24F575AA8()
{
  result = qword_27F248290;
  if (!qword_27F248290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248290);
  }

  return result;
}

unint64_t sub_24F575B00()
{
  result = qword_27F248298;
  if (!qword_27F248298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248298);
  }

  return result;
}

unint64_t sub_24F575B58()
{
  result = qword_27F2482A0;
  if (!qword_27F2482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482A0);
  }

  return result;
}

unint64_t sub_24F575BB0()
{
  result = qword_27F2482A8;
  if (!qword_27F2482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482A8);
  }

  return result;
}

unint64_t sub_24F575C08()
{
  result = qword_27F2482B0;
  if (!qword_27F2482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482B0);
  }

  return result;
}

unint64_t sub_24F575C60()
{
  result = qword_27F2482B8;
  if (!qword_27F2482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482B8);
  }

  return result;
}

unint64_t sub_24F575CB8()
{
  result = qword_27F2482C0;
  if (!qword_27F2482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482C0);
  }

  return result;
}

unint64_t sub_24F575D10()
{
  result = qword_27F2482C8;
  if (!qword_27F2482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482C8);
  }

  return result;
}

unint64_t sub_24F575D68()
{
  result = qword_27F2482D0;
  if (!qword_27F2482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482D0);
  }

  return result;
}

unint64_t sub_24F575DC0()
{
  result = qword_27F2482D8;
  if (!qword_27F2482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482D8);
  }

  return result;
}

unint64_t sub_24F575E18()
{
  result = qword_27F2482E0;
  if (!qword_27F2482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482E0);
  }

  return result;
}

unint64_t sub_24F575E70()
{
  result = qword_27F2482E8;
  if (!qword_27F2482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482E8);
  }

  return result;
}

unint64_t sub_24F575EC8()
{
  result = qword_27F2482F0;
  if (!qword_27F2482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482F0);
  }

  return result;
}

unint64_t sub_24F575F20()
{
  result = qword_27F2482F8;
  if (!qword_27F2482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482F8);
  }

  return result;
}

unint64_t sub_24F575F78()
{
  result = qword_27F248300;
  if (!qword_27F248300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248300);
  }

  return result;
}

unint64_t sub_24F575FD0()
{
  result = qword_27F248308;
  if (!qword_27F248308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248308);
  }

  return result;
}

unint64_t sub_24F576028()
{
  result = qword_27F248310;
  if (!qword_27F248310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248310);
  }

  return result;
}

unint64_t sub_24F576080()
{
  result = qword_27F248318;
  if (!qword_27F248318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248318);
  }

  return result;
}

unint64_t sub_24F5760D8()
{
  result = qword_27F248320;
  if (!qword_27F248320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248320);
  }

  return result;
}

uint64_t sub_24F57612C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6563656D6167 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656461637261 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953064037 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA76AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F576334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F576448()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39E670);
  __swift_project_value_buffer(v4, qword_27F39E670);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t RemotePersonalizationAppStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RemotePersonalizationAppStateDataSource.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC31BA8;
}

uint64_t RemotePersonalizationAppStateDataSource.expectedAppStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)()
{
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F222D10);
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F2222A8);
  sub_24F92A758();
  v1 = objc_allocWithZone(v0);
  v2 = RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(v6, v5, v4);

  return v2;
}

id RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_24F92BEE8();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_accessQueue;
  v10 = sub_24E69A5C4(0, &qword_27F222300);
  v27[1] = " rotationAngleDegrees ";
  v27[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v35 = v11;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v29);
  *&v3[v28] = sub_24F92BF38();
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds] = MEMORY[0x277D84FA0];
  v12 = v32;
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_bag] = v33;
  v13 = v31;
  *&v4[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_urlSession] = v31;
  *&v4[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_process] = v12;
  v34.receiver = v4;
  v34.super_class = ObjectType;

  v14 = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v34, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v18 selector:? name:? object:?];

  v20 = [v17 defaultCenter];
  v21 = *MEMORY[0x277CB8B78];
  v22 = objc_opt_self();
  v23 = v18;
  v24 = [v22 ams_sharedAccountStore];
  [v20 addObserver:v23 selector:sel_storeAccountDidChange name:v21 object:v24];

  v25 = [v17 defaultCenter];
  if (qword_27F2105E8 != -1)
  {
    swift_once();
  }

  [v25 addObserver:v23 selector:? name:? object:?];

  return v23;
}

id RemotePersonalizationAppStateDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*RemotePersonalizationAppStateDataSource.refreshData(completion:)(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t RemotePersonalizationAppStateDataSource.refreshData(for:completion:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

Swift::String_optional __swiftcall RemotePersonalizationAppStateDataSource.betaAppBundleVersion(adamId:)(GameStoreKit::AdamId adamId)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_24F577134()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  v7 = v0;
  sub_24F927D78();
  v12 = v6;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v10 = sub_24F57B1BC;
  v11 = v5;
  sub_24F92BF08();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F577380(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x277D84FA0];

  v3 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x277D84F98];
}

void sub_24F577450(uint64_t a1, void *a2)
{
  v3 = sub_24F91EB48();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  *&v27 = 0x6573616863727570;
  *(&v27 + 1) = 0xE800000000000000;
  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v32), (v6 & 1) == 0))
  {

    sub_24E6585F8(v32);
LABEL_9:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v34);
  sub_24E6585F8(v32);

  if (!*(&v35 + 1))
  {
LABEL_10:
    sub_24E601704(&v34, &qword_27F2129B0);
    return;
  }

  sub_24E69A5C4(0, &qword_27F239FE0);
  if (swift_dynamicCast())
  {
    v7 = v33;
    v8 = [v33 itemID];
    v9 = [v8 stringValue];
    v10 = sub_24F92B0D8();
    v12 = v11;

    swift_beginAccess();
    sub_24F7A5A14(v10, v12, &v31);
    swift_endAccess();

    swift_beginAccess();

    sub_24E98FE14(v10, v12, &v27);

    v32[0] = v27;
    v32[1] = v28;
    v32[2] = v29;
    v32[3] = v30;
    sub_24E601704(v32, &unk_27F22BE00);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = v10;
    v14 = inited + 32;
    *(inited + 40) = v12;
    sub_24E804518(inited);
    swift_setDeallocating();
    sub_24EC36F48(v14);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    v16 = a2;

    v18 = sub_24F57ABEC(v17, v16);
    if (*(v18 + 16))
    {
      sub_24F578304(v18);

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = sub_24F57B1A0;
      v20[4] = v15;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24F57B1A0;
      *(v21 + 24) = v15;
      v22 = sub_24E69A5C4(0, &qword_27F222300);
      swift_retain_n();
      v23 = sub_24F92BEF8();
      *(&v28 + 1) = v22;
      *&v29 = MEMORY[0x277D225C0];
      *&v27 = v23;
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {

      v24 = &v16[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        (*(v25 + 16))(MEMORY[0x277D84F90], ObjectType, v25);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_24F5778FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_24F927D88();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91EB58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v15 = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  v17 = v4;
  sub_24F927D78();
  v26 = v16;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v18 = v21;
  sub_24F92C6A8();
  v24 = v22;
  v25 = v14;
  sub_24F92BF08();

  return (*(v15 + 8))(v8, v18);
}

uint64_t sub_24F577C04(uint64_t a1, char *a2)
{
  v3 = sub_24F91EB48();
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = v3;
  v39 = 0x7364496D616461;
  v40 = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v38), (v6 & 1) == 0))
  {

    sub_24E6585F8(v38);
LABEL_28:
    v41 = 0u;
    v42 = 0u;
    return sub_24E601704(&v41, &qword_27F2129B0);
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v41);
  sub_24E6585F8(v38);

  if (!*(&v42 + 1))
  {
    return sub_24E601704(&v41, &qword_27F2129B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D8F0);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v38[0];
    v9 = *(v38[0] + 16);
    v37 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
    result = swift_beginAccess();
    if (v9)
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = (v8 + 32 + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        ++v10;
        v15 = *&a2[v37];
        if (*(v15 + 16))
        {
          sub_24F92D068();

          sub_24F92B218();
          v16 = sub_24F92D0B8();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            while (1)
            {
              v20 = (*(v15 + 48) + 16 * v18);
              v21 = *v20 == v14 && v20[1] == v13;
              if (v21 || (sub_24F92CE08() & 1) != 0)
              {
                break;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_9;
          }

LABEL_20:
        }

        else
        {
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v11;
        if ((result & 1) == 0)
        {
          result = sub_24F45814C(0, *(v11 + 16) + 1, 1);
          v11 = v39;
        }

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_24F45814C((v22 > 1), v23 + 1, 1);
          v11 = v39;
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = v14;
        *(v24 + 40) = v13;
LABEL_9:
        if (v10 == v9)
        {
          goto LABEL_32;
        }
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_32:
    swift_beginAccess();
    sub_24EAE9EB0(v8);
    swift_endAccess();

    sub_24F45D9F8(v11);

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = a2;

    v28 = sub_24F57ABEC(v27, v26);
    if (*(v28 + 16))
    {
      sub_24F578304(v28);

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = sub_24F57B1E4;
      v30[4] = v25;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_24F57B1E4;
      *(v31 + 24) = v25;
      v32 = sub_24E69A5C4(0, &qword_27F222300);
      swift_retain_n();
      v33 = sub_24F92BEF8();
      v38[3] = v32;
      v38[4] = MEMORY[0x277D225C0];
      v38[0] = v33;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {

      v34 = &v26[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 1);
        ObjectType = swift_getObjectType();
        (*(v35 + 16))(MEMORY[0x277D84F90], ObjectType, v35);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24F578130(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, ObjectType, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24F5781FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_24F91EB58();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v14 = a1;
  sub_24F5778FC(v13, a4, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24F578304(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  if (qword_27F210970 != -1)
  {
    swift_once();
  }

  sub_24F92A3A8();
  sub_24F92A3F8();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(a1 + 16);
    if (v16)
    {
      v26 = v13;
      v17 = sub_24EAE67DC(v16, 0);
      v18 = sub_24EAE7C84(&v28, v17 + 4, v16, a1);
      v25 = a1;

      result = sub_24E6586B4();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v20 = v26;
      v19 = v27;
      sub_24F579104(v17, v26);

      v21 = *(v19 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_urlSession);
      *(swift_allocObject() + 16) = v21;
      v22 = sub_24F929638();
      v29 = v22;
      v30 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v28);
      v23 = v21;
      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320);
      sub_24E602068(&qword_27F22C328, &qword_27F22C320);
      sub_24F92A9B8();

      __swift_destroy_boxed_opaque_existential_1(&v28);
      *(swift_allocObject() + 16) = v25;
      v29 = v22;
      v30 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v28);

      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BDE8);
      v24 = sub_24F92A938();

      (*(v11 + 8))(v20, v10);
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0);
      v28 = MEMORY[0x277D84FA0];
      v24 = sub_24F92A988();
      (*(v11 + 8))(v13, v10);
    }

    return v24;
  }

  sub_24E601704(v9, &qword_27F228530);
  if (qword_27F211348 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0);
  v28 = MEMORY[0x277D84FA0];
  return sub_24F92A988();
}

uint64_t sub_24F578938(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v24 = a4;
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = a2;
    v22 = *&v13[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_accessQueue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v23 = v13;
    v15 = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v25 = v16;
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    a3 = v15;
    v17 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v17);
    *(&v22 - 2) = sub_24F57AF98;
    *(&v22 - 1) = v14;
    sub_24F92BF08();

    (*(v8 + 8))(v10, v7);
  }

  v18 = *(v11 + 16);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = sub_24EAE67DC(*(v11 + 16), 0);
  v20 = sub_24EAE7C84(&v25, v19 + 4, v18, v11);

  sub_24E6586B4();
  if (v20 != v18)
  {
    __break(1u);
LABEL_6:
    v19 = MEMORY[0x277D84F90];
  }

  a3(v19);
}

uint64_t sub_24F578C7C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);

  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v41 = v1;
  while (v5)
  {
LABEL_11:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = (*(v1 + 48) + ((v6 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v17;
      v24 = isUniquelyReferenced_nonNull_native;
      v44 = *&v20[v21];
      v25 = v44;
      *&v20[v21] = 0x8000000000000000;
      v42 = v18;
      v26 = v23;
      v27 = sub_24E7728F0(v18, v23);
      v29 = v25[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_24;
      }

      v33 = v28;
      if (v25[3] < v32)
      {
        sub_24E8A3030(v32, v24);
        v27 = sub_24E7728F0(v42, v26);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v33)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (v24)
      {
        goto LABEL_17;
      }

      v39 = v27;
      sub_24E8B347C();
      v27 = v39;
      if (v33)
      {
LABEL_4:
        v8 = v27;

        v9 = v44;
        v10 = (v44[7] + (v8 << 6));
        v11 = v10[3];
        v13 = *v10;
        v12 = v10[1];
        v43[2] = v10[2];
        v43[3] = v11;
        v43[0] = v13;
        v43[1] = v12;
        *v10 = 0;
        *(v10 + 6) = 0x1000000000000000;
        sub_24E88D2AC(v43);
        goto LABEL_5;
      }

LABEL_18:
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v9[6] + 16 * v27);
      *v35 = v42;
      v35[1] = v26;
      v36 = (v9[7] + (v27 << 6));
      *v36 = 0;
      v36[6] = 0x1000000000000000;
      v37 = v9[2];
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_25;
      }

      v9[2] = v38;
LABEL_5:
      *&v20[v21] = v9;
      swift_endAccess();

      v1 = v41;
    }
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
    }

    v5 = *(v2 + 8 * v14);
    ++v6;
    if (v5)
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F578F14(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27F211348 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v7[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v7, &qword_27F2129B0);
  sub_24F92A5A8();

  return a2(0);
}

uint64_t sub_24F579104(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43[0] = a1;
  v2 = sub_24F92B138();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - v6;
  v8 = sub_24F9288E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F91E968();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v44, v12, v17);
  sub_24F91E918();
  sub_24F91E8B8();
  sub_24F91E8C8();
  v20 = *(v50 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_bag);
  v21 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210840 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D21C40], v8);
  v43[1] = v21;
  v44 = v20;
  sub_24F92A368();
  (*(v9 + 8))(v11, v8);
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  sub_24F91E8D8();
  sub_24E6086DC(&unk_2861C24A8);
  sub_24E601704(&unk_2861C24C8, &qword_27F219F90);
  sub_24F91E8F8();
  v22 = *(v43[0] + 16);
  if (v22)
  {
    v23 = (v43[0] + 40);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_24E615CF4(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_24E615CF4((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v51[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
  v30 = sub_24F92AF68();
  v32 = v31;

  v51[0] = 1030972521;
  v51[1] = 0xE400000000000000;
  MEMORY[0x253050C20](v30, v32);

  v33 = v45;
  sub_24F92B128();
  sub_24F92B0E8();

  (*(v46 + 8))(v33, v47);
  sub_24F91E958();
  v34 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v34 setIncludeClientVersions_];
  v35 = [objc_opt_self() ams_sharedAccountStore];
  v36 = [v35 ams_activeiTunesAccount];

  [v34 setAccount_];
  [v34 setClientInfo_];
  v37 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
  [v34 setResponseDecoder_];

  [v34 setAnisetteType_];
  [v34 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318);
  v38 = sub_24F91E8E8();
  v39 = [v34 requestByEncodingRequest:v38 parameters:0];

  sub_24F92A9D8();
  v51[3] = sub_24F929638();
  v51[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_24F929628();
  v40 = v49;
  v41 = sub_24F92A938();

  (*(v48 + 8))(v19, v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v41;
}

void sub_24F5798C4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  sub_24F91F4E8();

  v13 = sub_24F928238();
  if (v3)
  {
    if (qword_27F211348 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39E670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v15 = v19[1];
    v16 = v20;
    v21[3] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    sub_24F928458();
    sub_24E601704(v21, &qword_27F2129B0);
    sub_24F92A5A8();

    v18 = MEMORY[0x277D84FA0];
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v19[-2] = v11;

    v18 = sub_24F57A4D0(sub_24F57B02C, &v19[-4], a2);
    (*(v8 + 8))(v11, v7);
  }

  *a3 = v18;
}

id RemotePersonalizationAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24F579D3C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24F579DA8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC37328;
}

uint64_t sub_24F579E48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F579EA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24F579F74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_24F92AC28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;

  sub_24F928398();

  sub_24F928398();
  sub_24F9282B8();
  v13 = *(v7 + 8);
  v13(v9, v6);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F2213B0);
    v14 = 0;
  }

  else
  {
    v15 = v18;
    (*(v4 + 32))(v18, v2, v3);
    v14 = sub_24F92AC18();
    (*(v4 + 8))(v15, v3);
  }

  v13(v12, v6);
  return v14 & 1;
}

uint64_t sub_24F57A258()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v4 = sub_24F928348();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    if (v4 == 0x6573616863727570 && v6 == 0xE900000000000064)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_24F92CE08();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_24F57A3A8(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_24F57AA4C(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_24F57A440(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24F57A774(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24F57A4D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v6;
    v26 = &v24;
    MEMORY[0x28223BE20](a1);
    v25 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v7);
    v27 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = v17[1];
      v29[0] = *v17;
      v29[1] = v18;

      v19 = v28(v29);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_24F7A8894(v25, v24, v27, a3);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_24F7A8894(v25, v24, v27, a3);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_24F57A440(v22, v6, a3, v28);

  result = MEMORY[0x2530542D0](v22, -1, -1);
  if (!v3)
  {
    return v23;
  }

  return result;
}

uint64_t sub_24F57A774(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v24 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;

    v18 = v24(v23);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_24F7A8894(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_24F57A8E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_24F7A918C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24F57AA4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();
    v18 = *(*(a4 + v9) + 16);

    if (v18 && (sub_24E7728F0(v17, v16), (v19 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_17:

        return sub_24F7A8894(v22, a2, v23, a3);
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F57ABEC(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v37 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x28223BE20](v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v35 = 0;
    v36 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_12:
      v17 = v4;
      v18 = v14 | (v7 << 6);
      v19 = (*(v4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v23 = v36;
      v22 = v37;
      swift_beginAccess();
      v8 = *&v22[v23];
      v24 = *(v8 + 16);

      if (v24 && (sub_24E7728F0(v21, v20), (v25 & 1) != 0))
      {
        swift_endAccess();

        v4 = v17;
        v12 = v38;
      }

      else
      {
        swift_endAccess();

        *&v34[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        v26 = __OFADD__(v35++, 1);
        v4 = v17;
        v12 = v38;
        if (v26)
        {
          __break(1u);
LABEL_18:
          v27 = sub_24F7A8894(v34, v32, v35, v4);

          return v27;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;
  v27 = sub_24F57A3A8(v29, v7, v4, v30);

  MEMORY[0x2530542D0](v29, -1, -1);

  return v27;
}

uint64_t sub_24F57AED0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F57AF18()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AF58()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AFA0()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AFD8()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_74()
{
  v1 = sub_24F91EB58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F57B100(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_24F91EB58() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

void sub_24F57B1F0()
{
  sub_24F58D7B4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F58DCC8(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F58DCC8(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24F58DC64(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24F58DC64(319, &qword_27F2483E0, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24F58DCC8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24EDA2B80();
              if (v6 <= 0x3F)
              {
                sub_24F928FD8();
                if (v7 <= 0x3F)
                {
                  sub_24F929158();
                  if (v8 <= 0x3F)
                  {
                    sub_24F58DC64(319, &qword_27F2483E8, type metadata accessor for LocalPlayerProvider, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for FeedRefreshNotifier();
                      if (v10 <= 0x3F)
                      {
                        sub_24E6C5550();
                        if (v11 <= 0x3F)
                        {
                          sub_24F58D7B4(319, &qword_27F2483F0, &qword_27F216F48, &unk_24F944850, MEMORY[0x277CE10B8]);
                          if (v12 <= 0x3F)
                          {
                            sub_24F58DC64(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for NetworkConnectionMonitor();
                              if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_24F57B560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[16];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[17];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[19] + 24);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_24F929158();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[24];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[29];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24F57B7AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[16];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[19] + 24) = (a2 - 1);
    return result;
  }

  v17 = sub_24F929158();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[24];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[29];

  return v19(v20, a2, a2, v18);
}

unint64_t sub_24F57BA10()
{
  result = qword_27F2483F8;
  if (!qword_27F2483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2483F8);
  }

  return result;
}

uint64_t sub_24F57BA64(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24F927818();
}

uint64_t sub_24F57BC34@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v9;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v50 = a1;
  sub_24E615E00(a1, v54);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215760);
  v22 = v21[13];
  *(a4 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = a4 + v21[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a4 + v21[15];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v21[16];
  *(a4 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  sub_24F91F618();
  (*(v15 + 16))(v18, v20, v14);
  v26 = v42;
  sub_24F926F28();
  (*(v15 + 8))(v20, v14);
  v27 = a4 + v21[18];
  LOBYTE(v51) = 1;
  sub_24F926F28();
  v28 = v53;
  *v27 = v52;
  *(v27 + 1) = v28;
  v29 = (a4 + v21[30]);
  sub_24F929EB8();
  v51 = sub_24F929EA8();
  sub_24F926F28();
  v30 = v53;
  *v29 = v52;
  v29[1] = v30;
  sub_24E615E00(v54, a4 + v21[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v31 = v44;
  sub_24F92A448();
  v32 = v46;
  sub_24F92A408();
  (*(v45 + 8))(v31, v32);
  (*(v43 + 8))(v13, v26);
  v33 = v53;
  v34 = (a4 + v21[23]);
  *v34 = v52;
  v34[1] = v33;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(a4 + v21[25]) = v52;
  v35 = (a4 + v21[27]);
  *v35 = sub_24F57C818;
  v35[1] = 0;
  v36 = (a4 + v21[28]);
  *v36 = sub_24F586C58;
  v36[1] = a2;
  *(a4 + v21[20]) = a2;
  *(a4 + v21[22]) = v47 & 1;
  *(a4 + v21[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();
  swift_retain_n();
  sub_24F928F28();
  *(a4 + v21[26]) = v52;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(a4 + v21[31]) = v52;
  v37 = __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  MEMORY[0x28223BE20](v37);
  (*(v39 + 16))(&v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v50);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_24F57C2F4()
{
  sub_24F58D394();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F57C330@<X0>(_BYTE *a1@<X8>)
{
  sub_24F58D394();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F57C3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v6 = sub_24F928D28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_24F928D38();
  swift_getWitnessTable();
  sub_24F925FC8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F57C5E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24E60169C(a1, &v9 - v6, &qword_27F220F50);
  sub_24E60169C(v7, v4, &qword_27F220F50);
  sub_24F58BC60();
  sub_24F924878();
  return sub_24E601704(v7, &qword_27F220F50);
}

uint64_t sub_24F57C70C(uint64_t a1)
{
  v2 = sub_24F923418();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924488();
}

uint64_t sub_24F57C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + v10[20], v9, qword_27F220E38);
  v11 = *(a1 + v10[21]);
  sub_24E60169C(a1 + v10[24], v6, &qword_27F21D8F8);
  v12 = type metadata accessor for Page.Background(0);
  LOBYTE(a1) = (*(*(v12 - 8) + 48))(v6, 1, v12) == 1;
  sub_24E601704(v6, &qword_27F21D8F8);
  sub_24E6009C8(v9, a2, qword_27F220E38);
  result = type metadata accessor for DefaultPageHeaderView();
  *(a2 + *(result + 20)) = v11;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_24F57C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F58E928(a1, a3, type metadata accessor for Page);
  *(a3 + *(type metadata accessor for DefaultPageShelvesContentView() + 20)) = a2;
}

BOOL sub_24F57CA34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_24F769764(&v8 - v4);
  sub_24F769764(v2);
  v6 = sub_24F4D9600(v5, v2);
  sub_24E601704(v2, &qword_27F215598);
  sub_24E601704(v5, &qword_27F215598);
  return v6;
}

uint64_t sub_24F57CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v3 - 8);
  v181 = &v142 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  v6 = *(v5 - 8);
  v178 = v5;
  v179 = v6;
  MEMORY[0x28223BE20](v5);
  v177 = &v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = &v142 - v11;
  v12 = a1;
  v170 = a1;
  v173 = *(a1 - 8);
  *&v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v13);
  v172 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  MEMORY[0x28223BE20](v15 - 8);
  v171 = &v142 - v16;
  v184 = type metadata accessor for Page(255);
  v185 = sub_24F921BC8();
  v183 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750);
  v169 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v187 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v186 = *(v12 + 16);
  v188 = v186;
  v189 = sub_24F924038();
  v190 = v17;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v18 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v227 = MEMORY[0x277CE0880];
  v19 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable();
  v187 = v18;
  v188 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v21 = sub_24F926DC8();
  v187 = v18;
  v188 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_24E667ED0();
  v224 = OpaqueTypeConformance2;
  v225 = v23;
  v222 = swift_getWitnessTable();
  v223 = OpaqueTypeConformance2;
  v167 = MEMORY[0x277CE0340];
  v221 = swift_getWitnessTable();
  v168 = MEMORY[0x277CE0FB0];
  v24 = swift_getWitnessTable();
  v187 = v21;
  v188 = v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v25 = sub_24F924038();
  v187 = v21;
  v188 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v219 = v26;
  v220 = v27;
  v28 = swift_getWitnessTable();
  v166 = MEMORY[0x277CE0868];
  v29 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v217 = v28;
  v218 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_24E669F00();
  v215 = v30;
  v216 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24E669F54();
  v213 = v32;
  v214 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v211 = v34;
  v212 = v35;
  v165 = v19;
  v36 = swift_getWitnessTable();
  v187 = v25;
  v188 = v36;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v37 = sub_24F924038();
  v38 = sub_24F5877B0();
  v187 = v25;
  v188 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v209 = v39;
  v210 = v40;
  v41 = swift_getWitnessTable();
  v187 = v169;
  v188 = v37;
  v189 = &type metadata for AppEventDetailSideBySideStyling;
  v190 = v38;
  v191 = v41;
  v192 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView();
  v42 = sub_24F924E38();
  v207 = swift_getWitnessTable();
  v208 = v41;
  v43 = swift_getWitnessTable();
  v187 = v42;
  v188 = v43;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  v187 = v42;
  v188 = v43;
  v205 = swift_getOpaqueTypeConformance2();
  v206 = v43;
  v204 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v45 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v202 = v44;
  v203 = v45;
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  v46 = sub_24F924038();
  v47 = sub_24E602068(&qword_27F237758, &qword_27F237750);
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CE0790];
  v200 = v48;
  v201 = MEMORY[0x277CE0790];
  v198 = swift_getWitnessTable();
  v199 = v49;
  v50 = swift_getWitnessTable();
  v187 = v183;
  v188 = v46;
  v189 = v47;
  v190 = v50;
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  v51 = sub_24F924038();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  v53 = swift_getWitnessTable();
  v54 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier);
  v196 = v53;
  v197 = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier);
  v194 = v55;
  v195 = v56;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x277D839B0];
  v187 = v51;
  v188 = MEMORY[0x277D839B0];
  v59 = MEMORY[0x277D839C8];
  v189 = v57;
  v190 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v183 = OpaqueTypeMetadata2;
  v61 = sub_24E6A4C1C();
  v187 = &type metadata for GameOverlayViewPredicate;
  v188 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v187 = v51;
  v188 = v58;
  v189 = v57;
  v190 = v59;
  v63 = swift_getOpaqueTypeConformance2();
  v187 = v51;
  v188 = v52;
  v64 = v52;
  v189 = OpaqueTypeMetadata2;
  v190 = v57;
  v191 = v62;
  v192 = v63;
  v65 = swift_getOpaqueTypeMetadata2();
  v156 = v65;
  v66 = sub_24F921C58();
  v155 = v66;
  v67 = sub_24F58786C(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  v154 = v67;
  v187 = v51;
  v188 = v64;
  v189 = v183;
  v190 = v57;
  v191 = v62;
  v192 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v153 = v68;
  v152 = sub_24F58786C(&qword_27F248440, MEMORY[0x277D7EC80]);
  v187 = v184;
  v188 = v185;
  v189 = v65;
  v190 = v66;
  v191 = v67;
  v192 = v68;
  v193 = v152;
  v69 = sub_24F921908();
  v157 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v149 = &v142 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448);
  v72 = swift_getWitnessTable();
  v73 = sub_24E602068(&qword_27F248450, &qword_27F248448);
  v187 = v69;
  v188 = v71;
  v189 = v72;
  v190 = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v75 = sub_24F924038();
  v76 = *(v75 - 8);
  v150 = v75;
  v151 = v76;
  MEMORY[0x28223BE20](v75);
  v148 = &v142 - v77;
  v187 = v69;
  v188 = v71;
  v189 = v72;
  v190 = v73;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_24F58786C(&qword_27F23FB90, type metadata accessor for Page);
  v187 = v69;
  v188 = v74;
  v143 = v69;
  v144 = v72;
  v80 = v72;
  v189 = v72;
  v190 = v78;
  v81 = v78;
  v146 = v79;
  v147 = v78;
  v191 = v79;
  v82 = v79;
  v83 = swift_getOpaqueTypeMetadata2();
  v167 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v145 = &v142 - v84;
  v187 = v69;
  v188 = v74;
  v189 = v80;
  v190 = v81;
  v191 = v82;
  v85 = swift_getOpaqueTypeConformance2();
  v187 = v83;
  v188 = v85;
  v86 = swift_getOpaqueTypeMetadata2();
  v166 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v164 = &v142 - v87;
  v88 = sub_24F928FD8();
  v169 = v83;
  v187 = v83;
  v188 = v85;
  v158 = v85;
  v89 = swift_getOpaqueTypeConformance2();
  v168 = v86;
  v187 = v86;
  v188 = v88;
  v159 = v88;
  v162 = v89;
  v189 = v89;
  v165 = swift_getOpaqueTypeMetadata2();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v160 = &v142 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v161 = &v142 - v92;
  v93 = v170;
  v94 = *(v170 + 116);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v95 = v175;
  v142 = v94;
  v96 = v171;
  sub_24F926F58();
  v98 = v172;
  v97 = v173;
  v99 = v93;
  (*(v173 + 16))(v172, v95, v93);
  v100 = (*(v97 + 80) + 48) & ~*(v97 + 80);
  v101 = swift_allocObject();
  v102 = *(v99 + 32);
  *(v101 + 16) = v186;
  *(v101 + 32) = v102;
  v174 = v102;
  v103 = v98;
  v104 = v99;
  (*(v97 + 32))(v101 + v100, v103, v99);
  v105 = v149;
  v106 = v96;
  v107 = v184;
  sub_24F921918();
  v108 = *(v104 + 76);
  sub_24F926F58();
  v109 = (v95 + v108);
  v110 = v104;
  v111 = v148;
  v112 = v143;
  sub_24F57C3CC(v109, v106, v143, v107, v144);
  sub_24E601704(v106, &qword_27F216F50);
  (*(v157 + 8))(v105, v112);
  v113 = v95;
  v114 = v145;
  v185 = *(v104 + 96);
  v115 = v150;
  v116 = v113;
  sub_24F923FA8();
  (*(v151 + 8))(v111, v115);
  v118 = v176;
  v117 = v177;
  sub_24F926F38();
  v119 = v178;
  sub_24F9217F8();
  (*(v179 + 8))(v117, v119);
  if ((*(*(v107 - 8) + 48))(v118, 1, v107) == 1)
  {
    sub_24E601704(v118, &qword_27F22B380);
    v120 = sub_24F928818();
    v121 = v180;
    (*(*(v120 - 8) + 56))(v180, 1, 1, v120);
  }

  else
  {
    v122 = *(v107 + 24);
    v123 = sub_24F928818();
    v124 = *(v123 - 8);
    v121 = v180;
    (*(v124 + 16))(v180, v118 + v122, v123);
    sub_24F58B9FC(v118, type metadata accessor for Page);
    (*(v124 + 56))(v121, 0, 1, v123);
  }

  v125 = (v116 + *(v110 + 120));
  v127 = *v125;
  v126 = v125[1];
  v187 = v127;
  v188 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810);
  sub_24F926F38();
  v128 = v181;
  sub_24F921B38();
  v129 = sub_24F921B48();
  (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
  v130 = v164;
  v131 = v169;
  sub_24F925E58();

  sub_24E601704(v128, &qword_27F2157E8);
  sub_24E601704(v121, &qword_27F2157F0);
  v132 = (*(v167 + 8))(v114, v131);
  MEMORY[0x28223BE20](v132);
  v133 = swift_checkMetadataState();
  v134 = v160;
  v135 = v168;
  v136 = v162;
  sub_24F925EB8();
  (*(v166 + 8))(v130, v135);
  v187 = v135;
  v188 = v133;
  v189 = v136;
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v161;
  v139 = v165;
  sub_24E7896B8(v134, v165, v137);
  v140 = *(v163 + 8);
  v140(v134, v139);
  sub_24E7896B8(v138, v139, v137);
  return (v140)(v138, v139);
}

uint64_t sub_24F57E204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v249 = a6;
  v253 = a5;
  v250 = a3;
  v247 = a2;
  v252 = a1;
  v227 = a7;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v226 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v225 = &v179 - v11;
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  MEMORY[0x28223BE20](ActionViewModifier);
  v224 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A708();
  v237 = *(v13 - 8);
  v238 = v13;
  MEMORY[0x28223BE20](v13);
  v236 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468);
  MEMORY[0x28223BE20](v15 - 8);
  v234 = &v179 - v16;
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v223 = (&v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248470);
  v187 = *(v18 - 8);
  v188 = v18;
  MEMORY[0x28223BE20](v18);
  v186 = &v179 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v20 - 8);
  v182 = &v179 - v21;
  v184 = sub_24F92BED8();
  v181 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v179 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248478);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v180 = &v179 - v23;
  *&v288 = a3;
  v251 = a4;
  *(&v288 + 1) = a4;
  *&v289 = a5;
  *(&v289 + 1) = a6;
  v245 = type metadata accessor for BasePageView();
  v248 = *(v245 - 8);
  v231 = v248[8];
  MEMORY[0x28223BE20](v245);
  v246 = &v179 - v24;
  v233 = type metadata accessor for Page(0);
  v242 = *(v233 - 8);
  v230 = *(v242 + 64);
  MEMORY[0x28223BE20](v233);
  v244 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750);
  v243 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  *&v288 = v26;
  *(&v288 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  *&v289 = sub_24F924038();
  *(&v289 + 1) = v26;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v27 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v328 = MEMORY[0x277CE0880];
  v28 = MEMORY[0x277CDFAD8];
  v29 = swift_getWitnessTable();
  *&v288 = v27;
  *(&v288 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v30 = sub_24F926DC8();
  *&v288 = v27;
  *(&v288 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_24E667ED0();
  v325 = OpaqueTypeConformance2;
  v326 = v32;
  v323 = swift_getWitnessTable();
  v324 = OpaqueTypeConformance2;
  v228 = MEMORY[0x277CE0340];
  v322 = swift_getWitnessTable();
  v232 = MEMORY[0x277CE0FB0];
  v33 = swift_getWitnessTable();
  *&v288 = v30;
  *(&v288 + 1) = v33;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v34 = sub_24F924038();
  *&v288 = v30;
  *(&v288 + 1) = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v320 = v35;
  v321 = v36;
  v37 = swift_getWitnessTable();
  v222 = MEMORY[0x277CE0868];
  v38 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v318 = v37;
  v319 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_24E669F00();
  v316 = v39;
  v317 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_24E669F54();
  v314 = v41;
  v315 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v312 = v43;
  v313 = v44;
  v217 = v28;
  v45 = swift_getWitnessTable();
  *&v288 = v34;
  *(&v288 + 1) = v45;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v46 = sub_24F924038();
  v47 = sub_24F5877B0();
  *&v288 = v34;
  *(&v288 + 1) = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v310 = v48;
  v311 = v49;
  v50 = swift_getWitnessTable();
  *&v288 = v243;
  *(&v288 + 1) = v46;
  *&v289 = &type metadata for AppEventDetailSideBySideStyling;
  *(&v289 + 1) = v47;
  *&v290 = v50;
  *(&v290 + 1) = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView();
  v51 = sub_24F924E38();
  v308 = swift_getWitnessTable();
  v309 = v50;
  v52 = swift_getWitnessTable();
  *&v288 = v51;
  *(&v288 + 1) = v52;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  v53 = sub_24F924038();
  *&v288 = v51;
  *(&v288 + 1) = v52;
  v306 = swift_getOpaqueTypeConformance2();
  v307 = v52;
  v305 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v55 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v303 = v54;
  v304 = v55;
  v229 = v53;
  v202 = swift_getWitnessTable();
  v195 = sub_24F924278();
  v197 = sub_24F924038();
  v56 = sub_24F924038();
  v57 = sub_24E602068(&qword_27F237758, &qword_27F237750);
  v194 = swift_getWitnessTable();
  v58 = MEMORY[0x277CE0790];
  v301 = v194;
  v302 = MEMORY[0x277CE0790];
  v196 = swift_getWitnessTable();
  v299 = v196;
  v300 = v58;
  v59 = swift_getWitnessTable();
  *&v288 = v241;
  v204 = v57;
  v205 = v56;
  *(&v288 + 1) = v56;
  *&v289 = v57;
  v203 = v59;
  *(&v289 + 1) = v59;
  v60 = sub_24F924288();
  v61 = sub_24F924038();
  v219 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v218 = &v179 - v62;
  v63 = sub_24F924038();
  v221 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v232 = &v179 - v64;
  v215 = v60;
  v65 = swift_getWitnessTable();
  v66 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier);
  v206 = v65;
  v297 = v65;
  v298 = v66;
  v220 = v61;
  v67 = swift_getWitnessTable();
  v68 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier);
  v211 = v67;
  v295 = v67;
  v296 = v68;
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277D839B0];
  *&v288 = v63;
  *(&v288 + 1) = MEMORY[0x277D839B0];
  v71 = MEMORY[0x277D839C8];
  *&v289 = v69;
  *(&v289 + 1) = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = sub_24E6A4C1C();
  *&v288 = &type metadata for GameOverlayViewPredicate;
  v207 = v73;
  *(&v288 + 1) = v73;
  v74 = swift_getOpaqueTypeConformance2();
  *&v288 = v63;
  *(&v288 + 1) = v70;
  *&v289 = v69;
  *(&v289 + 1) = v71;
  v75 = swift_getOpaqueTypeConformance2();
  v222 = v63;
  *&v288 = v63;
  *(&v288 + 1) = v240;
  v210 = OpaqueTypeMetadata2;
  *&v289 = OpaqueTypeMetadata2;
  v217 = v69;
  *(&v289 + 1) = v69;
  v214 = v74;
  *&v290 = v74;
  v212 = v75;
  *(&v290 + 1) = v75;
  v216 = swift_getOpaqueTypeMetadata2();
  v213 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v208 = &v179 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v209 = &v179 - v78;
  v228 = type metadata accessor for Page;
  v79 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v80 = v248;
  v81 = v248 + 2;
  v243 = v248[2];
  v82 = v245;
  (v243)(v246, v247, v245);
  v83 = *(v242 + 80);
  v84 = (v83 + 48) & ~v83;
  v85 = *(v80 + 80);
  v86 = (v230 + v85 + v84) & ~v85;
  v242 = v83 | v85;
  v198 = &v231[v86];
  v87 = swift_allocObject();
  v88 = v251;
  v87[2] = v250;
  v87[3] = v88;
  v89 = v249;
  v87[4] = v253;
  v87[5] = v89;
  v199 = v84;
  v90 = v87 + v84;
  v91 = v79;
  sub_24F58EB60(v79, v90, v228);
  v92 = v80 + 4;
  v93 = v80[4];
  v248 = v92;
  v200 = v86;
  v94 = v246;
  (v93)(v87 + v86, v246, v82);
  v95 = sub_24F924268();
  v193 = v96;
  *&v261 = v95;
  *(&v261 + 1) = v96;
  v97 = v82;
  v229 = v81;
  (v243)(v94, v247, v82);
  v98 = v228;
  sub_24F58E928(v252, v91, v228);
  v99 = (v85 + 48) & ~v85;
  v100 = &v231[v83 + v99] & ~v83;
  v201 = v100 + v230;
  v101 = swift_allocObject();
  v102 = v251;
  v101[2] = v250;
  v101[3] = v102;
  v103 = v249;
  v101[4] = v253;
  v101[5] = v103;
  v202 = v99;
  v231 = v93;
  (v93)(v101 + v99, v94, v97);
  v230 = v100;
  sub_24F58EB60(v91, v101 + v100, v98);
  sub_24F926AA8();

  v104 = v289;
  v105 = v290;
  v261 = v288;
  v262 = v289;
  v263 = v290;
  sub_24F9261E8();

  sub_24E824448(v104);
  sub_24E824448(v105);
  v268 = v278;
  v189 = v279;
  v190 = v281;
  v269 = v279;
  v191 = v283;
  v192 = v280;
  v270 = v280;
  v271 = v281;
  v193 = v285;
  v194 = v282;
  v272 = v282;
  v273 = v283;
  v196 = v284;
  v197 = v286;
  v274 = v284;
  v275 = v285;
  v276 = v286;
  v195 = v287;
  v277 = v287;
  v106 = *(v252 + *(v233 + 104));
  v107 = *(v106 + 16);
  v228 = v106;
  v108 = (v106 + 40);
  v109 = v107 + 1;
  while (--v109)
  {
    v110 = *(v108 - 1);
    v111 = *v108;
    v108 += 16;
    if (v111 >= 2 && v110 != 0)
    {
      v113 = v247;
      *&v288 = *(*(v247 + *(v245 + 104)) + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
      sub_24E602068(&qword_27F230DC8, &qword_27F230DC0);
      *&v288 = sub_24F9230C8();
      v114 = v179;
      sub_24F92BEC8();
      sub_24E74EC40();
      v115 = sub_24F92BEF8();
      *&v261 = v115;
      v116 = sub_24F92BEB8();
      v117 = v182;
      (*(*(v116 - 8) + 56))(v182, 1, 1, v116);
      sub_24F58786C(&qword_27F21F498, sub_24E74EC40);
      v118 = v180;
      sub_24F923128();
      sub_24E601704(v117, &qword_27F21F468);

      v119 = v113;
      (*(v181 + 8))(v114, v184);

      sub_24E602068(&qword_27F248480, &qword_27F248478);
      v120 = v185;
      v121 = sub_24F9230C8();
      (*(v183 + 8))(v118, v120);
      goto LABEL_9;
    }
  }

  v122 = v186;
  sub_24F923038();
  sub_24E602068(&qword_27F248488, &qword_27F248470);
  v123 = v188;
  v121 = sub_24F9230C8();
  (*(v187 + 8))(v122, v123);
  v119 = v247;
LABEL_9:
  *&v261 = v121;
  v124 = v252;
  v125 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v126 = v246;
  v127 = v245;
  (v243)(v246, v119, v245);
  v128 = swift_allocObject();
  v129 = v251;
  v128[2] = v250;
  v128[3] = v129;
  v130 = v249;
  v128[4] = v253;
  v128[5] = v130;
  sub_24F58EB60(v125, v128 + v199, type metadata accessor for Page);
  (v231)(v128 + v200, v126, v127);
  sub_24F926BC8();

  sub_24E824448(v192);
  sub_24E824448(v194);
  sub_24E824448(v196);
  sub_24E824448(v197);
  v265 = v292;
  v266 = v293;
  v267 = v294;
  v261 = v288;
  v262 = v289;
  v263 = v290;
  v264 = v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);
  sub_24F926F58();
  (*(v237 + 16))(v236, v124, v238);
  v131 = v228 + 40;
  v132 = *(v228 + 2) + 1;
  while (--v132)
  {
    v133 = v131 + 16;
    v134 = *v131;
    v131 += 16;
    if (v134 == 1)
    {
      v135 = *(v133 - 3);
      goto LABEL_14;
    }
  }

  v135 = 0;
LABEL_14:
  v136 = v132 == 0;
  v137 = v246;
  v138 = v119;
  v139 = v245;
  (v243)(v246, v138, v245);
  v140 = v252;
  v141 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v142 = swift_allocObject();
  v143 = v251;
  *(v142 + 2) = v250;
  *(v142 + 3) = v143;
  v144 = v249;
  *(v142 + 4) = v253;
  *(v142 + 5) = v144;
  (v231)(v142 + v202, v137, v139);
  sub_24F58EB60(v141, v142 + v230, type metadata accessor for Page);
  KeyPath = swift_getKeyPath();
  v146 = v223;
  *v223 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  swift_storeEnumTagMultiPayload();
  v147 = refreshed;
  sub_24E6009C8(v234, v146 + *(refreshed + 20), &qword_27F248468);
  (*(v237 + 32))(v146 + v147[6], v236, v238);
  v148 = v146 + v147[7];
  *v148 = v135;
  *(v148 + 8) = v136;
  v149 = (v146 + v147[8]);
  *v149 = sub_24F58B8D0;
  v149[1] = v142;
  v150 = v218;
  v151 = v215;
  MEMORY[0x25304C420](v146, v215, v147, v206);
  sub_24F58B9FC(v146, type metadata accessor for OnForegroundRefreshViewModifier);
  v259[5] = v266;
  v260 = v267;
  v259[0] = v261;
  v259[1] = v262;
  v259[3] = v264;
  v259[4] = v265;
  v259[2] = v263;
  (*(*(v151 - 8) + 8))(v259, v151);
  sub_24E60169C(v140 + *(v233 + 112), &v254, qword_27F24EC90);
  v152 = ActionViewModifier;
  v153 = v224;
  v154 = &v224[*(ActionViewModifier + 24)];
  v155 = v255;
  *v154 = v254;
  *(v154 + 1) = v155;
  *(v154 + 4) = v256;
  *v153 = swift_getKeyPath();
  *(v153 + 40) = 0;
  v156 = *(v152 + 20);
  *(v153 + v156) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v157 = v153 + *(v152 + 28);
  v258 = 0;
  sub_24F926F28();
  v158 = *(&v254 + 1);
  *v157 = v254;
  *(v157 + 8) = v158;
  v159 = v220;
  MEMORY[0x25304C420](v153, v220, v152, v211);
  sub_24F58B9FC(v153, type metadata accessor for PerformPageLoadActionViewModifier);
  (*(v219 + 8))(v150, v159);
  v160 = v225;
  v161 = sub_24F924B68();
  v248 = &v179;
  MEMORY[0x28223BE20](v161);
  v162 = v251;
  *(&v179 - 6) = v250;
  *(&v179 - 5) = v162;
  v163 = v249;
  *(&v179 - 4) = v253;
  *(&v179 - 3) = v163;
  v178 = v140;
  v164 = swift_checkMetadataState();
  v165 = v212;
  v177 = v212;
  v166 = v208;
  v167 = v222;
  v168 = v240;
  v169 = v217;
  v170 = v214;
  v171 = v232;
  sub_24F926B08();
  (*(v226 + 8))(v160, v168);
  (*(v221 + 8))(v171, v167);
  *&v254 = v167;
  *(&v254 + 1) = v168;
  *&v255 = v164;
  *(&v255 + 1) = v169;
  v256 = v170;
  v257 = v165;
  v172 = swift_getOpaqueTypeConformance2();
  v173 = v209;
  v174 = v216;
  sub_24E7896B8(v166, v216, v172);
  v175 = *(v213 + 8);
  v175(v166, v174);
  sub_24E7896B8(v173, v174, v172);
  return (v175)(v173, v174);
}

uint64_t sub_24F57FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a3;
  v66 = a7;
  v63 = a2;
  v64 = a6;
  v61 = a5;
  v62 = a4;
  v68 = a1;
  v69 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v55 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  type metadata accessor for Page(255);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v84 = v11;
  v85 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v86 = sub_24F924038();
  v87 = v11;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v12 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v108 = MEMORY[0x277CE0880];
  v70 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v84 = v12;
  v85 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v14 = sub_24F926DC8();
  v84 = v12;
  v85 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_24E667ED0();
  v105 = OpaqueTypeConformance2;
  v106 = v16;
  v103 = swift_getWitnessTable();
  v104 = OpaqueTypeConformance2;
  v57 = MEMORY[0x277CE0340];
  v102 = swift_getWitnessTable();
  v60 = MEMORY[0x277CE0FB0];
  v17 = swift_getWitnessTable();
  v84 = v14;
  v85 = v17;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v18 = sub_24F924038();
  v84 = v14;
  v85 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v100 = v19;
  v101 = v20;
  v21 = swift_getWitnessTable();
  v58 = MEMORY[0x277CE0868];
  v22 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v98 = v21;
  v99 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_24E669F00();
  v96 = v23;
  v97 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E669F54();
  v94 = v25;
  v95 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v92 = v27;
  v93 = v28;
  v29 = swift_getWitnessTable();
  v84 = v18;
  v85 = v29;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v30 = sub_24F924038();
  v31 = sub_24F5877B0();
  v84 = v18;
  v85 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v90 = v32;
  v91 = v33;
  v34 = swift_getWitnessTable();
  v84 = v59;
  v85 = v30;
  v86 = &type metadata for AppEventDetailSideBySideStyling;
  v87 = v31;
  v88 = v34;
  v89 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView();
  v35 = sub_24F924E38();
  v82 = swift_getWitnessTable();
  v83 = v34;
  v36 = swift_getWitnessTable();
  v84 = v35;
  v85 = v36;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  v37 = sub_24F926DC8();
  v56 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v55 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  v40 = sub_24F924038();
  v59 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v55 = &v55 - v44;
  v71 = v62;
  v72 = v61;
  v73 = v64;
  v74 = v66;
  v75 = v63;
  v76 = v65;
  v84 = v35;
  v85 = v36;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v36;
  v45 = swift_getWitnessTable();
  sub_24F926DB8();
  swift_getKeyPath();
  v46 = sub_24F924098();
  v47 = *(v46 - 8);
  v48 = v67;
  (*(v47 + 16))(v67, v68, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v79 = v45;
  v49 = swift_getWitnessTable();
  sub_24F9261B8();

  sub_24E601704(v48, &qword_27F220F50);
  (*(v56 + 8))(v39, v37);
  v50 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v77 = v49;
  v78 = v50;
  v51 = swift_getWitnessTable();
  v52 = v55;
  sub_24E7896B8(v42, v40, v51);
  v53 = *(v59 + 8);
  v53(v42, v40);
  sub_24E7896B8(v52, v40, v51);
  return (v53)(v52, v40);
}

void sub_24F58085C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a2;
  v70 = a1;
  v74 = a7;
  v71 = type metadata accessor for Page(0);
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = v11;
  v63 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  v79 = a4;
  v66 = a5;
  v80 = a5;
  v67 = a6;
  v81 = a6;
  v72 = type metadata accessor for BasePageView();
  v60 = *(v72 - 8);
  v59[4] = *(v60 + 64);
  MEMORY[0x28223BE20](v72);
  v59[5] = v59 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v78 = v13;
  v64 = a3;
  v79 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v65 = a4;
  v80 = sub_24F924038();
  v81 = v13;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v14 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v102 = MEMORY[0x277CE0880];
  v15 = swift_getWitnessTable();
  v78 = v14;
  v79 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v16 = sub_24F926DC8();
  v78 = v14;
  v79 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_24E667ED0();
  v99 = OpaqueTypeConformance2;
  v100 = v18;
  v97 = swift_getWitnessTable();
  v98 = OpaqueTypeConformance2;
  v69 = MEMORY[0x277CE0340];
  v96 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v78 = v16;
  v79 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v20 = sub_24F924038();
  v78 = v16;
  v79 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v94 = v21;
  v95 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v92 = v23;
  v93 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E669F00();
  v90 = v25;
  v91 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_24E669F54();
  v88 = v27;
  v89 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v86 = v29;
  v87 = v30;
  v31 = swift_getWitnessTable();
  v78 = v20;
  v79 = v31;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v32 = sub_24F924038();
  v33 = sub_24F5877B0();
  v78 = v20;
  v79 = v31;
  v34 = v70;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v84 = v35;
  v85 = v36;
  v37 = swift_getWitnessTable();
  v78 = v75;
  v79 = v32;
  v80 = &type metadata for AppEventDetailSideBySideStyling;
  v81 = v33;
  v82 = v37;
  v83 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView();
  v38 = sub_24F924E38();
  MEMORY[0x28223BE20](v38);
  v40 = v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v75 = v59 - v42;
  v76 = swift_getWitnessTable();
  v77 = v37;
  v43 = swift_getWitnessTable();
  v78 = v38;
  v79 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  MEMORY[0x28223BE20](v46);
  v59[3] = v59 - v47;
  v68 = v48;
  v49 = sub_24F924E38();
  v69 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = v59 - v50;
  v52 = *(v34 + *(v71 + 104));
  v53 = (v52 + 40);
  v54 = *(v52 + 16) + 1;
  while (--v54)
  {
    v55 = *(v53 - 1);
    v56 = *v53;
    v53 += 16;
    if (v56 >= 2 && v55 == 0)
    {
      v59[2] = v51;
      v58 = *(v72 + 100);
      v59[1] = v45;
      sub_24F581628(*(v73 + v58), v34, v72, v75);
    }
  }

  sub_24F581628(*(v73 + *(v72 + 100)), v34, v72, v40);
}

void sub_24F581628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v183 = a2;
  v170 = a1;
  v169 = a4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  v182 = type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v178 = a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v176 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v175 = v6;
  sub_24F924038();
  swift_getTupleTypeMetadata();
  v151 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v179 = sub_24F921D68();
  v7 = sub_24F924038();
  v152 = swift_getWitnessTable();
  v205 = v152;
  v206 = MEMORY[0x277CE0880];
  v8 = swift_getWitnessTable();
  v172 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v9 = sub_24F926DC8();
  v154 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v204 = sub_24E667ED0();
  v201 = swift_getWitnessTable();
  v202 = OpaqueTypeConformance2;
  v156 = OpaqueTypeConformance2;
  v200 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v144 = v9;
  v171 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  v11 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  v145 = v11;
  v148 = sub_24F924038();
  v149 = sub_24F924038();
  v12 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v163 = v12;
  sub_24F924038();
  v155 = v10;
  v153 = swift_getOpaqueTypeConformance2();
  v198 = v153;
  v199 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v159 = swift_getWitnessTable();
  v196 = v159;
  v197 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v158 = swift_getWitnessTable();
  v194 = v158;
  v195 = sub_24E669F00();
  v157 = swift_getWitnessTable();
  v192 = v157;
  v193 = sub_24E669F54();
  v161 = swift_getWitnessTable();
  v190 = v161;
  v191 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v13 = swift_getWitnessTable();
  v14 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v15 = sub_24F924038();
  v16 = sub_24F5877B0();
  v162 = v13;
  v160 = swift_getOpaqueTypeConformance2();
  v188 = v160;
  v189 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  *&v184 = v177;
  *(&v184 + 1) = v15;
  *&v185 = &type metadata for AppEventDetailSideBySideStyling;
  v111 = v16;
  *(&v185 + 1) = v16;
  v168 = swift_getWitnessTable();
  v186 = v168;
  v187 = &off_286225930;
  v17 = type metadata accessor for AdaptiveSideBySideContainerView();
  v112 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v110 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v96 - v20;
  v167 = v21;
  v166 = sub_24F924E38();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v96 - v22;
  v98 = sub_24F924848();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v24 - 8);
  v147 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v146 = &v96 - v27;
  v129 = sub_24F929888();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v125 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v178;
  v180 = *(v178 - 8);
  v30 = *(v180 + 64);
  MEMORY[0x28223BE20](v31);
  v173 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v182);
  v33 = &v96 - v32;
  v115 = swift_checkMetadataState();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v35 = &v96 - v34;
  v118 = swift_checkMetadataState();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v96 - v36;
  v37 = v181;
  v124 = swift_checkMetadataState();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v116 = &v96 - v38;
  v123 = swift_checkMetadataState();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v96 - v39;
  v128 = swift_checkMetadataState();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v120 = &v96 - v40;
  v137 = swift_checkMetadataState();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v179 = &v96 - v41;
  v135 = swift_checkMetadataState();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v96 - v42;
  v133 = swift_checkMetadataState();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v96 - v43;
  v145 = swift_checkMetadataState();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v140 = &v96 - v44;
  v143 = swift_checkMetadataState();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = &v96 - v45;
  v163 = v14;
  v141 = *(v14 - 8);
  MEMORY[0x28223BE20](v46);
  v138 = &v96 - v47;
  OpaqueTypeMetadata2 = v15;
  v149 = *(v15 - 8);
  MEMORY[0x28223BE20](v48);
  v99 = &v96 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v148 = &v96 - v51;
  v108 = v52;
  MEMORY[0x28223BE20](v53);
  v172 = &v96 - v54;
  LODWORD(v171) = sub_24F57CA34();
  sub_24F58E928(v183, v33, type metadata accessor for Page);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1 == 1 && qword_27F210D60 != -1)
  {
    swift_once();
  }

  v55 = v180;
  v56 = *(v180 + 16);
  v57 = v173;
  v104 = v180 + 16;
  v102 = v56;
  v56(v173, v37, v29);
  v58 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v103 = *(v55 + 80);
  v100 = v58 + v30;
  v59 = swift_allocObject();
  v60 = v175;
  v59[2] = v176;
  v59[3] = v60;
  v61 = *(v29 + 40);
  v107 = *(v29 + 32);
  v59[4] = v107;
  v59[5] = v61;
  v106 = v61;
  v62 = *(v55 + 32);
  v105 = v58;
  v180 = v55 + 32;
  v101 = v62;
  v62(v59 + v58, v57, v29);
  sub_24F921A38();
  swift_checkMetadataState();
  v63 = v182;
  sub_24F921D78();
  v64 = *(v183 + *(v63 + 128));
  if (v64 == 2 || (v64 & 1) == 0)
  {
    v67 = v181;
  }

  else
  {
    v65 = sub_24F925818();
    sub_24F925848();
    sub_24F925848();
    v66 = sub_24F925848();
    v67 = v181;
    if (v66 == v65)
    {
      goto LABEL_12;
    }
  }

  sub_24F925848();
LABEL_12:
  sub_24F924058();
  v68 = v113;
  v69 = v115;
  sub_24F926438();
  (*(v114 + 8))(v35, v69);
  *&v184 = 0;
  *(&v184 + 1) = 0xE000000000000000;
  sub_24F92A708();
  v70 = v183;
  sub_24F92CA38();
  v185 = 0u;
  v184 = 0u;
  v71 = v125;
  sub_24F929838();

  sub_24E601704(&v184, &qword_27F2129B0);
  v72 = v116;
  v73 = v118;
  sub_24F925EE8();
  (*(v127 + 8))(v71, v129);
  (*(v117 + 8))(v68, v73);
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  type metadata accessor for ArcadeSubscription();
  sub_24F928F28();
  v74 = *(v67 + *(v29 + 124));
  v75 = v182;
  *(&v185 + 1) = v182;
  v186 = &protocol witness table for Page;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v184);
  sub_24F58E928(v70, boxed_opaque_existential_1, type metadata accessor for Page);
  v77 = v119;
  v154 = v74;
  v78 = v124;
  sub_24F67B57C();

  (*(v122 + 8))(v72, v78);
  __swift_destroy_boxed_opaque_existential_1(&v184);
  v79 = v120;
  v80 = v123;
  sub_24F926398();
  (*(v121 + 8))(v77, v80);
  v81 = v75[24];
  v82 = v146;
  sub_24E60169C(v70 + v81, v146, &qword_27F21D8F8);
  v83 = v75[25];
  v84 = (v70 + v75[23]);
  v85 = *v84;
  v156 = v84[1];
  v170 = v85;
  v86 = v128;
  View.pageBackground(using:dragIndicatorVisibility:isSideBySide:)(v82, *(v70 + v83), (v85 != 0) & v171, v128, v153);
  sub_24E601704(v82, &qword_27F21D8F8);
  (*(v126 + 8))(v79, v86);
  v87 = v70 + v81;
  v88 = v147;
  sub_24E60169C(v87, v147, &qword_27F21D8F8);
  v89 = type metadata accessor for Page.Background(0);
  LODWORD(v75) = (*(*(v89 - 8) + 48))(v88, 1, v89);
  sub_24E601704(v88, &qword_27F21D8F8);
  if (v75 == 1)
  {
    v90 = v67 + *(v178 + 60);
    v91 = *v90;
    if (*(v90 + 8) != 1)
    {

      sub_24F92BDC8();
      v92 = sub_24F9257A8();
      sub_24F921FD8();

      v93 = v96;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v91, 0);
      (*(v97 + 8))(v93, v98);
      LOBYTE(v91) = v184;
    }
  }

  else
  {
    LOBYTE(v91) = 0;
  }

  LOBYTE(v184) = v91 & 1;
  v94 = v137;
  v95 = v179;
  View.backgroundTheme(_:)();
  (*(v136 + 8))(v95, v94);
  sub_24F5634EC();
}

uint64_t sub_24F583558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  sub_24F92B7F8();
  v6[12] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5835F8, v8, v7);
}

uint64_t sub_24F5835F8()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  v2 = type metadata accessor for BasePageView();
  sub_24F583690(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F583690(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = sub_24F91F648();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v16 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + *(v16 + 108), &v24, qword_27F24EC90);
  if (v25)
  {
    sub_24E612C80(&v24, v26);
    sub_24F928F28();
    (*(v9 + 104))(v11, *MEMORY[0x277D21E18], v8);
    sub_24F929288();

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(&v24, qword_27F21B590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
    sub_24F926F38();
    sub_24F9217B8();
    sub_24F926F48();
  }

  sub_24F91F618();
  v17 = v22;
  (*(v3 + 16))(v21, v7, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);
  sub_24F926F48();
  return (*(v3 + 8))(v7, v17);
}

uint64_t sub_24F583A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v11 = sub_24F91F648();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v18 = off_27F229AB8;
  swift_beginAccess();
  v19 = v18[20];
  if (v19 != 2 && (v19 != 1 || v18[26] != 1))
  {
    v22 = sub_24EB6B1B0();
    if (*(v21 + 8) != 2)
    {
      *(v21 + 90) = 1;
    }

    (v22)(&v46, 0);
  }

  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v23 = type metadata accessor for BasePageView();
  type metadata accessor for TaskUpdateHolder();
  sub_24F928F28();
  v24 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  sub_24F926F58();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
  v26 = OBJC_IVAR____TtC12GameStoreKit16TaskUpdateHolder_taskUpdate;
  swift_beginAccess();
  sub_24F58BB9C(v17, v24 + v26);
  swift_endAccess();
  v27 = *(a1 + *(v23 + 124));
  swift_getKeyPath();
  v46 = v27;
  sub_24F58786C(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v28 = *(v27 + 16) < 2u;
  v29 = (a1 + *(v23 + 72));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v46) = v30;
  v47 = v31;
  v45 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  v32 = type metadata accessor for Page(0);
  v33 = v44;
  v34 = *(v44 + *(v32 + 104));
  v35 = (v34 + 40);
  v36 = *(v34 + 16) + 1;
  while (--v36)
  {
    v37 = v35 + 16;
    v38 = *v35;
    v35 += 16;
    if (!v38)
    {
      v39 = *(v37 - 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);
      sub_24F926F38();
      sub_24F91F5C8();
      v41 = v40;
      (*(v12 + 8))(v14, v11);
      if (v39 < fabs(v41))
      {
        sub_24F583690(v33, v23);
      }
    }
  }
}

uint64_t sub_24F583E94()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v0 = off_27F229AB8;
  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    result = sub_24E601704(&v13, &qword_27F229AE8);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8);
}

uint64_t sub_24F584078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E850);
  sub_24F58E928(a2, v15, type metadata accessor for Page);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = a3;
    v35 = a6;
    v22 = v21;
    v36[0] = v21;
    *v20 = 136315138;
    v23 = sub_24F92A6E8();
    v24 = a5;
    v25 = a7;
    v27 = v26;
    sub_24F58B9FC(v15, type metadata accessor for Page);
    v28 = sub_24E7620D4(v23, v27, v36);
    a7 = v25;
    a5 = v24;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Refreshing page %s for feed refresh", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    a6 = v35;
    MEMORY[0x2530542D0](v22, -1, -1);
    v29 = v20;
    a4 = v33;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  else
  {

    sub_24F58B9FC(v15, type metadata accessor for Page);
  }

  v36[0] = a4;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = a7;
  v30 = type metadata accessor for BasePageView();
  return sub_24F583690(a2, v30);
}

uint64_t sub_24F5842D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, ValueMetadata *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v95 = a6;
  v96 = a7;
  v97 = a3;
  v98 = a1;
  v90 = a2;
  v99 = a8;
  v12 = type metadata accessor for Page(0);
  v93 = *(v12 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a4;
  v116 = a5;
  v88 = a4;
  v86 = a5;
  v117 = a6;
  v118 = a7;
  v85 = type metadata accessor for BasePageView();
  v89 = *(v85 - 8);
  v91 = *(v89 + 64);
  MEMORY[0x28223BE20](v85);
  v87 = &v79 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  v115 = v15;
  v116 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v117 = sub_24F924038();
  v118 = v15;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v16 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v139 = MEMORY[0x277CE0880];
  v17 = swift_getWitnessTable();
  v115 = v16;
  v116 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v18 = sub_24F926DC8();
  v115 = v16;
  v116 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E667ED0();
  v136 = OpaqueTypeConformance2;
  v137 = v20;
  v134 = swift_getWitnessTable();
  v135 = OpaqueTypeConformance2;
  v81 = MEMORY[0x277CE0340];
  v133 = swift_getWitnessTable();
  v82 = MEMORY[0x277CE0FB0];
  v21 = swift_getWitnessTable();
  v115 = v18;
  v116 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v22 = sub_24F924038();
  v115 = v18;
  v116 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v131 = v23;
  v132 = v24;
  v25 = swift_getWitnessTable();
  v80 = MEMORY[0x277CE0868];
  v26 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v129 = v25;
  v130 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_24E669F00();
  v127 = v27;
  v128 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_24E669F54();
  v125 = v29;
  v126 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v123 = v31;
  v124 = v32;
  v33 = swift_getWitnessTable();
  v115 = v22;
  v116 = v33;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v34 = sub_24F924038();
  v35 = sub_24F5877B0();
  v115 = v22;
  v116 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v121 = v36;
  v122 = v37;
  v38 = swift_getWitnessTable();
  v115 = v83;
  v116 = v34;
  v117 = &type metadata for AppEventDetailSideBySideStyling;
  v118 = v35;
  v119 = v38;
  v120 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView();
  v39 = sub_24F924E38();
  v113 = swift_getWitnessTable();
  v114 = v38;
  v40 = swift_getWitnessTable();
  v115 = v39;
  v116 = v40;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  v115 = v39;
  v116 = v40;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v40;
  v110 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  v108 = v41;
  v109 = v42;
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  v43 = sub_24F924038();
  v44 = sub_24E602068(&qword_27F237758, &qword_27F237750);
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CE0790];
  v106 = v45;
  v107 = MEMORY[0x277CE0790];
  v104 = swift_getWitnessTable();
  v105 = v46;
  v47 = swift_getWitnessTable();
  v115 = v84;
  v116 = v43;
  v117 = v44;
  v118 = v47;
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  v48 = sub_24F924038();
  v49 = swift_getWitnessTable();
  v50 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier);
  v102 = v49;
  v103 = v50;
  v51 = swift_getWitnessTable();
  v52 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier);
  v100 = v51;
  v101 = v52;
  v81 = v48;
  v82 = swift_getWitnessTable();
  v115 = v48;
  v116 = MEMORY[0x277D839B0];
  v117 = v82;
  v118 = MEMORY[0x277D839C8];
  v83 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = &v79 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v80 = &v79 - v56;
  v57 = v85;
  v58 = v90;
  v59 = *(v90 + *(v85 + 124));
  swift_getKeyPath();
  v115 = v59;
  sub_24F58786C(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  LOBYTE(v115) = *(v59 + 16) < 2u;
  v60 = v89;
  v61 = v87;
  v62 = v58;
  v63 = v57;
  (*(v89 + 16))(v87, v62, v57);
  v64 = v92;
  sub_24F58E928(v97, v92, type metadata accessor for Page);
  v65 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v66 = (v91 + *(v93 + 80) + v65) & ~*(v93 + 80);
  v67 = swift_allocObject();
  v68 = v86;
  *(v67 + 2) = v88;
  *(v67 + 3) = v68;
  v69 = v96;
  *(v67 + 4) = v95;
  *(v67 + 5) = v69;
  (*(v60 + 32))(&v67[v65], v61, v63);
  sub_24F58EB60(v64, &v67[v66], type metadata accessor for Page);
  v70 = swift_checkMetadataState();
  v71 = v79;
  v72 = MEMORY[0x277D839B0];
  v73 = v82;
  v74 = MEMORY[0x277D839C8];
  sub_24F926AB8();

  v115 = v70;
  v116 = v72;
  v117 = v73;
  v118 = v74;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v80;
  sub_24E7896B8(v71, OpaqueTypeMetadata2, v75);
  v77 = *(v84 + 8);
  v77(v71, OpaqueTypeMetadata2);
  sub_24E7896B8(v76, OpaqueTypeMetadata2, v75);
  return (v77)(v76, OpaqueTypeMetadata2);
}