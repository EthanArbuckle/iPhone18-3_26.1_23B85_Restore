unint64_t sub_2519E41E4()
{
  result = qword_27F46D9D0;
  if (!qword_27F46D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9D0);
  }

  return result;
}

unint64_t sub_2519E4238()
{
  result = qword_27F46D9D8;
  if (!qword_27F46D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9D8);
  }

  return result;
}

unint64_t sub_2519E428C()
{
  result = qword_27F46D9E0;
  if (!qword_27F46D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9E0);
  }

  return result;
}

unint64_t sub_2519E42E4()
{
  result = qword_27F46D9E8;
  if (!qword_27F46D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9E8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2519E434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2519E4394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2519E4424()
{
  result = qword_27F46D9F0;
  if (!qword_27F46D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9F0);
  }

  return result;
}

unint64_t sub_2519E447C()
{
  result = qword_27F46D9F8;
  if (!qword_27F46D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9F8);
  }

  return result;
}

unint64_t sub_2519E44D4()
{
  result = qword_27F46DA00;
  if (!qword_27F46DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA00);
  }

  return result;
}

unint64_t sub_2519E452C()
{
  result = qword_27F46DA08;
  if (!qword_27F46DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA08);
  }

  return result;
}

unint64_t sub_2519E4584()
{
  result = qword_27F46DA10;
  if (!qword_27F46DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA10);
  }

  return result;
}

unint64_t sub_2519E45DC()
{
  result = qword_27F46DA18;
  if (!qword_27F46DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA18);
  }

  return result;
}

uint64_t MockOntologyStore.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2519E484C();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockOntologyStore.init()()
{
  sub_2519E484C();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

void sub_2519E484C()
{
  if (!qword_27F46DA20)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_2519F0CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46DA20);
    }
  }
}

void MockOntologyStore.setHandler<A>(_:handler:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_2519E49CC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_2519E4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10[3] = type metadata accessor for MockOntologyStore.ConcreteResultHandler();
    v10[0] = a4;
    v10[1] = a2;
    v10[4] = swift_getWitnessTable();
    v10[2] = a3;

    return sub_2519ED1B0(v10, a5);
  }

  else
  {
    sub_2519E49F0(a5, v10);
    return sub_2519E5048(v10);
  }
}

double sub_2519E49F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2519EA82C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2519EB984();
      v11 = v13;
    }

    sub_2519C1710((*(v11 + 56) + 40 * v8), a2);
    sub_2519EF6DC(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t MockOntologyStore.fetchResponse<A>(for:handler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *), uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_2519D9DD8(255, &qword_27F46D4A0);
  v8 = sub_2519F1118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - v12;
  sub_2519E4BE4(a1, a4, (&v15 - v12));
  a2(v4, a1, v13);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_2519E4BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock((v7 + 24));
  sub_2519E4D88((v7 + 16), a2, &v10);
  os_unfair_lock_unlock((v7 + 24));
  if (v11)
  {
    sub_2519C1710(&v10, v12);
    sub_2519D986C(v12, &v10);
    sub_2519D9DD8(0, &qword_27F46DA38);
    type metadata accessor for MockOntologyStore.ConcreteResultHandler();
    swift_dynamicCast();

    v9(v3, a1);

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2519E5048(&v10);
    sub_2519E510C();
    *a3 = swift_allocError();
    swift_getAssociatedTypeWitness();
    sub_2519D9DD8(255, &qword_27F46D4A0);
    sub_2519F1118();
    return swift_storeEnumTagMultiPayload();
  }
}

double sub_2519E4D88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_2519EA82C(a2);
    if (v6)
    {
      sub_2519D986C(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t MockOntologyStore.Error.hashValue.getter()
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t MockOntologyStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockOntologyStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2519E4ED4()
{
  result = qword_27F46DA28;
  if (!qword_27F46DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA28);
  }

  return result;
}

uint64_t sub_2519E4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v12 = *v5;

  MockOntologyStore.fetchResponse<A>(for:handler:)(a1, sub_2519CEB90, v11, a4);
}

uint64_t sub_2519E5048(uint64_t a1)
{
  sub_2519E50A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519E50A4()
{
  if (!qword_27F46DA30)
  {
    sub_2519D9DD8(255, &qword_27F46DA38);
    v0 = sub_2519F0C08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46DA30);
    }
  }
}

unint64_t sub_2519E510C()
{
  result = qword_27F46DA40[0];
  if (!qword_27F46DA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46DA40);
  }

  return result;
}

uint64_t sub_2519E5178()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

HealthOntologyKit::OntologyConceptIdentifier __swiftcall OntologyConceptIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

BOOL static OntologyElementIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  return v7 == v6(a3, a4);
}

uint64_t OntologyConceptIdentifier.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t OntologyConceptIdentifier.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_2519F0CA8();

  v4 = sub_2519F0F18();
  MEMORY[0x253089BD0](v4);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v3);
  return 0x49747065636E6F63;
}

uint64_t sub_2519E5428(uint64_t a1)
{
  v2 = sub_2519E561C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E5464(uint64_t a1)
{
  v2 = sub_2519E561C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyConceptIdentifier.encode(to:)(void *a1)
{
  sub_2519E58A4(0, &qword_27F46DAC8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = v15 - v9;
  v12 = *v1;
  v11 = v1[1];
  v15[0] = v1[2];
  v15[1] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E561C();
  sub_2519F1158();
  v17 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v16 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2519E561C()
{
  result = qword_27F46DAD0;
  if (!qword_27F46DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAD0);
  }

  return result;
}

uint64_t OntologyConceptIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyConceptIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519E58A4(0, &qword_27F46DAD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E561C();
  sub_2519F1148();
  if (!v2)
  {
    v20 = 0;
    v13 = sub_2519F0E58();
    v19 = 1;
    v15 = sub_2519F0E48();
    v17 = v16;
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2519E58A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519E561C();
    v7 = a3(a1, &type metadata for OntologyConceptIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519E5908(void *a1)
{
  a1[1] = sub_2519E5950();
  a1[2] = sub_2519C95DC();
  a1[3] = sub_2519C9118();
  a1[4] = sub_2519E59A4();
  result = sub_2519E59F8();
  a1[5] = result;
  return result;
}

unint64_t sub_2519E5950()
{
  result = qword_27F46DAE0;
  if (!qword_27F46DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAE0);
  }

  return result;
}

unint64_t sub_2519E59A4()
{
  result = qword_27F46DAE8;
  if (!qword_27F46DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAE8);
  }

  return result;
}

unint64_t sub_2519E59F8()
{
  result = qword_27F46DAF0;
  if (!qword_27F46DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAF0);
  }

  return result;
}

unint64_t sub_2519E5A50()
{
  result = qword_27F46DAF8;
  if (!qword_27F46DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAF8);
  }

  return result;
}

unint64_t sub_2519E5B04()
{
  result = qword_27F46DB00;
  if (!qword_27F46DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DB00);
  }

  return result;
}

unint64_t sub_2519E5B5C()
{
  result = qword_27F46DB08;
  if (!qword_27F46DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DB08);
  }

  return result;
}

unint64_t sub_2519E5BB4()
{
  result = qword_27F46DB10[0];
  if (!qword_27F46DB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46DB10);
  }

  return result;
}

uint64_t MockRequestEvaluator.ontologyRequestIdentifier.getter()
{
  v0 = sub_2519CA568();

  return v0;
}

uint64_t MockRequestEvaluator.evaluationHandler.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2519E5FC0(v1);
  return v1;
}

uint64_t MockRequestEvaluator.init(identifier:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t MockRequestEvaluator.evaluate(_:completion:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v32[1] = a3;
  v33 = a2;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v8 = sub_2519F1118();
  v9 = sub_2519F0C08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v32 - v14;
  v16 = *(v8 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v13, v18);
  v21 = (v32 - v20);
  v22 = *(v4 + 16);
  if (v22)
  {
    v23 = *(v4 + 24);
    v22(a1);
    (*(v16 + 56))(v15, 0, 1, v8);
    (*(v16 + 32))(v21, v15, v8);
  }

  else
  {
    v24 = v19;
    v25 = (*(v16 + 56))(v15, 1, 1, v8);
    v35 = 0;
    v36 = 0xE000000000000000;
    MEMORY[0x28223BE20](v25, v26);
    v32[-2] = v6;
    v32[-1] = v7;
    KeyPath = swift_getKeyPath();
    swift_getFunctionTypeMetadata1();
    sub_2519F0C08();
    sub_2519F1168();
    sub_2519F0F38();

    v27 = v35;
    v28 = v36;
    sub_2519CED28();
    v29 = swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v28;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *v21 = v29;
    swift_storeEnumTagMultiPayload();
    if ((*(v16 + 48))(v15, 1, v8) != 1)
    {
      (*(v10 + 8))(v15, v24);
    }
  }

  v33(v21);
  return (*(v16 + 8))(v21, v8);
}

uint64_t sub_2519E5FC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2519E5FD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xs6ResultOyq_s5Error_pGRi_zRi0_zRi__Ri0__r0_lyx8Response17HealthOntologyKit0E7RequestPQzIseghnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2519E6024(uint64_t a1, int a2)
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

uint64_t sub_2519E606C(uint64_t result, int a2, int a3)
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

uint64_t RequestEvaluator.evaluate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2519E60EC, 0, 0);
}

