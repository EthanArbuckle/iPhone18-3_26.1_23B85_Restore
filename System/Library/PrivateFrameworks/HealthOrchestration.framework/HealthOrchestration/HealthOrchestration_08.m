uint64_t sub_228872810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 40; ; i += 16)
  {
    v6 = *(i - 8);

    v6(&v10, v7);
    v8 = v10;

    if (v8)
    {
      swift_unknownObjectRelease();
      if (v8 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2288728DC(uint64_t *a1, uint64_t a2)
{
  v21 = a1;
  v4 = *a1;
  result = sub_228872810(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = v4 + 2;
    v9 = v4[2];
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 2 * result;
    while (v8 < v9)
    {
      v12 = &v4[v11];
      v13 = v4[v11 + 6];

      v13(&v20, v14);
      v15 = v20;

      if (!v15 || (result = swift_unknownObjectRelease(), v15 != a2))
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v17 = v12[6];
          v16 = v12[7];
          v19 = *&v4[2 * v7 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_228872274(v4);
          }

          v18 = &v4[2 * v7];
          v18[4] = v17;
          v18[5] = v16;

          if (v8 >= v4[2])
          {
            goto LABEL_26;
          }

          *&v4[v11 + 6] = v19;

          *v21 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = v4 + 2;
      v9 = v4[2];
      v11 += 2;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_228872A84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_2287F851C();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_228872B48(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
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

void sub_228872C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228872C84(uint64_t a1)
{
  sub_22880F3F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static InputSignalIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

HealthOrchestration::InputSignalIdentifier __swiftcall InputSignalIdentifier.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.value = stringLiteral;
  return result;
}

__n128 InputSignalSet.LookupKey.init(identifier:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

uint64_t InputSignal.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v4);
  if (v4[3])
  {
    v2 = v4[2];
  }

  else
  {
    v2 = v4[0];
  }

  return v2;
}

uint64_t static InputSignalIdentifier.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t InputSignalIdentifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InputSignalIdentifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InputSignalIdentifier.logDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InputSignalIdentifier.logDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

HealthOrchestration::InputSignalIdentifier __swiftcall InputSignalIdentifier.init(_:logDescription:)(Swift::String _, Swift::String_optional logDescription)
{
  v2->value = _;
  v2[1] = logDescription;
  result.logDescription = logDescription;
  result.value = _;
  return result;
}

uint64_t sub_228872F00(uint64_t a1)
{
  v2 = sub_2288733E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228872F3C(uint64_t a1)
{
  v2 = sub_2288733E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InputSignalIdentifier.encode(to:)(void *a1)
{
  sub_228873434(0, &qword_2813CF2D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288733E0();
  sub_22887FCF0();
  v13 = 0;
  v9 = v11[3];
  sub_22887FB20();
  if (!v9)
  {
    v12 = 1;
    sub_22887FB00();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t InputSignalIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228873434(0, &qword_2813CF2F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288733E0();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_22887FAB0();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_22887FA90();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InputSignalIdentifier.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t InputSignalIdentifier.description.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

unint64_t sub_2288733E0()
{
  result = qword_2813D0548;
  if (!qword_2813D0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0548);
  }

  return result;
}

void sub_228873434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2288733E0();
    v7 = a3(a1, &type metadata for InputSignalIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t InputSignalSet.LookupKey.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 InputSignalSet.LookupKey.identifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t static InputSignalSet.LookupKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t InputSignalSet.LookupKey.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t sub_2288735E4()
{
  sub_22887FC90();
  InputSignalSet.LookupKey.hash(into:)();
  return sub_22887FCD0();
}

uint64_t InputSignalSet.signals.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t InputSignalSet.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if (*(v6 + 16) && (v7 = sub_2287E6768(*a1, a1[1], a1[2], a1[3]), (v8 & 1) != 0))
  {
    sub_2287E766C(*(v6 + 56) + 40 * v7, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  sub_228873744();
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

void sub_228873744()
{
  if (!qword_2813D1570)
  {
    sub_22887379C();
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D1570);
    }
  }
}

unint64_t sub_22887379C()
{
  result = qword_2813D1578;
  if (!qword_2813D1578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D1578);
  }

  return result;
}

unint64_t sub_228873804()
{
  result = qword_27D852B68;
  if (!qword_27D852B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852B68);
  }

  return result;
}

unint64_t sub_22887385C()
{
  result = qword_27D852B70;
  if (!qword_27D852B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852B70);
  }

  return result;
}

unint64_t sub_2288738B4()
{
  result = qword_27D852B78;
  if (!qword_27D852B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852B78);
  }

  return result;
}

unint64_t sub_228873908()
{
  result = qword_2813D0508;
  if (!qword_2813D0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0508);
  }

  return result;
}

uint64_t sub_228873A10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_228873A78()
{
  result = qword_27D852B80;
  if (!qword_27D852B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852B80);
  }

  return result;
}

unint64_t sub_228873AD0()
{
  result = qword_2813D0538;
  if (!qword_2813D0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0538);
  }

  return result;
}

unint64_t sub_228873B28()
{
  result = qword_2813D0540;
  if (!qword_2813D0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0540);
  }

  return result;
}

uint64_t XPCDispatcher.maxConcurrentItems.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void XPCDispatcher.maxConcurrentItems.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 56) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

void (*XPCDispatcher.maxConcurrentItems.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *a1 = v4;
  return sub_228873C7C;
}

void sub_228873C7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  os_unfair_lock_lock((v1 + 72));
  *(v1 + 56) = v2;

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t XPCDispatcher.__allocating_init(serviceName:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_22887F370();

  v2 = [v0 initWithServiceName_];

  swift_allocObject();
  v3 = sub_228874978(v2);

  return v3;
}

uint64_t XPCDispatcher.__allocating_init(connection:)(void *a1)
{
  swift_allocObject();
  v2 = sub_228874978(a1);

  return v2;
}

uint64_t XPCDispatcher.init(connection:)(void *a1)
{
  v2 = sub_228874978(a1);

  return v2;
}

uint64_t XPCDispatcher.start<A>(source:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 18);
  sub_228874A40(&v1[4]);
  os_unfair_lock_unlock(v1 + 18);
  return sub_228873E30();
}

uint64_t sub_228873E30()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 72));
  sub_228874C04(v1 + 16, &v15);
  os_unfair_lock_unlock((v1 + 72));
  if (!*(&v16 + 1))
  {
    return sub_228874C88(&v15, &qword_2813D1580, qword_2813D1588);
  }

  sub_2287F8A28(&v15, v18);
  os_unfair_lock_lock((v1 + 72));
  for (i = *(v1 + 64); i < *(v1 + 56); i = *(v1 + 64))
  {
    *(v1 + 64) = i + 1;
    os_unfair_lock_unlock((v1 + 72));
    v4 = v19;
    v3 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v5 = swift_allocObject();
    swift_weakInit();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = sub_22887F7D0();
    v14[1] = v14;
    v8 = *(v7 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v14 - v9;

    WorkSource.fetchNextWorkPlan(completion:)(sub_228874C80, v5, v4, v3);

    v11 = *(AssociatedTypeWitness - 8);
    if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
    {
      (*(v8 + 8))(v10, v7);
      AssociatedConformanceWitness = 0;
      v15 = 0u;
      v16 = 0u;
    }

    else
    {
      *(&v16 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
    }

    sub_228874C88(&v15, &qword_2813D1198, &qword_2813D11A0);
    os_unfair_lock_lock((v1 + 72));
  }

  os_unfair_lock_unlock((v1 + 72));
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_228874124(uint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_2287F5EE4(a1, &v29);
  v5 = swift_allocObject();
  v6 = v35;
  *(v5 + 104) = v34;
  *(v5 + 120) = v6;
  *(v5 + 136) = v36;
  v7 = v29;
  *(v5 + 40) = v30;
  v8 = v32;
  *(v5 + 56) = v31;
  *(v5 + 72) = v8;
  *(v5 + 88) = v33;
  *(v5 + 16) = v2;
  *(v5 + 152) = v37;
  *(v5 + 24) = v7;
  v27 = sub_228874D3C;
  v28 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_228874538;
  v26 = &block_descriptor_14;
  v9 = _Block_copy(&aBlock);

  v10 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_22887F800();
  swift_unknownObjectRelease();
  sub_228874D48();
  if (swift_dynamicCast())
  {
    v11 = aBlock;
    sub_2287E766C((a1 + 8), &v29);
    v12 = *a1;
    v13 = a1[1];
    v14 = objc_allocWithZone(type metadata accessor for SecurelyCodableWorkPlan());
    swift_unknownObjectRetain();
    v15 = SecurelyCodableWorkPlan.init(_:context:)(&v29, v12, v13);
    v16 = sub_22887F370();
    v17 = sub_22887F370();
    sub_2287F5EE4(a1, &v29);
    v18 = swift_allocObject();
    v19 = v35;
    *(v18 + 104) = v34;
    *(v18 + 120) = v19;
    *(v18 + 136) = v36;
    v20 = v29;
    *(v18 + 40) = v30;
    v21 = v32;
    *(v18 + 56) = v31;
    *(v18 + 72) = v21;
    *(v18 + 88) = v33;
    *(v18 + 16) = v2;
    *(v18 + 152) = v37;
    *(v18 + 24) = v20;
    v27 = sub_228874E1C;
    v28 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_22887478C;
    v26 = &block_descriptor_11;
    v22 = _Block_copy(&aBlock);

    [v11 remote:v15 runWithWorkPlan:v16 provider:v17 executor:v22 with:?];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

void sub_2288744A8(void *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v13 = 1;
  v5 = *(a3 + 120);
  v6 = a1;
  v5(a3, v12);
  v7 = *(a2 + 16);
  os_unfair_lock_lock((v7 + 72));
  v8 = *(v7 + 64);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 64) = v10;
    os_unfair_lock_unlock((v7 + 72));
    sub_228873E30(v11);
    sub_2287FE448(v12);
  }
}

void sub_228874538(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2288745A0(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v22[0] = a2;
    v23 = 1;
    v7 = a4[15];
    v8 = a2;
    v7(a4, v22);
    v9 = *(a3 + 16);
    os_unfair_lock_lock((v9 + 72));
    v10 = *(v9 + 64);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (!v11)
    {
LABEL_3:
      *(v9 + 64) = v12;
      os_unfair_lock_unlock((v9 + 72));
      sub_228873E30(v13);
LABEL_4:
      sub_2287FE448(v22);
      return;
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v14 = a4[11];
      v15 = a4[12];
      __swift_project_boxed_opaque_existential_1(a4 + 8, v14);
      v22[3] = v14;
      v22[4] = v15;
      __swift_allocate_boxed_opaque_existential_1(v22);
      v4 = a1;
      sub_228824D74();
    }

    else
    {
      sub_2287E766C((a4 + 8), v22);
      v23 = 0;
      (a4[15])(a4, v22);
      v9 = *(a3 + 16);
      os_unfair_lock_lock((v9 + 72));
      v17 = *(v9 + 64);
      v11 = __OFSUB__(v17, 1);
      v12 = v17 - 1;
      if (!v11)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v23 = 0;
    (a4[15])(a4, v22);
    v18 = *(a3 + 16);
    os_unfair_lock_lock((v18 + 72));
    v19 = *(v18 + 64);
    v11 = __OFSUB__(v19, 1);
    v20 = v19 - 1;
    if (!v11)
    {
      *(v18 + 64) = v20;
      os_unfair_lock_unlock((v18 + 72));
      sub_228873E30(v21);

      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_22887478C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_228874818(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228824980(a1, v3);
    if (*&v3[0])
    {
      v5[6] = v3[6];
      v5[7] = v3[7];
      v6 = v4;
      v5[2] = v3[2];
      v5[3] = v3[3];
      v5[4] = v3[4];
      v5[5] = v3[5];
      v5[0] = v3[0];
      v5[1] = v3[1];
      sub_228874124(v5);

      return sub_2287F6C04(v5);
    }

    else
    {

      return sub_228824698(v3);
    }
  }

  return result;
}

uint64_t XPCDispatcher.deinit()
{

  return v0;
}

uint64_t XPCDispatcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228874978(void *a1)
{
  sub_228874EA4();
  v3 = swift_allocObject();
  *(v3 + 72) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = xmmword_228887FC0;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  return v1;
}

uint64_t sub_228874A40(uint64_t a1)
{
  v3 = *(v1 + 32);
  v8 = *(v1 + 16);
  v6 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v3);
  return sub_228874E28(v7, a1);
}

uint64_t get_enum_tag_for_layout_string_19HealthOrchestration10WorkSource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_228874B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_228874B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_228874C04(uint64_t a1, uint64_t a2)
{
  sub_228874CE4(0, &qword_2813D1580, qword_2813D1588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228874C88(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_228874CE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228874CE4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2287EC070(255, a3);
    v4 = sub_22887F7D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228874D48()
{
  result = qword_27D852B88;
  if (!qword_27D852B88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D852B88);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_228874E28(uint64_t a1, uint64_t a2)
{
  sub_228874CE4(0, &qword_2813D1580, qword_2813D1588);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_228874EA4()
{
  if (!qword_27D852B90)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852B90);
    }
  }
}

uint64_t sub_228874F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22880A7B4();
  result = MEMORY[0x22AAC0530](v2, &type metadata for ScopedExecutorIdentifier, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v17 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 48 * (v12 | (v11 << 6)));
      v15 = v13[1];
      v14 = v13[2];
      v18[0] = *v13;
      v18[1] = v15;
      v18[2] = v14;
      sub_2287F56D8(v18, &v16);
      sub_228877314(&v16, v18);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v17;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228875080(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2287F74F8();
  result = MEMORY[0x22AAC0530](v2, &type metadata for InputSignalIdentifier, v3);
  v5 = 0;
  v18 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 11) | (32 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    sub_2287F75D4(&v17, v13, v14, v15, v16);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v18;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t WorkCriteriaRecord.__allocating_init(context:executorIdentifier:planner:criteria:)(uint64_t a1, NSObject *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void WorkCriteriaRecord.check(timestamp:anchorUpdates:)(NSObject *a1@<X8>)
{
  v3 = *(v1 + 136);
  os_unfair_lock_lock((v3 + 68));
  sub_2287F5EAC((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 68));
}

Swift::Void __swiftcall WorkCriteriaRecord.updateConfigurations(_:at:)(Swift::OpaquePointer _, Swift::Double at)
{
  v3 = *(v2 + 136);
  os_unfair_lock_lock(v3 + 17);
  sub_2288364B4(&v3[4]);
  os_unfair_lock_unlock(v3 + 17);
}

void WorkCriteriaRecord.recheck(timestamp:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  os_unfair_lock_lock(v3 + 17);
  sub_2287EDFA4(&v3[4], a1);
  os_unfair_lock_unlock(v3 + 17);
}

uint64_t WorkCriteriaRecord.sanitize(anchors:)()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 68));
  sub_2288362DC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 68));
  return v3;
}

uint64_t WorkCriteriaRecord.criteria.getter()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 68));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 68));
  return v2;
}

