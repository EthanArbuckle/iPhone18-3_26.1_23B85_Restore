uint64_t sub_243A4B1BC(uint64_t a1)
{
  v2 = sub_243A4BFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A4B1F8(uint64_t a1)
{
  v2 = sub_243A4BFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToggleEmailAddressAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v41);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99018, qword_243AC59B8);
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ToggleEmailAddressAction();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A4BFBC();
  v44 = v16;
  v22 = v45;
  sub_243AC2FE8();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v8;
  v36 = v11;
  v45 = v20;
  v49 = 0;
  v23 = sub_243A491E8(&qword_27ED99028, &qword_27ED99010, &qword_243AC59B0);
  v25 = v40;
  v24 = v41;
  v26 = v43;
  sub_243AC2E88();
  v40 = *(v39 + 32);
  (v40)(v45, v25, v24);
  v48 = 1;
  v27 = v36;
  v34 = v23;
  sub_243AC2E88();
  v33 = v17;
  v28 = v45;
  (v40)(&v45[*(v17 + 20)], v27, v24);
  v47 = 2;
  v29 = v35;
  sub_243AC2E88();
  (v40)(v28 + *(v33 + 24), v29, v24);
  v46 = 3;
  v30 = v38;
  sub_243AC2E88();
  (*(v42 + 8))(v44, v26);
  (v40)(v28 + *(v33 + 28), v30, v24);
  sub_243A4BED8(v28, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243A4C010(v28);
}

uint64_t sub_243A4B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D231E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A1FEA8;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_243A4B82C(uint64_t a1)
{
  sub_243A4BAF8(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_243A4B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_243A4BED8(v5, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_243A4BF40(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a4[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_243AC1F58();
}

uint64_t sub_243A4BAF8(uint64_t a1)
{
  v2 = sub_243AC2178();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToggleEmailAddressAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_243A4C4D4();
  v13 = sub_243AC2BC8();
  sub_243A4BED8(v18, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_243A4BF40(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_243A4C670;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A4C740(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v2);
  return (*(v19 + 8))(v9, v20);
}

uint64_t type metadata accessor for ToggleEmailAddressAction()
{
  result = qword_27ED99040;
  if (!qword_27ED99040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243A4BED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleEmailAddressAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A4BF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleEmailAddressAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A4BFBC()
{
  result = qword_27ED99020;
  if (!qword_27ED99020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99020);
  }

  return result;
}

uint64_t sub_243A4C010(uint64_t a1)
{
  v2 = type metadata accessor for ToggleEmailAddressAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A4C110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243A4C19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_243A4C218()
{
  sub_243A4C288();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_243A4C288()
{
  if (!qword_27ED99050)
  {
    sub_243AC1528();
    sub_243A4C740(&qword_27ED98A78, MEMORY[0x277D232B0]);
    v0 = sub_243AC14E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99050);
    }
  }
}

unint64_t sub_243A4C330()
{
  result = qword_27ED99058;
  if (!qword_27ED99058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99058);
  }

  return result;
}

unint64_t sub_243A4C388()
{
  result = qword_27ED99060;
  if (!qword_27ED99060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99060);
  }

  return result;
}

unint64_t sub_243A4C3E0()
{
  result = qword_27ED99068;
  if (!qword_27ED99068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99068);
  }

  return result;
}

uint64_t sub_243A4C434()
{
  v0 = sub_243AC2E58();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_243A4C480()
{
  result = qword_27ED99078;
  if (!qword_27ED99078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99078);
  }

  return result;
}

unint64_t sub_243A4C4D4()
{
  result = qword_27ED995D0;
  if (!qword_27ED995D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED995D0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for ToggleEmailAddressAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v7(v5 + v1[8], v6);
  v7(v5 + v1[9], v6);
  v8 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_243A4C688(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ToggleEmailAddressAction() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A4C740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A4C794()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

BOOL sub_243A4C808(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v4 = v30[0];
  if (v30[0] >> 62)
  {
    goto LABEL_29;
  }

  v29 = v30[0] & 0xFFFFFFFFFFFFFF8;
  v5 = *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = v5 != 0;
  if (v5)
  {
    v7 = 0;
    v28 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D470F0](v7, v4);
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_27;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v5 = sub_243AC2DF8();
        goto LABEL_3;
      }

      v11 = [v8 identifier];
      v12 = sub_243AC2858();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {
        break;
      }

      v16 = sub_243AC2EE8();

      if (v16)
      {
LABEL_17:
        swift_getKeyPath();
        swift_getKeyPath();
        v27 = sub_243AC1698();
        v18 = v17;
        v19 = *v17;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *v18 = v19;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
        {
          v19 = sub_243A4CD70(v19);
          *v18 = v19;
        }

        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v22 = v21 - v7;
        if (v21 <= v7)
        {
          goto LABEL_28;
        }

        v26 = v21 - 1;
        v23 = (v19 & 0xFFFFFFFFFFFFFF8) + 8 * v7;
        v24 = *(v23 + 0x20);
        memmove((v23 + 32), (v23 + 40), 8 * v22 - 8);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v26;
        *v18 = v19;

        v27(v30, 0);

        v28 = 1;
        v7 = v10;
        if (v10 == v5)
        {
          v6 = 1;
          goto LABEL_25;
        }
      }

      else
      {

        ++v7;
        if (v10 == v5)
        {
          v6 = v28;
          goto LABEL_25;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_25:

  return v6;
}

uint64_t sub_243A4CAC4()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel__recommendations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E20, &qword_243AC51E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationSectionViewModel()
{
  result = qword_27ED99098;
  if (!qword_27ED99098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A4CBD0()
{
  sub_243A4CC7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_243A4CC7C()
{
  if (!qword_27ED98F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98F40, &qword_243AC52E0);
    v0 = sub_243AC16C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED98F38);
    }
  }
}

uint64_t sub_243A4CCE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RecommendationSectionViewModel();
  result = sub_243AC2D18();
  *a1 = result;
  return result;
}

uint64_t sub_243A4CD24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecommendationSectionViewModel();
  result = sub_243AC1668();
  *a1 = result;
  return result;
}

uint64_t sub_243A4CD70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_243AC2DF8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_243AC2D38();
}

uint64_t sub_243A4CE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990A8, qword_243AC5D50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243A4CEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990A8, qword_243AC5D50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RecommendationsCardList()
{
  result = qword_27ED990B0;
  if (!qword_27ED990B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A4CFF0()
{
  sub_243A4D0F4(319, &qword_27ED990C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_243A4D0F4(319, &qword_27ED990C8, type metadata accessor for RecommendationSectionViewModel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_243A4D158();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A4D0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_243A4D158()
{
  result = qword_27ED990D0;
  if (!qword_27ED990D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ED990D0);
  }

  return result;
}

uint64_t sub_243A4D1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_243AC1A28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_243A50674(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_243AC13A8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_243AC2B68();
    v16 = sub_243AC1C28();
    sub_243AC1438();

    sub_243AC1A18();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_243A4D3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_243AC1728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990F8, &qword_243AC5E00);
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v39 >> 62)
  {
    v32 = sub_243AC2DF8();

    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = 1;
    goto LABEL_6;
  }

  v16 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v35[2] = v35;
  MEMORY[0x28223BE20](v17);
  v35[1] = &v35[-4];
  v35[-2] = v15;
  v35[-1] = a2;
  v18 = [*(v15 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  v19 = sub_243AC2858();
  v21 = v20;

  v39 = v19;
  v40 = v21;
  sub_243A4FC18();
  v39 = sub_243AC1D88();
  v40 = v22;
  v41 = v23 & 1;
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99190, &qword_243AC5E88);
  v25 = v7;
  v26 = v11;
  v27 = v6;
  v28 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99108, &qword_243AC5E08);
  v30 = sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
  v37 = v29;
  v38 = v30;
  a3 = v28;
  swift_getOpaqueTypeConformance2();
  sub_243AC2108();
  (*(v25 + 104))(v10, *MEMORY[0x277CDF350], v27);
  sub_243A4F80C();
  sub_243AC1EB8();
  (*(v25 + 8))(v10, v27);
  (*(v36 + 8))(v14, v26);
  v31 = 0;
LABEL_6:
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99198, &unk_243AC5E90);
  return (*(*(v33 - 8) + 56))(a3, v31, 1, v33);
}

uint64_t sub_243A4D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = type metadata accessor for RecommendationsCardList();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99108, &qword_243AC5E08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4F664(a2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_243A4FF8C(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RecommendationsCardList);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99120, &qword_243AC5E10);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0);
  sub_243A4F914();
  sub_243A4FE7C(&qword_27ED991A8, sub_243A4FEC4);
  sub_243AC20F8();
  sub_243AC1788();
  sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
  sub_243AC1EC8();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_243A4DAFC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v119 = a4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99178, &qword_243AC5E38);
  v6 = *(*(v118 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v118);
  v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = &v101 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991B0, &qword_243AC5EA0);
  v10 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v101 - v11;
  v12 = type metadata accessor for RecommendationsCardList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v120 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  v121 = type metadata accessor for Card();
  v18 = *(*(v121 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v121);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  KeyPath = &v101 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99138, &unk_243AC5E20);
  v24 = *(*(v112 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v112);
  v107 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v105 = &v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991B8, &qword_243AC5EA8);
  v113 = *(v28 - 8);
  v114 = v28;
  v29 = *(v113 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v106 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v104 = &v101 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99130, &qword_243AC5E18);
  v33 = *(*(v115 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v115);
  v109 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v103 = &v101 - v37;
  MEMORY[0x28223BE20](v36);
  v108 = &v101 - v38;
  v39 = *a1;
  v40 = [v39 completed];
  sub_243A4F664(a2, v17);
  v41 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v42 = v41 + v14;
  if (v40)
  {
    v43 = swift_allocObject();
    sub_243A4FF8C(v17, v43 + v41, type metadata accessor for RecommendationsCardList);
    v44 = v120;
    sub_243A4F664(a2, v120);
    v45 = swift_allocObject();
    sub_243A4FF8C(v44, v45 + v41, type metadata accessor for RecommendationsCardList);
    v123 = v39;
    sub_243A4FEC4();
    v46 = v39;
    sub_243AC2058();
    v47 = v125;
    *KeyPath = v124;
    *(KeyPath + 1) = v47;
    *(KeyPath + 4) = 1;
    LOBYTE(v123) = 0;
    sub_243AC2058();
    v48 = v125;
    KeyPath[24] = v124;
    *(KeyPath + 4) = v48;
    *(KeyPath + 5) = sub_243A507B4;
    *(KeyPath + 6) = v43;
    *(KeyPath + 7) = sub_243A503B8;
    *(KeyPath + 8) = v45;
    v49 = *(v121 + 48);
    *&KeyPath[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v46;
    sub_243AC16A8();

    v51 = v124;
    if (v124 >> 62)
    {
      v52 = sub_243AC2DF8();
      if (v52)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v52 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
LABEL_4:
        v53 = __OFSUB__(v52, 1);
        result = v52 - 1;
        if (!v53)
        {
          if ((v51 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) == 0)
            {
              if (result < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v55 = *(v51 + 8 * result + 32);
                goto LABEL_9;
              }

              goto LABEL_36;
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_32:
          v55 = MEMORY[0x245D470F0](result, v51);
LABEL_9:
          v56 = v55;

          v57 = sub_243AC2C18();

          if (v57)
          {
            v58 = 0x4010000000000000;
LABEL_27:
            v91 = v105;
            sub_243A4FF8C(KeyPath, v105, type metadata accessor for Card);
            v92 = v91 + *(v112 + 36);
            *v92 = xmmword_243AC5D40;
            *(v92 + 16) = v58;
            *(v92 + 24) = 0;
            *(v92 + 32) = 0;
            sub_243A4FA94();
            v93 = v104;
            sub_243AC1DF8();
            sub_243A2251C(v91, &qword_27ED99138, &unk_243AC5E20);
            v94 = sub_243AC2138();
            v96 = v95;
            v97 = v103;
            v98 = &v103[*(v115 + 36)];
            sub_243A4EFE8(v50, v98);
            v99 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
            *v99 = v94;
            v99[1] = v96;
            (*(v113 + 32))(v97, v93, v114);
            v100 = v108;
            sub_243A22814(v97, v108, &qword_27ED99130, &qword_243AC5E18);
            sub_243A224B4(v100, v117, &qword_27ED99130, &qword_243AC5E18);
            swift_storeEnumTagMultiPayload();
            sub_243A4F9A0();
            sub_243A4FB7C();
            sub_243AC1AE8();
            v88 = v100;
            v89 = &qword_27ED99130;
            v90 = &qword_243AC5E18;
            return sub_243A2251C(v88, v89, v90);
          }

LABEL_26:
          v58 = 0x4028000000000000;
          goto LABEL_27;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  v59 = swift_allocObject();
  v105 = v17;
  sub_243A4FF8C(v17, v59 + v41, type metadata accessor for RecommendationsCardList);
  v108 = a2;
  v60 = v120;
  sub_243A4F664(a2, v120);
  v61 = swift_allocObject();
  sub_243A4FF8C(v60, v61 + v41, type metadata accessor for RecommendationsCardList);
  v123 = v39;
  v50 = sub_243A4FEC4();
  v62 = v39;
  sub_243AC2058();
  v63 = v125;
  *v21 = v124;
  *(v21 + 1) = v63;
  *(v21 + 4) = 0;
  LOBYTE(v123) = 0;
  sub_243AC2058();
  v64 = v125;
  v21[24] = v124;
  *(v21 + 4) = v64;
  *(v21 + 5) = sub_243A4FF10;
  *(v21 + 6) = v59;
  *(v21 + 7) = sub_243A4FF14;
  *(v21 + 8) = v61;
  v65 = *(v121 + 48);
  *&v21[v65] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v66 = v62;
  sub_243AC16A8();

  v51 = v124;
  if (v124 >> 62)
  {
    v67 = sub_243AC2DF8();
  }

  else
  {
    v67 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v108;
  v102 = v41;
  if (!v67)
  {

    goto LABEL_22;
  }

  v53 = __OFSUB__(v67, 1);
  result = v67 - 1;
  if (v53)
  {
    goto LABEL_31;
  }

  if ((v51 & 0xC000000000000001) != 0)
  {
    v69 = MEMORY[0x245D470F0](result, v51);
LABEL_19:
    v70 = v69;

    v71 = sub_243AC2C18();

    if (v71)
    {
      v72 = 0x4010000000000000;
LABEL_23:
      v73 = v107;
      sub_243A4FF8C(v21, v107, type metadata accessor for Card);
      v74 = v73 + *(v112 + 36);
      *v74 = xmmword_243AC5D40;
      *(v74 + 16) = v72;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0;
      sub_243A4FA94();
      v75 = v106;
      sub_243AC1DF8();
      sub_243A2251C(v73, &qword_27ED99138, &unk_243AC5E20);
      v76 = sub_243AC2138();
      v78 = v77;
      v79 = v109;
      v80 = &v109[*(v115 + 36)];
      sub_243A4EFE8(v66, v80);
      v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
      *v81 = v76;
      v81[1] = v78;
      (*(v113 + 32))(v79, v75, v114);
      v82 = v105;
      sub_243A4F664(v68, v105);
      v83 = swift_allocObject();
      sub_243A4FF8C(v82, v83 + v102, type metadata accessor for RecommendationsCardList);
      *(v83 + ((v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;
      v84 = v110;
      sub_243A22814(v79, v110, &qword_27ED99130, &qword_243AC5E18);
      v85 = (v84 + *(v118 + 36));
      *v85 = sub_243A50158;
      v85[1] = v83;
      v85[2] = 0;
      v85[3] = 0;
      v86 = v111;
      sub_243A22814(v84, v111, &qword_27ED99178, &qword_243AC5E38);
      sub_243A224B4(v86, v117, &qword_27ED99178, &qword_243AC5E38);
      swift_storeEnumTagMultiPayload();
      sub_243A4F9A0();
      sub_243A4FB7C();
      v87 = v66;
      sub_243AC1AE8();
      v88 = v86;
      v89 = &qword_27ED99178;
      v90 = &qword_243AC5E38;
      return sub_243A2251C(v88, v89, v90);
    }

LABEL_22:
    v72 = 0x4028000000000000;
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if (result < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v69 = *(v51 + 8 * result + 32);
    goto LABEL_19;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_243A4E734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsCardList();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_243AC2A98();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_243A4F664(a2, v8);
  sub_243AC2A58();
  v14 = sub_243AC2A48();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_243A4FF8C(v8, v16 + v15, type metadata accessor for RecommendationsCardList);
  sub_243A3306C(0, 0, v12, &unk_243AC5F08, v16);

  v18 = a2 + *(v5 + 40);
  v19 = *(v18 + 8);
  return (*v18)(a1);
}

uint64_t sub_243A4E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_243AC13A8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_243AC2A58();
  v4[10] = sub_243AC2A48();
  v9 = sub_243AC2A28();
  v4[11] = v9;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_243A4EA1C, v9, v8);
}

void sub_243A4EA1C()
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  v0[13] = __swift_project_value_buffer(v1, qword_27EDA14D8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243A1B000, v2, v3, "Sending action event analytics for removing recommendation.", v4, 2u);
    MEMORY[0x245D47D20](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];

  sub_243A4D1C4(v5);
  v7 = [objc_opt_self() ams_sharedAccountStore];
  v8 = [v7 aa_primaryAppleAccount];
  v0[14] = v8;

  if (v8)
  {
    v0[15] = sub_243A2E2B4(MEMORY[0x277D84F90]);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_243A4EC1C;
    v10 = v0[9];

    (sub_243A8C09C)(0x65736F6C43, 0xE500000000000000, 0x7373696D736964, 0xE700000000000000, v10, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243A4EC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 136) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 96);
  v11 = *(v2 + 88);
  if (v0)
  {
    v12 = sub_243A4EE58;
  }

  else
  {
    v12 = sub_243A4EDF0;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_243A4EDF0()
{
  v1 = v0[10];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_243A4EE58()
{
  v21 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v1;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_243AC2F58();
    v15 = sub_243AB73D8(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_243A1B000, v5, v6, "Failed to send action event: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D47D20](v9, -1, -1);
    MEMORY[0x245D47D20](v8, -1, -1);
  }

  else
  {
    v16 = v0[17];
  }

  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_243A4EFE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - v9;
  v31 = sub_243AC25A8();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v28 - v18;
  v20 = sub_243AC1F98();
  v28[1] = v20;
  v21 = [a1 title];
  sub_243AC2858();

  sub_243AC2598();
  v33 = v20;

  sub_243AC24C8();
  v22 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v22);
  sub_243A2E2B4(v22);
  sub_243AC24E8();
  v23 = sub_243AC24F8();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  v24 = MEMORY[0x277CE0F78];
  v25 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A2251C(v10, &qword_27ED991C8, &unk_243AC6A10);
  (*(v11 + 8))(v14, v31);

  v33 = v24;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_243AC1DF8();
  return (*(v30 + 8))(v19, v26);
}

uint64_t sub_243A4F3C0(uint64_t a1, void *a2)
{
  v3 = a1 + *(type metadata accessor for RecommendationsCardList() + 24);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = [a2 identifier];
  v7 = sub_243AC2858();
  v9 = v8;

  v5(v7, v9);
}

uint64_t sub_243A4F47C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v7[1] = *(v1 + *(MEMORY[0x28223BE20](a1 - 8) + 28));
  sub_243A4F664(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_243A4FF8C(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for RecommendationsCardList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990E0, &qword_243AC5DF8);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0);
  sub_243A4F74C();
  sub_243A4FE7C(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel);
  return sub_243AC20F8();
}

uint64_t sub_243A4F664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsCardList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A4F6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsCardList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A4D3AC(a1, v6, a2);
}

unint64_t sub_243A4F74C()
{
  result = qword_27ED990F0;
  if (!qword_27ED990F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990E0, &qword_243AC5DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990F8, &qword_243AC5E00);
    sub_243A4F80C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED990F0);
  }

  return result;
}

unint64_t sub_243A4F80C()
{
  result = qword_27ED99100;
  if (!qword_27ED99100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990F8, &qword_243AC5E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99108, &qword_243AC5E08);
    sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99100);
  }

  return result;
}

unint64_t sub_243A4F914()
{
  result = qword_27ED99118;
  if (!qword_27ED99118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99120, &qword_243AC5E10);
    sub_243A4F9A0();
    sub_243A4FB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99118);
  }

  return result;
}

unint64_t sub_243A4F9A0()
{
  result = qword_27ED99128;
  if (!qword_27ED99128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99130, &qword_243AC5E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99138, &unk_243AC5E20);
    sub_243A4FA94();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99128);
  }

  return result;
}

unint64_t sub_243A4FA94()
{
  result = qword_27ED99140;
  if (!qword_27ED99140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99138, &unk_243AC5E20);
    sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card);
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99140);
  }

  return result;
}

unint64_t sub_243A4FB7C()
{
  result = qword_27ED99170;
  if (!qword_27ED99170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99178, &qword_243AC5E38);
    sub_243A4F9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99170);
  }

  return result;
}