uint64_t sub_2519E60EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_2519E6268;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0x657461756C617665, 0xEC000000293A5F28, sub_2519E65F8, v3, AssociatedTypeWitness);
}

uint64_t sub_2519E6268()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2519E63A4, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2519E63A4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2519E6408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v9 = sub_2519F0B78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v10 + 32))(v16 + v15, v14, v9);
  (*(a5 + 32))(a3, sub_2519E66FC, v16, a4, a5);
}

uint64_t sub_2519E662C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v2 = sub_2519F0B78();
  return sub_2519EFF70(a1, v2);
}

uint64_t sub_2519E66FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v5 = *(*(sub_2519F0B78() - 8) + 80);

  return sub_2519E662C(a1);
}

uint64_t sub_2519E681C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 15649;
  }

  else
  {
    v2 = 15677;
  }

  if (*a2)
  {
    v3 = 15649;
  }

  else
  {
    v3 = 15677;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2519F0F68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2519E688C()
{
  v1 = *v0;
  sub_2519F1098();
  sub_2519F09F8();

  return sub_2519F10D8();
}

uint64_t sub_2519E68EC()
{
  *v0;
  sub_2519F09F8();
}

uint64_t sub_2519E6930()
{
  v1 = *v0;
  sub_2519F1098();
  sub_2519F09F8();

  return sub_2519F10D8();
}

uint64_t sub_2519E698C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2519F0DF8();

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

void sub_2519E69EC(uint64_t *a1@<X8>)
{
  v2 = 15677;
  if (*v1)
  {
    v2 = 15649;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_2519E6AC0()
{
  v1 = 0x646E617265706FLL;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_2519E6B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2519E77C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2519E6B30(uint64_t a1)
{
  v2 = sub_2519E73DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E6B6C(uint64_t a1)
{
  v2 = sub_2519E73DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterExpression.encode(to:)(void *a1)
{
  sub_2519E7484(0, &qword_27F46DB98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v17 = *(v1 + 16);
  v12 = v1[3];
  v16[1] = v1[4];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E73DC();
  sub_2519F1158();
  v21 = 0;
  v14 = v16[3];
  sub_2519F0ED8();
  if (!v14)
  {
    v20 = v17;
    v19 = 1;
    sub_2519E7430();
    sub_2519F0EF8();
    v18 = 2;
    sub_2519F0EB8();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t FilterExpression.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2519F09F8();
  sub_2519F09F8();

  if (!v5)
  {
    return sub_2519F10B8();
  }

  sub_2519F10B8();

  return sub_2519F09F8();
}

uint64_t FilterExpression.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2519F1098();
  sub_2519F09F8();
  sub_2519F09F8();

  sub_2519F10B8();
  if (v5)
  {
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t FilterExpression.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2519E7484(0, &qword_27F46DBB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E73DC();
  sub_2519F1148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v13 = sub_2519F0E48();
  v15 = v14;
  v16 = v13;
  v27 = 1;
  sub_2519E74E8();
  sub_2519F0E68();
  v25 = v28;
  v26 = 2;
  v17 = sub_2519F0E28();
  v20 = v19;
  v21 = *(v7 + 8);
  v24 = v17;
  v21(v11, v6);
  v22 = v25;
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24;
  *(a2 + 32) = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519E7178()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2519F09F8();
  sub_2519F09F8();

  if (!v5)
  {
    return sub_2519F10B8();
  }

  sub_2519F10B8();

  return sub_2519F09F8();
}

uint64_t sub_2519E7228()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2519F1098();
  sub_2519F09F8();
  sub_2519F09F8();

  sub_2519F10B8();
  if (v5)
  {
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t _s17HealthOntologyKit16FilterExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_2519F0F68() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    v9 = 15649;
  }

  else
  {
    v9 = 15677;
  }

  if (v5)
  {
    v10 = 15649;
  }

  else
  {
    v10 = 15677;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = sub_2519F0F68();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v6 && (v3 == v7 && v4 == v6 || (sub_2519F0F68() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2519E73DC()
{
  result = qword_27F46DBA0;
  if (!qword_27F46DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBA0);
  }

  return result;
}

unint64_t sub_2519E7430()
{
  result = qword_27F46DBA8;
  if (!qword_27F46DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBA8);
  }

  return result;
}

void sub_2519E7484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519E73DC();
    v7 = a3(a1, &type metadata for FilterExpression.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519E74E8()
{
  result = qword_27F46DBB8;
  if (!qword_27F46DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBB8);
  }

  return result;
}

unint64_t sub_2519E7540()
{
  result = qword_27F46DBC0;
  if (!qword_27F46DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBC0);
  }

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

uint64_t sub_2519E75A8(uint64_t a1, int a2)
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

uint64_t sub_2519E75F0(uint64_t result, int a2, int a3)
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

unint64_t sub_2519E766C()
{
  result = qword_27F46DBC8;
  if (!qword_27F46DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBC8);
  }

  return result;
}

unint64_t sub_2519E76C4()
{
  result = qword_27F46DBD0;
  if (!qword_27F46DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBD0);
  }

  return result;
}

unint64_t sub_2519E771C()
{
  result = qword_27F46DBD8;
  if (!qword_27F46DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBD8);
  }

  return result;
}

unint64_t sub_2519E7774()
{
  result = qword_27F46DBE0;
  if (!qword_27F46DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBE0);
  }

  return result;
}

uint64_t sub_2519E77C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E617265706FLL && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

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

unint64_t sub_2519E78DC()
{
  result = qword_27F46DBE8;
  if (!qword_27F46DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DBE8);
  }

  return result;
}

double static OntologyAttributeIdentifier.none.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2519F35A0;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

double static OntologyAttributeIdentifier.priority.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 353;
  *a1 = xmmword_2519F5F30;
  *(a1 + 16) = 0xE800000000000000;
  return result;
}

double static OntologyAttributeIdentifier.locale.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 802;
  *a1 = xmmword_2519F5F40;
  *(a1 + 16) = 0xE600000000000000;
  return result;
}

double static OntologyAttributeIdentifier.attribution.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 803;
  *a1 = xmmword_2519F5F50;
  *(a1 + 16) = 0xEB000000006E6F69;
  return result;
}

double static OntologyAttributeIdentifier.hasDescription.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 957;
  *a1 = xmmword_2519F5F60;
  *(a1 + 16) = 0xEF6E6F6974706972;
  return result;
}

double static OntologyAttributeIdentifier.hasPreferredNameEnUS.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 960;
  *a1 = xmmword_2519F5F70;
  *(a1 + 16) = 0x80000002519F6F90;
  return result;
}

double static OntologyAttributeIdentifier.loincCode.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1009;
  *a1 = xmmword_2519F5F80;
  *(a1 + 16) = 0xEA00000000006564;
  return result;
}

double static OntologyAttributeIdentifier.hasPreferredName.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1012;
  *a1 = xmmword_2519F5F90;
  *(a1 + 16) = 0x80000002519F6FB0;
  return result;
}

double static OntologyAttributeIdentifier.appleIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 999;
  *a1 = xmmword_2519F5FA0;
  *(a1 + 16) = 0x80000002519F6FD0;
  return result;
}