uint64_t WorkCriteriaRecord.anchor.getter()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 68));
  if (*(v1 + 32))
  {
    type metadata accessor for InputSignalAnchorSet();
    swift_allocObject();

    v3 = sub_22886F6CC(v2);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((v1 + 68));
  return v3;
}

uint64_t *sub_228875478@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *result;
    v6 = result[1];
    v7 = a2 + 32;
    while (1)
    {
      sub_2287E766C(v7, &v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      (*(v9 + 48))(v12, v8, v9);
      if (v12[0] == v5 && v12[1] == v6)
      {
        break;
      }

      v11 = sub_22887FBF0();

      if (v11)
      {
        return sub_2287EC014(&v13, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v13);
      v7 += 40;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    return sub_2287EC014(&v13, a3);
  }

  else
  {
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t WorkCriteriaRecord.executorIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t WorkCriteriaRecord.criteriaIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11];
  v4 = v1[12];
  v3 = v1[13];
  *a1 = v1[10];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

void *WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(uint64_t a1, NSObject *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *&v117 = a5;
  v109 = a4;
  v116 = a2;
  v118 = sub_22887F180();
  *&v110 = *(v118 - 8);
  v11 = MEMORY[0x28223BE20](v118);
  v107 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v106 - v13;
  v14 = a3[1];
  v115 = *a3;
  v114 = v14;
  v16 = *(a3 + 4);
  v15 = *(a3 + 5);
  v17 = *a6;
  v113 = *(a6 + 8);
  sub_22887E094(0, &qword_2813CF1B8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2288817D0;
  v129 = 0x203A6574617473;
  v130 = 0xE700000000000000;
  v126[0] = 49;
  v19 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v19);
  v20 = v7;

  MEMORY[0x22AAC0340](8236, 0xE200000000000000);
  v126[0] = 56;
  v21 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v21);

  v22 = v129;
  v23 = v130;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 32) = v22;
  *(v18 + 40) = v23;
  sub_22887FC70();
  v24 = a1;
  v25 = v109;

  v26 = v116;
  *(v7 + 16) = a1;
  *(v7 + 24) = v26;
  v27 = v114;
  *(v7 + 32) = v115;
  *(v7 + 48) = v27;
  *(v7 + 64) = v16;
  *(v7 + 72) = v15;
  v28 = v17[3];
  v29 = v17[4];
  v30 = v17[5];
  *(v7 + 80) = v17[2];
  *(v7 + 88) = v28;
  *(v7 + 96) = v29;
  *(v7 + 104) = v30;
  v31 = v117;
  *(v7 + 112) = v25;
  *(v7 + 120) = v31;
  v32 = v17[6];
  v33 = *(v32 + 16);
  v112 = v17;
  v108 = v24;
  if (v33)
  {
    v125[0] = MEMORY[0x277D84F90];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_2287F6AD8(0, v33, 0);
    v34 = v125[0];
    v35 = v32 + 32;
    do
    {
      sub_2287E766C(v35, &v129);
      v36 = v131;
      v37 = v132;
      __swift_project_boxed_opaque_existential_1(&v129, v131);
      (*(v37 + 16))(v126, v36, v37);
      __swift_destroy_boxed_opaque_existential_1(&v129);
      v38 = v126[0];
      v39 = v126[1];
      v40 = v127;
      v125[0] = v34;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        v117 = v127;
        sub_2287F6AD8((v41 > 1), v42 + 1, 1);
        v40 = v117;
        v34 = v125[0];
      }

      *(v34 + 16) = v42 + 1;
      v43 = v34 + 32 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v39;
      *(v43 + 48) = v40;
      v35 += 40;
      --v33;
    }

    while (v33);

    v20 = v7;
    v17 = v112;
  }

  else
  {

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v34 = MEMORY[0x277D84F90];
  }

  v44 = sub_22887D6C4(v34);

  v20[16] = v44;
  if (v113)
  {

    v46 = sub_22887D8D0(v45, v17);

    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = v46 + 32;
      *&v117 = v110 + 8;
      v107 = v46;

      *&v49 = 136315906;
      v110 = v49;
      v111 = v20;
      do
      {
        sub_2287E766C(v48, &v129);
        v50 = v20[3];
        ObjectType = swift_getObjectType();
        v52 = *(v50 + 40);
        swift_unknownObjectRetain();
        v53 = v50;
        v54 = v119;
        v52(ObjectType, v53);
        swift_unknownObjectRelease();
        sub_2287E766C(&v129, v126);
        sub_2287E766C(&v129, v125);

        v55 = sub_22887F160();
        v56 = sub_22887F680();

        __swift_destroy_boxed_opaque_existential_1(&v129);
        if (os_log_type_enabled(v55, v56))
        {
          LODWORD(v115) = v56;
          v116 = v55;
          v57 = swift_slowAlloc();
          *&v114 = swift_slowAlloc();
          v124 = v114;
          *v57 = v110;
          v58 = v20;
          v60 = v20[4];
          v59 = v20[5];
          v61 = v58[6];
          v62 = v58[7];
          v64 = v58[8];
          v63 = v58[9];
          v120 = 60;
          v121 = 0xE100000000000000;

          MEMORY[0x22AAC0340](v60, v59);
          MEMORY[0x22AAC0340](8250, 0xE200000000000000);
          if (v63)
          {
            v65 = v63;
          }

          else
          {

            v64 = v61;
            v65 = v62;
          }

          MEMORY[0x22AAC0340](v64, v65);

          MEMORY[0x22AAC0340](62, 0xE100000000000000);

          v66 = sub_2287E64D8(v120, v121, &v124);

          *(v57 + 4) = v66;
          *(v57 + 12) = 2080;
          v17 = v112;
          if (v112[5])
          {
            v67 = v112[4];
            v68 = v112[5];
          }

          else
          {
            v67 = v112[2];
            v68 = v112[3];
          }

          v20 = v111;

          v69 = sub_2287E64D8(v67, v68, &v124);

          *(v57 + 14) = v69;
          *(v57 + 22) = 2080;
          v70 = *(&v127 + 1);
          v71 = v128;
          __swift_project_boxed_opaque_existential_1(v126, *(&v127 + 1));
          (*(v71 + 48))(&v120, v70, v71);
          v72 = v123;
          if (v123)
          {
            v73 = v122;
          }

          else
          {
            v73 = v120;
          }

          __swift_destroy_boxed_opaque_existential_1(v126);
          v74 = sub_2287E64D8(v73, v72, &v124);

          *(v57 + 24) = v74;
          *(v57 + 32) = 2080;
          v75 = __swift_project_boxed_opaque_existential_1(v125, v125[3]);
          MEMORY[0x28223BE20](v75);
          (*(v77 + 16))(&v106 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
          v78 = sub_22887F3B0();
          v80 = v79;
          __swift_destroy_boxed_opaque_existential_1(v125);
          v81 = sub_2287E64D8(v78, v80, &v124);

          *(v57 + 34) = v81;
          v82 = v116;
          _os_log_impl(&dword_2287E4000, v116, v115, "%s:%s: Initial anchor: %s %s.", v57, 0x2Au);
          v83 = v114;
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v83, -1, -1);
          MEMORY[0x22AAC1440](v57, -1, -1);

          (*v117)(v119, v118);
        }

        else
        {

          (*v117)(v54, v118);
          __swift_destroy_boxed_opaque_existential_1(v126);
          __swift_destroy_boxed_opaque_existential_1(v125);
        }

        v48 += 40;
        --v47;
      }

      while (v47);
      v46 = v107;
    }

    goto LABEL_29;
  }

  v84 = v20[3];
  v85 = swift_getObjectType();
  v86 = *(v84 + 40);
  swift_unknownObjectRetain();
  v87 = v107;
  v86(v85, v84);
  swift_unknownObjectRelease();

  v88 = sub_22887F160();
  v89 = sub_22887F680();

  if (!os_log_type_enabled(v88, v89))
  {

    (*(v110 + 8))(v87, v118);
    v46 = 0;
LABEL_29:
    v98 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v90 = swift_slowAlloc();
  v119 = swift_slowAlloc();
  v126[0] = v119;
  *v90 = 136315394;
  v91 = v20[4];
  v92 = v20[5];
  v93 = v20[7];
  *&v117 = v20[6];
  v94 = v20;
  v95 = v20[8];
  v96 = v20[9];
  v129 = 60;
  v130 = 0xE100000000000000;

  MEMORY[0x22AAC0340](v91, v92);
  MEMORY[0x22AAC0340](8250, 0xE200000000000000);
  if (v96)
  {
    v97 = v96;
  }

  else
  {

    v95 = v117;
    v97 = v93;
  }

  MEMORY[0x22AAC0340](v95, v97);

  MEMORY[0x22AAC0340](62, 0xE100000000000000);

  v101 = sub_2287E64D8(v129, v130, v126);

  *(v90 + 4) = v101;
  *(v90 + 12) = 2080;
  v17 = v112;
  if (v112[5])
  {
    v102 = v112[4];
    v103 = v112[5];
  }

  else
  {
    v102 = v112[2];
    v103 = v112[3];
  }

  v20 = v94;
  v98 = MEMORY[0x277D84F90];

  v104 = sub_2287E64D8(v102, v103, v126);

  *(v90 + 14) = v104;
  _os_log_impl(&dword_2287E4000, v88, v89, "%s:%s: Nil initial anchor.", v90, 0x16u);
  v105 = v119;
  swift_arrayDestroy();
  MEMORY[0x22AAC1440](v105, -1, -1);
  MEMORY[0x22AAC1440](v90, -1, -1);

  (*(v110 + 8))(v107, v118);
  v46 = 0;
LABEL_30:

  sub_2287F36D8(0, &qword_2813CF470);
  v99 = swift_allocObject();
  *(v99 + 68) = 0;

  swift_bridgeObjectRetain_n();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v99 + 16) = v17;
  *(v99 + 24) = v46;
  *(v99 + 32) = v46;
  *(v99 + 40) = 0;
  *(v99 + 48) = v98;
  *(v99 + 56) = 0;
  *(v99 + 64) = 0;

  swift_bridgeObjectRelease_n();

  v20[17] = v99;
  return v20;
}