unint64_t sub_243A4FC18()
{
  result = qword_27ED99188;
  if (!qword_27ED99188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99188);
  }

  return result;
}

uint64_t sub_243A4FC6C()
{
  v1 = type metadata accessor for RecommendationsCardList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243AC13A8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

unint64_t sub_243A4FDD0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsCardList() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A4DAFC(a1, v2 + v6, v7, a2);
}

uint64_t sub_243A4FE7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243A4FEC4()
{
  result = qword_27ED98F70;
  if (!qword_27ED98F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED98F70);
  }

  return result;
}

uint64_t sub_243A4FF14(uint64_t a1)
{
  v3 = *(type metadata accessor for RecommendationsCardList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_243A4E734(a1, v4);
}

uint64_t sub_243A4FF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A4FFF4()
{
  v1 = type metadata accessor for RecommendationsCardList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243AC13A8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_243A50158()
{
  v1 = *(type metadata accessor for RecommendationsCardList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A4F3C0(v0 + v2, v3);
}

uint64_t sub_243A501E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecommendationsCardList();
  v6 = v2 + *(v5 + 28) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));
  v7 = *(v6 + 8);
  return (*v6)(a1, a2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for RecommendationsCardList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243AC13A8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A503B8(uint64_t a1)
{
  v3 = type metadata accessor for RecommendationsCardList();
  v4 = v1 + *(v3 + 32) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)(a1);
}

uint64_t sub_243A5042C()
{
  v1 = type metadata accessor for RecommendationsCardList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243AC13A8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v1[5]);

  v10 = *(v6 + v1[6] + 8);

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A50584(uint64_t a1)
{
  v4 = *(type metadata accessor for RecommendationsCardList() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A1FEA8;

  return sub_243A4E928(a1, v6, v7, v1 + v5);
}

uint64_t sub_243A50674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A50728(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243A507B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v162 = *(v4 - 8);
  v5 = v162[8];
  MEMORY[0x28223BE20](v4);
  v159 = &v133[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99080, &qword_243AC5C28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v133[-v9];
  v165 = sub_243AC1528();
  v164 = *(v165 - 8);
  v11 = *(v164 + 64);
  v12 = MEMORY[0x28223BE20](v165);
  v157 = &v133[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v155 = &v133[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v156 = &v133[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v133[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v163 = &v133[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v133[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v133[-v26];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v133[-v29];
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v133[-v32];
  MEMORY[0x28223BE20](v31);
  v35 = &v133[-v34];
  v161 = a2;
  sub_243AC14D8();
  v143 = v30;
  v160 = v33;
  v153 = v27;
  v154 = v24;
  v147 = v4;
  v146 = a1;
  v36 = v164;
  v37 = v10;
  v38 = v165;
  (*(v164 + 56))(v37, 0, 1, v165);
  v39 = *(v36 + 32);
  v39(v35, v37, v38);
  sub_243A5548C(v35, &v166);
  v141 = v36 + 32;
  v138 = v35;
  v40 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v41 = *(v40 + 24);
  v42 = v160;
  sub_243AC14D8();
  v43 = *(v36 + 16);
  v44 = v143;
  v43(v143, v42, v38);
  v45 = *(v36 + 88);
  v149 = v36 + 88;
  v148 = v45;
  v46 = v45(v44, v38);
  if (v46 != *MEMORY[0x277D23278])
  {
    sub_243A57004(&v166);
    v69 = *(v36 + 8);
    v69(v44, v38);
    type metadata accessor for DecodableStateError();
    sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
    v70 = v38;
    v71 = swift_allocError();
    v73 = v72;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v75 = v160;
    v43(v73, v160, v70);
    *&v73[v74] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v69(v75, v70);
    v69(v138, v70);
    goto LABEL_40;
  }

  v137 = v41;
  v144 = v39;
  v134 = v46;
  v136 = v40;
  v150 = v43;
  v145 = v36 + 16;
  v151 = *(v36 + 8);
  v152 = v36 + 8;
  v151(v160, v38);
  v47 = *(v36 + 96);
  v140 = v36 + 96;
  v139 = v47;
  v47(v44, v38);
  v48 = *(*v44 + 16);

  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v135 = v48;
    v51 = (v48 + v50);
    v143 = *(v36 + 72);
    v142 = *MEMORY[0x277D23258];
    v52 = MEMORY[0x277D84F90];
    v53 = v154;
    v54 = v153;
    do
    {
      v64 = v150;
      v150(v54, v51, v38);
      v64(v53, v54, v38);
      v65 = v148(v53, v38);
      if (v65 == v142)
      {
        v151(v54, v38);
        v139(v53, v38);
        v66 = *(*v53 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_243AA020C(0, *(v52 + 2) + 1, 1, v52);
        }

        v62 = v162;
        v63 = v163;
        v68 = *(v52 + 2);
        v67 = *(v52 + 3);
        if (v68 >= v67 >> 1)
        {
          v52 = sub_243AA020C((v67 > 1), v68 + 1, 1, v52);
        }

        *(v52 + 2) = v68 + 1;
        v52[v68 + 32] = v66;
        v38 = v165;
      }

      else
      {
        v55 = v151;
        v151(v53, v38);
        type metadata accessor for DecodableStateError();
        sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
        v56 = swift_allocError();
        v160 = v52;
        v57 = v56;
        v59 = v58;
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
        v64(v59, v54, v165);
        *&v59[v60] = MEMORY[0x277D839B0];
        v38 = v165;
        swift_willThrow();
        v55(v54, v38);
        v61 = v57;
        v52 = v160;

        v62 = v162;
        v63 = v163;
      }

      v51 = &v143[v51];
      --v49;
      v53 = v154;
      v54 = v153;
    }

    while (v49);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
    v62 = v162;
    v63 = v163;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v160 = v52;
  }

  else
  {
    v160 = sub_243A4CDD4(v52);
  }

  v76 = v166;
  if ((v166 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v166 >= *(v160 + 2))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v38 = v160 + 32;
  v160[v166 + 32] = (v160[v166 + 32] & 1) == 0;
  if (qword_27ED98910 != -1)
  {
LABEL_51:
    swift_once();
  }

  v77 = sub_243AC1468();
  __swift_project_value_buffer(v77, qword_27EDA14A8);
  sub_243A57034(&v166, v167);
  v78 = sub_243AC1448();
  v79 = sub_243AC2B48();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *&v167[0] = v162;
    *v80 = 134218498;
    *(v80 + 4) = v76;
    *(v80 + 12) = 1024;
    v81 = v160;
    if (v76 >= *(v160 + 2))
    {
      __break(1u);
      return;
    }

    v82 = v38[v76];
    sub_243A57004(&v166);
    *(v80 + 14) = v82;
    sub_243A57004(&v166);
    *(v80 + 18) = 2080;

    v84 = MEMORY[0x245D46D70](v83, MEMORY[0x277D839B0]);
    v86 = v85;

    v87 = sub_243AB73D8(v84, v86, v167);

    *(v80 + 20) = v87;
    _os_log_impl(&dword_243A1B000, v78, v79, "ToggleRecommendedBackupAction, setting selected devices idx %ld selected: %{BOOL}d. New list: %s", v80, 0x1Cu);
    v88 = v162;
    __swift_destroy_boxed_opaque_existential_1(v162);
    MEMORY[0x245D47D20](v88, -1, -1);
    MEMORY[0x245D47D20](v80, -1, -1);

    v63 = v163;
  }

  else
  {
    sub_243A57004(&v166);
    sub_243A57004(&v166);

    v81 = v160;
  }

  v89 = v159;
  (v62[2])(v159, v146 + v137, v147);
  v90 = *(v81 + 2);
  v91 = v81;
  v92 = v158;
  if (v90)
  {
    *&v167[0] = MEMORY[0x277D84F90];

    sub_243A64F54(0, v90, 0);
    v93 = 32;
    v94 = *&v167[0];
    do
    {
      v95 = *(v91 + v93);
      sub_243AC2A18();
      *&v167[0] = v94;
      v97 = *(v94 + 16);
      v96 = *(v94 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_243A64F54(v96 > 1, v97 + 1, 1);
        v94 = *&v167[0];
      }

      *(v94 + 16) = v97 + 1;
      v144(v94 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v97, v92, v165);
      ++v93;
      --v90;
      v91 = v160;
    }

    while (v90);

    v89 = v159;
  }

  v98 = v165;
  sub_243AC29E8();

  sub_243AC15D8();
  v151(v63, v98);
  (v62[1])(v89, v147);
  v99 = v146 + *(v136 + 20);
  v100 = v156;
  sub_243AC14D8();
  v101 = v155;
  v102 = v150;
  v150(v155, v100, v98);
  v103 = v148(v101, v98);
  if (v103 == v134)
  {
    v104 = v151;
    v151(v100, v98);
    v139(v101, v98);
    v105 = *(*v101 + 16);

    v106 = *(v105 + 16);
    if (v106)
    {
      v107 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v163 = v105;
      v108 = (v105 + v107);
      v109 = *(v164 + 72);
      v110 = MEMORY[0x277D84F90];
      v111 = v157;
      v112 = v165;
      do
      {
        v150(v111, v108, v112);
        sub_243A5548C(v111, v167);
        v151(v111, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_243AA0300(0, *(v110 + 2) + 1, 1, v110);
        }

        v114 = *(v110 + 2);
        v113 = *(v110 + 3);
        if (v114 >= v113 >> 1)
        {
          v110 = sub_243AA0300((v113 > 1), v114 + 1, 1, v110);
        }

        *(v110 + 2) = v114 + 1;
        v115 = &v110[88 * v114];
        v116 = v167[1];
        *(v115 + 2) = v167[0];
        *(v115 + 3) = v116;
        v117 = v167[2];
        v118 = v167[3];
        v119 = v167[4];
        *(v115 + 14) = v168;
        *(v115 + 5) = v118;
        *(v115 + 6) = v119;
        *(v115 + 4) = v117;
        v111 = v157;
        v108 += v109;
        --v106;
      }

      while (v106);

      v132 = v161;
      v104 = v151;
      v91 = v160;
    }

    else
    {

      v110 = MEMORY[0x277D84F90];
      v132 = v161;
    }

    sub_243A51BC4(v132, v110, v91);

    sub_243A52500(v132, v110, v91);
    v104(v138, v165);

    swift_bridgeObjectRelease_n();
    return;
  }

  v120 = v151;
  v151(v101, v98);
  type metadata accessor for DecodableStateError();
  sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
  v71 = swift_allocError();
  v122 = v121;
  v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
  v102(v122, v100, v98);
  *(v122 + v123) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
  swift_willThrow();
  v120(v100, v98);
  v120(v138, v98);

LABEL_40:
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v124 = sub_243AC1468();
  __swift_project_value_buffer(v124, qword_27EDA14A8);
  v125 = v71;
  v126 = sub_243AC1448();
  v127 = sub_243AC2B58();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138412290;
    v130 = v71;
    v131 = _swift_stdlib_bridgeErrorToNSError();
    *(v128 + 4) = v131;
    *v129 = v131;
    _os_log_impl(&dword_243A1B000, v126, v127, "ToggleRecommendedBackupAction: Error while toggling backup, %@", v128, 0xCu);
    sub_243A2251C(v129, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v129, -1, -1);
    MEMORY[0x245D47D20](v128, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243A51BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v5 = sub_243AC1528();
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = (&v81 - v10);
  MEMORY[0x28223BE20](v9);
  v86 = &v81 - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v93;
    v15 = a3 + 32;
    v16 = MEMORY[0x277D84F90];
    v17 = a2 + 32;
    v85 = a2 + 32;
    do
    {
      v102 = v16;
      v18 = v17 + 88 * v13;
      v16 = v13;
      while (1)
      {
        if (v16 >= v12)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v19 = *(v18 + 32);
        v20 = *(v18 + 64);
        v93[3] = *(v18 + 48);
        v93[4] = v20;
        v94 = *(v18 + 80);
        v21 = *(v18 + 16);
        v93[0] = *v18;
        v93[1] = v21;
        v93[2] = v19;
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_54;
        }

        v22 = *(v18 + 48);
        v98 = *(v18 + 32);
        v99 = v22;
        v100 = *(v18 + 64);
        v23 = *(v18 + 16);
        v96 = *v18;
        v101 = *(v18 + 80);
        v97 = v23;
        v95 = v16;
        if (v16 >= *(a3 + 16))
        {
          goto LABEL_55;
        }

        if (v16[v15])
        {
          break;
        }

        sub_243A57034(v93, v92);
        sub_243A2251C(&v95, &qword_27ED99220, &qword_243AC6160);
        ++v16;
        v18 += 88;
        if (v13 == v12)
        {
          v16 = v102;
          goto LABEL_15;
        }
      }

      sub_243A57034(v93, v92);
      v16 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_243AA0300(0, *(v16 + 2) + 1, 1, v16);
      }

      v25 = *(v16 + 2);
      v24 = *(v16 + 3);
      v26 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        v102 = (v25 + 1);
        v32 = sub_243AA0300((v24 > 1), v25 + 1, 1, v16);
        v26 = v102;
        v16 = v32;
      }

      *(v16 + 2) = v26;
      v27 = &v16[88 * v25];
      v28 = v97;
      *(v27 + 2) = v96;
      *(v27 + 3) = v28;
      v29 = v98;
      v30 = v99;
      v31 = v100;
      *(v27 + 14) = v101;
      *(v27 + 5) = v30;
      *(v27 + 6) = v31;
      *(v27 + 4) = v29;
      v17 = v85;
    }

    while (v13 != v12);
LABEL_15:
    v33 = *(v16 + 2);
    if (!v33)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v16 = MEMORY[0x277D84F90];
  v33 = *(MEMORY[0x277D84F90] + 16);
  if (v33)
  {
LABEL_16:
    v14 = *(v16 + 5);
    v18 = *(v16 + 6);

    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
  v18 = 0xE000000000000000;
LABEL_19:
  v15 = v90;
  v12 = v91;
  v34 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v34 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v35 = v34 == 0;
  }

  else
  {
    v35 = 0;
  }

  v102 = v16;
  if (v35)
  {
    if (qword_27ED98910 != -1)
    {
LABEL_56:
      swift_once();
    }

    v36 = sub_243AC1468();
    __swift_project_value_buffer(v36, qword_27EDA14A8);

    v37 = sub_243AC1448();
    v38 = sub_243AC2B58();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = *(v102 + 2);

      _os_log_impl(&dword_243A1B000, v37, v38, "ToggleRecommendedBackupAction: We have %ld devices but were unable to get a name to use in the confirmation message template.", v39, 0xCu);
      v40 = v39;
      v16 = v102;
      MEMORY[0x245D47D20](v40, -1, -1);
    }

    else
    {
    }
  }

  v41 = *(v16 + 2);
  if (v41 == 2)
  {
    v47 = type metadata accessor for ToggleRecommendedBackupAction(0);
    v48 = v15 + *(v47 + 44);
    sub_243AC1608();
    if (v12)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v49 = swift_allocObject();
    v91 = 0;
    v50 = v49;
    *(v49 + 16) = xmmword_243AC51B0;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_243A570EC();
    *(v50 + 32) = v14;
    *(v50 + 40) = v18;
    sub_243AC2868();

    v51 = *(v47 + 56);
  }

  else
  {
    v42 = v41 - 1;
    if (v41 == 1)
    {
      v43 = type metadata accessor for ToggleRecommendedBackupAction(0);
      v44 = v15 + *(v43 + 40);
      sub_243AC1608();
      if (v12)
      {
        goto LABEL_37;
      }

      v91 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_243AC51B0;
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = sub_243A570EC();
      *(v45 + 32) = v14;
      *(v45 + 40) = v18;
      sub_243AC2868();

      v46 = *(v43 + 52);
    }

    else
    {
      if (v41 < 3)
      {

        v82 = 0;
        v91 = 0xE000000000000000;
        LODWORD(v85) = 1;
        goto LABEL_43;
      }

      v55 = type metadata accessor for ToggleRecommendedBackupAction(0);
      v56 = v15 + *(v55 + 48);
      v57 = sub_243AC1608();
      if (v12)
      {
        goto LABEL_37;
      }

      v85 = v57;
      v91 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
      v73 = v55;
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_243AC5F30;
      *(v74 + 56) = MEMORY[0x277D837D0];
      v75 = sub_243A570EC();
      *(v74 + 32) = v14;
      *(v74 + 40) = v18;
      v76 = MEMORY[0x277D83C10];
      *(v74 + 96) = MEMORY[0x277D83B88];
      *(v74 + 104) = v76;
      *(v74 + 64) = v75;
      *(v74 + 72) = v42;
      sub_243AC2868();

      v77 = v15 + *(v73 + 56);
    }
  }

  v52 = v91;
  v53 = sub_243AC1608();
  v12 = v52;
  if (v52)
  {
LABEL_37:
  }

  v82 = v53;
  v91 = v54;
  LODWORD(v85) = 0;
LABEL_43:
  v58 = v102;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v59 = sub_243AC1468();
  __swift_project_value_buffer(v59, qword_27EDA14A8);

  v60 = sub_243AC1448();
  v61 = sub_243AC2B58();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v12;
    v63 = swift_slowAlloc();
    *v63 = 134218240;
    v64 = *(v58 + 2);

    *(v63 + 4) = v64;

    *(v63 + 12) = 1024;
    *(v63 + 14) = v85;
    _os_log_impl(&dword_243A1B000, v60, v61, "ToggleRecommendedBackupAction: updating buttons for %ld devices selected. Delete button disabled: %{BOOL}d", v63, 0x12u);
    v65 = v63;
    v12 = v62;
    MEMORY[0x245D47D20](v65, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v66 = v86;
  v67 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v68 = v67[8];
  sub_243AC28B8();

  sub_243AC15D8();
  if (!v12)
  {
    v69 = v87;
    v70 = v88;
    v102 = *(v87 + 8);
    (v102)(v66, v88);
    v86 = v67[9];
    v71 = swift_allocObject();
    *(v71 + 16) = v85;
    v72 = v84;
    *v84 = v71;
    (*(v69 + 104))(v72, *MEMORY[0x277D23258], v70);
    sub_243AC15D8();
    (v102)(v72, v70);
    v78 = v67[7];
    v79 = v83;
    sub_243AC28B8();

    sub_243AC15D8();
    return (v102)(v79, v70);
  }

  (*(v87 + 8))(v66, v88);
}

uint64_t sub_243A52500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v5 = sub_243AC1528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v50 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v48 = (&v45 - v13);
  v47 = sub_243A2E3E4(MEMORY[0x277D84F90]);
  v65 = 0;
  v14 = *(a2 + 16);
  v68 = v6;
  if (v14)
  {
    v46 = v12;
    v49 = v5;
    v15 = 0;
    v16 = (a2 + 32);
    do
    {
      v17 = v16[1];
      v54 = v16[2];
      v18 = v16[4];
      v19 = v16[2];
      v55 = v16[3];
      v56 = v18;
      v57 = *(v16 + 10);
      v58 = v15;
      v61 = v54;
      v20 = *v16;
      v62 = v55;
      v63 = v18;
      v59 = v20;
      v22 = *v16;
      v21 = v16[1];
      v53[0] = v20;
      v53[1] = v21;
      v64 = v57;
      v60 = v21;
      v67 = *(v16 + 10);
      v23 = v16[4];
      v66[3] = v55;
      v66[4] = v23;
      v66[1] = v17;
      v66[2] = v19;
      v66[0] = v22;
      sub_243A57034(v53, &v52);
      sub_243A536D4(v15, v66, a3, &v65);
      sub_243A2251C(&v58, &qword_27ED99220, &qword_243AC6160);
      v16 = (v16 + 88);
      ++v15;
    }

    while (v14 != v15);
    v24 = v65;
    v5 = v49;
    v6 = v68;
    v12 = v46;
  }

  else
  {
    v24 = 0;
  }

  v25 = swift_allocObject();
  v58 = v24;
  *(v25 + 16) = sub_243AC2EB8();
  *(v25 + 24) = v26;
  v27 = v48;
  *v48 = v25;
  v28 = *MEMORY[0x277D232A0];
  v49 = *(v6 + 104);
  v49(v27, v28, v5);
  (*(v6 + 32))(v12, v27, v5);
  v29 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v29;
  sub_243A8B694(v12, 0xD000000000000010, 0x8000000243ACBE00, isUniquelyReferenced_nonNull_native);
  v31 = v58;
  v32 = qword_27ED98910;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_243AC1468();
  __swift_project_value_buffer(v33, qword_27EDA14A8);

  v34 = sub_243AC1448();
  v35 = sub_243AC2B58();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v48;
    *v36 = 136315138;
    v37 = sub_243AC27E8();
    v39 = sub_243AB73D8(v37, v38, &v58);

    *(v36 + 4) = v39;

    _os_log_impl(&dword_243A1B000, v34, v35, "ToggleRecommendedBackupAction, setting disappear user info %s", v36, 0xCu);
    v40 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v6 = v68;
    MEMORY[0x245D47D20](v40, -1, -1);
    MEMORY[0x245D47D20](v36, -1, -1);
  }

  else
  {
  }

  v41 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 60);
  v42 = swift_allocObject();
  *(v42 + 16) = v31;
  v43 = v50;
  *v50 = v42;
  v49(v43, *MEMORY[0x277D23270], v5);
  sub_243AC15D8();
  return (*(v6 + 8))(v43, v5);
}

void sub_243A529C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC1528();
  v5 = *(v4 - 8);
  v143 = v4;
  v144 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v141 = &v126[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v126[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v126[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v139 = &v126[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v126[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v126[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v147 = &v126[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v126[-v22];
  v24 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v25 = *(v24 + 20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v27 = v23;
  sub_243AC14D8();
  v150 = 0;
  v137 = v25;
  v132 = v24;
  v133 = v26;
  v28 = a1;
  v134 = a2;
  v29 = v144;
  v31 = v144 + 16;
  v30 = *(v144 + 16);
  v32 = v147;
  v33 = v27;
  v34 = v27;
  v35 = v143;
  v30(v147, v34, v143);
  v135 = *(v29 + 88);
  v136 = v29 + 88;
  v36 = v135(v32, v35);
  v39 = *(v29 + 8);
  v37 = v29 + 8;
  v38 = v39;
  if (v36 != *MEMORY[0x277D23278])
  {
    v38(v32, v35);
    type metadata accessor for DecodableStateError();
    sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
    v150 = swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v30(v59, v33, v35);
    *&v59[v60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v38(v33, v35);
    goto LABEL_30;
  }

  v127 = v36;
  v148 = v30;
  v149 = v31;
  v145 = v38;
  v38(v33, v35);
  v40 = v144;
  v129 = *(v144 + 96);
  v130 = v144 + 96;
  v129(v32, v35);
  v41 = *(*v32 + 16);

  v42 = *(v41 + 2);
  v43 = v37;
  v131 = v28;
  if (v42)
  {
    v44 = *(v40 + 80);
    v147 = v41;
    v45 = &v41[(v44 + 32) & ~v44];
    v46 = *(v40 + 72);
    v47 = MEMORY[0x277D84F90];
    v48 = v145;
    do
    {
      v148(v19, v45, v35);
      v49 = v150;
      sub_243A5548C(v19, v163);
      v150 = v49;
      if (v49)
      {

        v48(v19, v35);
        v150 = 0;
      }

      else
      {
        v48(v19, v35);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v50 = v47;
        }

        else
        {
          v50 = sub_243AA0300(0, *(v47 + 2) + 1, 1, v47);
        }

        v52 = *(v50 + 2);
        v51 = *(v50 + 3);
        if (v52 >= v51 >> 1)
        {
          v50 = sub_243AA0300((v51 > 1), v52 + 1, 1, v50);
        }

        *(v50 + 2) = v52 + 1;
        v47 = v50;
        v53 = &v50[88 * v52];
        v54 = v163[1];
        *(v53 + 2) = v163[0];
        *(v53 + 3) = v54;
        v55 = v163[2];
        v56 = v163[3];
        v57 = v163[4];
        *(v53 + 14) = v164;
        *(v53 + 5) = v56;
        *(v53 + 6) = v57;
        *(v53 + 4) = v55;
        v48 = v145;
      }

      v45 += v46;
      --v42;
    }

    while (v42);

    v61 = v131;
    v62 = v47;
  }

  else
  {

    v62 = MEMORY[0x277D84F90];
    v48 = v145;
    v61 = v28;
  }

  v63 = v142;
  v64 = *(v62 + 2);
  v147 = v62;
  if (!v64)
  {
LABEL_26:
    sub_243A574CC();
    sub_243AC29E8();

    v83 = v63;
    v84 = v150;
    sub_243AC15D8();
    v150 = v84;
    v85 = v139;
    if (v84)
    {
      v48(v83, v35);
    }

    else
    {
      v48(v83, v35);
      v86 = v61 + *(v132 + 24);
      v87 = v150;
      sub_243AC14D8();
      v150 = v87;
      if (!v87)
      {
        v98 = v138;
        v100 = v148;
        v99 = v149;
        v148(v138, v85, v35);
        v101 = v135(v98, v35);
        if (v101 != v127)
        {

          v48(v98, v35);
          type metadata accessor for DecodableStateError();
          sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
          v150 = swift_allocError();
          v119 = v118;
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
          v121 = v100;
          v122 = *(v120 + 48);
          v121(v119, v85, v35);
          *(v119 + v122) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
          swift_willThrow();
          v48(v85, v35);
LABEL_30:
          if (qword_27ED98910 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }

        v48(v85, v35);
        v129(v98, v35);
        v102 = *(*v98 + 16);

        v142 = v102;
        v103 = *(v102 + 16);
        if (v103)
        {
          v104 = &v142[(*(v144 + 80) + 32) & ~*(v144 + 80)];
          v144 = *(v144 + 72);
          LODWORD(v143) = *MEMORY[0x277D23258];
          v105 = MEMORY[0x277D84F90];
          do
          {
            v146 = v105;
            v111 = v140;
            v100(v140, v104, v35);
            v112 = v141;
            v100(v141, v111, v35);
            v113 = v135(v112, v35);
            if (v113 == v143)
            {
              v145(v111, v35);
              v129(v112, v35);
              v114 = *(*v112 + 16);

              v105 = v146;
              v115 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v105 = sub_243AA020C(0, *(v105 + 2) + 1, 1, v105);
              }

              v117 = *(v105 + 2);
              v116 = *(v105 + 3);
              if (v117 >= v116 >> 1)
              {
                v105 = sub_243AA020C((v116 > 1), v117 + 1, 1, v105);
              }

              *(v105 + 2) = v117 + 1;
              v105[v117 + 32] = v114;
              v99 = v115;
            }

            else
            {
              v106 = v100;
              v145(v112, v35);
              type metadata accessor for DecodableStateError();
              sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
              v107 = swift_allocError();
              v109 = v108;
              v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
              v106(v109, v111, v35);
              *(v109 + v110) = MEMORY[0x277D839B0];
              swift_willThrow();
              v145(v111, v35);
              v99 = v149;

              v150 = 0;
              v105 = v146;
            }

            v104 += v144;
            --v103;
            v100 = v148;
          }

          while (v103);
        }

        else
        {

          v105 = MEMORY[0x277D84F90];
        }

        v123 = v134;
        v124 = v147;
        v125 = v150;
        sub_243A51BC4(v134, v147, v105);
        v150 = v125;
        if (!v125)
        {
          sub_243A52500(v123, v124, v105);
          v150 = 0;
LABEL_52:

          return;
        }
      }
    }

    goto LABEL_30;
  }

  v128 = v43;
  v162 = MEMORY[0x277D84F90];

  sub_243A64FB4(0, v64, 0);
  v65 = v147;
  v66 = *(v147 + 2);
  if (!v66)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v67 = 0;
  v68 = v162;
  v146 = (v64 - 1);
  v69 = 32;
  while (v67 < *(v65 + 2))
  {
    v70 = *&v65[v69 + 16];
    v160[0] = *&v65[v69];
    v160[1] = v70;
    v71 = *&v65[v69 + 32];
    v72 = *&v65[v69 + 48];
    v73 = *&v65[v69 + 64];
    *&v161[32] = *&v65[v69 + 80];
    *v161 = v72;
    *&v161[16] = v73;
    v160[2] = v71;
    v74 = *&v65[v69];
    v75 = *&v65[v69 + 16];
    v159 = *&v65[v69 + 32];
    v158 = v75;
    v157 = v74;
    v152 = *&v161[1];
    v153[0] = *&v161[17];
    *(v153 + 15) = *&v161[32];
    v154 = v74;
    v155 = v75;
    v156 = v159;
    sub_243A57034(v160, &v151);
    v162 = v68;
    v77 = *(v68 + 16);
    v76 = *(v68 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_243A64FB4((v76 > 1), v77 + 1, 1);
      v68 = v162;
    }

    *(v68 + 16) = v77 + 1;
    v78 = v68 + 88 * v77;
    v80 = v155;
    v79 = v156;
    *(v78 + 32) = v154;
    *(v78 + 48) = v80;
    *(v78 + 64) = v79;
    *(v78 + 80) = v66 != 1;
    v81 = v152;
    v82 = v153[0];
    *(v78 + 112) = *(v153 + 15);
    *(v78 + 97) = v82;
    *(v78 + 81) = v81;
    if (v146 == v67)
    {

      v63 = v142;
      v35 = v143;
      v61 = v131;
      v48 = v145;
      goto LABEL_26;
    }

    v69 += 88;
    ++v67;
    --v66;
    v65 = v147;
    if (!v66)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_31:
  v88 = sub_243AC1468();
  __swift_project_value_buffer(v88, qword_27EDA14A8);
  v89 = v150;
  v90 = v150;
  v91 = sub_243AC1448();
  v92 = sub_243AC2B58();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v93 = 138412290;
    v95 = v150;
    v96 = v150;
    v97 = _swift_stdlib_bridgeErrorToNSError();
    *(v93 + 4) = v97;
    *v94 = v97;
    _os_log_impl(&dword_243A1B000, v91, v92, "ToggleRecommendedBackupAction: Error while updating store on appear, %@", v93, 0xCu);
    sub_243A2251C(v94, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v94, -1, -1);
    MEMORY[0x245D47D20](v93, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_243A536D4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (*(a3 + result + 32) != 1)
  {
    return result;
  }

  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = HIBYTE(v5) & 0xF;
  v7 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_74:
    v29 = 0;
    goto LABEL_69;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v35[0] = v4;
    v35[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v6)
      {
        v10 = v6 - 1;
        if (v6 != 1)
        {
          v4 = 0;
          v20 = v35 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              break;
            }

            v4 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_81:
      __break(1u);
      return result;
    }

    if (v4 != 45)
    {
      if (v6)
      {
        v4 = 0;
        v25 = v35;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v4;
          if ((v4 * 10) >> 64 != (10 * v4) >> 63)
          {
            break;
          }

          v4 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_64;
    }

    if (v6)
    {
      v10 = v6 - 1;
      if (v6 != 1)
      {
        v4 = 0;
        v14 = v35 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v4;
          if ((v4 * 10) >> 64 != (10 * v4) >> 63)
          {
            break;
          }

          v4 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v33 = a4;
    result = sub_243AC2D48();
    a4 = v33;
  }

  v9 = *result;
  if (v9 == 43)
  {
    if (v7 >= 1)
    {
      v10 = v7 - 1;
      if (v7 != 1)
      {
        v4 = 0;
        if (result)
        {
          v17 = (result + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_64;
            }

            v19 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              goto LABEL_64;
            }

            v4 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_64;
            }

            ++v17;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_64;
    }

    goto LABEL_80;
  }

  if (v9 == 45)
  {
    if (v7 >= 1)
    {
      v10 = v7 - 1;
      if (v7 != 1)
      {
        v4 = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_64;
            }

            v13 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              goto LABEL_64;
            }

            v4 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_64;
            }

            ++v11;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_63:
        LOBYTE(v10) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v7)
  {
    v4 = 0;
    if (result)
    {
      while (1)
      {
        v23 = *result - 48;
        if (v23 > 9)
        {
          goto LABEL_64;
        }

        v24 = 10 * v4;
        if ((v4 * 10) >> 64 != (10 * v4) >> 63)
        {
          goto LABEL_64;
        }

        v4 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_64;
        }

        ++result;
        if (!--v7)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_64:
  v4 = 0;
  LOBYTE(v10) = 1;
LABEL_65:
  v36 = v10;
  v28 = v10;
  while (1)
  {
    v29 = (v28 & 1) != 0 ? 0 : v4;
LABEL_69:
    v30 = __OFADD__(*a4, v29);
    v31 = *a4 + v29;
    if (!v30)
    {
      break;
    }

    __break(1u);
LABEL_76:
    v34 = a4;

    v4 = sub_243AB9A28(v4, v5, 10);
    v28 = v32;

    a4 = v34;
  }

  *a4 = v31;
  return result;
}

unint64_t sub_243A53A18(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000010;
      }

      if (a1 == 9)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000027;
      if (a1 != 7)
      {
        v6 = 0xD000000000000028;
      }

      if (a1 == 6)
      {
        return 0xD000000000000029;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x656369766564;
    v2 = 0xD00000000000001DLL;
    v3 = 0xD000000000000024;
    if (a1 == 4)
    {
      v3 = 0xD000000000000027;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000022;
    if (a1 == 1)
    {
      v4 = 0x73656369766564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_243A53BAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_243A53A18(*a1);
  v5 = v4;
  if (v3 == sub_243A53A18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243AC2EE8();
  }

  return v8 & 1;
}

uint64_t sub_243A53C34()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243A53A18(v1);
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A53C98()
{
  sub_243A53A18(*v0);
  sub_243AC28A8();
}

uint64_t sub_243A53CEC()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243A53A18(v1);
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A53D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A57828();
  *a2 = result;
  return result;
}

unint64_t sub_243A53D7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_243A53A18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_243A53DC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A57828();
  *a1 = result;
  return result;
}

uint64_t sub_243A53DF8(uint64_t a1)
{
  v2 = sub_243A57520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A53E34(uint64_t a1)
{
  v2 = sub_243A57520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243A53E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_243AC1618();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v64 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v76 = v64 - v12;
  MEMORY[0x28223BE20](v11);
  v77 = v64 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v80 = *(v84 - 8);
  v14 = *(v80 + 64);
  v15 = MEMORY[0x28223BE20](v84);
  v69 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v71 = v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v74 = v64 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v64 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v64 - v27;
  MEMORY[0x28223BE20](v26);
  v81 = v64 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99248, &qword_243AC6170);
  v82 = *(v30 - 8);
  v83 = v30;
  v31 = *(v82 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = v64 - v32;
  v34 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A57520();
  v85 = v33;
  v39 = v86;
  sub_243AC2FE8();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v28;
  v65 = v25;
  v66 = a1;
  v67 = v34;
  v86 = v37;
  v98 = 0;
  v41 = sub_243A491E8(&qword_27ED99028, &qword_27ED99010, &qword_243AC59B0);
  v42 = v81;
  v43 = v84;
  sub_243AC2E88();
  v44 = (v80 + 32);
  v45 = *(v80 + 32);
  v45(v86, v42, v43);
  v97 = 1;
  sub_243AC2E88();
  v46 = v45;
  v45(&v86[v67[5]], v40, v43);
  v96 = 2;
  v47 = v65;
  v64[1] = 0;
  sub_243AC2E88();
  v81 = v41;
  v48 = v86;
  v46(&v86[v67[8]], v47, v43);
  v95 = 4;
  sub_243A56A9C(&qword_27ED98AC8, MEMORY[0x277D23340]);
  v49 = v77;
  v50 = v48;
  v51 = v79;
  sub_243AC2E88();
  v52 = v46;
  v65 = v44;
  v53 = *(v78 + 32);
  v53(&v50[v67[10]], v49, v51);
  v94 = 5;
  v54 = v76;
  sub_243AC2E88();
  v55 = v51;
  v53(&v50[v67[11]], v54, v51);
  v93 = 6;
  v56 = v75;
  sub_243AC2E88();
  v53(&v50[v67[12]], v56, v55);
  v92 = 7;
  v57 = v74;
  sub_243AC2E88();
  v77 = v53;
  v52(&v50[v67[7]], v57, v84);
  v91 = 8;
  v58 = v73;
  sub_243AC2E88();
  v59 = v58;
  v60 = v77;
  (v77)(&v86[v67[13]], v59, v55);
  v90 = 9;
  v61 = v72;
  sub_243AC2E88();
  v60(&v86[v67[14]], v61, v79);
  v89 = 3;
  sub_243AC2E88();
  v52(&v86[v67[9]], v71, v84);
  v88 = 10;
  sub_243AC2E88();
  v52(&v86[v67[6]], v70, v84);
  v87 = 11;
  sub_243AC2E88();
  (*(v82 + 8))(v85, v83);
  v62 = v86;
  v52(&v86[v67[15]], v69, v84);
  sub_243A56F08(v62, v68);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_243A57574(v62);
}

uint64_t sub_243A54CA0(uint64_t a1)
{
  sub_243A56B74(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_243A54D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_243A56F08(v5, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_243A56F70(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a4[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_243AC1F58();
}

uint64_t sub_243A54F6C@<X0>(uint64_t *a1@<X8>)
{
  v38 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C58, &qword_243AC4CC0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C60, &qword_243AC4CC8);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 72);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_243AC5F40;
  v5 = (v37 + v3);
  v6 = *(v2 + 48);
  *v5 = 7890025;
  *(v5 + 1) = 0xE300000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = *v1;
  *&v5[v6] = v7;
  v8 = *MEMORY[0x277D23248];
  v9 = sub_243AC1528();
  v10 = *(*(v9 - 8) + 104);
  v34 = v9;
  v10(&v5[v6], v8, v9);
  v33 = v2;
  v11 = &v5[v4];
  v12 = *(v2 + 48);
  v13 = v2;
  *v11 = 1701667182;
  *(v11 + 1) = 0xE400000000000000;
  v14 = swift_allocObject();
  v46 = *(v40 + 8);
  *(v14 + 16) = v46;
  *&v11[v12] = v14;
  v15 = *MEMORY[0x277D232A0];
  v35 = *MEMORY[0x277D232A0];
  v10(&v5[v4 + v12], v15, v9);
  v16 = &v5[2 * v4];
  v17 = *(v13 + 48);
  *v16 = 0x6E6F6974706163;
  *(v16 + 1) = 0xE700000000000000;
  v18 = swift_allocObject();
  v45 = *(v40 + 24);
  *(v18 + 16) = v45;
  *&v16[v17] = v18;
  v10(&v16[v17], v15, v9);
  v19 = &v5[3 * v4];
  v20 = *(v33 + 48);
  *v19 = 0x6567616D69;
  *(v19 + 1) = 0xE500000000000000;
  v21 = swift_allocObject();
  v44 = *(v40 + 40);
  *(v21 + 16) = v44;
  *&v19[v20] = v21;
  v36 = *MEMORY[0x277D23270];
  (v10)(&v19[v20]);
  v22 = &v5[4 * v4];
  v23 = *(v33 + 48);
  *v22 = 0x6469766944736168;
  *(v22 + 1) = 0xEA00000000007265;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v40 + 48);
  *&v22[v23] = v24;
  v10(&v22[v23], *MEMORY[0x277D23258], v9);
  v25 = &v5[5 * v4];
  v26 = *(v33 + 48);
  *v25 = 0x52556574656C6564;
  *(v25 + 1) = 0xE90000000000004CLL;
  v27 = swift_allocObject();
  v43 = *(v40 + 56);
  *(v27 + 16) = v43;
  *&v25[v26] = v27;
  v10(&v25[v26], v35, v9);
  v28 = &v5[6 * v4];
  v29 = *(v33 + 48);
  *v28 = 0xD000000000000010;
  *(v28 + 1) = 0x8000000243ACBE00;
  v30 = swift_allocObject();
  v42 = *(v40 + 72);
  *(v30 + 16) = v42;
  *&v28[v29] = v30;
  v10(&v28[v29], v35, v34);
  sub_243A47DA4(&v46, v41);
  sub_243A47DA4(&v45, v41);
  sub_243A57150(&v44, v41);
  sub_243A47DA4(&v43, v41);
  sub_243A47DA4(&v42, v41);
  v31 = sub_243A2E3E4(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v38 + 16) = v31;
  *a1 = v38;
  return (v10)();
}

double sub_243A55430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_243A5548C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_243A5548C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v3 = sub_243AC1528();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v130 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v120 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v132 = &v120 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v133 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v120 - v22);
  v136 = v4[2];
  v136(&v120 - v22, a1, v3);
  v135 = v4[11];
  v24 = v135(v23, v3);
  if (v24 == *MEMORY[0x277D23270])
  {
    v25 = v24;
    v127 = v4;
    v128 = v3;
    v26 = v4[12];
    v26(v23, v3);
    v27 = *v23;
    v28 = *(v27 + 16);
    if (*(v28 + 16))
    {
      v29 = *(v27 + 16);

      v30 = sub_243A2DDC0(7890025, 0xE300000000000000);
      if (v31)
      {
        v125 = v26;
        v126 = v27;
        v32 = *(v28 + 56);
        v33 = v127;
        v34 = v128;
        v124 = v127[9];
        v136(v21, v32 + v124 * v30, v128);
        if (v135(v21, v34) == *MEMORY[0x277D23248])
        {
          v35 = v125;
          v125(v21, v34);
          v36 = *(*v21 + 16);

          if (*(v28 + 16) && (v37 = sub_243A2DDC0(1701667182, 0xE400000000000000), (v38 & 1) != 0))
          {
            v39 = v128;
            v136(v18, *(v28 + 56) + v37 * v124, v128);
            v40 = v135(v18, v39);
            if (v40 == *MEMORY[0x277D232A0])
            {
              v123 = v40;
              v35(v18, v39);
              v42 = *(*v18 + 16);
              v41 = *(*v18 + 24);

              if (*(v28 + 16) && (v43 = sub_243A2DDC0(0x6E6F6974706163, 0xE700000000000000), (v44 & 1) != 0))
              {
                v122 = v42;
                v45 = v134;
                v46 = v128;
                v136(v134, *(v28 + 56) + v43 * v124, v128);
                v47 = v135(v45, v46);
                if (v47 == v123)
                {
                  v125(v45, v46);
                  v48 = *(*v45 + 24);
                  v121 = *(*v45 + 16);

                  if (*(v28 + 16) && (v134 = v48, v49 = sub_243A2DDC0(0x6567616D69, 0xE500000000000000), (v50 & 1) != 0))
                  {
                    v120 = v41;
                    v51 = v133;
                    v52 = v128;
                    v136(v133, *(v28 + 56) + v49 * v124, v128);
                    if (v135(v51, v52) == v25)
                    {
                      v53 = v52;
                      v54 = v125;
                      v125(v51, v53);
                      v55 = *(*v51 + 16);

                      if (*(v28 + 16) && (v56 = sub_243A2DDC0(0x6469766944736168, 0xEA00000000007265), (v57 & 1) != 0))
                      {
                        v58 = v132;
                        v59 = v128;
                        v136(v132, *(v28 + 56) + v56 * v124, v128);
                        if (v135(v58, v59) == *MEMORY[0x277D23258])
                        {
                          v54(v58, v59);
                          v60 = *(*v58 + 16);

                          if (*(v28 + 16) && (v61 = sub_243A2DDC0(0x52556574656C6564, 0xE90000000000004CLL), (v62 & 1) != 0))
                          {
                            v63 = v131;
                            v64 = v128;
                            v136(v131, *(v28 + 56) + v61 * v124, v128);
                            v65 = v135(v63, v64);
                            if (v65 == v123)
                            {
                              v66 = v131;
                              v125(v131, v128);
                              v67 = *(*v66 + 24);
                              v132 = *(*v66 + 16);
                              v133 = v67;

                              if (*(v28 + 16) && (v68 = sub_243A2DDC0(0xD000000000000010, 0x8000000243ACBE00), (v69 & 1) != 0))
                              {
                                v70 = v130;
                                v71 = v128;
                                v136(v130, *(v28 + 56) + v68 * v124, v128);

                                v72 = v135(v70, v71);
                                if (v72 == v123)
                                {
                                  v73 = v130;
                                  v125(v130, v128);
                                  v74 = *v73;
                                  v75 = *(v74 + 16);
                                  v76 = *(v74 + 24);

                                  v78 = v129;
                                  v79 = v122;
                                  *v129 = v36;
                                  v78[1] = v79;
                                  v80 = v121;
                                  v78[2] = v120;
                                  v78[3] = v80;
                                  v78[4] = v134;
                                  v78[5] = v55;
                                  *(v78 + 48) = v60;
                                  *(v78 + 49) = *v137;
                                  *(v78 + 13) = *&v137[3];
                                  v81 = v133;
                                  v78[7] = v132;
                                  v78[8] = v81;
                                  v78[9] = v75;
                                  v78[10] = v76;
                                  return result;
                                }

                                (v127[1])(v130, v128);
                              }

                              else
                              {
                              }

                              if (qword_27ED98910 != -1)
                              {
                                swift_once();
                              }

                              v119 = sub_243AC1468();
                              __swift_project_value_buffer(v119, qword_27EDA14A8);
                              v114 = sub_243AC1448();
                              v115 = sub_243AC2B58();
                              if (!os_log_type_enabled(v114, v115))
                              {
                                goto LABEL_73;
                              }

                              v116 = swift_slowAlloc();
                              *v116 = 0;
                              v117 = "Recommended Backup: failed to parse key 'storageRecovered'";
                              goto LABEL_72;
                            }

                            (v127[1])(v131, v128);
                          }

                          else
                          {
                          }

                          if (qword_27ED98910 != -1)
                          {
                            swift_once();
                          }

                          v113 = sub_243AC1468();
                          __swift_project_value_buffer(v113, qword_27EDA14A8);
                          v114 = sub_243AC1448();
                          v115 = sub_243AC2B58();
                          if (!os_log_type_enabled(v114, v115))
                          {
                            goto LABEL_73;
                          }

                          v116 = swift_slowAlloc();
                          *v116 = 0;
                          v117 = "Recommended Backup: failed to parse key 'deleteURL'";
LABEL_72:
                          _os_log_impl(&dword_243A1B000, v114, v115, v117, v116, 2u);
                          MEMORY[0x245D47D20](v116, -1, -1);
LABEL_73:

                          type metadata accessor for RecommendedBackupError(0);
                          sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
                          swift_allocError();
                          *v118 = MEMORY[0x277D837D0];
                          swift_storeEnumTagMultiPayload();
                          swift_willThrow();
                        }

                        (v127[1])(v58, v59);
                      }

                      else
                      {
                      }

                      if (qword_27ED98910 != -1)
                      {
                        swift_once();
                      }

                      v109 = sub_243AC1468();
                      __swift_project_value_buffer(v109, qword_27EDA14A8);
                      v110 = sub_243AC1448();
                      v111 = sub_243AC2B58();
                      if (os_log_type_enabled(v110, v111))
                      {
                        v112 = swift_slowAlloc();
                        *v112 = 0;
                        _os_log_impl(&dword_243A1B000, v110, v111, "Recommended Backup: failed to parse key 'hasDivider'", v112, 2u);
                        MEMORY[0x245D47D20](v112, -1, -1);
                      }

                      type metadata accessor for RecommendedBackupError(0);
                      sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
                      swift_allocError();
                      v102 = MEMORY[0x277D839B0];
                      goto LABEL_44;
                    }

                    (v127[1])(v51, v52);
                  }

                  else
                  {
                  }

                  if (qword_27ED98910 != -1)
                  {
                    swift_once();
                  }

                  v104 = sub_243AC1468();
                  __swift_project_value_buffer(v104, qword_27EDA14A8);
                  v105 = sub_243AC1448();
                  v106 = sub_243AC2B58();
                  if (os_log_type_enabled(v105, v106))
                  {
                    v107 = swift_slowAlloc();
                    *v107 = 0;
                    _os_log_impl(&dword_243A1B000, v105, v106, "Recommended Backup: failed to parse key 'image'", v107, 2u);
                    MEMORY[0x245D47D20](v107, -1, -1);
                  }

                  type metadata accessor for RecommendedBackupError(0);
                  sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
                  swift_allocError();
                  *v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
                  goto LABEL_45;
                }

                (v127[1])(v45, v46);
              }

              else
              {
              }

              if (qword_27ED98910 != -1)
              {
                swift_once();
              }

              v103 = sub_243AC1468();
              __swift_project_value_buffer(v103, qword_27EDA14A8);
              v97 = sub_243AC1448();
              v98 = sub_243AC2B58();
              if (!os_log_type_enabled(v97, v98))
              {
LABEL_43:

                type metadata accessor for RecommendedBackupError(0);
                sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
                swift_allocError();
                v102 = MEMORY[0x277D837D0];
LABEL_44:
                *v101 = v102;
LABEL_45:
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
              }

              v99 = swift_slowAlloc();
              *v99 = 0;
              v100 = "Recommended Backup: failed to parse key 'caption'";
LABEL_42:
              _os_log_impl(&dword_243A1B000, v97, v98, v100, v99, 2u);
              MEMORY[0x245D47D20](v99, -1, -1);
              goto LABEL_43;
            }

            (v127[1])(v18, v39);
          }

          else
          {
          }

          if (qword_27ED98910 != -1)
          {
            swift_once();
          }

          v96 = sub_243AC1468();
          __swift_project_value_buffer(v96, qword_27EDA14A8);
          v97 = sub_243AC1448();
          v98 = sub_243AC2B58();
          if (!os_log_type_enabled(v97, v98))
          {
            goto LABEL_43;
          }

          v99 = swift_slowAlloc();
          *v99 = 0;
          v100 = "Recommended Backup: failed to parse key 'name'";
          goto LABEL_42;
        }

        (v33[1])(v21, v34);
      }

      else
      {
      }
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v91 = sub_243AC1468();
    __swift_project_value_buffer(v91, qword_27EDA14A8);
    v92 = sub_243AC1448();
    v93 = sub_243AC2B58();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_243A1B000, v92, v93, "Recommended Backup: failed to parse key 'idx'", v94, 2u);
      MEMORY[0x245D47D20](v94, -1, -1);
    }

    type metadata accessor for RecommendedBackupError(0);
    sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
    swift_allocError();
    *v95 = MEMORY[0x277D83B88];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v82 = v4;
  v83 = v3;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v84 = sub_243AC1468();
  __swift_project_value_buffer(v84, qword_27EDA14A8);
  v85 = sub_243AC1448();
  v86 = sub_243AC2B58();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_243A1B000, v85, v86, "Recommended Backup: DecodabelStateType is not a dictionary", v87, 2u);
    MEMORY[0x245D47D20](v87, -1, -1);
  }

  type metadata accessor for RecommendedBackupError(0);
  sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError);
  swift_allocError();
  v89 = v88;
  v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
  v136(v89, a1, v83);
  *&v89[v90] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v82[1])(v23, v83);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_243A566CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_243A56714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A5678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_243AC1618();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_243A5689C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_243AC1618();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_243A569C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A569FC()
{
  sub_243A4C288();
  if (v0 <= 0x3F)
  {
    sub_243AC1618();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_243A56A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A56B74(uint64_t a1)
{
  v2 = sub_243AC2178();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_243A4C4D4();
  v13 = sub_243AC2BC8();
  sub_243A56F08(v18, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_243A56F70(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_243A56FD4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A56A9C(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v2);
  return (*(v19 + 8))(v9, v20);
}

uint64_t sub_243A56F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A56F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A5706C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A570A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A570EC()
{
  result = qword_27ED99230;
  if (!qword_27ED99230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99230);
  }

  return result;
}

uint64_t sub_243A57150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v6(v4 + v1[8], v5);
  v6(v4 + v1[9], v5);
  v6(v4 + v1[10], v5);
  v6(v4 + v1[11], v5);
  v7 = v1[12];
  v8 = sub_243AC1618();
  v9 = *(*(v8 - 8) + 8);
  v9(v4 + v7, v8);
  v9(v4 + v1[13], v8);
  v9(v4 + v1[14], v8);
  v9(v4 + v1[15], v8);
  v9(v4 + v1[16], v8);
  v6(v4 + v1[17], v5);
  v10 = *(v12 + v13);

  return MEMORY[0x2821FE8E8](v12, v13 + 8, v2 | 7);
}

uint64_t sub_243A5742C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_243A574CC()
{
  result = qword_27ED99240;
  if (!qword_27ED99240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99240);
  }

  return result;
}

unint64_t sub_243A57520()
{
  result = qword_27ED99250;
  if (!qword_27ED99250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99250);
  }

  return result;
}

uint64_t sub_243A57574(uint64_t a1)
{
  v2 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A57724()
{
  result = qword_27ED99258;
  if (!qword_27ED99258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99258);
  }

  return result;
}

unint64_t sub_243A5777C()
{
  result = qword_27ED99260;
  if (!qword_27ED99260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99260);
  }

  return result;
}

unint64_t sub_243A577D4()
{
  result = qword_27ED99268;
  if (!qword_27ED99268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99268);
  }

  return result;
}

uint64_t sub_243A57828()
{
  v0 = sub_243AC2E58();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unsigned __int8 *sub_243A57878(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  v5 = *result;
  if (v5 < 4)
  {
    swift_beginAccess();

    sub_243A585B0(&v6, a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_243A57988(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (*a3)
    {
      v7 = v3 + 14;
    }

    else
    {
      v7 = v3 + 15;
    }

    goto LABEL_10;
  }

  if (v6 == 2)
  {
    v7 = v3 + 16;
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    v7 = v3 + 17;
LABEL_10:
    swift_beginAccess();
    v9 = *v7;

    v8 = sub_243A57A40(a1, a2, v9);

    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_243A57A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_243AC2FB8();
  sub_243AC28A8();
  v7 = sub_243AC2FD8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_243AC2EE8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *RecommendationsDisplayTracker.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecommendationsDisplayTracker.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243A57BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  result = sub_243AC2CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_243AC2858();
      sub_243AC2FB8();
      sub_243AC28A8();
      v20 = sub_243AC2FD8();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_243A57E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  result = sub_243AC2CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_243A580BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_243AC26B8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  result = sub_243AC2CD8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_243A59990(&qword_27ED99278);
      result = sub_243AC27F8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_243A58404(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_243AC2858();
  sub_243AC2FB8();
  sub_243AC28A8();
  v8 = sub_243AC2FD8();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_243AC2858();
      v15 = v14;
      if (v13 == sub_243AC2858() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_243AC2EE8();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_243A58A3C(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_243A585B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_243AC2FB8();
  sub_243AC28A8();
  v9 = sub_243AC2FD8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_243AC2EE8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_243A58C24(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_243A58784(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_243AC26B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_243A59990(&qword_27ED99278);
  v36 = a2;
  v13 = sub_243AC27F8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_243A59990(&qword_27ED99280);
      v23 = sub_243AC2808();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_243A58DA4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_243A58A3C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_243A57BE0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_243A59020();
      goto LABEL_16;
    }

    sub_243A59504(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_243AC2858();
  sub_243AC2FB8();
  sub_243AC28A8();
  v11 = sub_243AC2FD8();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for Dataclass(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_243AC2858();
      v17 = v16;
      if (v15 == sub_243AC2858() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_243AC2EE8();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

uint64_t sub_243A58C24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_243A57E5C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_243A59170();
      goto LABEL_16;
    }

    sub_243A59758(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_243AC2FB8();
  sub_243AC28A8();
  result = sub_243AC2FD8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_243AC2EE8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

uint64_t sub_243A58DA4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_243AC26B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_243A580BC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_243A592CC();
      goto LABEL_12;
    }

    sub_243A599D4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_243A59990(&qword_27ED99278);
  v15 = sub_243AC27F8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_243A59990(&qword_27ED99280);
      v23 = sub_243AC2808();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

id sub_243A59020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  v2 = *v0;
  v3 = sub_243AC2CC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_243A59170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  v2 = *v0;
  v3 = sub_243AC2CC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_243A592CC()
{
  v1 = v0;
  v2 = sub_243AC26B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  v7 = *v0;
  v8 = sub_243AC2CC8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_243A59504(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  result = sub_243AC2CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_243AC2858();
      sub_243AC2FB8();
      v20 = v18;
      sub_243AC28A8();
      v21 = sub_243AC2FD8();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_243A59758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  result = sub_243AC2CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_243AC2FB8();

      sub_243AC28A8();
      result = sub_243AC2FD8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_243A59990(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_243AC26B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243A599D4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_243AC26B8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  v10 = sub_243AC2CD8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_243A59990(&qword_27ED99278);
      result = sub_243AC27F8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void *sub_243A59CDC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];
  v1[2] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setMaximumFractionDigits_];
  v1[3] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v5 setUnitStyle_];
  v1[4] = v5;
  v1[5] = a1;
  return v1;
}

uint64_t sub_243A59DA4()
{
  v1 = *(v0 + 16);
  v2 = sub_243AC1238();
  v3 = [v1 stringFromDate_];

  sub_243AC2858();
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  return v5;
}

uint64_t sub_243A59E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED992A0, qword_243AC63F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = objc_opt_self();
  v16 = [v15 bytes];
  sub_243A2CFF0(0, &qword_27ED992A8, 0x277CCAE18);
  sub_243AC1068();
  v17 = [v15 megabytes];
  sub_243AC1088();

  sub_243AC1078();
  if (v18 >= 0.0 && v18 < 1000.0)
  {
    v28 = *(v2 + 24);
    sub_243AC1078();
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v31 = [v28 stringFromNumber_];

    if (v31)
    {
      v32 = sub_243AC2858();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v43 = *(v3 + 32);
    v44 = [v15 megabytes];
    v45 = [v43 stringFromUnit_];

    v46 = sub_243AC2858();
    v48 = v47;

    v59 = v32;
    v60 = v34;
    MEMORY[0x245D46C90](32, 0xE100000000000000);
    MEMORY[0x245D46C90](v46, v48);

    v41 = v59;
    v42 = v60;
  }

  else
  {
    v20 = [v15 gigabytes];
    sub_243AC1088();

    v21 = *(v2 + 24);
    sub_243AC1078();
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v24 = [v21 stringFromNumber_];

    if (v24)
    {
      v25 = sub_243AC2858();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v35 = *(v3 + 32);
    v36 = [v15 gigabytes];
    v37 = [v35 stringFromUnit_];

    v38 = sub_243AC2858();
    v40 = v39;

    v59 = v25;
    v60 = v27;
    MEMORY[0x245D46C90](32, 0xE100000000000000);
    MEMORY[0x245D46C90](v38, v40);

    v41 = v59;
    v42 = v60;
    (*(v5 + 8))(v9, v4);
  }

  v57 = v51;
  v58 = v52;
  v55 = 0xD000000000000014;
  v56 = 0x8000000243ACCDE0;
  v53 = v41;
  v54 = v42;
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  v49 = *(v5 + 8);
  v49(v12, v4);
  v49(v14, v4);
  return v59;
}

uint64_t RecommendationTemplate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243A5A420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_243AC2B98();
  if (v4 >> 62)
  {
    v5 = sub_243AC2DF8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = [a3 members];
  sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
  v7 = sub_243AC2998();

  if (v7 >> 62)
  {
    sub_243AC2DF8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_243AC2EB8();
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  sub_243AC2EB8();
  sub_243AC2B18();

  return v5;
}

unint64_t sub_243A5A654()
{
  result = qword_27ED99290;
  if (!qword_27ED99290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99290);
  }

  return result;
}

unint64_t sub_243A5A6A8()
{
  result = qword_27ED99298;
  if (!qword_27ED99298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99298);
  }

  return result;
}

uint64_t sub_243A5A6FC()
{
  sub_243A5A78C();
  sub_243AC1A38();
  return v1;
}

unint64_t sub_243A5A78C()
{
  result = qword_27ED992B0;
  if (!qword_27ED992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED992B0);
  }

  return result;
}

uint64_t sub_243A5A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_243A32C74();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

id sub_243A5A84C()
{
  v0 = [objc_allocWithZone(sub_243AC15A8()) init];
  type metadata accessor for FinishAction();
  sub_243A5AE68(&qword_27ED992B8, type metadata accessor for FinishAction);
  sub_243AC1588();
  type metadata accessor for CancelAction();
  sub_243A5AE68(&qword_27ED992C0, type metadata accessor for CancelAction);
  sub_243AC1588();
  type metadata accessor for CERefreshCacheAction();
  sub_243A5AE68(&qword_27ED992C8, type metadata accessor for CERefreshCacheAction);
  sub_243AC1588();
  type metadata accessor for ToggleRecommendedBackupAction(0);
  sub_243A5AE68(&qword_27ED99238, type metadata accessor for ToggleRecommendedBackupAction);
  sub_243AC1588();
  type metadata accessor for DeleteSelectedBackupsAction();
  sub_243A5AE68(&qword_27ED98D80, type metadata accessor for DeleteSelectedBackupsAction);
  sub_243AC1588();
  type metadata accessor for ScaledAsyncImageView();
  sub_243A5AE68(&qword_27ED992D0, type metadata accessor for ScaledAsyncImageView);
  sub_243AC1578();
  type metadata accessor for ICQOnDisappearAction();
  sub_243A5AE68(&qword_27ED992D8, type metadata accessor for ICQOnDisappearAction);
  sub_243AC1588();
  type metadata accessor for ContextualRecommendationView(0);
  sub_243A5AE68(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView);
  sub_243AC1578();
  type metadata accessor for EmailAddressInjector();
  sub_243A5AE68(&qword_27ED992E8, type metadata accessor for EmailAddressInjector);
  sub_243AC1578();
  type metadata accessor for ToggleEmailAddressAction();
  sub_243A5AE68(&qword_27ED99070, type metadata accessor for ToggleEmailAddressAction);
  sub_243AC1588();
  type metadata accessor for EmailDownloadLink();
  sub_243A5AE68(&qword_27ED992F0, type metadata accessor for EmailDownloadLink);
  sub_243AC1588();
  type metadata accessor for JetAction();
  sub_243A5AE68(&qword_27ED992F8, type metadata accessor for JetAction);
  sub_243AC1588();
  type metadata accessor for JetImpressionable();
  sub_243A5AE68(&qword_27ED99300, type metadata accessor for JetImpressionable);
  sub_243AC1598();
  type metadata accessor for PageMetricsModifier();
  sub_243A5AE68(&qword_27ED99308, type metadata accessor for PageMetricsModifier);
  sub_243AC1598();
  type metadata accessor for IconWithTypeIdentifier();
  sub_243A5AE68(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier);
  sub_243AC1578();
  return v0;
}

uint64_t sub_243A5AE68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243A5AEC0(char a1)
{
  result = 0xD000000000000023;
  switch(a1)
  {
    case 1:
    case 15:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      result = 0xD00000000000002DLL;
      break;
    case 5:
    case 17:
    case 20:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000002FLL;
      break;
    case 7:
    case 16:
      result = 0xD000000000000025;
      break;
    case 8:
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000031;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_243A5B0F0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_243A5AEC0(*a1);
  v5 = v4;
  if (v3 == sub_243A5AEC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243AC2EE8();
  }

  return v8 & 1;
}

unint64_t sub_243A5B178@<X0>(unint64_t *a1@<X8>)
{
  result = sub_243A5AEC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_243A5B1A4(char a1)
{
  if (a1 != 1)
  {
    type metadata accessor for RecommendationsController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_243AC1188();

    return v6;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
    v3 = 0x4E4F49534956;
LABEL_9:
    v8 = 0xE600000000000000;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      v3 = 0x544C5541464544;
      v8 = 0xE700000000000000;
      goto LABEL_11;
    }

    v3 = 0x454E4F485049;
    goto LABEL_9;
  }

  v3 = 1145131081;
  v8 = 0xE400000000000000;
LABEL_11:
  MEMORY[0x245D46C90](v3, v8);
  type metadata accessor for RecommendationsController();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_243AC1188();

  return v11;
}

uint64_t sub_243A5B438()
{
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243AC1188();

  return v2;
}

unint64_t sub_243A5B590()
{
  result = qword_27ED99318;
  if (!qword_27ED99318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99318);
  }

  return result;
}

uint64_t sub_243A5B5E4()
{
  v0 = sub_243AC2EF8();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

char *sub_243A5B638(uint64_t a1)
{
  v3 = [v1 recommendationRules];
  sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
  v4 = sub_243AC2998();

  if (v4 >> 62)
  {
LABEL_19:
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_243AC2DF8();
  }

  else
  {
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (2)
  {
    v17 = v6;
    if (v5 != v19)
    {
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D470F0](v5, v4);
        }

        else
        {
          if (v5 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v10 = [v7 recommendationID];
        sub_243AC2858();

        MEMORY[0x28223BE20](v11);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);

        os_unfair_lock_lock((a1 + 24));
        sub_243A5CA7C((a1 + 16), &v20);
        os_unfair_lock_unlock((a1 + 24));

        v13 = v20;
        if (v20)
        {
          break;
        }

        ++v5;
        if (v9 == v19)
        {
          goto LABEL_16;
        }
      }

      v14 = [v8 rankingHint];
      v15 = [v14 integerValue];

      ++v5;
      v6 = &v15[v17];
      if (!__OFADD__(v17, v15))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_16:

  return v17;
}

uint64_t sub_243A5B8B0(void *a1, void *a2)
{
  v3 = [a1 rankingHint];
  v4 = [v3 integerValue];

  v5 = [a2 rankingHint];
  v6 = [v5 integerValue];

  if (v6 < v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_243A5B940(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  v9 = v6(v7, v8);

  return v9;
}

uint64_t sub_243A5B9BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243A5BA18(void **__src, void **a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v42 = &v15[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v40 = v15;
LABEL_27:
      v39 = v24;
      v26 = v24 - 1;
      v27 = v5 - 1;
      v28 = v42;
      do
      {
        v29 = v27;
        v30 = (v27 + 1);
        v31 = *(v28 - 1);
        v28 -= 8;
        v32 = v26;
        v33 = *v26;
        v34 = v31;
        v35 = v33;
        v36 = sub_243A5B638(a5);
        v37 = sub_243A5B638(a5);

        if (v37 < v36)
        {
          v5 = v29;
          if (v30 != v39)
          {
            *v29 = *v32;
          }

          v15 = v40;
          if (v42 <= v40 || (v24 = v32, v32 <= v6))
          {
            v24 = v32;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v30 != v42)
        {
          *v29 = *v28;
        }

        v27 = v29 - 1;
        v42 = v28;
        v15 = v40;
        v26 = v32;
      }

      while (v28 > v40);
      v42 = v28;
      v24 = v39;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v14;
    }

    v42 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v16 = v5;
        v17 = *v15;
        v18 = *v13;
        v19 = v17;
        v20 = sub_243A5B638(a5);
        v21 = sub_243A5B638(a5);

        if (v21 >= v20)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v15 < v42)
        {
          v5 = v16;
          if (v13 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v22 = v15;
      v23 = v6 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_38:
  if (v24 != v15 || v24 >= (v15 + ((v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v15, 8 * ((v42 - v15) / 8));
  }

  return 1;
}

uint64_t sub_243A5BD0C(char **a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_243A45C54(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_243A5BA18(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_243A5BEB4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3[1];
  v121 = MEMORY[0x277D84F90];
  swift_retain_n();
  if (v9 >= 1)
  {
    v103 = a4;
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v120 = a5;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v113 = v11;
        v104 = v6;
        v107 = 8 * v10;
        v14 = (*a3 + 8 * v10);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = *(*a3 + 8 * v13);
        v18 = v16;
        v116 = sub_243A5B638(a5);
        v110 = sub_243A5B638(a5);

        v19 = v12 + 2;
        while (v9 != v19)
        {
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_243A5B638(v120);
          v24 = sub_243A5B638(v120);

          ++v19;
          ++v15;
          if (v110 < v116 == v24 >= v23)
          {
            v9 = v19 - 1;
            break;
          }
        }

        v11 = v113;
        v25 = v107;
        v6 = v104;
        a5 = v120;
        if (v110 >= v116)
        {
LABEL_18:
          v13 = v9;
        }

        else
        {
          v26 = v12;
          if (v9 < v12)
          {
            goto LABEL_117;
          }

          if (v12 < v9)
          {
            v27 = 8 * v9 - 8;
            v28 = v9;
            while (1)
            {
              if (v26 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v29 = *(v30 + v25);
                *(v30 + v25) = *(v30 + v27);
                *(v30 + v27) = v29;
              }

              ++v26;
              v27 -= 8;
              v25 += 8;
              if (v26 >= v28)
              {
                goto LABEL_18;
              }
            }
          }

          v13 = v9;
        }
      }

      v31 = a3[1];
      if (v13 < v31)
      {
        v32 = v13;
        v51 = __OFSUB__(v13, v12);
        v33 = v13 - v12;
        if (v51)
        {
          goto LABEL_116;
        }

        if (v33 < v103)
        {
          if (__OFADD__(v12, v103))
          {
            goto LABEL_118;
          }

          if (v12 + v103 >= v31)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v12 + v103;
          }

          if (v34 < v12)
          {
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
            return result;
          }

          if (v32 != v34)
          {
            v115 = v11;
            v105 = v6;
            v89 = *a3;
            v90 = *a3 + 8 * v32 - 8;
            v91 = v12 - v32;
            v109 = v34;
            do
            {
              v118 = v32;
              v92 = *(v89 + 8 * v32);
              v93 = v91;
              v112 = v90;
              do
              {
                v94 = *v90;
                v95 = v92;
                v96 = v94;
                v97 = sub_243A5B638(v120);
                v98 = sub_243A5B638(v120);

                if (v98 >= v97)
                {
                  break;
                }

                if (!v89)
                {
                  goto LABEL_120;
                }

                v99 = *v90;
                v92 = *(v90 + 8);
                *v90 = v92;
                *(v90 + 8) = v99;
                v90 -= 8;
              }

              while (!__CFADD__(v93++, 1));
              v32 = v118 + 1;
              v90 = v112 + 8;
              --v91;
            }

            while (v118 + 1 != v109);
            v13 = v109;
            v6 = v105;
            a5 = v120;
            v11 = v115;
            if (v109 < v12)
            {
              goto LABEL_115;
            }

            goto LABEL_31;
          }
        }

        v13 = v32;
      }

      if (v13 < v12)
      {
        goto LABEL_115;
      }

LABEL_31:
      v117 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_243A45C68(0, *(v11 + 2) + 1, 1, v11);
      }

      v36 = *(v11 + 2);
      v35 = *(v11 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v11 = sub_243A45C68((v35 > 1), v36 + 1, 1, v11);
      }

      *(v11 + 2) = v37;
      v38 = v11 + 32;
      v39 = &v11[16 * v36 + 32];
      *v39 = v12;
      *(v39 + 1) = v117;
      v111 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v36)
      {
        v108 = v11 + 32;
        v114 = v11;
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v11 + 4);
            v42 = *(v11 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_51:
            if (v44)
            {
              goto LABEL_105;
            }

            v57 = &v11[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_107;
            }

            v63 = &v38[16 * v40];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_112;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v37 < 2)
          {
            goto LABEL_113;
          }

          v67 = &v11[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_66:
          if (v62)
          {
            goto LABEL_109;
          }

          v70 = &v38[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_111;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v78 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v79 = v6;
          v80 = &v38[16 * v40 - 16];
          v81 = *v80;
          v82 = v40;
          v83 = &v38[16 * v40];
          v84 = *(v83 + 1);
          v85 = (v78 + 8 * *v80);
          v86 = (v78 + 8 * *v83);
          v87 = (v78 + 8 * v84);
          a5 = v120;

          sub_243A5BA18(v85, v86, v87, v111, v120);
          v6 = v79;
          if (v79)
          {

            goto LABEL_96;
          }

          v11 = v114;
          if (v84 < v81)
          {
            goto LABEL_100;
          }

          v88 = *(v114 + 2);
          if (v82 > v88)
          {
            goto LABEL_101;
          }

          *v80 = v81;
          *(v80 + 1) = v84;
          if (v82 >= v88)
          {
            goto LABEL_102;
          }

          v37 = v88 - 1;
          memmove(v83, v83 + 16, 16 * (v88 - 1 - v82));
          *(v114 + 2) = v88 - 1;
          v38 = v108;
          if (v88 <= 2)
          {
            goto LABEL_3;
          }
        }

        v45 = &v38[16 * v37];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_103;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_104;
        }

        v52 = &v11[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_106;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_108;
        }

        if (v56 >= v48)
        {
          v74 = &v38[16 * v40];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_114;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_3:
      v10 = v117;
      v9 = a3[1];
      if (v117 >= v9)
      {
        v121 = v11;
        break;
      }
    }
  }

  v101 = *a1;
  if (!*a1)
  {
    goto LABEL_124;
  }

  sub_243A5BD0C(&v121, v101, a3, a5);
  if (v6)
  {

LABEL_96:
  }

  else
  {
  }
}

void sub_243A5C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v19 = v9;
    v20 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = sub_243A5B638(a5);
      v15 = sub_243A5B638(a5);

      if (v15 >= v14)
      {
LABEL_4:
        ++v6;
        v8 = v20 + 8;
        v9 = v19 - 1;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v16 = *v8;
      v10 = *(v8 + 8);
      *v8 = v10;
      *(v8 + 8) = v16;
      v8 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_243A5C664(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_243AC2EA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
        v8 = sub_243AC29C8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_243A5BEB4(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_243A5C56C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_243A5C7D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_243A4997C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_243A5C664(v8, a2);

  sub_243AC2D78();
}

uint64_t sub_243A5C87C(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x277D84F90];

  v11[0] = sub_243AA7C78(v3);
  sub_243A5C7D0(v11, a2);

  v4 = v11[0];
  if ((v11[0] & 0x8000000000000000) == 0 && (v11[0] & 0x4000000000000000) == 0)
  {
    v5 = *(v11[0] + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_243AA34B8(v4);
    return v12;
  }

  v5 = sub_243AC2DF8();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D470F0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v11[4] = sub_243A5B8B0;
      v11[5] = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_243A5B940;
      v11[3] = &block_descriptor_3;
      v9 = _Block_copy(v11);
      [v8 sortRecommendationRulesUsingComparator_];
      _Block_release(v9);
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_243A5CA70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
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

uint64_t sub_243A5CAAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A5CAF4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_243A5CB70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99320, &qword_243AC6718);
  v3 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v70 = &v70 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99328, &qword_243AC6720);
  v5 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v70 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99330, &qword_243AC6728);
  v7 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v76 = &v70 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99338, &qword_243AC6730);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99340, &qword_243AC6738);
  v11 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = &v70 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99348, &qword_243AC6740);
  v13 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v15 = &v70 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99350, &qword_243AC6748);
  v16 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v18 = &v70 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v78 = *(v82 - 8);
  v19 = *(v78 + 64);
  v20 = MEMORY[0x28223BE20](v82);
  v71 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99360, &qword_243AC6758);
  v79 = *(v83 - 8);
  v24 = *(v79 + 64);
  v25 = MEMORY[0x28223BE20](v83);
  v72 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v70 - v27;
  v90 = *(v1 + 48);
  v91 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v29 = v89;
  v30 = [v89 bundleID];

  v31 = sub_243AC2858();
  v33 = v32;

  LOBYTE(v31) = sub_243A70360(v31, v33);

  if (v31)
  {
    v90 = v91;
    sub_243AC2068();
    v34 = v89;
    v35 = [v89 bundleID];

    if (!v35)
    {
      sub_243AC2858();
      v35 = sub_243AC2818();
    }

    [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

    sub_243AC1428();
    v37 = *v2;
    v36 = v2[1];
    v38 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
    v39 = v82;
    sub_243AC1E08();
    (*(v78 + 8))(v23, v39);
    v40 = v79;
    v41 = v83;
    (*(v79 + 16))(v15, v28, v83);
    swift_storeEnumTagMultiPayload();
    *&v90 = v39;
    *(&v90 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    sub_243A5EEE0();
    sub_243AC1AE8();
    sub_243A224B4(v18, v86, &qword_27ED99350, &qword_243AC6748);
    swift_storeEnumTagMultiPayload();
    sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
    sub_243A5F1D4();
    v42 = v88;
    sub_243AC1AE8();
    sub_243A2251C(v18, &qword_27ED99350, &qword_243AC6748);
    (*(v40 + 8))(v28, v41);
    goto LABEL_18;
  }

  v90 = v91;
  sub_243AC2068();
  v43 = v89;
  v44 = [v89 icon];

  if (v44)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v46 = v77;
      sub_243A5D91C(v45, v77);
      sub_243A224B4(v46, v15, &qword_27ED99338, &qword_243AC6730);
      swift_storeEnumTagMultiPayload();
      v47 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
      *&v90 = v82;
      *(&v90 + 1) = v47;
      swift_getOpaqueTypeConformance2();
      sub_243A5EEE0();
      sub_243AC1AE8();
      sub_243A224B4(v18, v86, &qword_27ED99350, &qword_243AC6748);
      swift_storeEnumTagMultiPayload();
      sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
      sub_243A5F1D4();
      v42 = v88;
      sub_243AC1AE8();

      sub_243A2251C(v18, &qword_27ED99350, &qword_243AC6748);
      sub_243A2251C(v46, &qword_27ED99338, &qword_243AC6730);
      goto LABEL_18;
    }
  }

  v90 = v91;
  sub_243AC2068();
  v48 = v89;
  v49 = [v89 icon];

  v42 = v88;
  if (v49)
  {
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v51 = [v50 identifier];
      if (!v51)
      {
        sub_243AC2858();
        v51 = sub_243AC2818();
      }

      [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithType_];

      v52 = v71;
      sub_243AC1428();
      v54 = *v2;
      v53 = v2[1];
      v55 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
      v56 = v72;
      v57 = v82;
      sub_243AC1E08();
      (*(v78 + 8))(v52, v57);
      v58 = v79;
      v59 = v83;
      (*(v79 + 16))(v74, v56, v83);
      swift_storeEnumTagMultiPayload();
      *&v90 = v57;
      *(&v90 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
      v60 = v76;
      sub_243AC1AE8();
      sub_243A224B4(v60, v86, &qword_27ED99330, &qword_243AC6728);
      swift_storeEnumTagMultiPayload();
      sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
      sub_243A5F1D4();
      sub_243AC1AE8();

      sub_243A2251C(v60, &qword_27ED99330, &qword_243AC6728);
      (*(v58 + 8))(v56, v59);
      goto LABEL_18;
    }
  }

  v90 = v91;
  sub_243AC2068();
  v61 = v89;
  v62 = [v89 icon];

  if (!v62)
  {
    v67 = 1;
    goto LABEL_19;
  }

  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (!v63)
  {

    v67 = 1;
    goto LABEL_19;
  }

  v64 = v70;
  sub_243A5DE94(v63, v70);
  sub_243A224B4(v64, v74, &qword_27ED99320, &qword_243AC6718);
  swift_storeEnumTagMultiPayload();
  v65 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
  *&v90 = v82;
  *(&v90 + 1) = v65;
  swift_getOpaqueTypeConformance2();
  sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
  v66 = v76;
  sub_243AC1AE8();
  sub_243A224B4(v66, v86, &qword_27ED99330, &qword_243AC6728);
  swift_storeEnumTagMultiPayload();
  sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
  sub_243A5F1D4();
  sub_243AC1AE8();

  sub_243A2251C(v66, &qword_27ED99330, &qword_243AC6728);
  sub_243A2251C(v64, &qword_27ED99320, &qword_243AC6718);
LABEL_18:
  v67 = 0;
LABEL_19:
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99370, &qword_243AC6768);
  return (*(*(v68 - 8) + 56))(v42, v67, 1, v68);
}

uint64_t sub_243A5D91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_243AC2018();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99400, &qword_243AC67A0);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v37 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v39);
  v16 = &v37 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99360, &qword_243AC6758);
  v17 = *(v40 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v40);
  v20 = &v37 - v19;
  if ([a1 shouldUseISIcon])
  {
    sub_243A5F354(a1);
    sub_243AC1428();
    v22 = *v3;
    v21 = v3[1];
    v23 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
    v24 = v39;
    sub_243AC1E08();
    (*(v13 + 8))(v16, v24);
    v25 = v40;
    (*(v17 + 16))(v12, v20, v40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993C0, &qword_243AC6780);
    *&v46 = v24;
    *(&v46 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    sub_243A5F004();
    sub_243AC1AE8();
    return (*(v17 + 8))(v20, v25);
  }

  else
  {
    v27 = [a1 path];
    sub_243AC2858();

    sub_243AC2008();
    (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
    v28 = sub_243AC2038();

    (*(v6 + 8))(v9, v5);
    v29 = [a1 systemColorName];
    sub_243AC2858();

    v30 = sub_243A7051C();
    if (v30 == 24)
    {
      v30 = 17;
    }

    v31 = sub_243A6FF00(v30);
    KeyPath = swift_getKeyPath();
    v34 = *v3;
    v33 = v3[1];
    sub_243AC2138();
    sub_243AC17C8();
    *&v44[6] = v46;
    *&v44[22] = v47;
    *&v44[38] = v48;
    v35 = *&v44[16];
    *(v12 + 34) = *v44;
    v45 = 1;
    *v12 = v28;
    *(v12 + 1) = KeyPath;
    *(v12 + 2) = v31;
    *(v12 + 3) = 0;
    *(v12 + 16) = 1;
    *(v12 + 50) = v35;
    *(v12 + 66) = *&v44[32];
    *(v12 + 10) = *&v44[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993C0, &qword_243AC6780);
    v36 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
    v42 = v39;
    v43 = v36;
    swift_getOpaqueTypeConformance2();
    sub_243A5F004();
    return sub_243AC1AE8();
  }
}

uint64_t sub_243A5DE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99390, &qword_243AC6770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_243AC1208();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIUtils();
  sub_243A6FDB4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_243A2251C(v16, &qword_27ED98D68, &qword_243AC67E0);
    v22 = 1;
    v23 = v35;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    (*(v18 + 16))(v14, v21, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    v24 = swift_allocObject();
    v25 = *(v3 + 16);
    v24[1] = *v3;
    v24[2] = v25;
    v26 = *(v3 + 48);
    v24[3] = *(v3 + 32);
    v24[4] = v26;
    v27 = objc_opt_self();
    sub_243A5F65C(v3, v36);
    sub_243A5E6E4(v14, [v27 sharedURLCache], 0, sub_243A5F654, v24, v9);
    v28 = *v3;
    v29 = *(v3 + 8);
    sub_243AC2138();
    sub_243AC17C8();
    (*(v18 + 8))(v21, v17);
    v30 = &v9[*(v5 + 36)];
    v31 = v36[1];
    *v30 = v36[0];
    *(v30 + 1) = v31;
    *(v30 + 2) = v36[2];
    v32 = v35;
    sub_243A22814(v9, v35, &qword_27ED99390, &qword_243AC6770);
    v22 = 0;
    v23 = v32;
  }

  return (*(v6 + 56))(v23, v22, 1, v5);
}

uint64_t sub_243A5E238@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99420, &qword_243AC67F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99428, &qword_243AC67F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = sub_243AC2018();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    sub_243AC1778();
    (*(v6 + 16))(v13, v9, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F6B4();
    sub_243A491E8(&qword_27ED99450, &qword_27ED99420, &qword_243AC67F0);
    sub_243AC1AE8();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v26[1] = v5;
    (*(v15 + 104))(v18, *MEMORY[0x277CE0FE0], v14);
    v19 = sub_243AC2038();
    (*(v15 + 8))(v18, v14);
    v21 = *a2;
    v20 = a2[1];
    sub_243AC2138();
    sub_243AC18E8();
    *&v27[70] = v33;
    *&v27[54] = v32;
    *&v27[22] = v30;
    *&v27[6] = v29;
    *&v27[86] = v34;
    *&v27[102] = v35;
    *&v27[38] = v31;
    v22 = *&v27[80];
    *(v13 + 82) = *&v27[64];
    *(v13 + 98) = v22;
    *(v13 + 114) = *&v27[96];
    v23 = *&v27[16];
    *(v13 + 18) = *v27;
    *(v13 + 34) = v23;
    v24 = *&v27[48];
    *(v13 + 50) = *&v27[32];
    v28 = 1;
    *v13 = v19;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = *&v27[110];
    *(v13 + 66) = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F6B4();
    sub_243A491E8(&qword_27ED99450, &qword_27ED99420, &qword_243AC67F0);
    return sub_243AC1AE8();
  }
}

uint64_t sub_243A5E6E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v50 = a2;
  v8 = sub_243AC1058();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_243AC1208();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v42 - v28;
  v47 = a1;
  sub_243A224B4(a1, v14, &qword_27ED98D68, &qword_243AC67E0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_243A2251C(v14, &qword_27ED98D68, &qword_243AC67E0);
    v30 = 1;
  }

  else
  {
    (*(v16 + 32))(v22, v14, v15);
    (*(v16 + 16))(v20, v22, v15);
    sub_243AC1038();
    (*(v16 + 8))(v22, v15);
    v30 = 0;
  }

  v32 = v48;
  v31 = v49;
  (*(v48 + 56))(v29, v30, 1, v49);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993A0, &qword_243AC6778);
  v34 = *(v33 + 44);
  sub_243A22814(v29, a6 + v34, &qword_27ED99418, &qword_243AC67E8);
  v35 = [objc_opt_self() defaultSessionConfiguration];
  v36 = v50;
  [v35 setURLCache_];
  *(a6 + *(v33 + 48)) = [objc_opt_self() sessionWithConfiguration_];
  v37 = v44;
  *(a6 + 16) = v45;
  *(a6 + 24) = v46;
  *(a6 + 32) = v37;
  v51 = 0x8000000000000000;
  sub_243AC2058();
  v38 = v52;
  *a6 = v52;
  sub_243A224B4(a6 + v34, v27, &qword_27ED99418, &qword_243AC67E8);
  if ((*(v32 + 48))(v27, 1, v31) == 1)
  {
    sub_243A2251C(v47, &qword_27ED98D68, &qword_243AC67E0);

    return sub_243A2251C(v27, &qword_27ED99418, &qword_243AC67E8);
  }

  else
  {
    v40 = v43;
    (*(v32 + 32))(v43, v27, v31);
    v41 = sub_243A5EC70();
    if (v41)
    {
      v51 = v41;
      sub_243AC2058();

      sub_243A2251C(v47, &qword_27ED98D68, &qword_243AC67E0);
      (*(v32 + 8))(v40, v31);
      sub_243A5F694(v38);

      *a6 = v52;
    }

    else
    {

      sub_243A2251C(v47, &qword_27ED98D68, &qword_243AC67E0);
      return (*(v32 + 8))(v40, v31);
    }
  }

  return result;
}

uint64_t sub_243A5EC34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_243A5CB70(a1);
}

uint64_t sub_243A5EC70()
{
  v1 = [*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993A0 &qword_243AC6778) + 48))];
  v2 = [v1 URLCache];

  if (v2)
  {
    v3 = sub_243AC1018();
    v4 = [v2 cachedResponseForRequest_];

    if (v4)
    {
      v5 = [v4 data];
      v6 = sub_243AC1228();
      v8 = v7;

      v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v10 = sub_243AC1218();
      v11 = [v9 initWithData_];

      if (v11)
      {
        v12 = sub_243AC1FE8();

        sub_243A200C8(v6, v8);
        return v12;
      }

      sub_243A200C8(v6, v8);
    }
  }

  return 0;
}

uint64_t sub_243A5EDD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC1998();
  *a1 = result;
  return result;
}

uint64_t sub_243A5EDFC(uint64_t *a1)
{
  v1 = *a1;

  return sub_243AC19A8();
}

unint64_t sub_243A5EE28()
{
  result = qword_27ED99388;
  if (!qword_27ED99388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99390, &qword_243AC6770);
    sub_243A491E8(&qword_27ED99398, &qword_27ED993A0, &qword_243AC6778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99388);
  }

  return result;
}

uint64_t sub_243A5EF10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
    sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
    swift_getOpaqueTypeConformance2();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A5F004()
{
  result = qword_27ED993B8;
  if (!qword_27ED993B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993C0, &qword_243AC6780);
    sub_243A5F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993B8);
  }

  return result;
}

unint64_t sub_243A5F090()
{
  result = qword_27ED993C8;
  if (!qword_27ED993C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993D0, &qword_243AC6788);
    sub_243A5F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993C8);
  }

  return result;
}

unint64_t sub_243A5F11C()
{
  result = qword_27ED993D8;
  if (!qword_27ED993D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993E0, &unk_243AC6790);
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993D8);
  }

  return result;
}