void OntologyAttributeIdentifier.init(attributeType:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 54193)
  {
    switch(a1)
    {
      case 353:
      case 405:
      case 406:
      case 407:
      case 500:
      case 620:
      case 665:
      case 666:
      case 667:
      case 668:
      case 795:
      case 796:
      case 800:
      case 801:
      case 802:
      case 803:
      case 804:
      case 805:
      case 808:
      case 846:
      case 900:
      case 901:
      case 902:
      case 903:
      case 904:
      case 905:
      case 906:
      case 907:
      case 908:
      case 909:
      case 910:
      case 911:
      case 912:
      case 913:
      case 914:
      case 915:
      case 916:
      case 917:
      case 918:
      case 919:
      case 920:
      case 921:
      case 922:
      case 923:
      case 924:
      case 925:
      case 926:
      case 927:
      case 928:
      case 931:
      case 932:
      case 933:
      case 934:
      case 935:
      case 936:
      case 937:
      case 938:
      case 939:
      case 940:
      case 941:
      case 942:
      case 943:
      case 944:
      case 945:
      case 950:
      case 954:
      case 957:
      case 959:
      case 960:
      case 961:
      case 962:
      case 984:
      case 986:
      case 987:
      case 989:
      case 990:
      case 991:
      case 992:
      case 999:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
        goto LABEL_3;
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 401:
      case 402:
      case 403:
      case 404:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 604:
      case 605:
      case 606:
      case 607:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 614:
      case 615:
      case 616:
      case 617:
      case 618:
      case 619:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
      case 701:
      case 702:
      case 703:
      case 704:
      case 705:
      case 706:
      case 707:
      case 708:
      case 709:
      case 710:
      case 711:
      case 712:
      case 713:
      case 714:
      case 715:
      case 716:
      case 717:
      case 718:
      case 719:
      case 720:
      case 721:
      case 722:
      case 723:
      case 724:
      case 725:
      case 726:
      case 727:
      case 728:
      case 729:
      case 730:
      case 731:
      case 732:
      case 733:
      case 734:
      case 735:
      case 736:
      case 737:
      case 738:
      case 739:
      case 740:
      case 741:
      case 742:
      case 743:
      case 744:
      case 745:
      case 746:
      case 747:
      case 748:
      case 749:
      case 750:
      case 751:
      case 752:
      case 753:
      case 754:
      case 755:
      case 756:
      case 757:
      case 758:
      case 759:
      case 760:
      case 761:
      case 762:
      case 763:
      case 764:
      case 765:
      case 766:
      case 767:
      case 768:
      case 769:
      case 770:
      case 771:
      case 772:
      case 773:
      case 774:
      case 775:
      case 776:
      case 777:
      case 778:
      case 779:
      case 780:
      case 781:
      case 782:
      case 783:
      case 784:
      case 785:
      case 786:
      case 787:
      case 788:
      case 789:
      case 790:
      case 791:
      case 792:
      case 793:
      case 794:
      case 797:
      case 798:
      case 799:
      case 806:
      case 807:
      case 809:
      case 810:
      case 811:
      case 812:
      case 813:
      case 814:
      case 815:
      case 816:
      case 817:
      case 818:
      case 819:
      case 820:
      case 821:
      case 822:
      case 823:
      case 824:
      case 825:
      case 826:
      case 827:
      case 828:
      case 829:
      case 830:
      case 831:
      case 832:
      case 833:
      case 834:
      case 835:
      case 836:
      case 837:
      case 838:
      case 839:
      case 840:
      case 841:
      case 842:
      case 843:
      case 844:
      case 845:
      case 847:
      case 848:
      case 849:
      case 850:
      case 851:
      case 852:
      case 853:
      case 854:
      case 855:
      case 856:
      case 857:
      case 858:
      case 859:
      case 860:
      case 861:
      case 862:
      case 863:
      case 864:
      case 865:
      case 866:
      case 867:
      case 868:
      case 869:
      case 870:
      case 871:
      case 872:
      case 873:
      case 874:
      case 875:
      case 876:
      case 877:
      case 878:
      case 879:
      case 880:
      case 881:
      case 882:
      case 883:
      case 884:
      case 885:
      case 886:
      case 887:
      case 888:
      case 889:
      case 890:
      case 891:
      case 892:
      case 893:
      case 894:
      case 895:
      case 896:
      case 897:
      case 898:
      case 899:
      case 929:
      case 930:
      case 946:
      case 947:
      case 948:
      case 949:
      case 951:
      case 952:
      case 953:
      case 955:
      case 956:
      case 958:
      case 963:
      case 964:
      case 965:
      case 966:
      case 967:
      case 968:
      case 969:
      case 970:
      case 971:
      case 972:
      case 973:
      case 974:
      case 975:
      case 976:
      case 977:
      case 978:
      case 979:
      case 980:
      case 981:
      case 982:
      case 983:
      case 985:
      case 988:
      case 993:
      case 994:
      case 995:
      case 996:
      case 997:
      case 998:
      case 1000:
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1010:
        goto LABEL_13;
      default:
        if (a1 > 3 || a1 == 1)
        {
          goto LABEL_13;
        }

        goto LABEL_3;
    }
  }

  if (a1 <= 61812)
  {
    if (a1 != 54194)
    {
      v5 = 56926;
      goto LABEL_12;
    }

LABEL_3:
    v4 = sub_2519F0F18();
    MEMORY[0x253089BD0](v4);

    MEMORY[0x253089BD0](41, 0xE100000000000000);
    *a2 = a1;
    a2[1] = 0x2820656E6F6ELL;
    a2[2] = 0xE600000000000000;
    return;
  }

  if (a1 == 61813)
  {
    goto LABEL_3;
  }

  v5 = 61839;
LABEL_12:
  if (a1 == v5)
  {
    goto LABEL_3;
  }