uint64_t sub_22887633C(uint64_t a1, uint64_t a2)
{
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  type metadata accessor for WorkCriteria();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = a2;

  *a1 = v8;
  return result;
}

uint64_t sub_2288763DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_22887D8D0(a2, v5);

  swift_allocObject();
  v7 = sub_22886F6CC(v6);

  *a3 = v7;
  return result;
}

unint64_t sub_2288764A0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 32);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (*(result + 48) == 1)
    {
      *a3 = 2;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 88) = 0u;
    }

    else
    {
      v11 = result;

      *(v11 + 8) = a2;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0;
    }

    return result;
  }

  v10 = result;
  v6 = sub_22887FA20();
  result = v10;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v8 = MEMORY[0x22AAC07F0](result, v5);
    v7 = v8;
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * result + 32);

LABEL_8:
    v9 = *(v7 + 16);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock((v9 + 36));
    sub_22887DE40((v9 + 16));
    os_unfair_lock_unlock((v9 + 36));

    *a3 = 2;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_228876650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22887F7D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22[-1] - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v22[-1] - v12;
  sub_2287E766C(a1, v22);
  sub_2287EC070(0, &qword_2813CF7F8);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    v16 = (*(a3 + 48))(v13, v21, a3);
    (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v15(v10, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v10, v6);
    v22[0] = AssociatedTypeWitness;
    swift_getMetatypeMetadata();
    v16 = sub_22887F3B0();
    v18 = v17;
    sub_22887DE8C();
    swift_allocError();
    *v19 = v16;
    v19[1] = v18;
    swift_willThrow();
  }

  return v16;
}