unint64_t sub_243A5F1D4()
{
  result = qword_27ED993F8;
  if (!qword_27ED993F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99330, &qword_243AC6728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
    sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
    swift_getOpaqueTypeConformance2();
    sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993F8);
  }

  return result;
}

uint64_t sub_243A5F2FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC1998();
  *a1 = result;
  return result;
}

uint64_t sub_243A5F328(uint64_t *a1)
{
  v1 = *a1;

  return sub_243AC19A8();
}

id sub_243A5F354(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1B1A0]) init];
  v3 = [a1 foregroundSystemColorName];
  sub_243AC2858();

  v4 = sub_243A7051C();
  if (v4 == 24)
  {
    v4 = 17;
  }

  v5 = sub_243A70290(v4);
  v6 = [a1 backgroundSystemColorName];
  sub_243AC2858();

  v7 = sub_243A7051C();
  if (v7 == 24)
  {
    v7 = 17;
  }

  v8 = sub_243A70290(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_243AC51B0;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = sub_243A5F5C8();
  *(v9 + 56) = v11;
  *(v9 + 32) = v10;
  v12 = sub_243AC2978();

  [v2 setSymbolColors_];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_243AC51B0;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v13 + 56) = v11;
  *(v13 + 32) = v14;
  v15 = sub_243AC2978();

  [v2 setEnclosureColors_];

  v16 = [a1 path];
  if (!v16)
  {
    sub_243AC2858();
    v16 = sub_243AC2818();
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithSymbolName:v16 configuration:v2];

  return v17;
}