LABEL_13:
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v6 = sub_2519F0918();
  __swift_project_value_buffer(v6, qword_27F46DE10);
  v7 = sub_2519F08F8();
  v8 = sub_2519F0BD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_2519BF000, v7, v8, "OntologyAttributeIdentifier: attempted to create with unknown attribute type %lld", v9, 0xCu);
    MEMORY[0x25308A910](v9, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

double sub_2519E7C3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OntologyAttributeIdentifier.init(attributeType:)(a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t HgQLAggregate.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HgQLAggregate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v160 = a4;
  v158 = *(a2 - 8);
  v7 = *(v158 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v163 = v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v164 = v146 - v11;
  v179 = sub_2519F0D58();
  v162 = *(v179 - 8);
  v12 = *(v162 + 64);
  MEMORY[0x28223BE20](v179, v13);
  v168 = v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = a3;
  v184 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v169 = *(AssociatedTypeWitness - 8);
  v16 = *(v169 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, AssociatedTypeWitness);
  v177 = v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v174 = v146 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v176 = v146 - v23;
  v181 = v24;
  v159 = sub_2519F0C08();
  v157 = *(v159 - 8);
  v25 = *(v157 + 64);
  v27 = MEMORY[0x28223BE20](v159, v26);
  v166 = v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v175 = (v146 - v30);
  type metadata accessor for HgQLAggregate.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_2519F0E88();
  v180 = sub_2519F0C08();
  v32 = *(v180 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v180, v34);
  v37 = v146 - v36;
  v38 = *(v31 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35, v40);
  v42 = v146 - v41;
  v43 = a1;
  v44 = a1[3];
  v45 = v43[4];
  v178 = v43;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v46 = v182;
  sub_2519F1148();
  v47 = v183;
  if (!v46)
  {
    (*(v38 + 56))(v37, 0, 1, v31);
    (*(v38 + 32))(v42, v37, v31);
    sub_2519F0B18();
    v185 = *(v47 + 8);
    swift_getWitnessTable();
    sub_2519F0E68();
    (*(v38 + 8))(v42, v31);
    v73 = 0;
    v74 = 0;
    v75 = v191;
    v76 = v178;
LABEL_61:
    *v160 = v75;
    __swift_destroy_boxed_opaque_existential_1(v76);
    v72 = v73;
    goto LABEL_62;
  }

  (*(v38 + 56))(v37, 1, 1, v31);
  (*(v32 + 8))(v37, v180);
  v48 = 0;
  v49 = v178;
  v50 = v178[4];
  __swift_project_boxed_opaque_existential_1(v178, v178[3]);
  v51 = sub_2519F1138();
  v52 = v181;
  if (qword_27F46CD80 != -1)
  {
    goto LABEL_69;
  }

LABEL_5:
  v53 = __swift_project_value_buffer(v179, qword_27F46D5D0);
  v54 = v184;
  if (v51[2])
  {
    v55 = v53;
    v56 = sub_2519EA784(v53);
    if (v57)
    {
      sub_2519CEBFC(v51[7] + 32 * v56, &v191);

      v58 = v183;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v59 = *(AssociatedConformanceWitness + 24);
      v60 = sub_2519F0BB8();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v147 = v55;
      v61 = v188;
      v150 = (*(v58 + 56))(v54, v58);
      v154 = v62;
      v63 = MEMORY[0x277D84030];
      swift_getTupleTypeMetadata2();
      v64 = sub_2519F0AC8();
      v182 = sub_2519EBC94(v64, v63, v60, MEMORY[0x277D84038]);

      v65 = v61;
      v180 = v60;
      v155 = v48;
      if ((v61 & 0xC000000000000001) != 0)
      {
        sub_2519F0C38();
        sub_2519F0BA8();
        v65 = v194;
        v66 = v195;
        v67 = v196;
        v68 = v197;
        v69 = v198;
      }

      else
      {
        v68 = 0;
        v77 = -1 << *(v61 + 32);
        v66 = v61 + 56;
        v67 = ~v77;
        v78 = -v77;
        if (v78 < 64)
        {
          v79 = ~(-1 << v78);
        }

        else
        {
          v79 = -1;
        }

        v69 = (v79 & *(v61 + 56));
      }

      v49 = AssociatedConformanceWitness;
      v51 = v176;
      v80 = v175;
      v171 = 0;
      v170 = 0;
      v173 = 0;
      v172 = 0;
      v153 = (v169 + 56);
      v146[1] = v67;
      v48 = (v67 + 64) >> 6;
      v161 = (v169 + 16);
      v156 = (v169 + 32);
      v149 = AssociatedConformanceWitness + 32;
      v148 = (v169 + 8);
      v152 = v65;
      for (i = v66; ; v66 = i)
      {
        if (v65 < 0)
        {
          if (!sub_2519F0C48())
          {
            goto LABEL_37;
          }

          sub_2519F0F48();
          v80 = v175;
          swift_unknownObjectRelease();
          v85 = v68;
          v165 = v69;
          v51 = v176;
          v86 = v184;
        }

        else
        {
          if (!v69)
          {
            v87 = v68;
            v86 = v184;
            while (1)
            {
              v85 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                __break(1u);
                goto LABEL_68;
              }

              if (v85 >= v48)
              {
                break;
              }

              v84 = *(v66 + 8 * v85);
              ++v87;
              if (v84)
              {
                goto LABEL_28;
              }
            }

LABEL_37:

            v51 = v169;
            (*(v169 + 56))(v80, 1, 1, v52);
            sub_2519EBF80();
            v100 = sub_2519F0AC8();
            v101 = v182;
            v103 = (v182 + 64);
            v102 = *(v182 + 64);
            v104 = 1 << *(v182 + 32);
            v105 = -1;
            v199 = v100;
            if (v104 < 64)
            {
              v105 = ~(-1 << v104);
            }

            v48 = v105 & v102;
            v106 = (v104 + 63) >> 6;
            v176 = (v51 + 6);
            v157 += 8;
            v177 = (v162 + 16);
            v175 = (v162 + 8);
            v165 = (v158 + 16);
            v161 = (v158 + 8);

            v107 = 0;
            v108 = v168;
            v174 = v103;
            v169 = v106;
            while (2)
            {
              v109 = v166;
              if (v48)
              {
                v52 = v107;
LABEL_45:
                v110 = *(*(v101 + 56) + ((v52 << 9) | (8 * __clz(__rbit64(v48)))));
                *&v191 = v110;

                swift_getWitnessTable();
                sub_2519F0BC8();
                v111 = v181;
                if ((*v176)(v109, 1, v181) == 1)
                {
                  (*v157)(v109, v159);
                  *(&v192 + 1) = &type metadata for PlaceholderRow;
                  WitnessTable = sub_2519DA2F4();
                }

                else
                {
                  *(&v189 + 1) = v111;
                  v190 = v49;
                  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v188);
                  (*v156)(boxed_opaque_existential_0, v109, v111);
                  sub_2519C1710(&v188, &v191);
                }

                v113 = type metadata accessor for HgQLDecoderCore();
                v114 = v178[4];
                __swift_project_boxed_opaque_existential_1(v178, v178[3]);
                v115 = sub_2519F1128();
                v116 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v191, 0, 0, v115);
                v117 = *v177;
                (*v177)(v108, v147, v179);
                *(&v192 + 1) = v180;
                *&v191 = v110;
                swift_beginAccess();
                sub_2519CC0D8(&v191, &v188);
                v118 = v116[10];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v186 = v116[10];
                v120 = v186;
                v116[10] = 0x8000000000000000;
                v121 = sub_2519EA784(v108);
                v123 = v120[2];
                v124 = (v122 & 1) == 0;
                v125 = __OFADD__(v123, v124);
                v126 = v123 + v124;
                if (v125)
                {
                  goto LABEL_71;
                }

                v127 = v122;
                if (v120[3] >= v126)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_53;
                  }

                  v131 = v121;
                  sub_2519EB710();
                  v121 = v131;
                  v129 = v186;
                  if ((v127 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

LABEL_54:
                  v130 = (v129[7] + 32 * v121);
                  __swift_destroy_boxed_opaque_existential_1(v130);
                  sub_2519CC0D8(&v188, v130);
                  (*v175)(v108, v179);
                }

                else
                {
                  sub_2519EAE50(v126, isUniquelyReferenced_nonNull_native);
                  v121 = sub_2519EA784(v108);
                  if ((v127 & 1) != (v128 & 1))
                  {
                    goto LABEL_74;
                  }

LABEL_53:
                  v129 = v186;
                  if (v127)
                  {
                    goto LABEL_54;
                  }

LABEL_56:
                  v129[(v121 >> 6) + 8] |= 1 << v121;
                  v132 = v162;
                  v133 = v121;
                  v134 = v179;
                  v117(v129[6] + *(v162 + 72) * v121, v168, v179);
                  sub_2519CC0D8(&v188, (v129[7] + 32 * v133));
                  v135 = *(v132 + 8);
                  v108 = v168;
                  v135(v168, v134);
                  v136 = v129[2];
                  v125 = __OFADD__(v136, 1);
                  v137 = v136 + 1;
                  if (v125)
                  {
                    goto LABEL_72;
                  }

                  v129[2] = v137;
                }

                v138 = v184;
                v139 = v164;
                v140 = v116[10];
                v116[10] = v129;

                swift_endAccess();
                *(&v192 + 1) = v113;
                WitnessTable = swift_getWitnessTable();
                *&v191 = v116;

                v141 = *(v183 + 8);
                v142 = v155;
                sub_2519F0B88();
                v155 = v142;
                if (v142)
                {

                  v49 = v178;
                  goto LABEL_65;
                }

                v48 &= v48 - 1;
                (*v165)(v163, v139, v138);
                sub_2519F0B18();
                v51 = &v199;
                sub_2519F0AF8();

                (*v161)(v139, v138);
                v107 = v52;
                v49 = AssociatedConformanceWitness;
                v101 = v182;
                v103 = v174;
                v106 = v169;
                continue;
              }

              break;
            }

            while (1)
            {
              v52 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                break;
              }

              if (v52 >= v106)
              {

                v75 = v199;
                v76 = v178;
                v74 = v173;
                v73 = v171;
                goto LABEL_61;
              }

              v48 = *&v103[8 * v52];
              ++v107;
              if (v48)
              {
                goto LABEL_45;
              }
            }

LABEL_68:
            __break(1u);
LABEL_69:
            swift_once();
            goto LABEL_5;
          }

          v84 = v69;
          v85 = v68;
          v86 = v184;
LABEL_28:
          v165 = ((v84 - 1) & v84);
          (*(v169 + 16))(v80, *(v65 + 48) + *(v169 + 72) * (__clz(__rbit64(v84)) | (v85 << 6)), v52);
        }

        (*v153)(v80, 0, 1, v52);
        (*v156)(v51, v80, v52);
        (v49[4])(&v188, v150, v154, v52, v49);
        if (!*(&v189 + 1))
        {
          sub_2519CC228(&v188);
          sub_2519DA534();
          swift_allocError();
          v144 = v154;
          *v145 = v150;
          *(v145 + 8) = v144;
          *(v145 + 16) = 0;
          swift_willThrow();
          sub_2519EBF80();
          (*v148)(v51, v52);

          v49 = v178;
LABEL_65:
          v74 = v173;
          v71 = v171;
          goto LABEL_12;
        }

        v191 = v188;
        v192 = v189;
        WitnessTable = v190;
        v88 = swift_allocObject();
        v89 = v183;
        *(v88 + 16) = v86;
        *(v88 + 24) = v89;
        sub_2519C14E0(v171);
        (*v161)(v177, v51, v52);
        v90 = swift_allocObject();
        v90[2] = v86;
        v90[3] = v89;
        v90[4] = sub_2519EBF88;
        v90[5] = v88;
        sub_2519C14E0(v173);
        v91 = v182;
        swift_isUniquelyReferenced_nonNull_native();
        *&v188 = v91;
        v92 = sub_2519EA7E8(&v191);
        if (__OFADD__(*(v91 + 16), (v93 & 1) == 0))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          sub_2519F1038();
          __break(1u);
LABEL_74:
          result = sub_2519F1038();
          __break(1u);
          return result;
        }

        v94 = v92;
        v95 = v93;
        sub_2519F0D88();
        v96 = sub_2519F0D68();
        v182 = v188;
        if ((v96 & 1) == 0)
        {
          break;
        }

        v97 = sub_2519EA7E8(&v191);
        v52 = v181;
        if ((v95 & 1) != (v98 & 1))
        {
          goto LABEL_73;
        }

        v94 = v97;
        if ((v95 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_18:
        v81 = *(v182 + 56) + 8 * v94;
        v82 = v174;
        sub_2519F0B98();
        v83 = *v148;
        (*v148)(v82, v52);
        sub_2519CC398(&v191);
        v51 = v176;
        v83(v176, v52);
        v173 = sub_2519EBF90;
        v171 = sub_2519EBF88;
        v170 = v88;
        v172 = v90;
        v68 = v85;
        v69 = v165;
        v49 = AssociatedConformanceWitness;
        v80 = v175;
        v65 = v152;
      }

      v52 = v181;
      if (v95)
      {
        goto LABEL_18;
      }

LABEL_36:
      v99 = v90[5];
      v187 = (v90[4])();
      sub_2519DA6C4(&v191, &v188);
      sub_2519F0D78();
      goto LABEL_18;
    }
  }