uint64_t WorkCriteriaRecord.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t WorkCriteriaRecord.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t WorkCriteriaRecord.description.getter()
{
  if (v0[13])
  {
    v1 = v0[12];
    v2 = v0[13];
  }

  else
  {
    v1 = v0[10];
    v2 = v0[11];
  }

  MEMORY[0x22AAC0340](v1, v2);

  MEMORY[0x22AAC0340](0x20726F6620, 0xE500000000000000);
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  MEMORY[0x22AAC0340](v0[4], v0[5]);
  MEMORY[0x22AAC0340](8250, 0xE200000000000000);
  if (v5)
  {
    v3 = v5;
  }

  else
  {

    v6 = v4;
  }

  MEMORY[0x22AAC0340](v6, v3);

  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  MEMORY[0x22AAC0340](60, 0xE100000000000000);

  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 60;
}

void *sub_228876B6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22887E094(0, &qword_27D852050, &type metadata for ScopedExecutorIdentifier, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_228876C14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22887E094(0, &qword_2813CF288, &type metadata for InputSignalIdentifier, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_228876CB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22887E094(0, &qword_2813CF1C0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_228876D54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22887F060();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
  v33 = a2;
  v11 = sub_22887F330();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22887DF24(qword_27D851F90, MEMORY[0x277CC9260]);
      v21 = sub_22887F360();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_228878E94(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_228877034(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22887F140();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
  v33 = a2;
  v11 = sub_22887F330();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22887DF24(&qword_2813D1688, MEMORY[0x277CC99D0]);
      v21 = sub_22887F360();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_228879160(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_228877314(void *a1, void *a2)
{
  v4 = *v2;
  sub_22887FC90();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v31 = a2;
  sub_22887F3E0();
  sub_22887F3E0();
  v9 = sub_22887FCD0();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v29 = v4;
    v14 = *(v4 + 48);
    while (1)
    {
      v15 = (v14 + 48 * v12);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == v5 && v15[1] == v6;
      if (v18 || (sub_22887FBF0() & 1) != 0)
      {
        v19 = v16 == v7 && v17 == v8;
        if (v19 || (sub_22887FBF0() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_228820738(v31);
    v20 = (*(v29 + 48) + 48 * v12);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v25 = v20[4];
    v24 = v20[5];
    *a1 = *v20;
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v25;
    a1[5] = v24;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_2287F56D8(v31, v34);
    sub_22887942C(v31, v12, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    v28 = v31[1];
    *a1 = *v31;
    *(a1 + 1) = v28;
    *(a1 + 2) = v31[2];
    return 1;
  }
}

uint64_t sub_2288774FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22887FC90();
  sub_22887F3E0();
  v8 = sub_22887FCD0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_228879608(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22887764C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x22AAC0BB0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_228879788(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_228877734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22887FC90();
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  sub_22887F340();
  v7 = sub_22887FCD0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_22881B930(*(v6 + 48) + 40 * v9, v16);
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      LOBYTE(v11) = sub_22884F624(a2, v11);
      sub_22881B98C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22881B98C(a2);
    sub_22881B930(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22881B930(a2, v16);
    v15 = *v3;
    sub_2288798AC(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2288778C8()
{
  v1 = v0;
  v35 = sub_22887F060();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_22887E000();
  result = sub_22887F860();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
      result = sub_22887F330();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_228877C18()
{
  v1 = v0;
  v35 = sub_22887F140();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_22887DF6C();
  result = sub_22887F860();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
      result = sub_22887F330();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_228877F68()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_2813CF4A8, sub_22880A7B4);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v32 = v17[5];
      v33 = v17[4];
      sub_22887FC90();
      sub_22887F3E0();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 48 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v33;
      v2 = v31;
      v13[5] = v32;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_228878224()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_2813CF4B0, sub_2287F74F8);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v30 = v17[3];
      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v30;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2288784B0()
{
  v1 = v0;
  v2 = *v0;
  sub_22887DDF0(0, &qword_2813CF4A0);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22887871C()
{
  v1 = v0;
  v2 = *v0;
  sub_22887DDF0(0, &qword_27D852B98);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x22AAC0BB0](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_228878950()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_27D852BB0, sub_22880A5AC);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v19 = *(v2 + 48) + 40 * (v16 | (v5 << 6));
      v20 = *(v19 + 32);
      v21 = *(v19 + 16);
      v30 = *v19;
      v31 = v21;
      v32 = v20;
      sub_22887FC90();
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      sub_22887F340();
      result = sub_22887FCD0();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      v14 = v30;
      v15 = v31;
      *(v13 + 32) = v32;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero((v2 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_228878BFC()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_27D852BA8, sub_2287F30D8);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      sub_22887FC90();
      sub_22887F3E0();
      MEMORY[0x22AAC0BD0](v20);
      result = sub_22887FCD0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_228878E94(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22887F060();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2288778C8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_228879A74(MEMORY[0x277CC9260], sub_22887E000);
      goto LABEL_12;
    }

    sub_22887A590();
  }

  v12 = *v3;
  sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
  v13 = sub_22887F330();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22887DF24(qword_27D851F90, MEMORY[0x277CC9260]);
      v21 = sub_22887F360();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_228879160(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22887F140();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228877C18();
  }

  else
  {
    if (v11 > v10)
    {
      sub_228879A74(MEMORY[0x277CC99D0], sub_22887DF6C);
      goto LABEL_12;
    }

    sub_22887A8A0();
  }

  v12 = *v3;
  sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
  v13 = sub_22887F330();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22887DF24(&qword_2813D1688, MEMORY[0x277CC99D0]);
      v21 = sub_22887F360();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_22887942C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v29 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_228877F68();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_228879CA8();
      goto LABEL_22;
    }

    sub_22887ABB0();
  }

  v8 = *v3;
  sub_22887FC90();
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  sub_22887F3E0();
  sub_22887F3E0();
  result = sub_22887FCD0();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v8 + 48);
    while (1)
    {
      v17 = (v16 + 48 * a2);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == v9 && v17[1] == v10;
      if (v20 || (result = sub_22887FBF0(), (result & 1) != 0))
      {
        if (v18 == v11 && v19 == v12)
        {
          break;
        }

        result = sub_22887FBF0();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v15;
      if (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_22887FC10();
    __break(1u);
  }

LABEL_22:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = (*(v22 + 48) + 48 * a2);
  v24 = v29[1];
  *v23 = *v29;
  v23[1] = v24;
  v23[2] = v29[2];
  v25 = *(v22 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v27;
  }

  return result;
}

uint64_t sub_228879608(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2288784B0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_228879FCC();
      goto LABEL_16;
    }

    sub_22887B0C8();
  }

  v10 = *v4;
  sub_22887FC90();
  sub_22887F3E0();
  result = sub_22887FCD0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22887FBF0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_228879788(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22887871C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22887A134();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22887B30C();
  }

  v8 = *v3;
  result = MEMORY[0x22AAC0BB0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_2288798AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228878950();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22887A280();
      goto LABEL_12;
    }

    sub_22887B50C();
  }

  v9 = *v3;
  sub_22887FC90();
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_22887F340();
  result = sub_22887FCD0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_22881B930(*(v9 + 48) + 40 * a2, v20);
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      LOBYTE(v12) = sub_22884F624(v6, v12);
      result = sub_22881B98C(v20);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *v6;
  v16 = *(v6 + 16);
  *(v14 + 32) = *(v6 + 32);
  *v14 = v15;
  *(v14 + 16) = v16;
  v17 = *(v13 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v13 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

void *sub_228879A74(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_22887F850();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_228879CA8()
{
  v1 = v0;
  sub_22887E0E4(0, &qword_2813CF4A8, sub_22880A7B4);
  v2 = *v0;
  v3 = sub_22887F850();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v23 = v18[4];
        v22 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v23;
        v24[5] = v22;
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

void *sub_228879E48()
{
  v1 = v0;
  sub_22887E0E4(0, &qword_2813CF4B0, sub_2287F74F8);
  v2 = *v0;
  v3 = sub_22887F850();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_228879FCC()
{
  v1 = v0;
  sub_22887DDF0(0, &qword_2813CF4A0);
  v2 = *v0;
  v3 = sub_22887F850();
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

void *sub_22887A134()
{
  v1 = v0;
  sub_22887DDF0(0, &qword_27D852B98);
  v2 = *v0;
  v3 = sub_22887F850();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22887A280()
{
  v1 = v0;
  sub_22887E0E4(0, &qword_27D852BB0, sub_22880A5AC);
  v2 = *v0;
  v3 = sub_22887F850();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_22881B930(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_22887A410()
{
  v1 = v0;
  sub_22887E0E4(0, &qword_27D852BA8, sub_2287F30D8);
  v2 = *v0;
  v3 = sub_22887F850();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
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

uint64_t sub_22887A590()
{
  v1 = v0;
  v32 = sub_22887F060();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_22887E000();
  v6 = sub_22887F860();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
      result = sub_22887F330();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_22887A8A0()
{
  v1 = v0;
  v32 = sub_22887F140();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_22887DF6C();
  v6 = sub_22887F860();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
      result = sub_22887F330();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_22887ABB0()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_2813CF4A8, sub_22880A7B4);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v0;
    v31 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[5];
      v32 = v17[4];
      sub_22887FC90();

      sub_22887F3E0();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 48 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v21;
      v13[3] = v20;
      v2 = v31;
      v13[4] = v32;
      v13[5] = v22;
      ++*(v4 + 16);
      v9 = v33;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v30;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22887AE60()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_2813CF4B0, sub_2287F74F8);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[3];
      v29 = v17[2];
      sub_22887FC90();

      sub_22887F3E0();
      result = sub_22887FCD0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v2 = v28;
      v13[2] = v29;
      v13[3] = v20;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22887B0C8()
{
  v1 = v0;
  v2 = *v0;
  sub_22887DDF0(0, &qword_2813CF4A0);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_22887FC90();

      sub_22887F3E0();
      result = sub_22887FCD0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22887B30C()
{
  v1 = v0;
  v2 = *v0;
  sub_22887DDF0(0, &qword_27D852B98);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x22AAC0BB0](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22887B50C()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_27D852BB0, sub_22880A5AC);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_22881B930(*(v2 + 48) + 40 * (v15 | (v5 << 6)), &v25);
      sub_22887FC90();
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      sub_22887F340();
      result = sub_22887FCD0();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25;
      v14 = v26;
      *(v12 + 32) = v27;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_22887B784()
{
  v1 = v0;
  v2 = *v0;
  sub_22887E0E4(0, &qword_27D852BA8, sub_2287F30D8);
  result = sub_22887F860();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      sub_22887FC90();

      sub_22887F3E0();
      MEMORY[0x22AAC0BD0](v20);
      result = sub_22887FCD0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

double sub_22887B9F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_22887FC90();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_22887F3E0();
  sub_22887F3E0();
  v9 = sub_22887FCD0();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v4 + 48);
    while (1)
    {
      v15 = (v14 + 48 * v12);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == v5 && v15[1] == v6;
      if (v18 || (sub_22887FBF0() & 1) != 0)
      {
        v19 = v16 == v7 && v17 == v8;
        if (v19 || (sub_22887FBF0() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v26;
    v28 = *v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228879CA8();
      v21 = v28;
    }

    v22 = *(v21 + 48) + 48 * v12;
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    *a2 = *v22;
    *(a2 + 16) = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = *(v22 + 32);
    sub_22887BCE4(v12);
    *v26 = v28;
  }

  else
  {
LABEL_17:
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_22887BBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_22887FC90();
  sub_22887F3E0();
  result = sub_22887FCD0();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 32 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_22887FBF0();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v18 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228879E48();
      v15 = v18;
    }

    v16 = *(v15 + 48) + 32 * v10;
    v17 = *(v16 + 8);
    *a3 = *v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = *(v16 + 16);
    result = sub_22887BF3C(v10);
    *v3 = v18;
  }

  else
  {
LABEL_9:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_22887BCE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22887F840();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v22 = v4;
      do
      {
        v12 = v3;
        v13 = v9;
        sub_22887FC90();

        sub_22887F3E0();
        sub_22887F3E0();
        v14 = sub_22887FCD0();

        v9 = v13;
        v15 = v14 & v7;
        if (v2 >= v13)
        {
          if (v15 < v13)
          {
            v4 = v22;
            v3 = v12;
          }

          else
          {
            v4 = v22;
            v3 = v12;
            if (v2 >= v15)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v22;
          v3 = v12;
          if (v15 >= v9 || v2 >= v15)
          {
LABEL_12:
            v16 = *(v3 + 48);
            v17 = (v16 + 48 * v2);
            v18 = (v16 + 48 * v6);
            if (v2 != v6 || v17 >= v18 + 3)
            {
              v10 = *v18;
              v11 = v18[2];
              v17[1] = v18[1];
              v17[2] = v11;
              *v17 = v10;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22887BF3C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22887F840();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22887FC90();

        sub_22887F3E0();
        v11 = sub_22887FCD0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 32 * v2);
          v15 = (v13 + 32 * v6);
          if (v2 != v6 || v14 >= v15 + 2)
          {
            v10 = v15[1];
            *v14 = *v15;
            v14[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22887C11C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 11) | (32 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22887BBA0(v12, v13, v14);

        result = sub_22887DEE0(v14[0], v14[1]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22887C280(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v65 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_54;
      }

      if (v17 >= v12)
      {
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v64 = v15;
    v20 = (v19 + ((v15 << 11) | (32 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[3];
    sub_22887FC90();
    v63 = v23;

    sub_22887F3E0();
    v24 = sub_22887FCD0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v4 = v2 >> 6;
    v8 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v64;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 32 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22887FBF0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v4 = v2 >> 6;
    v8 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v64;
  v67 = v60;
  v68 = v64;
  v69 = v11;
  v66[0] = v62;
  v66[1] = v7;

  v29 = *(v5 + 32);
  v57 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v57;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v58 = &v55;
    MEMORY[0x28223BE20](v28);
    v2 = &v55 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v65, v30);
    v31 = *(v2 + 8 * v4) & ~v8;
    v32 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v4) = v31;
    v33 = v32 - 1;
    v34 = v62;
LABEL_23:
    v59 = v33;
    if (v11)
    {
      goto LABEL_32;
    }

LABEL_27:
    v36 = v3;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_228835444(v61, v57, v59, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v3 = v37;
        while (1)
        {
LABEL_32:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v34 + 48);
            v64 = v3;
            v40 = (v39 + ((v3 << 11) | (32 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v40[3];
            sub_22887FC90();
            v63 = v42;

            sub_22887F3E0();
            v43 = sub_22887FCD0();
            v44 = -1 << *(v5 + 32);
            v45 = v43 & ~v44;
            v2 = v45 >> 6;
            v8 = 1 << v45;
            if (((1 << v45) & v65[v45 >> 6]) != 0)
            {
              break;
            }

LABEL_44:
            v3 = v64;

            if (!v11)
            {
              goto LABEL_27;
            }
          }

          v46 = (*(v5 + 48) + 32 * v45);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22887FBF0() & 1) == 0)
            {
              v45 = (v45 + 1) & v48;
              v2 = v45 >> 6;
              v8 = 1 << v45;
              if (((1 << v45) & v65[v45 >> 6]) == 0)
              {
                v34 = v62;
                goto LABEL_44;
              }

              v49 = (*(v5 + 48) + 32 * v45);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v34 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v8;
          v3 = v64;
          if ((v35 & v8) != 0)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_27;
          }
        }

        v33 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v65, v51);
  v53 = v56;
  v54 = sub_22887C844(v52, v57, v5, v2, v66);

  if (!v53)
  {

    MEMORY[0x22AAC1440](v52, -1, -1);
    v60 = v67;
    v5 = v54;
LABEL_51:
    sub_2287EF604();
    return v5;
  }

  result = MEMORY[0x22AAC1440](v52, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22887C844(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v30 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v31 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v10 = a5[3];
        v11 = a5[4];
        if (!v11)
        {
          v13 = (a5[2] + 64) >> 6;
          v14 = a5[3];
          while (1)
          {
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v12 >= v13)
            {
              break;
            }

            v11 = *(a5[1] + 8 * v12);
            ++v14;
            if (v11)
            {
              goto LABEL_10;
            }
          }

          if (v13 <= v10 + 1)
          {
            v27 = v10 + 1;
          }

          else
          {
            v27 = (a5[2] + 64) >> 6;
          }

          a5[3] = v27 - 1;
          a5[4] = 0;

          return sub_228835444(v30, a2, v29, a3);
        }

        v12 = a5[3];
LABEL_10:
        v15 = (*(*a5 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v11)))));
        v16 = *v15;
        v17 = v15[1];
        a5[3] = v12;
        a5[4] = (v11 - 1) & v11;
        sub_22887FC90();

        sub_22887F3E0();
        v18 = sub_22887FCD0();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v31 + 8 * (v20 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v23 = (*(a3 + 48) + 32 * v20);
      if (*v23 != v16 || v23[1] != v17)
      {
        v25 = ~v19;
        while ((sub_22887FBF0() & 1) == 0)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v31 + 8 * (v20 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v26 = (*(a3 + 48) + 32 * v20);
          if (*v26 == v16 && v26[1] == v17)
          {
            break;
          }
        }
      }

      v9 = v30[v21];
      v30[v21] = v9 & ~v22;
    }

    while ((v9 & v22) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v29 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22887CAA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22887F060();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22887CD44(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = (*(a4 + 48) + 48 * (__clz(__rbit64(v8)) | (v10 << 6)));
      v17 = v16[1];
      v8 &= v8 - 1;
      v18 = v16[2];
      v19 = v16[3];
      v21 = v16[4];
      v20 = v16[5];
      *v9 = *v16;
      v9[1] = v17;
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v21;
      v9[5] = v20;
      if (v12 == v25)
      {

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 6;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22887CEE8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v21 = v18[2];
      v20 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v21;
      v11[3] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22887D068(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v21 = v18[2];
      v20 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v21;
      v11[3] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22887D1E8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = (*(a4 + 48) + 48 * (__clz(__rbit64(v8)) | (v10 << 6)));
      v17 = v16[1];
      v8 &= v8 - 1;
      v18 = v16[2];
      v19 = v16[3];
      v21 = v16[4];
      v20 = v16[5];
      *v9 = *v16;
      v9[1] = v17;
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v21;
      v9[5] = v20;
      if (v12 == v25)
      {

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 6;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22887D38C(uint64_t a1)
{
  v2 = sub_22887F060();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
  result = MEMORY[0x22AAC0530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_228876D54(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22887D528(uint64_t a1)
{
  v2 = sub_22887F140();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
  result = MEMORY[0x22AAC0530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_228877034(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22887D6C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2287F74F8();
  result = MEMORY[0x22AAC0530](v2, &type metadata for InputSignalIdentifier, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_2287F75D4(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_22887D784(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22880A7B4();
  result = MEMORY[0x22AAC0530](v2, &type metadata for ScopedExecutorIdentifier, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_2287F56D8(v9, &v7);
      sub_228877314(&v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22887D838(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAC0530](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2288774FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22887D8D0(uint64_t result, uint64_t a2)
{
  v27 = result;
  v2 = *(a2 + 48);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2287F6AD8(0, v3, 0);
    v4 = v33;
    v5 = v2 + 32;
    do
    {
      sub_2287E766C(v5, &v30);
      v6 = v31;
      v7 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      (*(v7 + 16))(&v28, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_1(&v30);
      v8 = v28;
      v9 = v29;
      v33 = v4;
      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        v26 = v29;
        result = sub_2287F6AD8((v10 > 1), v11 + 1, 1);
        v9 = v26;
        v4 = v33;
      }

      v4[2] = v11 + 1;
      v12 = &v4[4 * v11];
      *(v12 + 2) = v8;
      *(v12 + 3) = v9;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v13 = v4[2];
  if (v13)
  {
    v14 = 0;
    v15 = v4 + 7;
    v16 = MEMORY[0x277D84F90];
    while (v14 < v4[2])
    {
      v17 = *(v27 + 16);
      if (*(v17 + 16))
      {
        v19 = *(v15 - 3);
        v18 = *(v15 - 2);
        v21 = *(v15 - 1);
        v20 = *v15;

        v22 = sub_2287E6768(v19, v18, v21, v20);
        if (v23)
        {
          sub_2287E766C(*(v17 + 56) + 40 * v22, &v28);

          sub_2287EC014(&v28, &v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_2288301F8(0, v16[2] + 1, 1, v16);
          }

          v25 = v16[2];
          v24 = v16[3];
          if (v25 >= v24 >> 1)
          {
            v16 = sub_2288301F8((v24 > 1), v25 + 1, 1, v16);
          }

          v16[2] = v25 + 1;
          result = sub_2287EC014(&v30, &v16[5 * v25 + 4]);
        }

        else
        {
        }
      }

      ++v14;
      v15 += 4;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_19:

    return v16;
  }

  return result;
}

uint64_t sub_22887DB90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 104))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22887DBEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22887DC4C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_22887DC94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22887DCDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22887DD48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_22887DD90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22887DDF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22887F880();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_22887DE40(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

unint64_t sub_22887DE8C()
{
  result = qword_27D852BA0;
  if (!qword_27D852BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852BA0);
  }

  return result;
}

uint64_t sub_22887DEE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22887DF24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22887DF6C()
{
  if (!qword_27D852BB8)
  {
    sub_22887F140();
    sub_22887DF24(&qword_2813D1690, MEMORY[0x277CC99D0]);
    v0 = sub_22887F880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852BB8);
    }
  }
}

void sub_22887E000()
{
  if (!qword_27D852BC0[0])
  {
    sub_22887F060();
    sub_22887DF24(&qword_27D851AC8, MEMORY[0x277CC9260]);
    v0 = sub_22887F880();
    if (!v1)
    {
      atomic_store(v0, qword_27D852BC0);
    }
  }
}

void sub_22887E094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22887E0E4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_22887F880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22887E16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v10 = *(a2 + a3 - 16);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = sub_22887EF24;
  a4[1] = v8;
}

uint64_t sub_22887E200(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v9 = *a2;
  swift_beginAccess();
  *(v9 + 16) = sub_22887EEFC;
  *(v9 + 24) = v8;
}

uint64_t MockInputSignalObserver.didUpdate<A>(anchor:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a1;
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22887F7D0();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v35 - v10;
  v39 = a4;
  v43 = swift_getAssociatedTypeWitness();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v35 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_22887F7D0();
  v35 = *(v16 - 8);
  v36 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v7 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v35 - v25;
  (*(v27 + 16))(v21, v44, a3, v24);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v18, 0, 1, v7);
    (*(v22 + 32))(v26, v18, v7);
    (*(v41 + 16))(v40, v45, v43);
    v30 = v42;
    v31 = swift_dynamicCast();
    v32 = *(v12 + 56);
    if (v31)
    {
      v32(v30, 0, 1, AssociatedTypeWitness);
      (*(v12 + 32))(v15, v30, AssociatedTypeWitness);
      swift_beginAccess();
      v33 = v4[2];

      v33(v15, v26);

      (*(v12 + 8))(v15, AssociatedTypeWitness);
      return (*(v22 + 8))(v26, v7);
    }

    v32(v30, 1, 1, AssociatedTypeWitness);
    (*(v37 + 8))(v30, v38);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_22887F8A0();
    MEMORY[0x22AAC0340](0xD000000000000013, 0x8000000228889EF0);
    sub_22887FBD0();
  }

  else
  {
    v29(v18, 1, 1, v7);
    (*(v35 + 8))(v18, v36);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_22887F8A0();
    MEMORY[0x22AAC0340](0xD000000000000013, 0x8000000228889ED0);
    sub_22887FBE0();
  }

  result = sub_22887FA10();
  __break(1u);
  return result;
}

uint64_t *MockInputSignalObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v0[2] = nullsub_1;
  v0[3] = v2;
  return v0;
}

uint64_t *MockInputSignalObserver.init()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v0[2] = nullsub_1;
  v0[3] = v2;
  return v0;
}

uint64_t MockInputSignalObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22887EA74@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22881F05C;
  a2[1] = v6;
}

uint64_t sub_22887EAF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_22881F034;
  *(v6 + 24) = v5;
}

uint64_t _s19HealthOrchestration23MockInputSignalObserverC7handleryy6AnchorQz_xtcvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _s19HealthOrchestration23MockInputSignalObserverC7handleryy6AnchorQz_xtcvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MockAnyInputSignalObserver.didUpdate<A>(anchor:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[3] = AssociatedTypeWitness;
  v15[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  v14[3] = a3;
  v14[4] = a4;
  v12 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(v12, a2, a3);

  v9(v15, v14);

  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t MockAnyInputSignalObserver.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = nullsub_1;
  *(result + 24) = 0;
  return result;
}

uint64_t MockAnyInputSignalObserver.init()()
{
  result = v0;
  *(v0 + 16) = nullsub_1;
  *(v0 + 24) = 0;
  return result;
}