unint64_t sub_243A5F5C8()
{
  result = qword_27ED99410;
  if (!qword_27ED99410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99410);
  }

  return result;
}

uint64_t sub_243A5F614()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_243A5F694(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_243A5F6B4()
{
  result = qword_27ED99438;
  if (!qword_27ED99438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99438);
  }

  return result;
}

unint64_t sub_243A5F740()
{
  result = qword_27ED99440;
  if (!qword_27ED99440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99448, &qword_243AC6808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99440);
  }

  return result;
}

uint64_t sub_243A5F808(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A5F884()
{
  result = qword_27ED99468;
  if (!qword_27ED99468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99370, &qword_243AC6768);
    sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
    sub_243A5F1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99468);
  }

  return result;
}

uint64_t CompletedRecommendationsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_243AC1B48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99470, &qword_243AC6830);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = *(v1 + 24);
  v14[4] = *v1;
  v15 = *(v1 + 8);
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99478, &qword_243AC6838);
  sub_243A5FECC(&qword_27ED99480, &qword_27ED99478, &qword_243AC6838, sub_243A5FD48);
  sub_243AC1D08();
  sub_243AC1B38();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830);
  sub_243AC1F68();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_243A5FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99490, &qword_243AC6840);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0);
  sub_243A5FD48();
  sub_243A4FE7C(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel);
  return sub_243AC20F8();
}