LABEL_11:
  sub_2519DA534();
  swift_allocError();
  *v70 = 0xD000000000000024;
  *(v70 + 8) = 0x80000002519F6FF0;
  *(v70 + 16) = 1;
  swift_willThrow();
  v71 = 0;
  v74 = 0;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v49);
  v72 = v71;
LABEL_62:
  sub_2519C14E0(v72);
  return sub_2519C14E0(v74);
}

uint64_t sub_2519E91C4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(swift_getAssociatedConformanceWitness() + 24);

  return MEMORY[0x2821FB728](AssociatedTypeWitness, v1);
}

uint64_t sub_2519E925C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2519F0F68();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2519E92F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2519E925C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2519E932C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_2519C17A8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2519E935C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519E93B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HgQLAggregate.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v13[1] = *(a2 + 16);
  v14 = v4;
  type metadata accessor for HgQLAggregate.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2519F0F08();
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  v10 = *v2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2519F1158();
  v17 = v10;
  sub_2519F0B18();
  v16 = *(v14 + 16);
  swift_getWitnessTable();
  sub_2519F0EF8();

  return (*(v15 + 8))(v9, v5);
}

uint64_t HgQLAggregate.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 24);
  return sub_2519F0B28();
}

uint64_t HgQLAggregate.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_2519F1098();
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 24);
  sub_2519F0B28();
  return sub_2519F10D8();
}

uint64_t HgQLAggregateField.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v83 = a6;
  v82 = sub_2519F0C08();
  v79 = *(v82 - 8);
  v11 = *(v79 + 64);
  v13 = MEMORY[0x28223BE20](v82, v12);
  v84 = &v75 - v14;
  v78 = *(a2 - 8);
  v15 = *(v78 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v81 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v80 = &v75 - v20;
  v100[0] = a2;
  v100[1] = a3;
  v88 = a3;
  v100[2] = a4;
  v101 = a5;
  type metadata accessor for HgQLAggregateField.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_2519F0E88();
  v87 = sub_2519F0C08();
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  v24 = MEMORY[0x28223BE20](v87, v23);
  v26 = &v75 - v25;
  v27 = *(v21 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24, v29);
  v85 = &v75 - v30;
  v32 = a1[3];
  v31 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = v89;
  sub_2519F1148();
  v89 = a2;
  if (!v33)
  {
    (*(v27 + 56))(v26, 0, 1, v21);
    v34 = v85;
    (*(v27 + 32))(v85, v26, v21);
    sub_2519F0B18();
    v91 = v88;
    swift_getWitnessTable();
    sub_2519F0E68();
    (*(v27 + 8))(v34, v21);
    v72 = v100[0];
LABEL_23:
    v73 = v90;
    *v83 = v72;
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  (*(v27 + 56))(v26, 1, 1, v21);
  (*(v86 + 8))(v26, v87);
  v35 = v90;
  v36 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  v37 = sub_2519F1128();
  v38 = *(v37 + 16);
  if (!v38)
  {

    v62 = sub_2519F0CE8();
    swift_allocError();
    v64 = v63;
    v65 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_2519F1128();
    sub_2519F0CC8();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84168], v62);
LABEL_28:
    swift_willThrow();
    v73 = v35;
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  sub_2519D986C(v37 + 40 * v38 - 8, v100);

  __swift_project_boxed_opaque_existential_1(v100, v101);
  v39 = sub_2519F1178();
  v41 = v40;
  __swift_destroy_boxed_opaque_existential_1(v100);
  v42 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v43 = sub_2519F1138();
  if (qword_27F46CD80 != -1)
  {
    swift_once();
  }

  v44 = sub_2519F0D58();
  v45 = __swift_project_value_buffer(v44, qword_27F46D5D0);
  if (!*(v43 + 16) || (v46 = sub_2519EA784(v45), (v47 & 1) == 0))
  {

    v97 = 0u;
    v98 = 0u;
    v99 = 0;
LABEL_26:
    sub_2519EC260(&v97, &qword_27F46DBF0, qword_27F46DBF8);
LABEL_27:
    sub_2519DA534();
    swift_allocError();
    *v74 = 0xD000000000000024;
    *(v74 + 8) = 0x80000002519F6FF0;
    *(v74 + 16) = 1;
    goto LABEL_28;
  }

  v87 = v41;
  sub_2519CEBFC(*(v43 + 56) + 32 * v46, v95);

  sub_2519D9DD8(0, qword_27F46DBF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    goto LABEL_25;
  }

  if (!*(&v98 + 1))
  {
LABEL_25:

    goto LABEL_26;
  }

  sub_2519C1710(&v97, v100);
  v48 = v101;
  v49 = v102;
  v50 = __swift_project_boxed_opaque_existential_1(v100, v101);
  v51 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v50, v50);
  (*(v53 + 16))(&v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v49 + 8);
  swift_getAssociatedTypeWitness();
  sub_2519F0B48();
  v55 = sub_2519F0D28();

  v56 = sub_2519EA1F4(v55);

  if (!v56)
  {

    __swift_destroy_boxed_opaque_existential_1(v100);
    goto LABEL_27;
  }

  result = sub_2519F0AC8();
  v103 = result;
  v58 = v87;
  v86 = *(v56 + 16);
  if (!v86)
  {
LABEL_30:

    v72 = v103;
    __swift_destroy_boxed_opaque_existential_1(v100);
    goto LABEL_23;
  }

  v85 = v39;
  v59 = 0;
  v60 = v56 + 32;
  v61 = (v78 + 48);
  v77 = (v78 + 32);
  v76 = (v78 + 16);
  v78 += 8;
  v79 += 8;
  while (v59 < *(v56 + 16))
  {
    sub_2519D986C(v60, &v97);
    v66 = *(&v98 + 1);
    v67 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    (*(v67 + 32))(&v92, v85, v58, v66, v67);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    if (*(&v93 + 1))
    {
      v95[0] = v92;
      v95[1] = v93;
      v96 = v94;
      v68 = v84;
      v69 = v89;
      sub_2519D47A4(v89, v95, 0, 0, 0, v89, v88, v84);
      if ((*v61)(v68, 1, v69) == 1)
      {
        sub_2519CC398(v95);
        result = (*v79)(v68, v82);
      }

      else
      {
        v70 = v80;
        (*v77)(v80, v68, v69);
        (*v76)(v81, v70, v69);
        sub_2519F0B18();
        sub_2519F0AF8();
        v71 = v70;
        v58 = v87;
        (*v78)(v71, v69);
        result = sub_2519CC398(v95);
      }
    }

    else
    {
      result = sub_2519CC228(&v92);
    }

    ++v59;
    v60 += 40;
    if (v86 == v59)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2519EA1F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2519ECBE8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2519CEBFC(i, v10);
      sub_2519D9DD8(0, &qword_27F46D700);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_2519C1710(v8, v11);
      sub_2519C1710(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2519ECBE8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_2519C1710(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_2519EC260(v8, &qword_27F46DE00, &qword_27F46D700);
    return 0;
  }

  return v3;
}

uint64_t sub_2519EA37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_2519E925C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2519EA3B4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_2519C17A8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2519EA3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519EA440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HgQLAggregateField.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v18 = *(a2 + 16);
  v19 = v4;
  v20 = v18;
  v21 = v4;
  type metadata accessor for HgQLAggregateField.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2519F0F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = *v2;
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);

  sub_2519F1158();
  *&v20 = v11;
  sub_2519F0B18();
  v22 = v19;
  swift_getWitnessTable();
  sub_2519F0EF8();

  return (*(v6 + 8))(v10, v16);
}