unint64_t sub_243A5FD48()
{
  result = qword_27ED99488;
  if (!qword_27ED99488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99490, &qword_243AC6840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99498, &qword_243AC6848);
    sub_243A5FE08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99488);
  }

  return result;
}

unint64_t sub_243A5FE08()
{
  result = qword_27ED994A0;
  if (!qword_27ED994A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99498, &qword_243AC6848);
    sub_243A5FECC(&qword_27ED994A8, &qword_27ED994B0, &qword_243AC6850, sub_243A5FF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994A0);
  }

  return result;
}

uint64_t sub_243A5FECC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A5FF48()
{
  result = qword_27ED994B8;
  if (!qword_27ED994B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994C0, &qword_243AC6858);
    sub_243A5FFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994B8);
  }

  return result;
}

unint64_t sub_243A5FFD4()
{
  result = qword_27ED994C8;
  if (!qword_27ED994C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D0, &qword_243AC6860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D8, &qword_243AC6868);
    sub_243A600C8();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994C8);
  }

  return result;
}

unint64_t sub_243A600C8()
{
  result = qword_27ED994E0;
  if (!qword_27ED994E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D8, &qword_243AC6868);
    type metadata accessor for Card();
    sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card);
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994E0);
  }

  return result;
}

uint64_t sub_243A601FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v38 = a6;
  v8 = sub_243AC1728();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99498, &qword_243AC6848);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - v16;
  v18 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v39 >> 62)
  {
    v31 = sub_243AC2DF8();

    if (v31)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 1;
    v29 = v38;
    goto LABEL_6;
  }

  v19 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v34[1] = v34;
  MEMORY[0x28223BE20](v20);
  v34[-6] = v18;
  v34[-5] = a2;
  v21 = v36;
  v34[-4] = v35;
  v34[-3] = v21;
  v34[-2] = v37;
  v22 = [*(v18 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  v23 = sub_243AC2858();
  v25 = v24;

  v39 = v23;
  v40 = v25;
  sub_243A4FC18();
  v39 = sub_243AC1D88();
  v40 = v26;
  v41 = v27 & 1;
  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994B0, &qword_243AC6850);
  sub_243A5FECC(&qword_27ED994A8, &qword_27ED994B0, &qword_243AC6850, sub_243A5FF48);
  sub_243AC2108();
  (*(v9 + 104))(v12, *MEMORY[0x277CDF350], v8);
  sub_243A5FE08();
  v29 = v38;
  sub_243AC1EB8();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
  v30 = 0;
LABEL_6:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED994F0, &unk_243AC69C8);
  return (*(*(v32 - 8) + 56))(v29, v30, 1, v32);
}

uint64_t sub_243A605D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994C0, &qword_243AC6858);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0);
  sub_243A5FF48();
  sub_243A4FE7C(&qword_27ED991A8, sub_243A4FEC4);
  return sub_243AC20F8();
}

uint64_t sub_243A60780@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a3;
  v40 = a5;
  v42 = a2;
  v43 = a4;
  v44 = a6;
  v9 = type metadata accessor for Card();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D8, &qword_243AC6868);
  v13 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v38 - v14;
  v16 = *a1;
  v17 = [*a1 completed];
  v18 = [v16 completed] ^ 1;
  v19 = swift_allocObject();
  v19[2] = a2;
  v20 = v39;
  v19[3] = v39;
  v19[4] = a4;
  v21 = v40;
  v19[5] = v40;
  v19[6] = v16;
  v45 = v16;
  sub_243A4FEC4();
  v22 = v16;

  sub_243AC2058();
  v23 = v47;
  *v12 = v46;
  *(v12 + 1) = v23;
  v12[16] = v17;
  v12[17] = v18;
  *(v12 + 9) = 0;
  LOBYTE(v45) = 0;
  sub_243AC2058();
  v24 = v47;
  v12[24] = v46;
  *(v12 + 4) = v24;
  *(v12 + 5) = sub_243A6162C;
  *(v12 + 6) = v19;
  *(v12 + 7) = nullsub_1;
  *(v12 + 8) = 0;
  v25 = *(v9 + 48);
  *&v12[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card);
  sub_243AC1DF8();
  sub_243A61644(v12);
  v26 = sub_243AC2138();
  v28 = v27;
  v29 = &v15[*(v41 + 36)];
  sub_243A60CEC(v22, v29);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
  *v30 = v26;
  v30[1] = v28;
  sub_243AC1788();
  sub_243A600C8();
  v31 = v44;
  sub_243AC1EC8();
  sub_243A616A0(v15);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D0, &qword_243AC6860) + 36);
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = xmmword_243AC6820;
  *(v32 + 32) = 0;
  v33 = swift_allocObject();
  v34 = v43;
  *(v33 + 2) = v42;
  *(v33 + 3) = v20;
  *(v33 + 4) = v34;
  *(v33 + 5) = v21;
  *(v33 + 6) = v22;
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994C0, &qword_243AC6858) + 36));
  *v35 = sub_243A61750;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v22;
}