uint64_t HgQLAggregateField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  return sub_2519F0B28();
}

uint64_t HgQLAggregateField.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_2519F1098();
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  sub_2519F0B28();
  return sub_2519F10D8();
}

uint64_t sub_2519EA720(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_2519F1098();
  a4(v7, a2);
  return sub_2519F10D8();
}

unint64_t sub_2519EA784(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2519F0D58();
  v5 = sub_2519F0958();

  return sub_2519EA944(a1, v5);
}

unint64_t sub_2519EA7E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2519F0C58();

  return sub_2519EAADC(a1, v5);
}

unint64_t sub_2519EA82C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2519F1088();

  return sub_2519EABA4(a1, v4);
}

unint64_t sub_2519EA870(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2519F1098();
  sub_2519F09F8();
  v6 = sub_2519F10D8();

  return sub_2519EAC10(a1, a2, v6);
}

unint64_t sub_2519EA8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2519F0958();

  return sub_2519EACC8(a1, v9, a2, a3);
}

unint64_t sub_2519EA944(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_2519F0D58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4);
      v19 = sub_2519F0968();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2519EAADC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2519DA6C4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253089E30](v9, a1);
      sub_2519CC398(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2519EABA4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2519EAC10(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2519F0F68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2519EACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2519F0968();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2519EAE50(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2519F0D58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_2519DA930();
  v44 = a2;
  result = sub_2519F0DB8();
  v15 = result;
  if (*(v12 + 16))
  {
    v47 = v11;
    v48 = v6;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    v43 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v46 = *(v7 + 72);
      v29 = v28 + v46 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v48);
        sub_2519CC0D8((*(v12 + 56) + 32 * v27), v49);
      }

      else
      {
        (*v41)(v47, v29, v48);
        sub_2519CEBFC(*(v12 + 56) + 32 * v27, v49);
      }

      v30 = *(v15 + 40);
      result = sub_2519F0958();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v42;
        v12 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
      v12 = v43;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v46 * v23), v47, v48);
      result = sub_2519CC0D8(v49, (*(v15 + 56) + 32 * v23));
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_2519EB1E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2519EC314();
  result = sub_2519F0DB8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_2519C1710(v22, v33);
      }

      else
      {
        sub_2519D986C(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_2519F1088();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_2519C1710(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2519EB458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2519EC1E8();
  v36 = a2;
  result = sub_2519F0DB8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_2519C1710(v25, v37);
      }

      else
      {
        sub_2519D986C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2519F1098();
      sub_2519F09F8();
      result = sub_2519F10D8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2519C1710(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_2519EB710()
{
  v1 = v0;
  v28 = sub_2519F0D58();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v3);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA930();
  v5 = *v0;
  v6 = sub_2519F0DA8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26[0] = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v31 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v30;
        v22 = *(v30 + 72) * v20;
        v23 = v27;
        v24 = v28;
        (*(v30 + 16))(v27, *(v5 + 48) + v22, v28);
        v20 *= 32;
        sub_2519CEBFC(*(v5 + 56) + v20, v32);
        v25 = v29;
        (*(v21 + 32))(*(v29 + 48) + v22, v23, v24);
        result = sub_2519CC0D8(v32, (*(v25 + 56) + v20));
        v15 = v31;
      }

      while (v31);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v26[0];
        v7 = v29;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v31 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_2519EB984()
{
  v1 = v0;
  sub_2519EC314();
  v2 = *v0;
  v3 = sub_2519F0DA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_2519D986C(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2519C1710(v19, *(v4 + 56) + 40 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2519EBAF8()
{
  v1 = v0;
  sub_2519EC1E8();
  v2 = *v0;
  v3 = sub_2519F0DA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2519D986C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2519C1710(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2519EBC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_2519F0AE8())
  {
    sub_2519F0DD8();
    v14 = sub_2519F0DC8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_2519F0AE8();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_2519F0AD8())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2519F0CB8();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2519EA8E8(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_2519EBF88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2519E91C4();
}

uint64_t sub_2519EBF90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_2519EBFD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2519EC014(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2519EC088()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2519EC0DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2519EC1E8()
{
  if (!qword_2813DD8B0)
  {
    sub_2519D9DD8(255, &qword_2813DD968);
    v0 = sub_2519F0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DD8B0);
    }
  }
}

uint64_t sub_2519EC260(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2519EC2BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2519EC2BC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2519D9DD8(255, a3);
    v4 = sub_2519F0C08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2519EC314()
{
  if (!qword_27F46DE08)
  {
    sub_2519D9DD8(255, &qword_27F46DA38);
    v0 = sub_2519F0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46DE08);
    }
  }
}

uint64_t sub_2519EC39C()
{
  v0 = sub_2519F0918();
  __swift_allocate_value_buffer(v0, qword_27F46DE10);
  __swift_project_value_buffer(v0, qword_27F46DE10);
  return sub_2519F0908();
}

uint64_t static Logger.ontology.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v2 = sub_2519F0918();
  v3 = __swift_project_value_buffer(v2, qword_27F46DE10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2519EC4BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_2519ECC08(0, v2, 0);
  if (!v2)
  {
    return v9;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v4 = *i;
    v5 = *(i - 2);

    if (!result)
    {
      break;
    }

    v8 = *(v9 + 16);
    v7 = *(v9 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_2519ECC08((v7 > 1), v8 + 1, 1);
    }

    *(v9 + 16) = v8 + 1;
    *(v9 + 8 * v8 + 32) = v5;
    if (!--v2)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Triple.variable(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

uint64_t Subject.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static Triple.nodeIds(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t Subject.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t static Triple.ocis(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2519EC4BC(a1);
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2519EC61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_2519EC4BC(a1);

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2519EC680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = *(v5 + 16);
  v11 = *(a1 + 16);
  sub_2519C87E8();
  if (v11)
  {
    v12 = (a1 + 32);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v15 = *v12;
      v12 += 3;
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2519E07D0(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_2519E07D0((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      *&v13[8 * v17 + 32] = v14;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a5 = v8;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = v13;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
}

uint64_t sub_2519EC7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 3;
  *(a2 + 56) = a1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;
  sub_2519C87E8();
}

uint64_t sub_2519EC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = sub_2519EC4BC(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 3;
  *(a2 + 56) = v7;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;

  return sub_2519C87E8();
}

uint64_t static Subject.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_2519C87E8();
  sub_2519C87E8();
  LOBYTE(v4) = _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(v10, v8);
  sub_2519C87F4();
  sub_2519C87F4();
  return v4 & 1;
}

uint64_t sub_2519EC934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_2519C87E8();
  sub_2519C87E8();
  LOBYTE(v4) = _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(v10, v8);
  sub_2519C87F4();
  sub_2519C87F4();
  return v4 & 1;
}

uint64_t sub_2519EC9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = *(v2 + 48);
  v11 = sub_2519EC4BC(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;
  sub_2519C87E8();

  return sub_2519C86C4(v7, v8, v9, v10);
}

uint64_t sub_2519ECA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *a4 = *v4;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  v11 = *(v4 + 48);
  *(a4 + 48) = v11;
  *(a4 + 56) = a1;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  sub_2519C87E8();
  sub_2519C86C4(v8, v9, v10, v11);
}

uint64_t sub_2519ECB3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a3 = *v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  v9 = *(v3 + 48);
  *(a3 + 48) = v9;
  *(a3 + 56) = a1;
  *(a3 + 64) = 0;
  *(a3 + 72) = a2;
  sub_2519C87E8();
  sub_2519C86C4(v6, v7, v8, v9);
}

void *sub_2519ECBE8(void *a1, int64_t a2, char a3)
{
  result = sub_2519ECC28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2519ECC08(char *a1, int64_t a2, char a3)
{
  result = sub_2519ECD58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2519ECC28(void *result, int64_t a2, char a3, void *a4)
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
    sub_2519ED0CC();
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
    sub_2519ED124();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2519ECD58(char *result, int64_t a2, char a3, char *a4)
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
    sub_2519ED07C();
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
    v10 = MEMORY[0x277D84F90];
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

BOOL sub_2519ECE50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  LOBYTE(v25) = v3;
  v18 = v4;
  v19 = v8;
  v20 = v9;
  LOBYTE(v21) = v10;
  sub_2519C87E8();
  sub_2519C87E8();
  v15 = _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(&v23, &v19);
  sub_2519C87F4();
  sub_2519C87F4();
  if (v15)
  {
    v23 = v18;
    v24 = v5;
    v25 = v6;
    v26 = v7;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    sub_2519C86C4(v18, v5, v6, v7);
    sub_2519C86C4(v11, v12, v13, v14);
    v16 = _s17HealthOntologyKit19PredicateDescriptorO2eeoiySbAC_ACtFZ_0(&v23, &v19);
    sub_2519DEE30(v19, v20, v21, v22);
    sub_2519DEE30(v23, v24, v25, v26);
  }

  else
  {
    return 0;
  }

  return v16;
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

uint64_t sub_2519ECFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519ED018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_2519ED07C()
{
  if (!qword_27F46DE28)
  {
    v0 = sub_2519F0F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46DE28);
    }
  }
}

void sub_2519ED0CC()
{
  if (!qword_27F46DE30)
  {
    sub_2519ED124();
    v0 = sub_2519F0F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46DE30);
    }
  }
}

unint64_t sub_2519ED124()
{
  result = qword_27F46D700;
  if (!qword_27F46D700)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D700);
  }

  return result;
}

uint64_t sub_2519ED1B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2519C1710(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_2519EFA14(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2519EC260(a1, &qword_27F46DA30, &qword_27F46DA38);
    v8 = *v2;
    v9 = sub_2519EA82C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_2519EB984();
        v14 = v16;
      }

      sub_2519C1710((*(v14 + 56) + 40 * v11), v17);
      sub_2519EF6DC(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2519EC260(v17, &qword_27F46DA30, &qword_27F46DA38);
  }

  return result;
}

uint64_t sub_2519ED2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2519C1710(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_2519EFB44(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2519EC260(a1, &qword_27F46DE38, &qword_2813DD968);
    sub_2519EF630(a2, a3, v10);

    return sub_2519EC260(v10, &qword_27F46DE38, &qword_2813DD968);
  }

  return result;
}

uint64_t RequestEvaluatorRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2519ED448();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t RequestEvaluatorRegistry.init()()
{
  sub_2519ED448();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

void sub_2519ED448()
{
  if (!qword_2813DD8B8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_2519F0CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DD8B8);
    }
  }
}

void RequestEvaluatorRegistry.subscript.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_2519ED708((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

void sub_2519ED504(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  os_unfair_lock_lock((v4 + 24));
  sub_2519EFF58((v4 + 16), a3);
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_2519ED568(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_2519ED954(a1, v8);
  v6 = *(*a2 + 16);
  os_unfair_lock_lock(v6 + 6);
  sub_2519EFF40();
  os_unfair_lock_unlock(v6 + 6);
  return sub_2519EC260(v8, &qword_27F46DE38, &qword_2813DD968);
}

uint64_t RequestEvaluatorRegistry.subscript.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  sub_2519ED724();
  os_unfair_lock_unlock(v3 + 6);

  return sub_2519EC260(a1, &qword_27F46DE38, &qword_2813DD968);
}

double sub_2519ED688@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_2519EA870(a2, a3);
    if (v7)
    {
      sub_2519D986C(*(v5 + 56) + 40 * v6, a4);
    }

    else
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void (*RequestEvaluatorRegistry.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v9 = v7;
  *a1 = v7;
  v7[10] = a2;
  v7[11] = a3;
  v10 = *(v3 + 16);
  v7[12] = v10;
  MEMORY[0x28223BE20](v7, v8);
  os_unfair_lock_lock((v10 + 24));
  sub_2519EFF58((v10 + 16), v9);
  *(v9 + 104) = 0;
  os_unfair_lock_unlock((v10 + 24));
  return sub_2519ED814;
}

void sub_2519ED814(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = sub_2519ED954(*a1, (v2 + 5));
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v4 + 6);
    sub_2519EFF40();
    os_unfair_lock_unlock(v4 + 6);
    sub_2519EC260((v2 + 5), &qword_27F46DE38, &qword_2813DD968);
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];
    MEMORY[0x28223BE20](a1, a2);
    os_unfair_lock_lock(v4 + 6);
    sub_2519EFF40();
    os_unfair_lock_unlock(v4 + 6);
  }

  sub_2519EC260(v2, &qword_27F46DE38, &qword_2813DD968);
  free(v2);
}

uint64_t sub_2519ED954(uint64_t a1, uint64_t a2)
{
  sub_2519EC2BC(0, &qword_27F46DE38, &qword_2813DD968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall RequestEvaluatorRegistry.add(evaluators:)(Swift::OpaquePointer evaluators)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_2519EDCE4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_2519EDA24(void *a1, uint64_t a2)
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

  v8 = 0;
  v48 = v3;
  while (v6)
  {
    v12 = v8;
LABEL_16:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_2519D986C(*(a2 + 56) + 40 * v16, v40);
    *&v41 = v19;
    *(&v41 + 1) = v18;
    sub_2519C1710(v40, &v42);

LABEL_17:
    v45 = v41;
    v46[0] = v42;
    v46[1] = v43;
    v47 = v44;
    v20 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
    }

    v21 = v45;
    sub_2519C1710(v46, &v41);
    v22 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a1;
    *&v40[0] = *a1;
    v25 = *&v40[0];
    v26 = sub_2519EA870(v21, v20);
    v28 = *(v25 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (*(v25 + 24) < v31)
    {
      sub_2519EB458(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2519EA870(v21, v20);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v37 = v26;
    sub_2519EBAF8();
    v26 = v37;
    if (v32)
    {
LABEL_4:
      v9 = v26;

      v10 = *&v40[0];
      v11 = (*(*&v40[0] + 56) + 40 * v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_2519C1710(&v41, v11);
      goto LABEL_5;
    }

LABEL_24:
    v10 = *&v40[0];
    *(*&v40[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v10[6] + 16 * v26);
    *v34 = v21;
    v34[1] = v20;
    sub_2519C1710(&v41, v10[7] + 40 * v26);
    v35 = v10[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v10[2] = v36;
LABEL_5:
    *v24 = v10;
    a1 = v24;
    v3 = v48;
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v8 = v14;
      v41 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2519F1038();
  __break(1u);
  return result;
}

BOOL RequestEvaluatorRegistry.isEmpty.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16) == 0;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t RequestEvaluatorRegistry.requestEvaluators.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t RequestEvaluatorRegistry.execute<A>(_:completion:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v30 = a3;
  swift_getAssociatedTypeWitness();
  sub_2519D9DD8(255, &qword_27F46D4A0);
  v9 = sub_2519F1118();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v27 - v12);
  v14 = *(a5 + 56);
  v15 = v14(a4, a5);
  v16 = *(v5 + 16);
  v31 = v15;
  v32 = v17;
  os_unfair_lock_lock((v16 + 24));
  sub_2519EFF58((v16 + 16), &v33);
  os_unfair_lock_unlock((v16 + 24));

  if (v34)
  {
    sub_2519C1710(&v33, v35);
    v18 = v36;
    v19 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_2519EDFF4(a1, v29, v30, v18, a4, v19, a5);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_2519EC260(&v33, &qword_27F46DE38, &qword_2813DD968);
    v21 = v14(a4, a5);
    v23 = v22;
    sub_2519CED28();
    v24 = swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v23;
    *(v25 + 16) = 0;
    *(v25 + 24) = 1;
    *v13 = v24;
    v26 = v28;
    swift_storeEnumTagMultiPayload();
    v29(v13);
    return (*(v27 + 8))(v13, v26);
  }
}

uint64_t sub_2519EDFF4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a3;
  v91 = a2;
  v92 = a7;
  swift_getAssociatedTypeWitness();
  v80 = sub_2519D9DD8(255, &qword_27F46D4A0);
  v11 = sub_2519F1118();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v84 = (v78 - v14);
  v81 = a6;
  v88 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_2519F0C08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v78 - v21;
  v23 = *(a5 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v20, v25);
  v79 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v82 = v78 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = v78 - v33;
  v35 = *(AssociatedTypeWitness - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32, v37);
  v87 = v78 - v38;
  v83 = v23;
  v40 = *(v23 + 16);
  v39 = v23 + 16;
  v93 = a1;
  v89 = v40;
  v40(v34, a1, a5);
  v41 = swift_dynamicCast();
  v42 = *(v35 + 56);
  v86 = v11;
  if (v41)
  {
    v78[1] = v39;
    v42(v22, 0, 1, AssociatedTypeWitness);
    (*(v35 + 32))(v87, v22, AssociatedTypeWitness);
    v43 = swift_allocObject();
    v44 = v88;
    v43[2] = v88;
    v43[3] = a5;
    v45 = v81;
    v47 = v91;
    v46 = v92;
    v43[4] = v81;
    v43[5] = v46;
    v48 = v90;
    v43[6] = v47;
    v43[7] = v48;
    v95[0] = sub_2519EFEA0;
    v95[1] = v43;
    swift_getFunctionTypeMetadata1();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_2519F1118();
    swift_getFunctionTypeMetadata1();

    if (swift_dynamicCast())
    {
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      *(v49 + 24) = a5;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      *(v49 + 48) = v94;
      v50 = v87;
      (*(v45 + 32))(v87, sub_2519EFEC8, v49, v44, v45);

      return (*(v35 + 8))(v50, AssociatedTypeWitness);
    }

    (*(v35 + 8))(v87, AssociatedTypeWitness);
  }

  else
  {
    v47 = v91;
    v42(v22, 1, 1, AssociatedTypeWitness);
    (*(v17 + 8))(v22, v16);
    v46 = v92;
    v44 = v88;
  }

  v52 = v82;
  v53 = v89;
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v54 = sub_2519F0918();
  __swift_project_value_buffer(v54, qword_27F46DE10);
  v53(v52, v93, a5);
  v55 = sub_2519F08F8();
  v56 = sub_2519F0BD8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v52;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v95[0] = v59;
    *v58 = 136446722;
    *&v94 = v44;
    swift_getMetatypeMetadata();
    v60 = sub_2519F09D8();
    v62 = sub_2519EF108(v60, v61, v95);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = sub_2519F11B8();
    v65 = sub_2519EF108(v63, v64, v95);

    *(v58 + 14) = v65;
    *(v58 + 22) = 2082;
    v89(v79, v57, a5);
    v66 = sub_2519F09D8();
    v68 = v67;
    v69 = v57;
    v47 = v91;
    (*(v83 + 8))(v69, a5);
    v70 = sub_2519EF108(v66, v68, v95);
    v46 = v92;

    *(v58 + 24) = v70;
    _os_log_impl(&dword_2519BF000, v55, v56, "%{public}s: expected request type %s but got %{public}s", v58, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308A910](v59, -1, -1);
    MEMORY[0x25308A910](v58, -1, -1);
  }

  else
  {

    (*(v83 + 8))(v52, a5);
  }

  v71 = v86;
  v72 = (*(v46 + 56))(a5, v46);
  v74 = v73;
  sub_2519CED28();
  v75 = swift_allocError();
  *v76 = v72;
  *(v76 + 8) = v74;
  *(v76 + 16) = 0;
  *(v76 + 24) = 4;
  v77 = v84;
  *v84 = v75;
  swift_storeEnumTagMultiPayload();
  v47(v77);
  return (*(v85 + 8))(v77, v71);
}

void RequestEvaluatorRegistry.execute(_:completion:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v8 = *(a1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier);
  v7 = *(a1 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier + 8);
  v9 = *(v3 + 16);
  os_unfair_lock_lock((v9 + 24));
  sub_2519EFF58((v9 + 16), &v14);
  os_unfair_lock_unlock((v9 + 24));
  if (v15)
  {
    sub_2519C1710(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_2519EE96C(a1, a2, a3, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_2519EC260(&v14, &qword_27F46DE38, &qword_2813DD968);
    sub_2519CED28();
    v12 = swift_allocError();
    *v13 = v8;
    *(v13 + 8) = v7;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;

    a2(v12, 1);
  }
}

uint64_t sub_2519EE96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = *(AssociatedTypeWitness - 8);
  v11 = *(v20[0] + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = v20 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  SecurelyCodableOntologyRequest.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 16))(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20[1], a4);
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = v21;
  *(v17 + 5) = a3;
  (*(v8 + 32))(&v17[v16], v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v18 = *(a5 + 32);

  v18(v14, sub_2519EED6C, v17, a4, a5);

  return (*(v20[0] + 8))(v14, AssociatedTypeWitness);
}

uint64_t RequestEvaluatorRegistry.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RequestEvaluatorRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2519EED00()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_2519ED954(v0[4], v4);

  return sub_2519ED2CC(v4, v1, v2);
}

void sub_2519EED6C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = sub_2519EFD74(a1, v2, v3);
  v5(v6, v7 & 1);

  sub_2519EFE8C(v6);
}

id sub_2519EEDC8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SecurelyCodableOntologyResponse();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2519DC55C();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_2519EEEFC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a4, v17, a3[3]);
    v20 = a3[4];
    sub_2519F1118();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    a1(v12);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_2519EF108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2519EF1D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2519CEBFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2519EF1D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2519EF2E0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2519F0D08();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2519EF2E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2519EF32C(a1, a2);
  sub_2519EF45C(&unk_2863DDAD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2519EF32C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2519D8904(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2519F0D08();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2519F0A18();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2519D8904(v10, 0);
        result = sub_2519F0C88();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2519EF45C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2519EF548(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2519EF548(char *result, int64_t a2, char a3, char *a4)
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
    sub_2519EFEF0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_2519EF630@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2519EA870(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2519EBAF8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2519C1710((*(v12 + 56) + 40 * v9), a3);
    sub_2519EF858(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2519EF6DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2519F0C28() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      v14 = *v13;
      result = sub_2519F1088();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 >= v8 && v3 >= v15)
        {
LABEL_15:
          v18 = (v12 + 8 * v3);
          if (v3 != v6 || v18 >= v13 + 1)
          {
            *v18 = *v13;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v15 >= v8 || v3 >= v15)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2519EF858(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2519F0C28() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2519F1098();

      sub_2519F09F8();
      v15 = sub_2519F10D8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2519EFA14(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2519EA82C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2519EB984();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2519EB1E4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2519EA82C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_2519F1038();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_2519C1710(a1, v21);
  }

  else
  {

    return sub_2519EFC98(v9, a2, a1, v20);
  }
}

uint64_t sub_2519EFB44(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2519EA870(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2519EBAF8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2519EB458(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2519EA870(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2519F1038();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_2519C1710(a1, v23);
  }

  else
  {
    sub_2519EFD04(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2519EFC98(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2519C1710(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2519EFD04(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2519C1710(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2519EFD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a2;
  v5[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519D9DD8(255, &qword_27F46D4A0);
  v3 = sub_2519F1118();
  type metadata accessor for SecurelyCodableOntologyResponse();
  sub_2519EEEFC(sub_2519EFE98, v5, v3, &v6);
  return v6;
}

id sub_2519EFE98@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2519EEDC8(a1);
}

uint64_t sub_2519EFEA0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_2519EFEC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void sub_2519EFEF0()
{
  if (!qword_27F46D730)
  {
    v0 = sub_2519F0F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D730);
    }
  }
}

uint64_t sub_2519EFF70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_2519F1118();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v21, v10);
    return sub_2519F0B58();
  }

  else
  {
    (*(v4 + 32))(v8, v21, v3);
    return sub_2519F0B68();
  }
}

uint64_t OntologyStore.response<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2519F01D8, 0, 0);
}

uint64_t sub_2519F01D8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v10;
  *(v3 + 40) = v9;
  *(v3 + 56) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_2519F0314;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0x65736E6F70736572, 0xEE00293A726F6628, sub_2519F0674, v3, AssociatedTypeWitness);
}

uint64_t sub_2519F0314()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2519F0450, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2519F0450()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2519F04B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = a3;
  v21[1] = a2;
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v12 = sub_2519F0B78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v21 - v16;
  (*(v13 + 16))(v21 - v16, a1, v12);
  v18 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = a6;
  *(v19 + 5) = a7;
  (*(v13 + 32))(&v19[v18], v17, v12);
  (*(a6 + 8))(v21[0], sub_2519F0714, v19, a5, a7, a4, a6);
}

uint64_t sub_2519F0698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v4 = sub_2519F0B78();
  return sub_2519EFF70(a3, v4);
}

uint64_t sub_2519F0714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v11 = *(*(sub_2519F0B78() - 8) + 80);

  return sub_2519F0698(a1, a2, a3);
}