uint64_t sub_243A60B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_243AC51B0;
  v17 = [a7 identifier];
  v18 = sub_243AC2858();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_243AC2A98();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_243AC2A58();

  v22 = sub_243AC2A48();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v16;
  *(v23 + 40) = 1;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 48) = a4;
  *(v23 + 72) = 1537;
  sub_243A3306C(0, 0, v15, &unk_243AC5220, v23);

  return a5(a1, a2);
}

uint64_t sub_243A60CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v28 - v9;
  v31 = sub_243AC25A8();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v28 - v18;
  v20 = sub_243AC1F98();
  v28[1] = v20;
  v21 = [a1 title];
  sub_243AC2858();

  sub_243AC2598();
  v33 = v20;

  sub_243AC24C8();
  v22 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v22);
  sub_243A2E2B4(v22);
  sub_243AC24E8();
  v23 = sub_243AC24F8();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  v24 = MEMORY[0x277CE0F78];
  v25 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A61880(v10);
  (*(v11 + 8))(v14, v31);

  v33 = v24;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_243AC1DF8();
  return (*(v30 + 8))(v19, v26);
}

uint64_t sub_243A610B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = [a5 identifier];
  v12 = sub_243AC2858();
  v14 = v13;

  v15 = sub_243AC2A98();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = v12;
  *(v16 + 48) = v14;
  *(v16 + 56) = 1;

  sub_243A3306C(0, 0, v10, &unk_243AC87F0, v16);
}

uint64_t sub_243A61204@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_243AC1B48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99470, &qword_243AC6830);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = *(v1 + 24);
  v14[4] = *v1;
  v15 = *(v1 + 8);
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99478, &qword_243AC6838);
  sub_243A5FECC(&qword_27ED99480, &qword_27ED99478, &qword_243AC6838, sub_243A5FD48);
  sub_243AC1D08();
  sub_243AC1B38();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830);
  sub_243AC1F68();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243A61464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_243A614AC(uint64_t result, int a2, int a3)
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

uint64_t sub_243A614FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99470, &qword_243AC6830);
  sub_243AC1B48();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830);
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243A61644(uint64_t a1)
{
  v2 = type metadata accessor for Card();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A616A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D8, &qword_243AC6868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A61760()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A617A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A33068;

  return sub_243A40910(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_243A61880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A618E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A61938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v15 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 73);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_243A1FEA8;

  return sub_243A3FA60(a1, v4, v5, v6, v11, v15, v7, v8);
}

void sub_243A61B74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for RecommendationsViewController();
  v28.receiver = v0;
  v28.super_class = v6;
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v7 = [v0 parentViewController];
  v8 = [v7 presentationController];

  v9 = [v8 delegate];
  if (v9)
  {
    swift_unknownObjectRelease();
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243A1B000, v11, v12, "Unable to set presentation delegate -- Parent already has one!", v13, 2u);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v14 = [v1 parentViewController];
  if (v14)
  {
    v15 = v14;
    v11 = [v14 presentationController];

    if (v11)
    {
      [v11 setDelegate:v1];
LABEL_9:
    }
  }

  v16 = [objc_opt_self() defaultStore];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v19 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager];
    *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = v18;

    v20 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];
    if (v20)
    {
      v21 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account];
      if (v21)
      {
        v22 = sub_243AC2A98();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        sub_243AC2A58();
        swift_retain_n();
        v23 = v21;
        v24 = v1;
        v25 = sub_243AC2A48();
        v26 = swift_allocObject();
        v27 = MEMORY[0x277D85700];
        v26[2] = v25;
        v26[3] = v27;
        v26[4] = v24;
        v26[5] = v20;
        v26[6] = v23;
        sub_243A3306C(0, 0, v5, &unk_243AC6A98, v26);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_243A61F9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController;
  if (*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController))
  {

    sub_243A3BB28();

    v6 = *(v0 + v5);
    if (v6)
    {
      v7 = sub_243AC2A98();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;

      sub_243A3306C(0, 0, v4, &unk_243AC6A88, v8);
    }
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v9 = sub_243AC1468();
  __swift_project_value_buffer(v9, qword_27EDA14A8);
  v10 = sub_243AC1448();
  v11 = sub_243AC2B48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_243A1B000, v10, v11, "Recommended for You sheet is being dismissed.", v12, 2u);
    MEMORY[0x245D47D20](v12, -1, -1);
  }
}

uint64_t sub_243A62188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  if (qword_27EDA1470)
  {
    v11 = *(v7 + 16);
    v11(v10, a1, v6);
    v12 = *(v7 + 80);
    v26 = a1;
    v13 = v6;
    v14 = (v12 + 16) & ~v12;
    v27 = swift_allocObject();
    v15 = *(v7 + 32);
    v15(v27 + v14, v10, v13);
    v11(v10, v26, v13);
    v16 = swift_allocObject();
    v15(v16 + v14, v10, v13);
    v17 = sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);

    v18 = sub_243AC2BC8();
    v28[3] = v17;
    v28[4] = MEMORY[0x277D225C0];
    v28[0] = v18;
    sub_243AC2778();

    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v20 = sub_243AC1468();
    __swift_project_value_buffer(v20, qword_27EDA14D8);
    v21 = sub_243AC1448();
    v22 = sub_243AC2B58();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_243A1B000, v21, v22, "Unable to initialize metrics pipeline. Loading recommendations without it.", v23, 2u);
      MEMORY[0x245D47D20](v23, -1, -1);
    }

    v24 = sub_243AC2438();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    return sub_243AC2A38();
  }
}

uint64_t sub_243A624FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v6 = sub_243AC1468();
  __swift_project_value_buffer(v6, qword_27EDA14D8);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243A1B000, v7, v8, "Loaded metrics pipeline, proceeding to load recommendations UI.", v9, 2u);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  v10 = sub_243AC2438();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  return sub_243AC2A38();
}

uint64_t sub_243A626E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v6 = sub_243AC1468();
  __swift_project_value_buffer(v6, qword_27EDA14D8);
  v7 = a1;
  v8 = sub_243AC1448();
  v9 = sub_243AC2B58();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243A1B000, v8, v9, "Unable to initialize metrics pipeline. Loading recommendations without it. %@", v10, 0xCu);
    sub_243A2251C(v11, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v11, -1, -1);
    MEMORY[0x245D47D20](v10, -1, -1);
  }

  v14 = sub_243AC2438();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  return sub_243AC2A38();
}